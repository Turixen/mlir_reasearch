	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_v1p0_zicsr2p0_zmmul1p0_zaamo1p0_zalrsc1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"LLVMDialectModule"
	.text
	.globl	matmul                          # -- Begin function matmul
	.p2align	1
	.type	matmul,@function
matmul:                                 # @matmul
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -160
	.cfi_def_cfa_offset 160
	sd	ra, 152(sp)                     # 8-byte Folded Spill
	sd	s0, 144(sp)                     # 8-byte Folded Spill
	sd	s1, 136(sp)                     # 8-byte Folded Spill
	sd	s2, 128(sp)                     # 8-byte Folded Spill
	sd	s3, 120(sp)                     # 8-byte Folded Spill
	sd	s4, 112(sp)                     # 8-byte Folded Spill
	sd	s5, 104(sp)                     # 8-byte Folded Spill
	sd	s6, 96(sp)                      # 8-byte Folded Spill
	sd	s7, 88(sp)                      # 8-byte Folded Spill
	sd	s8, 80(sp)                      # 8-byte Folded Spill
	sd	s9, 72(sp)                      # 8-byte Folded Spill
	sd	s10, 64(sp)                     # 8-byte Folded Spill
	sd	s11, 56(sp)                     # 8-byte Folded Spill
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
	csrr	a1, vlenb
	slli	a1, a1, 4
	sub	sp, sp, a1
	.cfi_escape 0x0f, 0x0e, 0x72, 0x00, 0x11, 0xa0, 0x01, 0x22, 0x11, 0x10, 0x92, 0xa2, 0x38, 0x00, 0x1e, 0x22 # sp + 160 + 16 * vlenb
	csrr	a1, vlenb
	slli	a1, a1, 4
	add	a1, a1, sp
	ld	s10, 272(a1)
	csrr	a1, vlenb
	slli	a1, a1, 4
	add	a1, a1, sp
	ld	a1, 368(a1)
	sd	a1, 32(sp)                      # 8-byte Folded Spill
	csrr	a1, vlenb
	slli	a1, a1, 4
	add	a1, a1, sp
	ld	a1, 360(a1)
	sd	a1, 24(sp)                      # 8-byte Folded Spill
	csrr	a1, vlenb
	slli	a1, a1, 4
	add	a1, a1, sp
	ld	a1, 352(a1)
	sd	a1, 16(sp)                      # 8-byte Folded Spill
	csrr	a1, vlenb
	slli	a1, a1, 4
	add	a1, a1, sp
	ld	t2, 344(a1)
	csrr	a1, vlenb
	slli	a1, a1, 4
	add	a1, a1, sp
	ld	t3, 336(a1)
	csrr	a1, vlenb
	slli	a1, a1, 4
	add	a1, a1, sp
	ld	s11, 328(a1)
	csrr	a1, vlenb
	slli	a1, a1, 4
	add	a1, a1, sp
	ld	t4, 320(a1)
	csrr	a1, vlenb
	slli	a1, a1, 4
	add	a1, a1, sp
	ld	s4, 192(a1)
	lwu	a1, 0(a2)
	lwu	a3, 4(a2)
	lwu	a4, 8(a2)
	lwu	a2, 12(a2)
	csrr	a5, vlenb
	li	t5, 10
	li	t6, 80
	li	s9, 9
	slli	a3, a3, 32
	or	s3, a3, a1
	slli	ra, a5, 4
	slli	a2, a2, 32
	or	s2, a2, a4
	slli	t1, a5, 1
	slli	t0, a5, 3
	j	.LBB0_2
.LBB0_1:                                #   in Loop: Header=BB0_2 Depth=1
	addi	s3, s3, 1
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #       Child Loop BB0_8 Depth 3
	bge	s3, s2, .LBB0_11
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	li	s5, 0
	li	s8, 0
	slli	a1, s3, 3
	add	a1, a1, a7
	lwu	a2, 4(a1)
	lwu	a1, 0(a1)
	slli	a2, a2, 32
	or	a1, a1, a2
	mul	s6, s3, t5
	mul	s7, a1, t6
	j	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=2
	addi	s8, s8, 1
	addi	s5, s5, 80
.LBB0_5:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_8 Depth 3
	blt	s9, s8, .LBB0_1
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=2
	li	s1, 0
	add	a1, s8, s6
	slli	a1, a1, 3
	add	a1, a1, s4
	fld	fa5, 0(a1)
	li	a2, 10
	mv	s0, s5
	mv	a4, s7
	j	.LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=3
	vsetvli	a6, zero, e32, m8, ta, ma
	vmv.v.x	v8, a1
	csrr	a1, vlenb
	slli	a1, a1, 3
	add	a1, a1, sp
	addi	a1, a1, 48
	vs8r.v	v8, (a1)                        # Unknown-size Folded Spill
	add	a1, s11, a4
	vsetvli	a5, zero, e64, m8, ta, ma
	vmv.v.i	v8, 0
	addi	a3, sp, 48
	vs8r.v	v8, (a3)                        # Unknown-size Folded Spill
	add	a5, s10, s0
	vsetvli	a3, zero, e32, m8, ta, ma
	vid.v	v24
	csrr	a3, vlenb
	slli	a3, a3, 3
	add	a3, a3, sp
	addi	a3, a3, 48
	vl8r.v	v0, (a3)                        # Unknown-size Folded Reload
	vsetvli	a3, zero, e32, m4, ta, ma
	vmslt.vv	v7, v24, v0
	csrr	a3, vlenb
	slli	a3, a3, 3
	add	a3, a3, sp
	addi	a3, a3, 48
	vl8r.v	v16, (a3)                       # Unknown-size Folded Reload
	vmslt.vv	v6, v28, v20
	vsetvli	zero, zero, e64, m8, ta, mu
	vmv.v.i	v16, 0
	add	a3, a1, t0
	vmv1r.v	v0, v6
	vle64.v	v8, (a3), v0.t
	csrr	a6, vlenb
	slli	a6, a6, 3
	add	a6, a6, sp
	addi	a6, a6, 48
	vs8r.v	v8, (a6)                        # Unknown-size Folded Spill
	vmv1r.v	v0, v7
	addi	a6, sp, 48
	vl8r.v	v24, (a6)                       # Unknown-size Folded Reload
	vle64.v	v24, (a1), v0.t
	vle64.v	v16, (a5), v0.t
	add	a5, a5, t0
	vmv.v.i	v8, 0
	vmv1r.v	v0, v6
	vle64.v	v8, (a5), v0.t
	vfmul.vf	v16, v16, fa5
	vfadd.vv	v16, v24, v16
	vfmul.vf	v8, v8, fa5
	csrr	a5, vlenb
	slli	a5, a5, 3
	add	a5, a5, sp
	addi	a5, a5, 48
	vl8r.v	v24, (a5)                       # Unknown-size Folded Reload
	vfadd.vv	v8, v24, v8
	vse64.v	v8, (a3), v0.t
	vmv1r.v	v0, v7
	vse64.v	v16, (a1), v0.t
	add	s1, s1, t1
	add	a4, a4, ra
	add	s0, s0, ra
	sub	a2, a2, t1
.LBB0_8:                                #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	blt	s9, s1, .LBB0_4
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=3
	mv	a1, a2
	blt	a2, t1, .LBB0_7
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=3
	mv	a1, t1
	j	.LBB0_7
.LBB0_11:
	sd	t4, 0(a0)
	sd	s11, 8(a0)
	sd	t3, 16(a0)
	sd	t2, 24(a0)
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	sd	a1, 32(a0)
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	sd	a1, 40(a0)
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	sd	a1, 48(a0)
	csrr	a0, vlenb
	slli	a0, a0, 4
	add	sp, sp, a0
	.cfi_def_cfa sp, 160
	ld	ra, 152(sp)                     # 8-byte Folded Reload
	ld	s0, 144(sp)                     # 8-byte Folded Reload
	ld	s1, 136(sp)                     # 8-byte Folded Reload
	ld	s2, 128(sp)                     # 8-byte Folded Reload
	ld	s3, 120(sp)                     # 8-byte Folded Reload
	ld	s4, 112(sp)                     # 8-byte Folded Reload
	ld	s5, 104(sp)                     # 8-byte Folded Reload
	ld	s6, 96(sp)                      # 8-byte Folded Reload
	ld	s7, 88(sp)                      # 8-byte Folded Reload
	ld	s8, 80(sp)                      # 8-byte Folded Reload
	ld	s9, 72(sp)                      # 8-byte Folded Reload
	ld	s10, 64(sp)                     # 8-byte Folded Reload
	ld	s11, 56(sp)                     # 8-byte Folded Reload
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
	addi	sp, sp, 160
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	matmul, .Lfunc_end0-matmul
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
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
	call	assemble_sparse
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
	lui	t1, %hi(.L__constant_10x10xf64)
	addi	t1, t1, %lo(.L__constant_10x10xf64)
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
	call	matmul
	ld	a0, 232(sp)
	fld	fa5, 88(a0)
	fcvt.l.d	a0, fa5, rtz
	ld	ra, 456(sp)                     # 8-byte Folded Reload
	ld	s0, 448(sp)                     # 8-byte Folded Reload
	ld	s1, 440(sp)                     # 8-byte Folded Reload
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	addi	sp, sp, 464
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function assemble_sparse
.LCPI2_0:
	.quad	0                               # 0x0
	.quad	45                              # 0x2d
	.quad	1                               # 0x1
	.quad	3735928559                      # 0xdeadbeef
.LCPI2_1:
	.quad	0                               # 0x0
	.quad	11                              # 0xb
	.quad	1                               # 0x1
	.quad	3735928559                      # 0xdeadbeef
	.text
	.globl	assemble_sparse
	.p2align	1
	.type	assemble_sparse,@function
assemble_sparse:                        # @assemble_sparse
	.cfi_startproc
# %bb.0:
	lui	a1, %hi(.L__constant_11xindex)
	li	t3, 10
	lui	a6, %hi(.L__constant_45xindex)
	addi	a6, a6, %lo(.L__constant_45xindex)
	lui	a7, %hi(.L__constant_45xf64)
	addi	a7, a7, %lo(.L__constant_45xf64)
	li	t0, 2
	lui	t2, 228023
	lui	a4, %hi(.LCPI2_0)
	addi	a4, a4, %lo(.LCPI2_0)
	addi	a5, a0, 56
	lui	t1, %hi(.LCPI2_1)
	addi	t1, t1, %lo(.LCPI2_1)
	addi	a3, a0, 16
	vsetivli	zero, 4, e64, m2, ta, ma
	vle64.v	v8, (a4)
	addi	a4, a1, %lo(.L__constant_11xindex)
	ld	a1, %lo(.L__constant_11xindex+8)(a1)
	slli	t2, t2, 2
	addi	a2, t2, -273
	sd	a2, 0(a0)
	sd	a4, 8(a0)
	sd	a6, 48(a0)
	sd	a7, 88(a0)
	mul	a2, a1, t3
	sd	t3, 128(a0)
	sd	t0, 136(a0)
	sd	a1, 144(a0)
	sd	a2, 152(a0)
	vse64.v	v8, (a5)
	vle64.v	v8, (t1)
	addi	a0, a0, 96
	lui	a1, 40979
	addi	a1, a1, -768
	vse64.v	v8, (a3)
	vmv.s.x	v8, a1
	vsext.vf8	v10, v8
	vse64.v	v10, (a0)
	ret
.Lfunc_end2:
	.size	assemble_sparse, .Lfunc_end2-assemble_sparse
	.cfi_endproc
                                        # -- End function
	.type	.L__constant_45xindex,@object   # @__constant_45xindex
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
.L__constant_45xindex:
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	1                               # 0x1
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.size	.L__constant_45xindex, 360

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.size	.L__constant_11xindex, 88

	.type	.L__constant_45xf64,@object     # @__constant_45xf64
	.p2align	6, 0x0
.L__constant_45xf64:
	.quad	0x40201c020817fc76              # double 8.0547029999999999
	.quad	0x40047de939eadd59              # double 2.56148
	.quad	0x401fbf52fc2656ac              # double 7.9368400000000001
	.quad	0x401b828d434a01ac              # double 6.8774920000000002
	.quad	0x3fc0f038e29f9ce9              # double 0.132331
	.quad	0x40239311409a2403              # double 9.7872409999999998
	.quad	0x401d93abc947064f              # double 7.3942100000000002
	.quad	0x4022bbe707e175d1              # double 9.3669969999999995
	.quad	0x4013f008205ff1d8              # double 4.9844059999999999
	.quad	0x4003807aaef2c732              # double 2.4377339999999998
	.quad	0x401e756eefa1e3eb              # double 7.614681
	.quad	0x4022712c8c5004fb              # double 9.2210429999999999
	.quad	0x4019c1b9f98b71b9              # double 6.4391860000000003
	.quad	0x3fef4a6223e18698              # double 0.97782999999999997
	.quad	0x4014042d490e66cb              # double 5.0040789999999999
	.quad	0x3ffe30cfe154434e              # double 1.886917
	.quad	0x40179704ff43419e              # double 5.8974799999999998
	.quad	0x3ff872b884406c01              # double 1.528008
	.quad	0x4015b85729b280f1              # double 5.4300199999999998
	.quad	0x3fe7004534bd76ee              # double 0.71878299999999995
	.quad	0x400b3bd7b2031ceb              # double 3.40422
	.quad	0x4022c0472c0e7bc4              # double 9.3755430000000004
	.quad	0x401991b2a27f1b69              # double 6.3922829999999999
	.quad	0x4015b7e9531550ca              # double 5.4296009999999999
	.quad	0x401687496aad1d04              # double 5.6321159999999999
	.quad	0x4022fd3198288052              # double 9.4945190000000004
	.quad	0x402149deefe4ffc9              # double 8.6442789999999992
	.quad	0x4020628672756862              # double 8.1924320000000002
	.quad	0x4022c4f1a1986b9c              # double 9.3846559999999996
	.quad	0x4023114c660a2014              # double 9.5337859999999992
	.quad	0x3ffa4e66cb10342b              # double 1.6441410000000001
	.quad	0x401d9a6d698fe692              # double 7.4008079999999996
	.quad	0x401652d9cf13ceea              # double 5.5809090000000001
	.quad	0x40185467be553ac5              # double 6.082427
	.quad	0x3ffa3fb7a5f41aef              # double 1.6405559999999999
	.quad	0x4023d71fddebd902              # double 9.9201650000000008
	.quad	0x400857353b4b2fa9              # double 3.0425819999999999
	.quad	0x400355842b734b51              # double 2.4167559999999999
	.quad	0x4005f065f9591cd2              # double 2.7423820000000001
	.quad	0x4020cbd7d3910c2c              # double 8.3981309999999993
	.quad	0x4016f640639d5e4a              # double 5.7404799999999998
	.quad	0x4020a3c579f23465              # double 8.3198659999999993
	.quad	0x4019397c3d68405b              # double 6.3061379999999998
	.quad	0x4023b209aaa3ad19              # double 9.8477300000000003
	.quad	0x401eb67b1c0010c7              # double 7.678204
	.size	.L__constant_45xf64, 360

	.type	.L__constant_10x10xf64,@object  # @__constant_10x10xf64
	.p2align	6, 0x0
.L__constant_10x10xf64:
	.quad	0x401bf433a8829ab9              # double 6.9884783105578032
	.quad	0x40233ce146220d0d              # double 9.6189062038961541
	.quad	0x401c3170d57b5bb6              # double 7.0482819897214792
	.quad	0x4006da6ac030dcb3              # double 2.8566489233886272
	.quad	0x3ff09b9739d1190c              # double 1.0379860170810984
	.quad	0x400233c0085007ba              # double 2.2752686166213296
	.quad	0x40121c2e874d2243              # double 4.52752124222076
	.quad	0x4008b48142fdd5a0              # double 3.0881371720995077
	.quad	0x4018a6f06b831896              # double 6.1630265043987915
	.quad	0x401a0c8c9ae94be1              # double 6.5122551159756492
	.quad	0x4014587520e58e68              # double 5.0863843097791701
	.quad	0x40200c32f327d4f0              # double 8.023826216327933
	.quad	0x4002f5411da1852a              # double 2.3697531046788258
	.quad	0x3ffd039eae0b03e8              # double 1.8133837507777972
	.quad	0x40173efd33ff1c85              # double 5.8115127682168621
	.quad	0x401c54323841afe9              # double 7.0822228231518034
	.quad	0x400ebc8a46f8cda6              # double 3.8420606178930994
	.quad	0x401972fe0d5c08b2              # double 6.3622972571776462
	.quad	0x4019311bdba1dfd4              # double 6.2979578321027994
	.quad	0x3ff3558c16172a0e              # double 1.208385549822768
	.quad	0x401f00bec5e7e0d2              # double 7.7507277415063118
	.quad	0x400872a230f95378              # double 3.0559734178627274
	.quad	0x4020724946bf6430              # double 8.2232153042442349
	.quad	0x402003beb3c6e6db              # double 8.0073143177318595
	.quad	0x40091724f2de0958              # double 3.1363009428033983
	.quad	0x4015c6d804671080              # double 5.4441834152131605
	.quad	0x400ca7988eede60c              # double 3.5818339506483934
	.quad	0x40093aff75c567d7              # double 3.1538075638645569
	.quad	0x4004b3ccf41aa5fa              # double 2.5877932615883283
	.quad	0x401ea40c45d8ed64              # double 7.660203067174141
	.quad	0x3ff898d085d84c60              # double 1.5373082378689773
	.quad	0x401ae8834471984c              # double 6.727063245232852
	.quad	0x401f214917025676              # double 7.7825053782631723
	.quad	0x401327e09cec7f02              # double 4.7889427680345324
	.quad	0x40196fd3a09b6bed              # double 6.3592057318555648
	.quad	0x40011765381973e9              # double 2.1364235289352007
	.quad	0x4021e57668444164              # double 8.9481690009421939
	.quad	0x40231c5cd64a9283              # double 9.5553957906752255
	.quad	0x401bc43355b4ab48              # double 6.9416020766755722
	.quad	0x4001790cc73866f6              # double 2.1841064037406523
	.quad	0x4020cd0aaa97d3ac              # double 8.4004720030150892
	.quad	0x40123f5c0f2ee08d              # double 4.5618746158944647
	.quad	0x4015ccd64ed2c8d5              # double 5.4500362697746896
	.quad	0x40001b6562e9bdbc              # double 2.0133769729215754
	.quad	0x3ff768e56043677b              # double 1.4631093750271862
	.quad	0x40116a46da00b8ee              # double 4.3537859023037822
	.quad	0x401c1f6fd8a6bfc6              # double 7.0307000972533782
	.quad	0x402279a1acba34cd              # double 9.2375616051962428
	.quad	0x3ff4a90bc2fdb9ee              # double 1.2912709824410018
	.quad	0x400d5307b9551854              # double 3.6655420760244315
	.quad	0x40152d6bbde6a8e0              # double 5.2943563148530473
	.quad	0x401e858660e39f86              # double 7.6303954256944788
	.quad	0x4023befbb4658c6f              # double 9.8730141042671828
	.quad	0x3ffe99641ca7b51f              # double 1.9124489898052344
	.quad	0x40147502f836aff6              # double 5.1142691405657299
	.quad	0x4022e8752b552474              # double 9.4540189305718982
	.quad	0x40235475da285a0e              # double 9.6649616407640018
	.quad	0x402195a1ee1e7830              # double 8.7922510540193741
	.quad	0x3fc0520258e34538              # double 0.12750272121642481
	.quad	0x40075354db9d4ffc              # double 2.9156891972907015
	.quad	0x3ffec6de6fabdcd5              # double 1.9235519754563957
	.quad	0x4007cde65650fce2              # double 2.9755369895425341
	.quad	0x401e3c6bb2bde60a              # double 7.5590045860676671
	.quad	0x4011c8f36f19ea86              # double 4.4462411269729554
	.quad	0x3fe3f9b96208d472              # double 0.62423390529023792
	.quad	0x401c3c11fe1ae5b1              # double 7.0586623863140838
	.quad	0x4011d0e8a137505e              # double 4.4540124120722719
	.quad	0x3fc1c2752c4bc768              # double 0.13874687827006515
	.quad	0x4014573f2494551f              # double 5.0852018085036255
	.quad	0x40044d77ecebbddb              # double 2.5378263959353098
	.quad	0x4016f1eadee82bf1              # double 5.7362475232321097
	.quad	0x400dae293d55f6b3              # double 3.7100395957812338
	.quad	0x3ff33e150d63da08              # double 1.2026567957924517
	.quad	0x4008c03fd7717f38              # double 3.0938717681418915
	.quad	0x4000aece1e011d60              # double 2.0853540748682207
	.quad	0x4004e12a6ff3619d              # double 2.6099442239903525
	.quad	0x3fcc6f6f73a79928              # double 0.22215073725892265
	.quad	0x40171f15147bba84              # double 5.780353851367753
	.quad	0x3fbcb7c3987c4180              # double 0.11217901680743658
	.quad	0x400bec8e426ef62e              # double 3.4905057134735875
	.quad	0x400cc1fa1c383fb6              # double 3.5947153286615174
	.quad	0x4022f37bbf7c9866              # double 9.4755534972757225
	.quad	0x400e3b1a26d871f3              # double 3.7788584742358977
	.quad	0x402114e75b686583              # double 8.5408276143014117
	.quad	0x4015700a0ff3e91b              # double 5.3594133846875378
	.quad	0x400133ea8afac000              # double 2.150349698807986
	.quad	0x3fe831d6d05309c6              # double 0.75608387649872877
	.quad	0x400eab40f0c76ce2              # double 3.8336199580058841
	.quad	0x3fee3c53808f7158              # double 0.94486403569639332
	.quad	0x3fc4f36ca4db7748              # double 0.16367872285530383
	.quad	0x400203876314a073              # double 2.2517230740232264
	.quad	0x401427eb388fa9a6              # double 5.0389832341847178
	.quad	0x40235dbe94f0322e              # double 9.6830946486671472
	.quad	0x40212eb5a9dfb3bc              # double 8.5912297330449902
	.quad	0x401a773056f69abc              # double 6.6163953388228798
	.quad	0x40205e453af776cc              # double 8.1841219355659617
	.quad	0x4023cfa28b6a0979              # double 9.9055369917812061
	.quad	0x4022f2fb121ab35e              # double 9.4745717675775118
	.quad	0x400726762772a48e              # double 2.8937800485478595
	.quad	0x4020216e04eb70a9              # double 8.0652925050165596
	.size	.L__constant_10x10xf64, 800

	.section	".note.GNU-stack","",@progbits
