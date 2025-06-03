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
	.quad	0x41454d9fef99806f              # double 2792255.8718719999
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
	.quad	57                              # 0x39
	.quad	70                              # 0x46
	.quad	125                             # 0x7d
	.quad	140                             # 0x8c
	.quad	197                             # 0xc5
	.quad	212                             # 0xd4
	.quad	273                             # 0x111
	.quad	286                             # 0x11e
	.quad	342                             # 0x156
	.quad	350                             # 0x15e
	.quad	404                             # 0x194
	.quad	415                             # 0x19f
	.quad	472                             # 0x1d8
	.quad	486                             # 0x1e6
	.quad	542                             # 0x21e
	.quad	561                             # 0x231
	.quad	616                             # 0x268
	.quad	630                             # 0x276
	.quad	682                             # 0x2aa
	.quad	689                             # 0x2b1
	.quad	746                             # 0x2ea
	.quad	759                             # 0x2f7
	.quad	817                             # 0x331
	.quad	830                             # 0x33e
	.quad	890                             # 0x37a
	.quad	898                             # 0x382
	.quad	954                             # 0x3ba
	.quad	964                             # 0x3c4
	.quad	1027                            # 0x403
	.quad	1036                            # 0x40c
	.quad	1091                            # 0x443
	.quad	1102                            # 0x44e
	.quad	1158                            # 0x486
	.quad	1175                            # 0x497
	.quad	1231                            # 0x4cf
	.quad	1245                            # 0x4dd
	.quad	1300                            # 0x514
	.quad	1305                            # 0x519
	.quad	1364                            # 0x554
	.quad	1373                            # 0x55d
	.quad	1427                            # 0x593
	.quad	1442                            # 0x5a2
	.quad	1500                            # 0x5dc
	.quad	1510                            # 0x5e6
	.quad	1569                            # 0x621
	.quad	1580                            # 0x62c
	.quad	1639                            # 0x667
	.quad	1658                            # 0x67a
	.quad	1714                            # 0x6b2
	.quad	1728                            # 0x6c0
	.quad	1781                            # 0x6f5
	.quad	1797                            # 0x705
	.quad	1857                            # 0x741
	.quad	1872                            # 0x750
	.quad	1927                            # 0x787
	.quad	1943                            # 0x797
	.quad	1999                            # 0x7cf
	.quad	2007                            # 0x7d7
	.quad	2069                            # 0x815
	.quad	2079                            # 0x81f
	.quad	2138                            # 0x85a
	.quad	2156                            # 0x86c
	.quad	2217                            # 0x8a9
	.quad	2232                            # 0x8b8
	.quad	2289                            # 0x8f1
	.quad	2305                            # 0x901
	.quad	2364                            # 0x93c
	.quad	2378                            # 0x94a
	.quad	2435                            # 0x983
	.quad	2447                            # 0x98f
	.quad	2505                            # 0x9c9
	.quad	2517                            # 0x9d5
	.quad	2573                            # 0xa0d
	.quad	2587                            # 0xa1b
	.quad	2640                            # 0xa50
	.quad	2657                            # 0xa61
	.quad	2712                            # 0xa98
	.quad	2724                            # 0xaa4
	.quad	2781                            # 0xadd
	.quad	2793                            # 0xae9
	.quad	2846                            # 0xb1e
	.quad	2860                            # 0xb2c
	.quad	2918                            # 0xb66
	.quad	2939                            # 0xb7b
	.quad	2996                            # 0xbb4
	.quad	3006                            # 0xbbe
	.quad	3062                            # 0xbf6
	.quad	3080                            # 0xc08
	.quad	3135                            # 0xc3f
	.quad	3153                            # 0xc51
	.quad	3208                            # 0xc88
	.quad	3216                            # 0xc90
	.quad	3272                            # 0xcc8
	.quad	3284                            # 0xcd4
	.quad	3344                            # 0xd10
	.quad	3360                            # 0xd20
	.quad	3422                            # 0xd5e
	.quad	3432                            # 0xd68
	.quad	3487                            # 0xd9f
	.quad	3500                            # 0xdac
	.size	.L__constant_101xindex, 808

	.type	.L__constant_3500xindex,@object # @__constant_3500xindex
	.p2align	6, 0x0
.L__constant_3500xindex:
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
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
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	19                              # 0x13
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	85                              # 0x55
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
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
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
	.quad	75                              # 0x4b
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
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	13                              # 0xd
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	66                              # 0x42
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
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
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
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
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	74                              # 0x4a
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
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
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	7                               # 0x7
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	64                              # 0x40
	.quad	73                              # 0x49
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
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
	.quad	49                              # 0x31
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
	.quad	69                              # 0x45
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
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	52                              # 0x34
	.quad	63                              # 0x3f
	.quad	74                              # 0x4a
	.quad	93                              # 0x5d
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
	.quad	29                              # 0x1d
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
	.quad	49                              # 0x31
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
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	55                              # 0x37
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
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
	.quad	17                              # 0x11
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
	.quad	37                              # 0x25
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
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	49                              # 0x31
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
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
	.quad	59                              # 0x3b
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
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	26                              # 0x1a
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
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
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
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
	.quad	69                              # 0x45
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	23                              # 0x17
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	89                              # 0x59
	.quad	97                              # 0x61
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
	.quad	61                              # 0x3d
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
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
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
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
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
	.quad	63                              # 0x3f
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
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
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
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
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
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
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
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	51                              # 0x33
	.quad	86                              # 0x56
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	27                              # 0x1b
	.quad	42                              # 0x2a
	.quad	50                              # 0x32
	.quad	81                              # 0x51
	.quad	89                              # 0x59
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
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
	.quad	45                              # 0x2d
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
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
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
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	59                              # 0x3b
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	53                              # 0x35
	.quad	68                              # 0x44
	.quad	72                              # 0x48
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
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
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
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	31                              # 0x1f
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	71                              # 0x47
	.quad	87                              # 0x57
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
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
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
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	1                               # 0x1
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
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
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
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	49                              # 0x31
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
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
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
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
	.quad	47                              # 0x2f
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
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	11                              # 0xb
	.quad	30                              # 0x1e
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	79                              # 0x4f
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
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
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	39                              # 0x27
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
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
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	44                              # 0x2c
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
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
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	51                              # 0x33
	.quad	64                              # 0x40
	.quad	76                              # 0x4c
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
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
	.quad	51                              # 0x33
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
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	58                              # 0x3a
	.quad	73                              # 0x49
	.quad	90                              # 0x5a
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
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
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	65                              # 0x41
	.quad	73                              # 0x49
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
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
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
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
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	86                              # 0x56
	.quad	97                              # 0x61
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
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
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
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	64                              # 0x40
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
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
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
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
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
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
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
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
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	50                              # 0x32
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
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
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	9                               # 0x9
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	52                              # 0x34
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
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
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
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
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	11                              # 0xb
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	72                              # 0x48
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
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
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	70                              # 0x46
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
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
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
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
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
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
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
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
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	9                               # 0x9
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
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
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
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
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	84                              # 0x54
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
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
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
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
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	16                              # 0x10
	.quad	25                              # 0x19
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	60                              # 0x3c
	.quad	70                              # 0x46
	.quad	79                              # 0x4f
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
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
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
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
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	97                              # 0x61
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
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
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
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
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
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
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
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	13                              # 0xd
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	68                              # 0x44
	.quad	77                              # 0x4d
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	49                              # 0x31
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
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
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
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
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	28                              # 0x1c
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	79                              # 0x4f
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
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
	.quad	31                              # 0x1f
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
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
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
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
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
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	85                              # 0x55
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
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	18                              # 0x12
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	57                              # 0x39
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
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
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
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
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
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
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
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
	.quad	43                              # 0x2b
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	14                              # 0xe
	.quad	23                              # 0x17
	.quad	35                              # 0x23
	.quad	51                              # 0x33
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
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
	.quad	21                              # 0x15
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
	.quad	45                              # 0x2d
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
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	86                              # 0x56
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
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
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	50                              # 0x32
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
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
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
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
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	11                              # 0xb
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
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
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	55                              # 0x37
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.size	.L__constant_3500xindex, 28000

	.type	.L__constant_3500xf64,@object   # @__constant_3500xf64
	.p2align	6, 0x0
.L__constant_3500xf64:
	.quad	0x401a3e33269df97b              # double 6.5607420000000003
	.quad	0x3ff869b068123811              # double 1.525803
	.quad	0x401a094ff0025bfb              # double 6.5090940000000002
	.quad	0x40167e9ab29e4d5e              # double 5.6236370000000004
	.quad	0x4014c6ce358298cc              # double 5.1941459999999999
	.quad	0x3fd53d9ec7000432              # double 0.33188600000000001
	.quad	0x400dcd759ee88df3              # double 3.7253219999999998
	.quad	0x4020ce9a2c669058              # double 8.4035200000000003
	.quad	0x40129f9bdc69f8c2              # double 4.6558679999999999
	.quad	0x401fe48cf7caa759              # double 7.9731940000000003
	.quad	0x3fedc49dbec2480f              # double 0.93025100000000005
	.quad	0x401907eb6bf444e1              # double 6.2577340000000001
	.quad	0x40222f4cf4a558ea              # double 9.0923839999999991
	.quad	0x4020b29ed3953dea              # double 8.3488679999999995
	.quad	0x40238ad27807789a              # double 9.7711369999999995
	.quad	0x402060fd5cb790fb              # double 8.1894329999999993
	.quad	0x402232af35e310dc              # double 9.0989930000000001
	.quad	0x40016f7446f9b995              # double 2.1794210000000001
	.quad	0x3feea8f3a9b06812              # double 0.95812399999999998
	.quad	0x4020d679cc74b839              # double 8.4188980000000004
	.quad	0x3fbe8427418d690a              # double 0.119204
	.quad	0x40191013a92a3055              # double 6.2656999999999998
	.quad	0x4023925a89b951c6              # double 9.7858470000000004
	.quad	0x3ffec013ec460ed8              # double 1.921894
	.quad	0x3ff87d21ff2e48e9              # double 1.5305500000000001
	.quad	0x40111222d5171e2a              # double 4.2677110000000003
	.quad	0x3fd98e10cf5b1c86              # double 0.39929599999999998
	.quad	0x3ff51b78cc9a77e6              # double 1.319207
	.quad	0x401e54a72ead9275              # double 7.5826690000000001
	.quad	0x40123d5a187a4a49              # double 4.559914
	.quad	0x4010c797460242d0              # double 4.1949129999999997
	.quad	0x401db2ce032db1ea              # double 7.424614
	.quad	0x40059c9c4da9003f              # double 2.70147
	.quad	0x4010e906cca2db62              # double 4.2275650000000002
	.quad	0x401a87a24894c448              # double 6.6324550000000002
	.quad	0x400584f00ef1348b              # double 2.6899109999999999
	.quad	0x401c04c4cdfaca36              # double 7.0046569999999999
	.quad	0x401a8152f3c2dadc              # double 6.6262930000000004
	.quad	0x3ff65620685553ef              # double 1.3960269999999999
	.quad	0x4003c6277c45cbbc              # double 2.4717549999999999
	.quad	0x40212b256ffc115e              # double 8.5842700000000001
	.quad	0x4004e6d04e618ce3              # double 2.6127020000000001
	.quad	0x3fc2a9691a75cd0c              # double 0.14579500000000001
	.quad	0x3ff67b7521144cbe              # double 1.405141
	.quad	0x40113b573eab367a              # double 4.3079499999999999
	.quad	0x400c0ff08893b7d8              # double 3.5077829999999999
	.quad	0x4023312ff4ba51a0              # double 9.596069
	.quad	0x402199b8023a6ce3              # double 8.8002319999999994
	.quad	0x3feeb8759253543b              # double 0.960017
	.quad	0x4006c4d7f0ed3d86              # double 2.8461150000000002
	.quad	0x40143a85015c2092              # double 5.0571479999999998
	.quad	0x3ff54a3a4b5568e8              # double 1.330622
	.quad	0x40053b413986338b              # double 2.6539329999999999
	.quad	0x401d8798958d9b5f              # double 7.3824180000000004
	.quad	0x401842a80064a9ce              # double 6.0650940000000002
	.quad	0x3ff7febd09e12a52              # double 1.499692
	.quad	0x40181fcb923a29c7              # double 6.0310499999999996
	.quad	0x3fdf4f3ba775fb2f              # double 0.48921100000000001
	.quad	0x401d4a9a3d2d87f9              # double 7.3228540000000004
	.quad	0x400b9781c714fce7              # double 3.4489779999999999
	.quad	0x4020d97f62b6ae7d              # double 8.4247999999999994
	.quad	0x4019178d4fdf3b64              # double 6.2729999999999997
	.quad	0x3fd14d983947496b              # double 0.27036100000000002
	.quad	0x402247b82c2bd7f5              # double 9.1400769999999998
	.quad	0x401a8ad46f587d70              # double 6.6355760000000004
	.quad	0x400dc0d77b7c7821              # double 3.7191610000000002
	.quad	0x400add15f02c4d66              # double 3.357952
	.quad	0x3ff83e29307af20f              # double 1.5151760000000001
	.quad	0x400fc0e736049ecb              # double 3.9691909999999999
	.quad	0x3ffc4046412cf0fa              # double 1.765692
	.quad	0x401038df37329c34              # double 4.0555389999999996
	.quad	0x400831aa821f2991              # double 3.024251
	.quad	0x40089f583a53b8e5              # double 3.0778050000000001
	.quad	0x40053212513b5bf7              # double 2.6494490000000002
	.quad	0x3ff31df1172ef0ae              # double 1.1948099999999999
	.quad	0x3fee014727dcbddc              # double 0.93765600000000004
	.quad	0x401bef7e80389f84              # double 6.9838810000000002
	.quad	0x3fca4b09e98dcdb3              # double 0.20541499999999999
	.quad	0x40176414a4d2b2c0              # double 5.8477350000000001
	.quad	0x400c67cb70ac3a86              # double 3.550681
	.quad	0x4016629307af20ea              # double 5.5962639999999997
	.quad	0x401c43cb81733227              # double 7.0662060000000002
	.quad	0x4022a51d8a548238              # double 9.3224909999999994
	.quad	0x401a4311e85fd04a              # double 6.5654979999999998
	.quad	0x4020d94b7b28954a              # double 8.4244039999999991
	.quad	0x4015c96638433d6c              # double 5.4466789999999996
	.quad	0x401bf6733ebbfd72              # double 6.9906740000000003
	.quad	0x401703d8e0008638              # double 5.7537570000000002
	.quad	0x40236c35696e58a3              # double 9.7113449999999996
	.quad	0x4015502eec7c957d              # double 5.3283040000000002
	.quad	0x4000404a72ead927              # double 2.0313919999999999
	.quad	0x4013d4b9884c6a3c              # double 4.9577390000000001
	.quad	0x40154c5692b3cc4b              # double 5.3245490000000002
	.quad	0x4005cadd590c0ad0              # double 2.7240549999999999
	.quad	0x3fdd0232096787cf              # double 0.45325900000000002
	.quad	0x4002433df2a9d628              # double 2.2828330000000001
	.quad	0x4021723c42a66dbd              # double 8.7231159999999992
	.quad	0x402007609dcf8940              # double 8.0144090000000006
	.quad	0x3fc853b8e4b87bdd              # double 0.190055
	.quad	0x4022eb06e5cd4ed3              # double 9.4590370000000003
	.quad	0x401d11ee2435696e              # double 7.2675099999999997
	.quad	0x401251a9fbe76c8b              # double 4.5797499999999998
	.quad	0x3fea29c99285a922              # double 0.81760100000000002
	.quad	0x40214ce9c4545847              # double 8.6502210000000002
	.quad	0x4004f8fbca1059ea              # double 2.6215739999999998
	.quad	0x3fc85e9185cee17a              # double 0.190386
	.quad	0x400f70afe60c38f3              # double 3.9300229999999998
	.quad	0x401f293ee5eedcc2              # double 7.790279
	.quad	0x401f8da48b652370              # double 7.8883229999999998
	.quad	0x3ff8ff69014b599b              # double 1.5623560000000001
	.quad	0x3feaf1c970f7b9e0              # double 0.84201499999999995
	.quad	0x3fd3a5269595feda              # double 0.30695499999999998
	.quad	0x400c94face67d780              # double 3.5727440000000001
	.quad	0x40174efa1e3eaf68              # double 5.8271259999999998
	.quad	0x3ff30e736049ecb3              # double 1.191028
	.quad	0x3ff20b135979181a              # double 1.127704
	.quad	0x4018ff2ba9d1f601              # double 6.2491899999999996
	.quad	0x402149908e581cf8              # double 8.6436810000000008
	.quad	0x4022f93ee5eedcc2              # double 9.4868079999999999
	.quad	0x401cef94c87980f5              # double 7.2339659999999997
	.quad	0x40184c664d3bf2f5              # double 6.0746089999999997
	.quad	0x401687060bb2bbaa              # double 5.6318590000000004
	.quad	0x401d70e7bc3c5bd1              # double 7.3602590000000001
	.quad	0x4002d4c016052503              # double 2.353882
	.quad	0x400210aaa7ded6bb              # double 2.2581380000000002
	.quad	0x400db9a6b50b0f28              # double 3.7156500000000001
	.quad	0x4003caf5fd47bedb              # double 2.4741019999999998
	.quad	0x400d55e28aa43351              # double 3.6669360000000002
	.quad	0x40095b823c85c24c              # double 3.1696819999999999
	.quad	0x401ced14e3bcd35b              # double 7.2315250000000004
	.quad	0x400d0e94ee392e1f              # double 3.63212
	.quad	0x40020be37de939eb              # double 2.2558050000000001
	.quad	0x4016355f3519bd40              # double 5.5521209999999996
	.quad	0x40022788db0574b4              # double 2.269304
	.quad	0x4023207f023e9ea1              # double 9.5634689999999995
	.quad	0x3fdcdebd9018e758              # double 0.45109500000000002
	.quad	0x401dcd4f15e7c8d2              # double 7.4504970000000004
	.quad	0x40208d84b1ab0857              # double 8.2764030000000002
	.quad	0x4014fecaab8a5ce6              # double 5.2488200000000003
	.quad	0x4003b1fbc5de9c02              # double 2.4619059999999999
	.quad	0x3feff5232d2bb235              # double 0.99867399999999995
	.quad	0x3fc816d6dc1a47aa              # double 0.188197
	.quad	0x3fdf8b2a6b0d9514              # double 0.492869
	.quad	0x3ff3f29802c0a4a0              # double 1.2467269999999999
	.quad	0x4012212be48a58b4              # double 4.532394
	.quad	0x4021212146a1a501              # double 8.5647070000000003
	.quad	0x401f78df7a4e7ab7              # double 7.8680399999999997
	.quad	0x400cb80a9de8b3b3              # double 3.5898639999999999
	.quad	0x4008a5fc7e6b3fea              # double 3.081048
	.quad	0x40133bef49cf56eb              # double 4.8085300000000002
	.quad	0x40011b48909289db              # double 2.1383220000000001
	.quad	0x4014f29d40ee06d9              # double 5.2369279999999998
	.quad	0x3feb276d97b30f8c              # double 0.84856299999999995
	.quad	0x3ff9637585be1a82              # double 1.5867819999999999
	.quad	0x40220722e1ac57e2              # double 9.0139379999999996
	.quad	0x40170a38fbca105a              # double 5.7599830000000001
	.quad	0x4020c573647baa9b              # double 8.3856459999999995
	.quad	0x4006aa8650e77920              # double 2.8332639999999998
	.quad	0x3ffff8ad25679896              # double 1.9982120000000001
	.quad	0x401ca25c3dee7818              # double 7.1585549999999998
	.quad	0x3fe1c1743e963dc5              # double 0.55486500000000005
	.quad	0x401e603dddb1209f              # double 7.5939860000000001
	.quad	0x400705cd4ed2cbea              # double 2.8778329999999999
	.quad	0x3ff0bbadc0980b24              # double 1.04582
	.quad	0x40208e82b6284599              # double 8.2783409999999993
	.quad	0x4006709f1f14983d              # double 2.8049909999999998
	.quad	0x401dc4228997c3d7              # double 7.4415380000000004
	.quad	0x401b1c42e9899bf6              # double 6.7775990000000004
	.quad	0x40117b24e9c45458              # double 4.3702579999999998
	.quad	0x3fe4b88a8b08dd1e              # double 0.64752699999999996
	.quad	0x4000666666666666              # double 2.0499999999999998
	.quad	0x3ffc0f66a5508701              # double 1.75376
	.quad	0x3fe9776a2f48c2e7              # double 0.79582699999999995
	.quad	0x4022dd974e65bea1              # double 9.4327950000000004
	.quad	0x3fc95d5f56a7ac82              # double 0.198162
	.quad	0x3ff67d028a1dfb94              # double 1.4055200000000001
	.quad	0x4023aafb7e90ff97              # double 9.8339499999999997
	.quad	0x400c50f8c64fdb0a              # double 3.5395370000000002
	.quad	0x4013f2a023209678              # double 4.9869389999999996
	.quad	0x401eb232096787cf              # double 7.6740190000000003
	.quad	0x401d2484d76ab580              # double 7.2856629999999996
	.quad	0x401eb64a16a48733              # double 7.6780169999999996
	.quad	0x400fc0114d2f5dbc              # double 3.9687830000000002
	.quad	0x40211f2cb641700d              # double 8.5608880000000003
	.quad	0x40232a9e2bcf91a3              # double 9.5832379999999997
	.quad	0x402293b6ed677708              # double 9.2885050000000006
	.quad	0x3fd3647fdc5931ca              # double 0.30300899999999997
	.quad	0x401f01f4b1ee2435              # double 7.7519099999999996
	.quad	0x402063bd3804534c              # double 8.1948030000000002
	.quad	0x401210ccbc05d52c              # double 4.5164059999999999
	.quad	0x40214b0b39192642              # double 8.6465700000000005
	.quad	0x40226ce54f7a9197              # double 9.2126870000000007
	.quad	0x401f2647baa9b49a              # double 7.7873830000000002
	.quad	0x401ed6030c23fab1              # double 7.7089959999999999
	.quad	0x4010df7403dddb12              # double 4.218216
	.quad	0x4015ee631f8a0903              # double 5.4828000000000001
	.quad	0x40056dd377e1b8ed              # double 2.678626
	.quad	0x3ff5c97e996312f5              # double 1.361693
	.quad	0x400742a5614df8b1              # double 2.9075419999999998
	.quad	0x400ac4c2f837b4a2              # double 3.3460749999999999
	.quad	0x3ff8e4712e40852b              # double 1.5557719999999999
	.quad	0x4023eef6b5d462c3              # double 9.9667259999999995
	.quad	0x4021a458255b035c              # double 8.8209850000000002
	.quad	0x401643c579f23465              # double 5.5661829999999997
	.quad	0x4020ee82f944241c              # double 8.4658429999999995
	.quad	0x3fd2280f12c27a63              # double 0.28369499999999997
	.quad	0x3f97f38c5436b8fa              # double 0.023390000000000001
	.quad	0x401fcd9a0f0a5eff              # double 7.9507830000000003
	.quad	0x4013281a1554fbdb              # double 4.7891620000000001
	.quad	0x4021b1348b220792              # double 8.8461040000000004
	.quad	0x4017a8826aa8eb46              # double 5.9145599999999998
	.quad	0x401fb47fdc5931ca              # double 7.9262689999999996
	.quad	0x401da2085b18548b              # double 7.4082350000000003
	.quad	0x3fec8fcd67fd3f5b              # double 0.89255399999999996
	.quad	0x4019fc71d6063172              # double 6.4965279999999996
	.quad	0x3ff33d61f5be5d9e              # double 1.2024859999999999
	.quad	0x400c49c0a8d21bc1              # double 3.5360119999999999
	.quad	0x4017bde4c51116a9              # double 5.9354430000000002
	.quad	0x40187e48626f60e1              # double 6.1233230000000001
	.quad	0x3fc802539756c93a              # double 0.18757099999999999
	.quad	0x40111022dd7a99fa              # double 4.2657579999999999
	.quad	0x4023dd15f02c4d66              # double 9.9318080000000002
	.quad	0x401ab56366d7a56e              # double 6.6771370000000001
	.quad	0x402187993d5347a6              # double 8.7648410000000005
	.quad	0x402202b4d8ba40d9              # double 9.0052859999999999
	.quad	0x400be9f40a2877ee              # double 3.4892349999999999
	.quad	0x40108efa1e3eaf68              # double 4.1396259999999998
	.quad	0x401cf08787485e3e              # double 7.2348920000000003
	.quad	0x401285d0b73d188f              # double 4.6306789999999998
	.quad	0x401f4fe75bc44bf5              # double 7.8280310000000001
	.quad	0x401d1703afb7e910              # double 7.272475
	.quad	0x40230944cbe1eb42              # double 9.518103
	.quad	0x40232f820a30db6a              # double 9.5927889999999998
	.quad	0x4017110a99b6f5cb              # double 5.766642
	.quad	0x400a81cbccf28c7a              # double 3.313377
	.quad	0x4014980d801b4352              # double 5.1484889999999996
	.quad	0x4010e6d8b1dd5d3e              # double 4.2254360000000002
	.quad	0x3fcc1871e6cd2913              # double 0.219496
	.quad	0x40112f138bcdfefc              # double 4.295973
	.quad	0x40042a497fa5d28d              # double 2.520648
	.quad	0x400d869728a61177              # double 3.6907179999999999
	.quad	0x4021d1ad2135daad              # double 8.9095239999999993
	.quad	0x3ffd14f9c1f85d74              # double 1.8176209999999999
	.quad	0x401453e4ef0281ba              # double 5.0819279999999996
	.quad	0x40111d66adb402d1              # double 4.2787119999999996
	.quad	0x40182d05af6c69b6              # double 6.0439670000000003
	.quad	0x401f05f56a7ac81d              # double 7.7558189999999997
	.quad	0x3fd89d0a67620ee9              # double 0.38458500000000001
	.quad	0x400abcaf2d7f950c              # double 3.3421310000000002
	.quad	0x401ab2478854cdb8              # double 6.6741010000000003
	.quad	0x40093a6937d1fe65              # double 3.153521
	.quad	0x401c62a8c9b84556              # double 7.0963469999999997
	.quad	0x3fdf311e85fd04a3              # double 0.487373
	.quad	0x4013dbc27631b585              # double 4.9646090000000003
	.quad	0x400018cf398e9707              # double 2.012114
	.quad	0x401bf495e17e34b9              # double 6.9888529999999998
	.quad	0x401c88c7e28240b8              # double 7.1335750000000004
	.quad	0x40006dae3e6c4c59              # double 2.0535549999999998
	.quad	0x3fbb243137b07076              # double 0.106021
	.quad	0x3ff2cc3d25247cb7              # double 1.174863
	.quad	0x3ff43761cbccf28c              # double 1.2635209999999999
	.quad	0x40148f3f961804da              # double 5.1398910000000004
	.quad	0x40204095d0b73d19              # double 8.1261430000000008
	.quad	0x400f832e3821af7d              # double 3.9390529999999999
	.quad	0x3fda1af7d30ad46f              # double 0.40789599999999998
	.quad	0x4008c2cdc011d367              # double 3.095119
	.quad	0x4002b49b62c77575              # double 2.338187
	.quad	0x401d6ed9dfdac68b              # double 7.3582530000000004
	.quad	0x4021d933a0407cc8              # double 8.9242220000000003
	.quad	0x400ca451b93037d6              # double 3.5802339999999999
	.quad	0x4023cf34b51372a4              # double 9.9046990000000008
	.quad	0x401b6c12f09d8c6d              # double 6.8555409999999997
	.quad	0x400e6d26fa3fcc9f              # double 3.8032970000000001
	.quad	0x3ff0961a1db877ab              # double 1.036646
	.quad	0x40094a45d41fa765              # double 3.1612659999999999
	.quad	0x401828ace24bba13              # double 6.0397220000000003
	.quad	0x4022609dcf893faf              # double 9.1887039999999995
	.quad	0x4022fbcf2cf95d4f              # double 9.4918150000000007
	.quad	0x3fff00abf76a2f49              # double 1.9376640000000001
	.quad	0x4023a62ac3222920              # double 9.8245450000000005
	.quad	0x4019e936c58eeaea              # double 6.4777480000000001
	.quad	0x4019c3b85e80bed7              # double 6.4411329999999998
	.quad	0x402142e7d566cf42              # double 8.6306750000000001
	.quad	0x3ff0900713f077cd              # double 1.0351630000000001
	.quad	0x40097dd334c5da6a              # double 3.1864379999999999
	.quad	0x3ffa1c1a47a9e2bd              # double 1.631861
	.quad	0x401d52c83ec892ab              # double 7.3308419999999996
	.quad	0x4022d9059ea57215              # double 9.4238710000000001
	.quad	0x3ff68eeae9ee45c3              # double 1.4098919999999999
	.quad	0x3feb0c08b75ea67f              # double 0.84521900000000005
	.quad	0x401abb4d48882f0e              # double 6.682912
	.quad	0x4018b3b645a1cac1              # double 6.1755000000000004
	.quad	0x40071ee99a62ed35              # double 2.8900939999999999
	.quad	0x40201e8815e39714              # double 8.0596320000000005
	.quad	0x3fe3e34dad31fcd2              # double 0.62149699999999997
	.quad	0x401c2ba2be0589ad              # double 7.0426130000000002
	.quad	0x3ff32af251c193b4              # double 1.1979850000000001
	.quad	0x400c63b60285ec3e              # double 3.5486870000000001
	.quad	0x3ffafe175d13d74d              # double 1.6870339999999999
	.quad	0x4011568cef672b88              # double 4.3345219999999998
	.quad	0x402079eff9f87f02              # double 8.2381589999999996
	.quad	0x3fc17e80389f83be              # double 0.13667299999999999
	.quad	0x3fcf414a4d2b2bfe              # double 0.24418000000000001
	.quad	0x401e8b61bb05faec              # double 7.6361150000000002
	.quad	0x4014a8950763a190              # double 5.164631
	.quad	0x4020f8ee8d10f51b              # double 8.4861950000000004
	.quad	0x4009d29a1b9f98b7              # double 3.227833
	.quad	0x401f56634117f844              # double 7.8343629999999997
	.quad	0x400ccae1049235f8              # double 3.599062
	.quad	0x400cdcae21101b00              # double 3.6077539999999999
	.quad	0x40014c7f34938583              # double 2.1623519999999998
	.quad	0x4003e51f3e89a88b              # double 2.4868760000000001
	.quad	0x4023879db22d0e56              # double 9.764875
	.quad	0x4020f49f0e4da09d              # double 8.4777760000000004
	.quad	0x4023381083dbc233              # double 9.6095009999999998
	.quad	0x401206d3f9e7b80b              # double 4.5066680000000003
	.quad	0x401c897b30f8c650              # double 7.1342590000000001
	.quad	0x400a665a57646ae4              # double 3.2999770000000002
	.quad	0x4022a33354c12275              # double 9.3187510000000007
	.quad	0x401d93bfb58d1527              # double 7.3942860000000001
	.quad	0x40175be37de939eb              # double 5.8397350000000001
	.quad	0x4015c318b9346994              # double 5.4405239999999999
	.quad	0x400b6d612c6ac216              # double 3.4284080000000001
	.quad	0x400c16a8b8f14db6              # double 3.5110640000000002
	.quad	0x40166215b9a5a89c              # double 5.5957860000000004
	.quad	0x4006ff5be5d9e40d              # double 2.8746870000000002
	.quad	0x40201f09310129cc              # double 8.0606170000000005
	.quad	0x3fdeacde19fc2a88              # double 0.47930099999999998
	.quad	0x3fbfdd334c5da6a4              # double 0.124469
	.quad	0x4013cc4ac6cdaf4b              # double 4.9495040000000001
	.quad	0x401b32845996744b              # double 6.7993329999999998
	.quad	0x3fb4f605ab3aabcd              # double 0.081878999999999993
	.quad	0x4002e9de05037500              # double 2.3641930000000002
	.quad	0x401caf27bb2fec57              # double 7.1710500000000001
	.quad	0x400598e3ac0c62e5              # double 2.6996530000000001
	.quad	0x400f2a6d26740810              # double 3.8957160000000002
	.quad	0x3ff27b16c1e364bf              # double 1.155051
	.quad	0x4000ec764adff823              # double 2.1154600000000001
	.quad	0x4023b0468448cf7d              # double 9.8442880000000005
	.quad	0x400e3eea209aaa3b              # double 3.7807200000000001
	.quad	0x4018d8a3f8982cb2              # double 6.2115629999999999
	.quad	0x3fe92365cb35f3d8              # double 0.78557100000000002
	.quad	0x400ccdc33721d53d              # double 3.6004700000000001
	.quad	0x401cb26d4801f751              # double 7.174245
	.quad	0x3fe718b502ababeb              # double 0.72176600000000002
	.quad	0x40202a62888b545c              # double 8.0827829999999991
	.quad	0x400abcdbbe0157ef              # double 3.3422160000000001
	.quad	0x3fee82b40f66a551              # double 0.95345500000000005
	.quad	0x40039b1c864883fd              # double 2.4507379999999999
	.quad	0x3fe5e3193f6c269a              # double 0.68397200000000002
	.quad	0x4020a4edf6124074              # double 8.3221279999999993
	.quad	0x400025ffa3b9ae0c              # double 2.018554
	.quad	0x3ff9c4a515ce9e5e              # double 1.610509
	.quad	0x3ff3c7f993d5347a              # double 1.2363219999999999
	.quad	0x4017cef5ec80c73b              # double 5.9521100000000002
	.quad	0x400a15f78359bc34              # double 3.260726
	.quad	0x401c855b035bd513              # double 7.1302300000000001
	.quad	0x3ff496440f238972              # double 1.286686
	.quad	0x400b68dd1e53a81e              # double 3.4262030000000001
	.quad	0x3fe184ddb5525cc4              # double 0.54746899999999998
	.quad	0x40075632c1f42bb6              # double 2.9170889999999998
	.quad	0x3ff66963dc486ad3              # double 1.40073
	.quad	0x3fee329802c0a4a0              # double 0.94367599999999995
	.quad	0x40180adbc664d3bf              # double 6.0106039999999998
	.quad	0x4022f745e0b4e11e              # double 9.4829550000000005
	.quad	0x4023ca157689ca19              # double 9.8946950000000004
	.quad	0x4012c604189374bc              # double 4.6933749999999996
	.quad	0x40151a7f3cf70154              # double 5.2758760000000002
	.quad	0x401751fa333764f1              # double 5.8300559999999999
	.quad	0x3fe0a2ec28b2a6b1              # double 0.51988800000000002
	.quad	0x4020aeb3bb83cf2d              # double 8.341215
	.quad	0x401a718e325d4a5e              # double 6.610894
	.quad	0x40144c7f34938583              # double 5.0747039999999997
	.quad	0x40003b738e6d15ad              # double 2.029029
	.quad	0x3fbf64adff822bbf              # double 0.12263
	.quad	0x4020519029ae4f33              # double 8.1593029999999995
	.quad	0x401cb6c9c0a8d21c              # double 7.1785040000000002
	.quad	0x40084ca925fe974a              # double 3.0374319999999999
	.quad	0x3fea5a4ce8101f32              # double 0.82352300000000001
	.quad	0x400ddfbc5de9c023              # double 3.7342460000000002
	.quad	0x4023861d4306e5cd              # double 9.7619419999999994
	.quad	0x3ff7dae924f227d0              # double 1.490945
	.quad	0x401fb0856e696a27              # double 7.922384
	.quad	0x400cbecedd484513              # double 3.5931679999999999
	.quad	0x4019ccaa7589efd8              # double 6.4498689999999996
	.quad	0x401e452c59fb1e19              # double 7.567552
	.quad	0x4016fa89fc6da448              # double 5.7446669999999997
	.quad	0x4018f5e2cdc011d3              # double 6.2401229999999996
	.quad	0x401108198f1d3ed5              # double 4.2579099999999999
	.quad	0x401fdb7f9d6f1130              # double 7.9643540000000002
	.quad	0x40190899392189be              # double 6.2583970000000004
	.quad	0x4016a9c49774256c              # double 5.6657890000000002
	.quad	0x40206cab3edd8b61              # double 8.2122440000000001
	.quad	0x40054ffc115df655              # double 2.6640549999999998
	.quad	0x4023f784ec636b09              # double 9.9834359999999993
	.quad	0x4023b9cf13cee9dd              # double 9.8629079999999991
	.quad	0x3fe21f1ae2da554c              # double 0.56629700000000005
	.quad	0x40201f98958d9b5f              # double 8.0617110000000007
	.quad	0x402017fe6d58c8ef              # double 8.0468630000000001
	.quad	0x4021554bcf0b6b6e              # double 8.6665939999999999
	.quad	0x3f7834091c087443              # double 0.0059090000000000002
	.quad	0x400ba43fe5c91d15              # double 3.4552
	.quad	0x401adc27e9531551              # double 6.7149960000000002
	.quad	0x401fa642396073de              # double 7.9123619999999999
	.quad	0x401c1001d5c31594              # double 7.0156320000000001
	.quad	0x4016dbfb9bed30f0              # double 5.7148269999999997
	.quad	0x4017c21bc126a65d              # double 5.939559
	.quad	0x401eba2f48c2e771              # double 7.6818210000000002
	.quad	0x402306d7625204b0              # double 9.5133620000000008
	.quad	0x400a250b524399b3              # double 3.2680880000000001
	.quad	0x400eb8f14db59579              # double 3.8403040000000002
	.quad	0x401a990c4dec1c1d              # double 6.6494609999999996
	.quad	0x4020fdb035bd512f              # double 8.4954850000000004
	.quad	0x401d513be22e5de1              # double 7.3293299999999997
	.quad	0x3ff0ad46f587d6f9              # double 1.0423039999999999
	.quad	0x400c26b8b69552e3              # double 3.518907
	.quad	0x4020fcd4cb9ecf64              # double 8.4938110000000008
	.quad	0x400bcff972474539              # double 3.47655
	.quad	0x3fe816feb4a6655a              # double 0.752807
	.quad	0x3ff273508f648c72              # double 1.1531530000000001
	.quad	0x40184432ca57a787              # double 6.0666000000000002
	.quad	0x4010395bff04577e              # double 4.0560150000000004
	.quad	0x401d31fddebd9019              # double 7.2988200000000001
	.quad	0x400976c2699c7bcc              # double 3.1829879999999999
	.quad	0x40211a014727dcbe              # double 8.5507910000000003
	.quad	0x400effbe76c8b439              # double 3.8748749999999998
	.quad	0x401c355f3519bd40              # double 7.0521209999999996
	.quad	0x4003a33e78e1932d              # double 2.4547089999999998
	.quad	0x40008a3d70a3d70a              # double 2.0674999999999999
	.quad	0x40238b53b4b2fa94              # double 9.7721230000000005
	.quad	0x401d121ee675147f              # double 7.2676959999999999
	.quad	0x401de525892684cf              # double 7.473776
	.quad	0x401d0d49d7ba6699              # double 7.2629770000000002
	.quad	0x40198913e81450f0              # double 6.3838650000000001
	.quad	0x40158157eed45e92              # double 5.3763120000000004
	.quad	0x4011a1975f2cb641              # double 4.4078039999999996
	.quad	0x400c92cc70867ad9              # double 3.571679
	.quad	0x401238155d5f56a8              # double 4.5547690000000003
	.quad	0x400ff914f483cafb              # double 3.9966219999999999
	.quad	0x3fda63a9f383f0bb              # double 0.41233300000000001
	.quad	0x3ff0280389f83be6              # double 1.0097689999999999
	.quad	0x401efa005c4651f4              # double 7.7441420000000001
	.quad	0x4023acf440af1cb9              # double 9.8378010000000006
	.quad	0x4019d72b4528283d              # double 6.4601259999999998
	.quad	0x4016abcdfefbf402              # double 5.6677780000000002
	.quad	0x401a129ed3953dea              # double 6.5181839999999998
	.quad	0x40204b0f49491f2e              # double 8.1466010000000004
	.quad	0x4021fbf0563ed0f6              # double 8.9920679999999997
	.quad	0x4018489374bc6a7f              # double 6.070875
	.quad	0x3fe70b5675579af2              # double 0.72013400000000005
	.quad	0x401bae0370cdc875              # double 6.9199349999999997
	.quad	0x401082b4d8ba40d9              # double 4.127643
	.quad	0x4016589fc6da4485              # double 5.5865470000000004
	.quad	0x4013819f7f8ca81a              # double 4.8765850000000004
	.quad	0x40046c319c5a3e3a              # double 2.552829
	.quad	0x4013b6976bc1effa              # double 4.928312
	.quad	0x400e996312f4cf4a              # double 3.8248959999999999
	.quad	0x4005103ea704bc27              # double 2.6329319999999998
	.quad	0x401682ddbdb5d895              # double 5.6277990000000004
	.quad	0x3ff77382e44b6e93              # double 1.4657009999999999
	.quad	0x40153c5eb313be23              # double 5.3089550000000001
	.quad	0x401500fcf80dc337              # double 5.2509649999999999
	.quad	0x40120a2f48c2e771              # double 4.5099460000000002
	.quad	0x40187b8cb8e086be              # double 6.120654
	.quad	0x4002457afea3df6e              # double 2.2839260000000001
	.quad	0x401dc7903211cb04              # double 7.4448860000000003
	.quad	0x3fd3edf612407464              # double 0.31139899999999998
	.quad	0x3ff8a5bea0ba1f4b              # double 1.540465
	.quad	0x401fb987c6327ed8              # double 7.9311819999999997
	.quad	0x4003159d55e6bc62              # double 2.385554
	.quad	0x4016e925bb7b6bb1              # double 5.7276829999999999
	.quad	0x4010e84db9c7368b              # double 4.2268590000000001
	.quad	0x401a29fba450acc1              # double 6.5409990000000002
	.quad	0x402088e15011904b              # double 8.2673439999999996
	.quad	0x3ff9e8427418d691              # double 1.6192040000000001
	.quad	0x3fe7867f0aa21a72              # double 0.73516800000000004
	.quad	0x3ff3273e681a9b8d              # double 1.1970810000000001
	.quad	0x4023c8379314445b              # double 9.8910490000000006
	.quad	0x400f7b7281fd9ba2              # double 3.9352770000000001
	.quad	0x401f3829068986fd              # double 7.8048440000000001
	.quad	0x401219314445aa2e              # double 4.5246019999999998
	.quad	0x4023fab4528283d3              # double 9.9896569999999993
	.quad	0x3ff4caaeafab53d6              # double 1.2994829999999999
	.quad	0x401d486c226809d5              # double 7.3207250000000004
	.quad	0x4015cda836eb4e98              # double 5.4508369999999999
	.quad	0x400a4c508b32ce89              # double 3.2872629999999998
	.quad	0x401088123810e886              # double 4.1328820000000004
	.quad	0x4010631ec0b56755              # double 4.0967969999999996
	.quad	0x40063d82773e24ff              # double 2.7800340000000001
	.quad	0x4011af294dd72368              # double 4.4210560000000001
	.quad	0x3fe8a209aaa3ad19              # double 0.76978000000000002
	.quad	0x4006400000000000              # double 2.78125
	.quad	0x3ffb5285a921ccd9              # double 1.7076469999999999
	.quad	0x4017274927913e81              # double 5.7883649999999998
	.quad	0x40109dd8f92af9a9              # double 4.1541480000000002
	.quad	0x401a3cf70153bd16              # double 6.5595359999999996
	.quad	0x4016d9cc74b838c1              # double 5.7126939999999999
	.quad	0x40095b9cf9a06a6e              # double 3.1697329999999999
	.quad	0x400c9fd0d0678c00              # double 3.5780349999999999
	.quad	0x3fc4817763e4abe7              # double 0.16020100000000001
	.quad	0x401e2f47b677f6b2              # double 7.5461720000000003
	.quad	0x40155d362e903644              # double 5.3410270000000004
	.quad	0x400930ba6266fd65              # double 3.148793
	.quad	0x401a4d7774aba387              # double 6.5756509999999997
	.quad	0x400b9cc319c5a3e4              # double 3.4515440000000002
	.quad	0x3fea5612c6ac215c              # double 0.82300700000000004
	.quad	0x401369b845564b66              # double 4.8532419999999998
	.quad	0x401c0b152f3c2dae              # double 7.0108230000000002
	.quad	0x3ff2046f9b994e1a              # double 1.1260829999999999
	.quad	0x40171270b06c43f6              # double 5.768008
	.quad	0x4019dec5f394b7b3              # double 6.4675520000000004
	.quad	0x3ffd8a9bcfd4bf0a              # double 1.8463400000000001
	.quad	0x3fb8286f8ad2567a              # double 0.094367000000000006
	.quad	0x40085bce4217d285              # double 3.0448270000000002
	.quad	0x401f7b4245f5ad97              # double 7.8703700000000003
	.quad	0x400c490f733a8a40              # double 3.5356740000000002
	.quad	0x4010660ed80a17b1              # double 4.099666
	.quad	0x4015ed759ee88df3              # double 5.4818939999999996
	.quad	0x3ff2206a6e32e382              # double 1.132914
	.quad	0x402346d740c4156e              # double 9.6383609999999997
	.quad	0x3fc8bc947064ecea              # double 0.19325500000000001
	.quad	0x4017f43f5f91600f              # double 5.9885229999999998
	.quad	0x401448f7121ab4b7              # double 5.0712549999999998
	.quad	0x401387ae147ae148              # double 4.8825000000000003
	.quad	0x4018f79c842fa509              # double 6.2418079999999998
	.quad	0x401d9bdc26dce39b              # double 7.4022069999999998
	.quad	0x401ebb2aae297397              # double 7.6827800000000001
	.quad	0x400829cfdd228566              # double 3.020416
	.quad	0x401830bcbe61cfff              # double 6.0475950000000003
	.quad	0x4004c019b0ab2e17              # double 2.5937990000000002
	.quad	0x40221cefaa4766c7              # double 9.0565160000000002
	.quad	0x4020fcc1ebc83a97              # double 8.4936670000000003
	.quad	0x401eb26c7eae5bc8              # double 7.6742419999999995
	.quad	0x40218e85b9e8c47a              # double 8.7783639999999998
	.quad	0x402306b8305d95dd              # double 9.5131239999999994
	.quad	0x40185a05143bf727              # double 6.0879099999999999
	.quad	0x40072cc1ca3a4b55              # double 2.8968539999999998
	.quad	0x40231e95faa8a82a              # double 9.5597379999999994
	.quad	0x4022aafd75e2046c              # double 9.3339649999999991
	.quad	0x40194a4acf312b1b              # double 6.3225509999999998
	.quad	0x4016f7d06bbdbe3c              # double 5.7420059999999999
	.quad	0x400b8c4b4d056c51              # double 3.4435030000000002
	.quad	0x4018acdb37c99ae9              # double 6.1688049999999999
	.quad	0x40154199fe43675e              # double 5.3140640000000001
	.quad	0x401727342edbb59e              # double 5.7882850000000001
	.quad	0x401028cbd1244a62              # double 4.0398399999999999
	.quad	0x400cf9e59f2ba9d2              # double 3.62202
	.quad	0x3fc31b8aa00192a7              # double 0.14927799999999999
	.quad	0x4017ee7afa722186              # double 5.9828910000000004
	.quad	0x401a0f727136a401              # double 6.515085
	.quad	0x3fc12bdc26dce39b              # double 0.13415099999999999
	.quad	0x4023afd82773e250              # double 9.8434460000000001
	.quad	0x4018eb0d0edc3bd6              # double 6.2295420000000004
	.quad	0x402326d99cbee808              # double 9.5758790000000004
	.quad	0x3ffc0e60807357e6              # double 1.7535099999999999
	.quad	0x4021dd9f6ec5b079              # double 8.9328570000000003
	.quad	0x4020c0f6ad70e6f3              # double 8.3768820000000002
	.quad	0x401a59e83e425aee              # double 6.5877999999999997
	.quad	0x4013c881e4712e41              # double 4.9458080000000004
	.quad	0x401c54d50ebaade6              # double 7.0828439999999997
	.quad	0x3fba10be9424e593              # double 0.10181800000000001
	.quad	0x4021deef3d3a1d32              # double 8.9354189999999996
	.quad	0x3fdd03cd141a6938              # double 0.45335700000000001
	.quad	0x4009be846a5d6bec              # double 3.2180260000000001
	.quad	0x40179fc71d606317              # double 5.9060329999999999
	.quad	0x3ff66e41919ac797              # double 1.401918
	.quad	0x4023352e94680171              # double 9.6038709999999998
	.quad	0x4004a90257c914b1              # double 2.5825239999999998
	.quad	0x3fd60691ea78af3e              # double 0.34415099999999998
	.quad	0x4019926bf8769ec3              # double 6.3929900000000002
	.quad	0x40138626b2f23034              # double 4.8810070000000003
	.quad	0x401f3468cac4b4d0              # double 7.8011809999999997
	.quad	0x400b63e5321e603d              # double 3.4237769999999998
	.quad	0x3ffb388ca3e7d135              # double 1.701306
	.quad	0x402070f55de58e65              # double 8.2206220000000005
	.quad	0x3ffd6f661f18c9fb              # double 1.8396969999999999
	.quad	0x3ff81e97d06bbdbe              # double 1.5074689999999999
	.quad	0x4016509aed56b010              # double 5.578716
	.quad	0x4021a6d30f062d41              # double 8.8258290000000006
	.quad	0x3fd1ec743201040c              # double 0.280057
	.quad	0x401974fca42aed14              # double 6.3642450000000004
	.quad	0x3feff294dd72367e              # double 0.99836199999999997
	.quad	0x3fe88bae89eba6ad              # double 0.76705100000000004
	.quad	0x400f910ba6266fd6              # double 3.9458229999999999
	.quad	0x40015d3fe1975f2d              # double 2.1705320000000001
	.quad	0x400cda9e2bcf91a3              # double 3.6067469999999999
	.quad	0x4015258750c1b973              # double 5.2866489999999997
	.quad	0x400437446f9b994e              # double 2.526986
	.quad	0x3fc8d43d03968d76              # double 0.19397700000000001
	.quad	0x400b51c193b3a68b              # double 3.41492
	.quad	0x3fda384ba0e84274              # double 0.40968599999999999
	.quad	0x401263dee78183f9              # double 4.5975299999999999
	.quad	0x4014d6b7aa25d8d8              # double 5.2096850000000003
	.quad	0x401f90431bde82d8              # double 7.8908810000000002
	.quad	0x400603497b7414a5              # double 2.7516050000000001
	.quad	0x40094e7ff583a53c              # double 3.1633300000000002
	.quad	0x402119fc6da44849              # double 8.5507539999999995
	.quad	0x40153351deefe500              # double 5.3001170000000002
	.quad	0x400e8075f6fd21ff              # double 3.8127249999999999
	.quad	0x40145eb24a6a875d              # double 5.0924769999999997
	.quad	0x4021562d6238da3c              # double 8.6683149999999997
	.quad	0x402315b24e9c4546              # double 9.5423760000000009
	.quad	0x400a743f1c75818c              # double 3.3067609999999998
	.quad	0x401446fe2e6ea854              # double 5.0693289999999998
	.quad	0x3fffa543f1c75819              # double 1.9778480000000001
	.quad	0x3fe4b9fba450acc1              # double 0.64770300000000003
	.quad	0x3fba2a1b5c7cd899              # double 0.102205
	.quad	0x3fe4d5cd91eeaa6d              # double 0.65109899999999998
	.quad	0x3ff8cdcdb37c99af              # double 1.5502450000000001
	.quad	0x3ffdd58644523f68              # double 1.86463
	.quad	0x4011d30db6a1e81d              # double 4.4561070000000003
	.quad	0x40114a1016ce789e              # double 4.3223269999999996
	.quad	0x40140eab7995ee13              # double 5.0143259999999996
	.quad	0x3fe824ce8101f31f              # double 0.75449299999999997
	.quad	0x401455e56cd6c2f0              # double 5.0838830000000002
	.quad	0x401413cc8de2ac32              # double 5.0193349999999999
	.quad	0x40075ce63a5c1c61              # double 2.9203610000000002
	.quad	0x4003d37d1fe64f55              # double 2.4782660000000001
	.quad	0x3fff87fdc5931ca8              # double 1.970701
	.quad	0x400cce67d77fae36              # double 3.600784
	.quad	0x3fe795ebfa8f7db7              # double 0.73705100000000001
	.quad	0x3ffd14a7f8012dfd              # double 1.8175429999999999
	.quad	0x401befa7eb6bf445              # double 6.9840390000000001
	.quad	0x4020d85425f20210              # double 8.4225169999999991
	.quad	0x40235565a14488c6              # double 9.6667909999999999
	.quad	0x40227dfb2edfe75c              # double 9.2460570000000004
	.quad	0x401dd0d1fa333765              # double 7.4539260000000001
	.quad	0x40210d1fa333764f              # double 8.5256319999999999
	.quad	0x4013d2ca9ac36545              # double 4.955851
	.quad	0x401116ece13f4a99              # double 4.2723880000000003
	.quad	0x40126349be8ff328              # double 4.5969610000000003
	.quad	0x3ff4a03d57796399              # double 1.289121
	.quad	0x4003b4562e09fe87              # double 2.4630550000000002
	.quad	0x40153635e74299d9              # double 5.3029400000000004
	.quad	0x3ff6803254e6e222              # double 1.406298
	.quad	0x4009e08398a65493              # double 3.234626
	.quad	0x401ddf56a7ac81d4              # double 7.4681040000000003
	.quad	0x401beba51a005c46              # double 6.9801219999999997
	.quad	0x40203a708ede54b5              # double 8.1141400000000008
	.quad	0x4018095f2452c5a0              # double 6.0091520000000003
	.quad	0x402206392e1ef73c              # double 9.0121549999999999
	.quad	0x3fe05a72a7bd48cb              # double 0.51104099999999997
	.quad	0x40146041461b6d44              # double 5.0939990000000002
	.quad	0x4010ba6f826edaa9              # double 4.1820659999999998
	.quad	0x4023036e503fb374              # double 9.5067009999999996
	.quad	0x4017efd651b0ccbc              # double 5.984216
	.quad	0x3ff65799e518f3ed              # double 1.396387
	.quad	0x3fe9a7c9de050375              # double 0.801732
	.quad	0x400931e75360d024              # double 3.1493669999999998
	.quad	0x4022d8d306a2b170              # double 9.4234849999999994
	.quad	0x401e10b673c4f3ba              # double 7.5163209999999996
	.quad	0x4021b03558a76102              # double 8.8441569999999992
	.quad	0x3ffe503d9a95421c              # double 1.89459
	.quad	0x401c88127b2cc708              # double 7.1328829999999996
	.quad	0x401a34b6e935b91f              # double 6.5514789999999996
	.quad	0x401445b4677b395c              # double 5.0680709999999998
	.quad	0x40169cb2d905c033              # double 5.6530259999999997
	.quad	0x401b2f4a1272c94b              # double 6.7961809999999998
	.quad	0x3fed5daceee0f3cb              # double 0.91768499999999997
	.quad	0x4020ea6ca03c4b0a              # double 8.4578600000000002
	.quad	0x4020aaeb5f5f0b28              # double 8.3338269999999994
	.quad	0x4021e63e29307af2              # double 8.9496929999999999
	.quad	0x400fcff8ec0f8833              # double 3.9765489999999999
	.quad	0x3ff6e03a322af577              # double 1.429743
	.quad	0x3ff0da8ac5c13fd1              # double 1.053355
	.quad	0x3ff172ca57a786c2              # double 1.090525
	.quad	0x40117cdaf4adbc66              # double 4.3719289999999997
	.quad	0x3fd0284dfce3150e              # double 0.25246000000000002
	.quad	0x4023848344c37e6f              # double 9.7588139999999992
	.quad	0x401035aab4741073              # double 4.0524089999999999
	.quad	0x401d069d7342edbb              # double 7.2564599999999997
	.quad	0x401044816f0068dc              # double 4.0669000000000004
	.quad	0x4009fddb1209edc0              # double 3.2489530000000002
	.quad	0x400474fb549f9485              # double 2.5571199999999998
	.quad	0x40012ad1d041cc53              # double 2.1459079999999999
	.quad	0x4019b49dbec2480f              # double 6.4263830000000004
	.quad	0x400fe0c282c6ef3d              # double 3.9847459999999999
	.quad	0x4005e04a72ead927              # double 2.7345169999999999
	.quad	0x3ffae38b8ae31d71              # double 1.680553
	.quad	0x40024fd8f0c77dd8              # double 2.2889879999999998
	.quad	0x40199ee99a62ed35              # double 6.4051879999999999
	.quad	0x401db9d0a67620ef              # double 7.4314600000000004
	.quad	0x4022a5712a0ec743              # double 9.3231289999999998
	.quad	0x40172290abb44e51              # double 5.7837550000000002
	.quad	0x401939c6f36ef805              # double 6.3064229999999997
	.quad	0x401ed883fd502257              # double 7.7114409999999997
	.quad	0x400dd05186db50f4              # double 3.726718
	.quad	0x40077700474d9c6b              # double 2.933106
	.quad	0x4011517ce52deca2              # double 4.3295779999999997
	.quad	0x4006bae685db76b4              # double 2.8412600000000001
	.quad	0x40171c8a372606fb              # double 5.7778710000000002
	.quad	0x4002e5fd8adab9f5              # double 2.3622999999999998
	.quad	0x4015fa775fb2edfe              # double 5.4945959999999996
	.quad	0x4015acedd4845133              # double 5.418876
	.quad	0x401801f3e89a88ad              # double 6.0019070000000001
	.quad	0x3fd958e64b231401              # double 0.39605099999999999
	.quad	0x40023b8ed1bf7ad5              # double 2.2790810000000001
	.quad	0x3fe3d9ba1b1960fa              # double 0.62032799999999999
	.quad	0x4014a6837f7be122              # double 5.1626110000000001
	.quad	0x401887d73c925786              # double 6.132657
	.quad	0x4004810e8858ff76              # double 2.5630160000000002
	.quad	0x401d77b4a2339c0f              # double 7.3669000000000002
	.quad	0x400f9e4c51116a8c              # double 3.9522940000000002
	.quad	0x400e50b7c3504c49              # double 3.7894130000000001
	.quad	0x3ff3f0a0b1bbcf4f              # double 1.2462470000000001
	.quad	0x3ff369e6eeb70260              # double 1.213355
	.quad	0x401492e019b0ab2e              # double 5.1434329999999999
	.quad	0x4017edce7cd03537              # double 5.9822329999999999
	.quad	0x401077a67a52ac75              # double 4.1168459999999998
	.quad	0x40029b549f94855e              # double 2.3258450000000002
	.quad	0x4017ef28c79f6662              # double 5.9835539999999998
	.quad	0x4014bfa0945f9df5              # double 5.1871359999999997
	.quad	0x4013d2aa5c5f7c67              # double 4.9557279999999997
	.quad	0x4020b48ecd8dbced              # double 8.3526520000000009
	.quad	0x400b04e1e71044f2              # double 3.3773840000000002
	.quad	0x4013fbf0dc768dfc              # double 4.9960360000000001
	.quad	0x4022b841ede1198b              # double 9.3598780000000001
	.quad	0x400bd46b26bf876a              # double 3.47872
	.quad	0x3fefa78290689870              # double 0.98919800000000002
	.quad	0x40212fb6bb129025              # double 8.5931909999999991
	.quad	0x4023077a7008a698              # double 9.5146060000000005
	.quad	0x3ffd99c27e953155              # double 1.850039
	.quad	0x401b59dd7ecbb7fa              # double 6.8377590000000001
	.quad	0x3fe6d77531db445f              # double 0.71380100000000002
	.quad	0x40011432873bc904              # double 2.134862
	.quad	0x401cdf10ecb74de0              # double 7.2178380000000004
	.quad	0x401e65bd944aa540              # double 7.5993560000000002
	.quad	0x4021bf9ce8d972cd              # double 8.8742439999999991
	.quad	0x401a4f1c3265adda              # double 6.5772560000000002
	.quad	0x400cafbb9496249a              # double 3.585807
	.quad	0x3ff0a915379fa97e              # double 1.04128
	.quad	0x401beb8348f53c58              # double 6.9799930000000003
	.quad	0x3fe233461309c800              # double 0.56875900000000001
	.quad	0x3fee9c8c9320d994              # double 0.95660999999999996
	.quad	0x4022a8be7296f651              # double 9.3295779999999997
	.quad	0x401ad4ddb5525cc4              # double 6.7078769999999999
	.quad	0x3fe0deb0fadf2ecf              # double 0.52718399999999999
	.quad	0x3ffa8a1dfb9389b5              # double 1.65872
	.quad	0x3ff2e56366d7a56e              # double 1.181003
	.quad	0x4015a59f6ec5b079              # double 5.4117410000000001
	.quad	0x40034c7c0f451761              # double 2.4123459999999999
	.quad	0x400e3e34330d7386              # double 3.780373
	.quad	0x3ffa2eae9ee45c36              # double 1.6363970000000001
	.quad	0x401d57fc32ebe597              # double 7.3359230000000002
	.quad	0x40185dc4c9c90c4e              # double 6.0915710000000001
	.quad	0x3ff9409d495182aa              # double 1.5782750000000001
	.quad	0x4022416d0917d6b6              # double 9.1277849999999994
	.quad	0x3ffc10b73d188f43              # double 1.754081
	.quad	0x401417746887a8d6              # double 5.0229049999999997
	.quad	0x401e9d6fda836eb5              # double 7.653747
	.quad	0x4007d8cda6e75ff6              # double 2.980861
	.quad	0x3ffaae4b018611fd              # double 1.6675519999999999
	.quad	0x4021361bb05faebc              # double 8.6056799999999995
	.quad	0x401734983d790753              # double 5.8013620000000001
	.quad	0x400f0a843808850a              # double 3.8801350000000001
	.quad	0x4021a347a5b0ff11              # double 8.8189060000000001
	.quad	0x400b114c22ee4192              # double 3.3834460000000002
	.quad	0x4004820d5629d841              # double 2.5635020000000002
	.quad	0x3ff046594af4f0d8              # double 1.0171749999999999
	.quad	0x3ff24b1cc9646280              # double 1.143338
	.quad	0x400a49adc8fb86f4              # double 3.2859759999999998
	.quad	0x401a0d8ba40d90e2              # double 6.5132279999999998
	.quad	0x40179eac42e9899c              # double 5.904954
	.quad	0x400368f53c579f23              # double 2.4262489999999999
	.quad	0x401e38049667b5f2              # double 7.5547050000000002
	.quad	0x401a86f826edaa93              # double 6.6318060000000001
	.quad	0x3fdd50e779207d4e              # double 0.458063
	.quad	0x40231e3eaf6837f8              # double 9.5590720000000004
	.quad	0x4017c7b02d59d55e              # double 5.9450079999999996
	.quad	0x400afccf28c79f66              # double 3.3734419999999998
	.quad	0x40023ab4b72c5198              # double 2.2786650000000002
	.quad	0x40233624bba12b5e              # double 9.6057489999999994
	.quad	0x402174a3a4b5568f              # double 8.7278110000000009
	.quad	0x401826cacd184c27              # double 6.0378829999999999
	.quad	0x40017fc9795b35b1              # double 2.1873960000000001
	.quad	0x3f8778dd616f86a1              # double 0.011461000000000001
	.quad	0x40134b0e5e679464              # double 4.8232970000000002
	.quad	0x3fe400a393ee5eee              # double 0.62507800000000002
	.quad	0x400e54a3c64345d0              # double 3.791328
	.quad	0x4005fa355043e532              # double 2.7471719999999999
	.quad	0x4002baf533f42353              # double 2.341288
	.quad	0x4023fa5119ce075f              # double 9.9888999999999992
	.quad	0x3ff853cee9dd7ecc              # double 1.5204610000000001
	.quad	0x401e985c24c404a7              # double 7.6487889999999998
	.quad	0x4023b399f5dfeb8e              # double 9.8507840000000009
	.quad	0x4020c809d495182b              # double 8.3907000000000007
	.quad	0x400324ea4a8c154d              # double 2.3930250000000002
	.quad	0x4021e2ceee0f3cb4              # double 8.9429850000000001
	.quad	0x40211f2756861e93              # double 8.5608470000000008
	.quad	0x401cdb6805a2d730              # double 7.214264
	.quad	0x4014ae34fc610f0f              # double 5.1701240000000004
	.quad	0x401248ccdd93c46e              # double 4.5710940000000004
	.quad	0x401586195464dc23              # double 5.3809560000000003
	.quad	0x3fe111e42e126202              # double 0.53343399999999996
	.quad	0x4003a6cdaf4adbc6              # double 2.4564469999999998
	.quad	0x4021384295a6c5d2              # double 8.609883
	.quad	0x401a778140dd3fe2              # double 6.6167040000000004
	.quad	0x401949934efcbd55              # double 6.3218509999999997
	.quad	0x4023c8e29f9ce8d9              # double 9.8923539999999992
	.quad	0x4014a36e2eb1c433              # double 5.1596000000000002
	.quad	0x40009e774eebf65e              # double 2.0773760000000001
	.quad	0x4023f29d1f601798              # double 9.9738550000000003
	.quad	0x3fdec46950fc71d6              # double 0.480738
	.quad	0x4007c18efbb0e5e6              # double 2.9695109999999998
	.quad	0x4011b0d3cff64cf9              # double 4.4226830000000001
	.quad	0x40167691ea78af3e              # double 5.6157909999999998
	.quad	0x400b484c6a3bddfd              # double 3.4103020000000002
	.quad	0x4020590e23af31b1              # double 8.1739359999999994
	.quad	0x4023e2b27cbf6e3f              # double 9.9427679999999991
	.quad	0x40158b3f63c31df7              # double 5.3859839999999997
	.quad	0x3f9f9ebe9c886163              # double 0.030879
	.quad	0x401529c0ebedfa44              # double 5.290775
	.quad	0x40216a73b42cc2d7              # double 8.7079140000000006
	.quad	0x402168a3b57c4e2f              # double 8.7043739999999996
	.quad	0x402001db0142f61f              # double 8.0036240000000003
	.quad	0x4019717614595358              # double 6.3608019999999996
	.quad	0x4020155cd91eeaa7              # double 8.0417240000000003
	.quad	0x4021e747735c182f              # double 8.9517170000000004
	.quad	0x400c20ce91c8eac0              # double 3.516019
	.quad	0x40092f95d4e8fb01              # double 3.1482350000000001
	.quad	0x40238f5d9a0f0a5f              # double 9.780011
	.quad	0x4015d1ce6c093d96              # double 5.4548889999999997
	.quad	0x3fec3003686a4ca5              # double 0.88086100000000001
	.quad	0x400a0d8665e02ea9              # double 3.2566039999999998
	.quad	0x3fe242917507e9d9              # double 0.57062599999999997
	.quad	0x4019ae85fd04a2fd              # double 6.4204330000000001
	.quad	0x4021b92d77318fc5              # double 8.861675
	.quad	0x3ffd7e2b4959e625              # double 1.8433029999999999
	.quad	0x3fcb34bd76ee73e7              # double 0.21254700000000001
	.quad	0x4004cd573647baaa              # double 2.6002640000000001
	.quad	0x4012e99029ae4f33              # double 4.7280889999999998
	.quad	0x400f7f6ba0620ab7              # double 3.937217
	.quad	0x40162bd5992428d4              # double 5.5428069999999998
	.quad	0x40067ce39b456b44              # double 2.810981
	.quad	0x3ff4ee7f6f4be836              # double 1.308227
	.quad	0x3ff80feac42e989a              # double 1.5038860000000001
	.quad	0x3ffba86d71f36263              # double 1.72862
	.quad	0x401eeb163baba7b9              # double 7.7295769999999999
	.quad	0x3ffb75675579af19              # double 1.7161630000000001
	.quad	0x40054afc47e49b20              # double 2.6616140000000001
	.quad	0x40119ac29bf162ae              # double 4.4011329999999997
	.quad	0x401a39b0ee49f517              # double 6.5563390000000004
	.quad	0x4022936006d0d499              # double 9.2878419999999995
	.quad	0x40238bcba3012168              # double 9.7730379999999996
	.quad	0x3ff17b4d48882f0e              # double 1.092603
	.quad	0x3ff70b545c78a6db              # double 1.440266
	.quad	0x40192b039ef0f16f              # double 6.2920059999999998
	.quad	0x401a09f340d4dc66              # double 6.5097170000000002
	.quad	0x400a212f09d8c6d6              # double 3.266203
	.quad	0x3ff89af294dd7236              # double 1.5378289999999999
	.quad	0x4015c6a50d6b228e              # double 5.4439890000000002
	.quad	0x4009377af640639d              # double 3.1520899999999998
	.quad	0x3fdb20ff540895d1              # double 0.42388900000000002
	.quad	0x4017ef9df548ecd9              # double 5.9840010000000001
	.quad	0x400bf10129cbab65              # double 3.4926780000000002
	.quad	0x4013009d0635a427              # double 4.7505990000000002
	.quad	0x401116045baf533f              # double 4.2715009999999998
	.quad	0x401f1b44a1f08030              # double 7.7766289999999998
	.quad	0x40238595feda6613              # double 9.7609100000000008
	.quad	0x401d567839cd8128              # double 7.3344430000000002
	.quad	0x400761e3eaf6837f              # double 2.9227979999999998
	.quad	0x401a9d72367e414e              # double 6.6537559999999996
	.quad	0x3fe20b28522ea0fd              # double 0.56386199999999997
	.quad	0x4000edc3bd599243              # double 2.1160960000000002
	.quad	0x401de62f166e008f              # double 7.4747890000000003
	.quad	0x40128ced916872b0              # double 4.6376249999999999
	.quad	0x400aae7c49fd7a14              # double 3.3351980000000001
	.quad	0x40052799a1fd156a              # double 2.644336
	.quad	0x4019a36e71cda2b6              # double 6.4096010000000003
	.quad	0x40202f785729b281              # double 8.0927150000000001
	.quad	0x4004be4712e40853              # double 2.5929090000000001
	.quad	0x3fec099bf5946c33              # double 0.87617299999999998
	.quad	0x4021547baa9b499d              # double 8.665006
	.quad	0x4020065e89225311              # double 8.0124399999999998
	.quad	0x4000d0678c0053e3              # double 2.1017600000000001
	.quad	0x402067928e0c9d9d              # double 8.2022899999999996
	.quad	0x4014a17bd8be7297              # double 5.157699
	.quad	0x3ff2a47cb70ac3a8              # double 1.1651579999999999
	.quad	0x40213b749adc8fb8              # double 8.6161239999999992
	.quad	0x40013ca5bd944aa5              # double 2.1546129999999999
	.quad	0x3ffb1e54b48d3ae7              # double 1.6949050000000001
	.quad	0x4012fe6362a5e786              # double 4.7484260000000003
	.quad	0x4013e74e65bea0ba              # double 4.9758849999999999
	.quad	0x4021d4013ec460ee              # double 8.9140720000000009
	.quad	0x3fd84acf312b1b37              # double 0.37956600000000001
	.quad	0x4014248f96e15875              # double 5.035704
	.quad	0x3fd58f6cefed6345              # double 0.33687899999999998
	.quad	0x40194a6698bb4d49              # double 6.3226570000000004
	.quad	0x40203013a92a3055              # double 8.0938999999999997
	.quad	0x401f88ed5f138bce              # double 7.883718
	.quad	0x40116f251c193b3a              # double 4.3585399999999996
	.quad	0x401d25f9df548ece              # double 7.2870860000000004
	.quad	0x4011d94ccab3edd9              # double 4.4622070000000003
	.quad	0x401ffe1c15097c81              # double 7.9981540000000004
	.quad	0x4021eb708aac96cc              # double 8.9598429999999993
	.quad	0x4020dc5dc8323359              # double 8.4304030000000001
	.quad	0x3fe407746887a8d6              # double 0.62590999999999997
	.quad	0x4013af9c62a1b5c8              # double 4.9214950000000002
	.quad	0x40183329c347e8cd              # double 6.0499640000000001
	.quad	0x40201b3daf8df7a5              # double 8.0532050000000002
	.quad	0x3ff59ca3a4b5568f              # double 1.3507420000000001
	.quad	0x401ef72c0e7bc3c6              # double 7.7413790000000002
	.quad	0x4020e7f349385836              # double 8.4530279999999998
	.quad	0x402062acb85a4f01              # double 8.1927240000000001
	.quad	0x400e76ece13f4a99              # double 3.8080690000000001
	.quad	0x401b2dc37a3db3c0              # double 6.7946910000000003
	.quad	0x4019000713f077cd              # double 6.2500270000000002
	.quad	0x401be6ca46e08f21              # double 6.9753809999999996
	.quad	0x40232f22c01e68a1              # double 9.5920620000000003
	.quad	0x4011c3193f6c269a              # double 4.4405260000000002
	.quad	0x4015509a671ef30a              # double 5.3287139999999997
	.quad	0x4020c2253111f0c3              # double 8.3791899999999995
	.quad	0x40205b0dd82fd75e              # double 8.1778399999999998
	.quad	0x401ed80841ede11a              # double 7.7109690000000004
	.quad	0x4006407e5a78f25a              # double 2.7814909999999999
	.quad	0x40074467be553ac5              # double 2.908401
	.quad	0x3fe6b9c51dabe271              # double 0.71017699999999995
	.quad	0x401a2301a79fec9a              # double 6.534186
	.quad	0x401bfdc8b86b15f9              # double 6.9978360000000004
	.quad	0x40229e2da554b8bf              # double 9.308942
	.quad	0x3ff60ad688377186              # double 1.3776459999999999
	.quad	0x40128672756861e9              # double 4.6312959999999999
	.quad	0x40065afb7e90ff97              # double 2.7944249999999999
	.quad	0x4020bf2e8c0485a1              # double 8.3734020000000005
	.quad	0x401b9c48adeebb34              # double 6.9026209999999999
	.quad	0x40147a11a975afb0              # double 5.1192080000000004
	.quad	0x400db18116ebd4d0              # double 3.7116720000000001
	.quad	0x3fee8a04d12018a4              # double 0.95434799999999997
	.quad	0x3ff51289dadfb507              # double 1.317026
	.quad	0x4020976922d948dc              # double 8.2957239999999998
	.quad	0x4013899e518f3ecd              # double 4.8843930000000002
	.quad	0x401444ea077036ca              # double 5.0672990000000002
	.quad	0x4014db91f70de8f7              # double 5.2144240000000002
	.quad	0x4022c8b45ae5ffa4              # double 9.3920010000000004
	.quad	0x40193dc26dce39b4              # double 6.3103119999999997
	.quad	0x40099565c2d27807              # double 3.1979479999999998
	.quad	0x4020917396d0917d              # double 8.2840849999999993
	.quad	0x3ff37d6e8af81627              # double 1.2181230000000001
	.quad	0x4010eb43d89ce4a8              # double 4.2297510000000003
	.quad	0x40173c36113404ea              # double 5.8087999999999997
	.quad	0x3ff3ae1049235f81              # double 1.2299960000000001
	.quad	0x400686a012599ed8              # double 2.8157350000000001
	.quad	0x40239ffc115df655              # double 9.8124699999999993
	.quad	0x401a1764f11b60af              # double 6.5228460000000004
	.quad	0x402040af81626b2f              # double 8.1263389999999998
	.quad	0x401df0a5269595ff              # double 7.4850050000000001
	.quad	0x4013a0d4dc65c704              # double 4.9070619999999998
	.quad	0x4012566559f6ec5b              # double 4.584371
	.quad	0x40231946a1a500d6              # double 9.5493670000000002
	.quad	0x3fea8fa376922d95              # double 0.83003400000000005
	.quad	0x3ffac32fcac8e68e              # double 1.6726529999999999
	.quad	0x40201cf5d35653ca              # double 8.0565630000000006
	.quad	0x4020ee2dc6e2a800              # double 8.4651929999999993
	.quad	0x40218e5f30e7ff58              # double 8.7780699999999996
	.quad	0x401229bd4067cf1c              # double 4.5407609999999998
	.quad	0x400a3f151e75360d              # double 3.280802
	.quad	0x401a738327674d16              # double 6.6128049999999998
	.quad	0x4019343914f483cb              # double 6.300999
	.quad	0x401bf86cebbba55d              # double 6.9926029999999999
	.quad	0x4020b92fd32c625f              # double 8.3616930000000007
	.quad	0x400c9061c79b34a4              # double 3.5704989999999999
	.quad	0x4022ab2fa93af74d              # double 9.3343480000000003
	.quad	0x3ff23deb52c9d170              # double 1.140117
	.quad	0x401ef969a0ad8a11              # double 7.7435669999999996
	.quad	0x40046ed8904f6dfc              # double 2.5541239999999998
	.quad	0x401c89a027525461              # double 7.1344000000000003
	.quad	0x40230ed9dfdac68b              # double 9.5290060000000007
	.quad	0x4020d704790b8499              # double 8.4199560000000009
	.quad	0x401fb615ebfa8f7e              # double 7.9278180000000003
	.quad	0x4023a9da597d49d8              # double 9.8317440000000004
	.quad	0x401824f0d844d014              # double 6.0360750000000003
	.quad	0x3ff3958fb43d89ce              # double 1.2240139999999999
	.quad	0x3fd3cdee34fc610f              # double 0.309444
	.quad	0x40227755bccaf70a              # double 9.2330760000000005
	.quad	0x40239fb352a84381              # double 9.8119150000000008
	.quad	0x40126b21815a07b3              # double 4.6046199999999997
	.quad	0x401c2ea747d805e6              # double 7.04556
	.quad	0x401d48a7e73a365d              # double 7.3209530000000003
	.quad	0x3fcfbe6601bc98a2              # double 0.247998
	.quad	0x400dbd95dd4c76d1              # double 3.717571
	.quad	0x4022ee147ae147ae              # double 9.4649999999999999
	.quad	0x3febe978d4fdf3b6              # double 0.87224999999999997
	.quad	0x401ce238da3c2118              # double 7.2209199999999996
	.quad	0x3fe6b73d188f42ff              # double 0.70986800000000005
	.quad	0x4020a1ebc83a96d5              # double 8.3162520000000004
	.quad	0x401dea96d4c33b54              # double 7.4790910000000004
	.quad	0x402259f6a93f290b              # double 9.1757100000000005
	.quad	0x40207ec93a711516              # double 8.2476289999999999
	.quad	0x401ff4aba3875925              # double 7.9889359999999998
	.quad	0x4011090ff9724745              # double 4.2588499999999998
	.quad	0x3feaaea0fd3b29a2              # double 0.83381700000000003
	.quad	0x3fedd3a1d323fee3              # double 0.93208400000000002
	.quad	0x402183a9f383f0bb              # double 8.7571560000000002
	.quad	0x4013d586ca89fc6e              # double 4.9585220000000003
	.quad	0x401b4dea465a5764              # double 6.8260889999999996
	.quad	0x401e3fb224aada34              # double 7.5622030000000002
	.quad	0x4023124d2b2bfdb5              # double 9.5357450000000003
	.quad	0x401c7de33269df98              # double 7.1229370000000003
	.quad	0x4022bfa76534373f              # double 9.3743239999999996
	.quad	0x4015c6672fba01ef              # double 5.4437530000000001
	.quad	0x3fd209f1f14983d8              # double 0.28185700000000002
	.quad	0x401bcd883ba3443d              # double 6.9507149999999998
	.quad	0x4018cfdb09a671ef              # double 6.2029839999999998
	.quad	0x4022667fb267c6b9              # double 9.2001930000000005
	.quad	0x3fef3b29a1b9f98b              # double 0.97597199999999995
	.quad	0x40231a5742dcf462              # double 9.5514469999999996
	.quad	0x3fb7d76ee73e681b              # double 0.093131000000000005
	.quad	0x400913c579f23465              # double 3.1346539999999998
	.quad	0x401e97f5e84f0953              # double 7.6483990000000003
	.quad	0x4020d3ba55d1c3ad              # double 8.4135310000000008
	.quad	0x3ff86019b0ab2e17              # double 1.5234620000000001
	.quad	0x3fe7d1aeb3dd11be              # double 0.74434599999999995
	.quad	0x400d1e43ed959a31              # double 3.6397780000000002
	.quad	0x400eb99e518f3ecd              # double 3.8406340000000001
	.quad	0x401075b573eab368              # double 4.1149500000000003
	.quad	0x4002f655e28aa433              # double 2.3702809999999999
	.quad	0x40204bc5de9c022a              # double 8.1479940000000006
	.quad	0x40211df17bd8be73              # double 8.5584830000000007
	.quad	0x400783076c050bd8              # double 2.9389789999999998
	.quad	0x40229ba4f8726d05              # double 9.3039930000000002
	.quad	0x40035e529bae46d0              # double 2.4210560000000001
	.quad	0x4022e1f926c7eae6              # double 9.4413540000000005
	.quad	0x3fd8adddf43c7d5f              # double 0.38561200000000001
	.quad	0x40175d798d8a979e              # double 5.8412839999999999
	.quad	0x4019a15e7c8d1959              # double 6.4075870000000004
	.quad	0x400b95536933a040              # double 3.4479129999999998
	.quad	0x40139343b70ef566              # double 4.8938129999999997
	.quad	0x4022c78b7a1c25d0              # double 9.3897359999999992
	.quad	0x4011401711947cfa              # double 4.3125879999999999
	.quad	0x402354304ccee5ac              # double 9.6644310000000004
	.quad	0x4021aea5f84cad58              # double 8.8411100000000005
	.quad	0x4022fb4117f8444a              # double 9.4907310000000003
	.quad	0x40160c53b0813cac              # double 5.5120380000000004
	.quad	0x400f3efbf401c4fc              # double 3.9057539999999999
	.quad	0x4015f115df6555c5              # double 5.4854349999999998
	.quad	0x401fc11409a24031              # double 7.9385529999999997
	.quad	0x401b14fc1df3300e              # double 6.7704930000000001
	.quad	0x401cce0589acbc8c              # double 7.201193
	.quad	0x400c9416bdb1a6d7              # double 3.5723090000000002
	.quad	0x401a25c31593e5fb              # double 6.5368769999999996
	.quad	0x3fc87a85015c2092              # double 0.19123899999999999
	.quad	0x40011e3b8a19c9d6              # double 2.1397620000000002
	.quad	0x40126321e603d578              # double 4.5968090000000004
	.quad	0x4014f2c9081c2e34              # double 5.2370950000000001
	.quad	0x3fc2a53fc0096feb              # double 0.14566799999999999
	.quad	0x401966638433d6c7              # double 6.3499889999999999
	.quad	0x4016c96787ce95fb              # double 5.6966840000000003
	.quad	0x4011b1248d7e0264              # double 4.4229909999999997
	.quad	0x3fef392c061847f5              # double 0.97572899999999995
	.quad	0x40228cb20fb224ab              # double 9.2747960000000003
	.quad	0x40190413db7f1737              # double 6.2539819999999997
	.quad	0x4010c9513f8db489              # double 4.196599
	.quad	0x3fa40789613d31ba              # double 0.039120000000000002
	.quad	0x401be947064ece9a              # double 6.9778099999999998
	.quad	0x40163fcbd556084a              # double 5.5623009999999997
	.quad	0x3fe030a4e379b77c              # double 0.505938
	.quad	0x4012ead7d7c2ca15              # double 4.7293390000000004
	.quad	0x402098f96e158751              # double 8.2987780000000004
	.quad	0x4001d5286b59146e              # double 2.2290809999999999
	.quad	0x401de88051c9f72f              # double 7.4770519999999996
	.quad	0x4023514e3bcd35a8              # double 9.6587999999999993
	.quad	0x401c249be8ff327b              # double 7.0357510000000003
	.quad	0x3fd2f2cb641700ce              # double 0.29606900000000003
	.quad	0x3ff2a68f4b61fe22              # double 1.165664
	.quad	0x3fddb2af1455219b              # double 0.46403100000000003
	.quad	0x4018eaaeafab53d6              # double 6.2291819999999998
	.quad	0x40186458cd20afa3              # double 6.0979950000000001
	.quad	0x40125ebbfd71b047              # double 4.5925140000000004
	.quad	0x40077168f8e7ddca              # double 2.9303759999999999
	.quad	0x401a93201040bfe4              # double 6.6436770000000003
	.quad	0x4020988205ff1d82              # double 8.2978670000000001
	.quad	0x4014067ba237cdcd              # double 5.0063310000000003
	.quad	0x401aea2df9378ee3              # double 6.7286910000000004
	.quad	0x40078261bf37b8d4              # double 2.938663
	.quad	0x4020a389d6adf71f              # double 8.3194110000000006
	.quad	0x401e250507a6bd6f              # double 7.5361520000000004
	.quad	0x401afc8472c0e7bc              # double 6.7465989999999998
	.quad	0x400ac9c779a6b50b              # double 3.348525
	.quad	0x401ee2deca2552a0              # double 7.7215530000000001
	.quad	0x3fd5f7c6759ab6d0              # double 0.343248
	.quad	0x3ff8a47ecfe9b7bf              # double 1.54016
	.quad	0x3ff5e273929ed395              # double 1.3677859999999999
	.quad	0x40037584b1ab0857              # double 2.432382
	.quad	0x40184b845564b663              # double 6.073747
	.quad	0x40227092ee84ad79              # double 9.2198709999999995
	.quad	0x40231d371971c10d              # double 9.5570609999999991
	.quad	0x40172eba6aca7935              # double 5.7956329999999996
	.quad	0x401d66a22b3892ef              # double 7.3502280000000004
	.quad	0x4013ab5350092ccf              # double 4.9173099999999996
	.quad	0x4022337a5f41aef7              # double 9.100543
	.quad	0x40205aabef06b378              # double 8.1770929999999993
	.quad	0x3fff53bafd976ff4              # double 1.9579420000000001
	.quad	0x40234b042528ae75              # double 9.646516
	.quad	0x40052d0247021d11              # double 2.6469770000000001
	.quad	0x400d582f51266341              # double 3.668059
	.quad	0x4016c14e7ee9142b              # double 5.6887759999999998
	.quad	0x40043aaf78feef5f              # double 2.5286550000000001
	.quad	0x401f761b6d43d039              # double 7.8653389999999996
	.quad	0x40131bb44e50c5eb              # double 4.7770549999999998
	.quad	0x4007983a53b8e4b8              # double 2.9493299999999998
	.quad	0x401691f53825e13b              # double 5.6425369999999999
	.quad	0x3feffb09203a322b              # double 0.999394
	.quad	0x4021820d77b7c782              # double 8.7540089999999999
	.quad	0x4023efb2edfe75bc              # double 9.9681619999999995
	.quad	0x4012dc9ea9a3d2d8              # double 4.7154489999999996
	.quad	0x40047311a543f1c7              # double 2.5561859999999998
	.quad	0x402100561d4306e6              # double 8.5006570000000004
	.quad	0x3ffb4382a12f9011              # double 1.7039820000000001
	.quad	0x4015fc2fc69728a6              # double 5.4962759999999999
	.quad	0x402002b55ef1fddf              # double 8.0052900000000005
	.quad	0x4002d7ce52deca25              # double 2.3553739999999999
	.quad	0x3fee3f83382e44b7              # double 0.94525300000000001
	.quad	0x40166bb98c7e2824              # double 5.6052
	.quad	0x4017014a0a0f4d7b              # double 5.7512590000000001
	.quad	0x401ab8fabda0dfdf              # double 6.680644
	.quad	0x4022968b7e4de3b9              # double 9.2940330000000007
	.quad	0x40152e731d2e0e30              # double 5.2953609999999998
	.quad	0x401fa03dddb1209f              # double 7.9064860000000001
	.quad	0x401e101eeed8904f              # double 7.5157429999999996
	.quad	0x401c3df15a4acf31              # double 7.0604909999999999
	.quad	0x400c02917507e9d9              # double 3.5012539999999999
	.quad	0x4011727c7c5260f6              # double 4.3618030000000001
	.quad	0x3ff193cbc48f10aa              # double 1.0985830000000001
	.quad	0x4020a52bd3c36113              # double 8.3225999999999996
	.quad	0x40228103211cb03a              # double 9.2519770000000001
	.quad	0x400f82d0e5604189              # double 3.9388749999999999
	.quad	0x401308d002e23290              # double 4.7586060000000003
	.quad	0x401c497f1f9acffa              # double 7.0717739999999996
	.quad	0x40174859c8c9320e              # double 5.8206550000000004
	.quad	0x4008245dc8323359              # double 3.017757
	.quad	0x40010e503fb37436              # double 2.1319889999999999
	.quad	0x4011dd20296b3355              # double 4.4659430000000002
	.quad	0x4018700000000000              # double 6.109375
	.quad	0x400ffb8cb8e086be              # double 3.997827
	.quad	0x3fe32c3c9eecbfb1              # double 0.59914999999999996
	.quad	0x4000c2877ee4e26d              # double 2.0949849999999999
	.quad	0x401f6b11409a2403              # double 7.8545579999999999
	.quad	0x4005e545846e8f2a              # double 2.7369490000000001
	.quad	0x3fe7f00474d9c6b0              # double 0.74804899999999996
	.quad	0x3fea3c3a42f1ed18              # double 0.81985200000000003
	.quad	0x4011b72da122fad7              # double 4.4288850000000002
	.quad	0x40214ea4ca4f440b              # double 8.6536010000000001
	.quad	0x402357d36f7e3d1d              # double 9.6715350000000004
	.quad	0x4015e4d1633482bf              # double 5.4734550000000004
	.quad	0x4021a379b77c02b0              # double 8.8192880000000002
	.quad	0x4022060285ec3dab              # double 9.0117379999999994
	.quad	0x400b7b0ff10ecb75              # double 3.4350890000000001
	.quad	0x401b8635610adcd3              # double 6.8810630000000002
	.quad	0x3febe544fe36d224              # double 0.87173699999999998
	.quad	0x401ea26cc1ca3a4b              # double 7.6586179999999997
	.quad	0x3fdba06e9ff0cbb0              # double 0.43166700000000002
	.quad	0x40003af74cd3176a              # double 2.0287920000000002
	.quad	0x4003b96e158750c2              # double 2.4655420000000001
	.quad	0x400bf830e3cd9a52              # double 3.4961869999999999
	.quad	0x4017fcfe9b7bf1e9              # double 5.9970650000000001
	.quad	0x401439539b888723              # double 5.0559830000000003
	.quad	0x3ffb39ecf6380022              # double 1.7016420000000001
	.quad	0x40232a77c45cbbc3              # double 9.5829450000000004
	.quad	0x401de3532e7b3d8e              # double 7.471997
	.quad	0x4023ae91c8eabffd              # double 9.8409560000000002
	.quad	0x3fc4290eed02cd3a              # double 0.157503
	.quad	0x40118984e3ffef39              # double 4.384296
	.quad	0x401d211fd5885d31              # double 7.2823479999999998
	.quad	0x3ff23bdcf0307f24              # double 1.139615
	.quad	0x402193b2fec56d5d              # double 8.788475
	.quad	0x3fe9996744b2b778              # double 0.79997600000000002
	.quad	0x400e17a3db3bfb59              # double 3.7615430000000001
	.quad	0x3fdde3608d08919f              # double 0.467003
	.quad	0x3fc2e264e48626f6              # double 0.147534
	.quad	0x3ff9d65c2d278078              # double 1.6148340000000001
	.quad	0x40179bc1eff9f87f              # double 5.902107
	.quad	0x401a310adcd2d44e              # double 6.5478930000000002
	.quad	0x400261ac57e23f25              # double 2.2976920000000001
	.quad	0x4009faad601ffb48              # double 3.247401
	.quad	0x401ee71044f1a198              # double 7.7256479999999996
	.quad	0x4013a7aaef2c7326              # double 4.9137380000000004
	.quad	0x4016b5d63886594b              # double 5.677575
	.quad	0x401f2ed740c4156e              # double 7.7957429999999999
	.quad	0x40140710cb295e9e              # double 5.0068999999999999
	.quad	0x4008c2d0e5604189              # double 3.0951249999999999
	.quad	0x3ffc04c271fff79d              # double 1.7511620000000001
	.quad	0x401c3ba4d6e47dc3              # double 7.0582459999999996
	.quad	0x40082c2f837b4a23              # double 3.0215749999999999
	.quad	0x401a6f0a1be2b496              # double 6.6084370000000003
	.quad	0x400b4c38f366948a              # double 3.4122180000000002
	.quad	0x401905692b3cc4ac              # double 6.2552839999999996
	.quad	0x4011b2d9cf13ceea              # double 4.4246590000000001
	.quad	0x401e367b1c0010c7              # double 7.553204
	.quad	0x401dff102363b257              # double 7.499085
	.quad	0x401bd26b2f23033a              # double 6.9554869999999998
	.quad	0x40202188094e5d5b              # double 8.0654909999999997
	.quad	0x3fca44a6223e186a              # double 0.20522000000000001
	.quad	0x400fd4d0dcfcc5b9              # double 3.9789140000000001
	.quad	0x402256c3fc43b2dd              # double 9.1694639999999996
	.quad	0x400a236e2eb1c433              # double 3.2673000000000001
	.quad	0x401ca8c4bd33d295              # double 7.1648129999999997
	.quad	0x40212ac9081c2e34              # double 8.5835650000000001
	.quad	0x401ce12be48a58b4              # double 7.219894
	.quad	0x4013b62b27cbf6e4              # double 4.927899
	.quad	0x3ff03a5093964a5a              # double 1.0142370000000001
	.quad	0x4020c52d666a9824              # double 8.3851119999999994
	.quad	0x4014941bb8c32a8d              # double 5.1446370000000003
	.quad	0x40173a29845dc832              # double 5.8067989999999998
	.quad	0x40224deb95e5aff3              # double 9.1521880000000007
	.quad	0x4022b06cebbba55d              # double 9.3445809999999998
	.quad	0x3fdedcb9a9da597d              # double 0.48222199999999998
	.quad	0x401675d701d9f4d3              # double 5.6150779999999996
	.quad	0x40235c9491f2dc2b              # double 9.6808209999999998
	.quad	0x40171a2c2374794f              # double 5.7755590000000003
	.quad	0x40091923a29c779a              # double 3.1372749999999998
	.quad	0x401a41b97353b4b3              # double 6.564184
	.quad	0x40161eab367a0f91              # double 5.5299500000000004
	.quad	0x401af3d640e9d51b              # double 6.7381219999999997
	.quad	0x3ff375f0b28522ea              # double 1.216294
	.quad	0x40037ae03b3e9a70              # double 2.4349980000000002
	.quad	0x4014cb9496249a13              # double 5.1988089999999998
	.quad	0x4021363ed0f62739              # double 8.6059479999999997
	.quad	0x4021ec3dee781840              # double 8.9614100000000007
	.quad	0x4014ffe718a86d72              # double 5.249905
	.quad	0x401f8478854cdb7b              # double 7.879366
	.quad	0x400033e1c9b41398              # double 2.0253329999999998
	.quad	0x401cb1a650614163              # double 7.1734859999999996
	.quad	0x4020ea3a8e71476b              # double 8.4574780000000001
	.quad	0x4018cbd87b56b873              # double 6.1990679999999996
	.quad	0x400debae03b3e9a7              # double 3.740078
	.quad	0x401f964e8b7e4de4              # double 7.8967840000000002
	.quad	0x3ffb5ba3ca7503b8              # double 1.709873
	.quad	0x4018f1ad6451b930              # double 6.2360129999999998
	.quad	0x4022a8acc0bdcad1              # double 9.3294429999999995
	.quad	0x401eef28c79f6662              # double 7.7335539999999998
	.quad	0x40032e3ffef39086              # double 2.397583
	.quad	0x4017ba9717df19d6              # double 5.9322169999999996
	.quad	0x4005ed530489d27c              # double 2.7408809999999999
	.quad	0x4010a27bb2fec56d              # double 4.1586749999999997
	.quad	0x3ff87c0d2c386d2f              # double 1.530286
	.quad	0x400377353b4b2fa9              # double 2.4332069999999999
	.quad	0x40111122fad6cb53              # double 4.2667349999999997
	.quad	0x402056b26bf8769f              # double 8.1693300000000004
	.quad	0x401fb521144cbe1f              # double 7.9268840000000002
	.quad	0x400781ea35935fc4              # double 2.9384350000000001
	.quad	0x401f3c8216c61523              # double 7.8090900000000003
	.quad	0x401d8e91c8eabffd              # double 7.3892280000000001
	.quad	0x400d6fb3b7521145              # double 3.6795420000000001
	.quad	0x3fe36aa6d2674081              # double 0.606769
	.quad	0x4006fad6451b9303              # double 2.8724789999999998
	.quad	0x4022653cddd6e04c              # double 9.1977299999999999
	.quad	0x4010020a73f748a1              # double 4.0019929999999997
	.quad	0x401411dcd7060bb3              # double 5.0174440000000002
	.quad	0x40021e0589acbc8c              # double 2.264659
	.quad	0x40014b0856e696a2              # double 2.1616369999999998
	.quad	0x40056515ce9e5e24              # double 2.6743579999999998
	.quad	0x4018c331a08bfc22              # double 6.1906189999999999
	.quad	0x4023357c914b167f              # double 9.6044660000000003
	.quad	0x3ff1bba3443d46b2              # double 1.1083099999999999
	.quad	0x40239f61672324c8              # double 9.8112899999999996
	.quad	0x40220643cc07aaef              # double 9.0122359999999997
	.quad	0x3feb14163779e9d1              # double 0.84620200000000001
	.quad	0x4003866ba493c89f              # double 2.4406349999999999
	.quad	0x4013477d523b3637              # double 4.819814
	.quad	0x400c5fdcdf698783              # double 3.546808
	.quad	0x4003c47ecfe9b7bf              # double 2.4709449999999999
	.quad	0x3fead7c2ca148ba8              # double 0.83883799999999997
	.quad	0x401e27082491afc0              # double 7.5381169999999997
	.quad	0x40090134ce3de615              # double 3.1255890000000002
	.quad	0x401b2c3ac929aa1d              # double 6.7931929999999996
	.quad	0x4008bcdd50a88f00              # double 3.0922190000000001
	.quad	0x401d732df505d0fa              # double 7.3624799999999997
	.quad	0x4010482ecaeea63b              # double 4.0704909999999996
	.quad	0x401f3d701d9f4d38              # double 7.8099980000000002
	.quad	0x3ffc02539756c93a              # double 1.7505679999999999
	.quad	0x3ff004662bae03b4              # double 1.001074
	.quad	0x400f031055b89939              # double 3.8764959999999999
	.quad	0x4021546cfc829cfe              # double 8.6648940000000003
	.quad	0x4022943265add9c2              # double 9.2894469999999991
	.quad	0x4017e9d30270f388              # double 5.9783439999999999
	.quad	0x3fe157f737da61e1              # double 0.54198800000000003
	.quad	0x402156ee0f3cb3e5              # double 8.6697849999999992
	.quad	0x40206b1960fa15db              # double 8.2091779999999996
	.quad	0x4020bb2bba98eda2              # double 8.3655679999999997
	.quad	0x40214a3400b88ca4              # double 8.6449280000000001
	.quad	0x3fe48ad46f587d70              # double 0.64194700000000005
	.quad	0x4020e5f37329c348              # double 8.4491230000000002
	.quad	0x3fc534bd76ee73e7              # double 0.16567200000000001
	.quad	0x4019a4a83b1d0c80              # double 6.4107979999999998
	.quad	0x3fdf2aed1394317b              # double 0.48699500000000001
	.quad	0x401a4be2f7b17ce5              # double 6.5741079999999998
	.quad	0x4012838327674d16              # double 4.6284299999999998
	.quad	0x4023f4e11dbca969              # double 9.9782799999999998
	.quad	0x40206add590c0ad0              # double 8.2087199999999996
	.quad	0x40043fefbf401c50              # double 2.5312190000000001
	.quad	0x40056e2b063e07a3              # double 2.6787930000000002
	.quad	0x40191b3354c12275              # double 6.2765630000000003
	.quad	0x4016b2fa0d77b7c8              # double 5.6747820000000004
	.quad	0x4017746bf01322f2              # double 5.8636929999999996
	.quad	0x3fe5f820a30db6a2              # double 0.68653900000000001
	.quad	0x40227330f8c64fdb              # double 9.2249829999999999
	.quad	0x401be644d87724fb              # double 6.9748720000000004
	.quad	0x400f9759ee88df37              # double 3.9489019999999999
	.quad	0x40004094e5d5b24f              # double 2.0315340000000002
	.quad	0x4011f3e7d135115a              # double 4.4881890000000002
	.quad	0x401bc68f4b61fe22              # double 6.9439060000000001
	.quad	0x4023e4358afc47e5              # double 9.9457210000000006
	.quad	0x3fb25cc426351def              # double 0.071728
	.quad	0x401024a7f8012dfd              # double 4.0357969999999996
	.quad	0x40149d97b30f8c65              # double 5.153899
	.quad	0x400c2195464dc22b              # double 3.5163980000000001
	.quad	0x4006c80ae1049236              # double 2.847677
	.quad	0x3fda88333fc86cec              # double 0.41456300000000001
	.quad	0x400ba272862f598a              # double 3.4543200000000001
	.quad	0x401ddb16c1e364bf              # double 7.4639540000000002
	.quad	0x4018dd80a17b0f6b              # double 6.2163110000000001
	.quad	0x3fff51b1d92b7fe1              # double 1.9574450000000001
	.quad	0x40178146a1a500d6              # double 5.8762460000000001
	.quad	0x4007fd7c2ca148bb              # double 2.9987720000000002
	.quad	0x4022b094e5d5b24f              # double 9.3448860000000007
	.quad	0x4023681d19157abc              # double 9.7033470000000008
	.quad	0x4021a8fcd67fd3f6              # double 8.8300540000000005
	.quad	0x3fc491f2dc2b0ea2              # double 0.16070400000000001
	.quad	0x40203cb662fdfc1a              # double 8.1185790000000004
	.quad	0x400769eb2074ea8e              # double 2.9267180000000002
	.quad	0x4009e4c165907d91              # double 3.2366969999999999
	.quad	0x400c515df6555c53              # double 3.53973
	.quad	0x40145a77e5eaab04              # double 5.0883479999999999
	.quad	0x4023b5523b3636f4              # double 9.8541430000000005
	.quad	0x40035c6b8b69552e              # double 2.4201269999999999
	.quad	0x401a33f0bae89eba              # double 6.5507229999999996
	.quad	0x4015e93d96638434              # double 5.4777740000000001
	.quad	0x4003c3aa79bbadc1              # double 2.4705400000000002
	.quad	0x3fa2d490e66cb103              # double 0.036777999999999998
	.quad	0x4003d8023a6ce358              # double 2.4804729999999999
	.quad	0x4013fe974a3400b9              # double 4.9986240000000004
	.quad	0x401a8572580c3090              # double 6.6303190000000001
	.quad	0x40203088509bf9c6              # double 8.0947899999999997
	.quad	0x40032043a2163fdd              # double 2.3907539999999998
	.quad	0x400406b484d76ab6              # double 2.5032740000000002
	.quad	0x401a928e4fb97bb7              # double 6.6431209999999998
	.quad	0x4014fe2ac3222920              # double 5.2482100000000003
	.quad	0x4015f64e48626f61              # double 5.4905330000000001
	.quad	0x401c891105e1c151              # double 7.1338540000000004
	.quad	0x401558d045fe1112              # double 5.3367319999999996
	.quad	0x4022296d4c33b539              # double 9.0809119999999997
	.quad	0x401398958d9b5e96              # double 4.8990080000000003
	.quad	0x4008c7000431bde8              # double 3.0971679999999999
	.quad	0x4017b17c1bda511a              # double 5.9233250000000002
	.quad	0x4022c71327243138              # double 9.3888180000000005
	.quad	0x4019e5097c80841f              # double 6.4736690000000001
	.quad	0x3f588b11409a2403              # double 0.001498
	.quad	0x40198cd78c436fc1              # double 6.3875409999999997
	.quad	0x4000acd63cb81733              # double 2.0843929999999999
	.quad	0x40156ba0a5269596              # double 5.355105
	.quad	0x402239bbf0dc768e              # double 9.112762
	.quad	0x40151b1422ccb3a2              # double 5.2764439999999997
	.quad	0x401650dd82fd75e2              # double 5.57897
	.quad	0x3ff11e42e1262025              # double 1.069888
	.quad	0x4014fa36199780bb              # double 5.2443470000000003
	.quad	0x40132dad7518b0d1              # double 4.7946070000000001
	.quad	0x401f272cd7cf5f4e              # double 7.7882569999999998
	.quad	0x40199f94855da273              # double 6.4058400000000004
	.quad	0x4018331a4bdba0a5              # double 6.0499049999999999
	.quad	0x402278c79f666235              # double 9.2358980000000006
	.quad	0x4021086317268d33              # double 8.5163810000000009
	.quad	0x401b09e5e2478855              # double 6.7596660000000002
	.quad	0x4019d50f840181e0              # double 6.4580669999999998
	.quad	0x4017feffe2a3cea7              # double 5.9990230000000002
	.quad	0x40056faeff5c6c12              # double 2.6795330000000002
	.quad	0x400e5a6937d1fe65              # double 3.794146
	.quad	0x401e9e44fa05143c              # double 7.65456
	.quad	0x4021ec577d955715              # double 8.9616050000000005
	.quad	0x4011b0cb295e9e1b              # double 4.42265
	.quad	0x4014b21c8a7a41e5              # double 5.1739369999999996
	.quad	0x4020bb69fcf3dc05              # double 8.3660429999999995
	.quad	0x3fc440af1cb89d6b              # double 0.158224
	.quad	0x4006a47a9e2bcf92              # double 2.8303120000000002
	.quad	0x40235e2d6238da3c              # double 9.6839399999999997
	.quad	0x4017b8f4f93bc0a0              # double 5.9306219999999996
	.quad	0x40220044f1a1986c              # double 9.0005260000000006
	.quad	0x3feae40639d5e4a4              # double 0.84033500000000005
	.quad	0x4022234f61672325              # double 9.0689650000000004
	.quad	0x400b06412cf0f9d3              # double 3.3780540000000001
	.quad	0x4004b07e175d13d7              # double 2.5861779999999999
	.quad	0x4021eeec39799e52              # double 8.9666460000000008
	.quad	0x400c7fd2630ec311              # double 3.5624129999999998
	.quad	0x3ff8625d8d79d0a6              # double 1.5240149999999999
	.quad	0x3fd85a4f00ef1349              # double 0.38051200000000002
	.quad	0x401391ed9dfdac69              # double 4.8925080000000003
	.quad	0x4010d3a3ec02f2fa              # double 4.2066800000000004
	.quad	0x400d2ec17ebaf102              # double 3.6478299999999999
	.quad	0x40183e008e9b38d6              # double 6.060549
	.quad	0x4017bc3760bf5d79              # double 5.9338050000000004
	.quad	0x3ff93e4bcad9ad86              # double 1.577709
	.quad	0x4017d9b5a63f9a4a              # double 5.9626070000000002
	.quad	0x401d066234a87e39              # double 7.2562340000000001
	.quad	0x3ff1ae3c536d655e              # double 1.105038
	.quad	0x4020f0c9107faa04              # double 8.4702839999999994
	.quad	0x3fe4e1f5be5d9e41              # double 0.65258300000000002
	.quad	0x4020f645c358afc4              # double 8.4810009999999991
	.quad	0x4015f1e2de870974              # double 5.4862169999999999
	.quad	0x40130f47735c182f              # double 4.7649210000000002
	.quad	0x401850870110a138              # double 6.07864
	.quad	0x400b044bf4cb1898              # double 3.3770980000000002
	.quad	0x401e325d074213a1              # double 7.5491830000000001
	.quad	0x400fa23bff8a8f3b              # double 3.9542160000000002
	.quad	0x3fab250b524399b3              # double 0.053017000000000002
	.quad	0x40109d188f42fe82              # double 4.1534139999999997
	.quad	0x4006f702e6644d87              # double 2.8706109999999998
	.quad	0x40155008a697aede              # double 5.3281580000000002
	.quad	0x4006251b0ccbc05d              # double 2.7681179999999999
	.quad	0x401e2c9ff92f2b67              # double 7.5435790000000002
	.quad	0x402173b645a1cac1              # double 8.7260000000000009
	.quad	0x4023ea20bc382a13              # double 9.957281
	.quad	0x3ff0035ce1826677              # double 1.000821
	.quad	0x401a352b0a6fc58b              # double 6.5519220000000002
	.quad	0x4022404e618ce2d2              # double 9.1255980000000001
	.quad	0x400da2491afc04c9              # double 3.7042410000000001
	.quad	0x401b08dc11e42e12              # double 6.7586519999999997
	.quad	0x4020d12a51e321a3              # double 8.4085260000000002
	.quad	0x4004f9a6b50b0f28              # double 2.6219000000000001
	.quad	0x4012ff41aef6f8f0              # double 4.7492739999999998
	.quad	0x4015c9e12a51e322              # double 5.4471480000000003
	.quad	0x4014934f3fd933e3              # double 5.1438569999999997
	.quad	0x3ffe61101b003687              # double 1.8986970000000001
	.quad	0x401af50763a19008              # double 6.7392859999999999
	.quad	0x4011dc8259e1f3a5              # double 4.4653409999999996
	.quad	0x3fcfd8b60f1b25f6              # double 0.24880099999999999
	.quad	0x401dc25c3dee7818              # double 7.4398049999999997
	.quad	0x401aeb9bed30f063              # double 6.7300870000000002
	.quad	0x401196bce8533b10              # double 4.3972049999999996
	.quad	0x401619a0ad8a1166              # double 5.5250269999999997
	.quad	0x40238d66adb402d1              # double 9.7761739999999992
	.quad	0x400e793e5fb71fbc              # double 3.8092009999999998
	.quad	0x3fa5842b734b5137              # double 0.042023999999999999
	.quad	0x3ff0064ba94bbe44              # double 1.0015369999999999
	.quad	0x3f9b9ecf63800219              # double 0.026973
	.quad	0x40002a077036c9c1              # double 2.0205220000000002
	.quad	0x4011e3bc903ea705              # double 4.4723990000000002
	.quad	0x40139ca925fe974a              # double 4.9029889999999998
	.quad	0x40144437824d4cba              # double 5.0666180000000001
	.quad	0x3ff5c18d6909aed5              # double 1.3597539999999999
	.quad	0x401e7c0b9991361e              # double 7.6211380000000002
	.quad	0x4022f0a137f38c54              # double 9.4699799999999996
	.quad	0x400e4664d3bf2f55              # double 3.7843719999999998
	.quad	0x40177e15011904b4              # double 5.8731270000000002
	.quad	0x401312ccb3a2595c              # double 4.7683590000000002
	.quad	0x4015940d4dc65c70              # double 5.3945819999999998
	.quad	0x3ff5b4aba3875925              # double 1.356609
	.quad	0x401baaf31b152f3c              # double 6.9169429999999998
	.quad	0x40187aada33bd9cb              # double 6.1198030000000001
	.quad	0x40206c8b65237048              # double 8.2120010000000008
	.quad	0x3fffba81dc0db270              # double 1.983034
	.quad	0x40027606317268d3              # double 2.3076289999999999
	.quad	0x400f2537e2c55c96              # double 3.893173
	.quad	0x40230c1acde19fc3              # double 9.5236420000000006
	.quad	0x4018ebd48cb4aec9              # double 6.2303030000000001
	.quad	0x4006988a04d12019              # double 2.8244820000000002
	.quad	0x4020745fbf83382e              # double 8.2272929999999995
	.quad	0x40229d4024b33db0              # double 9.3071300000000008
	.quad	0x400258d36b4c7f35              # double 2.2933720000000002
	.quad	0x402367c200c0f020              # double 9.7026520000000005
	.quad	0x3fcbfa658c4bd33d              # double 0.218579
	.quad	0x4020cafea3df6db9              # double 8.3964739999999995
	.quad	0x401caca18bd66278              # double 7.1685850000000002
	.quad	0x4022880a9de8b3b3              # double 9.2657059999999998
	.quad	0x3fee6ab7995ee137              # double 0.95052700000000001
	.quad	0x401fcd759ee88df3              # double 7.9506439999999996
	.quad	0x4019e014f8b588e3              # double 6.4688299999999996
	.quad	0x40219cbab649d389              # double 8.8061120000000006
	.quad	0x401d78a372606fac              # double 7.3678109999999997
	.quad	0x400dd0ed3d859c8d              # double 3.7270150000000002
	.quad	0x40211cf97edc7ef1              # double 8.5565909999999992
	.quad	0x401afb7baecd0785              # double 6.7455889999999998
	.quad	0x3ff55655e28aa433              # double 1.3335779999999999
	.quad	0x401f3a61e0c5a815              # double 7.8070139999999996
	.quad	0x400005532617c1be              # double 2.0026000000000002
	.quad	0x4020dca5bd944aa5              # double 8.4309519999999996
	.quad	0x3fd38c0485a0be51              # double 0.305421
	.quad	0x4009c7ea5f84cad5              # double 3.2226149999999998
	.quad	0x401d4a6e75ff609e              # double 7.3226870000000002
	.quad	0x3fc77121ab4b72c5              # double 0.18314
	.quad	0x4018b450acc0bdcb              # double 6.1760890000000002
	.quad	0x3ff7ca30db6a1e82              # double 1.486863
	.quad	0x4019ead6cb535009              # double 6.4793349999999998
	.quad	0x3fc8259e1f3a57eb              # double 0.18864800000000001
	.quad	0x3ffb23358f2e05cd              # double 1.696096
	.quad	0x4021708ce703afb8              # double 8.7198250000000002
	.quad	0x3fd90de8f6cefed6              # double 0.39147399999999999
	.quad	0x401c9fe8ab4fa483              # double 7.156161
	.quad	0x40227cfd2a62aa19              # double 9.2441189999999995
	.quad	0x3ffcbae685db76b4              # double 1.7956300000000001
	.quad	0x401ca083558a7610              # double 7.1567509999999999
	.quad	0x401f058537e2c55d              # double 7.7553910000000003
	.quad	0x401edd4bf0995aaf              # double 7.7161099999999995
	.quad	0x401405c5b4aa9718              # double 5.0056370000000001
	.quad	0x40179d106ee30caa              # double 5.9033829999999998
	.quad	0x3ff85e9e1b089a02              # double 1.5230999999999999
	.quad	0x400b5592d98bf7f0              # double 3.4167839999999998
	.quad	0x400015f676ea4229              # double 2.0107240000000002
	.quad	0x4013b16ebd4cfd09              # double 4.9232740000000002
	.quad	0x401781fd5885d313              # double 5.8769429999999998
	.quad	0x4021633354c12275              # double 8.6937510000000007
	.quad	0x4001e1bf37b8d3f2              # double 2.2352280000000002
	.quad	0x401f8bae46cfc82a              # double 7.8864070000000002
	.quad	0x3ff60241c3efae79              # double 1.375551
	.quad	0x402341fdbd2fa0d7              # double 9.6288889999999991
	.quad	0x3ffe5abc0e38a7e7              # double 1.8971519999999999
	.quad	0x400874b0e1b4bb5e              # double 3.056978
	.quad	0x40104fe9fadafd11              # double 4.0780409999999998
	.quad	0x401a069b5a63f9a5              # double 6.5064520000000003
	.quad	0x40153cc20d5629d8              # double 5.3093339999999998
	.quad	0x401c508d08919ef9              # double 7.0786629999999997
	.quad	0x40108fc58ab92c06              # double 4.1404019999999999
	.quad	0x40222e34b945308c              # double 9.0902460000000004
	.quad	0x3ff8c4c5974e65bf              # double 1.5480400000000001
	.quad	0x3ff492a411c2a023              # double 1.285801
	.quad	0x3fcd5df6555c52e7              # double 0.22943
	.quad	0x40147fec56d5cfab              # double 5.1249250000000002
	.quad	0x4000f1769a91105e              # double 2.117902
	.quad	0x3ff0a7e308787486              # double 1.040988
	.quad	0x3ff30fbb9496249a              # double 1.191341
	.quad	0x4021cfa3db3bfb59              # double 8.9055470000000003
	.quad	0x402290f0c77dd873              # double 9.2830870000000001
	.quad	0x401f18c75c4a83b2              # double 7.7741980000000002
	.quad	0x402264c271fff79d              # double 9.1967960000000009
	.quad	0x40050fc58ab92c06              # double 2.632701
	.quad	0x401964d37c1376d5              # double 6.3484629999999997
	.quad	0x40151c9ff92f2b67              # double 5.2779540000000003
	.quad	0x4010453198288052              # double 4.0675720000000002
	.quad	0x40234102bc72e276              # double 9.6269740000000006
	.quad	0x402099df1172ef0b              # double 8.3005300000000002
	.quad	0x3fe361c79b34a44c              # double 0.60568599999999995
	.quad	0x40103b25f633ce64              # double 4.0577620000000003
	.quad	0x401ab5c358afc47e              # double 6.6775029999999997
	.quad	0x401c68dbcec84f90              # double 7.1024010000000004
	.quad	0x3fe562bcf91a32b1              # double 0.66830299999999998
	.quad	0x40039ba2be0589ad              # double 2.4509940000000001
	.quad	0x402184399b2c40d1              # double 8.7582520000000006
	.quad	0x4016fe9c4545846f              # double 5.7486430000000004
	.quad	0x3fea0bfa0945f9df              # double 0.81396199999999996
	.quad	0x40059dc9c4da9004              # double 2.702045
	.quad	0x3fefef5caf2d7f95              # double 0.99796899999999999
	.quad	0x401d3d6ba8c58687              # double 7.3099809999999996
	.quad	0x401a13e963dc486b              # double 6.5194450000000002
	.quad	0x402202af78feef5f              # double 9.0052450000000004
	.quad	0x4021483d35eb7458              # double 8.6410920000000004
	.quad	0x401a3f3061c79b35              # double 6.5617080000000003
	.quad	0x3fffd373affb04ee              # double 1.9891239999999999
	.quad	0x40218dbdd76683c3              # double 8.7768390000000007
	.quad	0x3fe87dae81882adc              # double 0.76534199999999996
	.quad	0x3ff88db59578a2a9              # double 1.534597
	.quad	0x401f6bc169c23b79              # double 7.8552299999999997
	.quad	0x4022f49f72f76e61              # double 9.4777789999999999
	.quad	0x40142a3f034b0e1b              # double 5.0412559999999997
	.quad	0x401741a2a4db163c              # double 5.8140970000000003
	.quad	0x401d3036c9c0a8d2              # double 7.2970839999999999
	.quad	0x40005655e28aa433              # double 2.0421559999999999
	.quad	0x401473d46b26bf87              # double 5.1131149999999996
	.quad	0x4011fe74afd54541              # double 4.4984919999999997
	.quad	0x401d9f06705c896e              # double 7.4052980000000002
	.quad	0x3fe660e30446b69e              # double 0.69932700000000003
	.quad	0x4023f867f0aa21a7              # double 9.9851679999999998
	.quad	0x400b022467be553b              # double 3.3760460000000001
	.quad	0x400225de9c0229a6              # double 2.268491
	.quad	0x4020cfd0f1f57b42              # double 8.4058910000000004
	.quad	0x40206cb05b7cfe58              # double 8.2122829999999993
	.quad	0x401d7b4916ca46e1              # double 7.3703960000000004
	.quad	0x3ff7d4280ae10492              # double 1.489296
	.quad	0x40169dd50a88effe              # double 5.6541329999999999
	.quad	0x4010920a73f748a1              # double 4.1426179999999997
	.quad	0x40175e1437c5692b              # double 5.8418739999999998
	.quad	0x400725aab4741073              # double 2.893392
	.quad	0x401196317268d328              # double 4.3966729999999998
	.quad	0x401f9c5479d4d834              # double 7.902666
	.quad	0x4022abbb83cf2cf9              # double 9.3354149999999994
	.quad	0x401c5f811f4f50a0              # double 7.0932659999999998
	.quad	0x3fde90ea9e6eeb70              # double 0.47759499999999999
	.quad	0x3fdeaecd07852f7f              # double 0.47941899999999998
	.quad	0x402031aa821f2991              # double 8.0970040000000001
	.quad	0x4011055000c9539c              # double 4.2551880000000004
	.quad	0x401237b17ce52ded              # double 4.5543880000000003
	.quad	0x401bfa0a0f4d7add              # double 6.9941789999999999
	.quad	0x40140ed0f627392a              # double 5.0144690000000001
	.quad	0x40113e0c17657753              # double 4.3105929999999999
	.quad	0x4009e0ca600b0293              # double 3.2347610000000002
	.quad	0x401fa461309c7ffe              # double 7.9105270000000001
	.quad	0x402101f1ae2da555              # double 8.5037970000000005
	.quad	0x401faf1843c3a42f              # double 7.9209909999999998
	.quad	0x401dccf3dc054ef4              # double 7.4501489999999997
	.quad	0x40154b84988094e6              # double 5.3237480000000001
	.quad	0x3ffc8a30db6a1e82              # double 1.783738
	.quad	0x3fbd697f1f9acffa              # double 0.11489099999999999
	.quad	0x40103a02b841248d              # double 4.0566509999999996
	.quad	0x3fe689f83be6601c              # double 0.70434200000000002
	.quad	0x40147a8deb0fadf3              # double 5.1196820000000001
	.quad	0x3fba1ad6451b9303              # double 0.10197199999999999
	.quad	0x401b54e874c8ffb9              # double 6.8329180000000003
	.quad	0x400a551ce28ed5f1              # double 3.2915589999999999
	.quad	0x4020a553ef6b5d46              # double 8.3229059999999997
	.quad	0x40225f5e6362a5e8              # double 9.1862670000000008
	.quad	0x4023a917507e9d95              # double 9.8302560000000003
	.quad	0x40054d3a604e1e71              # double 2.662709
	.quad	0x401a4da09cc319c6              # double 6.5758080000000003
	.quad	0x4012c41bb8c32a8d              # double 4.6915120000000003
	.quad	0x4021b0ed5f138bce              # double 8.845561
	.quad	0x401c4b26bf8769ec              # double 7.0733899999999998
	.quad	0x4000d9d3cbc48f11              # double 2.1063610000000001
	.quad	0x3ff5d1bd61f5be5e              # double 1.3637060000000001
	.quad	0x401a803cd141a693              # double 6.6252319999999996
	.quad	0x4021d1682f944242              # double 8.9089980000000004
	.quad	0x3ffbea497fa5d28d              # double 1.744699
	.quad	0x402361b38d60a633              # double 9.6908229999999999
	.quad	0x40179396d0917d6b              # double 5.8941299999999996
	.quad	0x3fa4c1ca3a4b5569              # double 0.040541000000000001
	.quad	0x4020c310129cbab6              # double 8.3809819999999995
	.quad	0x401872a843808851              # double 6.1119700000000003
	.quad	0x4002fca31e7d9989              # double 2.3733580000000001
	.quad	0x40050efbb0e5e679              # double 2.6323159999999999
	.quad	0x40078815e39713ad              # double 2.9414479999999998
	.quad	0x40010a3d70a3d70a              # double 2.1299999999999999
	.quad	0x40031719f7f8ca82              # double 2.3862800000000002
	.quad	0x4016b2934acaff6d              # double 5.6743899999999998
	.quad	0x4020ccadbc664d3c              # double 8.399763
	.quad	0x4006bc0b13597918              # double 2.841818
	.quad	0x400a19591cd1c7de              # double 3.2623769999999999
	.quad	0x400a39cae21101b0              # double 3.278219
	.quad	0x40073bfdf7e8038a              # double 2.904293
	.quad	0x40115c486ad2dcb1              # double 4.3401199999999998
	.quad	0x3fb1873ffac1d29e              # double 0.068470000000000003
	.quad	0x4021e2647fdc5932              # double 8.9421730000000004
	.quad	0x40199558ea7ce0fc              # double 6.3958469999999998
	.quad	0x401602b27cbf6e3f              # double 5.5026339999999996
	.quad	0x3fe1e1d4306e5cd5              # double 0.55881700000000001
	.quad	0x4017ea272862f599              # double 5.9786650000000003
	.quad	0x3fd8775fb2edfe76              # double 0.38228600000000001
	.quad	0x401497681669ced1              # double 5.1478580000000003
	.quad	0x401488fffbce4218              # double 5.1337890000000002
	.quad	0x400cbbd6a593a2e0              # double 3.5917180000000002
	.quad	0x401b1e297396d091              # double 6.7794549999999996
	.quad	0x401b53fb7a5f41af              # double 6.832014
	.quad	0x401caafc47e49b20              # double 7.1669780000000003
	.quad	0x4016cc48adeebb34              # double 5.6994959999999999
	.quad	0x40190e24bba12b5e              # double 6.2638119999999997
	.quad	0x4019bbe22e5de15d              # double 6.4334800000000003
	.quad	0x4020d5d22856605f              # double 8.4176190000000002
	.quad	0x4010be94ab1d4f9c              # double 4.1861139999999999
	.quad	0x3ff453671ac14c66              # double 1.270362
	.quad	0x4014bfa15db3397e              # double 5.1871390000000002
	.quad	0x3ffa4e09784ec637              # double 1.6440520000000001
	.quad	0x3ff31ee88df3732a              # double 1.1950460000000001
	.quad	0x3ffad917939a7c18              # double 1.6780010000000001
	.quad	0x401817e175d13d75              # double 6.0233210000000001
	.quad	0x4011294dd72367e4              # double 4.2903359999999999
	.quad	0x4015c5c67dfe32a0              # double 5.4431399999999996
	.quad	0x4011601fb82c2bd8              # double 4.343871
	.quad	0x401609af1886df83              # double 5.5094570000000003
	.quad	0x40155569f4906035              # double 5.333412
	.quad	0x400cf2178f68be2f              # double 3.6182089999999998
	.quad	0x40154a8155d5f56a              # double 5.3227589999999996
	.quad	0x401d8679cc74b839              # double 7.3813240000000002
	.quad	0x401d3c31df761cbd              # double 7.3087840000000002
	.quad	0x3ffb53ee5eedcc21              # double 1.707991
	.quad	0x400bc35ac8a37260              # double 3.4703879999999998
	.quad	0x4021036501e2584f              # double 8.5066299999999995
	.quad	0x4016f892ab68cef6              # double 5.7427469999999996
	.quad	0x40172a4a05dd8f93              # double 5.7912980000000003
	.quad	0x400edcf4623d0bfa              # double 3.857888
	.quad	0x400b6a6b0d9513f9              # double 3.4269620000000001
	.quad	0x40101f08461f9f02              # double 4.0303050000000002
	.quad	0x40096ba94bbe4474              # double 3.1775690000000001
	.quad	0x3ff3fa98eda22f6a              # double 1.2486809999999999
	.quad	0x400166c332f01755              # double 2.1751770000000001
	.quad	0x4023fbc126a65cf6              # double 9.9917079999999991
	.quad	0x3fa2eab7995ee137              # double 0.036947000000000001
	.quad	0x3ff242ff8ec0f883              # double 1.141357
	.quad	0x400acaa6d2674081              # double 3.348951
	.quad	0x4016942d8c2a454e              # double 5.6447050000000001
	.quad	0x40063e48a58b3f64              # double 2.7804120000000001
	.quad	0x400070a45d41fa76              # double 2.0550009999999999
	.quad	0x40233c271fff79c8              # double 9.6174859999999995
	.quad	0x400b3dd00f776c48              # double 3.4051819999999999
	.quad	0x401b0fc47e49b1fb              # double 6.7653980000000002
	.quad	0x401db9f05ea24cc7              # double 7.4315810000000004
	.quad	0x401db07ee0b0af60              # double 7.4223590000000002
	.quad	0x401dfff2e48e8a72              # double 7.4999500000000001
	.quad	0x4020aa858793dd98              # double 8.3330500000000001
	.quad	0x3ff48eed02cd39da              # double 1.284894
	.quad	0x3ff156e58a32f449              # double 1.083715
	.quad	0x3ffbcb178b370047              # double 1.7370829999999999
	.quad	0x400e4edc3bd59924              # double 3.7885059999999999
	.quad	0x4017e531db445ed5              # double 5.9738230000000003
	.quad	0x400852d2bb23571d              # double 3.0404409999999999
	.quad	0x40200214cec41dd2              # double 8.0040650000000007
	.quad	0x4020993532e7b3d9              # double 8.2992340000000002
	.quad	0x3ff711f2dc2b0ea2              # double 1.4418820000000001
	.quad	0x400ad6ece13f4a99              # double 3.3549440000000001
	.quad	0x402031dc0db2702a              # double 8.0973819999999996
	.quad	0x4015f7e0ef99806f              # double 5.4920689999999999
	.quad	0x4021c5f71eafee70              # double 8.8866510000000005
	.quad	0x40193d8e432441ff              # double 6.3101130000000003
	.quad	0x3ff702d27807789a              # double 1.4381889999999999
	.quad	0x4020d65de15ca6ca              # double 8.418685
	.quad	0x40223e79463cfb33              # double 9.1220189999999999
	.quad	0x402214e1a3f4666f              # double 9.0407840000000004
	.quad	0x4021eac81d3aa36a              # double 8.958558
	.quad	0x401d920ea5b530cf              # double 7.3926340000000001
	.quad	0x401c3e5929670197              # double 7.0608870000000001
	.quad	0x401ba61ed5ae1cde              # double 6.9122269999999997
	.quad	0x40131ba6aca79357              # double 4.7770029999999997
	.quad	0x4020109efd86a8fc              # double 8.0324629999999999
	.quad	0x40067a6defc7a398              # double 2.8097799999999999
	.quad	0x3ff926e978d4fdf4              # double 1.5720000000000001
	.quad	0x401598c1db0142f6              # double 5.3991769999999999
	.quad	0x40100cb5781c7150              # double 4.0124110000000002
	.quad	0x3ff1b3ce63a5c1c6              # double 1.106398
	.quad	0x3ffc648c7192ea53              # double 1.774548
	.quad	0x3fbd5011904b3c3e              # double 0.11450299999999999
	.quad	0x4011c67e414e7ee9              # double 4.4438409999999999
	.quad	0x3ff964af0bf1a5ca              # double 1.587081
	.quad	0x3fb186ca89fc6da4              # double 0.068462999999999996
	.quad	0x40220742fe82517e              # double 9.0141829999999992
	.quad	0x402113211cb039ef              # double 8.5373619999999999
	.quad	0x40048c40d0aaa7df              # double 2.5684830000000001
	.quad	0x3fe1de8f6cefed63              # double 0.55841799999999997
	.quad	0x3fadf1e0828c36db              # double 0.058486000000000003
	.quad	0x4012e5182a9930be              # double 4.723725
	.quad	0x4001f5e7c8d19589              # double 2.2450709999999998
	.quad	0x4012884167a95c85              # double 4.6330619999999998
	.quad	0x400dc3864cb5bb38              # double 3.7204709999999999
	.quad	0x3fdc2239e6ab9b24              # double 0.43958900000000001
	.quad	0x401fdad31fcd24e1              # double 7.9636959999999996
	.quad	0x4007d6b5d462c344              # double 2.9798390000000001
	.quad	0x401d98dcdb37c99b              # double 7.3992800000000001
	.quad	0x40002e1f7d73c925              # double 2.0225209999999998
	.quad	0x4022584662bae03b              # double 9.1724119999999996
	.quad	0x4018eb089a027525              # double 6.2295249999999998
	.quad	0x400bca2e3c536d65              # double 3.4737209999999998
	.quad	0x4020b79f666234a8              # double 8.3586379999999991
	.quad	0x400dc2e7f6f4be83              # double 3.7201689999999998
	.quad	0x401027179bfdf7e8              # double 4.038176
	.quad	0x4019a6e9ff0cbaf9              # double 6.4130019999999996
	.quad	0x4018c234a87e38eb              # double 6.189654
	.quad	0x400876a161e4f766              # double 3.057925
	.quad	0x40141a43fe5c91d1              # double 5.0256499999999997
	.quad	0x3ff1f65a9a804966              # double 1.1226449999999999
	.quad	0x4020d0d0cc35ce18              # double 8.4078429999999997
	.quad	0x401d5c31593e5fb7              # double 7.3400319999999999
	.quad	0x40172d25edd05293              # double 5.7940899999999997
	.quad	0x401b9f212d773190              # double 6.9054000000000002
	.quad	0x401469e7b80a9de9              # double 5.1034230000000003
	.quad	0x40213da5119ce076              # double 8.6204000000000001
	.quad	0x401cc0589acbc8c1              # double 7.1878380000000002
	.quad	0x40176a1b5c7cd899              # double 5.8536200000000003
	.quad	0x4020014141e9af5c              # double 8.0024510000000006
	.quad	0x400aea5efe931876              # double 3.364439
	.quad	0x401b51240746455f              # double 6.8292390000000003
	.quad	0x3ff4c1dd1a21ea36              # double 1.2973300000000001
	.quad	0x402239374bc6a7f0              # double 9.1117500000000007
	.quad	0x401ed89d6adf71eb              # double 7.711538
	.quad	0x3ff8d885d31337eb              # double 1.552862
	.quad	0x402123f1e8e60807              # double 8.5702049999999996
	.quad	0x402287bc3c5bd0e1              # double 9.2651079999999997
	.quad	0x4013662cba732df5              # double 4.84978
	.quad	0x3fd8af6837f7be12              # double 0.38570599999999999
	.quad	0x400e34c1a8ac5c14              # double 3.77576
	.quad	0x4014d171e29b6b2b              # double 5.2045360000000001
	.quad	0x4003e9e4d5d80e49              # double 2.4892059999999998
	.quad	0x40152864883fd502              # double 5.2894459999999999
	.quad	0x3fe215c853c14834              # double 0.56515899999999997
	.quad	0x40225dd031055b8a              # double 9.1832290000000008
	.quad	0x401c42a38b8ae31d              # double 7.0650769999999996
	.quad	0x3fe8539b8887229f              # double 0.76020600000000005
	.quad	0x401e2f86a098915c              # double 7.5464120000000001
	.quad	0x3fe9ab884406c00e              # double 0.80218900000000004
	.quad	0x3fffb8a6dacabc51              # double 1.9825809999999999
	.quad	0x401f0e19b90ea9e7              # double 7.76377
	.quad	0x401645afaf859429              # double 5.5680529999999999
	.quad	0x401ddfe1975f2cb6              # double 7.4686339999999998
	.quad	0x4002b18b93469942              # double 2.3366920000000002
	.quad	0x40207be835dedf1e              # double 8.2420059999999999
	.quad	0x40105296f6512a95              # double 4.080654
	.quad	0x4023f3675ddd2ae9              # double 9.9753980000000002
	.quad	0x402174bc48f10a9a              # double 8.7279990000000005
	.quad	0x4023f70a1be2b496              # double 9.9824990000000007
	.quad	0x40159ae9ee45c359              # double 5.4012830000000003
	.quad	0x4022ddaf8df7a4e8              # double 9.4329800000000005
	.quad	0x401da65907d91255              # double 7.4124489999999996
	.quad	0x40228ead0c3d2524              # double 9.2786639999999991
	.quad	0x4017f8e3ef284168              # double 5.9930570000000003
	.quad	0x40121cfaeff5c6c1              # double 4.5283009999999999
	.quad	0x40123c84f8f8a4c2              # double 4.5591010000000001
	.quad	0x3ffc7b6aa4b9884c              # double 1.7801309999999999
	.quad	0x4004bddb9841aac5              # double 2.5927039999999999
	.quad	0x400a5c7d5ed06fef              # double 3.2951609999999998
	.quad	0x401bf0d349be8ff3              # double 6.9851809999999999
	.quad	0x4022c28d434a01ac              # double 9.3799840000000003
	.quad	0x4023eb83ad9f0a1c              # double 9.9599890000000002
	.quad	0x4023591fb3fa6df0              # double 9.6740700000000004
	.quad	0x4022efdc7abfb9bf              # double 9.4684790000000003
	.quad	0x4009462456f75d9a              # double 3.159249
	.quad	0x4016e03fb3743633              # double 5.7189930000000002
	.quad	0x40191a4a05dd8f93              # double 6.2756730000000003
	.quad	0x40138b413986338b              # double 4.8859909999999998
	.quad	0x401325c24c404a73              # double 4.7868740000000001
	.quad	0x400453a81dc0db27              # double 2.540848
	.quad	0x3fd9fabda0dfdef8              # double 0.40592899999999998
	.quad	0x40237f0867ad8e43              # double 9.7481109999999997
	.quad	0x401505182a9930be              # double 5.254975
	.quad	0x400de2fb5d031056              # double 3.7358310000000001
	.quad	0x40222c14a4d2b2c0              # double 9.0860950000000002
	.quad	0x400baed45e9185cf              # double 3.4603660000000001
	.quad	0x40231c577d955715              # double 9.5553550000000004
	.quad	0x3fcfb691212513b6              # double 0.24775900000000001
	.quad	0x3febff8012dfd695              # double 0.87493900000000002
	.quad	0x40219de8b3b32053              # double 8.8084159999999994
	.quad	0x3ff05e76427c7c52              # double 1.0230619999999999
	.quad	0x3fdce7c49fd7a13c              # double 0.45164599999999999
	.quad	0x3ff60a350d2806af              # double 1.3774919999999999
	.quad	0x4021812b7fe08af0              # double 8.7522850000000005
	.quad	0x3fe67c4199fe4367              # double 0.70266799999999996
	.quad	0x4023c79702e6644e              # double 9.8898240000000008
	.quad	0x4001911409a24031              # double 2.1958389999999999
	.quad	0x401b51a36e2eb1c4              # double 6.8297249999999998
	.quad	0x40138becaab8a5ce              # double 4.8866449999999997
	.quad	0x40198b0a2ca9ac36              # double 6.3857809999999997
	.quad	0x40150549f94855da              # double 5.2551649999999999
	.quad	0x4020e440af1cb89d              # double 8.4458059999999993
	.quad	0x4023be8943e10060              # double 9.8721409999999992
	.quad	0x4022a725e56cd6c3              # double 9.3264610000000001
	.quad	0x4023bf74eebf65dc              # double 9.873939
	.quad	0x401f5f5a5332acfb              # double 7.8431179999999995
	.quad	0x401688abd5dc4007              # double 5.6334679999999997
	.quad	0x401fd7c88e79aae7              # double 7.9607260000000001
	.quad	0x401d8f7caa7589f0              # double 7.3901240000000001
	.quad	0x401de4052d666a98              # double 7.4726759999999998
	.quad	0x4020fface67d77fb              # double 8.4993660000000002
	.quad	0x3ffb04b4d056c509              # double 1.6886490000000001
	.quad	0x3fd8fdc5931ca7d6              # double 0.39048899999999998
	.quad	0x4000b3461309c800              # double 2.0875360000000001
	.quad	0x400a8d7cf5f4e443              # double 3.319086
	.quad	0x40215900c521dda0              # double 8.6738339999999994
	.quad	0x3ffebde1e2de8709              # double 1.9213579999999999
	.quad	0x4012ccba732df506              # double 4.6999300000000002
	.quad	0x4012e9e12a51e322              # double 4.7283980000000003
	.quad	0x401e4b3461309c80              # double 7.573442
	.quad	0x4020c7ec3547e069              # double 8.3904739999999993
	.quad	0x4019e4d594f26aec              # double 6.473471
	.quad	0x401e2a4a8c154c98              # double 7.5412999999999996
	.quad	0x3ff819c9d5a187a5              # double 1.5062960000000001
	.quad	0x40088df9378ee286              # double 3.0693229999999998
	.quad	0x3fffc38088509bfa              # double 1.9852300000000001
	.quad	0x401f3842b734b513              # double 7.8049419999999996
	.quad	0x402045fc5cdd50a9              # double 8.1366910000000008
	.quad	0x3fd32bbecaab8a5d              # double 0.29954500000000001
	.quad	0x3ff53c115df6555c              # double 1.3271649999999999
	.quad	0x4022d7eda6612839              # double 9.4217349999999999
	.quad	0x40128389b52007dd              # double 4.6284549999999998
	.quad	0x4004c66ec9e236c1              # double 2.5968909999999998
	.quad	0x4023a5cfaacd9e84              # double 9.8238500000000001
	.quad	0x401e5de939eadd59              # double 7.5917099999999999
	.quad	0x401cb0728e92d55a              # double 7.1723119999999998
	.quad	0x401cc4a3400b88ca              # double 7.1920289999999998
	.quad	0x4014ba055757d5aa              # double 5.1816610000000001
	.quad	0x4020e55de58e64b2              # double 8.4479819999999997
	.quad	0x4023347d805e5f31              # double 9.6025200000000001
	.quad	0x40221396af038e2a              # double 9.038259
	.quad	0x400700e0eb67c287              # double 2.875429
	.quad	0x3f76f75d9a0f0a5f              # double 0.005607
	.quad	0x4003dfe64f54d1e9              # double 2.4843259999999998
	.quad	0x4017632acfb762d8              # double 5.8468429999999998
	.quad	0x4019e9d5a187a4a5              # double 6.4783540000000004
	.quad	0x4018c73eab367a10              # double 6.1945750000000004
	.quad	0x401642031ceaf252              # double 5.5644650000000002
	.quad	0x3ff64676a7264a17              # double 1.3922030000000001
	.quad	0x3fed210385c67dfe              # double 0.91027999999999998
	.quad	0x4007abba12b5e52a              # double 2.9588510000000001
	.quad	0x3ffa5e6ab9b23dd5              # double 1.6480509999999999
	.quad	0x4022adcdb37c99af              # double 9.3394600000000008
	.quad	0x401be0ca600b0293              # double 6.9695220000000004
	.quad	0x400247b0b3919264              # double 2.285005
	.quad	0x4021de846a5d6bec              # double 8.9346040000000002
	.quad	0x3fffa7a20578e5c5              # double 1.978426
	.quad	0x40024c41dd1a21ea              # double 2.2872349999999999
	.quad	0x401ee0ee06d93815              # double 7.7196579999999999
	.quad	0x40181864883fd502              # double 6.0238209999999999
	.quad	0x401fa4e7ee9142b3              # double 7.9110409999999999
	.quad	0x4023998bb4d48883              # double 9.7998940000000001
	.quad	0x40225e15ebfa8f7e              # double 9.1837610000000005
	.quad	0x400642120e1f7d74              # double 2.7822610000000001
	.quad	0x4020dd6f75d9a0f1              # double 8.4324910000000006
	.quad	0x401d8fa48301a7a0              # double 7.3902760000000001
	.quad	0x4022711148fd9fd3              # double 9.2208349999999992
	.quad	0x4013d04bc27631b6              # double 4.9534140000000004
	.quad	0x401c1ae9680e0653              # double 7.026281
	.quad	0x4013333c1ce6c094              # double 4.8000340000000001
	.quad	0x3ff6eff6d330941d              # double 1.4335850000000001
	.quad	0x40115b5d894812be              # double 4.3392239999999997
	.quad	0x401e8db2b346130a              # double 7.6383770000000002
	.quad	0x40164792d1287c20              # double 5.569896
	.quad	0x40213e82730c6717              # double 8.6220890000000008
	.quad	0x401942a843808851              # double 6.3150950000000003
	.quad	0x400e5074213a0c6b              # double 3.7892839999999999
	.quad	0x4020a118e325d4a6              # double 8.3146430000000002
	.quad	0x4001763992c8c500              # double 2.1827269999999999
	.quad	0x40207461d8622c45              # double 8.227309
	.quad	0x3ffb29ccb7d41744              # double 1.697705
	.quad	0x400742afdda8bd23              # double 2.907562
	.quad	0x40195cd0fe8ab4fa              # double 6.3406409999999997
	.quad	0x401add48cb4aec8d              # double 6.7160979999999997
	.quad	0x402158a0b1bbcf4f              # double 8.6731010000000008
	.quad	0x3ffd65109070fbec              # double 1.8371740000000001
	.quad	0x40102aa19439de48              # double 4.0416319999999999
	.quad	0x401ae09f1f14983d              # double 6.7193569999999996
	.quad	0x40113e557de0d66f              # double 4.310873
	.quad	0x400227a743a647fe              # double 2.2693620000000001
	.quad	0x401c1bb40b34e768              # double 7.0270539999999997
	.quad	0x401f713c68661ae7              # double 7.8605819999999999
	.quad	0x4018ab139c94f69d              # double 6.1670670000000003
	.quad	0x4019bf733a8a3f8a              # double 6.4369630000000004
	.quad	0x401d6d87724fa8b5              # double 7.3569620000000002
	.quad	0x401a33c925785f8d              # double 6.5505719999999998
	.quad	0x4023c9e6256366d8              # double 9.8943340000000006
	.quad	0x40127a60913a4f87              # double 4.6195089999999999
	.quad	0x4011df761cbccf29              # double 4.4682240000000002
	.quad	0x401b1852b4d8ba41              # double 6.7737530000000001
	.quad	0x4021f4ca925fe975              # double 8.9781080000000006
	.quad	0x3ffdcdfefbf401c5              # double 1.862792
	.quad	0x4009315054ac29bf              # double 3.149079
	.quad	0x3fee55ac03ff6901              # double 0.94795799999999997
	.quad	0x3ff8d7342edbb59e              # double 1.55254
	.quad	0x40212a730c671690              # double 8.5829090000000008
	.quad	0x40229979e16d6dc2              # double 9.2997580000000006
	.quad	0x402238283d35eb74              # double 9.1096819999999993
	.quad	0x401aa8ca8198f1d4              # double 6.6648350000000001
	.quad	0x40018f0e90bc7b46              # double 2.194852
	.quad	0x4023d0d1b71758e2              # double 9.9078499999999998
	.quad	0x4018990de093532e              # double 6.1494669999999996
	.quad	0x401c9be22e5de15d              # double 7.1522300000000003
	.quad	0x3fee7587d6f97679              # double 0.951847
	.quad	0x400da6202539756d              # double 3.7061160000000002
	.quad	0x40231f6e1deacc92              # double 9.5613869999999999
	.quad	0x4006c3358f2e05cd              # double 2.8453170000000001
	.quad	0x40208f77d0f1f57b              # double 8.2802109999999995
	.quad	0x3ff22fdb8fde2ef5              # double 1.136684
	.quad	0x3fdc79702e6644d8              # double 0.44491199999999997
	.quad	0x4020f869835158b8              # double 8.4851799999999997
	.quad	0x401f301d5c31593e              # double 7.7969869999999997
	.quad	0x4021d4c4ac6cdaf5              # double 8.9155630000000006
	.quad	0x400a51cfbb949625              # double 3.2899470000000002
	.quad	0x401484face67d780              # double 5.1298630000000003
	.quad	0x4022cda4052d666b              # double 9.4016420000000007
	.quad	0x401c97980f55de59              # double 7.1480410000000001
	.quad	0x4011a53d640e9d52              # double 4.4113670000000003
	.quad	0x3fd58d823422467c              # double 0.33676200000000001
	.quad	0x401760196d8f4f94              # double 5.8438470000000002
	.quad	0x4022c6e371540032              # double 9.3884539999999994
	.quad	0x40109be5d9e40c84              # double 4.1522439999999996
	.quad	0x4006eaac1094a2ba              # double 2.8645860000000001
	.quad	0x401f90129cbab64a              # double 7.8906960000000002
	.quad	0x402271917939a7c1              # double 9.2218129999999991
	.quad	0x40118971c10d7bea              # double 4.3842230000000004
	.quad	0x400652a38b8ae31d              # double 2.7903509999999998
	.quad	0x4005ff8ca8198f1d              # double 2.7497799999999999
	.quad	0x3fed1344806290ef              # double 0.90860200000000002
	.quad	0x4002829a5ebb773a              # double 2.313771
	.quad	0x401e8159c4977425              # double 7.6263189999999996
	.quad	0x4021f20b8066c2ad              # double 8.9727440000000005
	.quad	0x40079be3c105186e              # double 2.9511180000000001
	.quad	0x4023a9d55e6bc622              # double 9.8317060000000005
	.quad	0x401a81c1d6cf850e              # double 6.6267160000000001
	.quad	0x4017746412cf0f9d              # double 5.8636629999999998
	.quad	0x400f64b33daf8df8              # double 3.9241700000000002
	.quad	0x401e092f2b66b617              # double 7.5089689999999995
	.quad	0x4018d79b34a44c7b              # double 6.210553
	.quad	0x40076486ad2dcb14              # double 2.9240849999999998
	.quad	0x4011e10adcd2d44e              # double 4.4697680000000002
	.quad	0x401fb0a3d70a3d71              # double 7.9225000000000003
	.quad	0x3fdefdef8487b99d              # double 0.48424899999999999
	.quad	0x4021cf8dd616f86a              # double 8.9053789999999999
	.quad	0x401223de6149c6f3              # double 4.5350279999999996
	.quad	0x3fe16a35935fc3b5              # double 0.544215
	.quad	0x401e64c6a3bddfca              # double 7.598414
	.quad	0x3fee034d26fa3fcd              # double 0.93790300000000004
	.quad	0x401a3ab7995ee137              # double 6.5573410000000001
	.quad	0x3ffa5f15a4acf313              # double 1.6482140000000001
	.quad	0x3ffd2f587d6f9768              # double 1.8240590000000001
	.quad	0x4002b2dcb1465e89              # double 2.3373349999999999
	.quad	0x4003521a2e7f6f4c              # double 2.415089
	.quad	0x4019ff5126634118              # double 6.499333
	.quad	0x400f8bb906466b1e              # double 3.9432239999999998
	.quad	0x4012b03dddb1209f              # double 4.6721110000000001
	.quad	0x4001d7de0d66f0d0              # double 2.2304040000000001
	.quad	0x4006fa75cd0bb6ed              # double 2.8722949999999998
	.quad	0x4020b59bc33f8551              # double 8.3547039999999999
	.quad	0x3fe986cebbba55d2              # double 0.79770600000000003
	.quad	0x40086fc0d2c386d3              # double 3.054567
	.quad	0x4020fda35d67ba23              # double 8.4953869999999991
	.quad	0x401fe76577531db4              # double 7.9759729999999998
	.quad	0x401e3a7d24180d3d              # double 7.557118
	.quad	0x400cd8d36b4c7f35              # double 3.6058720000000002
	.quad	0x40205a0685553ef7              # double 8.1758310000000005
	.quad	0x400fba4f00ef1349              # double 3.9659710000000001
	.quad	0x40111375c8d9f905              # double 4.2690039999999998
	.quad	0x4013b31550ca1cef              # double 4.9248859999999999
	.quad	0x3fe355043e5321e6              # double 0.604128
	.quad	0x3fff8765ba6efc37              # double 1.970556
	.quad	0x400a4dcc20d5629e              # double 3.2879870000000002
	.quad	0x4002107e9d94d0dd              # double 2.258054
	.quad	0x4006b321e603d578              # double 2.8374670000000002
	.quad	0x401ab6eac8605682              # double 6.6786300000000001
	.quad	0x400ee00d1b71758e              # double 3.8593999999999999
	.quad	0x4018d4959e625636              # double 6.2076019999999996
	.quad	0x401cd0ce0b912dba              # double 7.2039109999999997
	.quad	0x400740303c07ee0b              # double 2.906342
	.quad	0x4008cdb163baba7c              # double 3.1004360000000002
	.quad	0x400ea57eaa2a0a96              # double 3.8308080000000002
	.quad	0x402202bc2fc69729              # double 9.0053420000000006
	.quad	0x4011a9d94d0dcfcc              # double 4.4158679999999997
	.quad	0x401f0e32e3821af8              # double 7.7638660000000001
	.quad	0x3fa5c0fcb4f1e4b4              # double 0.042487999999999998
	.quad	0x3ff28214ad362e90              # double 1.156758
	.quad	0x3fd43e681a9b8cb9              # double 0.31630900000000001
	.quad	0x4020c5288ce703b0              # double 8.3850750000000005
	.quad	0x401f0f4a1272c94b              # double 7.7649309999999998
	.quad	0x401a39ed3953dea4              # double 6.5565689999999996
	.quad	0x400fca01abd1aa82              # double 3.9736359999999999
	.quad	0x40108ac5c13fd0d0              # double 4.1355199999999996
	.quad	0x401e1ec5b078d930              # double 7.5300510000000003
	.quad	0x401f9cf67b1c0011              # double 7.9032840000000001
	.quad	0x4022689c3ce2089e              # double 9.2043169999999996
	.quad	0x4020108094e5d5b2              # double 8.0322309999999995
	.quad	0x401da2856605ee57              # double 7.4087120000000004
	.quad	0x40218761672324c8              # double 8.7644149999999996
	.quad	0x3feeec4827b6fe2e              # double 0.96634299999999995
	.quad	0x40115eadd590c0ad              # double 4.34246
	.quad	0x3fe17c2a8869c66d              # double 0.54640699999999998
	.quad	0x40239b9d1b2e59b0              # double 9.8039330000000007
	.quad	0x401e546801711948              # double 7.5824280000000001
	.quad	0x401f4669057d1783              # double 7.8187600000000001
	.quad	0x4013493250b5243a              # double 4.8214810000000003
	.quad	0x400c293a71151612              # double 3.5201310000000001
	.quad	0x4022971c75818c5d              # double 9.2951390000000007
	.quad	0x4006e3864cb5bb38              # double 2.8610959999999999
	.quad	0x3feb3c558644523f              # double 0.85111499999999995
	.quad	0x401b6c182ecaeea6              # double 6.8555609999999998
	.quad	0x3ffa95a294141e9b              # double 1.661532
	.quad	0x3fe9e19b90ea9e6f              # double 0.80879000000000001
	.quad	0x401075193708aac9              # double 4.1143539999999996
	.quad	0x400e0c03ff69014b              # double 3.7558669999999998
	.quad	0x3fe57b7c7820a30e              # double 0.67132400000000003
	.quad	0x4018f386d2ed783e              # double 6.237819
	.quad	0x4003652157689ca2              # double 2.4243800000000002
	.quad	0x4021586ee30caa32              # double 8.6727209999999992
	.quad	0x4022115f45e0b4e1              # double 9.0339299999999998
	.quad	0x40142c347e8ccdd9              # double 5.0431689999999998
	.quad	0x401a29192641b329              # double 6.5401350000000003
	.quad	0x3ff6f3bd9cae2110              # double 1.434507
	.quad	0x40138f81626b2f23              # double 4.890142
	.quad	0x400a238da3c21188              # double 3.26736
	.quad	0x3fe8b63b256ffc11              # double 0.77224499999999996
	.quad	0x4012e38c111ada77              # double 4.7222140000000001
	.quad	0x3ffe0bd017dae819              # double 1.8778840000000001
	.quad	0x4006a92ff4ba51a0              # double 2.832611
	.quad	0x401dee10cf5b1c86              # double 7.4824859999999997
	.quad	0x3fd0584f4c6e6d9c              # double 0.25539000000000001
	.quad	0x3f801c0ca600b029              # double 0.0078659999999999997
	.quad	0x401d864ba94bbe44              # double 7.3811479999999996
	.quad	0x3feb122b7baecd08              # double 0.84596800000000005
	.quad	0x401c6439de481f54              # double 7.0978770000000004
	.quad	0x400fee79aae6c8f7              # double 3.9914429999999999
	.quad	0x3fd67ce95faa8a83              # double 0.35137400000000002
	.quad	0x401f1cb74ddf86e4              # double 7.7780430000000003
	.quad	0x400a6c1b10fd7e46              # double 3.3027860000000002
	.quad	0x40237c3bd5992429              # double 9.7426440000000003
	.quad	0x400930e991ff7165              # double 3.1488830000000001
	.quad	0x3fec9c36976bc1f0              # double 0.894069
	.quad	0x4004130ad46f587d              # double 2.5092979999999998
	.quad	0x4023e777af64063a              # double 9.9520850000000003
	.quad	0x4010326f1dc50ce5              # double 4.0492520000000001
	.quad	0x4013aaf294dd7236              # double 4.9169409999999996
	.quad	0x4020470435efa616              # double 8.1387040000000006
	.quad	0x3ff66429e0a41a26              # double 1.399454
	.quad	0x400c522d948dc11e              # double 3.5401259999999999
	.quad	0x401e97a919695d92              # double 7.6481060000000003
	.quad	0x401446601bc98a22              # double 5.0687259999999998
	.quad	0x400ee91d9b1b79d9              # double 3.863826
	.quad	0x3ff17d694ccab3ee              # double 1.093118
	.quad	0x4010b237cdcca70d              # double 4.1740409999999999
	.quad	0x3fee3dc054ef459e              # double 0.94503800000000004
	.quad	0x401c7d86ec17ebaf              # double 7.1225849999999999
	.quad	0x4016d5097c80841f              # double 5.7080440000000001
	.quad	0x4002c20817fc7608              # double 2.3447420000000001
	.quad	0x4022b940357a3550              # double 9.3618179999999995
	.quad	0x4012a3d35eb7457c              # double 4.659986
	.quad	0x40205f861a60d456              # double 8.1865699999999997
	.quad	0x400da82e87d2c7b9              # double 3.7071200000000002
	.quad	0x3ff5cb8cfbfc6541              # double 1.362195
	.quad	0x3ff36390c9107faa              # double 1.211808
	.quad	0x4010bd72ffd1dcd7              # double 4.185009
	.quad	0x4022fe887a8d64d8              # double 9.4971350000000001
	.quad	0x400433dfb0d51f82              # double 2.5253290000000002
	.quad	0x4019588b11409a24              # double 6.336468
	.quad	0x40203815c209246c              # double 8.1095410000000001
	.quad	0x40161863beec397a              # double 5.5238180000000003
	.quad	0x40134bee3d5fdcdf              # double 4.8241509999999996
	.quad	0x40145a426bb55ac0              # double 5.0881439999999998
	.quad	0x40221d8c8eef1bac              # double 9.0577129999999996
	.quad	0x400bac26138fffbd              # double 3.459057
	.quad	0x4001b7f84449dbec              # double 2.2148289999999999
	.quad	0x40209bba12b5e52a              # double 8.3041540000000005
	.quad	0x4021ee14df8b1572              # double 8.9650029999999994
	.quad	0x4013b435696e58a3              # double 4.9259849999999998
	.quad	0x401099dadfb506dd              # double 4.1502489999999996
	.quad	0x401307d028a1dfb9              # double 4.7576299999999998
	.quad	0x401d3230fcf80dc3              # double 7.2990149999999998
	.quad	0x3ffd0f75536933a0              # double 1.8162739999999999
	.quad	0x401ab5425f202108              # double 6.6770110000000003
	.quad	0x40196260f5e41d4b              # double 6.3460729999999996
	.quad	0x3ff13dd76683c298              # double 1.0775980000000001
	.quad	0x4017ea2e7f6f4be8              # double 5.9786929999999998
	.quad	0x400677a24894c448              # double 2.8084150000000001
	.quad	0x4008c8fb86f47b67              # double 3.0981359999999998
	.quad	0x400258dbcec84f90              # double 2.2933880000000002
	.quad	0x401b10fc71d60631              # double 6.7665879999999996
	.quad	0x401048aac96cc5fc              # double 4.070964
	.quad	0x4005a0b029281776              # double 2.7034609999999999
	.quad	0x401d48ec0f883340              # double 7.3212130000000002
	.quad	0x40102d4e4c942d49              # double 4.044244
	.quad	0x40199d5065732160              # double 6.4036270000000002
	.quad	0x3fef917f84449dbf              # double 0.98651100000000002
	.quad	0x4023339ef0f16f44              # double 9.6008220000000008
	.quad	0x40143d084e831ad2              # double 5.0596019999999999
	.quad	0x4017891bc5586445              # double 5.8838949999999999
	.quad	0x3fec2f37fbefd007              # double 0.88076399999999999
	.quad	0x401d3d76ee73e682              # double 7.3100240000000003
	.quad	0x402034f7ec3547e0              # double 8.1034539999999993
	.quad	0x401460dbf0563ed1              # double 5.094589
	.quad	0x401ba923a29c779a              # double 6.9151749999999996
	.quad	0x401743e7d135115a              # double 5.8163140000000002
	.quad	0x400a405b39e279dd              # double 3.2814239999999999
	.quad	0x4001ba8d64d7f0ed              # double 2.2160899999999999
	.quad	0x4022a7fd1dcd7061              # double 9.3281030000000005
	.quad	0x3ff6edf3f961804e              # double 1.4330940000000001
	.quad	0x4003e0008637bd06              # double 2.4843760000000001
	.quad	0x3fe9d6dc1a47a9e3              # double 0.80747800000000003
	.quad	0x400c1f36262cba73              # double 3.5152399999999999
	.quad	0x401ae1eeed8904f7              # double 6.7206380000000001
	.quad	0x40113919695d91ac              # double 4.3057610000000004
	.quad	0x401e36bdb1a6d699              # double 7.553458
	.quad	0x401939dc725c3dee              # double 6.3065049999999996
	.quad	0x3fe48e736049ecb3              # double 0.64238899999999999
	.quad	0x4019cd7e45803cd1              # double 6.4506769999999998
	.quad	0x401e3aaf35e310dc              # double 7.5573090000000001
	.quad	0x401cef9a8cdea034              # double 7.2339880000000001
	.quad	0x400842c9081c2e34              # double 3.03261
	.quad	0x3fe0d1c193b3a68b              # double 0.52560499999999999
	.quad	0x4014a9ecf6380022              # double 5.1659430000000004
	.quad	0x3ffdf23358f2e05d              # double 1.871631
	.quad	0x4023ba22d5171e2a              # double 9.8635470000000005
	.quad	0x400de311e85fd04a              # double 3.7358739999999999
	.quad	0x4012b39cd8127b2d              # double 4.6754030000000002
	.quad	0x40202e7924af0bf2              # double 8.0907680000000006
	.quad	0x40010f73c0c1fc8f              # double 2.1325449999999999
	.quad	0x4022005b18548a9c              # double 9.0006950000000003
	.quad	0x4020557e02645e4e              # double 8.1669769999999993
	.quad	0x4001a2424a276b7f              # double 2.2042280000000001
	.quad	0x3ff4d59d55e6bc62              # double 1.302152
	.quad	0x400d416b54e2b064              # double 3.6569430000000001
	.quad	0x400a520e1f7d73c9              # double 3.2900659999999999
	.quad	0x4004f87379746024              # double 2.6213139999999999
	.quad	0x4001c1dda059a73b              # double 2.2196609999999999
	.quad	0x3ff906d3f9e7b80b              # double 1.5641670000000001
	.quad	0x40142b3f20a73f75              # double 5.0422330000000004
	.quad	0x3ffae76640a6b93d              # double 1.681494
	.quad	0x401ec19fc2a8869c              # double 7.6890859999999996
	.quad	0x401348c692f6e829              # double 4.8210699999999997
	.quad	0x4002bd5fdcdf6988              # double 2.3424680000000002
	.quad	0x3fccb1ab0856e697              # double 0.22417200000000001
	.quad	0x4014cc6e2a80064b              # double 5.1996390000000003
	.quad	0x400ce2efd438d1d9              # double 3.6108090000000002
	.quad	0x4015a837b4a2339c              # double 5.4142749999999999
	.quad	0x4023091c4b90214b              # double 9.5177940000000003
	.quad	0x4015ca76534373f3              # double 5.4477169999999999
	.quad	0x3fdb33c60029f16b              # double 0.425035
	.quad	0x4010c780baa582dc              # double 4.1948270000000001
	.quad	0x40167aeea63b688c              # double 5.6200510000000001
	.quad	0x4015e92253111f0c              # double 5.4776699999999998
	.quad	0x402099b4784230fd              # double 8.3002050000000001
	.quad	0x400fb60f1b25f634              # double 3.9638960000000001
	.quad	0x3f931a08bfc2224f              # double 0.018654
	.quad	0x3feda13c254a3c64              # double 0.92593199999999997
	.quad	0x4012e8cda6e75ff6              # double 4.727347
	.quad	0x3ffe476188b1140a              # double 1.8924270000000001
	.quad	0x400e299f1ae2da55              # double 3.7703229999999999
	.quad	0x400d249d388a8b09              # double 3.6428780000000001
	.quad	0x3fde6ff3ade225fa              # double 0.47558299999999998
	.quad	0x401a47179bfdf7e8              # double 6.569426
	.quad	0x401845b5b70691ea              # double 6.0680759999999996
	.quad	0x3fdf1be6e6538690              # double 0.48607800000000001
	.quad	0x3ffcf6ea4228997c              # double 1.8102819999999999
	.quad	0x4021dc0fecdd0d8d              # double 8.9298090000000006
	.quad	0x401280895d0b73d2              # double 4.6255240000000004
	.quad	0x400e2da09cc319c6              # double 3.7722790000000002
	.quad	0x3ff74d49949e8816              # double 1.456369
	.quad	0x3ff9671ef30a4e38              # double 1.5876760000000001
	.quad	0x401625fbb517a461              # double 5.5370929999999996
	.quad	0x4009276427c7c526              # double 3.144234
	.quad	0x40107bd556084a51              # double 4.1209309999999997
	.quad	0x4010ffc6da448494              # double 4.2497819999999997
	.quad	0x4023c8611fd5885d              # double 9.8913659999999996
	.quad	0x400bb357e670e2c1              # double 3.4625699999999999
	.quad	0x401d7a9b8cb8e087              # double 7.3697340000000002
	.quad	0x400a676d117b5287              # double 3.3005010000000001
	.quad	0x40111af35e310dbf              # double 4.276319
	.quad	0x3fe182ea960b6fa0              # double 0.54723100000000002
	.quad	0x4021e7eaa2a0a958              # double 8.9529619999999994
	.quad	0x402241d96e9bbf0e              # double 9.1286120000000004
	.quad	0x3ffee8e0c9d9d346              # double 1.9318550000000001
	.quad	0x40041be76c8b4396              # double 2.5136250000000002
	.quad	0x4020cb9192641b33              # double 8.3975950000000008
	.quad	0x40028b7564302b41              # double 2.318095
	.quad	0x40049fe3b03e20cd              # double 2.578071
	.quad	0x401bbb9f559b3d08              # double 6.9332250000000002
	.quad	0x4023d189df1172ef              # double 9.9092549999999999
	.quad	0x4022c833a4723ab0              # double 9.391019
	.quad	0x3fc57d2849cb252d              # double 0.167882
	.quad	0x40193d8c6d612c6b              # double 6.3101060000000002
	.quad	0x4022131af3a14cec              # double 9.0373149999999995
	.quad	0x400df4289118c198              # double 3.744218
	.quad	0x401ed88094e5d5b2              # double 7.7114279999999997
	.quad	0x4015e2a843808851              # double 5.4713450000000003
	.quad	0x40130b03e20ccff2              # double 4.7607569999999999
	.quad	0x4020a13ec460ed81              # double 8.3149320000000007
	.quad	0x400fd11622813448              # double 3.977093
	.quad	0x401c1f9ca5bd944b              # double 7.0308710000000003
	.quad	0x4014e2b8c75c4a84              # double 5.2214080000000003
	.quad	0x40218bfdd65a1449              # double 8.7734210000000008
	.quad	0x400224b87bdcf030              # double 2.2679299999999998
	.quad	0x3ff5896787ce95fb              # double 1.3460460000000001
	.quad	0x401dd4e6e221c8a8              # double 7.4579120000000003
	.quad	0x4006bfca85caafbc              # double 2.843648
	.quad	0x3fd8d90e23af31b1              # double 0.38824799999999998
	.quad	0x40165f601797cc3a              # double 5.59314
	.quad	0x3fd6bb01c92ddbdb              # double 0.35516399999999998
	.quad	0x3fcf50fc71d60631              # double 0.24465899999999999
	.quad	0x401f824a276b7ed4              # double 7.8772359999999999
	.quad	0x4012aa95c853c148              # double 4.6665869999999998
	.quad	0x4014fe6b8305d95e              # double 5.2484570000000001
	.quad	0x401aeeb18116ebd5              # double 6.7330990000000002
	.quad	0x3fecee88df37329c              # double 0.90411799999999997
	.quad	0x401f4d6cf850df16              # double 7.8256110000000003
	.quad	0x4023f4e592967019              # double 9.9783139999999992
	.quad	0x3ffab58afc47e49b              # double 1.669322
	.quad	0x400642edbb59ddc2              # double 2.78268
	.quad	0x400a364cf8d716d3              # double 3.2765140000000001
	.quad	0x401111719f7f8ca8              # double 4.2670349999999999
	.quad	0x4022692231832fcb              # double 9.2053390000000004
	.quad	0x4014c1a21ea35936              # double 5.189095
	.quad	0x400068db0574b407              # double 2.051199
	.quad	0x40172a86940357a3              # double 5.7915289999999997
	.quad	0x4018fc2a8869c66d              # double 6.2462559999999998
	.quad	0x4018d86f049a9974              # double 6.2113610000000001
	.quad	0x401754577d955715              # double 5.8323650000000002
	.quad	0x401febf444e0daa1              # double 7.9804240000000001
	.quad	0x401234ebdd334c5e              # double 4.5516810000000003
	.quad	0x400e368ad6883772              # double 3.7766320000000002
	.quad	0x3fe054de7ea5f84d              # double 0.51036000000000004
	.quad	0x400c484f09528f19              # double 3.535307
	.quad	0x3fcc4d1a65061416              # double 0.22110299999999999
	.quad	0x3ffc2d5cfaacd9e8              # double 1.7610749999999999
	.quad	0x402063547e06961c              # double 8.1940039999999996
	.quad	0x3ffd7a2163fdd65a              # double 1.842317
	.quad	0x40006679cc74b839              # double 2.0500370000000001
	.quad	0x40152b0d9513f8db              # double 5.2920439999999997
	.quad	0x400676fa82e87d2c              # double 2.8080949999999998
	.quad	0x401fcbe48a58b3f6              # double 7.9491139999999998
	.quad	0x4017db16c1e364bf              # double 5.9639540000000002
	.quad	0x401ffea897635e74              # double 7.9986899999999999
	.quad	0x401208b32ce89657              # double 4.5084960000000001
	.quad	0x401ee6fc58ab92c0              # double 7.7255719999999997
	.quad	0x400df7c4e2f37fbf              # double 3.745981
	.quad	0x3fb3ba98eda22f6a              # double 0.077065999999999995
	.quad	0x401e8c0f45176146              # double 7.6367770000000004
	.quad	0x401ccf8c64fdb09a              # double 7.2026839999999996
	.quad	0x401b6daec4a4095f              # double 6.8571119999999999
	.quad	0x401afd801b435265              # double 6.7475589999999999
	.quad	0x40004dac258d5843              # double 2.0379260000000001
	.quad	0x3ffe7267c6b8b695              # double 1.9029309999999999
	.quad	0x4019759146e4c0df              # double 6.3648119999999997
	.quad	0x401c779e16d6dc1a              # double 7.1168139999999998
	.quad	0x3fffd7abb8800eae              # double 1.990154
	.quad	0x402053cc2938de6e              # double 8.1636670000000002
	.quad	0x401f3ea2d2fe3f36              # double 7.8111680000000003
	.quad	0x4021ba8f3a9b0681              # double 8.8643739999999998
	.quad	0x4020d21c25d07421              # double 8.4103709999999996
	.quad	0x40048a8112ba16e8              # double 2.5676290000000002
	.quad	0x40101434e3369b9d              # double 4.0197329999999996
	.quad	0x40222a0e6299524c              # double 9.082141
	.quad	0x4000670a808c825a              # double 2.0503130000000001
	.quad	0x3fdcfe4bcad9ad86              # double 0.45302100000000001
	.quad	0x4000e2856605ee57              # double 2.1106060000000002
	.quad	0x40224c868b9fdbd3              # double 9.149464
	.quad	0x401c2fb9389b5200              # double 7.0466049999999996
	.quad	0x401700828c36da88              # double 5.7504980000000003
	.quad	0x3ffb13a71151611c              # double 1.6922980000000001
	.quad	0x401495bf26f1dc51              # double 5.1462370000000002
	.quad	0x40150be9424e5929              # double 5.2616319999999996
	.quad	0x4020579d6f112fd3              # double 8.1711229999999997
	.quad	0x40068d35a858793e              # double 2.8189500000000001
	.quad	0x4021c2a51e321a2e              # double 8.8801659999999991
	.quad	0x401bf148344c37e7              # double 6.985627
	.quad	0x401688c8abd5dc40              # double 5.633578
	.quad	0x4020f97f4128bf3c              # double 8.4872990000000001
	.quad	0x3fb9043e5321e604              # double 0.097721000000000002
	.quad	0x401ad60bb2bba98f              # double 6.7090290000000001
	.quad	0x4023f63c31df761d              # double 9.9809280000000004
	.quad	0x3ff37c9eecbfb15b              # double 1.2179249999999999
	.quad	0x401a3e8858ff7597              # double 6.5610670000000004
	.quad	0x4016f4afd5454153              # double 5.7389520000000003
	.quad	0x401860df15a4acf3              # double 6.0946009999999999
	.quad	0x40099a027525460b              # double 3.2002000000000002
	.quad	0x401611a93293d103              # double 5.5172470000000002
	.quad	0x40126d855970b49e              # double 4.606954
	.quad	0x3fd171fbc5de9c02              # double 0.27258199999999999
	.quad	0x3ff3a8af81626b2f              # double 1.228683
	.quad	0x4021f059ea57214f              # double 8.969436
	.quad	0x3fe14bf0995aaf79              # double 0.54052
	.quad	0x400601bb05faebc4              # double 2.750845
	.quad	0x3fedb213e3e29308              # double 0.92798800000000004
	.quad	0x401cc4aba3875925              # double 7.1920609999999998
	.quad	0x4000be40c8472c0e              # double 2.0928969999999998
	.quad	0x4023c0abd5dc4007              # double 9.8763109999999993
	.quad	0x402268342aa9f7b6              # double 9.2035230000000006
	.quad	0x402199f36262cba7              # double 8.8006849999999996
	.quad	0x4021cfc0d2c386d3              # double 8.9057680000000001
	.quad	0x3ff12b5807fed203              # double 1.0730820000000001
	.quad	0x401be7dbf487fcb9              # double 6.9764249999999999
	.quad	0x3ff5f12a0ec74320              # double 1.371378
	.quad	0x401f7f5a964e8b7e              # double 7.8743689999999997
	.quad	0x400ee384ba0e8427              # double 3.8610929999999999
	.quad	0x3fd38f25a250f840              # double 0.30561199999999999
	.quad	0x40139bd61f5be5da              # double 4.9021840000000001
	.quad	0x401116b484d76ab6              # double 4.2721730000000004
	.quad	0x4016c623d0bfa094              # double 5.6934959999999997
	.quad	0x40011d04a2fcefaa              # double 2.1391689999999999
	.quad	0x401b627674d16335              # double 6.8461550000000004
	.quad	0x3ffce3a6ce358299              # double 1.805579
	.quad	0x400dc10a569b1748              # double 3.719258
	.quad	0x4014efaa4766c6de              # double 5.2340479999999996
	.quad	0x4022b70563ed0f62              # double 9.3574629999999992
	.quad	0x4022a779207d4e09              # double 9.3270959999999992
	.quad	0x401bf9b413986339              # double 6.9938510000000003
	.quad	0x3fe46c99f1ae2da5              # double 0.63825699999999996
	.quad	0x4012acbccf28c79f              # double 4.6686889999999996
	.quad	0x401cb3358f2e05cd              # double 7.1750090000000002
	.quad	0x4004417763e4abe7              # double 2.5319660000000002
	.quad	0x3fe2d5b24e9c4546              # double 0.58858600000000005
	.quad	0x401f6a99b6f5caf3              # double 7.8541020000000001
	.quad	0x3fde90e23af31b15              # double 0.47759299999999999
	.quad	0x40013359791819d2              # double 2.1500729999999999
	.quad	0x401938da7f3cf701              # double 6.3055209999999997
	.quad	0x401721e85fd04a30              # double 5.7831130000000002
	.quad	0x4006b4f7a919695e              # double 2.8383630000000002
	.quad	0x4016c0b28522ea10              # double 5.6881810000000002
	.quad	0x4019d260b2c83ec9              # double 6.4554470000000004
	.quad	0x40220889a0275254              # double 9.0166749999999993
	.quad	0x4018c541d8e86402              # double 6.192634
	.quad	0x3ffa4fbca1059ea5              # double 1.6444669999999999
	.quad	0x401702a172abef07              # double 5.7525690000000003
	.quad	0x401303b57c4e2f38              # double 4.753622
	.quad	0x401dcc1fc8f32379              # double 7.4493400000000003
	.quad	0x40218d1eb851eb85              # double 8.7756249999999998
	.quad	0x4022ee92d55a3a08              # double 9.4659639999999996
	.quad	0x402098405b39e27a              # double 8.2973660000000002
	.quad	0x40072a5f84cad57c              # double 2.8956900000000001
	.quad	0x40113443914f483d              # double 4.3010390000000003
	.quad	0x40060d477bbf93ff              # double 2.7564839999999999
	.quad	0x4010cf177a7008a7              # double 4.2022380000000004
	.quad	0x40054657b84db9c7              # double 2.6593469999999999
	.quad	0x401759b5a63f9a4a              # double 5.8376070000000002
	.quad	0x3ff16a4db163baba              # double 1.0884529999999999
	.quad	0x40235184a0e410b6              # double 9.6592149999999997
	.quad	0x4010ec710cb295ea              # double 4.2309000000000001
	.quad	0x3fff6f2c7325918a              # double 1.964642
	.quad	0x3ff0af21f6cacd18              # double 1.0427569999999999
	.quad	0x401bfa7e73a365cb              # double 6.9946229999999998
	.quad	0x3fd330f062d40aaf              # double 0.29986200000000002
	.quad	0x4019906961c36977              # double 6.3910270000000002
	.quad	0x4020ad42a23bff8b              # double 8.3383990000000008
	.quad	0x40212540aaeafab5              # double 8.5727589999999996
	.quad	0x40171c68ec52a412              # double 5.7777440000000002
	.quad	0x4013e02d59d55e6c              # double 4.9689230000000002
	.quad	0x4006644178705426              # double 2.798953
	.quad	0x3ffa93a92a305532              # double 1.6610499999999999
	.quad	0x401e9cb8e086bdf5              # double 7.6530490000000002
	.quad	0x401b515b573eab36              # double 6.8294499999999996
	.quad	0x4014cdbe3c105187              # double 5.2009210000000001
	.quad	0x4001dc779a6b50b1              # double 2.23265
	.quad	0x3ff6f3a9b0681238              # double 1.434488
	.quad	0x401ffdcf0307f23d              # double 7.9978600000000001
	.quad	0x400e134acaff6d33              # double 3.75942
	.quad	0x3feab31a08bfc222              # double 0.83436299999999997
	.quad	0x401ab0f16f4384ba              # double 6.6727959999999999
	.quad	0x401ed85ad538ac19              # double 7.711284
	.quad	0x4019a4873365881a              # double 6.4106719999999999
	.quad	0x3fe6945308bb9064              # double 0.70560599999999996
	.quad	0x401f7f9ca5bd944b              # double 7.8746210000000003
	.quad	0x401424295a6c5d20              # double 5.0353139999999996
	.quad	0x401e4ee02a77a2cf              # double 7.5770270000000001
	.quad	0x400d1c970f7b9e06              # double 3.63896
	.quad	0x3fe85eaab042528b              # double 0.76155600000000001
	.quad	0x4020b471f79420b4              # double 8.3524320000000003
	.quad	0x4014c14f8b588e37              # double 5.1887800000000004
	.quad	0x4021b629d8409e56              # double 8.8557880000000004
	.quad	0x3ff8a2b6ae7d566d              # double 1.539725
	.quad	0x400c4702a3486f05              # double 3.5346730000000002
	.quad	0x400fbd67ba237cdd              # double 3.9674830000000001
	.quad	0x40195d4f5903a754              # double 6.3411229999999996
	.quad	0x4023a5918a009f62              # double 9.8233759999999997
	.quad	0x4022a343b70ef566              # double 9.3188759999999995
	.quad	0x40039ca643cc07ab              # double 2.451489
	.quad	0x40225bfad2999568              # double 9.1796480000000002
	.quad	0x3ff4f81b64e05469              # double 1.310573
	.quad	0x4017c7a743a647fe              # double 5.9449740000000002
	.quad	0x4023a473abc94706              # double 9.8211949999999995
	.quad	0x40060647778dd617              # double 2.753066
	.quad	0x3fd79f9ce8d972cd              # double 0.36911699999999997
	.quad	0x40234d810624dd2f              # double 9.6513749999999998
	.quad	0x400beeb2d0a24463              # double 3.491552
	.quad	0x400fadf1e0828c37              # double 3.9599340000000001
	.quad	0x40010cb07d0aed9a              # double 2.1311960000000001
	.quad	0x4021a3a2163fdd66              # double 8.8195960000000007
	.quad	0x3ff85d7ba6698bb5              # double 1.522823
	.quad	0x402037fae3608d09              # double 8.1093360000000008
	.quad	0x40210286940357a3              # double 8.5049329999999994
	.quad	0x4017587bdcf0307f              # double 5.8364099999999999
	.quad	0x4001cec0724b76f7              # double 2.2259530000000001
	.quad	0x400bc4f2ae07e5a8              # double 3.4711660000000002
	.quad	0x4021df41f212d773              # double 8.9360499999999998
	.quad	0x40008bd66277c45d              # double 2.0682800000000001
	.quad	0x3ffe3790fb65668c              # double 1.888566
	.quad	0x4004a0b0af5fd47c              # double 2.578462
	.quad	0x40031bfa4c61d862              # double 2.3886609999999999
	.quad	0x400cab220791c4b9              # double 3.583561
	.quad	0x3fdefc0d2c386d2f              # double 0.48413400000000001
	.quad	0x40067b6672fba01f              # double 2.810254
	.quad	0x4022c8b652370479              # double 9.3920159999999999
	.quad	0x4023bfee6fb4c3c2              # double 9.8748660000000008
	.quad	0x4019ba6fc58ab92c              # double 6.432067
	.quad	0x3ff9ac8711d798d9              # double 1.6046210000000001
	.quad	0x4023c45974e65bea              # double 9.8834949999999999
	.quad	0x4016f8e4b87bdcf0              # double 5.7430599999999998
	.quad	0x4023c85e5f30e7ff              # double 9.8913449999999993
	.quad	0x40203110e453d20f              # double 8.0958319999999997
	.quad	0x401bf290abb44e51              # double 6.9868800000000002
	.quad	0x400a4f4517614595              # double 3.2887059999999999
	.quad	0x3ff2f5525cc42635              # double 1.184893
	.quad	0x4022bdd1a21ea359              # double 9.3707399999999996
	.quad	0x402348e432441feb              # double 9.6423660000000008
	.quad	0x402024dd50a88f00              # double 8.0720010000000002
	.quad	0x4020f7d912556d1a              # double 8.4840780000000002
	.quad	0x3ffaa3033a4723ab              # double 1.664798
	.quad	0x402176d97b30f8c6              # double 8.7321279999999994
	.quad	0x401b1ec2480e8c8b              # double 6.7800380000000002
	.quad	0x3feec855da272863              # double 0.961955
	.quad	0x401559906cca2db6              # double 5.3374649999999999
	.quad	0x401cb27d45a5fc7e              # double 7.1743059999999996
	.quad	0x401ebedcc20d562a              # double 7.6863890000000001
	.quad	0x401196f049a9973e              # double 4.3974010000000003
	.quad	0x3ff89d76683c297c              # double 1.538443
	.quad	0x40093c5b4aa9717e              # double 3.154471
	.quad	0x401caf81e8a2ec29              # double 7.1713940000000003
	.quad	0x40232c2b94d94079              # double 9.5862700000000007
	.quad	0x4006e6e221c8a7a4              # double 2.8627359999999999
	.quad	0x3ffc069835158b82              # double 1.7516099999999999
	.quad	0x4010fefe0ce0b913              # double 4.2490160000000001
	.quad	0x3ffdcebaade657b8              # double 1.8629709999999999
	.quad	0x4006c41aac53b081              # double 2.8457539999999999
	.quad	0x3ff618c9fb6134ce              # double 1.3810519999999999
	.quad	0x3ff4625204af9229              # double 1.2740039999999999
	.quad	0x400dcc6ef3d3a1d3              # double 3.7248209999999999
	.quad	0x3ff414c122749f0e              # double 1.2550669999999999
	.quad	0x4020fe9ee45c358b              # double 8.497306
	.quad	0x400ab16d2aa5c5f8              # double 3.3366340000000001
	.quad	0x4018f20c8cd63cb8              # double 6.2363759999999999
	.quad	0x401ef298cc144029              # double 7.736911
	.quad	0x3fea9ee88df3732a              # double 0.83189800000000003
	.quad	0x401ab27c7c5260f6              # double 6.6743030000000001
	.quad	0x3ffab6177ea1c68f              # double 1.6694560000000001
	.quad	0x402231554fbdad75              # double 9.0963539999999998
	.quad	0x4020f627e0ef9980              # double 8.4807729999999992
	.quad	0x3fe082cd39da1661              # double 0.51596699999999995
	.quad	0x3ff6b075b3e1437c              # double 1.4180809999999999
	.quad	0x401055c0fcb4f1e5              # double 4.0837440000000003
	.quad	0x401ba5b39e279dd4              # double 6.9118180000000002
	.quad	0x400717c1376d5497              # double 2.8865989999999999
	.quad	0x40205ae7b3d8e001              # double 8.1775490000000008
	.quad	0x400de093532e7b3e              # double 3.7346560000000002
	.quad	0x40221f2778140dd4              # double 9.060848
	.quad	0x4022a8ab71327243              # double 9.3294329999999999
	.quad	0x401628bd66277c46              # double 5.5397850000000002
	.quad	0x40197f077ccc0379              # double 6.3740519999999998
	.quad	0x40190fee6fb4c3c2              # double 6.2655580000000004
	.quad	0x40004b3b320535ca              # double 2.036734
	.quad	0x4007759791819d24              # double 2.9324180000000002
	.quad	0x40224d3543aeab7a              # double 9.1507970000000007
	.quad	0x3ff6e2003ab862b2              # double 1.4301759999999999
	.quad	0x40012644523f67f5              # double 2.1436850000000001
	.quad	0x4023d1526d8b1dd6              # double 9.9088320000000003
	.quad	0x401afe8dda48b652              # double 6.7485879999999998
	.quad	0x401d97bedb7281fe              # double 7.3981890000000003
	.quad	0x3ff9a27179bfdf7f              # double 1.6021590000000001
	.quad	0x401615d3996fa82f              # double 5.5213150000000004
	.quad	0x4011d90abb44e50c              # double 4.4619549999999997
	.quad	0x400576a7264a16a5              # double 2.6829360000000002
	.quad	0x4000dbaf533f4235              # double 2.1072679999999999
	.quad	0x401ce8e1932d6ece              # double 7.2274229999999999
	.quad	0x3ff926490a350d28              # double 1.571847
	.quad	0x3fff8142f61ed5ae              # double 1.969058
	.quad	0x40131d084e831ad2              # double 4.7783519999999999
	.quad	0x400b88405b39e27a              # double 3.4415290000000001
	.quad	0x40233b4b0e1b4bb6              # double 9.6158070000000002
	.quad	0x4000c6634117f844              # double 2.0968689999999999
	.quad	0x3fe82a0a958537e3              # double 0.75513200000000003
	.quad	0x4020b36e71cda2b6              # double 8.3504520000000007
	.quad	0x4020dfd694ccab3f              # double 8.4371840000000002
	.quad	0x40101d9d7774aba4              # double 4.0289210000000004
	.quad	0x40173901083dbc23              # double 5.8056679999999998
	.quad	0x4022a0576cce5f74              # double 9.3131669999999999
	.quad	0x4010f371da37ef5b              # double 4.2377390000000004
	.quad	0x400df521144cbe1f              # double 3.7446920000000001
	.quad	0x401bc5f676ea4229              # double 6.9433230000000004
	.quad	0x4000bb0813cab820              # double 2.0913240000000002
	.quad	0x401fec881e4712e4              # double 7.980988
	.quad	0x40044fcbd556084a              # double 2.5389629999999999
	.quad	0x401b417fc7607c42              # double 6.8139640000000004
	.quad	0x401cc86ad2dcb146              # double 7.1957199999999997
	.quad	0x401442a0663c74fb              # double 5.0650649999999997
	.quad	0x3fe542e126202539              # double 0.66441399999999995
	.quad	0x3ff805c5718eb895              # double 1.501409
	.quad	0x401775e74299d884              # double 5.8651400000000002
	.quad	0x401e1369b9d7fd82              # double 7.5189579999999996
	.quad	0x3fc94dad31fcd24e              # double 0.197683
	.quad	0x4021b51f81a5870e              # double 8.8537560000000006
	.quad	0x4012a295208e1501              # double 4.6587719999999999
	.quad	0x4016fd50225742dd              # double 5.747376
	.quad	0x401b1d1e96c3fc44              # double 6.7784370000000003
	.quad	0x401955b39e279dd4              # double 6.3336930000000002
	.quad	0x401a7f8a0902de01              # double 6.6245500000000002
	.quad	0x40028b649d388a8b              # double 2.318063
	.quad	0x4014ef96e158750c              # double 5.2339739999999999
	.quad	0x4001bb634dad31fd              # double 2.2164980000000001
	.quad	0x4003d5b1422ccb3a              # double 2.4793419999999999
	.quad	0x400f65d206c8711d              # double 3.9247169999999998
	.quad	0x4002a69595feda66              # double 2.33134
	.quad	0x4000013986338b48              # double 2.0005980000000001
	.quad	0x3ffeaf86a098915c              # double 1.917853
	.quad	0x40211a46173b85e8              # double 8.5513159999999999
	.quad	0x40216d8c2a454de8              # double 8.7139600000000002
	.quad	0x4021bc8605681ecd              # double 8.8682099999999995
	.quad	0x4016b75b81301648              # double 5.6790599999999998
	.quad	0x401348576cce5f74              # double 4.820646
	.quad	0x4000017e34b94531              # double 2.0007290000000002
	.quad	0x40232827b6fe2e6f              # double 9.5784280000000006
	.quad	0x3feb471715c63ae2              # double 0.85242799999999996
	.quad	0x3ff71af8df7a4e7b              # double 1.4440850000000001
	.quad	0x401adcd573647bab              # double 6.7156580000000003
	.quad	0x40230599029ae4f3              # double 9.5109329999999996
	.quad	0x40169e2e6ea85447              # double 5.6544739999999996
	.quad	0x40201d7f51efb6dd              # double 8.0576120000000007
	.quad	0x402106c0b567557a              # double 8.5131890000000006
	.quad	0x400cbb0574b40703              # double 3.5913189999999999
	.quad	0x4010fb93037d6302              # double 4.2456779999999998
	.quad	0x401cce19fc2a886a              # double 7.2012710000000002
	.quad	0x4012b672fba01eef              # double 4.6781730000000001
	.quad	0x4021bbd944aa53fc              # double 8.8668919999999999
	.quad	0x401bea22b3892ee8              # double 6.9786479999999997
	.quad	0x40107d6c2efd438d              # double 4.1224829999999999
	.quad	0x3fe7bb98c7e28241              # double 0.74165000000000003
	.quad	0x40205b242070b8d0              # double 8.1780100000000004
	.quad	0x40192435ac8a3726              # double 6.285361
	.quad	0x401e43519bd4067d              # double 7.565741
	.quad	0x4014eca4f440af1d              # double 5.2310980000000002
	.quad	0x40113a80cf9e3865              # double 4.3071320000000002
	.quad	0x4004b141205bc01a              # double 2.5865499999999999
	.quad	0x3ffed275ee99a62f              # double 1.926382
	.quad	0x4023c55b035bd513              # double 9.8854600000000001
	.quad	0x3fead5ef1fddebd9              # double 0.838615
	.quad	0x402060fe69270b07              # double 8.1894410000000004
	.quad	0x3ff2b3d9ec700043              # double 1.168909
	.quad	0x401bff901083dbc2              # double 6.9995729999999998
	.quad	0x401a5eae18ac9f30              # double 6.5924610000000001
	.quad	0x4013c77f6b1a2a4e              # double 4.9448220000000003
	.quad	0x401863497b7414a5              # double 6.0969600000000002
	.quad	0x401a7f36694898f6              # double 6.624231
	.quad	0x40155de1e2de8709              # double 5.3416819999999996
	.quad	0x3ff93a28bb0a2caa              # double 1.5766990000000001
	.quad	0x3fa8ab92c061847f              # double 0.048183999999999998
	.quad	0x3fcae8a71de69ad4              # double 0.210225
	.quad	0x402267000431bde8              # double 9.2011719999999996
	.quad	0x400adb78cc9a77e6              # double 3.357164
	.quad	0x4012fd6733ebbfd7              # double 4.7474639999999999
	.quad	0x402093c0a06e9ff1              # double 8.2885790000000004
	.quad	0x4022bd14c22ee419              # double 9.3692989999999998
	.quad	0x40105c115df6555c              # double 4.0899099999999997
	.quad	0x401c654823854046              # double 7.0989079999999998
	.quad	0x3ffa790752da9867              # double 1.6545479999999999
	.quad	0x4016e4723aafff37              # double 5.7230920000000003
	.quad	0x4013b120e1f7d73d              # double 4.9229770000000004
	.quad	0x401ca48ecd8dbced              # double 7.1607010000000004
	.quad	0x40208129ed3953df              # double 8.2522730000000006
	.quad	0x4001200a7c5ac472              # double 2.1406450000000001
	.quad	0x40205a17b0f6ad71              # double 8.1759620000000002
	.quad	0x4020997b5286b591              # double 8.2997689999999995
	.quad	0x401b9c054ef459da              # double 6.9023640000000004
	.quad	0x3ff7e6cb10342aaa              # double 1.493846
	.quad	0x4013442528ae74f3              # double 4.8165480000000001
	.quad	0x4013177f6b1a2a4e              # double 4.7729470000000003
	.quad	0x401d4a0232096788              # double 7.3222740000000001
	.quad	0x4011dc88a47ecfea              # double 4.4653650000000003
	.quad	0x401d94cb9ecf6380              # double 7.395308
	.quad	0x4010e3671ac14c66              # double 4.222073
	.quad	0x4002596af038e2a0              # double 2.2936610000000002
	.quad	0x3fc0ce4ead0c3d25              # double 0.131296
	.quad	0x400561f4b1ee2435              # double 2.6728299999999998
	.quad	0x3fec3cb3e5753a3f              # double 0.88241000000000003
	.quad	0x3fc0ecc814d7279a              # double 0.13222600000000001
	.quad	0x3fe123854046412d              # double 0.53558600000000001
	.quad	0x402258a116659d13              # double 9.1731040000000004
	.quad	0x400a466cb10342ab              # double 3.2843870000000002
	.quad	0x401627ced916872b              # double 5.538875
	.quad	0x4019d3e39f77292c              # double 6.4569229999999997
	.quad	0x40035ecb31c219eb              # double 2.4212859999999998
	.quad	0x401180c6b484d76b              # double 4.3757580000000003
	.quad	0x400f10bb6ed67770              # double 3.8831699999999998
	.quad	0x400ae299d883ba34              # double 3.3606449999999999
	.quad	0x401f66030c23fab1              # double 7.8496209999999999
	.quad	0x3fedfaeff5c6c11a              # double 0.93688199999999999
	.quad	0x40060903ea704bc2              # double 2.7544019999999998
	.quad	0x4011a06e9ff0cbb0              # double 4.4066720000000004
	.quad	0x400b7e1d2178f68c              # double 3.4365790000000001
	.quad	0x401fa92c061847f5              # double 7.9152069999999996
	.quad	0x4009250a45d41fa7              # double 3.1430859999999998
	.quad	0x400dafa2f05a708f              # double 3.7107600000000001
	.quad	0x40076f42784a9479              # double 2.9293260000000001
	.quad	0x4020d0b827fa1a0d              # double 8.4076550000000001
	.quad	0x3fdcef5232d2bb23              # double 0.45210699999999998
	.quad	0x401ad7edc7ef177a              # double 6.7108679999999996
	.quad	0x40190a9d1f601798              # double 6.2603650000000002
	.quad	0x400859ddc1e7967d              # double 3.0438800000000001
	.quad	0x40021e785b5b7069              # double 2.2648779999999999
	.quad	0x3fdc11233df2a9d6              # double 0.43854599999999999
	.quad	0x4020852e514c22ee              # double 8.2601189999999995
	.quad	0x400e316e37154003              # double 3.7741359999999999
	.quad	0x3ff1cc8ffb8b2639              # double 1.1124419999999999
	.quad	0x401217c957cd466f              # double 4.5232289999999997
	.quad	0x4011a9a6b50b0f28              # double 4.4156750000000002
	.quad	0x40210b6da87a072d              # double 8.5223209999999998
	.quad	0x4010a348f53c579f              # double 4.1594579999999999
	.quad	0x402244cb1897a67a              # double 9.1343619999999994
	.quad	0x40232bcee9dd7ecc              # double 9.5855630000000004
	.quad	0x3fec9b068123810f              # double 0.89392400000000005
	.quad	0x401b3c06e19b90eb              # double 6.8086200000000003
	.quad	0x3ff377ef5a964e8b              # double 1.2167809999999999
	.quad	0x4023e7b0b3919264              # double 9.9525199999999998
	.quad	0x401f847b677f6b1a              # double 7.8793769999999999
	.quad	0x402078b86b15f890              # double 8.2357820000000004
	.quad	0x401f616d6dc1a47b              # double 7.8451440000000003
	.quad	0x4020d84f4c6e6d9c              # double 8.4224800000000001
	.quad	0x402276ad4f5903a7              # double 9.2317909999999994
	.quad	0x401833f4666ec9e2              # double 6.0507369999999998
	.quad	0x401adf9d6f112fd3              # double 6.7183739999999998
	.quad	0x40079b8f57f737da              # double 2.9509569999999998
	.quad	0x3fd0bcd78c436fc1              # double 0.26152599999999998
	.quad	0x401906494d50ebab              # double 6.2561390000000001
	.quad	0x400e18e219652bd4              # double 3.7621500000000001
	.quad	0x402134069e7fb268              # double 8.6016130000000004
	.quad	0x3ff72d57bc7f77af              # double 1.4485699999999999
	.quad	0x4020a9289dadfb50              # double 8.3303879999999992
	.quad	0x40220fa7a85015c2              # double 9.0305759999999999
	.quad	0x400d2c1a048e043a              # double 3.6465339999999999
	.quad	0x40223fc4e2f37fbf              # double 9.124549
	.quad	0x3fe120a30db6a1e8              # double 0.53523399999999999
	.quad	0x3f834e7685985ad5              # double 0.0094269999999999996
	.quad	0x3ffe0a45d41fa765              # double 1.877508
	.quad	0x401c69a88ace24bc              # double 7.1031820000000003
	.quad	0x4018e4ac6cdaf4ae              # double 6.2233140000000002
	.quad	0x402180296b3354c1              # double 8.7503159999999998
	.quad	0x401e00cdc8754f37              # double 7.5007849999999995
	.quad	0x401f14091c087443              # double 7.7695660000000001
	.quad	0x4019c1e6cd29131f              # double 6.4393570000000002
	.quad	0x3ff78d73860999dd              # double 1.4720340000000001
	.quad	0x4009bc193b3a68b2              # double 3.2168450000000002
	.quad	0x4023bd6f97679032              # double 9.8699919999999999
	.quad	0x4006e1d755bccaf7              # double 2.860274
	.quad	0x400b96de33269df9              # double 3.4486659999999998
	.quad	0x4023528c36da87a0              # double 9.6612259999999992
	.quad	0x401c824bfd2e9468              # double 7.127243
	.quad	0x401fddf612407464              # double 7.9667589999999997
	.quad	0x4007c09aaa3ad18d              # double 2.9690449999999999
	.quad	0x3fbfbd273d5bab22              # double 0.12398000000000001
	.quad	0x40042e2c98e53eb4              # double 2.5225460000000002
	.quad	0x401f5264a16a4873              # double 7.8304619999999998
	.quad	0x401c3fe36d22424a              # double 7.0623909999999999
	.quad	0x4017e2773e24febd              # double 5.971158
	.quad	0x4022f2597d49d7ba              # double 9.4733389999999993
	.quad	0x4005750f40e5a35d              # double 2.6821579999999998
	.quad	0x3ff7629a5ebb773a              # double 1.461573
	.quad	0x401f9881a1554fbe              # double 7.8989320000000003
	.quad	0x400045271bcdbbe0              # double 2.033766
	.quad	0x400cd60a63305101              # double 3.6045120000000002
	.quad	0x4022c8e51d25aab4              # double 9.3923729999999991
	.quad	0x401a4132b55ef1fe              # double 6.5636700000000001
	.quad	0x3f94a3400b88ca3e              # double 0.020153999999999998
	.quad	0x4020f10b630a9153              # double 8.4707899999999992
	.quad	0x400368e820e62995              # double 2.4262239999999999
	.quad	0x3fffd2674080f990              # double 1.9888680000000001
	.quad	0x401fbd4067cf1c32              # double 7.9348159999999996
	.quad	0x3fef4c0bdcad14a1              # double 0.97803300000000004
	.quad	0x401c5e4c0df58c09              # double 7.0920870000000003
	.quad	0x401650dae3e6c4c6              # double 5.5789600000000004
	.quad	0x401c4a14cec41dd2              # double 7.0723450000000003
	.quad	0x401be3c36113404f              # double 6.9724250000000003
	.quad	0x3fe23d3c36113405              # double 0.56997500000000001
	.quad	0x3ff67296f6512a95              # double 1.402976
	.quad	0x4008f899392189be              # double 3.1213860000000002
	.quad	0x40061b9f127f5e85              # double 2.763487
	.quad	0x40186577963992c9              # double 6.0990890000000002
	.quad	0x401e7500d5e8d541              # double 7.6142609999999999
	.quad	0x4009aceaaf35e311              # double 3.2094320000000001
	.quad	0x401db146e4c0df59              # double 7.4231220000000002
	.quad	0x3fe0b9c7368ad688              # double 0.52267799999999998
	.quad	0x4020ff1c970f7b9e              # double 8.498265
	.quad	0x4010ebb23571d1d4              # double 4.2301719999999996
	.quad	0x3ff5f47a5b0ff10f              # double 1.372187
	.quad	0x4011e932d6ece13f              # double 4.4777329999999997
	.quad	0x4016993b3a68b19a              # double 5.6496399999999998
	.quad	0x4016b741d084e832              # double 5.6789620000000003
	.quad	0x40236e577531db44              # double 9.7155109999999993
	.quad	0x4012af77af64063a              # double 4.6713550000000001
	.quad	0x400c84bcad9ad85e              # double 3.564813
	.quad	0x4017ef04577d9557              # double 5.9834149999999999
	.quad	0x3ff19fe32a0663c7              # double 1.1015349999999999
	.quad	0x4010ab75a74c09c4              # double 4.1674410000000002
	.quad	0x3ff9b6cdf266ba49              # double 1.6071299999999999
	.quad	0x401a5e97d06bbdbe              # double 6.5923759999999998
	.quad	0x4003503e20ccff22              # double 2.4141810000000001
	.quad	0x40153d29563a9f38              # double 5.3097279999999998
	.quad	0x4011546bacf74470              # double 4.3324420000000003
	.quad	0x3fe5943393ab430f              # double 0.67434099999999997
	.quad	0x40151c18f81e8a2f              # double 5.2774390000000002
	.quad	0x4011e44241c3efae              # double 4.4729089999999996
	.quad	0x40201bba12b5e52a              # double 8.0541540000000005
	.quad	0x3feedfa871a3b14b              # double 0.96480200000000004
	.quad	0x400ca138fffbce42              # double 3.578722
	.quad	0x4011a6805a2d7300              # double 4.4125990000000002
	.quad	0x401bef25a250f840              # double 6.9835419999999999
	.quad	0x4016a0fb65668c26              # double 5.6572089999999999
	.quad	0x401baa4766c6de76              # double 6.9162879999999998
	.quad	0x4022f0244e93e1ca              # double 9.4690270000000005
	.quad	0x3ff6049129888f86              # double 1.376115
	.quad	0x401e8351deefe500              # double 7.6282420000000002
	.quad	0x3ff591dde37585be              # double 1.348112
	.quad	0x4019e3a860dcb9aa              # double 6.4723220000000001
	.quad	0x4020c802e2328f9f              # double 8.3906469999999995
	.quad	0x3ff64ecb74ddf86e              # double 1.3942369999999999
	.quad	0x401efb2b777d0f1f              # double 7.7452829999999996
	.quad	0x400f04adff822bbf              # double 3.8772850000000001
	.quad	0x3fd8188f42fe8251              # double 0.37649899999999997
	.quad	0x4019ffc158fb43d9              # double 6.4997610000000003
	.quad	0x4008cd4cb9ecf638              # double 3.100244
	.quad	0x40085267c6b8b695              # double 3.0402369999999999
	.quad	0x4021c5d52c16df40              # double 8.8863920000000007
	.quad	0x4022a035158b8280              # double 9.3129050000000007
	.quad	0x400a7df19d66adb4              # double 3.311496
	.quad	0x401565bc87db2b34              # double 5.3493519999999997
	.quad	0x402052b841248d7e              # double 8.161562
	.quad	0x4005d021d10b1fef              # double 2.7266270000000001
	.quad	0x401054fc1df3300e              # double 4.0829930000000001
	.quad	0x402059b6f5caf2d8              # double 8.175224
	.quad	0x401b17ee9142b303              # double 6.773371
	.quad	0x3ffde74d1633482c              # double 1.86897
	.quad	0x4023e2d9f0a1be2b              # double 9.9430689999999994
	.quad	0x400c10b9dc2f405f              # double 3.5081669999999998
	.quad	0x40168cd31769a911              # double 5.637524
	.quad	0x4022e0fa58f7121b              # double 9.4394100000000005
	.quad	0x401af5bc01a36e2f              # double 6.7399750000000003
	.quad	0x401d6125dd095af3              # double 7.3448710000000004
	.quad	0x3ffc32c40d0aaa7e              # double 1.762394
	.quad	0x4018b7aaef2c7326              # double 6.1793630000000004
	.quad	0x40027bafd976ff3b              # double 2.3103940000000001
	.quad	0x401f1770bd017daf              # double 7.7728910000000004
	.quad	0x40234e6f9335d24a              # double 9.6531950000000002
	.quad	0x4015175d56f32bdc              # double 5.2728169999999999
	.quad	0x4002bf78359bc340              # double 2.3434910000000002
	.quad	0x401c807c4199fe43              # double 7.1254739999999996
	.quad	0x401a40a41a261bf3              # double 6.5631259999999996
	.quad	0x401f20029f16b11c              # double 7.7812599999999996
	.quad	0x3fdee7f6f4be835e              # double 0.482908
	.quad	0x4022005b7cfe5860              # double 9.0006979999999999
	.quad	0x4004410be9424e59              # double 2.5317609999999999
	.quad	0x40013c0a8d21bc12              # double 2.1543169999999998
	.quad	0x401ce9f59ccfaeff              # double 7.2284759999999997
	.quad	0x400018a19c9d5a18              # double 2.0120269999999998
	.quad	0x3ff93cdee34fc611              # double 1.577361
	.quad	0x400815970b49e01e              # double 3.0105420000000001
	.quad	0x4002894898f605ab              # double 2.3170329999999999
	.quad	0x40130a94ff0025c0              # double 4.7603340000000003
	.quad	0x40181fca42aed139              # double 6.0310449999999998
	.quad	0x4023b4ff21b3aeef              # double 9.8535090000000007
	.quad	0x400588d7e02645e5              # double 2.691818
	.quad	0x4017d9f77292c493              # double 5.9628579999999998
	.quad	0x3ff8499392189bd8              # double 1.517963
	.quad	0x401fadb2702a3487              # double 7.919626
	.quad	0x401c13397dd00f77              # double 7.0187739999999996
	.quad	0x401f21c36976bc1f              # double 7.782972
	.quad	0x4023dda07b352a84              # double 9.9328649999999996
	.quad	0x401076149c6f36f0              # double 4.1153130000000004
	.quad	0x4021cfae5796bfcb              # double 8.9056270000000008
	.quad	0x401d727807789a46              # double 7.3617860000000004
	.quad	0x400a7837b4a2339c              # double 3.3087
	.quad	0x4016b25fe974a340              # double 5.674194
	.quad	0x3ff01cd8127b2cc7              # double 1.007042
	.quad	0x4015d7b41bfbdf09              # double 5.4606479999999999
	.quad	0x4001efc610f0e90c              # double 2.2420770000000001
	.quad	0x40034cedd4845133              # double 2.412563
	.quad	0x3fe45249e44fa051              # double 0.63504499999999997
	.quad	0x40171dbf0563ed0f              # double 5.7790489999999997
	.quad	0x40193c7a398201cd              # double 6.3090599999999997
	.quad	0x3fef2b21815a07b3              # double 0.97401499999999996
	.quad	0x3ff9c5d744f5d356              # double 1.6108009999999999
	.quad	0x3fdabca5375c8da0              # double 0.41776400000000002
	.quad	0x40204b6ef8055fbb              # double 8.1473309999999994
	.quad	0x401eea454de7ea60              # double 7.7287800000000004
	.quad	0x402086daec4a4096              # double 8.2633890000000001
	.quad	0x400289563a9f383f              # double 2.317059
	.quad	0x3fedc89b0ee49f51              # double 0.93073799999999995
	.quad	0x3ff767fd3f5b5fa2              # double 1.462888
	.quad	0x4003adb2f661f18d              # double 2.4598140000000002
	.quad	0x3ff4f8f9b13165d4              # double 1.3107850000000001
	.quad	0x401c6fede97d06bc              # double 7.1093060000000001
	.quad	0x402041b280f12c28              # double 8.1283150000000006
	.quad	0x401b2ae46cfc829d              # double 6.791887
	.quad	0x3ffb879a2834d270              # double 1.7206060000000001
	.quad	0x3ffbb1df761cbccf              # double 1.730926
	.quad	0x4012c794ea077037              # double 4.6949040000000002
	.quad	0x400d6b26394face6              # double 3.6773189999999998
	.quad	0x401b74cf0739b025              # double 6.864071
	.quad	0x3fe5e06748e47560              # double 0.683643
	.quad	0x401648e9f6a93f29              # double 5.571205
	.quad	0x3fc3e1c15097c808              # double 0.15532699999999999
	.quad	0x402220f2becedd48              # double 9.0643519999999995
	.quad	0x3fecad81adea8976              # double 0.89617999999999998
	.quad	0x3fe572b239a38fbd              # double 0.67025100000000004
	.quad	0x400dc1cffeb074a7              # double 3.7196349999999998
	.quad	0x4021bb8a3b57c4e3              # double 8.8662890000000001
	.quad	0x402134892ab68cef              # double 8.6026089999999993
	.quad	0x400a1f85d744f5d3              # double 3.2653919999999999
	.quad	0x401b74052d666a98              # double 6.8633009999999999
	.quad	0x400f69cdc443914f              # double 3.9266619999999999
	.quad	0x3ffc74c3c18b502b              # double 1.7785070000000001
	.quad	0x4000a7b45f17bd8c              # double 2.081887
	.quad	0x3fe5fdf19d66adb4              # double 0.687249
	.quad	0x3fcde0d66f0cfe15              # double 0.23342399999999999
	.quad	0x402228dcb9a9da59              # double 9.0798089999999991
	.quad	0x3ffd60242d05f288              # double 1.8359719999999999
	.quad	0x400091e3a7daa4fd              # double 2.0712350000000002
	.quad	0x4016527fe4bcad9b              # double 5.5805660000000001
	.quad	0x3ff5937e2c55c960              # double 1.348509
	.quad	0x4007aec17ebaf102              # double 2.9603299999999999
	.quad	0x3fee2d42c3c9eecc              # double 0.943025
	.quad	0x402323ac710cb296              # double 9.5696750000000002
	.quad	0x401060789613d31c              # double 4.0942100000000003
	.quad	0x401559ffd60e94ee              # double 5.3378899999999998
	.quad	0x3ff1999aa60913a5              # double 1.100001
	.quad	0x3fac49dbec2480e9              # double 0.055251000000000001
	.quad	0x401be2441fea8113              # double 6.9709630000000002
	.quad	0x4019ab4784230fd0              # double 6.4172650000000004
	.quad	0x3ff160cbf2b239a4              # double 1.0861320000000001
	.quad	0x401b27bd05af6c6a              # double 6.7888070000000003
	.quad	0x40059b44e50c5eb3              # double 2.700815
	.quad	0x40060b1897a67a53              # double 2.7554180000000001
	.quad	0x4016de49f51697f2              # double 5.717079
	.quad	0x3fdcf6f08cc575c0              # double 0.45257199999999997
	.quad	0x3ffc8f1a1986b9c3              # double 1.784937
	.quad	0x3fb2294141e9af5c              # double 0.070942000000000005
	.quad	0x4013729c347e8cce              # double 4.8619240000000001
	.quad	0x40183b81b64e0547              # double 6.0581120000000004
	.quad	0x400f34f69ca9ef52              # double 3.9008609999999999
	.quad	0x4021bc6e8f29d40f              # double 8.8680310000000002
	.quad	0x40120286f8ad2568              # double 4.5024680000000004
	.quad	0x400108ecd8dbcec8              # double 2.1293579999999999
	.quad	0x4003fa20578e5c4f              # double 2.4971320000000001
	.quad	0x4021e7edc7ef177a              # double 8.9529859999999992
	.quad	0x401cf4ffc9795b36              # double 7.2392570000000003
	.quad	0x3fd86006d0d4994a              # double 0.38086100000000001
	.quad	0x3ff9ce1932d6ece1              # double 1.6128169999999999
	.quad	0x3ffb077ff151e753              # double 1.6893309999999999
	.quad	0x4018036c15d2d01c              # double 6.003342
	.quad	0x4021f5ae1cde5d18              # double 8.9798439999999999
	.quad	0x4021acad794a6eb9              # double 8.8372609999999998
	.quad	0x400eecc3e3193f6c              # double 3.8656079999999999
	.quad	0x40031c0767d34df0              # double 2.3886859999999999
	.quad	0x3fface25c810a56a              # double 1.6753290000000001
	.quad	0x402276e5abc0e38a              # double 9.2322209999999991
	.quad	0x3ff28ab4fa48301a              # double 1.1588639999999999
	.quad	0x4012c20c069e7fb2              # double 4.6894989999999996
	.quad	0x3fd0c925785f8d2e              # double 0.26227699999999998
	.quad	0x4014d1c75818c5ca              # double 5.2048620000000003
	.quad	0x400cb559b3d07c85              # double 3.5885500000000001
	.quad	0x4018f54b48d3ae68              # double 6.2395449999999997
	.quad	0x3fea67c286f8ad25              # double 0.82516599999999996
	.quad	0x400708826aa8eb46              # double 2.8791549999999999
	.quad	0x401e04ad362e9036              # double 7.5045669999999998
	.quad	0x3ffc5ecf63800219              # double 1.773147
	.quad	0x4012408d08919ef9              # double 4.5630379999999997
	.quad	0x402333cdbbe0157f              # double 9.6011790000000001
	.quad	0x40181bfd2e946801              # double 6.0273329999999996
	.quad	0x40127057d1782d38              # double 4.6097099999999998
	.quad	0x3fff31a1986b9c30              # double 1.9496169999999999
	.quad	0x3fe737e0ac7da1ec              # double 0.72557099999999997
	.quad	0x401cafa7a85015c2              # double 7.171538
	.quad	0x401920acc0bdcad1              # double 6.2819089999999997
	.quad	0x400ab3abc947064f              # double 3.3377300000000001
	.quad	0x400b8d9cf13cee9e              # double 3.4441470000000001
	.quad	0x400ded783dff3f10              # double 3.7409520000000001
	.quad	0x4023376ab5807fed              # double 9.6082359999999997
	.quad	0x401c577fae3608d1              # double 7.0854480000000004
	.quad	0x40152d2b2bfdb4cc              # double 5.2941099999999999
	.quad	0x40193faa4766c6de              # double 6.3121729999999996
	.quad	0x401cb27a20578e5c              # double 7.1742939999999997
	.quad	0x3ff77a908a265f0f              # double 1.4674229999999999
	.quad	0x400b1aeff5c6c11a              # double 3.388153
	.quad	0x401c11e603d57796              # double 7.0174789999999998
	.quad	0x40164b6f19934efd              # double 5.5736660000000002
	.quad	0x40001e060fe47992              # double 2.0146600000000001
	.quad	0x3ff0fd790752da98              # double 1.0618829999999999
	.quad	0x3fe6e25c810a569b              # double 0.71513199999999999
	.quad	0x4020924894c447c3              # double 8.2857099999999999
	.quad	0x400998cc144028e5              # double 3.199608
	.quad	0x402065b7281fd9ba              # double 8.1986629999999998
	.quad	0x4000484be40420f7              # double 2.035301
	.quad	0x4021c83b1d0c8041              # double 8.891076
	.quad	0x3ff5fb1f255f351a              # double 1.3738090000000001
	.quad	0x40084c093d966384              # double 3.0371269999999999
	.quad	0x4016546dc5d63886              # double 5.5824499999999997
	.quad	0x400ecc2c5e2cdc01              # double 3.8496939999999999
	.quad	0x402282dc2b0ea183              # double 9.2555859999999992
	.quad	0x40113b7b6bb12902              # double 4.3080879999999997
	.quad	0x401db54c55432874              # double 7.4270490000000002
	.quad	0x4009d67f4dbdf8f4              # double 3.2297349999999998
	.quad	0x40116ca7d6733ebc              # double 4.356109
	.quad	0x4021967125dd095b              # double 8.7938320000000001
	.quad	0x3ffe98aa8650e779              # double 1.912272
	.quad	0x4020936bd2b6f199              # double 8.2879319999999996
	.quad	0x4016e5b24e9c4546              # double 5.7243130000000004
	.quad	0x3ff7950331e3a7db              # double 1.4738800000000001
	.quad	0x4020282afdda8bd2              # double 8.0784529999999997
	.quad	0x4017ddb445ed4a1b              # double 5.9665080000000001
	.quad	0x4008099d0203e63f              # double 3.0046940000000002
	.quad	0x400dabea4ebdd335              # double 3.7089430000000001
	.quad	0x4013595e17e34b94              # double 4.8372729999999997
	.quad	0x3fc2de76427c7c52              # double 0.14741399999999999
	.quad	0x401aea5ebb7739f3              # double 6.7288769999999998
	.quad	0x402197bf61aa3f03              # double 8.7963819999999995
	.quad	0x40188757d5a9eb20              # double 6.1321709999999996
	.quad	0x400e11feeb2d0a24              # double 3.7587869999999999
	.quad	0x40138e28aa433509              # double 4.888827
	.quad	0x400a0b52c9d16fca              # double 3.2555290000000001
	.quad	0x401490a2ca9ac365              # double 5.1412459999999998
	.quad	0x400218d1526d8b1e              # double 2.2621180000000001
	.quad	0x40213348909289db              # double 8.6001630000000002
	.quad	0x3ff67ef49cf56ead              # double 1.4059950000000001
	.quad	0x402377aa8a82a561              # double 9.7337229999999994
	.quad	0x3fea16440f238972              # double 0.815218
	.quad	0x3ffb8c4ef88b9778              # double 1.7217549999999999
	.quad	0x40138cc6822ff089              # double 4.8874760000000004
	.quad	0x401a00cf1800a7c6              # double 6.5007900000000003
	.quad	0x402110fe8ab4fa48              # double 8.5331919999999997
	.quad	0x4006f5bb384fd2a6              # double 2.8699859999999999
	.quad	0x40124079a2834d27              # double 4.562964
	.quad	0x4022eb49be8ff328              # double 9.4595470000000005
	.quad	0x40164e8b7e4de3b9              # double 5.5767040000000003
	.quad	0x401b7f39d1b2e59b              # double 6.874244
	.quad	0x3fe84528283d35eb              # double 0.75844199999999995
	.quad	0x4021e7bf1e8e6080              # double 8.9526299999999992
	.quad	0x40151055b8993922              # double 5.2659520000000004
	.quad	0x401151700cd85597              # double 4.329529
	.quad	0x401723150dae3e6c              # double 5.7842599999999997
	.quad	0x3ff77d9231c64ba9              # double 1.4681569999999999
	.quad	0x4023c8d306a2b170              # double 9.8922349999999994
	.quad	0x3fd189d6adf71eb0              # double 0.274038
	.quad	0x40102e90bc7b45f1              # double 4.0454739999999996
	.quad	0x3ff7c2e9899bf594              # double 1.4850859999999999
	.quad	0x401e86694898f606              # double 7.6312610000000003
	.quad	0x3ff1f1ab0856e697              # double 1.1215010000000001
	.quad	0x4019e013a92a3055              # double 6.4688249999999998
	.quad	0x400afc5ac471b478              # double 3.3732199999999999
	.quad	0x3fa2c36544fe36d2              # double 0.036646999999999999
	.quad	0x4013fbeb18116ebd              # double 4.9960139999999997
	.quad	0x401f43059641f645              # double 7.8154510000000003
	.quad	0x4006f348b220791c              # double 2.8687909999999999
	.quad	0x40209ffae3608d09              # double 8.3124610000000008
	.quad	0x400f31b8aa00192a              # double 3.8992779999999998
	.quad	0x40126cf63800218e              # double 4.6064080000000001
	.quad	0x4002b495182a9931              # double 2.3381750000000001
	.quad	0x401376a550870111              # double 4.8658650000000003
	.quad	0x4007b185cee17a03              # double 2.961681
	.quad	0x401b665c70435efa              # double 6.8499619999999997
	.quad	0x4022d23a8e71476b              # double 9.410603
	.quad	0x3ff1ae5471715c64              # double 1.1050610000000001
	.quad	0x4022b8b06c43f5f9              # double 9.3607209999999998
	.quad	0x4011b823c85c24c4              # double 4.429824
	.quad	0x401b43bd9cae2110              # double 6.8161529999999999
	.quad	0x3fea74a771c970f8              # double 0.82674000000000003
	.quad	0x4000b478c868b9fe              # double 2.0881210000000001
	.quad	0x4011cddd6e04c059              # double 4.4510399999999999
	.quad	0x40095440af1cb89d              # double 3.1661389999999998
	.quad	0x4021557625204af9              # double 8.6669169999999998
	.quad	0x4021b3ef06b37868              # double 8.8514330000000001
	.quad	0x40190af6837f7be1              # double 6.2607059999999999
	.quad	0x401f3dfa00e27e0f              # double 7.810524
	.quad	0x401886bb1290257d              # double 6.1315730000000004
	.quad	0x40193908e581cf78              # double 6.3056979999999996
	.quad	0x401067baa9b499d0              # double 4.1012979999999999
	.quad	0x4023d5ebb7739f34              # double 9.9178139999999999
	.quad	0x40204bf4a98aa865              # double 8.1483509999999999
	.quad	0x4023e7c7c5260f5e              # double 9.9526959999999995
	.quad	0x401543854046412d              # double 5.3159380000000001
	.quad	0x401ecc5da6a44418              # double 7.6995760000000004
	.quad	0x400e13743632c1f4              # double 3.7594989999999999
	.quad	0x3ff9b961804d9839              # double 1.6077589999999999
	.quad	0x40171bc4d22c881e              # double 5.7771179999999998
	.quad	0x3fffba9e2bcf91a3              # double 1.983061
	.quad	0x4018265625a682b6              # double 6.0374379999999999
	.quad	0x401b455821294574              # double 6.8177190000000003
	.quad	0x3fef7214f0520d13              # double 0.98267599999999999
	.quad	0x3ffd9cf13cee9dd8              # double 1.850816
	.quad	0x400fb592d98bf7f0              # double 3.9636589999999998
	.quad	0x400c6c4c5974e65c              # double 3.55288
	.quad	0x401d1d9ba1b19610              # double 7.2789140000000003
	.quad	0x400746833c60029f              # double 2.90943
	.quad	0x40226b33daf8df7a              # double 9.2093799999999995
	.quad	0x400abae03b3e9a70              # double 3.3412480000000002
	.quad	0x3ff7640852b4d8ba              # double 1.4619219999999999
	.quad	0x4020de939eadd591              # double 8.4347200000000004
	.quad	0x40120f6e82949a56              # double 4.5150699999999997
	.quad	0x4023fa6266fd651b              # double 9.9890319999999999
	.quad	0x401165d031055b8a              # double 4.3494270000000004
	.quad	0x40161c6822ff0889              # double 5.5277409999999998
	.quad	0x40129009b30728e9              # double 4.6406619999999998
	.quad	0x401ffcb07d0aed9a              # double 7.9967670000000002
	.quad	0x401186030c23fab1              # double 4.380871
	.quad	0x4005d45ae5ffa3ba              # double 2.7286890000000001
	.quad	0x4020f57646ae3a3b              # double 8.4794180000000008
	.quad	0x401eb299524bfd2f              # double 7.6744130000000003
	.quad	0x40187f1561911490              # double 6.1241050000000001
	.quad	0x3ff0685db76b3bb8              # double 1.0254799999999999
	.quad	0x40111ad7518b0d0f              # double 4.2762120000000001
	.quad	0x401fb336deb95e5b              # double 7.925014
	.quad	0x3ffa6aa087ca643d              # double 1.6510320000000001
	.quad	0x4015b23dd54da4cf              # double 5.4240640000000004
	.quad	0x3ff69e3b8a19c9d6              # double 1.4136310000000001
	.quad	0x4007a073de1e2de8              # double 2.9533459999999998
	.quad	0x4005cde657b84dba              # double 2.7255370000000001
	.quad	0x3fd3d67fd3f5b5fa              # double 0.30996699999999999
	.quad	0x40163a83b1d0c804              # double 5.5571429999999999
	.quad	0x401aaeaee2003ab8              # double 6.6705889999999997
	.quad	0x40141e557de0d66f              # double 5.029623
	.quad	0x40184147f1305964              # double 6.0637509999999999
	.quad	0x4008706f69446738              # double 3.0548999999999999
	.quad	0x4012b483cafb3b75              # double 4.6762839999999999
	.quad	0x401c5ec52a411c2a              # double 7.092549
	.quad	0x400f1d25aab47410              # double 3.8892319999999998
	.quad	0x3ffdb8a19c9d5a18              # double 1.8575759999999999
	.quad	0x401ada3b57c4e2f3              # double 6.7131169999999996
	.quad	0x3fc10d2806af46aa              # double 0.133214
	.quad	0x4016969df97aaac1              # double 5.647087
	.quad	0x4010001cd5f99c39              # double 4.0001100000000003
	.quad	0x3fcedfce3150dae4              # double 0.241205
	.quad	0x401b3e7f2c3009b3              # double 6.811032
	.quad	0x401a136113404ea5              # double 6.5189250000000003
	.quad	0x401b8c68ec52a412              # double 6.8871190000000002
	.quad	0x40079c1eff9f87f0              # double 2.9512309999999999
	.quad	0x3fce24894c447c31              # double 0.23549
	.quad	0x4006911622813448              # double 2.820843
	.quad	0x40169fa48301a7a0              # double 5.6559010000000001
	.quad	0x4020010e453d20f3              # double 8.0020620000000005
	.quad	0x400b16f5caf2d7f9              # double 3.3862109999999999
	.quad	0x40157a0e8427418d              # double 5.3691959999999996
	.quad	0x4017c843c3a42f1f              # double 5.9455710000000002
	.quad	0x4013e7c8d195896a              # double 4.9763520000000003
	.quad	0x3ffa1b6d43d03969              # double 1.631696
	.quad	0x40231746887a8d65              # double 9.5454600000000002
	.quad	0x401f1e33eff19503              # double 7.7794949999999998
	.quad	0x401d5a033e78e193              # double 7.3379029999999998
	.quad	0x40175f58c08b75ea              # double 5.8431119999999996
	.quad	0x401292a5a469d734              # double 4.6432099999999998
	.quad	0x4007469f8c21e1d2              # double 2.909484
	.quad	0x4021dbe0157eed46              # double 8.9294440000000002
	.quad	0x401710ba1f4b1ee2              # double 5.7663349999999998
	.quad	0x4022125aab474107              # double 9.0358479999999997
	.quad	0x401b95e785b5b707              # double 6.8963910000000004
	.quad	0x4015ae5796bfca86              # double 5.4202560000000002
	.quad	0x401e70c73abc9470              # double 7.6101349999999996
	.quad	0x3fefeab9b23dd54e              # double 0.99740300000000004
	.quad	0x3fe76640a6b93ccd              # double 0.73123199999999999
	.quad	0x3ff751a75cd0bb6f              # double 1.457435
	.quad	0x4011575e6362a5e8              # double 4.3353210000000004
	.quad	0x400ed17b5286b591              # double 3.8522859999999999
	.quad	0x3ffabce746cb966c              # double 1.671119
	.quad	0x3fe222ff08893b7e              # double 0.56677200000000005
	.quad	0x4021c4be1eb4202e              # double 8.8842630000000007
	.quad	0x402327acc4ef88b9              # double 9.5774899999999991
	.quad	0x4016131df761cbcd              # double 5.518669
	.quad	0x3ff9a7fa1a0cf180              # double 1.60351
	.quad	0x4014ca91d9b1b79e              # double 5.1978220000000004
	.quad	0x400c8ff1950331e4              # double 3.5702850000000002
	.quad	0x4018758d5842b735              # double 6.1147970000000003
	.quad	0x4004b50fc71d6063              # double 2.588409
	.quad	0x3ff56e6644d87725              # double 1.339453
	.quad	0x3fd5730c67168f8e              # double 0.33514699999999997
	.quad	0x4008737542a23c00              # double 3.0563760000000002
	.quad	0x4022f925dd095af3              # double 9.4866170000000007
	.quad	0x4001980a17b0f6ad              # double 2.1992379999999998
	.quad	0x401e7c9d5a187a4a              # double 7.6216939999999997
	.quad	0x4020d2dcb1465e89              # double 8.4118399999999998
	.quad	0x401239d3458cd20b              # double 4.55647
	.quad	0x400872ead9274e23              # double 3.0561120000000002
	.quad	0x3fd16299524bfd2f              # double 0.27164300000000002
	.quad	0x40184f9c1f85d745              # double 6.077744
	.quad	0x3ff3d50225742dcf              # double 1.2395039999999999
	.quad	0x401d8549f94855da              # double 7.3801649999999999
	.quad	0x3fe9ed5065732160              # double 0.81021900000000002
	.quad	0x4012fc2f837b4a23              # double 4.7462749999999998
	.quad	0x4019ca1a0cf1800a              # double 6.4473649999999996
	.quad	0x4020757d1782d384              # double 8.2294699999999991
	.quad	0x3ff23633ce63a5c2              # double 1.1382330000000001
	.quad	0x400129aa1d755bcd              # double 2.1453440000000001
	.quad	0x4014692b3cc4ac6d              # double 5.1027040000000001
	.quad	0x40211e5ecc3e3194              # double 8.559317
	.quad	0x4016da4b5568e821              # double 5.7131780000000001
	.quad	0x401597a41e57d9dc              # double 5.3980870000000003
	.quad	0x400cf28c79f66623              # double 3.6184319999999999
	.quad	0x40064674080f98fa              # double 2.7844009999999999
	.quad	0x400a6fdb09a671ef              # double 3.3046169999999999
	.quad	0x4013a858bc59b802              # double 4.9144009999999998
	.quad	0x4018009e12a51e32              # double 6.0006029999999999
	.quad	0x40100e568a50507a              # double 4.0140019999999996
	.quad	0x402334fb3311a544              # double 9.603479
	.quad	0x4010077079e59f2c              # double 4.0072650000000003
	.quad	0x401ddf9a06a6e32e              # double 7.4683609999999998
	.quad	0x3ff1624cc6822ff1              # double 1.0864990000000001
	.quad	0x3ffc7305100a393f              # double 1.778081
	.quad	0x4021552b6f19934f              # double 8.666347
	.quad	0x401cae70c1333b97              # double 7.1703520000000003
	.quad	0x40174e92923e5b85              # double 5.8267309999999997
	.quad	0x401ce5dfeb8d8234              # double 7.2244869999999999
	.quad	0x3fbdf9df548ecd8e              # double 0.117094
	.quad	0x401a6343b70ef566              # double 6.5969379999999997
	.quad	0x4023e7a05143bf72              # double 9.9523949999999992
	.quad	0x3ff61c1a47a9e2bd              # double 1.381861
	.quad	0x4022d33482be8bc1              # double 9.4125099999999992
	.quad	0x40163e2584f4c6e7              # double 5.5606900000000001
	.quad	0x3fb83675ddd2ae8e              # double 0.094580999999999998
	.quad	0x4014409bf9c62a1b              # double 5.0630949999999997
	.quad	0x40034c00da1a9329              # double 2.4121109999999999
	.quad	0x4003503d145d8516              # double 2.4141789999999999
	.quad	0x40103132f87ad081              # double 4.0480460000000003
	.quad	0x4001660807357e67              # double 2.17482
	.quad	0x4019fd93c46d82ba              # double 6.4976339999999997
	.quad	0x40100d698fe69271              # double 4.0130980000000003
	.quad	0x40202e0e736049ed              # double 8.0899540000000005
	.quad	0x4017a6c7a7c9de05              # double 5.912871
	.quad	0x402270c47a17f413              # double 9.2202490000000008
	.quad	0x40148ebfa8f7db6e              # double 5.1394029999999997
	.quad	0x4021613122b7baed              # double 8.6898280000000003
	.quad	0x4020336cbd987c63              # double 8.1004389999999997
	.quad	0x401174983d790753              # double 4.3638620000000001
	.quad	0x401f79ccfaeff5c7              # double 7.8689460000000002
	.quad	0x3ff686cebbba55d2              # double 1.4079120000000001
	.quad	0x40190d8e432441ff              # double 6.2632380000000003
	.quad	0x401e972b884406c0              # double 7.647627
	.quad	0x401bcf255f3519bd              # double 6.9522909999999998
	.quad	0x401112e2b8c75c4b              # double 4.2684430000000004
	.quad	0x40224e8b3b320536              # double 9.1534060000000004
	.quad	0x40054148344c37e7              # double 2.656876
	.quad	0x40207b09a671ef31              # double 8.2403080000000006
	.quad	0x40207a62456f75da              # double 8.2390310000000007
	.quad	0x3fe4a90257c914b1              # double 0.64563099999999995
	.quad	0x4006020f6f08cc57              # double 2.7510059999999998
	.quad	0x400211758e219653              # double 2.2585250000000001
	.quad	0x400bebba12b5e52a              # double 3.4901010000000001
	.quad	0x400fa328f9f44d44              # double 3.9546679999999999
	.quad	0x401aaa28fe260b2d              # double 6.6661720000000004
	.quad	0x3fe44c964628027e              # double 0.63434900000000005
	.quad	0x3ff60e15011904b4              # double 1.3784380000000001
	.quad	0x40238677b395c422              # double 9.762632
	.quad	0x3ff56f6512a94ff0              # double 1.339696
	.quad	0x402130de8f6cefed              # double 8.5954479999999993
	.quad	0x3ffa597d49d7ba67              # double 1.6468480000000001
	.quad	0x3ff8eeae9ee45c36              # double 1.5582720000000001
	.quad	0x400d6cc3e3193f6c              # double 3.6781079999999999
	.quad	0x3fc5a80cf9e3864d              # double 0.16919100000000001
	.quad	0x402106ddaceee0f4              # double 8.5134100000000003
	.quad	0x400c8d5ae1cde5d2              # double 3.5690210000000002
	.quad	0x4017df8a8f3a9b07              # double 5.9683020000000004
	.quad	0x3ff41c70435efa61              # double 1.2569429999999999
	.quad	0x402285a1a93293d1              # double 9.260999
	.quad	0x400da9b413986339              # double 3.7078630000000001
	.quad	0x401e48e0c9d9d346              # double 7.5711700000000004
	.quad	0x401aa5e4a3832767              # double 6.6620049999999997
	.quad	0x401015c9e6687f45              # double 4.0212779999999997
	.quad	0x400cfc957cd466f5              # double 3.623332
	.quad	0x401388d3ae685db7              # double 4.8836199999999996
	.quad	0x3fd6d1f601797cc4              # double 0.35656500000000002
	.quad	0x400529435ac8a372              # double 2.6451479999999998
	.quad	0x401fe357603925bb              # double 7.9720129999999995
	.quad	0x400792af1455219b              # double 2.9466230000000002
	.quad	0x3fd92aed1394317b              # double 0.39324500000000001
	.quad	0x4006bd805e5f30e8              # double 2.84253
	.quad	0x40231757b41bfbdf              # double 9.5455909999999999
	.quad	0x401e326b2f23033a              # double 7.5492369999999998
	.quad	0x400d5d388a8b08dd              # double 3.6705179999999999
	.quad	0x3fd865d3996fa82f              # double 0.38121500000000003
	.quad	0x3ff190678c0053e3              # double 1.097755
	.quad	0x4013be82d7b634db              # double 4.9360460000000002
	.quad	0x40198a697aeddce8              # double 6.3851680000000002
	.quad	0x402196822ff08894              # double 8.7939620000000005
	.quad	0x3ff3bfe9fadafd11              # double 1.234354
	.quad	0x3ff37c01a36e2eb2              # double 1.2177750000000001
	.quad	0x3ff0ccbc05d52c17              # double 1.049984
	.quad	0x3ffe39da16616b55              # double 1.889124
	.quad	0x3ff3a8deb0fadf2f              # double 1.228728
	.quad	0x402188956c0d6f54              # double 8.7667649999999994
	.quad	0x40209514e3bcd35b              # double 8.2911750000000008
	.quad	0x40121c82e019b0ab              # double 4.5278429999999998
	.quad	0x4020e9a437824d4d              # double 8.4563310000000005
	.quad	0x400d8291fb3fa6df              # double 3.688755
	.quad	0x3ff0fe73a365cb36              # double 1.062122
	.quad	0x4002d22a6f3f52fc              # double 2.3526199999999999
	.quad	0x40217a1d53cddd6e              # double 8.738505
	.quad	0x4012a2396073de1e              # double 4.6584219999999998
	.quad	0x4014ae920c069e80              # double 5.1704790000000003
	.quad	0x3ff61290257c914b              # double 1.379532
	.quad	0x40225f1f36262cba              # double 9.1857849999999992
	.quad	0x401c7753e707e176              # double 7.1165310000000002
	.quad	0x401bc1d755bccaf7              # double 6.939298
	.quad	0x4015ec258d5842b7              # double 5.4806119999999998
	.quad	0x3ff01ecc3e3193f7              # double 1.0075190000000001
	.quad	0x3ff7129fe004b7f6              # double 1.4420470000000001
	.quad	0x40083f0f5a1016ce              # double 3.0307909999999998
	.quad	0x40037a8cdea033e8              # double 2.4348390000000002
	.quad	0x402342e5796bfca8              # double 9.6306569999999993
	.quad	0x3fff963dc486ad2e              # double 1.97418
	.quad	0x3ff104eb56fb8f58              # double 1.063701
	.quad	0x401e20aa21a719b5              # double 7.5318990000000001
	.quad	0x4020713037d63023              # double 8.2210710000000002
	.quad	0x4016d38327674d16              # double 5.7065549999999998
	.quad	0x400ccd173fb7a5f4              # double 3.600142
	.quad	0x3febb36deb95e5b0              # double 0.86565300000000001
	.quad	0x40223ac79702e664              # double 9.1148039999999994
	.quad	0x4021c04ccee5abc1              # double 8.8755860000000002
	.quad	0x4005311f926c7eae              # double 2.6489859999999998
	.quad	0x4005264a9cdc4439              # double 2.643697
	.quad	0x3fe362c98e53eb3a              # double 0.60580900000000004
	.quad	0x40135ee568a50508              # double 4.8426720000000003
	.quad	0x400a482cf52b90a8              # double 3.2852420000000002
	.quad	0x4020b9fb6134ce3e              # double 8.3632460000000002
	.quad	0x400f4da2b5a20ddc              # double 3.9129079999999998
	.quad	0x401690d51f81a587              # double 5.641438
	.quad	0x401f67cc39ffd60f              # double 7.8513650000000003
	.quad	0x401bee11dbca9692              # double 6.9824900000000003
	.quad	0x3ff375232d2bb235              # double 1.2160979999999999
	.quad	0x400b685b9e8c47a1              # double 3.4259559999999998
	.quad	0x401b0a11ec918e32              # double 6.7598339999999997
	.quad	0x4006920ea5b530cf              # double 2.8213170000000001
	.quad	0x4012112fd32c625f              # double 4.5167840000000004
	.quad	0x40039cfe58601366              # double 2.451657
	.quad	0x402333352a843809              # double 9.6000150000000008
	.quad	0x4021e7a67a52ac75              # double 8.9524419999999996
	.quad	0x3fef6f47b677f6b2              # double 0.98233400000000004
	.quad	0x4017ccaeea63b689              # double 5.9498860000000002
	.quad	0x400394b838c111ae              # double 2.4476170000000002
	.quad	0x40118430b178b370              # double 4.379092
	.quad	0x40222c1bda5119ce              # double 9.0861499999999999
	.quad	0x4018efb4c3c18b50              # double 6.2340879999999999
	.quad	0x40222464345cfedf              # double 9.0710770000000007
	.quad	0x400abdcad14a0a0f              # double 3.3426719999999999
	.quad	0x3fa9aac53b0813cb              # double 0.050131000000000002
	.quad	0x4020a98958d9b5e9              # double 8.3311259999999994
	.quad	0x40229834b0e1b4bb              # double 9.2972769999999993
	.quad	0x400e2af78feef5ed              # double 3.7709800000000002
	.quad	0x4015d9c5e6ff7dfa              # double 5.462669
	.quad	0x40165306e5cd4ed3              # double 5.5810810000000002
	.quad	0x401ee5e785b5b707              # double 7.7245160000000003
	.quad	0x400c953c579f2346              # double 3.5728689999999999
	.quad	0x4015faf7d30ad46f              # double 5.4950859999999997
	.quad	0x3fcd521144cbe1eb              # double 0.22906699999999999
	.quad	0x402333e878fabda1              # double 9.6013830000000002
	.quad	0x4020730a2ca9ac36              # double 8.2246869999999994
	.quad	0x401bf98e97071822              # double 6.9937079999999998
	.quad	0x401cd9da597d49d8              # double 7.2127470000000002
	.quad	0x400883e9ea140571              # double 3.0644110000000002
	.quad	0x40141990f301eabc              # double 5.0249670000000002
	.quad	0x4023db7dc7abfb9c              # double 9.9286940000000001
	.quad	0x401fba2595bbbe88              # double 7.9317840000000003
	.quad	0x3fee2d905c033615              # double 0.94306199999999996
	.quad	0x3ff9d885d31337eb              # double 1.615362
	.quad	0x3ff100d6f544bb1b              # double 1.062705
	.quad	0x400eb1d4f9c1f85d              # double 3.8368319999999998
	.quad	0x40175306a2b17050              # double 5.83108
	.quad	0x401a62aae297396d              # double 6.596355
	.quad	0x40138d698fe69271              # double 4.8880980000000003
	.quad	0x4018a14d72799a20              # double 6.1575220000000002
	.quad	0x4017dd7ecbb7f9d7              # double 5.9663040000000001
	.quad	0x400ced0917d6b65b              # double 3.6157400000000002
	.quad	0x401a7d0678c0053e              # double 6.6220949999999998
	.quad	0x3ffab1fddebd9019              # double 1.668455
	.quad	0x402386e3b46fdeb5              # double 9.7634559999999996
	.quad	0x40134f327aa68f4b              # double 4.8273409999999997
	.quad	0x4020f1522a6f3f53              # double 8.47133
	.quad	0x40213ce358298cc1              # double 8.6189219999999995
	.quad	0x401c1d6b65a9a805              # double 7.0287300000000004
	.quad	0x401f9e2b8c75c4a8              # double 7.9044629999999997
	.quad	0x3ff111276fb09204              # double 1.0666880000000001
	.quad	0x401dad1c7de5082d              # double 7.419054
	.quad	0x400c67f5e84f0953              # double 3.5507620000000002
	.quad	0x400b96933a0407cc              # double 3.4485229999999998
	.quad	0x4016743d03968d76              # double 5.6135140000000003
	.quad	0x401fbd755bccaf71              # double 7.9350180000000003
	.quad	0x4004040b780346dc              # double 2.5019749999999998
	.quad	0x3fdf22b3892ee84b              # double 0.48649300000000001
	.quad	0x3fe49eadd590c0ad              # double 0.64437
	.quad	0x4021c221c8a7a41e              # double 8.8791639999999994
	.quad	0x402308427418d691              # double 9.5161320000000007
	.quad	0x4011eca1cef240fb              # double 4.4810860000000003
	.quad	0x402305b5525cc426              # double 9.5111489999999996
	.quad	0x4022c417225b749b              # double 9.3829890000000002
	.quad	0x4015a780baa582dc              # double 5.4135770000000001
	.quad	0x4001dc968943e100              # double 2.2327089999999998
	.quad	0x40236ef177a7008a              # double 9.7166859999999993
	.quad	0x401d37f737da61e1              # double 7.3046540000000002
	.quad	0x401c33da2f8bdec6              # double 7.050637
	.quad	0x4003273de1e2de87              # double 2.394161
	.quad	0x40109a7b4e54f7a9              # double 4.1508609999999999
	.quad	0x4023511bc5586445              # double 9.6584149999999997
	.quad	0x4012c6256366d7a5              # double 4.6935019999999996
	.quad	0x4023d61c36976bc2              # double 9.9181840000000001
	.quad	0x4002794855da2728              # double 2.3092199999999998
	.quad	0x3fc0370cdc8754f3              # double 0.12667999999999999
	.quad	0x3fc704790b849881              # double 0.17982400000000001
	.quad	0x40237a708ede54b5              # double 9.7391400000000007
	.quad	0x40109da0168b5cc0              # double 4.153931
	.quad	0x401ad66490a350d3              # double 6.7093680000000004
	.quad	0x401384794ea07703              # double 4.8793689999999996
	.quad	0x402398e3ac0c62e5              # double 9.7986120000000003
	.quad	0x401a5450efdc9c4e              # double 6.5823400000000003
	.quad	0x400b5d188f42fe82              # double 3.4204569999999999
	.quad	0x4023e0c4156e264e              # double 9.9389959999999995
	.quad	0x3ff338151a437825              # double 1.201192
	.quad	0x400f206961c36977              # double 3.8908260000000001
	.quad	0x400a4e831ad2135e              # double 3.2883360000000001
	.quad	0x400d66266fd651b1              # double 3.6748780000000001
	.quad	0x4010728e0c9d9d34              # double 4.1118699999999997
	.quad	0x401ef16b97fe8ee7              # double 7.7357620000000002
	.quad	0x4019ae9d94d0dcfd              # double 6.4205230000000002
	.quad	0x4009d2e9ccb7d417              # double 3.2279849999999999
	.quad	0x401144477ff151e7              # double 4.3166789999999997
	.quad	0x4013c02e6644d877              # double 4.9376769999999999
	.quad	0x4018c1d0c8041030              # double 6.189273
	.quad	0x401140fe8ab4fa48              # double 4.3134709999999998
	.quad	0x3fff81322f2734f8              # double 1.969042
	.quad	0x4000c85c24c404a7              # double 2.0978319999999999
	.quad	0x400b6ae9680e0653              # double 3.427203
	.quad	0x4019d6bebe1650a4              # double 6.4597119999999997
	.quad	0x401ef99c7bcc2939              # double 7.7437610000000001
	.quad	0x400d6a5614df8b15              # double 3.6769219999999998
	.quad	0x401466a055757d5b              # double 5.1002210000000003
	.quad	0x400e89b738e6d15b              # double 3.8172440000000001
	.quad	0x4008c202539756c9              # double 3.0947309999999999
	.quad	0x400a76df3f961805              # double 3.3080430000000001
	.quad	0x400cd1fa333764f1              # double 3.602528
	.quad	0x4018be4abe6a337b              # double 6.1858320000000004
	.quad	0x402164dfefbf401c              # double 8.6970209999999994
	.quad	0x400a53d20f2becee              # double 3.2909280000000001
	.quad	0x3fe403f91e646f15              # double 0.62548499999999996
	.quad	0x400c3cdbbe0157ef              # double 3.5297160000000001
	.quad	0x401c04666ec9e237              # double 7.0042970000000002
	.quad	0x40152abc947064ed              # double 5.2917350000000001
	.quad	0x400f0c55432873bd              # double 3.8810220000000002
	.quad	0x400593bd9cae2110              # double 2.697139
	.quad	0x4021b5ea67e846a6              # double 8.8553040000000003
	.quad	0x401f4a500d5e8d54              # double 7.8225709999999999
	.quad	0x4000c9dbec2480e9              # double 2.0985640000000001
	.quad	0x3ff69757d5a9eb20              # double 1.4119489999999999
	.quad	0x400432817763e4ac              # double 2.524661
	.quad	0x3fd1d4b2745bf26f              # double 0.27860699999999999
	.quad	0x40200f69014b599b              # double 8.0300980000000006
	.quad	0x40131ac9f2fdb8fe              # double 4.7761610000000001
	.quad	0x4022b3899392189c              # double 9.3506590000000002
	.quad	0x4020fb7457c0b136              # double 8.4911220000000007
	.quad	0x3fd2d7b2031ceaf2              # double 0.29441499999999998
	.quad	0x40195718a86d71f3              # double 6.3350549999999997
	.quad	0x401b2e525892684d              # double 6.7952360000000001
	.quad	0x4003510ba6266fd6              # double 2.4145729999999999
	.quad	0x3ff7150331e3a7db              # double 1.4426300000000001
	.quad	0x4022ebf0bae89eba              # double 9.4608209999999993
	.quad	0x3ff4cf893faf4278              # double 1.3006679999999999
	.quad	0x3ffe624031487768              # double 1.898987
	.quad	0x3fef0e1932d6ece1              # double 0.97047099999999997
	.quad	0x400ad23810e88590              # double 3.352646
	.quad	0x400b0165907d9125              # double 3.3756819999999998
	.quad	0x40211ff865d7cb2e              # double 8.5624420000000008
	.quad	0x4017bcfc3f811f4f              # double 5.9345559999999997
	.quad	0x400e89e1b089a027              # double 3.8173249999999999
	.quad	0x3fd936544fe36d22              # double 0.39394099999999999
	.quad	0x400a2ca89fc6da45              # double 3.2718060000000002
	.quad	0x40236dd8b60f1b26              # double 9.7145440000000001
	.quad	0x400c9b4677b395c4              # double 3.5758179999999999
	.quad	0x401be3e1c9b41398              # double 6.9725409999999997
	.quad	0x40068e09784ec637              # double 2.8193540000000001
	.quad	0x401a5b8a5ce5b424              # double 6.5893949999999997
	.quad	0x40177f972474538f              # double 5.8746
	.quad	0x40105e93e1c9b414              # double 4.0923610000000004
	.quad	0x401a5ce7cd035372              # double 6.5907280000000004
	.quad	0x402397c7e6b3fea0              # double 9.7964470000000006
	.quad	0x4001c43aa79bbadc              # double 2.220815
	.quad	0x4021f351deefe500              # double 8.9752340000000004
	.quad	0x3fedd058dde7a744              # double 0.93168300000000003
	.quad	0x400bf3c579f23465              # double 3.4940289999999998
	.quad	0x400fc6defc7a3982              # double 3.972105
	.quad	0x401fad50ebaade65              # double 7.9192539999999995
	.quad	0x3fdb709b738e6d16              # double 0.42874800000000002
	.quad	0x4020bdd15f02c4d6              # double 8.3707379999999993
	.quad	0x401389841aac53b1              # double 4.8842930000000004
	.quad	0x40057d8409e55c10              # double 2.6862870000000001
	.quad	0x4022debf444e0daa              # double 9.4350529999999999
	.quad	0x401bef961804d984              # double 6.9839710000000004
	.quad	0x401137460242d05f              # double 4.3039779999999999
	.quad	0x40130933e35c5b4b              # double 4.7589870000000003
	.quad	0x4019d48beb5b2d4d              # double 6.4575649999999998
	.quad	0x4015cbc7b45f17be              # double 5.4490040000000004
	.quad	0x400a95bff04577d9              # double 3.3231199999999999
	.quad	0x400dbedb7281fd9c              # double 3.7181920000000002
	.quad	0x3ff06ae4b0186120              # double 1.026097
	.quad	0x3fd21697f1f9ad00              # double 0.28262900000000002
	.quad	0x4021c780fdc1615f              # double 8.8896560000000004
	.quad	0x401dff26aec0724b              # double 7.4991709999999995
	.quad	0x3fc05b7cfe586013              # double 0.12779199999999999
	.quad	0x3ffe0be5109070fc              # double 1.877904
	.quad	0x401bd5fd04a2fcf0              # double 6.9589730000000003
	.quad	0x400b4481f53825e1              # double 3.4084509999999999
	.quad	0x401b36f6d7625205              # double 6.8036760000000003
	.quad	0x401f4ee392e1ef74              # double 7.8270400000000002
	.quad	0x3fdf58afc47e49b2              # double 0.489788
	.quad	0x401b867d77fae361              # double 6.8813380000000004
	.quad	0x40185ac2df0d4131              # double 6.0886339999999999
	.quad	0x400bfe657b84db9c              # double 3.4992169999999998
	.quad	0x3ffaf4906034f3fe              # double 1.6847080000000001
	.quad	0x401fcda7b0b39192              # double 7.9508349999999997
	.quad	0x402067d75e2046c7              # double 8.2028149999999993
	.quad	0x4017db4a66559f6f              # double 5.9641510000000002
	.quad	0x400792cbea4ebdd3              # double 2.9466779999999999
	.quad	0x4020c9d909f1f14a              # double 8.3942340000000009
	.quad	0x40105ddb9841aac5              # double 4.0916579999999998
	.quad	0x4009f6744b2b777d              # double 3.245339
	.quad	0x3feca7e52157689d              # double 0.89549500000000004
	.quad	0x40205b9a5a89b952              # double 8.1789120000000004
	.quad	0x4020b93ec460ed81              # double 8.3618070000000007
	.quad	0x400e58d9b5e95b79              # double 3.7933840000000001
	.quad	0x4021227fa1a0cf18              # double 8.56738
	.quad	0x4010ba43bb40b34e              # double 4.1818989999999996
	.quad	0x40190576cce5f740              # double 6.2553359999999998
	.quad	0x4004561c36976bc2              # double 2.542046
	.quad	0x400110af5fd47bee              # double 2.1331470000000001
	.quad	0x4010df86a098915c              # double 4.2182870000000001
	.quad	0x40128f8a0902de01              # double 4.6401750000000002
	.quad	0x3ff5b8316a055758              # double 1.357469
	.quad	0x3fa0e6299524bfd3              # double 0.033006000000000001
	.quad	0x401f92c98e53eb3a              # double 7.8933470000000003
	.quad	0x4002e25e99e94ab2              # double 2.3605320000000001
	.quad	0x3ff52542e557de0d              # double 1.3215969999999999
	.quad	0x3ff8336049ecb31c              # double 1.512543
	.quad	0x401dc8f2e05ccc8a              # double 7.4462390000000003
	.quad	0x401ab83947496aad              # double 6.6799059999999999
	.quad	0x40092cf9e3864cb6              # double 3.1469610000000001
	.quad	0x3faf50c1b97353b5              # double 0.061163000000000002
	.quad	0x400a0b9dc2f405f7              # double 3.2556720000000001
	.quad	0x402381d4f9c1f85d              # double 9.7535779999999991
	.quad	0x40193776c4827b70              # double 6.3041640000000001
	.quad	0x4021f2a2e3c536d6              # double 8.9738989999999994
	.quad	0x4019276d97b30f8c              # double 6.2885039999999996
	.quad	0x40030bd66277c45d              # double 2.3807800000000001
	.quad	0x402377cac8e68e3f              # double 9.733969
	.quad	0x401d5f444e0daa0d              # double 7.3430340000000003
	.quad	0x40219391d57ff9b5              # double 8.7882219999999993
	.quad	0x40082986fcdee350              # double 3.0202770000000001
	.quad	0x3ffe1daceee0f3cb              # double 1.8822449999999999
	.quad	0x401e330e3cd9a522              # double 7.5498589999999997
	.quad	0x400649320d9945b7              # double 2.7857400000000001
	.quad	0x401e4e69ad42c3ca              # double 7.5765750000000001
	.quad	0x3fefbe0bd44998d0              # double 0.99194899999999997
	.size	.L__constant_3500xf64, 28000

	.section	".note.GNU-stack","",@progbits
