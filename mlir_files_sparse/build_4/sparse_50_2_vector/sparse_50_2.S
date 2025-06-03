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
	.quad	0x414997a9950941c8              # double 3354451.1643449999
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
	.quad	5000                            # 0x1388
	.quad	1                               # 0x1
	.quad	100                             # 0x64
.LCPI3_1:
	.quad	0                               # 0x0
	.quad	5000                            # 0x1388
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
	lui	a7, %hi(.L__constant_5000xindex)
	addi	a7, a7, %lo(.L__constant_5000xindex)
	lui	t0, %hi(.L__constant_5000xf64)
	addi	t0, t0, %lo(.L__constant_5000xf64)
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
	.quad	38                              # 0x26
	.quad	38                              # 0x26
	.quad	81                              # 0x51
	.quad	81                              # 0x51
	.quad	124                             # 0x7c
	.quad	124                             # 0x7c
	.quad	171                             # 0xab
	.quad	171                             # 0xab
	.quad	204                             # 0xcc
	.quad	204                             # 0xcc
	.quad	244                             # 0xf4
	.quad	244                             # 0xf4
	.quad	283                             # 0x11b
	.quad	283                             # 0x11b
	.quad	327                             # 0x147
	.quad	327                             # 0x147
	.quad	361                             # 0x169
	.quad	361                             # 0x169
	.quad	399                             # 0x18f
	.quad	399                             # 0x18f
	.quad	440                             # 0x1b8
	.quad	440                             # 0x1b8
	.quad	484                             # 0x1e4
	.quad	484                             # 0x1e4
	.quad	522                             # 0x20a
	.quad	522                             # 0x20a
	.quad	559                             # 0x22f
	.quad	559                             # 0x22f
	.quad	596                             # 0x254
	.quad	596                             # 0x254
	.quad	637                             # 0x27d
	.quad	637                             # 0x27d
	.quad	675                             # 0x2a3
	.quad	675                             # 0x2a3
	.quad	719                             # 0x2cf
	.quad	719                             # 0x2cf
	.quad	763                             # 0x2fb
	.quad	763                             # 0x2fb
	.quad	801                             # 0x321
	.quad	801                             # 0x321
	.quad	836                             # 0x344
	.quad	836                             # 0x344
	.quad	872                             # 0x368
	.quad	872                             # 0x368
	.quad	913                             # 0x391
	.quad	913                             # 0x391
	.quad	953                             # 0x3b9
	.quad	953                             # 0x3b9
	.quad	996                             # 0x3e4
	.quad	996                             # 0x3e4
	.quad	1037                            # 0x40d
	.quad	1037                            # 0x40d
	.quad	1076                            # 0x434
	.quad	1076                            # 0x434
	.quad	1117                            # 0x45d
	.quad	1117                            # 0x45d
	.quad	1156                            # 0x484
	.quad	1156                            # 0x484
	.quad	1194                            # 0x4aa
	.quad	1194                            # 0x4aa
	.quad	1238                            # 0x4d6
	.quad	1238                            # 0x4d6
	.quad	1279                            # 0x4ff
	.quad	1279                            # 0x4ff
	.quad	1323                            # 0x52b
	.quad	1323                            # 0x52b
	.quad	1362                            # 0x552
	.quad	1362                            # 0x552
	.quad	1407                            # 0x57f
	.quad	1407                            # 0x57f
	.quad	1451                            # 0x5ab
	.quad	1451                            # 0x5ab
	.quad	1493                            # 0x5d5
	.quad	1493                            # 0x5d5
	.quad	1530                            # 0x5fa
	.quad	1530                            # 0x5fa
	.quad	1562                            # 0x61a
	.quad	1562                            # 0x61a
	.quad	1601                            # 0x641
	.quad	1601                            # 0x641
	.quad	1646                            # 0x66e
	.quad	1646                            # 0x66e
	.quad	1689                            # 0x699
	.quad	1689                            # 0x699
	.quad	1729                            # 0x6c1
	.quad	1729                            # 0x6c1
	.quad	1772                            # 0x6ec
	.quad	1772                            # 0x6ec
	.quad	1813                            # 0x715
	.quad	1813                            # 0x715
	.quad	1849                            # 0x739
	.quad	1849                            # 0x739
	.quad	1889                            # 0x761
	.quad	1889                            # 0x761
	.quad	1925                            # 0x785
	.quad	1925                            # 0x785
	.quad	1963                            # 0x7ab
	.quad	1963                            # 0x7ab
	.quad	1999                            # 0x7cf
	.quad	1999                            # 0x7cf
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_1999xindex,@object # @__constant_1999xindex
	.p2align	6, 0x0
.L__constant_1999xindex:
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
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
	.quad	54                              # 0x36
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
	.quad	84                              # 0x54
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
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
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
	.quad	38                              # 0x26
	.quad	40                              # 0x28
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
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
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
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
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
	.quad	0                               # 0x0
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
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	38                              # 0x26
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
	.quad	68                              # 0x44
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
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
	.quad	56                              # 0x38
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
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
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
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
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
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
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
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
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
	.quad	62                              # 0x3e
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
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
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
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
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
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	16                              # 0x10
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
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
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
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
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
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
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
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
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
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
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
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
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
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
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
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
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
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
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
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
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
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
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
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
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
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
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
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
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
	.quad	32                              # 0x20
	.quad	36                              # 0x24
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
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
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
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
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
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
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
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
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
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
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
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	6                               # 0x6
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
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
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
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
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
	.quad	98                              # 0x62
	.quad	6                               # 0x6
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
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
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
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	24                              # 0x18
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
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
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
	.quad	6                               # 0x6
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
	.quad	34                              # 0x22
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
	.quad	26                              # 0x1a
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
	.quad	56                              # 0x38
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
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
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
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
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
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	16                              # 0x10
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
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
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
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	6                               # 0x6
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
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	10                              # 0xa
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
	.quad	46                              # 0x2e
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
	.quad	6                               # 0x6
	.quad	8                               # 0x8
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
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
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
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
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
	.size	.L__constant_1999xindex, 15992

	.type	.L__constant_1999xf64,@object   # @__constant_1999xf64
	.p2align	6, 0x0
.L__constant_1999xf64:
	.quad	0x400d7a059a73b42d              # double 3.6845810000000001
	.quad	0x400419c0ebedfa44              # double 2.512575
	.quad	0x40145154866a11ed              # double 5.0794240000000004
	.quad	0x4000692ff4ba51a0              # double 2.051361
	.quad	0x4010af1a5ca29846              # double 4.1709990000000001
	.quad	0x4010bd3aa369fcf4              # double 4.1847940000000001
	.quad	0x4017154bcf0b6b6e              # double 5.770797
	.quad	0x4020d2326e115593              # double 8.4105410000000003
	.quad	0x400e0f6512a94ff0              # double 3.757517
	.quad	0x401d13e100607810              # double 7.2694130000000001
	.quad	0x4010aaec8d5c7475              # double 4.1669179999999999
	.quad	0x401e76b50b0f27bb              # double 7.6159249999999998
	.quad	0x3ff050092ccf6be3              # double 1.0195399999999999
	.quad	0x4023b984e3ffef39              # double 9.8623419999999999
	.quad	0x401a2c0ce91c8eac              # double 6.543018
	.quad	0x40224832db1e9f27              # double 9.1410129999999992
	.quad	0x3fe4883126e978d5              # double 0.641625
	.quad	0x3ff528f29d40ee07              # double 1.322497
	.quad	0x4002b4562e09fe87              # double 2.3380550000000002
	.quad	0x401b404e618ce2d2              # double 6.812799
	.quad	0x400292513b5bf6a1              # double 2.3214440000000001
	.quad	0x4018c102ff8ec0f9              # double 6.1884880000000004
	.quad	0x401705d6bebe1651              # double 5.7557020000000003
	.quad	0x400c95818c5c9a35              # double 3.5730010000000001
	.quad	0x3fff4ca0c282c6ef              # double 1.9562079999999999
	.quad	0x402245d851654d62              # double 9.1364160000000005
	.quad	0x40206154c985f06f              # double 8.1900999999999993
	.quad	0x4015d4c55432873c              # double 5.4577840000000002
	.quad	0x4011a40d90e23af3              # double 4.4102079999999999
	.quad	0x400d27c8d195896a              # double 3.6444260000000002
	.quad	0x4023b1a4df47f994              # double 9.8469610000000002
	.quad	0x4011cd2d87f88766              # double 4.4503690000000002
	.quad	0x4017493d102bc72e              # double 5.8215219999999999
	.quad	0x401bc107b784662c              # double 6.9385060000000003
	.quad	0x401b4dcebfec13ba              # double 6.8259840000000001
	.quad	0x40067dff3f0fe048              # double 2.8115220000000001
	.quad	0x3ff982938de6ddf0              # double 1.594379
	.quad	0x3fe8f329c347e8cd              # double 0.77968300000000001
	.quad	0x4023671f57b41bfc              # double 9.7014110000000002
	.quad	0x401fec343b70ef56              # double 7.9806679999999997
	.quad	0x40210b84ba0e8427              # double 8.5224969999999995
	.quad	0x4008e1a261bf37b9              # double 3.1101730000000001
	.quad	0x4014c87d6f976790              # double 5.1957909999999998
	.quad	0x40216f3cf70153bd              # double 8.7172619999999998
	.quad	0x4023a0a7a41e57da              # double 9.8137790000000003
	.quad	0x4013228522ea0fd4              # double 4.7837110000000003
	.quad	0x401658140dd3fe19              # double 5.5860139999999996
	.quad	0x40239c1bb8c32a8d              # double 9.8048990000000006
	.quad	0x3ffb8271fff79c84              # double 1.719347
	.quad	0x40221676640a6b94              # double 9.0438720000000003
	.quad	0x4011416c61522a6f              # double 4.3138899999999998
	.quad	0x400d159ddc1e7968              # double 3.6355550000000001
	.quad	0x4015eba16e7a311f              # double 5.4801080000000004
	.quad	0x40118424e5929670              # double 4.3790469999999999
	.quad	0x400138a4c1ebc83b              # double 2.1526580000000002
	.quad	0x3fccb7995ee136e7              # double 0.224353
	.quad	0x3ffacfffbce4217d              # double 1.675781
	.quad	0x4010f9a5a89b951c              # double 4.2437959999999997
	.quad	0x4021cbedfa43fe5d              # double 8.8983000000000008
	.quad	0x4017944bf4cb1898              # double 5.8948210000000003
	.quad	0x401638887229e908              # double 5.5552080000000004
	.quad	0x402127903211cb04              # double 8.5772720000000006
	.quad	0x400aca41a261bf38              # double 3.3487580000000001
	.quad	0x401bf38a7e73a366              # double 6.9878330000000002
	.quad	0x401e546f15619115              # double 7.5824550000000003
	.quad	0x402375477bbf93ff              # double 9.7290609999999997
	.quad	0x40117f8bdec5f395              # double 4.3745570000000003
	.quad	0x4016f78316a05575              # double 5.7417109999999996
	.quad	0x4014aec918e325d5              # double 5.1706890000000003
	.quad	0x4018d925fe974a34              # double 6.212059
	.quad	0x40209dd031055b8a              # double 8.3082290000000008
	.quad	0x40127146e4c0df59              # double 4.6106220000000002
	.quad	0x4019b4484944ed70              # double 6.4260570000000001
	.quad	0x400f9bb0e5e67946              # double 3.9510209999999999
	.quad	0x3ff95c75818c5c9a              # double 1.585073
	.quad	0x40136859c8c9320e              # double 4.8519050000000004
	.quad	0x40101d4024b33db0              # double 4.0285650000000004
	.quad	0x4013e8b220791c4c              # double 4.9772420000000004
	.quad	0x3ff5a7e846a5d6bf              # double 1.3534930000000001
	.quad	0x401daf2e8c0485a1              # double 7.4210760000000002
	.quad	0x401ea7353b4b2fa9              # double 7.6632889999999997
	.quad	0x400d6189374bc6a8              # double 3.672625
	.quad	0x4023db3bd9cae211              # double 9.9281909999999999
	.quad	0x401176fc158fb43e              # double 4.3661960000000004
	.quad	0x401e9c73abc94706              # double 7.6527849999999997
	.quad	0x4014bded288ce704              # double 5.1854750000000003
	.quad	0x402340e60807357e              # double 9.6267549999999993
	.quad	0x3fbf2ecf20642396              # double 0.121808
	.quad	0x402020e2e2b8c75c              # double 8.0642309999999994
	.quad	0x401224638c975297              # double 4.5355359999999996
	.quad	0x40197185cee17a03              # double 6.360862
	.quad	0x4020b04cad57bc7f              # double 8.3443349999999992
	.quad	0x3feb204af922962d              # double 0.847692
	.quad	0x3ffd5dd5d3dc8b87              # double 1.8354090000000001
	.quad	0x4015b955b4677b39              # double 5.4309909999999997
	.quad	0x40080b29e4d5d80e              # double 3.0054509999999999
	.quad	0x40224626916440f2              # double 9.1370129999999996
	.quad	0x3ff37c64345cfedf              # double 1.2178690000000001
	.quad	0x401605f3519bd406              # double 5.5058109999999996
	.quad	0x401e585510d38cda              # double 7.5862619999999996
	.quad	0x401ea9e7b80a9de9              # double 7.6659230000000002
	.quad	0x401eefc6da448494              # double 7.7341569999999997
	.quad	0x4019bc753e707e17              # double 6.4340409999999997
	.quad	0x401b2bda5119ce07              # double 6.7928249999999997
	.quad	0x401db24dd2f1a9fc              # double 7.4241250000000001
	.quad	0x4023ebcc8de2ac32              # double 9.9605449999999998
	.quad	0x40182414a4d2b2c0              # double 6.0352350000000001
	.quad	0x3fff3b0b39192642              # double 1.9519150000000001
	.quad	0x402149904b3c3e75              # double 8.6436790000000006
	.quad	0x402142f294dd7236              # double 8.6307569999999991
	.quad	0x40227372c5197a25              # double 9.2254850000000008
	.quad	0x3ffd3e07a28bb0a3              # double 1.827644
	.quad	0x400154bd76ee73e7              # double 2.1663770000000002
	.quad	0x401dcf8769ec2ce4              # double 7.4526649999999997
	.quad	0x4022f0eb0318b934              # double 9.4705429999999992
	.quad	0x4023c6faa4766c6e              # double 9.8886310000000002
	.quad	0x4001313ad5bee3d6              # double 2.149038
	.quad	0x40227f01fb82c2bd              # double 9.2480619999999991
	.quad	0x3fffc75d56f32bdc              # double 1.986173
	.quad	0x4015832d2bb23572              # double 5.3781020000000002
	.quad	0x3ff6ae4b018611fd              # double 1.4175519999999999
	.quad	0x40213c4f3ba775fb              # double 8.6177919999999997
	.quad	0x401f1f1dc50ce4eb              # double 7.7803870000000001
	.quad	0x401356b441bb8c33              # double 4.8346720000000003
	.quad	0x40169932d6ece13f              # double 5.6496079999999997
	.quad	0x402001ce075f6fd2              # double 8.0035249999999998
	.quad	0x4021f211cb039ef1              # double 8.9727920000000001
	.quad	0x3fe978140dd3fe19              # double 0.79590799999999995
	.quad	0x3fec067ad8e43244              # double 0.87579099999999998
	.quad	0x3fec16c82e019b0b              # double 0.87778100000000003
	.quad	0x4013c07faa044ae8              # double 4.9379869999999997
	.quad	0x4020aad948dc11e4              # double 8.3336889999999996
	.quad	0x4004a1ee675147f1              # double 2.5790679999999999
	.quad	0x4018ca47ecfe9b7c              # double 6.19754
	.quad	0x4019097635e7429a              # double 6.2592400000000001
	.quad	0x40204b2af145521a              # double 8.1468120000000006
	.quad	0x4020f1d4b6a619db              # double 8.4723260000000007
	.quad	0x401c656861e92924              # double 7.0990310000000001
	.quad	0x3ffea9b6b2af1455              # double 1.916434
	.quad	0x40140e88df37329c              # double 5.0141939999999998
	.quad	0x401fd9741d084e83              # double 7.9623569999999999
	.quad	0x3ffa0be7296f6513              # double 1.6279060000000001
	.quad	0x4008cda3c21187e8              # double 3.1004100000000001
	.quad	0x3ff70cf1800a7c5b              # double 1.4406600000000001
	.quad	0x401eac3c18b502ac              # double 7.6681980000000003
	.quad	0x3fd6e7d9988d2a20              # double 0.35790100000000002
	.quad	0x4019d577963992c9              # double 6.4584640000000002
	.quad	0x4017fd86a8fc0d2c              # double 5.9975839999999998
	.quad	0x3fffcd0dcfcc5b8e              # double 1.9875620000000001
	.quad	0x4020029aa1d755bd              # double 8.0050860000000004
	.quad	0x401c8009f623076c              # double 7.125038
	.quad	0x4009ef08cc575c07              # double 3.2417159999999998
	.quad	0x402204f227d028a2              # double 9.0096600000000002
	.quad	0x401ac2df9378ee28              # double 6.6903059999999996
	.quad	0x400aee0221426fe7              # double 3.366215
	.quad	0x40100a0407cc7d1c              # double 4.0097810000000003
	.quad	0x3fe29ae4f3343fa3              # double 0.58140800000000004
	.quad	0x401fd0b4e11dbca9              # double 7.9538149999999996
	.quad	0x4011934a01abd1ab              # double 4.3938370000000004
	.quad	0x3fd5e631f8a0902e              # double 0.34217500000000001
	.quad	0x401871be2b4959e6              # double 6.1110769999999999
	.quad	0x401c640a6b93ccd1              # double 7.097696
	.quad	0x402087240fa9c12f              # double 8.2639469999999999
	.quad	0x40185b530ced4e4d              # double 6.0891840000000004
	.quad	0x4015c0da5daf07c0              # double 5.4383330000000001
	.quad	0x4020037718655193              # double 8.0067679999999992
	.quad	0x40096f4d7add15f0              # double 3.1793469999999999
	.quad	0x400d793ff25e56cd              # double 3.6842039999999998
	.quad	0x4003d78897e99631              # double 2.4802409999999999
	.quad	0x40199c8c0ce91c8f              # double 6.4028780000000003
	.quad	0x4023bdb1422ccb3a              # double 9.8704929999999997
	.quad	0x401493e63e8dda49              # double 5.1444330000000003
	.quad	0x3ffe6c02f2f98740              # double 1.90137
	.quad	0x4006212c6ac215ba              # double 2.7661980000000002
	.quad	0x40223a63736cdf26              # double 9.1140399999999993
	.quad	0x3fb33ce63a5c1c61              # double 0.075148000000000006
	.quad	0x3ff2d48238540464              # double 1.176882
	.quad	0x40124b0e5e679464              # double 4.5732970000000002
	.quad	0x401fa6d2674080fa              # double 7.9129120000000004
	.quad	0x40180dd377e1b8ed              # double 6.0135019999999999
	.quad	0x4020e2a6b0d95140              # double 8.4426780000000008
	.quad	0x3fb128bf3bea91da              # double 0.067028000000000004
	.quad	0x40182a77e5eaab04              # double 6.0414729999999999
	.quad	0x3fdbc32a8c9b8455              # double 0.43378699999999998
	.quad	0x402256f7c243dccf              # double 9.1698590000000006
	.quad	0x3fe8c6e8f29d40ee              # double 0.774281
	.quad	0x4012f75ff609dcf9              # double 4.7415770000000004
	.quad	0x40135bb4d48882f1              # double 4.8395570000000001
	.quad	0x4015e08aefb2aae3              # double 5.4692800000000004
	.quad	0x40208cf893faf428              # double 8.2753340000000009
	.quad	0x3ffc935fc3b4f616              # double 1.7859799999999999
	.quad	0x40018b8a5ce5b424              # double 2.1931349999999998
	.quad	0x4020c27b2cc70868              # double 8.3798460000000006
	.quad	0x3ff52102795703f3              # double 1.320559
	.quad	0x40208ea11ec918e3              # double 8.2785729999999997
	.quad	0x3ffb2856605ee569              # double 1.6973480000000001
	.quad	0x40231a26a22b3893              # double 9.5510760000000001
	.quad	0x4012932c1f42bb66              # double 4.6437229999999996
	.quad	0x4021c06a098915be              # double 8.8758090000000003
	.quad	0x400fdc90c4dec1c2              # double 3.9826980000000001
	.quad	0x4013f9220ff54089              # double 4.9932939999999997
	.quad	0x401bc37e2c55c960              # double 6.9409109999999998
	.quad	0x3ffba0642396073e              # double 1.726658
	.quad	0x400cef533f42352f              # double 3.6168580000000001
	.quad	0x4022a5d8b60f1b26              # double 9.3239190000000001
	.quad	0x401efb1af3a14cec              # double 7.7452199999999998
	.quad	0x401733947496aad2              # double 5.8003710000000002
	.quad	0x40220a72ead9274e              # double 9.0204079999999998
	.quad	0x400ed1feeb2d0a24              # double 3.8525369999999999
	.quad	0x4012341bb8c32a8d              # double 4.5508870000000003
	.quad	0x401ad878fabda0e0              # double 6.7113990000000001
	.quad	0x3fc2145953586ca9              # double 0.14124600000000001
	.quad	0x40130a26e5471716              # double 4.7599140000000002
	.quad	0x400634289118c198              # double 2.775468
	.quad	0x401dfc2bd7f51efb              # double 7.4962609999999996
	.quad	0x401dc4bdba0a5269              # double 7.4421299999999997
	.quad	0x40132ea9e6eeb702              # double 4.7955699999999997
	.quad	0x40029e963dc486ad              # double 2.3274349999999999
	.quad	0x400f53910c2c5e2d              # double 3.9158040000000001
	.quad	0x402043b01c92ddbe              # double 8.1322030000000005
	.quad	0x401705ee99a62ed3              # double 5.7557929999999997
	.quad	0x401d61a11233df2b              # double 7.3453410000000003
	.quad	0x40044918e325d4a6              # double 2.5356920000000001
	.quad	0x401edcb10342aa9f              # double 7.7155189999999995
	.quad	0x3fe67f993d5347a6              # double 0.70307600000000003
	.quad	0x3fddb5a63f9a49c3              # double 0.46421200000000001
	.quad	0x40180baa9b499d02              # double 6.011393
	.quad	0x4020b126a65cf67b              # double 8.3459979999999998
	.quad	0x400e332df505d0fa              # double 3.7749899999999998
	.quad	0x4007095421c04428              # double 2.8795549999999999
	.quad	0x3fe88d4562e09fe8              # double 0.76724499999999995
	.quad	0x4019943d03968d76              # double 6.3947640000000003
	.quad	0x3feb163dc486ad2e              # double 0.84646500000000002
	.quad	0x401b6b17ce52deca              # double 6.8545829999999999
	.quad	0x3ffd86b7aa25d8d8              # double 1.8453900000000001
	.quad	0x401c379357603926              # double 7.0542730000000002
	.quad	0x40197b59146e4c0e              # double 6.370457
	.quad	0x401416cb966be7b0              # double 5.0222610000000003
	.quad	0x4018243c7d5ed070              # double 6.0353870000000001
	.quad	0x3ff7e90257c914b1              # double 1.4943869999999999
	.quad	0x4018b99fe43675de              # double 6.1812740000000002
	.quad	0x40134b1b79d909f2              # double 4.8233470000000001
	.quad	0x3ffad99cbee807bc              # double 1.6781280000000001
	.quad	0x4012f82cf52b90a8              # double 4.7423590000000004
	.quad	0x4021e6b6bf444e0e              # double 8.9506130000000006
	.quad	0x40136dddb1209edc              # double 4.857291
	.quad	0x3ff5c11a11233df3              # double 1.3596440000000001
	.quad	0x401edae3a3a8e714              # double 7.7137589999999996
	.quad	0x401f0ed288ce703b              # double 7.764475
	.quad	0x4015aae3608d0892              # double 5.4168830000000003
	.quad	0x40227243fe5c91d1              # double 9.2231749999999995
	.quad	0x4018373a365cb35f              # double 6.0539329999999998
	.quad	0x401711deefe4ffc9              # double 5.7674519999999996
	.quad	0x4020ff11f926c7eb              # double 8.4981840000000002
	.quad	0x401c25069a4df480              # double 7.0361580000000004
	.quad	0x4023393293d102bc              # double 9.6117139999999992
	.quad	0x401947542a23bff9              # double 6.3196570000000003
	.quad	0x400ae46e8f29d40f              # double 3.3615390000000001
	.quad	0x3f97af20ea5b530d              # double 0.023129
	.quad	0x4016dcff64cf8d71              # double 5.7158179999999996
	.quad	0x402180705425f202              # double 8.7508569999999999
	.quad	0x40049001d5c31594              # double 2.570316
	.quad	0x4015b99c7bcc2939              # double 5.4312610000000001
	.quad	0x4023384f8f8a4c1f              # double 9.6099820000000004
	.quad	0x4022a6ae18ac9f30              # double 9.3255470000000003
	.quad	0x4000cd7518b0d0ee              # double 2.1003210000000001
	.quad	0x4022dbeb399f5dff              # double 9.4295290000000004
	.quad	0x4017888ca3e7d135              # double 5.8833489999999999
	.quad	0x40225f80fdc1615f              # double 9.1865310000000004
	.quad	0x3febd12231832fcb              # double 0.86927900000000002
	.quad	0x402382314013ec46              # double 9.7542819999999999
	.quad	0x4015f861e92923e6              # double 5.4925610000000002
	.quad	0x4011ad9cf13cee9e              # double 4.4195440000000001
	.quad	0x40114c89b0ee49f5              # double 4.3247439999999999
	.quad	0x401f84228997c3d7              # double 7.8790380000000004
	.quad	0x40204e33eff19503              # double 8.1527399999999997
	.quad	0x4023d42cc2d6a9c5              # double 9.9144039999999993
	.quad	0x400263f8982cb210              # double 2.2988140000000001
	.quad	0x4006a8adeebb341e              # double 2.832363
	.quad	0x3fcc536d655e28aa              # double 0.22129599999999999
	.quad	0x4016e7214f0520d1              # double 5.7257129999999998
	.quad	0x400db1e96c3fc43b              # double 3.7118709999999999
	.quad	0x40002d5cfaacd9e8              # double 2.0221499999999999
	.quad	0x4018d505d0fa58f7              # double 6.2080299999999999
	.quad	0x401d974c8ffb8b26              # double 7.3977529999999998
	.quad	0x40115f3c2dadb835              # double 4.3430030000000004
	.quad	0x401b7cb4289118c2              # double 6.8717810000000004
	.quad	0x3ff736b3bb83cf2d              # double 1.450855
	.quad	0x4023714ff0025bfb              # double 9.7213130000000003
	.quad	0x40203cf1c3265ade              # double 8.1190320000000007
	.quad	0x401eb1758e219653              # double 7.6733000000000002
	.quad	0x3ffefa3875925354              # double 1.9360889999999999
	.quad	0x3fc34ddf86e3b470              # double 0.150814
	.quad	0x40171cdf69878317              # double 5.7781960000000003
	.quad	0x401a015ce9e5e248              # double 6.5013310000000004
	.quad	0x4000452d666a9824              # double 2.0337779999999999
	.quad	0x4017c3b4b2fa93af              # double 5.9411189999999996
	.quad	0x40162c6b8b69552e              # double 5.5433789999999998
	.quad	0x400e693af74cd317              # double 3.8013819999999998
	.quad	0x40123e7ddca4b125              # double 4.5610270000000002
	.quad	0x401576e9bbf0dc77              # double 5.3661260000000004
	.quad	0x3fffeb5f5f0b2852              # double 1.994964
	.quad	0x401f9dac68a936c6              # double 7.9039780000000004
	.quad	0x401cf6f4be835dee              # double 7.241168
	.quad	0x40199b2702a3486f              # double 6.401516
	.quad	0x3ff0a43ed959a30a              # double 1.0400990000000001
	.quad	0x4019ca74c09c3ce2              # double 6.447711
	.quad	0x400631455219a848              # double 2.7740580000000001
	.quad	0x401dc8262456f75e              # double 7.4454580000000004
	.quad	0x3fed0ff10ecb74de              # double 0.908196
	.quad	0x3ffaa4ece9a2c669              # double 1.665265
	.quad	0x401dcd627bf61aa4              # double 7.4505710000000001
	.quad	0x40069cb1cc964628              # double 2.826511
	.quad	0x4012efba01eeed89              # double 4.734108
	.quad	0x4013d05bc01a36e3              # double 4.9534750000000001
	.quad	0x40161674080f98fa              # double 5.5219269999999998
	.quad	0x3ff0909070fbeb9e              # double 1.0352939999999999
	.quad	0x3fecbb55ac03ff69              # double 0.897868
	.quad	0x401e5e6644d87725              # double 7.592187
	.quad	0x400b1694467381d8              # double 3.3860250000000001
	.quad	0x3ff4c11d3671ac15              # double 1.297147
	.quad	0x400fdcab81f969e4              # double 3.9827490000000001
	.quad	0x4013bbfa4c61d862              # double 4.9335719999999998
	.quad	0x3fd348626f60e0eb              # double 0.30129299999999998
	.quad	0x3ff9c5f28848387e              # double 1.610827
	.quad	0x4019e78d4fdf3b64              # double 6.4761249999999997
	.quad	0x4009a5d0fa58f712              # double 3.205965
	.quad	0x3fefae31d712a0ec              # double 0.99001399999999994
	.quad	0x400832849cb252ce              # double 3.024667
	.quad	0x40213a26c3b927d4              # double 8.6135769999999993
	.quad	0x4010e1ad6451b930              # double 4.2203879999999998
	.quad	0x402170183f91e647              # double 8.7189350000000001
	.quad	0x3fe185942917507f              # double 0.54755600000000004
	.quad	0x400e8f6b5d462c34              # double 3.8200289999999999
	.quad	0x40239a80064a9cdc              # double 9.8017579999999995
	.quad	0x401640b2c83ec893              # double 5.5631820000000003
	.quad	0x401a52df9378ee28              # double 6.5809309999999996
	.quad	0x3fe4d6a7ac81d3aa              # double 0.65120299999999998
	.quad	0x3febb5efa615a8df              # double 0.86595900000000003
	.quad	0x4022953c36113405              # double 9.2914750000000002
	.quad	0x40184b1ab0856e69              # double 6.0733439999999996
	.quad	0x401f1521dda059a7              # double 7.7706369999999997
	.quad	0x401a345132f87ad1              # double 6.5510910000000004
	.quad	0x401b44628027d88c              # double 6.8167819999999999
	.quad	0x401cd380cb6c7a7d              # double 7.2065460000000003
	.quad	0x4018f1dd1a21ea36              # double 6.2361950000000004
	.quad	0x400020c49ba5e354              # double 2.016
	.quad	0x40225070da5daf08              # double 9.1571110000000004
	.quad	0x402344117f84449e              # double 9.6329460000000005
	.quad	0x401c598f1d3ed528              # double 7.0874600000000001
	.quad	0x400fa60fe47991bc              # double 3.9560849999999999
	.quad	0x401b121d10b1feeb              # double 6.7676889999999998
	.quad	0x3ffeaab25b317efe              # double 1.916674
	.quad	0x3fe5421e1d2178f7              # double 0.66432100000000005
	.quad	0x4019e3a14cec41dd              # double 6.4722949999999999
	.quad	0x4016d6f1dc50ce4f              # double 5.7099070000000003
	.quad	0x4019308919ef954f              # double 6.2973980000000003
	.quad	0x400e155043e5321e              # double 3.7604069999999998
	.quad	0x401b7c11a11233df              # double 6.8711609999999999
	.quad	0x401c15fe111276fb              # double 7.021477
	.quad	0x4009b3dc8b86b160              # double 3.2128230000000002
	.quad	0x401d6c964628027e              # double 7.3560420000000004
	.quad	0x3ffd5ee675147f13              # double 1.835669
	.quad	0x3fd132096787ce96              # double 0.268679
	.quad	0x3fcccd9620685554              # double 0.225024
	.quad	0x401754cf4a558ea8              # double 5.8328220000000002
	.quad	0x40057754b05b7cfe              # double 2.6832669999999998
	.quad	0x40196ee957470eb2              # double 6.3583119999999997
	.quad	0x3fe3ebdf4c2b51bd              # double 0.62254299999999996
	.quad	0x3ff1c8461f9f01b8              # double 1.1113949999999999
	.quad	0x4019517763e4abe7              # double 6.3295570000000003
	.quad	0x400c902de00d1b71              # double 3.5703999999999998
	.quad	0x40214f0f5a1016ce              # double 8.6544139999999992
	.quad	0x401085f5275ee99a              # double 4.1308179999999997
	.quad	0x401ccc0fcb4f1e4b              # double 7.1992789999999998
	.quad	0x401c2df9378ee286              # double 7.0448959999999996
	.quad	0x40055de37585be1b              # double 2.6708440000000002
	.quad	0x4023e7314ca925ff              # double 9.9515480000000007
	.quad	0x3ff0b4df04ddb552              # double 1.0441579999999999
	.quad	0x4019e383ad9f0a1c              # double 6.4721820000000001
	.quad	0x401f7fbb517a4617              # double 7.8747379999999997
	.quad	0x3ff765625a682b63              # double 1.4622520000000001
	.quad	0x3fc9e9531550ca1d              # double 0.202433
	.quad	0x401c4bb5e0f7fcfc              # double 7.0739359999999998
	.quad	0x400c8452c59fb1e2              # double 3.5646110000000002
	.quad	0x4022571ac14c660a              # double 9.1701259999999998
	.quad	0x4017bfe047d3d428              # double 5.937379
	.quad	0x400484ca4f440af2              # double 2.5648390000000001
	.quad	0x4023325072085b18              # double 9.5982699999999994
	.quad	0x3ff4b02b40f66a55              # double 1.29301
	.quad	0x3feada4f00ef1349              # double 0.83914900000000003
	.quad	0x401f3694ccab3ede              # double 7.8033020000000004
	.quad	0x4019055c52e72da1              # double 6.2552349999999999
	.quad	0x4022b898b2e9ccb8              # double 9.3605400000000003
	.quad	0x4021ba7221858bc6              # double 8.8641520000000007
	.quad	0x4017aababead4f59              # double 5.916728
	.quad	0x4023d67f6f4be836              # double 9.9189410000000002
	.quad	0x3fffc87ca643cc08              # double 1.9864470000000001
	.quad	0x400a92f449129889              # double 3.321755
	.quad	0x3f9b84988094e5d6              # double 0.026873000000000001
	.quad	0x3ffa703f2d3c792d              # double 1.652404
	.quad	0x3ff11cda2b5a20de              # double 1.0695440000000001
	.quad	0x4021a72f76e6106b              # double 8.8265340000000005
	.quad	0x401d2f1ed17c5ef6              # double 7.2960159999999998
	.quad	0x400801fb82c2bd7f              # double 3.0009679999999999
	.quad	0x4021ad5347a5b0ff              # double 8.8385259999999999
	.quad	0x3ffcf9ca5bd944aa              # double 1.8109839999999999
	.quad	0x3fc406c8711d798e              # double 0.15645700000000001
	.quad	0x3ff523e39f77292c              # double 1.3212619999999999
	.quad	0x400ce97e132b55ef              # double 3.6140099999999999
	.quad	0x3fe1a65f0f5a1017              # double 0.55155900000000002
	.quad	0x40165e7685985ad5              # double 5.5922489999999998
	.quad	0x4014783f91e646f1              # double 5.1174299999999997
	.quad	0x4017b090f733a8a4              # double 5.922428
	.quad	0x3ff549adc8fb86f4              # double 1.3304879999999999
	.quad	0x401ab598e10cf5b2              # double 6.6773410000000002
	.quad	0x401cb9a847b24639              # double 7.1813060000000002
	.quad	0x401da2bd3c361134              # double 7.408925
	.quad	0x401992bfdb4cc250              # double 6.3933099999999996
	.quad	0x3fff2513b5bf6a0e              # double 1.9465520000000001
	.quad	0x3ffa5bfbdf090f73              # double 1.6474569999999999
	.quad	0x401d877531db445f              # double 7.3822830000000002
	.quad	0x4020d352c9d16fca              # double 8.4127410000000005
	.quad	0x3ff0b1172ef0ae53              # double 1.0432349999999999
	.quad	0x3ffa89b1fab96f22              # double 1.658617
	.quad	0x400363632c1f42bb              # double 2.4235289999999998
	.quad	0x3fe2bdfd2630ec31              # double 0.58569199999999999
	.quad	0x401d9e3a7daa4fca              # double 7.4045199999999998
	.quad	0x3fc556fb8f57f738              # double 0.166717
	.quad	0x3ff28919ef954eb1              # double 1.1584719999999999
	.quad	0x3fdd52934acaff6d              # double 0.45816499999999999
	.quad	0x401af03ab862b27d              # double 6.7345990000000002
	.quad	0x4010803b3e9a6f82              # double 4.1252259999999996
	.quad	0x401e8b5bb384fd2a              # double 7.6360919999999997
	.quad	0x4001da708ede54b5              # double 2.2316600000000002
	.quad	0x4008f551d68c692f              # double 3.1197849999999998
	.quad	0x401a0631b584b1ab              # double 6.506049
	.quad	0x40069b3f20a73f75              # double 2.8258040000000002
	.quad	0x4021701de2691644              # double 8.7189779999999998
	.quad	0x3fe9b3bd9cae2110              # double 0.80319099999999999
	.quad	0x3ffb3bf0dc768dfc              # double 1.702134
	.quad	0x40218be553ac4f7f              # double 8.7732340000000004
	.quad	0x401de876e1deacc9              # double 7.4770159999999999
	.quad	0x401118bdec5f394b              # double 4.2741619999999996
	.quad	0x3fed18f605ab3aac              # double 0.90929700000000002
	.quad	0x401268655193708b              # double 4.6019490000000003
	.quad	0x401daf8f8a4c1ebd              # double 7.4214460000000004
	.quad	0x4018a45f5ad96a6a              # double 6.16052
	.quad	0x4007e2107b784663              # double 2.9853830000000001
	.quad	0x4023fff69014b59a              # double 9.9999280000000006
	.quad	0x401c2def416bdb1a              # double 7.0448579999999996
	.quad	0x4011701eeed8904f              # double 4.3594929999999996
	.quad	0x400829a459103c8e              # double 3.0203329999999999
	.quad	0x401a2b588e368f08              # double 6.5423299999999998
	.quad	0x401a873365881a15              # double 6.6320319999999997
	.quad	0x4019921c8a7a41e5              # double 6.3926869999999996
	.quad	0x4020d6013660e51d              # double 8.4179779999999997
	.quad	0x4013ffc32ebe596d              # double 4.9997680000000004
	.quad	0x3fb5146e4c0df58c              # double 0.082343
	.quad	0x3ffb08323358f2e0              # double 1.6895009999999999
	.quad	0x4018f8f57f737da6              # double 6.2431239999999999
	.quad	0x3fdaf826edaa92e6              # double 0.42139599999999999
	.quad	0x402182be27179bfe              # double 8.7553570000000001
	.quad	0x4022c5fb0d51f81a              # double 9.3866809999999994
	.quad	0x400a94690de09353              # double 3.3224659999999999
	.quad	0x400f201abd1aa822              # double 3.890676
	.quad	0x40149051c9f72f77              # double 5.1409370000000001
	.quad	0x4009fbbb62413db8              # double 3.247916
	.quad	0x3fe3a2467be553ac              # double 0.61355899999999997
	.quad	0x3ff59973d9ec7000              # double 1.3499639999999999
	.quad	0x4007608d8ec95bff              # double 2.922145
	.quad	0x3fe7a5ebb7739f34              # double 0.73900399999999999
	.quad	0x4020517507e9d94d              # double 8.1590959999999999
	.quad	0x4015b7192ea52ef9              # double 5.4288069999999999
	.quad	0x401e8c432ca57a78              # double 7.6369749999999996
	.quad	0x4011510dbf0563ed              # double 4.3291539999999999
	.quad	0x3fbb76b3bb83cf2d              # double 0.10728
	.quad	0x4005b21ccd962068              # double 2.7119689999999999
	.quad	0x4023916312f4cf4a              # double 9.7839589999999994
	.quad	0x4012d4fdf3b645a2              # double 4.7080000000000002
	.quad	0x40206d069a4df480              # double 8.2129410000000007
	.quad	0x4005fe9af5ba2be0              # double 2.7493189999999998
	.quad	0x3fd53a4723aafff3              # double 0.33168199999999998
	.quad	0x4012433daf8df7a5              # double 4.5656650000000001
	.quad	0x4022bf3c4f3ba776              # double 9.373507
	.quad	0x400c2c46950fc71d              # double 3.5216189999999998
	.quad	0x401c2f359ff4fd6d              # double 7.0461029999999996
	.quad	0x3ffef2702a3486f0              # double 1.9341889999999999
	.quad	0x4019ebfad2999568              # double 6.4804490000000001
	.quad	0x40234b302f72b453              # double 9.6468520000000008
	.quad	0x400200c7c0f45176              # double 2.250381
	.quad	0x4017afcefaa4766c              # double 5.9216879999999996
	.quad	0x401c58b1572580c3              # double 7.086614
	.quad	0x40153a22b3892ee8              # double 5.3067729999999997
	.quad	0x401c4886df82b1f7              # double 7.0708270000000004
	.quad	0x4013b3022dd7a9a0              # double 4.9248130000000003
	.quad	0x401147778dd616f8              # double 4.3197919999999996
	.quad	0x40226640420f6f09              # double 9.1997090000000004
	.quad	0x4015fac36544fe37              # double 5.4948860000000002
	.quad	0x4023ceca25529fe0              # double 9.903886
	.quad	0x4005543fa2ad3e92              # double 2.666137
	.quad	0x402366f99806f263              # double 9.7011230000000008
	.quad	0x4000e76fb09203a3              # double 2.1130059999999999
	.quad	0x4009fe093532e7b4              # double 3.2490410000000001
	.quad	0x3ffbd818c5c9a34d              # double 1.7402580000000001
	.quad	0x40186116a8b8f14e              # double 6.0948130000000003
	.quad	0x40076ec95bff0457              # double 2.9290949999999998
	.quad	0x401f1e6a76965f52              # double 7.7797029999999996
	.quad	0x400fb124d099e0e7              # double 3.9614959999999999
	.quad	0x4022fddf2239e6ac              # double 9.4958430000000006
	.quad	0x401d5faeff5c6c12              # double 7.3434410000000003
	.quad	0x402084d3bf2f5558              # double 8.2594279999999998
	.quad	0x3fedfe28240b7803              # double 0.93727499999999997
	.quad	0x4018763ed0f62739              # double 6.1154739999999999
	.quad	0x400e33b96af038e3              # double 3.7752560000000002
	.quad	0x401a6ecaab8a5ce6              # double 6.6081950000000003
	.quad	0x401b9ab474107315              # double 6.9010790000000002
	.quad	0x4022f0dd82fd75e2              # double 9.47044
	.quad	0x4012168943e10060              # double 4.5220079999999996
	.quad	0x40111a4ebdd334c6              # double 4.2756910000000001
	.quad	0x401e6a0cf1800a7c              # double 7.6035649999999997
	.quad	0x3fb0b2745bf26f1e              # double 0.065223000000000003
	.quad	0x4022692599ed7c70              # double 9.2053650000000005
	.quad	0x401af77f27fe4bcb              # double 6.7416960000000001
	.quad	0x4021982645e4e69f              # double 8.797167
	.quad	0x4020545436b8f9b1              # double 8.1647049999999997
	.quad	0x3ff72dca07f66e87              # double 1.4486790000000001
	.quad	0x400f8007570c5650              # double 3.9375140000000002
	.quad	0x4019d7e34b945309              # double 6.4608280000000002
	.quad	0x4015141b75a74c0a              # double 5.2696360000000002
	.quad	0x40203329e4d5d80e              # double 8.0999289999999995
	.quad	0x4021851eb851eb85              # double 8.7599999999999998
	.quad	0x4011c0d2c386d2ed              # double 4.4383039999999996
	.quad	0x400a43fb3743632c              # double 3.2831939999999999
	.quad	0x4020c7e90ff97247              # double 8.3904499999999995
	.quad	0x401a99984a0e410b              # double 6.6499949999999997
	.quad	0x401c4ddbdb5d8948              # double 7.0760339999999999
	.quad	0x401e3f4a98aa8651              # double 7.561808
	.quad	0x4017d16a48733659              # double 5.9545070000000004
	.quad	0x4013548e8a71de6a              # double 4.8325750000000003
	.quad	0x4013abe7afa72218              # double 4.9178759999999997
	.quad	0x3fe1caff6d330942              # double 0.55603000000000002
	.quad	0x4016dbb6ed677708              # double 5.7145650000000003
	.quad	0x402361348b220792              # double 9.6898540000000004
	.quad	0x401561c219eb6391              # double 5.3454670000000002
	.quad	0x40239146a1a500d6              # double 9.7837420000000002
	.quad	0x40197b3e1437c569              # double 6.3703539999999998
	.quad	0x3ff1daf9ebe9c886              # double 1.115961
	.quad	0x3ffa2d4e4c942d49              # double 1.636061
	.quad	0x40216c562e09fe87              # double 8.7115950000000009
	.quad	0x400a445a1cac0831              # double 3.2833749999999999
	.quad	0x4022fb3f85510d39              # double 9.4907190000000003
	.quad	0x402207ab324851a8              # double 9.0149779999999993
	.quad	0x400a127807789a46              # double 3.2590180000000002
	.quad	0x400115feda661284              # double 2.1357400000000002
	.quad	0x40020b94d9407896              # double 2.255655
	.quad	0x40174f1886df82b2              # double 5.827242
	.quad	0x401b53f52fc2656b              # double 6.8319900000000002
	.quad	0x401f14827b6fe2e7              # double 7.770029
	.quad	0x401e87a02fb5d031              # double 7.6324469999999999
	.quad	0x40236f4e4430b179              # double 9.7173940000000005
	.quad	0x40133a82e87d2c7c              # double 4.8071400000000004
	.quad	0x401f4fd1dcd7060c              # double 7.8279490000000003
	.quad	0x40079f78359bc340              # double 2.9528660000000002
	.quad	0x4016e9d1b2e59afa              # double 5.7283390000000001
	.quad	0x40128077036c9c0b              # double 4.6254540000000004
	.quad	0x4016ee5de15ca6ca              # double 5.73278
	.quad	0x3feaac2bd7f51efb              # double 0.83351699999999995
	.quad	0x401f2ad9f0a1be2b              # double 7.7918469999999997
	.quad	0x400dec764adff823              # double 3.7404600000000001
	.quad	0x4020434b2fa93af7              # double 8.1314329999999995
	.quad	0x400b3e39f77292c5              # double 3.4053840000000002
	.quad	0x401348405b39e27a              # double 4.8205580000000001
	.quad	0x3ff09f6a93f290ac              # double 1.0389200000000001
	.quad	0x40127d2674080f99              # double 4.622217
	.quad	0x4017c219a847b246              # double 5.9395509999999998
	.quad	0x3ffbdcb46bacf744              # double 1.7413829999999999
	.quad	0x401300079a2834d2              # double 4.7500289999999996
	.quad	0x401fe5553ef6b5d4              # double 7.9739579999999997
	.quad	0x402110750c1b9735              # double 8.5321429999999996
	.quad	0x3fe41d25aab47410              # double 0.62855799999999995
	.quad	0x3fea08ebcc6c54bd              # double 0.81358900000000001
	.quad	0x4013a4ad362e9036              # double 4.9108169999999998
	.quad	0x401db8a82a5614e0              # double 7.4303290000000004
	.quad	0x4010fb0079a2834d              # double 4.2451189999999999
	.quad	0x4020c3779e9d0e99              # double 8.3817719999999998
	.quad	0x4021387075b3e143              # double 8.6102329999999991
	.quad	0x4020ae26d4801f75              # double 8.3401399999999999
	.quad	0x4019fa06e9ff0cbb              # double 6.494167
	.quad	0x40196c011d3671ac              # double 6.3554729999999999
	.quad	0x401546c97d8cf399              # double 5.3191280000000001
	.quad	0x4002f7995ee136e7              # double 2.3708979999999999
	.quad	0x40143383ad9f0a1c              # double 5.0503070000000001
	.quad	0x4023c742bb6672fc              # double 9.8891810000000006
	.quad	0x40232ed288ce703b              # double 9.59145
	.quad	0x4014757646ae3a3b              # double 5.1147090000000004
	.quad	0x4009f84c271fff7a              # double 3.2462390000000001
	.quad	0x40112a294141e9af              # double 4.2911729999999997
	.quad	0x40102295208e1501              # double 4.0337719999999999
	.quad	0x4010df3a9b068124              # double 4.2179970000000004
	.quad	0x400232c59fb1e18f              # double 2.274791
	.quad	0x401ba225742dcf46              # double 6.9083459999999999
	.quad	0x400674784230fcf8              # double 2.80687
	.quad	0x4000f4bad7d7c2ca              # double 2.119497
	.quad	0x3ff156fda836eb4f              # double 1.0837380000000001
	.quad	0x401cfa7829068987              # double 7.244599
	.quad	0x3ff8629845dc8323              # double 1.524071
	.quad	0x40128a372606fac6              # double 4.634976
	.quad	0x4001c0e1f7d73c92              # double 2.2191809999999998
	.quad	0x4013a5475a31a4be              # double 4.9114050000000002
	.quad	0x3ffb7734b51372a4              # double 1.7166030000000001
	.quad	0x401a7b5d462c343b              # double 6.6204729999999996
	.quad	0x40216787f023e9ea              # double 8.7022089999999999
	.quad	0x3ff0717ce52deca2              # double 1.0277069999999999
	.quad	0x3ffbb48e4755ffe7              # double 1.731581
	.quad	0x4010c4bc27631b58              # double 4.1921239999999997
	.quad	0x4019d4fa8b4bf8fd              # double 6.4579870000000001
	.quad	0x4020db92e1ef73c1              # double 8.4288550000000004
	.quad	0x4001485db76b3bb8              # double 2.1603349999999999
	.quad	0x4020e16b3354c122              # double 8.4402709999999992
	.quad	0x401524cc6822ff09              # double 5.2859360000000004
	.quad	0x4021a8dcfcc5b8dc              # double 8.8298109999999994
	.quad	0x40235aae6c8f7553              # double 9.6771119999999992
	.quad	0x3ff4c8a58b3f63c3              # double 1.298986
	.quad	0x40191b08dd1e53a8              # double 6.2764009999999999
	.quad	0x4018b7f51efb6dca              # double 6.179646
	.quad	0x400908feac42e98a              # double 3.1293920000000002
	.quad	0x400d1992c8c50050              # double 3.6374870000000001
	.quad	0x401716266fd651b1              # double 5.7716310000000002
	.quad	0x4023d8283d35eb74              # double 9.9221819999999993
	.quad	0x3fc9c18b502ababf              # double 0.20121900000000001
	.quad	0x40173fb9bed30f06              # double 5.8122319999999998
	.quad	0x3ff6624894c447c3              # double 1.398995
	.quad	0x4014a65f0f5a1017              # double 5.1624720000000002
	.quad	0x401998198f1d3ed5              # double 6.3985349999999999
	.quad	0x3fef5a8bd230b9dc              # double 0.97980299999999997
	.quad	0x401cb48cf7caa759              # double 7.1763190000000003
	.quad	0x3ff99e55c0fcb4f2              # double 1.601156
	.quad	0x4023eb56da0168b6              # double 9.9596470000000004
	.quad	0x401928958d9b5e96              # double 6.2896330000000003
	.quad	0x40016663c74fb54a              # double 2.174995
	.quad	0x40136cce5f7403de              # double 4.8562560000000001
	.quad	0x4017e620685553ef              # double 5.9747329999999996
	.quad	0x40227ce8b7e4de3c              # double 9.2439630000000008
	.quad	0x4005c8f8e7ddca4b              # double 2.723131
	.quad	0x402031709310129d              # double 8.0965620000000005
	.quad	0x3ff88c76d117b528              # double 1.5342929999999999
	.quad	0x401aeb23dd54da4d              # double 6.7296290000000001
	.quad	0x4013d441355475a3              # double 4.9572799999999999
	.quad	0x3ff0e35f80991794              # double 1.0555110000000001
	.quad	0x4016658c8eef1bac              # double 5.5991689999999998
	.quad	0x401f81351159c497              # double 7.8761789999999995
	.quad	0x401d455d1c3ac92a              # double 7.3177380000000003
	.quad	0x3fc98f68be2f7b18              # double 0.19968900000000001
	.quad	0x4021aa1ec4e7253e              # double 8.8322660000000006
	.quad	0x4009c0b6f9fcb0c0              # double 3.2190989999999999
	.quad	0x401d5822ff08893b              # double 7.3360709999999996
	.quad	0x401e35350092ccf7              # double 7.5519600000000002
	.quad	0x401b5dbe7f2c300a              # double 6.8415470000000003
	.quad	0x4002148cb4aec8d6              # double 2.2600340000000001
	.quad	0x4011ce83e425aee6              # double 4.4516749999999998
	.quad	0x401d84cd31769a91              # double 7.3796889999999999
	.quad	0x401f11ac57e23f25              # double 7.7672590000000001
	.quad	0x3fd96e2a80064a9d              # double 0.39734900000000001
	.quad	0x401f3dc1e7967caf              # double 7.8103100000000003
	.quad	0x4019a18266772d5e              # double 6.407724
	.quad	0x402011c0ca600b03              # double 8.0346740000000008
	.quad	0x4010c9ffd60e94ee              # double 4.1972649999999998
	.quad	0x3ffd926202539757              # double 1.848238
	.quad	0x3ff6e37de939eadd              # double 1.4305399999999999
	.quad	0x4022bd2ce032db1f              # double 9.3694830000000006
	.quad	0x4011a2ee84ad794a              # double 4.4091129999999996
	.quad	0x4023b499d0203e64              # double 9.8527360000000001
	.quad	0x3ff373860999dcb5              # double 1.2157039999999999
	.quad	0x4015d0d3cff64cf9              # double 5.4539330000000001
	.quad	0x3ff04e13f4a98aa8              # double 1.0190619999999999
	.quad	0x4005e33df2a9d628              # double 2.7359580000000001
	.quad	0x4011689b0ee49f51              # double 4.3521539999999996
	.quad	0x4014614d2f5dbb9d              # double 5.095021
	.quad	0x3fed045564b662fe              # double 0.906779
	.quad	0x3fe15308bb906467              # double 0.54138600000000003
	.quad	0x4023016ededaec4a              # double 9.5027989999999996
	.quad	0x400f144e50c5eb31              # double 3.8849149999999999
	.quad	0x400e4ee9dd7ecbb8              # double 3.788532
	.quad	0x4019832ce89656ef              # double 6.378101
	.quad	0x4021a2bb44e50c5f              # double 8.8178350000000005
	.quad	0x3fd7904b3c3e74b0              # double 0.36818200000000001
	.quad	0x40233bcbe61cffeb              # double 9.6167899999999999
	.quad	0x401a8b1ab0856e69              # double 6.6358439999999996
	.quad	0x402122b66b6177ea              # double 8.5677979999999998
	.quad	0x3f9ec31162281345              # double 0.030041000000000002
	.quad	0x401b4a50d6b228dd              # double 6.8225740000000004
	.quad	0x4008d09289dadfb5              # double 3.101842
	.quad	0x400ffc7d5ed06fef              # double 3.9982859999999998
	.quad	0x40054a0232096788              # double 2.6611370000000001
	.quad	0x40108a9f7b5aea31              # double 4.1353739999999997
	.quad	0x4020f723033a4724              # double 8.4826890000000005
	.quad	0x3fc3ce2089e34331              # double 0.154728
	.quad	0x402014985f06f694              # double 8.0402249999999995
	.quad	0x4017429f59ccfaf0              # double 5.815061
	.quad	0x4016f7ab324851a8              # double 5.7418639999999996
	.quad	0x401261eeaa6d2674              # double 4.595637
	.quad	0x4019e14a4d2b2bfe              # double 6.4700100000000003
	.quad	0x400095f99c38b04b              # double 2.0732300000000001
	.quad	0x40076f5fd47bedb7              # double 2.9293819999999999
	.quad	0x40136a7b0b391926              # double 4.8539849999999998
	.quad	0x401c7af533f42353              # double 7.1200760000000001
	.quad	0x401e8382a12f9011              # double 7.6284280000000004
	.quad	0x4004ad8ec95bff04              # double 2.5847449999999998
	.quad	0x4023d2400fba8827              # double 9.9106450000000005
	.quad	0x402179b3aeee9574              # double 8.7376989999999992
	.quad	0x4023d620ab713272              # double 9.9182179999999995
	.quad	0x40121616b54e2b06              # double 4.5215709999999998
	.quad	0x40239267e846a5d7              # double 9.7859490000000004
	.quad	0x401fa0c176577532              # double 7.9069880000000001
	.quad	0x40226afc69728a61              # double 9.2089569999999998
	.quad	0x3feeba8a3f8982cb              # double 0.96027099999999998
	.quad	0x4002b090f733a8a4              # double 2.336214
	.quad	0x3ff348c8259e1f3a              # double 1.2052689999999999
	.quad	0x401b4fbeb9e492bc              # double 6.8278759999999998
	.quad	0x4001e39e6ab9b23e              # double 2.2361420000000001
	.quad	0x401e9b3d07c84b5e              # double 7.6516000000000002
	.quad	0x402218f733a8a3f9              # double 9.0487610000000007
	.quad	0x40043c11e42e1262              # double 2.529331
	.quad	0x40170497fa5d28d0              # double 5.754486
	.quad	0x401e0fcdee34fc61              # double 7.5154339999999999
	.quad	0x401aecaf2d7f950c              # double 6.7311370000000004
	.quad	0x402074e746cb966c              # double 8.2283270000000001
	.quad	0x4003ba6d698fe692              # double 2.4660289999999998
	.quad	0x3fe67d41743e963e              # double 0.70279000000000003
	.quad	0x401ceb35f3d7d391              # double 7.229698
	.quad	0x3f87dbf487fcb924              # double 0.011650000000000001
	.quad	0x4011dfdb8fde2ef5              # double 4.4686110000000001
	.quad	0x400db43419e30015              # double 3.71299
	.quad	0x401cddc1615ebfa9              # double 7.216558
	.quad	0x40127167ec7863bf              # double 4.6107480000000001
	.quad	0x4015b01b43526528              # double 5.4219790000000003
	.quad	0x3fcf2e9ccb7d4174              # double 0.24360999999999999
	.quad	0x401b0f533f42352f              # double 6.7649660000000003
	.quad	0x401d7b60ae9680e0              # double 7.3704859999999996
	.quad	0x4020dec311622813              # double 8.4350819999999995
	.quad	0x401191aa821f2991              # double 4.392252
	.quad	0x400bd54195cc857f              # double 3.4791289999999999
	.quad	0x401a55043e5321e6              # double 6.583024
	.quad	0x400d8f9ca5bd944b              # double 3.6951230000000002
	.quad	0x4023cd1a21ea3593              # double 9.9005899999999993
	.quad	0x3ffb1df761cbccf3              # double 1.6948160000000001
	.quad	0x400a91c8eabffcdb              # double 3.3211840000000001
	.quad	0x3febf0bf1a5ca298              # double 0.87313799999999997
	.quad	0x40158f78feef5ec8              # double 5.39011
	.quad	0x40103189bd8383ae              # double 4.0483770000000003
	.quad	0x401d55f78359bc34              # double 7.333952
	.quad	0x4022f5188f42fe82              # double 9.4787029999999994
	.quad	0x40212cee5abc0e39              # double 8.5877560000000006
	.quad	0x400c38eeae9ee45c              # double 3.5277989999999999
	.quad	0x3fff6c13b9f127f6              # double 1.963886
	.quad	0x4014ccdc8754f377              # double 5.2000599999999997
	.quad	0x40151b11c6d1e109              # double 5.2764350000000002
	.quad	0x402034c76d117b53              # double 8.1030840000000008
	.quad	0x40163705425f2021              # double 5.553731
	.quad	0x3fc812e83a109d06              # double 0.18807699999999999
	.quad	0x401f6035371971c1              # double 7.8439529999999999
	.quad	0x3ff1f822bbecaab9              # double 1.1230800000000001
	.quad	0x4018835371971c11              # double 6.1282480000000001
	.quad	0x40111567125dd096              # double 4.2709010000000003
	.quad	0x3fe35ad106ee30cb              # double 0.60483600000000004
	.quad	0x3fe479c62a1b5c7d              # double 0.63986500000000002
	.quad	0x400914af4f0d844d              # double 3.1351
	.quad	0x400d4c450268900c              # double 3.6622409999999999
	.quad	0x3ff063b9ae0c1765              # double 1.0243469999999999
	.quad	0x40232ed0d49949e9              # double 9.5914370000000008
	.quad	0x40017018e757928e              # double 2.179735
	.quad	0x40057f865d7cb2d9              # double 2.687268
	.quad	0x3ff82774eebf65dc              # double 1.509633
	.quad	0x401a63c07ee0b0af              # double 6.5974139999999997
	.quad	0x3fe796e7a311e860              # double 0.73717100000000002
	.quad	0x3ff2193b3a68b19a              # double 1.1311599999999999
	.quad	0x3fc1c67dfe32a066              # double 0.13886999999999999
	.quad	0x4021d376922d948e              # double 8.9130140000000004
	.quad	0x4017729f59ccfaf0              # double 5.861936
	.quad	0x400efcb1465e8922              # double 3.8733849999999999
	.quad	0x3fce306e5cd4ed2d              # double 0.23585300000000001
	.quad	0x3ffdd1d798d8a97a              # double 1.863731
	.quad	0x3ffb59b8023a6ce3              # double 1.7094039999999999
	.quad	0x40111a116659d12d              # double 4.2754570000000003
	.quad	0x4023d2c450268901              # double 9.9116540000000004
	.quad	0x3fd7aa9717df19d6              # double 0.36978699999999998
	.quad	0x4012fc5718eb8950              # double 4.7464259999999996
	.quad	0x3fdbcd74927913e8              # double 0.434415
	.quad	0x40229f985271bcdc              # double 9.3117090000000004
	.quad	0x402134983d790753              # double 8.6027240000000003
	.quad	0x3fa058793dd97f63              # double 0.031925000000000002
	.quad	0x401fa47bedb72820              # double 7.9106290000000001
	.quad	0x40179faeff5c6c12              # double 5.9059410000000003
	.quad	0x4023a1a0ad8a1166              # double 9.8156789999999994
	.quad	0x401a97518b0d0edc              # double 6.6477719999999998
	.quad	0x3fe2c17225b749ae              # double 0.58611400000000002
	.quad	0x400a7e518f3eccc4              # double 3.3116789999999998
	.quad	0x3ffe07b890d5a5b9              # double 1.8768849999999999
	.quad	0x40126da1a93293d1              # double 4.607062
	.quad	0x4020c2a411c2a023              # double 8.3801579999999998
	.quad	0x401daf29d40ee06e              # double 7.4210580000000004
	.quad	0x3fad50ca1cef2410              # double 0.057257000000000002
	.quad	0x4015322d948dc11e              # double 5.2990019999999998
	.quad	0x40069dccea28fe26              # double 2.827051
	.quad	0x3feac10b630a9153              # double 0.83606499999999995
	.quad	0x3fd6f30e7ff583a5              # double 0.35858499999999999
	.quad	0x40222f02602c9082              # double 9.0918150000000004
	.quad	0x3ffbd1212513b5bf              # double 1.7385569999999999
	.quad	0x4002de2046c764ae              # double 2.35846
	.quad	0x3ff49e03f705857b              # double 1.288578
	.quad	0x400a99620685553f              # double 3.324894
	.quad	0x40038a9ac36544fe              # double 2.4426779999999999
	.quad	0x3ffc4854cdb7ae58              # double 1.7676590000000001
	.quad	0x4022521fd1569f49              # double 9.160399
	.quad	0x401c97e56473471f              # double 7.1483359999999996
	.quad	0x3ffcd37e2c55c960              # double 1.801634
	.quad	0x3fe3b3fc86cebbba              # double 0.61572099999999996
	.quad	0x400779841aac53b1              # double 2.9343340000000002
	.quad	0x401a0c8eef1bac2e              # double 6.5122640000000001
	.quad	0x3ff77c7607c419a0              # double 1.467886
	.quad	0x4010c5675579af19              # double 4.1927770000000004
	.quad	0x401ac00b45ae5ffa              # double 6.6875429999999998
	.quad	0x4021606bbdbe3c10              # double 8.6883219999999994
	.quad	0x401d2e6ab9b23dd5              # double 7.2953289999999997
	.quad	0x40238eece13f4a99              # double 9.7791510000000005
	.quad	0x40078955b4677b39              # double 2.9420579999999998
	.quad	0x401f0f533f42352f              # double 7.7649660000000002
	.quad	0x4003064c2f837b4a              # double 2.3780749999999999
	.quad	0x4003531337eb28d8              # double 2.4155639999999998
	.quad	0x40237d9bc33f8551              # double 9.7453289999999999
	.quad	0x40227eb356da0169              # double 9.2474620000000005
	.quad	0x4007da187a4a48f9              # double 2.9814919999999998
	.quad	0x4019b446b69db65f              # double 6.4260510000000002
	.quad	0x4012cde33269df98              # double 4.7010620000000003
	.quad	0x40022ba6aca79357              # double 2.2713139999999998
	.quad	0x3ff25a6a44417870              # double 1.1470739999999999
	.quad	0x40147ff1950331e4              # double 5.1249450000000003
	.quad	0x40115640a6b93ccd              # double 4.3342309999999999
	.quad	0x4016701a79fec99f              # double 5.6094759999999999
	.quad	0x401564998d045fe1              # double 5.3482419999999999
	.quad	0x3febaa8c9b845565              # double 0.86456900000000003
	.quad	0x4021ee7685985ad5              # double 8.9657479999999996
	.quad	0x401068f75536933a              # double 4.102506
	.quad	0x40236ad666a98245              # double 9.7086670000000001
	.quad	0x402217727136a401              # double 9.045795
	.quad	0x40021d72bcb5fe54              # double 2.2643789999999999
	.quad	0x40209f16b11c6d1e              # double 8.3107199999999999
	.quad	0x4011f6801711947d              # double 4.490723
	.quad	0x402388d2a1f8e3ac              # double 9.7672319999999999
	.quad	0x4010c071c53f39d2              # double 4.1879340000000003
	.quad	0x401cb763e4abe6a3              # double 7.1790919999999998
	.quad	0x4014bb5aea3161a2              # double 5.1829640000000001
	.quad	0x40232b1209edbf8c              # double 9.5841220000000006
	.quad	0x4009ee5471715c64              # double 3.2413720000000001
	.quad	0x40223277c45cbbc3              # double 9.0985700000000005
	.quad	0x400c9ccfaeff5c6c              # double 3.576568
	.quad	0x3ffd04d76ab58080              # double 1.813682
	.quad	0x40165649906cca2e              # double 5.5842650000000003
	.quad	0x4013ade7ea5f84cb              # double 4.9198300000000001
	.quad	0x40081f162ae4b018              # double 3.0151789999999998
	.quad	0x400f241248d7e026              # double 3.8926129999999999
	.quad	0x400951e42e126202              # double 3.1649859999999999
	.quad	0x401a5c56d5cfaace              # double 6.5901750000000003
	.quad	0x4023d87a28bb0a2d              # double 9.9228070000000005
	.quad	0x4022a9409a240315              # double 9.3305710000000008
	.quad	0x401fff57f737da62              # double 7.9993590000000001
	.quad	0x401db52c9d16fc9c              # double 7.4269280000000002
	.quad	0x4015f6da0168b5cc              # double 5.491066
	.quad	0x40198311a543f1c7              # double 6.3779969999999997
	.quad	0x401a6b8cb8e086be              # double 6.605029
	.quad	0x40153a87e38eb032              # double 5.3071590000000004
	.quad	0x3fe0280cf9e3864d              # double 0.50488900000000003
	.quad	0x4022bf5b5fa22707              # double 9.3737440000000002
	.quad	0x4018a87f88765ba7              # double 6.1645490000000001
	.quad	0x3fdd25d4a5df223a              # double 0.45543400000000001
	.quad	0x40207fb24638c975              # double 8.2494069999999997
	.quad	0x4023ba9da597d49d              # double 9.8644839999999991
	.quad	0x40207a7b2cc70868              # double 8.2392210000000006
	.quad	0x401c44ca4f440af2              # double 7.0671780000000002
	.quad	0x3fd96b441bb8c32b              # double 0.39717200000000003
	.quad	0x4011aa4e7ab75643              # double 4.416315
	.quad	0x4020ca0d130df9be              # double 8.3946310000000004
	.quad	0x400b0a76965f5276              # double 3.380109
	.quad	0x401db93d102bc72e              # double 7.4308969999999999
	.quad	0x401f9996b76709fa              # double 7.8999889999999997
	.quad	0x4021904230fcf80e              # double 8.7817550000000004
	.quad	0x3ffa73f42352eb5f              # double 1.6533089999999999
	.quad	0x3fe4f952d234eb9a              # double 0.65543499999999999
	.quad	0x402122bde3fbbd7b              # double 8.5678549999999998
	.quad	0x40232e92f6e8294a              # double 9.5909650000000006
	.quad	0x4015079d909f1f15              # double 5.2574370000000004
	.quad	0x400dd33c1ce6c094              # double 3.7281420000000001
	.quad	0x4015971327243138              # double 5.3975340000000003
	.quad	0x3ff86801711947d0              # double 1.5253920000000001
	.quad	0x40002eba27ae9ab3              # double 2.0228160000000002
	.quad	0x4023a5f0d413122b              # double 9.8241029999999991
	.quad	0x3fff9ff0cbaf965b              # double 1.976548
	.quad	0x40200b9cb6848beb              # double 8.0226799999999994
	.quad	0x402145c9c4da9004              # double 8.6363050000000001
	.quad	0x4023de71cda2b5a2              # double 9.9344619999999999
	.quad	0x4020f0d2a1f8e3ac              # double 8.4703569999999999
	.quad	0x4020fd7a56de3327              # double 8.4950740000000007
	.quad	0x400f66466b1e5c0c              # double 3.9249390000000002
	.quad	0x3ff09529fe004b7f              # double 1.0364169999999999
	.quad	0x40238b2f44912989              # double 9.7718450000000007
	.quad	0x40209f640639d5e5              # double 8.3113100000000006
	.quad	0x401c0f1b69121251              # double 7.0147529999999998
	.quad	0x3fede8576cce5f74              # double 0.93461199999999999
	.quad	0x401b2494d50ebaae              # double 6.7857240000000001
	.quad	0x3ffec9d6adf71eb0              # double 1.924277
	.quad	0x4016be158750c1b9              # double 5.6856289999999996
	.quad	0x3ff93bafd976ff3b              # double 1.577072
	.quad	0x401e4b417ca2120e              # double 7.5734919999999999
	.quad	0x401f7e9424e59296              # double 7.8736119999999996
	.quad	0x402332bffcdab192              # double 9.5991210000000002
	.quad	0x4002f5e5aff2a173              # double 2.3700670000000001
	.quad	0x4020ebe3193f6c27              # double 8.4607170000000007
	.quad	0x3fb1351159c49774              # double 0.067215999999999998
	.quad	0x402112b1704ff434              # double 8.5365099999999998
	.quad	0x401d4759253543af              # double 7.3196760000000003
	.quad	0x400f3dba908a265f              # double 3.905141
	.quad	0x3feebd25247cb70b              # double 0.96058900000000002
	.quad	0x4009257c914b167f              # double 3.1433040000000001
	.quad	0x40236827b6fe2e6f              # double 9.7034280000000006
	.quad	0x3ffd28ccdd93c46e              # double 1.8224610000000001
	.quad	0x40091890d5a5b963              # double 3.1369950000000002
	.quad	0x4021fc9ea9a3d2d8              # double 8.9933979999999991
	.quad	0x40170a797891e215              # double 5.7602289999999998
	.quad	0x3ff6a25d8d79d0a6              # double 1.4146399999999999
	.quad	0x4007e2c98e53eb3a              # double 2.9857360000000002
	.quad	0x4014c7a5b0ff10ed              # double 5.1949680000000003
	.quad	0x4009748909289dae              # double 3.181902
	.quad	0x4021e754b05b7cfe              # double 8.9518179999999994
	.quad	0x4011de7ea5f84cad              # double 4.4672799999999997
	.quad	0x401fe438d1d8a548              # double 7.9728729999999998
	.quad	0x40231288051c9f73              # double 9.536194
	.quad	0x3ff775d56f32bdc2              # double 1.4662679999999999
	.quad	0x40079e468cac4b4d              # double 2.952283
	.quad	0x3ff403eb7cbb3c82              # double 1.2509570000000001
	.quad	0x402232e1049235f8              # double 9.0993729999999999
	.quad	0x4023b116a8b8f14e              # double 9.8458760000000005
	.quad	0x40209313165d3997              # double 8.287255
	.quad	0x401602602c9081c3              # double 5.5023200000000001
	.quad	0x4021f46759ab6d01              # double 8.9773510000000005
	.quad	0x40136f5d35653c9b              # double 4.8587540000000002
	.quad	0x3ffd357e670e2c13              # double 1.8255600000000001
	.quad	0x4023dd4152b0a6fc              # double 9.9321389999999993
	.quad	0x3ff253953dea465a              # double 1.1454059999999999
	.quad	0x4021f5cf67b1c001              # double 8.9800979999999999
	.quad	0x401aaf7121ab4b73              # double 6.6713300000000002
	.quad	0x400119ed7c6fbd27              # double 2.1376599999999999
	.quad	0x40119ea8112ba16e              # double 4.4049379999999996
	.quad	0x401798893b7d8490              # double 5.8989609999999999
	.quad	0x401d22fd75e2046c              # double 7.2841699999999996
	.quad	0x4012bff8ec0f8833              # double 4.6874729999999998
	.quad	0x401c06d82ba5a038              # double 7.0066839999999999
	.quad	0x401f7baba7b9170d              # double 7.8707719999999996
	.quad	0x40166523b3636f3b              # double 5.5987689999999999
	.quad	0x4000f930be0ded29              # double 2.1216750000000002
	.quad	0x3fd6387160956c0d              # double 0.34719499999999998
	.quad	0x4007311ada76d97b              # double 2.8989769999999999
	.quad	0x4021689d6adf71eb              # double 8.704326
	.quad	0x401ed60913a4f872              # double 7.7090189999999996
	.quad	0x3ff73193f6c2699c              # double 1.4496039999999999
	.quad	0x3fe5ed84d338f798              # double 0.68524399999999996
	.quad	0x401a022813448063              # double 6.5021060000000004
	.quad	0x400983382e44b6e9              # double 3.1890719999999999
	.quad	0x40131f48c2e770bd              # double 4.780551
	.quad	0x4019a0010c6f7a0b              # double 6.4062539999999997
	.quad	0x400992990f301eac              # double 3.1965810000000001
	.quad	0x40029cc1871e6cd3              # double 2.3265410000000002
	.quad	0x40012b7dc7abfb9c              # double 2.146236
	.quad	0x4014e014b599aa61              # double 5.2188290000000004
	.quad	0x401ec3d6c7219221              # double 7.691249
	.quad	0x402126b4c7f34938              # double 8.5755979999999994
	.quad	0x401074abe6a337a8              # double 4.113937
	.quad	0x401153cf70153bd1              # double 4.3318459999999996
	.quad	0x4019a8869c66d374              # double 6.4145760000000003
	.quad	0x40105d438d1d8a55              # double 4.0910780000000004
	.quad	0x40084084a515ce9e              # double 3.0315029999999998
	.quad	0x4023f61672324c83              # double 9.9806399999999992
	.quad	0x3fd314ca925fe975              # double 0.29814400000000002
	.quad	0x3ffe732acfb762d8              # double 1.9031169999999999
	.quad	0x3fe7fd9dba908a26              # double 0.74970899999999996
	.quad	0x401a08a6dacabc51              # double 6.5084489999999997
	.quad	0x40206eb52c9d16fd              # double 8.2162260000000007
	.quad	0x400e45d4a5df223a              # double 3.784097
	.quad	0x3fe69b994e1a3f46              # double 0.70649399999999996
	.quad	0x40154d15f02c4d66              # double 5.3252790000000001
	.quad	0x3fe522749f0e4da1              # double 0.66045600000000004
	.quad	0x3fe49a7e30878748              # double 0.64385899999999996
	.quad	0x4021b33e35c5b4ab              # double 8.8500840000000007
	.quad	0x40203dcdf6987831              # double 8.1207119999999993
	.quad	0x401b76ba0620ab71              # double 6.8659439999999998
	.quad	0x400e463d816aceab              # double 3.784297
	.quad	0x400e3bfc6540cc79              # double 3.77929
	.quad	0x3fdbe3eaf6837f7c              # double 0.43578600000000001
	.quad	0x3ff57c2656abde40              # double 1.3428100000000001
	.quad	0x3fb3a604e1e71045              # double 0.076752000000000001
	.quad	0x3fadc31593e5fb72              # double 0.058129
	.quad	0x4021697ebaf10236              # double 8.7060449999999996
	.quad	0x3fe964430b178b37              # double 0.793489
	.quad	0x4000919ef954eb14              # double 2.0711040000000001
	.quad	0x401ceec8d5c74752              # double 7.2331880000000002
	.quad	0x401996052502eec8              # double 6.3965040000000002
	.quad	0x400aaef34d6a161e              # double 3.3354249999999999
	.quad	0x4013038151a43782              # double 4.7534229999999997
	.quad	0x4018b6eac8605682              # double 6.1786300000000001
	.quad	0x4017c9ecb31c219f              # double 5.9471920000000003
	.quad	0x40193043e5321e60              # double 6.2971339999999998
	.quad	0x401d4c16df3f9618              # double 7.3243059999999999
	.quad	0x40191d2630ec3116              # double 6.2784659999999999
	.quad	0x4008615b9a5a89b9              # double 3.0475379999999999
	.quad	0x401a3046412cf0fa              # double 6.5471430000000002
	.quad	0x4022082a9930be0e              # double 9.0159500000000001
	.quad	0x4020afbeb9e492bc              # double 8.3432519999999996
	.quad	0x401390fcf80dc337              # double 4.8915899999999999
	.quad	0x401b811233df2a9d              # double 6.8760459999999997
	.quad	0x4018adc69f8c21e2              # double 6.1697030000000002
	.quad	0x4022d1fe86833c60              # double 9.410145
	.quad	0x401746798958d9b6              # double 5.8188230000000001
	.quad	0x40070a9691a75cd1              # double 2.8801700000000001
	.quad	0x400769b6b2af1455              # double 2.9266179999999999
	.quad	0x4016a755ffe6d58d              # double 5.6634140000000004
	.quad	0x401eebdd334c5da7              # double 7.7303360000000003
	.quad	0x4001323033a4723b              # double 2.1495060000000001
	.quad	0x4010f0d349be8ff3              # double 4.2351809999999999
	.quad	0x4000d074213a0c6b              # double 2.1017839999999999
	.quad	0x401f513986338b48              # double 7.8293210000000001
	.quad	0x4020c2f35e310dbf              # double 8.380763
	.quad	0x401bf3eccc469510              # double 6.9882080000000002
	.quad	0x401921a2e7f6f4bf              # double 6.2828480000000004
	.quad	0x4006cef0ae536502              # double 2.8510450000000001
	.quad	0x4010ba1a0cf1800a              # double 4.1817399999999996
	.quad	0x4015630caa326e11              # double 5.3467279999999997
	.quad	0x401e5c18b502abac              # double 7.5899380000000001
	.quad	0x400e6213a0c6b485              # double 3.7978890000000001
	.quad	0x4022c75cf2495e18              # double 9.3893810000000001
	.quad	0x4022f4e89656eefa              # double 9.4783369999999998
	.quad	0x400ce9be8ff327aa              # double 3.6141329999999998
	.quad	0x40229898d477bbf9              # double 9.2980409999999996
	.quad	0x4016124638c97529              # double 5.5178459999999996
	.quad	0x40214c5f17bd8be7              # double 8.6491629999999997
	.quad	0x40124e4de3b8a19d              # double 4.5764690000000003
	.quad	0x401b2342edbb59de              # double 6.7844350000000002
	.quad	0x402309a415f45e0b              # double 9.5188299999999994
	.quad	0x402346c8f7553693              # double 9.6382519999999995
	.quad	0x401d4096feb4a665              # double 7.3130759999999997
	.quad	0x400bc0f238972043              # double 3.4692120000000002
	.quad	0x400a369014b599aa              # double 3.2766419999999998
	.quad	0x3ff9f018611fd588              # double 1.6211169999999999
	.quad	0x4016a282c6ef3d3a              # double 5.6587019999999999
	.quad	0x3ffcfd987c6327ee              # double 1.8119130000000001
	.quad	0x3ff4693f290abb45              # double 1.275695
	.quad	0x4009b170d62bf120              # double 3.2116410000000002
	.quad	0x4019aa0407cc7d1c              # double 6.4160310000000003
	.quad	0x3ff2694680171194              # double 1.1507019999999999
	.quad	0x3ff6dbeb18116ebd              # double 1.4286909999999999
	.quad	0x4014815d701d9f4d              # double 5.1263329999999998
	.quad	0x401324b662fdfc1a              # double 4.7858520000000002
	.quad	0x4007ad63cb817332              # double 2.9596629999999999
	.quad	0x402249709310129d              # double 9.1434370000000005
	.quad	0x40223e81450efdca              # double 9.1220800000000004
	.quad	0x401de5f9df548ece              # double 7.4745860000000004
	.quad	0x401f4f166e008e9b              # double 7.8272339999999998
	.quad	0x4023f382c2bd7f52              # double 9.9756070000000001
	.quad	0x4002d1c75818c5ca              # double 2.3524310000000002
	.quad	0x40225ad85dfa871a              # double 9.1774319999999996
	.quad	0x4015deef5ec80c74              # double 5.4677100000000003
	.quad	0x40235e1e92923e5c              # double 9.6838270000000008
	.quad	0x4014845e9185cee1              # double 5.1292669999999996
	.quad	0x4002ace9a2c66905              # double 2.3344299999999998
	.quad	0x40229a3b9ae0c176              # double 9.3012359999999994
	.quad	0x401bfd4024b33db0              # double 6.9973150000000004
	.quad	0x400f4614163779ea              # double 3.9092180000000001
	.quad	0x3fed0055fbb517a4              # double 0.90629099999999995
	.quad	0x401bdc2699c7bcc3              # double 6.9649910000000004
	.quad	0x40227c3393ab430f              # double 9.2425809999999995
	.quad	0x3ff3ea60913a4f87              # double 1.244721
	.quad	0x4023138476f2a5a4              # double 9.5381199999999992
	.quad	0x3fe5e846a5d6bebe              # double 0.68460399999999999
	.quad	0x3fe9823a6ce3582a              # double 0.79714700000000005
	.quad	0x401e4682b6284599              # double 7.5688579999999996
	.quad	0x4020121272c94b38              # double 8.0352969999999999
	.quad	0x4021e8a2877ee4e2              # double 8.9543649999999992
	.quad	0x40162d66f0cfe154              # double 5.5443379999999998
	.quad	0x402090ce4ead0c3d              # double 8.2828239999999997
	.quad	0x401ba3ffef39085f              # double 6.9101559999999997
	.quad	0x40041fbd6a593a2e              # double 2.515498
	.quad	0x40237f5ec80c73ac              # double 9.7487700000000003
	.quad	0x402197763e4abe6a              # double 8.7958239999999996
	.quad	0x400bde542e557de1              # double 3.4835590000000001
	.quad	0x401da2aa19439de5              # double 7.4088520000000004
	.quad	0x40214270d1fa3337              # double 8.6297669999999993
	.quad	0x402133506dd69d30              # double 8.6002229999999997
	.quad	0x401979ba5e353f7d              # double 6.3688750000000001
	.quad	0x40238489d27c3937              # double 9.7588640000000008
	.quad	0x4023c4ed0b30b5aa              # double 9.8846209999999992
	.quad	0x3ffee427c7c5260f              # double 1.9307019999999999
	.quad	0x4002a09dcf893faf              # double 2.3284259999999999
	.quad	0x401c6d6c72192210              # double 7.106859
	.quad	0x401f53a5c1c6088d              # double 7.8316869999999996
	.quad	0x40149ce5f7403dde              # double 5.1532210000000003
	.quad	0x401f61b60ae9680e              # double 7.845421
	.quad	0x3ff8c0bfe3b03e21              # double 1.547058
	.quad	0x4004886e7e62dc6e              # double 2.5666169999999999
	.quad	0x400bdb2f661f18ca              # double 3.482024
	.quad	0x3fd15460aa64c2f8              # double 0.27077499999999999
	.quad	0x40023f2d3c792d13              # double 2.2808480000000002
	.quad	0x401d87460242d05f              # double 7.3821029999999999
	.quad	0x3ff99f080303c07f              # double 1.601326
	.quad	0x4018107bbb62413e              # double 6.0160970000000002
	.quad	0x401546ededaec4a4              # double 5.319267
	.quad	0x40125b7c7820a30e              # double 4.5893420000000003
	.quad	0x3fdb424e59296702              # double 0.42592200000000002
	.quad	0x401f4b1e18efbb0e              # double 7.8233569999999997
	.quad	0x401fb1287c200c0f              # double 7.9230059999999999
	.quad	0x40160ca9ac365450              # double 5.5123660000000001
	.quad	0x401b13baba7b9171              # double 6.7692670000000001
	.quad	0x400927d1bb4916ca              # double 3.1444429999999999
	.quad	0x401e17d77fae3609              # double 7.5232830000000001
	.quad	0x3ff49c8b86b15f89              # double 1.288219
	.quad	0x4008077d523b3637              # double 3.003657
	.quad	0x4011014f0520d131              # double 4.2512780000000001
	.quad	0x3feadb573eab367a              # double 0.83927499999999999
	.quad	0x400b3cd91eeaa6d2              # double 3.4047109999999998
	.quad	0x401b8fe2e6ea8544              # double 6.8905139999999996
	.quad	0x40138c9752977c89              # double 4.8872960000000001
	.quad	0x4015f6177ea1c68f              # double 5.4903240000000002
	.quad	0x3ffd6e6644d87725              # double 1.839453
	.quad	0x4015bd0d49949e88              # double 5.4346209999999999
	.quad	0x4011bcdf266ba494              # double 4.4344450000000002
	.quad	0x3feb60e736049ecb              # double 0.85557899999999998
	.quad	0x401e58240b780347              # double 7.5860750000000001
	.quad	0x40099ff8a8f3a9b0              # double 3.2031109999999998
	.quad	0x401509c065b63d3e              # double 5.2595229999999997
	.quad	0x401360c88a47ecff              # double 4.8445150000000003
	.quad	0x40138708ede54b49              # double 4.8818700000000002
	.quad	0x40180d04a2fcefaa              # double 6.0127129999999998
	.quad	0x401c2a3c21187e7c              # double 7.041245
	.quad	0x4012d17e34b94531              # double 4.7045830000000004
	.quad	0x4019c36a400fba88              # double 6.4408349999999999
	.quad	0x40210669ced0b30b              # double 8.5125259999999994
	.quad	0x3ff8549d7ba6698c              # double 1.5206580000000001
	.quad	0x4017ccf52b90a783              # double 5.9501540000000004
	.quad	0x400f00a2014727dd              # double 3.8753090000000001
	.quad	0x3ff543558a761028              # double 1.3289390000000001
	.quad	0x401dd6a26e547171              # double 7.4596039999999997
	.quad	0x4011312ec6bce853              # double 4.2980299999999998
	.quad	0x40081e2cdc011d36              # double 3.0147339999999998
	.quad	0x401abdd0d8cb07d1              # double 6.6853670000000003
	.quad	0x400ee33df2a9d628              # double 3.8609580000000001
	.quad	0x3fd4250b524399b3              # double 0.31476100000000001
	.quad	0x4016327e9531550d              # double 5.5493110000000003
	.quad	0x40217d37e2c55c96              # double 8.744567
	.quad	0x4022e54195cc857f              # double 9.4477659999999996
	.quad	0x402167cd03537197              # double 8.7027359999999998
	.quad	0x401d9cee9dd7ecbb              # double 7.4032539999999996
	.quad	0x401e3065f9591cd2              # double 7.5472640000000002
	.quad	0x3fed4dcca70d1fa3              # double 0.91574699999999998
	.quad	0x401024be835dedf2              # double 4.0358830000000001
	.quad	0x400f0f0cfe154435              # double 3.882349
	.quad	0x3fab3b320535c9e6              # double 0.053185999999999997
	.quad	0x40203034b0e1b4bb              # double 8.0941519999999993
	.quad	0x40229969a0ad8a11              # double 9.2996339999999993
	.quad	0x3ff44a7b4e54f7a9              # double 1.268184
	.quad	0x3fa6425aee631f8a              # double 0.043475
	.quad	0x401d5b890d5a5b96              # double 7.3393899999999999
	.quad	0x40132f4128bf3beb              # double 4.7961470000000004
	.quad	0x401a43c4b09e98dd              # double 6.5661800000000001
	.quad	0x401ba610f0e90bc8              # double 6.9121740000000003
	.quad	0x40071e0ef99806f2              # double 2.8896769999999998
	.quad	0x400d9869835158b8              # double 3.6994199999999999
	.quad	0x4016afd976ff3ade              # double 5.6717279999999999
	.quad	0x4014de86c6583e85              # double 5.2173109999999996
	.quad	0x4020604a515ce9e6              # double 8.1880670000000002
	.quad	0x40114f2e05ccc89b              # double 4.3273239999999999
	.quad	0x40202035158b8280              # double 8.0629050000000007
	.quad	0x3fed73929ed3953e              # double 0.92035800000000001
	.quad	0x401638c4bd33d295              # double 5.5554379999999997
	.quad	0x3fff51ec918e325d              # double 1.9575009999999999
	.quad	0x401dc79cc74b838c              # double 7.4449339999999999
	.quad	0x3ffd453e2d6238da              # double 1.8294049999999999
	.quad	0x40226571d1d4738a              # double 9.1981339999999996
	.quad	0x4003f894812be48a              # double 2.4963769999999998
	.quad	0x401169dece571088              # double 4.353389
	.quad	0x400bab4aec8d5c74              # double 3.4586389999999998
	.quad	0x4022aafad6cb5350              # double 9.3339449999999999
	.quad	0x4013d8fd9fd36f7e              # double 4.9619049999999998
	.quad	0x40138f648c7192ea              # double 4.8900319999999997
	.quad	0x402128efbb0e5e68              # double 8.5799540000000007
	.quad	0x3ffa27296f6512a9              # double 1.6345609999999999
	.quad	0x3fd54a558ea7ce10              # double 0.33266200000000001
	.quad	0x40070d362e903644              # double 2.8814510000000002
	.quad	0x400033c89f40a287              # double 2.0252849999999998
	.quad	0x402293675ddd2ae9              # double 9.2878980000000002
	.quad	0x400d83cfb3311a54              # double 3.6893609999999999
	.quad	0x4022227935760392              # double 9.0673309999999994
	.quad	0x3fb4405b39e279dd              # double 0.079106999999999997
	.quad	0x402342ff2a172abf              # double 9.6308530000000001
	.quad	0x40230271151611ba              # double 9.5047689999999996
	.quad	0x40213f0cdc8754f3              # double 8.6231449999999992
	.quad	0x4013cfc71d606317              # double 4.9529079999999999
	.quad	0x40216995aaf78fef              # double 8.7062200000000001
	.quad	0x4019cd8a116659d1              # double 6.4507219999999998
	.quad	0x3ff65f98b71b8aa0              # double 1.398339
	.quad	0x401163dccea28fe2              # double 4.3475219999999997
	.quad	0x402187b762d83c6d              # double 8.7650710000000007
	.quad	0x40010c11a11233df              # double 2.1308929999999999
	.quad	0x4019c56861e92924              # double 6.4427810000000001
	.quad	0x401b48d5410f94c8              # double 6.8211259999999996
	.quad	0x3fc19f666234a87e              # double 0.13767699999999999
	.quad	0x402326759ab6d00b              # double 9.5751159999999995
	.quad	0x402067e0ef99806f              # double 8.2028879999999997
	.quad	0x4010f923a29c779a              # double 4.2432999999999996
	.quad	0x3fa015c209246bf0              # double 0.031415999999999999
	.quad	0x4020d25f633ce63a              # double 8.4108839999999994
	.quad	0x401b9a32f4491299              # double 6.9005850000000004
	.quad	0x40137eae5bc87db3              # double 4.8737120000000003
	.quad	0x3ffb55cc857f3062              # double 1.708447
	.quad	0x4017e490e66cb103              # double 5.9732089999999998
	.quad	0x402058c23fab10ba              # double 8.1733569999999993
	.quad	0x40235b723ee1bd1f              # double 9.6786060000000002
	.quad	0x400fe5479d4d8341              # double 3.9869530000000002
	.quad	0x4020d588a04d1202              # double 8.4170580000000008
	.quad	0x4023a891c087442c              # double 9.8292369999999991
	.quad	0x401cde6afcce1c58              # double 7.2172049999999999
	.quad	0x3fd4e5a35d67ba23              # double 0.32651599999999997
	.quad	0x4020720bc382a130              # double 8.2227460000000008
	.quad	0x40011b20b8066c2b              # double 2.1382460000000001
	.quad	0x3fd7171e29b6b2af              # double 0.360786
	.quad	0x3fc25f0f5a1016ce              # double 0.14352599999999999
	.quad	0x40110875d56f32be              # double 4.2582620000000002
	.quad	0x4018609784ec636b              # double 6.094328
	.quad	0x401c4fe32a0663c7              # double 7.0780149999999997
	.quad	0x40234bfaf42784a9              # double 9.6483989999999995
	.quad	0x40185f8ec0f88334              # double 6.093318
	.quad	0x401f9fdb8fde2ef5              # double 7.9061110000000001
	.quad	0x3fff14bad7d7c2ca              # double 1.942561
	.quad	0x401ca3cd9a52263e              # double 7.1599640000000004
	.quad	0x4018d667f90d9d77              # double 6.2093809999999996
	.quad	0x3ffe7a3ec02f2f98              # double 1.9048449999999999
	.quad	0x401b22684cf0739b              # double 6.783601
	.quad	0x40092f1e4b44a1f1              # double 3.1480070000000002
	.quad	0x4022649ba5e353f8              # double 9.1965000000000003
	.quad	0x401c541b328b6d87              # double 7.0821350000000001
	.quad	0x401cf472c0e7bc3c              # double 7.2387189999999997
	.quad	0x4021a396073de1e3              # double 8.8195040000000002
	.quad	0x3ff04793dd97f62b              # double 1.0174749999999999
	.quad	0x401e5a0232096788              # double 7.5878990000000001
	.quad	0x402373cea6c1a049              # double 9.7261860000000002
	.quad	0x4002b62f9ca5bd94              # double 2.3389579999999999
	.quad	0x400e0dca8e2e2b8c              # double 3.7567339999999998
	.quad	0x4021d9934efcbd55              # double 8.9249519999999993
	.quad	0x400b64dca8e2e2b9              # double 3.4242490000000001
	.quad	0x40124dcd7060bb2c              # double 4.5759790000000002
	.quad	0x4012f830a0b1bbcf              # double 4.7423729999999997
	.quad	0x4022fb5dcc63f141              # double 9.4909499999999997
	.quad	0x4011f930be0ded29              # double 4.4933500000000004
	.quad	0x3ff0101f31f46ed2              # double 1.0039359999999999
	.quad	0x4020d93af74cd317              # double 8.4242779999999993
	.quad	0x400844b3c3e74afd              # double 3.0335459999999999
	.quad	0x400643d68405b39e              # double 2.7831239999999999
	.quad	0x401d85aaf78feef6              # double 7.3805350000000001
	.quad	0x4022fccb5bb384fd              # double 9.4937389999999997
	.quad	0x3fe81aa60913a4f8              # double 0.75325299999999995
	.quad	0x3fa9fa97e132b55f              # double 0.05074
	.quad	0x400df77186551937              # double 3.745822
	.quad	0x4022958622c45027              # double 9.2920390000000008
	.quad	0x4022b41205bc01a3              # double 9.3516999999999992
	.quad	0x400d83ef284167a9              # double 3.6894209999999998
	.quad	0x4017bff3ade225fa              # double 5.9374529999999996
	.quad	0x3fc2a2e3c536d656              # double 0.145596
	.quad	0x40062aeea63b688c              # double 2.7709630000000001
	.quad	0x40002920c069e7fb              # double 2.0200819999999999
	.quad	0x3f8d08d4bad7d7c3              # double 0.014177
	.quad	0x40103378ab0c88a4              # double 4.0502649999999996
	.quad	0x4020034070329803              # double 8.0063510000000004
	.quad	0x401d469a91105e1c              # double 7.3189489999999999
	.quad	0x4010647bedb72820              # double 4.0981290000000001
	.quad	0x3ff498aa8650e779              # double 1.287272
	.quad	0x3ff30816f0068db9              # double 1.1894750000000001
	.quad	0x401d92923e5b8562              # double 7.3931360000000002
	.quad	0x3fb470fbeb9e492c              # double 0.079849000000000003
	.quad	0x402249c432ca57a8              # double 9.1440750000000008
	.quad	0x401267f0aa21a71a              # double 4.6015040000000003
	.quad	0x401c0eb28d8665e0              # double 7.0143529999999998
	.quad	0x400c32e946801712              # double 3.5248590000000002
	.quad	0x40165ada33bd9cae              # double 5.5887229999999999
	.quad	0x4023695aaf78feef              # double 9.7057699999999993
	.quad	0x4022bb256ffc115e              # double 9.3655200000000001
	.quad	0x401c737154003255              # double 7.1127370000000001
	.quad	0x401a275360d02470              # double 6.5384039999999999
	.quad	0x3ff26db2f661f18d              # double 1.1517820000000001
	.quad	0x3fc7c7ef177a7009              # double 0.18578900000000001
	.quad	0x401e1e3b46fdeb53              # double 7.5295230000000001
	.quad	0x3fffdd72367e414e              # double 1.9915639999999999
	.quad	0x40154f383f0bae8a              # double 5.3273630000000001
	.quad	0x40093989df1172ef              # double 3.153095
	.quad	0x401c931ceaf251c2              # double 7.1436650000000004
	.quad	0x401b07aaef2c7326              # double 6.7574880000000004
	.quad	0x40030b93ccd0fe8b              # double 2.3806530000000001
	.quad	0x401de2d77318fc50              # double 7.4715249999999997
	.quad	0x4010f9d40ee06d94              # double 4.2439730000000004
	.quad	0x3fff519157abb880              # double 1.957414
	.quad	0x3ff7642070b8cfc0              # double 1.4619450000000001
	.quad	0x4009be586013660e              # double 3.2179419999999999
	.quad	0x4021a5c7abfb9bed              # double 8.8237889999999997
	.quad	0x400da6f36ef80560              # double 3.7065190000000001
	.quad	0x40171d68405b39e2              # double 5.7787179999999996
	.quad	0x401cb05b7cfe5860              # double 7.1722239999999999
	.quad	0x401f94eebf65dbfd              # double 7.895442
	.quad	0x4023f29d40ee06d9              # double 9.9738559999999996
	.quad	0x4011f1a21ea35936              # double 4.48597
	.quad	0x3fce4febd09e12a5              # double 0.236814
	.quad	0x4021f06d2ed783e0              # double 8.9695830000000001
	.quad	0x40195d9b1b79d90a              # double 6.341412
	.quad	0x4018d917939a7c18              # double 6.2120040000000003
	.quad	0x4001581626b2f230              # double 2.1680109999999999
	.quad	0x40125490e66cb103              # double 4.5825839999999998
	.quad	0x4022b64628027d89              # double 9.3560040000000004
	.quad	0x3ff8e5c0b9991362              # double 1.556092
	.quad	0x401a5c7192ea52f0              # double 6.5902770000000004
	.quad	0x401d73cc07aaef2c              # double 7.3630829999999996
	.quad	0x3ffbbc408d8ec95c              # double 1.73346
	.quad	0x400ada5ebb7739f3              # double 3.3566259999999999
	.quad	0x3ff74be0ded288ce              # double 1.4560249999999999
	.quad	0x40177fd00713f078              # double 5.8748170000000002
	.quad	0x40104d27807789a4              # double 4.0753459999999997
	.quad	0x3ff3d270b06c43f6              # double 1.238877
	.quad	0x4012ab8348f53c58              # double 4.6674930000000003
	.quad	0x400693d4280ae105              # double 2.8221820000000002
	.quad	0x4021a5b7281fd9ba              # double 8.8236629999999998
	.quad	0x401b252e72da1230              # double 6.7863100000000003
	.quad	0x3ff0e8f8e7ddca4b              # double 1.056878
	.quad	0x40128e1719f7f8cb              # double 4.6387600000000004
	.quad	0x3ffd144aa53fc009              # double 1.8174539999999999
	.quad	0x401e2a89b951c5c5              # double 7.5415409999999996
	.quad	0x4020e70cdc8754f3              # double 8.4512699999999992
	.quad	0x3ff5aaad1d041cc5              # double 1.354169
	.quad	0x3ff1c70eb24a6a87              # double 1.1110979999999999
	.quad	0x3feaf9bdc69f8c22              # double 0.84298600000000001
	.quad	0x4005888509bf9c63              # double 2.6916600000000002
	.quad	0x401346c2efd438d2              # double 4.8191030000000001
	.quad	0x401cf85cee17a030              # double 7.2425420000000003
	.quad	0x3ffab2c1f42bb667              # double 1.668642
	.quad	0x4023e395c4220360              # double 9.944502
	.quad	0x4021dc59b8023a6d              # double 8.9303720000000002
	.quad	0x4014b47cb70ac3a8              # double 5.1762569999999997
	.quad	0x400cfc2656abde40              # double 3.6231200000000001
	.quad	0x3fef8c8472c0e7bc              # double 0.98590299999999997
	.quad	0x401436a11ec918e3              # double 5.0533489999999999
	.quad	0x4005f89efd86a8fc              # double 2.746397
	.quad	0x40165e4649906cca              # double 5.5920649999999998
	.quad	0x400260c8472c0e7c              # double 2.2972570000000001
	.quad	0x400949db65ecc3e3              # double 3.161063
	.quad	0x4022137ae5796bfd              # double 9.0380470000000006
	.quad	0x4020d0a548238540              # double 8.4075109999999995
	.quad	0x40174ed288ce703b              # double 5.826975
	.quad	0x3fc9346994185059              # double 0.196912
	.quad	0x4008b50fc71d6063              # double 3.088409
	.quad	0x3feae06d938151a4              # double 0.83989599999999997
	.quad	0x40109275ab7dc7ac              # double 4.143027
	.quad	0x400106b053198288              # double 2.128266
	.quad	0x3ffbc07570c564f9              # double 1.7344869999999999
	.quad	0x401f937824d4cb9f              # double 7.8940130000000001
	.quad	0x4018a8c36da87a07              # double 6.1648079999999998
	.quad	0x401893c9eecbfb16              # double 6.1443250000000003
	.quad	0x3fdae06961c36977              # double 0.41994700000000001
	.quad	0x3ffeee297396d091              # double 1.9331449999999999
	.quad	0x3ffe0061847f5621              # double 1.8750929999999999
	.quad	0x400115f5f0b28523              # double 2.135723
	.quad	0x4019bfa5d28d002e              # double 6.4371559999999999
	.quad	0x401fa29068986fce              # double 7.9087540000000001
	.quad	0x400ce9d40ee06d94              # double 3.6141740000000002
	.quad	0x401366950fc71d60              # double 4.8501779999999997
	.quad	0x3ff0fadf2ecf2064              # double 1.061248
	.quad	0x400499ff4fd6d7e9              # double 2.5751940000000002
	.quad	0x40171c61d8622c45              # double 5.777717
	.quad	0x401341be2b4959e6              # double 4.8142019999999999
	.quad	0x4020a7c957cd466f              # double 8.3277079999999994
	.quad	0x3fedd4a5df2239e7              # double 0.93220800000000004
	.quad	0x3ff7bb02d59d55e7              # double 1.4831570000000001
	.quad	0x401c9ad03d9a9542              # double 7.1511849999999999
	.quad	0x4013d25b749adc90              # double 4.9554270000000002
	.quad	0x3ffdb1422ccb3a26              # double 1.8557760000000001
	.quad	0x3fe23bfb58d1526e              # double 0.56982200000000005
	.quad	0x4021f93986338b48              # double 8.9867670000000004
	.quad	0x401de597d49d7ba6              # double 7.4742119999999996
	.quad	0x4011ceee0f3cb3e5              # double 4.4520799999999996
	.quad	0x3fc35a3a08398a65              # double 0.15119099999999999
	.quad	0x401963708aac96cc              # double 6.3471089999999997
	.quad	0x4019895c853c1483              # double 6.3841419999999998
	.quad	0x400415568e820e63              # double 2.5104190000000002
	.quad	0x3ff9e604e1e71045              # double 1.618657
	.quad	0x401a71144cbe1eb4              # double 6.6104289999999999
	.quad	0x3ffac346dc5d6388              # double 1.6726749999999999
	.quad	0x4018b039ef0f16f4              # double 6.1720959999999998
	.quad	0x4012b48b220791c5              # double 4.6763120000000002
	.quad	0x3ff0d0e8858ff759              # double 1.0510029999999999
	.quad	0x40063740c4156e26              # double 2.7769789999999999
	.quad	0x401154af4f0d844d              # double 4.3327
	.quad	0x4002a6d8b1dd5d3e              # double 2.3314680000000001
	.quad	0x400667e38eb0318c              # double 2.8007270000000002
	.quad	0x40107e43ed959a31              # double 4.1233060000000004
	.quad	0x402262a582dbe7f3              # double 9.1926690000000004
	.quad	0x4023c398a65492ff              # double 9.8820239999999994
	.quad	0x4015a107b784662c              # double 5.4072560000000003
	.quad	0x4019a82f944241c4              # double 6.4142440000000001
	.quad	0x4023c4493426783a              # double 9.8833710000000004
	.quad	0x4023e138fffbce42              # double 9.9398879999999998
	.quad	0x40067f25e56cd6c3              # double 2.812084
	.quad	0x3ffcc04a72ead927              # double 1.7969459999999999
	.quad	0x402394d8ba40d90e              # double 9.7907159999999998
	.quad	0x400216073de1e2df              # double 2.2607560000000002
	.quad	0x400b7e5321e603d5              # double 3.4366819999999998
	.quad	0x4019f36b8f9b1316              # double 6.4877149999999997
	.quad	0x4011a3f0bae89eba              # double 4.4100979999999996
	.quad	0x4018fe047d3d4281              # double 6.2480640000000003
	.quad	0x4022b8507a6bd6e9              # double 9.3599890000000005
	.quad	0x4019e6bdf4c2b51c              # double 6.4753340000000001
	.quad	0x4014442d8c2a454e              # double 5.0665800000000001
	.quad	0x3fe30711d798d8a9              # double 0.59461299999999995
	.quad	0x40239f69a91105e2              # double 9.8113530000000004
	.quad	0x3fce72f33ca31e7e              # double 0.23788300000000001
	.quad	0x4020d6c17ebaf102              # double 8.4194449999999996
	.quad	0x400c3d3d4280ae10              # double 3.5299019999999999
	.quad	0x401eb20ff540895d              # double 7.6738889999999999
	.quad	0x401fe3d96638433d              # double 7.9725089999999996
	.quad	0x400e907c84b5dcc6              # double 3.8205499999999999
	.quad	0x401f2af20ea5b531              # double 7.7919390000000001
	.quad	0x3feabd48cb4aec8d              # double 0.83560599999999996
	.quad	0x402136cd29131ec1              # double 8.6070340000000005
	.quad	0x401ecc297bfa4c62              # double 7.6993770000000001
	.quad	0x4018909dcf893faf              # double 6.1412269999999998
	.quad	0x400ba40420f6f08d              # double 3.4550860000000001
	.quad	0x401326b4c7f34938              # double 4.7877989999999997
	.quad	0x40217a2af5771002              # double 8.7386090000000003
	.quad	0x4021317b7414a4d3              # double 8.5966450000000005
	.quad	0x4018b636f3b213e4              # double 6.1779440000000001
	.quad	0x3fe73aecd07852f8              # double 0.725943
	.quad	0x40008c093d966384              # double 2.0683769999999999
	.quad	0x40218851eb851eb8              # double 8.7662499999999994
	.quad	0x401cdb5286b59147              # double 7.2141820000000001
	.quad	0x40176436fc158fb4              # double 5.8478659999999998
	.quad	0x401b804f6dfc5cdd              # double 6.8753029999999997
	.quad	0x4001167903211cb0              # double 2.1359729999999999
	.quad	0x401d6c725c3dee78              # double 7.3559049999999999
	.quad	0x401b92328f9f44d4              # double 6.8927709999999998
	.quad	0x402199e3864cb5bb              # double 8.8005639999999996
	.quad	0x3fe068a0d349be90              # double 0.51277200000000001
	.quad	0x401557fcb923a29c              # double 5.3359249999999996
	.quad	0x401e197891e21533              # double 7.5248739999999996
	.quad	0x4014bebdd334c5da              # double 5.1862709999999996
	.quad	0x400b7e279dd3bafe              # double 3.4365990000000002
	.quad	0x40224db0bbf50e34              # double 9.1517389999999991
	.quad	0x4018fc3b4f616723              # double 6.2463199999999999
	.quad	0x40089d66adb402d1              # double 3.0768559999999998
	.quad	0x401fe341e14bdfd2              # double 7.9719309999999997
	.quad	0x4022ad783dff3f10              # double 9.3388080000000002
	.quad	0x401daa48f96e1587              # double 7.4162939999999997
	.quad	0x400cb347a5b0ff11              # double 3.587539
	.quad	0x40005fe974a3400c              # double 2.0468320000000002
	.quad	0x401098b934699418              # double 4.1491439999999997
	.quad	0x4023b5393250b524              # double 9.8539519999999996
	.quad	0x3ffe366e86c6583f              # double 1.8882890000000001
	.quad	0x401fb05d95dd4c77              # double 7.9222320000000001
	.quad	0x4019d9b30728e92d              # double 6.4625969999999997
	.quad	0x401590642396073e              # double 5.3910070000000001
	.quad	0x400572934acaff6d              # double 2.6809449999999999
	.quad	0x4018d436fc158fb4              # double 6.2072409999999998
	.quad	0x401ed7d9dba908a2              # double 7.7107919999999996
	.quad	0x3fd18bda9435ac8a              # double 0.27416099999999999
	.quad	0x4017ad74d594f26b              # double 5.9193910000000001
	.quad	0x40126b1960fa15db              # double 4.6045889999999998
	.quad	0x40174113404ea4a9              # double 5.8135500000000002
	.quad	0x3feabc21187e7c07              # double 0.83546500000000001
	.quad	0x3ffe87b890d5a5b9              # double 1.9081349999999999
	.quad	0x3ffb9c422036006d              # double 1.725649
	.quad	0x40141b456b441bb9              # double 5.0266320000000002
	.quad	0x4020125a250f8402              # double 8.0358440000000009
	.quad	0x4001b457c0b13598              # double 2.2130580000000002
	.quad	0x40008fe3f359ff50              # double 2.0702590000000001
	.quad	0x4007c77574f722e2              # double 2.9723920000000001
	.quad	0x4020dbffac1d29dc              # double 8.4296849999999992
	.quad	0x3fe044ed6fda836f              # double 0.50841400000000003
	.quad	0x40124379314445aa              # double 4.5658919999999998
	.quad	0x40139593e5fb71fc              # double 4.8960720000000002
	.quad	0x4020b47c957cd467              # double 8.3525130000000001
	.quad	0x400abc9abb01c92e              # double 3.3420920000000001
	.quad	0x40227e3d816aceab              # double 9.2465630000000001
	.quad	0x4011456f32bdc26e              # double 4.3178070000000002
	.quad	0x40045b2b3461309c              # double 2.5445159999999998
	.quad	0x401efc957cd466f5              # double 7.7466639999999999
	.quad	0x4017088b11409a24              # double 5.758343
	.quad	0x400dd9fcb0c026cc              # double 3.731439
	.quad	0x3fccfbd273d5bab2              # double 0.226435
	.quad	0x3ff52da98676a726              # double 1.3236479999999999
	.quad	0x4023e41fa7653437              # double 9.9455539999999995
	.quad	0x4016837bd05af6c7              # double 5.6284020000000003
	.quad	0x4000a65f0f5a1017              # double 2.0812360000000001
	.quad	0x401a9c8472c0e7bc              # double 6.6528489999999998
	.quad	0x401da997c3d68406              # double 7.4156180000000003
	.quad	0x4021fd8a76102795              # double 8.9951969999999992
	.quad	0x401fadfa871a3b15              # double 7.9199010000000003
	.quad	0x401810b0af5fd47c              # double 6.0162990000000001
	.quad	0x4020e0e8427418d7              # double 8.4392720000000008
	.quad	0x3fffdb4edb2f661f              # double 1.991042
	.quad	0x4018b84fd2a62aa2              # double 6.1799920000000004
	.quad	0x401fee7e62dc6e2b              # double 7.9829040000000004
	.quad	0x4015144c7b02d59d              # double 5.2698229999999997
	.quad	0x400205ccc89b0ee5              # double 2.2528320000000002
	.quad	0x400c4265f0f5a101              # double 3.5324209999999998
	.quad	0x400360d23d4f15e8              # double 2.4222760000000001
	.quad	0x401a747e8ccdd93c              # double 6.6137639999999998
	.quad	0x400917e45803cd14              # double 3.136666
	.quad	0x402321d2178f68be              # double 9.5660559999999997
	.quad	0x4013a8958d9b5e96              # double 4.9146330000000003
	.quad	0x3ff01042d8c2a455              # double 1.00397
	.quad	0x4009b6dfc5cdd50b              # double 3.2142940000000002
	.quad	0x401e7246bf01322f              # double 7.6115979999999998
	.quad	0x40176027d88c1db0              # double 5.8439019999999999
	.quad	0x4008b035371971c1              # double 3.086039
	.quad	0x401caa697aeddce8              # double 7.1664180000000002
	.quad	0x401ff96e58a32f45              # double 7.9935850000000003
	.quad	0x4021048de2ac3223              # double 8.5088950000000008
	.quad	0x40234cbe40420f6f              # double 9.6498889999999999
	.quad	0x40142738a3b57c4e              # double 5.0383019999999998
	.quad	0x401f5368ad688377              # double 7.8314539999999999
	.quad	0x401f7a3c64345cff              # double 7.8693710000000001
	.quad	0x4008e4c48adeebb3              # double 3.1117029999999999
	.quad	0x40207655c0fcb4f2              # double 8.2311230000000002
	.quad	0x3ff3b2cb641700ce              # double 1.2311510000000001
	.quad	0x400a9be9856a37ac              # double 3.3261289999999999
	.quad	0x401809a2c669057d              # double 6.0094099999999999
	.quad	0x4015c4dec1c1d6d0              # double 5.4422560000000004
	.quad	0x4023c789613d31ba              # double 9.8897200000000005
	.quad	0x400a5c72e275ab7e              # double 3.2951410000000001
	.quad	0x4016bdc55000c954              # double 5.6853230000000003
	.quad	0x4003b074213a0c6b              # double 2.4611589999999999
	.quad	0x400acbc1eff9f87f              # double 3.349491
	.quad	0x4023c3037d63022e              # double 9.8808860000000003
	.quad	0x401df2231832fcad              # double 7.4864620000000003
	.quad	0x4021b9ef73c0c1fd              # double 8.8631550000000008
	.quad	0x4017c02e6644d877              # double 5.9376769999999999
	.quad	0x4003ea6ca03c4b0a              # double 2.489465
	.quad	0x4010222036006d0d              # double 4.0333259999999997
	.quad	0x4022a1c3ac929aa2              # double 9.3159460000000003
	.quad	0x4023a5f761cbccf3              # double 9.8241530000000008
	.quad	0x4004ba79fec99f1b              # double 2.5910530000000001
	.quad	0x40163485e3da2f8c              # double 5.5512920000000001
	.quad	0x4023ac2fe82517e7              # double 9.8363029999999991
	.quad	0x3fec1a027525460b              # double 0.87817500000000004
	.quad	0x3fda074213a0c6b5              # double 0.40669300000000003
	.quad	0x3fe731a2a4db163c              # double 0.72480900000000004
	.quad	0x4010a75a74c09c3d              # double 4.1634310000000001
	.quad	0x401e7100e6afcce2              # double 7.6103550000000002
	.quad	0x401f6a0a958537e3              # double 7.8535560000000002
	.quad	0x400ca3be6601bc99              # double 3.5799530000000002
	.quad	0x3fd5806290eed02d              # double 0.33596100000000001
	.quad	0x402092ccb3a2595c              # double 8.2867180000000004
	.quad	0x400b27d1351159c5              # double 3.3944420000000002
	.quad	0x401f6c4dec1c1d6d              # double 7.855766
	.quad	0x401e6b430f49491f              # double 7.6047479999999998
	.quad	0x4017f2bf9830e3ce              # double 5.9870590000000004
	.quad	0x402195fe974a3401              # double 8.7929580000000005
	.quad	0x4003f4e4430b178b              # double 2.4945759999999999
	.quad	0x4016c2e0e30446b7              # double 5.6903110000000003
	.quad	0x401fa33f42352eb6              # double 7.909421
	.quad	0x4002d71eafee6fb5              # double 2.3550390000000001
	.quad	0x3fc4129cbab649d4              # double 0.15681800000000001
	.quad	0x4016116c61522a6f              # double 5.5170149999999998
	.quad	0x40194a821f2990f3              # double 6.322762
	.quad	0x401fbeb399f5dfec              # double 7.9362320000000004
	.quad	0x4003716a055757d6              # double 2.4303780000000001
	.quad	0x402210e219652bd4              # double 9.0329750000000004
	.quad	0x401a1435efa615a9              # double 6.5197370000000001
	.quad	0x40029e35c5b4aa97              # double 2.327251
	.quad	0x40058b8bef8ceb35              # double 2.6931379999999998
	.quad	0x40151babead4f590              # double 5.2770229999999998
	.quad	0x400f4623d0bfa094              # double 3.9092479999999998
	.quad	0x400caa5482385404              # double 3.5831689999999998
	.quad	0x3ffddeabbcb1cc96              # double 1.8668629999999999
	.quad	0x4022dfe718a86d72              # double 9.4373100000000001
	.quad	0x4000f3d7d3910c2c              # double 2.1190639999999998
	.quad	0x40030138fffbce42              # double 2.375597
	.quad	0x400a43f3e0370cdd              # double 3.2831800000000002
	.quad	0x401d7a272862f599              # double 7.3692900000000003
	.quad	0x401d45b1c8648840              # double 7.3180610000000001
	.quad	0x401b4ba6efc371da              # double 6.8238789999999998
	.quad	0x4011a31fcd24e161              # double 4.4093010000000001
	.quad	0x400eeccf6be37de9              # double 3.8656299999999999
	.quad	0x401a14067cf1c326              # double 6.5195559999999997
	.quad	0x3fd4b65668c26139              # double 0.323629
	.quad	0x3fd4587d6f976790              # double 0.31790099999999999
	.quad	0x4023f60a41a261bf              # double 9.9805469999999996
	.quad	0x3f9534373f316e37              # double 0.020707
	.quad	0x4023d15dd4c76d11              # double 9.9089189999999991
	.quad	0x402162af35e310dc              # double 8.6927430000000001
	.quad	0x40183764adff822c              # double 6.0540950000000002
	.quad	0x4006f586ca89fc6e              # double 2.8698860000000002
	.quad	0x401cef1886df82b2              # double 7.233492
	.quad	0x4010ffec56d5cfab              # double 4.2499250000000002
	.quad	0x3ffb576bc1eff9f8              # double 1.7088429999999999
	.quad	0x4005cf9335d249e4              # double 2.7263549999999999
	.quad	0x3ffdfdfb0d51f81a              # double 1.8745069999999999
	.quad	0x401eaece5710880e              # double 7.6707090000000004
	.quad	0x40206afec56d5cfb              # double 8.2089750000000006
	.quad	0x3ffe387ad080b674              # double 1.8887890000000001
	.quad	0x4023f207d4e09785              # double 9.9727160000000001
	.quad	0x40105564f97edc7f              # double 4.0833930000000001
	.quad	0x401ffdf4c2b51bd6              # double 7.9980039999999999
	.quad	0x40213f0196d8f4f9              # double 8.6230589999999996
	.quad	0x4011031fcd24e161              # double 4.2530510000000001
	.quad	0x40126b2d4d4024b3              # double 4.6046649999999998
	.quad	0x400cc368f08461fa              # double 3.595415
	.quad	0x3feb9fc6da448494              # double 0.86325399999999996
	.quad	0x3ff0d3a0c6b484d7              # double 1.0516669999999999
	.quad	0x4022024a8c154c98              # double 9.0044749999999993
	.quad	0x401f6b65a9a80496              # double 7.8548799999999996
	.quad	0x400e20578e5c4eb5              # double 3.7657919999999998
	.quad	0x4007407e5a78f25a              # double 2.9064909999999999
	.quad	0x4001be5c0b999136              # double 2.2179489999999999
	.quad	0x401b5d1351159c49              # double 6.8408939999999996
	.quad	0x40101524bfd2e947              # double 4.0206480000000004
	.quad	0x3ff25bc98a222d51              # double 1.1474089999999999
	.quad	0x4022e0e2c12ad81b              # double 9.4392300000000002
	.quad	0x4021894812be48a6              # double 8.7681280000000008
	.quad	0x401fb9f94855da27              # double 7.9316149999999998
	.quad	0x4023230a6fc58ab9              # double 9.5684389999999996
	.quad	0x40152bacb4289119              # double 5.2926510000000002
	.quad	0x4022ee39f77292c5              # double 9.4652860000000007
	.quad	0x400b2db37c99ae92              # double 3.3973149999999999
	.quad	0x401bac6b484d76ab              # double 6.9183779999999997
	.quad	0x3feed48238540464              # double 0.96344099999999999
	.quad	0x401d3d4e4c942d49              # double 7.309869
	.quad	0x401fd8db8bac710d              # double 7.9617750000000002
	.quad	0x3ff46b7995ee136e              # double 1.2762389999999999
	.quad	0x40159d31337eb28e              # double 5.4035080000000004
	.quad	0x40029995ee136e72              # double 2.3249930000000001
	.quad	0x40203ab6ae7d566d              # double 8.1146750000000001
	.quad	0x400407863beec398              # double 2.5036740000000002
	.quad	0x4021883558a76102              # double 8.7660319999999992
	.quad	0x3ff57049a9973d9f              # double 1.339914
	.quad	0x402084488c60cbf3              # double 8.2583660000000005
	.quad	0x4019335a426bb55b              # double 6.3001490000000002
	.quad	0x402236d99cbee808              # double 9.1071290000000005
	.quad	0x401b5ae2541d8e86              # double 6.8387539999999998
	.quad	0x40206c96249a133c              # double 8.2120829999999997
	.quad	0x401855f3d7d3910c              # double 6.0839379999999998
	.quad	0x401fa439de481f54              # double 7.9103770000000004
	.quad	0x402398c197e56473              # double 9.7983519999999995
	.quad	0x3ff5e2f8bdec5f39              # double 1.3679129999999999
	.quad	0x4016cedaec4a4096              # double 5.702007
	.quad	0x401166234a87e38f              # double 4.3497440000000003
	.quad	0x401feb76f6d76252              # double 7.979946
	.quad	0x400a15c74751ce29              # double 3.260634
	.quad	0x3feade4c51116a8c              # double 0.83963600000000004
	.quad	0x4020df240fa9c12f              # double 8.4358219999999999
	.quad	0x401b3b068123810f              # double 6.8076420000000004
	.quad	0x400e382ba5a03819              # double 3.7774269999999999
	.quad	0x400996501e2584f5              # double 3.1983950000000001
	.quad	0x401ffc23315d701e              # double 7.9962280000000003
	.quad	0x4018c822ff08893b              # double 6.1954459999999996
	.quad	0x4006ba3875925354              # double 2.8409279999999999
	.quad	0x40171535c9e6687f              # double 5.7707129999999998
	.quad	0x401660b9dc2f405f              # double 5.5944589999999996
	.quad	0x3ff02aad1d041cc5              # double 1.010419
	.quad	0x401e9ef30a4e379b              # double 7.6552239999999995
	.quad	0x40103528283d35eb              # double 4.0519109999999996
	.quad	0x40059835158b8280              # double 2.6993200000000002
	.quad	0x40156f8ec0f88334              # double 5.358943
	.quad	0x401bdc486ad2dcb1              # double 6.9651199999999998
	.quad	0x4011abfad2999568              # double 4.4179490000000001
	.quad	0x40153f2f9873ffac              # double 5.3117049999999999
	.quad	0x4015e3d7d3910c2c              # double 5.4725029999999997
	.quad	0x3ff7f51ce28ed5f1              # double 1.497342
	.quad	0x3fd3c27a63736cdf              # double 0.30874499999999999
	.quad	0x40072f9c1f85d745              # double 2.898247
	.quad	0x401981a1db877ab3              # double 6.3765939999999999
	.quad	0x4008cdc443914f48              # double 3.1004719999999999
	.quad	0x40164b56b8737974              # double 5.5735729999999997
	.quad	0x401053947496aad2              # double 4.0816210000000002
	.quad	0x401a3267c6b8b695              # double 6.5492239999999997
	.quad	0x3ff4cabb44e50c5f              # double 1.2994950000000001
	.quad	0x4023930f49491f2e              # double 9.7872260000000004
	.quad	0x400265e2cdc011d3              # double 2.2997489999999998
	.quad	0x401b190f301eabbd              # double 6.7744720000000003
	.quad	0x400e29bd8383ad9f              # double 3.770381
	.quad	0x4008e012599ed7c7              # double 3.10941
	.quad	0x4009c30b9dc2f406              # double 3.220237
	.quad	0x401421c0010c6f7a              # double 5.032959
	.quad	0x401651eeaa6d2674              # double 5.580012
	.quad	0x4004e1919ac79703              # double 2.610141
	.quad	0x3ffedcdc443914f5              # double 1.9289210000000001
	.quad	0x4022cfcd24e160d9              # double 9.4058620000000008
	.quad	0x3ffd66d9be4cd749              # double 1.83761
	.quad	0x401d6484d76ab580              # double 7.3481629999999996
	.quad	0x400fe78c868b9fdc              # double 3.9880610000000001
	.quad	0x400e0bedfa43fe5d              # double 3.7558250000000002
	.quad	0x400108d10f51ac9b              # double 2.129305
	.quad	0x4019a636f3b213e4              # double 6.4123190000000001
	.quad	0x4022db417ca2120e              # double 9.4282339999999998
	.quad	0x4022dc4827b6fe2e              # double 9.4302379999999992
	.quad	0x4022b0359bc33f85              # double 9.3441589999999994
	.quad	0x4016296fa82e87d3              # double 5.5404650000000002
	.quad	0x4021c72ae07e5a79              # double 8.8889990000000001
	.quad	0x4020a7b395c42203              # double 8.3275419999999993
	.quad	0x4023ad6adf71eaff              # double 9.8387060000000001
	.quad	0x4022827913e81451              # double 9.2548300000000001
	.quad	0x4018304c8bc9cd3e              # double 6.047167
	.quad	0x40213d2674080f99              # double 8.619434
	.quad	0x402171a8ef77f280              # double 8.7219920000000002
	.quad	0x4023c4330d73860a              # double 9.8832020000000007
	.quad	0x40117e32a0663c75              # double 4.37324
	.quad	0x4020e743c7d5ed07              # double 8.451689
	.quad	0x40064c929aa1d756              # double 2.7873890000000001
	.quad	0x40239c840e1719f8              # double 9.805695
	.quad	0x3fbde236c15d2d02              # double 0.116733
	.quad	0x401a57afa7221859              # double 6.5856310000000002
	.quad	0x401569a5a89b951c              # double 5.3531709999999997
	.quad	0x401ed5918a009f62              # double 7.7085629999999998
	.quad	0x402079bef49cf56f              # double 8.2377850000000006
	.quad	0x4023baa68f4b61fe              # double 9.8645519999999998
	.quad	0x3fdf566490a350d3              # double 0.48964800000000003
	.quad	0x401662745bf26f1e              # double 5.5961470000000002
	.quad	0x40225f192ea52ef9              # double 9.1857389999999999
	.quad	0x401c07481b21c476              # double 7.0071110000000001
	.quad	0x4020ff62b6ae7d56              # double 8.4987999999999992
	.quad	0x401824f2f123c42a              # double 6.0360829999999996
	.quad	0x4023bc8fd9fd36f8              # double 9.8682850000000001
	.quad	0x40166182235b4edb              # double 5.5952229999999998
	.quad	0x40186463497b7415              # double 6.0980350000000003
	.quad	0x4019b530489d27c4              # double 6.4269420000000004
	.quad	0x4014c7dae81882ae              # double 5.1951710000000002
	.quad	0x3fd4674d1633482c              # double 0.31880500000000001
	.quad	0x3ff95769a91105e2              # double 1.5838410000000001
	.quad	0x401cde0eb67c2870              # double 7.2168530000000004
	.quad	0x4012ec2e770bd018              # double 4.7306460000000001
	.quad	0x401ab033e78e1933              # double 6.6720730000000001
	.quad	0x3ff6f90214ad362f              # double 1.4357930000000001
	.quad	0x401f6154866a11ed              # double 7.8450490000000003
	.quad	0x3fe516c82e019b0b              # double 0.65903100000000003
	.quad	0x3ffab10880d801b4              # double 1.668221
	.quad	0x4001b9096bb98c7e              # double 2.2153499999999999
	.quad	0x3ffc2b8a5ce5b424              # double 1.7606299999999999
	.quad	0x4020316db0dd82fd              # double 8.0965399999999992
	.quad	0x401e60da5daf07c0              # double 7.5945830000000001
	.quad	0x4004bad31fcd24e1              # double 2.5912229999999998
	.quad	0x4011e00c0f01fb83              # double 4.4687960000000002
	.quad	0x3ffe74213a0c6b48              # double 1.9033519999999999
	.quad	0x401ae29d40ee06d9              # double 6.7213029999999998
	.quad	0x4015c62888b545c8              # double 5.4435140000000004
	.quad	0x401e349b62c77575              # double 7.551374
	.quad	0x40129a04d12018a4              # double 4.6504089999999998
	.quad	0x4001eb7aa25d8d7a              # double 2.2399800000000001
	.quad	0x4020017aeddce7cd              # double 8.002891
	.quad	0x401f68c111ada76e              # double 7.8522990000000004
	.quad	0x4021f3925bb7b6bb              # double 8.9757259999999999
	.quad	0x401907ebaf102364              # double 6.2577350000000003
	.quad	0x401656687f455a7d              # double 5.5843829999999999
	.quad	0x4021e1f1f14983d8              # double 8.9412990000000008
	.quad	0x4015fc11e42e1262              # double 5.496162
	.quad	0x3ffbfeed45e9185d              # double 1.749738
	.quad	0x3febf9d4d834091c              # double 0.87424699999999999
	.quad	0x401894a38327674d              # double 6.1451549999999999
	.quad	0x400fd963992c8c50              # double 3.981147
	.quad	0x401af8abd5dc4007              # double 6.7428429999999997
	.quad	0x4012ca322af57710              # double 4.697457
	.quad	0x4020a7e36d22424a              # double 8.3279069999999997
	.quad	0x3ff6276640a6b93d              # double 1.384619
	.quad	0x3f92c2374794ea07              # double 0.018318999999999998
	.quad	0x40175cdd93c46d83              # double 5.8406890000000002
	.quad	0x4013f743a647fdc6              # double 4.9914690000000004
	.quad	0x401ebf8a0902de01              # double 7.6870500000000001
	.quad	0x401be5e74299d884              # double 6.9745150000000002
	.quad	0x3ff3e29b6b2af145              # double 1.2428239999999999
	.quad	0x400e672da122fad7              # double 3.8003800000000001
	.quad	0x4011c4d26fa3fcca              # double 4.4422090000000001
	.quad	0x40215a3ee1bd1eda              # double 8.6762610000000002
	.quad	0x4022e550ebaade65              # double 9.4478829999999991
	.quad	0x40151abbcb1cc964              # double 5.2761069999999997
	.quad	0x400174280ae10492              # double 2.1817169999999999
	.quad	0x400e64a48f96e158              # double 3.7991419999999998
	.quad	0x4023b910a137f38c              # double 9.8614549999999994
	.quad	0x401b2e1c58255b03              # double 6.7950299999999997
	.quad	0x401d7774256bca53              # double 7.3666539999999996
	.quad	0x4011cd0a67620ee9              # double 4.4502350000000002
	.quad	0x4006575d9a0f0a5f              # double 2.792659
	.quad	0x4013255821294574              # double 4.7864690000000003
	.quad	0x4019caa326e11559              # double 6.4478879999999998
	.quad	0x4003441e57d9dba9              # double 2.408261
	.quad	0x402376f1348b2208              # double 9.7323090000000007
	.quad	0x3ff466e5471715c6              # double 1.2751209999999999
	.quad	0x401e2bf0995aaf79              # double 7.54291
	.quad	0x401a05d18090b418              # double 6.5056820000000002
	.quad	0x4022676a2f48c2e7              # double 9.2019819999999992
	.quad	0x400fa13cab81f96a              # double 3.953729
	.quad	0x4010f9c347e8ccde              # double 4.2439090000000004
	.quad	0x4020f4f6598e10cf              # double 8.4784419999999994
	.quad	0x40168c069e7fb268              # double 5.6367440000000002
	.quad	0x3fcb4057082491b0              # double 0.21290100000000001
	.quad	0x3fec28112ba16e7a              # double 0.87989099999999998
	.quad	0x3ff6614f0520d131              # double 1.398757
	.quad	0x402275f1e0828c37              # double 9.2303610000000003
	.quad	0x4022d9248d7e0264              # double 9.4241069999999993
	.quad	0x401a9e9707182236              # double 6.6548730000000003
	.quad	0x400e9e518f3eccc4              # double 3.8273039999999998
	.quad	0x401be1754b05b7d0              # double 6.9701740000000001
	.quad	0x401682e48e8a71de              # double 5.6278249999999996
	.quad	0x3fff7e5321e603d5              # double 1.9683409999999999
	.quad	0x4008bdffc5479d4e              # double 3.0927730000000002
	.quad	0x4020f733a8a3f898              # double 8.4828159999999997
	.quad	0x40114440af1cb89d              # double 4.3166529999999996
	.quad	0x4019822a6f3f52fc              # double 6.3771149999999999
	.quad	0x40226baa582dbe7f              # double 9.2102839999999997
	.quad	0x3ffdab1a2a4db164              # double 1.8542730000000001
	.quad	0x402283fa2ad3e921              # double 9.2577680000000004
	.quad	0x40190b4f1e4b44a2              # double 6.2610440000000001
	.quad	0x3fdd2c3c9eecbfb1              # double 0.45582499999999998
	.quad	0x401ec53b0813cab8              # double 7.6926079999999998
	.quad	0x401d948f53c579f2              # double 7.3950779999999998
	.quad	0x4016a6c8f7553693              # double 5.6628759999999998
	.quad	0x4015761847f56217              # double 5.3653269999999997
	.quad	0x4020af644955b467              # double 8.3425619999999991
	.quad	0x40191532e7b3d8e0              # double 6.270702
	.quad	0x4021b0c5a8155d5f              # double 8.8452579999999994
	.quad	0x4010318611fd5886              # double 4.0483630000000002
	.quad	0x40219d0225742dcf              # double 8.8066569999999995
	.quad	0x400dc79a2834d270              # double 3.7224620000000002
	.quad	0x3fa3e0370cdc8755              # double 0.03882
	.quad	0x400f02df9378ee28              # double 3.8764029999999998
	.quad	0x40233531337eb28e              # double 9.6038910000000008
	.quad	0x400aabd9018e7579              # double 3.3339099999999999
	.quad	0x3fc982b1f687b13a              # double 0.19930100000000001
	.quad	0x4017b164840e171a              # double 5.923235
	.quad	0x40234a8eb463497b              # double 9.6456199999999991
	.quad	0x40070a9cdc443915              # double 2.880182
	.quad	0x401e68c75c4a83b2              # double 7.6023230000000002
	.quad	0x4021dc80e8c8abd6              # double 8.9306710000000002
	.quad	0x4017f99d451fc4c1              # double 5.9937639999999996
	.quad	0x3fe2439bcba30121              # double 0.57075299999999995
	.quad	0x400b549f0e4da09d              # double 3.4163190000000001
	.quad	0x3fe4f3f961804d98              # double 0.65478199999999998
	.quad	0x3fa5604189374bc7              # double 0.041750000000000002
	.quad	0x4013b47baa9b499d              # double 4.926253
	.quad	0x3ff98c92146a1a50              # double 1.596819
	.quad	0x3ff11530489d27c4              # double 1.0676730000000001
	.quad	0x401e66a93f290abb              # double 7.6002549999999997
	.quad	0x401db060780fdc16              # double 7.4222429999999999
	.quad	0x4017ddbe7f2c300a              # double 5.9665470000000003
	.quad	0x4003c7a6bd6e8af8              # double 2.472486
	.quad	0x40117240fa9c12f1              # double 4.3615760000000003
	.quad	0x4021df0329802c0a              # double 8.9355709999999995
	.quad	0x4002718b93469942              # double 2.3054420000000002
	.quad	0x3ffc092ab68cef67              # double 1.752238
	.quad	0x401e174080f98fa3              # double 7.5227069999999995
	.quad	0x4014dca7503b81b6              # double 5.2154819999999997
	.quad	0x3ff067d1351159c5              # double 1.0253460000000001
	.quad	0x3ff2a81fd9ba1b19              # double 1.1660459999999999
	.quad	0x4003ef9e3864cb5c              # double 2.4920010000000001
	.quad	0x40174dd7a99fa11b              # double 5.8260180000000004
	.quad	0x3fd84f82f5126634              # double 0.379853
	.quad	0x400c2c81d3aa36a0              # double 3.5217320000000001
	.quad	0x400d088e79aae6c9              # double 3.629178
	.quad	0x3feeae642bf9830e              # double 0.95878799999999997
	.quad	0x40053b9a5a89b952              # double 2.6541030000000001
	.quad	0x4023c7bca1059ea5              # double 9.8901109999999992
	.quad	0x400c262dc6e2a800              # double 3.5186419999999998
	.quad	0x401a1d438d1d8a55              # double 6.5285780000000004
	.quad	0x3fff3c5479d4d834              # double 1.952229
	.quad	0x401e7cb6c7a7c9de              # double 7.621791
	.quad	0x40218e89a88ace25              # double 8.7783940000000005
	.quad	0x3fe0ad6451b93038              # double 0.52116600000000002
	.quad	0x4013820c49ba5e35              # double 4.8769999999999998
	.quad	0x40132c39bcba3012              # double 4.7931889999999999
	.quad	0x4016ffb86f47b678              # double 5.749727
	.quad	0x3fdd3586ca89fc6e              # double 0.45639200000000002
	.quad	0x4023105ad538ac19              # double 9.531943
	.quad	0x3fdcef06b37867f1              # double 0.45208900000000002
	.quad	0x40181a3b57c4e2f3              # double 6.0256169999999996
	.quad	0x400952f01754b05b              # double 3.1654969999999998
	.quad	0x40014a958537e2c5              # double 2.1614179999999998
	.quad	0x400539e59f2ba9d2              # double 2.65327
	.quad	0x3ff69019f3c70c99              # double 1.4101809999999999
	.quad	0x401c7a5870da5daf              # double 7.119478
	.quad	0x4010cdcb5781c715              # double 4.200971
	.quad	0x4013185122318330              # double 4.7737470000000002
	.quad	0x4017bf544bb1af3a              # double 5.9368449999999999
	.quad	0x4011d5e74299d884              # double 4.4588900000000002
	.quad	0x401a8840181e03f7              # double 6.633057
	.quad	0x402117bc3c5bd0e1              # double 8.5463579999999997
	.quad	0x4013221d10b1feeb              # double 4.7833139999999998
	.quad	0x3ff8b49385836220              # double 1.5440860000000001
	.quad	0x401c310e8858ff76              # double 7.0479070000000004
	.quad	0x40204250507a6bd7              # double 8.1295190000000002
	.quad	0x401e06c8f7553693              # double 7.5066259999999997
	.quad	0x4016db9628cbd124              # double 5.7144399999999997
	.quad	0x4008e04189374bc7              # double 3.1095000000000002
	.quad	0x4021c06c43f5f916              # double 8.875826
	.quad	0x3fe60476f2a5a46a              # double 0.68804500000000002
	.quad	0x3ff3765cb35f3d7d              # double 1.216397
	.quad	0x3ffba53005814941              # double 1.7278290000000001
	.quad	0x40197a9b06812381              # double 6.3697319999999999
	.quad	0x400c9b3d07c84b5e              # double 3.5758000000000001
	.quad	0x40156328b6d86ec1              # double 5.3468349999999996
	.quad	0x4014725d4a5df224              # double 5.1116840000000003
	.quad	0x401b07403dddb121              # double 6.7570810000000003
	.quad	0x401c68509bf9c62a              # double 7.1018699999999999
	.quad	0x4003a74afd545415              # double 2.4566859999999999
	.quad	0x40137931ca7d6734              # double 4.8683540000000001
	.quad	0x400943f1c75818c6              # double 3.1581760000000001
	.quad	0x4017c974e65bea0c              # double 5.9467350000000003
	.quad	0x40140f8b9baa1512              # double 5.0151810000000001
	.quad	0x40201d52e2fbe33b              # double 8.0572730000000004
	.quad	0x400c7a355043e532              # double 3.5596719999999999
	.quad	0x401ac5bab21815a0              # double 6.6930949999999996
	.quad	0x3ffc6b3461309c80              # double 1.776173
	.quad	0x401fdc3dab5c39bd              # double 7.9650790000000002
	.quad	0x3fc5f47735c182ed              # double 0.17152300000000001
	.quad	0x3ff54b75ea67e847              # double 1.3309230000000001
	.quad	0x3ff70aeea63b688c              # double 1.440169
	.quad	0x4020fac3eb7cbb3d              # double 8.4897760000000009
	.quad	0x40239eab7995ee13              # double 9.8099019999999992
	.quad	0x4013f9934efcbd55              # double 4.9937259999999997
	.quad	0x401c2ddc6195464e              # double 7.0447860000000002
	.quad	0x402200984e3ffef4              # double 9.0011620000000007
	.quad	0x40122a493c89f40a              # double 4.5412949999999999
	.quad	0x40098e3a3a8e7147              # double 3.1944469999999998
	.quad	0x400ddff36ac64778              # double 3.7343510000000002
	.quad	0x400a7ef39085f4a1              # double 3.3119879999999999
	.quad	0x401f0bc59b8023a7              # double 7.7614960000000001
	.quad	0x3fec9707182235b5              # double 0.89343600000000001
	.quad	0x4007315c63ae2542              # double 2.8991020000000001
	.quad	0x3fd449491f2dc2b1              # double 0.316973
	.quad	0x3ff01327243137b0              # double 1.0046759999999999
	.quad	0x401303382e44b6e9              # double 4.7531439999999998
	.quad	0x401815810624dd2f              # double 6.0209999999999999
	.quad	0x4022f195ee136e72              # double 9.4718470000000003
	.quad	0x40115ac68a936c59              # double 4.3386480000000001
	.quad	0x402082b7fe08aefb              # double 8.2553099999999997
	.quad	0x401616f4be835dee              # double 5.522418
	.quad	0x4022e86e7e62dc6e              # double 9.4539679999999997
	.quad	0x4003808d08919ef9              # double 2.4377689999999999
	.quad	0x3feb7a93af74cd31              # double 0.85871299999999995
	.quad	0x4013be368f084620              # double 4.9357550000000003
	.quad	0x40134ae07e5a78f2              # double 4.8231219999999997
	.quad	0x401e7e86c6583e85              # double 7.6235609999999995
	.quad	0x4012699d0203e63f              # double 4.6031380000000004
	.quad	0x3ff0f0941c8216c6              # double 1.058735
	.quad	0x3fea766c6de76428              # double 0.82695600000000002
	.quad	0x400461cd5f99c38b              # double 2.547755
	.quad	0x3ffc0f605ab3aabd              # double 1.753754
	.quad	0x4014a8f9b13165d4              # double 5.1650150000000004
	.quad	0x40101301a79fec9a              # double 4.018561
	.quad	0x40148907d912556d              # double 5.1338189999999999
	.quad	0x4019b9bd4067cf1c              # double 6.4313859999999998
	.quad	0x4002631ad2135dab              # double 2.2983910000000001
	.quad	0x3fe79cc532a497fa              # double 0.73788699999999996
	.quad	0x401659acbc8c0ce9              # double 5.5875729999999999
	.quad	0x401d4b1ee2435697              # double 7.3233600000000001
	.quad	0x3ff8b9756c93a711              # double 1.5452779999999999
	.quad	0x401fc02c9081c2e3              # double 7.9376699999999997
	.quad	0x401c2c7abfb9bed3              # double 7.0434369999999999
	.quad	0x4023ef644955b467              # double 9.9675619999999991
	.quad	0x4023dd70a3d70a3d              # double 9.9324999999999992
	.quad	0x4023de6e86c6583f              # double 9.9344370000000008
	.quad	0x3ff0286833c6002a              # double 1.009865
	.quad	0x400a299c7bcc2939              # double 3.2703180000000001
	.quad	0x400c4363b256ffc1              # double 3.532905
	.quad	0x4017acd39da16617              # double 5.9187760000000003
	.quad	0x4000d421c044284e              # double 2.10358
	.quad	0x401a6961c36976bc              # double 6.6029119999999999
	.quad	0x40220280cf9e3865              # double 9.0048890000000004
	.quad	0x3fe376d117b5286b              # double 0.60825399999999996
	.quad	0x4022fd27e5215769              # double 9.4944450000000006
	.quad	0x3ff57c87db2b3461              # double 1.342903
	.quad	0x40159575c0767d35              # double 5.3959570000000001
	.quad	0x4020209b30728e93              # double 8.0636840000000003
	.quad	0x401264178705425f              # double 4.5977459999999999
	.quad	0x401abc39ffd60e95              # double 6.6838150000000001
	.quad	0x4010ec471b478423              # double 4.2307399999999999
	.quad	0x4021b165d3996fa8              # double 8.8464799999999997
	.quad	0x401eaaad1d041cc5              # double 7.6666759999999998
	.quad	0x3feb9b3d07c84b5e              # double 0.86270000000000002
	.quad	0x40225153dea465a5              # double 9.1588429999999992
	.quad	0x402189c886162f16              # double 8.7691079999999992
	.quad	0x401c4b24638c9753              # double 7.0733810000000004
	.quad	0x402216481f53825e              # double 9.0435189999999999
	.quad	0x4002dea78af3e469              # double 2.3587180000000001
	.quad	0x4015b938151a4378              # double 5.4308779999999999
	.quad	0x401bfdafd113836b              # double 6.9977410000000004
	.quad	0x401e2cfc3f811f4f              # double 7.5439309999999997
	.quad	0x40206480841ede12              # double 8.1962930000000007
	.quad	0x4012c7c0f4517614              # double 4.6950719999999997
	.quad	0x4010756c0d6f544c              # double 4.1146700000000003
	.quad	0x40177d2999567dbb              # double 5.8722289999999999
	.quad	0x400397e80389f83c              # double 2.449173
	.size	.L__constant_1999xf64, 15992

	.type	.L__constant_101xindex,@object  # @__constant_101xindex
	.p2align	6, 0x0
.L__constant_101xindex:
	.quad	0                               # 0x0
	.quad	61                              # 0x3d
	.quad	92                              # 0x5c
	.quad	159                             # 0x9f
	.quad	193                             # 0xc1
	.quad	260                             # 0x104
	.quad	297                             # 0x129
	.quad	373                             # 0x175
	.quad	407                             # 0x197
	.quad	474                             # 0x1da
	.quad	507                             # 0x1fb
	.quad	568                             # 0x238
	.quad	607                             # 0x25f
	.quad	675                             # 0x2a3
	.quad	709                             # 0x2c5
	.quad	776                             # 0x308
	.quad	811                             # 0x32b
	.quad	881                             # 0x371
	.quad	918                             # 0x396
	.quad	980                             # 0x3d4
	.quad	1007                            # 0x3ef
	.quad	1068                            # 0x42c
	.quad	1108                            # 0x454
	.quad	1174                            # 0x496
	.quad	1207                            # 0x4b7
	.quad	1268                            # 0x4f4
	.quad	1298                            # 0x512
	.quad	1361                            # 0x551
	.quad	1390                            # 0x56e
	.quad	1460                            # 0x5b4
	.quad	1492                            # 0x5d4
	.quad	1552                            # 0x610
	.quad	1587                            # 0x633
	.quad	1658                            # 0x67a
	.quad	1695                            # 0x69f
	.quad	1755                            # 0x6db
	.quad	1785                            # 0x6f9
	.quad	1853                            # 0x73d
	.quad	1884                            # 0x75c
	.quad	1960                            # 0x7a8
	.quad	1993                            # 0x7c9
	.quad	2059                            # 0x80b
	.quad	2093                            # 0x82d
	.quad	2156                            # 0x86c
	.quad	2194                            # 0x892
	.quad	2263                            # 0x8d7
	.quad	2297                            # 0x8f9
	.quad	2366                            # 0x93e
	.quad	2395                            # 0x95b
	.quad	2458                            # 0x99a
	.quad	2501                            # 0x9c5
	.quad	2567                            # 0xa07
	.quad	2606                            # 0xa2e
	.quad	2668                            # 0xa6c
	.quad	2695                            # 0xa87
	.quad	2758                            # 0xac6
	.quad	2792                            # 0xae8
	.quad	2858                            # 0xb2a
	.quad	2896                            # 0xb50
	.quad	2964                            # 0xb94
	.quad	2995                            # 0xbb3
	.quad	3061                            # 0xbf5
	.quad	3088                            # 0xc10
	.quad	3154                            # 0xc52
	.quad	3195                            # 0xc7b
	.quad	3263                            # 0xcbf
	.quad	3290                            # 0xcda
	.quad	3360                            # 0xd20
	.quad	3398                            # 0xd46
	.quad	3465                            # 0xd89
	.quad	3507                            # 0xdb3
	.quad	3572                            # 0xdf4
	.quad	3596                            # 0xe0c
	.quad	3662                            # 0xe4e
	.quad	3693                            # 0xe6d
	.quad	3764                            # 0xeb4
	.quad	3797                            # 0xed5
	.quad	3865                            # 0xf19
	.quad	3899                            # 0xf3b
	.quad	3967                            # 0xf7f
	.quad	4002                            # 0xfa2
	.quad	4074                            # 0xfea
	.quad	4107                            # 0x100b
	.quad	4173                            # 0x104d
	.quad	4206                            # 0x106e
	.quad	4276                            # 0x10b4
	.quad	4302                            # 0x10ce
	.quad	4369                            # 0x1111
	.quad	4400                            # 0x1130
	.quad	4465                            # 0x1171
	.quad	4501                            # 0x1195
	.quad	4560                            # 0x11d0
	.quad	4593                            # 0x11f1
	.quad	4659                            # 0x1233
	.quad	4698                            # 0x125a
	.quad	4762                            # 0x129a
	.quad	4796                            # 0x12bc
	.quad	4866                            # 0x1302
	.quad	4896                            # 0x1320
	.quad	4969                            # 0x1369
	.quad	5000                            # 0x1388
	.size	.L__constant_101xindex, 808

	.type	.L__constant_5000xindex,@object # @__constant_5000xindex
	.p2align	6, 0x0
.L__constant_5000xindex:
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
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
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
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
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
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
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
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	22                              # 0x16
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
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
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
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
	.quad	55                              # 0x37
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
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
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
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
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
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
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
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
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
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
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
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
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
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
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
	.quad	21                              # 0x15
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
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
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
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
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
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
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
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
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
	.quad	78                              # 0x4e
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
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
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
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
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
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
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
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
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
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
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
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
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
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
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
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
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
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
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
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
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
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
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
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	99                              # 0x63
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
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
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
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
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
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	96                              # 0x60
	.quad	97                              # 0x61
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
	.quad	19                              # 0x13
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
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
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
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
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
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
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
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
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
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
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
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
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
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
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
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
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
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
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
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
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
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
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
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
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
	.quad	57                              # 0x39
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
	.quad	75                              # 0x4b
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
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
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
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
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
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
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
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
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
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
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
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
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
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
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
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
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
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
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
	.quad	57                              # 0x39
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
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
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
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
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
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
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
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
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
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
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
	.quad	43                              # 0x2b
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
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
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
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
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
	.quad	43                              # 0x2b
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
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
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
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
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
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
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
	.quad	81                              # 0x51
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
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
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
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
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
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
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
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
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
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
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
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
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
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
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
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
	.quad	29                              # 0x1d
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
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
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
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
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
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
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
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
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
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
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
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
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
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
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
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
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
	.quad	33                              # 0x21
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
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
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
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
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
	.quad	69                              # 0x45
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
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	97                              # 0x61
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
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
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
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
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
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
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
	.quad	73                              # 0x49
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
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
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
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
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
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
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
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
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
	.quad	31                              # 0x1f
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
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
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
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
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
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
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
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
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
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
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
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
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
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
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
	.quad	53                              # 0x35
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
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
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
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	28                              # 0x1c
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
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
	.quad	17                              # 0x11
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
	.quad	39                              # 0x27
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
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
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
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
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
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
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
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
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
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	98                              # 0x62
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
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
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
	.quad	61                              # 0x3d
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
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	94                              # 0x5e
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
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
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
	.quad	39                              # 0x27
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
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
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
	.quad	77                              # 0x4d
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
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
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
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
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
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
	.quad	29                              # 0x1d
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
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
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
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
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
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
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
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
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
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.size	.L__constant_5000xindex, 40000

	.type	.L__constant_5000xf64,@object   # @__constant_5000xf64
	.p2align	6, 0x0
.L__constant_5000xf64:
	.quad	0x40059bc87db2b346              # double 2.701066
	.quad	0x400bc28a1dfb938a              # double 3.4699900000000001
	.quad	0x40106e0a84be4042              # double 4.1074619999999999
	.quad	0x4019bffef39085f5              # double 6.4374960000000003
	.quad	0x400e9d5347a5b0ff              # double 3.826819
	.quad	0x3ff20814d72799a2              # double 1.126973
	.quad	0x3ff6d7225b749add              # double 1.4275230000000001
	.quad	0x4022800abf76a2f5              # double 9.2500820000000008
	.quad	0x401922a12f901084              # double 6.2838180000000001
	.quad	0x401d9b60285ec3db              # double 7.4017340000000003
	.quad	0x3fc41c0ca600b029              # double 0.157106
	.quad	0x401e0a4b124d099e              # double 7.5100519999999999
	.quad	0x40208dfa871a3b15              # double 8.2773020000000006
	.quad	0x40102acabc515486              # double 4.0417889999999996
	.quad	0x401847154003254e              # double 6.0694169999999996
	.quad	0x400bd986b9c304cd              # double 3.481214
	.quad	0x3fb0909289dadfb5              # double 0.064706
	.quad	0x402379083dbc2331              # double 9.7363909999999993
	.quad	0x40194de82d7b634e              # double 6.3260810000000003
	.quad	0x401ff44dca8e2e2c              # double 7.9885780000000004
	.quad	0x4010411dffc5479d              # double 4.0635909999999997
	.quad	0x4004ed1b71758e22              # double 2.6157750000000002
	.quad	0x400995bee3d5fdce              # double 3.198118
	.quad	0x400a5dc9c4da9004              # double 3.295795
	.quad	0x401b6d64d7f0ed3e              # double 6.8568300000000004
	.quad	0x3ff4f5f3d7d3910c              # double 1.310047
	.quad	0x40227102de00d1b7              # double 9.2207249999999998
	.quad	0x3ffc8afc47e49b20              # double 1.7839320000000001
	.quad	0x4003571b8aa00193              # double 2.4175330000000002
	.quad	0x402234b33daf8df8              # double 9.1029300000000006
	.quad	0x4002019eb6390c91              # double 2.250791
	.quad	0x3ff652deca2552a0              # double 1.395232
	.quad	0x40124b8cb8e086be              # double 4.573779
	.quad	0x401ce47fdc5931ca              # double 7.2231439999999996
	.quad	0x4010f9d8409e55c1              # double 4.243989
	.quad	0x400e9ab4b72c5198              # double 3.8255400000000002
	.quad	0x40122d3953dea466              # double 4.5441640000000003
	.quad	0x401b97878b7a1c26              # double 6.8979780000000002
	.quad	0x40136666ec9e236c              # double 4.8500019999999999
	.quad	0x401159c6f36ef805              # double 4.3376729999999997
	.quad	0x400da65f9591cd1c              # double 3.7062369999999998
	.quad	0x3ff430ab2e1693c0              # double 1.2618819999999999
	.quad	0x400f66266fd651b1              # double 3.9248780000000001
	.quad	0x400440620ab71327              # double 2.5314369999999999
	.quad	0x400d35d80e496edf              # double 3.6512910000000001
	.quad	0x4023a0242d05f288              # double 9.8127759999999994
	.quad	0x4012e82a5614df8b              # double 4.7267239999999999
	.quad	0x3ffc3625204af923              # double 1.7632190000000001
	.quad	0x401d5e47dc37a3db              # double 7.3420709999999998
	.quad	0x401007fbefd00714              # double 4.0077970000000001
	.quad	0x3ff4463beec3979a              # double 1.267147
	.quad	0x3fce5b8561d4306e              # double 0.23716799999999999
	.quad	0x40211189bd8383ae              # double 8.5342540000000007
	.quad	0x402052ef4e0114d3              # double 8.1619820000000001
	.quad	0x40190e310dbf0564              # double 6.2638590000000001
	.quad	0x400e24d1a6506141              # double 3.7679779999999998
	.quad	0x40188dd8b60f1b26              # double 6.138522
	.quad	0x3ff137b395c42203              # double 1.0760989999999999
	.quad	0x3fdef38c5436b8fa              # double 0.48361500000000002
	.quad	0x401a11d4f9c1f85d              # double 6.5174139999999996
	.quad	0x4000f79e16d6dc1a              # double 2.1209069999999999
	.quad	0x400df0bbf50e3476              # double 3.7425459999999999
	.quad	0x4021aa62456f75da              # double 8.8327810000000007
	.quad	0x40081424e5929670              # double 3.009836
	.quad	0x400ea3b60285ec3e              # double 3.8299370000000001
	.quad	0x40191a055757d5aa              # double 6.2754110000000001
	.quad	0x401bf958d9b5e95b              # double 6.9935029999999996
	.quad	0x40115812be48a58b              # double 4.3360089999999998
	.quad	0x40224721f6cacd18              # double 9.1389309999999994
	.quad	0x401a327a63736cdf              # double 6.5492949999999999
	.quad	0x400f64d4cb9ecf64              # double 3.9242340000000002
	.quad	0x4006f314445aa2e4              # double 2.8686910000000001
	.quad	0x4012133daf8df7a5              # double 4.5187900000000001
	.quad	0x40159b46fdeb52ca              # double 5.4016380000000002
	.quad	0x401e45fd47bedb73              # double 7.5683490000000004
	.quad	0x4000a2e9899bf594              # double 2.0795469999999998
	.quad	0x3fd9430b178b3700              # double 0.39471699999999998
	.quad	0x401f55757d5a9eb2              # double 7.833456
	.quad	0x40202fcfc3f811f5              # double 8.0933820000000001
	.quad	0x401f40ecfa69be0a              # double 7.8134040000000002
	.quad	0x400649e12a51e322              # double 2.7860740000000002
	.quad	0x400b00b4e11dbca9              # double 3.3753449999999998
	.quad	0x3ff5cfca42aed139              # double 1.3632299999999999
	.quad	0x4014d7aaac1094a3              # double 5.2106120000000002
	.quad	0x401c98af81626b2f              # double 7.1491069999999999
	.quad	0x40206734d6a161e5              # double 8.2015750000000001
	.quad	0x4013d7082491afc0              # double 4.9599919999999997
	.quad	0x4023227e0ef99807              # double 9.567368
	.quad	0x3fef35d462c343b7              # double 0.97532099999999999
	.quad	0x4006871151611ba4              # double 2.8159510000000001
	.quad	0x40225999780baa58              # double 9.1749989999999996
	.quad	0x40221e1b2a27f1b7              # double 9.0588010000000008
	.quad	0x40064c5c13fd0d06              # double 2.7872849999999998
	.quad	0x40001c7820a30db7              # double 2.0139010000000002
	.quad	0x40047efd00713f07              # double 2.5620059999999998
	.quad	0x3fe58bf1a5ca2984              # double 0.67333299999999996
	.quad	0x3ffeb12d3415b142              # double 1.918256
	.quad	0x4020216e158750c2              # double 8.0652930000000005
	.quad	0x3ff53633ce63a5c2              # double 1.3257330000000001
	.quad	0x400e399d451fc4c1              # double 3.7781319999999998
	.quad	0x4006cadcd2d44dcb              # double 2.8490540000000002
	.quad	0x401cb219652bd3c3              # double 7.1739249999999997
	.quad	0x4011073bc903ea70              # double 4.2570639999999997
	.quad	0x401d83c07ee0b0af              # double 7.3786639999999997
	.quad	0x4015da0663c74fb5              # double 5.4629149999999997
	.quad	0x401dfd06fef7c244              # double 7.4970970000000001
	.quad	0x3fcea400fba8826b              # double 0.23938000000000001
	.quad	0x3fd288b545c78a6e              # double 0.28959400000000002
	.quad	0x3ff99df00abf76a3              # double 1.601059
	.quad	0x4011b7f88765ba6f              # double 4.429659
	.quad	0x401ecce6c093d966              # double 7.7000989999999998
	.quad	0x3ff3c20b3d4ae42a              # double 1.234874
	.quad	0x4021d7ff36ac6477              # double 8.9218689999999992
	.quad	0x3fe4a2877ee4e26d              # double 0.64483999999999997
	.quad	0x4001102ababead4f              # double 2.1328939999999998
	.quad	0x40108130164840e1              # double 4.1261599999999996
	.quad	0x4012f67b1c0010c7              # double 4.740704
	.quad	0x40212d23f67f4dbe              # double 8.588165
	.quad	0x401e49e7b80a9de9              # double 7.5721730000000002
	.quad	0x3ffeb4528283d35f              # double 1.9190240000000001
	.quad	0x400f2c54bcf0b6b7              # double 3.8966460000000001
	.quad	0x401252c0e7bc3c5c              # double 4.5808140000000002
	.quad	0x400ef252ce032db2              # double 3.868322
	.quad	0x4000cd2135daad60              # double 2.1001609999999999
	.quad	0x402012715831f03d              # double 8.0360209999999999
	.quad	0x401a8862f5989df1              # double 6.6331899999999999
	.quad	0x40231ebb7739f341              # double 9.5600240000000002
	.quad	0x40221e38eb0318b9              # double 9.0590279999999996
	.quad	0x4020f3ef284167a9              # double 8.4764339999999994
	.quad	0x4019b7154003254e              # double 6.4287919999999996
	.quad	0x4020b6312f4cf4a5              # double 8.3558439999999994
	.quad	0x4021d192c8c50050              # double 8.9093230000000005
	.quad	0x4011bb2aae297397              # double 4.4327800000000002
	.quad	0x4013f114d2f5dbba              # double 4.9854310000000002
	.quad	0x400874e54f7a9197              # double 3.0570780000000002
	.quad	0x401ee9620685553f              # double 7.727913
	.quad	0x401bdcaeea63b689              # double 6.9655110000000002
	.quad	0x3fb5616f86a09891              # double 0.083517999999999995
	.quad	0x4023b6a11ec918e3              # double 9.8566979999999997
	.quad	0x401dff8b588e368f              # double 7.4995549999999999
	.quad	0x401fbc83a96d4c34              # double 7.9340960000000003
	.quad	0x401104117f84449e              # double 4.2539730000000002
	.quad	0x401bb14983d79075              # double 6.9231319999999998
	.quad	0x3fe6c382a12f9011              # double 0.71136600000000005
	.quad	0x400181de26916441              # double 2.188412
	.quad	0x40205f6c4827b6fe              # double 8.1863729999999997
	.quad	0x3fe55b035bd512ec              # double 0.66735999999999995
	.quad	0x4010bb86b15f88fd              # double 4.1831310000000004
	.quad	0x4019dd3d4280ae10              # double 6.4660539999999997
	.quad	0x3ffa47eae5bc87db              # double 1.642558
	.quad	0x3fd5de3fbbd7b203              # double 0.34168999999999999
	.quad	0x401c0701d9f4d37c              # double 7.0068429999999999
	.quad	0x401c6f67f4dbdf8f              # double 7.1087949999999998
	.quad	0x401faa9c560c7c0f              # double 7.9166119999999997
	.quad	0x40190fb71fbc5dea              # double 6.2653470000000002
	.quad	0x401468c6d612c6ac              # double 5.1023209999999999
	.quad	0x401aedca07f66e87              # double 6.7322160000000002
	.quad	0x3ff2d77fae3608d1              # double 1.1776120000000001
	.quad	0x4014888b545c78a7              # double 5.1333440000000001
	.quad	0x3ff320f7fcfc3f81              # double 1.195549
	.quad	0x3ff2c651f3e89a89              # double 1.1734180000000001
	.quad	0x401617c4e2f37fbf              # double 5.523212
	.quad	0x402290848387df5d              # double 9.2822610000000001
	.quad	0x3fd0fa9c12f09d8c              # double 0.26529599999999998
	.quad	0x4020a0216c61522a              # double 8.3127549999999992
	.quad	0x4016dd1394317acc              # double 5.7158949999999997
	.quad	0x40199a50d6b228dd              # double 6.4006990000000004
	.quad	0x4023b5f99c38b04b              # double 9.8554200000000005
	.quad	0x3ff07ff79c842fa5              # double 1.031242
	.quad	0x4017925fe974a340              # double 5.892944
	.quad	0x3ff6d92fb19e731d              # double 1.428024
	.quad	0x3ffa15193708aac9              # double 1.6301509999999999
	.quad	0x4020d45cdd50a88f              # double 8.414771
	.quad	0x4001750c1b97353b              # double 2.1821519999999999
	.quad	0x3fffee07e5a78f26              # double 1.9956130000000001
	.quad	0x40219bb40b34e768              # double 8.8041079999999994
	.quad	0x401c692af9a8cdea              # double 7.102703
	.quad	0x40002e0114d2f5dc              # double 2.0224630000000001
	.quad	0x4002952b90a78290              # double 2.3228369999999998
	.quad	0x401897e414e7ee91              # double 6.1483309999999998
	.quad	0x400b838d1d8a5482              # double 3.4392339999999999
	.quad	0x401e1dbdf8f47304              # double 7.529045
	.quad	0x401567d1fe64f54d              # double 5.3513869999999999
	.quad	0x401016a65cf67b1c              # double 4.022119
	.quad	0x3fd65a57646ae3a4              # double 0.34926400000000002
	.quad	0x40182a465a57646b              # double 6.0412840000000001
	.quad	0x3ff358f81e8a2ec3              # double 1.2092210000000001
	.quad	0x40156a25529fe005              # double 5.3536580000000002
	.quad	0x4015babb8800eae2              # double 5.4323560000000004
	.quad	0x401b133269df97ab              # double 6.7687470000000003
	.quad	0x4011346a5d6bebe1              # double 4.3011869999999996
	.quad	0x40192567dbb16c1e              # double 6.2865289999999998
	.quad	0x4021df16d2aa5c5f              # double 8.9357209999999991
	.quad	0x3fc1f25e56cd6c2f              # double 0.140209
	.quad	0x3ff8d0a88effe2a4              # double 1.550942
	.quad	0x3fe1b621fafc8b00              # double 0.55348299999999995
	.quad	0x401ee4b7f5a5332b              # double 7.7233580000000001
	.quad	0x3ff5cb167ec7863c              # double 1.362082
	.quad	0x401c8477bbf93ff2              # double 7.1293629999999997
	.quad	0x4001c8d002e23290              # double 2.2230530000000002
	.quad	0x40116a6c5d206c87              # double 4.3539289999999999
	.quad	0x400e4b790fb65669              # double 3.7868520000000001
	.quad	0x402210e991ff7165              # double 9.0330320000000004
	.quad	0x4002bdba908a265f              # double 2.342641
	.quad	0x4020f1593e5fb720              # double 8.4713840000000005
	.quad	0x401631704ff4341a              # double 5.5482800000000001
	.quad	0x4011b7ca2120e1f8              # double 4.4294820000000001
	.quad	0x4014337a3db3bfb6              # double 5.0502710000000004
	.quad	0x401d2769a91105e2              # double 7.2884890000000002
	.quad	0x40236fd86a8fc0d3              # double 9.7184480000000004
	.quad	0x401603c6c97d8cf4              # double 5.5036880000000004
	.quad	0x3ff332b3461309c8              # double 1.199878
	.quad	0x401778d9b5e95b79              # double 5.8680180000000002
	.quad	0x401cb1276fb09204              # double 7.1730020000000003
	.quad	0x40151f8f041461b7              # double 5.2808190000000002
	.quad	0x3ff9f154003254e7              # double 1.621418
	.quad	0x3ff3c2645e4e69f0              # double 1.2349589999999999
	.quad	0x4015b4cf4a558ea8              # double 5.4265720000000002
	.quad	0x4002a9c23b7952d2              # double 2.3328899999999999
	.quad	0x3fe7c020817fc760              # double 0.74220299999999994
	.quad	0x3ffff05319828805              # double 1.996173
	.quad	0x40165097c80841ee              # double 5.5787040000000001
	.quad	0x4022643f1c75818c              # double 9.1957939999999993
	.quad	0x401a106317268d33              # double 6.5160030000000004
	.quad	0x400895c209246bf0              # double 3.073124
	.quad	0x4017b7c243dccea3              # double 5.9294520000000004
	.quad	0x4021a3ebbfd71b04              # double 8.8201579999999992
	.quad	0x4022b3d70a3d70a4              # double 9.3512500000000002
	.quad	0x40227154eb13dfb1              # double 9.2213510000000003
	.quad	0x401bd35d67ba237d              # double 6.9564110000000001
	.quad	0x4012ca58f7121ab5              # double 4.6976050000000003
	.quad	0x3ff2a25742dcf462              # double 1.1646339999999999
	.quad	0x3feace5b4245f5ae              # double 0.83769000000000005
	.quad	0x401f6ae07e5a78f2              # double 7.8543719999999997
	.quad	0x40189073de1e2de8              # double 6.1410669999999996
	.quad	0x3ff8e108c3f3e037              # double 1.55494
	.quad	0x4010a98a65492ff5              # double 4.1655670000000002
	.quad	0x40162c886162f167              # double 5.5434890000000001
	.quad	0x401a8325918a009f              # double 6.6280729999999997
	.quad	0x3fe64f00ef1348b2              # double 0.69714399999999999
	.quad	0x400c095421c04428              # double 3.5045549999999999
	.quad	0x3fa691c8eabffcdb              # double 0.044081000000000002
	.quad	0x3ffa6a747d805e5f              # double 1.65099
	.quad	0x40073314ca925fe9              # double 2.8999419999999998
	.quad	0x40051f16b11c6d1e              # double 2.64018
	.quad	0x4014e78cc9a77e5f              # double 5.2261230000000003
	.quad	0x3ff1873365881a15              # double 1.0955079999999999
	.quad	0x401644b09e98dcdb              # double 5.5670799999999998
	.quad	0x400e96b3354c1227              # double 3.8235839999999999
	.quad	0x402188e9b38d60a6              # double 8.7674079999999996
	.quad	0x400576bc1eff9f88              # double 2.682976
	.quad	0x40131bd6e8af8162              # double 4.7771869999999996
	.quad	0x401268b3700474da              # double 4.6022470000000002
	.quad	0x3fe07e414e7ee914              # double 0.51541199999999998
	.quad	0x4023c86dd69d3027              # double 9.8914629999999998
	.quad	0x3ffd4427418d690a              # double 1.8291390000000001
	.quad	0x3fc59c9d5a187a4a              # double 0.16884199999999999
	.quad	0x40209efda836eb4f              # double 8.3105290000000007
	.quad	0x400dc299524bfd2f              # double 3.7200190000000002
	.quad	0x4020264adff822bc              # double 8.0747900000000001
	.quad	0x401b6d4f15e7c8d2              # double 6.8567470000000004
	.quad	0x400d11fe64f54d1f              # double 3.6337860000000002
	.quad	0x3fd12b3461309c80              # double 0.268262
	.quad	0x4008edd2f1a9fbe7              # double 3.1161249999999998
	.quad	0x3ff7809f623076c0              # double 1.4689019999999999
	.quad	0x3ffa517614595358              # double 1.6448879999999999
	.quad	0x40091482be8bc16a              # double 3.1350150000000001
	.quad	0x4021b93c89f40a28              # double 8.8617899999999992
	.quad	0x4000554434e3369c              # double 2.0416340000000002
	.quad	0x400333eab367a0f9              # double 2.40035
	.quad	0x4018d107faa044af              # double 6.2041320000000004
	.quad	0x402071fd9ba1b196              # double 8.2226379999999999
	.quad	0x401a5517a46173b8              # double 6.5830979999999997
	.quad	0x40230ed56b00ffda              # double 9.5289719999999996
	.quad	0x3ffd99fa11a975b0              # double 1.8500920000000001
	.quad	0x4000c03bc4d22c88              # double 2.0938639999999999
	.quad	0x401c8baf102363b2              # double 7.1364099999999997
	.quad	0x401072363b256ffc              # double 4.1115349999999999
	.quad	0x40214bf359ff4fd7              # double 8.6483410000000003
	.quad	0x4020c6820e629952              # double 8.3877109999999995
	.quad	0x4015df041461b6d4              # double 5.4677889999999998
	.quad	0x402397c9795b35b1              # double 9.7964590000000004
	.quad	0x40223913404ea4a9              # double 9.1114750000000004
	.quad	0x3ff0059210385c68              # double 1.00136
	.quad	0x402161bed30f062d              # double 8.6909089999999996
	.quad	0x401be01f75104d55              # double 6.9688699999999999
	.quad	0x401a3b107746887b              # double 6.5576800000000004
	.quad	0x400a4f294dd72368              # double 3.288653
	.quad	0x401f558c8eef1bac              # double 7.8335439999999998
	.quad	0x40126533b1077469              # double 4.5988300000000004
	.quad	0x40176e39713ad5bf              # double 5.8576410000000001
	.quad	0x401463150dae3e6c              # double 5.0967599999999997
	.quad	0x401c9efcbd556085              # double 7.1552610000000003
	.quad	0x3fe5232f44912989              # double 0.66054500000000005
	.quad	0x401e7eb074a771c9              # double 7.6237199999999996
	.quad	0x3ff0c5681ecd4aa1              # double 1.048195
	.quad	0x4001dd3804534bd7              # double 2.2330169999999998
	.quad	0x400deba0620ab713              # double 3.7400519999999999
	.quad	0x401cb644955b4678              # double 7.1779960000000003
	.quad	0x40161a7b9170d62c              # double 5.5258620000000001
	.quad	0x4013c0d2806af46b              # double 4.9383030000000003
	.quad	0x401650346dc5d639              # double 5.5783250000000004
	.quad	0x3fe74ab81f969e3d              # double 0.72787100000000005
	.quad	0x4015419eb6390c91              # double 5.314082
	.quad	0x400c30b630a91538              # double 3.5237850000000002
	.quad	0x401592acb85a4f01              # double 5.3932370000000001
	.quad	0x3fe9315b573eab36              # double 0.78727499999999995
	.quad	0x401285729b280f13              # double 4.6303200000000002
	.quad	0x40212bfbbd7b2032              # double 8.5859050000000003
	.quad	0x401b3494d50ebaae              # double 6.8013490000000001
	.quad	0x401055781c714fce              # double 4.0834659999999996
	.quad	0x3ff47723ee1bd1ee              # double 1.2790870000000001
	.quad	0x401db80dc33721d5              # double 7.4297399999999998
	.quad	0x402322ac96cc5fc0              # double 9.5677230000000008
	.quad	0x400400c62e4d1a65              # double 2.500378
	.quad	0x400a18d1526d8b1e              # double 3.2621180000000001
	.quad	0x40201e950fc71d60              # double 8.0597309999999993
	.quad	0x3ffe39ef0f16f438              # double 1.8891439999999999
	.quad	0x401f7446f9b994e2              # double 7.8635520000000003
	.quad	0x3fccb24a6a875d57              # double 0.224191
	.quad	0x4012c795703f2d3c              # double 4.6949059999999996
	.quad	0x400447325918a00a              # double 2.534764
	.quad	0x401ceb5a20ddc619              # double 7.2298359999999997
	.quad	0x40039ea1c68ec52a              # double 2.4524569999999999
	.quad	0x40090bef06b37868              # double 3.130827
	.quad	0x4008d5d80e496edf              # double 3.1044160000000001
	.quad	0x40157ef240fa9c13              # double 5.3739710000000001
	.quad	0x3feeb5d894812be5              # double 0.95969800000000005
	.quad	0x401cdf2a9d627bf6              # double 7.2179359999999999
	.quad	0x401d5d2dcb1465e9              # double 7.3409950000000004
	.quad	0x40212ced0b30b5aa              # double 8.5877459999999992
	.quad	0x4001c76fb09203a3              # double 2.2223809999999999
	.quad	0x4015f94d94078961              # double 5.4934599999999998
	.quad	0x40175f7ced916873              # double 5.8432500000000003
	.quad	0x3ff5ae1049235f81              # double 1.3549960000000001
	.quad	0x401837763e4abe6a              # double 6.0541619999999998
	.quad	0x401a9c4cdfaca362              # double 6.6526370000000004
	.quad	0x3ff18e3cd9a52264              # double 1.097226
	.quad	0x400c49ca9ef5232d              # double 3.5360309999999999
	.quad	0x400d0e2541d8e864              # double 3.631907
	.quad	0x3fc9b5f1bef49cf5              # double 0.20086499999999999
	.quad	0x40237fb3b7521145              # double 9.7494180000000003
	.quad	0x4003cac53b0813cb              # double 2.4740090000000001
	.quad	0x400db9c38b04ab60              # double 3.7157049999999998
	.quad	0x3fff9a8155d5f56a              # double 1.9752209999999999
	.quad	0x401b0e219652bd3c              # double 6.7637999999999998
	.quad	0x3ff531ae2da554b9              # double 1.3246290000000001
	.quad	0x3fd2f43419e30015              # double 0.296155
	.quad	0x4021080cb6c7a7ca              # double 8.5157220000000002
	.quad	0x401ffa550870110a              # double 7.9944649999999999
	.quad	0x40235ec7863beec4              # double 9.6851160000000007
	.quad	0x3fff8407cc7d1bb5              # double 1.9697340000000001
	.quad	0x400867b1c0010c6f              # double 3.0506319999999998
	.quad	0x3fcf4f61672324c8              # double 0.24460999999999999
	.quad	0x4020f5ec1c1d6cf8              # double 8.4803169999999994
	.quad	0x400f4f5558212945              # double 3.9137369999999998
	.quad	0x401a2969a0ad8a11              # double 6.5404419999999996
	.quad	0x40219f19d66adb40              # double 8.8107439999999997
	.quad	0x3fdf50763a190082              # double 0.489286
	.quad	0x4015dad9274e22a3              # double 5.4637190000000002
	.quad	0x400fafe47991bc56              # double 3.9608850000000002
	.quad	0x401d8468448cf7cb              # double 7.3793040000000003
	.quad	0x401c7a84be40420f              # double 7.1196469999999996
	.quad	0x40223d52c16df3f9              # double 9.1197719999999993
	.quad	0x3ff23affb04ee7c5              # double 1.1394040000000001
	.quad	0x401c56583e8576cd              # double 7.0843210000000001
	.quad	0x4018baac1094a2ba              # double 6.1822970000000002
	.quad	0x400d1c0229a5ebb7              # double 3.6386759999999998
	.quad	0x4020077d73c92578              # double 8.0146289999999993
	.quad	0x3ff87f51efb6dca0              # double 1.5310839999999999
	.quad	0x4017a4d7add15f03              # double 5.9109790000000002
	.quad	0x3ffc9fd5885d3133              # double 1.7890219999999999
	.quad	0x400591b152f3c2db              # double 2.6961390000000001
	.quad	0x40218eeb0b7c3505              # double 8.7791370000000004
	.quad	0x3ff3dd9e40c8472c              # double 1.241606
	.quad	0x3fe7660a2014727e              # double 0.73120600000000002
	.quad	0x3ffb5437c5692b3d              # double 1.7080610000000001
	.quad	0x401512e1ac57e23f              # double 5.2684389999999999
	.quad	0x401d63e707e175d1              # double 7.3475609999999998
	.quad	0x4021f4d594f26aec              # double 8.9781919999999999
	.quad	0x40021b9d7fd82774              # double 2.2634840000000001
	.quad	0x40220aabcd78c437              # double 9.020842
	.quad	0x401732bd7f51efb7              # double 5.7995510000000001
	.quad	0x401c6ffc5479d4d8              # double 7.1093609999999998
	.quad	0x3ffc8bb906466b1e              # double 1.7841119999999999
	.quad	0x3ffb801a36e2eb1c              # double 1.7187749999999999
	.quad	0x4010421f6cacd185              # double 4.0645730000000002
	.quad	0x4016def0ae536502              # double 5.7177150000000001
	.quad	0x3fffb5fb2edfe75c              # double 1.9819290000000001
	.quad	0x4013e5614df8b157              # double 4.9740039999999999
	.quad	0x4002bd556084a516              # double 2.3424480000000001
	.quad	0x40027ad42c3c9eed              # double 2.3099750000000001
	.quad	0x400d393682730c67              # double 3.652936
	.quad	0x401f9c70c996b767              # double 7.9027739999999999
	.quad	0x3ff677ef5a964e8b              # double 1.4042809999999999
	.quad	0x4013d8e3ef284168              # double 4.9618070000000003
	.quad	0x4013eb1feeb2d0a2              # double 4.9796139999999998
	.quad	0x40233fee4e26d480              # double 9.6248649999999998
	.quad	0x4020dce874c8ffb9              # double 8.4314610000000005
	.quad	0x401fbe2bcf91a32b              # double 7.9357139999999999
	.quad	0x401d29bcba301217              # double 7.2907590000000004
	.quad	0x400f5ce4a7b4e54f              # double 3.9203579999999998
	.quad	0x3ffd8e5a35d67ba2              # double 1.847254
	.quad	0x401996ffc115df65              # double 6.3974599999999997
	.quad	0x4020a058dde7a744              # double 8.3131780000000006
	.quad	0x3ff59004fb1183b6              # double 1.347661
	.quad	0x401caad9f0a1be2b              # double 7.1668469999999997
	.quad	0x401f2afb7e90ff97              # double 7.7919749999999998
	.quad	0x400757d0f1f57b42              # double 2.9178790000000001
	.quad	0x4013c88e368f0846              # double 4.9458549999999999
	.quad	0x40239654d61b2a28              # double 9.793616
	.quad	0x40188b54e2b063e0              # double 6.1360659999999996
	.quad	0x401beae924f227d0              # double 6.9794049999999999
	.quad	0x400e6c34c1a8ac5c              # double 3.802835
	.quad	0x40123cbf6e3f78bc              # double 4.5593240000000002
	.quad	0x3fffadd15f02c4d6              # double 1.9799359999999999
	.quad	0x401e3c7e6b3fe9fb              # double 7.5590760000000001
	.quad	0x4005561565c2d278              # double 2.667033
	.quad	0x40234e9ca9ef5233              # double 9.6535390000000003
	.quad	0x40177d0aaa7ded6c              # double 5.8721110000000003
	.quad	0x3fe276c050bd87b5              # double 0.57699599999999995
	.quad	0x401efb6cbd987c63              # double 7.7455319999999998
	.quad	0x4023d443d46b26c0              # double 9.9145800000000008
	.quad	0x40119292c4934268              # double 4.3931380000000004
	.quad	0x400d95ed8d36b4c8              # double 3.698207
	.quad	0x3ff733a0407cc7d2              # double 1.4501040000000001
	.quad	0x3ffeae90364388ec              # double 1.917618
	.quad	0x40135a43fe5c91d1              # double 4.8381499999999997
	.quad	0x401052bba98eda23              # double 4.080794
	.quad	0x3ffa0bc6a7ef9db2              # double 1.627875
	.quad	0x401cb66a55087011              # double 7.17814
	.quad	0x402173aeee957471              # double 8.7259440000000001
	.quad	0x3ffade6362a5e786              # double 1.6792940000000001
	.quad	0x402302437824d4cc              # double 9.5044210000000006
	.quad	0x4014134a44c7b02d              # double 5.0188379999999997
	.quad	0x3fad1e108c3f3e03              # double 0.056869999999999997
	.quad	0x4010547bedb72820              # double 4.0825040000000001
	.quad	0x400142b51bd61f5c              # double 2.157572
	.quad	0x4000fedf1e0828c3              # double 2.1244489999999998
	.quad	0x40175eabffcdab19              # double 5.8424529999999999
	.quad	0x40193c23fab10ba6              # double 6.3087309999999999
	.quad	0x4004210060780fdc              # double 2.516114
	.quad	0x400495610adcd2d4              # double 2.5729389999999999
	.quad	0x3fe0f6dfc5cdd50b              # double 0.53013600000000005
	.quad	0x401c0e6e653868fd              # double 7.0140929999999999
	.quad	0x401c2764adff822c              # double 7.0384700000000002
	.quad	0x40198c8a7a41e57e              # double 6.3872470000000003
	.quad	0x40177ff36ac64778              # double 5.8749520000000004
	.quad	0x4021b1791819d239              # double 8.8466269999999998
	.quad	0x401638887229e908              # double 5.5552080000000004
	.quad	0x401cb9ed3953dea4              # double 7.1815689999999996
	.quad	0x3fd421d53cddd6e0              # double 0.31456499999999998
	.quad	0x3fe69b1960fa15db              # double 0.70643299999999998
	.quad	0x401ae00b02928177              # double 6.7187919999999997
	.quad	0x40142224aada33be              # double 5.0333430000000003
	.quad	0x4006f27136a400fc              # double 2.8683800000000002
	.quad	0x4023382645e4e69f              # double 9.6096669999999999
	.quad	0x40230606317268d3              # double 9.5117659999999997
	.quad	0x4015bf2495e17e35              # double 5.4366630000000002
	.quad	0x4008dbccaf709b74              # double 3.1073240000000002
	.quad	0x401bef3b645a1cac              # double 6.983625
	.quad	0x3ff24e0221426fe7              # double 1.144045
	.quad	0x4018c643cc07aaef              # double 6.1936179999999998
	.quad	0x3ffe27e1fc08fa7b              # double 1.8847370000000001
	.quad	0x3fff2c5c13fd0d06              # double 1.9483299999999999
	.quad	0x4022cad03d9a9542              # double 9.3961199999999998
	.quad	0x40029042d8c2a455              # double 2.3204400000000001
	.quad	0x4023e4ac083126e9              # double 9.9466249999999991
	.quad	0x3fe06a593a2df938              # double 0.51298200000000005
	.quad	0x400b6ffda4052d66              # double 3.4296829999999998
	.quad	0x4012db239a38fbca              # double 4.7140029999999999
	.quad	0x401d7916872b020c              # double 7.3682499999999997
	.quad	0x401f4410b630a915              # double 7.8164699999999998
	.quad	0x400e07d3d4280ae1              # double 3.753822
	.quad	0x40238e6234a87e39              # double 9.7780930000000001
	.quad	0x40170cfa26a22b39              # double 5.7626730000000004
	.quad	0x40113821f2990f30              # double 4.3048169999999999
	.quad	0x401bec5eb313be23              # double 6.9808300000000001
	.quad	0x401a08f041461b6d              # double 6.5087289999999998
	.quad	0x4019360bf5d78812              # double 6.3027800000000003
	.quad	0x401f5228997c3d68              # double 7.8302329999999997
	.quad	0x400a1352a8438088              # double 3.2594349999999999
	.quad	0x3ffaf1a08bfc2225              # double 1.683991
	.quad	0x40236eaa6d267408              # double 9.7161439999999998
	.quad	0x401ad21a719b4dcf              # double 6.7051790000000002
	.quad	0x40217d40895d0b74              # double 8.7446330000000003
	.quad	0x402371ce4a7b4e55              # double 9.722277
	.quad	0x4021acf8b588e369              # double 8.8378350000000001
	.quad	0x4023e023c85c24c4              # double 9.9377729999999999
	.quad	0x401828a7a41e57da              # double 6.0397020000000001
	.quad	0x40147a593a2df938              # double 5.1194810000000004
	.quad	0x3fd0deb0fadf2ecf              # double 0.26359199999999999
	.quad	0x4012ba305532617c              # double 4.6818249999999999
	.quad	0x401680caa326e115              # double 5.6257729999999997
	.quad	0x3fd9af0bf1a5ca2a              # double 0.40130900000000003
	.quad	0x3fce64ba94bbe447              # double 0.23744899999999999
	.quad	0x400d89ea9a3d2d88              # double 3.692342
	.quad	0x4023c6a57214f052              # double 9.8879809999999999
	.quad	0x40207b1f255f351a              # double 8.2404720000000005
	.quad	0x40234004534bd76f              # double 9.6250330000000001
	.quad	0x40115cf5f4e4430b              # double 4.3407819999999999
	.quad	0x4022f25df2239e6b              # double 9.4733730000000004
	.quad	0x401bca64c2f837b5              # double 6.9476500000000003
	.quad	0x400045f9591cd1c8              # double 2.0341670000000001
	.quad	0x3fdcd19dece57109              # double 0.45029400000000003
	.quad	0x3ff153cff64cf8d7              # double 1.082962
	.quad	0x401560385c67dfe3              # double 5.3439649999999999
	.quad	0x4011fbfec13b9f12              # double 4.4960889999999996
	.quad	0x4023f593c46d82ba              # double 9.9796429999999994
	.quad	0x4012ac054ef459da              # double 4.6679890000000004
	.quad	0x4022f9563a9f383f              # double 9.4869859999999999
	.quad	0x3ffe90a02b841249              # double 1.910309
	.quad	0x3ff8d46b26bf876a              # double 1.55186
	.quad	0x4013628d434a01ac              # double 4.8462420000000002
	.quad	0x3fd60203e63e8dda              # double 0.34387299999999998
	.quad	0x40158e5b4245f5ae              # double 5.3890200000000004
	.quad	0x3f870bd017dae819              # double 0.011253000000000001
	.quad	0x4017ac7000431bdf              # double 5.9183960000000004
	.quad	0x3ff2b328b6d86ec1              # double 1.1687399999999999
	.quad	0x3ff6d27e5215768a              # double 1.42639
	.quad	0x4022748fd9fd36f8              # double 9.2276600000000001
	.quad	0x4021f6ac42e9899c              # double 8.981783
	.quad	0x3ff9cb135979181a              # double 1.612079
	.quad	0x3fe68cb8e086bdf5              # double 0.70467800000000003
	.quad	0x3ffc993b3a68b19a              # double 1.7874099999999999
	.quad	0x4010d9eadd590c0b              # double 4.2128100000000002
	.quad	0x40206bf0995aaf79              # double 8.21082
	.quad	0x4021b54152b0a6fc              # double 8.8540139999999993
	.quad	0x401a3c4f3ba775fb              # double 6.5588959999999998
	.quad	0x4014f4bf8fcd67fd              # double 5.2390119999999998
	.quad	0x402059e7b80a9de9              # double 8.1755960000000005
	.quad	0x400c42dadb8348f5              # double 3.5326439999999999
	.quad	0x4004dd556084a516              # double 2.6080730000000001
	.quad	0x3feb59ad85dfa872              # double 0.85469700000000004
	.quad	0x40166dfefbf401c5              # double 5.607418
	.quad	0x4003543632c1f42c              # double 2.4161190000000001
	.quad	0x4023b3b927d45a60              # double 9.8510220000000004
	.quad	0x401760817fc7607c              # double 5.8442439999999998
	.quad	0x401ab4acaff6d331              # double 6.6764400000000004
	.quad	0x40165234eb9a176e              # double 5.5802800000000001
	.quad	0x400d7940789613d3              # double 3.684205
	.quad	0x40186bbf93ff25e5              # double 6.1052229999999996
	.quad	0x3fdf804102ff8ec1              # double 0.492203
	.quad	0x40158db7f1737543              # double 5.3883970000000003
	.quad	0x40047abc947064ed              # double 2.55993
	.quad	0x3fa7b0d51f81a587              # double 0.046271
	.quad	0x400c6d8e432441ff              # double 3.5534940000000002
	.quad	0x401f3c25072085b2              # double 7.8087350000000004
	.quad	0x4020d854690de093              # double 8.4225189999999994
	.quad	0x40051983947496ab              # double 2.6374580000000001
	.quad	0x3fe2b68f08461f9f              # double 0.584785
	.quad	0x3ffa01e03f705858              # double 1.6254580000000001
	.quad	0x4018d91c8eabffce              # double 6.2120230000000003
	.quad	0x3fce4a0e410b630b              # double 0.23663500000000001
	.quad	0x4021aa0c069e7fb2              # double 8.8321229999999993
	.quad	0x4011208d08919ef9              # double 4.2817879999999997
	.quad	0x40203c68661ae70c              # double 8.1179839999999998
	.quad	0x3fe94e65bea0ba1f              # double 0.79081999999999997
	.quad	0x401ddc68a936c58f              # double 7.4652430000000001
	.quad	0x401e59c17225b74a              # double 7.5876520000000003
	.quad	0x4020a7d199bb2789              # double 8.3277710000000003
	.quad	0x3fff5fb71fbc5dea              # double 1.9608680000000001
	.quad	0x3ffbc21c044284e0              # double 1.73489
	.quad	0x4012d0329802c0a5              # double 4.7033180000000003
	.quad	0x4021860d4562e0a0              # double 8.7618200000000002
	.quad	0x4021e19aa60913a5              # double 8.9406330000000001
	.quad	0x40239842d8c2a455              # double 9.7973850000000002
	.quad	0x3fee1ae924f227d0              # double 0.94078499999999998
	.quad	0x400d3ce0fc2eba28              # double 3.6547260000000001
	.quad	0x40118fa93af74cd3              # double 4.3902939999999999
	.quad	0x401cff20ea5b530d              # double 7.2491490000000001
	.quad	0x401e3d983947496b              # double 7.5601510000000002
	.quad	0x3fe86a1c68ec52a4              # double 0.76295299999999999
	.quad	0x40235b4b51372a39              # double 9.6783090000000004
	.quad	0x40033798d8a979e1              # double 2.4021469999999998
	.quad	0x401c2330941c8217              # double 7.0343650000000002
	.quad	0x3fcf05af6c69b5a6              # double 0.24236099999999999
	.quad	0x4020ff281fd9ba1b              # double 8.4983529999999998
	.quad	0x4019614ec204f2ae              # double 6.345027
	.quad	0x401291a2e7f6f4bf              # double 4.6422230000000004
	.quad	0x4004d02ababead4f              # double 2.6016439999999998
	.quad	0x401a5d330941c821              # double 6.5910149999999996
	.quad	0x401fc280f12c27a6              # double 7.9399449999999998
	.quad	0x4011f56ffc115df6              # double 4.4896849999999997
	.quad	0x401dff72f76e6107              # double 7.4994620000000002
	.quad	0x401257ec7863beec              # double 4.5858629999999998
	.quad	0x4008b2bf5515054b              # double 3.0872790000000001
	.quad	0x401e94c6a3bddfca              # double 7.645289
	.quad	0x401d52917507e9d9              # double 7.3306329999999997
	.quad	0x3fc2574b40703298              # double 0.143289
	.quad	0x401e9ff92f2b66b6              # double 7.6562239999999999
	.quad	0x3ff313fc0096feb5              # double 1.1923790000000001
	.quad	0x401996ce789e774f              # double 6.3972720000000001
	.quad	0x400bd03f2d3c792d              # double 3.476683
	.quad	0x4004347735c182ed              # double 2.5256180000000001
	.quad	0x400ba189bd8383ae              # double 3.4538760000000002
	.quad	0x401f1d6a593a2df9              # double 7.7787259999999998
	.quad	0x402362f81626b2f2              # double 9.6932989999999997
	.quad	0x3ff5921bc126a65d              # double 1.348171
	.quad	0x4020cffd60e94ee4              # double 8.4062300000000007
	.quad	0x401c553198288052              # double 7.0831970000000002
	.quad	0x4011c0b178b37004              # double 4.4381769999999996
	.quad	0x4018a61bb05faebc              # double 6.1622149999999998
	.quad	0x401a2e62131a8ef7              # double 6.5452959999999996
	.quad	0x4022316fc9bc7714              # double 9.0965559999999996
	.quad	0x401f480f55de58e6              # double 7.8203709999999997
	.quad	0x3fb5ad106ee30caa              # double 0.084671999999999997
	.quad	0x3fde89b52007dd44              # double 0.477155
	.quad	0x3fd0ab3aabcd78c4              # double 0.26045099999999999
	.quad	0x3fd6eb91b3f20a74              # double 0.358128
	.quad	0x4020fbb05faebc41              # double 8.4915800000000008
	.quad	0x400483dff3f0fe04              # double 2.5643919999999998
	.quad	0x40216903a7546d40              # double 8.7051060000000007
	.quad	0x4021a2b21815a07b              # double 8.8177649999999996
	.quad	0x40228854ac29bf16              # double 9.2662709999999997
	.quad	0x400e7a3443d46b27              # double 3.8096700000000001
	.quad	0x40068a23bff8a8f4              # double 2.8174510000000001
	.quad	0x401582b628459967              # double 5.3776479999999998
	.quad	0x40206cd013a92a30              # double 8.2125249999999994
	.quad	0x4015dbf2b239a390              # double 5.4647930000000002
	.quad	0x401c2e9856a37ac4              # double 7.0455030000000001
	.quad	0x40188bf26f1dc50d              # double 6.1366670000000001
	.quad	0x4022a4f13cee9dd8              # double 9.3221530000000001
	.quad	0x401f24167a95c854              # double 7.7852420000000002
	.quad	0x3fc07807789a4591              # double 0.128663
	.quad	0x40197644d87724fb              # double 6.3654970000000004
	.quad	0x401631b3f20a73f7              # double 5.5485379999999997
	.quad	0x401a06833c60029f              # double 6.5063599999999999
	.quad	0x401094467381d7dc              # double 4.1448
	.quad	0x401093dc054ef45a              # double 4.1443940000000001
	.quad	0x400bc29e90795f67              # double 3.4700289999999998
	.quad	0x40226fe77d523b36              # double 9.2185629999999996
	.quad	0x3ff5cb1bbcf4e875              # double 1.362087
	.quad	0x40212bd0e12e83a1              # double 8.5855779999999999
	.quad	0x401de5ce18266773              # double 7.4744190000000001
	.quad	0x401b019b4dcebfec              # double 6.7515689999999999
	.quad	0x3fd506705c896dd2              # double 0.32851799999999998
	.quad	0x40233576683c297c              # double 9.604419
	.quad	0x40201a0a52695960              # double 8.0508600000000001
	.quad	0x401e3b3fe9fadafd              # double 7.5578609999999999
	.quad	0x4022dce1a3f4666f              # double 9.4314090000000003
	.quad	0x4023fb1d712a0ec7              # double 9.9904589999999995
	.quad	0x401ae0342aa9f7b6              # double 6.7189490000000003
	.quad	0x4020f2dadb8348f5              # double 8.4743259999999996
	.quad	0x402087bbd7b2031d              # double 8.2651050000000001
	.quad	0x401dd35b91f70de9              # double 7.456404
	.quad	0x4000d95feda66128              # double 2.1061399999999999
	.quad	0x400652f7f498c3b1              # double 2.7905120000000001
	.quad	0x40031aa92e62131b              # double 2.3880180000000002
	.quad	0x4021c6779207d4e1              # double 8.8876310000000007
	.quad	0x401d5b23571d1d47              # double 7.3390019999999998
	.quad	0x3fea1cc532a497fa              # double 0.81601199999999996
	.quad	0x401957c6759ab6d0              # double 6.335718
	.quad	0x4023cfb506dd69d3              # double 9.9056779999999999
	.quad	0x3ffaab1b36bd2b6f              # double 1.666774
	.quad	0x40109fc9795b35b1              # double 4.1560420000000002
	.quad	0x4022082107b78466              # double 9.0158769999999997
	.quad	0x4005ed30f062d40b              # double 2.7408160000000001
	.quad	0x4019374c8ffb8b26              # double 6.3040029999999998
	.quad	0x400560431bde82d8              # double 2.6720030000000001
	.quad	0x4022f3d7f51efb6e              # double 9.4762570000000004
	.quad	0x3ff1d2ff4ba51a00              # double 1.1140129999999999
	.quad	0x401a44e8fb00bcbe              # double 6.5672949999999997
	.quad	0x4008f83b60285ec4              # double 3.1212070000000001
	.quad	0x4022b9e59f2ba9d2              # double 9.3630800000000001
	.quad	0x400464b2314013ec              # double 2.5491679999999999
	.quad	0x3fa70ae536501e26              # double 0.045005000000000003
	.quad	0x401bc9b845564b66              # double 6.9469919999999998
	.quad	0x3ff132f76e6106ab              # double 1.074943
	.quad	0x3fe06c8b43958106              # double 0.51324999999999998
	.quad	0x40129a6aca793576              # double 4.650798
	.quad	0x4022e89528f190d1              # double 9.4542629999999991
	.quad	0x3fe66bc408d8ec96              # double 0.70065500000000003
	.quad	0x401fff84449dbec2              # double 7.9995279999999998
	.quad	0x40122aceee0f3cb4              # double 4.5418050000000001
	.quad	0x4010302539756c94              # double 4.0470170000000003
	.quad	0x400ca6748e475600              # double 3.581277
	.quad	0x40136d940789613d              # double 4.8570099999999998
	.quad	0x4015036199780baa              # double 5.2533019999999997
	.quad	0x3ff78a936c58eeaf              # double 1.4713320000000001
	.quad	0x4023d6ae9ee45c36              # double 9.9193010000000008
	.quad	0x3fdddefc7a398202              # double 0.46673500000000001
	.quad	0x4021ea08bfc2224f              # double 8.9570980000000002
	.quad	0x3ff052e83a109d06              # double 1.020241
	.quad	0x401467082491afc0              # double 5.1006169999999997
	.quad	0x3fcdca7d6733ebc0              # double 0.232742
	.quad	0x40165192ea52ef91              # double 5.5796619999999999
	.quad	0x402084cd96206855              # double 8.2593809999999994
	.quad	0x40151e3c968943e1              # double 5.279528
	.quad	0x4018a2107b784663              # double 6.1582660000000002
	.quad	0x3ffdac386d2ed784              # double 1.854546
	.quad	0x4022f32bba98eda2              # double 9.4749429999999997
	.quad	0x401ce5907d912557              # double 7.2241840000000002
	.quad	0x40131008205ff1d8              # double 4.7656559999999999
	.quad	0x3fd7f6512a94ff00              # double 0.37440899999999999
	.quad	0x4023cd6ece13f4aa              # double 9.9012360000000008
	.quad	0x4011e3f5f91600f3              # double 4.4726179999999998
	.quad	0x4022bc5cdd50a88f              # double 9.367896
	.quad	0x400218df7a4e7ab7              # double 2.2621449999999999
	.quad	0x40203f4927913e81              # double 8.1236049999999995
	.quad	0x3ff6567dbb16c1e3              # double 1.3961159999999999
	.quad	0x40021f36ac647779              # double 2.2652410000000001
	.quad	0x401f5d30270f3882              # double 7.8410039999999999
	.quad	0x401384bfd2e94680              # double 4.8796379999999999
	.quad	0x400e53f4a98aa865              # double 3.790994
	.quad	0x401908c7192ea52f              # double 6.258572
	.quad	0x400ba8eabffcdab2              # double 3.4574790000000002
	.quad	0x401e51fff79c8430              # double 7.5800780000000003
	.quad	0x40123ba27ae9ab2a              # double 4.5582370000000001
	.quad	0x401eed39da16616b              # double 7.7316659999999997
	.quad	0x4021b14d2f5dbb9d              # double 8.846292
	.quad	0x400f95592d98bf7f              # double 3.947924
	.quad	0x3ffe5bf26f1dc50d              # double 1.897448
	.quad	0x400a3b7c7820a30e              # double 3.2790460000000001
	.quad	0x4022085e3da2f8be              # double 9.0163440000000001
	.quad	0x400fc4039abf3387              # double 3.97071
	.quad	0x4022e7e64f54d1e9              # double 9.4529289999999992
	.quad	0x40121358f2e05ccd              # double 4.5188940000000004
	.quad	0x4008f247cb70ac3b              # double 3.1183010000000002
	.quad	0x3ff0855a7d24180d              # double 1.0325569999999999
	.quad	0x4023d02e87d2c7b9              # double 9.9066050000000007
	.quad	0x402342964e8b7e4e              # double 9.6300530000000002
	.quad	0x4001f8811b1d92b8              # double 2.24634
	.quad	0x401adb3aabcd78c4              # double 6.7140909999999998
	.quad	0x400c6427c7c5260f              # double 3.5489039999999998
	.quad	0x3ff354e8fb00bcbe              # double 1.2082299999999999
	.quad	0x402206940357a355              # double 9.012848
	.quad	0x3fe9714b9cb6848c              # double 0.79508
	.quad	0x4019971cda2b5a21              # double 6.3975710000000001
	.quad	0x3fee393ee5eedcc2              # double 0.94448799999999999
	.quad	0x4016f73ffac1d29e              # double 5.7414550000000002
	.quad	0x40146d0b73d188f4              # double 5.1064889999999998
	.quad	0x4022541bda5119ce              # double 9.1642749999999999
	.quad	0x3ff93a02fb5d0310              # double 1.5766629999999999
	.quad	0x400fc36da87a072d              # double 3.970424
	.quad	0x40083256798958da              # double 3.0245790000000001
	.quad	0x401a6f901083dbc2              # double 6.6089479999999998
	.quad	0x4018b2ccb3a2595c              # double 6.1746090000000002
	.quad	0x400b8af038e29f9d              # double 3.442841
	.quad	0x40098b8f9b13165d              # double 3.1931449999999999
	.quad	0x3fe06ac647778dd6              # double 0.51303399999999999
	.quad	0x4019fc02f2f98740              # double 6.496105
	.quad	0x40154fdbd2fa0d78              # double 5.3279870000000003
	.quad	0x4021d820e6299525              # double 8.9221260000000004
	.quad	0x3fc7d8d79d0a6762              # double 0.186305
	.quad	0x40148b3a68b19a41              # double 5.1359649999999997
	.quad	0x401195b63d3e4ef0              # double 4.3962029999999999
	.quad	0x40200deaab042529              # double 8.0271810000000006
	.quad	0x4011acc5fbf83383              # double 4.4187240000000001
	.quad	0x401cdf961804d984              # double 7.2183460000000004
	.quad	0x3ff142acb85a4f01              # double 1.078778
	.quad	0x401d4a11233df2aa              # double 7.3223310000000001
	.quad	0x401c91a1986b9c30              # double 7.1422179999999997
	.quad	0x4006213b18dac259              # double 2.7662260000000001
	.quad	0x402280db2702a348              # double 9.2516719999999992
	.quad	0x3ff94383ad9f0a1c              # double 1.578983
	.quad	0x401b344d013a92a3              # double 6.801075
	.quad	0x40094bc83a96d4c3              # double 3.1620029999999999
	.quad	0x401409e2bcf91a33              # double 5.0096540000000003
	.quad	0x4010b4a38327674d              # double 4.1764049999999999
	.quad	0x3ff38d38cda6e760              # double 1.221978
	.quad	0x40228b4a87e38eb0              # double 9.2720529999999997
	.quad	0x4020303686a4ca4f              # double 8.0941659999999995
	.quad	0x402305a921ccd962              # double 9.511056
	.quad	0x3fc68f96e158750c              # double 0.176257
	.quad	0x401308fb43d89ce5              # double 4.7587710000000003
	.quad	0x3ff14199fe43675e              # double 1.078516
	.quad	0x40200e8858ff7597              # double 8.0283840000000009
	.quad	0x401fe2e44b6e935c              # double 7.9715740000000004
	.quad	0x4022169ab29e4d5e              # double 9.0441490000000009
	.quad	0x401da4b407032980              # double 7.4108429999999998
	.quad	0x401456b0d9513f8e              # double 5.0846590000000003
	.quad	0x3fee2f166e008e9b              # double 0.94324799999999998
	.quad	0x4016fcb4f1e4b44a              # double 5.7467839999999999
	.quad	0x40211a10e0221427              # double 8.55091
	.quad	0x400f409bb6aa4b99              # double 3.9065470000000002
	.quad	0x4017c4866a11ec92              # double 5.9419190000000004
	.quad	0x3f7756c93a711516              # double 0.0056979999999999999
	.quad	0x401f05000c9539b9              # double 7.7548830000000004
	.quad	0x40218f6555c52e73              # double 8.7800700000000003
	.quad	0x4022d5102bc72e27              # double 9.4161389999999993
	.quad	0x40166b517a46173c              # double 5.6048030000000004
	.quad	0x3fb3394b7b28954a              # double 0.075092999999999993
	.quad	0x4003c7820a30db6a              # double 2.4724159999999999
	.quad	0x40042d045fe11127              # double 2.5219809999999998
	.quad	0x40202202539756c9              # double 8.0664239999999996
	.quad	0x40211dd7cb2d905c              # double 8.5582869999999999
	.quad	0x401fc9374bc6a7f0              # double 7.9465000000000003
	.quad	0x4020b765fd8adaba              # double 8.3582000000000001
	.quad	0x400eb5eaee2003ac              # double 3.8388270000000002
	.quad	0x40208b84ba0e8427              # double 8.2724969999999995
	.quad	0x401647e9d94d0dd0              # double 5.5702280000000002
	.quad	0x400bc3486f049a99              # double 3.4703529999999998
	.quad	0x400a6d3b6cbd987c              # double 3.3033359999999998
	.quad	0x3fc33a0407cc7d1c              # double 0.15020800000000001
	.quad	0x400c9531550ca1cf              # double 3.572848
	.quad	0x40158e175d13d74d              # double 5.3887609999999997
	.quad	0x401ba3bea91d9b1b              # double 6.9099069999999996
	.quad	0x4018d1c9f72f76e6              # double 6.2048719999999999
	.quad	0x4023690c4dec1c1d              # double 9.7051719999999992
	.quad	0x401d340e9d51b4fe              # double 7.3008369999999996
	.quad	0x401232aae297396d              # double 4.54948
	.quad	0x3fe75c6c11a11234              # double 0.73003200000000001
	.quad	0x3ffd4c07aaef2c73              # double 1.831062
	.quad	0x3ff25dbec2480e8d              # double 1.1478870000000001
	.quad	0x400456b6e0d23d4f              # double 2.542341
	.quad	0x4015c01d9f4d37c1              # double 5.4376129999999998
	.quad	0x4015738433d6c722              # double 5.3628090000000004
	.quad	0x3ff5e5e02ea960b7              # double 1.368622
	.quad	0x4001aaa10e022142              # double 2.2083149999999998
	.quad	0x400c4ea209aaa3ad              # double 3.538395
	.quad	0x40236a046c764ae0              # double 9.7070650000000001
	.quad	0x4005f78811b1d92b              # double 2.7458649999999998
	.quad	0x4004c7be553ac4f8              # double 2.597531
	.quad	0x3fd9871a3b14a904              # double 0.39887099999999998
	.quad	0x3fe15ad7518b0d0f              # double 0.54233900000000002
	.quad	0x400678c9fb6134ce              # double 2.8089789999999999
	.quad	0x3fe22a12f901083e              # double 0.56763600000000003
	.quad	0x40216d38ac18f81f              # double 8.7133230000000008
	.quad	0x4016ad55e6bc621b              # double 5.6692729999999996
	.quad	0x401f83e4ef0281ba              # double 7.8788029999999996
	.quad	0x401c8ee2c98e53eb              # double 7.1395369999999998
	.quad	0x4013b9b0ee49f517              # double 4.9313390000000004
	.quad	0x401330ccff21b3af              # double 4.7976570000000001
	.quad	0x4012cf138bcdfefc              # double 4.702223
	.quad	0x3ff984d551d68c69              # double 1.59493
	.quad	0x3ff03304039abf34              # double 1.0124550000000001
	.quad	0x3ff994cec41dd1a2              # double 1.59883
	.quad	0x40200529131ec0b5              # double 8.0100789999999993
	.quad	0x4012eba5e353f7cf              # double 4.7301250000000001
	.quad	0x401098de2ac32229              # double 4.1492849999999999
	.quad	0x4005c996b76709fa              # double 2.7234319999999999
	.quad	0x3ff15394317acc4f              # double 1.082905
	.quad	0x40227915592d98bf              # double 9.2364909999999991
	.quad	0x40194f2495e17e35              # double 6.3272880000000002
	.quad	0x3fbafab53d640e9d              # double 0.105388
	.quad	0x3ff7e2f37fbefd00              # double 1.4929079999999999
	.quad	0x40228a3a29c779a7              # double 9.2699750000000005
	.quad	0x4018f7a5f41aef70              # double 6.2418440000000004
	.quad	0x3f77c1bda5119ce0              # double 0.0057999999999999996
	.quad	0x400a3c5718eb8950              # double 3.2794629999999998
	.quad	0x401fe988d2a1f8e4              # double 7.9780610000000003
	.quad	0x4008382c2bd7f51f              # double 3.027428
	.quad	0x4017e3a322af5771              # double 5.972302
	.quad	0x3fd8f01322f27350              # double 0.38965300000000003
	.quad	0x4011926e5471715c              # double 4.3929989999999997
	.quad	0x3ff4d5d1c3ac929b              # double 1.3022020000000001
	.quad	0x3fe1ab0a6fc58ab9              # double 0.55212899999999998
	.quad	0x3fa994c016052503              # double 0.049963
	.quad	0x3ff59f9378ee2867              # double 1.351459
	.quad	0x3fc41ccd96206855              # double 0.15712899999999999
	.quad	0x401a8560c7c0f451              # double 6.6302519999999996
	.quad	0x400ef76922d948dc              # double 3.870806
	.quad	0x402155946c332f01              # double 8.6671479999999992
	.quad	0x3ffb28c692f6e829              # double 1.6974549999999999
	.quad	0x4015e2a843808851              # double 5.4713450000000003
	.quad	0x400e900713f077cd              # double 3.8203260000000001
	.quad	0x4008a156e264e486              # double 3.0787789999999999
	.quad	0x3fe6085b18548a9c              # double 0.68852000000000002
	.quad	0x3fec02a3486f049b              # double 0.87532200000000004
	.quad	0x3fd03e707e175d14              # double 0.25381100000000001
	.quad	0x401d314ad362e903              # double 7.2981369999999997
	.quad	0x401732af9a8cdea0              # double 5.7994979999999998
	.quad	0x402277cb923a29c7              # double 9.2339749999999992
	.quad	0x3fe5f0691ea78af4              # double 0.68559700000000001
	.quad	0x401b93dff3f0fe04              # double 6.8944089999999996
	.quad	0x4000a99392189bd8              # double 2.0828009999999999
	.quad	0x400d77ef5a964e8b              # double 3.6835619999999998
	.quad	0x40194294dd72367e              # double 6.3150209999999998
	.quad	0x400e7f03d145d851              # double 3.8120189999999998
	.quad	0x40189080f98fa377              # double 6.1411170000000004
	.quad	0x4020a589acbc8c0d              # double 8.3233160000000002
	.quad	0x4021314af4f0d845              # double 8.5962750000000003
	.quad	0x40203c610f0e90bc              # double 8.1179279999999991
	.quad	0x4019a002e2328f9f              # double 6.4062609999999998
	.quad	0x4023d9f05ea24cc7              # double 9.9256620000000008
	.quad	0x40131b97785729b3              # double 4.7769450000000004
	.quad	0x401455f45e0b4e12              # double 5.0839400000000001
	.quad	0x3ff5893faf42784b              # double 1.3460080000000001
	.quad	0x3fe2a61bf37b8d3f              # double 0.58277699999999999
	.quad	0x401447fe8ee6b830              # double 5.0703069999999997
	.quad	0x3ff39ab9f559b3d0              # double 1.2252749999999999
	.quad	0x4016dd2c386d2ed8              # double 5.7159890000000004
	.quad	0x40156aa00192a737              # double 5.3541259999999999
	.quad	0x4021397f62b6ae7d              # double 8.6122999999999994
	.quad	0x402222b7baecd078              # double 9.0678079999999994
	.quad	0x3ff55abc0e38a7e7              # double 1.3346519999999999
	.quad	0x3ff0a67b5f1bef4a              # double 1.040645
	.quad	0x40196e1b8ed1bf7b              # double 6.3575270000000002
	.quad	0x401bdb44a1f08030              # double 6.9641289999999998
	.quad	0x3fe356bebe1650a4              # double 0.60433899999999996
	.quad	0x4020ef0e0a84be40              # double 8.4669039999999995
	.quad	0x3ff3736049ecb31c              # double 1.215668
	.quad	0x40144f9b994e1a3f              # double 5.0777419999999998
	.quad	0x400098c868b9fdbd              # double 2.0746009999999999
	.quad	0x402159348b220792              # double 8.6742290000000004
	.quad	0x4019cc11a11233df              # double 6.4492859999999999
	.quad	0x4018fd783dff3f10              # double 6.2475290000000001
	.quad	0x4017327179bfdf7f              # double 5.7992610000000004
	.quad	0x3fd3549b62c77575              # double 0.302039
	.quad	0x401c1e41d4b6a61a              # double 7.0295480000000001
	.quad	0x40038939eadd590c              # double 2.442005
	.quad	0x4023fcf11b60ae97              # double 9.9940270000000008
	.quad	0x4000c6f049a9973e              # double 2.0971380000000002
	.quad	0x401ad57de0d66f0d              # double 6.708488
	.quad	0x3ffd6308787485e4              # double 1.836678
	.quad	0x4010f2938de6ddf0              # double 4.236891
	.quad	0x40236224463065f9              # double 9.6916829999999993
	.quad	0x4018ddc2f405f6ba              # double 6.216564
	.quad	0x401a380b242070b9              # double 6.5547300000000002
	.quad	0x401644f1a1986b9c              # double 5.5673279999999998
	.quad	0x40047faebc408d8f              # double 2.5623450000000001
	.quad	0x400550563ed0f627              # double 2.6642269999999999
	.quad	0x4020aeffe2a3cea7              # double 8.3417960000000004
	.quad	0x401b788ce703afb8              # double 6.8677250000000001
	.quad	0x40149a32f4491299              # double 5.1505850000000004
	.quad	0x3feb61198aeb80ed              # double 0.855603
	.quad	0x3fffcb85a4f00ef1              # double 1.987188
	.quad	0x4013d445aa2e3c53              # double 4.9572969999999996
	.quad	0x401fd17481b21c47              # double 7.9545459999999996
	.quad	0x3fb01df3300de4c5              # double 0.062956999999999999
	.quad	0x40225d8e64b23140              # double 9.1827269999999998
	.quad	0x401d2e5a78f25a25              # double 7.2952669999999999
	.quad	0x40190f77af64063a              # double 6.2651050000000001
	.quad	0x4019f915379fa97e              # double 6.4932449999999999
	.quad	0x400772af9a8cdea0              # double 2.9309989999999999
	.quad	0x4022f2821f2990f3              # double 9.4736489999999999
	.quad	0x3fc925aab4741073              # double 0.196462
	.quad	0x401e4df3300de4c5              # double 7.5761229999999999
	.quad	0x3fd6f69878316a05              # double 0.35880099999999998
	.quad	0x401a5ed7c6fbd274              # double 6.5926200000000001
	.quad	0x401e9a8bd230b9dc              # double 7.6509239999999998
	.quad	0x40144e3f359ff4fd              # double 5.0764129999999996
	.quad	0x3fec22dd7a99fa12              # double 0.87925600000000004
	.quad	0x3ff4c7570c564f98              # double 1.298667
	.quad	0x401f58ad68837718              # double 7.8365989999999996
	.quad	0x40000ef77f27fe4c              # double 2.0073080000000001
	.quad	0x40202ed740c4156e              # double 8.0914859999999997
	.quad	0x401ff5171e29b6b3              # double 7.9893460000000002
	.quad	0x3ff692b2bfdb4cc2              # double 1.4108149999999999
	.quad	0x4007fdfd2630ec31              # double 2.999018
	.quad	0x3fc931876188b114              # double 0.196824
	.quad	0x4023bd06fef7c244              # double 9.8691940000000002
	.quad	0x40218517c5ef62fa              # double 8.7599470000000004
	.quad	0x3ffcc4d76ab58080              # double 1.798057
	.quad	0x401646a37ac3eb7d              # double 5.5689830000000002
	.quad	0x400df15054ac29bf              # double 3.742829
	.quad	0x40082eca686e7e63              # double 3.0228470000000001
	.quad	0x402091a73b42cc2d              # double 8.2844789999999993
	.quad	0x4019db58d1526d8b              # double 6.4642059999999999
	.quad	0x401af44fe36d2242              # double 6.7385859999999997
	.quad	0x4010eea8112ba16e              # double 4.2330629999999996
	.quad	0x401a6b96af038e2a              # double 6.605067
	.quad	0x401b018d25edd053              # double 6.7515150000000004
	.quad	0x40221165b20b8067              # double 9.0339790000000004
	.quad	0x400d15ca6ca03c4b              # double 3.63564
	.quad	0x3fc92af9a8cdea03              # double 0.19662399999999999
	.quad	0x3fdccfb762d83c6d              # double 0.45017800000000002
	.quad	0x4004b76ab5807fed              # double 2.5895589999999999
	.quad	0x3ff2fe718a86d71f              # double 1.18712
	.quad	0x4012ab906466b1e6              # double 4.6675430000000002
	.quad	0x40156f17bd8be729              # double 5.3584889999999996
	.quad	0x401c8453d20f2bed              # double 7.1292260000000001
	.quad	0x3ff271ef30a4e37a              # double 1.1528160000000001
	.quad	0x401fd6772d5e071c              # double 7.9594389999999997
	.quad	0x4006b695d91ab8e9              # double 2.839153
	.quad	0x400c0e3150dae3e7              # double 3.5069300000000001
	.quad	0x401f470fbeb9e493              # double 7.8193960000000002
	.quad	0x401183b9f127f5e8              # double 4.3786389999999997
	.quad	0x3fd2d0c804102ff9              # double 0.293993
	.quad	0x4021dec84f8f8a4c              # double 8.9351219999999997
	.quad	0x4011f3e5321e603d              # double 4.4881789999999997
	.quad	0x40115d9620685554              # double 4.3413930000000001
	.quad	0x40145864883fd502              # double 5.0863209999999999
	.quad	0x3fed1767903211cb              # double 0.909107
	.quad	0x3ff302d8c2a454de              # double 1.1881949999999999
	.quad	0x4008ee87d2c7b891              # double 3.1164700000000001
	.quad	0x401a638eb0318b93              # double 6.5972239999999998
	.quad	0x4013372580c308ff              # double 4.8038540000000003
	.quad	0x4000e5a57646ae3a              # double 2.1121319999999999
	.quad	0x40199f9acffa7eb7              # double 6.4058640000000002
	.quad	0x4020e5bff04577d9              # double 8.4487299999999994
	.quad	0x3fe21dcf893faf42              # double 0.56613899999999995
	.quad	0x401f421af7d30ad4              # double 7.8145559999999996
	.quad	0x400682856605ee57              # double 2.8137310000000002
	.quad	0x3fe0111276fb0920              # double 0.50208399999999997
	.quad	0x401d444806290eed              # double 7.316681
	.quad	0x3fe652e946801712              # double 0.69762100000000005
	.quad	0x401b2258d5842b73              # double 6.7835419999999997
	.quad	0x4017f5ed4a1ad645              # double 5.9901629999999999
	.quad	0x40179cf0307f23cd              # double 5.9032600000000004
	.quad	0x401993675ddd2ae9              # double 6.3939490000000001
	.quad	0x401e96102795703f              # double 7.6465459999999998
	.quad	0x402154b3c3e74afd              # double 8.6654339999999994
	.quad	0x4021adfd694ccab4              # double 8.8398240000000001
	.quad	0x4022a12fb19e731d              # double 9.3148169999999997
	.quad	0x4023248b43958106              # double 9.5713749999999997
	.quad	0x4020061c36976bc2              # double 8.0119340000000001
	.quad	0x3feef07182235b4f              # double 0.96685100000000001
	.quad	0x3ffd53c03bc4d22d              # double 1.8329470000000001
	.quad	0x4013e06e5cd4ed2d              # double 4.9691710000000002
	.quad	0x401b8f041461b6d4              # double 6.8896639999999998
	.quad	0x4010942d490e66cb              # double 4.1447039999999999
	.quad	0x4023dc3efae7924b              # double 9.9301680000000001
	.quad	0x3ff542645e4e69f0              # double 1.3287089999999999
	.quad	0x3fda472c0e7bc3c6              # double 0.41059400000000001
	.quad	0x4018510adcd2d44e              # double 6.0791430000000002
	.quad	0x3ffea49f51697f20              # double 1.9151910000000001
	.quad	0x4023fabf9830e3ce              # double 9.9897430000000007
	.quad	0x40161d1b2e59af9f              # double 5.5284240000000002
	.quad	0x40001d1c3ac929aa              # double 2.0142139999999999
	.quad	0x4002c705c896dd27              # double 2.3471790000000001
	.quad	0x400ddef06b37867f              # double 3.733857
	.quad	0x401408c0ce91c8eb              # double 5.0085480000000002
	.quad	0x401968726d04e619              # double 6.3519990000000002
	.quad	0x402334cea28fe261              # double 9.6031390000000005
	.quad	0x4011f12b5e529bae              # double 4.4855169999999998
	.quad	0x400923369b9d7fd8              # double 3.1421939999999999
	.quad	0x400c56512a94ff00              # double 3.5421469999999999
	.quad	0x3ff94ebdd334c5da              # double 1.5817239999999999
	.quad	0x4005aba94bbe4474              # double 2.7088190000000001
	.quad	0x401f46106ab14ec2              # double 7.818422
	.quad	0x3fc16672fba01eef              # double 0.135939
	.quad	0x40038f4e874c8ffc              # double 2.4449740000000002
	.quad	0x3fd5003eea209aaa              # double 0.32813999999999999
	.quad	0x3ff3230446b69db6              # double 1.1960489999999999
	.quad	0x3ff58d0cc35ce182              # double 1.3469359999999999
	.quad	0x400151d1d4738a3b              # double 2.1649509999999998
	.quad	0x400b62656abde3fc              # double 3.4230450000000001
	.quad	0x402098ad25679896              # double 8.2981960000000008
	.quad	0x3fec4a2db61bb060              # double 0.88405500000000003
	.quad	0x4012a5ed06fef7c2              # double 4.6620369999999998
	.quad	0x3fb7ebd09e12a51e              # double 0.093441999999999997
	.quad	0x40158859c8c9320e              # double 5.3831550000000004
	.quad	0x40071bb9cf9a06a7              # double 2.888538
	.quad	0x4016e2da98676a72              # double 5.7215369999999997
	.quad	0x4005ff080303c07f              # double 2.7495270000000001
	.quad	0x3fa9d55e6bc621b8              # double 0.050456000000000001
	.quad	0x401ee56abde3fbbd              # double 7.7240399999999995
	.quad	0x3fbfd31b9b66f933              # double 0.12431499999999999
	.quad	0x3ff45d12cadddf44              # double 1.272723
	.quad	0x3fd81a6937d1fe65              # double 0.376612
	.quad	0x40205acffa7eb6bf              # double 8.1773679999999995
	.quad	0x4009907075b3e143              # double 3.1955269999999998
	.quad	0x4016fdd93c46d82c              # double 5.7478990000000003
	.quad	0x401daedbb59ddc1e              # double 7.4207599999999996
	.quad	0x401f52788db0574b              # double 7.8305379999999997
	.quad	0x3fec1d3ed527e521              # double 0.87856999999999996
	.quad	0x400b913cee9dd7ed              # double 3.4459170000000001
	.quad	0x40216437824d4cba              # double 8.6957360000000001
	.quad	0x4021a23f67f4dbe0              # double 8.8168900000000008
	.quad	0x40234cf355cd91ef              # double 9.6502940000000005
	.quad	0x401aa390c9107faa              # double 6.659732
	.quad	0x4022fa2e7f6f4be8              # double 9.4886359999999996
	.quad	0x400720d3cff64cf9              # double 2.8910290000000001
	.quad	0x40105ccd0fe8ab50              # double 4.0906260000000003
	.quad	0x40227715c63ae254              # double 9.2325879999999997
	.quad	0x4001d3cc4ac6cdaf              # double 2.2284169999999999
	.quad	0x3fdb447c30d306a3              # double 0.42605500000000002
	.quad	0x401cb98c3b0c4589              # double 7.1811990000000003
	.quad	0x401913cc8de2ac32              # double 6.2693349999999999
	.quad	0x400a4df37329c348              # double 3.288062
	.quad	0x401960a9de8b3b32              # double 6.344398
	.quad	0x40230bb8a19c9d5a              # double 9.5228929999999998
	.quad	0x3fddab191dde3758              # double 0.46356799999999998
	.quad	0x4017ece3150dae3e              # double 5.9813349999999996
	.quad	0x4000d0164840e172              # double 2.1016050000000002
	.quad	0x40134f1737542a24              # double 4.8272370000000002
	.quad	0x3feab7a5f41aef70              # double 0.83491800000000005
	.quad	0x402060be0ded288d              # double 8.1889500000000002
	.quad	0x401cc30db6a1e81d              # double 7.1904820000000003
	.quad	0x401a4d70a3d70a3d              # double 6.5756249999999996
	.quad	0x3fc6a5d6bebe1651              # double 0.17693600000000001
	.quad	0x4002df9e7b80a9df              # double 2.3591890000000002
	.quad	0x3fe079830e3cd9a5              # double 0.51483299999999999
	.quad	0x3fe03671ac14c661              # double 0.50664600000000004
	.quad	0x401ab00192a73711              # double 6.671881
	.quad	0x3ff06abde3fbbd7b              # double 1.02606
	.quad	0x3fe94c100e6afcce              # double 0.79053499999999999
	.quad	0x400ddd249e44fa05              # double 3.73298
	.quad	0x401d106c00da1a93              # double 7.2660369999999999
	.quad	0x401b4b1c864883fd              # double 6.8233509999999997
	.quad	0x3ff2634dad31fcd2              # double 1.1492439999999999
	.quad	0x402368a6b93ccd10              # double 9.7043970000000002
	.quad	0x40161cfede97d06c              # double 5.5283160000000002
	.quad	0x3ff98536d655e28b              # double 1.5950230000000001
	.quad	0x40120202d9cf13cf              # double 4.5019640000000001
	.quad	0x3ff1663305100a39              # double 1.0874509999999999
	.quad	0x401298e4755ffe6d              # double 4.6493089999999997
	.quad	0x40188ff865d7cb2e              # double 6.1405960000000004
	.quad	0x40183e39b456b442              # double 6.0607670000000002
	.quad	0x400b054477ff151e              # double 3.3775719999999998
	.quad	0x40132e7c49fd7a14              # double 4.7953960000000002
	.quad	0x40035b9f98b71b8b              # double 2.4197380000000002
	.quad	0x4023a2133c1ce6c1              # double 9.8165530000000007
	.quad	0x401ccec52a411c2a              # double 7.201924
	.quad	0x4010369ec2ce464a              # double 4.0533400000000004
	.quad	0x3febf45176145953              # double 0.87357399999999996
	.quad	0x3fed4f850df15a4b              # double 0.91595700000000002
	.quad	0x40203826cc1ca3a5              # double 8.1096710000000005
	.quad	0x3fd6b27cbf6e3f79              # double 0.35464400000000001
	.quad	0x4008965881a15550              # double 3.0734110000000001
	.quad	0x40115da6a4441787              # double 4.341456
	.quad	0x401a7e6b8305d95e              # double 6.6234570000000001
	.quad	0x3ffaefc04c8bc9cd              # double 1.6835329999999999
	.quad	0x4020eb4e54f7a919              # double 8.4595819999999993
	.quad	0x4013896cc5fbf834              # double 4.8842040000000004
	.quad	0x4002407dd4413554              # double 2.2814899999999998
	.quad	0x401dd6a875d56f33              # double 7.4596270000000002
	.quad	0x4019ff78359bc340              # double 6.4994820000000004
	.quad	0x4010e6c1e364bec6              # double 4.2253489999999996
	.quad	0x4023e55347a5b0ff              # double 9.9479009999999998
	.quad	0x400e49f05ea24cc7              # double 3.7861030000000002
	.quad	0x4020592b1b36bd2b              # double 8.1741569999999992
	.quad	0x3ffb490e66cb1034              # double 1.705336
	.quad	0x4017b6c508b32ce9              # double 5.9284860000000004
	.quad	0x4022367839cd8128              # double 9.1063860000000005
	.quad	0x400844399b2c40d1              # double 3.0333130000000001
	.quad	0x3fe737eb28d8665e              # double 0.725576
	.quad	0x401884095f2452c6              # double 6.1289420000000003
	.quad	0x3ffd5437c5692b3d              # double 1.8330610000000001
	.quad	0x400f8408d8ec95c0              # double 3.93947
	.quad	0x4021a9e492bc2fc7              # double 8.8318220000000007
	.quad	0x401b55d249e44fa0              # double 6.8338099999999997
	.quad	0x4006e24aada33bda              # double 2.8604940000000001
	.quad	0x401e874794ea0770              # double 7.6321089999999998
	.quad	0x401f2c4c5974e65c              # double 7.7932600000000001
	.quad	0x4011c7cfe5860136              # double 4.4451289999999997
	.quad	0x40180177ea1c68ec              # double 6.0014339999999997
	.quad	0x4021c3f24d8fd5cb              # double 8.8827079999999992
	.quad	0x4008d2934acaff6d              # double 3.1028199999999999
	.quad	0x4021342e557de0d6              # double 8.6019159999999992
	.quad	0x40022ed6777079e6              # double 2.2728700000000002
	.quad	0x4023e70dc768dfbd              # double 9.9512769999999992
	.quad	0x3ffe98548a9bcfd5              # double 1.9121900000000001
	.quad	0x3fe7982a9930be0e              # double 0.73732500000000001
	.quad	0x4014aeacc92146a2              # double 5.1705810000000003
	.quad	0x4012ba4f440af1cc              # double 4.6819430000000004
	.quad	0x40210335f3d7d391              # double 8.5062709999999999
	.quad	0x401bc0ee49f51698              # double 6.938409
	.quad	0x4022f4d48882f0e1              # double 9.4781840000000006
	.quad	0x3ffb1a459103c8e2              # double 1.6939139999999999
	.quad	0x40123782d38476f3              # double 4.5542100000000003
	.quad	0x3ff47f01322f2735              # double 1.281007
	.quad	0x402279fb3fa6defc              # double 9.2382449999999991
	.quad	0x401957589efd86a9              # double 6.335299
	.quad	0x400daef1bac2df0d              # double 3.7104219999999999
	.quad	0x3fae11dbca9691a7              # double 0.058729999999999997
	.quad	0x401104bdfd2630ec              # double 4.2546309999999998
	.quad	0x40226495182a9931              # double 9.1964500000000005
	.quad	0x4023b2291fb3fa6e              # double 9.8479700000000001
	.quad	0x4010a13fd0d0678c              # double 4.15747
	.quad	0x401c7420f6f08cc5              # double 7.1134069999999996
	.quad	0x3fd6c17225b749ae              # double 0.35555700000000001
	.quad	0x4022c3edfa43fe5d              # double 9.3826750000000007
	.quad	0x40036bf01322f273              # double 2.4277039999999999
	.quad	0x3ff6b81b64e05469              # double 1.419948
	.quad	0x4003b93e5fb71fbc              # double 2.4654509999999998
	.quad	0x4012b126e978d4fe              # double 4.673
	.quad	0x400ea9cb252ce033              # double 3.8329070000000001
	.quad	0x400ca7d4e09784ec              # double 3.5819489999999998
	.quad	0x3feeb884406c00da              # double 0.96002399999999999
	.quad	0x401f1a055757d5aa              # double 7.7754110000000001
	.quad	0x400dec308feac42f              # double 3.7403270000000002
	.quad	0x3fe756ba8c586877              # double 0.72933700000000001
	.quad	0x40191fb65668c261              # double 6.2809689999999998
	.quad	0x3fe02795703f2d3c              # double 0.50483199999999995
	.quad	0x400c3b20b8066c2b              # double 3.5288710000000001
	.quad	0x4020d2a0ec743201              # double 8.411384
	.quad	0x401bcd25247cb70b              # double 6.9503370000000002
	.quad	0x40000e2da554b8bf              # double 2.006923
	.quad	0x400bde00d1b71759              # double 3.4834000000000001
	.quad	0x4015db97bb730835              # double 5.4644459999999997
	.quad	0x3fcf9a38fbca105a              # double 0.246894
	.quad	0x3fe6ede97d06bbdc              # double 0.71654200000000001
	.quad	0x40170199bb2788db              # double 5.751563
	.quad	0x4014eeb8950763a2              # double 5.2331260000000004
	.quad	0x3ff31b0ab2e1693c              # double 1.194102
	.quad	0x4023572862f5989e              # double 9.6702300000000001
	.quad	0x401137aaac1094a3              # double 4.3043620000000002
	.quad	0x4011f1a86940357a              # double 4.4859939999999998
	.quad	0x4012fe4bcad9ad86              # double 4.7483360000000001
	.quad	0x401b7ad106ee30cb              # double 6.8699380000000003
	.quad	0x3ff5a02107b78466              # double 1.351594
	.quad	0x401ee771c970f7ba              # double 7.7260200000000001
	.quad	0x401590f12c27a637              # double 5.3915449999999998
	.quad	0x40172aec4a4095f2              # double 5.7919169999999998
	.quad	0x3ff169b499d0203e              # double 1.0883069999999999
	.quad	0x40170a1f080303c0              # double 5.7598839999999996
	.quad	0x402079906cca2db6              # double 8.2374299999999998
	.quad	0x3fdb0203e63e8dda              # double 0.42199799999999998
	.quad	0x4018b4217d2849cb              # double 6.1759089999999999
	.quad	0x3ff9b74ff865d7cb              # double 1.607254
	.quad	0x401e6490e66cb103              # double 7.5982089999999997
	.quad	0x3fe55d8b60f1b25f              # double 0.66766899999999996
	.quad	0x4021c518f3eccc47              # double 8.8849560000000007
	.quad	0x401ff6a6e32e3822              # double 7.9908710000000003
	.quad	0x4014effa7eb6bf44              # double 5.2343539999999997
	.quad	0x4009d9d55e6bc622              # double 3.2313640000000001
	.quad	0x4015058eeae9ee46              # double 5.2554280000000002
	.quad	0x3fd178a6dacabc51              # double 0.27298899999999998
	.quad	0x3fe3d67fd3f5b5fa              # double 0.61993399999999999
	.quad	0x402134fdf3b645a2              # double 8.6035000000000004
	.quad	0x401f3793dd97f62b              # double 7.8042749999999996
	.quad	0x401a4faa8a82a561              # double 6.5777989999999997
	.quad	0x401c1b9dc2f405f7              # double 7.0269690000000002
	.quad	0x4006cca03c4b09ea              # double 2.8499150000000002
	.quad	0x400bebf65dbfceb8              # double 3.4902160000000002
	.quad	0x3ffcc575c0767d35              # double 1.798208
	.quad	0x4008722af5771002              # double 3.0557460000000001
	.quad	0x40116e79ee02a77a              # double 4.3578869999999998
	.quad	0x3fede4adff822bbf              # double 0.93416500000000002
	.quad	0x3fcc5faebc408d8f              # double 0.22167000000000001
	.quad	0x401beaa8eb463498              # double 6.9791600000000003
	.quad	0x40202cecc814d728              # double 8.0877440000000007
	.quad	0x3ff66fbd273d5bab              # double 1.40228
	.quad	0x400d97e56473471f              # double 3.6991679999999998
	.quad	0x401afce28ed5f139              # double 6.7469580000000002
	.quad	0x4000af62f9ca5bd9              # double 2.0856379999999999
	.quad	0x3fd5d388a8b08dd2              # double 0.34103600000000001
	.quad	0x3fa16a26e5471716              # double 0.034013000000000002
	.quad	0x400db8116ebd4cfd              # double 3.714877
	.quad	0x4020e6777079e59f              # double 8.4501299999999997
	.quad	0x40073202107b7846              # double 2.8994179999999998
	.quad	0x4015f7ba6698bb4d              # double 5.4919219999999997
	.quad	0x4023c1e5e2478855              # double 9.8787070000000003
	.quad	0x3ffc38f47304039b              # double 1.7639050000000001
	.quad	0x4023ecd1c7de5083              # double 9.9625380000000003
	.quad	0x4022e42a66dbd72c              # double 9.4456360000000003
	.quad	0x3fedd4d834091c08              # double 0.93223199999999995
	.quad	0x40012235b4edb2f6              # double 2.1417039999999998
	.quad	0x401f8c3c18b502ac              # double 7.8869480000000003
	.quad	0x402291b64e054691              # double 9.2845940000000002
	.quad	0x3ffbdda9c99285a9              # double 1.741617
	.quad	0x402184da2b5a20de              # double 8.7594770000000004
	.quad	0x401d06bdb1a6d699              # double 7.256583
	.quad	0x4021a649f51697f2              # double 8.824783
	.quad	0x40115a697aeddce8              # double 4.3382930000000002
	.quad	0x3fe9ad83c6c97d8d              # double 0.80243100000000001
	.quad	0x3f9ec28b2a6b0d95              # double 0.030039
	.quad	0x40160b6d00b45ae6              # double 5.511158
	.quad	0x400c6e47dc37a3db              # double 3.5538479999999999
	.quad	0x401c9ad7518b0d0f              # double 7.1512120000000001
	.quad	0x402197cbd556084a              # double 8.7964769999999994
	.quad	0x40239aefb2aae297              # double 9.8026099999999996
	.quad	0x40203191bc558644              # double 8.0968149999999994
	.quad	0x4014dd06bbdbe3c1              # double 5.215846
	.quad	0x3fb608aefb2aae29              # double 0.086069999999999994
	.quad	0x3fd8c0b5675579af              # double 0.38676199999999999
	.quad	0x40230c6c332f0175              # double 9.5242629999999994
	.quad	0x40215f40c4156e26              # double 8.6860409999999995
	.quad	0x400e069728a61177              # double 3.7532179999999999
	.quad	0x4023be9fadafd114              # double 9.8723120000000008
	.quad	0x40143e924f227d03              # double 5.0611050000000004
	.quad	0x4022d38800eae18b              # double 9.4131470000000003
	.quad	0x3ff4bd6f97679032              # double 1.296249
	.quad	0x4021e6a077036c9c              # double 8.9504429999999999
	.quad	0x4019ba671ef30a4e              # double 6.4320339999999998
	.quad	0x4020feb18116ebd5              # double 8.4974480000000003
	.quad	0x402028954a7f8013              # double 8.0792640000000002
	.quad	0x4018d5a9a8049668              # double 6.2086550000000003
	.quad	0x3ff56736049ecb32              # double 1.3376980000000001
	.quad	0x401d5cc6c54bcf0b              # double 7.3406019999999996
	.quad	0x40058ee8d10f51ad              # double 2.6947800000000002
	.quad	0x40116bb44e50c5eb              # double 4.3551799999999998
	.quad	0x400059ccfaeff5c7              # double 2.0438480000000001
	.quad	0x4023351aeb3dd11c              # double 9.6037210000000001
	.quad	0x40157ee525892685              # double 5.3739210000000002
	.quad	0x4014098eda22f6a5              # double 5.009334
	.quad	0x4022397df19d66ae              # double 9.1122890000000005
	.quad	0x3ff69ec918e325d5              # double 1.4137660000000001
	.quad	0x401f6e85b9e8c47a              # double 7.8579319999999999
	.quad	0x402259e1d2178f69              # double 9.1755510000000005
	.quad	0x3fde1f8a0902de01              # double 0.47067500000000001
	.quad	0x4022b16052502eec              # double 9.3464379999999991
	.quad	0x40215efe93187619              # double 8.6855360000000008
	.quad	0x401d88af3e468cac              # double 7.3834809999999997
	.quad	0x3fe7f66c6de76428              # double 0.74883100000000002
	.quad	0x3ffc99ad85dfa872              # double 1.7875190000000001
	.quad	0x4015127bf61aa3f0              # double 5.2680509999999998
	.quad	0x400fd510d38cda6e              # double 3.9790359999999998
	.quad	0x4017a261bf37b8d4              # double 5.9085760000000001
	.quad	0x400878c75c4a83b2              # double 3.0589740000000001
	.quad	0x3fce60c38f366949              # double 0.23732800000000001
	.quad	0x400991886df82b1f              # double 3.1960609999999998
	.quad	0x3fd8cdbbe0157eed              # double 0.38755699999999998
	.quad	0x4022b094e5d5b24f              # double 9.3448860000000007
	.quad	0x4021e99ed7c6fbd2              # double 8.9562899999999992
	.quad	0x4006003b3e9a6f82              # double 2.7501129999999998
	.quad	0x401fbadc0980b242              # double 7.93248
	.quad	0x3ff9d9d451fc4c16              # double 1.6156809999999999
	.quad	0x4013d48387df5cf2              # double 4.9575329999999997
	.quad	0x401b02cb20fb224b              # double 6.7527280000000003
	.quad	0x3fe91dde37585be2              # double 0.78489600000000004
	.quad	0x40157f266ba493c9              # double 5.3741700000000003
	.quad	0x3fe684be40420f6f              # double 0.703704
	.quad	0x4002a435efa615a9              # double 2.3301810000000001
	.quad	0x401ace81882adc4d              # double 6.7016660000000003
	.quad	0x3ff14ba83f4eca68              # double 1.0809709999999999
	.quad	0x401ec75ee99a62ed              # double 7.6946979999999998
	.quad	0x40141032db1e9f27              # double 5.0158189999999996
	.quad	0x4021d18266772d5e              # double 8.909198
	.quad	0x400f81e2de870974              # double 3.9384209999999999
	.quad	0x4020f36c3760bf5d              # double 8.4754349999999992
	.quad	0x400492f2b66b6178              # double 2.571752
	.quad	0x3ff691bc55864452              # double 1.4105799999999999
	.quad	0x40189cb0c026cc1d              # double 6.1530180000000003
	.quad	0x3fe3e76c8b439581              # double 0.622
	.quad	0x401aca3b14a90471              # double 6.6974910000000003
	.quad	0x40043ab6d00b45ae              # double 2.5286689999999998
	.quad	0x400aa451b93037d6              # double 3.3302339999999999
	.quad	0x401d1f0fe047d3d4              # double 7.2803339999999999
	.quad	0x400ec350d2806af4              # double 3.8453689999999998
	.quad	0x4022f1e0c5a8155d              # double 9.4724179999999993
	.quad	0x401f0357603925bb              # double 7.7532629999999995
	.quad	0x3fef66b3fe9fadb0              # double 0.98128700000000002
	.quad	0x4016b26fa3fcc9eb              # double 5.6742540000000004
	.quad	0x4007de1fc08fa7a8              # double 2.9834589999999999
	.quad	0x4005ef7caa7589f0              # double 2.7419370000000001
	.quad	0x4002714db59578a3              # double 2.3053240000000002
	.quad	0x3ff015a5b9628cbd              # double 1.005285
	.quad	0x401160abf76a2f49              # double 4.3444060000000002
	.quad	0x4018bab5807fed20              # double 6.1823329999999999
	.quad	0x3feb7bdcf0307f24              # double 0.85887000000000002
	.quad	0x4020b30af5fd47bf              # double 8.3496930000000003
	.quad	0x3fe03cfd4bf0995b              # double 0.50744500000000003
	.quad	0x3ffe5fbe76c8b439              # double 1.8983749999999999
	.quad	0x4012c470a808c826              # double 4.6918360000000003
	.quad	0x400564e93e1c9b41              # double 2.6742729999999999
	.quad	0x4007748e4755ffe7              # double 2.9319120000000001
	.quad	0x4004129fe004b7f6              # double 2.5090940000000002
	.quad	0x40087ddd2ae8e1d6              # double 3.0614569999999999
	.quad	0x40128a48f96e1587              # double 4.6350439999999997
	.quad	0x40107eeed8904f6e              # double 4.123958
	.quad	0x3fe05d76683c297c              # double 0.511409
	.quad	0x4008eff3ade225fa              # double 3.1171639999999998
	.quad	0x4020a0661ae70c13              # double 8.3132789999999996
	.quad	0x4007e24d4cb9ecf6              # double 2.9854989999999999
	.quad	0x40066e68e3ef2841              # double 2.8039109999999998
	.quad	0x4005ae2435696e59              # double 2.7100300000000002
	.quad	0x401578433d6c7219              # double 5.3674439999999999
	.quad	0x4010634549b62c77              # double 4.0969439999999997
	.quad	0x4015757c0b135979              # double 5.3647309999999999
	.quad	0x3ff37eea209aaa3b              # double 1.218485
	.quad	0x4000dc7de5082cf5              # double 2.1076619999999999
	.quad	0x3ff5bd9cae21101b              # double 1.358792
	.quad	0x402282ff4ba51a00              # double 9.2558539999999993
	.quad	0x401237a13c254a3c              # double 4.5543259999999997
	.quad	0x4021ed1efb6dca08              # double 8.9631270000000001
	.quad	0x4018cd095af294dd              # double 6.2002309999999996
	.quad	0x400c5dbd2fa0d77b              # double 3.5457709999999998
	.quad	0x40213577b7c7820a              # double 8.6044289999999997
	.quad	0x401fdd31337eb28e              # double 7.9660080000000004
	.quad	0x400a2839042d8c2a              # double 3.2696399999999999
	.quad	0x3fdedb0dd82fd75e              # double 0.48211999999999999
	.quad	0x4023cfa52ac753e7              # double 9.9055569999999999
	.quad	0x401e339eadd590c1              # double 7.5504100000000002
	.quad	0x401249b56323bbc7              # double 4.5719810000000001
	.quad	0x4001671ac14c660a              # double 2.1753439999999999
	.quad	0x400e7bbc6eb0b7c3              # double 3.8104179999999999
	.quad	0x400169ad42c3c9ef              # double 2.1766000000000001
	.quad	0x3ff66bead4f5903a              # double 1.4013469999999999
	.quad	0x400075807fed2029              # double 2.0573739999999998
	.quad	0x401e7fd438d1d8a5              # double 7.6248329999999997
	.quad	0x400475b6805a2d73              # double 2.557477
	.quad	0x4017c8205ff1d81f              # double 5.9454359999999999
	.quad	0x3ff09f41aef6f8f0              # double 1.0388809999999999
	.quad	0x3ffdedbe7f2c300a              # double 1.8705430000000001
	.quad	0x40161b8130164841              # double 5.5268600000000001
	.quad	0x402297a05143bf72              # double 9.2961449999999992
	.quad	0x402390a8f3a9b068              # double 9.7825389999999998
	.quad	0x400f16f4be835dee              # double 3.886209
	.quad	0x4016c4406c00da1b              # double 5.6916520000000004
	.quad	0x402036f71a7e3088              # double 8.1073540000000008
	.quad	0x3fe4e2e4d1a65061              # double 0.65269699999999997
	.quad	0x401268438088509c              # double 4.60182
	.quad	0x401506e115592d99              # double 5.2567180000000002
	.quad	0x4005d620685553ef              # double 2.7295539999999998
	.quad	0x400c1ea35935fc3b              # double 3.5149599999999999
	.quad	0x3fcec521dda059a7              # double 0.24039099999999999
	.quad	0x4018eb24e9c45458              # double 6.2296329999999998
	.quad	0x4022e451b93037d6              # double 9.4459359999999997
	.quad	0x40223b9d3cbc48f1              # double 9.1164339999999999
	.quad	0x400badaf4adbc665              # double 3.4598070000000001
	.quad	0x40011b6bb1290258              # double 2.1383890000000001
	.quad	0x3ff4bfec13b9f128              # double 1.296856
	.quad	0x3fe8a0902de00d1b              # double 0.76959999999999995
	.quad	0x3ff21dbec2480e8d              # double 1.1322620000000001
	.quad	0x401578b97785729b              # double 5.3678949999999999
	.quad	0x4021f31209edbf8c              # double 8.9747470000000006
	.quad	0x4002c92e62131a8f              # double 2.348233
	.quad	0x400b96e71cda2b5a              # double 3.4486829999999999
	.quad	0x401064545846e8f3              # double 4.0979780000000003
	.quad	0x4011d57cd466f502              # double 4.4584840000000003
	.quad	0x4022260ac7da1ec5              # double 9.0743010000000002
	.quad	0x401e9c8c9320d994              # double 7.6528799999999997
	.quad	0x401f5864cb5bb385              # double 7.836322
	.quad	0x3fe91d4d834091c1              # double 0.78482700000000005
	.quad	0x3ff5386f47b677f7              # double 1.3262780000000001
	.quad	0x40098ea4a8c154ca              # double 3.1946500000000002
	.quad	0x401cc787485e3da3              # double 7.194852
	.quad	0x4020f64b018611fd              # double 8.4810409999999994
	.quad	0x3febddcc63f14120              # double 0.87082499999999996
	.quad	0x4009dca42aed1394              # double 3.2327349999999999
	.quad	0x401d8ca7d6733ebc              # double 7.387359
	.quad	0x401986de76427c7c              # double 6.3817079999999997
	.quad	0x3fba583e8576cce6              # double 0.102909
	.quad	0x40151e09784ec637              # double 5.2793330000000003
	.quad	0x4020f304ccee5abc              # double 8.4746459999999999
	.quad	0x3ff95b59578a2a91              # double 1.584802
	.quad	0x40237d3cff64cf8d              # double 9.7446059999999992
	.quad	0x40221cf483cafb3b              # double 9.0565529999999992
	.quad	0x3ff1ef7a0b5ed8d3              # double 1.1209659999999999
	.quad	0x40209da8bd230b9e              # double 8.3079280000000004
	.quad	0x4020e01b866e43aa              # double 8.4377099999999992
	.quad	0x40201a239e6ab9b2              # double 8.0510529999999996
	.quad	0x402335e19fc2a887              # double 9.6052370000000006
	.quad	0x3ffb57ba6698bb4d              # double 1.7089179999999999
	.quad	0x4001f5a5332acfb7              # double 2.2449439999999998
	.quad	0x4003678af3e468cb              # double 2.4255580000000001
	.quad	0x4005da13c254a3c6              # double 2.7314829999999999
	.quad	0x401f8b0574b40703              # double 7.8857629999999998
	.quad	0x3fc4b484d76ab580              # double 0.16175899999999999
	.quad	0x3f9c61522a6f3f53              # double 0.027715
	.quad	0x40221e199780baa6              # double 9.0587890000000009
	.quad	0x40188c27e9531551              # double 6.1368710000000002
	.quad	0x4021bd6a9c560c7c              # double 8.8699539999999998
	.quad	0x401f905b39e279dd              # double 7.8909729999999997
	.quad	0x401f16f86a098916              # double 7.7724320000000002
	.quad	0x4015ee63a5c1c609              # double 5.4828020000000004
	.quad	0x4020640ce91c8eac              # double 8.195411
	.quad	0x3ff16cedd4845133              # double 1.089094
	.quad	0x3fd301ffb480a5ad              # double 0.29699700000000001
	.quad	0x402059528f190d17              # double 8.1744579999999996
	.quad	0x402016ee73e681aa              # double 8.0447880000000005
	.quad	0x40132b82c2bd7f52              # double 4.7924910000000001
	.quad	0x3fee242f1ed17c5f              # double 0.941917
	.quad	0x4021c5744f5d3565              # double 8.8856529999999996
	.quad	0x400b7e0157eed45f              # double 3.4365260000000002
	.quad	0x401743f8db489093              # double 5.8163790000000004
	.quad	0x400eca771c970f7c              # double 3.8488600000000002
	.quad	0x401095821294573a              # double 4.1460039999999996
	.quad	0x40103d2c386d2ed8              # double 4.0597390000000004
	.quad	0x400b6e6c093d9664              # double 3.4289170000000002
	.quad	0x401fd17c5ef62f9d              # double 7.9545760000000003
	.quad	0x4012debfec13b9f1              # double 4.7175289999999999
	.quad	0x40235bc6c97d8cf4              # double 9.6792510000000007
	.quad	0x401766c1a048e044              # double 5.8503480000000003
	.quad	0x4006fd4d834091c1              # double 2.8736830000000002
	.quad	0x401615aab4741073              # double 5.5211589999999999
	.quad	0x3ff2b7dd872f33ca              # double 1.169889
	.quad	0x3ff644b6e935b91f              # double 1.3917759999999999
	.quad	0x3fdc2f09d8c6d613              # double 0.44037100000000001
	.quad	0x4014441dd1a21ea3              # double 5.0665199999999997
	.quad	0x4004ca3400b88ca4              # double 2.598732
	.quad	0x400657a56de3326a              # double 2.7927960000000001
	.quad	0x40152430f49491f3              # double 5.2853430000000001
	.quad	0x3fdc12b5e529bae4              # double 0.43864199999999998
	.quad	0x40216eaee2003ab8              # double 8.7161779999999993
	.quad	0x3fe7c4eb56fb8f58              # double 0.742788
	.quad	0x401957620ee8d10f              # double 6.3353349999999997
	.quad	0x40127e7ee9142b30              # double 4.6235309999999998
	.quad	0x3fd426aa8eb46349              # double 0.31485999999999997
	.quad	0x4010a0bfa0945f9e              # double 4.156981
	.quad	0x40193d9b1b79d90a              # double 6.310162
	.quad	0x4021c4649906cca3              # double 8.8835800000000003
	.quad	0x400eafd651b0ccbc              # double 3.835858
	.quad	0x3fec89310129cbab              # double 0.89174699999999996
	.quad	0x40005334c5da6a44              # double 2.0406279999999999
	.quad	0x3fe61a2e7f6f4be8              # double 0.69069599999999998
	.quad	0x4011ed15ad106ee3              # double 4.481528
	.quad	0x401c5fffbce4217d              # double 7.0937489999999999
	.quad	0x3ff66a3cea6c1a05              # double 1.4009370000000001
	.quad	0x402097d912556d1a              # double 8.2965780000000002
	.quad	0x4016e7585be1a826              # double 5.7259229999999999
	.quad	0x4021d27e5215768a              # double 8.9111200000000004
	.quad	0x401e83d577963993              # double 7.6287440000000001
	.quad	0x4020e3a9b0681238              # double 8.4446539999999999
	.quad	0x400358e5c4eb56fc              # double 2.4184070000000002
	.quad	0x3ffce75ff609dcf9              # double 1.8064880000000001
	.quad	0x4007f531550ca1cf              # double 2.994723
	.quad	0x4021e68f8e7ddca5              # double 8.9503140000000005
	.quad	0x4021582e87d2c7b9              # double 8.6722300000000008
	.quad	0x4022ad66f0cfe154              # double 9.3386759999999995
	.quad	0x40103f3775b81301              # double 4.0617349999999997
	.quad	0x400ab00cd855970b              # double 3.3359619999999999
	.quad	0x3ff2da63f9a49c2c              # double 1.178318
	.quad	0x401bc7c84b5dcc64              # double 6.9451000000000001
	.quad	0x40239515ad106ee3              # double 9.7911809999999999
	.quad	0x401d66ec9e236c16              # double 7.3505120000000002
	.quad	0x3fb9ee45c358afc4              # double 0.10129199999999999
	.quad	0x401c1c209246bf01              # double 7.0274679999999998
	.quad	0x3fe8208398a65493              # double 0.753969
	.quad	0x40201bc408d8ec96              # double 8.0542300000000004
	.quad	0x3fe59e6cd29131ec              # double 0.675589
	.quad	0x40204580e496edee              # double 8.1357490000000006
	.quad	0x401483d29563a9f4              # double 5.1287330000000004
	.quad	0x3fe65831f03d145e              # double 0.69826600000000005
	.quad	0x3fd4e15ca6ca03c5              # double 0.32625500000000002
	.quad	0x4022e9d323fee2ca              # double 9.4566890000000008
	.quad	0x400c87f77af64064              # double 3.5663900000000002
	.quad	0x4004efb5d031055c              # double 2.6170460000000002
	.quad	0x4020c0ec95bff045              # double 8.3768049999999992
	.quad	0x40213b7b28954a80              # double 8.6161740000000009
	.quad	0x4006026b2f23033a              # double 2.7511809999999999
	.quad	0x4011265f0f5a1017              # double 4.2874720000000002
	.quad	0x4022bdd894812be5              # double 9.3707930000000008
	.quad	0x3ff7b2a172abef07              # double 1.4811110000000001
	.quad	0x3fe40c5a8155d5f5              # double 0.62650799999999995
	.quad	0x400310880d801b43              # double 2.3830719999999999
	.quad	0x4018a44fe36d2242              # double 6.1604609999999997
	.quad	0x400329dcf893faf4              # double 2.3954409999999999
	.quad	0x40200413db7f1737              # double 8.0079639999999994
	.quad	0x4023f26612839043              # double 9.9734350000000002
	.quad	0x401e69ad85dfa872              # double 7.6032010000000003
	.quad	0x400b8a64c2f837b5              # double 3.4425750000000002
	.quad	0x3ff569ad42c3c9ef              # double 1.3383
	.quad	0x40065b9f98b71b8b              # double 2.7947380000000002
	.quad	0x402186d2674080fa              # double 8.7633240000000008
	.quad	0x400f6dd0d8cb07d1              # double 3.9286210000000001
	.quad	0x401ed9a7c17a8933              # double 7.7125539999999999
	.quad	0x401ed6909aed56b0              # double 7.7095359999999999
	.quad	0x4008f752977c88e8              # double 3.1207630000000002
	.quad	0x4008732f87ad080b              # double 3.0562429999999998
	.quad	0x4004f9392189bd84              # double 2.6216910000000002
	.quad	0x4021b9b866e43aa8              # double 8.8627350000000007
	.quad	0x40120a5c5f7c675a              # double 4.5101180000000003
	.quad	0x40197f190d173fb8              # double 6.3741190000000003
	.quad	0x401fff2a172abef0              # double 7.9991839999999996
	.quad	0x4022a765ba6efc37              # double 9.3269479999999998
	.quad	0x4021907ebf22c01e              # double 8.7822169999999993
	.quad	0x40215ab7dc7abfba              # double 8.6771840000000005
	.quad	0x4023e8e9d51b4fe8              # double 9.9549090000000006
	.quad	0x3ff72cd9e83e425b              # double 1.44845
	.quad	0x4000b9ccfaeff5c7              # double 2.0907230000000001
	.quad	0x3fb9a543f1c75819              # double 0.100178
	.quad	0x402056f694467382              # double 8.1698500000000003
	.quad	0x4016cdfd2630ec31              # double 5.7011609999999999
	.quad	0x40130b9f127f5e85              # double 4.7613490000000001
	.quad	0x3fda5b291b823c86              # double 0.41181400000000001
	.quad	0x4016f4727dcbddba              # double 5.7387180000000004
	.quad	0x401969fe86833c60              # double 6.35351
	.quad	0x3fe8d0e347629521              # double 0.77549900000000005
	.quad	0x40207bc1eff9f87f              # double 8.241714
	.quad	0x4007cc7fbacb4289              # double 2.974853
	.quad	0x4021d145b6c3760c              # double 8.908735
	.quad	0x4022d71a9fbe76c9              # double 9.4201250000000005
	.quad	0x401c24e7ab756430              # double 7.0360399999999998
	.quad	0x400f5fd50225742e              # double 3.9217930000000001
	.quad	0x4016e64e8b7e4de4              # double 5.7249090000000002
	.quad	0x3fda73fb7a5f41af              # double 0.413329
	.quad	0x4015d21b3aeee957              # double 5.4551819999999998
	.quad	0x4022c566277c45cc              # double 9.3855450000000004
	.quad	0x40211a8e92d55a3a              # double 8.5518689999999999
	.quad	0x401d587a4a48f96e              # double 7.3364039999999999
	.quad	0x4010f0e38a7e73a3              # double 4.2352429999999996
	.quad	0x4023e8ba1f4b1ee2              # double 9.9545449999999995
	.quad	0x4018ae019b0ab2e1              # double 6.1699279999999996
	.quad	0x4016b12ad81adea9              # double 5.6730150000000004
	.quad	0x401b0015c209246c              # double 6.7500830000000001
	.quad	0x3fe89c304ccee5ac              # double 0.76906600000000002
	.quad	0x401a023d0bfa0946              # double 6.502186
	.quad	0x4022359ccfaeff5c              # double 9.1047119999999992
	.quad	0x400d449ecb31c21a              # double 3.658506
	.quad	0x401c997891e21533              # double 7.1498739999999996
	.quad	0x402198df37329c34              # double 8.7985779999999991
	.quad	0x4011ab9cf9a06a6e              # double 4.4175909999999998
	.quad	0x3fedfa69be09bb6b              # double 0.93681800000000004
	.quad	0x4019f8672756861f              # double 6.4925810000000004
	.quad	0x40101774aba38759              # double 4.0229059999999999
	.quad	0x3fabcfb3311a543f              # double 0.054318999999999999
	.quad	0x4021d28826aa8eb4              # double 8.9111949999999993
	.quad	0x3fb7ed527e521577              # double 0.093465000000000006
	.quad	0x4021d2888b545c79              # double 8.9111980000000006
	.quad	0x4013990d9d7774ac              # double 4.8994660000000003
	.quad	0x4003449906cca2db              # double 2.4084949999999998
	.quad	0x40218c86cebbba56              # double 8.7744660000000003
	.quad	0x40218e2003ab862b              # double 8.7775879999999997
	.quad	0x402073ca9691a75d              # double 8.2261550000000003
	.quad	0x401ee04d98394749              # double 7.7190459999999996
	.quad	0x4011e052934acaff              # double 4.4690649999999996
	.quad	0x4016b919ac79702e              # double 5.6807619999999996
	.quad	0x401d65f80991793a              # double 7.3495790000000003
	.quad	0x40226a33bd9cae21              # double 9.2074259999999999
	.quad	0x3fffd172ef0ae536              # double 1.9886349999999999
	.quad	0x40214e8533b10774              # double 8.6533599999999992
	.quad	0x401d4a6bd6e8af81              # double 7.3226769999999997
	.quad	0x401ad4ee392e1ef7              # double 6.7079399999999998
	.quad	0x401f0fd21ff2e48f              # double 7.7654500000000004
	.quad	0x4015c62aa19439de              # double 5.4435219999999997
	.quad	0x401890767d34df05              # double 6.1410770000000001
	.quad	0x400b5922962cfd8f              # double 3.418523
	.quad	0x3ffc12e0e30446b7              # double 1.7546090000000001
	.quad	0x40225c9c2c1b10fd              # double 9.1808789999999991
	.quad	0x40178f5dbb9cf9a0              # double 5.8900059999999996
	.quad	0x3ff51fa76534373f              # double 1.320228
	.quad	0x40201e5eedcc20d5              # double 8.0593179999999993
	.quad	0x40218208bfc2224f              # double 8.7539730000000002
	.quad	0x40140d5885d31338              # double 5.0130330000000001
	.quad	0x4019fd44dca8e2e3              # double 6.4973330000000002
	.quad	0x400323a5c1c6088d              # double 2.3924059999999998
	.quad	0x4023fda5b9628cbd              # double 9.9954049999999998
	.quad	0x401770c9107faa04              # double 5.8601419999999997
	.quad	0x400e96a2f48c2e77              # double 3.823553
	.quad	0x401c14302b40f66a              # double 7.0197149999999997
	.quad	0x40100e74f2f123c4              # double 4.0141179999999999
	.quad	0x3fd9675147f13059              # double 0.39693099999999998
	.quad	0x3ff66599ed7c6fbd              # double 1.399805
	.quad	0x4023fb6d655e28aa              # double 9.9910689999999995
	.quad	0x401809667b5f1bef              # double 6.0091799999999997
	.quad	0x40225fc957cd466f              # double 9.1870829999999994
	.quad	0x40226641f644955b              # double 9.1997219999999995
	.quad	0x401f72d83c6c97d9              # double 7.8621530000000001
	.quad	0x4021d7403dddb121              # double 8.9204120000000007
	.quad	0x402272d72ffd1dcd              # double 9.2242979999999992
	.quad	0x400cc42d8c2a454e              # double 3.59579
	.quad	0x4022dd371971c10d              # double 9.4320609999999991
	.quad	0x3fdaf88fc9363f57              # double 0.42142099999999999
	.quad	0x40189536501e2585              # double 6.145715
	.quad	0x401a51c219eb6391              # double 6.5798420000000002
	.quad	0x400810624dd2f1aa              # double 3.008
	.quad	0x40226528ae74f2f1              # double 9.1975759999999998
	.quad	0x3fd8a79357603926              # double 0.38522800000000001
	.quad	0x40220dc39bcba301              # double 9.0268829999999998
	.quad	0x401c2f12c27a6373              # double 7.0459699999999996
	.quad	0x3ff8984d338f7985              # double 1.537183
	.quad	0x4009d5432873bc90              # double 3.2291319999999999
	.quad	0x400437ca2120e1f8              # double 2.5272410000000001
	.quad	0x400396ffc115df65              # double 2.4487299999999999
	.quad	0x401d7c7b890d5a5c              # double 7.3715650000000004
	.quad	0x401b28f0c77dd873              # double 6.789981
	.quad	0x400c77ec3547e069              # double 3.5585559999999998
	.quad	0x400dc68ec52a411c              # double 3.7219519999999999
	.quad	0x3fefb8800eae18ad              # double 0.99127200000000004
	.quad	0x402223e5b8561d43              # double 9.070112
	.quad	0x4017e536501e2585              # double 5.97384
	.quad	0x40137dc50ce4ead1              # double 4.8728220000000002
	.quad	0x401378e71476af8a              # double 4.8680690000000002
	.quad	0x4003e087442c7fbb              # double 2.4846330000000001
	.quad	0x400554e3bcd35a86              # double 2.6664500000000002
	.quad	0x3ffc445dc8323359              # double 1.766691
	.quad	0x401e4cc07aaef2c7              # double 7.5749529999999998
	.quad	0x4004b5bc44bf4cb2              # double 2.5887380000000002
	.quad	0x3ff84c857f3061c8              # double 1.5186820000000001
	.quad	0x40022feac42e989a              # double 2.2733970000000001
	.quad	0x40159f2170931013              # double 5.4054010000000003
	.quad	0x3fea55432873bc90              # double 0.82290799999999997
	.quad	0x401d0c2c1b10fd7e              # double 7.2618869999999998
	.quad	0x401f9febd09e12a5              # double 7.9061729999999998
	.quad	0x3fd1a719b4dcebff              # double 0.27582400000000001
	.quad	0x402095015c209247              # double 8.2910260000000005
	.quad	0x4000330ad46f587d              # double 2.0249229999999998
	.quad	0x4020b189bd8383ae              # double 8.3467540000000007
	.quad	0x3ff2d35daad60200              # double 1.1766030000000001
	.quad	0x4017d3797460242d              # double 5.956518
	.quad	0x4020a8780fdc1616              # double 8.3290410000000001
	.quad	0x4020ad2a1f8e3ac1              # double 8.3382120000000004
	.quad	0x4013d22e1ac57e24              # double 4.955254
	.quad	0x4021edccc89b0ee5              # double 8.9644530000000007
	.quad	0x4015892c8c5004fb              # double 5.3839589999999999
	.quad	0x400f3f25e56cd6c3              # double 3.905834
	.quad	0x4018509070fbeb9e              # double 6.0786759999999997
	.quad	0x3ff22dcc20d5629e              # double 1.1361810000000001
	.quad	0x40147ba4d6e47dc3              # double 5.1207459999999996
	.quad	0x401d514727dcbddc              # double 7.3293730000000004
	.quad	0x4023e558a7610279              # double 9.9479419999999993
	.quad	0x401a669552e2fbe3              # double 6.6001789999999998
	.quad	0x4022924766c6de76              # double 9.2857009999999995
	.quad	0x400ceaa10e022142              # double 3.6145649999999998
	.quad	0x401a28db8bac710d              # double 6.5399000000000003
	.quad	0x401334f227d028a2              # double 4.8017050000000001
	.quad	0x4007641e57d9dba9              # double 2.923886
	.quad	0x3fffaba16e7a311f              # double 1.9794020000000001
	.quad	0x40221377c02afddb              # double 9.0380230000000008
	.quad	0x402085aaf78feef6              # double 8.2610700000000001
	.quad	0x3fc132a497fa5d29              # double 0.13435800000000001
	.quad	0x3ffc191cd1c7de51              # double 1.7561310000000001
	.quad	0x400bec322291fb40              # double 3.4903300000000002
	.quad	0x4011227dcbddb984              # double 4.2836829999999999
	.quad	0x3ff1bb549f94855e              # double 1.1082350000000001
	.quad	0x400edf961804d984              # double 3.8591730000000002
	.quad	0x402256fe4ffc9796              # double 9.1699090000000005
	.quad	0x401bf5158b827fa2              # double 6.9893400000000003
	.quad	0x4020046994185059              # double 8.0086180000000002
	.quad	0x40234017dae81883              # double 9.6251820000000005
	.quad	0x401a141b328b6d87              # double 6.5196350000000001
	.quad	0x401bcbf8fcd67fd4              # double 6.949192
	.quad	0x3fe9a75cd0bb6ed6              # double 0.80167999999999995
	.quad	0x4014a1b9b66f9336              # double 5.1579350000000002
	.quad	0x40235ec43f5f9160              # double 9.6850909999999999
	.quad	0x40222f6d97b30f8c              # double 9.0926329999999992
	.quad	0x3ff50bd556084a51              # double 1.3153889999999999
	.quad	0x401fed74927913e8              # double 7.9818899999999999
	.quad	0x402103039ef0f16f              # double 8.5058869999999995
	.quad	0x4011fc07aaef2c73              # double 4.4961229999999999
	.quad	0x40161ee2435696e6              # double 5.5301600000000004
	.quad	0x40125dd052934acb              # double 4.591615
	.quad	0x3fe1265f0f5a1017              # double 0.53593400000000002
	.quad	0x4016a5eedcc20d56              # double 5.6620439999999999
	.quad	0x4018bd3fe1975f2d              # double 6.1848140000000003
	.quad	0x4021c4a3e7d13511              # double 8.8840629999999994
	.quad	0x40199dca8e2e2b8c              # double 6.4040929999999996
	.quad	0x4021da9435ac8a37              # double 8.9269119999999997
	.quad	0x4001b6f976790321              # double 2.214343
	.quad	0x3ff9496ededaec4a              # double 1.5804279999999999
	.quad	0x3fd066f9335d249e              # double 0.25628499999999999
	.quad	0x40235ddf00abf76a              # double 9.6833419999999997
	.quad	0x40152c99ae924f22              # double 5.2935549999999996
	.quad	0x4014781fd9ba1b19              # double 5.1173089999999997
	.quad	0x400982c0a4a05dd9              # double 3.188844
	.quad	0x400ba91e215336df              # double 3.4575770000000001
	.quad	0x4013c8383ad9f0a2              # double 4.9455270000000002
	.quad	0x4022fcae642bf983              # double 9.4935179999999999
	.quad	0x401114eb9a176ddb              # double 4.2704300000000002
	.quad	0x400ee84167a95c85              # double 3.8634059999999999
	.quad	0x40176821f2990f30              # double 5.8516919999999999
	.quad	0x40052355043e5322              # double 2.642252
	.quad	0x4015b30984e3ffef              # double 5.4248409999999998
	.quad	0x4022a38c5436b8fa              # double 9.3194300000000005
	.quad	0x40047461309c7ffe              # double 2.556826
	.quad	0x3ff36671ef30a4e3              # double 1.2125109999999999
	.quad	0x4015e18e757928e1              # double 5.4702700000000002
	.quad	0x401c38915bdd7668              # double 7.0552419999999998
	.quad	0x4015c09635610add              # double 5.4380730000000002
	.quad	0x4019231ec0b56755              # double 6.2842969999999996
	.quad	0x4015ff4666ec9e23              # double 5.4992919999999996
	.quad	0x4020760ce0b912dc              # double 8.2305670000000006
	.quad	0x4015532e7b3d8e00              # double 5.331232
	.quad	0x4015caf81626b2f2              # double 5.4482119999999998
	.quad	0x4010b373affb04ee              # double 4.1752459999999996
	.quad	0x402062bc2fc69729              # double 8.1928420000000006
	.quad	0x4013ba65cf67b1c0              # double 4.932029
	.quad	0x4012904fb1183b60              # double 4.6409289999999999
	.quad	0x4022ce2d1f1cfbb9              # double 9.4026879999999994
	.quad	0x401eb028e4fb97bb              # double 7.6720309999999996
	.quad	0x3ff8dd8622c45027              # double 1.5540830000000001
	.quad	0x4022b17acc4ef88c              # double 9.3466400000000007
	.quad	0x3fe0abc2fc69728a              # double 0.52096699999999996
	.quad	0x401dbd3d859c8c93              # double 7.4348049999999999
	.quad	0x401d4b723ee1bd1f              # double 7.3236780000000001
	.quad	0x4021067839cd8128              # double 8.5126360000000005
	.quad	0x4023ebce4217d285              # double 9.9605580000000006
	.quad	0x40214f6f8f041462              # double 8.6551480000000005
	.quad	0x4011274e65bea0ba              # double 4.2883849999999999
	.quad	0x400df592d98bf7f0              # double 3.7449089999999998
	.quad	0x400b51782d38476f              # double 3.4147799999999999
	.quad	0x40106571d1d4738a              # double 4.0990669999999998
	.quad	0x400c5625204af923              # double 3.5420630000000002
	.quad	0x4011c3543aeab799              # double 4.4407509999999997
	.quad	0x4008b8e8ea39c51e              # double 3.0902880000000001
	.quad	0x401988943e100608              # double 6.3833780000000004
	.quad	0x40063607c4199fe4              # double 2.7763819999999999
	.quad	0x4003407d4e09784f              # double 2.4064890000000001
	.quad	0x3fdf976bc1eff9f8              # double 0.49361699999999997
	.quad	0x4010b5d7cb2d905c              # double 4.177581
	.quad	0x400f65add9c27e95              # double 3.9246479999999999
	.quad	0x3fb73b5393250b52              # double 0.090748999999999996
	.quad	0x400708dc981beb18              # double 2.879327
	.quad	0x401a5709741d084f              # double 6.5849970000000004
	.quad	0x400ddd94d0dcfcc6              # double 3.7331940000000001
	.quad	0x402167496aad1d04              # double 8.7017319999999998
	.quad	0x4020a8f49491f2dc              # double 8.3299909999999997
	.quad	0x3fdc7b7414a4d2b3              # double 0.44503500000000001
	.quad	0x4008803dddb1209f              # double 3.0626180000000001
	.quad	0x3ffa42d59d55e6bc              # double 1.6413169999999999
	.quad	0x401f354a7f8012e0              # double 7.8020420000000001
	.quad	0x402307acc4ef88b9              # double 9.5149899999999991
	.quad	0x401eea41e57d9dbb              # double 7.7287670000000003
	.quad	0x3ffef7a0b5ed8d37              # double 1.9354560000000001
	.quad	0x4012d8dfbd6a593a              # double 4.7117909999999998
	.quad	0x401b33387160956c              # double 6.80002
	.quad	0x40216f67d34df04e              # double 8.7175890000000003
	.quad	0x401c281733226c3c              # double 7.0391510000000004
	.quad	0x401c7df7e80389f8              # double 7.1230159999999998
	.quad	0x4020f125785f8d2e              # double 8.4709889999999994
	.quad	0x400f82c881e4712e              # double 3.9388589999999999
	.quad	0x40150e8a71de69ad              # double 5.2641999999999998
	.quad	0x4010b30d7386099a              # double 4.1748560000000001
	.quad	0x4004ad7d7c2ca149              # double 2.5847120000000001
	.quad	0x4010197353b4b2fb              # double 4.0248540000000004
	.quad	0x3ffd65cd4ed2cbea              # double 1.8373539999999999
	.quad	0x400d72a62aa1943a              # double 3.6809810000000001
	.quad	0x400ba4a7b4e54f7b              # double 3.4553980000000002
	.quad	0x3ff8b8a8f3a9b068              # double 1.545083
	.quad	0x4018c86bdf4c2b52              # double 6.1957240000000002
	.quad	0x40238ed19dece571              # double 9.7789429999999999
	.quad	0x4014dda72a7bd48d              # double 5.2164580000000003
	.quad	0x401e61aa3f034b0e              # double 7.5953759999999999
	.quad	0x400a51ca7d6733ec              # double 3.2899370000000001
	.quad	0x4020b2cb85a4f00f              # double 8.3492090000000001
	.quad	0x4008016616b54e2b              # double 3.000683
	.quad	0x401795a35d67ba23              # double 5.8961309999999996
	.quad	0x3feeef99806f2629              # double 0.96674800000000005
	.quad	0x3fd1a1e81cb46bad              # double 0.275507
	.quad	0x40178a305532617c              # double 5.8849499999999999
	.quad	0x4015e7ac3eb7cbb4              # double 5.4762430000000002
	.quad	0x4020e28c586876e2              # double 8.4424770000000002
	.quad	0x4017354b8bef8ceb              # double 5.8020459999999998
	.quad	0x401c56fc9bc77143              # double 7.0849479999999998
	.quad	0x3ff0db90ea9e6eeb              # double 1.0536049999999999
	.quad	0x4022d68dda48b652              # double 9.4190509999999996
	.quad	0x4022331ab0856e69              # double 9.0998129999999993
	.quad	0x4020e7edc7ef177a              # double 8.4529859999999992
	.quad	0x40161b8d3f1843c4              # double 5.5269060000000003
	.quad	0x400fecedd4845133              # double 3.990688
	.quad	0x3fe5627179bfdf7f              # double 0.66826700000000006
	.quad	0x3fe8619b90ea9e6f              # double 0.76191500000000001
	.quad	0x40203d885d31337f              # double 8.1201810000000005
	.quad	0x4022a001d5c31594              # double 9.3125140000000001
	.quad	0x4000aa19439de482              # double 2.083056
	.quad	0x400006db50f40e5a              # double 2.0033479999999999
	.quad	0x4013aaa3ad18d25f              # double 4.9166400000000001
	.quad	0x3ffaae32e3821af8              # double 1.667529
	.quad	0x4002fd66adb402d1              # double 2.3737309999999998
	.quad	0x40104d7e889c1b54              # double 4.0756779999999999
	.quad	0x401170dcb9a9da59              # double 4.3602169999999996
	.quad	0x4021841f212d7732              # double 8.7580500000000008
	.quad	0x4008cc9ea9a3d2d8              # double 3.0999119999999998
	.quad	0x401a0808c8259e1f              # double 6.5078459999999998
	.quad	0x3ff1fb762d83c6c9              # double 1.1238919999999999
	.quad	0x3ff236a7264a16a5              # double 1.1383430000000001
	.quad	0x4001e712e40852b5              # double 2.2378290000000001
	.quad	0x3fee7268d32830a1              # double 0.95146600000000003
	.quad	0x40164a6a875d56f3              # double 5.5726719999999998
	.quad	0x4020bf2a9d627bf6              # double 8.3733719999999998
	.quad	0x40190c371da37ef6              # double 6.2619290000000003
	.quad	0x401cf81e03f70585              # double 7.2423019999999996
	.quad	0x400e4c12ad81adeb              # double 3.7871450000000002
	.quad	0x4021f82ff8ec0f88              # double 8.9847409999999996
	.quad	0x3ff3506573215fcc              # double 1.207128
	.quad	0x3fcf811f4f50a02c              # double 0.24612800000000001
	.quad	0x40236f7f27fe4bcb              # double 9.7177670000000002
	.quad	0x3ff90a6dacabc515              # double 1.5650459999999999
	.quad	0x400ca4a0e410b631              # double 3.5803850000000002
	.quad	0x40142485e3da2f8c              # double 5.0356670000000001
	.quad	0x40216cbec679cc75              # double 8.7123930000000005
	.quad	0x401008e581cf7879              # double 4.0086880000000003
	.quad	0x3ffedf77292c4934              # double 1.929557
	.quad	0x401df0795f676ea4              # double 7.4848379999999999
	.quad	0x401248055fbb517a              # double 4.5703329999999998
	.quad	0x40230afec56d5cfb              # double 9.5214750000000005
	.quad	0x40184e32a0663c75              # double 6.076365
	.quad	0x40174e121ee67514              # double 5.8262409999999996
	.quad	0x4022739c304ccee6              # double 9.2258010000000006
	.quad	0x401db9057d1782d4              # double 7.4306850000000004
	.quad	0x3ff2b060bb2bba99              # double 1.168061
	.quad	0x4022f283b1d0c804              # double 9.4736609999999998
	.quad	0x400ab2da98676a72              # double 3.3373309999999998
	.quad	0x4018b5c182ecaeea              # double 6.1774959999999997
	.quad	0x4011ba554b8bef8d              # double 4.4319660000000001
	.quad	0x3ff5931fcd24e161              # double 1.348419
	.quad	0x4000cd4801f75105              # double 2.1002350000000001
	.quad	0x4008bbd4067cf1c3              # double 3.0917129999999999
	.quad	0x4013f15f02c4d65e              # double 4.9857139999999998
	.quad	0x3ff64a1272c94b38              # double 1.393084
	.quad	0x3fdfc8323358f2e0              # double 0.49659399999999998
	.quad	0x400ea1a8ac5c13fd              # double 3.828935
	.quad	0x40229d2cbea4ebdd              # double 9.3069819999999996
	.quad	0x3f49da9c99285a92              # double 7.8899999999999999E-4
	.quad	0x4012bcc2d6a9c561              # double 4.6843370000000002
	.quad	0x401da2becedd4845              # double 7.4089309999999999
	.quad	0x402004054ef459da              # double 8.0078530000000008
	.quad	0x4021b381d7dbf488              # double 8.8506
	.quad	0x4021a2c3a860dcba              # double 8.8178990000000006
	.quad	0x3fd3dac68a936c59              # double 0.310228
	.quad	0x401a1a797891e215              # double 6.5258539999999998
	.quad	0x4018073a797891e2              # double 6.0070589999999999
	.quad	0x4020bd3868fd199c              # double 8.3695710000000005
	.quad	0x4001ffc7e6b3fea0              # double 2.2498930000000001
	.quad	0x3ff5fbfc6540cc79              # double 1.37402
	.quad	0x40044da22f6a50d7              # double 2.5379070000000001
	.quad	0x401847ad4b2745bf              # double 6.0699969999999999
	.quad	0x4002e550870110a1              # double 2.3619699999999999
	.quad	0x40145ee392e1ef74              # double 5.0926650000000002
	.quad	0x40234a007dd44135              # double 9.6445349999999994
	.quad	0x4019223465625a68              # double 6.2834029999999998
	.quad	0x3fe6033a4723ab00              # double 0.68789400000000001
	.quad	0x4023ccb4aec8d5c7              # double 9.8998159999999995
	.quad	0x400ced844d013a93              # double 3.6159750000000002
	.quad	0x401637d06bbdbe3c              # double 5.5545059999999999
	.quad	0x401c5fdc9c4da900              # double 7.0936149999999998
	.quad	0x3ff75d462c343b71              # double 1.460272
	.quad	0x401613422467be55              # double 5.5188069999999998
	.quad	0x4000ec764adff823              # double 2.1154600000000001
	.quad	0x4021d0474d9c6b05              # double 8.9067939999999997
	.quad	0x401fd4a9cdc44391              # double 7.9576789999999997
	.quad	0x4018a5bf26f1dc51              # double 6.1618620000000002
	.quad	0x3fea43fa2ad3e921              # double 0.82079800000000003
	.quad	0x400ac2a8869c66d3              # double 3.3450479999999998
	.quad	0x401580b178b37004              # double 5.3756769999999996
	.quad	0x401e6e432441fea8              # double 7.6076779999999999
	.quad	0x40021e529bae46d0              # double 2.2648060000000001
	.quad	0x4010293a2df9378f              # double 4.0402610000000001
	.quad	0x400df6fc158fb43e              # double 3.7455980000000002
	.quad	0x4021d07e7c06e19c              # double 8.9072150000000007
	.quad	0x401443f8db489093              # double 5.0663790000000004
	.quad	0x3ff66abffcdab192              # double 1.401062
	.quad	0x400d8379b77c02b0              # double 3.6891970000000001
	.quad	0x4020463779e9d0ea              # double 8.1371420000000008
	.quad	0x4003cdaa0cae642c              # double 2.475422
	.quad	0x40186813cab81f97              # double 6.1016380000000003
	.quad	0x40215ad3415b1423              # double 8.6773930000000004
	.quad	0x402018060780fdc1              # double 8.0469209999999993
	.quad	0x40220ab5a20ddc62              # double 9.0209170000000007
	.quad	0x401dbc1871e6cd29              # double 7.4336869999999999
	.quad	0x3ff764e054690de1              # double 1.4621280000000001
	.quad	0x4021c5d2d01c0ca6              # double 8.886374
	.quad	0x402244a3a4b5568f              # double 9.1340610000000009
	.quad	0x401b804f6dfc5cdd              # double 6.8753029999999997
	.quad	0x401aab5e529bae47              # double 6.6673520000000002
	.quad	0x40219af8df7a4e7b              # double 8.8026800000000005
	.quad	0x3fe4c5fe111276fb              # double 0.649169
	.quad	0x40119a7935760392              # double 4.4008529999999997
	.quad	0x3ffcb2031ceaf252              # double 1.7934600000000001
	.quad	0x401733497b7414a5              # double 5.8000850000000002
	.quad	0x4019847c73eee526              # double 6.3793810000000004
	.quad	0x402204d940789614              # double 9.0094700000000003
	.quad	0x3ff3c4449dbec248              # double 1.235417
	.quad	0x401df88a47ecfe9b              # double 7.4927149999999995
	.quad	0x401b771cda2b5a21              # double 6.8663210000000001
	.quad	0x401ba28c36da87a0              # double 6.9087379999999996
	.quad	0x4000ae3f78bbd380              # double 2.0850819999999999
	.quad	0x4002014d72799a20              # double 2.2506360000000001
	.quad	0x400180221426fe72              # double 2.1875650000000002
	.quad	0x3fed1f36262cba73              # double 0.91005999999999998
	.quad	0x401dc614163779ea              # double 7.4434360000000002
	.quad	0x40112759253543af              # double 4.2884260000000003
	.quad	0x3fe88ede54b48d3b              # double 0.76744000000000001
	.quad	0x40200ba2df9378ee              # double 8.0227269999999997
	.quad	0x401b91d323fee2ca              # double 6.8924070000000004
	.quad	0x40085c9bc7714339              # double 3.0452189999999999
	.quad	0x3ff82d22424a276b              # double 1.5110189999999999
	.quad	0x401b2177ea1c68ec              # double 6.7826839999999997
	.quad	0x3ff474ff865d7cb3              # double 1.278564
	.quad	0x40186d15ad106ee3              # double 6.106528
	.quad	0x40011c0b13597918              # double 2.138693
	.quad	0x401fdfe3b03e20cd              # double 7.968642
	.quad	0x4011f8c5004fb118              # double 4.4929389999999998
	.quad	0x400107ff583a53b9              # double 2.128905
	.quad	0x4019bf2d3c792d13              # double 6.4366960000000004
	.quad	0x40220b211cb039ef              # double 9.0217369999999999
	.quad	0x40116c6327ed84d3              # double 4.3558469999999998
	.quad	0x3ff23e06961c3697              # double 1.1401429999999999
	.quad	0x4020e726f1dc50ce              # double 8.4514689999999995
	.quad	0x40057c25d074213a              # double 2.685619
	.quad	0x402013841248d7e0              # double 8.0381169999999997
	.quad	0x3fd968123810e886              # double 0.39697700000000002
	.quad	0x40221c0096feb4a6              # double 9.0546919999999993
	.quad	0x4015bdc69f8c21e2              # double 5.4353280000000002
	.quad	0x402350c73abc9470              # double 9.6577699999999993
	.quad	0x4012112d3415b142              # double 4.5167739999999998
	.quad	0x3fecae40852b4d8c              # double 0.89627100000000003
	.quad	0x3fc9352a84380885              # double 0.196935
	.quad	0x401051337eb28d86              # double 4.0792979999999996
	.quad	0x401160cb6c7a7c9e              # double 4.3445260000000001
	.quad	0x4011512ba16e7a31              # double 4.3292679999999999
	.quad	0x401f74ece9a2c669              # double 7.8641849999999999
	.quad	0x4023b13f6c2699c8              # double 9.8461870000000004
	.quad	0x400982730c671690              # double 3.1886960000000002
	.quad	0x4005ce0eb67c2870              # double 2.7256140000000002
	.quad	0x3ffeedb940fecdd1              # double 1.933038
	.quad	0x4006a0f88333fc87              # double 2.8285990000000001
	.quad	0x40212692b3cc4ac7              # double 8.5753380000000003
	.quad	0x4010ec0ebedfa440              # double 4.2305250000000001
	.quad	0x4021218201cd5f9a              # double 8.5654450000000004
	.quad	0x40202031ad2135db              # double 8.0628790000000006
	.quad	0x40141c9107faa045              # double 5.0278970000000003
	.quad	0x401da892ab68cef6              # double 7.4146219999999996
	.quad	0x4020c99439de481f              # double 8.3937089999999994
	.quad	0x402199bf162ae4b0              # double 8.8002859999999998
	.quad	0x401c592146a1a501              # double 7.0870410000000001
	.quad	0x40203dfa658c4bd3              # double 8.1210509999999996
	.quad	0x40179666ec9e236c              # double 5.8968769999999999
	.quad	0x4021ba1e1d2178f7              # double 8.8635110000000008
	.quad	0x401d798e97071822              # double 7.3687079999999998
	.quad	0x401df790752da986              # double 7.4917619999999996
	.quad	0x401e2be9c886162f              # double 7.5428839999999999
	.quad	0x400a75dedf1e0829              # double 3.3075540000000001
	.quad	0x401d58c586876e1e              # double 7.3366910000000001
	.quad	0x401dbe5b8561d430              # double 7.4358959999999996
	.quad	0x4022c3fcc9ea9a3d              # double 9.3827879999999996
	.quad	0x4017be2d6238da3c              # double 5.9357199999999999
	.quad	0x3ffe3dd11be6e654              # double 1.8900920000000001
	.quad	0x40228c358afc47e5              # double 9.2738460000000007
	.quad	0x402394e4c942d491              # double 9.7908080000000001
	.quad	0x40177fda4052d667              # double 5.8748560000000003
	.quad	0x400feaada33bd9cb              # double 3.9895890000000001
	.quad	0x4021eec8711d798e              # double 8.9663730000000008
	.quad	0x3ff010a350d2806b              # double 1.004062
	.quad	0x401e603e20ccff22              # double 7.5939870000000003
	.quad	0x40227a0232096788              # double 9.2382980000000003
	.quad	0x4014dacf7446f9ba              # double 5.2136820000000004
	.quad	0x401ce6d373affb05              # double 7.2254160000000001
	.quad	0x40229570c564f97f              # double 9.2918760000000002
	.quad	0x3ffc408a697aeddd              # double 1.765757
	.quad	0x4013543e10060781              # double 4.832268
	.quad	0x401cfa41e57d9dbb              # double 7.2443920000000004
	.quad	0x401f62c3009b3073              # double 7.8464470000000003
	.quad	0x40215f8f8a4c1ebd              # double 8.6866420000000009
	.quad	0x4010279fec99f1ae              # double 4.0386959999999998
	.quad	0x400dab0b7c3504c5              # double 3.7085180000000002
	.quad	0x40156c3ce2089e34              # double 5.3557009999999998
	.quad	0x401d01f31f46ed24              # double 7.2519039999999997
	.quad	0x40065458cd20afa3              # double 2.791185
	.quad	0x4022bd29563a9f38              # double 9.3694559999999995
	.quad	0x4021a09741d084e8              # double 8.8136539999999997
	.quad	0x401d59667b5f1bef              # double 7.3373049999999997
	.quad	0x40197601ffb480a6              # double 6.3652420000000003
	.quad	0x3fc0523704790b85              # double 0.12750900000000001
	.quad	0x4015ecd530489d28              # double 5.4812820000000002
	.quad	0x401e78bcdfefbf40              # double 7.6179079999999999
	.quad	0x3fd7a9ef5232d2bb              # double 0.36974699999999999
	.quad	0x3fde59d55e6bc622              # double 0.47423300000000002
	.quad	0x40213d5fdcdf6988              # double 8.6198720000000009
	.quad	0x3ff4ab7fe08aefb3              # double 1.2918700000000001
	.quad	0x3fe81f7f8ca8198f              # double 0.75384499999999999
	.quad	0x4018693c46d82ba6              # double 6.1027690000000003
	.quad	0x40215f70de8f6cf0              # double 8.6864080000000001
	.quad	0x401104b1ee243569              # double 4.2545849999999996
	.quad	0x401cc9c94f69ca9f              # double 7.197057
	.quad	0x401595caf2d7f951              # double 5.3962820000000002
	.quad	0x400e1714b9cb6849              # double 3.7612700000000001
	.quad	0x40056f41f212d773              # double 2.679325
	.quad	0x402096496ededaec              # double 8.2935289999999994
	.quad	0x3feffa2ad3e920c0              # double 0.99928799999999995
	.quad	0x401c965907d91255              # double 7.1468239999999996
	.quad	0x4011717c5ef62f9d              # double 4.3608260000000003
	.quad	0x401361ffb480a5ad              # double 4.8457020000000002
	.quad	0x3fe4ba3a8e71476b              # double 0.647733
	.quad	0x40191a582dbe7f2c              # double 6.2757269999999998
	.quad	0x401a9f0a1be2b496              # double 6.6553120000000003
	.quad	0x401a726351deefe5              # double 6.611707
	.quad	0x4016c1b25f633ce6              # double 5.6891569999999998
	.quad	0x4016af47f993d534              # double 5.6711729999999996
	.quad	0x3ffe7f3387160957              # double 1.9060550000000001
	.quad	0x3feaa7c7c5260f5e              # double 0.83298099999999997
	.quad	0x4011e7b6bb129025              # double 4.4762829999999996
	.quad	0x40108a261bf37b8d              # double 4.1349109999999998
	.quad	0x4008067f90d9d777              # double 3.0031729999999999
	.quad	0x400789bf162ae4b0              # double 2.942259
	.quad	0x4014066a55087011              # double 5.006265
	.quad	0x4017c5771001d5c3              # double 5.9428369999999999
	.quad	0x401001e4b44a1f08              # double 4.001849
	.quad	0x401e18c5436b8f9b              # double 7.5241899999999999
	.quad	0x3fe021c68ec52a41              # double 0.50412299999999999
	.quad	0x4006536d655e28aa              # double 2.7907359999999999
	.quad	0x40057b57c4e2f380              # double 2.6852260000000001
	.quad	0x401a27082491afc0              # double 6.5381169999999997
	.quad	0x4023b362a5e785b6              # double 9.8503620000000005
	.quad	0x402007ac81d3aa37              # double 8.0149880000000007
	.quad	0x4010996f21f6cacd              # double 4.1498379999999999
	.quad	0x4016fc9de0503750              # double 5.746696
	.quad	0x3ff417c914b167ec              # double 1.2558069999999999
	.quad	0x3fc70dc768dfbd6a              # double 0.18010799999999999
	.quad	0x400cfddb9841aac5              # double 3.6239539999999999
	.quad	0x40230a9a5ebb773a              # double 9.5207090000000001
	.quad	0x4021257c4e2f37fc              # double 8.5732140000000001
	.quad	0x400c12977c88e79b              # double 3.5090780000000001
	.quad	0x4013ababead4f590              # double 4.9176479999999998
	.quad	0x4003f07bfe7e1fc1              # double 2.4924240000000002
	.quad	0x4018810060780fdc              # double 6.1259779999999999
	.quad	0x4007cb9baa1511e0              # double 2.974418
	.quad	0x401f8bc33f85510d              # double 7.8864869999999998
	.quad	0x3ffb601040bfe3b0              # double 1.7109529999999999
	.quad	0x4007de49b1fab96f              # double 2.9835389999999999
	.quad	0x4021271cb89d6adf              # double 8.5763909999999992
	.quad	0x40234e67b5f1bef5              # double 9.6531350000000006
	.quad	0x402132a9f7b5aea3              # double 8.5989529999999998
	.quad	0x3fcefc69728a6117              # double 0.24207799999999999
	.quad	0x3ff37ba775fb2ee0              # double 1.217689
	.quad	0x3ffb1bdb5d894813              # double 1.6943010000000001
	.quad	0x40116c8cd63cb817              # double 4.3560059999999998
	.quad	0x4023c2d3415b1423              # double 9.8805180000000003
	.quad	0x402236f240fa9c13              # double 9.1073170000000001
	.quad	0x401c153c148344c3              # double 7.0207369999999996
	.quad	0x3ffc2de43ed959a3              # double 1.761204
	.quad	0x3ff07be121ee6751              # double 1.0302439999999999
	.quad	0x401b25989df1172f              # double 6.7867150000000001
	.quad	0x401ac5e80bed740c              # double 6.6932679999999998
	.quad	0x3fab85c67dfe32a0              # double 0.053754999999999997
	.quad	0x40064d26fa3fcc9f              # double 2.7876720000000001
	.quad	0x40133ede97d06bbe              # double 4.8113960000000002
	.quad	0x40204a9d40ee06d9              # double 8.1457309999999996
	.quad	0x400ecbd017dae819              # double 3.8495180000000002
	.quad	0x400b096030c23fab              # double 3.379578
	.quad	0x40160f090f733a8a              # double 5.5146829999999998
	.quad	0x3fe8784a9478c869              # double 0.76468400000000003
	.quad	0x4003a9adc8fb86f4              # double 2.4578509999999998
	.quad	0x3fe9d056c508b32d              # double 0.80668200000000001
	.quad	0x3fef846c764adff8              # double 0.98491499999999998
	.quad	0x400a2cc9a77e5eab              # double 3.2718690000000001
	.quad	0x400af7c02afdda8c              # double 3.3709720000000001
	.quad	0x4023f85c03361566              # double 9.9850770000000004
	.quad	0x400eb2edfe75bc45              # double 3.8373680000000001
	.quad	0x401dd7952d234eba              # double 7.4605300000000003
	.quad	0x4005d267c6b8b695              # double 2.7277369999999999
	.quad	0x401b7b37867f0aa2              # double 6.8703289999999999
	.quad	0x3ff54b945308bb90              # double 1.3309519999999999
	.quad	0x401051bb4916ca47              # double 4.0798160000000001
	.quad	0x40219532e7b3d8e0              # double 8.791404
	.quad	0x4017991c4b90214b              # double 5.8995220000000002
	.quad	0x40218f7186551937              # double 8.7801629999999999
	.quad	0x402335f17bd8be73              # double 9.6053580000000007
	.quad	0x40060639d5e4a383              # double 2.7530399999999999
	.quad	0x400b170a3d70a3d7              # double 3.38625
	.quad	0x40052f262888b546              # double 2.6480220000000001
	.quad	0x40203008e9b38d61              # double 8.0938180000000006
	.quad	0x4021a326e115592e              # double 8.8186560000000007
	.quad	0x401a4b549f94855e              # double 6.5735650000000003
	.quad	0x3fd1d20afa2f05a7              # double 0.278445
	.quad	0x4005b974e65bea0c              # double 2.7155550000000002
	.quad	0x4022e17bd8be7297              # double 9.440398
	.quad	0x401ff6c7eae5bc88              # double 7.9909970000000001
	.quad	0x4010a66f5019f3c7              # double 4.162534
	.quad	0x401e770153bd1676              # double 7.6162159999999997
	.quad	0x400ff20b8066c2ad              # double 3.9931860000000001
	.quad	0x401668bbd3804535              # double 5.6022790000000002
	.quad	0x400a188b11409a24              # double 3.261984
	.quad	0x4022084fb1183b60              # double 9.0162329999999997
	.quad	0x400fe35158b827fa              # double 3.985995
	.quad	0x40226cd5f99c38b0              # double 9.2125699999999995
	.quad	0x3ff70a1ad6451b93              # double 1.439967
	.quad	0x3ff5c8abd5dc4007              # double 1.3614919999999999
	.quad	0x3fdbb17ce52deca2              # double 0.43270799999999998
	.quad	0x40050c23fab10ba6              # double 2.6309279999999999
	.quad	0x40118fcb0c026cc2              # double 4.3904230000000002
	.quad	0x3feab62c77574f72              # double 0.83473799999999998
	.quad	0x40090d9a52263d81              # double 3.1316419999999998
	.quad	0x40220895d0b73d19              # double 9.0167680000000008
	.quad	0x3fff6ac42e9899bf              # double 1.9635659999999999
	.quad	0x3fd0dbb59ddc1e79              # double 0.26340999999999998
	.quad	0x401b24cf4a558ea8              # double 6.7859470000000002
	.quad	0x4011b898f605ab3b              # double 4.4302710000000003
	.quad	0x4021590a7829068a              # double 8.6739080000000008
	.quad	0x40167b8f14db5958              # double 5.6206630000000004
	.quad	0x400a064345cfede9              # double 3.2530579999999998
	.quad	0x401ded49d7ba6699              # double 7.4817270000000002
	.quad	0x3fea498e53eb399f              # double 0.82147899999999996
	.quad	0x3ff28359bc33f855              # double 1.157068
	.quad	0x3ffacea9e6eeb702              # double 1.6754549999999999
	.quad	0x4021cfc3d68405b4              # double 8.9057910000000006
	.quad	0x4008615ebfa8f7db              # double 3.0475439999999998
	.quad	0x401f9c2656abde40              # double 7.9024900000000002
	.quad	0x4001f6b8f9b13166              # double 2.2454700000000001
	.quad	0x402352a66dbd72bd              # double 9.6614260000000005
	.quad	0x40014656abde3fbc              # double 2.1593450000000001
	.quad	0x4000e709741d084f              # double 2.1128110000000002
	.quad	0x401e7cda2b5a20de              # double 7.6219260000000002
	.quad	0x4010de093532e7b4              # double 4.2168320000000001
	.quad	0x4022cf99c38b04ab              # double 9.4054699999999993
	.quad	0x401919591cd1c7de              # double 6.2747539999999997
	.quad	0x4013e5a9eb2074eb              # double 4.9742810000000004
	.quad	0x400cc33e78e1932d              # double 3.5953339999999998
	.quad	0x401f5dc8fb86f47b              # double 7.8415869999999996
	.quad	0x400cda2403148777              # double 3.6065140000000002
	.quad	0x400ea260b2c83ec9              # double 3.8292860000000002
	.quad	0x40159a9435ac8a37              # double 5.4009559999999999
	.quad	0x40203213a0c6b485              # double 8.0978060000000003
	.quad	0x402001ec4e7253da              # double 8.0037559999999992
	.quad	0x400d7797cc39ffd6              # double 3.683395
	.quad	0x401350025bfad29a              # double 4.8281340000000004
	.quad	0x4021ab57e670e2c1              # double 8.8346549999999997
	.quad	0x401792ec28b2a6b1              # double 5.8934790000000001
	.quad	0x40089c3a42f1ed18              # double 3.0762830000000001
	.quad	0x4018c121682f9442              # double 6.1886039999999998
	.quad	0x401df1094a2b9d3d              # double 7.4853870000000002
	.quad	0x3ffabd68405b39e2              # double 1.6712419999999999
	.quad	0x3fe3cb72c5197a25              # double 0.61858500000000005
	.quad	0x3fee6ae18ac9f2fe              # double 0.95054700000000003
	.quad	0x40217aea3161a1dc              # double 8.7400680000000008
	.quad	0x400d20f451761459              # double 3.6410909999999999
	.quad	0x40036b063e07a28c              # double 2.4272580000000001
	.quad	0x401e8892ab68cef6              # double 7.6333719999999996
	.quad	0x401f6cb4289118c2              # double 7.8561560000000004
	.quad	0x3fee0f47304039ac              # double 0.939365
	.quad	0x40194b38d60a6330              # double 6.3234589999999997
	.quad	0x3ffbd9c7bcc2938e              # double 1.740669
	.quad	0x40233566cf41f213              # double 9.6043000000000002
	.quad	0x401fa684cf0739b0              # double 7.9126159999999999
	.quad	0x401ef16e7a311e86              # double 7.735773
	.quad	0x4001eaf1455219a8              # double 2.2397179999999999
	.quad	0x401c2899bf5946c3              # double 7.0396489999999998
	.quad	0x40024a70d1fa3337              # double 2.2863479999999998
	.quad	0x4019c2c881e4712e              # double 6.4402179999999998
	.quad	0x400e2df266ba493d              # double 3.7724350000000002
	.quad	0x40228a1511dffc54              # double 9.2696919999999991
	.quad	0x4017454152b0a6fc              # double 5.8176319999999997
	.quad	0x401775afaf859429              # double 5.8649279999999999
	.quad	0x3ff6d7a02fb5d031              # double 1.427643
	.quad	0x3fb632e3821af7d3              # double 0.086713999999999999
	.quad	0x401b394b7b28954a              # double 6.8059519999999996
	.quad	0x3faada122fad6cb5              # double 0.052444999999999999
	.quad	0x402300abb44e50c6              # double 9.5013100000000001
	.quad	0x4004e4f3343fa2ad              # double 2.6117919999999999
	.quad	0x3fecf14983d79075              # double 0.90445399999999998
	.quad	0x40222698fe69270b              # double 9.075386
	.quad	0x401113a2595bbbe8              # double 4.2691739999999996
	.quad	0x40081f2a172abef0              # double 3.0152169999999998
	.quad	0x4013c4f1e4b44a1f              # double 4.942329
	.quad	0x40198c169c23b795              # double 6.3868049999999998
	.quad	0x400568f861a60d45              # double 2.6762549999999998
	.quad	0x3ff764302b40f66a              # double 1.4619599999999999
	.quad	0x400f180a17b0f6ad              # double 3.8867379999999998
	.quad	0x4022fa4d8fd5cb79              # double 9.4888729999999998
	.quad	0x400657ae5796bfcb              # double 2.7928130000000002
	.quad	0x3ff485a8155d5f57              # double 1.2826310000000001
	.quad	0x4006e32873bc903f              # double 2.8609170000000002
	.quad	0x40093611ba3ca750              # double 3.1514009999999999
	.quad	0x3ffa065625a682b6              # double 1.626547
	.quad	0x4011995cc857f306              # double 4.3997679999999999
	.quad	0x4013e0e0eb67c287              # double 4.969608
	.quad	0x4011787229e90796              # double 4.367623
	.quad	0x401d89231c64ba95              # double 7.3839230000000002
	.quad	0x40173e820e629952              # double 5.8110429999999997
	.quad	0x400d69f51697f1fa              # double 3.6767370000000001
	.quad	0x3ff01e8c47a17f41              # double 1.007458
	.quad	0x400a90624dd2f1aa              # double 3.3205
	.quad	0x4015fba5a038194c              # double 5.495749
	.quad	0x3ffa400b88ca3e7d              # double 1.640636
	.quad	0x3ffd4054ef459d99              # double 1.828206
	.quad	0x3fd5c5de9c0229a6              # double 0.340202
	.quad	0x4010885a4f00ef13              # double 4.1331569999999997
	.quad	0x4003666a98244e94              # double 2.4250080000000001
	.quad	0x4002de6eeb702603              # double 2.3586100000000001
	.quad	0x40171b9e492bc2fc              # double 5.7769709999999996
	.quad	0x40008a6d26740810              # double 2.0675910000000002
	.quad	0x4015ea5efe931876              # double 5.4788779999999999
	.quad	0x4021f3cff64cf8d7              # double 8.9761959999999998
	.quad	0x401094a44c7b02d6              # double 4.1451580000000003
	.quad	0x3fbb76d549731099              # double 0.107282
	.quad	0x3fe5b8cb8e086bdf              # double 0.67880799999999997
	.quad	0x40106544fe36d224              # double 4.0988959999999999
	.quad	0x40149d9f90539fba              # double 5.1539289999999998
	.quad	0x4022a918c197e564              # double 9.3302669999999992
	.quad	0x401e4a0a0f4d7add              # double 7.5723039999999999
	.quad	0x4010d1b4784230fd              # double 4.20479
	.quad	0x40047f676ea4228a              # double 2.5622090000000002
	.quad	0x40024a25529fe005              # double 2.2862040000000001
	.quad	0x4015565c70435efa              # double 5.3343369999999997
	.quad	0x4015274f722e1ac5              # double 5.2883889999999996
	.quad	0x4014bc1db0142f62              # double 5.1837070000000001
	.quad	0x3ffd063beec3979a              # double 1.814022
	.quad	0x4010093ff25e56cd              # double 4.0090329999999996
	.quad	0x40214266772d5e07              # double 8.6296879999999998
	.quad	0x3ffd79a9da597d4a              # double 1.842203
	.quad	0x4018ab4528283d36              # double 6.1672560000000001
	.quad	0x3ffcf4f0d844d014              # double 1.8098000000000001
	.quad	0x4000c616b54e2b06              # double 2.0967229999999999
	.quad	0x3fe6f281fd9ba1b2              # double 0.71710300000000005
	.quad	0x4019a3c968943e10              # double 6.409948
	.quad	0x400b33cb3e5753a4              # double 3.40029
	.quad	0x401d6878b7a1c25d              # double 7.352023
	.quad	0x3ff3572abef06b38              # double 1.2087810000000001
	.quad	0x40124b66b6177ea2              # double 4.5736340000000002
	.quad	0x3ff0a90470a808c8              # double 1.041264
	.quad	0x401b49ecb31c219f              # double 6.8221920000000003
	.quad	0x400a90de093532e8              # double 3.3207360000000001
	.quad	0x401d4741d084e832              # double 7.3195870000000003
	.quad	0x40101be1eb4202da              # double 4.0272290000000002
	.quad	0x40177eadd590c0ad              # double 5.87371
	.quad	0x4014ddd69d30270f              # double 5.2166389999999998
	.quad	0x4020f00303c07ee1              # double 8.4687730000000006
	.quad	0x4012b03f705857b0              # double 4.6721170000000001
	.quad	0x40219945953586cb              # double 8.7993590000000008
	.quad	0x40226010a569b175              # double 9.1876270000000009
	.quad	0x401deb4784230fd0              # double 7.4797650000000004
	.quad	0x400a82cf52b90a78              # double 3.3138719999999999
	.quad	0x401cc3e7d135115a              # double 7.1913140000000002
	.quad	0x401e003968d759ef              # double 7.5002190000000004
	.quad	0x400cf7c0b1359792              # double 3.6209730000000002
	.quad	0x3ffd786d2ed783e0              # double 1.841901
	.quad	0x40163bc6a7ef9db2              # double 5.5583749999999998
	.quad	0x400055e28aa43351              # double 2.0419360000000002
	.quad	0x401e6944241c3efb              # double 7.602799
	.quad	0x3ff882aed1394318              # double 1.5319050000000001
	.quad	0x4016d813879c4114              # double 5.7110120000000002
	.quad	0x400c2d8b1dd5d3dd              # double 3.5222380000000002
	.quad	0x3ff9aae7d566cf42              # double 1.604225
	.quad	0x402180ebedfa43fe              # double 8.7517999999999994
	.quad	0x4003c19fc2a8869c              # double 2.4695429999999998
	.quad	0x40164b4d8ba40d91              # double 5.5735380000000001
	.quad	0x4002d727136a4010              # double 2.3550550000000001
	.quad	0x401919085f4a1273              # double 6.2744460000000002
	.quad	0x401c64e7685985ad              # double 7.0985389999999997
	.quad	0x40230147496aad1d              # double 9.5024969999999999
	.quad	0x4020a29d1f601798              # double 8.3176050000000004
	.quad	0x4016abbf50e34763              # double 5.6677220000000004
	.quad	0x402170ea7ce0fc2f              # double 8.7205390000000005
	.quad	0x40186da661283904              # double 6.1070799999999998
	.quad	0x4006f37542a23c00              # double 2.8688760000000002
	.quad	0x402027340d4dc65c              # double 8.0765689999999992
	.quad	0x400f9265add9c27f              # double 3.9464830000000002
	.quad	0x400e39e40c8472c1              # double 3.778267
	.quad	0x3fe49df97aaac109              # double 0.64428399999999997
	.quad	0x401e90535c9e6688              # double 7.640943
	.quad	0x4023a16a48733659              # double 9.8152640000000008
	.quad	0x3ff4564a59c065b6              # double 1.2710669999999999
	.quad	0x3ffea055757d5a9f              # double 1.9141440000000001
	.quad	0x4011e6d373affb05              # double 4.4754160000000001
	.quad	0x400cdf080303c07f              # double 3.6089020000000001
	.quad	0x402036ec9e236c16              # double 8.1072740000000003
	.quad	0x40135a1b5c7cd899              # double 4.8379950000000003
	.quad	0x400569f2778140dd              # double 2.6767319999999999
	.quad	0x3fef3afb7e90ff97              # double 0.97594999999999998
	.quad	0x3fe4ba647fdc5932              # double 0.64775300000000002
	.quad	0x401b72d2fe3f35a0              # double 6.862133
	.quad	0x401dd103c8e25c81              # double 7.454116
	.quad	0x40089a272862f599              # double 3.0752700000000002
	.quad	0x3ff3ce219652bd3c              # double 1.237825
	.quad	0x401f17be121ee675              # double 7.7731859999999999
	.quad	0x401fc1b54195cc85              # double 7.9391679999999995
	.quad	0x4005ef5771001d5c              # double 2.7418659999999999
	.quad	0x4021655dc4007571              # double 8.6979810000000004
	.quad	0x400f34384ba0e842              # double 3.9004979999999998
	.quad	0x4015e0b6b6e0d23d              # double 5.4694469999999997
	.quad	0x4010070c996b7671              # double 4.0068840000000003
	.quad	0x4013603c07ee0b0b              # double 4.843979
	.quad	0x4023d32c625e99e9              # double 9.9124479999999994
	.quad	0x402382b713272431              # double 9.7553029999999996
	.quad	0x4018e00218def417              # double 6.2187580000000002
	.quad	0x400f1b29a1b9f98b              # double 3.8882629999999998
	.quad	0x401137f38c5436b9              # double 4.30464
	.quad	0x4011e5dd095af295              # double 4.4744760000000001
	.quad	0x3fed7b2aae297397              # double 0.92128500000000002
	.quad	0x401033022dd7a9a0              # double 4.0498130000000003
	.quad	0x3fd96809d495182b              # double 0.39697500000000002
	.quad	0x3fea8123810e8859              # double 0.828264
	.quad	0x40100d9f90539fba              # double 4.0133039999999998
	.quad	0x401de5dd095af295              # double 7.4744760000000001
	.quad	0x4004f63779e9d0ea              # double 2.6202230000000002
	.quad	0x401dbbb6aa4b9885              # double 7.4333140000000002
	.quad	0x3ff9f89a459103c9              # double 1.623194
	.quad	0x40205ff06705c897              # double 8.1873810000000002
	.quad	0x401d2c58ab92c062              # double 7.2933070000000004
	.quad	0x4021afb19e731d2e              # double 8.8431519999999999
	.quad	0x3ff09e215336deb9              # double 1.0386059999999999
	.quad	0x400705e3da2f8bdf              # double 2.8778760000000001
	.quad	0x3fcc5cc426351def              # double 0.221581
	.quad	0x4011c4b380cb6c7a              # double 4.4420909999999996
	.quad	0x401eca6defc7a398              # double 7.6976849999999998
	.quad	0x3fed92e1ef73c0c2              # double 0.92418
	.quad	0x402179dfb9389b52              # double 8.738035
	.quad	0x4018addb1209edc0              # double 6.1697810000000004
	.quad	0x400994057082491b              # double 3.197276
	.quad	0x401596ce789e774f              # double 5.3972720000000001
	.quad	0x400d2534bd76ee74              # double 3.643167
	.quad	0x40123b4a2339c0ec              # double 4.5579000000000001
	.quad	0x3ff180d5e8d54110              # double 1.0939540000000001
	.quad	0x4023177121ab4b73              # double 9.5457850000000004
	.quad	0x40232e1cffeb074a              # double 9.5900649999999992
	.quad	0x3fe65cd0bb6ed677              # double 0.69882999999999995
	.quad	0x400880be51090710              # double 3.0628630000000001
	.quad	0x4016ea76d97b30f9              # double 5.7289690000000002
	.quad	0x4008c46a5d6bebe1              # double 3.0959059999999998
	.quad	0x3ff7f3764f11b60b              # double 1.496939
	.quad	0x40225bcd141a6938              # double 9.1792990000000003
	.quad	0x401eaa6b50b0f27c              # double 7.6664250000000003
	.quad	0x4007e6202539756d              # double 2.9873660000000002
	.quad	0x401003beec39799e              # double 4.0036579999999997
	.quad	0x40017095af294dd7              # double 2.1799729999999999
	.quad	0x401d435c182ecaef              # double 7.3157810000000003
	.quad	0x400909539b888723              # double 3.1295540000000002
	.quad	0x400c4a27f1b69121              # double 3.5362089999999999
	.quad	0x40133ffbce4217d3              # double 4.8124840000000004
	.quad	0x40234f6683c297c0              # double 9.6550790000000006
	.quad	0x4022a98ac9f2fdb9              # double 9.331137
	.quad	0x4022ff71c970f7ba              # double 9.4989150000000002
	.quad	0x401cb9ebe9c88616              # double 7.1815639999999998
	.quad	0x3fe409df1172ef0b              # double 0.62620500000000001
	.quad	0x402230b9fdbd2fa1              # double 9.0951690000000003
	.quad	0x4013f7985271bcdc              # double 4.9917920000000002
	.quad	0x400143e425aee632              # double 2.15815
	.quad	0x3ffc93586ca89fc7              # double 1.785973
	.quad	0x4015ea3a8e71476b              # double 5.478739
	.quad	0x401875f30e7ff584              # double 6.1151850000000003
	.quad	0x3ffe896dd26b723f              # double 1.908552
	.quad	0x3fe4a20ddc619546              # double 0.64478199999999997
	.quad	0x4005136d655e28aa              # double 2.6344859999999999
	.quad	0x4008064d3bf2f556              # double 3.0030770000000002
	.quad	0x400fea044ae85b9f              # double 3.9892660000000002
	.quad	0x40215d814940bbb2              # double 8.6826270000000001
	.quad	0x40216107d912556d              # double 8.6895129999999998
	.quad	0x40156c8366516db1              # double 5.3559700000000001
	.quad	0x401409691a75cd0c              # double 5.0091900000000003
	.quad	0x4023864d5d80e497              # double 9.7623090000000001
	.quad	0x3fe8803cd141a693              # double 0.76565399999999995
	.quad	0x400f539192641b33              # double 3.9158050000000002
	.quad	0x3fe9cc2d6a9c560c              # double 0.80617399999999994
	.quad	0x4007567caea747d8              # double 2.91723
	.quad	0x40219ac5e2cdc012              # double 8.8022910000000003
	.quad	0x40031799e518f3ed              # double 2.3865240000000001
	.quad	0x3fcca82a5614df8b              # double 0.223882
	.quad	0x4023374080f98fa3              # double 9.6079139999999991
	.quad	0x401ffea8da7f3cf7              # double 7.9986909999999999
	.quad	0x401bf7a89331a08c              # double 6.991854
	.quad	0x401f3ada76d97b31              # double 7.807474
	.quad	0x40107795b35b0bbf              # double 4.1167819999999997
	.quad	0x4012bfec13b9f128              # double 4.687424
	.quad	0x40134a0232096788              # double 4.8222740000000002
	.quad	0x3fcdacffa7eb6bf4              # double 0.23184199999999999
	.quad	0x4010fcba732df506              # double 4.2468050000000002
	.quad	0x3fd53dee78183f92              # double 0.33190500000000001
	.quad	0x4023b5c4651f3e8a              # double 9.8550140000000006
	.quad	0x4022764b662fdfc2              # double 9.2310440000000007
	.quad	0x400ed042d8c2a455              # double 3.8516900000000001
	.quad	0x3fb85b6c3760bf5d              # double 0.095144999999999993
	.quad	0x3fc014bdfd2630ec              # double 0.12563299999999999
	.quad	0x4009425d074213a1              # double 3.1574040000000001
	.quad	0x401613cf70153bd1              # double 5.5193459999999996
	.quad	0x40237421e1d2178f              # double 9.7268209999999992
	.quad	0x40212b1f255f351a              # double 8.5842220000000005
	.quad	0x4021efbd48cb4aed              # double 8.9682410000000008
	.quad	0x401ed61f5be5d9e4              # double 7.709104
	.quad	0x4012a4ec636b0963              # double 4.6610579999999997
	.quad	0x3fa77403dddb120a              # double 0.045807
	.quad	0x3ffceed02cd39da1              # double 1.8083039999999999
	.quad	0x3fe881450efdc9c5              # double 0.76578000000000002
	.quad	0x4021604102ff8ec1              # double 8.6879960000000001
	.quad	0x4020ac6da4484945              # double 8.3367740000000001
	.quad	0x3ffb9a4df47f993d              # double 1.7251719999999999
	.quad	0x400645f9df548ece              # double 2.7841680000000002
	.quad	0x400aa71bcdbbe015              # double 3.3315959999999998
	.quad	0x400b168be2f7b17d              # double 3.386009
	.quad	0x3ffc2737110e453d              # double 1.759574
	.quad	0x3fef763e4abe6a33              # double 0.98318399999999994
	.quad	0x4011759ddc1e7968              # double 4.3648600000000002
	.quad	0x3fe6bc9eecbfb15b              # double 0.71052499999999996
	.quad	0x4013f57eaa2a0a96              # double 4.9897410000000004
	.quad	0x40196ad5bee3d5fe              # double 6.3543310000000002
	.quad	0x401e5147f1305964              # double 7.5793759999999999
	.quad	0x401bfb9d7fd82774              # double 6.9957180000000001
	.quad	0x4019ca75cd0bb6ed              # double 6.4477149999999996
	.quad	0x401bd34fc610f0e9              # double 6.956359
	.quad	0x3fcb7b2031ceaf25              # double 0.214695
	.quad	0x4004e945f9df548f              # double 2.6139030000000001
	.quad	0x4004872324c83665              # double 2.565985
	.quad	0x4016138433d6c722              # double 5.5190590000000004
	.quad	0x40102707182235b5              # double 4.0381130000000001
	.quad	0x40216a9131ec0b56              # double 8.7081389999999992
	.quad	0x4002aac7da1ec4e7              # double 2.3333889999999999
	.quad	0x3fe480ffda4052d6              # double 0.64074699999999996
	.quad	0x401d56965f5275ef              # double 7.3345580000000004
	.quad	0x40094280ae104923              # double 3.1574719999999998
	.quad	0x3ff2be1fc08fa7a8              # double 1.1714169999999999
	.quad	0x401cc578a2a90cd4              # double 7.1928429999999999
	.quad	0x40004a4d2b2bfdb5              # double 2.0362800000000001
	.quad	0x4007eb990afe60c4              # double 2.9900380000000002
	.quad	0x40088d96a6a0125a              # double 3.0691350000000002
	.quad	0x401b6f587d6f9768              # double 6.8587360000000004
	.quad	0x3fe393bc0a06e9ff              # double 0.61178399999999999
	.quad	0x40152a365cb35f3d              # double 5.2912229999999996
	.quad	0x401049e40c8472c1              # double 4.0721590000000001
	.quad	0x402381da9c99285b              # double 9.7536210000000007
	.quad	0x400ffc17a89331a1              # double 3.9980920000000002
	.quad	0x40205aa3486f049b              # double 8.1770270000000007
	.quad	0x40142f1dc50ce4eb              # double 5.0460120000000002
	.quad	0x3fffa31d712a0ec7              # double 1.9773229999999999
	.quad	0x3faa01eeed8904f7              # double 0.050796000000000001
	.quad	0x4012202e6644d877              # double 4.5314269999999999
	.quad	0x401a0587d6f97679              # double 6.505401
	.quad	0x3fd115c209246bf0              # double 0.266953
	.quad	0x402189fba450acc1              # double 8.7694980000000005
	.quad	0x40202e56abde3fbc              # double 8.0905050000000002
	.quad	0x4012779314445aa3              # double 4.6167720000000001
	.quad	0x400d5646ae3a3a8e              # double 3.6671269999999998
	.quad	0x40127a7bd48cb4af              # double 4.6196130000000002
	.quad	0x400d0c4dec1c1d6d              # double 3.631008
	.quad	0x401948a1dfb9389b              # double 6.3209299999999997
	.quad	0x4023bbde6149c6f3              # double 9.8669309999999992
	.quad	0x4019fab2e1693c04              # double 6.4948230000000002
	.quad	0x4020c8d62bf11f92              # double 8.3922589999999992
	.quad	0x40088ed245b291b8              # double 3.0697369999999999
	.quad	0x4022483d9a95421c              # double 9.1410949999999999
	.quad	0x402286d1394317ad              # double 9.2633150000000004
	.quad	0x401d2647778dd617              # double 7.287382
	.quad	0x3fbe931876188b11              # double 0.119432
	.quad	0x40218afa5093964a              # double 8.7714409999999994
	.quad	0x4023c4c51116a8b9              # double 9.8843160000000001
	.quad	0x400fccc814d7279a              # double 3.9749910000000002
	.quad	0x3fe34acaff6d3309              # double 0.60287999999999997
	.quad	0x401b6c32a8c9b845              # double 6.8556619999999997
	.quad	0x40122920c069e7fb              # double 4.5401639999999999
	.quad	0x4020de2c77574f72              # double 8.4339329999999997
	.quad	0x401bbde939eadd59              # double 6.93546
	.quad	0x40164af4adbc664d              # double 5.5731989999999998
	.quad	0x3ff09dfc9ff92f2b              # double 1.0385709999999999
	.quad	0x4022ef29b280f12c              # double 9.4671149999999997
	.quad	0x3ff1086594af4f0e              # double 1.0645500000000001
	.quad	0x40233e8f29d40ee0              # double 9.6221859999999992
	.quad	0x40210774eebf65dc              # double 8.514564
	.quad	0x40237c7ecfe9b7bf              # double 9.7431549999999997
	.quad	0x3fc572de43ed959a              # double 0.16756799999999999
	.quad	0x400f76cc5fbf8338              # double 3.9330069999999999
	.quad	0x3ffcdd67ba237cdd              # double 1.804054
	.quad	0x4017cc0a4a05dd90              # double 5.9492580000000004
	.quad	0x401885fd04a2fcf0              # double 6.1308480000000003
	.quad	0x4021a73b645a1cac              # double 8.8266249999999999
	.quad	0x40029aebc408d8ed              # double 2.3256450000000002
	.quad	0x40124c886162f167              # double 4.5747390000000001
	.quad	0x4016f454de7ea5f8              # double 5.7386049999999997
	.quad	0x40087052934acaff              # double 3.0548449999999998
	.quad	0x4000d3f42352eb5f              # double 2.1034929999999998
	.quad	0x401a5c7abfb9bed3              # double 6.5903119999999999
	.quad	0x4000ea3ad18d25ee              # double 2.1143700000000001
	.quad	0x402277225b749add              # double 9.2326840000000008
	.quad	0x40069f676ea4228a              # double 2.8278340000000002
	.quad	0x4017be91c8eabffd              # double 5.9361030000000001
	.quad	0x401eb7c49fd7a13c              # double 7.6794609999999999
	.quad	0x3ff5eaf5771001d6              # double 1.3698630000000001
	.quad	0x3fd640852b4d8ba4              # double 0.347688
	.quad	0x3feea38759253544              # double 0.95746200000000003
	.quad	0x4015b521dda059a7              # double 5.4268869999999998
	.quad	0x4001dd8a54823854              # double 2.233174
	.quad	0x40162063e07a28bb              # double 5.531631
	.quad	0x400634d1633482bf              # double 2.7757900000000002
	.quad	0x40030679cc74b839              # double 2.3781620000000001
	.quad	0x402278296b3354c1              # double 9.2346909999999998
	.quad	0x401af4cdfaca361a              # double 6.7390670000000004
	.quad	0x3fec2915379fa97e              # double 0.88001499999999999
	.quad	0x40088986fcdee350              # double 3.0671520000000001
	.quad	0x401e1b107746887b              # double 7.5264300000000003
	.quad	0x400c6c985f06f694              # double 3.5530249999999999
	.quad	0x3feb2836eb4e9814              # double 0.84865900000000005
	.quad	0x401c196c82e019b1              # double 7.0248280000000003
	.quad	0x3fe6668c26139000              # double 0.70001800000000003
	.quad	0x401aa4628027d88c              # double 6.6605319999999999
	.quad	0x3f9beb9e492bc2fc              # double 0.027265999999999999
	.quad	0x4023ec8ba83f4eca              # double 9.9620029999999993
	.quad	0x401ee88b9778572a              # double 7.7270950000000003
	.quad	0x3ffbdd8a54823854              # double 1.741587
	.quad	0x40036577d955714c              # double 2.4245450000000002
	.quad	0x40234344806290ef              # double 9.6313820000000003
	.quad	0x401a98f9f44d4456              # double 6.6493909999999996
	.quad	0x3feee9d51b4fe79f              # double 0.96604400000000001
	.quad	0x4015e4b4d056c509              # double 5.4733460000000003
	.quad	0x4020dfb5f1bef49d              # double 8.4369350000000001
	.quad	0x401dddda48b65237              # double 7.466653
	.quad	0x401d1d8c6d612c6b              # double 7.2788560000000002
	.quad	0x400b439c51dabe27              # double 3.408013
	.quad	0x401f5360d0247022              # double 7.8314240000000002
	.quad	0x401bde3150dae3e7              # double 6.9669850000000002
	.quad	0x4000ac343b70ef56              # double 2.0840839999999998
	.quad	0x40237499285a921d              # double 9.7277310000000003
	.quad	0x4022089b738e6d16              # double 9.0168110000000006
	.quad	0x4023afae5796bfcb              # double 9.8431270000000008
	.quad	0x400aa7125dd095af              # double 3.3315779999999999
	.quad	0x3fe836501e2584f5              # double 0.75663000000000002
	.quad	0x4001e9c6f36ef805              # double 2.2391489999999998
	.quad	0x4010081a5870da5e              # double 4.0079130000000003
	.quad	0x4015850acc0bdcad              # double 5.3799239999999999
	.quad	0x401862a497fa5d29              # double 6.0963310000000002
	.quad	0x4021a1595feda661              # double 8.8151349999999997
	.quad	0x401a533e78e1932d              # double 6.5812929999999996
	.quad	0x3fc27f90d9d7774b              # double 0.14451800000000001
	.quad	0x402357d30ad46f58              # double 9.6715319999999991
	.quad	0x40103f78feef5ec8              # double 4.061985
	.quad	0x400c7620685553ef              # double 3.5576789999999998
	.quad	0x400bcbedfa43fe5d              # double 3.4745750000000002
	.quad	0x400cbf090f733a8a              # double 3.5932789999999999
	.quad	0x402265da272862f6              # double 9.1989300000000007
	.quad	0x401601d3671ac14c              # double 5.5017829999999996
	.quad	0x4020cb1ad2135dab              # double 8.3966890000000003
	.quad	0x3ffa56cc5fbf8338              # double 1.646191
	.quad	0x400f729ed3953dea              # double 3.9309669999999999
	.quad	0x400ec15097c80842              # double 3.844392
	.quad	0x4023871b47842310              # double 9.7638800000000003
	.quad	0x401a855714b9cb68              # double 6.6302149999999997
	.quad	0x400df40e5a35d67c              # double 3.7441680000000002
	.quad	0x401aa50fc71d6063              # double 6.6611929999999999
	.quad	0x4021e78d4fdf3b64              # double 8.9522499999999993
	.quad	0x401477952d234eba              # double 5.1167800000000003
	.quad	0x401869b3d07c84b6              # double 6.1032250000000001
	.quad	0x401d465668c26139              # double 7.318689
	.quad	0x3fd5f61aa3f034b1              # double 0.34314600000000001
	.quad	0x4020f2a21a719b4e              # double 8.4738930000000003
	.quad	0x4020ad31db445ed5              # double 8.3382710000000007
	.quad	0x401b31d3671ac14c              # double 6.7986579999999996
	.quad	0x401314efcbd55608              # double 4.7704459999999997
	.quad	0x40104ac36544fe37              # double 4.0730110000000002
	.quad	0x4009b348b220791c              # double 3.2125409999999999
	.quad	0x402000060780fdc1              # double 8.0000459999999993
	.quad	0x4021d79b994e1a3f              # double 8.9211089999999995
	.quad	0x3ff7aa52ef911cf3              # double 1.4790829999999999
	.quad	0x3ff6b52eb5f5f0b3              # double 1.4192340000000001
	.quad	0x401bd2a5a469d734              # double 6.9557099999999998
	.quad	0x401ba0635a426bb5              # double 6.9066289999999997
	.quad	0x401300d887ebf22c              # double 4.750826
	.quad	0x401d8f37329c347f              # double 7.3898590000000004
	.quad	0x3ff3710cb295e9e2              # double 1.2151000000000001
	.quad	0x40077f5c6c11a112              # double 2.9371879999999999
	.quad	0x3fe660f3cb3e5754              # double 0.69933500000000004
	.quad	0x3ff35a5a89b951c6              # double 1.2095590000000001
	.quad	0x4016db4aa9717df2              # double 5.7141520000000003
	.quad	0x3ff28b04ab606b7b              # double 1.1589400000000001
	.quad	0x40218ceaf251c194              # double 8.7752300000000005
	.quad	0x3ffd0794ea077037              # double 1.814351
	.quad	0x3fdbcfbb9496249a              # double 0.434554
	.quad	0x401abbcd35a85879              # double 6.6833999999999998
	.quad	0x40216894c447c30d              # double 8.7042599999999997
	.quad	0x402346bb55ac03ff              # double 9.6381479999999992
	.quad	0x4013195dd4c76d11              # double 4.7747719999999996
	.quad	0x3ff87e3d1cc100e7              # double 1.5308200000000001
	.quad	0x400c8f3dc054ef46              # double 3.5699420000000002
	.quad	0x4014ff3a57eaa2a1              # double 5.2492460000000003
	.quad	0x3fefad4d4024b33e              # double 0.98990500000000003
	.quad	0x40134e8815e39714              # double 4.8266910000000003
	.quad	0x400e3f7596851223              # double 3.780986
	.quad	0x40091f4fd6d7e88a              # double 3.1402890000000001
	.quad	0x401ae8dc55000c95              # double 6.7274029999999998
	.quad	0x3ff36c5f394b7b29              # double 1.2139580000000001
	.quad	0x40063631b584b1ab              # double 2.776462
	.quad	0x40126c5ef62f9ca6              # double 4.6058310000000002
	.quad	0x401c6436b8f9b131              # double 7.0978649999999996
	.quad	0x401c7b8f9b13165d              # double 7.1206649999999998
	.quad	0x40057f01b866e43b              # double 2.6870150000000002
	.quad	0x4020be1650a45d42              # double 8.371264
	.quad	0x40234d3d20f2becf              # double 9.6508570000000002
	.quad	0x400d26876e1deacd              # double 3.6438130000000002
	.quad	0x401eb53111f0c34c              # double 7.6769449999999999
	.quad	0x400386c7eae5bc88              # double 2.4408110000000001
	.quad	0x3ff6651c193b3a69              # double 1.3996850000000001
	.quad	0x4002d9c5a3e39f77              # double 2.3563339999999999
	.quad	0x400bf00713f077cd              # double 3.4922010000000001
	.quad	0x3ffb9003eea209ab              # double 1.7226600000000001
	.quad	0x4016c4228997c3d7              # double 5.6915380000000004
	.quad	0x40202710880d801b              # double 8.0762979999999995
	.quad	0x401db69014b599aa              # double 7.4282839999999997
	.quad	0x4023e03558a76102              # double 9.9379069999999992
	.quad	0x40206c5176145953              # double 8.2115589999999994
	.quad	0x4012a2c386d2ed78              # double 4.6589489999999998
	.quad	0x4005c73eee525892              # double 2.7222879999999998
	.quad	0x400f2e8c0485a0be              # double 3.8977279999999999
	.quad	0x3ffa9113836a832c              # double 1.6604190000000001
	.quad	0x401e4ca8e2e2b8c7              # double 7.5748629999999996
	.quad	0x40126152f3c2dadc              # double 4.5950430000000004
	.quad	0x40209246173b85e8              # double 8.2856909999999999
	.quad	0x400b4ca2db61bb06              # double 3.41242
	.quad	0x3fe2779420b3d4ae              # double 0.57709699999999997
	.quad	0x40127a5375c8d9f9              # double 4.619459
	.quad	0x3fc9842b734b5137              # double 0.199346
	.quad	0x401aa912556d19df              # double 6.6651090000000002
	.quad	0x3ff0ad8c2a454de8              # double 1.04237
	.quad	0x3fff84039abf3387              # double 1.96973
	.quad	0x3fd37bbb62413db8              # double 0.304427
	.quad	0x401b17dc37a3db3c              # double 6.773301
	.quad	0x4016897a24894c44              # double 5.6342549999999996
	.quad	0x4020e953bd167664              # double 8.4557169999999999
	.quad	0x3fe5168943e10060              # double 0.65900099999999995
	.quad	0x4002d967caea747e              # double 2.3561550000000002
	.quad	0x4021e11a32b12d34              # double 8.9396529999999998
	.quad	0x400d1ded6ba8c587              # double 3.6396130000000002
	.quad	0x4002ead03d9a9542              # double 2.364655
	.quad	0x4010cc09c3ce208a              # double 4.1992560000000001
	.quad	0x40151a60d4562e0a              # double 5.27576
	.quad	0x40035c32ebe596c8              # double 2.4200189999999999
	.quad	0x40192884c6a3bde0              # double 6.2895690000000002
	.quad	0x3ff072f33ca31e7e              # double 1.0280640000000001
	.quad	0x3ff86491afc04c8c              # double 1.524553
	.quad	0x40152522a6f3f530              # double 5.2862650000000002
	.quad	0x402363c81908e582              # double 9.6948860000000003
	.quad	0x4017bdba0a526959              # double 5.9352799999999997
	.quad	0x3fea86fef7c243dd              # double 0.82897900000000002
	.quad	0x4023d3d4cfd08d4c              # double 9.9137330000000005
	.quad	0x400c2be2f7b17ce5              # double 3.5214289999999999
	.quad	0x401f9cce5f7403de              # double 7.9031310000000001
	.quad	0x3ff708dc11e42e12              # double 1.4396629999999999
	.quad	0x402216d56b00ffda              # double 9.0445969999999996
	.quad	0x3fed958537e2c55d              # double 0.92450200000000005
	.quad	0x4010a8e820e62995              # double 4.1649479999999999
	.quad	0x401a83ae685db76b              # double 6.6285949999999998
	.quad	0x40078407cc7d1bb5              # double 2.9394680000000002
	.quad	0x402276a7ef9db22d              # double 9.2317499999999999
	.quad	0x3febe542e557de0d              # double 0.87173599999999996
	.quad	0x4019405f6ba0620b              # double 6.3128640000000003
	.quad	0x40229b9346994185              # double 9.303858
	.quad	0x3fec4c857f3061c8              # double 0.88434100000000004
	.quad	0x40209cdd50a88f00              # double 8.3063760000000002
	.quad	0x40210ed5f138bce0              # double 8.5289760000000001
	.quad	0x40111f45e0b4e11e              # double 4.2805400000000002
	.quad	0x401015bb384fd2a6              # double 4.0212219999999999
	.quad	0x4002a38433d6c722              # double 2.3298420000000002
	.quad	0x40209d61f5be5d9e              # double 8.3073879999999996
	.quad	0x4022e7dc1615ebfb              # double 9.4528510000000007
	.quad	0x4021f6e807bbb624              # double 8.9822389999999998
	.quad	0x4021e6045baf533f              # double 8.9492519999999995
	.quad	0x3ff9204189374bc7              # double 1.5703750000000001
	.quad	0x4021259c8c9320da              # double 8.5734600000000007
	.quad	0x3ff4034b0e1b4bb6              # double 1.250804
	.quad	0x4022e1f44d445671              # double 9.4413169999999997
	.quad	0x401e2cb6848beb5b              # double 7.5436649999999998
	.quad	0x40005bdbe3c10518              # double 2.0448529999999998
	.quad	0x40170469d7342edc              # double 5.7543100000000003
	.quad	0x4023d2c40d0aaa7e              # double 9.9116520000000001
	.quad	0x400ddce7cd035372              # double 3.7328640000000002
	.quad	0x400441ea35935fc4              # double 2.5321850000000001
	.quad	0x401a34ad362e9036              # double 6.5514419999999998
	.quad	0x40204d32c625e99f              # double 8.1507780000000007
	.quad	0x4008bd8d79d0a676              # double 3.0925549999999999
	.quad	0x3ff3e2e5de15ca6d              # double 1.2428950000000001
	.quad	0x3fe1fa67a52ac754              # double 0.56181700000000001
	.quad	0x401b0422467be554              # double 6.7540370000000003
	.quad	0x40000e05ccc89b0f              # double 2.006847
	.quad	0x401ab1aac53b0814              # double 6.6735030000000002
	.quad	0x40239093532e7b3e              # double 9.7823740000000008
	.quad	0x401d782385404641              # double 7.3673229999999998
	.quad	0x401d4fede97d06bc              # double 7.3280560000000001
	.quad	0x4010bcab3edd8b61              # double 4.184247
	.quad	0x3fe98283d35eb745              # double 0.79718199999999995
	.quad	0x401b38b26394face              # double 6.8053679999999996
	.quad	0x400b8470a808c826              # double 3.4396680000000002
	.quad	0x402166bb55ac03ff              # double 8.7006479999999993
	.quad	0x4017f687f455a7d2              # double 5.9907529999999998
	.quad	0x4011420ddc619546              # double 4.3145059999999997
	.quad	0x40223844284dfce3              # double 9.1098949999999999
	.quad	0x4017c7d49d7ba66a              # double 5.9451470000000004
	.quad	0x400a1e29307af20f              # double 3.2647270000000002
	.quad	0x40207c3c9eecbfb1              # double 8.2426499999999994
	.quad	0x401e77caea747d80              # double 7.6169849999999997
	.quad	0x4023080d5e8d5411              # double 9.515727
	.quad	0x3feb3cb81733226c              # double 0.85116199999999997
	.quad	0x4010c4cf4a558ea8              # double 4.1921970000000002
	.quad	0x40208774cd31769b              # double 8.2645630000000008
	.quad	0x4019f17efe0ce0b9              # double 6.4858359999999999
	.quad	0x3ffc09491f2dc2b1              # double 1.752267
	.quad	0x4015b25c3dee7818              # double 5.4241799999999998
	.quad	0x401a7f3493858362              # double 6.6242239999999999
	.quad	0x400266fef7c243dd              # double 2.3002910000000001
	.quad	0x401a4aa3ad18d25f              # double 6.5728900000000001
	.quad	0x4009c409e55c0fcb              # double 3.2207219999999999
	.quad	0x4013cd82fd75e204              # double 4.9506949999999996
	.quad	0x4022b1873ffac1d3              # double 9.3467350000000007
	.quad	0x401e91697f1f9ad0              # double 7.642004
	.quad	0x3ffbac3c9eecbfb1              # double 1.7295499999999999
	.quad	0x3ffa662fdfc19c17              # double 1.649948
	.quad	0x40205a22f6a50d6b              # double 8.1760479999999998
	.quad	0x400699524bfd2e94              # double 2.8248639999999998
	.quad	0x401d4b641700cd85              # double 7.3236239999999997
	.quad	0x4021802a9930be0e              # double 8.7503250000000001
	.quad	0x401eab20b8066c2b              # double 7.6671170000000001
	.quad	0x40140b0e5e679464              # double 5.0107970000000002
	.quad	0x401d1e696a26e547              # double 7.2796989999999999
	.quad	0x3fd23c9abb01c92e              # double 0.28494900000000001
	.quad	0x3ffcf43c7d5ed070              # double 1.809628
	.quad	0x402350a569b17482              # double 9.6575120000000005
	.quad	0x40152a176ddaceee              # double 5.2911049999999999
	.quad	0x401948882f0e0a85              # double 6.3208320000000002
	.quad	0x401a085b9e8c47a1              # double 6.5081619999999996
	.quad	0x3ffaae2435696e59              # double 1.6675150000000001
	.quad	0x3ff5e44e93e1c9b4              # double 1.368239
	.quad	0x40045d199bb2788e              # double 2.5454590000000001
	.quad	0x3fff785729b280f1              # double 1.96688
	.quad	0x402269c68ec52a41              # double 9.2065929999999998
	.quad	0x40187c4e7253da73              # double 6.1213930000000003
	.quad	0x401fbdadfb506dd7              # double 7.9352340000000003
	.quad	0x4004e451b93037d6              # double 2.6114839999999999
	.quad	0x3fb30f49491f2dc3              # double 0.074452000000000004
	.quad	0x3fff0577d955714c              # double 1.9388350000000001
	.quad	0x40037db3bfb58d15              # double 2.4363779999999999
	.quad	0x4016c2220bc382a1              # double 5.6895829999999998
	.quad	0x401fc7b30f8c64fe              # double 7.9450190000000003
	.quad	0x3fe371151611ba3d              # double 0.60755400000000004
	.quad	0x40065e004b7f5a53              # double 2.7958989999999999
	.quad	0x401e04b945308bb9              # double 7.5046129999999999
	.quad	0x400fb66f0cfe1544              # double 3.9640789999999999
	.quad	0x401fa0867ad8e432              # double 7.9067629999999998
	.quad	0x3fb078fabda0dfdf              # double 0.064346
	.quad	0x401d4481b21c475e              # double 7.3169009999999997
	.quad	0x3fe66b8950763a19              # double 0.700627
	.quad	0x400ea1c1d6cf850e              # double 3.828983
	.quad	0x3fe5014727dcbddc              # double 0.65640600000000004
	.quad	0x40228b315d701d9f              # double 9.2718609999999995
	.quad	0x4012f6a8b8f14db6              # double 4.7408780000000004
	.quad	0x3fe46c9c0a8d21bc              # double 0.63825799999999999
	.quad	0x400b47c6b8b69553              # double 3.4100470000000001
	.quad	0x400846f694467382              # double 3.0346500000000001
	.quad	0x4004dfe1975f2cb6              # double 2.6093169999999999
	.quad	0x4021cf7e1b8ed1bf              # double 8.9052589999999991
	.quad	0x40222b36deb95e5b              # double 9.084403
	.quad	0x3ff45a9da597d49d              # double 1.2721229999999999
	.quad	0x3fa473471f79420b              # double 0.039941999999999998
	.quad	0x4018faec4a4095f2              # double 6.2450419999999998
	.quad	0x401e1f16f4384ba1              # double 7.530361
	.quad	0x401ba8f9f44d4456              # double 6.9150159999999996
	.quad	0x4015581626b2f230              # double 5.3360219999999998
	.quad	0x402203df090f733b              # double 9.0075610000000008
	.quad	0x40167e7b80a9de8b              # double 5.6235179999999998
	.quad	0x3fc5e9a6f826edab              # double 0.17119300000000001
	.quad	0x4004a0d4562e09ff              # double 2.5785300000000002
	.quad	0x400095d249e44fa0              # double 2.0731549999999999
	.quad	0x3ffdea6a012599ed              # double 1.8697299999999999
	.quad	0x3ff41a671ef30a4e              # double 1.256446
	.quad	0x40232b4d48882f0e              # double 9.5845739999999999
	.quad	0x40233f3a365cb35f              # double 9.6234909999999995
	.quad	0x400595dfeb8d8234              # double 2.6981809999999999
	.quad	0x3ffd5aad601ffb48              # double 1.834638
	.quad	0x4015f2b4959e6256              # double 5.4870169999999998
	.quad	0x4020d6e02a77a2cf              # double 8.4196790000000004
	.quad	0x40213aa5a469d734              # double 8.6145449999999996
	.quad	0x401173fd50225743              # double 4.3632710000000001
	.quad	0x3ff6c2d490e66cb1              # double 1.422566
	.quad	0x40217f95f676ea42              # double 8.7491909999999997
	.quad	0x3fdd9707182235b5              # double 0.462343
	.quad	0x4023609c7ffde721              # double 9.6886939999999999
	.quad	0x4020aee008e9b38d              # double 8.3415529999999993
	.quad	0x40000249a133c1ce              # double 2.0011169999999998
	.quad	0x40129c98e53eb39a              # double 4.652927
	.quad	0x400c5d76683c297c              # double 3.545636
	.quad	0x401bd116a8b8f14e              # double 6.9541880000000003
	.quad	0x402189db877ab325              # double 8.7692530000000009
	.quad	0x400caa2d2fe3f35a              # double 3.583094
	.quad	0x401eb52e72da1230              # double 7.6769350000000003
	.quad	0x4003f85c67dfe32a              # double 2.49627
	.quad	0x401c2c79f666234b              # double 7.0434340000000004
	.quad	0x4001bd512ec6bce8              # double 2.2174399999999999
	.quad	0x4009b755bccaf70a              # double 3.2145190000000001
	.quad	0x40217769ca9ef523              # double 8.7332289999999997
	.quad	0x4017034ce3de614a              # double 5.7532230000000002
	.quad	0x400ad041cc532a49              # double 3.3516879999999998
	.quad	0x40030da4ce8101f3              # double 2.3816619999999999
	.quad	0x4023565d7cb2d906              # double 9.6686820000000004
	.quad	0x40132d3d4280ae10              # double 4.7941789999999997
	.quad	0x40168d352220bc38              # double 5.6378979999999999
	.quad	0x400b1f6c2699c7bd              # double 3.3903430000000001
	.quad	0x401a1706d5065732              # double 6.5224869999999999
	.quad	0x401da4866a11ec92              # double 7.4106690000000004
	.quad	0x402318d7be9856a3              # double 9.5485209999999991
	.quad	0x400a8370cdc8754f              # double 3.3141799999999999
	.quad	0x3ffe8db2702a3487              # double 1.909594
	.quad	0x400a27c30d306a2b              # double 3.269415
	.quad	0x4022ae09fe86833c              # double 9.3399199999999993
	.quad	0x4016197bb7308356              # double 5.5248860000000004
	.quad	0x4014182ecaeea63b              # double 5.0236159999999996
	.quad	0x4021f4f28c79f666              # double 8.9784129999999998
	.quad	0x40186bb01c92ddbe              # double 6.1051640000000003
	.quad	0x40153e1bd1ed9dfe              # double 5.3106530000000003
	.quad	0x401345100a393ee6              # double 4.8174440000000001
	.quad	0x40135023a6ce3583              # double 4.8282610000000004
	.quad	0x4004e59e1f3a57eb              # double 2.6121180000000002
	.quad	0x4018d651f3e89a89              # double 6.2092970000000003
	.quad	0x40204d885d31337f              # double 8.1514310000000005
	.quad	0x3ff8061d8622c450              # double 1.501493
	.quad	0x40012964e8b7e4de              # double 2.1452119999999999
	.quad	0x4004d92c8c5004fb              # double 2.606042
	.quad	0x3ffa619da9c99286              # double 1.6488320000000001
	.quad	0x3ffa6b8c75c4a83b              # double 1.651257
	.quad	0x402094794ea07703              # double 8.2899879999999992
	.quad	0x4010fea91d9b1b7a              # double 4.2486920000000001
	.quad	0x40163cfe58601366              # double 5.559564
	.quad	0x401562b777d0f1f5              # double 5.3464029999999996
	.quad	0x4023121e1d2178f7              # double 9.5353860000000008
	.quad	0x40238285015c2092              # double 9.7549209999999995
	.quad	0x401c36b9c304ccee              # double 7.0534429999999997
	.quad	0x4013bb48909289db              # double 4.9328940000000001
	.quad	0x401487774aba3876              # double 5.1322910000000004
	.quad	0x3ffc9f383f0bae8a              # double 1.788872
	.quad	0x400861e9af5ba2be              # double 3.047809
	.quad	0x40031b5fa22706d5              # double 2.388366
	.quad	0x4013c3bd1676640a              # double 4.9411509999999996
	.quad	0x401ae85a0be51090              # double 6.7269059999999996
	.quad	0x3ff8a1e81cb46bad              # double 1.539528
	.quad	0x3fe9060dcb9a9da6              # double 0.78198900000000005
	.quad	0x4022002ecaeea63b              # double 9.0003569999999993
	.quad	0x401d9c6c11a11234              # double 7.4027560000000001
	.quad	0x401f99a0f0a5efe9              # double 7.9000279999999998
	.quad	0x401d8cbaf965b20c              # double 7.3874320000000004
	.quad	0x3ff3336ef8055fbb              # double 1.2000569999999999
	.quad	0x40200ea6a012599f              # double 8.0286150000000003
	.quad	0x4020d0bd017dae82              # double 8.4076920000000008
	.quad	0x40000bdd334c5da7              # double 2.0057930000000002
	.quad	0x40024d43d03968d7              # double 2.2877269999999998
	.quad	0x4020949129888f86              # double 8.2901699999999998
	.quad	0x40191caff6d33094              # double 6.2780149999999999
	.quad	0x400db1c2a0232096              # double 3.7117969999999998
	.quad	0x40239bd4cfd08d4c              # double 9.8043580000000005
	.quad	0x401307f5e84f0953              # double 4.7577740000000004
	.quad	0x401e81e75360d024              # double 7.6268589999999996
	.quad	0x3ff5bfd82773e250              # double 1.359337
	.quad	0x401b7284dfce3151              # double 6.8618350000000001
	.quad	0x4022629da597d49d              # double 9.1926089999999991
	.quad	0x40105079a2834d27              # double 4.078589
	.quad	0x40003fd60e94ee39              # double 2.0311699999999999
	.quad	0x4017942784a9478d              # double 5.8946820000000004
	.quad	0x4023949dbec2480f              # double 9.7902660000000008
	.quad	0x40047aa369fcf3dc              # double 2.559882
	.quad	0x4012be3c968943e1              # double 4.685778
	.quad	0x4017e208e1501190              # double 5.9707369999999997
	.quad	0x40091573647baa9b              # double 3.1354739999999999
	.quad	0x4013484a9478c869              # double 4.8205970000000002
	.quad	0x40111779a6b50b0f              # double 4.2729249999999999
	.quad	0x4010b9246bf01323              # double 4.180803
	.quad	0x4014f33a8a3f8983              # double 5.2375280000000002
	.quad	0x401e7e8e60807358              # double 7.62359
	.quad	0x4002c92ab68cef67              # double 2.3482259999999999
	.quad	0x4017576af89c5e70              # double 5.835369
	.quad	0x3fc088c60cbf2b24              # double 0.12917400000000001
	.quad	0x400b97564302b40f              # double 3.4488949999999998
	.quad	0x4019a9b499d0203e              # double 6.4157279999999997
	.quad	0x4021720c069e7fb2              # double 8.7227479999999993
	.quad	0x40157856605ee569              # double 5.3675170000000003
	.quad	0x4021d6f39085f4a1              # double 8.9198269999999997
	.quad	0x4008dccb7d41743f              # double 3.1078100000000002
	.quad	0x4013a0c88a47ecff              # double 4.9070150000000003
	.quad	0x40234837f7be121f              # double 9.6410520000000001
	.quad	0x400c0d6ba8c58687              # double 3.5065529999999998
	.quad	0x3fe59aa1d755bccb              # double 0.675126
	.quad	0x3ffa7178b3700475              # double 1.652703
	.quad	0x4005f321e603d578              # double 2.7437170000000002
	.quad	0x4014808bb906466b              # double 5.1255329999999999
	.quad	0x40116af6c69b5a64              # double 4.354457
	.quad	0x3febdfa871a3b14b              # double 0.87105200000000005
	.quad	0x3ffae3fbbd7b2032              # double 1.68066
	.quad	0x40051bd72bcb5fe5              # double 2.6385939999999999
	.quad	0x400c46f2e8c0485a              # double 3.534643
	.quad	0x400cf50092ccf6be              # double 3.6196299999999999
	.quad	0x4009723ee1bd1eda              # double 3.1807840000000001
	.quad	0x4020368cef672b88              # double 8.1065439999999995
	.quad	0x3fe2b2aae297396d              # double 0.58431
	.quad	0x400f5aa821f2990f              # double 3.9192659999999999
	.quad	0x4014fab191dde376              # double 5.2448180000000004
	.quad	0x4023e0259e1f3a58              # double 9.9377870000000001
	.quad	0x401b24d50ebaade6              # double 6.7859689999999997
	.quad	0x3fd8b61fe21d96ea              # double 0.38611600000000001
	.quad	0x4016bb1572580c31              # double 5.6826990000000004
	.quad	0x400f699bf5946c33              # double 3.9265669999999999
	.quad	0x40126bcd35a85879              # double 4.6052749999999998
	.quad	0x3fe11b0468448cf8              # double 0.53454800000000002
	.quad	0x401dd14d2f5dbb9d              # double 7.454396
	.quad	0x4005bdb4cc250721              # double 2.7176300000000002
	.quad	0x3ffce9a0ad8a1166              # double 1.8070379999999999
	.quad	0x401379a91105e1c1              # double 4.8688089999999997
	.quad	0x40219c6e6d9be4cd              # double 8.8055299999999992
	.quad	0x402336a337a80cfa              # double 9.6067140000000002
	.quad	0x3fd171b8aa00192a              # double 0.27256599999999997
	.quad	0x40200c558644523f              # double 8.0240899999999993
	.quad	0x4013da686e7e62dc              # double 4.9632889999999996
	.quad	0x40028b0d0edc3bd6              # double 2.3178960000000002
	.quad	0x401a7802c0a4a05e              # double 6.6171980000000001
	.quad	0x4005a53b0813cab8              # double 2.7056789999999999
	.quad	0x401291847f562175              # double 4.6421070000000002
	.quad	0x400866b1e5c0b999              # double 3.050144
	.quad	0x4009883c297bfa4c              # double 3.1915209999999998
	.quad	0x4012d820e6299525              # double 4.7110630000000002
	.quad	0x40154e81882adc4d              # double 5.3266660000000003
	.quad	0x402144de5d18090b              # double 8.6345089999999995
	.quad	0x3ff71e28aa433509              # double 1.444863
	.quad	0x4021443116228134              # double 8.6331869999999995
	.quad	0x401e7e3f359ff4fd              # double 7.6232879999999996
	.quad	0x4002cf53c579f234              # double 2.3512339999999998
	.quad	0x4020f96d0917d6b6              # double 8.4871599999999994
	.quad	0x4012f702e6644d87              # double 4.7412219999999996
	.quad	0x4015c08bfc2224ee              # double 5.438034
	.quad	0x3fffbda9435ac8a3              # double 1.9838039999999999
	.quad	0x4002eeb0b7c3504c              # double 2.3665479999999999
	.quad	0x4023ac7607c419a0              # double 9.8368380000000002
	.quad	0x3fec4c447c30d307              # double 0.88431000000000004
	.quad	0x401f3242070b8cfc              # double 7.79908
	.quad	0x3ff86bc408d8ec96              # double 1.5263100000000001
	.quad	0x40113d5cb790fb65              # double 4.3099239999999996
	.quad	0x3ff0762f9ca5bd94              # double 1.0288539999999999
	.quad	0x4021bb845564b663              # double 8.866244
	.quad	0x401fb497fa5d28d0              # double 7.926361
	.quad	0x3fbba6698bb4d489              # double 0.10800800000000001
	.quad	0x4019a0c1fc8f3238              # double 6.4069900000000004
	.quad	0x401427079e59f2bb              # double 5.0381150000000003
	.quad	0x40220256de33269e              # double 9.004569
	.quad	0x40183c947064ecea              # double 6.0591600000000003
	.quad	0x3fe2ae3a3a8e7147              # double 0.58376799999999995
	.quad	0x4009bb6bb1290258              # double 3.2165140000000001
	.quad	0x4023105122318330              # double 9.5318690000000004
	.quad	0x3fd1be8ff327aa69              # double 0.277256
	.quad	0x401729f383f0bae9              # double 5.7909680000000003
	.quad	0x40200690795f676f              # double 8.0128210000000006
	.quad	0x400808909289dae0              # double 3.0041820000000001
	.quad	0x4021bf46455eaee2              # double 8.873583
	.quad	0x401a6922d948dc12              # double 6.6026720000000001
	.quad	0x401276c11a11233e              # double 4.615971
	.quad	0x400f8d9620685554              # double 3.944134
	.quad	0x4013336da87a072d              # double 4.8002229999999999
	.quad	0x3fe0d823422467be              # double 0.52638399999999996
	.quad	0x4019f6d43d03968d              # double 6.4910439999999996
	.quad	0x3fec2cc92146a1a5              # double 0.880467
	.quad	0x40108c70c996b767              # double 4.137149
	.quad	0x4005d3b320535c9e              # double 2.7283689999999998
	.quad	0x4014867cf1c3265b              # double 5.1313360000000001
	.quad	0x401c7ab9b23dd54e              # double 7.1198490000000003
	.quad	0x400b6b367a0f9097              # double 3.4273500000000001
	.quad	0x401acfd113836a83              # double 6.7029459999999998
	.quad	0x400abea704bc2763              # double 3.343092
	.quad	0x4002d09c7ffde721              # double 2.351861
	.quad	0x401978ee28672757              # double 6.3680960000000004
	.quad	0x3ff0e1858bc59b80              # double 1.055059
	.quad	0x400fa0b3d4ae429e              # double 3.953468
	.quad	0x401dd8f14db59579              # double 7.4618580000000003
	.quad	0x4008b03ea704bc27              # double 3.0860569999999998
	.quad	0x40115e83e425aee6              # double 4.3422999999999998
	.quad	0x401bd7b1c0010c6f              # double 6.9606389999999996
	.quad	0x4009228d434a01ac              # double 3.1418710000000001
	.quad	0x401b3539b888722a              # double 6.8019780000000001
	.quad	0x4012b332f01754b0              # double 4.6749989999999997
	.quad	0x401a8164c729f59d              # double 6.6263610000000002
	.quad	0x3ff1365dbfceb789              # double 1.0757730000000001
	.quad	0x401651244a6223e2              # double 5.5792400000000004
	.quad	0x401b5ddd2ae8e1d6              # double 6.8416639999999997
	.quad	0x401c6edaec4a4096              # double 7.108257
	.quad	0x3ff7e62bae03b3ea              # double 1.4936940000000001
	.quad	0x4022d75c6c11a112              # double 9.4206269999999996
	.quad	0x4017d6bb1290257d              # double 5.9596980000000004
	.quad	0x401b3356da0168b6              # double 6.8001360000000002
	.quad	0x40206a66ba493c8a              # double 8.2078150000000001
	.quad	0x40224ea9a3d2d880              # double 9.1536380000000008
	.quad	0x401c26f9335d249e              # double 7.0380599999999998
	.quad	0x40091475a31a4bdc              # double 3.1349900000000002
	.quad	0x40092326e115592e              # double 3.1421640000000002
	.quad	0x4001568c692f6e83              # double 2.1672600000000002
	.quad	0x4016025fa658c4bd              # double 5.5023179999999998
	.quad	0x400907ca643cc07b              # double 3.1288040000000001
	.quad	0x40147f9a49c2c1b1              # double 5.1246119999999999
	.quad	0x400a632fcac8e68e              # double 3.2984309999999999
	.quad	0x40227dd4c76d117b              # double 9.2457639999999994
	.quad	0x402346a875d56f33              # double 9.6380040000000004
	.quad	0x3ff079d4d834091c              # double 1.029744
	.quad	0x401d4ff972474539              # double 7.3281000000000001
	.quad	0x4021564d1a650614              # double 8.6685569999999998
	.quad	0x4010260d0247021d              # double 4.0371589999999999
	.quad	0x40226d987c6327ee              # double 9.2140540000000009
	.quad	0x3fe8c72e275ab7dc              # double 0.77431399999999994
	.quad	0x4000212513b5bf6a              # double 2.016184
	.quad	0x4009422ee41919ac              # double 3.1573159999999998
	.quad	0x400bbe0c5a8155d6              # double 3.467797
	.quad	0x401f69a52263d817              # double 7.8531690000000002
	.quad	0x3fe6f23897204296              # double 0.71706800000000004
	.quad	0x4014f15a8deb0fae              # double 5.235697
	.quad	0x4019399c38b04ab6              # double 6.30626
	.quad	0x4021b082adc4c9c9              # double 8.8447469999999999
	.quad	0x402365a87a072d1b              # double 9.6985510000000001
	.quad	0x401d0f587d6f9768              # double 7.2649860000000004
	.quad	0x40140e2541d8e864              # double 5.013814
	.quad	0x4020675ddd2ae8e2              # double 8.2018880000000003
	.quad	0x4021d1ddc1e7967d              # double 8.9098950000000006
	.quad	0x401d93354c12274a              # double 7.3937580000000001
	.quad	0x4014c7574f722e1b              # double 5.1946690000000002
	.quad	0x4021c417225b749b              # double 8.8829890000000002
	.quad	0x40208413986338b4              # double 8.2579619999999991
	.quad	0x40223f1d3ed527e5              # double 9.1232699999999998
	.quad	0x40222d59b3d07c85              # double 9.0885750000000005
	.quad	0x401a3fe542e557de              # double 6.562398
	.quad	0x4020a305b7cfe586              # double 8.318403
	.quad	0x401aa4fc610f0e91              # double 6.6611190000000002
	.quad	0x402345ef1fddebd9              # double 9.6365899999999999
	.quad	0x40061ebd9018e758              # double 2.7650100000000002
	.quad	0x40180f49cf56eac8              # double 6.0149299999999997
	.quad	0x4020237cdcca70d2              # double 8.069312
	.quad	0x4012145ae5ffa3ba              # double 4.5198780000000003
	.quad	0x400fc8461f9f01b8              # double 3.9727899999999998
	.quad	0x4016b49e01de2691              # double 5.6763839999999997
	.quad	0x400e33a1d323fee3              # double 3.7752110000000001
	.quad	0x3fe3ddc4007570c5              # double 0.62082099999999996
	.quad	0x3ff0b3775b813016              # double 1.0438149999999999
	.quad	0x4005b0d5a5b9628d              # double 2.7113450000000001
	.quad	0x4019f8101f31f46f              # double 6.4922490000000002
	.quad	0x4005b851654d61b3              # double 2.7149990000000002
	.quad	0x4016eb5b2d4d4025              # double 5.7298400000000003
	.quad	0x3ff5f97353b4b2fb              # double 1.3734010000000001
	.quad	0x3ff030d413122b7c              # double 1.0119210000000001
	.quad	0x401dfbeb5b2d4d40              # double 7.4960149999999999
	.quad	0x401624dec1c1d6d0              # double 5.5360060000000004
	.quad	0x40044528283d35eb              # double 2.5337679999999998
	.quad	0x4020ea74c09c3ce2              # double 8.4579219999999999
	.quad	0x4017c06d50657321              # double 5.9379169999999997
	.quad	0x401a939ffd60e94f              # double 6.6441650000000001
	.quad	0x4023e1df548ecd8e              # double 9.9411570000000005
	.quad	0x40216371758e2196              # double 8.6942249999999994
	.quad	0x4010f29bae46cfc8              # double 4.2369219999999999
	.quad	0x4014dfd82773e250              # double 5.2185980000000001
	.quad	0x400ee010c6f7a0b6              # double 3.859407
	.quad	0x400d64406c00da1b              # double 3.6739510000000002
	.quad	0x400534801f75104d              # double 2.6506349999999999
	.quad	0x4015abacb4289119              # double 5.4176510000000002
	.quad	0x3fedf7b5aea3161a              # double 0.93648799999999999
	.quad	0x4015baafff36ac64              # double 5.4323119999999996
	.quad	0x4019981beb18116f              # double 6.3985440000000002
	.quad	0x402058d306a2b170              # double 8.1734849999999994
	.quad	0x401fc5ab3aabcd79              # double 7.9430360000000002
	.quad	0x401765fe974a3401              # double 5.8496040000000002
	.quad	0x40119c97d8cf398f              # double 4.4029230000000004
	.quad	0x4014b3ef284167a9              # double 5.1757169999999997
	.quad	0x40144d03d9a95422              # double 5.0752100000000002
	.quad	0x3fec469d7342edbb              # double 0.88361999999999996
	.quad	0x400cc91a75cd0bb7              # double 3.598195
	.quad	0x401cb0c4156e264e              # double 7.1726229999999997
	.quad	0x401459abf3387161              # double 5.0875700000000004
	.quad	0x4022178f68be2f7b              # double 9.0460159999999998
	.quad	0x4020a427e9531551              # double 8.3206170000000004
	.quad	0x4011f0c069e7fb26              # double 4.4851089999999996
	.quad	0x4022525bd944aa54              # double 9.160857
	.quad	0x4022ea5dd095af29              # double 9.4577469999999994
	.quad	0x3fe480346dc5d639              # double 0.64065000000000005
	.quad	0x3ffc98b827fa1a0d              # double 1.787285
	.quad	0x401475ce5b4245f6              # double 5.1150450000000003
	.quad	0x400f9588e368f084              # double 3.9480149999999998
	.quad	0x400d227a63736cdf              # double 3.6418349999999999
	.quad	0x4022f7a871a3b14b              # double 9.4837070000000007
	.quad	0x40000d6ece13f4aa              # double 2.0065590000000002
	.quad	0x3ff514bad7d7c2ca              # double 1.317561
	.quad	0x3fe23fe1975f2cb6              # double 0.57029799999999997
	.quad	0x4011d338b47c73ef              # double 4.4562710000000001
	.quad	0x4020aabffcdab192              # double 8.3334960000000002
	.quad	0x40102f965b20b806              # double 4.0464719999999996
	.quad	0x4013d9a671ef30a5              # double 4.9625490000000001
	.quad	0x4021afd0aed99cbf              # double 8.8433890000000002
	.quad	0x40173a161e4f7660              # double 5.8067250000000001
	.quad	0x400921d4306e5cd5              # double 3.141518
	.quad	0x402272bb01c92ddc              # double 9.2240830000000002
	.quad	0x40215fc88e79aae7              # double 8.6870770000000004
	.quad	0x3ff1209784ec636b              # double 1.070457
	.quad	0x3ff10a05dd8f92b0              # double 1.0649470000000001
	.quad	0x3ff3e7264a16a487              # double 1.243933
	.quad	0x3ff82e429e0a41a2              # double 1.5112939999999999
	.quad	0x4005349e8815e397              # double 2.650693
	.quad	0x402008c0ce91c8eb              # double 8.0170960000000004
	.quad	0x400682cfd8f0c77e              # double 2.8138730000000001
	.quad	0x400863afb7e90ff9              # double 3.0486749999999998
	.quad	0x4023022b7baecd08              # double 9.5042380000000008
	.quad	0x3fc71843c3a42f1f              # double 0.18042800000000001
	.quad	0x3ff696605ee568a5              # double 1.411713
	.quad	0x3ff3a237cdcca70d              # double 1.227104
	.quad	0x402095ec5f394b7b              # double 8.2928189999999997
	.quad	0x401734983d790753              # double 5.8013620000000001
	.quad	0x40234afcac8e68e4              # double 9.6464590000000001
	.quad	0x3fd3d3b6cbd987c6              # double 0.30979699999999999
	.quad	0x40047ac6045baf53              # double 2.5599479999999999
	.quad	0x3fe8a43fe5c91d15              # double 0.77005000000000001
	.quad	0x4005d55582129457              # double 2.7291669999999999
	.quad	0x4015a638433d6c72              # double 5.4123239999999999
	.quad	0x3fd3ae70c1333b97              # double 0.30752200000000002
	.quad	0x40003f6cacd184c2              # double 2.0309689999999998
	.quad	0x4021bf5bc44bf4cb              # double 8.8737469999999998
	.quad	0x40237c651f3e89a9              # double 9.7429590000000008
	.quad	0x4023ff2064239607              # double 9.9982939999999995
	.quad	0x3ff43e49b1fab96f              # double 1.265207
	.quad	0x400583cfb3311a54              # double 2.6893609999999999
	.quad	0x401537c286f8ad25              # double 5.3044529999999996
	.quad	0x401597cd03537197              # double 5.3982429999999999
	.quad	0x3ff6a3b9ae0c1765              # double 1.4149719999999999
	.quad	0x3ff0fe1869835159              # double 1.0620350000000001
	.quad	0x40170bbd3804534c              # double 5.7614640000000001
	.quad	0x40148ab7564302b4              # double 5.1354649999999999
	.quad	0x401caa550870110a              # double 7.1663399999999999
	.quad	0x400fe54152b0a6fc              # double 3.9869409999999998
	.quad	0x4016f13db7f17375              # double 5.7355869999999998
	.quad	0x4014e7d3910c2c5e              # double 5.2263929999999998
	.quad	0x4020b0ef566490a3              # double 8.3455759999999994
	.quad	0x4023692e83a109d0              # double 9.7054329999999993
	.quad	0x401aa5a469d7342f              # double 6.6617600000000001
	.quad	0x4018a48a9bcfd4bf              # double 6.160685
	.quad	0x3ffc856d5cfaacda              # double 1.782575
	.quad	0x4010682949a56580              # double 4.1017200000000003
	.quad	0x4020c1d29dc725c4              # double 8.3785600000000002
	.quad	0x4022117bfa4c61d8              # double 9.0341489999999993
	.quad	0x401cf50d6b228dca              # double 7.2393090000000004
	.quad	0x40173d3458cd20b0              # double 5.8097700000000003
	.quad	0x3ff7969e3c968944              # double 1.474272
	.quad	0x401c1af89c5e6ff8              # double 7.0263390000000001
	.quad	0x400b92378ab0c88a              # double 3.4463949999999999
	.quad	0x40222769ec2ce465              # double 9.0769800000000007
	.quad	0x4022f5c65c70435f              # double 9.480029
	.quad	0x4022941461b6d43d              # double 9.289218
	.quad	0x401cb8ab4fa48302              # double 7.1803410000000003
	.quad	0x401e7ffc5479d4d8              # double 7.6249859999999998
	.quad	0x3fc22328f9f44d44              # double 0.14169799999999999
	.quad	0x401b01f969e3c969              # double 6.7519280000000004
	.quad	0x4016dcfd4bf0995b              # double 5.7158100000000003
	.quad	0x3ff9c55a7d24180d              # double 1.6106819999999999
	.quad	0x4003d54fbdad7519              # double 2.4791560000000001
	.quad	0x3ff2dbeb18116ebd              # double 1.1786909999999999
	.quad	0x40129f2064239607              # double 4.6553969999999998
	.quad	0x40135b1fab96f21f              # double 4.8389879999999996
	.quad	0x402265410f94c87a              # double 9.1977620000000009
	.quad	0x3fffd4855da27286              # double 1.989385
	.quad	0x4017a0999dcb5782              # double 5.9068360000000002
	.quad	0x3ffa132830a0b1bc              # double 1.629677
	.quad	0x400a965907d91255              # double 3.3234119999999998
	.quad	0x4014fbdbe3c10518              # double 5.2459559999999996
	.quad	0x4004cbfca85caafc              # double 2.5996030000000001
	.quad	0x40231f1758e21965              # double 9.5607249999999996
	.quad	0x401f5835dedf1e08              # double 7.8361429999999998
	.quad	0x400294e4c942d491              # double 2.322702
	.quad	0x4010ed1244a6223e              # double 4.2315149999999999
	.quad	0x4023e0c804102ff9              # double 9.9390260000000001
	.quad	0x4006fd70a3d70a3d              # double 2.8737499999999998
	.quad	0x3fd11633482be8bc              # double 0.26698
	.quad	0x402153743632c1f4              # double 8.6629959999999996
	.quad	0x400e74fd6d7e889c              # double 3.807124
	.quad	0x401a0418d6909aed              # double 6.5040009999999997
	.quad	0x4008a841ede1198b              # double 3.082157
	.quad	0x40127bc382a12f90              # double 4.6208629999999999
	.quad	0x401db4983d790753              # double 7.4263620000000001
	.quad	0x40167e410b630a91              # double 5.6232949999999997
	.quad	0x4003df623076c051              # double 2.4840740000000001
	.quad	0x40019f5be5d9e40d              # double 2.2028120000000002
	.quad	0x401889906cca2db6              # double 6.1343399999999999
	.quad	0x4011f4b05b7cfe58              # double 4.4889539999999997
	.quad	0x400284b3c3e74afd              # double 2.3147959999999999
	.quad	0x3ff4a96f6512a950              # double 1.291366
	.quad	0x40123ac471b47842              # double 4.5573899999999998
	.quad	0x40201fb5d031055c              # double 8.0619340000000008
	.quad	0x40128940bbb1f256              # double 4.634036
	.quad	0x4013c5d67ba237ce              # double 4.9432010000000002
	.quad	0x4017b04a72ead927              # double 5.9221589999999997
	.quad	0x40220c9ff92f2b67              # double 9.0246580000000005
	.quad	0x3ffc4dbad3a604e2              # double 1.768977
	.quad	0x402300667f90d9d7              # double 9.5007819999999991
	.quad	0x3ff48aab8a5ce5b4              # double 1.283855
	.quad	0x4000641bb8c32a8d              # double 2.0488810000000002
	.quad	0x402194866a11ec92              # double 8.7900880000000008
	.quad	0x3ff482f512663411              # double 1.2819719999999999
	.quad	0x401533fbbd7b2032              # double 5.3007650000000002
	.quad	0x4013862174c4cdfb              # double 4.8809870000000002
	.quad	0x40156881e4712e41              # double 5.3520580000000004
	.quad	0x401e1057082491b0              # double 7.5159570000000002
	.quad	0x40184e09fe86833c              # double 6.0762099999999997
	.quad	0x402104bd33d29564              # double 8.5092560000000005
	.quad	0x401ff1b97353b4b3              # double 7.986059
	.quad	0x4016592bc2fc6973              # double 5.5870810000000004
	.quad	0x400015ffe6d58c8f              # double 2.010742
	.quad	0x4010d45aa2e3c537              # double 4.2073770000000001
	.quad	0x3ff53d7e45803cd1              # double 1.3275129999999999
	.quad	0x3ff2a65bea0ba1f5              # double 1.1656150000000001
	.quad	0x3fe08e25c810a56a              # double 0.51735200000000003
	.quad	0x3ff381ce6c093d96              # double 1.2191909999999999
	.quad	0x400ad71eafee6fb5              # double 3.3550390000000001
	.quad	0x3ffcf0da5daf07c0              # double 1.808802
	.quad	0x3fc5d627bf61aa3f              # double 0.170598
	.quad	0x4015a7bfa4c61d86              # double 5.4138169999999999
	.quad	0x40227814f8b588e3              # double 9.2345349999999993
	.quad	0x40174ae2541d8e86              # double 5.8231289999999998
	.quad	0x4020c9c560c7c0f4              # double 8.3940839999999994
	.quad	0x401b9ce4217d284a              # double 6.9032140000000002
	.quad	0x4015b7570c564f98              # double 5.4290430000000001
	.quad	0x400a976b3bb83cf3              # double 3.3239350000000001
	.quad	0x40116140dd3fe197              # double 4.3449739999999997
	.quad	0x3fe6ff540895d0b7              # double 0.71866799999999997
	.quad	0x4023ba98aa8650e7              # double 9.8644459999999991
	.quad	0x3ff355193708aac9              # double 1.2082759999999999
	.quad	0x3ff2b7dd872f33ca              # double 1.169889
	.quad	0x4006d73d188f42ff              # double 2.8550970000000002
	.quad	0x40123bcdbbe0157f              # double 4.5584020000000001
	.quad	0x400aaad601ffb481              # double 3.3334160000000002
	.quad	0x4022d2ac753e707e              # double 9.4114719999999998
	.quad	0x3feca8c586876e1e              # double 0.89560200000000001
	.quad	0x4000a07d4e09784f              # double 2.0783640000000001
	.quad	0x4016af25e56cd6c3              # double 5.6710430000000001
	.quad	0x401f8dcf4623d0c0              # double 7.8884860000000003
	.quad	0x401e9f26f1dc50ce              # double 7.6554219999999997
	.quad	0x3ffde976bc1effa0              # double 1.8694980000000001
	.quad	0x4019e1dde37585be              # double 6.4705729999999999
	.quad	0x4004ca6c1a048e04              # double 2.5988389999999999
	.quad	0x401000142f61ed5b              # double 4.0000770000000001
	.quad	0x3fc7b6c3760bf5d8              # double 0.18526500000000001
	.quad	0x4001cd44dca8e2e3              # double 2.2252290000000001
	.quad	0x401d62b3cc4ac6ce              # double 7.3463890000000003
	.quad	0x400a4afab53d640f              # double 3.2866110000000002
	.quad	0x3ff51e5f30e7ff58              # double 1.3199149999999999
	.quad	0x4011a1426fe718a8              # double 4.4074799999999996
	.quad	0x40216821d10b1fef              # double 8.7033830000000005
	.quad	0x400729906cca2db6              # double 2.895295
	.quad	0x4003feec39799e52              # double 2.4994740000000002
	.quad	0x3fbdaf4adbc664d4              # double 0.115956
	.quad	0x4011c37b07075b3e              # double 4.4408989999999999
	.quad	0x400139780baa582e              # double 2.1530610000000001
	.quad	0x40231a3810e88590              # double 9.5512090000000001
	.quad	0x4021a81669ced0b3              # double 8.8282959999999999
	.quad	0x401a4f3e89a88ace              # double 6.5773869999999999
	.quad	0x4006db8ed1bf7ad5              # double 2.8572060000000001
	.quad	0x3ff6c02d16b97fe9              # double 1.421918
	.quad	0x4021a1613d31b9b6              # double 8.8151949999999992
	.quad	0x4013d6fd651b0ccc              # double 4.9599510000000002
	.quad	0x4010d3edd8b60f1b              # double 4.2069619999999999
	.quad	0x3fdc59af9ebe9c88              # double 0.44297399999999998
	.quad	0x40220159c4977425              # double 9.0026379999999993
	.quad	0x40150bb8800eae19              # double 5.2614460000000003
	.quad	0x40012a411c2a0232              # double 2.145632
	.quad	0x3fe70346dc5d6388              # double 0.71914999999999996
	.quad	0x40188e49f51697f2              # double 6.138954
	.quad	0x40230877681669cf              # double 9.5165360000000003
	.quad	0x4018af1843c3a42f              # double 6.1709909999999999
	.quad	0x4018d5c63ae2541e              # double 6.2087640000000004
	.quad	0x3ff1cb49e01de269              # double 1.112131
	.quad	0x401cfaa9f7b5aea3              # double 7.2447889999999999
	.quad	0x40216abe6a337a81              # double 8.7084840000000003
	.quad	0x4011ecb6848beb5b              # double 4.4811649999999998
	.quad	0x401a1168b5cbff47              # double 6.5170009999999996
	.quad	0x3ffec957cd466f50              # double 1.924156
	.quad	0x40046ebf65dbfceb              # double 2.5540759999999998
	.quad	0x4019a7bfa4c61d86              # double 6.4138169999999999
	.quad	0x401da636b0963561              # double 7.412318
	.quad	0x40106abf76a2f48c              # double 4.1042459999999998
	.quad	0x401a41f36262cba7              # double 6.5644049999999998
	.quad	0x401663e186983516              # double 5.5975400000000004
	.quad	0x3ff76b24a6a875d5              # double 1.4636579999999999
	.quad	0x40188f46aa087ca6              # double 6.1399179999999998
	.quad	0x3ffad798d8a979e1              # double 1.6776359999999999
	.quad	0x4005f9799e518f3f              # double 2.7468140000000001
	.quad	0x400d3f39d1b2e59b              # double 3.655872
	.quad	0x400f3634549b62c7              # double 3.9014669999999998
	.quad	0x3fd82cba732df506              # double 0.37773000000000001
	.quad	0x4017475360d02470              # double 5.8196539999999999
	.quad	0x3ff4fcbb3c81908e              # double 1.3117019999999999
	.quad	0x40056cca2db61bb0              # double 2.6781199999999998
	.quad	0x401d0221c8a7a41e              # double 7.2520819999999997
	.quad	0x3fed7f562174c4ce              # double 0.921794
	.quad	0x400fa28f5c28f5c3              # double 3.9543750000000002
	.quad	0x4014f0caa326e115              # double 5.2351479999999997
	.quad	0x4000683dbc23315d              # double 2.0508989999999998
	.quad	0x400278c2a454de7f              # double 2.3089650000000002
	.quad	0x3feea04295a6c5d2              # double 0.957063
	.quad	0x4016aad4f5903a75              # double 5.6668279999999998
	.quad	0x40117b3311a543f2              # double 4.3703120000000002
	.quad	0x4021f3b341e14be0              # double 8.9759770000000003
	.quad	0x4016ace032db1e9f              # double 5.6688239999999999
	.quad	0x4016b733226c3b92              # double 5.6789059999999996
	.quad	0x4013e268900c521e              # double 4.9711020000000001
	.quad	0x401394b380cb6c7a              # double 4.8952159999999996
	.quad	0x401fe0225742dcf4              # double 7.9688809999999997
	.quad	0x40163c94b380cb6c              # double 5.5591609999999996
	.quad	0x400bf7d06bbdbe3c              # double 3.496003
	.quad	0x3fd2fd2a62aa1944              # double 0.29670200000000002
	.quad	0x4021074a558ea7ce              # double 8.5142389999999999
	.quad	0x3ff9b48f53c579f2              # double 1.606582
	.quad	0x3fe7ec1a048e043a              # double 0.74757099999999999
	.quad	0x3fee5d701d9f4d38              # double 0.94890600000000002
	.quad	0x3fe6743419e30015              # double 0.701685
	.quad	0x401ca11b1d92b7fe              # double 7.15733
	.quad	0x3ffaf52220bc382a              # double 1.684847
	.quad	0x400b8f7c243dccea              # double 3.4450609999999999
	.quad	0x401b941919ac7970              # double 6.8946269999999998
	.quad	0x401c5caff6d33094              # double 7.0905149999999999
	.quad	0x40205d6bebe1650a              # double 8.1824639999999995
	.quad	0x3fc5973d9ec70004              # double 0.16867799999999999
	.quad	0x4011978f68be2f7b              # double 4.3980079999999999
	.quad	0x3ff66ec4a4095f24              # double 1.4020429999999999
	.quad	0x40189e9707182236              # double 6.1548730000000003
	.quad	0x401796bce8533b10              # double 5.8972049999999996
	.quad	0x40221dbb9cf9a06a              # double 9.0580719999999992
	.quad	0x4023a4f3775b8130              # double 9.8221699999999998
	.quad	0x3ff0b922962cfd8f              # double 1.045199
	.quad	0x3fff719d66adb403              # double 1.965238
	.quad	0x401e5fcf3dc054ef              # double 7.5935639999999997
	.quad	0x402389f44d445671              # double 9.7694419999999997
	.quad	0x4013c51761459536              # double 4.9424720000000004
	.quad	0x4017b41c3efae792              # double 5.9258889999999997
	.quad	0x40191dae81882adc              # double 6.2789859999999997
	.quad	0x3fe2b58298cc1440              # double 0.58465699999999998
	.quad	0x4020ba3854046413              # double 8.3637110000000003
	.quad	0x401db361dc93ea2d              # double 7.4251779999999998
	.quad	0x3fff47fed20296b3              # double 1.955077
	.quad	0x3ffc9f37329c347f              # double 1.7888710000000001
	.quad	0x4015a79e9d0e9920              # double 5.413691
	.quad	0x4023681322f27350              # double 9.7032710000000009
	.quad	0x4015a1fafc8b007a              # double 5.4081840000000003
	.quad	0x4012a309c7ffde72              # double 4.6592169999999999
	.quad	0x401137c0f4517614              # double 4.3044469999999997
	.quad	0x40102cfd08d4bad8              # double 4.0439340000000001
	.quad	0x4002386876e1dead              # double 2.2775430000000001
	.quad	0x4017e8f47304039b              # double 5.9774950000000002
	.quad	0x40028864020817fc              # double 2.3165969999999998
	.quad	0x3fdc3c0c1fc8f323              # double 0.44116499999999997
	.quad	0x402104c92146a1a5              # double 8.509347
	.quad	0x402104e6c093d966              # double 8.5095729999999996
	.quad	0x3ff4f46aa087ca64              # double 1.3096719999999999
	.quad	0x3fea41c6088d6d3b              # double 0.82052899999999995
	.quad	0x401924666ec9e237              # double 6.2855470000000002
	.quad	0x4023d2f512663411              # double 9.9120259999999991
	.quad	0x4017380d3cff64d0              # double 5.8047380000000004
	.quad	0x40207dcbbc2b94d9              # double 8.2456949999999996
	.quad	0x3fd0f0025bfad29a              # double 0.26464900000000002
	.quad	0x400f9d188f42fe82              # double 3.9517069999999999
	.quad	0x4021ffd32c625e9a              # double 8.9996580000000002
	.quad	0x4017582fd75e2047              # double 5.8361200000000002
	.quad	0x4020417bd8be7297              # double 8.1278980000000001
	.quad	0x401e23b57c4e2f38              # double 7.534872
	.quad	0x3fb7314ca925fe97              # double 0.090595999999999996
	.quad	0x40145c3a860dcb9b              # double 5.0900670000000003
	.quad	0x401344549b62c775              # double 4.8167289999999996
	.quad	0x3ff2fea3df6db941              # double 1.187168
	.quad	0x400ad1f79420b3d5              # double 3.3525230000000001
	.quad	0x401dcb317efe0ce1              # double 7.4484310000000002
	.quad	0x400bbcf67b1c0011              # double 3.4672670000000001
	.quad	0x401935f41aef6f8f              # double 6.302689
	.quad	0x40218760e0eb67c3              # double 8.7644110000000008
	.quad	0x4021342c5e2cdc01              # double 8.6019009999999998
	.quad	0x401751d1d4738a3b              # double 5.8299019999999997
	.quad	0x400af1b25f633ce6              # double 3.3680159999999999
	.quad	0x4015afd50225742e              # double 5.4217110000000002
	.quad	0x400530e1b4bb5e0f              # double 2.6488679999999998
	.quad	0x401923b70ef56649              # double 6.284878
	.quad	0x4022e3ea0ba1f4b2              # double 9.4451450000000001
	.quad	0x3fd32ee84ad794a7              # double 0.299738
	.quad	0x3ffd88f861a60d45              # double 1.8459399999999999
	.quad	0x3fe8bc2dadb8348f              # double 0.77297099999999996
	.quad	0x401ca1c75818c5ca              # double 7.1579870000000003
	.quad	0x400935e6362a5e78              # double 3.1513179999999998
	.quad	0x400d878f25a250f8              # double 3.6911909999999999
	.quad	0x400df88c1db0142f              # double 3.7463609999999998
	.quad	0x401e016872b020c5              # double 7.5013750000000003
	.quad	0x4022b788db0574b4              # double 9.3584659999999999
	.quad	0x40056aec8d5c7475              # double 2.6772089999999999
	.quad	0x40051146e4c0df59              # double 2.6334360000000001
	.quad	0x3ff4aa854477ff15              # double 1.291631
	.quad	0x40116691212513b6              # double 4.3501630000000002
	.quad	0x4006dc2a8869c66d              # double 2.8575029999999999
	.quad	0x40238021f2990f30              # double 9.7502589999999998
	.quad	0x4019c5019f3c70ca              # double 6.4423890000000004
	.quad	0x3ff96323bbc6eb0b              # double 1.5867039999999999
	.quad	0x40161dca8e2e2b8c              # double 5.5290929999999996
	.quad	0x40218d6883771865              # double 8.7761879999999994
	.quad	0x400f30e66cb10343              # double 3.8988770000000001
	.quad	0x401a478e1932d6ed              # double 6.5698780000000001
	.quad	0x3ffc664e48626f61              # double 1.774977
	.quad	0x4022eec9e236c15d              # double 9.4663839999999996
	.quad	0x3fdd4562e09fe868              # double 0.45735999999999999
	.quad	0x401a625892684cf0              # double 6.5960409999999996
	.quad	0x4012f219a847b246              # double 4.7364259999999998
	.quad	0x401b1c8abd5dc400              # double 6.7778729999999996
	.quad	0x40092ec28b2a6b0e              # double 3.1478320000000002
	.quad	0x4021f42edbb59ddc              # double 8.9769199999999997
	.quad	0x3ffafb96af038e2a              # double 1.686423
	.quad	0x401f65171e29b6b3              # double 7.8487210000000002
	.quad	0x400a72e275ab7dc8              # double 3.3060960000000001
	.quad	0x40176e7ddca4b125              # double 5.8579020000000002
	.quad	0x4006ffaca3619978              # double 2.874841
	.quad	0x401a14e26d4801f7              # double 6.5203949999999997
	.quad	0x4022c23ec02f2f98              # double 9.3793849999999991
	.quad	0x401a1e5de15ca6ca              # double 6.529655
	.quad	0x401c72a38b8ae31d              # double 7.1119519999999996
	.quad	0x4021c06573215fcc              # double 8.8757739999999998
	.quad	0x401f30c176577532              # double 7.7976130000000001
	.quad	0x400b260ed80a17b1              # double 3.393583
	.quad	0x4015e018a43bb40b              # double 5.4688439999999998
	.quad	0x4008614d72799a20              # double 3.0475110000000001
	.quad	0x401268d5410f94c8              # double 4.6023759999999996
	.quad	0x40139f90d9d7774b              # double 4.9058260000000002
	.quad	0x3ff71cca70d1fa33              # double 1.444529
	.quad	0x3fe02fdb8fde2ef5              # double 0.50584200000000001
	.quad	0x4016f6583e8576cd              # double 5.7405710000000001
	.quad	0x4010104ddb5525cc              # double 4.0159219999999998
	.quad	0x40016b4289118c19              # double 2.1773729999999998
	.quad	0x4021091a543f1c76              # double 8.5177790000000009
	.quad	0x4020a6a465a57647              # double 8.3254730000000006
	.quad	0x40143e5b8561d430              # double 5.0608959999999996
	.quad	0x3fd569df97aaac11              # double 0.33458700000000002
	.quad	0x40101e718a86d71f              # double 4.0297299999999998
	.quad	0x40080d666a98244f              # double 3.0065430000000002
	.quad	0x4020fa324c836651              # double 8.4886649999999992
	.quad	0x3fd41ea78af3e469              # double 0.31437100000000001
	.quad	0x4020d10d38cda6e7              # double 8.4083039999999993
	.quad	0x4015bc91d14e3bcd              # double 5.4341499999999998
	.quad	0x401cb970b49e01de              # double 7.1810939999999999
	.quad	0x4022167296f6512b              # double 9.0438430000000007
	.quad	0x40035cad9ad85dfb              # double 2.4202530000000002
	.quad	0x4001bf77af64063a              # double 2.2184900000000001
	.quad	0x400c99c94f69ca9f              # double 3.575091
	.quad	0x4006a981beb18117              # double 2.832767
	.quad	0x401e198d477bbf94              # double 7.524953
	.quad	0x3ff5dc4007570c56              # double 1.3662719999999999
	.quad	0x4023dfa376922d95              # double 9.9367940000000007
	.quad	0x402065c28f5c28f6              # double 8.1987500000000004
	.quad	0x3fe55c33721d53ce              # double 0.66750500000000001
	.quad	0x40031c8c9320d994              # double 2.3889399999999998
	.quad	0x4008355ef1fddebe              # double 3.0260600000000002
	.quad	0x4018f5b78cc9a77e              # double 6.2399579999999997
	.quad	0x3fe1800000000000              # double 0.546875
	.quad	0x3ff602e557de0d67              # double 1.375707
	.quad	0x3ffcc3c18b502abb              # double 1.7977920000000001
	.quad	0x3fc3e2de8709741d              # double 0.155361
	.quad	0x4011d44f5d35653d              # double 4.4573340000000004
	.quad	0x401f6eb4202d9cf1              # double 7.8581089999999997
	.quad	0x402166fd21ff2e49              # double 8.7011500000000002
	.quad	0x402229cbab649d39              # double 9.0816320000000008
	.quad	0x402294da9003eea2              # double 9.2907299999999999
	.quad	0x400f2407cc7d1bb5              # double 3.8925930000000002
	.quad	0x4013d6ebd4cfd08d              # double 4.9598839999999997
	.quad	0x401c663992c8c500              # double 7.0998289999999997
	.quad	0x4012993682730c67              # double 4.6496219999999999
	.quad	0x402310ce0b912dba              # double 9.5328219999999995
	.quad	0x3ffe2525892684cf              # double 1.884069
	.quad	0x4023e487db2b3461              # double 9.9463489999999996
	.quad	0x3fd338f7985271bd              # double 0.30035200000000001
	.quad	0x400c83c536d655e3              # double 3.5643410000000002
	.quad	0x3fd225fa658c4bd3              # double 0.28356799999999999
	.quad	0x40100f8b1572580c              # double 4.0151789999999998
	.quad	0x4000239cd8127b2d              # double 2.0173890000000001
	.quad	0x4015571e29b6b2af              # double 5.3350759999999999
	.quad	0x4023db9ffd60e94f              # double 9.9289550000000001
	.quad	0x400836fb8f57f738              # double 3.0268470000000001
	.quad	0x400003a647fdc593              # double 2.001782
	.quad	0x3fff5668c2613900              # double 1.958596
	.quad	0x3ff296f21f6cacd2              # double 1.1618520000000001
	.quad	0x401cb892253111f1              # double 7.1802450000000002
	.quad	0x40205e9984a0e411              # double 8.1847650000000005
	.quad	0x4023cae72da122fb              # double 9.8962950000000002
	.quad	0x3fef44fe36d22425              # double 0.97717200000000004
	.quad	0x40207fff79c842fa              # double 8.2499959999999994
	.quad	0x4011c5fbb517a461              # double 4.4433429999999996
	.quad	0x40115802c0a4a05e              # double 4.3359480000000001
	.quad	0x401ea0068db8bac7              # double 7.6562749999999999
	.quad	0x3ff7425aee631f8a              # double 1.4537
	.quad	0x4018dc3c5bd0e12f              # double 6.2150740000000004
	.quad	0x400f484b5dcc63f1              # double 3.9102999999999999
	.quad	0x40154b9e060fe47a              # double 5.3238450000000004
	.quad	0x4005bbd0e12e83a1              # double 2.716707
	.quad	0x3fdf272862f5989e              # double 0.486765
	.quad	0x4004a006d0d4994a              # double 2.578138
	.quad	0x40192e3ac0c62e4d              # double 6.2951459999999999
	.quad	0x4019878b3700474e              # double 6.3823670000000003
	.quad	0x402173825e13b18e              # double 8.7256040000000006
	.quad	0x4022361f7d73c925              # double 9.1057089999999992
	.quad	0x40132cf80dc33722              # double 4.7939150000000001
	.quad	0x4007926e115592da              # double 2.9464990000000002
	.quad	0x4018c512231832fd              # double 6.1924520000000003
	.quad	0x4001be4606748e47              # double 2.2179069999999999
	.quad	0x401bbcecc814d728              # double 6.9344970000000004
	.quad	0x401be83f0bae89ec              # double 6.9768030000000003
	.quad	0x3ff0a681a9b8cb8e              # double 1.040651
	.quad	0x3fd6a60913a4f872              # double 0.35388399999999998
	.quad	0x4022bda16616b54e              # double 9.3703719999999997
	.quad	0x401edafdda8bd231              # double 7.7138590000000002
	.quad	0x4013828a1dfb938a              # double 4.8774800000000003
	.quad	0x400326e221c8a7a4              # double 2.3939859999999999
	.quad	0x4019269ced0b30b6              # double 6.2877080000000003
	.quad	0x400dca369fcf3dc0              # double 3.7237369999999999
	.quad	0x400d1dd6e04c0592              # double 3.63957
	.quad	0x402015fce3150dae              # double 8.0429449999999996
	.quad	0x3ffe1f58c08b75ea              # double 1.8826529999999999
	.quad	0x40187fe79ee02a78              # double 6.1249070000000003
	.quad	0x400978383ad9f0a2              # double 3.1837010000000001
	.quad	0x4007c8d972cd7cf6              # double 2.973071
	.quad	0x3fec1e42e1262025              # double 0.87869399999999998
	.quad	0x3ff4b2f76e6106ab              # double 1.293693
	.quad	0x40169f294dd72368              # double 5.6554310000000001
	.quad	0x3ff1d89df1172ef1              # double 1.1153850000000001
	.quad	0x40021b4245f5ad97              # double 2.2633100000000002
	.quad	0x401c72bbecaab8a6              # double 7.1120450000000002
	.quad	0x401f5816f0068db9              # double 7.8360250000000002
	.quad	0x3fd3f42784a9478d              # double 0.31177700000000003
	.quad	0x400a6b3fe9fadafd              # double 3.302368
	.quad	0x400279d6f112fd33              # double 2.3094920000000001
	.quad	0x40037ba237cdcca7              # double 2.435368
	.quad	0x3fc128522ea0fd3b              # double 0.134043
	.quad	0x4011810b1feeb2d1              # double 4.3760190000000003
	.quad	0x402093691212513b              # double 8.2879109999999994
	.quad	0x4023096e158750c2              # double 9.5184180000000005
	.quad	0x4022fff4128bf3bf              # double 9.4999090000000006
	.quad	0x401d09cf13cee9dd              # double 7.2595789999999996
	.quad	0x400c7f2ecf206424              # double 3.5621010000000002
	.quad	0x4010c7f5e84f0953              # double 4.1952740000000004
	.quad	0x4018c28e0c9d9d34              # double 6.1899949999999997
	.quad	0x400010e560418937              # double 2.0082499999999999
	.quad	0x4022c1118c197e56              # double 9.3770869999999995
	.quad	0x3ff165c4eb56fb8f              # double 1.0873459999999999
	.quad	0x4012eb790fb65669              # double 4.7299540000000002
	.quad	0x401f63f5b5fa2270              # double 7.8476169999999996
	.quad	0x400e1526d8b1dd5d              # double 3.7603279999999999
	.quad	0x401befb43d89ce4a              # double 6.9840859999999996
	.quad	0x4010e99e518f3ecd              # double 4.2281430000000002
	.quad	0x4009ed490e66cb10              # double 3.2408619999999999
	.quad	0x4014789e774eebf6              # double 5.1177919999999997
	.quad	0x3fefa3c21187e7c0              # double 0.98873999999999995
	.quad	0x4021beba0620ab71              # double 8.8725129999999996
	.quad	0x4020c65492ff4ba5              # double 8.3873639999999998
	.quad	0x400e8ad46f587d70              # double 3.8177880000000002
	.quad	0x401325b18548a9bd              # double 4.78681
	.quad	0x401fe102ff8ec0f9              # double 7.9697380000000004
	.quad	0x401b071eafee6fb5              # double 6.7569530000000002
	.quad	0x4007c75ab7dc7ac0              # double 2.9723410000000001
	.quad	0x4008e256366d7a57              # double 3.1105160000000001
	.quad	0x3ff74ea8da7f3cf7              # double 1.456704
	.quad	0x3fe1c2480e8c8abd              # double 0.55496599999999996
	.quad	0x3ff5a39a38fbca10              # double 1.3524419999999999
	.quad	0x3ffcf59578a2a90d              # double 1.809957
	.quad	0x401dfd42c3c9eecc              # double 7.497325
	.quad	0x400fdffe6d58c8ef              # double 3.984372
	.quad	0x4004609917939a7c              # double 2.547167
	.quad	0x401522ac753e707e              # double 5.2838609999999999
	.quad	0x401673a08398a655              # double 5.6129170000000004
	.quad	0x401a28f605ab3aac              # double 6.5400010000000002
	.quad	0x400455b91f70de8f              # double 2.5418569999999998
	.quad	0x3f6a2834d26fa3fd              # double 0.0031930000000000001
	.quad	0x4011b05100a393ee              # double 4.4221839999999997
	.quad	0x401276adb402d16c              # double 4.6158970000000004
	.quad	0x40150ca9ac365450              # double 5.2623660000000001
	.quad	0x401e4a350d2806af              # double 7.5724679999999997
	.quad	0x401f47a89331a08c              # double 7.819979
	.quad	0x401b40c4588a04d1              # double 6.8132489999999999
	.quad	0x3fb72cb641700cd8              # double 0.090525999999999995
	.quad	0x4015a56e264e4862              # double 5.4115529999999996
	.quad	0x40220aa044ae85ba              # double 9.0207540000000002
	.quad	0x401400780fdc1616              # double 5.0004580000000001
	.quad	0x4004f96a6a01259a              # double 2.621785
	.quad	0x4021e9376d549731              # double 8.9555009999999999
	.quad	0x3fc756b00ffda405              # double 0.182333
	.quad	0x402153bf727136a4              # double 8.6635699999999999
	.quad	0x40043a072d1aeb3e              # double 2.5283340000000001
	.quad	0x401c9ec0f88333fd              # double 7.1550330000000004
	.quad	0x4021f2e429e0a41a              # double 8.9743969999999997
	.quad	0x4018e0fe047d3d43              # double 6.2197190000000004
	.quad	0x4008edf1e0828c37              # double 3.1161840000000001
	.quad	0x401c5598e10cf5b2              # double 7.0835910000000002
	.quad	0x40060db9c7368ad7              # double 2.7567020000000002
	.quad	0x3fe8e51f3e89a88b              # double 0.77796900000000002
	.quad	0x400fcc0b5675579b              # double 3.974631
	.quad	0x401939aaa3ad18d2              # double 6.3063149999999997
	.quad	0x4010a378ee286727              # double 4.1596409999999997
	.quad	0x3ffcec9081c2e33f              # double 1.807755
	.quad	0x40005042d8c2a455              # double 2.0391900000000001
	.quad	0x4014aa265f0f5a10              # double 5.1661619999999999
	.quad	0x4010fe618ce2d1f2              # double 4.2484190000000002
	.quad	0x401b3c6088d6d3b7              # double 6.8089620000000002
	.quad	0x401e128f5c28f5c3              # double 7.5181250000000003
	.quad	0x400034445aa2e3c5              # double 2.0255209999999999
	.quad	0x40215683a109d063              # double 8.6689729999999994
	.quad	0x401a5f266ba493c9              # double 6.5929200000000003
	.quad	0x400946d8b1dd5d3e              # double 3.1595930000000001
	.quad	0x4018b19ac79702e6              # double 6.1734419999999997
	.quad	0x40210a0e8427418d              # double 8.5196419999999993
	.quad	0x4017c90afe60c38f              # double 5.9463309999999998
	.quad	0x4018e4c3c18b502b              # double 6.2234030000000002
	.quad	0x3ff275a426bb55ac              # double 1.153721
	.quad	0x400f25a14488c60d              # double 3.8933740000000001
	.quad	0x40155606fac6045c              # double 5.3340110000000003
	.quad	0x4008b3c9abb01c93              # double 3.0877870000000001
	.quad	0x401155cf67b1c001              # double 4.333799
	.quad	0x4011a84a0e410b63              # double 4.414345
	.quad	0x40232cacaff6d331              # double 9.5872550000000007
	.quad	0x40223efbd273d5bb              # double 9.1230150000000005
	.quad	0x401e1bfd71b04684              # double 7.5273339999999997
	.quad	0x4013dcf2495e17e3              # double 4.9657679999999997
	.quad	0x3ff78306e5cd4ed3              # double 1.469489
	.quad	0x401b6f90539fba45              # double 6.858949
	.quad	0x4009c539fba450ad              # double 3.2213020000000001
	.quad	0x400f6052d666a982              # double 3.9220329999999999
	.quad	0x402121c0a8d21bc1              # double 8.5659229999999997
	.quad	0x400746b6177ea1c7              # double 2.9095270000000002
	.quad	0x4011237154003255              # double 4.2846120000000001
	.quad	0x4021f1f4b1ee2435              # double 8.9725699999999993
	.quad	0x400a8e019b0ab2e1              # double 3.3193389999999998
	.quad	0x3fe6b7a3db3bfb59              # double 0.70991700000000002
	.quad	0x401120e66cb10343              # double 4.2821290000000003
	.quad	0x401f8779207d4e09              # double 7.8822979999999995
	.quad	0x401a3502ababead5              # double 6.551768
	.quad	0x3ff3c32ebe596c83              # double 1.235152
	.quad	0x4002ce9dd7ecbb80              # double 2.3508870000000002
	.quad	0x4003a574b407032a              # double 2.4557890000000002
	.quad	0x4015f0ff540895d1              # double 5.4853490000000003
	.quad	0x400d0dae3e6c4c59              # double 3.6316799999999998
	.quad	0x401949d66adb402d              # double 6.3221069999999999
	.quad	0x4023db443d46b26c              # double 9.928255
	.quad	0x401872235b4edb2f              # double 6.1114629999999996
	.quad	0x40189011904b3c3e              # double 6.1406919999999996
	.quad	0x400996d97b30f8c6              # double 3.1986569999999999
	.quad	0x4010d17b5286b591              # double 4.2045719999999998
	.quad	0x4014419c5a3e39f7              # double 5.0640729999999996
	.quad	0x3ff7920d130df9be              # double 1.473157
	.quad	0x4020a283f4eca687              # double 8.3174130000000002
	.quad	0x40228fa072d1aeb4              # double 9.2805210000000002
	.quad	0x3ff3c81d3aa369fd              # double 1.236356
	.quad	0x400963e3193f6c27              # double 3.1737730000000002
	.quad	0x401824b6a619da9d              # double 6.0358530000000004
	.quad	0x401be62aa19439de              # double 6.9747719999999997
	.quad	0x40100b7952d234ec              # double 4.0112050000000004
	.quad	0x40232e5492ff4ba5              # double 9.5904889999999998
	.quad	0x402158b45ae5ffa4              # double 8.6732510000000004
	.quad	0x4010b5757d5a9eb2              # double 4.177206
	.quad	0x401ab25460aa64c3              # double 6.67415
	.quad	0x3fe1fa76534373f3              # double 0.56182399999999999
	.quad	0x4020bb6262cba733              # double 8.3659850000000002
	.quad	0x4013d51e75360d02              # double 4.9581239999999998
	.quad	0x4020c83ba3443d47              # double 8.3910800000000005
	.quad	0x40130569f4906035              # double 4.755287
	.quad	0x3ff9f9a38fbca106              # double 1.6234470000000001
	.quad	0x401ab775fb2edfe7              # double 6.6791609999999997
	.quad	0x401e08aa433508f6              # double 7.5084619999999997
	.quad	0x4003d0bf1a5ca298              # double 2.4769269999999999
	.quad	0x401c593b7d84901d              # double 7.0871409999999999
	.quad	0x401fccd0bb6ed677              # double 7.9500149999999996
	.quad	0x4020192f6e82949a              # double 8.0491899999999994
	.quad	0x4021548c0ce91c8f              # double 8.6651310000000006
	.quad	0x400dd2e0e30446b7              # double 3.7279680000000002
	.quad	0x401d335b0bbf50e3              # double 7.3001519999999998
	.quad	0x40033e2de8709742              # double 2.4053610000000001
	.quad	0x40211a73f748a15a              # double 8.5516660000000009
	.quad	0x400d9538ac18f81f              # double 3.6978620000000002
	.quad	0x4008bc968943e100              # double 3.0920839999999998
	.quad	0x401151572580c309              # double 4.329434
	.quad	0x40233e96c3fc43b3              # double 9.6222440000000002
	.quad	0x4005021d10b1feeb              # double 2.6260319999999999
	.quad	0x4011d7481b21c476              # double 4.4602360000000001
	.quad	0x40146d7cf5f4e443              # double 5.106922
	.quad	0x400387b1c0010c6f              # double 2.4412569999999998
	.quad	0x4023d62b27cbf6e4              # double 9.918298
	.quad	0x40213739b024f65a              # double 8.6078620000000008
	.quad	0x4019c2d77318fc50              # double 6.4402749999999997
	.quad	0x4010f59ea57214f0              # double 4.2398629999999997
	.quad	0x3fe8aa7bd48cb4af              # double 0.77081100000000002
	.quad	0x4003bdcf0307f23d              # double 2.4676800000000001
	.quad	0x3fe10667f90d9d77              # double 0.53203199999999995
	.quad	0x3fe534e54f7a9197              # double 0.66270700000000005
	.quad	0x4020e0aa00192a73              # double 8.4387969999999992
	.quad	0x40019fe8ee6b8306              # double 2.2030810000000001
	.quad	0x3fd7763e4abe6a33              # double 0.36659199999999997
	.quad	0x40218882491afc05              # double 8.7666190000000004
	.quad	0x400dd2778140dd40              # double 3.7277670000000001
	.quad	0x401508c3f3e0370d              # double 5.2585600000000001
	.quad	0x402361cd5f99c38b              # double 9.6910199999999999
	.quad	0x4010f374794ea077              # double 4.237749
	.quad	0x4012cae2da554b8c              # double 4.6981310000000001
	.quad	0x401a90d0247021d1              # double 6.641419
	.quad	0x4014f1f926c7eae6              # double 5.2363020000000002
	.quad	0x4018d61309c7ffde              # double 6.2090569999999996
	.quad	0x401e87d1782d3847              # double 7.6326349999999996
	.quad	0x401e9c0ca600b029              # double 7.6523919999999998
	.quad	0x40218dd3bafd9770              # double 8.7770060000000001
	.quad	0x3ff0e75ee99a62ed              # double 1.056487
	.quad	0x4017a8672756861f              # double 5.9144560000000004
	.quad	0x40034577d955714c              # double 2.4089200000000002
	.quad	0x40183e94ab1d4f9c              # double 6.0611139999999999
	.quad	0x401164a6223e186a              # double 4.3482900000000004
	.quad	0x401d6a2e3c536d65              # double 7.3536919999999997
	.quad	0x40092e9c4545846f              # double 3.1477590000000002
	.quad	0x40049a0cf1800a7c              # double 2.5752199999999998
	.quad	0x40024cc037931444              # double 2.2874759999999998
	.quad	0x402098df58c08b76              # double 8.2985790000000001
	.quad	0x4021c314445aa2e4              # double 8.8810140000000004
	.quad	0x401aa0e1719f7f8d              # double 6.6571100000000003
	.quad	0x40218ffcfc3f811f              # double 8.7812269999999994
	.quad	0x4016f99e94ab1d50              # double 5.7437690000000003
	.quad	0x401acac4b4d056c5              # double 6.698016
	.quad	0x40005b877ab32485              # double 2.044692
	.quad	0x40099ea57214f052              # double 3.202464
	.quad	0x3ff2670d1fa33376              # double 1.1501589999999999
	.quad	0x40201ce7253da72a              # double 8.0564509999999991
	.quad	0x401035e071c53f3a              # double 4.0526140000000002
	.quad	0x400fd4fc610f0e91              # double 3.9789970000000001
	.quad	0x3ff61700cd855971              # double 1.3806160000000001
	.quad	0x401d1844d013a92a              # double 7.2736999999999998
	.quad	0x40019a6a44417870              # double 2.2003979999999999
	.quad	0x400308f6cefed634              # double 2.3793769999999999
	.quad	0x3ffcdcf4623d0bfa              # double 1.803944
	.quad	0x3fe3b8151a437825              # double 0.61622100000000002
	.quad	0x3ff9647dc37a3db4              # double 1.5870340000000001
	.quad	0x4012b1950331e3a8              # double 4.6734200000000001
	.quad	0x4022c89edbf8b9bb              # double 9.3918370000000006
	.quad	0x401813eff1950332              # double 6.0194700000000001
	.quad	0x402123d4ae429e0a              # double 8.5699819999999995
	.quad	0x401c4d798d8a979e              # double 7.0756589999999999
	.quad	0x4021f1e236c15d2d              # double 8.972429
	.quad	0x401d4c2e770bd018              # double 7.3243960000000001
	.quad	0x401f5f8b1572580c              # double 7.8433039999999998
	.quad	0x3fb5f3a57eaa2a0b              # double 0.085749000000000006
	.quad	0x400783d816aceaaf              # double 2.9393769999999999
	.quad	0x3ff03884406c00da              # double 1.013798
	.quad	0x401f2b8d82342246              # double 7.7925319999999996
	.quad	0x4012d8bd66277c46              # double 4.7116600000000002
	.quad	0x400a628672756862              # double 3.298108
	.quad	0x401ad2d8c2a454de              # double 6.7059049999999996
	.quad	0x40110f91a32b12d3              # double 4.2652039999999998
	.quad	0x40235779a6b50b0f              # double 9.6708499999999997
	.quad	0x401480f345069a4e              # double 5.125928
	.quad	0x401ac4662bae03b4              # double 6.6917960000000001
	.quad	0x402305e56cd6c2f0              # double 9.5115160000000003
	.quad	0x40187cfe9b7bf1e9              # double 6.1220650000000001
	.quad	0x40059625a682b628              # double 2.6983139999999999
	.quad	0x401d506e5cd4ed2d              # double 7.3285460000000002
	.quad	0x4019d675ddd2ae8e              # double 6.4594339999999999
	.quad	0x401d9d698fe69271              # double 7.4037230000000003
	.quad	0x400dc2b4959e6256              # double 3.7200709999999999
	.quad	0x402087c829cfdd23              # double 8.2651990000000009
	.quad	0x40156e68a0d349bf              # double 5.3578210000000004
	.quad	0x3ff573c60029f16b              # double 1.340765
	.quad	0x401cd9f623076c05              # double 7.212853
	.quad	0x401c65d3dc8b86b1              # double 7.0994409999999997
	.quad	0x3fea81d3aa369fcf              # double 0.82834799999999997
	.quad	0x4001011fd5885d31              # double 2.1255489999999999
	.quad	0x3fe3dedaec4a4096              # double 0.62095400000000001
	.quad	0x400a78b502ababeb              # double 3.3089390000000001
	.quad	0x3ff2a597d49d7ba6              # double 1.1654279999999999
	.quad	0x4019bba83f4eca68              # double 6.4332589999999996
	.quad	0x4013eda61e0c5a81              # double 4.9820789999999997
	.quad	0x40195df82b1f687b              # double 6.3417669999999999
	.quad	0x4019bac4b4d056c5              # double 6.432391
	.quad	0x3ff939713ad5bee4              # double 1.576524
	.quad	0x3fe9018c5c9a34ca              # double 0.78143899999999999
	.quad	0x4020e86a4ca4f441              # double 8.4539360000000006
	.quad	0x401c2437824d4cba              # double 7.0353680000000001
	.quad	0x3ff79ed7c6fbd274              # double 1.47628
	.quad	0x40199aa4fca42aed              # double 6.4010199999999999
	.quad	0x401395b035bd512f              # double 4.8961800000000002
	.quad	0x3feb61ef73c0c1fd              # double 0.85570500000000005
	.quad	0x401850c2c5e2cdc0              # double 6.0788679999999999
	.quad	0x402363c46d82ba5a              # double 9.694858
	.quad	0x4023cf04ddb5525d              # double 9.9043340000000004
	.quad	0x401fbaebc408d8ed              # double 7.9325400000000003
	.quad	0x4014828f5c28f5c3              # double 5.1275000000000004
	.quad	0x3ff2ddf00abf76a3              # double 1.179184
	.quad	0x3ff4a3eaf6837f7c              # double 1.290019
	.quad	0x401c407570c564f9              # double 7.0629479999999996
	.quad	0x4012e7292c493426              # double 4.7257429999999996
	.quad	0x4018209a671ef30a              # double 6.0318389999999997
	.quad	0x4011e79420b3d4ae              # double 4.4761509999999998
	.quad	0x40212f53825e13b2              # double 8.5924340000000008
	.quad	0x40130f3c2dadb835              # double 4.7648780000000004
	.quad	0x40127625204af923              # double 4.6153760000000004
	.quad	0x3ffce22e5de15ca7              # double 1.80522
	.quad	0x4021618eb8950764              # double 8.6905420000000006
	.quad	0x401a98769ec2ce46              # double 6.6488899999999997
	.quad	0x401ca446f9b994e2              # double 7.1604270000000003
	.quad	0x3fea2a497fa5d28d              # double 0.817662
	.quad	0x4007ee2b8c75c4a8              # double 2.9912939999999999
	.quad	0x4004cd1fa333764f              # double 2.600158
	.quad	0x40163ffe6d58c8ef              # double 5.562494
	.quad	0x401e82c01e68a0d3              # double 7.6276859999999997
	.quad	0x40170bf338716095              # double 5.7616699999999996
	.quad	0x400da046c764ae00              # double 3.7032600000000002
	.quad	0x401da6976bc1effa              # double 7.412687
	.quad	0x401e6003ab862b28              # double 7.5937640000000001
	.quad	0x4004d7985271bcdc              # double 2.6052710000000001
	.quad	0x401c3581cf7878b8              # double 7.0522530000000003
	.quad	0x4020cea2d2fe3f36              # double 8.4035860000000007
	.quad	0x400bc83a96d4c33b              # double 3.4727679999999999
	.quad	0x401f8220ff540896              # double 7.8770790000000002
	.quad	0x3ffce90eed02cd3a              # double 1.806899
	.quad	0x3ffe617a02fb5d03              # double 1.898798
	.quad	0x4020bc523f67f4dc              # double 8.3678150000000002
	.quad	0x4017f34dad31fcd2              # double 5.9876009999999997
	.quad	0x401a6e3b46fdeb53              # double 6.6076480000000002
	.quad	0x40136530489d27c4              # double 4.8488170000000004
	.quad	0x401d0db09a671ef3              # double 7.263369
	.quad	0x4016629ed3953dea              # double 5.5963089999999998
	.quad	0x3fe8f7c6759ab6d0              # double 0.780246
	.quad	0x40191e6ff7dfa00e              # double 6.2797239999999999
	.quad	0x4017c73797460243              # double 5.9445480000000002
	.quad	0x3ff66ff5c6c11a11              # double 1.402334
	.quad	0x40220cc9a77e5eab              # double 9.0249760000000006
	.quad	0x40110220bc382a13              # double 4.252078
	.quad	0x40083de7a743a648              # double 3.030227
	.quad	0x3ffc2d601ffb480a              # double 1.7610779999999999
	.quad	0x4022a4a6ca03c4b1              # double 9.3215850000000007
	.quad	0x4014c3bd5992428d              # double 5.1911519999999998
	.quad	0x4020743d46b26bf8              # double 8.2270299999999992
	.quad	0x4010ee353f7ced91              # double 4.2326249999999996
	.quad	0x401d0039ef0f16f4              # double 7.2502209999999998
	.quad	0x40205ecca2db61bb              # double 8.185155
	.quad	0x4015e413122b7baf              # double 5.4727290000000002
	.quad	0x4003e038194c0160              # double 2.4844819999999999
	.quad	0x40222674afd54541              # double 9.0751089999999994
	.quad	0x402079ddc1e7967d              # double 8.2380200000000006
	.quad	0x401f92e7b3d8e001              # double 7.8934620000000004
	.quad	0x40187fee2c98e53f              # double 6.1249320000000003
	.quad	0x3fce76965f5275ef              # double 0.23799400000000001
	.quad	0x3fe7346fdeb52c9d              # double 0.72515099999999999
	.quad	0x401be7c393682731              # double 6.9763320000000002
	.quad	0x4021b5f2ecf20642              # double 8.8553689999999996
	.quad	0x3ff44d4dc65c7043              # double 1.2688729999999999
	.quad	0x400a1884406c00da              # double 3.261971
	.quad	0x4011c5f9df548ece              # double 4.4433360000000004
	.quad	0x400023a109d0635a              # double 2.0173969999999999
	.quad	0x40124eb9e492bc30              # double 4.5768810000000002
	.quad	0x3ff196e47dc37a3e              # double 1.0993390000000001
	.quad	0x40198e503fb37436              # double 6.3889779999999998
	.quad	0x400f96de33269df9              # double 3.9486659999999998
	.quad	0x400d098244e93e1d              # double 3.6296430000000002
	.quad	0x4006a295a6c5d207              # double 2.8293870000000001
	.quad	0x4018a8ad68837718              # double 6.1647239999999996
	.quad	0x400067631b584b1b              # double 2.0504820000000001
	.quad	0x400b08472c0e7bc4              # double 3.3790420000000001
	.quad	0x402351654d61b2a2              # double 9.6589759999999991
	.quad	0x3ff3b460242d05f3              # double 1.2315370000000001
	.quad	0x3fb655d1c3ac929b              # double 0.087247000000000005
	.quad	0x4006e3beec39799e              # double 2.8612039999999999
	.quad	0x3ffb6dbd72bcb5fe              # double 1.7142919999999999
	.quad	0x40197d40ee06d938              # double 6.3723179999999999
	.quad	0x3fff5bd0e12e83a1              # double 1.959916
	.quad	0x401fc3ab862b27cc              # double 7.941084
	.quad	0x401a6f0b28522ea1              # double 6.608441
	.quad	0x3ff92178f68be2f8              # double 1.5706720000000001
	.quad	0x400833cc4ac6cdaf              # double 3.0252919999999999
	.quad	0x400993397dd00f77              # double 3.1968869999999998
	.quad	0x400fecbfb15b573f              # double 3.9906000000000001
	.quad	0x3fac185058dde7a7              # double 0.054872999999999998
	.quad	0x4004d9513f8db489              # double 2.606112
	.quad	0x4003cb08dd1e53a8              # double 2.4741379999999999
	.quad	0x3fe7eaf89c5e6ff8              # double 0.74743300000000001
	.quad	0x3ffe4f0f9d2bf551              # double 1.8943019999999999
	.quad	0x401d524851a86940              # double 7.3303539999999998
	.quad	0x40012752da98676a              # double 2.1442009999999998
	.quad	0x4017dc2d6a9c560c              # double 5.9650169999999996
	.quad	0x3fbd718eb8950764              # double 0.11501400000000001
	.quad	0x401fd164840e171a              # double 7.954485
	.quad	0x40062a1272c94b38              # double 2.770543
	.quad	0x4022666c8f755369              # double 9.2000469999999996
	.quad	0x40212b0941c8216c              # double 8.5840549999999993
	.quad	0x3fd228c36da87a07              # double 0.28373799999999999
	.quad	0x3fea847f562174c5              # double 0.82867400000000002
	.quad	0x401b72990f301eac              # double 6.8619120000000002
	.quad	0x401e37cd03537197              # double 7.5544929999999999
	.quad	0x4020daa5614df8b1              # double 8.4270429999999994
	.quad	0x400e973860999dcb              # double 3.8238379999999998
	.quad	0x40170c06e19b90eb              # double 5.7617450000000003
	.quad	0x3fd711f0c34c1a8b              # double 0.36047000000000001
	.quad	0x400893d07c84b5dd              # double 3.0721750000000001
	.quad	0x4003d33b10774688              # double 2.4781399999999998
	.quad	0x40142ae46cfc829d              # double 5.041887
	.quad	0x40152fde7210be94              # double 5.2967469999999999
	.quad	0x401d6a3bddfc9ff9              # double 7.3537439999999998
	.quad	0x40206b6d86ec17ec              # double 8.2098200000000005
	.quad	0x3fa8539fba450acc              # double 0.047513
	.quad	0x40170a5a469d7343              # double 5.7601100000000001
	.quad	0x401c667a0f9096bc              # double 7.1000750000000004
	.quad	0x401b5b6aa4b9884c              # double 6.8392739999999996
	.quad	0x3ff51fbb517a4617              # double 1.3202469999999999
	.quad	0x40086316a055757d              # double 3.0483829999999998
	.quad	0x4020c828c36da87a              # double 8.390936
	.quad	0x4013471c10d7be98              # double 4.8194429999999997
	.quad	0x3ffac3cc07aaef2c              # double 1.6728019999999999
	.quad	0x4014f5f2452c59fb              # double 5.2401819999999999
	.quad	0x4010a8116ebd4cfd              # double 4.164129
	.quad	0x3fd773e24febd09e              # double 0.366448
	.quad	0x400ade9f2778140e              # double 3.3587020000000001
	.quad	0x3fe21fddebd9018e              # double 0.56638999999999995
	.quad	0x3ffc253543aeab7a              # double 1.7590840000000001
	.quad	0x3fd3cc92146a1a50              # double 0.309361
	.quad	0x3fee5712a0ec7432              # double 0.948129
	.quad	0x4019cc10d7be9857              # double 6.4492830000000003
	.quad	0x4012c96787ce95fb              # double 4.6966840000000003
	.quad	0x40148ba5a038194c              # double 5.136374
	.quad	0x401fd34267839cd8              # double 7.9563079999999999
	.quad	0x401b9ef4e0114d2f              # double 6.9052309999999997
	.quad	0x4012fb7ed41b75a7              # double 4.7456009999999997
	.quad	0x4020159c49774257              # double 8.0422080000000005
	.quad	0x401f070153bd1676              # double 7.7568409999999997
	.quad	0x402167583a53b8e5              # double 8.7018450000000005
	.quad	0x4019630c67168f8e              # double 6.3467269999999996
	.quad	0x401df03ea704bc27              # double 7.4846139999999996
	.quad	0x40202452a411c2a0              # double 8.0709429999999998
	.quad	0x3ffac4d12018a43c              # double 1.6730510000000001
	.quad	0x4016595faa8a82a5              # double 5.5872789999999997
	.quad	0x401b2b3b320535ca              # double 6.7922180000000001
	.quad	0x3ff5cae642bf9831              # double 1.362036
	.quad	0x40142f487fcb923a              # double 5.0461749999999999
	.quad	0x401b4b7a1c25d074              # double 6.8237079999999999
	.quad	0x401b15e02ea960b7              # double 6.771363
	.quad	0x3feb81a1554fbdad              # double 0.85957399999999995
	.quad	0x40177c1094a2b9d4              # double 5.8711570000000002
	.quad	0x3ffe1ef62f9ca5be              # double 1.8825590000000001
	.quad	0x40104847f562174c              # double 4.0705869999999997
	.quad	0x3fd3b87bdcf0307f              # double 0.30813499999999999
	.quad	0x4023d7b5286b5914              # double 9.9213039999999992
	.quad	0x4017610f0e90bc7b              # double 5.8447839999999998
	.quad	0x4012c5e6362a5e78              # double 4.6932609999999997
	.quad	0x4007fe121ee67514              # double 2.9990579999999998
	.quad	0x3fecd985ad538ac2              # double 0.90155300000000005
	.quad	0x3ff260afa2f05a71              # double 1.1486050000000001
	.quad	0x3ff0a3f8982cb210              # double 1.0400320000000001
	.quad	0x40130bf162ae4b02              # double 4.7616630000000004
	.quad	0x400c352c9d16fc9c              # double 3.5259640000000001
	.quad	0x401ff0870110a138              # double 7.98489
	.quad	0x401975a0be510907              # double 6.3648709999999999
	.quad	0x3fddf2b239a38fbd              # double 0.46793800000000002
	.quad	0x4011bed7c6fbd274              # double 4.4363700000000001
	.quad	0x401f2ba237cdcca7              # double 7.7926109999999999
	.quad	0x4016799806f26289              # double 5.6187440000000004
	.quad	0x3ff7e4acf312b1b3              # double 1.4933289999999999
	.quad	0x4002038b8ae31d71              # double 2.2517309999999999
	.quad	0x401c9cdc443914f5              # double 7.1531840000000004
	.quad	0x4016dc1f85d744f6              # double 5.7149640000000002
	.quad	0x401e559817b95a29              # double 7.5835879999999997
	.quad	0x402280485a0be511              # double 9.2505520000000008
	.quad	0x4021bbb85e80bed7              # double 8.8666409999999996
	.quad	0x3ff048626f60e0eb              # double 1.0176719999999999
	.quad	0x402314a44c7b02d6              # double 9.5403160000000007
	.quad	0x401c5358afc47e4a              # double 7.0813930000000003
	.quad	0x402198e991ff7165              # double 8.7986570000000004
	.quad	0x4017d296f6512a95              # double 5.955654
	.quad	0x401f8be0157eed46              # double 7.8865970000000001
	.quad	0x3fe3c82be8bc169c              # double 0.61818499999999998
	.quad	0x4015c64adff822bc              # double 5.4436450000000001
	.quad	0x40209a0f9096bb99              # double 8.3009000000000004
	.quad	0x401c199cbee807bc              # double 7.0250120000000003
	.quad	0x4021cf71a7e30878              # double 8.9051639999999992
	.quad	0x4016358644523f68              # double 5.55227
	.quad	0x4017d480a5accd53              # double 5.957522
	.quad	0x400fe4d76ab58080              # double 3.986739
	.quad	0x4023bd93e5fb71fc              # double 9.8702690000000004
	.quad	0x401e66102795703f              # double 7.5996709999999998
	.quad	0x4011eb5393250b52              # double 4.4798109999999998
	.quad	0x40200be121ee6751              # double 8.0232019999999995
	.quad	0x4015c83dff3f0fe0              # double 5.4455489999999998
	.quad	0x401542b2bfdb4cc2              # double 5.3151349999999997
	.quad	0x4010554e6e221c8a              # double 4.0833069999999996
	.quad	0x40221ca83b1d0c80              # double 9.0559709999999995
	.quad	0x40159c57e23f24d9              # double 5.402679
	.quad	0x402217f25e56cd6c              # double 9.0467709999999996
	.quad	0x4004a413db7f1737              # double 2.5801159999999999
	.quad	0x402397ffde7210bf              # double 9.7968740000000007
	.quad	0x401cef737da61e0c              # double 7.2338389999999997
	.quad	0x40151d1d041cc533              # double 5.2784310000000003
	.quad	0x4013b0ec31162281              # double 4.9227759999999998
	.quad	0x402087a00e27e0f0              # double 8.2648930000000007
	.quad	0x4023e76273929ed4              # double 9.9519230000000007
	.quad	0x4012536b4c7f3494              # double 4.5814640000000004
	.quad	0x3ff53ec02f2f9874              # double 1.32782
	.quad	0x4014c3e681a9b8cc              # double 5.1913090000000004
	.quad	0x3ff05e81cb46bacf              # double 1.0230729999999999
	.quad	0x3ff236848beb5b2d              # double 1.1383099999999999
	.quad	0x3ffd3137b07075b4              # double 1.824516
	.quad	0x3ffe7fc9795b35b1              # double 1.9061980000000001
	.quad	0x4021a927913e8145              # double 8.8303799999999999
	.quad	0x401a454c55432874              # double 6.5676740000000002
	.quad	0x402196965f5275ef              # double 8.7941160000000007
	.quad	0x40211bd61f5be5da              # double 8.5543680000000002
	.quad	0x3fe4b78cc9a77e5f              # double 0.64740600000000004
	.quad	0x401d672474538ef3              # double 7.3507249999999997
	.quad	0x400547d6f9767903              # double 2.6600779999999999
	.quad	0x4009028dc981beb2              # double 3.1262470000000002
	.quad	0x3fffbc903ea704bc              # double 1.983536
	.quad	0x40003722e1ac57e2              # double 2.0269219999999999
	.quad	0x4013671f36262cba              # double 4.8507049999999996
	.quad	0x4022f17b95a29414              # double 9.4716459999999997
	.quad	0x40194c30d306a2b1              # double 6.3244049999999996
	.quad	0x3fdcdee78183f91e              # double 0.45110499999999998
	.quad	0x401d8b8a5ce5b424              # double 7.3862699999999997
	.quad	0x4004923d4f15e7c9              # double 2.5714060000000001
	.quad	0x3ff1300474d9c6b0              # double 1.0742229999999999
	.quad	0x400e8de4c51116a9              # double 3.8192840000000001
	.quad	0x4019d4a9cdc44391              # double 6.4576789999999997
	.quad	0x4016850870110a13              # double 5.6299149999999996
	.quad	0x401b047f562174c5              # double 6.7543920000000002
	.quad	0x3fed7d1fe64f54d2              # double 0.92152400000000001
	.quad	0x4001a7a8d64d7f0f              # double 2.2068650000000001
	.quad	0x40184fe8ee6b8306              # double 6.0780370000000001
	.quad	0x400ebe154434e337              # double 3.8428140000000002
	.quad	0x400b80370cdc8755              # double 3.437605
	.quad	0x3ffb3edfa43fe5c9              # double 1.70285
	.quad	0x400c0e536501e258              # double 3.5069949999999999
	.quad	0x40069c148344c37e              # double 2.8262109999999998
	.quad	0x40049e5eaab04253              # double 2.5773290000000002
	.quad	0x4019a24aada33bda              # double 6.4084880000000002
	.quad	0x401498eeae9ee45c              # double 5.1493479999999998
	.quad	0x401af1fb82c2bd7f              # double 6.7363109999999997
	.quad	0x40151bd7f51efb6e              # double 5.2771910000000002
	.quad	0x402066c3547e0696              # double 8.2007089999999998
	.quad	0x40127defc7a39820              # double 4.6229849999999999
	.quad	0x4022476f8f041462              # double 9.1395230000000005
	.quad	0x3ff3a4473cd57364              # double 1.2276069999999999
	.quad	0x401930902de00d1b              # double 6.2974249999999996
	.quad	0x4007f841aac53b08              # double 2.996219
	.quad	0x3fdd9c1b54195cc8              # double 0.46265299999999998
	.quad	0x40222bb6aa4b9885              # double 9.0853780000000004
	.quad	0x4021f3b4b2fa93af              # double 8.9759879999999992
	.quad	0x4005e08d8ec95bff              # double 2.734645
	.quad	0x40027995ee136e72              # double 2.3093680000000001
	.quad	0x400be0767d34df05              # double 3.4846010000000001
	.quad	0x400c5af3a14cec42              # double 3.5444100000000001
	.quad	0x4022ded634549b63              # double 9.4352280000000003
	.quad	0x401bb35f80991794              # double 6.9251690000000004
	.quad	0x3fed311622813448              # double 0.912242
	.quad	0x402009719f7f8ca8              # double 8.0184449999999998
	.quad	0x40097b02d59d55e7              # double 3.1850640000000001
	.quad	0x40233adba4d6e47e              # double 9.6149570000000004
	.quad	0x400183ed0f627393              # double 2.1894170000000002
	.quad	0x401553a0407cc7d2              # double 5.3316660000000002
	.quad	0x400bbf401c4fc1df              # double 3.4683839999999999
	.quad	0x3ff82bf22c01e68a              # double 1.510729
	.quad	0x4005ee18266772d6              # double 2.7412570000000001
	.quad	0x400e71d712a0ec74              # double 3.8055859999999999
	.quad	0x4010231b152f3c2e              # double 4.0342830000000003
	.quad	0x401d1b0fadf2ecf2              # double 7.276427
	.quad	0x3fe05d78811b1d93              # double 0.51141000000000003
	.quad	0x4012eef1348b2208              # double 4.7333420000000004
	.quad	0x40001acabc515486              # double 2.0130819999999998
	.quad	0x401f1b606b7aa25e              # double 7.7767350000000004
	.quad	0x3fa31876188b1141              # double 0.037296000000000003
	.quad	0x3fd9f27bb2fec56d              # double 0.40542499999999998
	.quad	0x401f0a1fd1569f49              # double 7.7598869999999999
	.quad	0x401a66937d1fe64f              # double 6.6001719999999997
	.quad	0x40125e1f7d73c925              # double 4.5919169999999996
	.quad	0x401eaa5482385404              # double 7.6663379999999997
	.quad	0x401d214727dcbddc              # double 7.2824980000000004
	.quad	0x4018ebeb18116ebd              # double 6.2303889999999997
	.quad	0x3ffedad85dfa871a              # double 1.9284289999999999
	.quad	0x3feebaa582dbe7f3              # double 0.96028400000000002
	.quad	0x3ff1271ef30a4e38              # double 1.0720510000000001
	.quad	0x400a064ece9a2c67              # double 3.2530800000000002
	.quad	0x4020dfddebd9018e              # double 8.4372399999999992
	.quad	0x402197b80a9de8b4              # double 8.7963260000000005
	.quad	0x3fe4943bf727136a              # double 0.64309499999999997
	.quad	0x401247b56b873797              # double 4.5700279999999998
	.quad	0x401c93311a543f1c              # double 7.1437419999999996
	.quad	0x400ee78183f91e64              # double 3.8630399999999998
	.quad	0x4013d0c564f97edc              # double 4.9538779999999996
	.quad	0x4016079e16d6dc1a              # double 5.5074389999999998
	.quad	0x400e1608d08919f0              # double 3.7607590000000002
	.quad	0x4006ddd97f62b6ae              # double 2.8583249999999998
	.quad	0x401750999dcb5782              # double 5.8287110000000002
	.quad	0x4022ee6c093d9664              # double 9.4656680000000008
	.quad	0x400e8221426fe719              # double 3.8135400000000002
	.quad	0x400f857afea3df6e              # double 3.9401760000000001
	.quad	0x4021e6fb2aae2974              # double 8.9511350000000007
	.quad	0x402262d44dca8e2e              # double 9.1930259999999997
	.quad	0x4002da67a52ac754              # double 2.356643
	.quad	0x40135e121ee67514              # double 4.8418659999999996
	.quad	0x4004181f969e3c97              # double 2.5117790000000002
	.quad	0x4010ca99fa11a976              # double 4.1978530000000003
	.quad	0x40102e4430b178b3              # double 4.0451819999999996
	.quad	0x40060aac96cc5fc0              # double 2.7552120000000002
	.quad	0x4003aaefb2aae297              # double 2.4584649999999999
	.quad	0x401b654823854046              # double 6.8489079999999998
	.quad	0x4013a15fcc1871e7              # double 4.9075920000000002
	.quad	0x400a1daad601ffb5              # double 3.2644860000000002
	.quad	0x4003d4e3bcd35a86              # double 2.4789500000000002
	.quad	0x40135df04ddb5526              # double 4.8417370000000002
	.quad	0x40177054ac29bf16              # double 5.8596979999999999
	.quad	0x3ffce50f840181e0              # double 1.8059229999999999
	.quad	0x3fb13db7f1737543              # double 0.067348000000000005
	.quad	0x401d4601ffb480a6              # double 7.3183670000000003
	.quad	0x3ff0681669ced0b3              # double 1.025412
	.quad	0x3ffacaf3e468cac5              # double 1.6745490000000001
	.quad	0x401092a3486f049b              # double 4.1432010000000004
	.quad	0x4016b7fd82773e25              # double 5.679678
	.quad	0x400268ba83f4eca7              # double 2.3011370000000002
	.quad	0x400bbeabbcb1cc96              # double 3.4681009999999999
	.quad	0x4016ef28848387df              # double 5.7335529999999997
	.quad	0x401f8e696a26e547              # double 7.8890739999999999
	.quad	0x40018e675147f130              # double 2.1945329999999998
	.quad	0x400c2ef34d6a161e              # double 3.5229249999999999
	.quad	0x3fda4e0114d2f5dc              # double 0.41101100000000002
	.quad	0x40229a54a3c64346              # double 9.3014270000000003
	.quad	0x4017ee37585be1a8              # double 5.9826329999999999
	.quad	0x40072a9c560c7c0f              # double 2.8958059999999999
	.quad	0x400bc6aec0724b77              # double 3.472013
	.quad	0x4017e1fc4c165908              # double 5.9706890000000001
	.quad	0x3ff293c254a3c643              # double 1.1610739999999999
	.quad	0x401233ef6b5d462c              # double 4.5507179999999998
	.quad	0x3fca0f88333fc86d              # double 0.203599
	.quad	0x401de9f87f023e9f              # double 7.4784870000000003
	.quad	0x402390791c4b9021              # double 9.7821739999999994
	.quad	0x3fde9be8ff327aa7              # double 0.47826600000000002
	.quad	0x4001df9591cd1c7e              # double 2.234172
	.quad	0x40028a67e846a5d7              # double 2.3175810000000001
	.quad	0x401854dc65c70436              # double 6.0828720000000001
	.quad	0x401d9253da72a7bd              # double 7.3928979999999997
	.quad	0x40006c4b4d056c51              # double 2.0528780000000002
	.quad	0x4001669a4df47f99              # double 2.1750989999999999
	.quad	0x4008bc99285a921d              # double 3.0920890000000001
	.quad	0x40101d640e9d51b5              # double 4.028702
	.quad	0x3ff33eb6bf444e0e              # double 1.2028110000000001
	.quad	0x40152de7a743a648              # double 5.294829
	.quad	0x4014028e0c9d9d34              # double 5.0024949999999997
	.quad	0x40065fa0945f9df5              # double 2.7966929999999999
	.quad	0x4023105425f20210              # double 9.5318919999999991
	.quad	0x3ff92db940fecdd1              # double 1.573663
	.quad	0x401513c297bfa4c6              # double 5.2692969999999999
	.quad	0x3ffe582ba5a03819              # double 1.8965259999999999
	.quad	0x400ec870110a137f              # double 3.8478699999999999
	.quad	0x4019ee004b7f5a53              # double 6.4824229999999998
	.quad	0x3ff1644d87724fa9              # double 1.0869880000000001
	.quad	0x3feba92a30553261              # double 0.86439999999999995
	.quad	0x4022375360d02470              # double 9.1080579999999998
	.quad	0x3fa70bd017dae819              # double 0.045012000000000003
	.quad	0x40200a6b2f23033a              # double 8.0203489999999995
	.quad	0x400386173b85e80c              # double 2.440474
	.quad	0x3ffc0bdec5f394b8              # double 1.7528980000000001
	.quad	0x3ffe2364bec679cc              # double 1.8836409999999999
	.quad	0x3fe0d55c52e72da1              # double 0.52604499999999998
	.quad	0x401fee10cf5b1c86              # double 7.9824859999999997
	.quad	0x3fec5844d013a92a              # double 0.88577499999999998
	.quad	0x4023f831ad2135db              # double 9.9847540000000005
	.quad	0x4023be1b8ed1bf7b              # double 9.8713040000000003
	.quad	0x401cdea747d805e6              # double 7.217435
	.quad	0x4022b706b37867f1              # double 9.3574730000000005
	.quad	0x4020359018e75793              # double 8.1046150000000008
	.quad	0x3fec10d173fb7a5f              # double 0.87705299999999997
	.quad	0x400075347a5b0ff1              # double 2.057229
	.quad	0x402387dd44135547              # double 9.7653599999999993
	.quad	0x4016b00e6afcce1c              # double 5.6719299999999997
	.quad	0x3ff16795703f2d3c              # double 1.0877889999999999
	.quad	0x4010867d77fae361              # double 4.1313380000000004
	.quad	0x4003713c68661ae7              # double 2.430291
	.quad	0x400457e5eaab0425              # double 2.5429189999999999
	.quad	0x401ab9de05037500              # double 6.6815110000000004
	.quad	0x4014ab645a1cac08              # double 5.1673749999999998
	.quad	0x401c5781c714fce7              # double 7.0854559999999998
	.quad	0x4004e6b7aa25d8d8              # double 2.6126550000000002
	.quad	0x401331dc50ce4ead              # double 4.798692
	.quad	0x40195e22a2c23748              # double 6.3419290000000004
	.quad	0x40214a3a08398a65              # double 8.6449739999999995
	.quad	0x401c74ea4a8c154d              # double 7.1141750000000004
	.quad	0x40105504c48adeec              # double 4.0830260000000003
	.quad	0x40118977c88e79ab              # double 4.3842460000000001
	.quad	0x3fe8b06c43f5f916              # double 0.771536
	.quad	0x4008a8b6d86ec17f              # double 3.0823800000000001
	.quad	0x3fe732a8c9b84556              # double 0.72493399999999997
	.quad	0x4017f1ad6451b930              # double 5.9860129999999998
	.quad	0x40142077ccc03793              # double 5.0317069999999999
	.quad	0x40013e07a28bb0a3              # double 2.1552880000000001
	.quad	0x401d33fb7a5f41af              # double 7.300764
	.quad	0x3fcb96073de1e2df              # double 0.21551600000000001
	.quad	0x4021b4cf6be37de9              # double 8.8531449999999996
	.quad	0x401afbe6a337a80d              # double 6.745997
	.quad	0x3ff14057082491b0              # double 1.0782080000000001
	.quad	0x4010d4cf8d716d2b              # double 4.2078230000000003
	.quad	0x400939df548ecd8e              # double 3.1532580000000001
	.quad	0x401ea7ed41b75a75              # double 7.6639910000000002
	.quad	0x4000d3f0fe047d3d              # double 2.1034869999999999
	.quad	0x401a0eb6390c9108              # double 6.514367
	.quad	0x3fffa0a958537e2c              # double 1.9767239999999999
	.quad	0x401ec3a7daa4fca4              # double 7.6910699999999999
	.quad	0x401b8143393ab431              # double 6.876233
	.quad	0x401bcdc725c3dee8              # double 6.9509550000000004
	.quad	0x40191865d7cb2d90              # double 6.2738259999999997
	.quad	0x3fb53aa369fcf3dc              # double 0.082926
	.quad	0x401ddb13dfb0d520              # double 7.4639430000000004
	.quad	0x3fd971d1d4738a3b              # double 0.39757199999999998
	.quad	0x4016d77186551937              # double 5.710394
	.quad	0x40197049667b5f1c              # double 6.3596550000000001
	.quad	0x4011d6994185058e              # double 4.4595690000000001
	.quad	0x40146c2e33eff195              # double 5.105645
	.quad	0x4015980fdc1615ec              # double 5.398498
	.quad	0x40207ebdf4c2b51c              # double 8.2475430000000002
	.quad	0x4011c2e5de15ca6d              # double 4.4403300000000003
	.quad	0x401483e2d6238da4              # double 5.1287950000000002
	.quad	0x401ed2deca2552a0              # double 7.7059280000000001
	.quad	0x4020f32d2bb23572              # double 8.4749540000000003
	.quad	0x401bb0a569b17482              # double 6.9225060000000003
	.quad	0x402242dc0980b242              # double 9.130585
	.quad	0x40131dab191dde37              # double 4.7789729999999997
	.quad	0x4003f475a31a4bdc              # double 2.4943650000000002
	.quad	0x40205a5b0ff10ecb              # double 8.1764759999999992
	.quad	0x401f3f62b6ae7d56              # double 7.8118999999999996
	.quad	0x4015d0c996b7670a              # double 5.453894
	.quad	0x4010cb940fecdd0e              # double 4.1988070000000004
	.quad	0x40211e6a76965f52              # double 8.5594059999999992
	.quad	0x4021820817fc7608              # double 8.7539680000000004
	.quad	0x4018f040bfe3b03e              # double 6.2346219999999999
	.quad	0x401c9e9468017119              # double 7.1548629999999998
	.quad	0x401d5427418d690a              # double 7.3321810000000003
	.quad	0x3fe7e27e0ef99807              # double 0.74639800000000001
	.quad	0x401d44ead0c3d252              # double 7.3173019999999998
	.quad	0x400ef50331e3a7db              # double 3.8696350000000002
	.quad	0x4023450e56041893              # double 9.6348749999999991
	.quad	0x3fe2ade657b84dba              # double 0.58372800000000002
	.quad	0x4008513404ea4a8c              # double 3.03965
	.quad	0x401ccf3061c79b35              # double 7.2023330000000003
	.quad	0x401ece8ff327aa69              # double 7.701721
	.quad	0x4000c616b54e2b06              # double 2.0967229999999999
	.quad	0x400a07dd44135547              # double 3.2538399999999998
	.quad	0x4021d841461b6d44              # double 8.9223730000000003
	.quad	0x4010e1450efdc9c5              # double 4.2199900000000001
	.quad	0x4004f0d1fa333765              # double 2.617588
	.quad	0x4017548adeebb342              # double 5.8325610000000001
	.quad	0x3ffa446412cf0f9d              # double 1.641697
	.quad	0x4003fa133c1ce6c1              # double 2.4971070000000002
	.quad	0x4020bc577d955715              # double 8.3678550000000005
	.quad	0x401a791d57ff9b56              # double 6.6182759999999998
	.quad	0x401c55c7cd898b2f              # double 7.0837700000000003
	.quad	0x401991c475e6362a              # double 6.3923509999999997
	.quad	0x401d372cd7cf5f4e              # double 7.3038819999999998
	.quad	0x3ff1e0f9096bb98c              # double 1.1174249999999999
	.quad	0x40189852b4d8ba41              # double 6.1487530000000001
	.quad	0x400d95d3dc8b86b1              # double 3.6981579999999998
	.quad	0x4010b6dfc5cdd50b              # double 4.1785880000000004
	.quad	0x4023de43675ddd2b              # double 9.9341080000000001
	.quad	0x40117c44bf4cb189              # double 4.3713559999999996
	.quad	0x4015883b60285ec4              # double 5.3830390000000001
	.quad	0x40168b23dd54da4d              # double 5.6358790000000001
	.quad	0x401306451b93037d              # double 4.7561229999999997
	.quad	0x40208965907d9125              # double 8.2683529999999994
	.quad	0x401c8ff2e48e8a72              # double 7.1405750000000001
	.quad	0x3fde06b37867f0aa              # double 0.46915899999999999
	.quad	0x3ffa293c03bc4d23              # double 1.635067
	.quad	0x4011a3e29307af21              # double 4.4100440000000001
	.quad	0x400d3bbe0157eed4              # double 3.6541709999999998
	.quad	0x4011fce4217d284a              # double 4.4969640000000002
	.quad	0x401872413db7f173              # double 6.1115769999999996
	.quad	0x402071ec7000431c              # double 8.2225070000000002
	.quad	0x400b3080b673c4f4              # double 3.3986830000000001
	.quad	0x400c048e043a2164              # double 3.502224
	.quad	0x400756694898f606              # double 2.9171930000000001
	.quad	0x40032e4c0df58c09              # double 2.3976060000000001
	.quad	0x401637b56b873797              # double 5.5544029999999998
	.quad	0x40122c804102ff8f              # double 4.5434580000000002
	.quad	0x40079e57d9dba909              # double 2.9523160000000002
	.quad	0x40224f0e90bc7b46              # double 9.1544080000000001
	.quad	0x4007f6e3f78bbd38              # double 2.995552
	.quad	0x4012b7264a16a487              # double 4.6788569999999998
	.quad	0x3fd435f3d7d3910c              # double 0.31579299999999999
	.quad	0x4022d8de6ddf00ac              # double 9.423572
	.quad	0x3fe741c3efae7925              # double 0.72677800000000004
	.quad	0x40218c3bb40b34e7              # double 8.7738929999999993
	.quad	0x401cdf6c2699c7bd              # double 7.2181860000000002
	.quad	0x4014fb42cc2d6a9c              # double 5.2453719999999997
	.quad	0x400969d0635a426c              # double 3.1766670000000001
	.quad	0x4017d5dfeb8d8234              # double 5.9588619999999999
	.quad	0x4022ae4abe6a337b              # double 9.3404140000000009
	.quad	0x3fe81c304ccee5ac              # double 0.75344100000000002
	.quad	0x40144f7f8ca8198f              # double 5.0776349999999999
	.quad	0x3ff349331a08bfc2              # double 1.205371
	.quad	0x401853361565c2d2              # double 6.0812609999999996
	.quad	0x4002c675147f1306              # double 2.3469030000000002
	.quad	0x40141bb906466b1e              # double 5.0270729999999997
	.quad	0x3fb8242d05f28848              # double 0.094301999999999997
	.quad	0x40017b20b8066c2b              # double 2.1851210000000001
	.quad	0x4014f9463cfb3312              # double 5.2434320000000003
	.quad	0x40181c8eef1bac2e              # double 6.0278890000000001
	.quad	0x401a216a055757d6              # double 6.5326310000000003
	.quad	0x40216c8711d798d9              # double 8.7119680000000006
	.quad	0x4010db6e0d23d4f1              # double 4.2142869999999997
	.quad	0x400dc0ec74320104              # double 3.719201
	.quad	0x40176fd75e2046c7              # double 5.8592199999999997
	.quad	0x3fe3dfb71fbc5dea              # double 0.62105900000000003
	.quad	0x3ffb419f3c70c997              # double 1.7035210000000001
	.quad	0x40210ef08cc575c0              # double 8.5291789999999992
	.quad	0x401adcc532a497fa              # double 6.7155959999999997
	.quad	0x40084c386d2ed784              # double 3.0372170000000001
	.quad	0x40036ace24bba12b              # double 2.4271509999999998
	.quad	0x4021e5186db50f41              # double 8.9474520000000002
	.quad	0x4010503cd141a693              # double 4.0783569999999996
	.quad	0x4019ca1059ea5721              # double 6.4473279999999997
	.quad	0x3ff3739192641b33              # double 1.2157150000000001
	.quad	0x400b083a96d4c33b              # double 3.3790179999999999
	.quad	0x40227b3edd8b60f2              # double 9.2407140000000005
	.quad	0x3ff9e8b4bf8fcd68              # double 1.619313
	.quad	0x401bf792d1287c20              # double 6.991771
	.quad	0x401b9d74d594f26b              # double 6.9037660000000001
	.quad	0x400fdadafd113837              # double 3.9818630000000002
	.quad	0x40042aad1d041cc5              # double 2.5208379999999999
	.quad	0x40197de9c0229a5f              # double 6.3729620000000002
	.quad	0x4012ce37de939eae              # double 4.7013850000000001
	.quad	0x4003e1ea35935fc4              # double 2.4853100000000001
	.quad	0x4007757de0d66f0d              # double 2.932369
	.quad	0x401a9f81a5870da6              # double 6.6557680000000001
	.quad	0x4011c768dfbd6a59              # double 4.4447359999999998
	.quad	0x3ffd4dd2f1a9fbe7              # double 1.8314999999999999
	.quad	0x4023308e15011905              # double 9.5948340000000005
	.quad	0x402287a43fe5c91d              # double 9.2649249999999999
	.quad	0x3fef72170931012a              # double 0.98267700000000002
	.quad	0x4020803d145d8516              # double 8.2504659999999994
	.quad	0x4022fa7631b584b2              # double 9.4891830000000006
	.quad	0x40065190d173fb7a              # double 2.7898269999999998
	.quad	0x4023ea456f75d9a1              # double 9.9575610000000001
	.quad	0x3fd92c450268900c              # double 0.39332699999999998
	.quad	0x40147ed84d338f7a              # double 5.1238720000000004
	.quad	0x3ffd18cd20afa2f0              # double 1.8185549999999999
	.quad	0x40221d3e920c069e              # double 9.0571179999999991
	.quad	0x401ba919695d91ac              # double 6.9151360000000004
	.quad	0x4019639b456b441c              # double 6.3472720000000002
	.quad	0x4010d6238da3c212              # double 4.2091200000000004
	.quad	0x4022347c957cd467              # double 9.1025130000000001
	.quad	0x3ff13042528ae74f              # double 1.074282
	.quad	0x4022cefbd273d5bb              # double 9.4042650000000005
	.quad	0x4022072c3009b307              # double 9.0140089999999997
	.quad	0x40228998d045fe11              # double 9.2687439999999999
	.quad	0x40122a1a0cf1800a              # double 4.5411149999999996
	.quad	0x400eed1aeb3dd11c              # double 3.865774
	.quad	0x3fdbcc74b838c112              # double 0.43435400000000002
	.quad	0x40116c447c30d307              # double 4.3557300000000003
	.quad	0x401142873bc903ea              # double 4.3149689999999996
	.quad	0x401e3ab8e8ea39c5              # double 7.5573459999999998
	.quad	0x4007e7b3d8e00086              # double 2.9881359999999999
	.quad	0x40030e10cf5b1c86              # double 2.3818679999999999
	.quad	0x401553892ee84ad8              # double 5.3315780000000004
	.quad	0x400303c968943e10              # double 2.376849
	.quad	0x401ae230b9dc2f40              # double 6.7208889999999997
	.quad	0x4001e0218def416c              # double 2.2344390000000001
	.quad	0x400f34e22a2c2374              # double 3.9008219999999998
	.quad	0x401652d55a3a083a              # double 5.5808920000000004
	.quad	0x4002356191148fda              # double 2.276065
	.quad	0x3fe8f72b4528283d              # double 0.78017199999999998
	.quad	0x401efe1f7d73c925              # double 7.7481669999999995
	.quad	0x4011aa5b9628cbd1              # double 4.4163649999999999
	.quad	0x402345a187a4a490              # double 9.6359980000000007
	.quad	0x4022c8d349be8ff3              # double 9.3922369999999997
	.quad	0x402101fb1e18efbb              # double 8.5038689999999999
	.quad	0x4018e94c87980f56              # double 6.2278310000000001
	.quad	0x402204cb3a2595bc              # double 9.0093630000000004
	.quad	0x4004c25204af9229              # double 2.5948829999999998
	.quad	0x4020faba5a038195              # double 8.4897030000000004
	.quad	0x4015cd57bc7f77af              # double 5.4505299999999997
	.quad	0x3faac9081c2e33f0              # double 0.052315
	.quad	0x3fc4e6c8f7553693              # double 0.16329299999999999
	.quad	0x4022b0198f1d3ed5              # double 9.3439449999999997
	.quad	0x400fb265add9c27f              # double 3.9621080000000002
	.quad	0x4011297d8cf398e9              # double 4.2905179999999996
	.quad	0x401a9d1e96c3fc44              # double 6.6534370000000003
	.quad	0x4019e425f202107b              # double 6.4728009999999996
	.quad	0x3fec8752da98676a              # double 0.89151899999999995
	.quad	0x4023bb4fe79ee02a              # double 9.8658439999999992
	.quad	0x3ff599da9c99285b              # double 1.3500620000000001
	.quad	0x400d58dcdb37c99b              # double 3.66839
	.quad	0x3ff9d6b97fe8ee6c              # double 1.6149230000000001
	.quad	0x401f99670196d8f5              # double 7.899807
	.quad	0x4014b824d4cb9ecf              # double 5.1798279999999997
	.quad	0x3fe153111f0c34c2              # double 0.54139000000000004
	.quad	0x40101aeff5c6c11a              # double 4.0263059999999999
	.quad	0x401789bb2788db05              # double 5.8845029999999996
	.quad	0x4006e089e34330d7              # double 2.8596379999999999
	.quad	0x40219c63497b7415              # double 8.8054450000000006
	.quad	0x402023e5109070fc              # double 8.0701070000000001
	.quad	0x400796d117b5286b              # double 2.9486409999999998
	.quad	0x40228d24e160d888              # double 9.2756720000000001
	.quad	0x4019e6c7eae5bc88              # double 6.4753720000000001
	.quad	0x402289b23dd54da5              # double 9.2689380000000003
	.quad	0x4018f62b27cbf6e4              # double 6.240399
	.quad	0x40123d68c692f6e8              # double 4.5599699999999999
	.quad	0x4012584b1ab0856e              # double 4.5862239999999996
	.quad	0x3ffea4840e1719f8              # double 1.915165
	.quad	0x3ff292d98bf7f067              # double 1.160852
	.quad	0x3fb4cdfaca361998              # double 0.081268000000000007
	.quad	0x4012f26e115592da              # double 4.7367480000000004
	.quad	0x401e995dd4c76d11              # double 7.6497719999999995
	.quad	0x3fdcc61522a6f3f5              # double 0.44958999999999999
	.quad	0x401529203a322af5              # double 5.2901619999999996
	.quad	0x3fd7685db76b3bb8              # double 0.36574499999999999
	.quad	0x3fee7ff9b56323bc              # double 0.95312200000000002
	.quad	0x401a1bef49cf56eb              # double 6.5272800000000002
	.quad	0x4021ca6b50b0f27c              # double 8.8953500000000005
	.quad	0x40173a5daf07bfe8              # double 5.8069980000000001
	.quad	0x3fe59c864883fd50              # double 0.67535699999999999
	.quad	0x400afaea3161a1dc              # double 3.3725170000000002
	.quad	0x4002c80303c07ee1              # double 2.3476620000000001
	.quad	0x3ff428c9b845564b              # double 1.2599579999999999
	.quad	0x3fea7bbb62413db8              # double 0.82760400000000001
	.quad	0x401c52ec28b2a6b1              # double 7.0809790000000001
	.quad	0x401c7b480a5accd5              # double 7.1203919999999998
	.quad	0x40166cbf6e3f78bc              # double 5.6061990000000002
	.quad	0x401fccd0fe8ab4fa              # double 7.9500159999999997
	.quad	0x400c23810e8858ff              # double 3.5173359999999998
	.quad	0x40229c3632c1f42c              # double 9.3051010000000005
	.quad	0x4021a19aa60913a5              # double 8.8156330000000001
	.quad	0x40171c44bf4cb189              # double 5.7776059999999996
	.quad	0x4022aa1986b9c305              # double 9.3322260000000004
	.quad	0x401cf5c5718eb895              # double 7.240011
	.quad	0x401582778140dd40              # double 5.3774090000000001
	.quad	0x4010554eb13dfb0d              # double 4.0833079999999997
	.quad	0x40090a832b990afe              # double 3.1301329999999998
	.quad	0x4011718372e6a769              # double 4.3608529999999996
	.quad	0x4020ef944241c3f0              # double 8.4679280000000006
	.quad	0x3fe8beb18116ebd5              # double 0.77327800000000002
	.quad	0x4020cf327aa68f4b              # double 8.4046819999999993
	.quad	0x4010acf0f9d2bf55              # double 4.1688879999999999
	.quad	0x4000dee807bbb624              # double 2.108841
	.quad	0x401d619220ff5409              # double 7.3452840000000004
	.quad	0x40076107b784662c              # double 2.9223780000000001
	.quad	0x3ff45e85fd04a2fd              # double 1.273077
	.quad	0x4014d5992428d435              # double 5.2085920000000003
	.quad	0x401edf9335d249e4              # double 7.7183349999999997
	.quad	0x4023139d5e4a3832              # double 9.5383099999999992
	.quad	0x40161a1ad6451b93              # double 5.525493
	.quad	0x3fa6ab5807fed203              # double 0.044276000000000003
	.quad	0x3fe89a543f1c7582              # double 0.76883900000000005
	.quad	0x40221bb0a2ca9ac3              # double 9.0540819999999993
	.quad	0x4009108c3f3e0371              # double 3.1330800000000001
	.quad	0x3ffd3c829cfdd228              # double 1.8272729999999999
	.quad	0x40218e16f86a0989              # double 8.7775189999999998
	.quad	0x401c2f8e3ac0c62e              # double 7.0464409999999997
	.quad	0x400e550dae3e6c4c              # double 3.7915299999999998
	.quad	0x3fd3dfa43fe5c91d              # double 0.310525
	.quad	0x3ff7cacaff6d3309              # double 1.4870099999999999
	.quad	0x4012307fed20296b              # double 4.5473629999999998
	.quad	0x40108b40f66a5508              # double 4.1359899999999996
	.quad	0x3fc71fcd24e160d9              # double 0.18065800000000001
	.quad	0x400495f78359bc34              # double 2.573226
	.quad	0x3feb89635610adcd              # double 0.86052099999999998
	.quad	0x40195b0318b9346a              # double 6.3388790000000004
	.quad	0x401fd0092ccf6be3              # double 7.9531599999999995
	.quad	0x3feda13c254a3c64              # double 0.92593199999999997
	.quad	0x400820abf76a2f49              # double 3.0159530000000001
	.quad	0x400d06256366d7a5              # double 3.6280009999999998
	.quad	0x401963f1c75818c6              # double 6.3476020000000002
	.quad	0x4015a9cd8127b2cc              # double 5.4158229999999996
	.quad	0x40223885f4a1272d              # double 9.1103970000000007
	.quad	0x400aac4c5974e65c              # double 3.33413
	.quad	0x40229d24e160d888              # double 9.3069220000000001
	.quad	0x4020d6f99806f263              # double 8.4198730000000008
	.quad	0x401c0bab649d388b              # double 7.0113960000000004
	.quad	0x4023bf05425f2021              # double 9.8730869999999999
	.quad	0x400dc8f42fe82518              # double 3.723122
	.quad	0x4004266d373affb0              # double 2.5187629999999999
	.quad	0x40204bd944aa53fc              # double 8.1481419999999999
	.quad	0x4009d5ffe6d58c8f              # double 3.229492
	.quad	0x4012649d388a8b09              # double 4.5982560000000001
	.quad	0x3ff3087fcb923a2a              # double 1.189575
	.quad	0x4019e780baa582dc              # double 6.4760770000000001
	.quad	0x402240effe2a3cea              # double 9.1268309999999992
	.quad	0x4017555d5f56a7ad              # double 5.8333640000000004
	.quad	0x4020489e12a51e32              # double 8.1418309999999998
	.quad	0x4012b7d1782d3847              # double 4.6795099999999996
	.quad	0x401a091148fd9fd3              # double 6.5088549999999996
	.quad	0x40218e553ac4f7ec              # double 8.7779939999999996
	.quad	0x401461c8a7a41e58              # double 5.0954920000000001
	.quad	0x3fd0f01b866e43aa              # double 0.26465499999999997
	.quad	0x40224accb3a2595c              # double 9.1460930000000004
	.quad	0x40076b14ec204f2b              # double 2.9272860000000001
	.quad	0x40125dfdac68a937              # double 4.5917880000000002
	.quad	0x3ff5444d013a92a3              # double 1.329175
	.quad	0x3ff2b1b25f633ce6              # double 1.1683829999999999
	.quad	0x401af8997c3d6840              # double 6.7427729999999997
	.quad	0x4013256da0168b5d              # double 4.7865510000000002
	.quad	0x4020107ad080b674              # double 8.0321870000000004
	.quad	0x4021d0d4fdf3b646              # double 8.9078750000000007
	.quad	0x40211f42dcf4623d              # double 8.5610569999999999
	.quad	0x402330a116659d13              # double 9.5949790000000003
	.quad	0x4004893af74cd317              # double 2.5670069999999998
	.quad	0x40172a1a500d5e8d              # double 5.7911159999999997
	.quad	0x401c9f81626b2f23              # double 7.155767
	.quad	0x40122d7be9856a38              # double 4.5444180000000003
	.quad	0x40015967caea747e              # double 2.1686550000000002
	.quad	0x400f7b445ed4a1ad              # double 3.9351889999999998
	.quad	0x3ff7403ff69014b6              # double 1.4531860000000001
	.quad	0x3fe984167a95c854              # double 0.79737400000000002
	.quad	0x402211c9f72f76e6              # double 9.0347439999999999
	.quad	0x401b0da9003eea21              # double 6.7633400000000004
	.quad	0x402209487768166a              # double 9.0181310000000003
	.quad	0x401170f776c4827b              # double 4.3603189999999996
	.quad	0x3f974a771c970f7c              # double 0.022745000000000001
	.quad	0x401ff30941c8216c              # double 7.9873399999999997
	.quad	0x401bf2e87d2c7b89              # double 6.987215
	.quad	0x401ee08c8259e1f4              # double 7.7192860000000003
	.quad	0x3ffb9f7b5aea3162              # double 1.7264360000000001
	.quad	0x4014fe78e1932d6f              # double 5.2485080000000002
	.quad	0x3fe28205ff1d81f1              # double 0.578372
	.quad	0x401f2cb4aec8d5c7              # double 7.7936579999999997
	.quad	0x4010dde19fc2a887              # double 4.2166810000000003
	.quad	0x4019e180d3cff64d              # double 6.470218
	.quad	0x401483fd0d0678c0              # double 5.128895
	.quad	0x40212d256798958e              # double 8.5881760000000007
	.quad	0x401a445bf26f1dc5              # double 6.566757
	.quad	0x3fe90e68e3ef2841              # double 0.78300899999999996
	.quad	0x400ad890d5a5b963              # double 3.3557450000000002
	.quad	0x40125d22c881e471              # double 4.5909529999999998
	.quad	0x3ff54db48909289e              # double 1.3314710000000001
	.quad	0x4015f4d1e96c3fc4              # double 5.4890819999999998
	.quad	0x401a1d0917d6b65b              # double 6.5283550000000004
	.quad	0x401b141f644955b4              # double 6.7696509999999996
	.quad	0x4013baa433508f65              # double 4.9322670000000004
	.quad	0x400e9aa68f4b61fe              # double 3.8255129999999999
	.quad	0x3fde3250b524399b              # double 0.47182099999999999
	.quad	0x4008f2a172abef07              # double 3.1184720000000001
	.quad	0x401a4a459103c8e2              # double 6.5725309999999997
	.quad	0x401977e9d94d0dd0              # double 6.3671030000000002
	.quad	0x4017261d8622c450              # double 5.7872219999999999
	.quad	0x401e05d0b73d188f              # double 7.5056789999999997
	.quad	0x3fdf5daad601ffb5              # double 0.49009200000000003
	.quad	0x4009a28e4fb97bb7              # double 3.2043729999999999
	.quad	0x401c901e68a0d34a              # double 7.1407410000000002
	.quad	0x3fe122856605ee57              # double 0.53546400000000005
	.quad	0x3ffce7a85015c209              # double 1.806557
	.quad	0x4020b3a237cdcca7              # double 8.3508469999999999
	.quad	0x3ff8501e2584f4c7              # double 1.51956
	.quad	0x401769baa1511e00              # double 5.8532510000000002
	.quad	0x401617c5692b3cc5              # double 5.5232140000000003
	.quad	0x4023789efd86a8fc              # double 9.7355879999999999
	.quad	0x40136ce3150dae3e              # double 4.8563349999999996
	.quad	0x40113a8a82a5614e              # double 4.307169
	.quad	0x400793c792d1287c              # double 2.9471579999999999
	.quad	0x401501fc08fa7a85              # double 5.251938
	.quad	0x400aa01de2691644              # double 3.328182
	.quad	0x401cb7c30d306a2b              # double 7.1794549999999999
	.quad	0x3ffbdd9a0f0a5eff              # double 1.7416020000000001
	.quad	0x40204b0c4588a04d              # double 8.1465779999999999
	.quad	0x40230d4738a3b57c              # double 9.5259339999999994
	.quad	0x4022b5610adcd2d4              # double 9.3542559999999994
	.quad	0x3fc022706d506573              # double 0.126051
	.quad	0x401269a38fbca106              # double 4.6031630000000003
	.quad	0x3fdf9c560c7c0f45              # double 0.49391699999999999
	.quad	0x4020ae95b78cc9a7              # double 8.3409859999999991
	.quad	0x4023c815e39713ad              # double 9.8907919999999993
	.quad	0x401243e100607810              # double 4.5662880000000001
	.quad	0x4018027e0ef99807              # double 6.002434
	.quad	0x400a1baf533f4235              # double 3.2635179999999999
	.quad	0x401df4b5dcc63f14              # double 7.4889749999999999
	.quad	0x40180f45e0b4e11e              # double 6.0149150000000002
	.quad	0x4012450a02b84125              # double 4.5674210000000004
	.quad	0x4013def459d9902a              # double 4.9677290000000003
	.quad	0x401e89802c0a4a06              # double 7.6342780000000001
	.quad	0x401350f12c27a637              # double 4.8290449999999998
	.quad	0x4023d54ac29bf163              # double 9.9165860000000005
	.quad	0x40190e59f2ba9d1f              # double 6.2640149999999997
	.quad	0x4004ff090f733a8a              # double 2.6245289999999999
	.quad	0x40134c42a66dbd73              # double 4.8244730000000002
	.quad	0x4017d7f993d5347a              # double 5.9609129999999997
	.quad	0x4014f0507a6bd6e9              # double 5.2346820000000003
	.quad	0x4023494e3bcd35a8              # double 9.6431749999999993
	.quad	0x401a485015c20924              # double 6.5706179999999996
	.quad	0x4015349906cca2db              # double 5.3013649999999997
	.quad	0x402324d29131ec0b              # double 9.5719189999999994
	.quad	0x4020fe06fac6045c              # double 8.4961470000000005
	.quad	0x40238e62dc6e2a80              # double 9.778098
	.quad	0x400b5f1f9acffa7f              # double 3.4214470000000001
	.quad	0x3fd85ab3aabcd78c              # double 0.38053599999999999
	.quad	0x4000b7a5f41aef70              # double 2.0896720000000002
	.quad	0x401e0a786c22680a              # double 7.5102250000000002
	.quad	0x40095d4f15e7c8d2              # double 3.1705610000000002
	.quad	0x3ff7ebe48a58b3f6              # double 1.4950909999999999
	.quad	0x401eba979e16d6dc              # double 7.6822189999999999
	.quad	0x4001cef2c7325919              # double 2.2260490000000002
	.quad	0x4012f39e6ab9b23e              # double 4.7379090000000001
	.quad	0x401d5d06bbdbe3c1              # double 7.340846
	.quad	0x402149ca9ef5232d              # double 8.6441239999999997
	.quad	0x40009bdcf0307f24              # double 2.0761050000000001
	.quad	0x401b6dd00f776c48              # double 6.8572389999999999
	.quad	0x4000061e0c5a8156              # double 2.0029870000000001
	.quad	0x4018b05d95dd4c77              # double 6.1722320000000002
	.quad	0x3fee52b0a6fc58ac              # double 0.94759400000000004
	.quad	0x40076cdf266ba494              # double 2.9281600000000001
	.quad	0x4011d8655193708b              # double 4.4613240000000003
	.quad	0x4014b2ff08893b7e              # double 5.1748010000000004
	.quad	0x4022734d26fa3fcd              # double 9.2251980000000007
	.quad	0x40223a0f9096bb99              # double 9.1134000000000004
	.quad	0x401068b588e368f1              # double 4.1022550000000004
	.quad	0x3feb6f1348b22079              # double 0.85730899999999999
	.quad	0x3fabcff64cf8d717              # double 0.054321000000000001
	.quad	0x3ff1a8d434a01abd              # double 1.103718
	.quad	0x4010b84fd2a62aa2              # double 4.1799920000000004
	.quad	0x4019fa30984e3fff              # double 6.494326
	.quad	0x40217315f88fc936              # double 8.7247769999999996
	.quad	0x4011b79c842fa509              # double 4.4293079999999998
	.quad	0x4018380e8c8abd5e              # double 6.0547430000000002
	.quad	0x3ffdf400b88ca3e8              # double 1.872071
	.quad	0x3feedca07f66e86c              # double 0.96443199999999995
	.quad	0x40231533b1077469              # double 9.5414100000000008
	.quad	0x4017cee568a50508              # double 5.9520470000000003
	.quad	0x40162863beec397a              # double 5.5394430000000003
	.quad	0x40120ade657b84dc              # double 4.5106140000000003
	.quad	0x4005ecc5fbf83383              # double 2.740612
	.quad	0x3ff7c950763a1901              # double 1.4866490000000001
	.quad	0x400029d388a8b08e              # double 2.0204230000000001
	.quad	0x4023e4ea077036ca              # double 9.9470980000000004
	.quad	0x3fb4539fba450acc              # double 0.079400999999999999
	.quad	0x40208db0ff10ecb7              # double 8.2767409999999995
	.quad	0x40219fa4c61d8623              # double 8.8118040000000004
	.quad	0x4023e3fe3b03e20d              # double 9.9452990000000003
	.quad	0x400bb3c925785f8d              # double 3.4627859999999999
	.quad	0x4015aa31e7d9988d              # double 5.4162059999999999
	.quad	0x401180df15a4acf3              # double 4.3758509999999999
	.quad	0x4008ac7219220ff5              # double 3.0842019999999999
	.quad	0x40234493a7115161              # double 9.6339389999999998
	.quad	0x4021611bc5586445              # double 8.6896649999999998
	.quad	0x4022b1884c6a3bde              # double 9.346743
	.quad	0x40148633482be8bc              # double 5.1310549999999999
	.quad	0x401e6a4228997c3d              # double 7.6037679999999996
	.quad	0x3ff088ca3e7d1351              # double 1.033396
	.quad	0x40135abfb9bed30f              # double 4.838622
	.quad	0x40197b0468448cf8              # double 6.3701340000000002
	.quad	0x400f5fb58d1526d9              # double 3.9217330000000001
	.quad	0x4019ecbd1244a622              # double 6.4811899999999998
	.quad	0x400f2023a6ce3583              # double 3.8906930000000002
	.quad	0x400dc7ee9142b303              # double 3.722623
	.quad	0x400cff1e0828c36e              # double 3.6245690000000002
	.quad	0x401180995aaf78ff              # double 4.3755850000000001
	.quad	0x400ec560c7c0f451              # double 3.8463759999999998
	.quad	0x4007714445aa2e3c              # double 2.9303059999999999
	.quad	0x401b9040bfe3b03e              # double 6.8908719999999999
	.quad	0x401b105681ecd4aa              # double 6.7659549999999999
	.quad	0x40148bb6aa4b9885              # double 5.1364390000000002
	.quad	0x40215ea22b3892ef              # double 8.6848310000000009
	.quad	0x401a8b124d099e0e              # double 6.6358119999999996
	.quad	0x40119e02a77a2ced              # double 4.4043070000000002
	.quad	0x4011fcfd4bf0995b              # double 4.4970600000000003
	.quad	0x3fe1076e1deacc92              # double 0.53215699999999999
	.quad	0x40109ebe1650a45d              # double 4.1550219999999998
	.quad	0x401900f5a1016ce8              # double 6.2509370000000004
	.quad	0x4016d886162f166e              # double 5.711449
	.quad	0x401d2be5d9e40c84              # double 7.2928689999999996
	.quad	0x3ff91b4bb5e0f7fd              # double 1.569164
	.quad	0x4001b30be0ded289              # double 2.2124250000000001
	.quad	0x40034710cb295e9e              # double 2.4097
	.quad	0x401de9185cee17a0              # double 7.4776319999999998
	.quad	0x4004fe97d06bbdbe              # double 2.6243129999999999
	.quad	0x40128495e17e34b9              # double 4.6294779999999998
	.quad	0x401d908c3f3e0371              # double 7.3911600000000002
	.quad	0x40227221ea359360              # double 9.2229150000000004
	.quad	0x400b875818c5c9a3              # double 3.4410859999999999
	.quad	0x4013b155d5f56a7b              # double 4.9231790000000002
	.quad	0x3febd106ee30caa3              # double 0.86926599999999998
	.quad	0x401da41aac53b081              # double 7.4102579999999998
	.quad	0x3fefa771c970f7ba              # double 0.98919000000000001
	.quad	0x4019474a771c970f              # double 6.3196199999999996
	.quad	0x401695fbb517a461              # double 5.6464679999999996
	.quad	0x401ede86c6583e85              # double 7.7173109999999995
	.quad	0x40237d393250b524              # double 9.7445769999999996
	.quad	0x400117f51efb6dca              # double 2.136698
	.quad	0x401029e3c968943e              # double 4.0409079999999999
	.quad	0x4010767f0aa21a72              # double 4.1157190000000003
	.quad	0x3ff8dc768dfbd6a6              # double 1.5538240000000001
	.quad	0x3fff454046412cf1              # double 1.954407
	.quad	0x40060fa7a85015c2              # double 2.757644
	.quad	0x40138fd9ba1b1961              # double 4.890479
	.quad	0x3ff8c6eb0b7c3505              # double 1.5485640000000001
	.quad	0x4023190624dd2f1b              # double 9.5488750000000006
	.quad	0x3fffd72bcb5fe543              # double 1.990032
	.quad	0x3fe03777d0f1f57b              # double 0.50677099999999997
	.quad	0x4001864c2f837b4a              # double 2.1905749999999999
	.quad	0x4016ce2ef4e0114d              # double 5.7013509999999998
	.quad	0x401cabf93ff25e57              # double 7.1679430000000002
	.quad	0x4015fafa7221858c              # double 5.4950960000000002
	.quad	0x401ed6916440f239              # double 7.7095390000000003
	.quad	0x4023cf2d3c792d13              # double 9.9046420000000008
	.quad	0x3fac7a7c9de05037              # double 0.055621999999999998
	.quad	0x400fdda6a4441787              # double 3.983228
	.quad	0x4017d65a14488c61              # double 5.9593280000000002
	.quad	0x4000647ecfe9b7bf              # double 2.0490699999999999
	.quad	0x401fdbbd7b2031cf              # double 7.9645900000000002
	.quad	0x400829b30728e92d              # double 3.0203609999999999
	.quad	0x401fa3c60029f16b              # double 7.9099349999999999
	.quad	0x40210055da272863              # double 8.5006550000000001
	.quad	0x400e51b3f20a73f7              # double 3.7898939999999999
	.quad	0x3ff2934df04ddb55              # double 1.160963
	.quad	0x4023729a5ebb773a              # double 9.7238340000000001
	.quad	0x401174ef0281ba80              # double 4.3641930000000002
	.quad	0x401df8909289dae0              # double 7.4927390000000003
	.quad	0x40130bb7f9d6f113              # double 4.761444
	.quad	0x3ff46a582dbe7f2c              # double 1.275963
	.quad	0x3fd22c450268900c              # double 0.28395199999999998
	.quad	0x4012e9389b52007e              # double 4.7277550000000002
	.quad	0x3fe9d81f10667f91              # double 0.80763200000000002
	.quad	0x3ff1a3854046412d              # double 1.102422
	.quad	0x3fd7db9c7368ad69              # double 0.37277900000000003
	.quad	0x402289620685553f              # double 9.2683260000000001
	.quad	0x4009dd70a3d70a3d              # double 3.2331249999999998
	.quad	0x40136637bd05af6c              # double 4.8498219999999996
	.quad	0x401c3976ff3ade22              # double 7.0561179999999997
	.quad	0x4022318958d9b5e9              # double 9.0967509999999994
	.quad	0x401d98f08461f9f0              # double 7.3993549999999999
	.quad	0x3ff9373affb04ee8              # double 1.5759840000000001
	.quad	0x40133f7878b7a1c2              # double 4.8119829999999997
	.quad	0x4006a5f7c6759ab7              # double 2.8310390000000001
	.quad	0x3fe5e9c886162f16              # double 0.68478799999999995
	.quad	0x3fea502eec7c957d              # double 0.82228800000000002
	.quad	0x4023c1a47a9e2bd0              # double 9.8782080000000008
	.quad	0x400c61101b003687              # double 3.5473940000000002
	.quad	0x3ff9d1d57ff9b563              # double 1.613729
	.quad	0x4014ebfc6540cc79              # double 5.2304550000000001
	.quad	0x401dcd4f15e7c8d2              # double 7.4504970000000004
	.quad	0x401e3bd87b56b873              # double 7.5584429999999995
	.quad	0x4022dc5436b8f9b1              # double 9.4303299999999996
	.quad	0x3feb44955b4677b4              # double 0.85212200000000004
	.quad	0x401a49a73b42cc2d              # double 6.5719269999999996
	.quad	0x3fe1a5657fb69985              # double 0.55144000000000004
	.quad	0x3fa51159c4977425              # double 0.041147999999999997
	.quad	0x40197aa1511dffc5              # double 6.3697559999999998
	.quad	0x4016c145d851654d              # double 5.6887429999999997
	.quad	0x401f7d99cbee807c              # double 7.8726570000000002
	.quad	0x3fcffc08fa7a8501              # double 0.24987899999999999
	.quad	0x4016c982cb20fb22              # double 5.6967879999999997
	.quad	0x4017122291fb3fa7              # double 5.7677100000000001
	.quad	0x400adb6cbd987c63              # double 3.3571409999999999
	.quad	0x4021674eebf65dc0              # double 8.7017740000000003
	.quad	0x40041af3a14cec42              # double 2.5131600000000001
	.quad	0x4012875bc44bf4cb              # double 4.6321859999999999
	.quad	0x3ff0ed373affb04f              # double 1.057914
	.quad	0x400fa327ed84d339              # double 3.954666
	.quad	0x401508323358f2e0              # double 5.2580039999999997
	.quad	0x40122da4ce8101f3              # double 4.5445739999999999
	.quad	0x4005efc3f811f4f5              # double 2.742073
	.quad	0x3ff1c5681ecd4aa1              # double 1.110695
	.quad	0x4020d0c436fc1590              # double 8.4077470000000005
	.quad	0x3ff5613d31b9b670              # double 1.3362400000000001
	.quad	0x400d59420b3d4ae4              # double 3.6685829999999999
	.quad	0x4014c6bfca85cab0              # double 5.1940910000000002
	.quad	0x40029ba775fb2ee0              # double 2.326003
	.quad	0x4020c1691a75cd0c              # double 8.3777550000000005
	.quad	0x3ff5ef8ad2567989              # double 1.3709819999999999
	.quad	0x400c71327243137b              # double 3.555272
	.quad	0x4022ada09cc319c6              # double 9.3391160000000006
	.quad	0x40188e5710880d80              # double 6.1390039999999999
	.quad	0x40150fede97d06bc              # double 5.2655560000000001
	.quad	0x4016e3bfb58d1527              # double 5.7224110000000001
	.quad	0x402079d5c31593e6              # double 8.237959
	.quad	0x401f20fbeb9e492c              # double 7.7822110000000002
	.quad	0x40237baade657b85              # double 9.7415380000000002
	.quad	0x4020076295208e15              # double 8.014424
	.quad	0x3ffafc6a7ef9db23              # double 1.686625
	.quad	0x400af10667f90d9d              # double 3.3676879999999998
	.quad	0x4019dcc25072085b              # double 6.4655849999999999
	.quad	0x40217911f0c34c1b              # double 8.7364650000000008
	.quad	0x400108cbd1244a62              # double 2.1292949999999999
	.quad	0x401d2301eabbcb1d              # double 7.2841870000000002
	.quad	0x40226da1a93293d1              # double 9.214124
	.quad	0x400376aad1d041cc              # double 2.4329429999999999
	.quad	0x3ff190ce4ead0c3d              # double 1.097853
	.quad	0x4003a51761459536              # double 2.4556110000000002
	.quad	0x401bcaceaaf35e31              # double 6.948054
	.quad	0x4012b1e6cd29131f              # double 4.6737320000000002
	.quad	0x40188d7fd82773e2              # double 6.1381829999999997
	.quad	0x402366f9fcb0c027              # double 9.7011260000000003
	.quad	0x40119b9e8c47a17f              # double 4.4019719999999998
	.quad	0x4018decc814d727a              # double 6.2175770000000004
	.quad	0x4022f390214ad363              # double 9.4757090000000001
	.quad	0x400103ae2541d8e8              # double 2.1267969999999998
	.quad	0x4023302385404641              # double 9.5940209999999996
	.quad	0x4022856ffc115df6              # double 9.2606199999999994
	.quad	0x40043284167a95c8              # double 2.5246659999999999
	.quad	0x401efa3400b88ca4              # double 7.7443390000000001
	.quad	0x40119bde82d7b635              # double 4.4022160000000001
	.quad	0x40203c40d0aaa7df              # double 8.1176820000000003
	.quad	0x3ff5b6113404ea4b              # double 1.3569500000000001
	.quad	0x40157b1bbcf4e875              # double 5.3702230000000002
	.quad	0x401fbfc504816f00              # double 7.9372749999999996
	.quad	0x4023cbbb40b34e77              # double 9.8979130000000008
	.quad	0x40132f04ddb5525d              # double 4.7959170000000002
	.quad	0x3ffebf1843c3a42f              # double 1.921654
	.quad	0x3fe5b5286b59146e              # double 0.67836399999999997
	.quad	0x40232bbadc0980b2              # double 9.5854099999999995
	.quad	0x3fff82b1f687b13a              # double 1.969408
	.quad	0x400ecd972cd7cf5f              # double 3.8503859999999999
	.quad	0x401a5f45e0b4e11e              # double 6.5930400000000002
	.quad	0x3ffa581f10667f91              # double 1.646514
	.quad	0x402129715c63ae25              # double 8.5809429999999995
	.quad	0x400594195cc857f3              # double 2.697314
	.quad	0x401a699bf5946c33              # double 6.6031339999999998
	.quad	0x400507192ea52ef9              # double 2.628466
	.quad	0x40211fabb8800eae              # double 8.5618569999999998
	.quad	0x3fea37a1c25d0742              # double 0.81929099999999999
	.quad	0x4020f191148fd9fd              # double 8.4718099999999996
	.quad	0x4023c943393ab431              # double 9.893091
	.quad	0x4006e8472c0e7bc4              # double 2.8634170000000001
	.quad	0x400435f3d7d3910c              # double 2.5263439999999999
	.quad	0x401109595feda661              # double 4.2591299999999999
	.quad	0x4011692ff4ba51a0              # double 4.352722
	.quad	0x400b3e353f7ced91              # double 3.4053749999999998
	.quad	0x40197112fd32c626              # double 6.3604240000000001
	.quad	0x400fd7c3504c48ae              # double 3.980353
	.quad	0x3ff0ae3d5fdcdf6a              # double 1.0425390000000001
	.quad	0x40192e7b3d8e0008              # double 6.2953919999999997
	.quad	0x400ccc75c4a83b1d              # double 3.599834
	.quad	0x400e4b367a0f9097              # double 3.7867250000000001
	.quad	0x401a613059641f64              # double 6.5949109999999997
	.quad	0x3ff616d5cfaacd9f              # double 1.3805750000000001
	.quad	0x4010e80303c07ee1              # double 4.2265740000000003
	.quad	0x3ff2270c1333b96b              # double 1.134533
	.quad	0x4022b70025bfad2a              # double 9.3574230000000007
	.quad	0x4000dc6c97d8cf3a              # double 2.1076290000000002
	.quad	0x401e04cad57bc7f7              # double 7.5046799999999995
	.quad	0x4012a6c1a048e044              # double 4.6628480000000003
	.quad	0x4020a77ab324851b              # double 8.3271080000000008
	.quad	0x3ff41a2a4db163bb              # double 1.2563880000000001
	.quad	0x4017e4edf6124074              # double 5.9735639999999997
	.quad	0x4016a3b5bf6a0dbb              # double 5.6598730000000002
	.quad	0x401f6fcf80dc3372              # double 7.8591899999999999
	.quad	0x4016b9ad42c3c9ef              # double 5.6813250000000002
	.quad	0x40217d95feda6613              # double 8.7452850000000009
	.quad	0x4019950ca1cef241              # double 6.395556
	.quad	0x3fec07e7c06e19b9              # double 0.87596499999999999
	.quad	0x3fdc82730c671690              # double 0.44546200000000002
	.quad	0x3fe6fee4e26d4802              # double 0.718615
	.quad	0x4000eaa64c2f837b              # double 2.1145749999999999
	.quad	0x4023771cb89d6adf              # double 9.7326409999999992
	.quad	0x401c61fe64f54d1f              # double 7.0956970000000004
	.quad	0x40013b9c7368ad69              # double 2.1541070000000002
	.quad	0x4021a7cc9ea9a3d3              # double 8.8277330000000003
	.quad	0x3fbf1f255f3519bd              # double 0.121569
	.quad	0x4021cc666ec9e237              # double 8.8992190000000004
	.quad	0x3ff79b068123810f              # double 1.4753480000000001
	.quad	0x4017fabc0e38a7e7              # double 5.9948579999999998
	.quad	0x40238bc1eff9f87f              # double 9.7729639999999999
	.quad	0x40215b955f78359c              # double 8.6788740000000004
	.quad	0x401583a4b5568e82              # double 5.378558
	.quad	0x4020bf6922d948dc              # double 8.3738489999999998
	.quad	0x4021699780baa583              # double 8.7062340000000003
	.quad	0x3fcc82f944241c3f              # double 0.222747
	.quad	0x4007f7b2031ceaf2              # double 2.9959449999999999
	.quad	0x401e77168f8e7ddd              # double 7.6162970000000003
	.quad	0x4003cde657b84dba              # double 2.4755370000000001
	.quad	0x3ff4841461b6d43d              # double 1.282246
	.quad	0x4013a4dd2f1a9fbe              # double 4.9109999999999996
	.quad	0x4017ef1a1986b9c3              # double 5.983498
	.quad	0x402084636b096356              # double 8.2585709999999999
	.quad	0x400f4fde2ef4e011              # double 3.9139979999999999
	.quad	0x4017e0ba6266fd65              # double 5.9694609999999999
	.quad	0x401e9af251c193b4              # double 7.6513150000000003
	.quad	0x401fecd530489d28              # double 7.9812820000000002
	.quad	0x402059afc04c8bca              # double 8.1751690000000004
	.quad	0x401ce4f61672324d              # double 7.2235950000000004
	.quad	0x400fb65907d91255              # double 3.9640369999999998
	.quad	0x401412fdb8fde2ef              # double 5.0185459999999997
	.quad	0x4021f52007dd4413              # double 8.9787599999999994
	.quad	0x40114cc2d6a9c561              # double 4.3249620000000002
	.quad	0x4012326aa8eb4635              # double 4.5492350000000004
	.quad	0x4013474299d883ba              # double 4.8195899999999998
	.quad	0x4016979e9d0e9920              # double 5.648066
	.quad	0x401a82799a1fd157              # double 6.6274170000000003
	.quad	0x401d9290257c914b              # double 7.3931279999999999
	.quad	0x400886013660e51d              # double 3.0654319999999999
	.quad	0x401d668f08461f9f              # double 7.350155
	.quad	0x401109acbc8c0ce9              # double 4.2594479999999999
	.quad	0x4012bf39d1b2e59b              # double 4.686744
	.quad	0x4019f5b813016484              # double 6.48996
	.quad	0x40029c6f36ef8056              # double 2.326384
	.quad	0x4009f210be9424e6              # double 3.2431960000000002
	.quad	0x40153aada33bd9cb              # double 5.3073030000000001
	.quad	0x401d6a29c779a6b5              # double 7.353675
	.quad	0x400cdb8bac710cb3              # double 3.6072000000000002
	.quad	0x3ff81ce7cd035372              # double 1.5070570000000001
	.quad	0x401e3ca2120e1f7d              # double 7.5592119999999995
	.quad	0x3fea63992c8c5005              # double 0.824658
	.quad	0x400fe62aa19439de              # double 3.9873859999999999
	.quad	0x402034d74927913f              # double 8.1032050000000009
	.quad	0x3ff297fa5d28d003              # double 1.162104
	.quad	0x3fbf94b7b28954a8              # double 0.123363
	.quad	0x4006ee32e3821af8              # double 2.8663080000000001
	.quad	0x4011f9231c64ba95              # double 4.4932980000000002
	.quad	0x400279fba450acc1              # double 2.3095620000000001
	.quad	0x3ffd40df58c08b76              # double 1.828338
	.quad	0x400ca2795703f2d4              # double 3.5793330000000001
	.quad	0x4021e4d056c508b3              # double 8.9469019999999997
	.quad	0x401d3bdf090f733b              # double 7.3084680000000004
	.quad	0x3ff11359791819d2              # double 1.067224
	.quad	0x402252eb5f5f0b28              # double 9.1619519999999994
	.quad	0x401f0f2495e17e35              # double 7.7647880000000002
	.quad	0x402017f737da61e1              # double 8.0468080000000004
	.quad	0x3ff6bde0d66f0cfe              # double 1.421357
	.quad	0x4007946c332f0175              # double 2.9474719999999999
	.quad	0x402174586876e1df              # double 8.7272370000000006
	.quad	0x3ffa76640a6b93cd              # double 1.653904
	.quad	0x400582eba27ae9ab              # double 2.6889259999999999
	.quad	0x4020cc99ae924f22              # double 8.3996099999999991
	.quad	0x400d139b024f6599              # double 3.6345730000000001
	.quad	0x3ff117bfa4c61d86              # double 1.068298
	.quad	0x4001b73c925785f9              # double 2.2144710000000001
	.quad	0x40032cf9e3864cb6              # double 2.3969610000000001
	.quad	0x4014d93ff25e56cd              # double 5.2121579999999996
	.quad	0x401cc68f08461f9f              # double 7.193905
	.quad	0x40002ab606b7aa26              # double 2.0208550000000001
	.quad	0x40195ddfc9ff92f3              # double 6.3416740000000003
	.quad	0x401f3e39713ad5bf              # double 7.810766
	.quad	0x400409b499d0203e              # double 2.5047389999999998
	.quad	0x3fe6b38d60a63305              # double 0.70941799999999999
	.quad	0x401118049667b5f2              # double 4.2734550000000002
	.quad	0x4012b7778dd616f8              # double 4.6791669999999996
	.quad	0x401b7cdfaca36199              # double 6.8719469999999996
	.quad	0x4022d4ed0b30b5aa              # double 9.4158709999999992
	.quad	0x4018b7f0aa21a71a              # double 6.1796290000000003
	.quad	0x401e3634dad31fcd              # double 7.5529359999999998
	.quad	0x400c5aeddce7cd03              # double 3.5443989999999999
	.quad	0x40229abc2fc69729              # double 9.3022170000000006
	.quad	0x4023329cbab649d4              # double 9.5988520000000008
	.quad	0x401f689e774eebf6              # double 7.8521669999999997
	.quad	0x400bae12e83a109d              # double 3.459997
	.quad	0x4023b55ae1cde5d2              # double 9.8542090000000009
	.quad	0x401c133e35c5b4ab              # double 7.0187920000000004
	.quad	0x4012a1e321a2e7f7              # double 4.658093
	.quad	0x4022f0f4b61fe21e              # double 9.4706170000000007
	.quad	0x40203e1f18c9fb61              # double 8.1213309999999996
	.quad	0x4010cf26f1dc50ce              # double 4.2022969999999997
	.quad	0x4003091c087442c8              # double 2.379448
	.quad	0x40156eb463497b74              # double 5.3581099999999999
	.quad	0x4007f9c27e953155              # double 2.996953
	.quad	0x401280092ccf6be3              # double 4.6250349999999996
	.quad	0x4001a9c99285a922              # double 2.2079040000000001
	.quad	0x4023dc560c7c0f45              # double 9.9303439999999998
	.quad	0x400ecd7b634dad32              # double 3.850333
	.quad	0x3ffc29e3c968943e              # double 1.760227
	.quad	0x3ffba2d6238da3c2              # double 1.727255
	.quad	0x401ead32c625e99f              # double 7.6691390000000003
	.quad	0x4022f94057082492              # double 9.4868190000000006
	.quad	0x401705e3da2f8bdf              # double 5.7557520000000002
	.quad	0x401780d306a2b170              # double 5.8758049999999997
	.quad	0x3ff99fd47bedb728              # double 1.601521
	.quad	0x3fe47e9b7bf1e8e6              # double 0.640455
	.quad	0x3fe0c31df761cbcd              # double 0.52381800000000001
	.quad	0x4020eb3fe9fadafd              # double 8.4594719999999999
	.quad	0x4021086e5cd4ed2d              # double 8.5164670000000005
	.quad	0x401a9daa4fca42af              # double 6.6539700000000002
	.quad	0x401088f75536933a              # double 4.133756
	.quad	0x40232d16fc9bc771              # double 9.5880659999999995
	.quad	0x401241593e5fb720              # double 4.5638170000000002
	.quad	0x401a9268900c521e              # double 6.6429770000000001
	.quad	0x400084a72ead9275              # double 2.0647720000000001
	.quad	0x4010d350d2806af4              # double 4.2063629999999996
	.quad	0x401b425785f8d2e5              # double 6.8147869999999999
	.quad	0x40161c7368ad6883              # double 5.5277839999999996
	.quad	0x40225ed7a56de332              # double 9.1852389999999993
	.quad	0x3f91d19157abb880              # double 0.017401
	.quad	0x40238d590c0ad03e              # double 9.7760700000000007
	.quad	0x40236a8c586876e2              # double 9.7081020000000002
	.quad	0x3fc5041cc532a498              # double 0.164188
	.quad	0x4020199dece57109              # double 8.0500330000000009
	.quad	0x401095bab21815a0              # double 4.1462199999999996
	.quad	0x400a54ab1d4f9c20              # double 3.2913420000000002
	.quad	0x400b640746455eaf              # double 3.4238420000000001
	.quad	0x401202263d816acf              # double 4.5020990000000003
	.quad	0x3ff1ed77318fc505              # double 1.1204750000000001
	.quad	0x401891d7dbf487fd              # double 6.1424250000000002
	.quad	0x4023a48387df5cf2              # double 9.8213159999999995
	.quad	0x401f97d4e09784ec              # double 7.8982729999999997
	.quad	0x401e518e325d4a5e              # double 7.579644
	.quad	0x3ff36f0281ba7fc3              # double 1.214602
	.quad	0x40022aa00192a737              # double 2.270813
	.quad	0x400ee2f37fbefd00              # double 3.8608159999999998
	.size	.L__constant_5000xf64, 40000

	.section	".note.GNU-stack","",@progbits
