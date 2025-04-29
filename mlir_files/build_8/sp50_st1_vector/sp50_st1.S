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
	ld	s10, 224(sp)
	ld	a6, 320(sp)
	ld	t0, 312(sp)
	ld	t1, 304(sp)
	ld	t2, 296(sp)
	ld	t3, 288(sp)
	ld	s11, 280(sp)
	ld	t4, 272(sp)
	ld	s4, 144(sp)
	lwu	a1, 0(a2)
	lwu	a3, 4(a2)
	lwu	a4, 8(a2)
	lwu	a2, 12(a2)
	csrr	s1, vlenb
	li	t5, 10
	li	t6, 80
	slli	a3, a3, 32
	or	s3, a3, a1
	li	s9, 9
	vsetvli	a1, zero, e32, m4, ta, ma
	vid.v	v4
	slli	a2, a2, 32
	or	s2, a2, a4
	slli	ra, s1, 3
	vsetvli	zero, zero, e64, m8, ta, ma
	vmv.v.i	v8, 0
	j	.LBB0_2
.LBB0_1:                                #   in Loop: Header=BB0_2 Depth=1
	addi	s3, s3, 1
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #       Child Loop BB0_8 Depth 3
	bge	s3, s2, .LBB0_11
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	li	s7, 0
	li	s8, 0
	slli	a2, s3, 3
	add	a2, a2, a7
	lwu	a3, 4(a2)
	lwu	a2, 0(a2)
	slli	a3, a3, 32
	or	a2, a2, a3
	mul	s5, s3, t5
	mul	s6, a2, t6
	j	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=2
	addi	s8, s8, 1
	addi	s7, s7, 80
.LBB0_5:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_8 Depth 3
	blt	s9, s8, .LBB0_1
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=2
	li	a2, 0
	add	a3, s8, s5
	slli	a3, a3, 3
	add	a3, a3, s4
	fld	fa5, 0(a3)
	li	a4, 10
	mv	a1, s7
	mv	s0, s6
	j	.LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=3
	vsetvli	zero, zero, e32, m4, ta, ma
	vmslt.vx	v0, v4, a3
	add	a3, s11, s0
	vmv8r.v	v24, v8
	add	a5, s10, a1
	vmv8r.v	v16, v8
	vsetvli	zero, zero, e64, m8, ta, mu
	vle64.v	v24, (a3), v0.t
	vle64.v	v16, (a5), v0.t
	add	a2, a2, s1
	add	s0, s0, ra
	add	a1, a1, ra
	vfmul.vf	v16, v16, fa5
	vfadd.vv	v16, v24, v16
	vse64.v	v16, (a3), v0.t
	sub	a4, a4, s1
.LBB0_8:                                #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	blt	s9, a2, .LBB0_4
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=3
	mv	a3, a4
	blt	a4, s1, .LBB0_7
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=3
	mv	a3, s1
	j	.LBB0_7
.LBB0_11:
	sd	t4, 0(a0)
	sd	s11, 8(a0)
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
	.quad	50                              # 0x32
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
	lui	a6, %hi(.L__constant_50xindex)
	addi	a6, a6, %lo(.L__constant_50xindex)
	lui	a7, %hi(.L__constant_50xf64)
	addi	a7, a7, %lo(.L__constant_50xf64)
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
	addi	a1, a1, 512
	vse64.v	v8, (a3)
	vmv.s.x	v8, a1
	vsext.vf8	v10, v8
	vse64.v	v10, (a0)
	ret
.Lfunc_end2:
	.size	assemble_sparse, .Lfunc_end2-assemble_sparse
	.cfi_endproc
                                        # -- End function
	.type	.L__constant_10x10xf64,@object  # @__constant_10x10xf64
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
.L__constant_10x10xf64:
	.quad	0x401f8ba55f654bf9              # double 7.8863730340553894
	.quad	0x40183789fa07c99e              # double 6.0542372767689852
	.quad	0x40141506dfe497a7              # double 5.0205340369483684
	.quad	0x401ec05a95d6f091              # double 7.687845555538062
	.quad	0x400a19362e02f888              # double 3.2623103708893417
	.quad	0x401aaeb5f246c2e4              # double 6.6706159454049363
	.quad	0x4022f733700b3008              # double 9.4828143132836117
	.quad	0x3fffd0639480ef02              # double 1.9883762169765196
	.quad	0x40229a23e3fb24a0              # double 9.3010550731726767
	.quad	0x4020d829a9df28a2              # double 8.4221928677473592
	.quad	0x401a4b844504b3f4              # double 6.5737467559929321
	.quad	0x3ffc4a169d4989cc              # double 1.7680879730256605
	.quad	0x401bdf7999b7d642              # double 6.9682373064475218
	.quad	0x3fa626081721d300              # double 0.043258908103700477
	.quad	0x400d473adf76aca6              # double 3.6597802599040561
	.quad	0x40175032b8573491              # double 5.8283184817529596
	.quad	0x3ff91c939f6c6f52              # double 1.5694767215236038
	.quad	0x3ff5aec20a5334ba              # double 1.3551655200310919
	.quad	0x4021fd8a6ef9347d              # double 8.9951967887120592
	.quad	0x40079c9976ce8b20              # double 2.9514645845205365
	.quad	0x40140ccf62991361              # double 5.0125098615579597
	.quad	0x3ff4cea1bacc85eb              # double 1.30044720619514
	.quad	0x3ff72a71f5b39360              # double 1.4478625867570472
	.quad	0x4023c694a6548636              # double 9.8878528574160605
	.quad	0x3ff306d51dadf753              # double 1.1891680869443533
	.quad	0x40111c5422a5c562              # double 4.2776647008589368
	.quad	0x40152b5a37a9c042              # double 5.292336339698581
	.quad	0x3fc6692ee42cab90              # double 0.1750849355824724
	.quad	0x40223dfc9eeb35e7              # double 9.1210679685709248
	.quad	0x3fe894c6276aeeca              # double 0.76816089342852334
	.quad	0x401f46591842efeb              # double 7.8186992445807659
	.quad	0x4020ec145a5258b1              # double 8.4610927796860285
	.quad	0x4020f4116d6951ee              # double 8.4766954604210376
	.quad	0x4015793aea304810              # double 5.3683888046234784
	.quad	0x40166194247dbf8e              # double 5.5952916814566276
	.quad	0x4018daeb4f1c5af7              # double 6.2137882576996537
	.quad	0x40238c070bf70540              # double 9.7734912623442369
	.quad	0x4013ce35cac499f1              # double 4.951377075433343
	.quad	0x4022d64db1eebccd              # double 9.4185615161826721
	.quad	0x401ec933e2be5a40              # double 7.6964869908029527
	.quad	0x402153bc2137aa7a              # double 8.6635446911288803
	.quad	0x401ec40ec4906463              # double 7.6914625847940412
	.quad	0x3ff5d60d34ddd498              # double 1.3647586884592666
	.quad	0x401418cb64a797c4              # double 5.0242133834162281
	.quad	0x4023f7f773ccf5b2              # double 9.9843097865767483
	.quad	0x3fd5f8fd52ccb2e0              # double 0.34332211576365346
	.quad	0x4008b907846b3752              # double 3.0903463692874675
	.quad	0x40177f1be95f1897              # double 5.8741299118320489
	.quad	0x3f900fc6b95d4040              # double 0.015685181678520843
	.quad	0x3fff1a9c897039fb              # double 1.9439969414412406
	.quad	0x3fe1eda261d6d5aa              # double 0.56025809392183601
	.quad	0x401e63f01fca7b3d              # double 7.5975956885657156
	.quad	0x4020583cb503bcfd              # double 8.1723381583274151
	.quad	0x4019861eb862cd9c              # double 6.3809765634827293
	.quad	0x401cb9c1b5571db1              # double 7.1814030012532593
	.quad	0x4023aa6250061a43              # double 9.8327813155602878
	.quad	0x3ffe6854ed907b21              # double 1.9004716186388537
	.quad	0x401d80a0b5797512              # double 7.3756130557424218
	.quad	0x4006f5ea5a8e481e              # double 2.8700759005232745
	.quad	0x4023991f2a0145dd              # double 9.7990658880761944
	.quad	0x4022152f2efddee3              # double 9.0413756070042322
	.quad	0x3fcbb0daea3fee90              # double 0.21633469045615472
	.quad	0x3fd621ab11289490              # double 0.34580494571339049
	.quad	0x402111c36f31fd1e              # double 8.5346941708108339
	.quad	0x4011fc06d8ef2797              # double 4.4961198707550443
	.quad	0x401249b7b9a6358a              # double 4.5719899184890753
	.quad	0x40207869302d02ca              # double 8.2351775221772137
	.quad	0x40139070ac868353              # double 4.8910548169231616
	.quad	0x402150de7377ec41              # double 8.6579471668138712
	.quad	0x401101c47e244574              # double 4.2517261228216405
	.quad	0x3ff47cd8fbb886a1              # double 1.2804803688854138
	.quad	0x40201fd7d8d74fc2              # double 8.0621936571914183
	.quad	0x4005109783771bd2              # double 2.6331014891361315
	.quad	0x40084d93c24d9e5a              # double 3.0378794841706567
	.quad	0x401086ea7fc7b2fe              # double 4.1317539182316505
	.quad	0x401e622615ce5f21              # double 7.5958484084328867
	.quad	0x3ff8b1b079387540              # double 1.5433811888863858
	.quad	0x4011f09127a4e339              # double 4.484928721846523
	.quad	0x40171f775288e1f3              # double 5.7807286163374441
	.quad	0x4022979ae26f3343              # double 9.296103550028084
	.quad	0x4022b4797e5d349a              # double 9.3524894226814475
	.quad	0x401186c77f22a97a              # double 4.381620394220926
	.quad	0x401faa15fa66636c              # double 7.9160994648926639
	.quad	0x3ff1999ba1b94bd6              # double 1.1000019376121961
	.quad	0x4013579de83551f4              # double 4.8355633051437401
	.quad	0x3ff9ed7282aa163e              # double 1.620470533759899
	.quad	0x3fe5adb3312f70ae              # double 0.67745360952860323
	.quad	0x4009fcad2b40b7cd              # double 3.2483771685719831
	.quad	0x4001865641f032a0              # double 2.1905942107608354
	.quad	0x4021c0393e4e3997              # double 8.8754367323388532
	.quad	0x400022af44bc9b70              # double 2.0169358606394141
	.quad	0x3ffc660a60aa4631              # double 1.7749122405988482
	.quad	0x400e5f977823c1ce              # double 3.7966756235038934
	.quad	0x4012568450570876              # double 4.5844891121979483
	.quad	0x401b1827f810fff6              # double 6.7735899696708568
	.quad	0x3fe809e327e405e4              # double 0.75120694914965868
	.quad	0x40101c0b2086a82e              # double 4.0273861963451463
	.quad	0x401e79731d6f5ef8              # double 7.6186031913018652
	.quad	0x40097bd704de58dc              # double 3.1854687099795296
	.quad	0x400ee13f0a11ace4              # double 3.8599835192340937
	.size	.L__constant_10x10xf64, 800

	.type	.L__constant_50xindex,@object   # @__constant_50xindex
	.p2align	6, 0x0
.L__constant_50xindex:
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.size	.L__constant_50xindex, 400

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.size	.L__constant_11xindex, 88

	.type	.L__constant_50xf64,@object     # @__constant_50xf64
	.p2align	6, 0x0
.L__constant_50xf64:
	.quad	0x401615a038194c01              # double 5.5211189999999997
	.quad	0x401e42fc69728a61              # double 7.5654159999999999
	.quad	0x401dc81b21c475e6              # double 7.4454159999999998
	.quad	0x401f583f4eca686e              # double 7.8361789999999996
	.quad	0x401c3c8ffb8b2639              # double 7.0591429999999997
	.quad	0x3ff8a20ab7132724              # double 1.539561
	.quad	0x4023e19d883ba344              # double 9.9406549999999995
	.quad	0x3ffc06f36ef80560              # double 1.7516970000000001
	.quad	0x40196c86cebbba56              # double 6.3559830000000002
	.quad	0x401a293c03bc4d23              # double 6.5402680000000002
	.quad	0x3fe2cddf86e3b470              # double 0.58763100000000001
	.quad	0x40059eab367a0f91              # double 2.7024750000000002
	.quad	0x400befcac8e68e3f              # double 3.492086
	.quad	0x40187990f301eabc              # double 6.1187170000000002
	.quad	0x4001fa250f840182              # double 2.2471410000000001
	.quad	0x4011af3c2dadb835              # double 4.4211280000000004
	.quad	0x4003be996312f4cf              # double 2.4680659999999999
	.quad	0x3fea963dc486ad2e              # double 0.83084000000000002
	.quad	0x402024299d883ba3              # double 8.0706299999999995
	.quad	0x40127c4a4095f245              # double 4.6213769999999998
	.quad	0x40203cea4a8c154d              # double 8.1189750000000007
	.quad	0x4023c415097c8084              # double 9.8829729999999997
	.quad	0x3ff56bd6e8af8162              # double 1.3388279999999999
	.quad	0x3fda4046412cf0fa              # double 0.41017300000000001
	.quad	0x3ff12e5cd4ed2cbf              # double 1.0738190000000001
	.quad	0x40101d7e889c1b54              # double 4.0288029999999999
	.quad	0x401a96aec0724b77              # double 6.647151
	.quad	0x402355bad3a604e2              # double 9.6674410000000002
	.quad	0x3ff8d797cc39ffd6              # double 1.552635
	.quad	0x400bac636b096356              # double 3.459174
	.quad	0x4001841c3efae792              # double 2.1895069999999999
	.quad	0x4016c8826aa8eb46              # double 5.6958099999999998
	.quad	0x4008750e34762952              # double 3.057156
	.quad	0x3ff554ccab3edd8b              # double 1.3332029999999999
	.quad	0x401584fb1183b603              # double 5.3798640000000004
	.quad	0x40119d88c1db0143              # double 4.403842
	.quad	0x4019c3bcd35a8588              # double 6.4411500000000004
	.quad	0x3fe5893d96638434              # double 0.67300300000000002
	.quad	0x3fed8be5109070fc              # double 0.923327
	.quad	0x401c99ec2ce46499              # double 7.150315
	.quad	0x401903eea209aaa4              # double 6.2538400000000003
	.quad	0x400595c4a83b1d0d              # double 2.6981290000000002
	.quad	0x40063a5d28d002e2              # double 2.7784979999999999
	.quad	0x3ff964a38327674d              # double 1.58707
	.quad	0x4013deb52c9d16fd              # double 4.9674880000000003
	.quad	0x40141fcf80dc3372              # double 5.0310649999999999
	.quad	0x400b39fa11a975b0              # double 3.4033090000000001
	.quad	0x400c628aa433508f              # double 3.5481159999999998
	.quad	0x4006470f3882278d              # double 2.784697
	.quad	0x400db62e90364389              # double 3.713956
	.size	.L__constant_50xf64, 400

	.section	".note.GNU-stack","",@progbits
