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
	.quad	0x413ab23623895076              # double 1749558.1388139999
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
	lui	a1, %hi(.L__constant_101xindex_0)
	addi	a1, a1, %lo(.L__constant_101xindex_0)
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
	.quad	51                              # 0x33
	.quad	79                              # 0x4f
	.quad	107                             # 0x6b
	.quad	157                             # 0x9d
	.quad	175                             # 0xaf
	.quad	205                             # 0xcd
	.quad	253                             # 0xfd
	.quad	291                             # 0x123
	.quad	322                             # 0x142
	.quad	371                             # 0x173
	.quad	399                             # 0x18f
	.quad	427                             # 0x1ab
	.quad	478                             # 0x1de
	.quad	509                             # 0x1fd
	.quad	530                             # 0x212
	.quad	584                             # 0x248
	.quad	603                             # 0x25b
	.quad	638                             # 0x27e
	.quad	684                             # 0x2ac
	.quad	714                             # 0x2ca
	.quad	750                             # 0x2ee
	.quad	802                             # 0x322
	.quad	828                             # 0x33c
	.quad	856                             # 0x358
	.quad	905                             # 0x389
	.quad	928                             # 0x3a0
	.quad	952                             # 0x3b8
	.quad	1009                            # 0x3f1
	.quad	1027                            # 0x403
	.quad	1056                            # 0x420
	.quad	1108                            # 0x454
	.quad	1128                            # 0x468
	.quad	1165                            # 0x48d
	.quad	1216                            # 0x4c0
	.quad	1244                            # 0x4dc
	.quad	1268                            # 0x4f4
	.quad	1320                            # 0x528
	.quad	1347                            # 0x543
	.quad	1375                            # 0x55f
	.quad	1421                            # 0x58d
	.quad	1452                            # 0x5ac
	.quad	1477                            # 0x5c5
	.quad	1524                            # 0x5f4
	.quad	1549                            # 0x60d
	.quad	1583                            # 0x62f
	.quad	1630                            # 0x65e
	.quad	1656                            # 0x678
	.quad	1686                            # 0x696
	.quad	1735                            # 0x6c7
	.quad	1765                            # 0x6e5
	.quad	1788                            # 0x6fc
	.quad	1834                            # 0x72a
	.quad	1859                            # 0x743
	.quad	1888                            # 0x760
	.quad	1940                            # 0x794
	.quad	1963                            # 0x7ab
	.quad	1987                            # 0x7c3
	.quad	2039                            # 0x7f7
	.quad	2073                            # 0x819
	.quad	2105                            # 0x839
	.quad	2154                            # 0x86a
	.quad	2186                            # 0x88a
	.quad	2214                            # 0x8a6
	.quad	2268                            # 0x8dc
	.quad	2298                            # 0x8fa
	.quad	2322                            # 0x912
	.quad	2375                            # 0x947
	.quad	2407                            # 0x967
	.quad	2429                            # 0x97d
	.quad	2479                            # 0x9af
	.quad	2508                            # 0x9cc
	.quad	2534                            # 0x9e6
	.quad	2582                            # 0xa16
	.quad	2608                            # 0xa30
	.quad	2638                            # 0xa4e
	.quad	2688                            # 0xa80
	.quad	2724                            # 0xaa4
	.quad	2751                            # 0xabf
	.quad	2803                            # 0xaf3
	.quad	2827                            # 0xb0b
	.quad	2858                            # 0xb2a
	.quad	2913                            # 0xb61
	.quad	2932                            # 0xb74
	.quad	2957                            # 0xb8d
	.quad	3006                            # 0xbbe
	.quad	3032                            # 0xbd8
	.quad	3056                            # 0xbf0
	.quad	3108                            # 0xc24
	.quad	3140                            # 0xc44
	.quad	3163                            # 0xc5b
	.quad	3214                            # 0xc8e
	.quad	3233                            # 0xca1
	.quad	3259                            # 0xcbb
	.quad	3307                            # 0xceb
	.quad	3333                            # 0xd05
	.quad	3354                            # 0xd1a
	.quad	3400                            # 0xd48
	.quad	3426                            # 0xd62
	.quad	3451                            # 0xd7b
	.quad	3500                            # 0xdac
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_3500xindex,@object # @__constant_3500xindex
	.p2align	6, 0x0
.L__constant_3500xindex:
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
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
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
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	71                              # 0x47
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
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
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	64                              # 0x40
	.quad	71                              # 0x47
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
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
	.quad	37                              # 0x25
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
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
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
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
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
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	52                              # 0x34
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
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
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
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
	.quad	1                               # 0x1
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
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
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
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
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
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
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	48                              # 0x30
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
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
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	57                              # 0x39
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
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
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	41                              # 0x29
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
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
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
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
	.quad	71                              # 0x47
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
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	63                              # 0x3f
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
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
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	22                              # 0x16
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	1                               # 0x1
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
	.quad	22                              # 0x16
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
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
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
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	91                              # 0x5b
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	49                              # 0x31
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
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
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	26                              # 0x1a
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
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
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
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
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	68                              # 0x44
	.quad	87                              # 0x57
	.quad	96                              # 0x60
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
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
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
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
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
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
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
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
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	29                              # 0x1d
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	50                              # 0x32
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	98                              # 0x62
	.quad	7                               # 0x7
	.quad	15                              # 0xf
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
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
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
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
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
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
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
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
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
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
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
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
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
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
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	68                              # 0x44
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
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
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
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
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
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
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
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
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	31                              # 0x1f
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	63                              # 0x3f
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
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
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	32                              # 0x20
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
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
	.quad	67                              # 0x43
	.quad	69                              # 0x45
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
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	80                              # 0x50
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	70                              # 0x46
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.size	.L__constant_3500xindex, 28000

	.type	.L__constant_3500xf64,@object   # @__constant_3500xf64
	.p2align	6, 0x0
.L__constant_3500xf64:
	.quad	0x402045c6195464dc              # double 8.1362769999999997
	.quad	0x400e346b26bf876a              # double 3.775595
	.quad	0x40207b220791c4b9              # double 8.240494
	.quad	0x401d8ab5807fed20              # double 7.3854579999999999
	.quad	0x4022c55ac03ff690              # double 9.3854579999999999
	.quad	0x4022c969c23b7953              # double 9.3933850000000003
	.quad	0x401bb791c4b90215              # double 6.9292670000000003
	.quad	0x40008d698fe69271              # double 2.0690490000000001
	.quad	0x3ff807fcb923a29c              # double 1.5019499999999999
	.quad	0x3ff7163ed0f62739              # double 1.442931
	.quad	0x401da5c5b4aa9718              # double 7.4118870000000001
	.quad	0x3fce311e85fd04a3              # double 0.235874
	.quad	0x40214d019f3c70ca              # double 8.6504030000000007
	.quad	0x401912f449129889              # double 6.26851
	.quad	0x4021526b93ccd0ff              # double 8.6609770000000008
	.quad	0x3fee269595feda66              # double 0.94220999999999999
	.quad	0x40148b4a2339c0ec              # double 5.1360250000000001
	.quad	0x401f916fc9bc7714              # double 7.8920279999999998
	.quad	0x401d05814940bbb2              # double 7.255376
	.quad	0x4023c887442c7fbb              # double 9.8916570000000003
	.quad	0x4000bf6cacd184c2              # double 2.0934689999999998
	.quad	0x401aa4549b62c775              # double 6.6604789999999996
	.quad	0x40058e8e1d6494d5              # double 2.694607
	.quad	0x40021e596c82e01a              # double 2.2648190000000001
	.quad	0x3fddc4a4095f2453              # double 0.46512700000000001
	.quad	0x3ff9ccb9ecf63800              # double 1.612482
	.quad	0x400a4d36b4c7f349              # double 3.2877019999999999
	.quad	0x3ff4bc105186db51              # double 1.295914
	.quad	0x40153ee34fc610f1              # double 5.3114140000000001
	.quad	0x4014e85d31337eb3              # double 5.2269180000000004
	.quad	0x4010c2ae8e1d6495              # double 4.1901190000000001
	.quad	0x4021cb98a65492ff              # double 8.8976489999999995
	.quad	0x401fb8feef5ec80c              # double 7.9306599999999996
	.quad	0x4011c5f202107b78              # double 4.4433059999999998
	.quad	0x3ffc2e8f29d40ee0              # double 1.7613669999999999
	.quad	0x4021edaccd53048a              # double 8.9642090000000003
	.quad	0x40135011904b3c3e              # double 4.8281919999999996
	.quad	0x402169f59ccfaeff              # double 8.7069519999999994
	.quad	0x3fd98754f3775b81              # double 0.39888499999999999
	.quad	0x401bebf6a0dbad3a              # double 6.9804329999999997
	.quad	0x4022d12d77318fc5              # double 9.4085499999999999
	.quad	0x400893d5bab21816              # double 3.0721850000000002
	.quad	0x3ff059817b95a294              # double 1.021852
	.quad	0x3fa4903ea704bc27              # double 0.040162999999999997
	.quad	0x402183f22c01e68a              # double 8.7577069999999999
	.quad	0x3fbef3f52fc2656b              # double 0.12091
	.quad	0x4023e34a44c7b02d              # double 9.9439259999999993
	.quad	0x4007272324c83665              # double 2.89411
	.quad	0x400a25974e65bea1              # double 3.2683550000000001
	.quad	0x4006a224edf61240              # double 2.8291719999999998
	.quad	0x400cdfe3b03e20cd              # double 3.609321
	.quad	0x401d8fb09203a323              # double 7.3903220000000003
	.quad	0x401b73419e300150              # double 6.8625550000000004
	.quad	0x40137c896dd26b72              # double 4.8716179999999998
	.quad	0x40109bc2fc69728a              # double 4.1521109999999997
	.quad	0x40111fe260b2c83f              # double 4.2811370000000002
	.quad	0x4010d87a4a48f96e              # double 4.2114039999999999
	.quad	0x401dfbfdf7e8038a              # double 7.496086
	.quad	0x3ff22cd07852f7f5              # double 1.1359410000000001
	.quad	0x3feed3198288051d              # double 0.96326900000000004
	.quad	0x400a07f90d9d7775              # double 3.2538930000000001
	.quad	0x4020e633482be8bc              # double 8.4496099999999998
	.quad	0x400a216d6dc1a47b              # double 3.2663220000000002
	.quad	0x4020d8e68e3ef284              # double 8.4236339999999998
	.quad	0x4009fe55c0fcb4f2              # double 3.249187
	.quad	0x4010ed5a5b9628cc              # double 4.2317900000000002
	.quad	0x3ff742d05f288484              # double 1.4538120000000001
	.quad	0x3fd2085f4a1272c9              # double 0.28176099999999998
	.quad	0x3ffe79f340d4dc66              # double 1.904773
	.quad	0x402355230b9dc2f4              # double 9.6662829999999999
	.quad	0x4014cbbe878fabda              # double 5.198969
	.quad	0x3ffaf17df19d66ae              # double 1.6839580000000001
	.quad	0x401d80d0aaa7ded7              # double 7.3757960000000002
	.quad	0x401a11c64ba94bbe              # double 6.5173579999999998
	.quad	0x4000efecdd0d8cb0              # double 2.1171509999999998
	.quad	0x402263ed0f627393              # double 9.1951680000000007
	.quad	0x402308663c74fb55              # double 9.5164050000000006
	.quad	0x4023a4ba732df506              # double 9.8217350000000003
	.quad	0x400e653111f0c34c              # double 3.79941
	.quad	0x40170f8487b99d45              # double 5.7651539999999999
	.quad	0x4015e7485e3da2f9              # double 5.4758620000000002
	.quad	0x401700a84be40421              # double 5.750642
	.quad	0x400981c0ca600b03              # double 3.1883560000000002
	.quad	0x4010aed4a1ad6452              # double 4.1707330000000002
	.quad	0x401a2a79bbadc098              # double 6.54148
	.quad	0x3fa6390c9107faa0              # double 0.043403999999999998
	.quad	0x401078a43bb40b35              # double 4.1178140000000001
	.quad	0x4021268a0d349be9              # double 8.575272
	.quad	0x4021d4f7ec3547e0              # double 8.9159539999999993
	.quad	0x4003817dae81882b              # double 2.4382280000000001
	.quad	0x40233029f16b11c7              # double 9.5940700000000003
	.quad	0x3ff6372c5197a249              # double 1.3884700000000001
	.quad	0x4023cb2617c1bda5              # double 9.8967749999999998
	.quad	0x40062f294dd72368              # double 2.773028
	.quad	0x401fdb6bf444e0db              # double 7.9642790000000003
	.quad	0x4020a9539b888723              # double 8.3307160000000007
	.quad	0x3fe927d24180d3d0              # double 0.786111
	.quad	0x3fda6cce5f7403de              # double 0.41289100000000001
	.quad	0x401d5549f94855da              # double 7.3332899999999999
	.quad	0x40202733226c3b92              # double 8.0765619999999991
	.quad	0x402232b4959e6256              # double 9.0990339999999996
	.quad	0x3ff5a28bb0a2ca9b              # double 1.3521840000000001
	.quad	0x4011485ad538ac19              # double 4.320659
	.quad	0x3ff7e9984a0e410b              # double 1.4945299999999999
	.quad	0x40226adadb8348f5              # double 9.2087009999999996
	.quad	0x402133736cdf266c              # double 8.6004900000000006
	.quad	0x40208c49ba5e353f              # double 8.2739999999999991
	.quad	0x402234fc1df3300e              # double 9.1034860000000002
	.quad	0x4021e2c01e68a0d3              # double 8.9428719999999995
	.quad	0x401dafceb78897ea              # double 7.4216870000000004
	.quad	0x3fea5e02ea960b70              # double 0.82397600000000004
	.quad	0x40213bd017dae819              # double 8.6168220000000009
	.quad	0x401d8b3311a543f2              # double 7.3859370000000002
	.quad	0x40035a8ac5c13fd1              # double 2.4192100000000001
	.quad	0x3fbee59af9ebe9c9              # double 0.12069100000000001
	.quad	0x4023908dd1e53a82              # double 9.7823320000000002
	.quad	0x4018faa10e022142              # double 6.2447549999999996
	.quad	0x4020aac68a936c59              # double 8.3335460000000001
	.quad	0x40152ccc03793144              # double 5.2937469999999998
	.quad	0x402273d102bc72e2              # double 9.2262039999999992
	.quad	0x4023b0bfa0945f9e              # double 9.8452120000000001
	.quad	0x40166aea747d805e              # double 5.6044099999999997
	.quad	0x401aeb9a9da597d5              # double 6.7300820000000003
	.quad	0x401733a322af5771              # double 5.800427
	.quad	0x4022cd6605ee568a              # double 9.4011689999999994
	.quad	0x4000fab29e4d5d81              # double 2.122411
	.quad	0x4010f46e08f21709              # double 4.2387009999999998
	.quad	0x401812e6a76965f5              # double 6.0184579999999999
	.quad	0x401d4f7d30ad46f6              # double 7.3276260000000004
	.quad	0x40011bd6a593a2e0              # double 2.1385930000000002
	.quad	0x401a4acfb762d83c              # double 6.5730579999999996
	.quad	0x40232f79e9d0e992              # double 9.592727
	.quad	0x40115dca4b124d0a              # double 4.3415920000000003
	.quad	0x401c1789e774eebf              # double 7.0229869999999996
	.quad	0x4016d48344c37e6f              # double 5.7075319999999996
	.quad	0x4015f7cfe5860136              # double 5.4920039999999997
	.quad	0x401af2806af46aa1              # double 6.7368180000000004
	.quad	0x4023cb81733226c4              # double 9.8974720000000004
	.quad	0x3fff9a88ace24bba              # double 1.975228
	.quad	0x400b585b5b70691f              # double 3.4181430000000002
	.quad	0x40218a95c853c148              # double 8.7706739999999996
	.quad	0x4003282e87d2c7b9              # double 2.3946200000000002
	.quad	0x401af222d5171e2a              # double 6.7364610000000003
	.quad	0x400c6832b990afe6              # double 3.550878
	.quad	0x40132a333764f11b              # double 4.7912109999999997
	.quad	0x4022c460ed80a17b              # double 9.3835519999999998
	.quad	0x40210fe154434e33              # double 8.5310159999999993
	.quad	0x400ef84c271fff7a              # double 3.8712390000000001
	.quad	0x4022a4e0b912dba5              # double 9.3220270000000003
	.quad	0x40238082491afc05              # double 9.7509940000000003
	.quad	0x40134c91d14e3bcd              # double 4.8247749999999998
	.quad	0x4010ec80841ede12              # double 4.2309590000000004
	.quad	0x400f6fdc1615ebfb              # double 3.9296190000000002
	.quad	0x401a73037d63022e              # double 6.6123180000000001
	.quad	0x4021588e368f0846              # double 8.6729599999999998
	.quad	0x4010a09741d084e8              # double 4.1568269999999998
	.quad	0x4007d5885d31337f              # double 2.9792640000000001
	.quad	0x3ff3249f51697f20              # double 1.1964410000000001
	.quad	0x40130316a055757d              # double 4.7530159999999997
	.quad	0x3ff2a96e58a32f45              # double 1.1663650000000001
	.quad	0x40138c3ce2089e34              # double 4.8869509999999998
	.quad	0x4009301d9f4d37c1              # double 3.1484939999999999
	.quad	0x3ffc95c96030c240              # double 1.7865690000000001
	.quad	0x401ad11ec918e326              # double 6.7042190000000002
	.quad	0x40198ca89fc6da45              # double 6.3873620000000004
	.quad	0x401ea4983d790753              # double 7.6607370000000001
	.quad	0x4018970da5daf07c              # double 6.147513
	.quad	0x4008c2656abde3fc              # double 3.0949200000000001
	.quad	0x40219a16616b54e3              # double 8.8009520000000006
	.quad	0x4006c857f3061c7a              # double 2.8478240000000001
	.quad	0x401e7323bbc6eb0b              # double 7.6124409999999995
	.quad	0x3ff7e24bba12b5e5              # double 1.492748
	.quad	0x4023ae518f3eccc4              # double 9.8404659999999992
	.quad	0x4009a759253543af              # double 3.2067130000000001
	.quad	0x401e860bb2bba98f              # double 7.6309040000000001
	.quad	0x400852b6f19934f0              # double 3.0403880000000001
	.quad	0x40172cd74927913f              # double 5.7937900000000004
	.quad	0x401fde2fbe33acd6              # double 7.9669790000000003
	.quad	0x401bc10cb295e9e2              # double 6.9385250000000003
	.quad	0x400aa82278d0cc36              # double 3.3320970000000001
	.quad	0x400fad655e28aa43              # double 3.9596659999999999
	.quad	0x40083784ec636b09              # double 3.0271089999999998
	.quad	0x3fe3792af9a8cdea              # double 0.608541
	.quad	0x3fbc6cca2db61bb0              # double 0.11103499999999999
	.quad	0x3fed59fb1e18efbb              # double 0.91723399999999999
	.quad	0x401a782773e24fec              # double 6.6173380000000002
	.quad	0x40051ce52deca255              # double 2.6391089999999999
	.quad	0x4023337d84901d19              # double 9.6005669999999998
	.quad	0x4005a475e6362a5e              # double 2.7053029999999998
	.quad	0x4020659ddc1e7968              # double 8.1984700000000004
	.quad	0x40211b43526527a2              # double 8.553248
	.quad	0x4015bf2fdb8fde2f              # double 5.436706
	.quad	0x401b121d96e9bbf1              # double 6.7676910000000001
	.quad	0x4016a77a2cecc815              # double 5.6635520000000001
	.quad	0x4023dd05d0fa58f7              # double 9.9316849999999998
	.quad	0x40193b35f3d7d391              # double 6.307823
	.quad	0x402070409e55c0fd              # double 8.2192430000000005
	.quad	0x3ffc713f077ccc03              # double 1.7776479999999999
	.quad	0x3feace3150dae3e7              # double 0.83767000000000003
	.quad	0x401d17b6fe2e6ea8              # double 7.2731589999999997
	.quad	0x400adc6c97d8cf3a              # double 3.3576290000000002
	.quad	0x4008eaa7589efd87              # double 3.1145770000000002
	.quad	0x4022143c7d5ed070              # double 9.0395240000000001
	.quad	0x40216f3387160957              # double 8.7171900000000004
	.quad	0x3ff7dbde82d7b635              # double 1.491179
	.quad	0x40209b25f633ce64              # double 8.3030240000000006
	.quad	0x40014d8ba40d90e2              # double 2.1628639999999999
	.quad	0x3ffbef294dd72368              # double 1.745889
	.quad	0x40158fcdab191dde              # double 5.3904329999999998
	.quad	0x4021ae8b7e4de3b9              # double 8.8409080000000007
	.quad	0x40232f991bc55864              # double 9.5929649999999995
	.quad	0x40184fd933e35c5b              # double 6.0779769999999997
	.quad	0x40128c0053e2d624              # double 4.6367200000000004
	.quad	0x4020baebe596c82e              # double 8.365081
	.quad	0x3fea323fee2c98e5              # double 0.81863399999999997
	.quad	0x401adc3eb7cbb3c8              # double 6.7150829999999999
	.quad	0x401b2c258d5842b7              # double 6.7931119999999998
	.quad	0x401a56aec0724b77              # double 6.584651
	.quad	0x3fe4ea2d2fe3f35a              # double 0.653586
	.quad	0x40061d6733ebbfd7              # double 2.764357
	.quad	0x3ff4a69f05ea24cc              # double 1.2906789999999999
	.quad	0x4016eccfaeff5c6c              # double 5.7312609999999999
	.quad	0x401463964a59c066              # double 5.0972530000000003
	.quad	0x4017ec532a497fa6              # double 5.9807860000000002
	.quad	0x40204ec892ab68cf              # double 8.1538740000000001
	.quad	0x40198c0980b24207              # double 6.386755
	.quad	0x402211be8ff327aa              # double 9.0346569999999993
	.quad	0x401752bbecaab8a6              # double 5.8307950000000002
	.quad	0x400c09e44fa05144              # double 3.5048300000000001
	.quad	0x4009af98fa376923              # double 3.2107410000000001
	.quad	0x40066efb2aae2974              # double 2.8041900000000002
	.quad	0x401b5a322af57710              # double 6.838082
	.quad	0x402097d41743e964              # double 8.2965400000000002
	.quad	0x4005942e557de0d6              # double 2.6973539999999998
	.quad	0x401e8b324851a869              # double 7.6359339999999997
	.quad	0x4021897225b749ae              # double 8.7684490000000004
	.quad	0x401a575ff609dcf9              # double 6.5853270000000004
	.quad	0x4021cec02f2f9874              # double 8.90381
	.quad	0x4011ddc50ce4ead1              # double 4.4665720000000002
	.quad	0x3ff563a190082060              # double 1.336824
	.quad	0x40148225742dcf46              # double 5.1270959999999999
	.quad	0x400766d938151a43              # double 2.9252189999999998
	.quad	0x401ecc6c11a11234              # double 7.6996310000000001
	.quad	0x40204854046412cf              # double 8.1412659999999999
	.quad	0x401afdc7abfb9bed              # double 6.7478319999999998
	.quad	0x4019a7f562174c4d              # double 6.4140220000000001
	.quad	0x400338a86d71f362              # double 2.4026649999999998
	.quad	0x40025746887a8d65              # double 2.2926150000000001
	.quad	0x4023d1934efcbd55              # double 9.9093269999999993
	.quad	0x401efb85e80bed74              # double 7.745628
	.quad	0x4007d531db445ed5              # double 2.9790990000000002
	.quad	0x401f27c30d306a2b              # double 7.7888299999999999
	.quad	0x4022996f86a09891              # double 9.2996789999999994
	.quad	0x400aea3400b88ca4              # double 3.364357
	.quad	0x3ffa87a4a48f96e1              # double 1.6581159999999999
	.quad	0x401e9395810624dd              # double 7.6441249999999998
	.quad	0x401651ab4b72c519              # double 5.5797549999999996
	.quad	0x4009efee6fb4c3c2              # double 3.2421540000000002
	.quad	0x401d6efe4ffc9796              # double 7.3583920000000003
	.quad	0x402266adf71eafee              # double 9.2005459999999992
	.quad	0x4014e1b79d909f1f              # double 5.2204269999999999
	.quad	0x4003830a0b1bbcf5              # double 2.438984
	.quad	0x4015ebf8b9baa151              # double 5.4804409999999999
	.quad	0x40075c06e19b90eb              # double 2.9199350000000002
	.quad	0x40227409e55c0fcb              # double 9.2266379999999995
	.quad	0x4021eae275ab7dc8              # double 8.9587590000000006
	.quad	0x401479c94f69ca9f              # double 5.118932
	.quad	0x400c831df761cbcd              # double 3.564022
	.quad	0x4014c3f748a15981              # double 5.1913729999999996
	.quad	0x400f30b178b37004              # double 3.8987759999999998
	.quad	0x401f87ced916872b              # double 7.8826249999999999
	.quad	0x4021c5efe9318762              # double 8.8865960000000008
	.quad	0x4020fbf141205bc0              # double 8.4920749999999998
	.quad	0x40235ae9899bf594              # double 9.6775629999999992
	.quad	0x4021ddfd8adab9f5              # double 8.9335749999999994
	.quad	0x40227907b784662c              # double 9.2363870000000005
	.quad	0x40017fadafd11383              # double 2.1873429999999998
	.quad	0x3fafa311e85fd04a              # double 0.061790999999999999
	.quad	0x401b8799a1fd156a              # double 6.882422
	.quad	0x400c695182a9930c              # double 3.5514250000000001
	.quad	0x4003d3cd573647bb              # double 2.4784190000000001
	.quad	0x3fecc3ce2089e343              # double 0.89890199999999998
	.quad	0x3ff6ae9bbf0dc769              # double 1.417629
	.quad	0x3fd41ac9afe1da7b              # double 0.314135
	.quad	0x40183aa1d755bccb              # double 6.057258
	.quad	0x3fd44d056c508b33              # double 0.31720100000000001
	.quad	0x401aa64628027d89              # double 6.6623770000000002
	.quad	0x3fff9ce28ed5f139              # double 1.9758020000000001
	.quad	0x3ffec0713f077ccc              # double 1.921983
	.quad	0x4020ba9003eea20a              # double 8.3643800000000006
	.quad	0x4015bb990afe60c4              # double 5.4332010000000004
	.quad	0x40104764adff822c              # double 4.0697200000000002
	.quad	0x40188f8e7ddca4b1              # double 6.1401919999999999
	.quad	0x4021f5269595feda              # double 8.9788099999999993
	.quad	0x3fecdb9a5a89b952              # double 0.90180700000000003
	.quad	0x4007b61a1db877ab              # double 2.9639169999999999
	.quad	0x400de85553ef6b5d              # double 3.7384439999999999
	.quad	0x401026c3760bf5d8              # double 4.0378550000000004
	.quad	0x4012bc03361565c3              # double 4.6836060000000002
	.quad	0x3ff404806290eed0              # double 1.251099
	.quad	0x4021bd8d79d0a676              # double 8.8702199999999998
	.quad	0x4014e96b3354c122              # double 5.2279479999999996
	.quad	0x402029f31f46ed24              # double 8.0819329999999993
	.quad	0x400ba1e0c5a8155d              # double 3.4540419999999998
	.quad	0x3fca7cd035371972              # double 0.20693400000000001
	.quad	0x401a99c779a6b50b              # double 6.6501749999999999
	.quad	0x40004a704bc27632              # double 2.0363470000000001
	.quad	0x40183a2db61bb060              # double 6.0568150000000003
	.quad	0x3fe914e1a3f4666f              # double 0.78379900000000002
	.quad	0x4018d50374ff865d              # double 6.2080209999999996
	.quad	0x3ff517d49d7ba66a              # double 1.3183180000000001
	.quad	0x4011e91cd1c7de51              # double 4.4776490000000004
	.quad	0x3ff8e67a52ac753e              # double 1.5562689999999999
	.quad	0x400fac1871e6cd29              # double 3.959031
	.quad	0x40230309635610ae              # double 9.5059310000000004
	.quad	0x400926c226809d49              # double 3.1439249999999999
	.quad	0x40226ee4e26d4802              # double 9.2165900000000001
	.quad	0x4010882dbe7f2c30              # double 4.132987
	.quad	0x400f0471b4784231              # double 3.87717
	.quad	0x4020efea3df6db94              # double 8.4685839999999998
	.quad	0x400b35c63ae2541e              # double 3.4012570000000002
	.quad	0x401ed4d6e47dc37a              # double 7.7078509999999998
	.quad	0x40235a600b029281              # double 9.6765139999999991
	.quad	0x4008ed07852f7f4a              # double 3.1157370000000002
	.quad	0x401327ae147ae148              # double 4.7887500000000003
	.quad	0x4019658d1526d8b2              # double 6.3491710000000001
	.quad	0x4006904ab606b7aa              # double 2.8204549999999999
	.quad	0x400cefb97bb73083              # double 3.6170529999999999
	.quad	0x400f11a650614163              # double 3.8836179999999998
	.quad	0x402057e0ef99806f              # double 8.1716379999999997
	.quad	0x401d58205ff1d81f              # double 7.3360609999999999
	.quad	0x40181e84f09528f2              # double 6.0298040000000004
	.quad	0x401dfb96af038e2a              # double 7.495692
	.quad	0x401a5e7924af0bf2              # double 6.5922590000000003
	.quad	0x400242e2b8c75c4b              # double 2.2826590000000002
	.quad	0x401495fcc1871e6d              # double 5.1464720000000002
	.quad	0x4015579f23465626              # double 5.3355680000000003
	.quad	0x3ffb9859c8c9320e              # double 1.7246950000000001
	.quad	0x4023dccf28c79f66              # double 9.9312679999999993
	.quad	0x402394330d73860a              # double 9.7894520000000007
	.quad	0x3ffbb91b3f20a73f              # double 1.7326919999999999
	.quad	0x400542aed1394318              # double 2.6575600000000001
	.quad	0x40218420b3d4ae43              # double 8.7580620000000007
	.quad	0x401482af1455219b              # double 5.1276210000000004
	.quad	0x401c91b0ccbc05d5              # double 7.1422759999999998
	.quad	0x3fe06f88b9778573              # double 0.51361500000000004
	.quad	0x4009dda8bd230b9e              # double 3.2332320000000001
	.quad	0x4013df709b738e6d              # double 4.9682029999999999
	.quad	0x40129adafd113837              # double 4.6512260000000003
	.quad	0x4016c33b5393250b              # double 5.6906559999999997
	.quad	0x400b6c521dda059a              # double 3.4278909999999998
	.quad	0x3ff69c4651f3e89b              # double 1.4131530000000001
	.quad	0x400e993bc0a06ea0              # double 3.824821
	.quad	0x3fd58383ad9f0a1c              # double 0.33615200000000001
	.quad	0x40235d6da0168b5d              # double 9.6824770000000004
	.quad	0x4013bb25b317efe1              # double 4.9327610000000002
	.quad	0x401454c09c3ce209              # double 5.0827660000000003
	.quad	0x40233256ffc115df              # double 9.5983199999999992
	.quad	0x3ff6fbddfc9ff92f              # double 1.436491
	.quad	0x3fff99da9c99285b              # double 1.9750620000000001
	.quad	0x4021694d94078961              # double 8.7056699999999996
	.quad	0x4008d821af7d30ad              # double 3.1055329999999999
	.quad	0x40213ecb5350092d              # double 8.6226450000000003
	.quad	0x402225eb7457c0b1              # double 9.0740619999999996
	.quad	0x401170096feb4a66              # double 4.3594109999999997
	.quad	0x3ff3f542a23bff8b              # double 1.2473780000000001
	.quad	0x40208e731d2e0e30              # double 8.2782219999999995
	.quad	0x40121f75d9a0f0a6              # double 4.5307230000000001
	.quad	0x40118f4f50a02b84              # double 4.3899509999999999
	.quad	0x4023e7405f6ba062              # double 9.9516629999999999
	.quad	0x3fcd9e0e736049ed              # double 0.23138600000000001
	.quad	0x401878ba83f4eca7              # double 6.1178990000000004
	.quad	0x400eb7481b21c476              # double 3.839493
	.quad	0x401dd5119ce075f7              # double 7.458075
	.quad	0x40138b163baba7b9              # double 4.8858269999999999
	.quad	0x3ff494477ff151e7              # double 1.2862009999999999
	.quad	0x3fff36ec5b078d93              # double 1.950909
	.quad	0x40230b5ac8a37260              # double 9.5221769999999992
	.quad	0x401be138bcdfefbf              # double 6.9699429999999998
	.quad	0x40136f3b213e3e29              # double 4.8586239999999998
	.quad	0x400b96113404ea4b              # double 3.4482750000000002
	.quad	0x3fda26f1dc50ce4f              # double 0.40862700000000002
	.quad	0x40201861e92923e6              # double 8.0476220000000005
	.quad	0x40128c0767d34df0              # double 4.6367469999999997
	.quad	0x400b1a1986b9c305              # double 3.3877440000000001
	.quad	0x40213bbcb1cc9646              # double 8.6166739999999997
	.quad	0x401cd7ea1c68ec53              # double 7.2108540000000003
	.quad	0x4019a96f6512a950              # double 6.4154640000000001
	.quad	0x4021da749f0e4da1              # double 8.9266710000000007
	.quad	0x3fe2122962cfd8f1              # double 0.56471700000000002
	.quad	0x401bd6ec5b078d93              # double 6.959886
	.quad	0x4003001c4fc1df33              # double 2.375054
	.quad	0x3ff7d2263d816acf              # double 1.4888060000000001
	.quad	0x40176cb295e9e1b1              # double 5.8561500000000004
	.quad	0x3fe04b20fb224aae              # double 0.50917100000000004
	.quad	0x40129e6eeb702603              # double 4.6547200000000002
	.quad	0x40220b3b96af038e              # double 9.0219389999999997
	.quad	0x401e4cc9a77e5eab              # double 7.5749880000000002
	.quad	0x40231580a17b0f6b              # double 9.5419970000000002
	.quad	0x4022a012599ed7c7              # double 9.31264
	.quad	0x4021390257c914b1              # double 8.6113459999999993
	.quad	0x3ff281a261bf37b9              # double 1.156649
	.quad	0x3ff05eb851eb851f              # double 1.0231250000000001
	.quad	0x4016585dfa871a3b              # double 5.5862959999999999
	.quad	0x4014e28c79f66623              # double 5.2212389999999997
	.quad	0x40190b13dfb0d520              # double 6.2608180000000004
	.quad	0x3fee3682730c6717              # double 0.94415400000000005
	.quad	0x4018e4e1e71044f2              # double 6.2235180000000003
	.quad	0x402238856e696a27              # double 9.1103930000000002
	.quad	0x3fef638a7e73a366              # double 0.98090100000000002
	.quad	0x4013cb7e0ac7da1f              # double 4.9487230000000002
	.quad	0x3ffba48f96e15875              # double 1.727676
	.quad	0x3fcc2ea960b6f9fd              # double 0.22017400000000001
	.quad	0x40225b775b813016              # double 9.1786449999999995
	.quad	0x3fe84467381d7dbf              # double 0.75834999999999997
	.quad	0x3ff5f27674d16335              # double 1.3716950000000001
	.quad	0x3ffa28d8665e02eb              # double 1.6349720000000001
	.quad	0x400782706d506573              # double 2.9386909999999999
	.quad	0x4017ea6937d1fe65              # double 5.978917
	.quad	0x3ff36fb3b7521145              # double 1.214771
	.quad	0x40238ce67d77fae3              # double 9.7751959999999993
	.quad	0x4019dd72367e414e              # double 6.4662559999999996
	.quad	0x401eb5d9a0f0a5f0              # double 7.6775880000000001
	.quad	0x40203a1144cbe1eb              # double 8.1134129999999995
	.quad	0x3fe7e6fd651b0ccc              # double 0.74694700000000003
	.quad	0x401115c3dee78184              # double 4.271255
	.quad	0x4010e664d3bf2f55              # double 4.2249939999999997
	.quad	0x401c570196d8f4f9              # double 7.0849669999999998
	.quad	0x402010b242070b8d              # double 8.03261
	.quad	0x401792f0e0a84be4              # double 5.893497
	.quad	0x40028edcc20d562a              # double 2.3197570000000001
	.quad	0x40155142f61ed5ae              # double 5.3293569999999999
	.quad	0x40123fbb9496249a              # double 4.5622389999999999
	.quad	0x4003339b8887229f              # double 2.4001990000000002
	.quad	0x40160c579f234656              # double 5.5120529999999999
	.quad	0x4018abaa9b499d02              # double 6.167643
	.quad	0x401d3eb7cbb3c819              # double 7.311248
	.quad	0x401c6126a65cf67b              # double 7.0948739999999999
	.quad	0x4020d3aa1511dffc              # double 8.4134069999999994
	.quad	0x4021f2d6451b9303              # double 8.9742909999999991
	.quad	0x3ff7216616b54e2b              # double 1.445654
	.quad	0x4009498d477bbf94              # double 3.160914
	.quad	0x40043e3d1cc100e7              # double 2.5303900000000001
	.quad	0x40174ef3d3a1d324              # double 5.827102
	.quad	0x4013c64adff822bc              # double 4.9436450000000001
	.quad	0x4022df1a1986b9c3              # double 9.4357459999999999
	.quad	0x4020ad2b0a6fc58b              # double 8.3382190000000005
	.quad	0x401dcb15f88fc936              # double 7.4483259999999998
	.quad	0x401223760bf5d788              # double 4.5346299999999999
	.quad	0x40103178b3700475              # double 4.0483120000000001
	.quad	0x401e96f0cfe15443              # double 7.6474029999999997
	.quad	0x400486490a350d28              # double 2.565569
	.quad	0x40175c63ae2541d9              # double 5.8402240000000001
	.quad	0x4013ce8ee6b8305e              # double 4.9517170000000004
	.quad	0x4006eb05b7cfe586              # double 2.864757
	.quad	0x40135941c8216c61              # double 4.8371649999999997
	.quad	0x401678919ef954eb              # double 5.6177429999999999
	.quad	0x4022fbf4cb1897a6              # double 9.4921019999999992
	.quad	0x4010cee88df3732a              # double 4.2020590000000002
	.quad	0x3fe046cb966be7b0              # double 0.50864200000000004
	.quad	0x40047cf4623d0bfa              # double 2.561013
	.quad	0x400123d816aceaaf              # double 2.1425019999999999
	.quad	0x3fcf7cbb3c81908e              # double 0.24599399999999999
	.quad	0x4003ecd7cf5f4e44              # double 2.4906459999999999
	.quad	0x401061b93037d630              # double 4.0954329999999999
	.quad	0x3fe1e8b19a415f46              # double 0.55965500000000001
	.quad	0x402196d1bf7ad4b2              # double 8.7945689999999992
	.quad	0x4021901669ced0b3              # double 8.7814209999999999
	.quad	0x3ffdb3abc947064f              # double 1.856365
	.quad	0x401c018b0d0edc3c              # double 7.0015070000000001
	.quad	0x3ff8e55f3519bd40              # double 1.5559989999999999
	.quad	0x4020c883fd502257              # double 8.3916319999999995
	.quad	0x401430d844d013a9              # double 5.0476999999999999
	.quad	0x4023d324e9c45458              # double 9.9123909999999995
	.quad	0x4001b5bc44bf4cb2              # double 2.2137380000000002
	.quad	0x3fb3c7a398201cd6              # double 0.077265
	.quad	0x401e07928e0c9d9d              # double 7.5073949999999998
	.quad	0x40142fce746cb967              # double 5.0466860000000002
	.quad	0x4020967d77fae361              # double 8.2939260000000008
	.quad	0x4018a5aea3161a1e              # double 6.1617990000000002
	.quad	0x401395336deb95e6              # double 4.8957040000000003
	.quad	0x3ff2b16c1e364bec              # double 1.1683159999999999
	.quad	0x40235360ae9680e0              # double 9.6628469999999993
	.quad	0x40138b003686a4ca              # double 4.8857429999999997
	.quad	0x4023f9d8a5482385              # double 9.9879809999999995
	.quad	0x3ff871715c63ae25              # double 1.5276959999999999
	.quad	0x402201e0828c36db              # double 9.0036660000000008
	.quad	0x3fe91a32b12d3416              # double 0.78444800000000003
	.quad	0x401933c60029f16b              # double 6.3005599999999999
	.quad	0x4020896440f23897              # double 8.2683429999999998
	.quad	0x401f7800a7c5ac47              # double 7.8671899999999999
	.quad	0x401e3b3b7521144d              # double 7.5578440000000002
	.quad	0x3ff94b673c4f3ba7              # double 1.5809089999999999
	.quad	0x401a2a558ea7ce10              # double 6.5413420000000002
	.quad	0x4000d454152b0a70              # double 2.1036760000000001
	.quad	0x401aed1e53a81dc1              # double 6.7315610000000001
	.quad	0x3fd84d4cb9ecf638              # double 0.379718
	.quad	0x4020aa0817fc7608              # double 8.3320930000000004
	.quad	0x4021d81abd1aa822              # double 8.9220790000000001
	.quad	0x402251756c93a711              # double 9.1590989999999994
	.quad	0x4015bf5ec80c73ac              # double 5.4368850000000002
	.quad	0x3fe491e215336dec              # double 0.64280800000000005
	.quad	0x4010d6d2aa5c5f7c              # double 4.2097879999999996
	.quad	0x3fef65929670196e              # double 0.98114900000000005
	.quad	0x3ff82cabc5154867              # double 1.5109060000000001
	.quad	0x400956ea4228997c              # double 3.1674389999999999
	.quad	0x4021d690ff972474              # double 8.9190749999999994
	.quad	0x401e88f10a99b6f6              # double 7.6337320000000002
	.quad	0x3fee32c40d0aaa7e              # double 0.94369700000000001
	.quad	0x4022a0d9513f8db5              # double 9.3141580000000008
	.quad	0x4010a8e9b38d60a6              # double 4.1649539999999998
	.quad	0x40223a1dda059a74              # double 9.1135090000000005
	.quad	0x400a52502eec7c95              # double 3.2901919999999998
	.quad	0x4000b17ce52deca2              # double 2.0866639999999999
	.quad	0x40024e4755ffe6d6              # double 2.2882220000000002
	.quad	0x400f82d7b634dad3              # double 3.9388879999999999
	.quad	0x3fc6f3fd933e35c6              # double 0.17932100000000001
	.quad	0x40008f32bdc26dce              # double 2.0699209999999999
	.quad	0x4016c41a6937d1fe              # double 5.6915069999999996
	.quad	0x3fc52391d57ff9b5              # double 0.16514799999999999
	.quad	0x402114f206423960              # double 8.5409089999999992
	.quad	0x4010e5d78811b1d9              # double 4.2244549999999998
	.quad	0x401fdaacd9e83e42              # double 7.9635499999999997
	.quad	0x4022b85729b280f1              # double 9.3600399999999996
	.quad	0x40191a98eda22f6a              # double 6.2759739999999997
	.quad	0x3fe2d92b7fe08af0              # double 0.58901000000000003
	.quad	0x401273f961804d98              # double 4.6132559999999998
	.quad	0x40158364bec679cc              # double 5.3783139999999996
	.quad	0x3ff4446a5d6bebe1              # double 1.2667029999999999
	.quad	0x4002e2ee41919ac8              # double 2.3608060000000002
	.quad	0x401691ac9afe1da8              # double 5.6422600000000003
	.quad	0x400c56052502eec8              # double 3.5420020000000001
	.quad	0x4011aa51e321a2e8              # double 4.416328
	.quad	0x3ff7538ef34d6a16              # double 1.4579
	.quad	0x401666683c297bfa              # double 5.6000069999999997
	.quad	0x401128af3e468cac              # double 4.2897309999999997
	.quad	0x401d48e581cf7879              # double 7.3211880000000003
	.quad	0x401794f5903a7547              # double 5.8954680000000002
	.quad	0x402036672fba01ef              # double 8.1062560000000001
	.quad	0x40232826edaa92e6              # double 9.5784219999999998
	.quad	0x4023368b9fdbd2fa              # double 9.6065339999999999
	.quad	0x401e85c67dfe32a0              # double 7.6306399999999996
	.quad	0x402225c7cd898b2f              # double 9.0737900000000007
	.quad	0x40224713cee9dd7f              # double 9.1388230000000004
	.quad	0x40114a95c853c148              # double 4.3228369999999998
	.quad	0x3ffeb9b456b441bc              # double 1.9203380000000001
	.quad	0x401f8d7ecbb7f9d7              # double 7.888179
	.quad	0x3ffada7f3cf70154              # double 1.6783440000000001
	.quad	0x401e69dcf893faf4              # double 7.6033819999999999
	.quad	0x4010cae9ee45c359              # double 4.1981580000000003
	.quad	0x40112506573215fd              # double 4.2861570000000002
	.quad	0x40121474107314cb              # double 4.5199740000000004
	.quad	0x401dddf69878316a              # double 7.466761
	.quad	0x40116a37ac3eb7cc              # double 4.3537280000000003
	.quad	0x3ff6feb6bf444e0e              # double 1.4371860000000001
	.quad	0x401a4cf28c79f666              # double 6.5751439999999999
	.quad	0x40123d0d0678c005              # double 4.5596199999999998
	.quad	0x3fd5a7264a16a487              # double 0.33832699999999999
	.quad	0x4020df09528f190d              # double 8.4356179999999998
	.quad	0x400ced4bad7d7c2d              # double 3.6158670000000002
	.quad	0x400b9460aa64c2f8              # double 3.4474499999999999
	.quad	0x3ff52fd00713f078              # double 1.324173
	.quad	0x40177d1f601797cc              # double 5.8721899999999998
	.quad	0x402117080303c07f              # double 8.5449830000000002
	.quad	0x402138f10a99b6f6              # double 8.6112140000000004
	.quad	0x4012cc2e770bd018              # double 4.6993960000000001
	.quad	0x3fffa653868fd19a              # double 1.9781070000000001
	.quad	0x4015964020817fc7              # double 5.3967289999999997
	.quad	0x401189bcba301217              # double 4.3845090000000004
	.quad	0x40107f6db940fece              # double 4.1244420000000002
	.quad	0x401d09e279dd3bb0              # double 7.2596530000000001
	.quad	0x4011db77c02afddb              # double 4.4643240000000004
	.quad	0x4021b604189374bc              # double 8.8554999999999992
	.quad	0x3fda6e115592d98c              # double 0.412968
	.quad	0x400c8f2734f82f51              # double 3.5698989999999999
	.quad	0x40140de7a743a648              # double 5.013579
	.quad	0x40024806290eed03              # double 2.2851680000000001
	.quad	0x4014f0739b024f66              # double 5.2348160000000004
	.quad	0x4022696851223183              # double 9.2058739999999997
	.quad	0x401a1901d19157ac              # double 6.5244210000000002
	.quad	0x4016bae5796bfca8              # double 5.6825159999999997
	.quad	0x3ffaee525892684d              # double 1.683184
	.quad	0x401eb56b00ffda40              # double 7.6771659999999997
	.quad	0x40212b1ab0856e69              # double 8.5841879999999993
	.quad	0x4016315bdd76683c              # double 5.5482019999999999
	.quad	0x4015b116a8b8f14e              # double 5.4229380000000003
	.quad	0x3ff9b906466b1e5c              # double 1.607672
	.quad	0x3ff5085e3da2f8be              # double 1.314543
	.quad	0x3ff6b34d6a161e4f              # double 1.4187749999999999
	.quad	0x3ff6671ef30a4e38              # double 1.4001760000000001
	.quad	0x400346490a350d28              # double 2.409319
	.quad	0x4007f3721d53cddd              # double 2.9938699999999998
	.quad	0x3ff5492ddbdb5d89              # double 1.3303659999999999
	.quad	0x4020c58f2e05ccc9              # double 8.3858580000000007
	.quad	0x4022c4460ed80a18              # double 9.3833470000000005
	.quad	0x402385821294573a              # double 9.7607579999999992
	.quad	0x4019988b11409a24              # double 6.398968
	.quad	0x40122bbcb1cc9646              # double 4.5427119999999999
	.quad	0x401da26202539757              # double 7.4085770000000002
	.quad	0x40010278d0cc35ce              # double 2.126207
	.quad	0x3fdc3f39d1b2e59b              # double 0.441359
	.quad	0x400ed2fc2656abde              # double 3.8530199999999999
	.quad	0x4018d4ead0c3d252              # double 6.2079269999999998
	.quad	0x401464d6a161e4f7              # double 5.0984749999999996
	.quad	0x3ff88ee17a02fb5d              # double 1.534883
	.quad	0x4003aa0cae642bfa              # double 2.4580320000000002
	.quad	0x4014e6edaa92e621              # double 5.2255159999999998
	.quad	0x40142955f78359bc              # double 5.0403669999999998
	.quad	0x40202908c3f3e037              # double 8.0801449999999999
	.quad	0x4020bd2178f68be3              # double 8.3693960000000001
	.quad	0x40214e3886594af5              # double 8.6527750000000001
	.quad	0x401a3132b55ef1fe              # double 6.5480450000000001
	.quad	0x4004a06c8711d799              # double 2.5783320000000001
	.quad	0x400baab14ec204f3              # double 3.4583460000000001
	.quad	0x401e04c55432873c              # double 7.5046590000000002
	.quad	0x4010143c7d5ed070              # double 4.0197620000000001
	.quad	0x400188dc981beb18              # double 2.191827
	.quad	0x40123cdf69878317              # double 4.5594460000000003
	.quad	0x40129b69db65ecc4              # double 4.6517710000000001
	.quad	0x400a0813cab81f97              # double 3.2539440000000002
	.quad	0x3ff65f4f50a02b84              # double 1.398269
	.quad	0x401d24b407032980              # double 7.2858429999999998
	.quad	0x40216263d816aceb              # double 8.6921680000000006
	.quad	0x4022db93ab430f49              # double 9.4288609999999994
	.quad	0x4022170b8cfbfc65              # double 9.0450099999999996
	.quad	0x401076dacabc5155              # double 4.1160690000000004
	.quad	0x3fc2da6612839043              # double 0.14729
	.quad	0x402121a0ad8a1166              # double 8.5656789999999994
	.quad	0x40103f97edc7ef17              # double 4.0621029999999996
	.quad	0x3fc69ea140570825              # double 0.17671600000000001
	.quad	0x401243cff64cf8d7              # double 4.5662229999999999
	.quad	0x401877531db445ed              # double 6.1165279999999997
	.quad	0x401752fdfc19c172              # double 5.8310469999999999
	.quad	0x4000081fd9ba1b19              # double 2.0039669999999998
	.quad	0x4001f8d1d8a54824              # double 2.2464940000000002
	.quad	0x3ff2a7f6f4be835e              # double 1.166007
	.quad	0x3fe16b24a6a875d5              # double 0.54432899999999995
	.quad	0x40120c404a72ead9              # double 4.5119639999999999
	.quad	0x402082a6d2674081              # double 8.255179
	.quad	0x3fec20fb224aada3              # double 0.87902599999999997
	.quad	0x401b8ac215b9a5a9              # double 6.8855060000000003
	.quad	0x40046e79aae6c8f7              # double 2.5539429999999999
	.quad	0x3fec3b0a2ca9ac36              # double 0.88220699999999996
	.quad	0x4009464ba94bbe44              # double 3.1593239999999998
	.quad	0x4020262435696e59              # double 8.0744950000000006
	.quad	0x3ffd98d5842b734b              # double 1.8498129999999999
	.quad	0x401e2d44998d0460              # double 7.5442070000000001
	.quad	0x401838427418d691              # double 6.0549410000000004
	.quad	0x401387ad4b2745bf              # double 4.8824969999999999
	.quad	0x401b9207d4e09785              # double 6.8926080000000001
	.quad	0x40198f11b60ae968              # double 6.389716
	.quad	0x40189c575c0767d3              # double 6.1526769999999997
	.quad	0x4003311f0c34c1a9              # double 2.3989850000000001
	.quad	0x40078393ee5eedcc              # double 2.9392469999999999
	.quad	0x4007c7746887a8d6              # double 2.9723899999999999
	.quad	0x3fb9c9f72f76e610              # double 0.10073799999999999
	.quad	0x3fd214c22ee4191a              # double 0.28251700000000002
	.quad	0x3fe2a9a3d2d87f88              # double 0.58320799999999995
	.quad	0x401cab8f9b13165d              # double 7.1675399999999998
	.quad	0x401c893bc0a06ea0              # double 7.1340170000000001
	.quad	0x4014b7f5a5332ad0              # double 5.1796480000000003
	.quad	0x401f0b790fb65669              # double 7.7612040000000002
	.quad	0x400fcb5d462c343b              # double 3.9742989999999998
	.quad	0x401889d16fc9bc77              # double 6.1345879999999999
	.quad	0x401751d2178f68be              # double 5.8299029999999998
	.quad	0x400ebeb851eb851f              # double 3.8431250000000001
	.quad	0x401671882adc4c9d              # double 5.6108710000000004
	.quad	0x401cd9bcba301217              # double 7.2126340000000004
	.quad	0x400ff3f1843c3a43              # double 3.994113
	.quad	0x401b980e8c8abd5e              # double 6.8984930000000002
	.quad	0x400ba5dc8323358f              # double 3.4559869999999999
	.quad	0x401949fb6134ce3e              # double 6.3222480000000001
	.quad	0x3ff331550ca1cef2              # double 1.1995439999999999
	.quad	0x40151cbea4ebdd33              # double 5.2780709999999997
	.quad	0x40147ca643cc07ab              # double 5.1217280000000001
	.quad	0x4003bcce1c58255b              # double 2.46719
	.quad	0x40235c5f17bd8be7              # double 9.6804129999999997
	.quad	0x4021f92bc2fc6973              # double 8.9866620000000008
	.quad	0x401d265f5275ee9a              # double 7.2874730000000003
	.quad	0x3fec4167a95c853c              # double 0.88298399999999999
	.quad	0x400a7e154434e337              # double 3.3115640000000002
	.quad	0x40225071c53f39d2              # double 9.1571180000000005
	.quad	0x401286ab9b23dd55              # double 4.6315140000000001
	.quad	0x401251611ba3ca75              # double 4.579472
	.quad	0x4017f2eec7c957cd              # double 5.9872389999999998
	.quad	0x400caa5bd944aa54              # double 3.583183
	.quad	0x400199c0ebedfa44              # double 2.200075
	.quad	0x40235bff8a8f3a9b              # double 9.6796839999999999
	.quad	0x40078880d801b435              # double 2.9416519999999999
	.quad	0x4022f5add9c27e95              # double 9.4798419999999996
	.quad	0x400bb6aad1d041cc              # double 3.4641929999999999
	.quad	0x40217039abf33871              # double 8.7191899999999993
	.quad	0x4002f25edd052935              # double 2.3683450000000001
	.quad	0x40235a2c45026890              # double 9.6761189999999999
	.quad	0x4012bd527e521577              # double 4.6848850000000004
	.quad	0x40170fc158fb43d9              # double 5.7653860000000003
	.quad	0x3fefd2b4d8ba40d9              # double 0.99447099999999999
	.quad	0x400264dd2f1a9fbe              # double 2.2992499999999998
	.quad	0x4008bff69014b59a              # double 3.0937320000000001
	.quad	0x402030433d6c7219              # double 8.0942629999999998
	.quad	0x401d8c7325918a01              # double 7.3871580000000003
	.quad	0x3ff65d5a187a4a49              # double 1.397791
	.quad	0x4008ad58c8eef1bb              # double 3.0846420000000001
	.quad	0x4020d285015c2092              # double 8.4111709999999995
	.quad	0x401af276b7ed41b7              # double 6.7367809999999997
	.quad	0x401716b441bb8c33              # double 5.7721720000000003
	.quad	0x400a5886df82b1f7              # double 3.2932260000000002
	.quad	0x401cb5a74c09c3ce              # double 7.1773959999999999
	.quad	0x3fbb059641f64495              # double 0.105554
	.quad	0x4012ac7de5082cf5              # double 4.6684489999999998
	.quad	0x4010865cf67b1c00              # double 4.1312139999999999
	.quad	0x401230e410b630a9              # double 4.5477449999999999
	.quad	0x401fcfebd09e12a5              # double 7.9530479999999998
	.quad	0x4023a829cfdd2285              # double 9.8284439999999992
	.quad	0x3ffc226a22b3892f              # double 1.758402
	.quad	0x4023e12cadddf43c              # double 9.9397939999999991
	.quad	0x4012fc70867ad8e4              # double 4.7465229999999998
	.quad	0x3ffa3c68661ae70c              # double 1.639748
	.quad	0x4012670c564f97ee              # double 4.6006330000000002
	.quad	0x4010d5515054ac2a              # double 4.2083180000000002
	.quad	0x4019d8398a654930              # double 6.461157
	.quad	0x40202b3f20a73f75              # double 8.0844660000000008
	.quad	0x3f68c197e5647347              # double 0.0030219999999999999
	.quad	0x4023030a2ca9ac36              # double 9.5059369999999994
	.quad	0x400fbc304ccee5ac              # double 3.9668890000000001
	.quad	0x400fe60d4562e0a0              # double 3.98733
	.quad	0x4018108c8259e1f4              # double 6.0161610000000003
	.quad	0x4011f11947cfa26a              # double 4.4854479999999999
	.quad	0x40052f6f8f041462              # double 2.6481620000000001
	.quad	0x40098bd5dc400757              # double 3.193279
	.quad	0x400c5e3e29307af2              # double 3.546017
	.quad	0x4010c1151611ba3d              # double 4.1885570000000003
	.quad	0x40235e1fc08fa7a8              # double 9.6838359999999994
	.quad	0x401785379fa97e13              # double 5.8800949999999998
	.quad	0x4020869d51b4fe7a              # double 8.2629190000000001
	.quad	0x401162b3cc4ac6ce              # double 4.3463890000000003
	.quad	0x3fd06e7e62dc6e2b              # double 0.25674400000000003
	.quad	0x40227f84a9478c87              # double 9.2490590000000008
	.quad	0x4015997c80841ede              # double 5.3998889999999999
	.quad	0x3fe4836006d0d499              # double 0.64103699999999997
	.quad	0x4022101bc98a222d              # double 9.0314619999999994
	.quad	0x401c3898b2e9ccb8              # double 7.0552700000000002
	.quad	0x40151d627bf61aa4              # double 5.2786960000000001
	.quad	0x4020b9487768166a              # double 8.3618810000000003
	.quad	0x3fe06b3354c12275              # double 0.51308600000000004
	.quad	0x40172e8ea39c51db              # double 5.7954660000000002
	.quad	0x402064b3a2595bbc              # double 8.1966830000000001
	.quad	0x3fe29acbc8c0ce92              # double 0.58139600000000002
	.quad	0x400624449dbec248              # double 2.767709
	.quad	0x3ffd3af533f42353              # double 1.826894
	.quad	0x3ff1026aa8eb4635              # double 1.0630900000000001
	.quad	0x400e7f7a4e7ab756              # double 3.8122449999999999
	.quad	0x3ff34be5109070fc              # double 1.206029
	.quad	0x40235c6eb0b7c350              # double 9.6805319999999995
	.quad	0x40030a4441787054              # double 2.3800129999999999
	.quad	0x401592ae8e1d6495              # double 5.3932440000000001
	.quad	0x40238b4bb5e0f7fd              # double 9.772062
	.quad	0x401a388ebcc6c54c              # double 6.5552320000000002
	.quad	0x401edf4517614595              # double 7.7180369999999998
	.quad	0x40232a116659d12d              # double 9.5821640000000005
	.quad	0x401106c764adff82              # double 4.2566199999999998
	.quad	0x3ffc804b7f5a5333              # double 1.7813220000000001
	.quad	0x3ffff6aa4b9884c7              # double 1.9977210000000001
	.quad	0x401761f14983d790              # double 5.8456469999999996
	.quad	0x40153bc169c23b79              # double 5.3083549999999997
	.quad	0x3fdbc3e3193f6c27              # double 0.43383100000000002
	.quad	0x401a698f1d3ed528              # double 6.6030850000000001
	.quad	0x401341565c2d2780              # double 4.8138059999999996
	.quad	0x401c647a5b0ff10f              # double 7.0981230000000002
	.quad	0x4005bbd273d5bab2              # double 2.71671
	.quad	0x400bf2d666a98245              # double 3.493573
	.quad	0x4019d4267839cd81              # double 6.4571779999999999
	.quad	0x400ab4573a797892              # double 3.3380570000000001
	.quad	0x4006d4a44c7b02d6              # double 2.8538290000000002
	.quad	0x4022f7b86f47b678              # double 9.483829
	.quad	0x400c2d3e0bd44999              # double 3.5220910000000001
	.quad	0x401580ae536501e2              # double 5.3756649999999997
	.quad	0x401a17746887a8d6              # double 6.5229049999999997
	.quad	0x4005cb8a5ce5b424              # double 2.7243849999999998
	.quad	0x3fedfb8b26394fad              # double 0.93695600000000001
	.quad	0x4016d83a96d4c33b              # double 5.7111609999999997
	.quad	0x3ff3ba9c12f09d8c              # double 1.2330589999999999
	.quad	0x3ff691a543f1c758              # double 1.410558
	.quad	0x4006b5fd47bedb73              # double 2.8388620000000002
	.quad	0x4019e31055b89939              # double 6.4717419999999999
	.quad	0x3fccb75ea67e846a              # double 0.22434599999999999
	.quad	0x3fe309b0ee49f517              # double 0.59493300000000005
	.quad	0x400b493e1c9b413a              # double 3.4107630000000002
	.quad	0x4003d6177ea1c68f              # double 2.4795370000000001
	.quad	0x4010a0ee49f51698              # double 4.157159
	.quad	0x401a94c729f59cd0              # double 6.6452910000000003
	.quad	0x3f98f605ab3aabcd              # double 0.024375999999999998
	.quad	0x401cc7fa5d28d003              # double 7.1952910000000001
	.quad	0x4014f9e3c968943e              # double 5.2440329999999999
	.quad	0x3ff5d4c55432873c              # double 1.364446
	.quad	0x4005d591cd1c7de5              # double 2.729282
	.quad	0x400abd8c6d612c6b              # double 3.3425530000000001
	.quad	0x400c80c069e7fb26              # double 3.5628669999999998
	.quad	0x40191408d8ec95c0              # double 6.2695650000000001
	.quad	0x401d1fbb0e5e6794              # double 7.2809869999999997
	.quad	0x40094f28c79f6662              # double 3.1636519999999999
	.quad	0x4003310ba6266fd6              # double 2.3989479999999999
	.quad	0x4004a523704790b8              # double 2.5806339999999999
	.quad	0x4021b9e44fa05144              # double 8.8630700000000004
	.quad	0x40142c729f59ccfb              # double 5.0434060000000001
	.quad	0x401e2ea39c51dabe              # double 7.5455459999999999
	.quad	0x400d172ef0ae5365              # double 3.63632
	.quad	0x401cab220791c4b9              # double 7.167122
	.quad	0x40169349be8ff328              # double 5.6438360000000003
	.quad	0x4014af1a1986b9c3              # double 5.170998
	.quad	0x4021ab70cdc8754f              # double 8.8348449999999996
	.quad	0x3fe694ca925fe975              # double 0.70566300000000004
	.quad	0x401ba8dd1e53a81e              # double 6.9149060000000002
	.quad	0x4021c75b1c864884              # double 8.889367
	.quad	0x3ff652a0ec743201              # double 1.395173
	.quad	0x401646c1e364bec6              # double 5.5690989999999996
	.quad	0x401aa94185058dde              # double 6.6652889999999996
	.quad	0x401877e996312f4d              # double 6.117102
	.quad	0x401b41b60ae9680e              # double 6.814171
	.quad	0x4021ca1294573a79              # double 8.8946729999999992
	.quad	0x4008d9e8c47a17f4              # double 3.106401
	.quad	0x4023d3804534bd77              # double 9.9130880000000001
	.quad	0x4021fd3d4280ae10              # double 8.9946079999999995
	.quad	0x3fff75a426bb55ac              # double 1.966221
	.quad	0x40072516db0dd830              # double 2.8931100000000001
	.quad	0x401d60e8427418d7              # double 7.3446360000000004
	.quad	0x401228130164840e              # double 4.5391349999999999
	.quad	0x4023b436976bc1f0              # double 9.851979
	.quad	0x4006250e779207d5              # double 2.7680940000000001
	.quad	0x3ff5257eaa2a0a96              # double 1.3216540000000001
	.quad	0x4007e443914f483d              # double 2.9864570000000001
	.quad	0x400d1a1db877ab32              # double 3.6377519999999999
	.quad	0x402015ef416bdb1a              # double 8.0428409999999992
	.quad	0x4020be8d10f51aca              # double 8.3721700000000006
	.quad	0x401680a6b93ccd10              # double 5.6256360000000001
	.quad	0x40173fbc1acde1a0              # double 5.8122410000000002
	.quad	0x401746e9bbf0dc77              # double 5.8192510000000004
	.quad	0x4001b9a38fbca106              # double 2.2156440000000002
	.quad	0x401319ed3953dea4              # double 4.7753189999999996
	.quad	0x400ecb44a1f08030              # double 3.8492519999999999
	.quad	0x402134e5d5b24e9c              # double 8.6033159999999995
	.quad	0x4021a1cc100e6afd              # double 8.8160100000000003
	.quad	0x401a9a808c8259e2              # double 6.650881
	.quad	0x4020208e9b38d60a              # double 8.0635879999999993
	.quad	0x4022f9ea35935fc4              # double 9.4881150000000005
	.quad	0x4016ef4491298890              # double 5.7336600000000004
	.quad	0x40016353f7ced917              # double 2.1735000000000002
	.quad	0x4022921ea35935fc              # double 9.2853899999999995
	.quad	0x3ffe0d3bf2f55582              # double 1.878231
	.quad	0x401668ba40d90e24              # double 5.6022730000000003
	.quad	0x3ff9f0856e696a27              # double 1.621221
	.quad	0x400ae7da1ec4e725              # double 3.3632089999999999
	.quad	0x4014b260f5e41d4b              # double 5.1741979999999996
	.quad	0x401d4b93037d6302              # double 7.3238029999999998
	.quad	0x4023f4020817fc76              # double 9.9765779999999999
	.quad	0x400ebcb46bacf744              # double 3.8421409999999998
	.quad	0x3ff9fc4b09e98dce              # double 1.6240950000000001
	.quad	0x4014a0d9513f8db5              # double 5.1570790000000004
	.quad	0x3fd8c19c17225b75              # double 0.38681700000000002
	.quad	0x40142da87a072d1b              # double 5.0445880000000001
	.quad	0x4022dbe5109070fc              # double 9.4294820000000001
	.quad	0x402063e24febd09e              # double 8.1950859999999999
	.quad	0x4021e2fa7221858c              # double 8.9433170000000004
	.quad	0x3ffe23d3e4ef0282              # double 1.8837470000000001
	.quad	0x40110ee2003ab863              # double 4.2645340000000003
	.quad	0x40191794ea077037              # double 6.2730290000000002
	.quad	0x401ef2e59af9ebea              # double 7.7372040000000002
	.quad	0x40082318b9346994              # double 3.017137
	.quad	0x40062f37fbefd007              # double 2.773056
	.quad	0x3ffb9c03361565c3              # double 1.725589
	.quad	0x400e6746455eaee2              # double 3.800427
	.quad	0x401b3df86e3b46fe              # double 6.8105180000000001
	.quad	0x400e7487fcb923a3              # double 3.8069000000000002
	.quad	0x3fe168ee6b8305d9              # double 0.54405899999999996
	.quad	0x3fba9dc725c3dee8              # double 0.10397000000000001
	.quad	0x40192a7935760392              # double 6.2914779999999997
	.quad	0x40227b5807fed203              # double 9.2409060000000007
	.quad	0x40013143bf727137              # double 2.1490550000000002
	.quad	0x400dbbc1acde19fc              # double 3.7166779999999999
	.quad	0x4022a880f98fa377              # double 9.3291090000000008
	.quad	0x40190f15a4acf313              # double 6.2647310000000003
	.quad	0x40177e28240b7803              # double 5.8731999999999998
	.quad	0x4022728e2e2b8c76              # double 9.2237410000000004
	.quad	0x4001cd3f9e7b80aa              # double 2.2252190000000001
	.quad	0x4020352deca2552a              # double 8.103866
	.quad	0x4019fb18dac258d6              # double 6.4952120000000004
	.quad	0x4006cb5b2d4d4025              # double 2.8492950000000001
	.quad	0x401c6b8348f53c58              # double 7.1049930000000003
	.quad	0x400f665061416378              # double 3.9249580000000002
	.quad	0x401449ee88df3733              # double 5.0721990000000003
	.quad	0x4007cc7f34938583              # double 2.9748519999999998
	.quad	0x3fd7a59c065b63d4              # double 0.36948300000000001
	.quad	0x40000c79702e6645              # double 2.0060910000000001
	.quad	0x401022cecc814d72              # double 4.0339919999999996
	.quad	0x3fea0f5e41d4b6a6              # double 0.81437599999999999
	.quad	0x4022b319a415f45e              # double 9.3498049999999999
	.quad	0x40022d44dca8e2e3              # double 2.2721040000000001
	.quad	0x401f71b21c475e63              # double 7.8610309999999996
	.quad	0x401288cbd1244a62              # double 4.6335899999999999
	.quad	0x4023e2a2c2374795              # double 9.9426480000000001
	.quad	0x3ff5ee8af81626b3              # double 1.370738
	.quad	0x400a7aec4a4095f2              # double 3.3100209999999999
	.quad	0x401e7d7cf5f4e443              # double 7.6225469999999999
	.quad	0x4021214c01605250              # double 8.5650329999999997
	.quad	0x4018909917939a7c              # double 6.1412089999999999
	.quad	0x4017d278d0cc35ce              # double 5.9555389999999999
	.quad	0x401e89c4113c6866              # double 7.6345369999999999
	.quad	0x40089d095af294dd              # double 3.0766779999999998
	.quad	0x3fe3aad81adea897              # double 0.61460499999999996
	.quad	0x4023bd9d12cadddf              # double 9.8703389999999995
	.quad	0x4020c437a3db3bfb              # double 8.3832369999999994
	.quad	0x400ecf60e0eb67c3              # double 3.8512590000000002
	.quad	0x400aa9e4d5d80e49              # double 3.3329559999999998
	.quad	0x401e98a3b57c4e2f              # double 7.6490619999999998
	.quad	0x4022832745bf26f2              # double 9.2561590000000002
	.quad	0x40144c271fff79c8              # double 5.0743679999999998
	.quad	0x400fe24bba12b5e5              # double 3.9854959999999999
	.quad	0x4020b5eacc92146a              # double 8.3553069999999998
	.quad	0x4013cc90c4dec1c2              # double 4.9497710000000001
	.quad	0x4020bbd31b9b66f9              # double 8.3668449999999996
	.quad	0x4011ce75ff609dd0              # double 4.4516220000000004
	.quad	0x4021dd976ff3ade2              # double 8.9327959999999997
	.quad	0x3fd9f262888b545c              # double 0.40541899999999997
	.quad	0x40152b499d0203e6              # double 5.2922729999999998
	.quad	0x401c4e264e48626f              # double 7.0763179999999997
	.quad	0x4020452b4d8ba40e              # double 8.1350960000000008
	.quad	0x400cf0b9dc2f405f              # double 3.6175419999999998
	.quad	0x40150f748a159818              # double 5.2650930000000002
	.quad	0x4014ba46e08f2171              # double 5.1819110000000004
	.quad	0x40149d19157abb88              # double 5.153416
	.quad	0x40192ec80c73abc9              # double 6.2956849999999998
	.quad	0x401faf10a99b6f5d              # double 7.9209620000000002
	.quad	0x3febc297bfa4c61e              # double 0.86750400000000005
	.quad	0x4010b09d495182aa              # double 4.1724750000000004
	.quad	0x400dee4a7b4e54f8              # double 3.7413530000000002
	.quad	0x4013004ff43419e3              # double 4.750305
	.quad	0x4023dcf67b1c0011              # double 9.9315680000000003
	.quad	0x3ff21057d1782d38              # double 1.1289899999999999
	.quad	0x40177b4959e62563              # double 5.8703969999999996
	.quad	0x4015808a265f0f5a              # double 5.3755269999999999
	.quad	0x401b95bff04577d9              # double 6.8962399999999997
	.quad	0x4018a70f3882278d              # double 6.163144
	.quad	0x3fc640420f6f08cc              # double 0.17383599999999999
	.quad	0x4022297df19d66ae              # double 9.0810390000000005
	.quad	0x40214ccc25072086              # double 8.6499950000000005
	.quad	0x401801db445ed4a2              # double 6.0018130000000003
	.quad	0x4004f3682730c671              # double 2.6188509999999998
	.quad	0x3fb378140dd3fe19              # double 0.076050999999999994
	.quad	0x4008ffe08aefb2ab              # double 3.1249400000000001
	.quad	0x4017f3a190082060              # double 5.987921
	.quad	0x4013d742dcf4623d              # double 4.960216
	.quad	0x4023f92923e5b856              # double 9.9866419999999998
	.quad	0x3fc54cc25072085b              # double 0.166405
	.quad	0x400abf7403dddb12              # double 3.343483
	.quad	0x40007a67a52ac754              # double 2.059768
	.quad	0x4011413c68661ae7              # double 4.313707
	.quad	0x40226341bfbdf091              # double 9.1938610000000001
	.quad	0x3ff5891afc04c8bd              # double 1.3459730000000001
	.quad	0x4020b24cc6822ff1              # double 8.3482420000000008
	.quad	0x40229043a2163fdd              # double 9.2817659999999993
	.quad	0x40076d1633482be9              # double 2.9282650000000001
	.quad	0x401cd5892684cf07              # double 7.2085309999999998
	.quad	0x3ff91d0e991ff716              # double 1.5695939999999999
	.quad	0x4021affd60e94ee4              # double 8.8437300000000007
	.quad	0x40086da2b5a20ddc              # double 3.0535329999999998
	.quad	0x401baf63c31df762              # double 6.9212790000000002
	.quad	0x400664a9cdc44391              # double 2.7991519999999999
	.quad	0x40109767903211cb              # double 4.147856
	.quad	0x40073f18c9fb6135              # double 2.9058090000000001
	.quad	0x3fe0a4a48f96e158              # double 0.52009799999999995
	.quad	0x3ff8cafc47e49b20              # double 1.5495570000000001
	.quad	0x401e5506573215fd              # double 7.5830320000000002
	.quad	0x402078b0f27bb2ff              # double 8.2357250000000004
	.quad	0x401d38bc59b8023a              # double 7.3054059999999996
	.quad	0x4022d70329802c0a              # double 9.4199459999999995
	.quad	0x4017eecdd0d8cb08              # double 5.9832070000000002
	.quad	0x401cf144cbe1eb42              # double 7.235614
	.quad	0x401b7b3b320535ca              # double 6.8703430000000001
	.quad	0x4022aa6b723ee1bd              # double 9.3328509999999998
	.quad	0x4012aface67d77fb              # double 4.6715580000000001
	.quad	0x40223a71de69ad43              # double 9.1141500000000004
	.quad	0x401d93e78e1932d7              # double 7.3944380000000001
	.quad	0x401bba350d2806af              # double 6.9318429999999998
	.quad	0x4002d528f190d174              # double 2.354082
	.quad	0x3fd7db4cc2507208              # double 0.37275999999999998
	.quad	0x3ff923a6ce358299              # double 1.571204
	.quad	0x4002fd72bcb5fe54              # double 2.3737539999999999
	.quad	0x40047b078d92fb1a              # double 2.560073
	.quad	0x400b03be6601bc99              # double 3.3768280000000002
	.quad	0x3fb61bb05faebc41              # double 0.086360000000000006
	.quad	0x40132bccf28c79f6              # double 4.7927739999999996
	.quad	0x40207bc1acde19fc              # double 8.2417119999999997
	.quad	0x401bdfd8adab9f56              # double 6.9686000000000003
	.quad	0x4014de75360d0247              # double 5.217244
	.quad	0x40119d288ce703b0              # double 4.4034750000000003
	.quad	0x400216cdf266ba49              # double 2.2611349999999999
	.quad	0x3ff543ed959a3098              # double 1.3290839999999999
	.quad	0x3ffd039abf338716              # double 1.81338
	.quad	0x401da4ff865d7cb3              # double 7.4111310000000001
	.quad	0x3ffc23d0bfa09460              # double 1.7587440000000001
	.quad	0x4014e32b12d3415b              # double 5.2218439999999999
	.quad	0x3ff1b22c01e68a0d              # double 1.105999
	.quad	0x400e9ac03ff69015              # double 3.8255620000000001
	.quad	0x40237fa67a52ac75              # double 9.7493169999999995
	.quad	0x4019fd2ae8e1d649              # double 6.4972339999999997
	.quad	0x400f17a3db3bfb59              # double 3.8865430000000001
	.quad	0x401e75cfaacd9e84              # double 7.6150500000000001
	.quad	0x4023d38327674d16              # double 9.9131099999999996
	.quad	0x400214e1a3f4666f              # double 2.2601960000000001
	.quad	0x401d8cc78e9f6a94              # double 7.38748
	.quad	0x3fe0eddaceee0f3d              # double 0.52903500000000003
	.quad	0x3ffd8578e5c4eb57              # double 1.845086
	.quad	0x3fbfb23571d1d474              # double 0.12381300000000001
	.quad	0x401d77243137b070              # double 7.3663489999999996
	.quad	0x4020581cb46bacf7              # double 8.1720939999999995
	.quad	0x40049f8a8f3a9b07              # double 2.5779010000000002
	.quad	0x4023c0f1d3ed527e              # double 9.8768449999999994
	.quad	0x400d8b11c6d1e109              # double 3.6929050000000001
	.quad	0x4021d29a1b9f98b7              # double 8.9113319999999998
	.quad	0x401dcf27fe4bcada              # double 7.4523010000000003
	.quad	0x40200b90a7829069              # double 8.0225880000000007
	.quad	0x401e86d82ba5a038              # double 7.6316839999999999
	.quad	0x400880fecdd0d8cb              # double 3.062986
	.quad	0x40206b1b152f3c2e              # double 8.2091910000000006
	.quad	0x3ff5df71eafee6fb              # double 1.3670519999999999
	.quad	0x40111302f72b4528              # double 4.2685659999999999
	.quad	0x401e43343fa2ad3f              # double 7.5656290000000003
	.quad	0x4023791f926c7eae              # double 9.7365689999999994
	.quad	0x4022e56c508b32cf              # double 9.4480920000000008
	.quad	0x402220d823422468              # double 9.0641490000000005
	.quad	0x400e487ebf22c01e              # double 3.7853979999999998
	.quad	0x401cb1351159c497              # double 7.1730539999999996
	.quad	0x401a67c4e2f37fbf              # double 6.601337
	.quad	0x4004905857afea3e              # double 2.570481
	.quad	0x3fdb368f08461f9f              # double 0.425205
	.quad	0x3ffcd5d4e8fb00bd              # double 1.8022050000000001
	.quad	0x3fa6e5cd4ed2cbea              # double 0.044721999999999998
	.quad	0x3ff8d02363b25700              # double 1.5508150000000001
	.quad	0x4017f330941c8217              # double 5.9874900000000002
	.quad	0x3ffc7e835dedf1e1              # double 1.7808870000000001
	.quad	0x3fe0545e9185cee1              # double 0.51029899999999995
	.quad	0x40226759253543af              # double 9.2018520000000006
	.quad	0x3ff3f7d73c925786              # double 1.248008
	.quad	0x4011623a29c779a7              # double 4.3459250000000003
	.quad	0x401c91187e7c06e2              # double 7.1416950000000003
	.quad	0x4011d13660e51d26              # double 4.4543090000000003
	.quad	0x401a8a87a072d1af              # double 6.6352830000000003
	.quad	0x401d477bbf93ff26              # double 7.3198080000000001
	.quad	0x401d75807fed2029              # double 7.3647479999999996
	.quad	0x401e2cbc05d52c17              # double 7.5436860000000001
	.quad	0x4020356d5cfaacda              # double 8.1043500000000002
	.quad	0x4000b26634117f84              # double 2.0871089999999999
	.quad	0x401ec24a276b7ed4              # double 7.6897359999999999
	.quad	0x3ff0d771001d5c31              # double 1.0525979999999999
	.quad	0x4000f5393250b524              # double 2.1197379999999999
	.quad	0x401e01a2a4db163c              # double 7.5015970000000003
	.quad	0x4023dbeec39799e5              # double 9.9295559999999998
	.quad	0x4002e636b0963561              # double 2.362409
	.quad	0x400c5348b220791c              # double 3.5406659999999999
	.quad	0x4010101abd1aa822              # double 4.015727
	.quad	0x4021f8b39192641b              # double 8.9857449999999996
	.quad	0x40027892684cf074              # double 2.3088730000000002
	.quad	0x401caabef06b3786              # double 7.1667439999999996
	.quad	0x3fed470867ad8e43              # double 0.91492099999999998
	.quad	0x401d2ad81adea897              # double 7.2918399999999997
	.quad	0x3fff56c508b32ce9              # double 1.9586840000000001
	.quad	0x401d505d52c16df4              # double 7.328481
	.quad	0x401a9fca85caafbc              # double 6.6560459999999999
	.quad	0x401b5b441bb8c32b              # double 6.8391270000000004
	.quad	0x400e8de2ac322292              # double 3.81928
	.quad	0x4004c738a3b57c4e              # double 2.5972759999999999
	.quad	0x3fd02502eec7c958              # double 0.25225900000000001
	.quad	0x40197f3dc054ef46              # double 6.3742590000000003
	.quad	0x4016b5fcc1871e6d              # double 5.6777220000000002
	.quad	0x401f5f02c4d65e46              # double 7.842784
	.quad	0x3f9efae7924af0bf              # double 0.030254
	.quad	0x40209fc914b167ec              # double 8.3120809999999991
	.quad	0x3ff0a3897204295a              # double 1.0399259999999999
	.quad	0x40229f8bbd380453              # double 9.3116129999999995
	.quad	0x3fe2fe670e2c12ae              # double 0.59355500000000005
	.quad	0x40124a9fbe76c8b4              # double 4.5728749999999998
	.quad	0x400c0045baf533f4              # double 3.5001329999999999
	.quad	0x4003030db6a1e81d              # double 2.3764910000000001
	.quad	0x401f6683c297bfa5              # double 7.8501120000000002
	.quad	0x4013e38b8ae31d71              # double 4.9722119999999999
	.quad	0x4023723358f2e05d              # double 9.7230480000000003
	.quad	0x3ff7b482be8bc16a              # double 1.4815700000000001
	.quad	0x3fe33630a91537a0              # double 0.60036500000000004
	.quad	0x401b7e703afb7e91              # double 6.873475
	.quad	0x400944d3bf2f5558              # double 3.1586069999999999
	.quad	0x4014c4b3c3e74afd              # double 5.1920919999999997
	.quad	0x400f951159c49774              # double 3.9477869999999999
	.quad	0x3ffffcf0b6b6e0d2              # double 1.9992529999999999
	.quad	0x4007a5492ff4ba52              # double 2.9557060000000002
	.quad	0x401d9465a57646ae              # double 7.3949189999999998
	.quad	0x4015f4d44567125e              # double 5.4890910000000002
	.quad	0x401a2bcdfefbf402              # double 6.5427780000000002
	.quad	0x40089465625a682b              # double 3.0724589999999998
	.quad	0x401d5d73860999dd              # double 7.3412610000000003
	.quad	0x401316ddf00abf77              # double 4.7723310000000003
	.quad	0x402374caf709b739              # double 9.7281110000000001
	.quad	0x4017345996744b2b              # double 5.8011229999999996
	.quad	0x401e6c2656abde40              # double 7.6056150000000002
	.quad	0x4006e343b70ef566              # double 2.8609689999999999
	.quad	0x4012572e6a76965f              # double 4.5851379999999997
	.quad	0x3fdf2c8c5004fb12              # double 0.48709400000000003
	.quad	0x3fb2ec7c957cd467              # double 0.073921000000000001
	.quad	0x4008dbfbdf090f73              # double 3.1074139999999999
	.quad	0x401306fd651b0ccc              # double 4.7568260000000002
	.quad	0x401e3b3700474d9c              # double 7.5578269999999996
	.quad	0x4014b6ddf00abf77              # double 5.1785810000000003
	.quad	0x402346a52ef911cf              # double 9.6379789999999996
	.quad	0x400a4e73e681a9b9              # double 3.2883070000000001
	.quad	0x4008144806290eed              # double 3.009903
	.quad	0x401039e1f3a57eaa              # double 4.0565259999999999
	.quad	0x3ffd86c332f01755              # double 1.8454010000000001
	.quad	0x4001ad3f9e7b80aa              # double 2.2095940000000001
	.quad	0x4022ab90ea9e6eeb              # double 9.3350899999999992
	.quad	0x4009634d26fa3fcd              # double 3.1734870000000002
	.quad	0x401c450ce4ead0c4              # double 7.0674320000000002
	.quad	0x4015345ed4a1ad64              # double 5.3011429999999997
	.quad	0x3feaf6295208e150              # double 0.84254899999999999
	.quad	0x402103037d63022e              # double 8.5058860000000003
	.quad	0x4017ceb28d8665e0              # double 5.9518529999999998
	.quad	0x40019c01a36e2eb2              # double 2.2011750000000001
	.quad	0x4019e7c5ef62f9ca              # double 6.4763409999999997
	.quad	0x40115508b32ce896              # double 4.3330409999999997
	.quad	0x4022c226a22b3893              # double 9.3792010000000001
	.quad	0x4004c618ce2d1f1d              # double 2.596727
	.quad	0x3ff5da2a4db163bb              # double 1.3657630000000001
	.quad	0x4004c84406c00da2              # double 2.5977860000000002
	.quad	0x401fa1beb18116ec              # double 7.9079540000000001
	.quad	0x4013f3b5bf6a0dbb              # double 4.9879980000000002
	.quad	0x400f1f7e80389f84              # double 3.8903780000000001
	.quad	0x4005b68837718655              # double 2.714127
	.quad	0x3fe393faf42784a9              # double 0.61181399999999997
	.quad	0x4020b9fcd24e160e              # double 8.3632570000000008
	.quad	0x4009f9ab6d00b45b              # double 3.246909
	.quad	0x401c1f3f52fc2657              # double 7.0305150000000003
	.quad	0x400b9b44e50c5eb3              # double 3.450815
	.quad	0x40238fb4c3c18b50              # double 9.7806759999999997
	.quad	0x3ff2a5d5b24e9c45              # double 1.1654869999999999
	.quad	0x4000a77b395c4220              # double 2.0817779999999999
	.quad	0x4019c9f87f023e9f              # double 6.4472370000000003
	.quad	0x40027dd11be6e654              # double 2.3114340000000002
	.quad	0x401137d3d4280ae1              # double 4.304519
	.quad	0x3fe044e2f37fbefd              # double 0.508409
	.quad	0x401edc475e6362a6              # double 7.7151160000000001
	.quad	0x401e5b078d92fb1a              # double 7.5888960000000001
	.quad	0x40226029cfdd2285              # double 9.1878189999999993
	.quad	0x3fffb5d78811b1d9              # double 1.981895
	.quad	0x400741975f2cb641              # double 2.9070269999999998
	.quad	0x3ff6a8bc169c23b8              # double 1.4161950000000001
	.quad	0x3fe0771865519371              # double 0.51453800000000005
	.quad	0x40179d0aed99cbef              # double 5.9033620000000004
	.quad	0x4012c9cd8127b2cc              # double 4.6970729999999996
	.quad	0x4020d6659d12cade              # double 8.4187440000000002
	.quad	0x3feddf1e0828c36e              # double 0.93348600000000004
	.quad	0x402195f6db940fed              # double 8.7928990000000002
	.quad	0x3fe85eacc92146a2              # double 0.76155700000000004
	.quad	0x4022629f9ce8d973              # double 9.1926240000000004
	.quad	0x400dbde050374ff8              # double 3.7177129999999998
	.quad	0x400d97b7414a4d2b              # double 3.6990799999999999
	.quad	0x4015882730c67169              # double 5.382962
	.quad	0x4014bef5232d2bb2              # double 5.1864819999999998
	.quad	0x401a431c64ba94bc              # double 6.5655380000000001
	.quad	0x4012f9da597d49d8              # double 4.7439970000000002
	.quad	0x401686fc158fb43e              # double 5.6318210000000004
	.quad	0x40106506573215fd              # double 4.0986570000000002
	.quad	0x40229027d88c1db0              # double 9.2815539999999999
	.quad	0x3ff7b37110e453d2              # double 1.481309
	.quad	0x402042f709b738e7              # double 8.1307910000000003
	.quad	0x402149ff7164c72a              # double 8.6445270000000001
	.quad	0x3fe17c99ae924f22              # double 0.54645999999999995
	.quad	0x3fed5bb384fd2a63              # double 0.91744400000000004
	.quad	0x4011c111ada76d98              # double 4.4385440000000003
	.quad	0x401828e8ea39c51e              # double 6.0399510000000003
	.quad	0x400a67d5ed06fef8              # double 3.3007010000000001
	.quad	0x4019ab107746887b              # double 6.4170550000000004
	.quad	0x4020201abd1aa822              # double 8.0627040000000001
	.quad	0x3ff76a5a469d7343              # double 1.463465
	.quad	0x4005f75536933a04              # double 2.745768
	.quad	0x3fef717bd8be7297              # double 0.982603
	.quad	0x400006cdaf4adbc6              # double 2.0033219999999998
	.quad	0x402241e3c968943e              # double 9.1286909999999999
	.quad	0x400136f3b213e3e3              # double 2.1518320000000002
	.quad	0x40169806290eed03              # double 5.6484610000000002
	.quad	0x3ff5c558644523f6              # double 1.3606799999999999
	.quad	0x4010a4c271fff79d              # double 4.1608980000000004
	.quad	0x4011264c729f59cd              # double 4.287401
	.quad	0x400bacb966be7afa              # double 3.4593379999999998
	.quad	0x40173a6223e18698              # double 5.8070149999999998
	.quad	0x3fda3d8e0008637c              # double 0.41000700000000001
	.quad	0x401539ba5e353f7d              # double 5.3063750000000001
	.quad	0x3ff582b302f72b45              # double 1.344409
	.quad	0x40169102bc72e276              # double 5.6416120000000003
	.quad	0x3fd4dd15f02c4d66              # double 0.32599400000000001
	.quad	0x40101405f6ba0621              # double 4.0195540000000003
	.quad	0x3ff55e6ab9b23dd5              # double 1.3355509999999999
	.quad	0x40179819d2391d58              # double 5.898536
	.quad	0x4023996feb4a6656              # double 9.7996820000000007
	.quad	0x401d7a433508f649              # double 7.3693970000000002
	.quad	0x401774299d883ba3              # double 5.8634399999999998
	.quad	0x401aa0168b5cbff4              # double 6.6563359999999996
	.quad	0x4001aab3edd8b60f              # double 2.208351
	.quad	0x401710cf5b1c8649              # double 5.7664160000000004
	.quad	0x40021b352a843809              # double 2.2632850000000002
	.quad	0x401211be2b4959e6              # double 4.5173269999999999
	.quad	0x3fea0bd66277c45d              # double 0.81394500000000003
	.quad	0x401da58f2e05ccc9              # double 7.4116790000000004
	.quad	0x3fb423c85c24c405              # double 0.078671000000000005
	.quad	0x3ff19526d8b1dd5d              # double 1.0989139999999999
	.quad	0x40188bf5515054ac              # double 6.1366779999999999
	.quad	0x3fe66dd4845132f8              # double 0.70090699999999995
	.quad	0x401a6f487fcb923a              # double 6.6086749999999999
	.quad	0x4014d67ec7863bef              # double 5.2094680000000002
	.quad	0x3ffbf4299d883ba3              # double 1.7471099999999999
	.quad	0x4016f2d948dc11e4              # double 5.7371569999999998
	.quad	0x40139ac647778dd6              # double 4.9011469999999999
	.quad	0x4017f1a005c4651f              # double 5.9859619999999998
	.quad	0x3ff1a2ee41919ac8              # double 1.1022780000000001
	.quad	0x401a044028e4fb98              # double 6.5041510000000002
	.quad	0x400345d18090b418              # double 2.4090910000000001
	.quad	0x3fcaefd438d1d8a5              # double 0.21044399999999999
	.quad	0x3ffbae8c0485a0be              # double 1.7301139999999999
	.quad	0x3fb6a3486f049a99              # double 0.088428999999999994
	.quad	0x4018ce4f3343fa2b              # double 6.2014740000000002
	.quad	0x4016333e35c5b4ab              # double 5.5500420000000004
	.quad	0x3fffd4b48d3ae686              # double 1.98943
	.quad	0x401c34901d19157b              # double 7.0513310000000002
	.quad	0x3ff50da9003eea21              # double 1.3158350000000001
	.quad	0x4001e958d9b5e95b              # double 2.2389389999999998
	.quad	0x40013980f55de58e              # double 2.1530779999999998
	.quad	0x3ff66e8e1d6494d5              # double 1.401991
	.quad	0x40201c9be8ff327b              # double 8.0558770000000006
	.quad	0x401de7cfa26a22b4              # double 7.4763780000000004
	.quad	0x4000069e7fb267c7              # double 2.0032320000000001
	.quad	0x40207e05ccc89b0f              # double 8.2461380000000002
	.quad	0x3ff86554b8bef8cf              # double 1.5247390000000001
	.quad	0x4011cd4fdf3b645a              # double 4.4504999999999999
	.quad	0x3ff4b4794ea07703              # double 1.2940609999999999
	.quad	0x40224a4d099e0e73              # double 9.1451189999999993
	.quad	0x40187d7d3910c2c6              # double 6.1225480000000001
	.quad	0x4011f02f72b45283              # double 4.4845560000000004
	.quad	0x4011dcfbb949624a              # double 4.4658040000000003
	.quad	0x4011773ffac1d29e              # double 4.3664550000000002
	.quad	0x3fe5ec54bcf0b6b7              # double 0.68509900000000001
	.quad	0x400ace5c4eb56fb9              # double 3.350762
	.quad	0x400f0b3aabcd78c4              # double 3.8804829999999999
	.quad	0x3fc2d1958969a0ae              # double 0.14702100000000001
	.quad	0x401cf5147f130596              # double 7.2393359999999998
	.quad	0x401b9539756c93a7              # double 6.8957269999999999
	.quad	0x3fa15c853c148345              # double 0.033909000000000002
	.quad	0x4018e2b3cc4ac6ce              # double 6.2213890000000003
	.quad	0x3ffbd800a7c5ac47              # double 1.740235
	.quad	0x40156e3b03e20cd0              # double 5.357647
	.quad	0x3ff44486ad2dcb14              # double 1.2667299999999999
	.quad	0x400b4db9c7368ad7              # double 3.4129520000000002
	.quad	0x401fdfb19e731d2e              # double 7.968451
	.quad	0x401323ac929aa1d7              # double 4.7848379999999997
	.quad	0x400d7078d92fb19e              # double 3.6799179999999998
	.quad	0x4008f42edbb59ddc              # double 3.1192299999999999
	.quad	0x40126cc46950fc72              # double 4.6062180000000001
	.quad	0x4022941461b6d43d              # double 9.289218
	.quad	0x4002506034f3fd93              # double 2.2892459999999999
	.quad	0x3ff67b8f57f737da              # double 1.4051659999999999
	.quad	0x4004a93a71151612              # double 2.5826310000000001
	.quad	0x40149ef1bac2df0d              # double 5.1552189999999998
	.quad	0x400c6d97b30f8c65              # double 3.553512
	.quad	0x401ec2b9d3cbc48f              # double 7.6901619999999999
	.quad	0x401f1b8bac710cb3              # double 7.7769000000000003
	.quad	0x4012fd75e2046c76              # double 4.7475199999999997
	.quad	0x3f9b34a44c7b02d6              # double 0.026568000000000001
	.quad	0x400b4e19b90ea9e7              # double 3.413135
	.quad	0x40233f15c63ae254              # double 9.6232129999999997
	.quad	0x40018f51ac9afe1e              # double 2.1949800000000002
	.quad	0x4000d89ce4a7b4e5              # double 2.1057679999999999
	.quad	0x4022ee01de269164              # double 9.4648579999999995
	.quad	0x401d8c6e6d9be4cd              # double 7.3871399999999996
	.quad	0x400a752b0a6fc58b              # double 3.3072110000000001
	.quad	0x40001bc5de9c022a              # double 2.0135610000000002
	.quad	0x3fd3b3bb83cf2cf9              # double 0.30784499999999998
	.quad	0x400b3a355043e532              # double 3.4034219999999999
	.quad	0x40090c9539b88872              # double 3.1311439999999999
	.quad	0x400d136262cba733              # double 3.6344650000000001
	.quad	0x401076013660e51d              # double 4.1152389999999999
	.quad	0x40023acffa7eb6bf              # double 2.2787169999999999
	.quad	0x4023279e59f2ba9d              # double 9.5773799999999997
	.quad	0x4002ddeb52c9d170              # double 2.3583590000000001
	.quad	0x4010c111ada76d98              # double 4.1885440000000003
	.quad	0x40158441355475a3              # double 5.3791549999999999
	.quad	0x4023f0eb67c286f9              # double 9.9705460000000005
	.quad	0x401147414a4d2b2c              # double 4.319585
	.quad	0x4013e65fd8adab9f              # double 4.9749749999999997
	.quad	0x401ff5c63ae2541e              # double 7.9900140000000004
	.quad	0x4021458d36b4c7f3              # double 8.6358429999999995
	.quad	0x40234f062d40aaeb              # double 9.654344
	.quad	0x3fe906573215fcc2              # double 0.78202400000000005
	.quad	0x3ff3801e68a0d34a              # double 1.2187790000000001
	.quad	0x401f6915379fa97e              # double 7.8526199999999999
	.quad	0x40223461b6d43d04              # double 9.1023080000000007
	.quad	0x4023fa4d6e47dc38              # double 9.9888720000000006
	.quad	0x4008e82385404641              # double 3.1133489999999999
	.quad	0x4014caecd07852f8              # double 5.198169
	.quad	0x3ff7c53e2d6238da              # double 1.4856549999999999
	.quad	0x4008ff71eafee6fb              # double 3.1247289999999999
	.quad	0x402200e6f2e8c048              # double 9.0017619999999994
	.quad	0x401787179bfdf7e8              # double 5.881926
	.quad	0x4017949e8815e397              # double 5.8951359999999999
	.quad	0x40233ed58c8eef1c              # double 9.6227230000000005
	.quad	0x40002331e3a7daa5              # double 2.017185
	.quad	0x4022e3ffef39085f              # double 9.4453119999999994
	.quad	0x402080a58b3f63c3              # double 8.2512629999999998
	.quad	0x401da294dd72367e              # double 7.4087709999999998
	.quad	0x4011b676a7264a17              # double 4.4281870000000003
	.quad	0x40209d606317268d              # double 8.3073759999999996
	.quad	0x401ccca5bd944aa5              # double 7.1998509999999998
	.quad	0x40201fcfe5860136              # double 8.0621329999999993
	.quad	0x400f105faebc408e              # double 3.8829950000000002
	.quad	0x4006086ad2dcb146              # double 2.7541099999999998
	.quad	0x40211ee7a311e860              # double 8.5603610000000003
	.quad	0x4011d2be0589acbd              # double 4.4558030000000004
	.quad	0x4020759cae21101b              # double 8.229711
	.quad	0x40120d5629d8409e              # double 4.5130239999999997
	.quad	0x3ffc56b65a9a8049              # double 1.7711699999999999
	.quad	0x4023ab061c79b34a              # double 9.8340309999999995
	.quad	0x401f27414a4d2b2c              # double 7.788335
	.quad	0x3ffa7f3cf70153bd              # double 1.656064
	.quad	0x40181dc7ef177a70              # double 6.029083
	.quad	0x4019cb6ae7d566cf              # double 6.4486499999999998
	.quad	0x401b3499d0203e64              # double 6.8013680000000001
	.quad	0x4005b841248d7e02              # double 2.7149679999999998
	.quad	0x3fd218f81e8a2ec3              # double 0.28277400000000003
	.quad	0x400d52f3c2dadb83              # double 3.6655039999999999
	.quad	0x4005210060780fdc              # double 2.641114
	.quad	0x3ff3c637bd05af6c              # double 1.2358929999999999
	.quad	0x3fe85f809917939a              # double 0.76165799999999995
	.quad	0x40093b6dca07f66f              # double 3.1540180000000002
	.quad	0x40198cc2d6a9c561              # double 6.3874620000000002
	.quad	0x4019f88a04d12019              # double 6.4927140000000003
	.quad	0x401ad48ba83f4eca              # double 6.7075639999999996
	.quad	0x401e71b823c85c25              # double 7.6110540000000002
	.quad	0x401cef0068db8bac              # double 7.2333999999999996
	.quad	0x3ff9b8cfbfc6540d              # double 1.60762
	.quad	0x40112196d8f4f93c              # double 4.2828020000000002
	.quad	0x4010f4638c975297              # double 4.2386609999999996
	.quad	0x4008b9b23dd54da5              # double 3.0906720000000001
	.quad	0x4021a741d084e832              # double 8.8266740000000006
	.quad	0x40224e559f6ec5b0              # double 9.1529969999999992
	.quad	0x40167305d95dd4c7              # double 5.6123269999999996
	.quad	0x4021a179bfdf7e80              # double 8.8153819999999996
	.quad	0x40113a20ddc61954              # double 4.3067659999999997
	.quad	0x400ccf86a098915c              # double 3.6013310000000001
	.quad	0x401f6c9e6687f456              # double 7.8560730000000003
	.quad	0x400cc0ccff21b3af              # double 3.594141
	.quad	0x401de3443d46b26c              # double 7.47194
	.quad	0x402364df69878317              # double 9.6970170000000006
	.quad	0x40219f7e80389f84              # double 8.8115120000000004
	.quad	0x3fec89c3ce2089e3              # double 0.89181699999999997
	.quad	0x401afb71fbc5de9c              # double 6.745552
	.quad	0x401ec922d948dc12              # double 7.6964220000000001
	.quad	0x401b43e24febd09e              # double 6.8162929999999999
	.quad	0x4018b7ebf22c01e7              # double 6.1796110000000004
	.quad	0x400158f57f737da6              # double 2.1684369999999999
	.quad	0x402341248d7e0264              # double 9.6272319999999993
	.quad	0x40077bc77143393b              # double 2.9354390000000001
	.quad	0x3ff1d8be7296f651              # double 1.115416
	.quad	0x3f90bc7b45f17bd9              # double 0.016344000000000001
	.quad	0x4012ef9c1f85d745              # double 4.733994
	.quad	0x40184c9e6687f456              # double 6.0748230000000003
	.quad	0x400cccf7446f9b99              # double 3.6000809999999999
	.quad	0x4009d227d028a1e0              # double 3.2276150000000001
	.quad	0x400a57b84db9c737              # double 3.2928320000000002
	.quad	0x401de9bcfd4bf099              # double 7.4782599999999997
	.quad	0x401961cfbb949625              # double 6.3455190000000004
	.quad	0x401e37bd05af6c6a              # double 7.5544320000000003
	.quad	0x4016d305532617c2              # double 5.7060750000000002
	.quad	0x4023d6492bc2fc69              # double 9.9185269999999992
	.quad	0x400ba323358f2e06              # double 3.4546570000000001
	.quad	0x400b9e529bae46d0              # double 3.4523060000000001
	.quad	0x40011ff609dcf894              # double 2.140606
	.quad	0x3ffa34dad31fcd25              # double 1.637904
	.quad	0x3ff33ffbce4217d3              # double 1.2031210000000001
	.quad	0x400ed885d31337eb              # double 3.8557239999999999
	.quad	0x40214522856605ee              # double 8.6350289999999994
	.quad	0x40160f0739b024f6              # double 5.5146759999999997
	.quad	0x400ab015c209246c              # double 3.335979
	.quad	0x4023455a3a08398a              # double 9.6354539999999993
	.quad	0x400d54a1272c94b4              # double 3.6663230000000002
	.quad	0x3ffab6709fa54c55              # double 1.6695409999999999
	.quad	0x401640129cbab64a              # double 5.5625710000000002
	.quad	0x3ffaa2af5771001d              # double 1.6647179999999999
	.quad	0x401cf4f3343fa2ad              # double 7.2392089999999998
	.quad	0x40031e15ca6ca03c              # double 2.3896899999999999
	.quad	0x401cc587d6f97679              # double 7.192901
	.quad	0x402264e8fb00bcbe              # double 9.1970899999999993
	.quad	0x3fc5be121ee67514              # double 0.16986299999999999
	.quad	0x4011e456f75d9a0f              # double 4.472988
	.quad	0x40148027525460aa              # double 5.1251499999999997
	.quad	0x4014fabfb9bed30f              # double 5.244872
	.quad	0x401a13d20f2becee              # double 6.5193560000000002
	.quad	0x40208776c4827b70              # double 8.2645780000000002
	.quad	0x40152c4ac6cdaf4b              # double 5.2932540000000001
	.quad	0x402188800eae18ad              # double 8.7666020000000007
	.quad	0x40130266772d5e07              # double 4.7523439999999999
	.quad	0x4022b3d07c84b5dd              # double 9.3512000000000004
	.quad	0x3fef1fba450acc0c              # double 0.97262300000000001
	.quad	0x40054986fcdee350              # double 2.6609020000000001
	.quad	0x3fce4bb1af3a14cf              # double 0.23668500000000001
	.quad	0x4021d38c9752977d              # double 8.9131820000000008
	.quad	0x400ca2ea0fd3b29a              # double 3.579548
	.quad	0x3fa9461b6d43d039              # double 0.049362999999999997
	.quad	0x4000cd9945b6c376              # double 2.10039
	.quad	0x4020c912dba4d6e4              # double 8.3927219999999991
	.quad	0x4020bf08aac96cc6              # double 8.373113
	.quad	0x4010055eaee2003b              # double 4.0052440000000002
	.quad	0x400b2dd82fd75e20              # double 3.3973849999999999
	.quad	0x40185e8dda48b652              # double 6.0923379999999998
	.quad	0x3ff18044284dfce3              # double 1.093815
	.quad	0x40067c054ef459da              # double 2.8105570000000002
	.quad	0x4013f04bc27631b6              # double 4.9846640000000004
	.quad	0x401dd4ab606b7aa2              # double 7.4576849999999997
	.quad	0x40145e5604189375              # double 5.0921250000000002
	.quad	0x401ba6bd2b6f1993              # double 6.9128309999999997
	.quad	0x40239080f98fa377              # double 9.7822340000000007
	.quad	0x3fe04393682730c6              # double 0.50824899999999995
	.quad	0x401bde75360d0247              # double 6.967244
	.quad	0x3ff2f5cbff47735c              # double 1.185009
	.quad	0x3ff0ba5d28d002e2              # double 1.045499
	.quad	0x40208910e453d20f              # double 8.2677069999999997
	.quad	0x40197c36544fe36d              # double 6.3713009999999999
	.quad	0x3ffa2a2a0a958538              # double 1.635294
	.quad	0x40143929aa1d755c              # double 5.0558230000000002
	.quad	0x40222a69df97aaac              # double 9.0828389999999998
	.quad	0x400e2f13cee9dd7f              # double 3.7729870000000001
	.quad	0x401bda122fad6cb5              # double 6.9629599999999998
	.quad	0x3fe70bcdfefbf402              # double 0.72019100000000003
	.quad	0x3fbf508f648c7193              # double 0.122323
	.quad	0x401c0eff5c6c11a1              # double 7.0146459999999999
	.quad	0x401b359e1f3a57eb              # double 6.8023610000000003
	.quad	0x4023d2ea747d805e              # double 9.9119449999999993
	.quad	0x40220fc286f8ad25              # double 9.0307809999999993
	.quad	0x4012b8ef34d6a162              # double 4.6806000000000001
	.quad	0x3fff75dbb9cf9a07              # double 1.9662740000000001
	.quad	0x401f7a133c1ce6c1              # double 7.8692140000000003
	.quad	0x40239041461b6d44              # double 9.7817480000000003
	.quad	0x40073a133c1ce6c1              # double 2.9033570000000002
	.quad	0x400d8d20afa2f05a              # double 3.6939099999999998
	.quad	0x4022472474538ef3              # double 9.1389499999999995
	.quad	0x4006d8dcdb37c99b              # double 2.85589
	.quad	0x4023f0ec74320104              # double 9.9705539999999999
	.quad	0x4008b350092ccf6c              # double 3.087555
	.quad	0x4001704c48adeebb              # double 2.1798329999999999
	.quad	0x3f94db163baba7b9              # double 0.020367
	.quad	0x400ff26527a20579              # double 3.993357
	.quad	0x3ffd3be33acd5b68              # double 1.827121
	.quad	0x3fca535c9e6687f4              # double 0.20566899999999999
	.quad	0x40187c4f3ba775fb              # double 6.1213959999999998
	.quad	0x401fe45953586ca9              # double 7.9729970000000003
	.quad	0x4008b56084a515cf              # double 3.0885630000000002
	.quad	0x3fc304790b849881              # double 0.14857400000000001
	.quad	0x4016cf212d773190              # double 5.7022750000000002
	.quad	0x3fe2603925bb7b6c              # double 0.57424600000000003
	.quad	0x40116bd6a593a2e0              # double 4.3553110000000004
	.quad	0x4007bf8f4730403a              # double 2.9685350000000001
	.quad	0x400735d701d9f4d3              # double 2.9012889999999998
	.quad	0x401fcbf8b9baa151              # double 7.9491909999999998
	.quad	0x401adcffeb074a77              # double 6.7158199999999999
	.quad	0x4008541e9af5ba2c              # double 3.0410740000000001
	.quad	0x40227fb28954a7f8              # double 9.2494089999999999
	.quad	0x4020c315f88fc936              # double 8.3810269999999996
	.quad	0x3ff33b890d5a5b96              # double 1.202035
	.quad	0x40167cc92146a1a5              # double 5.621861
	.quad	0x4018a13e3e29307b              # double 6.157464
	.quad	0x4016100e6afcce1c              # double 5.5156799999999997
	.quad	0x4022fbab430f4949              # double 9.4915409999999997
	.quad	0x400e907d912556d2              # double 3.8205520000000002
	.quad	0x4008199fe43675de              # double 3.0125120000000001
	.quad	0x4022a75afaf85943              # double 9.3268660000000008
	.quad	0x4022576b5d462c34              # double 9.1707409999999995
	.quad	0x3ff5e1b9f98b71b9              # double 1.3676090000000001
	.quad	0x4018bb1fab96f21f              # double 6.1827379999999996
	.quad	0x4012a9bed30f062d              # double 4.6657669999999998
	.quad	0x4019621c044284e0              # double 6.3458100000000002
	.quad	0x40219dd3996fa82f              # double 8.8082550000000008
	.quad	0x40224e0029f16b12              # double 9.1523450000000004
	.quad	0x4010d35b91f70de9              # double 4.206404
	.quad	0x401be31c219eb639              # double 6.971787
	.quad	0x3ff16bbfd71b0468              # double 1.0888059999999999
	.quad	0x4019d294141e9af6              # double 6.4556430000000002
	.quad	0x40094be5109070fc              # double 3.162058
	.quad	0x3ff2cd338f798527              # double 1.175098
	.quad	0x4021f788765ba6f0              # double 8.9834630000000004
	.quad	0x401cb7dc7abfb9bf              # double 7.1795520000000002
	.quad	0x3fab2d4d4024b33e              # double 0.053080000000000002
	.quad	0x4022d4fdb09a671f              # double 9.415998
	.quad	0x4004aa4c1ebc83a9              # double 2.5831529999999998
	.quad	0x400893e2d6238da4              # double 3.0722100000000001
	.quad	0x401e8d2178f68be3              # double 7.637823
	.quad	0x400ba5e353f7ced9              # double 3.456
	.quad	0x4009e72085b18549              # double 3.2378550000000001
	.quad	0x3ff5b763e4abe6a3              # double 1.357273
	.quad	0x40222328d8665e03              # double 9.0686710000000001
	.quad	0x400d89435ac8a372              # double 3.6920229999999998
	.quad	0x402365ed288ce704              # double 9.6990750000000005
	.quad	0x3ff1cb380cb6c7a8              # double 1.112114
	.quad	0x4006641d4b6a619e              # double 2.7988840000000001
	.quad	0x3fe701626b2f2303              # double 0.71891899999999997
	.quad	0x401f68df7a4e7ab7              # double 7.8524149999999997
	.quad	0x4020fde2478854ce              # double 8.4958670000000005
	.quad	0x400c311a543f1c76              # double 3.5239760000000002
	.quad	0x3ff45b291b823c86              # double 1.2722560000000001
	.quad	0x400aa4da9003eea2              # double 3.330495
	.quad	0x401fc52bd3c36113              # double 7.9425499999999997
	.quad	0x401cc291b823c85c              # double 7.1900089999999999
	.quad	0x3ffb591bc5586445              # double 1.709255
	.quad	0x40224362e9036439              # double 9.1316140000000008
	.quad	0x4001af5989df1173              # double 2.21062
	.quad	0x401ce2deca2552a0              # double 7.2215530000000001
	.quad	0x401aa9641f644956              # double 6.6654210000000003
	.quad	0x4004fe52157689ca              # double 2.62418
	.quad	0x401494b4d056c509              # double 5.1452210000000003
	.quad	0x40128b107746887b              # double 4.6358050000000004
	.quad	0x3f69d66adb402d17              # double 0.0031540000000000001
	.quad	0x4020359a73b42cc3              # double 8.1046940000000003
	.quad	0x3ffe09246bf01323              # double 1.877232
	.quad	0x40029ee136e71cda              # double 2.3275779999999999
	.quad	0x4022bd948dc11e43              # double 9.3702740000000002
	.quad	0x400fd421c044284e              # double 3.97858
	.quad	0x402193f4a98aa865              # double 8.7889759999999999
	.quad	0x4020d7301eabbcb2              # double 8.4202890000000004
	.quad	0x3ff176ed6777079e              # double 1.0915349999999999
	.quad	0x3ffe71a08bfc2225              # double 1.902741
	.quad	0x3fe7b8bac710cb29              # double 0.74129999999999996
	.quad	0x4001c1016ce789e7              # double 2.2192409999999998
	.quad	0x4021f3ce8533b107              # double 8.9761849999999992
	.quad	0x40110804102ff8ec              # double 4.2578279999999999
	.quad	0x401c55308bb90646              # double 7.0831929999999996
	.quad	0x400f428240b78034              # double 3.9074749999999998
	.quad	0x401ea5b8dc55000d              # double 7.6618380000000003
	.quad	0x3ff65856a37ac3eb              # double 1.3965669999999999
	.quad	0x400e810cf5b1c865              # double 3.8130130000000002
	.quad	0x40232445aa2e3c53              # double 9.5708439999999992
	.quad	0x3ff34fca42aed139              # double 1.2069799999999999
	.quad	0x4015362e4d1a6506              # double 5.3029109999999999
	.quad	0x4022a644955b4678              # double 9.3247420000000005
	.quad	0x40089450efdc9c4e              # double 3.0724200000000002
	.quad	0x3fe41b66f9335d25              # double 0.62834500000000004
	.quad	0x401a827c39368273              # double 6.627427
	.quad	0x401573ab862b27cc              # double 5.362959
	.quad	0x400284bba12b5e53              # double 2.3148110000000002
	.quad	0x401233ad5bee3d60              # double 4.5504660000000001
	.quad	0x401a5172abef06b3              # double 6.5795389999999996
	.quad	0x40050ba1f4b1ee24              # double 2.6306799999999999
	.quad	0x40100f18c9fb6135              # double 4.0147430000000002
	.quad	0x400cba73b42cc2d7              # double 3.5910410000000001
	.quad	0x3ffb19d99029ae4f              # double 1.693811
	.quad	0x401424eb13dfb0d5              # double 5.0360529999999999
	.quad	0x40231be1650a45d4              # double 9.5544539999999997
	.quad	0x40216c219eb6390d              # double 8.7111940000000008
	.quad	0x4018caec4a4095f2              # double 6.1981669999999998
	.quad	0x401c8a7ded6ba8c6              # double 7.1352460000000004
	.quad	0x401297aaac1094a3              # double 4.6481120000000002
	.quad	0x4009d1455219a848              # double 3.2271830000000001
	.quad	0x400beb9f559b3d08              # double 3.4900500000000001
	.quad	0x4001e805a2d72ffd              # double 2.2382919999999999
	.quad	0x4019ebd1244a6224              # double 6.4802900000000001
	.quad	0x40207d9945b6c376              # double 8.2453099999999999
	.quad	0x401a85d894812be5              # double 6.6307090000000004
	.quad	0x40236792d1287c20              # double 9.7022919999999999
	.quad	0x40028e3cd9a52264              # double 2.3194520000000001
	.quad	0x401b6d640e9d51b5              # double 6.856827
	.quad	0x3ff2bcaea747d806              # double 1.171065
	.quad	0x400ace432441fea8              # double 3.350714
	.quad	0x401fa42f61ed5ae2              # double 7.9103370000000002
	.quad	0x4007ee92d55a3a08              # double 2.9914909999999999
	.quad	0x4017997bfa4c61d8              # double 5.8998869999999997
	.quad	0x40116b3743632c1f              # double 4.3547029999999998
	.quad	0x4005174c4cdfaca3              # double 2.6363759999999998
	.quad	0x401ec638433d6c72              # double 7.6935739999999999
	.quad	0x4023fdf0b28522ea              # double 9.9959769999999999
	.quad	0x4022ca1fd1569f49              # double 9.3947739999999999
	.quad	0x402247e004b7f5a5              # double 9.1403809999999996
	.quad	0x400710d173fb7a5f              # double 2.8832119999999999
	.quad	0x40238ccaf709b739              # double 9.7749860000000001
	.quad	0x3ffcddf97aaac109              # double 1.8041929999999999
	.quad	0x401cc06ab14ec205              # double 7.187907
	.quad	0x401b643675ddd2af              # double 6.8478640000000004
	.quad	0x4017edfdac68a937              # double 5.9824130000000002
	.quad	0x40200cfb549f9485              # double 8.0253549999999994
	.quad	0x3fcdb3fa6defc7a4              # double 0.23205500000000001
	.quad	0x4020527d45a5fc7e              # double 8.1611119999999993
	.quad	0x4022d0ae10492360              # double 9.4075780000000009
	.quad	0x3fcfda61e0c5a815              # double 0.24885199999999999
	.quad	0x401b6a454de7ea60              # double 6.8537800000000004
	.quad	0x40134c59fb1e18f0              # double 4.8245620000000002
	.quad	0x40229f566490a351              # double 9.3112060000000003
	.quad	0x4002d606317268d3              # double 2.3545039999999999
	.quad	0x3fdcbd944aa53fc0              # double 0.449071
	.quad	0x4012defa615a8deb              # double 4.7177519999999999
	.quad	0x401d2016052502ef              # double 7.2813340000000002
	.quad	0x401826b441bb8c33              # double 6.0377970000000003
	.quad	0x3fe327674d163348              # double 0.59855999999999998
	.quad	0x40032175d13d74d6              # double 2.3913380000000002
	.quad	0x3ff7270d1fa33376              # double 1.4470339999999999
	.quad	0x4015d2949a5657fb              # double 5.4556449999999996
	.quad	0x401c7929ed3953df              # double 7.1183240000000003
	.quad	0x401f7ccf6be37de9              # double 7.8718849999999997
	.quad	0x4015d17614595358              # double 5.4545519999999996
	.quad	0x4023933b320535ca              # double 9.7875610000000002
	.quad	0x400d1da5119ce076              # double 3.639475
	.quad	0x401b0d8b60f1b25f              # double 6.7632269999999997
	.quad	0x400f8dc5d6388659              # double 3.9442249999999999
	.quad	0x4002e468448cf7cb              # double 2.3615270000000002
	.quad	0x400aef3eccc46951              # double 3.366819
	.quad	0x3fd4e5bc87db2b34              # double 0.32652199999999998
	.quad	0x4006457214f0520d              # double 2.783909
	.quad	0x401242fe82517e78              # double 4.5654240000000001
	.quad	0x3fda49a5657fb69a              # double 0.41074500000000003
	.quad	0x4020cbe1c9b41398              # double 8.3982069999999993
	.quad	0x4016308205ff1d82              # double 5.5473710000000001
	.quad	0x401e28cbd1244a62              # double 7.5398399999999999
	.quad	0x4019a3b320535c9e              # double 6.4098629999999996
	.quad	0x401f682c6ef3d3a2              # double 7.8517320000000002
	.quad	0x4004cefd438d1d8a              # double 2.6010689999999999
	.quad	0x401ce01b866e43aa              # double 7.2188549999999996
	.quad	0x40219e6277c45cbc              # double 8.8093450000000004
	.quad	0x401851c1d6cf850e              # double 6.0798410000000001
	.quad	0x4022016f21f6cacd              # double 9.0028009999999998
	.quad	0x3fc82ee41919ac79              # double 0.18893099999999999
	.quad	0x400d3129888f861a              # double 3.6490049999999998
	.quad	0x401dd6d373affb05              # double 7.4597910000000001
	.quad	0x4011413122b7baed              # double 4.3136640000000002
	.quad	0x401edbc4d22c881e              # double 7.7146179999999998
	.quad	0x40188428d434a01b              # double 6.1290620000000002
	.quad	0x4007026138fffbce              # double 2.8761619999999999
	.quad	0x401603ac929aa1d7              # double 5.5035879999999997
	.quad	0x4022ea480e8c8abd              # double 9.4575809999999993
	.quad	0x3fe33cdfefbf401c              # double 0.60118099999999997
	.quad	0x401bacc6822ff089              # double 6.9187260000000004
	.quad	0x40177052502eec7d              # double 5.8596890000000004
	.quad	0x402245e58e64b231              # double 9.1365169999999996
	.quad	0x4023fc45cbbc2b95              # double 9.9927200000000002
	.quad	0x4004bdfb9389b520              # double 2.592765
	.quad	0x4012833eff195033              # double 4.6281699999999999
	.quad	0x40103cb9a9da597d              # double 4.0593019999999997
	.quad	0x400e6bcbe61cffeb              # double 3.802635
	.quad	0x4000e8bb0a2ca9ac              # double 2.1136379999999999
	.quad	0x400d9fa97e132b56              # double 3.70296
	.quad	0x4019fb8d3f1843c4              # double 6.4956560000000003
	.quad	0x3ff0a22c45026890              # double 1.039593
	.quad	0x40047971c10d7bea              # double 2.5592990000000002
	.quad	0x402372b9d3cbc48f              # double 9.7240739999999998
	.quad	0x401fb0780fdc1616              # double 7.9223330000000001
	.quad	0x4018bfe4bcad9ad8              # double 6.1873959999999997
	.quad	0x4006067be553ac4f              # double 2.7531659999999998
	.quad	0x3feae89ca18bd662              # double 0.84089499999999995
	.quad	0x4022d03f705857b0              # double 9.4067340000000002
	.quad	0x400d6b2074ea8da8              # double 3.677308
	.quad	0x401d236199780baa              # double 7.2845519999999997
	.quad	0x3ff3a034f3fd933e              # double 1.226613
	.quad	0x4017e4e22a2c2374              # double 5.9735189999999996
	.quad	0x40081002e2328f9f              # double 3.0078179999999999
	.quad	0x3ff838f36694898f              # double 1.5139039999999999
	.quad	0x3fd66cfc829cfdd2              # double 0.35040199999999999
	.quad	0x4017f0e496ededaf              # double 5.9852470000000002
	.quad	0x4022efffde7210bf              # double 9.4687490000000007
	.quad	0x3fc7531db445ed4a              # double 0.182224
	.quad	0x3fe7435efa615a8e              # double 0.72697400000000001
	.quad	0x401a22ee84ad794a              # double 6.5341129999999996
	.quad	0x401e1e414e7ee914              # double 7.5295459999999999
	.quad	0x401dbf23465625a7              # double 7.4366580000000004
	.quad	0x401844649906cca3              # double 6.0667900000000001
	.quad	0x4000adb163baba7c              # double 2.0848110000000002
	.quad	0x4014b69be09bb6aa              # double 5.1783289999999997
	.quad	0x40176e1c58255b03              # double 5.8575299999999997
	.quad	0x400856a37ac3eb7d              # double 3.0423040000000001
	.quad	0x40233e3dc486ad2e              # double 9.6215650000000004
	.quad	0x4015c00fba8826ab              # double 5.4375600000000004
	.quad	0x400ab332acfb762e              # double 3.3374990000000002
	.quad	0x3fd17d63022dd7aa              # double 0.27327800000000002
	.quad	0x4016b15db3397dd0              # double 5.6732089999999999
	.quad	0x3ff42512a94ff002              # double 1.2590509999999999
	.quad	0x4013ec475e6362a6              # double 4.9807410000000001
	.quad	0x40048ada33bd9cae              # double 2.5677989999999999
	.quad	0x40105e98dcdb37ca              # double 4.0923800000000004
	.quad	0x3ff6ee675147f130              # double 1.4332039999999999
	.quad	0x40227d4aa10e0221              # double 9.2447099999999995
	.quad	0x40033f090f733a8a              # double 2.4057789999999999
	.quad	0x4015a867f0aa21a7              # double 5.4144589999999999
	.quad	0x4002c88a47ecfe9b              # double 2.3479199999999998
	.quad	0x4013737867f0aa22              # double 4.8627640000000003
	.quad	0x3ff468986fcdee35              # double 1.275536
	.quad	0x401a440357a35504              # double 6.5664189999999998
	.quad	0x4014b00b88ca3e7d              # double 5.1719189999999999
	.quad	0x4020b34289118c19              # double 8.3501169999999991
	.quad	0x3fe6bc536d655e29              # double 0.71048900000000004
	.quad	0x4007c19f3c70c997              # double 2.9695420000000001
	.quad	0x400134bcf0b6b6e1              # double 2.1507510000000001
	.quad	0x401211a32b12d341              # double 4.5172239999999997
	.quad	0x4014e9335d249e45              # double 5.227735
	.quad	0x3ffc21c68ec52a41              # double 1.758246
	.quad	0x400954cdb7ae5797              # double 3.1664080000000001
	.quad	0x3fe81b738e6d15ad              # double 0.75335099999999999
	.quad	0x3ffe92c16df3f962              # double 1.9108290000000001
	.quad	0x400b4ef3d3a1d324              # double 3.413551
	.quad	0x401eedce7cd03537              # double 7.7322329999999999
	.quad	0x402354851a869403              # double 9.6650779999999993
	.quad	0x400fb3ba775fb2ee              # double 3.962758
	.quad	0x4022bcf0b6b6e0d2              # double 9.3690239999999996
	.quad	0x3fefa9b280f12c28              # double 0.98946500000000003
	.quad	0x4009e83cafb3b752              # double 3.238397
	.quad	0x3fc5cda2b5a20ddc              # double 0.17033799999999999
	.quad	0x4019150c5eb313be              # double 6.2705549999999999
	.quad	0x401f114e3bcd35a8              # double 7.7668999999999996
	.quad	0x4019e9424e592967              # double 6.477792
	.quad	0x4000c0bc382a12f9              # double 2.094109
	.quad	0x4006c34ca0c282c7              # double 2.845361
	.quad	0x3fc26d938151a438              # double 0.14396900000000001
	.quad	0x4020891f2dc2b0ea              # double 8.2678159999999998
	.quad	0x401328644523f67f              # double 4.7894449999999997
	.quad	0x3fe4d56084a515cf              # double 0.65104700000000004
	.quad	0x3fc08fd9fd36f7e4              # double 0.12939000000000001
	.quad	0x3ffc91cd1c7de508              # double 1.785596
	.quad	0x4012ab22d0e56042              # double 4.6671250000000004
	.quad	0x3ff33bc2b94d9408              # double 1.2020900000000001
	.quad	0x3ffe25061416377a              # double 1.884039
	.quad	0x4020eeee73e681aa              # double 8.4666630000000005
	.quad	0x401412085b18548b              # double 5.0176100000000003
	.quad	0x3fface29f9ce8d97              # double 1.675333
	.quad	0x400f5db1209edbf9              # double 3.9207480000000001
	.quad	0x4020b841461b6d44              # double 8.3598730000000003
	.quad	0x40217cac29bf162b              # double 8.7435010000000002
	.quad	0x401ef3a4b5568e82              # double 7.737933
	.quad	0x40219783dff3f0fe              # double 8.795928
	.quad	0x401f7dd15f02c4d6              # double 7.8728689999999997
	.quad	0x4020c1bbf0dc768e              # double 8.378387
	.quad	0x3ffcf1b8aa00192a              # double 1.8090139999999999
	.quad	0x400aea9478c868ba              # double 3.364541
	.quad	0x3fff36b09635610b              # double 1.950852
	.quad	0x4022275c8d9f9054              # double 9.0768780000000006
	.quad	0x4013b3d188f42fe8              # double 4.9256039999999999
	.quad	0x401ffbda0dfdef85              # double 7.9959490000000004
	.quad	0x401f5020c49ba5e3              # double 7.8282499999999997
	.quad	0x401c6753e707e176              # double 7.1009060000000002
	.quad	0x401d3e703afb7e91              # double 7.310975
	.quad	0x401051187e7c06e2              # double 4.0791950000000003
	.quad	0x4019afbdf090f734              # double 6.4216230000000003
	.quad	0x401982bf5515054b              # double 6.3776830000000002
	.quad	0x3ff660ab71327243              # double 1.398601
	.quad	0x402215e15ca6ca04              # double 9.0427350000000004
	.quad	0x401410c5eb313be2              # double 5.0163799999999998
	.quad	0x40163aac96cc5fc0              # double 5.5572990000000004
	.quad	0x3ff338726d04e619              # double 1.201281
	.quad	0x4012a8023a6ce358              # double 4.6640709999999999
	.quad	0x4019b3abc947064f              # double 6.4254600000000002
	.quad	0x40150779a6b50b0f              # double 5.2572999999999999
	.quad	0x3ff6efc7a398201d              # double 1.43354
	.quad	0x40180f722e1ac57e              # double 6.0150839999999999
	.quad	0x4017392923e5b856              # double 5.8058209999999999
	.quad	0x401e399e0e73604a              # double 7.5562670000000001
	.quad	0x3ffc7a4d6e47dc38              # double 1.7798590000000001
	.quad	0x4014f2d59d55e6bc              # double 5.2371429999999997
	.quad	0x40213329e4d5d80e              # double 8.5999289999999995
	.quad	0x40188fae3608d089              # double 6.1403129999999999
	.quad	0x40201648626f60e1              # double 8.0435210000000001
	.quad	0x40221082491afc05              # double 9.0322440000000004
	.quad	0x401e6043e5321e60              # double 7.5940089999999998
	.quad	0x402002a90cd423d9              # double 8.0051959999999998
	.quad	0x40069bc3c5bd0e13              # double 2.826057
	.quad	0x3ff3298cc144028e              # double 1.1976439999999999
	.quad	0x4011318e325d4a5e              # double 4.298394
	.quad	0x4013d89d6adf71eb              # double 4.961538
	.quad	0x402382369fcf3dc0              # double 9.7543229999999994
	.quad	0x402369361dc93ea3              # double 9.7054910000000003
	.quad	0x40030275ab7dc7ac              # double 2.376201
	.quad	0x3ff9a3076c050bd8              # double 1.6023019999999999
	.quad	0x3fdd8dda48b65237              # double 0.461783
	.quad	0x401aa5b749adc8fc              # double 6.6618320000000004
	.quad	0x4003ddce7cd03537              # double 2.483304
	.quad	0x401590bd87b56b87              # double 5.3913479999999998
	.quad	0x401c4cddd6e04c06              # double 7.0750650000000004
	.quad	0x3ffd7edc7ef177a7              # double 1.843472
	.quad	0x4021308e9b38d60a              # double 8.5948379999999993
	.quad	0x4010a4f93bc0a06f              # double 4.1611070000000003
	.quad	0x40057b0a2ca9ac36              # double 2.6850779999999999
	.quad	0x401cc8676a7264a1              # double 7.1957069999999996
	.quad	0x401cd0129cbab64a              # double 7.2031960000000002
	.quad	0x40212543aeab7996              # double 8.5727820000000001
	.quad	0x3ff7d53ef6b5d463              # double 1.4895620000000001
	.quad	0x3fe877f498c3b0c4              # double 0.76464299999999996
	.quad	0x3ffb0f2becedd484              # double 1.6912039999999999
	.quad	0x3fde0b45ae5ffa3c              # double 0.46943800000000002
	.quad	0x401c7b6ed677707a              # double 7.1205400000000001
	.quad	0x3ffd7d04a2fcefaa              # double 1.8430219999999999
	.quad	0x40219bad7d7c2ca1              # double 8.8040579999999995
	.quad	0x4020395d2d01c0ca              # double 8.1120389999999993
	.quad	0x40211f8b588e368f              # double 8.5616099999999999
	.quad	0x3fe9770bd017dae8              # double 0.79578199999999999
	.quad	0x40216b8950763a19              # double 8.710032
	.quad	0x4021fff7be121ee6              # double 8.9999369999999992
	.quad	0x4020e96b54e2b064              # double 8.4558970000000002
	.quad	0x4001a019b0ab2e17              # double 2.2031740000000002
	.quad	0x4001e5be1a826245              # double 2.2371789999999998
	.quad	0x400f180ecfa69be1              # double 3.8867470000000002
	.quad	0x3ff89a2403148777              # double 1.5376320000000001
	.quad	0x3fe7fac1d29dc726              # double 0.74936000000000003
	.quad	0x3fef9d388a8b08dd              # double 0.98794199999999998
	.quad	0x40058b430f49491f              # double 2.6929989999999999
	.quad	0x40066468cac4b4d0              # double 2.7990279999999998
	.quad	0x3ff5924180d3cff6              # double 1.3482069999999999
	.quad	0x401db02f2f987400              # double 7.4220550000000003
	.quad	0x4021e08bb906466b              # double 8.9385659999999998
	.quad	0x4013f6b0d9513f8e              # double 4.9909090000000003
	.quad	0x40073e8ccdd93c47              # double 2.9055420000000001
	.quad	0x40032d1958969a0b              # double 2.3970210000000001
	.quad	0x400d0c4ef88b9778              # double 3.6310099999999998
	.quad	0x40168c122749f0e5              # double 5.6367880000000001
	.quad	0x40122dc725c3dee8              # double 4.5447050000000004
	.quad	0x400e37ccc0379314              # double 3.7772459999999999
	.quad	0x3fef73471f79420b              # double 0.98282199999999997
	.quad	0x40233093532e7b3e              # double 9.5948740000000008
	.quad	0x401d63f748a15981              # double 7.3476229999999996
	.quad	0x401bc21fafc8b008              # double 6.9395740000000004
	.quad	0x401f0f43419e3001              # double 7.7649049999999997
	.quad	0x4018f0242d05f288              # double 6.2345129999999997
	.quad	0x402128563ed0f627              # double 8.5787829999999996
	.quad	0x4017fef30a4e379b              # double 5.9989739999999996
	.quad	0x4011fbba98eda22f              # double 4.4958289999999996
	.quad	0x40150044ae85b9e9              # double 5.2502620000000002
	.quad	0x4023728a82a5614e              # double 9.7237130000000001
	.quad	0x4015f5714b9cb685              # double 5.4896900000000004
	.quad	0x401c9d5a9eb2074f              # double 7.1536660000000003
	.quad	0x401a774bc6a7ef9e              # double 6.6165000000000003
	.quad	0x4013ee8c47a17f41              # double 4.9829569999999999
	.quad	0x40223dfbf83382e4              # double 9.1210629999999994
	.quad	0x401104ed6fda836f              # double 4.2548120000000003
	.quad	0x4000ce8d10f51aca              # double 2.1008550000000001
	.quad	0x4004aca8198f1d3f              # double 2.5843050000000001
	.quad	0x4009b87724fa8b4c              # double 3.215071
	.quad	0x401bdd5bab21815a              # double 6.96617
	.quad	0x402303508f648c72              # double 9.5064740000000008
	.quad	0x401cb06c00da1a93              # double 7.1722869999999999
	.quad	0x40169e5471715c64              # double 5.6546190000000003
	.quad	0x3fef0b04ab606b7b              # double 0.97009500000000004
	.quad	0x4021950e34762952              # double 8.7911239999999999
	.quad	0x3ffaed0917d6b65b              # double 1.6828700000000001
	.quad	0x401c2e2003ab862b              # double 7.0450439999999999
	.quad	0x401233a1d323fee3              # double 4.5504220000000002
	.quad	0x400c14f82f512663              # double 3.5102389999999999
	.quad	0x4022fd33b1077469              # double 9.4945350000000008
	.quad	0x3fb2acfb762d83c7              # double 0.072952000000000003
	.quad	0x40234886162f166e              # double 9.641648
	.quad	0x4012496dd26b723f              # double 4.5717080000000001
	.quad	0x400f2016052502ef              # double 3.8906670000000001
	.quad	0x40123e82949a5658              # double 4.561045
	.quad	0x40205cbc05d52c17              # double 8.1811220000000002
	.quad	0x3fc05ae5ffa3b9ae              # double 0.127774
	.quad	0x4016bd5410f94c88              # double 5.6848910000000004
	.quad	0x400f0db163baba7c              # double 3.8816860000000002
	.quad	0x401eba19008205ff              # double 7.6817359999999998
	.quad	0x4022df3b645a1cac              # double 9.4359999999999999
	.quad	0x4020d7bb73083559              # double 8.4213520000000006
	.quad	0x4021efc08fa7a850              # double 8.9682659999999998
	.quad	0x402063a98eda22f7              # double 8.1946530000000006
	.quad	0x4022b2715831f03d              # double 9.3485209999999999
	.quad	0x4004b9695d91ab8f              # double 2.5905330000000002
	.quad	0x3ff5ca70d1fa3337              # double 1.3619239999999999
	.quad	0x40172145953586cb              # double 5.7824920000000004
	.quad	0x40234dd894812be5              # double 9.6520430000000008
	.quad	0x4010d5f78359bc34              # double 4.208952
	.quad	0x400e426f60e0eb68              # double 3.7824390000000001
	.quad	0x4021ed41b75a74c1              # double 8.9633920000000007
	.quad	0x401a50caa326e115              # double 6.5788979999999997
	.quad	0x401628c9320d9946              # double 5.5398300000000003
	.quad	0x4018694b380cb6c8              # double 6.1028260000000003
	.quad	0x40212005a2d72ffd              # double 8.5625429999999998
	.quad	0x3ff7a1cffeb074a7              # double 1.4770049999999999
	.quad	0x401e9521144cbe1f              # double 7.6456340000000002
	.quad	0x40164ca7d6733ebc              # double 5.574859
	.quad	0x4020179b77c02afe              # double 8.0461080000000003
	.quad	0x4018270c996b7671              # double 6.0381340000000003
	.quad	0x4015eaaf35e310dc              # double 5.4791840000000001
	.quad	0x40234ff1d81f1066              # double 9.6561419999999991
	.quad	0x401982fcefaa4767              # double 6.3779180000000002
	.quad	0x401878b0d0edc3bd              # double 6.1178619999999997
	.quad	0x401b11eff9f87f02              # double 6.7675169999999998
	.quad	0x401cbf9a49c2c1b1              # double 7.1871119999999999
	.quad	0x40225ee02a77a2cf              # double 9.1853040000000004
	.quad	0x400e725785f8d2e5              # double 3.805831
	.quad	0x40177e56cd6c2efd              # double 5.8733779999999998
	.quad	0x40074c3e3193f6c2              # double 2.9122279999999998
	.quad	0x4023d7a5b0ff10ed              # double 9.9211860000000005
	.quad	0x402171919ac79703              # double 8.7218140000000002
	.quad	0x401670ff10ecb74e              # double 5.6103480000000001
	.quad	0x40185bca5375c8da              # double 6.089639
	.quad	0x401bc8df37329c34              # double 6.9461639999999996
	.quad	0x40194796bfca85cb              # double 6.3199110000000003
	.quad	0x40214aacd9e83e42              # double 8.6458499999999994
	.quad	0x4022001d9f4d37c1              # double 9.0002259999999996
	.quad	0x4012325d8d79d0a6              # double 4.5491849999999996
	.quad	0x401dd3b645a1cac1              # double 7.4567500000000004
	.quad	0x401a2f7121ab4b73              # double 6.5463300000000002
	.quad	0x401e83bc0a06e9ff              # double 7.6286469999999999
	.quad	0x400531fab96f21f7              # double 2.6494040000000001
	.quad	0x4010851b0ccbc05d              # double 4.1299859999999997
	.quad	0x4020e3228dc981bf              # double 8.4436230000000005
	.quad	0x40194107faa044af              # double 6.3135070000000004
	.quad	0x400f9bbf0dc768e0              # double 3.9510480000000001
	.quad	0x400c46540cc78e9f              # double 3.5343399999999998
	.quad	0x4022c83c07ee0b0b              # double 9.391083
	.quad	0x3fffcacd184c2720              # double 1.987012
	.quad	0x3fb8a1cef240fa9c              # double 0.096218999999999998
	.quad	0x401b7657b84db9c7              # double 6.8655689999999998
	.quad	0x400b827a63736cdf              # double 3.4387099999999999
	.quad	0x4019798915bdd767              # double 6.3686870000000004
	.quad	0x400de6a098915bdd              # double 3.7376109999999998
	.quad	0x4014b93ff25e56cd              # double 5.1809079999999996
	.quad	0x401e321ccd962068              # double 7.5489379999999997
	.quad	0x4022339f77292c49              # double 9.1008259999999996
	.quad	0x401ac07c4199fe43              # double 6.6879739999999996
	.quad	0x4018d0b4e11dbca9              # double 6.2038149999999996
	.quad	0x401a932617c1bda5              # double 6.6436999999999999
	.quad	0x40115075f6fd21ff              # double 4.3285749999999998
	.quad	0x4023975ddd2ae8e2              # double 9.7956380000000003
	.quad	0x4017236049ecb31c              # double 5.7845469999999999
	.quad	0x401334f3343fa2ad              # double 4.8017089999999998
	.quad	0x40223500f776c482              # double 9.1035229999999991
	.quad	0x3ff51e6256366d7a              # double 1.3199179999999999
	.quad	0x402065cdd50a88f0              # double 8.198836
	.quad	0x40126e24febd09e1              # double 4.6075629999999999
	.quad	0x4016180ae1049236              # double 5.523479
	.quad	0x400b98288051c9f7              # double 3.4492959999999999
	.quad	0x4017d0ec31162281              # double 5.9540259999999998
	.quad	0x400d4d8c2a454de8              # double 3.662865
	.quad	0x401229cbee807bbb              # double 4.5408169999999997
	.quad	0x400a155a3a08398a              # double 3.2604259999999998
	.quad	0x4019a4ef88b97785              # double 6.4110699999999996
	.quad	0x3fd20092ccf6be38              # double 0.28128500000000001
	.quad	0x402332e05ccc89b1              # double 9.5993680000000001
	.quad	0x40133a737110e454              # double 4.8070810000000002
	.quad	0x4010d5d074213a0c              # double 4.2088029999999996
	.quad	0x401e5d9a95421c04              # double 7.5914099999999998
	.quad	0x4022f0a65492ff4c              # double 9.4700190000000006
	.quad	0x401647cb2d905c03              # double 5.5701109999999998
	.quad	0x3ff6f9bbadc0980b              # double 1.43597
	.quad	0x401e5babead4f590              # double 7.5895229999999998
	.quad	0x40224b291b823c86              # double 9.1467980000000004
	.quad	0x401c5f1172ef0ae5              # double 7.0928399999999998
	.quad	0x4011e5b18548a9bd              # double 4.47431
	.quad	0x400add80e496edee              # double 3.3581560000000001
	.quad	0x40042ea0fd3b29a2              # double 2.5227680000000001
	.quad	0x400a5cb0c026cc1d              # double 3.2952590000000002
	.quad	0x400f2d63cb817332              # double 3.8971629999999999
	.quad	0x4003941e14bdfd26              # double 2.4473229999999999
	.quad	0x4005bee4e26d4802              # double 2.71821
	.quad	0x400d33eee5258927              # double 3.6503580000000002
	.quad	0x3fe409741d084e83              # double 0.62615399999999999
	.quad	0x402222d1aeb3dd12              # double 9.0680060000000005
	.quad	0x4007ffd3f5b5fa22              # double 2.9999159999999998
	.quad	0x402230f5c28f5c29              # double 9.0956250000000001
	.quad	0x3ff5f7ea1c68ec53              # double 1.3730260000000001
	.quad	0x401e6a2877ee4e27              # double 7.6036700000000001
	.quad	0x40121464dc22ab26              # double 4.5199160000000003
	.quad	0x400db9d909f1f14a              # double 3.7157460000000002
	.quad	0x4021647f34938583              # double 8.6962829999999993
	.quad	0x402343f42352eb5f              # double 9.6327219999999993
	.quad	0x40156d21bc126a66              # double 5.3565740000000002
	.quad	0x4020ff7dd872f33d              # double 8.4990070000000006
	.quad	0x401beb399f5dfeb9              # double 6.9797120000000001
	.quad	0x401f747021d10b20              # double 7.8637090000000001
	.quad	0x3fe592c493426784              # double 0.67416600000000004
	.quad	0x402110eb0318b934              # double 8.5330429999999992
	.quad	0x3ff633461309c800              # double 1.387518
	.quad	0x400d7e974a3400b9              # double 3.6868120000000002
	.quad	0x40207790b8498809              # double 8.2335259999999995
	.quad	0x4003844178705426              # double 2.439578
	.quad	0x4014ff6837f7be12              # double 5.2494209999999999
	.quad	0x401c61049235f80a              # double 7.0947440000000004
	.quad	0x3fff2aab042528ae              # double 1.9479169999999999
	.quad	0x3ffd98aa8650e779              # double 1.849772
	.quad	0x4016cd9d3458cd21              # double 5.7007950000000003
	.quad	0x4016769270b06c44              # double 5.615793
	.quad	0x402010ee6b8305d9              # double 8.0330689999999993
	.quad	0x402258bdec5f394b              # double 9.1733239999999991
	.quad	0x4021c28f9f44d445              # double 8.8800019999999993
	.quad	0x401b073a797891e2              # double 6.7570589999999999
	.quad	0x3fe145b6c3760bf6              # double 0.53976000000000002
	.quad	0x3ffe0c8472c0e7bc              # double 1.8780559999999999
	.quad	0x4016e8611fd5885d              # double 5.7269329999999998
	.quad	0x401326a2b1704ff4              # double 4.7877299999999998
	.quad	0x4001dd7fd82773e2              # double 2.2331539999999999
	.quad	0x4017929a5ebb773a              # double 5.893167
	.quad	0x40123fe586013661              # double 4.5623990000000001
	.quad	0x400fbafc04c8bc9d              # double 3.9663010000000001
	.quad	0x401e60196d8f4f94              # double 7.5938470000000002
	.quad	0x401a3e5471715c64              # double 6.5608690000000003
	.quad	0x4015ef4f50a02b84              # double 5.4837009999999999
	.quad	0x401909ae0c176577              # double 6.2594529999999997
	.quad	0x3ff0e743a647fdc6              # double 1.0564610000000001
	.quad	0x40192a265f0f5a10              # double 6.2911619999999999
	.quad	0x40158cd07852f7f5              # double 5.3875140000000004
	.quad	0x40228f0f3882278d              # double 9.2794129999999999
	.quad	0x4013844178705426              # double 4.879156
	.quad	0x402318c88a47ecff              # double 9.5484050000000006
	.quad	0x401a8105186db50f              # double 6.6259959999999998
	.quad	0x3fd10dcfcc5b8dc5              # double 0.26646799999999998
	.quad	0x4010f40cc78e9f6b              # double 4.2383300000000004
	.quad	0x40223ac4d65e4606              # double 9.1147829999999992
	.quad	0x40118bd1ed9dfdac              # double 4.3865429999999996
	.quad	0x40207e28240b7803              # double 8.2463999999999995
	.quad	0x4006cb463497b741              # double 2.8492549999999999
	.quad	0x40207feb4a66559f              # double 8.2498419999999992
	.quad	0x401bd2ef0ae53650              # double 6.9559899999999999
	.quad	0x40125a515ce9e5e2              # double 4.5882009999999998
	.quad	0x401baec0724b76f7              # double 6.9206560000000001
	.quad	0x4001c4a2fcefaa47              # double 2.2210139999999998
	.quad	0x3fe68292817763e5              # double 0.70343900000000004
	.quad	0x40149b4b2fa93af7              # double 5.1516539999999997
	.quad	0x3ff1075c4a83b1d1              # double 1.064297
	.quad	0x400ebc6f36ef8056              # double 3.842009
	.quad	0x4022c246bf01322f              # double 9.3794459999999997
	.quad	0x4017d540895d0b74              # double 5.9582540000000002
	.quad	0x4019e544bb1af3a1              # double 6.4738949999999997
	.quad	0x4006fdb65ecc3e32              # double 2.8738830000000002
	.quad	0x4023ba4c404a72eb              # double 9.8638630000000002
	.quad	0x3fe434c3c18b502b              # double 0.63144100000000003
	.quad	0x3ffa22456f75d9a1              # double 1.633367
	.quad	0x3ff09232d2bb2357              # double 1.035693
	.quad	0x3fd131769a91105e              # double 0.26864399999999999
	.quad	0x400e8ba8c586876e              # double 3.8181929999999999
	.quad	0x3ff7960956c0d6f5              # double 1.4741299999999999
	.quad	0x400b79c38b04ab60              # double 3.4344549999999998
	.quad	0x4023825bb7b6bb13              # double 9.7546060000000007
	.quad	0x4012043b70ef5665              # double 4.5041330000000004
	.quad	0x402399667b5f1bef              # double 9.7996099999999994
	.quad	0x4002c6a4ca4f440b              # double 2.346994
	.quad	0x4005d2990f301eac              # double 2.7278310000000001
	.quad	0x400071d2e0e30447              # double 2.0555780000000001
	.quad	0x4019262131a8ef78              # double 6.287236
	.quad	0x4000b7e3d1cc100e              # double 2.0897899999999998
	.quad	0x40237b6672fba01f              # double 9.7410160000000001
	.quad	0x3f75c0fcb4f1e4b4              # double 0.0053109999999999997
	.quad	0x40004cd63cb81733              # double 2.0375179999999999
	.quad	0x40229256798958da              # double 9.2858160000000005
	.quad	0x402367f77af64064              # double 9.7030600000000006
	.quad	0x4020f060dcb9a9da              # double 8.4694889999999994
	.quad	0x4006ce086bdf4c2b              # double 2.8506019999999999
	.quad	0x401c59285a921cce              # double 7.0870680000000004
	.quad	0x4022861a3f4666ed              # double 9.2619190000000007
	.quad	0x401ac9999999999a              # double 6.6968750000000004
	.quad	0x4000717720c8cd64              # double 2.0554030000000001
	.quad	0x3ff8e76102795704              # double 1.556489
	.quad	0x3ff15a187a4a48f9              # double 1.0844959999999999
	.quad	0x3feb0012dfd694cd              # double 0.84375900000000004
	.quad	0x4022f21dfb9389b5              # double 9.4728849999999997
	.quad	0x401043300de4c511              # double 4.0656129999999999
	.quad	0x40183a433508f649              # double 6.0568970000000002
	.quad	0x401df2e6ea854478              # double 7.487209
	.quad	0x401a9a975afaf859              # double 6.6509679999999998
	.quad	0x40192ca89fc6da45              # double 6.2936120000000004
	.quad	0x4014b2170931012a              # double 5.1739160000000002
	.quad	0x401411d9f4d37c13              # double 5.0174329999999996
	.quad	0x3fd51d8e86402081              # double 0.32992899999999997
	.quad	0x4007215097c80842              # double 2.891267
	.quad	0x40037c011d3671ac              # double 2.435549
	.quad	0x3fa1c193b3a68b1a              # double 0.034680000000000002
	.quad	0x402229331a08bfc2              # double 9.0804679999999998
	.quad	0x40196d573647baaa              # double 6.3567780000000003
	.quad	0x401ef57abb8800eb              # double 7.7397260000000001
	.quad	0x4003b18e325d4a5e              # double 2.461697
	.quad	0x4001b9a9da597d4a              # double 2.2156560000000001
	.quad	0x4017890c9107faa0              # double 5.8838369999999998
	.quad	0x4000a3eb7cbb3c82              # double 2.0800390000000002
	.quad	0x401af306a2b17050              # double 6.73733
	.quad	0x401f4d7fd82773e2              # double 7.8256829999999997
	.quad	0x401a1b55ac03ff69              # double 6.526694
	.quad	0x4002a2e7f6f4be83              # double 2.3295439999999998
	.quad	0x401227f2c3009b30              # double 4.5390119999999996
	.quad	0x400c5ba8826aa8eb              # double 3.5447549999999999
	.quad	0x401b45e4e69f05ea              # double 6.8182559999999999
	.quad	0x400c06994185058e              # double 3.5032220000000001
	.quad	0x3fe7fcfa26a22b39              # double 0.74963100000000005
	.quad	0x3ff62658c4bd33d3              # double 1.3843620000000001
	.quad	0x401f7c2ca148ba84              # double 7.871264
	.quad	0x4022a9d68c692f6f              # double 9.3317150000000009
	.quad	0x4023c01f969e3c97              # double 9.8752410000000008
	.quad	0x3ff3d524bfd2e947              # double 1.2395370000000001
	.quad	0x4021444dca8e2e2c              # double 8.6334060000000008
	.quad	0x4022e95e9e1b089a              # double 9.4558
	.quad	0x4019020ea5b530cf              # double 6.2520090000000001
	.quad	0x3ff07f5f91600f34              # double 1.0310969999999999
	.quad	0x40101201040bfe3b              # double 4.017582
	.quad	0x4014cd031055b899              # double 5.2002069999999998
	.quad	0x3ff42cd39da16617              # double 1.2609440000000001
	.quad	0x40233485a0be5109              # double 9.6025819999999999
	.quad	0x400db1dd5d3dc8b8              # double 3.7118479999999998
	.quad	0x401dd709741d084f              # double 7.4599970000000004
	.quad	0x4011ad6cb5350093              # double 4.4193600000000002
	.quad	0x40128e32a0663c75              # double 4.638865
	.quad	0x4012d2c27a63736d              # double 4.7058200000000001
	.quad	0x4023136f9fcb0c02              # double 9.5379609999999992
	.quad	0x4012b4484944ed70              # double 4.6760570000000001
	.quad	0x4011081a1554fbdb              # double 4.2579120000000001
	.quad	0x401bc756c93a7115              # double 6.9446669999999999
	.quad	0x4023d9e85fd04a30              # double 9.9256010000000003
	.quad	0x40129dd00f776c48              # double 4.6541139999999999
	.quad	0x401d3459d99029ae              # double 7.3011239999999997
	.quad	0x4021b541d8e86402              # double 8.8540179999999999
	.quad	0x401d85a294141e9b              # double 7.380503
	.quad	0x4013d50a88effe2a              # double 4.9580479999999998
	.quad	0x401c16f156191149              # double 7.022405
	.quad	0x40018c32a8c9b845              # double 2.1934559999999999
	.quad	0x40192d794a6eb91b              # double 6.2944079999999998
	.quad	0x4021c56eefa1e3eb              # double 8.8856120000000001
	.quad	0x40199620685553ef              # double 6.3966079999999996
	.quad	0x401a11843c3a42f2              # double 6.5171060000000001
	.quad	0x40126268d32830a1              # double 4.5961030000000003
	.quad	0x3ff649667b5f1bef              # double 1.3929199999999999
	.quad	0x401ef89d27c39368              # double 7.7427869999999998
	.quad	0x4014ce0114d2f5dc              # double 5.2011760000000002
	.quad	0x4018c1c9b4139863              # double 6.1892459999999998
	.quad	0x400e2bccf28c79f6              # double 3.7713869999999998
	.quad	0x401a04e4430b178b              # double 6.5047769999999998
	.quad	0x3ffdf70691ea78af              # double 1.8728089999999999
	.quad	0x4012b6a593a2df93              # double 4.6783659999999996
	.quad	0x4021864430b178b3              # double 8.7622389999999992
	.quad	0x40189382e44b6e93              # double 6.1440539999999997
	.quad	0x401f35d56f32bdc2              # double 7.8025719999999996
	.quad	0x40199c853c148345              # double 6.4028520000000002
	.quad	0x4021fffa5d28d003              # double 8.9999570000000002
	.quad	0x3fe27264a16a4873              # double 0.57646399999999998
	.quad	0x401b45ff609dcf89              # double 6.8183569999999998
	.quad	0x401c9ee73e681a9c              # double 7.1551790000000004
	.quad	0x4021d9fab96f21f7              # double 8.9257410000000004
	.quad	0x3fe8f97460242d06              # double 0.78045100000000001
	.quad	0x40203c6ef3d3a1d3              # double 8.1180339999999998
	.quad	0x402317eb6bf444e1              # double 9.5467180000000002
	.quad	0x40235c61d8622c45              # double 9.6804339999999999
	.quad	0x4001fcf2495e17e3              # double 2.2485089999999999
	.quad	0x4023dc84b5dcc63f              # double 9.9306999999999998
	.quad	0x40183c447c30d307              # double 6.0588550000000003
	.quad	0x400880fa9c12f09e              # double 3.0629780000000002
	.quad	0x4020891e85fd04a3              # double 8.267811
	.quad	0x3ff3240852b4d8ba              # double 1.1962969999999999
	.quad	0x4021db864cb5bb38              # double 8.9287589999999994
	.quad	0x400d409f623076c0              # double 3.6565539999999999
	.quad	0x400cba31a4bdba0a              # double 3.5909149999999999
	.quad	0x401dad616f86a099              # double 7.4193170000000004
	.quad	0x4010172e275ab7dc              # double 4.0226369999999996
	.quad	0x400db3a3ec02f2fa              # double 3.7127150000000002
	.quad	0x400233a1d323fee3              # double 2.2752110000000001
	.quad	0x4017a3f4a98aa865              # double 5.9101129999999999
	.quad	0x4001b1b4784230fd              # double 2.21177
	.quad	0x4016b8c2a454de7f              # double 5.6804300000000003
	.quad	0x4020f925fe974a34              # double 8.4866179999999999
	.quad	0x4004da5f41aef6f9              # double 2.606627
	.quad	0x40224acb641700ce              # double 9.1460830000000009
	.quad	0x4019ff2a172abef0              # double 6.4991839999999996
	.quad	0x3fb3533f42352eb6              # double 0.075489000000000001
	.quad	0x402243e4473cd573              # double 9.1326009999999993
	.quad	0x40059cb039ef0f17              # double 2.701508
	.quad	0x40021ce746cb966c              # double 2.264113
	.quad	0x40029dcbddb9841b              # double 2.3270490000000001
	.quad	0x4013e09528f190d1              # double 4.9693189999999996
	.quad	0x4007eb5a20ddc619              # double 2.9899179999999999
	.quad	0x4005f30e7ff583a5              # double 2.7436799999999999
	.quad	0x3ffb53c148344c38              # double 1.707948
	.quad	0x3fe6ca07f66e86c6              # double 0.71216199999999996
	.quad	0x40219837b4a2339c              # double 8.7972999999999998
	.quad	0x401b15eaab042529              # double 6.7714030000000003
	.quad	0x401ee9008205ff1e              # double 7.7275410000000004
	.quad	0x40200531550ca1cf              # double 8.0101420000000001
	.quad	0x402294345cfede98              # double 9.2894620000000003
	.quad	0x4020686d50657321              # double 8.2039589999999993
	.quad	0x4021eadb1e9f2778              # double 8.9587029999999999
	.quad	0x4002609dcf893faf              # double 2.2971759999999999
	.quad	0x4008540dd3fe1976              # double 3.041042
	.quad	0x3ffc2eddce7cd035              # double 1.761442
	.quad	0x400799085f4a1273              # double 2.9497230000000001
	.quad	0x4011fbf9c62a1b5c              # double 4.4960699999999996
	.quad	0x40217a146a1a500d              # double 8.7384369999999993
	.quad	0x400c71c5c5718eb9              # double 3.5555530000000002
	.quad	0x40006b6177ea1c69              # double 2.052432
	.quad	0x401b644cbe1eb420              # double 6.8479489999999998
	.quad	0x401a3f2dc2b0ea18              # double 6.5616979999999998
	.quad	0x40203d801b435265              # double 8.1201179999999997
	.quad	0x40174d46f587d6f9              # double 5.8254659999999996
	.quad	0x4022323dd54da4cf              # double 9.0981280000000009
	.quad	0x401db95faa8a82a5              # double 7.4310289999999997
	.quad	0x401f676965f5275f              # double 7.850988
	.quad	0x40193490e66cb103              # double 6.3013339999999998
	.quad	0x400071b1d92b7fe1              # double 2.0555150000000002
	.quad	0x400edc4545846e8f              # double 3.8575539999999999
	.quad	0x402220f7fcfc3f81              # double 9.0643919999999998
	.quad	0x400bfcc6c54bcf0b              # double 3.4984259999999998
	.quad	0x3feca4f8726d04e6              # double 0.89513799999999999
	.quad	0x3ff47e48a58b3f64              # double 1.2808310000000001
	.quad	0x3fec312d3415b142              # double 0.88100299999999998
	.quad	0x400bd3f63c31df76              # double 3.478497
	.quad	0x402035bec2480e8d              # double 8.1049710000000008
	.quad	0x400d1a78f25a2510              # double 3.6379260000000002
	.quad	0x4021ad40895d0b74              # double 8.8383830000000003
	.quad	0x4003d657fb69984a              # double 2.47966
	.quad	0x400126351deefe50              # double 2.143656
	.quad	0x400ae4095f2452c6              # double 3.3613460000000002
	.quad	0x3ff9dec0b567557a              # double 1.6168830000000001
	.quad	0x401897735c182ecb              # double 6.1479010000000001
	.quad	0x3ff9ae17a02fb5d0              # double 1.605003
	.quad	0x4000d7c88e79aae7              # double 2.1053630000000001
	.quad	0x4013eee3d5fdcdf7              # double 4.9832910000000004
	.quad	0x401d0a7d6733ebc0              # double 7.2602440000000001
	.quad	0x3ffa6f89c5e6ff7e              # double 1.652231
	.quad	0x400d2738a3b57c4e              # double 3.6441509999999999
	.quad	0x40235b3e78e1932d              # double 9.6782109999999992
	.quad	0x4015e312b1b36bd3              # double 5.4717510000000003
	.quad	0x4006f0aaa7ded6bb              # double 2.8675130000000002
	.quad	0x4019604bc27631b6              # double 6.3440390000000004
	.quad	0x3fd55b18548a9bd0              # double 0.33368500000000001
	.quad	0x40072fc829cfdd23              # double 2.8983310000000002
	.quad	0x40142b7fe08aefb3              # double 5.0424800000000003
	.quad	0x40106ad85dfa871a              # double 4.1043409999999998
	.quad	0x4012bc1a048e043a              # double 4.6836929999999999
	.quad	0x3ff117c6fbd273d6              # double 1.0683050000000001
	.quad	0x402201d6adf71eb0              # double 9.0035910000000001
	.quad	0x4016f26809d49518              # double 5.7367249999999999
	.quad	0x400e1097c80841ee              # double 3.7581020000000001
	.quad	0x3fb04e618ce2d1f2              # double 0.063696000000000003
	.quad	0x4009c9118c197e56              # double 3.2231779999999999
	.quad	0x402188c4588a04d1              # double 8.7671229999999998
	.quad	0x400baf7b9e060fe4              # double 3.4606849999999998
	.quad	0x401cdbca5375c8da              # double 7.214639
	.quad	0x4003916f4384ba0f              # double 2.4460130000000002
	.quad	0x3fda166e008e9b39              # double 0.40761900000000001
	.quad	0x3ffe8e9f6a93f291              # double 1.9098200000000001
	.quad	0x3ff626f60e0eb67c              # double 1.384512
	.quad	0x401403471f79420b              # double 5.0032009999999998
	.quad	0x401ce4b6e935b91f              # double 7.2233539999999996
	.quad	0x3ff9e0e736049ecb              # double 1.617408
	.quad	0x4022dcefcbd55608              # double 9.4315169999999994
	.quad	0x401f8dec5f394b7b              # double 7.8885969999999998
	.quad	0x401e295feda66128              # double 7.5404049999999998
	.quad	0x4023397396d0917d              # double 9.6122099999999992
	.quad	0x3fb9ccb7d41743e9              # double 0.10077999999999999
	.quad	0x3fff6a5f84cad57c              # double 1.96347
	.quad	0x4017d497b7414a4d              # double 5.9576099999999999
	.quad	0x401d62cd7cf5f4e4              # double 7.3464869999999998
	.quad	0x400bc6e221c8a7a4              # double 3.4721109999999999
	.quad	0x4013f90d9d7774ac              # double 4.9932160000000003
	.quad	0x4021827a41e57d9e              # double 8.7548390000000005
	.quad	0x4021717df19d66ae              # double 8.7216640000000005
	.quad	0x3ff3323aafff36ac              # double 1.1997629999999999
	.quad	0x40153c7219220ff5              # double 5.3090289999999998
	.quad	0x40013a7e30878748              # double 2.1535609999999998
	.quad	0x4020668bc169c23b              # double 8.2002849999999992
	.quad	0x4001ada4484944ed              # double 2.2097859999999998
	.quad	0x4023801cf7878b7a              # double 9.7502209999999998
	.quad	0x3fd54299d883ba34              # double 0.33218999999999999
	.quad	0x401935d95dd4c76d              # double 6.3025869999999999
	.quad	0x4000fe731d2e0e30              # double 2.1242429999999999
	.quad	0x4016243e10060781              # double 5.535393
	.quad	0x4009aec636b09635              # double 3.2103389999999998
	.quad	0x40232dc70435efa6              # double 9.5894089999999998
	.quad	0x40062c80c73abc94              # double 2.7717299999999998
	.quad	0x4013a9fc6da44849              # double 4.9160019999999998
	.quad	0x3febaa172abef06b              # double 0.86451299999999998
	.quad	0x401083a68b19a416              # double 4.128565
	.quad	0x4003b1c432ca57a8              # double 2.4618000000000002
	.quad	0x3ffcfb107746887b              # double 1.8112950000000001
	.quad	0x4022b980f55de58e              # double 9.3623119999999993
	.quad	0x401d69e3864cb5bb              # double 7.3534069999999998
	.quad	0x402292cd39da1661              # double 9.2867219999999993
	.quad	0x401ade581cf7878b              # double 6.7171329999999996
	.quad	0x4014ac2df0d41312              # double 5.1681439999999998
	.quad	0x401de792d1287c20              # double 7.476146
	.quad	0x4022f471715c63ae              # double 9.4774279999999997
	.quad	0x402271f9f01b866e              # double 9.2226099999999995
	.quad	0x401c248238540464              # double 7.0356529999999999
	.quad	0x40048b6f19934efd              # double 2.5680830000000001
	.quad	0x401df0a84be40421              # double 7.485017
	.quad	0x3ff5cff540895d0b              # double 1.3632709999999999
	.quad	0x3ffb7f63c31df762              # double 1.718601
	.quad	0x3ff886801711947d              # double 1.532837
	.quad	0x401b3754b05b7cfe              # double 6.8040339999999997
	.quad	0x4003f63e4abe6a33              # double 2.4952359999999998
	.quad	0x40158b20b8066c2b              # double 5.3858670000000002
	.quad	0x4009b018611fd588              # double 3.2109839999999998
	.quad	0x4002d6a0dbad3a60              # double 2.3547989999999999
	.quad	0x3ff48b945308bb90              # double 1.2840769999999999
	.quad	0x400a311dffc5479d              # double 3.2739829999999999
	.quad	0x40158e631f8a0903              # double 5.3890500000000001
	.quad	0x402397822bbecaac              # double 9.7959150000000008
	.quad	0x40092fbca1059ea5              # double 3.1483089999999998
	.quad	0x3fd34fdf3b645a1d              # double 0.30175000000000002
	.quad	0x4022acc1871e6cd3              # double 9.3374140000000008
	.quad	0x401acc07aaef2c73              # double 6.6992479999999999
	.quad	0x400a88672756861f              # double 3.3166030000000002
	.quad	0x4018473e681a9b8d              # double 6.0695740000000002
	.quad	0x40220794ea077037              # double 9.0148080000000004
	.quad	0x4023d55d5f56a7ad              # double 9.9167280000000008
	.quad	0x4010fe9c0229a5ec              # double 4.2486420000000003
	.quad	0x40214d6b87379746              # double 8.651211
	.quad	0x4023cab841248d7e              # double 9.895937
	.quad	0x3ff045a921ccd962              # double 1.017007
	.quad	0x40207373d188f430              # double 8.2254930000000002
	.quad	0x4014e1572580c309              # double 5.220059
	.quad	0x4002f9a38fbca106              # double 2.3718940000000002
	.quad	0x4005c4af922962d0              # double 2.7210380000000001
	.quad	0x4012c4dd2f1a9fbe              # double 4.6922499999999996
	.quad	0x4012b47bedb72820              # double 4.6762540000000001
	.quad	0x401dcbe4473cd573              # double 7.4491129999999997
	.quad	0x3fff976ee73e681b              # double 1.9744710000000001
	.quad	0x4015226b723ee1bd              # double 5.2836129999999999
	.quad	0x4008e43f5f91600f              # double 3.1114489999999999
	.quad	0x400f61a8262456f7              # double 3.9226839999999998
	.quad	0x4023170b06c43f60              # double 9.5450060000000008
	.quad	0x3ff1c4f7ec3547e0              # double 1.1105879999999999
	.quad	0x40156bd0e12e83a1              # double 5.355289
	.quad	0x401455e41d4b6a62              # double 5.0838780000000003
	.quad	0x4001b5ed06fef7c2              # double 2.2138309999999999
	.quad	0x4003f21ccd962068              # double 2.4932189999999999
	.quad	0x4001232e3821af7d              # double 2.1421779999999999
	.quad	0x3fd6a5daf07bfe7e              # double 0.35387299999999999
	.quad	0x401b0b4fa48301a8              # double 6.7610460000000003
	.quad	0x4017cc8abd5dc400              # double 5.9497479999999996
	.quad	0x4021e7837b4a233a              # double 8.9521750000000004
	.quad	0x40149c1333b96af0              # double 5.1524169999999998
	.quad	0x4003ad306a2b1705              # double 2.459565
	.quad	0x4020a68ff327aa69              # double 8.3253170000000001
	.quad	0x4010fbf3bea91d9b              # double 4.2460469999999999
	.quad	0x4018b5fd04a2fcf0              # double 6.1777230000000003
	.quad	0x400adb634dad31fd              # double 3.3571230000000001
	.quad	0x4021854e4c942d49              # double 8.7603629999999999
	.quad	0x401c6438088509c0              # double 7.0978700000000003
	.quad	0x4022ef9e16d6dc1a              # double 9.4680029999999995
	.quad	0x40159ee136e71cda              # double 5.4051559999999998
	.quad	0x400ff7f06705c897              # double 3.9960640000000001
	.quad	0x40210f80346dc5d6              # double 8.5302749999999996
	.quad	0x3fdf83c6c97d8cf4              # double 0.49241800000000002
	.quad	0x4018a238da3c2118              # double 6.1584199999999996
	.quad	0x3fef8d25edd05293              # double 0.98597999999999996
	.quad	0x4003131db445ed4a              # double 2.384334
	.quad	0x3ff762f6a50d6b23              # double 1.4616610000000001
	.quad	0x401a4c0e38a7e73a              # double 6.5742729999999998
	.quad	0x40171d0c3d25247d              # double 5.7783670000000003
	.quad	0x3ffba580c308feac              # double 1.7279059999999999
	.quad	0x3fff00ce91c8eac0              # double 1.937697
	.quad	0x3fb3cd24e160d888              # double 0.077349000000000001
	.quad	0x3fceef911cf355ce              # double 0.24168600000000001
	.quad	0x4015f71cda2b5a21              # double 5.4913210000000001
	.quad	0x401f45dd8f92af9b              # double 7.8182280000000003
	.quad	0x3ff3717acc4ef88c              # double 1.2152050000000001
	.quad	0x401292cf95d4e8fb              # double 4.64337
	.quad	0x401c76e6d9be4cd7              # double 7.1161149999999997
	.quad	0x3fd803afb7e90ff9              # double 0.37522499999999998
	.quad	0x4015fcc7d1bb4917              # double 5.4968560000000002
	.quad	0x40207dc67dfe32a0              # double 8.2456549999999993
	.quad	0x40227699c7bcc294              # double 9.2316420000000007
	.quad	0x4007db55ac03ff69              # double 2.982097
	.quad	0x3fed05d0fa58f712              # double 0.90695999999999999
	.quad	0x3feb675bc44bf4cb              # double 0.85636699999999999
	.quad	0x4017dbfa0945f9df              # double 5.9648209999999997
	.quad	0x401044ec636b0963              # double 4.0673079999999997
	.quad	0x4023c5017dae8188              # double 9.8847769999999997
	.quad	0x400cbf97aaac1095              # double 3.5935510000000002
	.quad	0x4007e12839042d8c              # double 2.9849399999999999
	.quad	0x3fd8ac81d3aa36a0              # double 0.38552900000000001
	.quad	0x401f5ea67e846a5d              # double 7.8424319999999996
	.quad	0x401e6397dd00f777              # double 7.5972590000000002
	.quad	0x40179514c22ee419              # double 5.8955869999999999
	.quad	0x401b014727dcbddc              # double 6.7512480000000004
	.quad	0x40218a90cd423d92              # double 8.7706359999999997
	.quad	0x40209ce5f7403dde              # double 8.3064420000000005
	.quad	0x4022fb0f062d40ab              # double 9.4903490000000001
	.quad	0x4010b71e29b6b2af              # double 4.1788259999999999
	.quad	0x40232e705c896dd2              # double 9.5907009999999993
	.quad	0x4018737c5692b3cc              # double 6.1127789999999997
	.quad	0x4012167fd3f5b5fa              # double 4.5219719999999999
	.quad	0x40200759ccfaeff6              # double 8.0143570000000004
	.quad	0x40200b92189bd838              # double 8.0225989999999996
	.quad	0x4005d73860999dcb              # double 2.7300879999999998
	.quad	0x4023f5b5b70691ea              # double 9.9799019999999992
	.quad	0x400691a32b12d341              # double 2.8211119999999998
	.quad	0x4013627d45a5fc7e              # double 4.8461809999999996
	.quad	0x401a9404a72ead92              # double 6.6445489999999996
	.quad	0x3ffec3a96d4c33b5              # double 1.922769
	.quad	0x3ffd3d44998d0460              # double 1.827458
	.quad	0x401a8acf312b1b37              # double 6.6355560000000002
	.quad	0x400bfd6f112fd32c              # double 3.4987469999999998
	.quad	0x4014a029ae4f3344              # double 5.156409
	.quad	0x401f809070fbeb9e              # double 7.8755509999999997
	.quad	0x40064501e2584f4c              # double 2.7836949999999998
	.quad	0x4023b39abf338716              # double 9.8507899999999999
	.quad	0x3fe3a4bfd2e94680              # double 0.61386099999999999
	.quad	0x4019c10d7be9856a              # double 6.4385279999999998
	.quad	0x3ff2e7589efd86a9              # double 1.181481
	.quad	0x401df58f7121ab4b              # double 7.4898049999999996
	.quad	0x3ffbd2c493426784              # double 1.7389570000000001
	.quad	0x400e59e6ab9b23dd              # double 3.7938969999999999
	.quad	0x40131342edbb59de              # double 4.7688100000000002
	.quad	0x4022a8620ab71327              # double 9.3288729999999997
	.quad	0x3fe81bac2df0d413              # double 0.75337799999999999
	.quad	0x40007f0563ed0f62              # double 2.0620219999999998
	.quad	0x3fd0c322291fb3fa              # double 0.26190999999999998
	.quad	0x400bdadb8348f53c              # double 3.4818639999999998
	.quad	0x3ff17e931876188b              # double 1.093402
	.quad	0x3fc2d916872b020c              # double 0.14724999999999999
	.quad	0x4011ed3dc8b86b16              # double 4.481681
	.quad	0x3fbbb6fe2e6ea854              # double 0.108261
	.quad	0x4021d7fcfc3f811f              # double 8.9218519999999994
	.quad	0x4021a193d5347a5b              # double 8.8155809999999999
	.quad	0x402117d1569f4906              # double 8.546519
	.quad	0x40168d05f2884838              # double 5.6377179999999996
	.quad	0x4019261dc93ea2d3              # double 6.287223
	.quad	0x3fed75e2046c764b              # double 0.92064000000000001
	.quad	0x4019571865519371              # double 6.3350540000000004
	.quad	0x401bcd40ee06d938              # double 6.9504429999999999
	.quad	0x400a2f70153bd167              # double 3.2731629999999998
	.quad	0x400affad2999567e              # double 3.3748420000000001
	.quad	0x4015e739b024f65a              # double 5.4758060000000004
	.quad	0x40225953dea465a5              # double 9.1744679999999992
	.quad	0x40235b864cb5bb38              # double 9.6787589999999994
	.quad	0x4002e49ba5e353f8              # double 2.3616250000000001
	.quad	0x40212eaf89c5e6ff              # double 8.5911829999999991
	.quad	0x40237d842b734b51              # double 9.7451489999999996
	.quad	0x401e4cbc48f10a9a              # double 7.5749370000000003
	.quad	0x401fdb8f9b13165d              # double 7.9644149999999998
	.quad	0x4007132bdc26dce4              # double 2.8843610000000002
	.quad	0x3f8146e4c0df58c1              # double 0.0084360000000000007
	.quad	0x401c3398e9707182              # double 7.0503879999999999
	.quad	0x3fe7f0691ea78af4              # double 0.74809700000000001
	.quad	0x40221b5dedf1e083              # double 9.0534510000000008
	.quad	0x400ab76ee73e681b              # double 3.3395670000000002
	.quad	0x401bcb7739f340d5              # double 6.9486970000000001
	.quad	0x401d9e23af31b153              # double 7.404433
	.quad	0x4006bdf5cf2495e1              # double 2.8427539999999998
	.quad	0x3fdb4ea8da7f3cf7              # double 0.426676
	.quad	0x402064db163baba8              # double 8.1969840000000005
	.quad	0x40162ed1394317ad              # double 5.5457200000000002
	.quad	0x402331e2de870974              # double 9.5974339999999997
	.quad	0x401172441fea8113              # double 4.3615880000000002
	.quad	0x4018955000c9539c              # double 6.1458130000000004
	.quad	0x402387ff151e7536              # double 9.7656179999999999
	.quad	0x40113b1ab0856e69              # double 4.3077189999999996
	.quad	0x401747589efd86a9              # double 5.819674
	.quad	0x4017b13ad5bee3d6              # double 5.923076
	.quad	0x400a0c1db0142f62              # double 3.255916
	.quad	0x401fcb8a19c9d5a2              # double 7.9487690000000004
	.quad	0x3ffc952d234eb9a1              # double 1.7864199999999999
	.quad	0x4009442a66dbd72c              # double 3.1582840000000001
	.quad	0x400dab0292817764              # double 3.708501
	.quad	0x40213ec17ebaf102              # double 8.6225699999999996
	.quad	0x4020b0dbad3a604e              # double 8.3454259999999998
	.quad	0x401753671ac14c66              # double 5.831448
	.quad	0x4014ce2c12ad81ae              # double 5.2013400000000001
	.quad	0x4023dc51fc4c1659              # double 9.9303129999999999
	.quad	0x4007da14cec41dd2              # double 2.9814850000000002
	.quad	0x401c88ff327aa68f              # double 7.1337859999999997
	.quad	0x401d07c393682731              # double 7.2575820000000002
	.quad	0x401fcd42c3c9eecc              # double 7.95045
	.quad	0x40026cf95d4e8fb0              # double 2.30321
	.quad	0x4019b048e043a216              # double 6.4221529999999998
	.quad	0x4022008c60cbf2b2              # double 9.0010709999999996
	.quad	0x402195781c714fce              # double 8.7919319999999992
	.quad	0x4006afde2ef4e011              # double 2.8358729999999999
	.quad	0x40239c32873bc904              # double 9.8050730000000001
	.quad	0x3fd62c450268900c              # double 0.34645199999999998
	.quad	0x400659d12cadddf4              # double 2.7938559999999999
	.quad	0x4021aad3e920c06a              # double 8.8336480000000002
	.quad	0x40112847b24638c9              # double 4.2893359999999996
	.quad	0x40138146a1a500d6              # double 4.8762460000000001
	.quad	0x40179774256bca53              # double 5.8979039999999996
	.quad	0x4015282be8bc169c              # double 5.2892299999999999
	.quad	0x40011202107b7846              # double 2.1337929999999998
	.quad	0x401596adf71eafee              # double 5.3971479999999996
	.quad	0x40183389f83be660              # double 6.0503309999999999
	.quad	0x40204a5b0ff10ecb              # double 8.1452259999999992
	.quad	0x3ffed8244e93e1ca              # double 1.9277690000000001
	.quad	0x3ff35b5a63f9a49c              # double 1.209803
	.quad	0x4004f7f5a5332ad0              # double 2.6210740000000001
	.quad	0x4011366f9335d24a              # double 4.3031600000000001
	.quad	0x4023e67381d7dbf5              # double 9.9501000000000008
	.quad	0x400bb7292c493426              # double 3.4644339999999998
	.quad	0x3fe2da9a8049667b              # double 0.58918499999999996
	.quad	0x4010409528f190d1              # double 4.0630689999999996
	.quad	0x40170533f42352eb              # double 5.7550809999999997
	.quad	0x400a8dac258d5843              # double 3.3191760000000001
	.quad	0x4014161a60d4562e              # double 5.021585
	.quad	0x40152f2e8c0485a1              # double 5.2960760000000002
	.quad	0x40066d130df9bdc7              # double 2.8032590000000002
	.quad	0x40160614163779ea              # double 5.5059360000000002
	.quad	0x40018a16a4873366              # double 2.1924260000000002
	.quad	0x401857bf1e8e6080              # double 6.0856899999999996
	.quad	0x401bbd798d8a979e              # double 6.9350339999999999
	.quad	0x40124605ee568a50              # double 4.5683819999999997
	.quad	0x4021b9b6f5caf2d8              # double 8.862724
	.quad	0x3fe014855da27286              # double 0.50250499999999998
	.quad	0x401f1630a91537a0              # double 7.7716700000000003
	.quad	0x3ffa63a4b5568e82              # double 1.649327
	.quad	0x4020c8257c914b16              # double 8.3909109999999991
	.quad	0x4015160285ec3dab              # double 5.2714939999999997
	.quad	0x3ffa5cb039ef0f17              # double 1.647629
	.quad	0x4020260a84be4042              # double 8.0742989999999999
	.quad	0x401266b8f9b13166              # double 4.6003150000000002
	.quad	0x3fe10583621fafc9              # double 0.53192300000000003
	.quad	0x4023f2ccf6be37df              # double 9.9742200000000007
	.quad	0x40215ea28fe260b3              # double 8.6848340000000004
	.quad	0x40229adcd2d44dcb              # double 9.3024660000000008
	.quad	0x401bfa37ef5a964f              # double 6.9943540000000004
	.quad	0x401fe6516db0dd83              # double 7.97492
	.quad	0x401cebf162ae4b02              # double 7.2304130000000004
	.quad	0x4020dc6887a8d64d              # double 8.4304849999999991
	.quad	0x4022cba8e71476b0              # double 9.3977730000000008
	.quad	0x40161b1704ff4342              # double 5.5264550000000003
	.quad	0x402278869c66d374              # double 9.2354020000000005
	.quad	0x3ffd5a682b62845a              # double 1.8345720000000001
	.quad	0x4022ecb252ce032e              # double 9.4622980000000005
	.quad	0x401564e9c4545847              # double 5.3485480000000001
	.quad	0x40012b1572580c31              # double 2.1460370000000002
	.quad	0x3feddebfa8f7db6e              # double 0.93344099999999997
	.quad	0x4012fe8815e39714              # double 4.7485660000000003
	.quad	0x400b8d15ad106ee3              # double 3.443889
	.quad	0x4007b50763a19008              # double 2.9633929999999999
	.quad	0x4011bf47304039ac              # double 4.436795
	.quad	0x401f3afa7221858c              # double 7.8075960000000002
	.quad	0x4020622a6f3f52fc              # double 8.1917299999999997
	.quad	0x40000b04ab606b7b              # double 2.0053800000000002
	.quad	0x4020eadcb1465e89              # double 8.4587149999999998
	.quad	0x400cd6c8b4395810              # double 3.6048749999999998
	.quad	0x40220c26138fffbd              # double 9.0237280000000002
	.quad	0x3ff4ee158750c1b9              # double 1.3081259999999999
	.quad	0x4014d4ef88b97785              # double 5.2079449999999996
	.quad	0x4020a67cd0353719              # double 8.3251709999999992
	.quad	0x401f885f4a1272c9              # double 7.8831759999999997
	.quad	0x4018e7c6327ed84d              # double 6.2263419999999998
	.quad	0x400aac46950fc71d              # double 3.3341189999999998
	.quad	0x401d3090b417ca21              # double 7.2974269999999999
	.quad	0x4011cb9170d62bf1              # double 4.4487969999999999
	.quad	0x3fe1a9c347e8ccde              # double 0.55197300000000005
	.quad	0x401f475a31a4bdba              # double 7.81968
	.quad	0x3ff980de4c51116b              # double 1.5939620000000001
	.quad	0x3ff6b32bdc26dce4              # double 1.4187430000000001
	.quad	0x402086a0dbad3a60              # double 8.2629459999999995
	.quad	0x40118eb702602c91              # double 4.3893700000000004
	.quad	0x400ac794ea077037              # double 3.3474520000000001
	.quad	0x4010980bed740c41              # double 4.1484829999999997
	.quad	0x3ff972a6b0d95140              # double 1.5904910000000001
	.quad	0x4018d2e5de15ca6d              # double 6.2059550000000003
	.quad	0x401ce0917d6b65aa              # double 7.2193050000000003
	.quad	0x40212b790fb65669              # double 8.5849080000000004
	.quad	0x3fde61dc93ea2d30              # double 0.47472300000000001
	.quad	0x4021d39ef0f16f44              # double 8.9133220000000008
	.quad	0x4013dd1a65061416              # double 4.9659209999999998
	.quad	0x40224b10fd7e4580              # double 9.1466139999999996
	.quad	0x4015729e90795f67              # double 5.3619329999999996
	.quad	0x400b7f0d413122b8              # double 3.4370370000000001
	.quad	0x3ff93b8a19c9d5a2              # double 1.5770360000000001
	.quad	0x402256481f53825e              # double 9.1685189999999999
	.quad	0x4014448387df5cf2              # double 5.0669079999999997
	.quad	0x4012412513b5bf6a              # double 4.563618
	.quad	0x3ffbdf58c08b75ea              # double 1.7420279999999999
	.quad	0x400cf677f6b1a2a5              # double 3.6203460000000001
	.quad	0x401380663c74fb55              # double 4.8753900000000003
	.quad	0x40212cb85a4f00ef              # double 8.5873439999999999
	.quad	0x3ffd54d50ebaade6              # double 1.8332109999999999
	.quad	0x401e5beb5b2d4d40              # double 7.5897649999999999
	.quad	0x4001a400fba8826b              # double 2.2050800000000002
	.quad	0x400d61882adc4c9d              # double 3.6726230000000002
	.quad	0x4013006cca2db61c              # double 4.7504150000000003
	.quad	0x40124fbefd00713f              # double 4.577877
	.quad	0x3fd14afd5454152b              # double 0.270202
	.quad	0x4011a109070fbeba              # double 4.4072610000000001
	.quad	0x3fe134677b395c42              # double 0.53764699999999999
	.quad	0x40088fb09203a323              # double 3.0701610000000001
	.quad	0x40230e57fb69984a              # double 9.5280149999999999
	.quad	0x40235e5cb35f3d7d              # double 9.6843009999999996
	.quad	0x3ffd391e646f1562              # double 1.8264450000000001
	.quad	0x4017f28d002e2329              # double 5.986866
	.quad	0x4003786e3b46fdeb              # double 2.4338039999999999
	.quad	0x401c9173fb7a5f42              # double 7.1420440000000003
	.quad	0x401791c5c5718eb9              # double 5.8923560000000004
	.quad	0x4008aa2339c0ebee              # double 3.083075
	.quad	0x3fd8343b70ef5665              # double 0.37818800000000002
	.quad	0x4001fced916872b0              # double 2.2484999999999999
	.quad	0x40166e7f6f4be836              # double 5.6079080000000001
	.quad	0x402072a12f901084              # double 8.2238860000000002
	.quad	0x400b0197e5647347              # double 3.3757779999999999
	.quad	0x402192f4f0d844d0              # double 8.7870249999999999
	.quad	0x4007cc9320d9945b              # double 2.9748899999999998
	.quad	0x401c63f811f4f50a              # double 7.097626
	.quad	0x4018c101b003686a              # double 6.1884829999999997
	.quad	0x401c2009f623076c              # double 7.031288
	.quad	0x402342263d816acf              # double 9.6291980000000005
	.quad	0x3fe7acd5b6805a2d              # double 0.73984799999999995
	.quad	0x40213b161a1db878              # double 8.6154030000000006
	.quad	0x40102116659d12cb              # double 4.0323120000000001
	.quad	0x4017515e7c8d1959              # double 5.8294620000000004
	.quad	0x4018793b7d84901d              # double 6.1183909999999999
	.quad	0x4018bc6c11a11234              # double 6.1840060000000001
	.quad	0x402014faeff5c6c1              # double 8.0409769999999998
	.quad	0x4010cd72367e414e              # double 4.2006309999999996
	.quad	0x4021c85b9e8c47a1              # double 8.8913239999999991
	.quad	0x401949d495182a99              # double 6.3220999999999998
	.quad	0x3ff8a048e043a216              # double 1.5391319999999999
	.quad	0x401df26edaa92e62              # double 7.4867509999999999
	.quad	0x40214c968943e100              # double 8.6495859999999993
	.quad	0x4011464c729f59cd              # double 4.318651
	.quad	0x40236c052d666a98              # double 9.7109769999999997
	.quad	0x402345e9e1b089a0              # double 9.6365499999999997
	.quad	0x401fd4bec679cc75              # double 7.9577590000000002
	.quad	0x40165d8d36b4c7f3              # double 5.5913589999999997
	.quad	0x401f4f9c1f85d745              # double 7.827744
	.quad	0x40182ff7164c729f              # double 6.0468409999999997
	.quad	0x3ff7aaab042528ae              # double 1.4791669999999999
	.quad	0x3fec75818c5c9a35              # double 0.88934400000000002
	.quad	0x3feb065d7cb2d906              # double 0.84452700000000003
	.quad	0x401b9654d61b2a28              # double 6.896808
	.quad	0x3ff9cea077036c9c              # double 1.612946
	.quad	0x401ca4d22c881e47              # double 7.1609579999999999
	.quad	0x401439d7342edbb6              # double 5.0564850000000003
	.quad	0x4013339b024f6599              # double 4.8003960000000001
	.quad	0x40025c011d3671ac              # double 2.294924
	.quad	0x400dc059210385c6              # double 3.7189199999999998
	.quad	0x401ec36ac647778e              # double 7.6908370000000001
	.quad	0x400c909e98dcdb38              # double 3.5706150000000001
	.quad	0x4017c3c60029f16b              # double 5.9411849999999999
	.quad	0x401c73d35eb7457c              # double 7.113111
	.quad	0x3ff1e6d7a56de332              # double 1.1188579999999999
	.quad	0x401e2a0d349be8ff              # double 7.5410659999999998
	.quad	0x4012e8ab92c06184              # double 4.7272169999999996
	.quad	0x40231c430b178b37              # double 9.5551989999999999
	.quad	0x4003bfbe76c8b439              # double 2.4686249999999998
	.quad	0x3ff5f61672324c83              # double 1.3725799999999999
	.quad	0x4019ddadfb506dd7              # double 6.4664840000000003
	.quad	0x4006d5ec80c73abd              # double 2.8544550000000002
	.quad	0x3fc11ab0856e696a              # double 0.133627
	.quad	0x4002655da272862f              # double 2.2994949999999998
	.quad	0x4018e3c46d82ba5a              # double 6.222429
	.quad	0x4020cb484d76ab58              # double 8.3970359999999999
	.quad	0x401bff6a93f290ac              # double 6.9994300000000003
	.quad	0x4022e3e89a88ace2              # double 9.4451339999999995
	.quad	0x4021eab0ea18372e              # double 8.9583809999999993
	.quad	0x40214922fad6cb53              # double 8.6428449999999994
	.quad	0x4020ac052d666a98              # double 8.3359769999999997
	.quad	0x400f0ee41919ac79              # double 3.8822709999999998
	.quad	0x401bb5247cb70ac4              # double 6.9268970000000003
	.quad	0x4017006e19b90eaa              # double 5.7504200000000001
	.quad	0x4011c2fdb8fde2ef              # double 4.4404209999999997
	.quad	0x4008652a411c2a02              # double 3.0493969999999999
	.quad	0x401b660ae9680e06              # double 6.8496509999999997
	.quad	0x4011cfa3b9ae0c17              # double 4.4527729999999996
	.quad	0x401d8de6149c6f37              # double 7.3885730000000001
	.quad	0x4010607cc7d1bb49              # double 4.0942259999999999
	.quad	0x400ec854477ff152              # double 3.847817
	.quad	0x400ef811f4f50a03              # double 3.8711280000000001
	.quad	0x3ff43827fa1a0cf2              # double 1.2637100000000001
	.quad	0x3ff8e28997c3d684              # double 1.555307
	.quad	0x401ed6759ab6d00b              # double 7.7094329999999997
	.quad	0x3fc8653005814941              # double 0.19058800000000001
	.quad	0x401f63d89ce4a7b5              # double 7.847506
	.quad	0x4002aeb91b3f20a7              # double 2.3353139999999999
	.quad	0x4006e4e26d4801f7              # double 2.8617599999999999
	.quad	0x4023ddabc0e38a7e              # double 9.9329509999999992
	.quad	0x401ea21ee675147f              # double 7.6583209999999999
	.quad	0x402081f2fdb8fde3              # double 8.2538070000000001
	.quad	0x4015b43c7d5ed070              # double 5.4260120000000001
	.quad	0x4003848f10a99b6f              # double 2.4397259999999998
	.quad	0x3fe068a936c58eeb              # double 0.51277600000000001
	.quad	0x4022874d7add15f0              # double 9.2642629999999997
	.quad	0x401ef23d9231c64c              # double 7.7365630000000003
	.quad	0x4014689f40a2877f              # double 5.1021700000000001
	.quad	0x401b995bbbe878fb              # double 6.8997640000000002
	.quad	0x4006d97aaac1094a              # double 2.8561909999999999
	.quad	0x400472fe3f359ff5              # double 2.556149
	.quad	0x3ffa0b69552e2fbe              # double 1.627786
	.quad	0x400e0ab25b317efe              # double 3.755223
	.quad	0x40228499285a921d              # double 9.2589810000000003
	.quad	0x40099126e978d4fe              # double 3.195875
	.quad	0x401ac8055fbb517a              # double 6.6953329999999998
	.quad	0x3ff3d209edbf8b9c              # double 1.2387790000000001
	.quad	0x3fce2da554b8bef9              # double 0.23576800000000001
	.quad	0x3fe4a26a22b3892f              # double 0.64482600000000001
	.quad	0x402241049235f80a              # double 9.1269880000000008
	.quad	0x3fe530f8c64fdb0a              # double 0.66222800000000004
	.quad	0x4017d3f077ccc038              # double 5.9569720000000004
	.quad	0x40156cc1ca3a4b55              # double 5.3562079999999996
	.quad	0x401de4955b4677b4              # double 7.4732260000000004
	.quad	0x401fa583e8576cce              # double 7.9116359999999997
	.quad	0x3ff1d50fc71d6063              # double 1.114517
	.quad	0x3ffce2e5de15ca6d              # double 1.8053950000000001
	.quad	0x40071528f190d174              # double 2.885332
	.quad	0x3ffa3cdcca70d1fa              # double 1.639859
	.quad	0x401223f78bbd3804              # double 4.5351239999999997
	.quad	0x4020fd269595feda              # double 8.4944349999999993
	.quad	0x4022ea6a44417870              # double 9.4578419999999994
	.quad	0x3ff000474d9c6b05              # double 1.000068
	.quad	0x4010b26809d49518              # double 4.1742249999999999
	.quad	0x402174bec679cc75              # double 8.7280180000000005
	.quad	0x402179767903211d              # double 8.7372320000000006
	.quad	0x4020a29003eea20a              # double 8.3175050000000006
	.quad	0x401288a0d349be90              # double 4.633426
	.quad	0x4022f823e9ea1405              # double 9.4846489999999992
	.quad	0x401ae558644523f6              # double 6.7239699999999996
	.quad	0x4013394b380cb6c8              # double 4.8059510000000003
	.quad	0x4023b5e69ad42c3d              # double 9.8552750000000006
	.quad	0x401084a0a0f4d7ae              # double 4.1295190000000002
	.quad	0x3ff49410f94c8798              # double 1.286149
	.quad	0x3ffac8a47ecfe9b8              # double 1.6739850000000001
	.quad	0x4023d3f6a0dbad3a              # double 9.9139909999999993
	.quad	0x401215536933a040              # double 4.5208259999999996
	.quad	0x4016f126e978d4fe              # double 5.7355
	.quad	0x4008ab4202d9cf14              # double 3.0836220000000001
	.quad	0x40209e050374ff86              # double 8.3086319999999994
	.quad	0x400c008e15011905              # double 3.5002710000000001
	.quad	0x400a1b8a19c9d5a2              # double 3.2634470000000002
	.quad	0x401d27aa68f4b620              # double 7.2887360000000001
	.quad	0x401f3cabc5154867              # double 7.8092490000000003
	.quad	0x401ea9f6a93f290b              # double 7.6659800000000002
	.quad	0x400b2f1455219a84              # double 3.3979879999999998
	.quad	0x3ffd1d5c31593e60              # double 1.8196680000000001
	.quad	0x40222e154434e337              # double 9.0900060000000007
	.quad	0x40051a426bb55ac0              # double 2.6378219999999999
	.quad	0x40239685985ad539              # double 9.7939880000000005
	.quad	0x3fce772d5e071c54              # double 0.238012
	.quad	0x401ac480a5accd53              # double 6.691897
	.quad	0x4022d007dd441355              # double 9.4063099999999995
	.quad	0x4011cf861a60d456              # double 4.4526599999999998
	.quad	0x3fe6f3a14cec41dd              # double 0.71723999999999999
	.quad	0x4011b3647baa9b4a              # double 4.4251880000000003
	.quad	0x3ff85fadafd11383              # double 1.5233589999999999
	.quad	0x3fe4e7620ee8d10f              # double 0.65324499999999996
	.quad	0x4017b28d8665e02f              # double 5.9243680000000003
	.quad	0x4002e529bae46cfd              # double 2.3618960000000002
	.quad	0x40162247021d10b2              # double 5.533474
	.quad	0x40143a0232096788              # double 5.0566490000000002
	.quad	0x40198c99f1ae2da5              # double 6.3873059999999997
	.quad	0x3ff5752eb5f5f0b3              # double 1.3411090000000001
	.quad	0x40042540cc78e9f7              # double 2.5181900000000002
	.quad	0x4016cd67fd3f5b60              # double 5.7005920000000003
	.quad	0x400c133f42352eb6              # double 3.509398
	.quad	0x401efc55000c953a              # double 7.7464180000000002
	.quad	0x4001f3879c4113c7              # double 2.2439110000000002
	.quad	0x40143563ed0f6274              # double 5.0521390000000004
	.quad	0x400d28ee6b8305d9              # double 3.6449859999999998
	.quad	0x4010551eb851eb85              # double 4.0831249999999999
	.quad	0x40232b3397dd00f7              # double 9.5843779999999991
	.quad	0x3ff1ec892ab68cef              # double 1.1202479999999999
	.quad	0x3ff0666666666666              # double 1.0249999999999999
	.quad	0x3fe5e136e71cda2b              # double 0.68374199999999996
	.quad	0x4002e7faa044ae86              # double 2.3632710000000001
	.quad	0x4009a56a37ac3eb8              # double 3.2057690000000001
	.quad	0x4021075fb2edfe76              # double 8.5144020000000005
	.quad	0x400cd573647baa9b              # double 3.6042239999999999
	.quad	0x401440c7c0f45176              # double 5.0632619999999999
	.quad	0x40065dc9c4da9004              # double 2.795795
	.quad	0x4014b712a0ec7432              # double 5.178782
	.quad	0x4010fe1eb4202d9d              # double 4.2481640000000001
	.quad	0x4021a29a1b9f98b7              # double 8.8175819999999998
	.quad	0x4010b0fcf80dc337              # double 4.1728399999999999
	.quad	0x4018ed1c7de5082d              # double 6.231554
	.quad	0x4010b7fe4bcad9ae              # double 4.1796810000000004
	.quad	0x4010133e35c5b4ab              # double 4.0187920000000004
	.quad	0x401f4411c2a02321              # double 7.8164740000000003
	.quad	0x4015f506dd69d302              # double 5.4892839999999996
	.quad	0x3feb747f993d5348              # double 0.85797100000000004
	.quad	0x3fd9810624dd2f1b              # double 0.39850000000000002
	.quad	0x4007da658c4bd33d              # double 2.9816389999999999
	.quad	0x4009c5c3dee78184              # double 3.221565
	.quad	0x401b881ecd4aa10e              # double 6.88293
	.quad	0x3fe81ff92f2b66b6              # double 0.75390299999999999
	.quad	0x4020cf7d73c92578              # double 8.4052539999999993
	.quad	0x4017828ed5f138bd              # double 5.8774980000000001
	.quad	0x3fff1694ccab3ede              # double 1.9430130000000001
	.quad	0x3fbf1cda2b5a20de              # double 0.121534
	.quad	0x4019cfaebc408d8f              # double 6.4528150000000002
	.quad	0x4000896dd26b723f              # double 2.0671040000000001
	.quad	0x3ff25372a38b8ae3              # double 1.145373
	.quad	0x4020b359146e4c0e              # double 8.3502890000000001
	.quad	0x40093790752da986              # double 3.1521309999999998
	.quad	0x4021bf3061c79b35              # double 8.8734160000000006
	.quad	0x401d8f5c28f5c28f              # double 7.3899999999999997
	.quad	0x402227f737da61e1              # double 9.0780580000000004
	.quad	0x400512b90a782907              # double 2.6341420000000002
	.quad	0x4017c0767d34df05              # double 5.9379520000000001
	.quad	0x3fffa3821af7d30b              # double 1.977419
	.quad	0x400f77d30ad46f58              # double 3.9335079999999998
	.quad	0x3fb245d41fa76534              # double 0.071377999999999997
	.quad	0x4015ef1c75818c5d              # double 5.4835070000000004
	.quad	0x3fe18ea5b530ced5              # double 0.54866300000000001
	.quad	0x3ffc66fa3fcc9eaa              # double 1.7751410000000001
	.quad	0x4002e92d55a3a084              # double 2.3638560000000002
	.quad	0x4023d9f0c34c1a8b              # double 9.9256650000000004
	.quad	0x3fac82be8bc169c2              # double 0.055684999999999998
	.quad	0x40163fe718a86d72              # double 5.562405
	.quad	0x401ac6cdaf4adbc6              # double 6.6941439999999997
	.quad	0x402254c33b539325              # double 9.1655519999999999
	.quad	0x4014701fb82c2bd8              # double 5.109496
	.quad	0x40103c5de9c0229a              # double 4.0589519999999997
	.quad	0x3ff88b81733226c4              # double 1.5340590000000001
	.quad	0x401e2aebc408d8ed              # double 7.5419150000000003
	.quad	0x401400d51f81a587              # double 5.000813
	.quad	0x400742b51bd61f5c              # double 2.907572
	.quad	0x4011cd6238da3c21              # double 4.4505699999999999
	.quad	0x3fe75ccc89b0ee4a              # double 0.730078
	.quad	0x3ff687dc37a3db3c              # double 1.408169
	.quad	0x4013b25d074213a1              # double 4.9241830000000002
	.quad	0x4010ad86a8fc0d2c              # double 4.1694589999999998
	.quad	0x4013c87d2c7b890d              # double 4.9457899999999997
	.quad	0x401e2178b3700475              # double 7.5326870000000001
	.quad	0x4021a73d5bab2181              # double 8.8266399999999994
	.quad	0x40069b280f12c27a              # double 2.8257599999999998
	.quad	0x40144669ced0b30b              # double 5.0687629999999997
	.quad	0x4001301fb82c2bd8              # double 2.148498
	.quad	0x4008b0a67620ee8d              # double 3.086255
	.quad	0x401d22ccb3a2595c              # double 7.2839840000000002
	.quad	0x3fe71fd7a13c254a              # double 0.72263699999999997
	.quad	0x4002dfe111276fb1              # double 2.3593160000000002
	.quad	0x402315d4a5df223a              # double 9.5426380000000002
	.quad	0x4013960c7c0f4517              # double 4.8965319999999997
	.quad	0x40170681669ced0b              # double 5.7563529999999998
	.quad	0x4017029f16b11c6d              # double 5.7525599999999999
	.quad	0x400d449cb252ce03              # double 3.6585019999999999
	.quad	0x400b7e22e5de15ca              # double 3.4365899999999998
	.quad	0x400e7471f79420b4              # double 3.8068580000000001
	.quad	0x4013677c45cbbc2c              # double 4.8510600000000004
	.quad	0x4022ab3892ee84ad              # double 9.3344159999999992
	.quad	0x4014d03968d759ef              # double 5.2033440000000004
	.quad	0x40155bb1af3a14cf              # double 5.3395450000000002
	.quad	0x401fa4906034f3fe              # double 7.9107070000000004
	.quad	0x401118c3b0c4588a              # double 4.274184
	.quad	0x400d9f290abb44e5              # double 3.702715
	.quad	0x3fed13986338b47c              # double 0.90864199999999994
	.quad	0x40236e3715400325              # double 9.7152639999999994
	.quad	0x3ff98d25edd05293              # double 1.5969599999999999
	.quad	0x4016c27b6fe2e6eb              # double 5.6899240000000004
	.quad	0x40202a4cc6822ff1              # double 8.0826170000000008
	.quad	0x401a75011904b3c4              # double 6.6142620000000001
	.quad	0x402301830e3cd9a5              # double 9.5029529999999997
	.quad	0x40134c7abfb9bed3              # double 4.8246869999999999
	.quad	0x40144a5a469d7343              # double 5.0726100000000001
	.quad	0x40225c2e557de0d6              # double 9.1800409999999992
	.quad	0x4021176a2f48c2e7              # double 8.5457319999999992
	.quad	0x401874894c447c31              # double 6.1138050000000002
	.quad	0x3fbe849cb252ce03              # double 0.119211
	.quad	0x4000fc4f3ba775fb              # double 2.1231979999999999
	.quad	0x401cf4c165907d91              # double 7.2390189999999999
	.quad	0x3ff67bfb58d1526e              # double 1.4052690000000001
	.quad	0x3fe66052502eec7d              # double 0.69925800000000005
	.quad	0x4014dda87a072d1b              # double 5.2164630000000001
	.quad	0x400e5bab21815a08              # double 3.7947600000000001
	.quad	0x401f033d29563a9f              # double 7.7531629999999998
	.quad	0x4018aafee6fb4c3c              # double 6.1669879999999999
	.quad	0x40211260f5e41d4b              # double 8.5358959999999993
	.quad	0x40196172abef06b3              # double 6.3451639999999996
	.quad	0x4011b6e0d23d4f16              # double 4.4285920000000001
	.quad	0x402354fbb949624a              # double 9.6659830000000007
	.quad	0x3fdf129cbab649d4              # double 0.48551100000000003
	.quad	0x40236e08d08919f0              # double 9.7149110000000007
	.quad	0x3fd8823422467be5              # double 0.38294699999999998
	.quad	0x40016259e1f3a57f              # double 2.1730230000000001
	.quad	0x3fcb22af5771001d              # double 0.21199599999999999
	.quad	0x3fe526d04e618ce3              # double 0.66098800000000002
	.quad	0x402323395c422036              # double 9.568797
	.quad	0x401d3a98244e93e2              # double 7.3072210000000002
	.quad	0x40193abef06b3786              # double 6.3073689999999996
	.quad	0x401dfddf00abf76a              # double 7.4979209999999998
	.quad	0x3ffca441fea8112c              # double 1.7901020000000001
	.quad	0x401bdb317efe0ce1              # double 6.9640560000000002
	.quad	0x3fca9717df19d66b              # double 0.207736
	.quad	0x4017917268d32831              # double 5.8920380000000003
	.quad	0x40236194c0160525              # double 9.6905879999999999
	.quad	0x3fe62b21815a07b3              # double 0.69276499999999996
	.quad	0x4022231ceaf251c2              # double 9.0685800000000008
	.quad	0x40112b2fec56d5d0              # double 4.2921750000000003
	.quad	0x40208849667b5f1c              # double 8.2661850000000001
	.quad	0x4023e077681669cf              # double 9.9384110000000003
	.quad	0x401500880d801b43              # double 5.2505189999999997
	.quad	0x4022af37b8d3f184              # double 9.3422219999999995
	.quad	0x3ffe52e514c22ee4              # double 1.895238
	.quad	0x400a5aa60913a4f8              # double 3.2942619999999998
	.quad	0x400efde050374ff8              # double 3.8739629999999998
	.quad	0x3ffffee5eedcc20d              # double 1.9997309999999999
	.quad	0x3feea1dda059a73b              # double 0.95725899999999997
	.quad	0x4002ea02b841248d              # double 2.3642629999999998
	.quad	0x400e8bdfd2630ec3              # double 3.818298
	.quad	0x4021bc295a6c5d20              # double 8.8675029999999992
	.quad	0x402165cb1465e892              # double 8.6988149999999997
	.quad	0x40224212b5e529bb              # double 9.1290490000000002
	.quad	0x4004a4e7ab756430              # double 2.5805199999999999
	.quad	0x4021f8d92fb19e73              # double 8.9860319999999998
	.quad	0x401845332acfb763              # double 6.0675780000000001
	.quad	0x3fe0c2c1b10fd7e4              # double 0.52377399999999996
	.quad	0x4005b1b9b66f9336              # double 2.7117800000000001
	.quad	0x401c52131a8ef77f              # double 7.0801509999999999
	.quad	0x3ff69a1986b9c305              # double 1.412622
	.quad	0x401201c6d1e108c4              # double 4.501735
	.quad	0x3fbe1511dffc547a              # double 0.117509
	.quad	0x401e4135daad6020              # double 7.563682
	.quad	0x402265b4cc250721              # double 9.1986450000000008
	.quad	0x401b317ca2120e1f              # double 6.7983269999999996
	.quad	0x401a20ad46f587d7              # double 6.531911
	.quad	0x3ff01c53f39d1b2e              # double 1.0069159999999999
	.quad	0x4020048b0079a283              # double 8.0088729999999995
	.quad	0x4020c090f733a8a4              # double 8.376106
	.quad	0x400c9ecd4aa10e02              # double 3.5775399999999999
	.quad	0x400758e325d4a5df              # double 2.9184019999999999
	.quad	0x400755d91ab8e8ea              # double 2.9169179999999999
	.quad	0x4016a8f32378ab0d              # double 5.6649900000000004
	.quad	0x40011ca7503b81b6              # double 2.1389909999999999
	.quad	0x402122ec28b2a6b1              # double 8.5682080000000003
	.quad	0x3fd673abc947064f              # double 0.35081000000000001
	.quad	0x401887de939eadd6              # double 6.1326850000000004
	.quad	0x3fe54c165907d912              # double 0.66553799999999996
	.quad	0x3fed9a4df47f993d              # double 0.92508599999999996
	.quad	0x3ffb2fa7221858bc              # double 1.6991339999999999
	.quad	0x40206949a5657fb7              # double 8.2056400000000007
	.quad	0x400f6aafbc1acde2              # double 3.9270930000000002
	.quad	0x4013f0b5aa715832              # double 4.9850680000000001
	.quad	0x3fe6ce358298cc14              # double 0.71267199999999997
	.quad	0x3fe8a9c347e8ccde              # double 0.77072300000000005
	.quad	0x3fc6f190d173fb7a              # double 0.17924699999999999
	.quad	0x4009873cd573647c              # double 3.1910340000000001
	.quad	0x3fcdebfa8f7db6e5              # double 0.233764
	.quad	0x4007d8705425f202              # double 2.980683
	.quad	0x401d9667f90d9d77              # double 7.3968809999999996
	.quad	0x3fea5805e5f30e80              # double 0.823245
	.quad	0x4021336ef8055fbb              # double 8.6004559999999994
	.quad	0x4013e672fba01eef              # double 4.9750480000000001
	.quad	0x402069c64ba94bbe              # double 8.2065909999999995
	.quad	0x4006b0caa326e115              # double 2.8363239999999998
	.quad	0x3ff10d413122b7bb              # double 1.065736
	.quad	0x401367b02d59d55e              # double 4.8512579999999996
	.quad	0x4021e0f49491f2dc              # double 8.9393659999999997
	.quad	0x400357c0b1359792              # double 2.4178480000000002
	.quad	0x40200abe0589acbd              # double 8.0209810000000008
	.quad	0x4005b61dc93ea2d3              # double 2.713924
	.quad	0x40235449ba5e353f              # double 9.6646249999999991
	.quad	0x4023a1d68c692f6f              # double 9.8160900000000008
	.quad	0x4006b38e6d15ad10              # double 2.8376739999999998
	.quad	0x4020390bc7b45f18              # double 8.1114180000000005
	.quad	0x3ff245a4f00ef135              # double 1.1420030000000001
	.quad	0x40134b9170d62bf1              # double 4.8237969999999999
	.quad	0x3ff478705425f202              # double 1.279404
	.quad	0x4016ae9f2778140e              # double 5.6705290000000002
	.quad	0x4015e939eadd590c              # double 5.47776
	.quad	0x401dd800eae18aca              # double 7.460941
	.quad	0x401ef879c4113c68              # double 7.7426519999999996
	.quad	0x400c6ae74f2f123c              # double 3.5521989999999999
	.quad	0x4000f6d86ec17ebb              # double 2.12053
	.quad	0x40037f383f0bae8a              # double 2.437119
	.quad	0x3ff702e126202539              # double 1.4382029999999999
	.quad	0x4015fbbfd71b0468              # double 5.4958489999999998
	.quad	0x400be148344c37e7              # double 3.485001
	.quad	0x4013dc01e68a0d35              # double 4.9648510000000003
	.quad	0x401eed987c6327ee              # double 7.7320270000000004
	.quad	0x401086249a133c1d              # double 4.1309990000000001
	.quad	0x4001eafa2f05a709              # double 2.239735
	.quad	0x401dfa46e08f2171              # double 7.4944110000000003
	.quad	0x400f743632c1f42c              # double 3.9317440000000001
	.quad	0x401542bb6672fba0              # double 5.3151679999999999
	.quad	0x4012a1b0ccbc05d5              # double 4.6579009999999998
	.quad	0x401f181c714fce74              # double 7.7735459999999996
	.quad	0x3fe0e66666666666              # double 0.52812499999999996
	.quad	0x400e7506dd69d302              # double 3.8071419999999998
	.quad	0x4016b159c4977425              # double 5.6731939999999996
	.quad	0x40048b9b23dd54da              # double 2.5681669999999999
	.quad	0x40130b890d5a5b96              # double 4.7612649999999999
	.quad	0x401f5dba4d6e47dc              # double 7.8415309999999998
	.quad	0x401a24894c447c31              # double 6.5356800000000002
	.quad	0x3f77f950b955f783              # double 0.0058529999999999997
	.quad	0x40230e2ae4b01861              # double 9.5276709999999997
	.quad	0x402031dcd7060bb3              # double 8.0973880000000005
	.quad	0x4003035ce1826677              # double 2.3766419999999999
	.quad	0x3fd83c4f3ba775fb              # double 0.37868099999999999
	.quad	0x400c8a4b124d099e              # double 3.567526
	.quad	0x401579ecb31c219f              # double 5.3690670000000003
	.quad	0x40064ec8d5c74752              # double 2.7884690000000001
	.quad	0x3fd83c70c996b767              # double 0.378689
	.quad	0x4011f763e4abe6a3              # double 4.4915919999999998
	.quad	0x3fcce221c8a7a41e              # double 0.22565099999999999
	.quad	0x40116332acfb762e              # double 4.3468730000000004
	.quad	0x400046f9b994e1a4              # double 2.034656
	.quad	0x401aa8d2a1f8e3ac              # double 6.664866
	.quad	0x400795360d024702              # double 2.9478569999999999
	.quad	0x40062f694467381d              # double 2.7731499999999998
	.quad	0x4015d6351deefe50              # double 5.459187
	.quad	0x4021cf2b66b6177f              # double 8.9046280000000007
	.quad	0x40040038194c0160              # double 2.5001069999999999
	.quad	0x400df186db50f40e              # double 3.7429329999999998
	.quad	0x401b705dd8f92afa              # double 6.8597330000000003
	.quad	0x401b026d8b1dd5d4              # double 6.7523710000000001
	.quad	0x401913022dd7a9a0              # double 6.2685630000000003
	.quad	0x400d5a6612839043              # double 3.6691400000000001
	.quad	0x4023b08377186552              # double 9.8447530000000008
	.quad	0x3ff14fb3311a543f              # double 1.081958
	.quad	0x3fff54003254e6e2              # double 1.958008
	.quad	0x402226f6d7625205              # double 9.0761020000000006
	.quad	0x401fc61cffeb074a              # double 7.9434699999999996
	.quad	0x4023475104d551d7              # double 9.6392900000000008
	.quad	0x4022dbcad9ad85e0              # double 9.4292820000000006
	.quad	0x401c38d759ee88df              # double 7.0555089999999998
	.quad	0x3ff68886162f166e              # double 1.408331
	.quad	0x40099c7a398201cd              # double 3.2014049999999998
	.quad	0x401e02f9873ffac2              # double 7.5029050000000002
	.quad	0x4001bc1eff9f87f0              # double 2.2168559999999999
	.quad	0x4019b440af1cb89d              # double 6.4260279999999996
	.quad	0x3ff2596851223183              # double 1.146828
	.quad	0x3fe0872f33ca31e8              # double 0.51650200000000002
	.quad	0x4021e9a5870da5db              # double 8.9563410000000001
	.quad	0x4002ed3d859c8c93              # double 2.3658399999999999
	.quad	0x401cbe1719f7f8cb              # double 7.1856350000000004
	.quad	0x4011e440f2389720              # double 4.4729039999999998
	.quad	0x401d075e6362a5e8              # double 7.2571960000000004
	.quad	0x3fe04486ad2dcb14              # double 0.50836499999999996
	.quad	0x40120ac42e9899bf              # double 4.5105139999999997
	.quad	0x40198e2a80064a9d              # double 6.3888340000000001
	.quad	0x3faafc2656abde40              # double 0.052705000000000002
	.quad	0x400de88c60cbf2b2              # double 3.7385489999999999
	.quad	0x4019cbbe878fabda              # double 6.448969
	.quad	0x401e149e8815e397              # double 7.5201359999999999
	.quad	0x3ffd2c7c957cd467              # double 1.823361
	.quad	0x3ffbb4b2fa93af75              # double 1.731616
	.quad	0x40207bdc26dce39b              # double 8.2419139999999995
	.quad	0x3feae99c7bcc2939              # double 0.84101700000000001
	.quad	0x4010a48d3ae685db              # double 4.1606949999999996
	.quad	0x4010278a6dacabc5              # double 4.0386139999999999
	.quad	0x40133b474107314d              # double 4.8078890000000003
	.quad	0x40193894c447c30d              # double 6.3052549999999998
	.quad	0x402376a26e547171              # double 9.7317079999999993
	.quad	0x3ff4140357a35504              # double 1.2548859999999999
	.quad	0x4000761f5be5d9e4              # double 2.057677
	.quad	0x401d3d84d338f798              # double 7.3100769999999997
	.quad	0x3fc3f290abb44e51              # double 0.15584000000000001
	.quad	0x401a27c5692b3cc5              # double 6.5388390000000003
	.quad	0x40107df8b1572581              # double 4.1230190000000002
	.quad	0x3fe9874213a0c6b5              # double 0.79776100000000005
	.quad	0x400b4649906cca2e              # double 3.4093200000000001
	.quad	0x3ffbe036006d0d4a              # double 1.7422390000000001
	.quad	0x4022a0c47a17f413              # double 9.3139990000000008
	.quad	0x40206c3914f483cb              # double 8.211373
	.quad	0x401687d49d7ba66a              # double 5.6326470000000004
	.quad	0x40095d9231c64ba9              # double 3.1706889999999999
	.quad	0x401c3bcd78c436fc              # double 7.0584009999999999
	.quad	0x4022f34245f5ad97              # double 9.4751150000000006
	.quad	0x3fd631fcd24e160e              # double 0.34680100000000003
	.quad	0x402089b97353b4b3              # double 8.268993
	.quad	0x401ff9a0f0a5efe9              # double 7.9937779999999998
	.quad	0x3fe6ac669057d178              # double 0.70854499999999998
	.quad	0x40230ac471b47842              # double 9.5210299999999997
	.quad	0x400dff455a7d2418              # double 3.749644
	.quad	0x400763e100607810              # double 2.9237690000000001
	.quad	0x3fd7375c8d9f9054              # double 0.36275400000000002
	.quad	0x400e3b068123810f              # double 3.7788210000000002
	.quad	0x400b1bc5de9c022a              # double 3.3885610000000002
	.quad	0x401a32cecc814d72              # double 6.5496169999999996
	.quad	0x4021f3f4a98aa865              # double 8.9764759999999999
	.quad	0x40117754b05b7cfe              # double 4.3665339999999997
	.quad	0x4015a4d983947497              # double 5.4109860000000003
	.quad	0x40238b07075b3e14              # double 9.7715379999999996
	.quad	0x4020e3d7d3910c2c              # double 8.4450059999999993
	.quad	0x4013dc2fc69728a6              # double 4.9650259999999999
	.quad	0x401b37e23f24d8fd              # double 6.8045739999999997
	.quad	0x3ffb15bdd76683c3              # double 1.6928080000000001
	.quad	0x3ffa6c7b890d5a5c              # double 1.6514850000000001
	.quad	0x40102c96030c23fb              # double 4.0435410000000003
	.quad	0x401c00bae89eba6b              # double 7.0007130000000002
	.quad	0x401e06013660e51d              # double 7.5058639999999998
	.quad	0x4021a97f84449dbf              # double 8.8310510000000004
	.quad	0x40220b8f9b13165d              # double 9.0225799999999996
	.quad	0x400f625f202107b8              # double 3.9230330000000002
	.quad	0x401fb8b47c73eee5              # double 7.9303759999999998
	.quad	0x401b4c23315d701e              # double 6.8243530000000003
	.quad	0x4009d0025bfad29a              # double 3.2265670000000002
	.quad	0x40149ae429e0a41a              # double 5.1512609999999999
	.quad	0x4023b9ab6d00b45b              # double 9.8626360000000001
	.quad	0x40138a46e08f2171              # double 4.8850360000000004
	.quad	0x400e495208e15012              # double 3.7858010000000002
	.quad	0x400fab11409a2403              # double 3.958529
	.quad	0x40216208bfc2224f              # double 8.6914730000000002
	.quad	0x4006b746887a8d65              # double 2.8394900000000001
	.quad	0x4015c18e325d4a5e              # double 5.439019
	.quad	0x401ce3608d08919f              # double 7.222048
	.quad	0x402320232096787d              # double 9.5627680000000001
	.quad	0x3ff336145953586d              # double 1.2007030000000001
	.quad	0x4020f208bfc2224f              # double 8.4727230000000002
	.quad	0x3ffe1654d61b2a28              # double 1.880452
	.quad	0x3ff8eab042528ae7              # double 1.5572969999999999
	.quad	0x401085aa2e3c536d              # double 4.1305319999999996
	.quad	0x401367efe0ce0b91              # double 4.8515009999999998
	.quad	0x40160953dea465a5              # double 5.5091089999999996
	.quad	0x3fe21d798d8a979e              # double 0.56609799999999999
	.quad	0x40066d8ba40d90e2              # double 2.8034889999999999
	.quad	0x401b03775b813016              # double 6.7533849999999997
	.quad	0x4002a4c729f59cd0              # double 2.3304580000000001
	.quad	0x401c1ec0f88333fd              # double 7.0300330000000004
	.quad	0x4016caf533f42353              # double 5.6982010000000001
	.quad	0x4022661b8ed1bf7b              # double 9.1994290000000003
	.quad	0x3ffc3b16c1e364bf              # double 1.764426
	.quad	0x40223fe77d523b36              # double 9.1248129999999996
	.quad	0x400a8e9142b302f7              # double 3.3196129999999999
	.quad	0x401f4b15b573eab3              # double 7.8233249999999996
	.quad	0x40106af102363b25              # double 4.1044349999999996
	.quad	0x4023640c4156e265              # double 9.6954060000000001
	.quad	0x401c83bff8a8f3aa              # double 7.1286620000000003
	.quad	0x4010306ab14ec205              # double 4.047282
	.quad	0x4021205ccc89b0ee              # double 8.5632079999999995
	.quad	0x401c0d7b2031ceaf              # double 7.0131649999999999
	.quad	0x400bfe414e7ee914              # double 3.4991479999999999
	.quad	0x4017ce8e1d6494d5              # double 5.9517139999999999
	.quad	0x40179b28954a7f80              # double 5.9015219999999999
	.quad	0x401da8ace24bba13              # double 7.4147220000000003
	.quad	0x40178b4f61672325              # double 5.8860450000000002
	.quad	0x3ff95e6256366d7a              # double 1.5855429999999999
	.quad	0x400a5bdf090f733b              # double 3.2948590000000002
	.quad	0x401465dbb9cf9a07              # double 5.0994710000000003
	.quad	0x40230334c5da6a44              # double 9.5062619999999995
	.quad	0x401bc9ba1b1960fa              # double 6.9469989999999999
	.quad	0x400914e9813879c4              # double 3.135211
	.quad	0x401b1318b9346994              # double 6.7686489999999999
	.quad	0x401ef62a1b5c7cd9              # double 7.7403950000000003
	.quad	0x3fc93083558a7610              # double 0.196793
	.quad	0x40195e5c0b999136              # double 6.3421479999999999
	.quad	0x40187db1e9f27781              # double 6.1227489999999998
	.quad	0x3fde83d790752daa              # double 0.47679700000000003
	.quad	0x401fe32b12d3415b              # double 7.9718439999999999
	.quad	0x401864a515ce9e5e              # double 6.0982859999999999
	.quad	0x401be337a80cf9e4              # double 6.9718920000000004
	.quad	0x401fa9a4df47f994              # double 7.9156680000000001
	.quad	0x40206f6124074645              # double 8.2175379999999993
	.quad	0x400e5a6d698fe692              # double 3.7941539999999998
	.quad	0x3ff71694ccab3ede              # double 1.4430130000000001
	.quad	0x402300a5accd5305              # double 9.5012640000000008
	.quad	0x4015cfffbce4217d              # double 5.4531239999999999
	.quad	0x3ff768a71de69ad4              # double 1.46305
	.quad	0x4018359ee88df373              # double 6.0523639999999999
	.quad	0x401681c970f7b9e0              # double 5.6267449999999997
	.quad	0x3fe898aa8650e779              # double 0.76863599999999999
	.quad	0x3fbdf23465625a68              # double 0.116977
	.quad	0x3ff3a66a98244e94              # double 1.228129
	.quad	0x4018f4b9cb6848bf              # double 6.2389900000000003
	.quad	0x402352ec28b2a6b1              # double 9.6619580000000002
	.quad	0x400e6ea9e6eeb702              # double 3.8040349999999998
	.quad	0x40170c55432873bd              # double 5.7620440000000004
	.quad	0x4017a5154866a11f              # double 5.9112140000000002
	.quad	0x3ff8adaa92e62132              # double 1.5423990000000001
	.quad	0x40190af78feef5ed              # double 6.2607100000000004
	.quad	0x402086cca2db61bb              # double 8.26328
	.quad	0x40149b1d4f9c1f86              # double 5.1514790000000001
	.quad	0x401dfb7d41743e96              # double 7.4955949999999998
	.quad	0x4013f0fc71d60631              # double 4.9853379999999996
	.quad	0x3fef9578a2a90cd4              # double 0.98699599999999998
	.quad	0x401b430b9dc2f406              # double 6.815474
	.quad	0x401a2d4cfd08d4bb              # double 6.5442390000000001
	.quad	0x401716601bc98a22              # double 5.7718509999999998
	.quad	0x400fffbacb428912              # double 3.9998680000000002
	.quad	0x401f409b30728e93              # double 7.8130920000000001
	.quad	0x4013b07d4e09784f              # double 4.9223530000000002
	.quad	0x4001301f31f46ed2              # double 2.1484969999999999
	.quad	0x4003af34d6a161e5              # double 2.46055
	.quad	0x4008c9eba6aca793              # double 3.0985939999999998
	.quad	0x40226b51372a38b9              # double 9.2096040000000006
	.quad	0x40182356da0168b6              # double 6.0345110000000002
	.quad	0x40009cb1cc964628              # double 2.076511
	.quad	0x401be2f3c2dadb83              # double 6.9716329999999997
	.quad	0x3ffd3102363b2570              # double 1.824465
	.quad	0x4016d7e1fc08fa7b              # double 5.7108230000000004
	.quad	0x400657c3504c48ae              # double 2.792853
	.quad	0x400b12bb23571d1d              # double 3.3841459999999999
	.quad	0x3ffbd7a46173b85f              # double 1.7401470000000001
	.quad	0x4016ed2e0e30446b              # double 5.7316209999999996
	.quad	0x4008875360d02470              # double 3.0660769999999999
	.quad	0x3ff7e5ebb7739f34              # double 1.493633
	.quad	0x4020a3380cb6c7a8              # double 8.3187870000000004
	.quad	0x401a64a771c970f8              # double 6.5982950000000002
	.quad	0x3fe52e1049235f81              # double 0.66187300000000004
	.quad	0x4011bba775fb2ee0              # double 4.4332560000000001
	.quad	0x401c0dd095af294e              # double 7.0134910000000001
	.quad	0x402158d6f544bb1b              # double 8.6735150000000001
	.quad	0x4018142e557de0d6              # double 6.0197079999999996
	.quad	0x4015f0e90bc7b45f              # double 5.4852639999999999
	.quad	0x401b49d5a187a4a5              # double 6.8221040000000004
	.quad	0x401c7bfca85caafc              # double 7.1210810000000002
	.quad	0x4005509aed56b010              # double 2.664358
	.quad	0x4022252a84380885              # double 9.0725899999999999
	.quad	0x4022d29802c0a4a0              # double 9.4113159999999993
	.quad	0x401e8b55ac03ff69              # double 7.6360689999999999
	.quad	0x401b06277c45cbbc              # double 6.7560099999999998
	.quad	0x401126d00b45ae60              # double 4.287903
	.quad	0x400b92cadddf43c8              # double 3.4466760000000001
	.quad	0x3f86aa4b9884c6a4              # double 0.011067
	.quad	0x40162d14e3bcd35b              # double 5.5440250000000004
	.quad	0x3fee5b24e9c45458              # double 0.94862599999999996
	.quad	0x4021e5fb506dd69d              # double 8.9491829999999997
	.quad	0x4021469ea1405708              # double 8.6379289999999997
	.quad	0x401a7e93e1c9b414              # double 6.6236110000000004
	.quad	0x40183b1f255f351a              # double 6.0577360000000002
	.quad	0x4006e92b3cc4ac6d              # double 2.8638520000000001
	.quad	0x400ab4cf4a558ea8              # double 3.3382860000000001
	.quad	0x4023e147496aad1d              # double 9.9399969999999999
	.quad	0x40037d53cddd6e05              # double 2.4361950000000001
	.quad	0x40192eb399f5dfec              # double 6.2956070000000004
	.quad	0x400e0d666a98244f              # double 3.7565430000000002
	.quad	0x401415f56a7ac81d              # double 5.0214439999999998
	.quad	0x4004da2e7f6f4be8              # double 2.6065339999999999
	.quad	0x40239bf1843c3a43              # double 9.804577
	.quad	0x401c38c75c4a83b2              # double 7.0554480000000002
	.quad	0x40235bd2b6f19935              # double 9.6793420000000001
	.quad	0x4005598e97071822              # double 2.6687289999999999
	.quad	0x400e3ab6d00b45ae              # double 3.7786689999999998
	.quad	0x3fd041dd1a21ea36              # double 0.25402000000000002
	.quad	0x400b61a60d4562e1              # double 3.4226800000000002
	.quad	0x4020a00e06530058              # double 8.3126069999999999
	.quad	0x4014f055b8993922              # double 5.2347020000000004
	.quad	0x3fd62bb6672fba02              # double 0.346418
	.quad	0x4011a68cef672b88              # double 4.4126469999999998
	.quad	0x3ff5bd72bcb5fe54              # double 1.358752
	.quad	0x40114f93bc0a06ea              # double 4.327712
	.quad	0x3fcce9c4545846e9              # double 0.225884
	.quad	0x400c5b78cc9a77e6              # double 3.544664
	.quad	0x40162af859429175              # double 5.541963
	.quad	0x40108653868fd19a              # double 4.1311780000000002
	.quad	0x40164bdd334c5da7              # double 5.5740860000000003
	.quad	0x40047e5c91d14e3c              # double 2.5617000000000001
	.quad	0x400c7d12cadddf44              # double 3.5610710000000001
	.quad	0x40194b8bef8ceb35              # double 6.3237759999999996
	.quad	0x401b19d16fc9bc77              # double 6.7752129999999999
	.quad	0x401419bfdf7e8039              # double 5.0251460000000003
	.quad	0x400ca68123810e88              # double 3.5813009999999998
	.quad	0x3f9e36d22424a277              # double 0.029506000000000001
	.quad	0x401171adea897636              # double 4.3610150000000001
	.quad	0x4019357214f0520d              # double 6.3021929999999999
	.quad	0x3fff7b1290257c91              # double 1.9675469999999999
	.quad	0x400757154003254e              # double 2.9175209999999998
	.quad	0x400a12dc2b0ea183              # double 3.2592089999999998
	.quad	0x4018c799e518f3ed              # double 6.1949230000000002
	.quad	0x4002bae5796bfca8              # double 2.3412579999999998
	.quad	0x400317268d32830a              # double 2.386304
	.quad	0x3ff0961c36976bc2              # double 1.036648
	.quad	0x3ff573b42cc2d6aa              # double 1.3407480000000001
	.quad	0x400f9c7b45f17bd9              # double 3.9514070000000001
	.quad	0x401091a543f1c758              # double 4.1422319999999999
	.quad	0x3fa6e631f8a0902e              # double 0.044725000000000001
	.quad	0x401cefa97e132b56              # double 7.2340450000000001
	.quad	0x401ac5529fe004b8              # double 6.692698
	.quad	0x3fcae8e1d6494d51              # double 0.210232
	.quad	0x4021a8deb0fadf2f              # double 8.8298240000000003
	.quad	0x401022456f75d9a1              # double 4.0334680000000001
	.quad	0x40168c925785f8d3              # double 5.6372770000000001
	.quad	0x3ff1228997c3d684              # double 1.070932
	.quad	0x40200a98eda22f6a              # double 8.0206979999999994
	.quad	0x4023704662bae03b              # double 9.7192869999999995
	.quad	0x401a37214f0520d1              # double 6.5538379999999998
	.quad	0x401c8934efcbd556              # double 7.133991
	.quad	0x400bb0c1b97353b5              # double 3.4613070000000001
	.quad	0x400207496aad1d04              # double 2.253558
	.quad	0x4011a866e43aa79c              # double 4.4144550000000002
	.quad	0x3ff8d7b95a294142              # double 1.552667
	.quad	0x40180f2170931013              # double 6.0147760000000003
	.quad	0x4013f02de00d1b71              # double 4.9845499999999996
	.quad	0x3fef2459103c8e26              # double 0.97318700000000002
	.quad	0x400363ca7503b81b              # double 2.4237259999999998
	.quad	0x4011690b417ca212              # double 4.352582
	.quad	0x4019bd44567125dd              # double 6.434831
	.quad	0x3ffd9a426bb55ac0              # double 1.8501609999999999
	.quad	0x401a8212513b5bf7              # double 6.6270230000000003
	.quad	0x400dbd8b60f1b25f              # double 3.7175509999999998
	.quad	0x3fe98eb67c286f8b              # double 0.79867100000000002
	.quad	0x401e5622c4502689              # double 7.5841169999999999
	.quad	0x401c74052d666a98              # double 7.1133009999999999
	.quad	0x400bb65dbfceb789              # double 3.4640460000000002
	.quad	0x401e2f1ae2da554c              # double 7.5460010000000004
	.quad	0x401a7c3dab5c39bd              # double 6.6213290000000002
	.quad	0x402136b399f5dfec              # double 8.6068390000000007
	.quad	0x3ff2e8a1dfb9389b              # double 1.1817949999999999
	.quad	0x3f94295a6c5d206d              # double 0.019689000000000002
	.quad	0x400405753a3ec02f              # double 2.5026649999999999
	.quad	0x4023ce833c60029f              # double 9.9033449999999998
	.quad	0x40001f78359bc340              # double 2.0153660000000002
	.quad	0x40154d9274e22a2c              # double 5.3257539999999999
	.quad	0x401c548f96e15875              # double 7.082579
	.quad	0x4012f95703f2d3c8              # double 4.7434960000000004
	.quad	0x4013486b15f88fc9              # double 4.8207209999999998
	.quad	0x401bb1511dffc548              # double 6.9231610000000003
	.quad	0x40214487fcb923a3              # double 8.6338500000000007
	.quad	0x3fe57ea3df6db941              # double 0.671709
	.quad	0x40169845132f87ad              # double 5.648701
	.quad	0x401fb1a7e3087875              # double 7.9234920000000004
	.quad	0x40104e586013660e              # double 4.0765089999999997
	.quad	0x4012e4a7f8012dfd              # double 4.7232969999999996
	.quad	0x40050f038e29f9cf              # double 2.6323310000000002
	.quad	0x400a60b34e768598              # double 3.2972169999999998
	.quad	0x3ff1e0eb67c286f9              # double 1.1174120000000001
	.quad	0x40046fad6cb53501              # double 2.5545300000000002
	.quad	0x40170250b524399b              # double 5.7522609999999998
	.quad	0x400e474afd545415              # double 3.7848109999999999
	.quad	0x4001fd91ab8e8ea4              # double 2.2488130000000002
	.quad	0x4021bc8e043a2164              # double 8.868271
	.quad	0x40028225742dcf46              # double 2.3135479999999999
	.quad	0x40056ac1094a2b9d              # double 2.6771259999999999
	.quad	0x40220e5796bfca86              # double 9.0280120000000004
	.quad	0x4020f98ac9f2fdb9              # double 8.487387
	.quad	0x3fd39c886162f167              # double 0.30642900000000001
	.quad	0x400d2f0307f23cc9              # double 3.6479550000000001
	.quad	0x401e4f4fd6d7e88a              # double 7.5774530000000002
	.quad	0x3fc92314013ec461              # double 0.196383
	.quad	0x3fff4296b3354c12              # double 1.953757
	.quad	0x40055e774eebf65e              # double 2.6711260000000001
	.quad	0x3fc0f7d30ad46f58              # double 0.13256299999999999
	.quad	0x40100b2e1693c03c              # double 4.0109180000000002
	.quad	0x401b1795f676ea42              # double 6.7730329999999999
	.quad	0x40120d99cbee807c              # double 4.5132820000000002
	.quad	0x3ff538151a437825              # double 1.326192
	.quad	0x4010cce7cd035372              # double 4.2001030000000004
	.quad	0x3ffc9ddd2ae8e1d6              # double 1.7885409999999999
	.quad	0x3ff70e48626f60e1              # double 1.440987
	.quad	0x3ff1454477ff151e              # double 1.0794109999999999
	.quad	0x3fffb0d73860999e              # double 1.980674
	.quad	0x4003f9767903211d              # double 2.4968080000000001
	.quad	0x40127e9424e59296              # double 4.6236119999999996
	.quad	0x402086f5a964e8b8              # double 8.2635930000000002
	.quad	0x401d8355475a31a5              # double 7.3782550000000002
	.quad	0x400d7348b220791c              # double 3.6812909999999999
	.quad	0x400b3954eb13dfb1              # double 3.4029940000000001
	.quad	0x3fe77ae9ab29e4d6              # double 0.73375400000000002
	.quad	0x40177e49b1fab96f              # double 5.8733279999999999
	.quad	0x40085c4a83b1d0c8              # double 3.045064
	.quad	0x3fc1ea4ebdd334c6              # double 0.139963
	.quad	0x3ff1ed490e66cb10              # double 1.120431
	.quad	0x4003a9728a611772              # double 2.457738
	.quad	0x40087e1198aeb80f              # double 3.0615570000000001
	.quad	0x3ffbe97e132b55ef              # double 1.744505
	.quad	0x4019d65add9c27e9              # double 6.4593309999999997
	.quad	0x4006f7079e59f2bb              # double 2.8706200000000002
	.quad	0x4022d91b823c85c2              # double 9.4240379999999995
	.quad	0x40156834d26fa3fd              # double 5.3517640000000002
	.quad	0x401248da3c21187e              # double 4.5711449999999996
	.quad	0x400e81309c7ffde7              # double 3.8130809999999999
	.quad	0x3feba3d4f15e7c8d              # double 0.86374899999999999
	.quad	0x4022f9c9d5a187a5              # double 9.4878680000000006
	.quad	0x401ec1d084e831ad              # double 7.6892719999999998
	.quad	0x400e81016ce789e7              # double 3.8129909999999998
	.quad	0x401d4e6256366d7a              # double 7.3265469999999997
	.quad	0x4023fd3fc0096feb              # double 9.9946269999999994
	.quad	0x400d39ea57214f05              # double 3.6532789999999999
	.quad	0x401884606748e475              # double 6.1292739999999997
	.quad	0x40115e032db1e9f2              # double 4.3418089999999996
	.quad	0x400194e3369b9d80              # double 2.1976990000000001
	.quad	0x4018b53cddd6e04c              # double 6.17699
	.quad	0x4014c31593e5fb72              # double 5.190512
	.quad	0x400f780ecfa69be1              # double 3.9336220000000002
	.quad	0x402133e48a58b3f6              # double 8.6013529999999996
	.quad	0x401aa7c49fd7a13c              # double 6.6638359999999999
	.quad	0x401284ea8da7f3cf              # double 4.6298009999999996
	.quad	0x40195e93e1c9b414              # double 6.3423610000000004
	.quad	0x3ff0d4ab1d4f9c20              # double 1.0519210000000001
	.quad	0x4020177ec3547e07              # double 8.0458890000000007
	.quad	0x4014134dad31fcd2              # double 5.0188509999999997
	.quad	0x40070c144028e4fc              # double 2.8808980000000002
	.quad	0x4022b8bd87b56b87              # double 9.3608209999999996
	.quad	0x3ff859ef954eb13e              # double 1.521957
	.quad	0x3ff14a3d70a3d70a              # double 1.0806249999999999
	.quad	0x40037417ca2120e2              # double 2.431686
	.quad	0x4023e8e560418937              # double 9.9548749999999994
	.quad	0x401e54d72799a1fd              # double 7.5828519999999999
	.quad	0x400b0ab367a0f909              # double 3.3802249999999998
	.quad	0x3fcfa11233df2a9d              # double 0.24710299999999999
	.quad	0x4020606f262888b5              # double 8.1883479999999995
	.quad	0x401e69a133c1ce6c              # double 7.603154
	.quad	0x40068d67fd3f5b60              # double 2.8190460000000002
	.quad	0x40101fc8f32378ab              # double 4.03104
	.quad	0x4011a0df58c08b76              # double 4.4071020000000001
	.quad	0x3ff1b914f483cafb              # double 1.1076859999999999
	.quad	0x4000dd8c6d612c6b              # double 2.1081780000000001
	.quad	0x4015af4b1ee24357              # double 5.4211850000000004
	.quad	0x400e0b7f5a5332ad              # double 3.755614
	.quad	0x401a8ba775fb2ee0              # double 6.6363810000000001
	.quad	0x400aad3ae685db77              # double 3.3345850000000001
	.quad	0x401ba14df8b15726              # double 6.9075240000000004
	.quad	0x4021bec679cc74b8              # double 8.8726079999999996
	.quad	0x3ff5ea8c9b845565              # double 1.3697630000000001
	.quad	0x3ff039096bb98c7e              # double 1.013925
	.quad	0x401dc0fd3b29a1ba              # double 7.438466
	.quad	0x400318ff75968512              # double 2.3872059999999999
	.quad	0x400d3327aa68f4b6              # double 3.6499779999999999
	.quad	0x3fd3ec9e236c15d3              # double 0.31131700000000001
	.quad	0x4023e901f31f46ed              # double 9.9550929999999997
	.quad	0x401413e3193f6c27              # double 5.0194210000000004
	.quad	0x40140ef8055fbb51              # double 5.0146179999999996
	.quad	0x4020dafe82517e78              # double 8.4277230000000003
	.quad	0x4007cde8709741d1              # double 2.9755410000000002
	.quad	0x4013c1df3300de4c              # double 4.9393279999999997
	.quad	0x401387c243dccea3              # double 4.8825770000000004
	.quad	0x3fdb87160956c0d7              # double 0.43012
	.quad	0x3fef33b96af038e3              # double 0.97506400000000004
	.quad	0x4021c354c122749f              # double 8.8815059999999999
	.quad	0x4023dea22b3892ef              # double 9.9348310000000008
	.quad	0x40092c9b845564b6              # double 3.1467809999999998
	.quad	0x3fc42ed352220bc4              # double 0.15767900000000001
	.quad	0x4007c67f0aa21a72              # double 2.9719220000000002
	.quad	0x401079d1b2e59afa              # double 4.1189640000000001
	.quad	0x4021362b8c75c4a8              # double 8.6058009999999996
	.quad	0x4013fa71de69ad43              # double 4.9945750000000002
	.quad	0x40138fe6d58c8eef              # double 4.8905289999999999
	.quad	0x4017cb1f255f351a              # double 5.9483610000000002
	.quad	0x4018c976bc1effa0              # double 6.1967420000000004
	.quad	0x3ff291409a240315              # double 1.1604620000000001
	.quad	0x401c90b1feeb2d0a              # double 7.1413039999999999
	.quad	0x4022b58665e02ea9              # double 9.3545409999999993
	.quad	0x401bfd9b5e95b78d              # double 6.9976630000000002
	.quad	0x400ff8cfbfc6540d              # double 3.9964900000000001
	.quad	0x3ffd7763e4abe6a3              # double 1.841648
	.quad	0x401c6497fa5d28d0              # double 7.098236
	.quad	0x400de2c77574f723              # double 3.7357320000000001
	.quad	0x4020031d2e0e3044              # double 8.0060819999999992
	.quad	0x40138d86a8fc0d2c              # double 4.8882089999999998
	.quad	0x3ff7d613d31b9b67              # double 1.489765
	.quad	0x4016d5b1c8648840              # double 5.7086860000000001
	.quad	0x3fcc101f31f46ed2              # double 0.21924199999999999
	.quad	0x401511450efdc9c5              # double 5.2668650000000001
	.quad	0x4016b0f776c4827b              # double 5.6728189999999996
	.quad	0x4021877a4e7ab756              # double 8.7646049999999995
	.quad	0x4003b2d0a2446306              # double 2.4623119999999998
	.quad	0x4020ef2e05ccc89b              # double 8.4671479999999999
	.quad	0x400da25f202107b8              # double 3.7042830000000002
	.quad	0x4008c9ea9a3d2d88              # double 3.098592
	.quad	0x4019bf6c69b5a640              # double 6.4369370000000004
	.quad	0x4001711409a24031              # double 2.1802139999999999
	.quad	0x4018762174c4cdfb              # double 6.1153620000000002
	.quad	0x40103ce28ed5f139              # double 4.0594580000000002
	.quad	0x3ff3ffb7a5f41aef              # double 1.2499309999999999
	.quad	0x401fd267c6b8b695              # double 7.9554739999999997
	.quad	0x402339f40a2877ee              # double 9.6131899999999995
	.quad	0x3ffbb09310129cbb              # double 1.7306090000000001
	.quad	0x3fe50fbeb9e492bc              # double 0.65817199999999998
	.quad	0x400caf4b61fe21d9              # double 3.5855929999999998
	.quad	0x40233e043a2163fe              # double 9.6211260000000003
	.quad	0x3ffed3f5b5fa2270              # double 1.9267479999999999
	.quad	0x3ff381b10fd7e458              # double 1.219163
	.quad	0x401b312e40852b4e              # double 6.7980280000000004
	.quad	0x3fe7bc105186db51              # double 0.74170700000000001
	.quad	0x400c546cb966be7b              # double 3.541223
	.quad	0x3ff1698244e93e1d              # double 1.0882590000000001
	.quad	0x4018dcaf2d7f950c              # double 6.2155120000000004
	.quad	0x3ff740f451761459              # double 1.4533579999999999
	.quad	0x400037963992c8c5              # double 2.027142
	.quad	0x4016b2fe3f359ff5              # double 5.674798
	.quad	0x40077a0ad8a11666              # double 2.9345910000000002
	.quad	0x4000b187e7c06e1a              # double 2.0866850000000001
	.quad	0x3fb19806f262888b              # double 0.068725999999999995
	.quad	0x401fe388a8b08dd2              # double 7.9722010000000001
	.quad	0x3fe8536933a0407d              # double 0.76018200000000002
	.quad	0x40224e3779e9d0ea              # double 9.1527670000000008
	.quad	0x40050b1bbcf4e875              # double 2.6304240000000001
	.quad	0x4023d66e008e9b39              # double 9.9188080000000002
	.quad	0x40228a71fff79c84              # double 9.2704009999999996
	.quad	0x4015ba88effe2a3d              # double 5.4321630000000001
	.quad	0x3ffb3fceb78897ea              # double 1.7030780000000001
	.quad	0x4012b1aac53b0814              # double 4.6735030000000002
	.quad	0x4015178fabda0dfe              # double 5.2730090000000001
	.quad	0x40113a14cec41dd2              # double 4.3067200000000003
	.quad	0x401aad1e108c3f3e              # double 6.66906
	.quad	0x3ffc172580c308ff              # double 1.7556510000000001
	.quad	0x400405dd095af295              # double 2.5028630000000001
	.quad	0x400da0b029281776              # double 3.7034609999999999
	.quad	0x401824794ea07703              # double 6.0356189999999996
	.quad	0x400be72862f5989e              # double 3.48787
	.quad	0x4001023076c050be              # double 2.1260690000000002
	.quad	0x4010554fbdad7519              # double 4.0833120000000003
	.quad	0x4007be0157eed45f              # double 2.9677760000000002
	.quad	0x40228d05d0fa58f7              # double 9.2754349999999999
	.quad	0x402397adafd11383              # double 9.7962469999999992
	.quad	0x4007c162f166e009              # double 2.969427
	.quad	0x40237fa0f9096bba              # double 9.7492750000000008
	.quad	0x4021ed9945b6c376              # double 8.9640599999999999
	.quad	0x3ffc57720c8cd63d              # double 1.7713490000000001
	.quad	0x4011476d5497310a              # double 4.3197530000000004
	.quad	0x3ff2c7a4a48f96e1              # double 1.1737409999999999
	.quad	0x402394fb97bb7308              # double 9.7909819999999996
	.quad	0x401c6d0c3d25247d              # double 7.1064920000000003
	.quad	0x400b5ee568a50508              # double 3.4213360000000002
	.quad	0x401ee450acc0bdcb              # double 7.7229640000000001
	.quad	0x3fff64217d2849cb              # double 1.961946
	.quad	0x400dc475e6362a5e              # double 3.7209279999999998
	.quad	0x402086c6de76427c              # double 8.2632359999999991
	.quad	0x3fc8e3ac0c62e4d2              # double 0.19444800000000001
	.quad	0x401b4ab5807fed20              # double 6.8229579999999999
	.quad	0x4010cf48c2e770bd              # double 4.202426
	.quad	0x401d0bc8c0ce91c9              # double 7.2615080000000001
	.quad	0x401fa7b5f1bef49d              # double 7.91378
	.quad	0x3fcf7a46173b85e8              # double 0.245919
	.quad	0x40221912fd32c626              # double 9.0489730000000002
	.quad	0x401caa5df2239e6b              # double 7.1663740000000002
	.quad	0x40112b645a1cac08              # double 4.2923749999999998
	.quad	0x3ff4a9888f861a61              # double 1.29139
	.quad	0x401c399a1fd1569f              # double 7.0562519999999997
	.quad	0x401e2f77af64063a              # double 7.5463550000000001
	.quad	0x400285532617c1be              # double 2.3151000000000002
	.quad	0x3fdbf5dfeb8d8234              # double 0.43688199999999999
	.quad	0x40080ee7c49fd7a1              # double 3.0072779999999999
	.quad	0x401eb0d6f544bb1b              # double 7.672695
	.size	.L__constant_3500xf64, 28000

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
