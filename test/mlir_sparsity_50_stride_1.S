	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_v1p0_zicsr2p0_zmmul1p0_zaamo1p0_zalrsc1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"LLVMDialectModule"
	.text
	.globl	sparse_dense_matmul             # -- Begin function sparse_dense_matmul
	.p2align	1
	.type	sparse_dense_matmul,@function
sparse_dense_matmul:                    # @sparse_dense_matmul
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -96
	.cfi_def_cfa_offset 96
	sd	s0, 88(sp)                      # 8-byte Folded Spill
	sd	s1, 80(sp)                      # 8-byte Folded Spill
	sd	s2, 72(sp)                      # 8-byte Folded Spill
	sd	s3, 64(sp)                      # 8-byte Folded Spill
	sd	s4, 56(sp)                      # 8-byte Folded Spill
	sd	s5, 48(sp)                      # 8-byte Folded Spill
	sd	s6, 40(sp)                      # 8-byte Folded Spill
	sd	s7, 32(sp)                      # 8-byte Folded Spill
	sd	s8, 24(sp)                      # 8-byte Folded Spill
	sd	s9, 16(sp)                      # 8-byte Folded Spill
	sd	s10, 8(sp)                      # 8-byte Folded Spill
	.cfi_offset s0, -8
	.cfi_offset s1, -16
	.cfi_offset s2, -24
	.cfi_offset s3, -32
	.cfi_offset s4, -40
	.cfi_offset s5, -48
	.cfi_offset s6, -56
	.cfi_offset s7, -64
	.cfi_offset s8, -72
	.cfi_offset s9, -80
	.cfi_offset s10, -88
	li	t6, 0
	li	t5, 0
	ld	s7, 208(sp)
	ld	a6, 304(sp)
	ld	t0, 296(sp)
	ld	t1, 288(sp)
	ld	t2, 280(sp)
	ld	t3, 272(sp)
	ld	s8, 264(sp)
	ld	t4, 256(sp)
	ld	s3, 128(sp)
	csrr	a1, vlenb
	li	s6, 9
	slli	s9, a1, 2
	srli	s10, a1, 1
	li	s2, 80
	vsetvli	a3, zero, e32, m2, ta, ma
	vid.v	v8
	vsetvli	zero, zero, e64, m4, ta, ma
	vmv.v.i	v12, 0
	j	.LBB0_2
.LBB0_1:                                #   in Loop: Header=BB0_2 Depth=1
	addi	t5, t5, 1
	addi	t6, t6, 80
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #       Child Loop BB0_8 Depth 3
	blt	s6, t5, .LBB0_11
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	slli	a3, t5, 3
	add	a3, a3, a2
	lwu	a4, 4(a3)
	lwu	a5, 0(a3)
	lwu	s0, 12(a3)
	lwu	a3, 8(a3)
	slli	a4, a4, 32
	or	s5, a4, a5
	slli	s0, s0, 32
	or	s4, s0, a3
	j	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=2
	addi	s5, s5, 1
.LBB0_5:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_8 Depth 3
	bge	s5, s4, .LBB0_1
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=2
	li	s1, 0
	slli	a3, s5, 3
	add	a4, a7, a3
	lwu	a5, 4(a4)
	lwu	a4, 0(a4)
	add	a3, a3, s3
	fld	fa5, 0(a3)
	slli	a5, a5, 32
	or	a4, a4, a5
	mul	s0, a4, s2
	li	a3, 10
	mv	a1, t6
	j	.LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=3
	vsetvli	zero, zero, e32, m2, ta, ma
	vmslt.vx	v0, v8, a5
	add	a5, s8, s0
	vmv4r.v	v16, v12
	add	a4, s7, a1
	vmv4r.v	v20, v12
	vsetvli	zero, zero, e64, m4, ta, mu
	vle64.v	v16, (a5), v0.t
	vle64.v	v20, (a4), v0.t
	add	s1, s1, s10
	add	s0, s0, s9
	add	a1, a1, s9
	vfmul.vf	v20, v20, fa5
	vfadd.vv	v16, v16, v20
	vse64.v	v16, (a5), v0.t
	sub	a3, a3, s10
.LBB0_8:                                #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	blt	s6, s1, .LBB0_4
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=3
	mv	a5, a3
	blt	a3, s10, .LBB0_7
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=3
	mv	a5, s10
	j	.LBB0_7
.LBB0_11:
	sd	t4, 0(a0)
	sd	s8, 8(a0)
	sd	t3, 16(a0)
	sd	t2, 24(a0)
	sd	t1, 32(a0)
	sd	t0, 40(a0)
	sd	a6, 48(a0)
	ld	s0, 88(sp)                      # 8-byte Folded Reload
	ld	s1, 80(sp)                      # 8-byte Folded Reload
	ld	s2, 72(sp)                      # 8-byte Folded Reload
	ld	s3, 64(sp)                      # 8-byte Folded Reload
	ld	s4, 56(sp)                      # 8-byte Folded Reload
	ld	s5, 48(sp)                      # 8-byte Folded Reload
	ld	s6, 40(sp)                      # 8-byte Folded Reload
	ld	s7, 32(sp)                      # 8-byte Folded Reload
	ld	s8, 24(sp)                      # 8-byte Folded Reload
	ld	s9, 16(sp)                      # 8-byte Folded Reload
	ld	s10, 8(sp)                      # 8-byte Folded Reload
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
	addi	sp, sp, 96
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	sparse_dense_matmul, .Lfunc_end0-sparse_dense_matmul
	.cfi_endproc
                                        # -- End function
	.globl	compute_sum                     # -- Begin function compute_sum
	.p2align	1
	.type	compute_sum,@function
compute_sum:                            # @compute_sum
	.cfi_startproc
# %bb.0:
	li	a6, 0
	li	a2, 0
	fmv.d.x	fa0, zero
	li	a3, 9
	j	.LBB1_2
.LBB1_1:                                #   in Loop: Header=BB1_2 Depth=1
	addi	a2, a2, 1
	addi	a6, a6, 80
.LBB1_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
	blt	a3, a2, .LBB1_5
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	li	a4, 0
	mv	a0, a6
	bltz	a3, .LBB1_1
.LBB1_4:                                #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	a5, a1, a0
	fld	fa5, 0(a5)
	addi	a4, a4, 1
	fadd.d	fa0, fa0, fa5
	addi	a0, a0, 8
	bge	a3, a4, .LBB1_4
	j	.LBB1_1
.LBB1_5:
	ret
.Lfunc_end1:
	.size	compute_sum, .Lfunc_end1-compute_sum
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI2_0:
	.quad	0x3ddb7cdfd9d7bdbb              # double 1.0E-10
	.text
	.globl	main
	.p2align	1
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -464
	.cfi_def_cfa_offset 464
	sd	ra, 456(sp)                     # 8-byte Folded Spill
	sd	s0, 448(sp)                     # 8-byte Folded Spill
	sd	s1, 440(sp)                     # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	li	a0, 864
	call	malloc
	mv	s0, a0
	addi	a0, a0, 63
	andi	s1, a0, -64
	addi	a0, sp, 280
	call	assemble_sparse_tensor
	addi	a0, sp, 400
	addi	t0, sp, 336
	ld	a5, 312(sp)
	ld	a6, 320(sp)
	ld	a7, 328(sp)
	vsetivli	zero, 4, e64, m2, ta, ma
	vle64.v	v8, (a0)
	ld	a1, 280(sp)
	ld	a2, 288(sp)
	ld	a3, 296(sp)
	ld	a4, 304(sp)
	vsetivli	zero, 8, e64, m4, ta, ma
	vle64.v	v12, (t0)
	ld	a0, 432(sp)
	sd	s0, 160(sp)
	sd	s1, 168(sp)
	sd	zero, 176(sp)
	li	t0, 1
	lui	t1, %hi(.L__constant_10x10xf64_0)
	addi	t1, t1, %lo(.L__constant_10x10xf64_0)
	lui	s1, 228023
	lui	t2, 4257
	addi	t3, sp, 184
	slli	s1, s1, 2
	addi	s1, s1, -273
	sd	a0, 96(sp)
	sd	s1, 104(sp)
	sd	t1, 112(sp)
	sd	t0, 152(sp)
	lui	a0, 41121
	addi	s1, t2, -1526
	vse64.v	v12, (sp)
	vmv.s.x	v10, s1
	addi	s1, sp, 120
	addi	a0, a0, -1536
	vmv.s.x	v11, a0
	addi	s0, sp, 64
	vsetivli	zero, 4, e64, m2, ta, ma
	vsext.vf8	v12, v10
	vse64.v	v12, (t3)
	addi	a0, sp, 224
	vsext.vf8	v12, v11
	vse64.v	v12, (s1)
	vse64.v	v8, (s0)
	call	sparse_dense_matmul
	li	s1, 0
	li	a1, 0
	ld	a2, 232(sp)
	fmv.d.x	fa5, zero
	li	a3, 9
	lui	a4, %hi(.L__constant_10x10xf64)
	addi	a4, a4, %lo(.L__constant_10x10xf64)
	j	.LBB2_2
.LBB2_1:                                #   in Loop: Header=BB2_2 Depth=1
	addi	a1, a1, 1
	addi	s1, s1, 80
.LBB2_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_4 Depth 2
	blt	a3, a1, .LBB2_5
# %bb.3:                                #   in Loop: Header=BB2_2 Depth=1
	li	a5, 0
	mv	s0, s1
	bltz	a3, .LBB2_1
.LBB2_4:                                #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	a0, a2, s0
	fld	fa4, 0(a0)
	add	a0, a4, s0
	fld	fa3, 0(a0)
	addi	a5, a5, 1
	fsub.d	fa4, fa4, fa3
	fabs.d	fa4, fa4
	fadd.d	fa5, fa5, fa4
	addi	s0, s0, 8
	bge	a3, a5, .LBB2_4
	j	.LBB2_1
.LBB2_5:
	lui	a0, %hi(.LCPI2_0)
	fld	fa4, %lo(.LCPI2_0)(a0)
	flt.d	a0, fa5, fa4
	xori	a0, a0, 1
	ld	ra, 456(sp)                     # 8-byte Folded Reload
	ld	s0, 448(sp)                     # 8-byte Folded Reload
	ld	s1, 440(sp)                     # 8-byte Folded Reload
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	addi	sp, sp, 464
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function assemble_sparse_tensor
.LCPI3_0:
	.quad	0                               # 0x0
	.quad	50                              # 0x32
	.quad	1                               # 0x1
	.quad	3735928559                      # 0xdeadbeef
.LCPI3_1:
	.quad	0                               # 0x0
	.quad	11                              # 0xb
	.quad	1                               # 0x1
	.quad	3735928559                      # 0xdeadbeef
	.text
	.globl	assemble_sparse_tensor
	.p2align	1
	.type	assemble_sparse_tensor,@function
assemble_sparse_tensor:                 # @assemble_sparse_tensor
	.cfi_startproc
# %bb.0:
	lui	a1, %hi(.L__constant_11xindex)
	addi	a1, a1, %lo(.L__constant_11xindex)
	lui	a7, %hi(.L__constant_50xindex)
	addi	a7, a7, %lo(.L__constant_50xindex)
	lui	t0, %hi(.L__constant_50xf64)
	addi	t0, t0, %lo(.L__constant_50xf64)
	li	a6, 11
	li	t1, 10
	lui	a4, 228023
	lui	a2, %hi(.LCPI3_0)
	addi	a2, a2, %lo(.LCPI3_0)
	addi	a3, a0, 56
	lui	a5, %hi(.LCPI3_1)
	addi	a5, a5, %lo(.LCPI3_1)
	vsetivli	zero, 4, e64, m2, ta, ma
	vle64.v	v8, (a2)
	ld	a2, 80(a1)
	slli	a4, a4, 2
	addi	a4, a4, -273
	sd	a4, 0(a0)
	sd	a1, 8(a0)
	sd	a7, 48(a0)
	sd	t0, 88(a0)
	addi	a1, a0, 16
	sd	t1, 128(a0)
	sd	a6, 136(a0)
	sd	a2, 144(a0)
	sd	a2, 152(a0)
	vse64.v	v8, (a3)
	vle64.v	v8, (a5)
	addi	a0, a0, 96
	lui	a2, 40979
	addi	a2, a2, 512
	vse64.v	v8, (a1)
	vmv.s.x	v8, a2
	vsext.vf8	v10, v8
	vse64.v	v10, (a0)
	ret
.Lfunc_end3:
	.size	assemble_sparse_tensor, .Lfunc_end3-assemble_sparse_tensor
	.cfi_endproc
                                        # -- End function
	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.size	.L__constant_11xindex, 88

	.type	.L__constant_50xindex,@object   # @__constant_50xindex
	.p2align	6, 0x0
.L__constant_50xindex:
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.size	.L__constant_50xindex, 400

	.type	.L__constant_50xf64,@object     # @__constant_50xf64
	.p2align	6, 0x0
.L__constant_50xf64:
	.quad	0x402fedaad601ffb5              # double 15.964194000000001
	.quad	0x404a205c2d278078              # double 52.252813000000003
	.quad	0x40586de770bd017e              # double 97.717251000000004
	.quad	0x40497eace24bba13              # double 50.989651000000002
	.quad	0x4053c2bc05d52c17              # double 79.042726000000001
	.quad	0x405354fc504816f0              # double 77.3279
	.quad	0x40433ceffe2a3cea              # double 38.476073999999997
	.quad	0x402ef3fa6defc7a4              # double 15.476520000000001
	.quad	0x402bc36b8f9b1316              # double 13.881679999999999
	.quad	0x404a7c5e13b18dac              # double 52.971620999999999
	.quad	0x402c196aceaaf35e              # double 14.049643
	.quad	0x4054e8f0520d130e              # double 83.639668
	.quad	0x4051fdd7be9856a3              # double 71.966292999999993
	.quad	0x4058ac74080f98fa              # double 98.694581999999996
	.quad	0x40468dd523b3636f              # double 45.108066999999998
	.quad	0x40549c3cd141a693              # double 82.441211999999993
	.quad	0x4038a5908e581cf8              # double 24.646737000000002
	.quad	0x405121bbc6eb0b7c              # double 68.527085999999997
	.quad	0x404e62d5ae1cde5d              # double 60.772145999999999
	.quad	0x4055a27ba237cdcd              # double 86.538796000000004
	.quad	0x4043833836a832ba              # double 39.025153000000003
	.quad	0x405780dcc63f1412              # double 94.013474999999999
	.quad	0x4054cf09bf9c62a2              # double 83.234970000000004
	.quad	0x403dd6bd1aa821f3              # double 29.838823000000001
	.quad	0x404034dbdf8f4730              # double 32.412959999999998
	.quad	0x4045c83b1d0c8041              # double 43.564304
	.quad	0x403f968f7db6e504              # double 31.588127
	.quad	0x4037ad21144cbe1f              # double 23.676286000000001
	.quad	0x401005b89939218a              # double 4.0055870000000002
	.quad	0x40148c664d3bf2f5              # double 5.1371089999999997
	.quad	0x405404ab6d00b45b              # double 80.072963000000001
	.quad	0x403c936e2eb1c433              # double 28.575900000000001
	.quad	0x4056e3083dbc2331              # double 91.547377999999994
	.quad	0x3ffc7990afe60c39              # double 1.779679
	.quad	0x40480fcf4e874c90              # double 48.123514
	.quad	0x40560a3315d701da              # double 88.159368000000001
	.quad	0x404c8950331e3a7e              # double 57.072760000000002
	.quad	0x4050f0b7b6bb1290              # double 67.761212999999998
	.quad	0x4056f4eae5bc87db              # double 91.826836999999997
	.quad	0x4032d0fdb09a671f              # double 18.816371
	.quad	0x40560c8997c3d684              # double 88.195898
	.quad	0x4049f84840e1719f              # double 51.939704999999996
	.quad	0x40515d4af922962d              # double 69.457701
	.quad	0x40545f2a80064a9d              # double 81.486969000000001
	.quad	0x4055e02178f68be3              # double 87.502043
	.quad	0x403e2b0307f23cc9              # double 30.168015
	.quad	0x4046d1421c044285              # double 45.634830000000001
	.quad	0x40547012839042d9              # double 81.751130000000003
	.quad	0x40579ed23d4f15e8              # double 94.481582000000003
	.quad	0x402575dc8323358f              # double 10.730198
	.size	.L__constant_50xf64, 400

	.type	.L__constant_10x10xf64_0,@object # @__constant_10x10xf64_0
	.p2align	6, 0x0
.L__constant_10x10xf64_0:
	.quad	0x402ab40d6f544bb2              # double 13.351665000000001
	.quad	0x404409d9e40c8473              # double 40.076962000000002
	.quad	0x40515ff512663411              # double 69.499332999999993
	.quad	0x4031efd4280ae105              # double 17.936831000000002
	.quad	0x405056d1cc100e6b              # double 65.356555
	.quad	0x405781d32830a0b2              # double 94.028513000000003
	.quad	0x4044dbf11f926c7f              # double 41.718296000000002
	.quad	0x40349b8f36694899              # double 20.607654
	.quad	0x4051e0624dd2f1aa              # double 71.506
	.quad	0x404afdd66277c45d              # double 53.983105000000002
	.quad	0x40389eaef2c73259              # double 24.619857
	.quad	0x40433206c00da1a9              # double 38.390830999999999
	.quad	0x40536e90c4dec1c2              # double 77.727586000000002
	.quad	0x405756c74b838c11              # double 93.355913999999998
	.quad	0x4035193ccd0fe8ab              # double 21.098583999999999
	.quad	0x40376944028e4fb9              # double 23.411193999999998
	.quad	0x4016ba45d41fa765              # double 5.6819069999999998
	.quad	0x402f569a91105e1c              # double 15.669148
	.quad	0x4057a68c47a17f41              # double 94.602311999999997
	.quad	0x3ff6e07e5a78f25a              # double 1.429808
	.quad	0x4053bfda72a7bd49              # double 78.997708000000002
	.quad	0x404272b545c78a6e              # double 36.896157000000002
	.quad	0x405143f61aa3f035              # double 69.061896000000004
	.quad	0x403496148ba83f4f              # double 20.586251000000001
	.quad	0x4050a17c2ca148bb              # double 66.523204000000007
	.quad	0x4051bec2c5e2cdc0              # double 70.980637999999999
	.quad	0x4034558b60f1b25f              # double 20.334157999999999
	.quad	0x3fee48c7192ea52f              # double 0.946384
	.quad	0x40512e98dcdb37ca              # double 68.728080000000006
	.quad	0x4055cccbbc2b94d9              # double 87.199934999999996
	.quad	0x405178307f23cc8e              # double 69.877960000000002
	.quad	0x4028cab2bfdb4cc2              # double 12.395894999999999
	.quad	0x404a9a29f16b11c7              # double 53.204405000000001
	.quad	0x40555067dbb16c1e              # double 85.256338999999997
	.quad	0x4023321f4b1ee243              # double 9.5978949999999993
	.quad	0x404f939e9d0e9920              # double 63.153278
	.quad	0x401ed6e86c6583e8              # double 7.7098709999999996
	.quad	0x4024e80baa582dbe              # double 10.453213999999999
	.quad	0x404b21ee9142b303              # double 54.265093
	.quad	0x4058de5714b9cb68              # double 99.474064999999996
	.quad	0x404918dc55000c95              # double 50.194223999999998
	.quad	0x4057539656eefa1e              # double 93.306050999999996
	.quad	0x4052acfc19c17226              # double 74.702887000000004
	.quad	0x4058dbd9c27e9531              # double 99.435165999999995
	.quad	0x40497868448cf7cb              # double 50.940682000000002
	.quad	0x403f059bc33f8551              # double 31.021908
	.quad	0x40550fc1a47a9e2c              # double 84.246194000000003
	.quad	0x404e5bc7de5082cf              # double 60.717036999999998
	.quad	0x40531a95dd4c76d1              # double 76.415396999999998
	.quad	0x4057d687db2b3461              # double 95.352041999999997
	.quad	0x403c0c1b21c475e6              # double 28.047288999999999
	.quad	0x4045236d117b5287              # double 42.276766000000002
	.quad	0x40534819439de482              # double 77.126542000000001
	.quad	0x4040dd4738a3b57c              # double 33.728735999999998
	.quad	0x40320c225742dcf4              # double 18.047398999999999
	.quad	0x40496f00e6afcce2              # double 50.867215000000002
	.quad	0x4054c56ac215b9a6              # double 83.084641000000005
	.quad	0x403f423e18698351              # double 31.258759999999999
	.quad	0x4051ec0ec3116228              # double 71.688400999999999
	.quad	0x40585d67ba237cdd              # double 97.459456000000002
	.quad	0x400f7ff69014b59a              # double 3.9374820000000001
	.quad	0x404f63c80841ede1              # double 62.779541999999999
	.quad	0x4033f50a99b6f5cb              # double 19.957193
	.quad	0x404162c7b02d59d5              # double 34.771718999999997
	.quad	0x40581a60b6f9fcb1              # double 96.412153000000003
	.quad	0x404c7435610adcd3              # double 56.907879000000001
	.quad	0x40474c46950fc71d              # double 46.595903999999997
	.quad	0x4028f60f1b25f634              # double 12.480584
	.quad	0x401eb4b90214ad36              # double 7.6764869999999998
	.quad	0x40488aaaa7ded6bb              # double 49.083333000000003
	.quad	0x404d4d6d8f4f93bc              # double 58.604906
	.quad	0x3fe41e6eeb702603              # double 0.62871500000000002
	.quad	0x40323a1e1d2178f7              # double 18.227022000000002
	.quad	0x40575f00474d9c6b              # double 93.484391999999999
	.quad	0x4026050ebaade658              # double 11.009878
	.quad	0x4050c20d8cb07d0b              # double 67.032077000000001
	.quad	0x405349c7e6b3fea0              # double 77.152826000000005
	.quad	0x40535f6e86c6583f              # double 77.491121000000006
	.quad	0x404ff6e008e9b38d              # double 63.928711999999997
	.quad	0x4051f9e6299524c0              # double 71.904673000000003
	.quad	0x40546923c42a66dc              # double 81.642808000000002
	.quad	0x404ac601711947d0              # double 53.546919000000003
	.quad	0x404484ec41dd1a22              # double 41.038460000000001
	.quad	0x404d00ccee5abc0e              # double 58.006253999999998
	.quad	0x40548846cfc829d0              # double 82.129322000000002
	.quad	0x404007074213a0c7              # double 32.054909000000002
	.quad	0x405088bd017dae82              # double 66.136536000000007
	.quad	0x404dd5b0f6ad70e7              # double 59.669463
	.quad	0x405586ada76d97b3              # double 86.104348999999999
	.quad	0x404d2641b328b6d8              # double 58.298879999999997
	.quad	0x400534152b0a6fc6              # double 2.6504310000000002
	.quad	0x405699c79b34a44c              # double 90.402807999999993
	.quad	0x4052927357e670e3              # double 74.288290000000003
	.quad	0x403be4198f1d3ed5              # double 27.891014999999999
	.quad	0x403995d041cc532a              # double 25.585208999999999
	.quad	0x400a8d3cff64cf8d              # double 3.3189639999999998
	.quad	0x4054cf908e581cf8              # double 83.243198000000007
	.quad	0x40561bbe33acd5b7              # double 88.433484000000007
	.quad	0x404a1db5f1bef49d              # double 52.232115
	.quad	0x40487cbb55ac03ff              # double 48.974466999999997
	.size	.L__constant_10x10xf64_0, 800

	.type	.L__constant_10x10xf64,@object  # @__constant_10x10xf64
	.p2align	6, 0x0
.L__constant_10x10xf64:
	.quad	0x40b1d2c3d8adab9f              # double 4562.7650249999997
	.quad	0x4084923cc7d1bb49              # double 658.27967799999999
	.quad	0x40a1e5f8a1be2b49              # double 2290.9856089999998
	.quad	0x40ba7ab6d1d041cc              # double 6778.7141389999997
	.quad	0x4093b6ae963dc487              # double 1261.6704950000001
	.quad	0x40b3d2aeecaeea64              # double 5074.6832990000003
	.quad	0x40b02e41a975afb0              # double 4142.2564920000004
	.quad	0x40afa5cb28d8665e              # double 4050.896796
	.quad	0x40b1655de12a51e3              # double 4453.3667169999999
	.quad	0x40b81429c17225b7              # double 6164.1631079999997
	.quad	0x40bed155e5d18091              # double 7889.3355380000003
	.quad	0x40d1c6f34534bd77              # double 18203.801099
	.quad	0x40d0dc33ce7cd035              # double 17264.809477999999
	.quad	0x40d41f37f4c6e6da              # double 20604.874315000001
	.quad	0x40ccd4e367a0f909              # double 14761.776599999999
	.quad	0x40c56e4034091c08              # double 10972.501587999999
	.quad	0x40cce4bdb6c3760c              # double 14793.48214
	.quad	0x40c17fa6294141ea              # double 8959.2981340000006
	.quad	0x40d13000e5109071              # double 17600.013981
	.quad	0x40cf934b8969a0ae              # double 16166.590131000001
	.quad	0x40d272fb5e3da2f9              # double 18891.927627000001
	.quad	0x40d48a5d594af4f1              # double 21033.458575000001
	.quad	0x40db2b832cf0f9d3              # double 27822.049618000001
	.quad	0x40d9bf074f9c1f86              # double 26364.114234000001
	.quad	0x40d005990a67620f              # double 16406.39126
	.quad	0x40d229d12f5dbb9d              # double 18599.268516
	.quad	0x40d0bdc0324851a8              # double 17143.003068999999
	.quad	0x40c65b99838c111b              # double 11447.199327
	.quad	0x40db6740b3636f3b              # double 28061.010949
	.quad	0x40dc98c2f32bdc27              # double 29283.046092
	.quad	0x40cc0313afea3df7              # double 14342.153806
	.quad	0x40c4d02d5f88fc93              # double 10656.354477999999
	.quad	0x40cf9323359ff4fd              # double 16166.275073999999
	.quad	0x40d05a2d39bcba30              # double 16744.706649
	.quad	0x40c33e707f77af64              # double 9852.8788899999999
	.quad	0x40cbe3f41fafc8b0              # double 14279.907217
	.quad	0x40cf8bbb3c81908e              # double 16151.462783999999
	.quad	0x40caa8307ac81d3b              # double 13648.378747000001
	.quad	0x40d4028e4430b179              # double 20490.222912000001
	.quad	0x40d2a2010e51d25b              # double 19080.016499000001
	.quad	0x40c784afb23dd54e              # double 12041.372627000001
	.quad	0x40ba35e58b3f63c3              # double 6709.8966559999999
	.quad	0x40c1e69c8f190d17              # double 9165.2231169999995
	.quad	0x40c77e25e57d9dbb              # double 12028.296066000001
	.quad	0x40c1f653607c419a              # double 9196.651382
	.quad	0x40c0a83e12599ed8              # double 8528.4849350000004
	.quad	0x40bb8f73a365cb36              # double 7055.451712
	.quad	0x40b9455ac7eae5bd              # double 6469.3546130000004
	.quad	0x40ca5cc0de093533              # double 13497.506776
	.quad	0x40c79373294573a8              # double 12070.899697000001
	.quad	0x40b5e23894e5d5b2              # double 5602.2210219999997
	.quad	0x40b6f44d4e3bcd36              # double 5876.3019750000003
	.quad	0x40bda5219a73b42d              # double 7589.1312630000002
	.quad	0x40b28ca61693c03c              # double 4748.6487820000002
	.quad	0x40bfac21c7ef177a              # double 8108.1319569999996
	.quad	0x40be668606fac604              # double 7782.5235439999997
	.quad	0x40bd9e256c3fc43b              # double 7582.1461829999998
	.quad	0x40b3341d0fc71d60              # double 4916.1135219999996
	.quad	0x40c358f837de939f              # double 9905.9392050000006
	.quad	0x40bfdc46106ab14f              # double 8156.2736880000002
	.quad	0x40b630af3700474e              # double 5680.6844330000004
	.quad	0x40d1600cc8b43958              # double 17792.19975
	.quad	0x40d0b7ea0f49491f              # double 17119.657182999999
	.quad	0x40cb4f493a2df938              # double 13982.572088000001
	.quad	0x40d1de79a58f7122              # double 18297.900730000001
	.quad	0x40d293eff53825e1              # double 19023.749341999999
	.quad	0x40d37ea3abb01c93              # double 19962.557354
	.quad	0x40cd97972f4cf4a5              # double 15151.181130999999
	.quad	0x40d0ce4972ef0ae5              # double 17209.147639999999
	.quad	0x40d1db91c46950fc              # double 18286.277612999998
	.quad	0x40d2bcaa47baa9b5              # double 19186.660628000001
	.quad	0x40d24a35e7ea5f85              # double 18728.842280000001
	.quad	0x40d3ad5ea1986b9c              # double 20149.478612999999
	.quad	0x40d1936415c63ae2              # double 17997.563828999999
	.quad	0x40d08e5827e95315              # double 16953.377435999999
	.quad	0x40cd52a38b47c73f              # double 15013.277688
	.quad	0x40d5afd27485e3da              # double 22207.288361999999
	.quad	0x40d331f7024b33db              # double 19655.859515
	.quad	0x40d7bdad1ab4b72c              # double 24310.704754999999
	.quad	0x40d86a0c5ab3aabd              # double 25000.193036000001
	.quad	0x40d129a4c66d373b              # double 17574.574611
	.quad	0x40c20ee2562e09ff              # double 9245.7682550000009
	.quad	0x40cdb83bca643cc0              # double 15216.467113999999
	.quad	0x40d19e1bfcb4f1e5              # double 18040.437299000001
	.quad	0x40c712803bddfca0              # double 11813.001827
	.quad	0x40c8a63c6c22680a              # double 12620.47205
	.quad	0x40bcbd9be69270b0              # double 7357.6089869999996
	.quad	0x40ba05d03c5bd0e1              # double 6661.8134209999998
	.quad	0x40d35f608c111ada              # double 19837.508548999998
	.quad	0x40d10bde8af3e469              # double 17455.477231000001
	.quad	0x40d6490de61cffeb              # double 22820.21717
	.quad	0x40c716d211e42e12              # double 11821.641170999999
	.quad	0x40d208dd1ee67514              # double 18467.455010999998
	.quad	0x40d4b674cd0bb6ed              # double 21209.825014999999
	.quad	0x40d189f12f44912a              # double 17959.768510000002
	.quad	0x40d5e8e176f6d762              # double 22435.522885999999
	.quad	0x40d18751e5de15ca              # double 17949.279654999998
	.quad	0x40cd6160b86b15f9              # double 15042.755628000001
	.quad	0x40da19040d66f0d0              # double 26724.063318
	.quad	0x40d9764547b24639              # double 26073.082501000001
	.size	.L__constant_10x10xf64, 800

	.section	".note.GNU-stack","",@progbits
