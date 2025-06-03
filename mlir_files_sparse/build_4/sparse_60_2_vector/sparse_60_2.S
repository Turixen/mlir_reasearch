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
	.quad	0x414770bd7120c8cd              # double 3072378.8838129998
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
	.quad	59                              # 0x3b
	.quad	81                              # 0x51
	.quad	140                             # 0x8c
	.quad	162                             # 0xa2
	.quad	220                             # 0xdc
	.quad	239                             # 0xef
	.quad	298                             # 0x12a
	.quad	324                             # 0x144
	.quad	383                             # 0x17f
	.quad	409                             # 0x199
	.quad	469                             # 0x1d5
	.quad	493                             # 0x1ed
	.quad	556                             # 0x22c
	.quad	574                             # 0x23e
	.quad	632                             # 0x278
	.quad	653                             # 0x28d
	.quad	713                             # 0x2c9
	.quad	733                             # 0x2dd
	.quad	797                             # 0x31d
	.quad	811                             # 0x32b
	.quad	869                             # 0x365
	.quad	886                             # 0x376
	.quad	945                             # 0x3b1
	.quad	963                             # 0x3c3
	.quad	1025                            # 0x401
	.quad	1043                            # 0x413
	.quad	1101                            # 0x44d
	.quad	1119                            # 0x45f
	.quad	1180                            # 0x49c
	.quad	1205                            # 0x4b5
	.quad	1265                            # 0x4f1
	.quad	1286                            # 0x506
	.quad	1347                            # 0x543
	.quad	1361                            # 0x551
	.quad	1418                            # 0x58a
	.quad	1441                            # 0x5a1
	.quad	1502                            # 0x5de
	.quad	1521                            # 0x5f1
	.quad	1579                            # 0x62b
	.quad	1600                            # 0x640
	.quad	1660                            # 0x67c
	.quad	1672                            # 0x688
	.quad	1734                            # 0x6c6
	.quad	1750                            # 0x6d6
	.quad	1811                            # 0x713
	.quad	1835                            # 0x72b
	.quad	1893                            # 0x765
	.quad	1910                            # 0x776
	.quad	1976                            # 0x7b8
	.quad	1995                            # 0x7cb
	.quad	2056                            # 0x808
	.quad	2076                            # 0x81c
	.quad	2141                            # 0x85d
	.quad	2164                            # 0x874
	.quad	2227                            # 0x8b3
	.quad	2248                            # 0x8c8
	.quad	2304                            # 0x900
	.quad	2321                            # 0x911
	.quad	2381                            # 0x94d
	.quad	2404                            # 0x964
	.quad	2457                            # 0x999
	.quad	2480                            # 0x9b0
	.quad	2540                            # 0x9ec
	.quad	2557                            # 0x9fd
	.quad	2619                            # 0xa3b
	.quad	2645                            # 0xa55
	.quad	2706                            # 0xa92
	.quad	2722                            # 0xaa2
	.quad	2783                            # 0xadf
	.quad	2804                            # 0xaf4
	.quad	2863                            # 0xb2f
	.quad	2877                            # 0xb3d
	.quad	2932                            # 0xb74
	.quad	2951                            # 0xb87
	.quad	3016                            # 0xbc8
	.quad	3038                            # 0xbde
	.quad	3096                            # 0xc18
	.quad	3121                            # 0xc31
	.quad	3181                            # 0xc6d
	.quad	3203                            # 0xc83
	.quad	3260                            # 0xcbc
	.quad	3275                            # 0xccb
	.quad	3336                            # 0xd08
	.quad	3352                            # 0xd18
	.quad	3414                            # 0xd56
	.quad	3440                            # 0xd70
	.quad	3495                            # 0xda7
	.quad	3515                            # 0xdbb
	.quad	3571                            # 0xdf3
	.quad	3597                            # 0xe0d
	.quad	3662                            # 0xe4e
	.quad	3686                            # 0xe66
	.quad	3750                            # 0xea6
	.quad	3779                            # 0xec3
	.quad	3834                            # 0xefa
	.quad	3849                            # 0xf09
	.quad	3907                            # 0xf43
	.quad	3923                            # 0xf53
	.quad	3979                            # 0xf8b
	.quad	4000                            # 0xfa0
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_4000xindex,@object # @__constant_4000xindex
	.p2align	6, 0x0
.L__constant_4000xindex:
	.quad	0                               # 0x0
	.quad	2                               # 0x2
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
	.quad	59                              # 0x3b
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
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
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
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	19                              # 0x13
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
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
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	96                              # 0x60
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
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	61                              # 0x3d
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
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
	.quad	19                              # 0x13
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
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
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
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
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
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	60                              # 0x3c
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
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
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
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
	.quad	71                              # 0x47
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	88                              # 0x58
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
	.quad	71                              # 0x47
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
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	68                              # 0x44
	.quad	81                              # 0x51
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
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
	.quad	75                              # 0x4b
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
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	16                              # 0x10
	.quad	26                              # 0x1a
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
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
	.quad	49                              # 0x31
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
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	21                              # 0x15
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	77                              # 0x4d
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
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
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
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
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	84                              # 0x54
	.quad	95                              # 0x5f
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
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	89                              # 0x59
	.quad	96                              # 0x60
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
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
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
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
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
	.quad	49                              # 0x31
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
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	98                              # 0x62
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
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	9                               # 0x9
	.quad	17                              # 0x11
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
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
	.quad	35                              # 0x23
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
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	55                              # 0x37
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
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
	.quad	57                              # 0x39
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
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
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
	.quad	45                              # 0x2d
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
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
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
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
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
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	65                              # 0x41
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
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
	.quad	49                              # 0x31
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
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	54                              # 0x36
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	89                              # 0x59
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
	.quad	53                              # 0x35
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
	.quad	69                              # 0x45
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
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	27                              # 0x1b
	.quad	35                              # 0x23
	.quad	46                              # 0x2e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	89                              # 0x59
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
	.quad	47                              # 0x2f
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
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
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
	.quad	52                              # 0x34
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
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	25                              # 0x19
	.quad	42                              # 0x2a
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	85                              # 0x55
	.quad	89                              # 0x59
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
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
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
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
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
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	93                              # 0x5d
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
	.quad	50                              # 0x32
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
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
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
	.quad	15                              # 0xf
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
	.quad	70                              # 0x46
	.quad	71                              # 0x47
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
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	85                              # 0x55
	.quad	87                              # 0x57
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
	.quad	55                              # 0x37
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
	.quad	75                              # 0x4b
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
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
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
	.quad	29                              # 0x1d
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
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
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
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
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
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
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
	.quad	42                              # 0x2a
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
	.quad	79                              # 0x4f
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
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	55                              # 0x37
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	93                              # 0x5d
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
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
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
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
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
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
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
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
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
	.quad	84                              # 0x54
	.quad	85                              # 0x55
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
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	28                              # 0x1c
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	87                              # 0x57
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
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
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
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
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
	.quad	65                              # 0x41
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
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
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
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	15                              # 0xf
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
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
	.quad	14                              # 0xe
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
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
	.quad	33                              # 0x21
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
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
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
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
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
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	71                              # 0x47
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	95                              # 0x5f
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
	.quad	22                              # 0x16
	.quad	23                              # 0x17
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
	.quad	98                              # 0x62
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	26                              # 0x1a
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	91                              # 0x5b
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
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
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
	.quad	65                              # 0x41
	.quad	66                              # 0x42
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
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
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
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	98                              # 0x62
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
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
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
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
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
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
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
	.quad	70                              # 0x46
	.quad	71                              # 0x47
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
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
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
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
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
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	9                               # 0x9
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
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
	.quad	19                              # 0x13
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
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	22                              # 0x16
	.quad	37                              # 0x25
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	90                              # 0x5a
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
	.quad	41                              # 0x29
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
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.size	.L__constant_4000xindex, 32000

	.type	.L__constant_4000xf64,@object   # @__constant_4000xf64
	.p2align	6, 0x0
.L__constant_4000xf64:
	.quad	0x400ead7f950b955f              # double 3.8347159999999998
	.quad	0x40195363b256ffc1              # double 6.3314349999999999
	.quad	0x3ff884e1e71044f2              # double 1.5324420000000001
	.quad	0x401d94c8ffb8b264              # double 7.3952980000000004
	.quad	0x4008fb320535c9e6              # double 3.1226539999999998
	.quad	0x40114b78cc9a77e6              # double 4.3237030000000001
	.quad	0x401cefd8f0c77dd8              # double 7.2342259999999996
	.quad	0x4022223ad18d25ee              # double 9.0668550000000003
	.quad	0x401bc47e06961c37              # double 6.9418870000000004
	.quad	0x40149da72a7bd48d              # double 5.1539580000000003
	.quad	0x402015d13d74d595              # double 8.0426120000000001
	.quad	0x401243e4abe6a338              # double 4.5663020000000003
	.quad	0x4008d44c37e6f71a              # double 3.1036609999999998
	.quad	0x402007cd03537197              # double 8.0152359999999998
	.quad	0x3ffa1ed9dfdac68b              # double 1.6325320000000001
	.quad	0x40147fa93af74cd3              # double 5.1246689999999999
	.quad	0x401632d2fe3f35a0              # double 5.549633
	.quad	0x40218f9d6f112fd3              # double 8.7804979999999997
	.quad	0x40141a597d49d7ba              # double 5.0257319999999996
	.quad	0x40109bda0dfdef85              # double 4.1521990000000004
	.quad	0x4023a29ac36544fe              # double 9.8175869999999996
	.quad	0x4022a13faf42784b              # double 9.3149390000000007
	.quad	0x401f7050bd87b56c              # double 7.8596830000000004
	.quad	0x401dc49d7ba6698c              # double 7.4420070000000003
	.quad	0x402059da9c99285b              # double 8.1754960000000008
	.quad	0x4023260e736049ed              # double 9.5743290000000005
	.quad	0x4022ce75ddd2ae8e              # double 9.4032429999999998
	.quad	0x40050656abde3fbc              # double 2.6280950000000001
	.quad	0x400e2d0dcfcc5b8e              # double 3.7719990000000001
	.quad	0x4014bede1198aeb8              # double 5.1863939999999999
	.quad	0x401d4fa3b9ae0c17              # double 7.3277729999999996
	.quad	0x3ff8c395810624dd              # double 1.54775
	.quad	0x4005eb380cb6c7a8              # double 2.7398530000000001
	.quad	0x401c5b1422ccb3a2              # double 7.0889439999999997
	.quad	0x3ffa329b280f12c2              # double 1.6373549999999999
	.quad	0x400fd311a543f1c7              # double 3.9780609999999998
	.quad	0x3ffa7e86833c6003              # double 1.6558900000000001
	.quad	0x3ff9f1e4b44a1f08              # double 1.621556
	.quad	0x401c2c71d6063172              # double 7.0434029999999996
	.quad	0x40160a743a647fdc              # double 5.5102089999999997
	.quad	0x3fd35c4eb56fb8f5              # double 0.30250899999999997
	.quad	0x401833e81450efdd              # double 6.0506900000000003
	.quad	0x401b8a11a975afb0              # double 6.8848330000000004
	.quad	0x4020332a497fa5d3              # double 8.0999320000000008
	.quad	0x40235e601bc98a22              # double 9.6843269999999997
	.quad	0x4022d5ba2be0589b              # double 9.4174360000000003
	.quad	0x40131bd72bcb5fe5              # double 4.7771879999999998
	.quad	0x3fd7252ce032db1f              # double 0.36164400000000002
	.quad	0x401368e8ea39c51e              # double 4.8524510000000003
	.quad	0x401bc632c1f42bb6              # double 6.9435529999999996
	.quad	0x401098e92d55a3a1              # double 4.1493270000000004
	.quad	0x400b179fa97e132b              # double 3.3865349999999999
	.quad	0x40224e5b63d3e4ef              # double 9.153041
	.quad	0x3ffaf009b30728e9              # double 1.683603
	.quad	0x4011a8e71476af8a              # double 4.4149440000000002
	.quad	0x4022e22962cfd8f1              # double 9.4417220000000003
	.quad	0x400fc854477ff152              # double 3.972817
	.quad	0x4005406a6e32e382              # double 2.656453
	.quad	0x4018128f5c28f5c3              # double 6.0181250000000004
	.quad	0x401da77681669ced              # double 7.413538
	.quad	0x401ebcce1c58255b              # double 7.6843799999999999
	.quad	0x4011f133c1ce6c09              # double 4.4855489999999998
	.quad	0x4020a4b07d0aed9a              # double 8.3216590000000004
	.quad	0x40055cd2d44dca8e              # double 2.6703239999999999
	.quad	0x401b53d03968d75a              # double 6.8318490000000001
	.quad	0x400b5d00f776c482              # double 3.4204119999999998
	.quad	0x40002defc7a39820              # double 2.0224299999999999
	.quad	0x40132291b823c85c              # double 4.7837589999999999
	.quad	0x4016c8dc981beb18              # double 5.6961539999999999
	.quad	0x4020b9309c7ffde7              # double 8.3616989999999998
	.quad	0x3ffafb320535c9e6              # double 1.6863269999999999
	.quad	0x40079e5082cf52b9              # double 2.952302
	.quad	0x3ff3d886df82b1f7              # double 1.2403630000000001
	.quad	0x401462c40d0aaa7e              # double 5.0964510000000001
	.quad	0x3ffdd25785f8d2e5              # double 1.863853
	.quad	0x400bd2ffd1dcd706              # double 3.478027
	.quad	0x3ff4d2502eec7c95              # double 1.3013459999999999
	.quad	0x401520589acbc8c1              # double 5.2815880000000002
	.quad	0x401c646c764adff8              # double 7.0980699999999999
	.quad	0x3fdd20fb224aada3              # double 0.45513799999999999
	.quad	0x4004adab9f559b3d              # double 2.5848
	.quad	0x3ff5211dbca9691a              # double 1.3205849999999999
	.quad	0x4008569ca9ef5233              # double 3.0422910000000001
	.quad	0x402057c6b8b69553              # double 8.1714380000000002
	.quad	0x402200661ae70c13              # double 9.0007789999999996
	.quad	0x3fa0ceb356da0169              # double 0.032827000000000002
	.quad	0x40186c1d29dc725c              # double 6.1055799999999998
	.quad	0x4010e46aa087ca64              # double 4.2230629999999998
	.quad	0x4008c55eaee2003b              # double 3.0963720000000001
	.quad	0x40062effe2a3cea7              # double 2.7729490000000001
	.quad	0x3fbc26edaa92e621              # double 0.109969
	.quad	0x3ffc4c586876e1df              # double 1.7686390000000001
	.quad	0x400fdbb517a46174              # double 3.9822790000000001
	.quad	0x401773305100a394              # double 5.8624890000000001
	.quad	0x4015fc9081c2e33f              # double 5.496645
	.quad	0x4023c4729f59ccfb              # double 9.8836870000000001
	.quad	0x40113ae21101b003              # double 4.3075029999999996
	.quad	0x4020b4fa8b4bf8fd              # double 8.3534740000000003
	.quad	0x4016011d3671ac15              # double 5.5010880000000002
	.quad	0x402150f1b25f633d              # double 8.6580940000000002
	.quad	0x4022f2f5ba2be059              # double 9.4745310000000007
	.quad	0x401bcdb4cc250721              # double 6.9508850000000004
	.quad	0x401182c4d65e4606              # double 4.3777039999999996
	.quad	0x40078a593a2df938              # double 2.9425530000000002
	.quad	0x401adb68cef672b9              # double 6.7142670000000004
	.quad	0x3fc60642396073de              # double 0.172066
	.quad	0x401b8c54bcf0b6b7              # double 6.8870420000000001
	.quad	0x3fd23a109d0635a4              # double 0.28479399999999999
	.quad	0x3fff8895d0b73d19              # double 1.9708460000000001
	.quad	0x4018f2324c836651              # double 6.2365199999999996
	.quad	0x4005a50df15a4acf              # double 2.7055929999999999
	.quad	0x3fd30a99b6f5caf3              # double 0.29752200000000001
	.quad	0x3fb37b07075b3e14              # double 0.076095999999999997
	.quad	0x402198dfbd6a593a              # double 8.7985819999999997
	.quad	0x4010237c5692b3cc              # double 4.0346539999999997
	.quad	0x4023e0685553ef6b              # double 9.9382959999999993
	.quad	0x3fc828ed5f138bce              # double 0.188749
	.quad	0x401e43250b52439a              # double 7.5655710000000003
	.quad	0x40232a048e043a21              # double 9.5820659999999993
	.quad	0x401385ee99a62ed3              # double 4.8807929999999997
	.quad	0x401f982fd75e2047              # double 7.8986200000000001
	.quad	0x3ff788205ff1d81f              # double 1.470734
	.quad	0x4018fc62a1b5c7ce              # double 6.2464700000000004
	.quad	0x4006d43f1c75818c              # double 2.8536359999999998
	.quad	0x3fe1468a936c58ef              # double 0.53986100000000004
	.quad	0x401c78ed5f138bce              # double 7.118093
	.quad	0x3ffc17de0d66f0d0              # double 1.755827
	.quad	0x3ff5810d7be9856a              # double 1.344007
	.quad	0x401b55b5fa22706d              # double 6.8337019999999997
	.quad	0x4001ee736049ecb3              # double 2.241431
	.quad	0x4015ed9b5e95b78d              # double 5.4820380000000002
	.quad	0x401a34c48adeebb3              # double 6.5515309999999998
	.quad	0x4014f91c4b90214b              # double 5.2432720000000002
	.quad	0x3ff59886df82b1f7              # double 1.3497380000000001
	.quad	0x3ff95ae924f227d0              # double 1.584695
	.quad	0x3ff0d8fa376922d9              # double 1.0529729999999999
	.quad	0x4006ec20d5629d84              # double 2.865297
	.quad	0x4018207dd4413554              # double 6.0317299999999996
	.quad	0x3fe793964a59c066              # double 0.73676600000000003
	.quad	0x40071566cf41f213              # double 2.8854500000000001
	.quad	0x40206393250b5244              # double 8.1944820000000007
	.quad	0x401513d3e4ef0282              # double 5.2693630000000002
	.quad	0x4002c1c8216c6152              # double 2.3446199999999999
	.quad	0x401e14528283d35f              # double 7.5198460000000002
	.quad	0x4019f9b13165d399              # double 6.4938399999999996
	.quad	0x400fcc165907d912              # double 3.9746519999999999
	.quad	0x4023702645e4e69f              # double 9.7190419999999999
	.quad	0x401d486ec17ebaf1              # double 7.320735
	.quad	0x40205321a2e7f6f5              # double 8.1623660000000005
	.quad	0x40053409a2403148              # double 2.6504089999999998
	.quad	0x3febfa89331a08c0              # double 0.87433300000000003
	.quad	0x40155d8a54823854              # double 5.341348
	.quad	0x3fe96bf22c01e68a              # double 0.79442699999999999
	.quad	0x4001c92ff4ba51a0              # double 2.223236
	.quad	0x3ff8347e8ccdd93c              # double 1.5128159999999999
	.quad	0x40235ad46f587d70              # double 9.6774020000000007
	.quad	0x401400a782906898              # double 5.0006389999999996
	.quad	0x400eba1554fbdad7              # double 3.8408609999999999
	.quad	0x402234a0e410b631              # double 9.1027900000000006
	.quad	0x400c7506573215fd              # double 3.5571410000000001
	.quad	0x400ed7e23f24d8fd              # double 3.8554119999999998
	.quad	0x400034ce3de6149c              # double 2.0257839999999998
	.quad	0x3fffada122fad6cb              # double 1.9798899999999999
	.quad	0x400b9bf487fcb924              # double 3.4511500000000002
	.quad	0x40154666ec9e236c              # double 5.3187519999999999
	.quad	0x3f94e65bea0ba1f5              # double 0.020410000000000001
	.quad	0x3fff911276fb0920              # double 1.9729179999999999
	.quad	0x3ff5d333b96af039              # double 1.364063
	.quad	0x40013cbe61cffeb0              # double 2.1546599999999998
	.quad	0x4021e9f18c9fb613              # double 8.9569209999999995
	.quad	0x4011bb6bb1290258              # double 4.4330280000000002
	.quad	0x40230a862f5989df              # double 9.5205549999999998
	.quad	0x3fbd2bb23571d1d4              # double 0.11394799999999999
	.quad	0x401901b10fd7e458              # double 6.251652
	.quad	0x3ffd652263d816ad              # double 1.837191
	.quad	0x402315640e9d51b5              # double 9.541779
	.quad	0x400682773e24febd              # double 2.813704
	.quad	0x401843708aac96cc              # double 6.0658589999999997
	.quad	0x3ff7f42784a9478d              # double 1.4971080000000001
	.quad	0x40219d04a2fcefaa              # double 8.8066759999999995
	.quad	0x400e29917939a7c1              # double 3.7702969999999998
	.quad	0x4022ecc7f3493858              # double 9.4624629999999996
	.quad	0x4013fcb46bacf744              # double 4.9967819999999996
	.quad	0x4000129fe004b7f6              # double 2.0090940000000002
	.quad	0x3ff2916a8b8f14db              # double 1.1605019999999999
	.quad	0x4023eaef2c732592              # double 9.9588560000000008
	.quad	0x4016e0b2c83ec893              # double 5.7194320000000003
	.quad	0x4020375ab7dc7ac0              # double 8.1081140000000005
	.quad	0x4021a159817b95a3              # double 8.8151360000000007
	.quad	0x402046d9be4cd749              # double 8.1383799999999997
	.quad	0x401cfd338f798527              # double 7.2472669999999999
	.quad	0x401ee963dc486ad3              # double 7.7279200000000001
	.quad	0x400c5b76b3bb83cf              # double 3.5446599999999999
	.quad	0x4007793c46d82ba6              # double 2.9341970000000002
	.quad	0x4000c107314ca926              # double 2.094252
	.quad	0x4020c4588a04d120              # double 8.3834879999999998
	.quad	0x4020a22c01e68a0d              # double 8.3167419999999996
	.quad	0x4001553d640e9d52              # double 2.1666210000000001
	.quad	0x3fe1c0485a0be511              # double 0.55472200000000005
	.quad	0x401dbfcc9ea9a3d3              # double 7.4373040000000001
	.quad	0x401a34ed2cbea4ec              # double 6.5516860000000001
	.quad	0x40237b4dcebfec14              # double 9.7408280000000004
	.quad	0x4015c6f3f52fc265              # double 5.4442899999999996
	.quad	0x401e50b780346dc6              # double 7.5788250000000001
	.quad	0x4003dbd0e12e83a1              # double 2.482332
	.quad	0x4017912d3415b142              # double 5.8917739999999998
	.quad	0x400588a04d12018a              # double 2.6917119999999999
	.quad	0x3ffe189ce4a7b4e5              # double 1.8810089999999999
	.quad	0x3feb135b91f70de9              # double 0.846113
	.quad	0x3ffb7b71fbc5de9c              # double 1.717638
	.quad	0x40075d590c0ad03e              # double 2.9205800000000002
	.quad	0x401dba0be5109071              # double 7.431686
	.quad	0x401e560e0eb67c28              # double 7.5840379999999996
	.quad	0x40120eff5c6c11a1              # double 4.5146459999999999
	.quad	0x40163c9fb6134ce4              # double 5.5592030000000001
	.quad	0x401ee5cbbc2b94d9              # double 7.7244099999999997
	.quad	0x401dd92f6e82949a              # double 7.4620949999999997
	.quad	0x40076e2fbe33acd6              # double 2.9288020000000001
	.quad	0x401f18259e1f3a58              # double 7.773581
	.quad	0x3ff09c8216c61523              # double 1.0382100000000001
	.quad	0x40203ab2bfdb4cc2              # double 8.1146449999999994
	.quad	0x3fb9b5c7cd898b2f              # double 0.10043000000000001
	.quad	0x4021db71fbc5de9c              # double 8.9286039999999999
	.quad	0x4003d92fb19e731d              # double 2.4810479999999999
	.quad	0x4010f9cf13cee9dd              # double 4.2439539999999996
	.quad	0x402155daad601ffb              # double 8.6676839999999995
	.quad	0x3ff0feb5b2d4d402              # double 1.0621849999999999
	.quad	0x40048ad0c3d25248              # double 2.5677810000000001
	.quad	0x4020542fa5093965              # double 8.1644260000000006
	.quad	0x401829cf56eac860              # double 6.0408299999999997
	.quad	0x3ff42f9db22d0e56              # double 1.261625
	.quad	0x4019c9e5e2478855              # double 6.4471660000000002
	.quad	0x4020c40314877681              # double 8.3828359999999993
	.quad	0x401dd01eabbcb1cd              # double 7.4532420000000004
	.quad	0x4010b19e731d2e0e              # double 4.1734559999999998
	.quad	0x40213d44567125dd              # double 8.6196619999999999
	.quad	0x400013a14cec41dd              # double 2.009585
	.quad	0x40071fc9ff92f2b6              # double 2.8905219999999998
	.quad	0x401ff78359bc33f8              # double 7.9917119999999997
	.quad	0x400135379fa97e13              # double 2.1509849999999999
	.quad	0x402073ec679cc74c              # double 8.2264130000000008
	.quad	0x40143c6c97d8cf3a              # double 5.0590080000000004
	.quad	0x401fc49cb252ce03              # double 7.9420039999999998
	.quad	0x4022c803ab862b28              # double 9.3906530000000003
	.quad	0x4019cb5286b59147              # double 6.4485570000000001
	.quad	0x3ffbfda836eb4e98              # double 1.749428
	.quad	0x3ffba79cc74b838c              # double 1.728421
	.quad	0x4019f1a437824d4d              # double 6.4859780000000002
	.quad	0x401ada36e2eb1c43              # double 6.7130999999999998
	.quad	0x4010697460242d06              # double 4.102983
	.quad	0x400f9af74cd3176a              # double 3.9506670000000002
	.quad	0x3ffcace9a2c66905              # double 1.7922149999999999
	.quad	0x40208ed8d36b4c7f              # double 8.2789979999999996
	.quad	0x402353506dd69d30              # double 9.6627229999999997
	.quad	0x3fc68858ff759685              # double 0.176036
	.quad	0x4016368b9fdbd2fa              # double 5.553267
	.quad	0x3fe833e78e1932d7              # double 0.75633600000000001
	.quad	0x40213c88e79aae6d              # double 8.6182320000000008
	.quad	0x401c9d8d79d0a676              # double 7.1538599999999999
	.quad	0x4012675afaf85943              # double 4.6009330000000004
	.quad	0x4018496c82e019b1              # double 6.0717030000000003
	.quad	0x400b42fcefaa4767              # double 3.4077090000000001
	.quad	0x400e30153bd16766              # double 3.7734779999999999
	.quad	0x40223103ea704bc2              # double 9.0957329999999992
	.quad	0x4011fbcad9ad85e0              # double 4.4958910000000003
	.quad	0x4018408aefb2aae3              # double 6.0630300000000004
	.quad	0x401baf23033a4724              # double 6.9210320000000003
	.quad	0x4016edab191dde37              # double 5.7320979999999997
	.quad	0x40188370cdc8754f              # double 6.1283599999999998
	.quad	0x401d9d59d55e6bc6              # double 7.4036629999999999
	.quad	0x3ff9672756861e93              # double 1.5876840000000001
	.quad	0x40147ff6d330941d              # double 5.1249650000000004
	.quad	0x402392f5771001d6              # double 9.7870290000000004
	.quad	0x4012be0221426fe7              # double 4.6855549999999999
	.quad	0x4009068a936c58ef              # double 3.1281940000000001
	.quad	0x4023de9e1b089a02              # double 9.9347999999999992
	.quad	0x4001bb5e0f7fcfc4              # double 2.216488
	.quad	0x4019587160956c0d              # double 6.3363699999999996
	.quad	0x401f66117720c8cd              # double 7.8496759999999996
	.quad	0x401e497635e7429a              # double 7.5717400000000001
	.quad	0x3fe0f901083dbc23              # double 0.53039599999999998
	.quad	0x3ff5ff748a159818              # double 1.3748670000000001
	.quad	0x401fa0c1fc8f3238              # double 7.9069900000000004
	.quad	0x402345d65a14488c              # double 9.6364009999999993
	.quad	0x40199fd82773e250              # double 6.4060980000000001
	.quad	0x401ca9707182235b              # double 7.1654679999999997
	.quad	0x40045e1a8262456f              # double 2.5459489999999998
	.quad	0x401163bd9cae2110              # double 4.3474029999999999
	.quad	0x400721700cd85597              # double 2.891327
	.quad	0x3fadc4c9c90c4dec              # double 0.058141999999999999
	.quad	0x4020316a48733659              # double 8.0965140000000009
	.quad	0x40128f77af64063a              # double 4.6401050000000001
	.quad	0x401c97381d7dbf48              # double 7.1476749999999996
	.quad	0x4011d48f96e15875              # double 4.457579
	.quad	0x401d94b3c3e74afd              # double 7.3952169999999997
	.quad	0x4014061240746456              # double 5.0059290000000001
	.quad	0x401406cd29131ec1              # double 5.0066420000000003
	.quad	0x4022eb73d188f430              # double 9.4598680000000002
	.quad	0x401707fbefd00714              # double 5.7577970000000001
	.quad	0x400b3633482be8bc              # double 3.401465
	.quad	0x402394eee0f3cb3e              # double 9.7908849999999994
	.quad	0x400f042d05f28848              # double 3.8770389999999999
	.quad	0x3fe7815c209246bf              # double 0.734541
	.quad	0x4015eb1897a67a53              # double 5.4795860000000003
	.quad	0x401e0e9ccb7d4174              # double 7.5142699999999998
	.quad	0x3fe0054477ff151e              # double 0.50064299999999995
	.quad	0x4022b610adcd2d45              # double 9.3555960000000002
	.quad	0x401bc8027d88c1db              # double 6.945322
	.quad	0x3fd2967caea747d8              # double 0.290435
	.quad	0x400e0630ec311623              # double 3.7530230000000002
	.quad	0x3ff5c68661ae70c1              # double 1.360968
	.quad	0x401ed3d29563a9f4              # double 7.7068580000000004
	.quad	0x400158f2e05ccc8a              # double 2.1684320000000001
	.quad	0x4011918b0d0edc3c              # double 4.3921320000000001
	.quad	0x4020ca0168b5cbff              # double 8.3945419999999995
	.quad	0x402368bf3bea91da              # double 9.7045840000000005
	.quad	0x3ff2921dda059a74              # double 1.1606730000000001
	.quad	0x401173315d701d9f              # double 4.3624929999999997
	.quad	0x3ff95b0142f61ed6              # double 1.5847180000000001
	.quad	0x4003c8e71476af8a              # double 2.4730970000000001
	.quad	0x3fd05a1016ce789e              # double 0.25549699999999997
	.quad	0x401b38d79d0a6762              # double 6.8055099999999999
	.quad	0x3fe8467be553ac4f              # double 0.75860399999999995
	.quad	0x401cd36bd2b6f199              # double 7.2064659999999998
	.quad	0x4011e40d0aaa7ded              # double 4.4727059999999996
	.quad	0x40198d948dc11e43              # double 6.3882620000000001
	.quad	0x3fe8f1172ef0ae53              # double 0.77942999999999996
	.quad	0x401d592a30553261              # double 7.3370749999999996
	.quad	0x4022e3b6ed677708              # double 9.4447550000000006
	.quad	0x401fcc81908e581d              # double 7.949713
	.quad	0x400e8549b62c7757              # double 3.8150819999999999
	.quad	0x402232bb44e50c5f              # double 9.0990850000000005
	.quad	0x4020ef3de1e2de87              # double 8.4672689999999999
	.quad	0x4016a839cd8127b3              # double 5.6642830000000002
	.quad	0x40205af166e008ea              # double 8.1776230000000005
	.quad	0x400ef04bc27631b6              # double 3.8673320000000002
	.quad	0x4014814c22ee4192              # double 5.1262670000000004
	.quad	0x4015c79ee02a77a3              # double 5.4449420000000002
	.quad	0x40016d948dc11e43              # double 2.1785060000000001
	.quad	0x3fff491e215336df              # double 1.9553510000000001
	.quad	0x40220e2b4959e625              # double 9.0276739999999993
	.quad	0x4022ff7b5aea3162              # double 9.4989880000000007
	.quad	0x3fe6e494d50ebaae              # double 0.71540300000000001
	.quad	0x4010337cdcca70d2              # double 4.050281
	.quad	0x40217d2dcb1465e9              # double 8.7444900000000008
	.quad	0x4013a4d7add15f03              # double 4.9109790000000002
	.quad	0x3ffe5c8d9f9053a0              # double 1.8975960000000001
	.quad	0x4016ad694ccab3ee              # double 5.6693470000000001
	.quad	0x4020cefa1e3eaf68              # double 8.4042519999999996
	.quad	0x40222fa398201cd6              # double 9.093045
	.quad	0x401b9c7c5260f5e4              # double 6.9028179999999999
	.quad	0x4020fddb9841aac5              # double 8.4958159999999996
	.quad	0x400f57b30f8c64fe              # double 3.9178220000000001
	.quad	0x4013fb777d0f1f58              # double 4.9955730000000003
	.quad	0x4014da5119ce075f              # double 5.2131999999999996
	.quad	0x3fa093b7d84901d2              # double 0.032377000000000003
	.quad	0x401bff9335d249e4              # double 6.9995849999999997
	.quad	0x3fe364a16a487336              # double 0.60603399999999996
	.quad	0x401c70385c67dfe3              # double 7.1095899999999999
	.quad	0x4021a22a4db163bb              # double 8.8167290000000005
	.quad	0x3fda5f0f5a1016ce              # double 0.41205199999999997
	.quad	0x400705186db50f41              # double 2.877488
	.quad	0x40231887ca643cc0              # double 9.5479109999999991
	.quad	0x3fa39756c93a7115              # double 0.038263999999999999
	.quad	0x3ff74f0f9d2bf551              # double 1.4568019999999999
	.quad	0x40072e5796bfca86              # double 2.8976280000000001
	.quad	0x4022054046412cf1              # double 9.010256
	.quad	0x3ffb394ea077036d              # double 1.7014910000000001
	.quad	0x401fa95bbbe878fb              # double 7.9153890000000002
	.quad	0x401df0346dc5d639              # double 7.4845750000000004
	.quad	0x401bbcb10342aa9f              # double 6.9342689999999996
	.quad	0x3fb21b5c7cd898b3              # double 0.070730000000000001
	.quad	0x401404cd31769a91              # double 5.0046889999999999
	.quad	0x400eb2d5e071c53f              # double 3.8373219999999999
	.quad	0x4018242d490e66cb              # double 6.0353289999999999
	.quad	0x3feba4f8726d04e6              # double 0.86388799999999999
	.quad	0x4020ac26bb55ac04              # double 8.336233
	.quad	0x401cf6b873797460              # double 7.2409379999999999
	.quad	0x3ffe72990f301eac              # double 1.9029780000000001
	.quad	0x401fed3b6cbd987c              # double 7.9816719999999997
	.quad	0x401c7857afea3df7              # double 7.1175220000000001
	.quad	0x401068a32f44912a              # double 4.1021850000000004
	.quad	0x4023156dc1a47a9e              # double 9.5418529999999997
	.quad	0x3ffd66e32e3821af              # double 1.8376189999999999
	.quad	0x4008fca6ca03c4b1              # double 3.1233650000000002
	.quad	0x3ffc85a5fc7e6b40              # double 1.782629
	.quad	0x4009da9b8cb8e087              # double 3.2317420000000001
	.quad	0x401d97ae5796bfcb              # double 7.3981260000000004
	.quad	0x4000cbbba55d1c3b              # double 2.0994790000000001
	.quad	0x4017f0a7c5ac471b              # double 5.9850149999999998
	.quad	0x3ff387075b3e1438              # double 1.2204660000000001
	.quad	0x3ff9285db76b3bb8              # double 1.5723549999999999
	.quad	0x4018c99bf5946c33              # double 6.1968839999999998
	.quad	0x4020b0a88effe2a4              # double 8.3450360000000003
	.quad	0x401704d8fd5cb791              # double 5.754734
	.quad	0x401690eae18ac9f3              # double 5.641521
	.quad	0x40130dcd7060bb2c              # double 4.7634790000000002
	.quad	0x401bf7b80a9de8b4              # double 6.9919130000000003
	.quad	0x401eed1287c200c1              # double 7.731516
	.quad	0x4014d7f5e84f0953              # double 5.2108990000000004
	.quad	0x4015ad8cb07d0aee              # double 5.4194820000000004
	.quad	0x4016237b8d3f1844              # double 5.5346510000000002
	.quad	0x401efa57214f0521              # double 7.7444730000000001
	.quad	0x4017428c36da87a0              # double 5.8149879999999996
	.quad	0x3ff33b9496249a13              # double 1.2020459999999999
	.quad	0x4022955065732160              # double 9.2916290000000004
	.quad	0x3ff961198aeb80ed              # double 1.586206
	.quad	0x400e47f2c3009b30              # double 3.7851309999999998
	.quad	0x401680af1cb89d6b              # double 5.6256680000000001
	.quad	0x4009d4738a3b57c5              # double 3.2287360000000001
	.quad	0x3fe32c94b380cb6c              # double 0.59919199999999995
	.quad	0x4008373860999dcb              # double 3.0269629999999998
	.quad	0x3fa77ab324851a87              # double 0.045858000000000003
	.quad	0x3fe5cb72c5197a25              # double 0.68108500000000005
	.quad	0x4017ef294dd72368              # double 5.9835560000000001
	.quad	0x3ff220cbf2b239a4              # double 1.1330070000000001
	.quad	0x4011ad1e53a81dc1              # double 4.4190610000000001
	.quad	0x40209d41b75a74c1              # double 8.3071420000000007
	.quad	0x4016d351deefe500              # double 5.7063670000000002
	.quad	0x3ff9a7c8d195896a              # double 1.6034630000000001
	.quad	0x3ff8cd9b5e95b78d              # double 1.550197
	.quad	0x4012286cebbba55d              # double 4.5394779999999999
	.quad	0x4000cc215b9a5a8a              # double 2.0996730000000001
	.quad	0x40177b0b39192642              # double 5.8701600000000003
	.quad	0x3fe538c5436b8f9b              # double 0.66317999999999999
	.quad	0x3fccfbc1acde19fc              # double 0.226433
	.quad	0x40116068986fcdee              # double 4.3441489999999998
	.quad	0x4007d66490a350d3              # double 2.9796840000000002
	.quad	0x40041c7ffde7210c              # double 2.513916
	.quad	0x4015c327674d1633              # double 5.4405799999999997
	.quad	0x401dd45f5ad96a6a              # double 7.457395
	.quad	0x40195f7985271bce              # double 6.3432370000000002
	.quad	0x40213359791819d2              # double 8.6002919999999996
	.quad	0x4019a62cfd8f0c78              # double 6.4122810000000001
	.quad	0x40140e468cac4b4d              # double 5.013941
	.quad	0x4014b573215fcc18              # double 5.1771969999999996
	.quad	0x400ae77b395c4220              # double 3.3630279999999999
	.quad	0x40057cc20d5629d8              # double 2.6859169999999999
	.quad	0x401ce8e864020818              # double 7.227449
	.quad	0x3ff857edc7ef177a              # double 1.5214669999999999
	.quad	0x4002e2d8c2a454de              # double 2.3607649999999998
	.quad	0x400112fba01eeed9              # double 2.1342690000000002
	.quad	0x40184c93a7115161              # double 6.0747819999999999
	.quad	0x401eb9e0a41a261c              # double 7.681521
	.quad	0x4020ac2f837b4a23              # double 8.3362999999999996
	.quad	0x3fec9fab96f21f6d              # double 0.89449100000000004
	.quad	0x3ff28a6117720c8d              # double 1.158784
	.quad	0x4002464ba94bbe44              # double 2.2843239999999998
	.quad	0x401a36a7264a16a5              # double 6.5533720000000004
	.quad	0x40131a43bb40b34e              # double 4.7756489999999996
	.quad	0x401a5fecdd0d8cb0              # double 6.5936769999999996
	.quad	0x401dcf4e874c8ffc              # double 7.4524480000000004
	.quad	0x402118daa0cae643              # double 8.5485430000000004
	.quad	0x400e7461309c7ffe              # double 3.806826
	.quad	0x401d6dbb9cf9a06a              # double 7.3571609999999996
	.quad	0x3fec1a8ac5c13fd1              # double 0.87824000000000002
	.quad	0x4018792428d434a0              # double 6.1183019999999999
	.quad	0x400736c93a711516              # double 2.901751
	.quad	0x4015308aefb2aae3              # double 5.2974050000000004
	.quad	0x3ff8300474d9c6b0              # double 1.5117229999999999
	.quad	0x3ff443201040bfe4              # double 1.2663880000000001
	.quad	0x4020b1ae0c176577              # double 8.3470309999999994
	.quad	0x3ff1455a7d24180d              # double 1.0794319999999999
	.quad	0x4021f31ab0856e69              # double 8.9748129999999993
	.quad	0x3ff7fb762d83c6c9              # double 1.4988919999999999
	.quad	0x401460229a5ebb77              # double 5.0938819999999998
	.quad	0x4014ca3400b88ca4              # double 5.1974640000000001
	.quad	0x4002d78feef5ec81              # double 2.3552550000000001
	.quad	0x3fe8ef9db22d0e56              # double 0.77925
	.quad	0x4015bcc74b838c11              # double 5.4343539999999999
	.quad	0x401d40cf1800a7c6              # double 7.3132900000000003
	.quad	0x4002cdc22ab25b31              # double 2.3504679999999998
	.quad	0x4015674538ef34d7              # double 5.3508500000000003
	.quad	0x401885718eb89507              # double 6.1303159999999997
	.quad	0x4023abd05af6c69b              # double 9.8355739999999993
	.quad	0x401a0fe47991bc56              # double 6.5155200000000004
	.quad	0x4019401c92ddbdb6              # double 6.3126090000000001
	.quad	0x4011231487768167              # double 4.2842580000000003
	.quad	0x400d8c9afe1da7b1              # double 3.6936550000000001
	.quad	0x401ef9513f8db489              # double 7.7434739999999999
	.quad	0x40113bc01a36e2eb              # double 4.3083499999999999
	.quad	0x402066ce789e774f              # double 8.2007940000000001
	.quad	0x401e2cdea033e78e              # double 7.5438179999999999
	.quad	0x3ffc551611ba3ca7              # double 1.7707729999999999
	.quad	0x40162103c8e25c81              # double 5.532241
	.quad	0x401f9fdc5931ca7d              # double 7.9061139999999996
	.quad	0x4013318ce2d1f1d0              # double 4.7983890000000002
	.quad	0x3faa873bc903ea70              # double 0.051812999999999998
	.quad	0x400fafa82e87d2c8              # double 3.9607700000000001
	.quad	0x40121ef672b88440              # double 4.5302369999999996
	.quad	0x4018d4a16a487336              # double 6.2076469999999997
	.quad	0x401265f6ba0620ab              # double 4.5995739999999996
	.quad	0x4014f6fef7c243dd              # double 5.2412070000000002
	.quad	0x3ffd685a921ccd96              # double 1.837977
	.quad	0x401ed529bae46cfd              # double 7.7081670000000004
	.quad	0x40158a47ecfe9b7c              # double 5.38504
	.quad	0x401de57f737da61e              # double 7.474119
	.quad	0x4010c5696e58a32f              # double 4.1927849999999998
	.quad	0x400f310dbf0563ed              # double 3.898952
	.quad	0x402016e568a50508              # double 8.0447190000000006
	.quad	0x40224f4cd31769a9              # double 9.1548829999999999
	.quad	0x40236c9a133c1ce7              # double 9.7121130000000004
	.quad	0x4010929b6b2af145              # double 4.1431709999999997
	.quad	0x40238af5fd47bedb              # double 9.7714079999999992
	.quad	0x3ffe7928e0c9d9d3              # double 1.9045799999999999
	.quad	0x402240f190d173fb              # double 9.1268429999999992
	.quad	0x401472a9930be0df              # double 5.1119750000000002
	.quad	0x400f3a7daa4fca43              # double 3.9035600000000001
	.quad	0x40176cfede97d06c              # double 5.8564410000000002
	.quad	0x400e7dccea28fe26              # double 3.811426
	.quad	0x400b460807357e67              # double 3.409195
	.quad	0x3fe65afd113836a8              # double 0.69860699999999998
	.quad	0x40129059ea57214f              # double 4.640968
	.quad	0x3ffbf924af0bf1a6              # double 1.748326
	.quad	0x4011c98288051c9f              # double 4.4467869999999996
	.quad	0x4015131db445ed4a              # double 5.2686679999999999
	.quad	0x400a754d1e96c3fc              # double 3.3072759999999999
	.quad	0x401eae5321e603d5              # double 7.6702389999999995
	.quad	0x3fe10fa15db3397e              # double 0.53315800000000002
	.quad	0x3ff782773e24febd              # double 1.469352
	.quad	0x401e38b439581062              # double 7.5553749999999997
	.quad	0x3ff9565a14488c61              # double 1.583582
	.quad	0x40215cfce746cb96              # double 8.6816169999999993
	.quad	0x40151fb762d83c6d              # double 5.2809730000000004
	.quad	0x4012b9f05ea24cc7              # double 4.6815810000000004
	.quad	0x401d8cf5b1c86488              # double 7.3876559999999997
	.quad	0x40064ed916872b02              # double 2.7885
	.quad	0x40187538ef34d6a1              # double 6.1144749999999997
	.quad	0x400a96a619da9c99              # double 3.3235589999999999
	.quad	0x401f846173b85e81              # double 7.8792780000000002
	.quad	0x3fe9ecc1ca3a4b55              # double 0.81015099999999995
	.quad	0x3fff2ee0f3cb3e57              # double 1.9489449999999999
	.quad	0x3ffc4aac96cc5fc0              # double 1.7682310000000001
	.quad	0x4015d7ce0fc2eba2              # double 5.4607469999999996
	.quad	0x3ffa58a009f62307              # double 1.6466369999999999
	.quad	0x400be7f6f4be835e              # double 3.488264
	.quad	0x40187df2239e6aba              # double 6.1229940000000003
	.quad	0x40232b09e98dcdb3              # double 9.5840599999999991
	.quad	0x4020415592d98bf8              # double 8.1276060000000001
	.quad	0x4013bc1fc8f32379              # double 4.9337150000000003
	.quad	0x4011bbaa9b499d02              # double 4.433268
	.quad	0x3feb6bd6e8af8162              # double 0.85691399999999995
	.quad	0x4022ec5c78a6dacb              # double 9.4616430000000004
	.quad	0x40058288051c9f73              # double 2.688736
	.quad	0x4004f4efcbd55608              # double 2.6195979999999999
	.quad	0x3ff76c2df0d41312              # double 1.463911
	.quad	0x3ff224df47f993d5              # double 1.134002
	.quad	0x3ff7bce3150dae3e              # double 1.4836149999999999
	.quad	0x40053f676ea4228a              # double 2.6559590000000002
	.quad	0x4023774a558ea7ce              # double 9.7329889999999999
	.quad	0x40139003ab862b28              # double 4.8906390000000002
	.quad	0x3ff204c8bc9cd3e1              # double 1.1261680000000001
	.quad	0x400061fea8112ba1              # double 2.0478489999999998
	.quad	0x40239c330d73860a              # double 9.8050770000000007
	.quad	0x3ffa009a24031487              # double 1.6251469999999999
	.quad	0x3fd93465625a682b              # double 0.39382299999999998
	.quad	0x4021b8bb2bba98ee              # double 8.8608030000000007
	.quad	0x401015cb35f3d7d4              # double 4.0212830000000004
	.quad	0x40195572580c3090              # double 6.3334440000000001
	.quad	0x40105c82e019b0ab              # double 4.0903429999999998
	.quad	0x4015033b5393250b              # double 5.2531559999999997
	.quad	0x400806fdeb52c9d1              # double 3.0034139999999998
	.quad	0x402016605ee568a5              # double 8.043704
	.quad	0x401fa73929ed3954              # double 7.9133040000000001
	.quad	0x4004f2c0e7bc3c5c              # double 2.6185320000000001
	.quad	0x401eb224edf61240              # double 7.6739689999999996
	.quad	0x4010adc7ef177a70              # double 4.169708
	.quad	0x401f7f62f9ca5bd9              # double 7.8744009999999997
	.quad	0x4005ba554b8bef8d              # double 2.715983
	.quad	0x40078ebaade657b8              # double 2.9446919999999999
	.quad	0x3fd5308bb906466b              # double 0.33108799999999999
	.quad	0x4009a052d666a982              # double 3.2032829999999999
	.quad	0x4004bbb2fec56d5d              # double 2.59165
	.quad	0x401257824d4cb9ed              # double 4.585458
	.quad	0x3fd76bce8533b107              # double 0.36595499999999997
	.quad	0x40088769ec2ce465              # double 3.0661200000000002
	.quad	0x4020b55582129457              # double 8.3541679999999996
	.quad	0x401bd6ab14ec204f              # double 6.9596369999999999
	.quad	0x401035dbfceb7889              # double 4.0525969999999996
	.quad	0x401ba7d88c1db014              # double 6.9139119999999998
	.quad	0x40142e115592d98c              # double 5.044988
	.quad	0x40022eee0f3cb3e5              # double 2.2729149999999998
	.quad	0x400672556d19dece              # double 2.8058269999999998
	.quad	0x40088e9899bf5947              # double 3.0696270000000001
	.quad	0x3ff2439bcba30121              # double 1.1415059999999999
	.quad	0x40203d0e56041893              # double 8.1192499999999992
	.quad	0x40157ee78183f91e              # double 5.3739299999999997
	.quad	0x4003a1c8216c6152              # double 2.4539949999999999
	.quad	0x402322f555821294              # double 9.5682779999999993
	.quad	0x4020b4f54d1e96c4              # double 8.353434
	.quad	0x40090cde19fc2a88              # double 3.1312829999999998
	.quad	0x40155e1d2178f68c              # double 5.3419080000000001
	.quad	0x3ffdf743632c1f43              # double 1.8728670000000001
	.quad	0x400ee8cdea033e79              # double 3.8636740000000001
	.quad	0x40079b584b1ab085              # double 2.9508519999999998
	.quad	0x40181ae03b3e9a70              # double 6.0262460000000004
	.quad	0x3fe4d4d1e96c3fc4              # double 0.65097899999999997
	.quad	0x4018037fbefd0071              # double 6.0034169999999998
	.quad	0x3ff3a1144cbe1eb4              # double 1.226826
	.quad	0x3ff17bb62413db7f              # double 1.092703
	.quad	0x3ff7adaec4a4095f              # double 1.479903
	.quad	0x40227dfaca361998              # double 9.2460540000000008
	.quad	0x401da60ed80a17b1              # double 7.412166
	.quad	0x40142b0468448cf8              # double 5.0420090000000002
	.quad	0x4019bf69014b599b              # double 6.4369240000000003
	.quad	0x4014a3e9a6f826ee              # double 5.1600710000000003
	.quad	0x4011f367a0f9096c              # double 4.4877000000000002
	.quad	0x401fc6e935b91f71              # double 7.9442490000000001
	.quad	0x40234bd4f15e7c8d              # double 9.6481089999999998
	.quad	0x40044be0ded288ce              # double 2.5370499999999998
	.quad	0x3fc542dcf4623d0c              # double 0.166103
	.quad	0x400bc073de1e2de8              # double 3.4689709999999998
	.quad	0x401c193ccd0fe8ab              # double 7.0246459999999997
	.quad	0x3fb3ff9b56323bbc              # double 0.078118999999999994
	.quad	0x401e127c7c5260f6              # double 7.5180530000000001
	.quad	0x402077b4c3c18b50              # double 8.2338009999999997
	.quad	0x402234d20afa2f06              # double 9.1031650000000006
	.quad	0x40204eb52c9d16fd              # double 8.1537260000000007
	.quad	0x3ff8cce2d1f1cfbc              # double 1.5500210000000001
	.quad	0x4003b23d4f15e7c9              # double 2.4620310000000001
	.quad	0x401d970c564f97ee              # double 7.3975080000000002
	.quad	0x40093387160956c1              # double 3.1501600000000001
	.quad	0x40223146a1a500d6              # double 9.0962420000000002
	.quad	0x40082a1cef240faa              # double 3.0205630000000001
	.quad	0x40206d859c8c9321              # double 8.2139100000000003
	.quad	0x4020be4e69f05ea2              # double 8.3716919999999995
	.quad	0x401ebbddfc9ff92f              # double 7.6834639999999998
	.quad	0x401e4cc814d7279a              # double 7.5749820000000003
	.quad	0x4018d47c73eee526              # double 6.2075060000000004
	.quad	0x402258870110a138              # double 9.172905
	.quad	0x400a88198f1d3ed5              # double 3.3164549999999999
	.quad	0x3fe6814d72799a20              # double 0.70328400000000002
	.quad	0x401b8fcc9ea9a3d3              # double 6.8904290000000001
	.quad	0x3fe5d92d98bf7f06              # double 0.68276099999999995
	.quad	0x3fd37a52ac753e70              # double 0.30434099999999997
	.quad	0x40081b21c475e636              # double 3.0132479999999999
	.quad	0x401252d1f1cfbb95              # double 4.5808790000000004
	.quad	0x400dcb3cc4ac6cdb              # double 3.724237
	.quad	0x4002c9ecb31c219f              # double 2.3485960000000001
	.quad	0x3ff9c779a6b50b0f              # double 1.6112
	.quad	0x3ff77b73083558a7              # double 1.4676389999999999
	.quad	0x4021ad0203e63e8e              # double 8.8379060000000003
	.quad	0x401cb3c536d655e3              # double 7.1755570000000004
	.quad	0x40204c2224edf612              # double 8.1486979999999996
	.quad	0x40145468448cf7cb              # double 5.0824290000000003
	.quad	0x40200e327ed84d34              # double 8.0277290000000007
	.quad	0x4006bdb3bfb58d15              # double 2.8426279999999999
	.quad	0x3fd327fa1a0cf180              # double 0.299315
	.quad	0x4018b56da0168b5d              # double 6.1771760000000002
	.quad	0x401af4651f3e89a9              # double 6.7386670000000004
	.quad	0x4011f58a32f44913              # double 4.4897850000000004
	.quad	0x3fb8750c1b97353b              # double 0.095535999999999996
	.quad	0x4022e674afd54541              # double 9.4501089999999994
	.quad	0x40169a1ad6451b93              # double 5.650493
	.quad	0x40106e6e653868fd              # double 4.1078429999999999
	.quad	0x4012aa5a89b951c6              # double 4.6663610000000002
	.quad	0x40125a4095f2452c              # double 4.5881369999999997
	.quad	0x401c1c6da4484945              # double 7.0277620000000001
	.quad	0x4019c5bab21815a0              # double 6.4430949999999996
	.quad	0x4016bebe9c886163              # double 5.6862740000000001
	.quad	0x401bfa6698bb4d49              # double 6.9945320000000004
	.quad	0x4021654823854046              # double 8.6978159999999995
	.quad	0x401918a222d5171e              # double 6.2740559999999999
	.quad	0x3fdca98244e93e1d              # double 0.44784600000000002
	.quad	0x401339e2bcf91a33              # double 4.8065290000000003
	.quad	0x3fdf9635610adcd3              # double 0.49354300000000001
	.quad	0x401f6111ada76d98              # double 7.8447940000000002
	.quad	0x401baec02f2f9874              # double 6.920655
	.quad	0x401bf29845dc8323              # double 6.9869089999999998
	.quad	0x4001668986fcdee3              # double 2.1750669999999999
	.quad	0x3ff1f991bc558644              # double 1.1234299999999999
	.quad	0x4011c633ce63a5c2              # double 4.4435570000000002
	.quad	0x401e772ef0ae5365              # double 7.6163899999999999
	.quad	0x402357f08893b7d8              # double 9.6717569999999994
	.quad	0x400272096787ce96              # double 2.305682
	.quad	0x40185c7cd898b2ea              # double 6.0903200000000002
	.quad	0x40199903ea704bc2              # double 6.3994289999999996
	.quad	0x4009d3e35c5b4aa9              # double 3.2284609999999998
	.quad	0x3fb9b62c77574f72              # double 0.100436
	.quad	0x40077728a6117721              # double 2.9331830000000001
	.quad	0x4020d95ee136e71d              # double 8.4245520000000003
	.quad	0x40206b6f19934efd              # double 8.2098320000000005
	.quad	0x400b8e8c8abd5dc4              # double 3.444604
	.quad	0x401eed2bb23571d2              # double 7.7316120000000002
	.quad	0x4013b2a7bd48cb4b              # double 4.9244680000000001
	.quad	0x40139c5a8155d5f5              # double 4.9026889999999996
	.quad	0x4016c23d0bfa0946              # double 5.689686
	.quad	0x401e0871e6cd2913              # double 7.5082469999999998
	.quad	0x401a98e29f9ce8d9              # double 6.6493019999999996
	.quad	0x4023e23076c050be              # double 9.9417760000000008
	.quad	0x401cc19652bd3c36              # double 7.1890499999999999
	.quad	0x40117e7fb267c6b9              # double 4.3735340000000003
	.quad	0x4022365eaab04253              # double 9.1061910000000008
	.quad	0x400790b1feeb2d0a              # double 2.9456519999999999
	.quad	0x400ce1bda5119ce0              # double 3.6102249999999998
	.quad	0x3fd2367a0f9096bc              # double 0.28457500000000002
	.quad	0x3fc3f7be121ee675              # double 0.155998
	.quad	0x40021574f722e1ac              # double 2.2604769999999998
	.quad	0x400349ff92f2b66b              # double 2.4111319999999998
	.quad	0x401cd59ab6d00b46              # double 7.2085980000000003
	.quad	0x40209b3a8a3f8983              # double 8.3031810000000004
	.quad	0x400e26ddf00abf77              # double 3.7689780000000002
	.quad	0x40164c4d22c881e4              # double 5.5745129999999996
	.quad	0x4014a646f1561911              # double 5.1623799999999997
	.quad	0x4020db2873bc903f              # double 8.4280430000000006
	.quad	0x40061e5d9e40c847              # double 2.7648269999999999
	.quad	0x4013c04a2fcefaa4              # double 4.9377829999999996
	.quad	0x401e5442c7fbacb4              # double 7.5822859999999999
	.quad	0x4021cca6223e186a              # double 8.8997050000000009
	.quad	0x401282146a1a500d              # double 4.6270309999999997
	.quad	0x3fd10d3cff64cf8d              # double 0.26643299999999998
	.quad	0x3fd3fee6fb4c3c19              # double 0.31243300000000002
	.quad	0x40208d25247cb70b              # double 8.2756740000000004
	.quad	0x4023fb00ffda4053              # double 9.9902420000000002
	.quad	0x40126214f0520d13              # double 4.595783
	.quad	0x3fbd3af74cd3176a              # double 0.114181
	.quad	0x40190a6f3f52fc26              # double 6.2601899999999997
	.quad	0x40160644d87724fb              # double 5.5061220000000004
	.quad	0x4020e1a77e5eaab0              # double 8.4407309999999995
	.quad	0x401f9454152b0a70              # double 7.8948520000000002
	.quad	0x40212b5d462c343b              # double 8.5846959999999992
	.quad	0x4014112e40852b4e              # double 5.0167780000000004
	.quad	0x3fe8638eb0318b93              # double 0.76215299999999997
	.quad	0x3f8ae5796bfca85d              # double 0.013133000000000001
	.quad	0x401b04d1a6506141              # double 6.7547059999999997
	.quad	0x401e298288051c9f              # double 7.5405369999999996
	.quad	0x4014942fe82517e7              # double 5.1447139999999996
	.quad	0x3fffc092ccf6be38              # double 1.984515
	.quad	0x401caa2834d26fa4              # double 7.166169
	.quad	0x4003e02d16b97fe9              # double 2.484461
	.quad	0x4009c23d9231c64c              # double 3.2198440000000002
	.quad	0x40003cf2cf95d4e9              # double 2.02976
	.quad	0x400befbc1acde1a0              # double 3.4920580000000001
	.quad	0x4018215054ac29bf              # double 6.0325329999999999
	.quad	0x4022e14983d79075              # double 9.4400139999999996
	.quad	0x4021bd4a5df2239e              # double 8.8697079999999993
	.quad	0x4016a7ea1c68ec53              # double 5.6639790000000003
	.quad	0x40157eda66128390              # double 5.3738799999999998
	.quad	0x40206e675147f130              # double 8.2156319999999994
	.quad	0x4011194face67d78              # double 4.274718
	.quad	0x401a5e731d2e0e30              # double 6.5922359999999998
	.quad	0x40200a2a2c237479              # double 8.0198529999999995
	.quad	0x3fed36d86ec17ebb              # double 0.91294500000000001
	.quad	0x400892bdc26dce3a              # double 3.0716510000000001
	.quad	0x40237ebd6e8af816              # double 9.7475389999999997
	.quad	0x4023c70a5efe9318              # double 9.8887509999999991
	.quad	0x4011de82d7b634db              # double 4.4672960000000002
	.quad	0x40138db7ae5796c0              # double 4.8883960000000002
	.quad	0x402189a08bfc2225              # double 8.7688030000000001
	.quad	0x4021d3dfb0d51f82              # double 8.9138160000000006
	.quad	0x4023b0f14db59579              # double 9.8455910000000006
	.quad	0x40123d938151a438              # double 4.5601330000000004
	.quad	0x3ff38b28522ea0fd              # double 1.2214739999999999
	.quad	0x400c312f4cf4a559              # double 3.524016
	.quad	0x401c98bbd3804535              # double 7.1491540000000002
	.quad	0x402316e34fc610f1              # double 9.5447030000000001
	.quad	0x4013614a0a0f4d7b              # double 4.8450090000000001
	.quad	0x4001badd9c27e953              # double 2.216243
	.quad	0x401ab7a0f9096bba              # double 6.6793250000000004
	.quad	0x401b2d245b291b82              # double 6.7940839999999998
	.quad	0x40225972474538ef              # double 9.1746999999999996
	.quad	0x40237fea5f84cad5              # double 9.7498349999999991
	.quad	0x3fd74a515ce9e5e2              # double 0.36391099999999998
	.quad	0x401213d96638433d              # double 4.5193839999999996
	.quad	0x3fd9873365881a15              # double 0.39887699999999998
	.quad	0x4021b3af31b152f4              # double 8.8509460000000004
	.quad	0x3ff976b6e0d23d4f              # double 1.591483
	.quad	0x401f2906034f3fd9              # double 7.7900619999999998
	.quad	0x401a084d76ab5808              # double 6.508108
	.quad	0x400ef8d60a633051              # double 3.871502
	.quad	0x40147335d249e450              # double 5.1125100000000003
	.quad	0x4009cbc27631b585              # double 3.2244920000000001
	.quad	0x40079d9a95421c04              # double 2.9519549999999999
	.quad	0x4010922467be553b              # double 4.1427170000000002
	.quad	0x40109b27cbf6e3f8              # double 4.1515190000000004
	.quad	0x4011874080f98fa3              # double 4.3820819999999996
	.quad	0x3fda7e6b3fe9fadb              # double 0.413966
	.quad	0x4018c8094e5d5b25              # double 6.1953480000000001
	.quad	0x4020f13d102bc72e              # double 8.4711689999999997
	.quad	0x4022ec6e6d9be4cd              # double 9.4617799999999991
	.quad	0x3ff98bc9cd3e0bd4              # double 1.5966279999999999
	.quad	0x3ff0f46bacf74470              # double 1.0596730000000001
	.quad	0x4014f48909289dae              # double 5.238804
	.quad	0x40090919ef954eb1              # double 3.1294439999999999
	.quad	0x401472d3415b1423              # double 5.1121340000000002
	.quad	0x4017c0364388ebcc              # double 5.9377069999999996
	.quad	0x3ff97020c49ba5e3              # double 1.5898749999999999
	.quad	0x400d8bf8769ec2ce              # double 3.6933449999999999
	.quad	0x3fe84ed916872b02              # double 0.75962499999999999
	.quad	0x401202b0ea18372e              # double 4.5026279999999996
	.quad	0x4018d421c044284e              # double 6.20716
	.quad	0x400c1cf5f4e4430b              # double 3.514141
	.quad	0x401b91d3ed527e52              # double 6.8924099999999999
	.quad	0x401b419652bd3c36              # double 6.8140499999999999
	.quad	0x3fe0d19bd4067cf2              # double 0.52558700000000003
	.quad	0x3fdd5d63886594af              # double 0.45882499999999998
	.quad	0x4011595f2452c5a0              # double 4.3372770000000003
	.quad	0x40126e70c1333b97              # double 4.6078520000000003
	.quad	0x3feb95a294141e9b              # double 0.862016
	.quad	0x3fed73cf70153bd1              # double 0.92038699999999996
	.quad	0x402260cd63cb8173              # double 9.1890669999999997
	.quad	0x401e240852b4d8ba              # double 7.5351879999999998
	.quad	0x401cf19b4dcebfec              # double 7.2359439999999999
	.quad	0x400b4f3d3a1d3240              # double 3.413691
	.quad	0x401251522a6f3f53              # double 4.579415
	.quad	0x402232efd438d1d9              # double 9.0994860000000006
	.quad	0x4023fd2fc2656abe              # double 9.9945050000000002
	.quad	0x40138997c3d68406              # double 4.8843680000000003
	.quad	0x3ff6fa6defc7a398              # double 1.43614
	.quad	0x4006a0cf1800a7c6              # double 2.8285200000000001
	.quad	0x401dc70ac3a860dd              # double 7.4443770000000002
	.quad	0x4021262fbe33acd6              # double 8.5745830000000005
	.quad	0x401c00724b76f6d7              # double 7.0004359999999997
	.quad	0x3ffdd8655193708b              # double 1.8653310000000001
	.quad	0x4019712d3415b142              # double 6.3605239999999998
	.quad	0x3ff965aff2a172ac              # double 1.587326
	.quad	0x400e0c9afe1da7b1              # double 3.7561550000000001
	.quad	0x40205cb9884c6a3c              # double 8.1811030000000002
	.quad	0x401462fdfc19c172              # double 5.0966719999999999
	.quad	0x4022f94e7ee9142b              # double 9.4869269999999996
	.quad	0x401f3ce4649906cd              # double 7.8094650000000003
	.quad	0x4021708bfc2224ee              # double 8.7198180000000001
	.quad	0x40225fb0f6ad70e7              # double 9.1868970000000001
	.quad	0x401e237c5692b3cc              # double 7.5346539999999997
	.quad	0x4021545974e65bea              # double 8.6647449999999999
	.quad	0x3ff617b634dad320              # double 1.380789
	.quad	0x401b3ff3ade225fa              # double 6.8124529999999996
	.quad	0x4022c23ad18d25ee              # double 9.3793550000000003
	.quad	0x3ffbb3a797891e21              # double 1.7313609999999999
	.quad	0x4010aa37ac3eb7cc              # double 4.1662280000000003
	.quad	0x401abbd05af6c69b              # double 6.6834119999999997
	.quad	0x401a5c7325918a01              # double 6.5902830000000003
	.quad	0x400d7614df8b1572              # double 3.6826569999999998
	.quad	0x4013418e325d4a5e              # double 4.814019
	.quad	0x40153e0e30446b6a              # double 5.3106010000000001
	.quad	0x4019806fef7c243e              # double 6.3754270000000002
	.quad	0x401968090b417ca2              # double 6.3515969999999999
	.quad	0x40083e9f2778140e              # double 3.0305770000000001
	.quad	0x4015d5536933a040              # double 5.4583259999999996
	.quad	0x400040b780346dc6              # double 2.0316000000000001
	.quad	0x402271a437824d4d              # double 9.2219560000000005
	.quad	0x40235f079e59f2bb              # double 9.6856050000000006
	.quad	0x4000b73215fcc187              # double 2.0894509999999999
	.quad	0x3ffacfb43d89ce4a              # double 1.6757089999999999
	.quad	0x4018aefc7a398202              # double 6.1708850000000002
	.quad	0x402075eacc92146a              # double 8.2303069999999998
	.quad	0x401f8c0bdcad14a1              # double 7.8867640000000003
	.quad	0x400e7b320535c9e6              # double 3.8101539999999998
	.quad	0x4023c4111ada76d9              # double 9.8829429999999991
	.quad	0x40175cc5fbf83383              # double 5.8405990000000001
	.quad	0x3ff901f644955b46              # double 1.5629789999999999
	.quad	0x3fe3c712e40852b5              # double 0.61805100000000002
	.quad	0x3fd4aec0724b76f7              # double 0.32316600000000001
	.quad	0x3fff3fca85caafbc              # double 1.953074
	.quad	0x401f231e7d9988d3              # double 7.7842960000000003
	.quad	0x401795cfaacd9e84              # double 5.8963000000000001
	.quad	0x3fbf8b3700474d9c              # double 0.12321799999999999
	.quad	0x401e434549b62c77              # double 7.5656939999999996
	.quad	0x3fe348b0079a2835              # double 0.60262300000000002
	.quad	0x401a82dbe7f2c301              # double 6.6277920000000003
	.quad	0x401b1e77d523b363              # double 6.7797539999999996
	.quad	0x4023694e7ee9142b              # double 9.7056769999999996
	.quad	0x40176c5c9a34ca0c              # double 5.8558219999999999
	.quad	0x3ffda98244e93e1d              # double 1.8538840000000001
	.quad	0x4022c92556d19ded              # double 9.3928630000000001
	.quad	0x4009d3faf42784a9              # double 3.2285059999999999
	.quad	0x400cd33ca31e7d9a              # double 3.6031430000000002
	.quad	0x4012085ad538ac19              # double 4.508159
	.quad	0x401f62fdfc19c172              # double 7.8466719999999999
	.quad	0x401acc7fbacb4289              # double 6.6997059999999999
	.quad	0x402015ef62f9ca5c              # double 8.0428420000000002
	.quad	0x40120759253543af              # double 4.5071760000000003
	.quad	0x400f0f7446f9b995              # double 3.8825460000000001
	.quad	0x400c364840e1719f              # double 3.5265049999999998
	.quad	0x3fb476af89c5e6ff              # double 0.079935999999999993
	.quad	0x40149ce2d1f1cfbc              # double 5.1532090000000004
	.quad	0x401d226c3b927d46              # double 7.2836160000000003
	.quad	0x400358e29f9ce8d9              # double 2.4184009999999998
	.quad	0x40215fdc7abfb9bf              # double 8.6872290000000003
	.quad	0x40214533f42352eb              # double 8.6351619999999993
	.quad	0x3ff3ec4d65e46067              # double 1.2451909999999999
	.quad	0x4010354de7ea5f85              # double 4.0520550000000002
	.quad	0x4011937154003255              # double 4.3939870000000001
	.quad	0x4017c1832fcac8e7              # double 5.9389770000000004
	.quad	0x401482f2b66b6178              # double 5.1278790000000001
	.quad	0x40195e56473471f8              # double 6.3421260000000004
	.quad	0x400f3fa333764f12              # double 3.9060730000000001
	.quad	0x400ace924f227d03              # double 3.3508650000000002
	.quad	0x3ff284406c00da1b              # double 1.1572880000000001
	.quad	0x402367127f5e84f1              # double 9.7013130000000007
	.quad	0x401cb42f1ed17c5f              # double 7.175961
	.quad	0x402178ab71327243              # double 8.7356829999999999
	.quad	0x3ffdc27a63736cdf              # double 1.85998
	.quad	0x401a97154003254e              # double 6.6475419999999996
	.quad	0x401eea75cd0bb6ed              # double 7.7289649999999996
	.quad	0x40023b5b70691ea8              # double 2.2789830000000002
	.quad	0x400c374aba387592              # double 3.5269979999999999
	.quad	0x402094d1c7de5083              # double 8.2906630000000003
	.quad	0x4022c15af294dd72              # double 9.3776469999999996
	.quad	0x401b1f398e970718              # double 6.7804929999999999
	.quad	0x401286612839042e              # double 4.6312300000000004
	.quad	0x400614794ea07703              # double 2.7599969999999998
	.quad	0x401b73f4eca686e8              # double 6.8632390000000001
	.quad	0x401b17f13059641f              # double 6.7733809999999997
	.quad	0x40237e72fba01eef              # double 9.7469710000000002
	.quad	0x400ebc69728a6117              # double 3.8419979999999998
	.quad	0x400b1625204af923              # double 3.3858130000000002
	.quad	0x401169c7bcc2938e              # double 4.3533010000000001
	.quad	0x3fbb7c1376d54973              # double 0.107362
	.quad	0x40112a3486f049aa              # double 4.2912160000000004
	.quad	0x3ff8d6c82e019b0b              # double 1.5524370000000001
	.quad	0x4013c1847f562175              # double 4.9389820000000002
	.quad	0x3ffb20578e5c4eb5              # double 1.6953959999999999
	.quad	0x40076a78af3e468d              # double 2.9269880000000001
	.quad	0x40233ed9dfdac68b              # double 9.6227560000000007
	.quad	0x4020124052d666aa              # double 8.0356470000000009
	.quad	0x402111fa11a975b0              # double 8.5351110000000006
	.quad	0x4019a82ecaeea63b              # double 6.4142409999999996
	.quad	0x40043986b9c304cd              # double 2.528089
	.quad	0x400bedf9378ee286              # double 3.4911979999999998
	.quad	0x3fbaa60913a4f872              # double 0.10409599999999999
	.quad	0x3ff9cface67d77fb              # double 1.613202
	.quad	0x401f40f238972043              # double 7.8134240000000003
	.quad	0x4014b8ede54b48d4              # double 5.1805950000000003
	.quad	0x401f1373affb04ee              # double 7.7689959999999996
	.quad	0x40054c61d8622c45              # double 2.662296
	.quad	0x4020879fa97e132b              # double 8.2648899999999994
	.quad	0x40139161a1db877b              # double 4.8919740000000003
	.quad	0x4012048ba83f4eca              # double 4.5044389999999996
	.quad	0x4017d44998d045fe              # double 5.9573119999999999
	.quad	0x40237cdb9c7368ad              # double 9.7438629999999992
	.quad	0x401199b34a44c7b0              # double 4.4000979999999998
	.quad	0x3fdb328b6d86ec18              # double 0.42496
	.quad	0x401950578e5c4eb5              # double 6.3284589999999996
	.quad	0x40212253da72a7bd              # double 8.5670459999999995
	.quad	0x4019b929aa1d755c              # double 6.4308230000000002
	.quad	0x3ff8bed30f062d41              # double 1.5465880000000001
	.quad	0x401afc087442c7fc              # double 6.7461260000000003
	.quad	0x401c2242d05f2885              # double 7.0334580000000004
	.quad	0x4018d361565c2d28              # double 6.2064260000000004
	.quad	0x40106221426fe719              # double 4.0958300000000003
	.quad	0x400c0a5df2239e6b              # double 3.5050620000000001
	.quad	0x400070cf5b1c8649              # double 2.0550830000000002
	.quad	0x40104050374ff866              # double 4.0628060000000001
	.quad	0x3fe323fab10ba626              # double 0.59814199999999995
	.quad	0x3fe6a4e379b77c03              # double 0.70762800000000003
	.quad	0x401f005ff1d81f10              # double 7.7503659999999996
	.quad	0x401f957bc7f77af6              # double 7.8959799999999998
	.quad	0x401cdd77b7c7820a              # double 7.2162769999999998
	.quad	0x3feaec7000431bdf              # double 0.84136200000000005
	.quad	0x401bd718a86d71f3              # double 6.9600549999999997
	.quad	0x3ff6d105e1c15098              # double 1.426031
	.quad	0x4014fb9d7fd82774              # double 5.2457180000000001
	.quad	0x4020f6ee73e681aa              # double 8.4822880000000005
	.quad	0x401b644178705426              # double 6.847906
	.quad	0x4023912e62131a8f              # double 9.783557
	.quad	0x40209a3704790b85              # double 8.3012010000000007
	.quad	0x401876d7625204b0              # double 6.1160560000000004
	.quad	0x401b0cbaf965b20c              # double 6.7624320000000004
	.quad	0x4007ffc6da448494              # double 2.9998909999999999
	.quad	0x402022291fb3fa6e              # double 8.0667200000000001
	.quad	0x400d7fcf3dc054ef              # double 3.6874069999999999
	.quad	0x3fa2369fcf3dc055              # double 0.035573
	.quad	0x401b7c67dfe32a06              # double 6.8714899999999997
	.quad	0x3fddf0fe047d3d43              # double 0.46783400000000003
	.quad	0x4016194e5d5b24ea              # double 5.5247130000000002
	.quad	0x4021c052b4d8ba41              # double 8.8756310000000003
	.quad	0x4009882f944241c4              # double 3.191497
	.quad	0x3fde8b26394face6              # double 0.47724299999999997
	.quad	0x4014bb2aae297397              # double 5.1827800000000002
	.quad	0x3ff320242d05f288              # double 1.1953469999999999
	.quad	0x40236aa0a958537e              # double 9.7082569999999997
	.quad	0x3fee73d9ec700043              # double 0.95164199999999999
	.quad	0x402349db65ecc3e3              # double 9.6442519999999998
	.quad	0x401b7a8fc0d2c387              # double 6.8696890000000002
	.quad	0x4021ffcbf6e3f78c              # double 8.9996030000000004
	.quad	0x3ff81b4edb2f661f              # double 1.506667
	.quad	0x4013d55219a847b2              # double 4.9583209999999998
	.quad	0x40206ce4a7b4e54f              # double 8.2126819999999991
	.quad	0x40164837b4a2339c              # double 5.5705249999999999
	.quad	0x4016b6d19dece571              # double 5.678534
	.quad	0x4014c7d30ad46f58              # double 5.1951409999999996
	.quad	0x40090e49f51697f2              # double 3.131977
	.quad	0x4002d97f62b6ae7d              # double 2.3561999999999999
	.quad	0x40209d1e321a2e7f              # double 8.3068709999999992
	.quad	0x4018aa13c254a3c6              # double 6.1660909999999998
	.quad	0x4017ff2064239607              # double 5.9991469999999998
	.quad	0x4015296d0917d6b6              # double 5.2904549999999997
	.quad	0x401f5d21ff2e48e9              # double 7.8409500000000003
	.quad	0x40203315d701d9f5              # double 8.0997760000000003
	.quad	0x4003e151a437824d              # double 2.4850189999999999
	.quad	0x3fe9e74299d883ba              # double 0.80947999999999998
	.quad	0x4022c10c0ad03d9b              # double 9.3770450000000007
	.quad	0x400d5ca31e7d9989              # double 3.6702330000000001
	.quad	0x40143ce39b456b44              # double 5.0594619999999999
	.quad	0x401360ced4e4c943              # double 4.8445390000000002
	.quad	0x3ffb7f10ecb74de0              # double 1.7185220000000001
	.quad	0x4004f8a4c1ebc83b              # double 2.6214080000000002
	.quad	0x40237077036c9c0b              # double 9.7196580000000007
	.quad	0x4015703211cb039f              # double 5.3595660000000001
	.quad	0x4015016aceaaf35e              # double 5.2513839999999998
	.quad	0x3ff4458ff7596851              # double 1.266983
	.quad	0x4013c6451b93037d              # double 4.9436229999999997
	.quad	0x400a9c4da9003eea              # double 3.3263199999999999
	.quad	0x4021587df5cf2496              # double 8.6728360000000002
	.quad	0x4019622e5de15ca7              # double 6.3458800000000002
	.quad	0x40140d074213a0c7              # double 5.0127230000000003
	.quad	0x40201aca9ac36545              # double 8.052327
	.quad	0x4011a97353b4b2fb              # double 4.4154790000000004
	.quad	0x40108a27ae9ab29e              # double 4.1349169999999997
	.quad	0x40112cb641700cd8              # double 4.2936639999999997
	.quad	0x401a64a72ead9275              # double 6.5982940000000001
	.quad	0x40089fe43675ddd3              # double 3.0780720000000001
	.quad	0x401bd260f5e41d4b              # double 6.9554479999999996
	.quad	0x3fffeecaeea63b69              # double 1.9957990000000001
	.quad	0x40048c42e9899bf6              # double 2.5684870000000002
	.quad	0x4023f1105e1c1509              # double 9.9708279999999991
	.quad	0x400654b51372a38c              # double 2.7913610000000002
	.quad	0x400a7652bd3c3611              # double 3.3077749999999999
	.quad	0x3fe80c8abd5dc400              # double 0.75153099999999995
	.quad	0x3fb17060bb2bba99              # double 0.068121000000000001
	.quad	0x3ff12072d1aeb3dd              # double 1.070422
	.quad	0x3ff7f589efd86a90              # double 1.4974460000000001
	.quad	0x401262d01c0ca601              # double 4.5964970000000003
	.quad	0x4021631a6d698fe7              # double 8.6935610000000008
	.quad	0x4022f07a8d64d7f1              # double 9.4696850000000001
	.quad	0x40156c49774256bd              # double 5.3557490000000003
	.quad	0x3ff992923e5b8562              # double 1.598284
	.quad	0x40009d084e831ad2              # double 2.076676
	.quad	0x4011464d7f0ed3d8              # double 4.3186549999999997
	.quad	0x3f8ce52deca2552a              # double 0.014109
	.quad	0x40220da426bb55ac              # double 9.0266429999999999
	.quad	0x4007d7635e74299e              # double 2.9801700000000002
	.quad	0x3fefd15ad106ee31              # double 0.99430600000000002
	.quad	0x3fa12a305532617c              # double 0.033524999999999999
	.quad	0x4014bbf8769ec2ce              # double 5.1835649999999998
	.quad	0x40015f077ccc0379              # double 2.1714009999999999
	.quad	0x4021b517e77d523b              # double 8.8536979999999996
	.quad	0x40202ff327aa68f5              # double 8.0936520000000005
	.quad	0x402120915bdd7668              # double 8.5636089999999996
	.quad	0x3ff8d79af1886df8              # double 1.552638
	.quad	0x40221e703afb7e91              # double 9.05945
	.quad	0x4021d9680e065300              # double 8.9246219999999994
	.quad	0x401480f840181e04              # double 5.125947
	.quad	0x3fe9b8a5ce5b4246              # double 0.80379
	.quad	0x3f9aaa7ded6ba8c6              # double 0.026041000000000002
	.quad	0x3ffb63400b88ca3e              # double 1.7117309999999999
	.quad	0x401d33baba7b9171              # double 7.3005170000000001
	.quad	0x4015df11f926c7eb              # double 5.4678420000000001
	.quad	0x400102c01e68a0d3              # double 2.1263429999999999
	.quad	0x401ae4245f5ad96a              # double 6.7227949999999996
	.quad	0x3ffa25aee631f8a1              # double 1.6342000000000001
	.quad	0x4008922af5771002              # double 3.0713710000000001
	.quad	0x3ff7920afa2f05a7              # double 1.473155
	.quad	0x401b0be0589acbc9              # double 6.7615980000000002
	.quad	0x40008ff08893b7d8              # double 2.0702829999999999
	.quad	0x401ee6601bc98a22              # double 7.7249759999999998
	.quad	0x4014ac1a048e043a              # double 5.1680679999999999
	.quad	0x3ff13c126a65cf68              # double 1.0771660000000001
	.quad	0x400e67d5ed06fef8              # double 3.8007010000000001
	.quad	0x40214b8b47c73eee              # double 8.6475469999999994
	.quad	0x401cca554b8bef8d              # double 7.1975910000000001
	.quad	0x3fd38bb4d48882f1              # double 0.30540200000000001
	.quad	0x400486defc7a3982              # double 2.565855
	.quad	0x3fed54ae429e0a42              # double 0.91658700000000004
	.quad	0x401dcc46950fc71d              # double 7.4494879999999997
	.quad	0x3fdd20a73f748a16              # double 0.45511800000000002
	.quad	0x401848b69552e2fc              # double 6.0710090000000001
	.quad	0x40164b517a46173c              # double 5.5735530000000004
	.quad	0x400d52c8c5004fb1              # double 3.665422
	.quad	0x3fe48f92af9a8cdf              # double 0.64252600000000004
	.quad	0x3ff5af8487b99d45              # double 1.355351
	.quad	0x4016bca9ef5232d3              # double 5.6842420000000002
	.quad	0x402234577d955715              # double 9.1022300000000005
	.quad	0x400a61d4306e5cd5              # double 3.297768
	.quad	0x401daec99f1ae2da              # double 7.4206909999999997
	.quad	0x401642a5614df8b1              # double 5.5650839999999997
	.quad	0x401184ad794a6eb9              # double 4.3795679999999999
	.quad	0x4007786fcdee34fc              # double 2.9338069999999998
	.quad	0x4017ee79aae6c8f7              # double 5.9828859999999997
	.quad	0x401f9df2a9d627bf              # double 7.9042459999999996
	.quad	0x40135267839cd812              # double 4.8304729999999996
	.quad	0x400d263e8dda48b6              # double 3.6436739999999999
	.quad	0x4023b9c0a8d21bc1              # double 9.8627979999999997
	.quad	0x4021d068123810e9              # double 8.9070440000000008
	.quad	0x401b6c26138fffbd              # double 6.8556140000000001
	.quad	0x4022c432873bc904              # double 9.3831980000000001
	.quad	0x401bbe95b78cc9a7              # double 6.9361179999999996
	.quad	0x4020eac4f7ec3548              # double 8.4585340000000002
	.quad	0x4014cbbba55d1c3b              # double 5.1989580000000002
	.quad	0x3ff23623076c050c              # double 1.138217
	.quad	0x401b49c27e953155              # double 6.822031
	.quad	0x3ff1524399b2c40d              # double 1.082584
	.quad	0x401c0877ab324852              # double 7.0082690000000003
	.quad	0x4002b2c1f42bb667              # double 2.3372839999999999
	.quad	0x3ff090fe8ab4fa48              # double 1.035399
	.quad	0x3fddcd9e83e425af              # double 0.46567500000000001
	.quad	0x4021b398e9707182              # double 8.8507759999999998
	.quad	0x3ff5b213e3e29308              # double 1.3559760000000001
	.quad	0x3ff6f5e95b78cc9a              # double 1.4350369999999999
	.quad	0x40183fd4bf0995ab              # double 6.062335
	.quad	0x40043d273d5bab22              # double 2.5298600000000002
	.quad	0x401b5cc89b0ee49f              # double 6.8406089999999997
	.quad	0x40138dab191dde37              # double 4.8883479999999997
	.quad	0x402386a077036c9c              # double 9.7629429999999999
	.quad	0x401f3455219a847b              # double 7.8011059999999998
	.quad	0x401f3964628027d9              # double 7.8060470000000004
	.quad	0x401531fd1569f490              # double 5.2988169999999997
	.quad	0x400a03a96d4c33b5              # double 3.2517879999999999
	.quad	0x4015c78897e99631              # double 5.4448569999999998
	.quad	0x402341641f644956              # double 9.6277170000000005
	.quad	0x401af9c560c7c0f4              # double 6.7439169999999997
	.quad	0x4013ed3c792d1288              # double 4.9816760000000002
	.quad	0x4012f9dbec2480e9              # double 4.7440030000000002
	.quad	0x3fb7269df97aaac1              # double 0.090432999999999999
	.quad	0x40208edb940fecdd              # double 8.2790189999999999
	.quad	0x4019f34c5da6a444              # double 6.4875959999999999
	.quad	0x4016b65ba6efc372              # double 5.6780840000000001
	.quad	0x3fbe19652bd3c361              # double 0.117575
	.quad	0x401da9fba450acc1              # double 7.4159990000000002
	.quad	0x40231e106ab14ec2              # double 9.558719
	.quad	0x4014784be40420f7              # double 5.1174770000000001
	.quad	0x401ccde093532e7b              # double 7.2010519999999998
	.quad	0x4020cb1d712a0ec7              # double 8.3967089999999995
	.quad	0x4017f539fba450ad              # double 5.9894790000000002
	.quad	0x4023b7a5f41aef70              # double 9.8586880000000008
	.quad	0x401197f7be121ee6              # double 4.3984059999999996
	.quad	0x400249ea9a3d2d88              # double 2.286092
	.quad	0x401bb6b8305d95dd              # double 6.9284369999999997
	.quad	0x40065e98dcdb37ca              # double 2.7961900000000002
	.quad	0x3fe19fbe76c8b439              # double 0.55074999999999996
	.quad	0x40181fb3b7521145              # double 6.0309590000000002
	.quad	0x401cf6ddf00abf77              # double 7.2410810000000003
	.quad	0x4018660ae9680e06              # double 6.0996509999999997
	.quad	0x401c6d2bb23571d2              # double 7.1066120000000002
	.quad	0x400525c70435efa6              # double 2.643446
	.quad	0x401e54473cd57364              # double 7.5823029999999996
	.quad	0x401af365881a1555              # double 6.737692
	.quad	0x4002d23358f2e05d              # double 2.3526370000000001
	.quad	0x4023101a79fec99f              # double 9.5314519999999998
	.quad	0x4004c0b5ed8d36b5              # double 2.5940970000000001
	.quad	0x3ff65b0ee49f5169              # double 1.3972309999999999
	.quad	0x400a665cf67b1c00              # double 3.299982
	.quad	0x4020c2df505d0fa6              # double 8.3806100000000008
	.quad	0x401a264388ebcc6c              # double 6.5373669999999997
	.quad	0x4022f11d3671ac15              # double 9.4709260000000003
	.quad	0x400c7e32a0663c75              # double 3.56162
	.quad	0x4022cbcad9ad85e0              # double 9.3980320000000006
	.quad	0x40106990f301eabc              # double 4.1030920000000002
	.quad	0x4017c0c9539b8887              # double 5.9382679999999999
	.quad	0x3fa8def416bdb1a7              # double 0.048576000000000001
	.quad	0x3ff58449dbec2481              # double 1.344797
	.quad	0x4011f0203e63e8de              # double 4.4844980000000003
	.quad	0x400c5cd35a858794              # double 3.5453250000000001
	.quad	0x3ff5f738e6d15ad1              # double 1.372857
	.quad	0x400db443d46b26c0              # double 3.7130200000000002
	.quad	0x3fe2cab606b7aa26              # double 0.58724500000000002
	.quad	0x401dc25b749adc90              # double 7.4398020000000002
	.quad	0x401b78e60807357e              # double 6.8680649999999996
	.quad	0x3ffb59d12cadddf4              # double 1.7094279999999999
	.quad	0x401fe8b439581062              # double 7.9772499999999997
	.quad	0x3fe43f2d3c792d13              # double 0.63271200000000005
	.quad	0x4010d55bccaf709b              # double 4.2083579999999996
	.quad	0x4007662131a8ef78              # double 2.924868
	.quad	0x3fe0827525460aa6              # double 0.51592499999999997
	.quad	0x4023b653eb399f5e              # double 9.856109
	.quad	0x400dc106ab14ec20              # double 3.7192509999999999
	.quad	0x4020027dcbddb984              # double 8.0048659999999998
	.quad	0x4006ce27e0ef9980              # double 2.8506619999999998
	.quad	0x4014ec2a02320968              # double 5.2306290000000004
	.quad	0x402354d7f0ed3d86              # double 9.6657100000000007
	.quad	0x40112f90539fba45              # double 4.296449
	.quad	0x3ff839a06a6e32e4              # double 1.5140690000000001
	.quad	0x40131725c3dee782              # double 4.7726050000000004
	.quad	0x4015f0724b76f6d7              # double 5.4848109999999997
	.quad	0x4018cb6cbd987c63              # double 6.1986569999999999
	.quad	0x401e1433d6c72192              # double 7.5197289999999999
	.quad	0x401f3f566490a351              # double 7.8118530000000001
	.quad	0x401eb66cf41f212d              # double 7.6781499999999995
	.quad	0x401f005bc01a36e3              # double 7.75035
	.quad	0x401b1ef4e0114d2f              # double 6.7802309999999997
	.quad	0x4021daf48c2e770c              # double 8.9276470000000003
	.quad	0x401456cdaf4adbc6              # double 5.0847689999999997
	.quad	0x40205dd8d79d0a67              # double 8.1832949999999993
	.quad	0x402042734f82f512              # double 8.1297859999999993
	.quad	0x4018febbba55d1c4              # double 6.2487630000000003
	.quad	0x4023636e935b91f7              # double 9.6942029999999999
	.quad	0x4003d2e514c22ee4              # double 2.477976
	.quad	0x400082afdda8bd23              # double 2.063812
	.quad	0x401bcd0dcfcc5b8e              # double 6.9502480000000002
	.quad	0x401b457082491afc              # double 6.817812
	.quad	0x4023a8e1719f7f8d              # double 9.8298450000000006
	.quad	0x4022f0e736049ecb              # double 9.4705139999999996
	.quad	0x400e5a5b0ff10ecb              # double 3.7941189999999998
	.quad	0x401f9dbad3a604e2              # double 7.9040330000000001
	.quad	0x4021177292c49342              # double 8.5457959999999993
	.quad	0x3ffcf48f53c579f2              # double 1.809707
	.quad	0x4023e0a32f44912a              # double 9.9387450000000008
	.quad	0x4005217ebaf10236              # double 2.6413549999999999
	.quad	0x401306d8b1dd5d3e              # double 4.7566860000000002
	.quad	0x4020177a0b5ed8d3              # double 8.0458529999999993
	.quad	0x402101f0a1be2b49              # double 8.5037889999999994
	.quad	0x40123c7863beec39              # double 4.5590529999999996
	.quad	0x4001a02b841248d8              # double 2.2032080000000001
	.quad	0x3ff2e295208e1501              # double 1.180318
	.quad	0x3ff2bd556084a516              # double 1.171224
	.quad	0x401565f06f694467              # double 5.3495499999999998
	.quad	0x40226495e17e34b9              # double 9.1964559999999995
	.quad	0x40209365881a1555              # double 8.287884
	.quad	0x3fe26f9b994e1a3f              # double 0.57612399999999997
	.quad	0x40162beb5b2d4d40              # double 5.5428899999999999
	.quad	0x402056e8d10f51ad              # double 8.1697450000000007
	.quad	0x401633fcc9ea9a3d              # double 5.5507689999999998
	.quad	0x4017b9df1172ef0b              # double 5.9315150000000001
	.quad	0x401512b3892ee84b              # double 5.2682630000000001
	.quad	0x40083aef6f8f0414              # double 3.0287769999999998
	.quad	0x401654e7253da72a              # double 5.5829129999999996
	.quad	0x4002e50507a6bd6f              # double 2.3618260000000002
	.quad	0x3fe67c2a8869c66d              # double 0.70265699999999998
	.quad	0x40151e5f7403dddb              # double 5.2796609999999999
	.quad	0x4014e475e6362a5e              # double 5.2231059999999996
	.quad	0x40216bbcf4e874c9              # double 8.710426
	.quad	0x4016b6fef7c243dd              # double 5.6787070000000002
	.quad	0x4012e64388ebcc6c              # double 4.7248669999999997
	.quad	0x40100cd035371972              # double 4.0125130000000002
	.quad	0x3ff2a822ff08893b              # double 1.1660489999999999
	.quad	0x401c9923a29c779a              # double 7.1495499999999996
	.quad	0x401ef4b05b7cfe58              # double 7.7389539999999996
	.quad	0x4010c4107314ca92              # double 4.1914689999999997
	.quad	0x3fd4dde37585be1b              # double 0.32604300000000003
	.quad	0x4013d7064ece9a2c              # double 4.9599849999999996
	.quad	0x3ff7b5afaf859429              # double 1.481857
	.quad	0x401080247021d10b              # double 4.1251389999999999
	.quad	0x401a4953dea465a5              # double 6.5716089999999996
	.quad	0x4023d772f76e6107              # double 9.9207990000000005
	.quad	0x4023bfd6733ebbfd              # double 9.8746829999999992
	.quad	0x40231cb124d099e1              # double 9.5560390000000001
	.quad	0x400e5a81dc0db270              # double 3.7941929999999999
	.quad	0x4010e67caea747d8              # double 4.225085
	.quad	0x401bf9a5ebb7739f              # double 6.9937969999999998
	.quad	0x3fcc440f23897204              # double 0.220827
	.quad	0x3fe41b77c02afddb              # double 0.62835300000000005
	.quad	0x4013bce703afb7e9              # double 4.9344749999999999
	.quad	0x4019b1ec4e7253da              # double 6.4237529999999996
	.quad	0x401fb6d3f9e7b80b              # double 7.9285430000000003
	.quad	0x4018bde26916440f              # double 6.1854339999999999
	.quad	0x401e4dad7518b0d1              # double 7.575857
	.quad	0x401dd7e5a78f25a2              # double 7.4608369999999997
	.quad	0x40120b530ced4e4d              # double 4.5110590000000004
	.quad	0x4010dc07aaef2c73              # double 4.2148729999999999
	.quad	0x4010349235f80991              # double 4.0513389999999996
	.quad	0x3fadb22d0e560419              # double 0.058000000000000003
	.quad	0x401135cbff47735c              # double 4.3025359999999999
	.quad	0x3fe3a398201cd5fa              # double 0.61372000000000004
	.quad	0x3ffedcfcc5b8dc55              # double 1.928952
	.quad	0x4019fae5796bfca8              # double 6.4950159999999997
	.quad	0x3fef29717df19d67              # double 0.97380900000000003
	.quad	0x401263868fd199bb              # double 4.5971929999999999
	.quad	0x4006dd199bb2788e              # double 2.8579590000000001
	.quad	0x401e010e8858ff76              # double 7.5010320000000004
	.quad	0x401148f9f44d4456              # double 4.3212659999999996
	.quad	0x40143b5568e820e6              # double 5.0579429999999999
	.quad	0x4023cf496aad1d04              # double 9.9048569999999998
	.quad	0x401a32a6f3f52fc2              # double 6.5494649999999996
	.quad	0x401c2b139c94f69d              # double 7.0420670000000003
	.quad	0x400e769d30270f39              # double 3.8079170000000002
	.quad	0x40184f965b20b806              # double 6.0777219999999996
	.quad	0x40182c8bc9cd3e0c              # double 6.0435020000000002
	.quad	0x3ffa55e4a3832767              # double 1.6459699999999999
	.quad	0x40165e7924af0bf2              # double 5.5922590000000003
	.quad	0x4020579e16d6dc1a              # double 8.1711279999999995
	.quad	0x400215bdd76683c3              # double 2.2606160000000002
	.quad	0x401a4256366d7a57              # double 6.5647820000000001
	.quad	0x4023ac4f1a1986ba              # double 9.8365410000000004
	.quad	0x401405ccc89b0ee5              # double 5.0056640000000003
	.quad	0x401c8eb6390c9108              # double 7.139367
	.quad	0x3ffc917d6b65a9a8              # double 1.78552
	.quad	0x401022ea52ef911d              # double 4.034097
	.quad	0x40103eda66128390              # double 4.0613799999999998
	.quad	0x401b6c493426783a              # double 6.8557480000000002
	.quad	0x3feb12ec6bce8534              # double 0.84606000000000003
	.quad	0x40082a0663c74fb5              # double 3.0205199999999999
	.quad	0x40162e4f3343fa2b              # double 5.5452240000000002
	.quad	0x4022e26351deefe5              # double 9.442164
	.quad	0x400d76494d50ebab              # double 3.6827570000000001
	.quad	0x40130b24638c9753              # double 4.7608810000000004
	.quad	0x4023631290257c91              # double 9.6935009999999994
	.quad	0x401aaf0aa21a719b              # double 6.6709389999999997
	.quad	0x401148e864020818              # double 4.321199
	.quad	0x40090e568a50507a              # double 3.1320009999999998
	.quad	0x4022d0bb0a2ca9ac              # double 9.4076769999999996
	.quad	0x3fe250fc71d60631              # double 0.57238599999999995
	.quad	0x4021411e646f1562              # double 8.6271850000000008
	.quad	0x40216ac3eb7cbb3d              # double 8.7085260000000009
	.quad	0x4016e1ad2135daad              # double 5.7203869999999997
	.quad	0x4010fa337a80cf9e              # double 4.2443369999999998
	.quad	0x3ff3b440af1cb89d              # double 1.2315069999999999
	.quad	0x401c5cd8dbcec850              # double 7.0906710000000004
	.quad	0x402313c382a12f90              # double 9.5386009999999999
	.quad	0x4019b9873ffac1d3              # double 6.4311800000000003
	.quad	0x3ff51cef240fa9c1              # double 1.319564
	.quad	0x3ff1360e0eb67c28              # double 1.0756969999999999
	.quad	0x400b1a3e39f77293              # double 3.3878140000000001
	.quad	0x401b90dbf0563ed1              # double 6.891464
	.quad	0x40124c49774256bd              # double 4.5744990000000003
	.quad	0x40232a47a9e2bcf9              # double 9.5825779999999998
	.quad	0x40182b384fd2a62b              # double 6.0422070000000003
	.quad	0x40052e06d938151a              # double 2.6474739999999999
	.quad	0x4015d1af3a14cec4              # double 5.4547699999999999
	.quad	0x3fe4ee136e71cda3              # double 0.65406200000000003
	.quad	0x40178a89fc6da448              # double 5.8852919999999997
	.quad	0x401008611fd5885d              # double 4.0081829999999998
	.quad	0x401fd9b90ea9e6ef              # double 7.9626200000000002
	.quad	0x401d5b11c6d1e109              # double 7.3389350000000002
	.quad	0x40204fa22706d506              # double 8.1555339999999994
	.quad	0x3ffa54562e09fe87              # double 1.6455900000000001
	.quad	0x4017466a55087011              # double 5.818765
	.quad	0x4017e3215fcc1872              # double 5.9718070000000001
	.quad	0x40132896dd26b724              # double 4.7896380000000001
	.quad	0x4005986e3b46fdeb              # double 2.6994289999999999
	.quad	0x4022f1635610adcd              # double 9.4714609999999996
	.quad	0x3fd71b93037d6302              # double 0.36105799999999999
	.quad	0x4001e0ee8d10f51b              # double 2.2348300000000001
	.quad	0x401a21c3265add9c              # double 6.5329709999999999
	.quad	0x401a920296b3354c              # double 6.6425879999999999
	.quad	0x3fc050a45d41fa76              # double 0.12746099999999999
	.quad	0x400b1985271bcdbc              # double 3.3874610000000001
	.quad	0x4021c48d9f9053a0              # double 8.8838930000000005
	.quad	0x3ff97b384fd2a62b              # double 1.5925830000000001
	.quad	0x401aceaf6837f7be              # double 6.7018409999999999
	.quad	0x40040c2d6a9c560c              # double 2.5059459999999998
	.quad	0x400021522a6f3f53              # double 2.01627
	.quad	0x401714d4024b33db              # double 5.77034
	.quad	0x401c40b630a91538              # double 7.0631950000000003
	.quad	0x40208eb3dd11be6e              # double 8.2787159999999993
	.quad	0x401b6d041cc532a5              # double 6.8564610000000004
	.quad	0x4005c7de5082cf53              # double 2.7225920000000001
	.quad	0x401b093a2df9378f              # double 6.7590110000000001
	.quad	0x4022955454152b0a              # double 9.2916589999999992
	.quad	0x40219a30fcf80dc3              # double 8.8011549999999996
	.quad	0x401a0e07a28bb0a3              # double 6.5137010000000002
	.quad	0x4022bff0aa21a71a              # double 9.3748830000000005
	.quad	0x400ffce6c093d966              # double 3.9984869999999999
	.quad	0x4021602645e4e69f              # double 8.687792
	.quad	0x40201069a4df47fa              # double 8.0320560000000008
	.quad	0x4014acc35ce18266              # double 5.1687139999999996
	.quad	0x40218a806af46aa1              # double 8.7705110000000008
	.quad	0x4023ffd24180d3d0              # double 9.9996510000000001
	.quad	0x4022ad14e3bcd35b              # double 9.3380500000000008
	.quad	0x402278a71de69ad4              # double 9.2356499999999996
	.quad	0x401456d19dece571              # double 5.084784
	.quad	0x3ff4a9ec2ce46499              # double 1.291485
	.quad	0x3fe0287a072d1aeb              # double 0.50494099999999997
	.quad	0x401ed60242d05f29              # double 7.7089930000000004
	.quad	0x401bf25dd095af29              # double 6.9866859999999997
	.quad	0x40117155d5f56a7b              # double 4.3606790000000002
	.quad	0x401f157214f0520d              # double 7.7709429999999999
	.quad	0x3fd641a261bf37b9              # double 0.34775600000000001
	.quad	0x401177b2031ceaf2              # double 4.3668899999999997
	.quad	0x40229d5ffe6d58c9              # double 9.3073730000000001
	.quad	0x4021f51cc100e6b0              # double 8.9787350000000004
	.quad	0x400c4e19b90ea9e7              # double 3.538135
	.quad	0x401e826aa8eb4635              # double 7.6273600000000003
	.quad	0x40150f5f0b28522f              # double 5.2650110000000003
	.quad	0x400cb878316a0557              # double 3.5900729999999998
	.quad	0x4019114b599aa609              # double 6.2668889999999999
	.quad	0x3ffd8aaeafab53d6              # double 1.8463579999999999
	.quad	0x401cf922962cfd8f              # double 7.243296
	.quad	0x4000e3fa2ad3e921              # double 2.1113170000000001
	.quad	0x40145752977c88e8              # double 5.0852760000000004
	.quad	0x401c7f88b9778573              # double 7.1245450000000003
	.quad	0x400899d12cadddf4              # double 3.0751059999999999
	.quad	0x4006161804d98394              # double 2.7607879999999998
	.quad	0x401a79873ffac1d3              # double 6.6186800000000003
	.quad	0x401ce4801f75104d              # double 7.2231449999999997
	.quad	0x401b82bf11f926c8              # double 6.8776820000000001
	.quad	0x4015f1711947cfa2              # double 5.4857829999999996
	.quad	0x4008aa0232096788              # double 3.0830120000000001
	.quad	0x400dc2e770bd017e              # double 3.7201680000000001
	.quad	0x4020aea465a57647              # double 8.3410980000000006
	.quad	0x40117a7e73a365cb              # double 4.3696229999999998
	.quad	0x401755cfede97d07              # double 5.8338010000000002
	.quad	0x4014155cd91eeaa7              # double 5.0208620000000002
	.quad	0x3fd6148ba83f4eca              # double 0.34500399999999998
	.quad	0x401357c6759ab6d0              # double 4.835718
	.quad	0x400faeae9ee45c36              # double 3.9602940000000002
	.quad	0x401582c01e68a0d3              # double 5.3776859999999997
	.quad	0x4023027a41e57d9e              # double 9.5048390000000005
	.quad	0x3fe16c8d5c74751d              # double 0.54450100000000001
	.quad	0x3fe045c13fd0d068              # double 0.50851500000000005
	.quad	0x3ff8caa8650e7792              # double 1.549477
	.quad	0x40160ac42e9899bf              # double 5.5105139999999997
	.quad	0x4022f1ccfaeff5c7              # double 9.4722670000000004
	.quad	0x401aa82278d0cc36              # double 6.6641940000000002
	.quad	0x4004bf8f4730403a              # double 2.5935350000000001
	.quad	0x40238dd26b723ee2              # double 9.7769960000000005
	.quad	0x400b95043e5321e6              # double 3.447762
	.quad	0x40197218def416be              # double 6.3614230000000003
	.quad	0x401845bea0ba1f4b              # double 6.0681099999999999
	.quad	0x40114bd05af6c69b              # double 4.3240369999999997
	.quad	0x4005b96e158750c2              # double 2.7155420000000001
	.quad	0x3feba3358f2e05cd              # double 0.86367300000000002
	.quad	0x40123034b0e1b4bb              # double 4.5470759999999997
	.quad	0x40166c148344c37e              # double 5.6055469999999996
	.quad	0x401a1b0c4588a04d              # double 6.5264139999999999
	.quad	0x4015a6b8f9b13166              # double 5.4128150000000002
	.quad	0x401f94ef88b97785              # double 7.8954449999999996
	.quad	0x4015a3879c4113c7              # double 5.4096970000000004
	.quad	0x4023ba65add9c27f              # double 9.8640570000000007
	.quad	0x4020b45953586ca9              # double 8.3522440000000007
	.quad	0x401ce278d0cc35ce              # double 7.2211639999999999
	.quad	0x40080f81626b2f23              # double 3.007571
	.quad	0x3fd77be553ac4f7f              # double 0.36693700000000001
	.quad	0x4013c1832fcac8e7              # double 4.9389770000000004
	.quad	0x401a7d1a65061416              # double 6.6221709999999998
	.quad	0x401106b8305d95dd              # double 4.2565619999999997
	.quad	0x401282ef0ae53650              # double 4.6278649999999999
	.quad	0x400497e56473471f              # double 2.5741679999999998
	.quad	0x3ff1e88377186552              # double 1.1192660000000001
	.quad	0x4015c22ab25b317f              # double 5.439616
	.quad	0x40187ab25b317efe              # double 6.119821
	.quad	0x3ffc5c7368ad6883              # double 1.7725709999999999
	.quad	0x3fee48b86b15f890              # double 0.94637700000000002
	.quad	0x40148e95faa8a82a              # double 5.1392439999999997
	.quad	0x3fc19d99029ae4f3              # double 0.13762199999999999
	.quad	0x401f4db09a671ef3              # double 7.8258689999999999
	.quad	0x400b4ee392e1ef74              # double 3.4135200000000001
	.quad	0x3ff110ba6266fd65              # double 1.066584
	.quad	0x401f4a30984e3fff              # double 7.822451
	.quad	0x40204951a437824d              # double 8.1432009999999995
	.quad	0x4019859c065b63d4              # double 6.3804780000000001
	.quad	0x3ff4bafc8b0079a3              # double 1.2956510000000001
	.quad	0x4023488b9778572a              # double 9.6416900000000005
	.quad	0x400625247cb70ac4              # double 2.7681360000000002
	.quad	0x4014307e5a78f25a              # double 5.0473569999999999
	.quad	0x4005d51c5c5718ec              # double 2.7290580000000002
	.quad	0x401ccf19d66adb40              # double 7.2022469999999998
	.quad	0x400739fa97e132b5              # double 2.9033099999999998
	.quad	0x3ffb92220bc382a1              # double 1.723177
	.quad	0x40236b645a1cac08              # double 9.7097499999999996
	.quad	0x3ff3bbb62413db7f              # double 1.233328
	.quad	0x40200e2f166e008f              # double 8.0277030000000007
	.quad	0x40205626b2f23034              # double 8.1682640000000006
	.quad	0x3fd97ec7863beec4              # double 0.39836300000000002
	.quad	0x3fecfc5cdd50a88f              # double 0.905806
	.quad	0x401e5c7b02d59d56              # double 7.5903130000000001
	.quad	0x40159df04ddb5526              # double 5.4042370000000002
	.quad	0x402025fb71fbc5df              # double 8.0741840000000007
	.quad	0x401d3ea35935fc3b              # double 7.3111699999999997
	.quad	0x40137f16b11c6d1e              # double 4.8741099999999999
	.quad	0x40228f43a647fdc6              # double 9.2798130000000008
	.quad	0x40215600b0292817              # double 8.6679739999999992
	.quad	0x400f293d102bc72e              # double 3.8951359999999999
	.quad	0x4003b564302b40f6              # double 2.4635699999999998
	.quad	0x401aa5a964e8b7e5              # double 6.6617790000000001
	.quad	0x3ff8ced6fda836eb              # double 1.5504979999999999
	.quad	0x40108498c3b0c459              # double 4.1294890000000004
	.quad	0x40236dc2b0ea1837              # double 9.7143759999999996
	.quad	0x4023e7444e0daa0d              # double 9.9516930000000005
	.quad	0x40038a67e846a5d7              # double 2.4425810000000001
	.quad	0x401397008a697aee              # double 4.8974630000000001
	.quad	0x40143de1198aeb81              # double 5.0604290000000001
	.quad	0x40020df0d413122b              # double 2.2568069999999998
	.quad	0x4015fe6ddf00abf7              # double 5.4984659999999996
	.quad	0x4004f3b213e3e293              # double 2.618992
	.quad	0x3fef63bcd35a8588              # double 0.98092500000000004
	.quad	0x40040ec311622813              # double 2.5072079999999999
	.quad	0x4012a931876188b1              # double 4.6652279999999999
	.quad	0x3fe7244e93e1c9b4              # double 0.72318199999999999
	.quad	0x401e0c426351def0              # double 7.5119720000000001
	.quad	0x40236ab27cbf6e3f              # double 9.7083929999999991
	.quad	0x401bacc1871e6cd3              # double 6.9187070000000004
	.quad	0x3fd3503fb3743633              # double 0.30177300000000001
	.quad	0x40231bd9018e7579              # double 9.5543899999999997
	.quad	0x401ab5dfeb8d8234              # double 6.6776119999999999
	.quad	0x40059c36976bc1f0              # double 2.701276
	.quad	0x401958e820e62995              # double 6.3368229999999999
	.quad	0x3fbef0f16f4384ba              # double 0.120864
	.quad	0x401525da272862f6              # double 5.2869650000000004
	.quad	0x40229b8a5ce5b424              # double 9.3037899999999993
	.quad	0x401a7ef6b5d462c3              # double 6.6239879999999998
	.quad	0x4018888b9778572a              # double 6.1333450000000003
	.quad	0x3ff2d02ff8ec0f88              # double 1.175827
	.quad	0x3fed712c27a63737              # double 0.92006500000000002
	.quad	0x401a2ad3a604e1e7              # double 6.5418229999999999
	.quad	0x40181324c8366517              # double 6.0186950000000001
	.quad	0x4022fa2749f0e4da              # double 9.4885809999999999
	.quad	0x40205c9949e8815e              # double 8.1808569999999996
	.quad	0x402063bff8a8f3aa              # double 8.1948240000000006
	.quad	0x40082e8af81626b3              # double 3.022726
	.quad	0x4014ce85b9e8c47a              # double 5.2016819999999999
	.quad	0x4019013cab81f96a              # double 6.2512080000000001
	.quad	0x4018ac5260f5e41d              # double 6.1682829999999997
	.quad	0x40035e8576cce5f7              # double 2.4211529999999999
	.quad	0x3fec320535c9e668              # double 0.88110599999999994
	.quad	0x4016cc0f01fb82c3              # double 5.6992760000000002
	.quad	0x3fd7b517a46173b8              # double 0.37042799999999998
	.quad	0x4016eab14ec204f3              # double 5.7291920000000003
	.quad	0x4010e6573215fcc2              # double 4.2249420000000004
	.quad	0x40211e00f345069a              # double 8.5586009999999995
	.quad	0x400b276f2a5a469d              # double 3.3942549999999998
	.quad	0x401d850efdc9c4db              # double 7.3799400000000004
	.quad	0x3ff39ab29e4d5d81              # double 1.225268
	.quad	0x4011597d8cf398e9              # double 4.3373929999999996
	.quad	0x4022f85ad538ac19              # double 9.485068
	.quad	0x400f09e1b089a027              # double 3.8798249999999999
	.quad	0x3ff80b90214ad363              # double 1.502823
	.quad	0x400ab625a682b628              # double 3.3389389999999999
	.quad	0x4013ea0b1bbcf4e8              # double 4.9785579999999996
	.quad	0x401a9564f97edc7f              # double 6.6458930000000001
	.quad	0x401965c896dd26b7              # double 6.3493979999999999
	.quad	0x4022384988094e5d              # double 9.1099359999999994
	.quad	0x401cf6de76427c7c              # double 7.2410829999999997
	.quad	0x4023ac9320d9945b              # double 9.8370599999999992
	.quad	0x40144154866a11ed              # double 5.0637990000000004
	.quad	0x3ff5ee6ea8544780              # double 1.370711
	.quad	0x402304486ad2dcb1              # double 9.5083649999999995
	.quad	0x40208a25d8d79d0a              # double 8.2698199999999993
	.quad	0x401a35bd512ec6bd              # double 6.5524800000000001
	.quad	0x3fb4eaaf35e310dc              # double 0.081706000000000001
	.quad	0x4004559578a2a90d              # double 2.5417890000000001
	.quad	0x4014adf69878316a              # double 5.169886
	.quad	0x4001e13cab81f96a              # double 2.234979
	.quad	0x400f32bdc26dce3a              # double 3.8997760000000001
	.quad	0x4016762c77574f72              # double 5.6154039999999998
	.quad	0x401e01a93293d103              # double 7.5016220000000002
	.quad	0x402290d130df9bdc              # double 9.2828459999999992
	.quad	0x3ff19e529bae46d0              # double 1.101153
	.quad	0x401d2b5aa715831f              # double 7.292338
	.quad	0x4023c20cf1800a7c              # double 9.8790049999999993
	.quad	0x400d13269df97aab              # double 3.6343510000000001
	.quad	0x401c429c347e8cce              # double 7.0650490000000001
	.quad	0x4017ed15f02c4d66              # double 5.9815290000000001
	.quad	0x4010221ab4b72c52              # double 4.0333050000000004
	.quad	0x401cdc2d2780778a              # double 7.2150160000000003
	.quad	0x40184a836eb4e981              # double 6.0727669999999998
	.quad	0x402217ceb78897ea              # double 9.0464990000000007
	.quad	0x4012e664d3bf2f55              # double 4.7249939999999997
	.quad	0x40160449dbec2481              # double 5.5041880000000001
	.quad	0x401ff89d6adf71eb              # double 7.992788
	.quad	0x3fd44cd31769a911              # double 0.317189
	.quad	0x401183cd573647bb              # double 4.3787130000000003
	.quad	0x400d3b7a5f41aef7              # double 3.654042
	.quad	0x401953f5b5fa2270              # double 6.3319919999999996
	.quad	0x3feea743a647fdc6              # double 0.95791800000000005
	.quad	0x401bf800a7c5ac47              # double 6.9921899999999999
	.quad	0x400b4f71a7e30878              # double 3.4137909999999998
	.quad	0x4022e62cba732df5              # double 9.4495599999999999
	.quad	0x4020387a6bd6e8b0              # double 8.1103090000000009
	.quad	0x402334a2339c0ebf              # double 9.6028000000000002
	.quad	0x40111ea18372e6a7              # double 4.2799129999999996
	.quad	0x40189a70d1fa3337              # double 6.1508209999999996
	.quad	0x3ff992e2fbe33acd              # double 1.5983609999999999
	.quad	0x4015ffd9fd36f7e4              # double 5.4998550000000002
	.quad	0x4006dc72e275ab7e              # double 2.8576410000000001
	.quad	0x401bd15f02c4d65e              # double 6.9544639999999998
	.quad	0x40176b6e935b91f7              # double 5.854914
	.quad	0x4011191a32b12d34              # double 4.2745139999999999
	.quad	0x40004d1e96c3fc44              # double 2.0376560000000001
	.quad	0x40224574f722e1ac              # double 9.1356579999999993
	.quad	0x40000e2f37fbefd0              # double 2.006926
	.quad	0x400b655f3519bd40              # double 3.4244979999999998
	.quad	0x400507cc7d1bb491              # double 2.6288079999999998
	.quad	0x4017a4b33daf8df8              # double 5.9108400000000003
	.quad	0x3ff0a42d05f28848              # double 1.040082
	.quad	0x3fff9ff3f0fe047d              # double 1.9765509999999999
	.quad	0x402249fb1e18efbb              # double 9.1444939999999999
	.quad	0x4016a774eebf65dc              # double 5.663532
	.quad	0x40157d9274e22a2c              # double 5.3726289999999999
	.quad	0x402143f359ff4fd7              # double 8.6327160000000003
	.quad	0x3fe4ed99cbee807c              # double 0.65400400000000003
	.quad	0x40120feac42e989a              # double 4.5155440000000002
	.quad	0x401e06256366d7a5              # double 7.5060019999999996
	.quad	0x40206d0e991ff716              # double 8.2130019999999995
	.quad	0x402115ae1cde5d18              # double 8.5423439999999999
	.quad	0x3fdef687b139c94f              # double 0.48379699999999998
	.quad	0x4016c8a265f0f5a1              # double 5.695932
	.quad	0x4016e25fa658c4bd              # double 5.7210679999999998
	.quad	0x3ff28e60807357e6              # double 1.1597599999999999
	.quad	0x4023825bb7b6bb13              # double 9.7546060000000007
	.quad	0x40213f264a16a487              # double 8.6233389999999996
	.quad	0x400b4281ba7fc32f              # double 3.4074740000000001
	.quad	0x400b7c5f7c6759ab              # double 3.4357289999999998
	.quad	0x4015a1a79fec99f2              # double 5.4078660000000003
	.quad	0x401a184d338f7985              # double 6.5237319999999999
	.quad	0x401fdbfc2224edf6              # double 7.9648289999999999
	.quad	0x4023af062d40aaeb              # double 9.841844
	.quad	0x402111635610adcd              # double 8.5339609999999997
	.quad	0x4010776c050bd87b              # double 4.1166229999999997
	.quad	0x4008a7fdc5931ca8              # double 3.0820270000000001
	.quad	0x4012305d52c16df4              # double 4.547231
	.quad	0x40158dc486ad2dcb              # double 5.3884449999999999
	.quad	0x401faca9ac365450              # double 7.9186160000000001
	.quad	0x402344d4cb9ecf64              # double 9.6344360000000008
	.quad	0x3ff5bfc2224edf61              # double 1.359316
	.quad	0x401d7b65668c2614              # double 7.3705040000000004
	.quad	0x3fd1ba908a265f0f              # double 0.27701199999999998
	.quad	0x4014c35ac8a37260              # double 5.1907759999999996
	.quad	0x3ffc42d59d55e6bc              # double 1.7663169999999999
	.quad	0x40026f88333fc86d              # double 2.304459
	.quad	0x4010e1d084e831ad              # double 4.2205219999999999
	.quad	0x3fdb461b6d43d039              # double 0.42615399999999998
	.quad	0x400f8b324851a869              # double 3.9429669999999999
	.quad	0x400bb227d028a1e0              # double 3.4619900000000001
	.quad	0x401582584f4c6e6e              # double 5.3772900000000003
	.quad	0x401e6a6d26740810              # double 7.6039320000000004
	.quad	0x3fe3119ef954eb14              # double 0.59590100000000001
	.quad	0x401fd996744b2b77              # double 7.9624879999999995
	.quad	0x4020f28112ba16e8              # double 8.4736410000000006
	.quad	0x402371235f809918              # double 9.7209730000000007
	.quad	0x40235fb3311a543f              # double 9.6869139999999998
	.quad	0x401277d523b3636f              # double 4.6170239999999998
	.quad	0x4023cc896dd26b72              # double 9.8994859999999996
	.quad	0x402006d2ed783dff              # double 8.0133279999999996
	.quad	0x400efec80c73abc9              # double 3.8744049999999999
	.quad	0x400392e7b3d8e001              # double 2.4467310000000002
	.quad	0x40089ee1bd1ed9e0              # double 3.0775790000000001
	.quad	0x4015bf2990f301eb              # double 5.4366820000000002
	.quad	0x3ff9a7a52ac753e7              # double 1.603429
	.quad	0x4020fcc016052503              # double 8.4936530000000001
	.quad	0x401903fd933e35c6              # double 6.2538970000000003
	.quad	0x4023d9667b5f1bef              # double 9.9246099999999994
	.quad	0x40212882491afc05              # double 8.5791190000000004
	.quad	0x4011cec9e236c15d              # double 4.4519419999999998
	.quad	0x3ff366809d495183              # double 1.2125250000000001
	.quad	0x401363a53b8e4b88              # double 4.8473100000000002
	.quad	0x401e9fa00e27e0f0              # double 7.6558840000000004
	.quad	0x3ff36d4f5903a754              # double 1.2141869999999999
	.quad	0x40120f9f44d44567              # double 4.5152559999999999
	.quad	0x401530d6f544bb1b              # double 5.297695
	.quad	0x400fa941c8216c61              # double 3.9576449999999999
	.quad	0x3fcf873ffac1d29e              # double 0.24631500000000001
	.quad	0x401d55bd944aa540              # double 7.3337310000000002
	.quad	0x4021df3061c79b35              # double 8.9359160000000006
	.quad	0x401ff9057d1782d4              # double 7.9931850000000004
	.quad	0x40005f1b69121251              # double 2.0464389999999999
	.quad	0x401a1fc86cebbba5              # double 6.5310379999999997
	.quad	0x4021b119ac79702e              # double 8.8458989999999993
	.quad	0x40064c2e770bd018              # double 2.7871980000000001
	.quad	0x3fea9f666234a87e              # double 0.83195799999999998
	.quad	0x3ffe368ad6883772              # double 1.8883160000000001
	.quad	0x401237210be9424e              # double 4.5538369999999997
	.quad	0x3fe608765ba6efc3              # double 0.68853299999999995
	.quad	0x401f562e90364389              # double 7.834162
	.quad	0x401e5167ec7863bf              # double 7.579498
	.quad	0x402159d66adb402d              # double 8.6754639999999998
	.quad	0x40211c7b02d59d56              # double 8.5556260000000002
	.quad	0x4022d634117f8445              # double 9.4183660000000006
	.quad	0x4022be8a71de69ad              # double 9.3721499999999995
	.quad	0x40185bac710cb296              # double 6.0895250000000001
	.quad	0x401db5275ee99a63              # double 7.4269080000000001
	.quad	0x402259bf162ae4b0              # double 9.1752859999999998
	.quad	0x4016a03afb7e9100              # double 5.6564750000000004
	.quad	0x401770092ccf6be3              # double 5.8594099999999996
	.quad	0x4021fb0d51f81a58              # double 8.9903359999999992
	.quad	0x400b90ab2e1693c0              # double 3.4456389999999999
	.quad	0x40093122b7baecd0              # double 3.1489919999999998
	.quad	0x40042ce9a2c66905              # double 2.5219299999999998
	.quad	0x4021227e30878748              # double 8.5673689999999993
	.quad	0x40095083dbc23316              # double 3.1643140000000001
	.quad	0x3fd6c10d7be9856a              # double 0.35553299999999999
	.quad	0x400a415db3397dd0              # double 3.281917
	.quad	0x402075be7f2c300a              # double 8.2299690000000005
	.quad	0x3fcb4940bbb1f256              # double 0.213173
	.quad	0x4007e663c74fb54a              # double 2.987495
	.quad	0x40167e670e2c12ae              # double 5.6234400000000004
	.quad	0x4013134b51372a39              # double 4.7688420000000002
	.quad	0x4021070e0a84be40              # double 8.5137789999999995
	.quad	0x4018db7521144cbe              # double 6.2143139999999999
	.quad	0x40135432873bc904              # double 4.8322240000000001
	.quad	0x402317d73c925786              # double 9.546564
	.quad	0x4011b7f0aa21a71a              # double 4.4296290000000003
	.quad	0x400d92cf95d4e8fb              # double 3.696685
	.quad	0x3ffee46f15619115              # double 1.9307700000000001
	.quad	0x3fe82376922d948e              # double 0.75432900000000003
	.quad	0x3fcb05f28848387e              # double 0.211119
	.quad	0x4020acdfefbf401c              # double 8.3376459999999994
	.quad	0x400200ccff21b3af              # double 2.250391
	.quad	0x400077b634dad320              # double 2.0584530000000001
	.quad	0x3fee4679cc74b839              # double 0.94610300000000003
	.quad	0x4020fd275ee99a63              # double 8.4944410000000001
	.quad	0x3ff13d3b29a1b9fa              # double 1.0774490000000001
	.quad	0x4010dc4dec1c1d6d              # double 4.215141
	.quad	0x4018c61bb05faebc              # double 6.1934649999999998
	.quad	0x401753ccd0fe8ab5              # double 5.831836
	.quad	0x40170ad8a116659d              # double 5.7605919999999999
	.quad	0x40142e275ab7dc7b              # double 5.0450720000000002
	.quad	0x40025d755bccaf71              # double 2.2956340000000002
	.quad	0x4023eaf07bfe7e20              # double 9.9588660000000004
	.quad	0x4009761aa3f034b1              # double 3.1826680000000001
	.quad	0x40212a656abde3fc              # double 8.5828050000000004
	.quad	0x40185c3bd5992429              # double 6.0900720000000002
	.quad	0x3feefc5479d4d834              # double 0.96830199999999999
	.quad	0x400f7f5dfeb8d823              # double 3.9371909999999999
	.quad	0x4020598958d9b5e9              # double 8.1748759999999994
	.quad	0x40176f07bfe7e1fc              # double 5.858428
	.quad	0x4022a897635e742a              # double 9.3292800000000007
	.quad	0x4021736d00b45ae6              # double 8.725441
	.quad	0x401b0d44998d0460              # double 6.7629570000000001
	.quad	0x401058b08dd1e53b              # double 4.0866110000000004
	.quad	0x401d72aa19439de5              # double 7.3619770000000004
	.quad	0x400ccea5b530ced5              # double 3.600902
	.quad	0x400c2085b18548aa              # double 3.5158800000000001
	.quad	0x4009e66d373affb0              # double 3.2375129999999999
	.quad	0x400295054ac29bf1              # double 2.3227639999999998
	.quad	0x400e8f9fcb0c026d              # double 3.8201290000000001
	.quad	0x400a1854046412cf              # double 3.261879
	.quad	0x4022b53a3ec02f30              # double 9.3539600000000007
	.quad	0x40235b0f27bb2fec              # double 9.6778499999999993
	.quad	0x3fe8769ca9ef5233              # double 0.76447900000000002
	.quad	0x401678c7192ea52f              # double 5.617947
	.quad	0x40080ec311622813              # double 3.0072079999999999
	.quad	0x40231a5a682b6284              # double 9.5514709999999993
	.quad	0x401f3ddf86e3b470              # double 7.8104230000000001
	.quad	0x400ac62456f75d9a              # double 3.346749
	.quad	0x4014c368f08461fa              # double 5.1908300000000001
	.quad	0x400d2c3a860dcb9b              # double 3.6465960000000002
	.quad	0x401b6e96c3fc43b3              # double 6.8579970000000001
	.quad	0x401bafd00713f078              # double 6.9216920000000002
	.quad	0x4018da964e8b7e4e              # double 6.2134640000000001
	.quad	0x4020739389b52008              # double 8.2257350000000002
	.quad	0x400063358f2e05cd              # double 2.0484420000000001
	.quad	0x401c314f8b588e37              # double 7.0481550000000004
	.quad	0x4017122856605ee5              # double 5.7677319999999996
	.quad	0x3ff35aee631f8a09              # double 1.2097
	.quad	0x40158dd5d3dc8b87              # double 5.3885110000000003
	.quad	0x4020ec714fce746d              # double 8.4618020000000005
	.quad	0x3fe7af33ca31e7da              # double 0.74013700000000004
	.quad	0x401dffb5d031055c              # double 7.4997170000000004
	.quad	0x400d76659d12cade              # double 3.6828110000000001
	.quad	0x4018a961804d9839              # double 6.1654109999999998
	.quad	0x4010546e4c0df58c              # double 4.082452
	.quad	0x40086f102363b257              # double 3.05423
	.quad	0x3fee82adc4c9c90c              # double 0.95345199999999996
	.quad	0x401753db7f173754              # double 5.8318919999999999
	.quad	0x402054a7d6733ebc              # double 8.165343
	.quad	0x3fff3b43d89ce4a8              # double 1.9519690000000001
	.quad	0x400ea743a647fdc6              # double 3.8316720000000002
	.quad	0x4008a787ce95faa9              # double 3.0818020000000002
	.quad	0x3ff59c24c404a72f              # double 1.3506210000000001
	.quad	0x40225bae89eba6ad              # double 9.1790660000000006
	.quad	0x4017976b7ed41b76              # double 5.8978710000000003
	.quad	0x40128d438d1d8a55              # double 4.6379530000000004
	.quad	0x3fe56202539756c9              # double 0.66821399999999997
	.quad	0x3fb6b0856e696a27              # double 0.088631000000000001
	.quad	0x4005f878b7a1c25d              # double 2.746324
	.quad	0x400b6f7878b7a1c2              # double 3.4294289999999998
	.quad	0x3ff46733ebbfd71b              # double 1.275196
	.quad	0x401c21871e6cd291              # double 7.0327419999999998
	.quad	0x3fe6117b5286b591              # double 0.68963399999999997
	.quad	0x401bec9a77e5eaab              # double 6.981058
	.quad	0x401758afc47e49b2              # double 5.836608
	.quad	0x40214c801f75104d              # double 8.6494149999999994
	.quad	0x401b99f1ae2da555              # double 6.9003360000000002
	.quad	0x4022d050374ff866              # double 9.4068620000000003
	.quad	0x4018ed7e889c1b54              # double 6.2319279999999999
	.quad	0x40227c886162f167              # double 9.2432280000000002
	.quad	0x3fe0b38d60a63305              # double 0.52191799999999999
	.quad	0x40105917939a7c18              # double 4.0870040000000003
	.quad	0x400bd6191148fda0              # double 3.4795400000000001
	.quad	0x401c435371971c11              # double 7.0657480000000001
	.quad	0x3ff4cde093532e7b              # double 1.3002629999999999
	.quad	0x400a730270f38822              # double 3.3061569999999998
	.quad	0x3fc99fcb0c026cc2              # double 0.20018900000000001
	.quad	0x4016983b60285ec4              # double 5.6486640000000001
	.quad	0x4021e18c197e5647              # double 8.9405219999999996
	.quad	0x4015c50225742dcf              # double 5.4423909999999998
	.quad	0x4020cfce746cb967              # double 8.4058720000000005
	.quad	0x400ddf97aaac1095              # double 3.7341760000000002
	.quad	0x40239eb37867f0aa              # double 9.8099629999999998
	.quad	0x401ddaf2d7f950b9              # double 7.4638169999999997
	.quad	0x3ff2ba908a265f0f              # double 1.1705479999999999
	.quad	0x3ffc922d948dc11e              # double 1.7856879999999999
	.quad	0x3ffbeeeb702602c9              # double 1.74583
	.quad	0x3fd265add9c27e95              # double 0.28745599999999999
	.quad	0x4010ea68b19a415f              # double 4.2289149999999998
	.quad	0x3ffa69c886162f16              # double 1.6508259999999999
	.quad	0x400d05a469d7342f              # double 3.6277550000000001
	.quad	0x3fdeb524399b2c41              # double 0.47980600000000001
	.quad	0x4001776c4827b6fe              # double 2.1833119999999999
	.quad	0x3ff590a569b17482              # double 1.3478140000000001
	.quad	0x3fdc63ae2541d8e8              # double 0.44358399999999998
	.quad	0x3fff16e9bbf0dc77              # double 1.9430940000000001
	.quad	0x3fe115464dc22ab2              # double 0.53384699999999996
	.quad	0x40095b8f57f737da              # double 3.1697069999999998
	.quad	0x40206925bb7b6bb1              # double 8.2053659999999997
	.quad	0x40071e9a6f826edb              # double 2.8899430000000002
	.quad	0x4022e00ffda4052d              # double 9.4376219999999992
	.quad	0x4008e814d72799a2              # double 3.113321
	.quad	0x4004ffc5479d4d83              # double 2.6248879999999999
	.quad	0x401d038ef34d6a16              # double 7.2534749999999999
	.quad	0x4020e6432441fea8              # double 8.4497309999999999
	.quad	0x40141f416bdb1a6d              # double 5.0305229999999996
	.quad	0x3ff4302d59d55e6c              # double 1.2617620000000001
	.quad	0x4014b2f512663411              # double 5.1747629999999996
	.quad	0x40144366516db0de              # double 5.0658200000000004
	.quad	0x3ff2be553ac4f7ec              # double 1.171468
	.quad	0x4010f1bcdbbe0158              # double 4.2360720000000001
	.quad	0x4023e93faf42784b              # double 9.9555640000000007
	.quad	0x40226944aa53fc01              # double 9.2056020000000007
	.quad	0x400ae568a50507a7              # double 3.3620160000000001
	.quad	0x400a462888b545c8              # double 3.2842570000000002
	.quad	0x401fb634dad31fcd              # double 7.9279359999999998
	.quad	0x4020fa9bae46cfc8              # double 8.4894689999999997
	.quad	0x4019aeb0b7c3504c              # double 6.4205959999999997
	.quad	0x400f206fac6045bb              # double 3.890838
	.quad	0x401cb980b242070c              # double 7.1811550000000004
	.quad	0x3ff0184a0e410b63              # double 1.00593
	.quad	0x400fe4fe36d22425              # double 3.9868130000000002
	.quad	0x4022973b213e3e29              # double 9.2953729999999997
	.quad	0x40158112ba16e7a3              # double 5.3760479999999999
	.quad	0x3ff0c7c5260f5e42              # double 1.048772
	.quad	0x3fea535a858793de              # double 0.82267500000000005
	.quad	0x401afd5fdcdf6988              # double 6.7474360000000004
	.quad	0x400f8e9680e06530              # double 3.944623
	.quad	0x3fc59991361dc93f              # double 0.16874900000000001
	.quad	0x401052e557de0d67              # double 4.0809530000000001
	.quad	0x4014fea3df6db941              # double 5.248672
	.quad	0x4013ed972cd7cf5f              # double 4.9820219999999997
	.quad	0x4021801754b05b7d              # double 8.750178
	.quad	0x40064e46cfc829d0              # double 2.7882210000000001
	.quad	0x4023c79ebe9c8861              # double 9.8898829999999993
	.quad	0x401a8f3eccc46951              # double 6.639888
	.quad	0x40138eb95e5aff2a              # double 4.8893789999999999
	.quad	0x4021d52b0a6fc58b              # double 8.9163440000000005
	.quad	0x401c8b107746887b              # double 7.1358050000000004
	.quad	0x3ff617de0d66f0d0              # double 1.380827
	.quad	0x401c2189374bc6a8              # double 7.0327500000000001
	.quad	0x4021a71a7e308787              # double 8.8263739999999995
	.quad	0x400e5e6ab9b23dd5              # double 3.7961019999999999
	.quad	0x3ffd8dfefbf401c5              # double 1.847167
	.quad	0x4013bd5fdcdf6988              # double 4.9349360000000004
	.quad	0x4022e322d0e56042              # double 9.4436250000000008
	.quad	0x40232609784ec637              # double 9.5742910000000005
	.quad	0x4013fe846a5d6bec              # double 4.9985520000000001
	.quad	0x400068dc981beb18              # double 2.051202
	.quad	0x401b1299524bfd2f              # double 6.7681630000000004
	.quad	0x3ffb1323fee2c98e              # double 1.6921729999999999
	.quad	0x400beb96f21f6cad              # double 3.4900340000000001
	.quad	0x40234816052502ef              # double 9.6407930000000003
	.quad	0x3fd0b9e8c47a17f4              # double 0.261347
	.quad	0x4023bc176577531e              # double 9.8673660000000005
	.quad	0x40216e17c1bda512              # double 8.7150250000000007
	.quad	0x40152dcd7060bb2c              # double 5.2947290000000002
	.quad	0x401a12da122fad6d              # double 6.5184100000000003
	.quad	0x40002e5f7403dddb              # double 2.022643
	.quad	0x4017932f01754b06              # double 5.8937340000000003
	.quad	0x3fe632f449129889              # double 0.69372
	.quad	0x401f1fb65668c261              # double 7.7809689999999998
	.quad	0x3fccf9ca5bd944aa              # double 0.22637299999999999
	.quad	0x4020ae225fa658c5              # double 8.3401060000000005
	.quad	0x4023982d38476f2a              # double 9.7972199999999994
	.quad	0x3fca9a8049667b5f              # double 0.20784
	.quad	0x401bef00ef1348b2              # double 6.9834019999999999
	.quad	0x401fe06c00da1a93              # double 7.9691619999999998
	.quad	0x4023dfc371da37ef              # double 9.9370379999999993
	.quad	0x3ff323b8a19c9d5a              # double 1.196221
	.quad	0x4016410ecb74ddf8              # double 5.5635329999999996
	.quad	0x400ec6e2a80064aa              # double 3.8471120000000001
	.quad	0x401d58ecd8dbcec8              # double 7.3368409999999997
	.quad	0x4020b2db8348f53c              # double 8.3493309999999993
	.quad	0x400874ec204f2ae0              # double 3.0570909999999998
	.quad	0x4015bc664d3bf2f5              # double 5.4339839999999997
	.quad	0x402015099e0e7360              # double 8.0410889999999995
	.quad	0x3feb6050374ff866              # double 0.85550700000000002
	.quad	0x40184706d5065732              # double 6.0693619999999999
	.quad	0x4013e253da72a7bd              # double 4.9710229999999997
	.quad	0x40239fb71fbc5dea              # double 9.8119440000000004
	.quad	0x40201f40e5a35d68              # double 8.0610420000000005
	.quad	0x4018013fd0d0678c              # double 6.00122
	.quad	0x400c66d2674080fa              # double 3.5502060000000002
	.quad	0x40199c62a1b5c7ce              # double 6.4027200000000004
	.quad	0x401fde1b8ed1bf7b              # double 7.9669020000000001
	.quad	0x40185e07e5a78f26              # double 6.0918270000000003
	.quad	0x401c3359ff4fd6d8              # double 7.0501480000000001
	.quad	0x40165f3bea91d9b2              # double 5.5930020000000003
	.quad	0x3ff4072d1aeb3dd1              # double 1.251752
	.quad	0x4010284ec636b096              # double 4.0393629999999998
	.quad	0x401893cb81733227              # double 6.1443310000000002
	.quad	0x4002cc5c13fd0d06              # double 2.3497849999999998
	.quad	0x4018f493c89f40a3              # double 6.2388450000000004
	.quad	0x3fe4378897e99631              # double 0.63177899999999998
	.quad	0x4020f84a72ead927              # double 8.4849429999999995
	.quad	0x40143abb01c92ddc              # double 5.0573540000000001
	.quad	0x3fdd36c58eeae9ee              # double 0.45646799999999998
	.quad	0x401668cb8e086bdf              # double 5.6023389999999997
	.quad	0x400bfa52ac753e70              # double 3.4972279999999998
	.quad	0x4020d9700cd85597              # double 8.4246829999999999
	.quad	0x3ff6cc64fdb09a67              # double 1.424901
	.quad	0x402356c7eae5bc88              # double 9.6694940000000002
	.quad	0x4022e432ca57a787              # double 9.4457000000000004
	.quad	0x40231e583e8576cd              # double 9.5592670000000001
	.quad	0x40161fadf2ecf206              # double 5.5309369999999998
	.quad	0x40208900e6afcce2              # double 8.2675850000000004
	.quad	0x401678a3b57c4e2f              # double 5.6178119999999998
	.quad	0x401cdcf1800a7c5b              # double 7.2157650000000002
	.quad	0x3fc372abef06b378              # double 0.15193699999999999
	.quad	0x402300982cb20fb2              # double 9.5011609999999997
	.quad	0x3fd3d0b73d188f43              # double 0.309614
	.quad	0x4014e7cb2d905c03              # double 5.2263609999999998
	.quad	0x40092f82f5126634              # double 3.148199
	.quad	0x3ff2146a1a500d5f              # double 1.1299840000000001
	.quad	0x4023798dac258d58              # double 9.7374089999999995
	.quad	0x4001c14940bbb1f2              # double 2.2193779999999999
	.quad	0x3fec3d9ec7000432              # double 0.88252200000000003
	.quad	0x40228e70196d8f50              # double 9.2781990000000008
	.quad	0x4008810f94c87981              # double 3.063018
	.quad	0x3fdbb09a671ef30a              # double 0.43265399999999998
	.quad	0x4022a12bc2fc6973              # double 9.3147870000000008
	.quad	0x4005227a63736cdf              # double 2.6418349999999999
	.quad	0x401af3a71151611c              # double 6.7379420000000003
	.quad	0x401726638433d6c7              # double 5.7874889999999999
	.quad	0x401daf7e80389f84              # double 7.4213810000000002
	.quad	0x40217a23bff8a8f4              # double 8.7385540000000005
	.quad	0x402120724b76f6d7              # double 8.5633719999999993
	.quad	0x4015026b2f23033a              # double 5.2523619999999998
	.quad	0x3fffc0379314445b              # double 1.9844280000000001
	.quad	0x3fce3e963dc486ad              # double 0.236285
	.quad	0x40018c857f3061c8              # double 2.1936140000000002
	.quad	0x3fe6f15e7c8d1959              # double 0.71696400000000005
	.quad	0x3fe253868fd199bb              # double 0.57269599999999998
	.quad	0x400ee6c764adff82              # double 3.8626849999999999
	.quad	0x4014a6427c7c5261              # double 5.162363
	.quad	0x4006d9988d2a1f8e              # double 2.8562479999999999
	.quad	0x3ff5e5d8d79d0a67              # double 1.3686149999999999
	.quad	0x3ffbab851eb851ec              # double 1.7293750000000001
	.quad	0x4014b999dcb5781c              # double 5.1812509999999996
	.quad	0x4022f7d1782d3847              # double 9.4840199999999992
	.quad	0x3fe822834d26fa40              # double 0.75421300000000002
	.quad	0x401829bbadc0980b              # double 6.0407549999999999
	.quad	0x4018e468cac4b4d0              # double 6.2230559999999997
	.quad	0x400494091c087443              # double 2.5722830000000001
	.quad	0x4010522fad6cb535              # double 4.08026
	.quad	0x400645093964a59c              # double 2.783709
	.quad	0x4015158969a0ad8a              # double 5.2710319999999999
	.quad	0x401c11f9acffa7eb              # double 7.0175539999999996
	.quad	0x3ffce9ff0cbaf966              # double 1.8071280000000001
	.quad	0x4022c21b9f98b71c              # double 9.3791170000000008
	.quad	0x401c39c779a6b50b              # double 7.0564249999999999
	.quad	0x4011bbd33d29563b              # double 4.4334230000000003
	.quad	0x402309c7368ad688              # double 9.5190979999999996
	.quad	0x40218bc4d22c881e              # double 8.7729859999999995
	.quad	0x40188e75ff609dd0              # double 6.1391220000000004
	.quad	0x40211dffa3b9ae0c              # double 8.5585909999999998
	.quad	0x3fefd154866a11ed              # double 0.99430300000000004
	.quad	0x3fefdd22856605ee              # double 0.99574399999999996
	.quad	0x401bc708aac96cc6              # double 6.944369
	.quad	0x3ffefcd78c436fc1              # double 1.9367289999999999
	.quad	0x4023aa15fcc1871e              # double 9.8321989999999992
	.quad	0x40199a0232096788              # double 6.4003990000000002
	.quad	0x4018822ff08893b8              # double 6.1271360000000001
	.quad	0x402246106ab14ec2              # double 9.136844
	.quad	0x40222cbdba0a5269              # double 9.0873849999999994
	.quad	0x401848d759ee88df              # double 6.0711339999999998
	.quad	0x3ff8bb84db9c7369              # double 1.5457810000000001
	.quad	0x401a861bb05faebc              # double 6.6309649999999998
	.quad	0x401be85fd04a2fcf              # double 6.976928
	.quad	0x4012ec2b51bd61f6              # double 4.7306340000000002
	.quad	0x3ffde60807357e67              # double 1.86866
	.quad	0x401d897a67a52ac7              # double 7.3842559999999997
	.quad	0x40190d42c3c9eecc              # double 6.26295
	.quad	0x3fece47778dd6170              # double 0.90288900000000005
	.quad	0x401e263c31df761d              # double 7.5373390000000002
	.quad	0x4023146b8b69552e              # double 9.5398829999999997
	.quad	0x402030a86d71f362              # double 8.0950349999999993
	.quad	0x401bf8d823422468              # double 6.9930120000000002
	.quad	0x4022ea17d2849cb2              # double 9.4572129999999994
	.quad	0x40198c7f77af6406              # double 6.3872049999999998
	.quad	0x401ac5564b662fe0              # double 6.6927120000000002
	.quad	0x401c5d5e8d5410f9              # double 7.0911809999999997
	.quad	0x4019f2f8bdec5f39              # double 6.4872769999999997
	.quad	0x4011d56c93a71151              # double 4.4584219999999997
	.quad	0x4018afd2a62aa194              # double 6.1717019999999998
	.quad	0x400d68d5410f94c8              # double 3.6761879999999998
	.quad	0x4004ed7c6fbd273d              # double 2.6159599999999998
	.quad	0x3ff300fba8826aa9              # double 1.18774
	.quad	0x3fe7d4a3c64345d0              # double 0.74470700000000001
	.quad	0x40048f8594291750              # double 2.5700789999999998
	.quad	0x3ffca4c2f837b4a2              # double 1.790225
	.quad	0x400da05c4651f3e9              # double 3.7033010000000002
	.quad	0x4015faa21a719b4e              # double 5.4947590000000002
	.quad	0x401d012c27a63737              # double 7.2511450000000002
	.quad	0x401b69741d084e83              # double 6.8529819999999999
	.quad	0x401fc945308bb906              # double 7.9465529999999998
	.quad	0x4019f8cb4aec8d5c              # double 6.4929629999999996
	.quad	0x3fc4bda9435ac8a3              # double 0.16203799999999999
	.quad	0x400d1eebb341e14c              # double 3.6400980000000001
	.quad	0x3ff3b77079e59f2c              # double 1.2322850000000001
	.quad	0x401370efdc9c4da9              # double 4.86029
	.quad	0x3ffb7239a38fbca1              # double 1.715387
	.quad	0x3ff8cfe586013661              # double 1.550756
	.quad	0x3ff22087ca643cc0              # double 1.1329419999999999
	.quad	0x401df77ab324851b              # double 7.4916790000000004
	.quad	0x40086cb10342aa9f              # double 3.0530719999999998
	.quad	0x402362122fad6cb5              # double 9.6915449999999996
	.quad	0x401699246bf01323              # double 5.649553
	.quad	0x402117b2edfe75bc              # double 8.5462869999999995
	.quad	0x4021c337c99ae925              # double 8.8812850000000001
	.quad	0x3fe9b2db1e9f2778              # double 0.80308299999999999
	.quad	0x3ff117d8cf398e97              # double 1.068322
	.quad	0x402289bb05faebc4              # double 9.2690049999999999
	.quad	0x400e4deebb341e15              # double 3.7880530000000001
	.quad	0x40075f212d773190              # double 2.9214500000000001
	.quad	0x4022894940bbb1f2              # double 9.2681369999999994
	.quad	0x4017a0d3cff64cf9              # double 5.9070580000000001
	.quad	0x4000508aac96cc60              # double 2.0393270000000001
	.quad	0x40215294573a7979              # double 8.6612880000000008
	.quad	0x4015eed20296b335              # double 5.4832229999999997
	.quad	0x401c273bc903ea70              # double 7.0383139999999997
	.quad	0x402208f0c77dd873              # double 9.0174620000000001
	.quad	0x400fd27243137b07              # double 3.977757
	.quad	0x400ab4b167ec7864              # double 3.3382290000000001
	.quad	0x401364c51116a8b9              # double 4.8484080000000001
	.quad	0x4004fd71b0468449              # double 2.6237520000000001
	.quad	0x3ff74e032db1e9f2              # double 1.4565459999999999
	.quad	0x4004437e6f71a7e3              # double 2.532956
	.quad	0x401901c92ddbdb5e              # double 6.2517440000000004
	.quad	0x40227aef911cf356              # double 9.2401090000000003
	.quad	0x3fe065ffa3b9ae0c              # double 0.51245099999999999
	.quad	0x4018cdc7abfb9bed              # double 6.2009569999999998
	.quad	0x40121712e40852b5              # double 4.5225330000000001
	.quad	0x4020866d58c8eef2              # double 8.2625530000000005
	.quad	0x4015d59c065b63d4              # double 5.4586030000000001
	.quad	0x3ffcc95d0b73d189              # double 1.799161
	.quad	0x400fe0ebedfa43fe              # double 3.9848249999999998
	.quad	0x401b01cc96462802              # double 6.7517569999999996
	.quad	0x40176d1d041cc533              # double 5.8565560000000003
	.quad	0x4001452bd3c36113              # double 2.1587749999999999
	.quad	0x4021c0242d05f288              # double 8.8752759999999995
	.quad	0x4021bd6861e92924              # double 8.8699370000000001
	.quad	0x401e366234a87e39              # double 7.553109
	.quad	0x4014f6fda836eb4f              # double 5.2412020000000004
	.quad	0x4015b51611ba3ca7              # double 5.4268419999999997
	.quad	0x401f37b677f6b1a3              # double 7.8044070000000003
	.quad	0x4010c3201040bfe4              # double 4.1905520000000003
	.quad	0x40131b524399b2c4              # double 4.776681
	.quad	0x4022ae748e475600              # double 9.3407330000000001
	.quad	0x401b7263d816aceb              # double 6.8617090000000003
	.quad	0x40209ea960b6f9fd              # double 8.3098860000000005
	.quad	0x40147f06b37867f1              # double 5.1240490000000003
	.quad	0x40163bb59ddc1e79              # double 5.5583099999999996
	.quad	0x400e90acc0bdcad1              # double 3.8206419999999999
	.quad	0x401cf6f4384ba0e8              # double 7.2411659999999998
	.quad	0x3feff296f6512a95              # double 0.998363
	.quad	0x401751aef6f8f041              # double 5.8297689999999998
	.quad	0x400844cad57bc7f7              # double 3.0335899999999998
	.quad	0x4007cfb224aada34              # double 2.9764140000000001
	.quad	0x40076b5cbff47736              # double 2.9274230000000001
	.quad	0x4018a4dc65c70436              # double 6.1609970000000001
	.quad	0x40210f7ad4b2745c              # double 8.530234
	.quad	0x3ff422d1f1cfbb95              # double 1.2585010000000001
	.quad	0x4012b3d0bfa09460              # double 4.6756010000000003
	.quad	0x4022ff06d5065732              # double 9.4980989999999998
	.quad	0x4015729e4d5d80e5              # double 5.3619320000000004
	.quad	0x3fe3d31769a91106              # double 0.61951800000000001
	.quad	0x3fd909f623076c05              # double 0.391233
	.quad	0x3ffcb986338b47c7              # double 1.7952939999999999
	.quad	0x401e403eea209aaa              # double 7.5627399999999998
	.quad	0x40222145f9df548f              # double 9.0649870000000004
	.quad	0x400acdf69878316a              # double 3.350568
	.quad	0x3fc8756861e92924              # double 0.191083
	.quad	0x402092a5614df8b1              # double 8.2864179999999994
	.quad	0x400e1b24638c9753              # double 3.7632530000000002
	.quad	0x3ff0510b1feeb2d1              # double 1.0197860000000001
	.quad	0x401d9ebbba55d1c4              # double 7.4050130000000003
	.quad	0x40206453b0813cac              # double 8.1959510000000008
	.quad	0x401c3bb0e5e67946              # double 7.0582919999999998
	.quad	0x402320f345069a4e              # double 9.5643560000000001
	.quad	0x3ff9c4406c00da1b              # double 1.6104130000000001
	.quad	0x4018e49731098d47              # double 6.2232329999999996
	.quad	0x4019181450efdc9c              # double 6.2735149999999997
	.quad	0x40110186db50f40e              # double 4.2514909999999997
	.quad	0x401a398dcdb37c9a              # double 6.5562050000000003
	.quad	0x4020b14ff0025bfb              # double 8.3463130000000003
	.quad	0x40217c4ef88b9778              # double 8.7427899999999994
	.quad	0x400c0d0f6273929f              # double 3.5063770000000001
	.quad	0x400d49c3ce2089e3              # double 3.6610179999999999
	.quad	0x400bafaacd9e83e4              # double 3.4607749999999999
	.quad	0x401ce5c67dfe32a0              # double 7.2243899999999996
	.quad	0x40224fdc9c4da900              # double 9.1559799999999996
	.quad	0x4020807e5a78f25a              # double 8.2509639999999997
	.quad	0x40222a94ff0025c0              # double 9.0831680000000005
	.quad	0x4011f96030c23fab              # double 4.4935309999999999
	.quad	0x3fb4f14db59578a3              # double 0.081807000000000005
	.quad	0x40215d5629d8409e              # double 8.6822979999999994
	.quad	0x401a4970f7b9e061              # double 6.57172
	.quad	0x3ff4f03c07ee0b0b              # double 1.308651
	.quad	0x402087b4a2339c0f              # double 8.2650500000000005
	.quad	0x40223cd4024b33db              # double 9.118805
	.quad	0x3fec695b78cc9a78              # double 0.88786100000000001
	.quad	0x3ffddd63886594af              # double 1.8665499999999999
	.quad	0x3fea7455a7d24181              # double 0.82670100000000002
	.quad	0x401fafe8ab4fa483              # double 7.9217859999999999
	.quad	0x401ec60285ec3dab              # double 7.6933689999999996
	.quad	0x4002a05ab3aabcd8              # double 2.3282980000000002
	.quad	0x402030980b242071              # double 8.0949100000000005
	.quad	0x40108a600b029281              # double 4.1351319999999996
	.quad	0x4023a9a8262456f7              # double 9.8313609999999993
	.quad	0x3ff7741e14bdfd26              # double 1.465849
	.quad	0x4003b66c6de76428              # double 2.4640740000000001
	.quad	0x401b7751ce28ed5f              # double 6.8665229999999999
	.quad	0x400168b220791c4c              # double 2.1761210000000002
	.quad	0x3fe75a74c09c3ce2              # double 0.729792
	.quad	0x40211dec80c73abd              # double 8.5584450000000007
	.quad	0x4016e517e77d523b              # double 5.7237239999999998
	.quad	0x401577204295a6c6              # double 5.3663340000000002
	.quad	0x402235dbb9cf9a07              # double 9.1051920000000006
	.quad	0x401f1d74927913e8              # double 7.7787649999999999
	.quad	0x4003ffd1569f4906              # double 2.499911
	.quad	0x400ada22706d5065              # double 3.3565109999999998
	.quad	0x401a2795f676ea42              # double 6.5386579999999999
	.quad	0x402397839cd8127b              # double 9.7959259999999996
	.quad	0x401f7d5f138bcdff              # double 7.872433
	.quad	0x4013d3ec460ed80a              # double 4.9569559999999999
	.quad	0x3ff29b152f3c2dae              # double 1.1628620000000001
	.quad	0x401cc5100a393ee6              # double 7.1924440000000001
	.quad	0x4008701083dbc233              # double 3.054719
	.quad	0x401c5dedf1e0828c              # double 7.0917279999999998
	.quad	0x3fffdb50f40e5a36              # double 1.991044
	.quad	0x4016624cc6822ff1              # double 5.5959960000000004
	.quad	0x400a0ebd4cfd08d5              # double 3.2571970000000001
	.quad	0x3fec91f2dc2b0ea2              # double 0.89281600000000005
	.quad	0x40033b8561d4306e              # double 2.4040629999999998
	.quad	0x3ff3c4a1f080303c              # double 1.235506
	.quad	0x4016fb21815a07b3              # double 5.7452449999999997
	.quad	0x401e03700474d9c7              # double 7.5033570000000002
	.quad	0x40212a2ab25b317f              # double 8.582357
	.quad	0x401df6583e8576cd              # double 7.490571
	.quad	0x400332ce89656ef0              # double 2.3998080000000002
	.quad	0x4002fe0157eed45f              # double 2.3740260000000002
	.quad	0x40227f7e80389f84              # double 9.2490120000000004
	.quad	0x4019d83a109d0636              # double 6.4611590000000003
	.quad	0x3ffb428d434a01ac              # double 1.703748
	.quad	0x3ff4bcc2938de6de              # double 1.296084
	.quad	0x400989d0635a426c              # double 3.1922920000000001
	.quad	0x3fc314983d790753              # double 0.149066
	.quad	0x4008fa5a038194c0              # double 3.122242
	.quad	0x40037fba450acc0c              # double 2.4373670000000001
	.quad	0x401362dbe7f2c301              # double 4.8465420000000003
	.quad	0x401c7bb73083558a              # double 7.1208159999999996
	.quad	0x3fed3d87b56b8738              # double 0.91376100000000005
	.quad	0x3fcd99029ae4f334              # double 0.23123199999999999
	.quad	0x401e031487768167              # double 7.5030080000000003
	.quad	0x4011f16aceaaf35e              # double 4.4857589999999998
	.quad	0x401c73b1d0c80410              # double 7.1129829999999998
	.quad	0x4013a748e4755ffe              # double 4.9133639999999996
	.quad	0x401cae603d577964              # double 7.1702890000000004
	.quad	0x40204d5d3dc8b86b              # double 8.1511019999999998
	.quad	0x4015e1040bfe3b04              # double 5.4697420000000001
	.quad	0x400e92ba9d1f6018              # double 3.8216450000000002
	.quad	0x401ad66fd651b0cd              # double 6.7094110000000002
	.quad	0x401143a4723aafff              # double 4.3160569999999998
	.quad	0x400c6e746cb966be              # double 3.5539329999999998
	.quad	0x3f480d3cff64cf8d              # double 7.3399999999999995E-4
	.quad	0x402031bcba301217              # double 8.0971430000000009
	.quad	0x40020215336deb96              # double 2.251017
	.quad	0x401afc68661ae70c              # double 6.7464919999999999
	.quad	0x3fe6f76e6106ab15              # double 0.71770400000000001
	.quad	0x4016ad87f88765ba              # double 5.6694639999999996
	.quad	0x40160e4a38327675              # double 5.5139550000000002
	.quad	0x4012c0357a355044              # double 4.6877040000000001
	.quad	0x400a74070329802c              # double 3.306654
	.quad	0x401abde7210be942              # double 6.6854519999999997
	.quad	0x4022a33c3e74afd5              # double 9.3188189999999995
	.quad	0x3ff047746887a8d6              # double 1.0174449999999999
	.quad	0x4018b330941c8217              # double 6.1749900000000002
	.quad	0x401515946c332f01              # double 5.2710739999999996
	.quad	0x4019cb1183b60286              # double 6.4483090000000001
	.quad	0x4005b150dae3e6c5              # double 2.7115800000000001
	.quad	0x40169582dbe7f2c3              # double 5.646007
	.quad	0x3ff7707182235b4f              # double 1.464952
	.quad	0x400911c970f7b9e0              # double 3.1336849999999998
	.quad	0x40151b0d9513f8db              # double 5.2764189999999997
	.quad	0x401cd080b673c4f4              # double 7.2036160000000002
	.quad	0x4005d7f498c3b0c4              # double 2.7304469999999998
	.quad	0x401c47b4e54f7a92              # double 7.0700260000000004
	.quad	0x401cb39b024f6599              # double 7.1753960000000001
	.quad	0x400a43efae7924af              # double 3.283172
	.quad	0x4003ab2314013ec4              # double 2.4585629999999998
	.quad	0x3ff8d18090b417ca              # double 1.551148
	.quad	0x3fee470867ad8e43              # double 0.94617099999999998
	.quad	0x400f38cf398e9707              # double 3.902739
	.quad	0x400b330f8c64fdb1              # double 3.3999320000000002
	.quad	0x3fff53b0813cab82              # double 1.957932
	.quad	0x400727168f8e7ddd              # double 2.8940860000000002
	.quad	0x401d94d1a6506141              # double 7.3953309999999997
	.quad	0x3ff9fc2a8869c66d              # double 1.624064
	.quad	0x40186acc92146a1a              # double 6.1042959999999997
	.quad	0x40112e8576cce5f7              # double 4.2954309999999998
	.quad	0x3ffc88b11409a240              # double 1.783372
	.quad	0x400297f1737542a2              # double 2.3241909999999999
	.quad	0x4023c861847f5621              # double 9.8913689999999991
	.quad	0x40040e30caa326e1              # double 2.506929
	.quad	0x4014de8a2ec28b2a              # double 5.2173239999999996
	.quad	0x400eea087ca643cc              # double 3.864274
	.quad	0x401c52e019b0ab2e              # double 7.0809329999999999
	.quad	0x4020ac712e40852b              # double 8.3368009999999995
	.quad	0x40069b86f47b677f              # double 2.8259409999999998
	.quad	0x402255cfaacd9e84              # double 9.1676000000000001
	.quad	0x401fe4302b40f66a              # double 7.9728399999999997
	.quad	0x400bbfc0096feb4a              # double 3.4686279999999998
	.quad	0x40094a116659d12d              # double 3.1611660000000001
	.quad	0x400c65f0f5a1016d              # double 3.549776
	.quad	0x401c54fe79ee02a7              # double 7.0830019999999996
	.quad	0x3ffc5e774eebf65e              # double 1.7730630000000001
	.quad	0x4019f72606fac604              # double 6.4913559999999997
	.quad	0x3ff8cf8f8a4c1ebd              # double 1.5506740000000001
	.quad	0x400865f7403dddb1              # double 3.0497879999999999
	.quad	0x4004c472c0e7bc3c              # double 2.5959219999999998
	.quad	0x402323a387592535              # double 9.5696069999999995
	.quad	0x40095dfb9389b520              # double 3.17089
	.quad	0x3ff45fbc5de9c023              # double 1.2733730000000001
	.quad	0x40181ab474107315              # double 6.0260790000000002
	.quad	0x401f4681669ced0b              # double 7.8188529999999998
	.quad	0x401a6be0ded288ce              # double 6.6053499999999996
	.quad	0x4003c5d206c8711d              # double 2.4715919999999998
	.quad	0x3fded013a92a3055              # double 0.48144999999999999
	.quad	0x3ff8325a250f8402              # double 1.5122930000000001
	.quad	0x3ffd09a671ef30a5              # double 1.814856
	.quad	0x4012d8a8b08dd1e5              # double 4.7115809999999998
	.quad	0x4013a90214ad362f              # double 4.9150470000000004
	.quad	0x4005f24e160d887f              # double 2.7433130000000001
	.quad	0x4013fb71758e2196              # double 4.9955499999999997
	.quad	0x401fe93dd97f62b7              # double 7.9777750000000002
	.quad	0x3ffcf0d1fa333765              # double 1.808794
	.quad	0x401d8f6273929ed4              # double 7.3900240000000004
	.quad	0x3fd3ae3608d0891a              # double 0.307508
	.quad	0x40236f8ad2567989              # double 9.7178559999999993
	.quad	0x40186d31769a9110              # double 6.1066339999999997
	.quad	0x3ff6a67b5f1bef4a              # double 1.415645
	.quad	0x3fe2cb295e9e1b09              # double 0.58730000000000004
	.quad	0x4019c04577d95571              # double 6.4377649999999997
	.quad	0x40081148fd9fd36f              # double 3.0084399999999998
	.quad	0x4008474080f98fa3              # double 3.0347909999999998
	.quad	0x4018c7bbf93ff25e              # double 6.1950529999999997
	.quad	0x3ff27829068986fd              # double 1.154336
	.quad	0x400881700cd85597              # double 3.063202
	.quad	0x3ff6cd6e47dc37a4              # double 1.425154
	.quad	0x3fff39b994e1a3f4              # double 1.9515929999999999
	.quad	0x3febb6eb4e981388              # double 0.86607900000000004
	.quad	0x3feed01e2584f4c7              # double 0.96290500000000001
	.quad	0x3fee8f49491f2dc3              # double 0.95499100000000003
	.quad	0x400e4d655e28aa43              # double 3.7877909999999999
	.quad	0x40201de28aa43351              # double 8.0583690000000008
	.quad	0x4014ff487fcb923a              # double 5.2492999999999999
	.quad	0x3fce5729b280f12c              # double 0.237035
	.quad	0x4007ebaa582dbe7f              # double 2.9900709999999999
	.quad	0x4020e1ed7c6fbd27              # double 8.4412649999999996
	.quad	0x402300f49491f2dc              # double 9.5018659999999997
	.quad	0x4010037eb28d8666              # double 4.0034130000000001
	.quad	0x401a419c5a3e39f7              # double 6.5640729999999996
	.quad	0x4022a444bf4cb189              # double 9.3208369999999992
	.quad	0x401ba90a350d2807              # double 6.9150780000000003
	.quad	0x4021a8c282c6ef3d              # double 8.8296089999999996
	.quad	0x3fece7924af0bf1a              # double 0.90326799999999996
	.quad	0x3ffec0a393ee5eee              # double 1.922031
	.quad	0x402076e371540032              # double 8.2322039999999994
	.quad	0x401a4864cb5bb385              # double 6.570697
	.quad	0x4015168e820e6299              # double 5.2720279999999997
	.quad	0x400f401de2691644              # double 3.906307
	.quad	0x40239cd35a858794              # double 9.8063000000000002
	.quad	0x4007aead0c3d2524              # double 2.9602909999999998
	.quad	0x401e4a1dfb9389b5              # double 7.5723799999999998
	.quad	0x401cc8e864020818              # double 7.196199
	.quad	0x400ca1eb4202d9cf              # double 3.579062
	.quad	0x4000d1cc96462802              # double 2.1024409999999998
	.quad	0x3ff3afcbd556084a              # double 1.2304189999999999
	.quad	0x3ff1cb72c5197a25              # double 1.1121700000000001
	.quad	0x4013d53586ca89fc              # double 4.9582119999999996
	.quad	0x40038ff327aa68f5              # double 2.4452880000000001
	.quad	0x401b7189374bc6a8              # double 6.8608750000000001
	.quad	0x400477c3504c48ae              # double 2.558478
	.quad	0x3fd941a261bf37b9              # double 0.39463100000000001
	.quad	0x3ff64e28ed5f138c              # double 1.394082
	.quad	0x40148ffb8b263950              # double 5.1406080000000003
	.quad	0x400e21a048e043a2              # double 3.766419
	.quad	0x3fb0e6d15ad106ee              # double 0.066021999999999997
	.quad	0x4013c118c197e564              # double 4.9385709999999996
	.quad	0x401ccc2c1b10fd7e              # double 7.1993869999999998
	.quad	0x3ff27c158fb43d8a              # double 1.155294
	.quad	0x400272fdb8fde2ef              # double 2.3061479999999999
	.quad	0x401f999d451fc4c1              # double 7.9000139999999996
	.quad	0x4022e7f349385836              # double 9.4530279999999998
	.quad	0x40078a01abd1aa82              # double 2.9423859999999999
	.quad	0x3ff54fa9c12f09d9              # double 1.331949
	.quad	0x4019431337eb28d8              # double 6.3155029999999996
	.quad	0x401e12cc70867ad9              # double 7.518358
	.quad	0x401c735b4edb2f66              # double 7.1126529999999999
	.quad	0x3fd5aeb80ecfa69c              # double 0.33878900000000001
	.quad	0x4022a87dd4413554              # double 9.3290849999999991
	.quad	0x401168fe69270b07              # double 4.3525330000000002
	.quad	0x4010c41c8216c615              # double 4.1915149999999999
	.quad	0x3fe923854046412d              # double 0.78558600000000001
	.quad	0x401f4ff5c6c11a11              # double 7.8280859999999998
	.quad	0x3ffcb8cda6e75ff6              # double 1.795118
	.quad	0x4021029f383f0baf              # double 8.5051210000000008
	.quad	0x3fe44e746cb966be              # double 0.63457699999999995
	.quad	0x40226db8561d4307              # double 9.2142970000000002
	.quad	0x40038ecfa69be09c              # double 2.4447320000000001
	.quad	0x4018b4ca925fe975              # double 6.1765540000000003
	.quad	0x4010739ffd60e94f              # double 4.1129150000000001
	.quad	0x40055641f644955b              # double 2.6671179999999999
	.quad	0x3fed6ece13f4a98b              # double 0.91977600000000004
	.quad	0x4006b5f676ea4229              # double 2.8388490000000002
	.quad	0x3fbc957cd466f502              # double 0.11165600000000001
	.quad	0x4006b2096787ce96              # double 2.836932
	.quad	0x4023c36dca07f66f              # double 9.8816970000000008
	.quad	0x4001b5f78359bc34              # double 2.213851
	.quad	0x3ffc4052d666a982              # double 1.7657039999999999
	.quad	0x3ffef92e1ef73c0c              # double 1.935835
	.quad	0x400fa19c9d5a187a              # double 3.9539119999999999
	.quad	0x401f52a5e785b5b7              # double 7.8307109999999999
	.quad	0x3fbba7eb6bf444e1              # double 0.108031
	.quad	0x40113d42c3c9eecc              # double 4.309825
	.quad	0x40186b7d41743e96              # double 6.1049699999999998
	.quad	0x401646544fe36d22              # double 5.5686809999999998
	.quad	0x40086cb8e086bdf5              # double 3.0530870000000001
	.quad	0x3fe38b3f63c31df7              # double 0.61074799999999996
	.quad	0x401fb2dc6e2a8006              # double 7.9246689999999997
	.quad	0x402389ed7c6fbd27              # double 9.7693899999999995
	.quad	0x40236ff1737542a2              # double 9.7186389999999996
	.quad	0x4008faa4fca42aed              # double 3.122385
	.quad	0x4021af55ffe6d58d              # double 8.8424530000000008
	.quad	0x40074553ac4f7ec3              # double 2.9088509999999999
	.quad	0x4019258a76102795              # double 6.2866609999999996
	.quad	0x401773764f11b60b              # double 5.8627560000000001
	.quad	0x3fe05e6362a5e786              # double 0.51152200000000003
	.quad	0x4021c25204af9229              # double 8.8795319999999993
	.quad	0x3ffba2089e34330d              # double 1.7270589999999999
	.quad	0x400358c868b9fdbd              # double 2.4183509999999999
	.quad	0x4000403f705857b0              # double 2.031371
	.quad	0x4008c6fcdee34fc6              # double 3.097162
	.quad	0x401d9f7f498c3b0c              # double 7.4057589999999998
	.quad	0x4021a8b524399b2c              # double 8.8295069999999995
	.quad	0x400f908bb906466b              # double 3.9455789999999999
	.quad	0x3ffb5375c8d9f905              # double 1.7078759999999999
	.quad	0x3ff19b9841aac53b              # double 1.100487
	.quad	0x4012ed4ed2cbea4f              # double 4.7317460000000002
	.quad	0x4003617a89331a09              # double 2.4225970000000001
	.quad	0x401a3ea24cc68230              # double 6.5611660000000001
	.quad	0x4017830b9dc2f406              # double 5.877974
	.quad	0x400e24102ff8ec10              # double 3.7676090000000002
	.quad	0x40163e514c22ee42              # double 5.5608570000000004
	.quad	0x40232d8fb43d89ce              # double 9.5889869999999995
	.quad	0x401707381d7dbf48              # double 5.7570499999999996
	.quad	0x401bdf26f1dc50ce              # double 6.9679219999999997
	.quad	0x4017642e12620254              # double 5.8478320000000004
	.quad	0x3ffac5aa2e3c536d              # double 1.6732579999999999
	.quad	0x40201ea22b3892ef              # double 8.0598310000000009
	.quad	0x402139c7ffde7211              # double 8.6128540000000005
	.quad	0x40122f91a32b12d3              # double 4.5464539999999998
	.quad	0x4017b0713f077ccc              # double 5.922307
	.quad	0x401c26c7eae5bc88              # double 7.0378720000000001
	.quad	0x401904ac6cdaf4ae              # double 6.2545640000000002
	.quad	0x401639c5e6ff7dfa              # double 5.556419
	.quad	0x402166a4a8c154ca              # double 8.7004750000000008
	.quad	0x400be5f30e7ff584              # double 3.4872800000000002
	.quad	0x3ff6545c78a6dacb              # double 1.3955960000000001
	.quad	0x4013affc115df655              # double 4.9218599999999997
	.quad	0x4015d3775b813016              # double 5.4565099999999997
	.quad	0x401d7a554b8bef8d              # double 7.3694660000000001
	.quad	0x4017aecf20642396              # double 5.920712
	.quad	0x4020b50374ff865d              # double 8.3535419999999991
	.quad	0x4005c63f9a49c2c2              # double 2.7218010000000001
	.quad	0x402321a5870da5db              # double 9.5657160000000001
	.quad	0x40239a3cc8de2ac3              # double 9.8012449999999997
	.quad	0x401d8fdd22856606              # double 7.3904920000000001
	.quad	0x4013d2a27f1b6912              # double 4.9556979999999999
	.quad	0x4022e9a2c669057d              # double 9.4563199999999998
	.quad	0x4006305c03361566              # double 2.7736130000000001
	.quad	0x401059008205ff1e              # double 4.0869160000000004
	.quad	0x40147e5fb71fbc5e              # double 5.1234120000000001
	.quad	0x402305cd0bb6ed67              # double 9.5113299999999991
	.quad	0x3fec64da09cc319c              # double 0.88731099999999996
	.quad	0x4015fe0ce0b912dc              # double 5.4980960000000003
	.quad	0x4022ce1522a6f3f5              # double 9.4025049999999996
	.quad	0x3fe08194c0160525              # double 0.515818
	.quad	0x3fed5933e35c5b4b              # double 0.91713900000000004
	.quad	0x400767ef9db22d0e              # double 2.9257499999999999
	.quad	0x40136ee6b8305d96              # double 4.8583020000000001
	.quad	0x4023e02e44b6e936              # double 9.9378530000000005
	.quad	0x4016d9e16d6dc1a4              # double 5.7127739999999996
	.quad	0x40152a012599ed7c              # double 5.2910199999999996
	.quad	0x40041c9abb01c92e              # double 2.5139670000000001
	.quad	0x3fe4cbb3c81908e6              # double 0.64986600000000005
	.quad	0x4020dc6d612c6ac2              # double 8.4305219999999998
	.quad	0x3ffd1fc6da448494              # double 1.8202579999999999
	.quad	0x40223704790b8499              # double 9.1074560000000009
	.quad	0x4009a271fff79c84              # double 3.2043189999999999
	.quad	0x401c44ac29bf162b              # double 7.0670630000000001
	.quad	0x40149a93293d102c              # double 5.1509520000000002
	.quad	0x4016331f03d145d8              # double 5.5499229999999997
	.quad	0x4022d4087442c7fc              # double 9.4141270000000005
	.quad	0x3ffc7b6ed677707a              # double 1.780135
	.quad	0x40229e453d20f2bf              # double 9.3091220000000003
	.quad	0x40224af4cf4a558f              # double 9.1463990000000006
	.quad	0x3fddd141a6937d20              # double 0.46589700000000001
	.quad	0x40232f74256bca53              # double 9.5926829999999991
	.quad	0x3fe0315f88fc9364              # double 0.506027
	.quad	0x401bef59ccfaeff6              # double 6.9837410000000002
	.quad	0x3fe7eaa6d2674081              # double 0.747394
	.quad	0x400456f9fcb0c027              # double 2.5424690000000001
	.quad	0x401467c99ae924f2              # double 5.1013549999999999
	.quad	0x4019df60e0eb67c3              # double 6.4681430000000004
	.quad	0x400eee48e8a71de7              # double 3.8663500000000002
	.quad	0x4003a382a12f9011              # double 2.4548390000000002
	.quad	0x401e0b139c94f69d              # double 7.5108170000000002
	.quad	0x3ff3e87e38eb0319              # double 1.2442610000000001
	.quad	0x40207976ddaceee1              # double 8.2372350000000001
	.quad	0x400db906466b1e5c              # double 3.715344
	.quad	0x4001e4bec679cc75              # double 2.2366920000000001
	.quad	0x4019e05f6ba0620b              # double 6.4691140000000003
	.quad	0x401665a57646ae3a              # double 5.5992639999999998
	.quad	0x40200054ac29bf16              # double 8.0006459999999997
	.quad	0x4023371172ef0ae5              # double 9.6075549999999996
	.quad	0x3fe058f92af9a8ce              # double 0.51086100000000001
	.quad	0x4023aa778140dd40              # double 9.8329430000000002
	.quad	0x40225011b1d92b80              # double 9.1563850000000002
	.quad	0x40123990afe60c39              # double 4.556216
	.quad	0x401f9b2c83ec892b              # double 7.9015370000000002
	.quad	0x402324679cc74b84              # double 9.5711030000000008
	.quad	0x401d67a9e2bcf91a              # double 7.3512339999999998
	.quad	0x400c43b46fdeb52d              # double 3.5330590000000002
	.quad	0x40020f2495e17e35              # double 2.2573940000000001
	.quad	0x4015595f676ea423              # double 5.3372780000000004
	.quad	0x401e44c7b02d59d5              # double 7.5671679999999996
	.quad	0x3fe223bddfc9ff93              # double 0.56686300000000001
	.quad	0x3fcfc443914f483d              # double 0.24817700000000001
	.quad	0x3fc5579af1886df8              # double 0.166736
	.quad	0x3ffbf9ee02a77a2d              # double 1.748518
	.quad	0x401d5e3150dae3e7              # double 7.3419850000000002
	.quad	0x4002a280ae104923              # double 2.3293469999999998
	.quad	0x40228bbd1676640a              # double 9.2729269999999993
	.quad	0x401cde2c98e53eb4              # double 7.2169670000000004
	.quad	0x400743ac929aa1d7              # double 2.9080439999999999
	.quad	0x400203a109d0635a              # double 2.2517719999999999
	.quad	0x400f8d4aa10e0221              # double 3.9439899999999999
	.quad	0x40063068123810e9              # double 2.7736360000000002
	.quad	0x3ff3a412cf0f9d2c              # double 1.227557
	.quad	0x401383bd1676640a              # double 4.8786509999999996
	.quad	0x401f5b4070329803              # double 7.8391130000000002
	.quad	0x4011010dbf0563ed              # double 4.2510289999999999
	.quad	0x401d0d530489d27c              # double 7.2630119999999998
	.quad	0x401638d759ee88df              # double 5.5555089999999998
	.quad	0x401679f77292c493              # double 5.6191079999999998
	.quad	0x3ffe2bf9830e3cda              # double 1.8857360000000001
	.quad	0x3fdd6583e8576cce              # double 0.45932099999999998
	.quad	0x400f040181e03f70              # double 3.8769559999999998
	.quad	0x4017fdb65ecc3e32              # double 5.9977660000000004
	.quad	0x4023c4069e7fb268              # double 9.8828630000000003
	.quad	0x400f1db3bfb58d15              # double 3.8895029999999999
	.quad	0x401c3925fe974a34              # double 7.055809
	.quad	0x401133db7f173754              # double 4.3006419999999999
	.quad	0x401839b6f5caf2d8              # double 6.056362
	.quad	0x401456833c60029f              # double 5.0844849999999999
	.quad	0x400043f1c75818c6              # double 2.0331760000000001
	.quad	0x3ff667d88c1db014              # double 1.400353
	.quad	0x3fc5aceee0f3cb3e              # double 0.16933999999999999
	.quad	0x4021dd7bc7f77af6              # double 8.9325849999999996
	.quad	0x40164a6117720c8d              # double 5.5726360000000001
	.quad	0x3ffaf033a4723ab0              # double 1.683643
	.quad	0x4000c03ff69014b6              # double 2.0938720000000002
	.quad	0x401b8807fed20297              # double 6.8828430000000003
	.quad	0x401611b003686a4d              # double 5.5172730000000003
	.quad	0x400261f7d73c9258              # double 2.2978360000000002
	.quad	0x3ffd08f217093101              # double 1.814684
	.quad	0x401bcdf1e0828c37              # double 6.9511180000000001
	.quad	0x3fd6fc58ab92c062              # double 0.35915200000000003
	.quad	0x401d67fae3608d09              # double 7.3515430000000004
	.quad	0x3fe1a5e353f7ced9              # double 0.55149999999999999
	.quad	0x40131fbe76c8b439              # double 4.7809999999999997
	.quad	0x40210c22ccb3a259              # double 8.5237029999999994
	.quad	0x4017a40314877681              # double 5.9101679999999996
	.quad	0x4004ca012599ed7c              # double 2.5986349999999998
	.quad	0x402304f00ef1348b              # double 9.5096439999999997
	.quad	0x4008857c914b167f              # double 3.0651790000000001
	.quad	0x3ffa94fbdad7518b              # double 1.661373
	.quad	0x4014c84230fcf80e              # double 5.1955650000000002
	.quad	0x40207d5ed06fef7c              # double 8.2448639999999997
	.quad	0x401e08f14db59579              # double 7.5087330000000003
	.quad	0x4023ec8a159817b9              # double 9.9619909999999993
	.quad	0x40081e43675ddd2b              # double 3.014777
	.quad	0x3fe44f0b6b6e0d24              # double 0.63464900000000002
	.quad	0x40191705c896dd27              # double 6.2724830000000003
	.quad	0x401b435d249e44fa              # double 6.815785
	.quad	0x4010b4a44c7b02d6              # double 4.1764080000000003
	.quad	0x401f5a4441787054              # double 7.8381509999999999
	.quad	0x40166332acfb762e              # double 5.5968730000000004
	.quad	0x4022049949e8815e              # double 9.0089819999999996
	.quad	0x40182e9d51b4fe7a              # double 6.0455220000000001
	.quad	0x40214721b3aeee95              # double 8.6389289999999992
	.quad	0x3ff6a788db0574b4              # double 1.415902
	.quad	0x3fdc5ec3dab5c39c              # double 0.44328400000000001
	.quad	0x3ff54d7060bb2bbb              # double 1.3314060000000001
	.quad	0x400c662cba732df5              # double 3.54989
	.quad	0x401f780e06530058              # double 7.8672409999999999
	.quad	0x40021355475a31a5              # double 2.2594400000000001
	.quad	0x40129d199bb2788e              # double 4.6534180000000003
	.quad	0x3fe9301a79fec99f              # double 0.78712199999999999
	.quad	0x401991bbcf4e874d              # double 6.3923180000000004
	.quad	0x400ceef99806f263              # double 3.6166870000000002
	.quad	0x401d1b380cb6c7a8              # double 7.2765810000000002
	.quad	0x4006d3a81dc0db27              # double 2.853348
	.quad	0x401e24a9cdc44391              # double 7.5358039999999997
	.quad	0x401f0f6837f7be12              # double 7.7650459999999999
	.quad	0x4001dde0d66f0cfe              # double 2.233339
	.quad	0x401137afea3df6dc              # double 4.3043820000000004
	.quad	0x3fcb198288051c9f              # double 0.21171599999999999
	.quad	0x400b2ba0620ab713              # double 3.3963019999999999
	.quad	0x4021be0d23d4f15e              # double 8.8711939999999991
	.quad	0x40218c18f81e8a2f              # double 8.7736280000000004
	.quad	0x3fec01e4712e4085              # double 0.87523099999999998
	.quad	0x4019ef944241c3f0              # double 6.4839640000000003
	.quad	0x4020f8fcb4f1e4b4              # double 8.4863029999999994
	.quad	0x4011d4c1ebc83a97              # double 4.4577710000000002
	.quad	0x400f689b0ee49f51              # double 3.9260769999999998
	.quad	0x4017f677f6b1a2a5              # double 5.9906920000000001
	.quad	0x3ff383c5bd0e12e8              # double 1.2196709999999999
	.quad	0x3ff565b9628cbd12              # double 1.3373349999999999
	.quad	0x4000dec13b9f127f              # double 2.1087669999999998
	.quad	0x4013c0956c0d6f54              # double 4.9380699999999997
	.quad	0x4007545176145953              # double 2.9161709999999998
	.quad	0x40228e3c536d655e              # double 9.2778039999999997
	.quad	0x400f5668c2613900              # double 3.917192
	.quad	0x40073a2403148777              # double 2.9033890000000002
	.quad	0x401b2f9c62a1b5c8              # double 6.7964950000000002
	.quad	0x40140d2806af46aa              # double 5.012848
	.quad	0x3fea94df8b157258              # double 0.83067299999999999
	.quad	0x40056322291fb3fa              # double 2.6734049999999998
	.quad	0x3ff80784230fcf81              # double 1.501835
	.quad	0x3fe8ad7b634dad32              # double 0.771177
	.quad	0x401fbd230b9dc2f4              # double 7.934704
	.quad	0x3ff22f81626b2f23              # double 1.136598
	.quad	0x401d50ab71327243              # double 7.3287789999999999
	.quad	0x3fe4dfefbf401c50              # double 0.65233600000000003
	.quad	0x40118192ea52ef91              # double 4.3765369999999999
	.quad	0x401a54091c087443              # double 6.5820660000000002
	.quad	0x4012e08461f9f01c              # double 4.7192550000000004
	.quad	0x401144ee7c49fd7a              # double 4.3173159999999999
	.quad	0x401d3256bca5375d              # double 7.2991590000000004
	.quad	0x40121b2aae297397              # double 4.5265300000000002
	.quad	0x401536d3f9e7b80b              # double 5.3035430000000003
	.quad	0x401a2de82d7b634e              # double 6.5448310000000003
	.quad	0x40222a88effe2a3d              # double 9.0830760000000001
	.quad	0x40211118c197e564              # double 8.5333919999999992
	.quad	0x402240fb86f47b67              # double 9.1269189999999991
	.quad	0x400a47e06961c369              # double 3.2850959999999998
	.quad	0x3fee305319828805              # double 0.94339899999999999
	.quad	0x401d8f60e0eb67c3              # double 7.3900180000000004
	.quad	0x4021215e9e1b089a              # double 8.565175
	.quad	0x3ff7fe1eb4202d9d              # double 1.499541
	.quad	0x401f612c6ac215ba              # double 7.8448960000000003
	.quad	0x4019455e6bc621b8              # double 6.3177430000000001
	.quad	0x401a1dcf893faf42              # double 6.5291119999999996
	.quad	0x3fe5581cf7878b7a              # double 0.66700599999999999
	.quad	0x40201c916ca46e09              # double 8.0557970000000001
	.quad	0x3fbb3de1e2de8709              # double 0.10641299999999999
	.quad	0x3ff96be6a337a80d              # double 1.588843
	.quad	0x400202be8bc169c2              # double 2.2513399999999999
	.quad	0x4018bf5ec80c73ac              # double 6.1868850000000002
	.quad	0x40178a8b8f14db59              # double 5.8852979999999997
	.quad	0x4021e2af1455219b              # double 8.9427420000000009
	.quad	0x3fee2cabc5154867              # double 0.94295300000000004
	.quad	0x4017b9c49774256c              # double 5.9314140000000002
	.quad	0x401f2be7296f6513              # double 7.7928740000000003
	.quad	0x40110c62e4d1a650              # double 4.2620959999999997
	.quad	0x40216b4c7f349386              # double 8.7095680000000009
	.quad	0x4008e57eaa2a0a96              # double 3.1120580000000002
	.quad	0x40205893b7d84902              # double 8.1730020000000003
	.quad	0x3ff109cd3e0bd44a              # double 1.0648930000000001
	.quad	0x3ffc5c358afc47e5              # double 1.7725120000000001
	.quad	0x3fff251b0ccbc05d              # double 1.9465589999999999
	.quad	0x3ffe1ccd96206855              # double 1.8820319999999999
	.quad	0x40173dfb0d51f81a              # double 5.8105279999999997
	.quad	0x4008aab5807fed20              # double 3.0833539999999999
	.quad	0x400e50a569b17482              # double 3.7893780000000001
	.quad	0x40152496249a133c              # double 5.2857289999999999
	.quad	0x4011d43aa79bbadc              # double 4.457255
	.quad	0x3ff8e18ce2d1f1d0              # double 1.5550660000000001
	.quad	0x401985dd4c76d118              # double 6.3807270000000003
	.quad	0x401e133ca31e7d9a              # double 7.5187860000000004
	.quad	0x3ffb606748e47560              # double 1.711036
	.quad	0x3fecfed20296b335              # double 0.90610599999999997
	.quad	0x401a449f0e4da09d              # double 6.5670130000000002
	.quad	0x3ff6e93c03bc4d23              # double 1.431942
	.quad	0x3fd62d8c2a454de8              # double 0.34653
	.quad	0x4012f235b4edb2f6              # double 4.7365329999999997
	.quad	0x3ff9afc04c8bc9cd              # double 1.6054079999999999
	.quad	0x402112cffa7eb6bf              # double 8.5367429999999995
	.quad	0x3fd44f09528f190d              # double 0.31732399999999999
	.quad	0x401104face67d780              # double 4.2548630000000003
	.quad	0x40109ad3e920c06a              # double 4.1511990000000001
	.quad	0x4010f98d045fe111              # double 4.2437019999999999
	.quad	0x4017b0f776c4827b              # double 5.9228189999999996
	.quad	0x400534538ef34d6a              # double 2.65055
	.quad	0x400d914a90470a81              # double 3.6959430000000002
	.quad	0x40164ad9274e22a3              # double 5.5730940000000002
	.quad	0x3fde70f3882278d1              # double 0.47564400000000001
	.quad	0x3fe775903a7546d4              # double 0.733101
	.quad	0x401db0ecb74ddf87              # double 7.4227780000000001
	.quad	0x4006a6fbd273d5bb              # double 2.8315350000000001
	.quad	0x4019a295208e1501              # double 6.4087719999999999
	.quad	0x4009f148fd9fd36f              # double 3.2428149999999998
	.quad	0x3fedc7d1bb4916ca              # double 0.93064199999999997
	.quad	0x3ffe6eba27ae9ab3              # double 1.9020330000000001
	.quad	0x40015a9a8049667b              # double 2.1692399999999998
	.quad	0x402200c0ce91c8eb              # double 9.0014710000000004
	.quad	0x4015948e8a71de6a              # double 5.3950750000000003
	.quad	0x40123ee136e71cda              # double 4.5614059999999998
	.quad	0x3ff7b4666ec9e237              # double 1.4815430000000001
	.quad	0x3ff556e7a311e860              # double 1.333717
	.quad	0x401962474538ef35              # double 6.3459750000000001
	.quad	0x401bf2c7325918a0              # double 6.987088
	.quad	0x4013464883fd5022              # double 4.8186359999999997
	.quad	0x402184215b9a5a8a              # double 8.7580670000000005
	.quad	0x401e2088d6d3b6cc              # double 7.5317720000000001
	.quad	0x4017fa7ded6ba8c6              # double 5.9946210000000004
	.quad	0x400281dc0db2702a              # double 2.3134079999999999
	.quad	0x4022bf9e9d0e9920              # double 9.3742570000000001
	.quad	0x400b360e0eb67c28              # double 3.4013939999999998
	.quad	0x4011b06d938151a4              # double 4.4222929999999998
	.quad	0x4017563beec3979a              # double 5.8342130000000001
	.quad	0x400853ca31e7d999              # double 3.0409130000000002
	.quad	0x40048cf41f212d77              # double 2.5688249999999999
	.quad	0x4004eb49e01de269              # double 2.614887
	.quad	0x400ae7ecfe9b7bf2              # double 3.363245
	.quad	0x3ffcb32378ab0c89              # double 1.7937350000000001
	.quad	0x4012eb28d8665e03              # double 4.7296480000000001
	.quad	0x3fef1f16b11c6d1e              # double 0.97254499999999999
	.quad	0x401ec1a975afaf86              # double 7.6891230000000004
	.quad	0x3fd1c169c23b7953              # double 0.27743000000000001
	.quad	0x3ffc4cc037931444              # double 1.7687379999999999
	.quad	0x40227f51ac9afe1e              # double 9.2486700000000006
	.quad	0x401bf76ea4228998              # double 6.9916330000000002
	.quad	0x40098d87f88765ba              # double 3.1941069999999998
	.quad	0x4014b7e06961c369              # double 5.1795669999999996
	.quad	0x4015697891e21533              # double 5.3529989999999996
	.quad	0x40234e774eebf65e              # double 9.6532540000000004
	.quad	0x3ff7fdbb16c1e365              # double 1.4994460000000001
	.quad	0x401750e51d25aab4              # double 5.8289989999999996
	.quad	0x4006bd388a8b08dd              # double 2.8423929999999999
	.quad	0x40133f87f023e9ea              # double 4.8120419999999999
	.quad	0x401533beec39799e              # double 5.3005329999999997
	.quad	0x40172724fa8b4bf9              # double 5.788227
	.quad	0x401462c6ac215b9a              # double 5.0964609999999997
	.quad	0x401c37e80389f83c              # double 7.0545960000000001
	.quad	0x401dd5718eb89507              # double 7.4584409999999997
	.quad	0x4014aff7164c729f              # double 5.1718409999999997
	.quad	0x401692bb23571d1d              # double 5.6432919999999998
	.quad	0x3ffec38194c01605              # double 1.922731
	.quad	0x40209efa82e87d2c              # double 8.3105049999999991
	.quad	0x40228edd69d30271              # double 9.2790330000000001
	.quad	0x401c61b10fd7e458              # double 7.095402
	.quad	0x40052a8112ba16e8              # double 2.6457540000000002
	.quad	0x400c0152b0a6fc59              # double 3.5006460000000001
	.quad	0x3fc2f78feef5ec81              # double 0.14818000000000001
	.quad	0x3ff387cfa26a22b4              # double 1.2206570000000001
	.quad	0x401a02bc72e275ab              # double 6.5026719999999996
	.quad	0x40057ae685db76b4              # double 2.6850100000000001
	.quad	0x40223829f16b11c7              # double 9.1096950000000003
	.quad	0x4020d08333fc86cf              # double 8.4072510000000005
	.quad	0x3ff41c864883fd50              # double 1.256964
	.quad	0x401aa27d45a5fc7e              # double 6.6586809999999996
	.quad	0x3ffe6f0bf1a5ca2a              # double 1.9021110000000001
	.quad	0x40132b6f9fcb0c02              # double 4.7924179999999996
	.quad	0x4010f1b1960fa15e              # double 4.2360290000000003
	.quad	0x401fbf9df548ecd9              # double 7.9371260000000001
	.quad	0x3ff0835696e58a33              # double 1.032065
	.quad	0x40144059210385c6              # double 5.0628399999999996
	.quad	0x402331bf9c62a1b6              # double 9.5971650000000004
	.quad	0x400b3549f94855da              # double 3.4010199999999999
	.quad	0x401fcc743201040c              # double 7.949662
	.quad	0x401b101b866e43aa              # double 6.7657299999999996
	.quad	0x40227518090b417d              # double 9.2286990000000007
	.quad	0x402197f04577d955              # double 8.7967549999999992
	.quad	0x401d8d99cbee807c              # double 7.3882820000000002
	.quad	0x3fff16b3354c1227              # double 1.9430419999999999
	.quad	0x40202c4fc1df3301              # double 8.0865460000000002
	.quad	0x4014de66cb10342b              # double 5.2171890000000003
	.quad	0x401e4b0ab2e1693c              # double 7.573283
	.quad	0x4012f7f2c3009b30              # double 4.7421369999999996
	.quad	0x3fea9e7967caea74              # double 0.83184499999999994
	.quad	0x4018a17ce52deca2              # double 6.1577029999999997
	.quad	0x4023c9d9d3458cd2              # double 9.8942399999999999
	.quad	0x40198e136e71cda3              # double 6.3887460000000003
	.quad	0x4021f809d495182b              # double 8.9844500000000007
	.quad	0x40049a8deb0fadf3              # double 2.575466
	.quad	0x402113ce8533b107              # double 8.5386849999999992
	.quad	0x4009741e9af5ba2c              # double 3.1816990000000001
	.quad	0x4017f4eb13dfb0d5              # double 5.9891779999999999
	.quad	0x3fd35cbbc2b94d94              # double 0.302535
	.quad	0x3ff3ee158750c1b9              # double 1.2456259999999999
	.quad	0x401c854a3c64345d              # double 7.130166
	.quad	0x401b6faca3619978              # double 6.859057
	.quad	0x40210ed117b5286b              # double 8.5289389999999994
	.quad	0x400984b90214ad36              # double 3.1898059999999999
	.quad	0x3f72253111f0c34c              # double 0.0044299999999999999
	.quad	0x400d3ffde7210be9              # double 3.6562459999999999
	.quad	0x3ff3b64388ebcc6c              # double 1.2319979999999999
	.quad	0x4021d39f559b3d08              # double 8.9133250000000004
	.quad	0x4015e36e71cda2b6              # double 5.4721010000000003
	.quad	0x401ad486ad2dcb14              # double 6.7075449999999996
	.quad	0x3fdfc8ffb8b26395              # double 0.496643
	.quad	0x401da54eb13dfb0d              # double 7.4114329999999997
	.quad	0x3ff46c5197a24895              # double 1.2764450000000001
	.quad	0x4021c48ffb8b2639              # double 8.8839109999999994
	.quad	0x3fc9ac36544fe36d              # double 0.200568
	.quad	0x3ff1ee5abc0e38a8              # double 1.120692
	.quad	0x4021e81a36e2eb1c              # double 8.9533249999999995
	.quad	0x402221d3cbc48f11              # double 9.0660690000000006
	.quad	0x400e45f17bd8be73              # double 3.7841520000000002
	.quad	0x3fe1014940bbb1f2              # double 0.53140699999999996
	.quad	0x401575350092ccf7              # double 5.3644600000000002
	.quad	0x3ff7efcbd556084a              # double 1.4960439999999999
	.quad	0x3fe0b5dcc63f1412              # double 0.5222
	.quad	0x40158481f53825e1              # double 5.3794019999999998
	.quad	0x401514b72c5197a2              # double 5.2702299999999997
	.quad	0x401890d4dc65c704              # double 6.1414369999999998
	.quad	0x401f77774aba3876              # double 7.8666660000000004
	.quad	0x4006589ce4a7b4e5              # double 2.7932679999999999
	.quad	0x40015d6bebe1650a              # double 2.1706159999999999
	.quad	0x401a39ff92f2b66b              # double 6.5566389999999997
	.quad	0x4012bcc7d1bb4917              # double 4.6843560000000002
	.quad	0x400899da16616b55              # double 3.0751230000000001
	.quad	0x401c3523704790b8              # double 7.0518929999999997
	.quad	0x401b1096787ce960              # double 6.7661990000000003
	.quad	0x402157cd466f501a              # double 8.6714880000000001
	.quad	0x40108e807bbb6241              # double 4.1391619999999998
	.quad	0x40230e4c942d490e              # double 9.5279279999999993
	.quad	0x3ffdefdeb52c9d17              # double 1.871062
	.quad	0x401eccc5b8dc5500              # double 7.699973
	.quad	0x401104c7f3493858              # double 4.2546689999999998
	.quad	0x401c6b4a66559f6f              # double 7.1047760000000002
	.quad	0x3fb3280f12c27a63              # double 0.074829999999999994
	.quad	0x402131b8887229e9              # double 8.5971109999999999
	.quad	0x4019a39ef0f16f44              # double 6.4097860000000004
	.quad	0x40194ce67d77fae3              # double 6.3250979999999997
	.quad	0x401b9d76ab5807ff              # double 6.9037730000000002
	.quad	0x4008ad5e8d5410f9              # double 3.0846529999999999
	.quad	0x40204d7b2031ceaf              # double 8.1513299999999997
	.quad	0x400fc6c093d96638              # double 3.9720469999999999
	.quad	0x3fe80e9b38d60a63              # double 0.75178299999999998
	.quad	0x4015f37329c347e9              # double 5.4877440000000002
	.quad	0x3fed74a558ea7ce1              # double 0.920489
	.quad	0x401761348b220792              # double 5.8449270000000002
	.quad	0x4019bdef416bdb1a              # double 6.4354829999999996
	.quad	0x400f04bba12b5e53              # double 3.8773110000000002
	.quad	0x3ffaa2fbe33acd5b              # double 1.6647909999999999
	.quad	0x4020160f1b25f634              # double 8.0430840000000003
	.quad	0x4010ea9c99285a92              # double 4.2291129999999999
	.quad	0x3ffcb6dca07f66e8              # double 1.7946439999999999
	.quad	0x3ffca219652bd3c3              # double 1.7895749999999999
	.quad	0x3fd33dea465a5764              # double 0.30065399999999998
	.quad	0x40024763a1900820              # double 2.2848579999999998
	.quad	0x4023fd63022dd7aa              # double 9.9948960000000007
	.quad	0x401023f811f4f50a              # double 4.035126
	.quad	0x3fe9c32a8c9b8455              # double 0.80507399999999996
	.quad	0x402316f5019f3c71              # double 9.5448380000000003
	.quad	0x4023c7913e81450f              # double 9.88978
	.quad	0x40208c6e6d9be4cd              # double 8.2742799999999992
	.quad	0x4009a9a91105e1c1              # double 3.2078419999999999
	.quad	0x3fb3402d16b97fe9              # double 0.075198000000000001
	.quad	0x4020400c73abc947              # double 8.125095
	.quad	0x4017b6338b47c73f              # double 5.9279310000000001
	.quad	0x402262a90cd423d9              # double 9.1926959999999998
	.quad	0x401d4491f2dc2b0f              # double 7.3169630000000003
	.quad	0x401b780b673c4f3c              # double 6.8672310000000003
	.quad	0x402166323bbc6eb1              # double 8.6996020000000005
	.quad	0x3fecf3a365cb35f4              # double 0.90474100000000001
	.quad	0x40205afaf8594291              # double 8.1776959999999992
	.quad	0x40139f5019f3c70d              # double 4.9055790000000004
	.quad	0x40185fdc1615ebfb              # double 6.0936130000000004
	.quad	0x4017878c0053e2d6              # double 5.8823699999999999
	.quad	0x4019fec460ed80a1              # double 6.4987959999999996
	.quad	0x3fe2942917507e9e              # double 0.58058600000000005
	.quad	0x40177ae3608d0892              # double 5.8700080000000003
	.quad	0x3ffe13037d63022e              # double 1.879642
	.quad	0x4022235e529bae47              # double 9.0690790000000003
	.quad	0x401fb4ccab3edd8b              # double 7.9265619999999996
	.quad	0x401ddae74f2f123c              # double 7.4637729999999998
	.quad	0x3fff8e29f9ce8d97              # double 1.972208
	.quad	0x4019348f96e15875              # double 6.301329
	.quad	0x3ff32c625e99e94b              # double 1.1983360000000001
	.quad	0x4012dedbf8b9baa1              # double 4.7176359999999997
	.quad	0x4017e6aa087ca644              # double 5.9752580000000002
	.quad	0x4017ebad3a604e1e              # double 5.9801529999999996
	.quad	0x3ff6f8a4c1ebc83b              # double 1.4357040000000001
	.quad	0x4016964e48626f61              # double 5.6467830000000001
	.quad	0x3ff28c964628027e              # double 1.1593230000000001
	.quad	0x4020977c6759ab6d              # double 8.295871
	.quad	0x401a401b43526528              # double 6.5626040000000003
	.quad	0x401e6716d2aa5c5f              # double 7.6006729999999995
	.quad	0x4002944028e4fb98              # double 2.3223880000000001
	.quad	0x4009005ff1d81f10              # double 3.1251829999999998
	.quad	0x400573250b52439a              # double 2.6812230000000001
	.quad	0x400d8b92c061847f              # double 3.6931509999999999
	.quad	0x3fff1859c8c9320e              # double 1.9434450000000001
	.quad	0x4015b04ddb5525cc              # double 5.4221719999999998
	.quad	0x4013a7c0f4517614              # double 4.9138219999999997
	.quad	0x3ff343d790752daa              # double 1.2040630000000001
	.quad	0x401624c8366516db              # double 5.53592
	.quad	0x4013ba7ef9db22d1              # double 4.9321250000000001
	.quad	0x3ffe6d2cbea4ebdd              # double 1.901654
	.quad	0x40213b28522ea0fd              # double 8.6155419999999996
	.quad	0x4021e4ec84f8f8a5              # double 8.9471170000000004
	.quad	0x401e840181e03f70              # double 7.6289119999999997
	.quad	0x40105bbe4473cd57              # double 4.0895929999999998
	.quad	0x3fdb1526d8b1dd5d              # double 0.42316599999999999
	.quad	0x3ff30a02b841248d              # double 1.1899439999999999
	.quad	0x401099ce8d972cd8              # double 4.1502020000000002
	.quad	0x4017d3d145d85165              # double 5.9568529999999997
	.quad	0x3feb1804d9839475              # double 0.84668200000000005
	.quad	0x3fe2a1f4b1ee2435              # double 0.58226999999999995
	.quad	0x40145d2630ec3116              # double 5.0909659999999999
	.quad	0x401bf44c37e6f71a              # double 6.9885719999999996
	.quad	0x401bfb8a19c9d5a2              # double 6.9956440000000004
	.quad	0x4009a2949a5657fb              # double 3.2043849999999998
	.quad	0x40149cf2cf95d4e9              # double 5.15327
	.quad	0x4019708d4bad7d7c              # double 6.3599139999999998
	.quad	0x4023dcb9ecf63800              # double 9.9311059999999998
	.quad	0x4016c42e9899bf59              # double 5.6915839999999998
	.quad	0x400b9ff79c842fa5              # double 3.453109
	.quad	0x401b5b0292817764              # double 6.8388770000000001
	.quad	0x40210996fa82e87d              # double 8.5187299999999997
	.quad	0x40207ad2135daad6              # double 8.239884
	.quad	0x3fd61c2e33eff195              # double 0.34547
	.quad	0x3ff79a5fc7e6b3ff              # double 1.4751890000000001
	.quad	0x401de756c93a7115              # double 7.4759169999999999
	.quad	0x3fee084e831ad213              # double 0.93851399999999996
	.quad	0x4008ad60a6330510              # double 3.084657
	.quad	0x4011602c0a4a05de              # double 4.3439180000000004
	.quad	0x4023ba34ca0c282c              # double 9.8636839999999992
	.quad	0x40211958fb43d89d              # double 8.5495070000000002
	.quad	0x401110bc7b45f17c              # double 4.2663440000000001
	.quad	0x4017d6deb95e5aff              # double 5.9598339999999999
	.quad	0x40223fa76534373f              # double 9.1243239999999997
	.quad	0x4018cdeb52c9d170              # double 6.2010930000000002
	.quad	0x3fd74acaff6d3309              # double 0.36393999999999999
	.quad	0x3ffc8387df5cf249              # double 1.7821119999999999
	.quad	0x401fb387df5cf249              # double 7.9253229999999996
	.quad	0x40196662bae03b3f              # double 6.3499860000000004
	.quad	0x3fda4dca8e2e2b8c              # double 0.41099799999999997
	.quad	0x4022dcdd93c46d83              # double 9.4313780000000004
	.quad	0x401dbfa9c12f09d9              # double 7.4371710000000002
	.quad	0x4023d7709b738e6d              # double 9.9207809999999998
	.quad	0x400a89b738e6d15b              # double 3.3172440000000001
	.quad	0x4015cd0a24463066              # double 5.450234
	.quad	0x400d3274e22a2c23              # double 3.6496369999999998
	.quad	0x402300a116659d13              # double 9.5012290000000003
	.quad	0x4020b655c0fcb4f2              # double 8.3561230000000002
	.quad	0x4019dc7820a30db7              # double 6.4653020000000003
	.quad	0x40016827b6fe2e6f              # double 2.1758570000000002
	.quad	0x3fe190be9424e593              # double 0.54891900000000005
	.quad	0x401d87c393682731              # double 7.3825820000000002
	.quad	0x4022757e45803cd1              # double 9.2294789999999995
	.quad	0x3ff4436da87a072d              # double 1.266462
	.quad	0x4000d775b8130165              # double 2.1052050000000002
	.quad	0x4019412ba16e7a31              # double 6.3136429999999999
	.quad	0x40147ba732df505d              # double 5.1207549999999999
	.quad	0x40143e3de6149c6f              # double 5.0607829999999998
	.quad	0x3fffa7ad8e432442              # double 1.978437
	.quad	0x401ef79bbadc0981              # double 7.7418050000000002
	.quad	0x401888e4b87bdcf0              # double 6.1336849999999998
	.quad	0x400c1b068123810f              # double 3.5131960000000002
	.quad	0x401489070fbeb9e5              # double 5.1338160000000004
	.quad	0x40022d7cf5f4e443              # double 2.272211
	.quad	0x401aa09edbf8b9bb              # double 6.6568560000000003
	.quad	0x40176101f31f46ed              # double 5.8447339999999999
	.quad	0x401e408a265f0f5a              # double 7.5630269999999999
	.quad	0x4020a651b0ccbc06              # double 8.3248420000000003
	.quad	0x3ff13e414e7ee914              # double 1.077699
	.quad	0x4022000a17b0f6ad              # double 9.0000769999999992
	.quad	0x4003b437c5692b3d              # double 2.4629970000000001
	.quad	0x401f24edf6124074              # double 7.7860639999999997
	.quad	0x4013b93682730c67              # double 4.9308719999999999
	.quad	0x4018c2706d506573              # double 6.1898819999999999
	.quad	0x40080eb1c432ca58              # double 3.0071750000000002
	.quad	0x3ffcc9eba6aca793              # double 1.7992969999999999
	.quad	0x40112594af4f0d84              # double 4.2866999999999997
	.quad	0x401dbd2aa5c5f7c6              # double 7.4347329999999996
	.quad	0x401aba960b6f9fcb              # double 6.682213
	.quad	0x400f6cc3e3193f6c              # double 3.9281079999999999
	.quad	0x401de30ad46f587d              # double 7.4717209999999996
	.quad	0x401265ad96a6a012              # double 4.5992949999999997
	.quad	0x3ffaa9b068123811              # double 1.666428
	.quad	0x402123480a5accd5              # double 8.5689089999999997
	.quad	0x40094981beb18117              # double 3.160892
	.quad	0x401c74e6e221c8a8              # double 7.1141620000000003
	.quad	0x4013ad0678c0053e              # double 4.9189699999999998
	.quad	0x401e2ddca4b124d1              # double 7.5447870000000003
	.quad	0x4015aa786c22680a              # double 5.4164750000000002
	.quad	0x40214e55e28aa433              # double 8.6529989999999994
	.quad	0x3fe0c7a7c9de0503              # double 0.52437199999999995
	.quad	0x3fdd661ae70c1334              # double 0.45935700000000002
	.quad	0x4022bb135979181a              # double 9.3653820000000003
	.quad	0x3ff0b33333333333              # double 1.04375
	.quad	0x401c920c8cd63cb8              # double 7.1426259999999999
	.quad	0x3fbd8255b035bd51              # double 0.11527
	.quad	0x3fde65fd8adab9f5              # double 0.47497499999999998
	.quad	0x4020379830e3cd9a              # double 8.1085829999999994
	.quad	0x3ff1a4180d3cff65              # double 1.102562
	.quad	0x40144753a3ec02f3              # double 5.069655
	.quad	0x4019a4b4d056c509              # double 6.4108460000000003
	.quad	0x400ae1b43526527a              # double 3.3602069999999999
	.quad	0x40128b54195cc858              # double 4.636063
	.quad	0x401977b5aea3161a              # double 6.3669039999999999
	.quad	0x400b90e66cb10343              # double 3.4457520000000001
	.quad	0x3fe6aad601ffb481              # double 0.70835400000000004
	.quad	0x4015faca36199781              # double 5.4949120000000002
	.quad	0x4013eba775fb2ee0              # double 4.9801310000000001
	.quad	0x3ff3a0cbf2b239a4              # double 1.2267570000000001
	.quad	0x401ebc21e1d2178f              # double 7.6837229999999996
	.quad	0x3ff5294467381d7e              # double 1.3225750000000001
	.quad	0x40096bfd2e946801              # double 3.1777289999999998
	.quad	0x3fe32682b6284599              # double 0.59845099999999996
	.quad	0x4013d4e5d5b24e9c              # double 4.9579079999999998
	.quad	0x3ff1d3cee9dd7ecc              # double 1.1142110000000001
	.quad	0x40078f544bb1af3a              # double 2.944985
	.quad	0x40200da2b5a20ddc              # double 8.0266319999999993
	.quad	0x400326fcdee34fc6              # double 2.394037
	.quad	0x4021aa9c99285a92              # double 8.8332259999999998
	.quad	0x3fe4bcdfefbf401c              # double 0.64805599999999997
	.quad	0x4010625cc426351e              # double 4.0960570000000001
	.quad	0x40209fe8ccdd93c4              # double 8.3123229999999992
	.quad	0x401d94c55432873c              # double 7.3952840000000002
	.quad	0x401b82f449129889              # double 6.877885
	.quad	0x4010d256366d7a57              # double 4.2054070000000001
	.quad	0x4018106c43f5f916              # double 6.016038
	.quad	0x3fe78de6ddf00abf              # double 0.73607199999999995
	.quad	0x3ff77bd8be7296f6              # double 1.4677359999999999
	.quad	0x4023c33cc4ac6cdb              # double 9.881323
	.quad	0x401ae3ed959a3098              # double 6.7225859999999997
	.quad	0x400a2aea747d805e              # double 3.2709549999999998
	.quad	0x40133c5bd0e12e84              # double 4.8089440000000003
	.quad	0x401fa87724fa8b4c              # double 7.914517
	.quad	0x401e44057082491b              # double 7.566427
	.quad	0x3ff447570c564f98              # double 1.267417
	.quad	0x4020fa096787ce96              # double 8.488353
	.quad	0x40059143bf727137              # double 2.6959300000000002
	.quad	0x3ff2e832b990afe6              # double 1.181689
	.quad	0x40050bd4cfd08d4c              # double 2.6307770000000001
	.quad	0x4021a91cd1c7de51              # double 8.8302980000000009
	.quad	0x402345601ffb480a              # double 9.6354989999999994
	.quad	0x4011e5b7cfe58601              # double 4.4743339999999998
	.quad	0x4003611ba3ca7504              # double 2.4224160000000001
	.quad	0x400be01eeed8904f              # double 3.4844339999999998
	.quad	0x4020e7afc8b0079a              # double 8.4525129999999997
	.quad	0x4012e06af46aa088              # double 4.7191580000000002
	.quad	0x401b53f63c31df76              # double 6.8319939999999999
	.quad	0x4000b2085b18548b              # double 2.0869300000000002
	.quad	0x40179f1ed17c5ef6              # double 5.9053909999999998
	.quad	0x401af9f0a1be2b49              # double 6.7440819999999997
	.quad	0x401c8dd3fe1975f3              # double 7.1385040000000002
	.quad	0x400c1bc01a36e2eb              # double 3.51355
	.quad	0x40142dd00f776c48              # double 5.0447389999999999
	.quad	0x400b0fb86f47b678              # double 3.382676
	.quad	0x401aba337a80cf9e              # double 6.6818369999999998
	.quad	0x4018124a6a875d57              # double 6.017862
	.quad	0x3fe9ca57a786c227              # double 0.80595000000000006
	.quad	0x40204284be40420f              # double 8.1299189999999992
	.quad	0x3ff27393ab430f49              # double 1.1532169999999999
	.quad	0x402035c39bcba301              # double 8.1050079999999998
	.quad	0x3ff9bb98c7e28241              # double 1.6083000000000001
	.quad	0x40157dd9c27e9531              # double 5.3729009999999997
	.quad	0x401ddceee0f3cb3e              # double 7.4657549999999997
	.quad	0x40235f79207d4e09              # double 9.6864709999999991
	.quad	0x40092756861e9292              # double 3.1442079999999999
	.quad	0x3fd8cad57bc7f77b              # double 0.38738
	.quad	0x4019c95f2452c5a0              # double 6.4466520000000003
	.quad	0x401f490752da9867              # double 7.8213169999999996
	.quad	0x4018e2c7fbacb429              # double 6.2214660000000004
	.quad	0x4022e12ee84ad795              # double 9.4398110000000006
	.quad	0x401e6ce5f7403dde              # double 7.6063460000000003
	.quad	0x4002a053e2d6238e              # double 2.3282850000000002
	.quad	0x40236fd955714b9d              # double 9.7184550000000005
	.quad	0x401a38090b417ca2              # double 6.5547219999999999
	.quad	0x4022c433721d53ce              # double 9.3832050000000002
	.quad	0x401f751b4fe79ee0              # double 7.8643619999999999
	.quad	0x401d2378ee286727              # double 7.2846409999999997
	.quad	0x400aafea3df6db94              # double 3.335896
	.quad	0x4016287bdcf0307f              # double 5.5395349999999999
	.quad	0x4004df72f76e6107              # double 2.6091060000000001
	.quad	0x3fbc5e6ff7dfa00e              # double 0.110816
	.quad	0x3ffa057c0b135979              # double 1.626339
	.quad	0x4004cb606b7aa25e              # double 2.5993050000000002
	.quad	0x40141b9496249a13              # double 5.0269339999999998
	.quad	0x4016f636b0963561              # double 5.740443
	.quad	0x3fd2898f605ab3ab              # double 0.28964600000000001
	.quad	0x4010ba95421c0443              # double 4.1822100000000004
	.quad	0x3ff612bd3c361134              # double 1.379575
	.quad	0x40217064883fd502              # double 8.7195169999999997
	.quad	0x400a4518f3eccc47              # double 3.2837390000000002
	.quad	0x4016c30ced4e4c94              # double 5.6904789999999998
	.quad	0x401ac7bd8be7296f              # double 6.6950589999999996
	.quad	0x3fd59845dc832336              # double 0.33741900000000002
	.quad	0x4009b90ea9e6eeb7              # double 3.21536
	.quad	0x40129a5332acfb76              # double 4.6507079999999998
	.quad	0x402383c9eecbfb16              # double 9.7574000000000005
	.quad	0x401c3e4d1a650614              # double 7.0608409999999999
	.quad	0x3ff8a1709310129d              # double 1.5394140000000001
	.quad	0x401129e83e425aee              # double 4.2909249999999997
	.quad	0x40051de481f53826              # double 2.6395960000000001
	.quad	0x4023272f9873ffac              # double 9.5765349999999997
	.quad	0x3fec89289dadfb50              # double 0.89174299999999995
	.quad	0x4008961b2a27f1b7              # double 3.0732940000000002
	.quad	0x40031c536d655e29              # double 2.3888310000000001
	.quad	0x400303c21187e7c0              # double 2.3768349999999998
	.quad	0x401184f4c6e6d9be              # double 4.3798399999999997
	.quad	0x401baa3c21187e7c              # double 6.916245
	.quad	0x3ff594ff0025bfad              # double 1.348876
	.quad	0x401b88e4fb97bb73              # double 6.883686
	.quad	0x40143648c7192ea5              # double 5.0530119999999998
	.quad	0x400525a708ede54b              # double 2.6433849999999999
	.quad	0x40207dc9c4da9004              # double 8.2456800000000001
	.quad	0x401838ed1bf7ad4b              # double 6.0555919999999999
	.quad	0x400035cd91eeaa6d              # double 2.0262709999999999
	.quad	0x4023d751697f1f9b              # double 9.9205430000000003
	.quad	0x40184aec8d5c7475              # double 6.0731679999999999
	.quad	0x400176e8af81626b              # double 2.1830609999999999
	.quad	0x401b5c4651f3e89b              # double 6.8401120000000004
	.quad	0x4021a02c2bd7f51f              # double 8.812837
	.quad	0x4021bfdb09a671ef              # double 8.8747179999999997
	.quad	0x400b2b8b69552e30              # double 3.3962620000000001
	.quad	0x4001cf35e310dbf0              # double 2.2261769999999999
	.quad	0x400660bb2bba98ee              # double 2.7972320000000002
	.quad	0x4018cc7607c419a0              # double 6.1996690000000001
	.quad	0x4021e72064239607              # double 8.9514189999999996
	.quad	0x401e1fe64f54d1e9              # double 7.5311519999999996
	.quad	0x4022887fcb923a2a              # double 9.2666000000000004
	.quad	0x4010208a265f0f5a              # double 4.0317769999999999
	.quad	0x401b83de1e2de871              # double 6.8787770000000004
	.quad	0x4014b6c226809d49              # double 5.1784749999999997
	.quad	0x40172750c1b97354              # double 5.7883940000000003
	.quad	0x4008d935fc3b4f61              # double 3.1060599999999998
	.quad	0x40109d81f10667f9              # double 4.153816
	.quad	0x4018d3797460242d              # double 6.206518
	.quad	0x4012166be7afa722              # double 4.5218959999999999
	.quad	0x3fff4d7be9856a38              # double 1.9564170000000001
	.quad	0x4014bba8c586876e              # double 5.1832609999999999
	.quad	0x4001f7d6b65a9a80              # double 2.2460149999999999
	.quad	0x401e9e69270b06c4              # double 7.6546979999999998
	.quad	0x3ff3c548a9bcfd4c              # double 1.235665
	.quad	0x4023e8101f31f46f              # double 9.9532480000000003
	.quad	0x402283dc26dce39b              # double 9.2575389999999995
	.quad	0x401ea1626b2f2303              # double 7.6576019999999997
	.quad	0x402328bf3bea91da              # double 9.5795840000000005
	.quad	0x401b7277c45cbbc3              # double 6.8617850000000002
	.quad	0x401944289118c198              # double 6.3165610000000001
	.quad	0x400a42e1ac57e23f              # double 3.2826569999999999
	.quad	0x400b7661f18c9fb6              # double 3.432804
	.quad	0x4002740dd3fe1976              # double 2.306667
	.quad	0x4001109e98dcdb38              # double 2.1331150000000001
	.quad	0x40180c64345cfedf              # double 6.0121010000000004
	.quad	0x40049f6fd21ff2e5              # double 2.5778500000000002
	.quad	0x3fd7aa326e115593              # double 0.36976300000000001
	.quad	0x3ff00226809d4952              # double 1.0005250000000001
	.quad	0x40123fffbce4217d              # double 4.5624989999999999
	.quad	0x401bbae2da554b8c              # double 6.9325060000000001
	.quad	0x4022c0765ba6efc3              # double 9.3759029999999992
	.quad	0x3ffc82bd7f51efb7              # double 1.781919
	.quad	0x400eb55ef1fddebe              # double 3.8385600000000002
	.quad	0x4018e362a5e785b6              # double 6.2220560000000003
	.quad	0x402197b41bfbdf09              # double 8.7962959999999999
	.quad	0x40104710880d801b              # double 4.0693989999999998
	.quad	0x40021b66f9335d25              # double 2.2633800000000002
	.quad	0x4020ee85db76b3bc              # double 8.4658650000000008
	.quad	0x3fde90470a808c82              # double 0.47755599999999998
	.quad	0x4005f0aed99cbee8              # double 2.742521
	.quad	0x4013738ac18f81e9              # double 4.8628340000000003
	.quad	0x401b4a9d1f601798              # double 6.8228650000000002
	.quad	0x3fff3aba7b9170d6              # double 1.951838
	.quad	0x4021d6a593a2df93              # double 8.9192319999999992
	.quad	0x4023cc4806290eed              # double 9.8989869999999999
	.quad	0x4021ac0f88333fc8              # double 8.8360559999999992
	.quad	0x40215bd6c7219221              # double 8.679373
	.quad	0x402191487768166a              # double 8.7837560000000003
	.quad	0x40186eda66128390              # double 6.1082549999999998
	.quad	0x3fe8af1455219a84              # double 0.77137199999999994
	.quad	0x401d93033a4723ab              # double 7.393567
	.quad	0x4021d413b9f127f6              # double 8.9142130000000002
	.quad	0x401ca57a786c2268              # double 7.1616
	.quad	0x4015fb0a2ca9ac36              # double 5.4951559999999997
	.quad	0x4021a986fcdee350              # double 8.8311080000000004
	.quad	0x401430870110a138              # double 5.04739
	.quad	0x3ffa43d9a95421c0              # double 1.6415649999999999
	.quad	0x3ffb6ed352220bc4              # double 1.7145570000000001
	.quad	0x4020a95182a9930c              # double 8.3307000000000002
	.quad	0x3ff26a0dbad3a605              # double 1.150892
	.quad	0x4000953c579f2346              # double 2.0728689999999999
	.quad	0x401839ea14057082              # double 6.0565569999999997
	.quad	0x400f9db7f1737543              # double 3.9520110000000002
	.quad	0x401df965f5275eea              # double 7.4935530000000004
	.quad	0x401909d9d3458cd2              # double 6.25962
	.quad	0x4005870c1333b96b              # double 2.690941
	.quad	0x400c7ecedd484513              # double 3.5619179999999999
	.quad	0x4012fe8427418d69              # double 4.748551
	.quad	0x3ff520bd44998d04              # double 1.3204929999999999
	.quad	0x401b48e0c9d9d346              # double 6.8211700000000004
	.quad	0x4020c360ae9680e0              # double 8.3815969999999993
	.quad	0x40171dfb0d51f81a              # double 5.7792779999999997
	.quad	0x401e87b634dad320              # double 7.6325310000000002
	.quad	0x4021af9a06a6e32e              # double 8.8429719999999996
	.quad	0x4012f4d48882f0e1              # double 4.7390920000000003
	.quad	0x3ff37ae46cfc829d              # double 1.217503
	.quad	0x4001ea454de7ea60              # double 2.2393900000000002
	.quad	0x4023d0f4f93bc0a0              # double 9.9081189999999992
	.quad	0x4004dcba30121683              # double 2.607777
	.quad	0x40230484b5dcc63f              # double 9.5088249999999998
	.quad	0x400edb40b34e7686              # double 3.8570570000000002
	.quad	0x3feff3e0370cdc87              # double 0.99851999999999996
	.quad	0x401230a3d70a3d71              # double 4.5475000000000003
	.quad	0x4005ac5c9a34ca0c              # double 2.7091609999999999
	.quad	0x401271c219eb6391              # double 4.6110920000000002
	.quad	0x400bd0e8858ff759              # double 3.4770059999999998
	.quad	0x3fb425bfad299956              # double 0.078700999999999993
	.quad	0x400e68ed5f138bce              # double 3.801234
	.quad	0x4023e3b7b6bb1290              # double 9.9447609999999997
	.quad	0x4020ef6e1deacc92              # double 8.4676369999999999
	.quad	0x3fe668858ff75968              # double 0.70025899999999996
	.quad	0x401b3697aeddce7d              # double 6.8033130000000002
	.quad	0x4007b77ea1c68ec5              # double 2.9645969999999999
	.quad	0x3fffa78183f91e64              # double 1.9783949999999999
	.quad	0x3fd3b2f661f18ca0              # double 0.30779800000000002
	.quad	0x40233c67dfe32a06              # double 9.6179799999999993
	.quad	0x4023ea172abef06b              # double 9.9572079999999996
	.quad	0x40236125fe974a34              # double 9.6897429999999999
	.quad	0x4014f2ce4649906d              # double 5.2371150000000002
	.quad	0x400c8b73d188f430              # double 3.568092
	.quad	0x4013a23af31b152f              # double 4.9084279999999998
	.quad	0x3fe16e75ff609dd0              # double 0.54473400000000005
	.quad	0x3ffaae2da554b8bf              # double 1.667524
	.quad	0x40217ed06fef7c24              # double 8.7476839999999995
	.quad	0x4011f453d20f2bed              # double 4.4886010000000001
	.quad	0x3feebfb58d1526d9              # double 0.96090200000000003
	.quad	0x40109fbb517a4617              # double 4.1559879999999998
	.quad	0x401b722b7baecd08              # double 6.8614940000000004
	.quad	0x3fff676b7ed41b76              # double 1.9627490000000001
	.quad	0x40203531550ca1cf              # double 8.1038920000000001
	.quad	0x3fe90e30446b69db              # double 0.78298199999999996
	.quad	0x401ddaa7ded6ba8c              # double 7.4635309999999997
	.quad	0x4019b675147f1306              # double 6.4281810000000004
	.quad	0x402256b7aa25d8d8              # double 9.1693700000000006
	.quad	0x401e8610adcd2d45              # double 7.6309230000000001
	.quad	0x4017555582129457              # double 5.8333339999999998
	.quad	0x3fd8a5e353f7ced9              # double 0.385125
	.quad	0x401ef25b749adc90              # double 7.7366770000000002
	.quad	0x4021ef7ced916873              # double 8.9677500000000006
	.quad	0x4013885b5b70691f              # double 4.8831610000000003
	.quad	0x4018a91d9b1b79d9              # double 6.165152
	.quad	0x4020ad987c6327ee              # double 8.3390540000000009
	.quad	0x40220cadff822bbf              # double 9.0247650000000004
	.quad	0x4019f539b888722a              # double 6.4894780000000001
	.quad	0x4015faafff36ac64              # double 5.4948119999999996
	.quad	0x3ff488b75ea67e84              # double 1.2833779999999999
	.quad	0x4021183e425aee63              # double 8.5473499999999998
	.quad	0x4001ce72da122fad              # double 2.2258049999999998
	.quad	0x401af131a8ef77f2              # double 6.7355409999999996
	.quad	0x4008856d5cfaacda              # double 3.06515
	.quad	0x3fe895fcc1871e6d              # double 0.76830900000000002
	.quad	0x401634b124d099e1              # double 5.5514570000000001
	.quad	0x3fe4676640a6b93d              # double 0.63762200000000002
	.quad	0x40082dee34fc610f              # double 3.022427
	.quad	0x3fd6017dae81882b              # double 0.34384100000000001
	.quad	0x4020d991dde37586              # double 8.4249410000000005
	.quad	0x401c4beb5b2d4d40              # double 7.0741399999999999
	.quad	0x4015245a5fc7e6b4              # double 5.285501
	.quad	0x40204f66e86c6584              # double 8.1550820000000001
	.quad	0x401c1a4e379b77c0              # double 7.0256889999999999
	.quad	0x40137f1bac2df0d4              # double 4.8741289999999999
	.quad	0x40102cf8d716d2aa              # double 4.0439179999999997
	.quad	0x4022bc2fc69728a6              # double 9.3675519999999999
	.quad	0x40220d3e920c069e              # double 9.0258679999999991
	.quad	0x401a606705c896dd              # double 6.5941429999999999
	.quad	0x4004d14e3bcd35a8              # double 2.6021999999999998
	.quad	0x401a6259e1f3a57f              # double 6.5960460000000003
	.quad	0x3ff09b10fd7e4580              # double 1.0378579999999999
	.quad	0x401b847d805e5f31              # double 6.8793850000000001
	.quad	0x4012e909f1f14984              # double 4.7275770000000001
	.quad	0x40132c8c0ce91c8f              # double 4.7935030000000003
	.quad	0x40156da122fad6cb              # double 5.3570599999999997
	.quad	0x4006fb499d0203e6              # double 2.8726989999999999
	.quad	0x400cbf6b1a2a4db1              # double 3.5934659999999998
	.quad	0x4008bc27e9531551              # double 3.0918730000000001
	.quad	0x4006d78cc9a77e5f              # double 2.8552490000000001
	.quad	0x40027d5992428d43              # double 2.3112059999999999
	.quad	0x4020cd2da98676a7              # double 8.4007389999999997
	.quad	0x4012c6bd2b6f1993              # double 4.6940809999999997
	.quad	0x3ff32f3c2dadb835              # double 1.1990320000000001
	.quad	0x401aca077036c9c1              # double 6.6972940000000003
	.quad	0x4010784ba0e84274              # double 4.1174759999999999
	.quad	0x4010600ffda4052d              # double 4.0938109999999996
	.quad	0x4000217fc7607c42              # double 2.0163570000000002
	.quad	0x40111bebe1650a46              # double 4.2772670000000002
	.quad	0x40219384fd2a62aa              # double 8.7881239999999998
	.quad	0x40097738e6d15ad1              # double 3.183214
	.quad	0x3fdc5fbb517a4617              # double 0.44334299999999999
	.quad	0x401096e7a311e860              # double 4.1473680000000002
	.quad	0x3ff399641f644956              # double 1.2249490000000001
	.quad	0x402239dabe27179c              # double 9.112997
	.quad	0x4014f16df3f96180              # double 5.2357709999999997
	.quad	0x400cfae5ffa3b9ae              # double 3.622509
	.quad	0x3fd3f4a1272c94b4              # double 0.31180600000000003
	.quad	0x401da4bb5e0f7fd0              # double 7.4108710000000002
	.quad	0x400b7f2778140dd4              # double 3.437087
	.quad	0x3fdf69c66d373b00              # double 0.49083100000000002
	.quad	0x401393c42a66dbd7              # double 4.8943029999999998
	.quad	0x4014e3b81b64e054              # double 5.2223819999999996
	.quad	0x3ff55231c64ba94c              # double 1.3325670000000001
	.quad	0x400bbc04c8bc9cd4              # double 3.4668060000000001
	.quad	0x401a7e670e2c12ae              # double 6.6234400000000004
	.quad	0x4016199285a921cd              # double 5.5249730000000001
	.quad	0x3ff56cabc5154867              # double 1.3390310000000001
	.quad	0x401849fd7a13c255              # double 6.0722560000000003
	.quad	0x4009f1a32b12d341              # double 3.2429869999999998
	.quad	0x4019941d4b6a619e              # double 6.3946430000000003
	.quad	0x40131716d2aa5c5f              # double 4.7725479999999996
	.quad	0x401a25e785b5b707              # double 6.5370160000000004
	.quad	0x4011914a90470a81              # double 4.3918860000000004
	.quad	0x401b2dafd113836b              # double 6.7946160000000004
	.quad	0x40233bcf4e874c90              # double 9.616816
	.quad	0x400b073b42cc2d6b              # double 3.3785310000000002
	.quad	0x40208fbbd7b2031d              # double 8.2807300000000001
	.quad	0x40189d32c625e99f              # double 6.1535140000000004
	.quad	0x3fd7224aada33bda              # double 0.36146800000000001
	.quad	0x400802acb85a4f01              # double 3.001306
	.quad	0x401d39888f861a61              # double 7.3061850000000002
	.quad	0x3ffc963a9f383f0c              # double 1.7866770000000001
	.quad	0x3fffd96c82e019b1              # double 1.9905820000000001
	.quad	0x40185ea960b6f9fd              # double 6.0924430000000003
	.quad	0x40222d041cc532a5              # double 9.0879220000000007
	.quad	0x400b971758e21965              # double 3.4487749999999999
	.quad	0x4020336eb4e98138              # double 8.1004539999999992
	.quad	0x4023760913a4f872              # double 9.7305379999999992
	.quad	0x3fe43387160956c1              # double 0.63129000000000002
	.quad	0x400e22595bbbe879              # double 3.766772
	.quad	0x3fe3ed30f062d40b              # double 0.62270400000000004
	.quad	0x401d8a708ede54b5              # double 7.3851950000000004
	.quad	0x3fe052f7f498c3b1              # double 0.51012800000000003
	.quad	0x401308c436fc1590              # double 4.7585610000000003
	.quad	0x40017ec5f394b7b3              # double 2.1869010000000002
	.quad	0x40206f56c93a7115              # double 8.2174589999999998
	.quad	0x400fe25bfad29995              # double 3.9855269999999998
	.quad	0x40234fd04a2fcefb              # double 9.6558860000000006
	.quad	0x4013f94c01605250              # double 4.9934539999999998
	.quad	0x4017b91ea78af3e4              # double 5.9307809999999996
	.quad	0x401cb38d1d8a5482              # double 7.1753429999999998
	.quad	0x3ff28a515ce9e5e2              # double 1.1587689999999999
	.quad	0x4017586cebbba55d              # double 5.8363529999999999
	.quad	0x3fd57a3db3bfb58d              # double 0.335586
	.quad	0x4021a123810e8859              # double 8.814724
	.quad	0x401be04bc27631b6              # double 6.9690390000000004
	.quad	0x3fce69835158b828              # double 0.237595
	.quad	0x400aa191148fd9fd              # double 3.3288899999999999
	.quad	0x3ffd83b3e9a6f827              # double 1.844654
	.quad	0x3fe812d55a3a083a              # double 0.75229900000000005
	.quad	0x401d2b20fb224aae              # double 7.2921180000000003
	.quad	0x4023ba328f9f44d4              # double 9.8636669999999995
	.quad	0x40185a0be5109071              # double 6.087936
	.quad	0x40198b97bb730835              # double 6.3863209999999997
	.quad	0x402384f7446f9b99              # double 9.7596989999999994
	.quad	0x40188cecc814d728              # double 6.1376220000000004
	.quad	0x40204b06c43f5f91              # double 8.1465359999999993
	.quad	0x401d4aeff5c6c11a              # double 7.3231809999999999
	.quad	0x401bd45c358afc48              # double 6.9573830000000001
	.quad	0x4003bcca70d1fa33              # double 2.4671829999999999
	.quad	0x40239f9420b3d4ae              # double 9.8116769999999995
	.quad	0x401b5362a5e785b6              # double 6.8314310000000003
	.quad	0x4011ffd113836a83              # double 4.4998209999999998
	.quad	0x401187cb70ac3a86              # double 4.382612
	.quad	0x4000597353b4b2fb              # double 2.0436770000000002
	.quad	0x40232babc947064f              # double 9.5852950000000003
	.quad	0x40213c0789613d32              # double 8.6172450000000005
	.quad	0x40184e29b6b2af14              # double 6.0763309999999997
	.quad	0x40105bd944aa53fc              # double 4.089696
	.quad	0x40090bdd334c5da7              # double 3.1307930000000002
	.quad	0x400b77625204af92              # double 3.4332929999999999
	.quad	0x3ffc1ca5bd944aa5              # double 1.7569939999999999
	.quad	0x4010d8d4fdf3b646              # double 4.2117500000000003
	.quad	0x401a333ca31e7d9a              # double 6.5500360000000004
	.quad	0x401729dcf893faf4              # double 5.7908819999999999
	.quad	0x401e056e264e4862              # double 7.5053029999999996
	.quad	0x401c499ed7c6fbd2              # double 7.0718949999999996
	.quad	0x401aa027525460aa              # double 6.6563999999999997
	.quad	0x400ead5b6805a2d7              # double 3.8346469999999999
	.quad	0x3fef5471715c63ae              # double 0.97905799999999998
	.quad	0x4023d45e2cdc011d              # double 9.9147809999999996
	.quad	0x401c79b30728e92d              # double 7.1188469999999997
	.quad	0x40213a82a5614df9              # double 8.6142780000000005
	.quad	0x4019cb5350092ccf              # double 6.4485599999999996
	.quad	0x4021ac14a4d2b2c0              # double 8.8360950000000003
	.quad	0x3ffe3ffcdab191de              # double 1.890622
	.quad	0x4008433482be8bc1              # double 3.0328149999999998
	.quad	0x402053d09e12a51e              # double 8.1637009999999997
	.quad	0x400b14a0a0f4d7ae              # double 3.3850720000000001
	.quad	0x401f4dc26dce39b4              # double 7.8259369999999997
	.quad	0x40199c0bdcad14a1              # double 6.4023890000000003
	.quad	0x4011ccaa326e1156              # double 4.4498680000000004
	.quad	0x4011a0b417ca2121              # double 4.4069370000000001
	.quad	0x401d3604189374bc              # double 7.3027499999999996
	.quad	0x3fecf2ba9d1f6018              # double 0.90463000000000005
	.quad	0x3ffd32d6ece13f4b              # double 1.8249120000000001
	.quad	0x4014e5b4245f5ad9              # double 5.2243199999999996
	.quad	0x402072ccd530489d              # double 8.2242189999999997
	.quad	0x4009618b502ababf              # double 3.1726290000000001
	.quad	0x4017f4b2fa93af75              # double 5.9889640000000002
	.quad	0x400c8453d20f2bed              # double 3.564613
	.quad	0x4007ea3c64345cff              # double 2.9893730000000001
	.quad	0x40142c58eeae9ee4              # double 5.0433079999999997
	.quad	0x40002f15e7c8d196              # double 2.0229910000000002
	.quad	0x3fe053ef6b5d462c              # double 0.51024599999999998
	.quad	0x40098ff43419e300              # double 3.19529
	.quad	0x4021fe9db65ecc3e              # double 8.9972969999999997
	.quad	0x401cff32378ab0c9              # double 7.2492150000000004
	.quad	0x402382e2b8c75c4b              # double 9.7556360000000008
	.quad	0x3ff3c405b39e279e              # double 1.235357
	.quad	0x4020c913836a832c              # double 8.3927270000000007
	.quad	0x3fcc5b63d3e4ef03              # double 0.22153900000000001
	.quad	0x402290c5a8155d5f              # double 9.2827579999999994
	.quad	0x4023ed10f51ac9b0              # double 9.9630200000000002
	.quad	0x3fdd8dac258d5843              # double 0.46177200000000002
	.quad	0x3feccfb762d83c6d              # double 0.90035600000000005
	.quad	0x4023b4adddf43c7d              # double 9.8528889999999993
	.quad	0x40222e5eaab04253              # double 9.0905660000000008
	.quad	0x3ffa1804d9839475              # double 1.6308640000000001
	.quad	0x3fd7c970f7b9e061              # double 0.37167
	.quad	0x4004030c23fab10c              # double 2.5014880000000002
	.quad	0x4017ea465a57646b              # double 5.9787840000000001
	.quad	0x401d2ff25e56cd6c              # double 7.2968229999999998
	.quad	0x4015a8fa7a85015c              # double 5.4150179999999999
	.quad	0x40209809b30728e9              # double 8.2969489999999997
	.quad	0x40169c74fb549f95              # double 5.6527900000000004
	.quad	0x401457d6b65a9a80              # double 5.0857799999999997
	.quad	0x4017654152b0a6fc              # double 5.8488819999999997
	.quad	0x40025f3519bd4068              # double 2.2964880000000001
	.quad	0x402269c6b0531983              # double 9.2065940000000008
	.quad	0x4009e2396073de1e              # double 3.2354609999999999
	.quad	0x400346b26bf8769f              # double 2.4095200000000001
	.quad	0x401fa6202539756d              # double 7.9122320000000003
	.quad	0x40233d23f67f4dbe              # double 9.619415
	.quad	0x401ce6ac215b9a5b              # double 7.2252660000000004
	.quad	0x3ffe6d42c3c9eecc              # double 1.901675
	.quad	0x401f6c243dccea29              # double 7.855607
	.quad	0x4018d868fd199bb2              # double 6.2113379999999996
	.quad	0x4021aa005c4651f4              # double 8.8320340000000001
	.quad	0x4012b1932d6ece14              # double 4.673413
	.quad	0x4014231ceaf251c2              # double 5.0342900000000004
	.quad	0x4020beacc92146a2              # double 8.3724120000000006
	.quad	0x3ff0e3b7952d234f              # double 1.0555950000000001
	.quad	0x401b2448cf7caa76              # double 6.7854340000000004
	.quad	0x3ff340841ede1199              # double 1.2032510000000001
	.quad	0x3ff6885e3da2f8be              # double 1.408293
	.quad	0x400a7c1bda5119ce              # double 3.3106
	.quad	0x4012623a6ce3582a              # double 4.5959260000000004
	.quad	0x401d55a8deb0fadf              # double 7.3336519999999998
	.quad	0x401c8e7b3d8e0008              # double 7.1391419999999997
	.quad	0x4022b94bbe4473cd              # double 9.3619059999999993
	.quad	0x4012ad851654d61b              # double 4.6694529999999999
	.quad	0x4015ef3cf70153bd              # double 5.4836309999999999
	.quad	0x40207809f623076c              # double 8.2344509999999999
	.quad	0x4013743fe5c91d15              # double 4.8635250000000001
	.quad	0x4022cd9d7774aba4              # double 9.4015920000000008
	.quad	0x402274aec8d5c747              # double 9.2278959999999994
	.quad	0x3fff6b484d76ab58              # double 1.963692
	.quad	0x4010a4b945308bb9              # double 4.160863
	.quad	0x4016ffe1975f2cb6              # double 5.7498839999999998
	.quad	0x4022e1016ce789e7              # double 9.4394639999999991
	.quad	0x4023a1ef73c0c1fd              # double 9.8162800000000007
	.quad	0x401c270b8cfbfc65              # double 7.0381299999999998
	.quad	0x4011cef06b37867f              # double 4.452089
	.quad	0x400b49b951c5c572              # double 3.4109980000000002
	.quad	0x400666fa3fcc9eaa              # double 2.8002820000000002
	.quad	0x4019183e425aee63              # double 6.2736749999999999
	.quad	0x401ccd2806af46aa              # double 7.200348
	.quad	0x4008fd9cae21101b              # double 3.123834
	.quad	0x401a318090b417ca              # double 6.5483419999999999
	.quad	0x3fecc1ca3a4b5569              # double 0.89865600000000001
	.quad	0x40105193b3a68b1a              # double 4.0796650000000003
	.quad	0x3fe4645a1cac0831              # double 0.63724999999999998
	.quad	0x3fd372a38b8ae31d              # double 0.30387199999999998
	.quad	0x401e4a871a3b14a9              # double 7.5727809999999999
	.quad	0x4022ec916ca46e09              # double 9.462047
	.quad	0x401a6d794a6eb91b              # double 6.6069079999999998
	.quad	0x3fa7d2c7b890d5a6              # double 0.046530000000000002
	.quad	0x401e4dffc5479d4e              # double 7.5761710000000004
	.quad	0x40007f6cacd184c2              # double 2.0622189999999998
	.quad	0x4020c35fa22706d5              # double 8.381589
	.quad	0x401666748e475600              # double 5.6000540000000001
	.quad	0x4017344417870542              # double 5.8010409999999997
	.quad	0x401eceefa1e3eaf7              # double 7.7020860000000004
	.quad	0x3ff6e8bf3bea91da              # double 1.4318230000000001
	.quad	0x4013f6b7aa25d8d8              # double 4.9909350000000003
	.quad	0x4021ad3586ca89fc              # double 8.8382989999999992
	.quad	0x4023a6136e71cda3              # double 9.8243670000000005
	.quad	0x401d82502eec7c95              # double 7.3772589999999996
	.quad	0x4021521b5c7cd899              # double 8.6603650000000005
	.quad	0x3fd2d65a14488c61              # double 0.29433300000000001
	.quad	0x3fffe28fe260b2c8              # double 1.9928129999999999
	.quad	0x40137245f5ad96a7              # double 4.8615950000000003
	.quad	0x40239ea487336588              # double 9.8098489999999998
	.quad	0x40092f3d3a1d3240              # double 3.148066
	.quad	0x3ffb1be1a8262457              # double 1.694307
	.quad	0x4020fc1fa7653437              # double 8.4924289999999996
	.quad	0x40066471b4784231              # double 2.799045
	.quad	0x3fc8ddf00abf76a3              # double 0.194273
	.quad	0x402128232096787d              # double 8.5783930000000002
	.quad	0x4009eabcd78c4370              # double 3.2396180000000001
	.quad	0x3fe245c9a34ca0c3              # double 0.57101900000000005
	.quad	0x4022dd985ad538ac              # double 9.4328029999999998
	.quad	0x4021952135daad60              # double 8.7912689999999998
	.quad	0x3ff41e44fa05143c              # double 1.25739
	.quad	0x400aa39de481f538              # double 3.3298909999999999
	.quad	0x4019fa9930be0ded              # double 6.4947249999999999
	.quad	0x4012bea6c1a048e0              # double 4.6861829999999998
	.quad	0x3fc200f345069a4e              # double 0.140654
	.quad	0x400f39e1f3a57eaa              # double 3.9032629999999999
	.quad	0x4023e75caf2d7f95              # double 9.9518789999999999
	.quad	0x4014405425f20210              # double 5.0628209999999996
	.quad	0x401e46106ab14ec2              # double 7.568422
	.quad	0x401d5c07ee0b0af6              # double 7.339874
	.quad	0x401157dfa00e27e1              # double 4.3358140000000001
	.quad	0x4018dd755bccaf71              # double 6.2162680000000003
	.quad	0x4006723e5b8561d4              # double 2.8057829999999999
	.quad	0x40014a8c154c985f              # double 2.1614
	.quad	0x4001584b1ab0856e              # double 2.1681119999999998
	.quad	0x401012d490e66cb1              # double 4.018389
	.quad	0x4002394185058dde              # double 2.2779569999999998
	.quad	0x401935d5b24e9c45              # double 6.3025729999999998
	.quad	0x4023092ddbdb5d89              # double 9.5179279999999994
	.quad	0x4021f649f51697f2              # double 8.981033
	.quad	0x3ff3e20791c4b902              # double 1.242683
	.quad	0x4017c90539fba451              # double 5.9463090000000003
	.quad	0x40137bda9435ac8a              # double 4.8709509999999998
	.quad	0x3fc2ec743201040c              # double 0.147841
	.quad	0x402162adc4c9c90c              # double 8.6927319999999994
	.quad	0x401bc154003254e7              # double 6.9387970000000001
	.quad	0x3fd615db3397dd01              # double 0.345084
	.quad	0x3f9a98eda22f6a51              # double 0.025974000000000001
	.quad	0x401a17f51efb6dca              # double 6.523396
	.quad	0x3fd5df00abf76a2f              # double 0.34173599999999998
	.quad	0x4019f189374bc6a8              # double 6.4858750000000001
	.quad	0x4021c661ae70c133              # double 8.8874639999999996
	.quad	0x40202606317268d3              # double 8.0742659999999997
	.quad	0x40036113404ea4a9              # double 2.4224000000000001
	.quad	0x40010b15f88fc936              # double 2.1304129999999999
	.quad	0x3ff866e978d4fdf4              # double 1.5251250000000001
	.quad	0x3fbff06705c896dd              # double 0.124762
	.quad	0x4002bcef240fa9c1              # double 2.3422529999999999
	.quad	0x3fb56a7ac81d3aa3              # double 0.083655999999999994
	.quad	0x401343e681a9b8cc              # double 4.8163090000000004
	.quad	0x401deed02cd39da1              # double 7.4832159999999996
	.quad	0x3ffcb0142f61ed5b              # double 1.792988
	.quad	0x4020e04790b84988              # double 8.4380459999999999
	.quad	0x3ffebb320535c9e6              # double 1.9207019999999999
	.quad	0x40142bda9435ac8a              # double 5.0428259999999998
	.quad	0x3fe28433d6c72192              # double 0.57863799999999999
	.quad	0x401f27a24894c448              # double 7.7887050000000002
	.quad	0x3ffe43d35eb7457c              # double 1.891559
	.quad	0x3fff714db59578a3              # double 1.9651620000000001
	.quad	0x4020e111f0c34c1b              # double 8.4395900000000008
	.quad	0x400191a11233df2b              # double 2.1961080000000002
	.quad	0x4019ebf9830e3cda              # double 6.4804440000000003
	.quad	0x3ff54aa326e11559              # double 1.330722
	.quad	0x4021d68cef672b88              # double 8.9190439999999995
	.quad	0x3fe03ba775fb2ee0              # double 0.50728200000000001
	.quad	0x4007c2c881e4712e              # double 2.9701089999999999
	.quad	0x401398dd616f86a1              # double 4.8992820000000004
	.quad	0x400f6f5a964e8b7e              # double 3.9293719999999999
	.quad	0x4000c157689ca18c              # double 2.0944050000000001
	.quad	0x400b268db8bac711              # double 3.3938250000000001
	.quad	0x4023d22bbecaab8a              # double 9.9104899999999994
	.quad	0x40103cb295e9e1b1              # double 4.0592750000000004
	.quad	0x4006e331e3a7daa5              # double 2.860935
	.quad	0x40104e7fb267c6b9              # double 4.0766590000000003
	.quad	0x401a59aed56b0100              # double 6.5875810000000001
	.quad	0x401f5d1bf7ad4b27              # double 7.8409269999999997
	.quad	0x4004741d8e864021              # double 2.5566970000000002
	.quad	0x4011fc486ad2dcb1              # double 4.4963699999999998
	.quad	0x4019cbbf0dc768e0              # double 6.4489710000000002
	.quad	0x40224cb4f1e4b44a              # double 9.1498179999999998
	.quad	0x4023a3224aada33c              # double 9.8186210000000002
	.quad	0x401aaa0dbad3a605              # double 6.6660680000000001
	.quad	0x4013730489d27c39              # double 4.8623219999999998
	.quad	0x400ea0c308feac43              # double 3.828497
	.quad	0x40191509bf9c62a2              # double 6.2705450000000003
	.quad	0x4002b2756861e929              # double 2.3371379999999999
	.quad	0x40227fb97bb73083              # double 9.2494619999999994
	.quad	0x400e6a0f4d7add16              # double 3.801787
	.quad	0x3ff71916872b020c              # double 1.4436249999999999
	.quad	0x401962c5e2cdc012              # double 6.3464580000000002
	.quad	0x401a74b8bef8ceb3              # double 6.6139859999999997
	.quad	0x3ff067a63736cdf2              # double 1.0253049999999999
	.quad	0x4001af76e6106ab1              # double 2.2106759999999999
	.quad	0x400fda671ef30a4e              # double 3.9816419999999999
	.quad	0x401aab994e1a3f46              # double 6.6675769999999996
	.quad	0x3f79ae924f227d03              # double 0.0062700000000000004
	.quad	0x4016e21c044284e0              # double 5.7208100000000002
	.quad	0x401f22f2734f82f5              # double 7.7841279999999999
	.quad	0x4021f54195cc857f              # double 8.9790159999999997
	.quad	0x4003ecfaeff5c6c1              # double 2.490713
	.quad	0x401502f555821294              # double 5.2528889999999997
	.quad	0x4020922ab25b317f              # double 8.285482
	.quad	0x400335011904b3c4              # double 2.400881
	.quad	0x4016abe1650a45d4              # double 5.6678519999999999
	.quad	0x3ff0ec4b4d056c51              # double 1.0576890000000001
	.quad	0x4017063736cdf267              # double 5.7560700000000002
	.quad	0x401dde1deacc9214              # double 7.4669109999999996
	.quad	0x3ff847991bc55864              # double 1.5174799999999999
	.quad	0x401d04ea8da7f3cf              # double 7.2548009999999996
	.quad	0x40122cdbbe0157ef              # double 4.5438070000000002
	.quad	0x4020bd1b93037d63              # double 8.369351
	.quad	0x400282e7f6f4be83              # double 2.3139189999999998
	.quad	0x401d4ec84f8f8a4c              # double 7.3269359999999999
	.quad	0x40092cf9e3864cb6              # double 3.1469610000000001
	.quad	0x401f480dc33721d5              # double 7.8203649999999997
	.quad	0x401d5af07bfe7e20              # double 7.3388080000000002
	.quad	0x4010f26916440f24              # double 4.2367290000000004
	.quad	0x3feb8b08dd1e53a8              # double 0.86072199999999999
	.quad	0x402288ce91c8eac0              # double 9.267201
	.quad	0x40205ea161e4f766              # double 8.184825
	.quad	0x400582e5de15ca6d              # double 2.6889150000000002
	.quad	0x401df994185058de              # double 7.4937290000000001
	.quad	0x400ad2a5a469d734              # double 3.3528549999999999
	.quad	0x402143dd54da4ce8              # double 8.6325479999999999
	.quad	0x401bd4cfd08d4bad              # double 6.9578239999999996
	.quad	0x4016ae60807357e6              # double 5.6702899999999996
	.quad	0x3ffbdc6c11a11234              # double 1.741314
	.quad	0x401f97192ea52ef9              # double 7.8975569999999999
	.quad	0x400b10d844d013a9              # double 3.3832249999999999
	.quad	0x401b0311a543f1c7              # double 6.7529969999999997
	.quad	0x400ce4bd33d29564              # double 3.6116890000000001
	.quad	0x400758e5c4eb56fc              # double 2.9184070000000002
	.quad	0x4014698d045fe111              # double 5.1030769999999999
	.quad	0x40135d4738a3b57c              # double 4.8410919999999997
	.quad	0x401f613d74d594f2              # double 7.8449609999999996
	.quad	0x401893ac929aa1d7              # double 6.1442129999999997
	.quad	0x400ae40e9d51b4fe              # double 3.3613559999999998
	.quad	0x401951eb4202d9cf              # double 6.3299989999999999
	.quad	0x4003081ecd4aa10e              # double 2.378965
	.quad	0x40231b85c67dfe33              # double 9.5537550000000006
	.quad	0x400089c0a8d21bc1              # double 2.0672619999999999
	.quad	0x4007e42a66dbd72c              # double 2.9864090000000001
	.quad	0x401b4e00d1b71759              # double 6.8261750000000001
	.quad	0x40105b2702a3486f              # double 4.089016
	.quad	0x40099018e757928e              # double 3.19536
	.quad	0x40202dc22ab25b31              # double 8.0893719999999991
	.quad	0x40011bc126a65cf6              # double 2.1385519999999998
	.quad	0x40172d29dc725c3e              # double 5.7941050000000001
	.quad	0x40013ac0c62e4d1a              # double 2.1536879999999998
	.quad	0x400435579af1886e              # double 2.526046
	.quad	0x3fe8562174c4cdfb              # double 0.76051400000000002
	.quad	0x402103f0dc768dfc              # double 8.5076970000000002
	.quad	0x4023f2fba01eeed9              # double 9.9745760000000007
	.quad	0x402224c165907d91              # double 9.0717879999999997
	.quad	0x40239f07182235b5              # double 9.8106010000000001
	.quad	0x400f951c5c5718ec              # double 3.9478080000000002
	.quad	0x40014b10ba6266fd              # double 2.1616529999999998
	.quad	0x4020b20ea5b530cf              # double 8.3477680000000003
	.quad	0x4000d197a24894c4              # double 2.1023399999999999
	.quad	0x4004f6f544bb1af4              # double 2.6205850000000002
	.quad	0x401f786d2ed783e0              # double 7.867604
	.quad	0x4012d832fcac8e69              # double 4.7111320000000001
	.quad	0x401348d1958969a1              # double 4.8211120000000003
	.quad	0x4010fb5bf6a0dbad              # double 4.2454679999999998
	.quad	0x401f66a6a012599f              # double 7.8502450000000001
	.quad	0x401c509e55c0fcb5              # double 7.078729
	.quad	0x40123eed8904f6e0              # double 4.5614530000000002
	.quad	0x4021048e8a71de6a              # double 8.5089000000000006
	.quad	0x40204ce4649906cd              # double 8.1501800000000006
	.quad	0x4006859641f64495              # double 2.8152279999999998
	.quad	0x4020315ce9e5e248              # double 8.0964120000000008
	.quad	0x3fff8fc71d606317              # double 1.972602
	.quad	0x40140170d62bf120              # double 5.0014070000000004
	.quad	0x3fd71b25f633ce64              # double 0.36103200000000002
	.quad	0x401ac882adc4c9c9              # double 6.695811
	.quad	0x4013bba3ca7503b8              # double 4.9332419999999999
	.quad	0x40049b56323bbc6f              # double 2.5758480000000001
	.quad	0x4012b39c94f69caa              # double 4.6754020000000001
	.quad	0x3fdde4755ffe6d59              # double 0.46706900000000001
	.quad	0x400a8e9e5e247885              # double 3.3196379999999999
	.quad	0x400bb7eaa2a0a958              # double 3.4648029999999999
	.quad	0x400eb5347a5b0ff1              # double 3.838479
	.quad	0x401d3c1db0142f62              # double 7.3087070000000001
	.quad	0x40170be7296f6513              # double 5.7616240000000003
	.quad	0x400575c182ecaeea              # double 2.6824979999999998
	.quad	0x40185d72bcb5fe54              # double 6.0912579999999998
	.quad	0x401dd4c33b539325              # double 7.457776
	.quad	0x401a93e5321e603d              # double 6.6444289999999997
	.quad	0x4001f7268d32830a              # double 2.245679
	.quad	0x40203558c8eef1bb              # double 8.1041930000000004
	.quad	0x401cf1426fe718a8              # double 7.2356049999999996
	.quad	0x401d0875d56f32be              # double 7.2582620000000002
	.quad	0x4006c33508f648c7              # double 2.845316
	.quad	0x400208405b39e27a              # double 2.2540290000000001
	.quad	0x4023a1d1f601797d              # double 9.8160550000000004
	.quad	0x4002a253111f0c35              # double 2.3292600000000001
	.quad	0x400ea4f1a1986b9c              # double 3.8305389999999999
	.quad	0x4022222c881e4713              # double 9.0667460000000002
	.quad	0x400ab424e5929670              # double 3.337961
	.quad	0x401ea52c9d16fc9c              # double 7.6613030000000002
	.quad	0x401fba8d64d7f0ed              # double 7.9321799999999997
	.quad	0x40127f97edc7ef17              # double 4.6246029999999996
	.quad	0x3ffa3e681a9b8cb9              # double 1.640236
	.quad	0x40105877ab324852              # double 4.0863940000000003
	.quad	0x400603e100607810              # double 2.7518940000000001
	.quad	0x4021a0053e2d6239              # double 8.8125400000000003
	.quad	0x40219c1df3300de5              # double 8.8049160000000004
	.quad	0x3fd7aa1511dffc54              # double 0.36975599999999997
	.quad	0x4002510667f90d9d              # double 2.2895629999999998
	.quad	0x40232542a23bff8b              # double 9.5727740000000007
	.quad	0x401cbbe4cd749279              # double 7.1834899999999999
	.quad	0x3feccd37c1376d55              # double 0.90005100000000005
	.quad	0x40121dc93ea2d2fe              # double 4.5290879999999998
	.quad	0x400433f316e37154              # double 2.525366
	.quad	0x40158eaf6837f7be              # double 5.3893409999999999
	.quad	0x4020f220ddc61954              # double 8.4729069999999993
	.quad	0x4004c92b3cc4ac6d              # double 2.5982270000000001
	.quad	0x3fd3366d7a56de33              # double 0.30019699999999999
	.quad	0x400ddbaa9b499d02              # double 3.732259
	.quad	0x40112b4cc2507208              # double 4.2922849999999997
	.quad	0x401d544e93e1c9b4              # double 7.3323309999999999
	.quad	0x400f172c5197a249              # double 3.8863150000000002
	.quad	0x40178af78feef5ed              # double 5.8857100000000004
	.quad	0x402364cff21b3aef              # double 9.6968990000000001
	.quad	0x400fa70a808c825a              # double 3.9565630000000001
	.quad	0x3feb88ace24bba13              # double 0.86043400000000003
	.quad	0x401b82888b545c79              # double 6.8774740000000003
	.quad	0x4015829f59ccfaf0              # double 5.377561
	.quad	0x401bc7531db445ed              # double 6.9446529999999997
	.quad	0x4017ae8dda48b652              # double 5.9204629999999998
	.quad	0x402089ddc1e7967d              # double 8.2692700000000006
	.quad	0x4020626266fd651b              # double 8.1921569999999999
	.quad	0x400517c1376d5497              # double 2.6365989999999999
	.quad	0x401c10b8cfbfc654              # double 7.01633
	.quad	0x4008af1bac2df0d4              # double 3.085502
	.quad	0x401fc1f9acffa7eb              # double 7.9394289999999996
	.quad	0x40205ab27cbf6e3f              # double 8.1771429999999992
	.quad	0x3ffca009f623076c              # double 1.789072
	.quad	0x40225e047d3d4281              # double 9.1836280000000006
	.quad	0x40143bcbe61cffeb              # double 5.058395
	.quad	0x4016150092ccf6be              # double 5.5205099999999998
	.quad	0x3ff0f1b152f3c2db              # double 1.059007
	.quad	0x40229d785f8d2e51              # double 9.3075589999999995
	.quad	0x40127d92fb19e732              # double 4.6226310000000002
	.quad	0x40034d77318fc505              # double 2.4128250000000002
	.quad	0x402030151a437825              # double 8.0939110000000003
	.quad	0x401a246a1a500d5f              # double 6.5355610000000004
	.quad	0x3ff67191dde37586              # double 1.4027270000000001
	.quad	0x4010354f3775b813              # double 4.05206
	.quad	0x4021114c447c30d3              # double 8.533785
	.quad	0x400d3883ba3443d4              # double 3.6525949999999998
	.quad	0x4004af5558212945              # double 2.5856119999999998
	.quad	0x40234e55e28aa433              # double 9.6529989999999994
	.quad	0x401a9273929ed395              # double 6.6430189999999998
	.quad	0x3ffb0abd5dc40075              # double 1.6901219999999999
	.quad	0x4002f267c6b8b695              # double 2.3683619999999999
	.quad	0x3ffd02acb85a4f01              # double 1.813153
	.quad	0x3ff0365cb35f3d7d              # double 1.013272
	.quad	0x400f2d41b75a74c1              # double 3.8970980000000002
	.quad	0x3ff159934efcbd55              # double 1.0843689999999999
	.quad	0x40064cdaf4adbc66              # double 2.7875269999999999
	.quad	0x4022f13bc0a06ea0              # double 9.4711590000000001
	.quad	0x401cf86d2ed783e0              # double 7.242604
	.quad	0x4015955000c9539c              # double 5.3958130000000004
	.quad	0x401427daa4fca42b              # double 5.0389200000000001
	.quad	0x400da4edf6124074              # double 3.7055319999999998
	.quad	0x401a0f2170931013              # double 6.5147760000000003
	.quad	0x400de4302b40f66a              # double 3.7364199999999999
	.quad	0x40227f136a400fbb              # double 9.2481950000000008
	.quad	0x4010c8bd66277c46              # double 4.1960350000000002
	.quad	0x3ff7ba6698bb4d49              # double 1.4830080000000001
	.quad	0x400323ef284167a9              # double 2.3925459999999998
	.quad	0x3fb018b502ababeb              # double 0.062877000000000002
	.quad	0x400a2391d57ff9b5              # double 3.2673679999999998
	.quad	0x4018e78fabda0dfe              # double 6.2261340000000001
	.quad	0x3fffdfa97e132b56              # double 1.992105
	.quad	0x3fe232aae297396d              # double 0.568685
	.quad	0x401b4654d61b2a28              # double 6.818683
	.quad	0x3fd72089e34330d7              # double 0.36136099999999999
	.quad	0x40015422467be554              # double 2.1660810000000001
	.quad	0x4015cf69014b599b              # double 5.4525490000000003
	.quad	0x401aa7c5ef62f9ca              # double 6.6638409999999997
	.quad	0x401094cf4a558ea8              # double 4.1453220000000002
	.quad	0x40101f0fe047d3d4              # double 4.0303339999999999
	.quad	0x40014b12d3415b14              # double 2.1616569999999999
	.quad	0x401a39b6b2af1455              # double 6.5563609999999999
	.quad	0x4023683e425aee63              # double 9.7035999999999997
	.quad	0x3ff681a79fec99f2              # double 1.4066540000000001
	.quad	0x3ffa88ecd8dbcec8              # double 1.6584289999999999
	.quad	0x3fe2f4c2b51bd61f              # double 0.59237799999999996
	.quad	0x3fe37ba237cdcca7              # double 0.60884199999999999
	.quad	0x401db111f0c34c1b              # double 7.4229200000000004
	.quad	0x401ccd6733ebbfd7              # double 7.2005889999999999
	.quad	0x4021ab163baba7b9              # double 8.8341539999999998
	.quad	0x4017f4538ef34d6a              # double 5.9885999999999999
	.quad	0x3f9d9d7774aba387              # double 0.028920999999999999
	.quad	0x4014dbd2b6f19935              # double 5.2146710000000001
	.quad	0x401ecf83be6601bd              # double 7.7026510000000003
	.quad	0x40153553ef6b5d46              # double 5.3020779999999998
	.quad	0x400d7810624dd2f2              # double 3.6836250000000001
	.quad	0x40196f61aa3f034b              # double 6.358771
	.quad	0x40162a500d5e8d54              # double 5.5413209999999999
	.quad	0x4010bf9f44d44567              # double 4.1871309999999999
	.quad	0x401387c914b167ec              # double 4.8826029999999996
	.quad	0x3fefcb89d6adf71f              # double 0.99359600000000003
	.quad	0x401732b4d8ba40d9              # double 5.799518
	.quad	0x4021be8427418d69              # double 8.8721019999999999
	.quad	0x3ff9eba6aca79357              # double 1.6200319999999999
	.quad	0x401a3b5d894812be              # double 6.5579739999999997
	.quad	0x4013b4a4d2b2bfdb              # double 4.9264099999999997
	.quad	0x401c47abfb9bed31              # double 7.0699920000000001
	.quad	0x4017748a58b3f63c              # double 5.8638089999999998
	.quad	0x4016697cc39ffd61              # double 5.6030150000000001
	.quad	0x401a4a8da7f3cf70              # double 6.5728059999999999
	.quad	0x3ff897e132b55ef2              # double 1.53708
	.quad	0x400ceb08dd1e53a8              # double 3.6147629999999999
	.quad	0x3ff6f61ed5ae1cde              # double 1.4350879999999999
	.quad	0x401f908787485e3e              # double 7.8911420000000003
	.quad	0x40013f609dcf8940              # double 2.1559460000000001
	.quad	0x401f275ee99a62ed              # double 7.7884479999999998
	.quad	0x3fda23a6ce358299              # double 0.40842600000000001
	.quad	0x4014b249e44fa051              # double 5.1741099999999998
	.quad	0x4011741fea8112ba              # double 4.3634029999999999
	.quad	0x401bcd24180d3cff              # double 6.9503329999999997
	.quad	0x4023609efd86a8fc              # double 9.6887129999999999
	.quad	0x4000bf6124074645              # double 2.0934469999999998
	.quad	0x3fecfb7e90ff9724              # double 0.90569999999999994
	.quad	0x3f85df6555c52e73              # double 0.01068
	.quad	0x3ff1b6262cba732e              # double 1.10697
	.quad	0x4004c6e5cd4ed2cc              # double 2.597118
	.quad	0x400f2ed5f138bce0              # double 3.897869
	.quad	0x4017eab713272431              # double 5.9792139999999998
	.quad	0x4023227829068987              # double 9.567323
	.quad	0x401b6dbe3c105187              # double 6.8571710000000001
	.quad	0x40220e2328f9f44d              # double 9.0276119999999995
	.quad	0x3fd8918e325d4a5e              # double 0.383884
	.quad	0x3fe3a962cfd8f0c7              # double 0.61442699999999995
	.quad	0x40037d8cf398e970              # double 2.4363039999999998
	.quad	0x4015bc1acde19fc3              # double 5.4336960000000003
	.quad	0x40206c573a797892              # double 8.2116030000000002
	.quad	0x40216705ea24cc68              # double 8.7012169999999998
	.quad	0x40223c36544fe36d              # double 9.1176019999999998
	.quad	0x400858255b035bd5              # double 3.04304
	.quad	0x3ffcb8fbca1059ea              # double 1.7951619999999999
	.quad	0x4010759210385c68              # double 4.1148150000000001
	.quad	0x400a28ad68837718              # double 3.2698619999999998
	.quad	0x4012bf141205bc02              # double 4.6866000000000003
	.quad	0x401ea3e5b8561d43              # double 7.6600559999999999
	.quad	0x401ffcedd4845133              # double 7.997001
	.quad	0x3ff387a398201cd6              # double 1.220615
	.quad	0x3fe03599aa60913a              # double 0.50654299999999997
	.quad	0x400c027d028a1dfc              # double 3.5012150000000002
	.quad	0x40220436976bc1f0              # double 9.008229
	.quad	0x40169b19e731d2e1              # double 5.6514660000000001
	.quad	0x40023d894812be49              # double 2.2800470000000002
	.quad	0x40215357a355043e              # double 8.6627779999999994
	.quad	0x4004ede00d1b7176              # double 2.6161500000000002
	.quad	0x401c2b313be22e5e              # double 7.0421800000000001
	.quad	0x401babf1e8e60807              # double 6.9179149999999998
	.quad	0x3fde4091c087442c              # double 0.47269099999999997
	.quad	0x400860a4a05dd8f9              # double 3.0471889999999999
	.quad	0x400c043f5f91600f              # double 3.5020739999999999
	.quad	0x4016386f049a9974              # double 5.5551110000000001
	.quad	0x401aefeb4a66559f              # double 6.7342959999999996
	.quad	0x4020370a3d70a3d7              # double 8.1074999999999999
	.quad	0x400a4986fcdee350              # double 3.2859020000000001
	.quad	0x400a75be5d9e40c8              # double 3.3074919999999999
	.quad	0x401d7eba6aca7935              # double 7.3737579999999996
	.quad	0x3fdcfdda8bd230ba              # double 0.45299400000000001
	.quad	0x401ccb5fa22706d5              # double 7.198607
	.quad	0x401d1bd3804534bd              # double 7.2771739999999996
	.quad	0x401c206d938151a4              # double 7.0316679999999998
	.quad	0x4010d674d1633483              # double 4.2094300000000002
	.quad	0x3fe4938bcdfefbf4              # double 0.643011
	.quad	0x3fbdc7ef177a7009              # double 0.116332
	.quad	0x401642abef06b378              # double 5.5651089999999996
	.quad	0x400a7a658c4bd33d              # double 3.3097639999999999
	.quad	0x4020cae5bc87db2b              # double 8.3962839999999996
	.quad	0x401ae43632c1f42c              # double 6.7228630000000003
	.quad	0x4008de8ee6b8305e              # double 3.1086710000000002
	.quad	0x3ff224f11b60ae97              # double 1.1340190000000001
	.quad	0x4022e82afdda8bd2              # double 9.4534529999999997
	.quad	0x3fec7a376922d949              # double 0.88991900000000002
	.quad	0x4017837f7be121ee              # double 5.8784159999999996
	.quad	0x40166e6b3fe9fadb              # double 5.607831
	.quad	0x3fedfcb923a29c78              # double 0.93710000000000004
	.quad	0x3fd9e02ea960b6fa              # double 0.404308
	.quad	0x401caba4d6e47dc3              # double 7.1676209999999996
	.quad	0x401e08626f60e0eb              # double 7.5081879999999996
	.quad	0x4009159b3d07c84b              # double 3.1355499999999998
	.quad	0x3ffd20c7c0f45176              # double 1.820503
	.quad	0x4022d742784a9479              # double 9.4204290000000003
	.quad	0x400875cf2495e17e              # double 3.0575239999999999
	.quad	0x4018a42dcf4623d1              # double 6.1603310000000002
	.quad	0x400f264cb5bb3850              # double 3.8937010000000001
	.quad	0x401cda57a786c227              # double 7.2132250000000004
	.quad	0x4022fc9d9d3458cd              # double 9.4933899999999997
	.quad	0x4017e8b3b320535d              # double 5.9772480000000003
	.quad	0x3ff4b43b70ef5665              # double 1.2940020000000001
	.quad	0x401bb4484944ed70              # double 6.9260570000000001
	.quad	0x4014df9ca5bd944b              # double 5.2183710000000003
	.quad	0x40083f51697f1f9b              # double 3.0309170000000001
	.quad	0x401bb5ff609dcf89              # double 6.9277319999999998
	.quad	0x4006beb4202d9cf1              # double 2.8431169999999999
	.quad	0x401127c99ae924f2              # double 4.2888549999999999
	.quad	0x4017570eb24a6a87              # double 5.8350169999999997
	.quad	0x3fff728a6117720d              # double 1.9654640000000001
	.quad	0x4010d9246bf01323              # double 4.212053
	.quad	0x4018cdfce3150dae              # double 6.2011599999999998
	.quad	0x40205a949a5657fb              # double 8.1769149999999993
	.quad	0x400bad1f1cfbb949              # double 3.4595319999999998
	.quad	0x3ff6182dbe7f2c30              # double 1.380903
	.quad	0x401633a7546d3f9e              # double 5.5504429999999996
	.quad	0x4022ac9e44fa0514              # double 9.3371449999999995
	.quad	0x401111cc532a4980              # double 4.2673810000000003
	.quad	0x401e2b2d0a244630              # double 7.5421639999999996
	.quad	0x40176f56eac86057              # double 5.8587300000000004
	.quad	0x3fe5da57646ae3a4              # double 0.68290300000000004
	.quad	0x40229180f55de58e              # double 9.2841869999999993
	.quad	0x40224a2cecc814d7              # double 9.1448739999999997
	.quad	0x40144fd8adab9f56              # double 5.0779750000000003
	.quad	0x4007631c64ba94bc              # double 2.923394
	.quad	0x402141e1f3a57eaa              # double 8.6286769999999997
	.quad	0x3ff95885d31337eb              # double 1.584112
	.quad	0x401fae78e1932d6f              # double 7.9203830000000001
	.quad	0x4003fa7008a697af              # double 2.4972840000000001
	.quad	0x40197c56d5cfaace              # double 6.3714250000000003
	.quad	0x401851c6d1e108c4              # double 6.07986
	.quad	0x3fe3955d5f56a7ad              # double 0.61198300000000005
	.quad	0x40117eed45e9185d              # double 4.3739520000000001
	.quad	0x3fba6c2acb85a4f0              # double 0.103213
	.quad	0x4012de111276fb09              # double 4.7168619999999999
	.quad	0x3fe6f00ef1348b22              # double 0.716804
	.quad	0x4022b1dd5d3dc8b8              # double 9.3473919999999992
	.quad	0x4005f0867ad8e432              # double 2.7424439999999999
	.quad	0x3ff0d2d77318fc50              # double 1.0514749999999999
	.quad	0x40054dacabc51548              # double 2.6629269999999998
	.quad	0x4020078c436fc159              # double 8.014742
	.quad	0x4022cddd8f92af9b              # double 9.4020810000000007
	.quad	0x40237bebe1650a46              # double 9.7420340000000003
	.quad	0x4014c5625a682b63              # double 5.1927580000000004
	.quad	0x40160fe9fadafd11              # double 5.5155409999999998
	.quad	0x402385c7abfb9bed              # double 9.7612889999999996
	.quad	0x3fcf931ca7d6733f              # double 0.24667700000000001
	.quad	0x402130e7ff583a54              # double 8.5955200000000004
	.quad	0x40096ceee0f3cb3e              # double 3.1781899999999998
	.quad	0x401bcbd9018e7579              # double 6.9490699999999999
	.quad	0x3febf12a0ec74320              # double 0.87318899999999999
	.quad	0x40235f8769ec2ce4              # double 9.6865799999999993
	.quad	0x3fea27fe4bcad9ae              # double 0.81738200000000005
	.quad	0x401ac65fd8adab9f              # double 6.6937249999999997
	.quad	0x4020a5ab9f559b3d              # double 8.3235749999999999
	.quad	0x3fee59c065b63d3e              # double 0.94845599999999997
	.quad	0x40006db8bac710cb              # double 2.0535749999999999
	.quad	0x3ff7c49667b5f1bf              # double 1.485495
	.quad	0x400dd80cb6c7a7ca              # double 3.7304930000000001
	.quad	0x400ae114d2f5dbba              # double 3.3599030000000001
	.quad	0x401e3e2e2b8c75c5              # double 7.5607230000000003
	.quad	0x4023117f62b6ae7d              # double 9.5341749999999994
	.quad	0x40159209246bf013              # double 5.3926129999999999
	.quad	0x4021d42a66dbd72c              # double 8.9143860000000003
	.quad	0x400e8c1094a2b9d4              # double 3.8183910000000001
	.quad	0x401a17a4a48f96e1              # double 6.5230889999999997
	.quad	0x3ff181dc0db2702a              # double 1.094204
	.quad	0x40136ddb5525cc42              # double 4.8572819999999997
	.quad	0x3fe2e65bea0ba1f5              # double 0.59062000000000003
	.quad	0x401ec1f644955b46              # double 7.6894159999999996
	.quad	0x3ff0d5a07b352a84              # double 1.052155
	.quad	0x4005072c0e7bc3c6              # double 2.6285020000000001
	.quad	0x4002b6694898f606              # double 2.3390680000000001
	.quad	0x401fbed527e52157              # double 7.9363599999999996
	.quad	0x4020f2e6644d8772              # double 8.4744139999999994
	.quad	0x40115aa8a82a5615              # double 4.3385340000000001
	.quad	0x3fd0c1b54195cc85              # double 0.26182299999999997
	.quad	0x4003d18c9fb6134d              # double 2.477319
	.quad	0x40207804b7f5a533              # double 8.2344109999999997
	.quad	0x401fa02d16b97fe9              # double 7.906422
	.quad	0x401a4cb81733226c              # double 6.5749209999999998
	.quad	0x40087e670e2c12ae              # double 3.0617200000000002
	.quad	0x4018046ae3a3a8e7              # double 6.0043139999999999
	.quad	0x40207358f2e05ccd              # double 8.2252880000000008
	.quad	0x4014aad2dcb1465f              # double 5.1668200000000004
	.quad	0x4022c0db2702a348              # double 9.3766719999999992
	.quad	0x401ea82c6ef3d3a2              # double 7.6642320000000002
	.quad	0x400a87a63736cdf2              # double 3.3162349999999998
	.quad	0x4022f8470a808c82              # double 9.4849169999999994
	.quad	0x3fad3cddd6e04c06              # double 0.057105000000000003
	.quad	0x400689aa1d755bcd              # double 2.8172190000000001
	.quad	0x3ff1774aba387592              # double 1.0916239999999999
	.quad	0x4020344aa53fc009              # double 8.1021319999999992
	.quad	0x4020f2cc70867ad9              # double 8.4742160000000002
	.quad	0x401c505681ecd4aa              # double 7.0784549999999999
	.quad	0x401242b0a6fc58ac              # double 4.5651270000000004
	.quad	0x3feae7fd3f5b5fa2              # double 0.84081899999999998
	.quad	0x401aaa5daf07bfe8              # double 6.6663730000000001
	.quad	0x40057a33bd9cae21              # double 2.684669
	.quad	0x401a4fbb0e5e6794              # double 6.5778619999999997
	.quad	0x401c484d338f7985              # double 7.0706069999999999
	.quad	0x4020cd06bbdbe3c1              # double 8.400442
	.quad	0x401e5d3dc8b86b16              # double 7.591056
	.quad	0x40123dac68a936c6              # double 4.5602280000000004
	.quad	0x4007d843c3a42f1f              # double 2.9805980000000001
	.quad	0x3fbb7a80cf9e3865              # double 0.107338
	.quad	0x3ffe2924f227d029              # double 1.8850450000000001
	.quad	0x3fe2abc2fc69728a              # double 0.58346699999999996
	.quad	0x4019f199fe43675e              # double 6.4859390000000001
	.quad	0x40172d4bad7d7c2d              # double 5.7942340000000003
	.quad	0x402197c86cebbba5              # double 8.7964509999999994
	.quad	0x4015d18ce2d1f1d0              # double 5.4546390000000002
	.quad	0x4016c71de69ad42c              # double 5.6944499999999998
	.quad	0x4010b795f676ea42              # double 4.1792829999999999
	.quad	0x4008e85553ef6b5d              # double 3.1134439999999999
	.quad	0x4008deed45e9185d              # double 3.108851
	.quad	0x4004125aab474107              # double 2.5089619999999999
	.quad	0x400c9bc558644524              # double 3.57606
	.quad	0x4023cda74c09c3ce              # double 9.9016669999999998
	.quad	0x401dd5a9a8049668              # double 7.4586550000000002
	.quad	0x3ff50c2e770bd018              # double 1.315474
	.quad	0x4019d72367e414e8              # double 6.4600960000000001
	.quad	0x400a2b8e8ea39c52              # double 3.2712680000000001
	.quad	0x3ff6be7afa722186              # double 1.4215040000000001
	.quad	0x4022dc4e93e1c9b4              # double 9.4302869999999998
	.quad	0x3fe87db4cc250721              # double 0.76534500000000005
	.quad	0x4008ff401c4fc1df              # double 3.1246339999999999
	.quad	0x4003d199bb2788db              # double 2.477344
	.quad	0x401317d1782d3847              # double 4.7732599999999996
	.quad	0x4000440a6b93ccd1              # double 2.033223
	.quad	0x40102e047d3d4281              # double 4.0449390000000003
	.quad	0x40032e4b018611fd              # double 2.3976039999999998
	.quad	0x3fff97f3061c79b3              # double 1.9745969999999999
	.quad	0x401ca67d34df04de              # double 7.1625870000000003
	.quad	0x3ff8f29d40ee06d9              # double 1.559232
	.quad	0x4011fc79f666234b              # double 4.4965590000000004
	.quad	0x4013a6f049a9973e              # double 4.9130260000000003
	.quad	0x402249e71044f1a2              # double 9.1443410000000007
	.quad	0x401faf21f6cacd18              # double 7.9210279999999997
	.quad	0x4001ed35a858793e              # double 2.2408250000000001
	.quad	0x3fc504ccee5abc0e              # double 0.16420899999999999
	.quad	0x3fdb0e38a7e73a36              # double 0.42274299999999998
	.quad	0x400da044ae85b9e9              # double 3.7032560000000001
	.quad	0x401a371a3b14a904              # double 6.5538109999999996
	.quad	0x40023e33acd5b680              # double 2.2803719999999998
	.quad	0x401bb6d6dc1a47aa              # double 6.9285540000000001
	.quad	0x4011861e4f765fd9              # double 4.3809750000000003
	.quad	0x4010a6b228dc981c              # double 4.1627890000000001
	.quad	0x4014098e10cf5b1d              # double 5.0093310000000004
	.quad	0x401a3b0292817764              # double 6.5576270000000001
	.quad	0x401098c586876e1e              # double 4.1491910000000001
	.quad	0x401e68b7a1c25d07              # double 7.6022629999999997
	.quad	0x401c6e132b55ef20              # double 7.1074950000000001
	.quad	0x4022c56b65a9a805              # double 9.3855850000000007
	.quad	0x3ff82fd113836a83              # double 1.511674
	.quad	0x401105cd0bb6ed67              # double 4.2556649999999996
	.quad	0x3fc9d323fee2c98e              # double 0.20175599999999999
	.quad	0x4017e8aa00192a73              # double 5.9772109999999996
	.quad	0x3fff10678c0053e3              # double 1.941505
	.quad	0x4005734df04ddb55              # double 2.6813009999999999
	.quad	0x3fd612f4cf4a558f              # double 0.34490700000000002
	.quad	0x401d7da9c99285a9              # double 7.3727179999999999
	.quad	0x40195e646f156191              # double 6.3421799999999999
	.quad	0x3f7abb01c92ddbdb              # double 0.0065259999999999997
	.quad	0x402083b7739f340d              # double 8.2572589999999995
	.quad	0x401adae429e0a41a              # double 6.7137609999999999
	.quad	0x400f753ac4f7ec35              # double 3.9322409999999999
	.quad	0x401651a2a4db163c              # double 5.5797220000000003
	.quad	0x402090092ccf6be3              # double 8.2813199999999991
	.quad	0x40133c29bf162ae5              # double 4.8087530000000003
	.quad	0x40143bdcad14a0a1              # double 5.058459
	.quad	0x40202d193708aac9              # double 8.0880829999999992
	.quad	0x3ffa5ea140570825              # double 1.6481030000000001
	.quad	0x401c3821f2990f30              # double 7.0548169999999999
	.quad	0x3fd43fe9fadafd11              # double 0.31640099999999999
	.quad	0x3fe580f12c27a637              # double 0.67198999999999998
	.quad	0x40201a4b76f6d762              # double 8.0513569999999994
	.quad	0x40063f811f4f50a0              # double 2.7810079999999999
	.quad	0x40163b43d89ce4a8              # double 5.5578760000000003
	.quad	0x3ff60a31e7d9988d              # double 1.377489
	.quad	0x3ff4a0663c74fb55              # double 1.2891600000000001
	.quad	0x3ff726aec0724b77              # double 1.446944
	.quad	0x402118183f91e647              # double 8.5470600000000001
	.quad	0x402342d688377186              # double 9.6305429999999994
	.quad	0x402368a5efe93187              # double 9.7043909999999993
	.quad	0x4022edab191dde37              # double 9.4641959999999993
	.quad	0x400721fc08fa7a85              # double 2.891594
	.quad	0x3ffdff06705c896e              # double 1.874762
	.quad	0x3fd3d3e0bd44998d              # double 0.309807
	.quad	0x401d4310129cbab6              # double 7.3154909999999997
	.quad	0x4010ac4dec1c1d6d              # double 4.168266
	.quad	0x400363f034b0e1b5              # double 2.4237980000000001
	.quad	0x40176cfb762d83c7              # double 5.8564280000000002
	.quad	0x401d71001d5c3159              # double 7.3603519999999998
	.quad	0x3fe9bd61f5be5d9e              # double 0.80436799999999997
	.quad	0x4013770d62bf11f9              # double 4.8662619999999999
	.quad	0x4008b7c1bda5119d              # double 3.0897250000000001
	.quad	0x4011754d61b2a27f              # double 4.3645529999999999
	.quad	0x3ffff0f27bb2fec5              # double 1.9963249999999999
	.quad	0x40238bc903ea704c              # double 9.7730180000000004
	.quad	0x400a0fe260b2c83f              # double 3.2577560000000001
	.quad	0x402251b77c02afde              # double 9.1596030000000006
	.quad	0x401ad906cca2db62              # double 6.7119400000000002
	.quad	0x401910ccbc05d52c              # double 6.2664059999999999
	.size	.L__constant_4000xf64, 32000

	.type	.L__constant_101xindex,@object  # @__constant_101xindex
	.p2align	6, 0x0
.L__constant_101xindex:
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
	.size	.L__constant_101xindex, 808

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

	.section	".note.GNU-stack","",@progbits
