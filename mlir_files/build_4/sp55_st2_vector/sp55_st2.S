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
	csrr	a5, vlenb
	li	t5, 10
	li	t6, 80
	slli	a3, a3, 32
	or	s3, a3, a1
	li	s9, 9
	vsetvli	a1, zero, e32, m2, ta, ma
	vid.v	v8
	slli	a2, a2, 32
	or	s2, a2, a4
	slli	ra, a5, 2
	srli	a2, a5, 1
	vsetvli	zero, zero, e64, m4, ta, ma
	vmv.v.i	v12, 0
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
	slli	a3, s3, 3
	add	a3, a3, a7
	lwu	a4, 4(a3)
	lwu	a3, 0(a3)
	slli	a4, a4, 32
	or	a3, a3, a4
	mul	s5, s3, t5
	mul	s6, a3, t6
	j	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=2
	addi	s8, s8, 1
	addi	s7, s7, 80
.LBB0_5:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_8 Depth 3
	blt	s9, s8, .LBB0_1
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=2
	li	s0, 0
	add	a3, s8, s5
	slli	a3, a3, 3
	add	a3, a3, s4
	fld	fa5, 0(a3)
	li	a4, 10
	mv	a1, s7
	mv	a5, s6
	j	.LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=3
	vsetvli	zero, zero, e32, m2, ta, ma
	vmslt.vx	v0, v8, a3
	add	a3, s11, a5
	vmv4r.v	v16, v12
	add	s1, s10, a1
	vmv4r.v	v20, v12
	vsetvli	zero, zero, e64, m4, ta, mu
	vle64.v	v16, (a3), v0.t
	vle64.v	v20, (s1), v0.t
	add	s0, s0, a2
	add	a5, a5, ra
	add	a1, a1, ra
	vfmul.vf	v20, v20, fa5
	vfadd.vv	v16, v16, v20
	vse64.v	v16, (a3), v0.t
	sub	a4, a4, a2
.LBB0_8:                                #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	blt	s9, s0, .LBB0_4
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=3
	mv	a3, a4
	blt	a4, a2, .LBB0_7
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=3
	mv	a3, a2
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
	.type	.L__constant_10x10xf64,@object  # @__constant_10x10xf64
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
.L__constant_10x10xf64:
	.quad	0x40154bc7d2a72f4e              # double 5.3240044512311453
	.quad	0x3fe720ee187b451a              # double 0.7227697828440427
	.quad	0x4012bec44e276a61              # double 4.6862957202489222
	.quad	0x400acf0a9fc70d51              # double 3.3510944826718192
	.quad	0x40171a8272b03394              # double 5.7758882446331832
	.quad	0x401382a64390a562              # double 4.8775873715434006
	.quad	0x400329afda7a53fc              # double 2.3953549450475276
	.quad	0x401383708e599ade              # double 4.8783590547743341
	.quad	0x40167133a307523a              # double 5.6105485413759713
	.quad	0x3fbfc8bb4b3a9a00              # double 0.12415667139666908
	.quad	0x40207292b710fe2e              # double 8.2237755974047921
	.quad	0x40225ab02f173469              # double 9.177125426848038
	.quad	0x4016aa620776b1e6              # double 5.666389576549113
	.quad	0x40204de146ba24b6              # double 8.1521093466020425
	.quad	0x402234afceea2067              # double 9.1029038105773008
	.quad	0x40197cc1632c5f8e              # double 6.3718314643700875
	.quad	0x400fc96b17d49052              # double 3.973348795103484
	.quad	0x401732ca51afa81b              # double 5.7995999110662764
	.quad	0x400c1cdf8f78e59c              # double 3.5140982826967058
	.quad	0x3ff97962c446f082              # double 1.5921352068972117
	.quad	0x3fe8dcc7a0f30f0e              # double 0.77695065913619188
	.quad	0x40231aa39a542a9c              # double 9.5520294406645049
	.quad	0x3ff21f3527c46741              # double 1.1326190522581359
	.quad	0x3fcf67148f38b880              # double 0.24533326142540446
	.quad	0x4015c23d7765702c              # double 5.4396876006758639
	.quad	0x401c40cbdfdeac58              # double 7.0632777194651553
	.quad	0x40161058e50cf369              # double 5.5159641064791254
	.quad	0x40168bc103860139              # double 5.6364784765758538
	.quad	0x401870e2e4a709cd              # double 6.1102405287696913
	.quad	0x401b749d0608ffa8              # double 6.8638802474014611
	.quad	0x4018d7c0f8291332              # double 6.2106970572538547
	.quad	0x3ff4cae6da04689d              # double 1.2995365635202127
	.quad	0x40159ebbaad3a1c4              # double 5.4050127689046725
	.quad	0x4022fa3a882ad439              # double 9.4887278129846084
	.quad	0x40221fd720d1f68a              # double 9.0621881729414504
	.quad	0x4022211dc45a1e39              # double 9.0646802291877169
	.quad	0x4013ad3d60b3ecdc              # double 4.9191794500177046
	.quad	0x401124807ab64da4              # double 4.2856463598031134
	.quad	0x401185bbdee6d19e              # double 4.3805994823818803
	.quad	0x3ff1f968bdfc5653              # double 1.1233909055057623
	.quad	0x4000aac60b03ae0a              # double 2.0833855495927809
	.quad	0x402152a81f2b95a3              # double 8.6614389172271498
	.quad	0x4008088c77abf5df              # double 3.0041741704323921
	.quad	0x3ffc3d5d3268e5d7              # double 1.7649814576274048
	.quad	0x3ffbe0e7e78aefb4              # double 1.7424086613309386
	.quad	0x4022728bd4483fd0              # double 9.2237230623431117
	.quad	0x40222bdc46fd550f              # double 9.0856649574511987
	.quad	0x40211ee44facf131              # double 8.5603356264697101
	.quad	0x401de526bf74e0b6              # double 7.4737806239210638
	.quad	0x40229e1a4850245d              # double 9.3087942693547863
	.quad	0x400375bb9ee78b04              # double 2.4324867643748593
	.quad	0x3ff0ba5f4176e42a              # double 1.0455009991840236
	.quad	0x401748fb09f1ffd1              # double 5.8212701372103348
	.quad	0x4022818d4ad5a4a8              # double 9.2530310998721034
	.quad	0x4014bd6e18a44d57              # double 5.1849902963907288
	.quad	0x4016779eca04bcab              # double 5.6168166699782587
	.quad	0x4023dec467d84112              # double 9.935092206142631
	.quad	0x3ffcae35b6a862e8              # double 1.7925316939419478
	.quad	0x401fdc73386fa864              # double 7.9652832811499117
	.quad	0x4019afce8b88448d              # double 6.4216863443299532
	.quad	0x3fd53229fbf2d778              # double 0.33118676761966226
	.quad	0x40215cb78f1a1a5d              # double 8.6810879439701072
	.quad	0x401f8f63b96ee01b              # double 7.8900288556979161
	.quad	0x3fe3845174fe709c              # double 0.60990212297794555
	.quad	0x40058f038dc236a6              # double 2.6948309969801185
	.quad	0x4013d872afc447d6              # double 4.9613749946165253
	.quad	0x4014c1557bcee7a8              # double 5.1888026566538556
	.quad	0x40069f704646c866              # double 2.8278508653975676
	.quad	0x4023bcefc877f028              # double 9.86901689972008
	.quad	0x401110a6f796c283              # double 4.2662619291082846
	.quad	0x3ff13eba8f62f5a9              # double 1.0778146363294161
	.quad	0x3ffbfd12fbc54cc1              # double 1.7492856821816505
	.quad	0x4007b1beaca2e82c              # double 2.9617894637313125
	.quad	0x4021d906682f2481              # double 8.923877006296836
	.quad	0x40192ed29571aab5              # double 6.2957251883150791
	.quad	0x40128adf0b18d2a6              # double 4.6356164678478873
	.quad	0x40164e65573fff4b              # double 5.5765584595499815
	.quad	0x4018d48460e96873              # double 6.2075362341366711
	.quad	0x401d482f28c8b908              # double 7.3204923985015355
	.quad	0x401b3edb13ba6465              # double 6.8113825876726866
	.quad	0x40218b7f44e3d4ef              # double 8.7724553611865002
	.quad	0x40137664e7426912              # double 4.8656192907603941
	.quad	0x3fd8564ebee693dc              # double 0.38026779787679543
	.quad	0x4007ef20dd935fb4              # double 2.9917619047737052
	.quad	0x40216fd93ced9cba              # double 8.7184542694143268
	.quad	0x4021403d908a076e              # double 8.6254697006695231
	.quad	0x3fdaefe447f83b54              # double 0.4208918288067498
	.quad	0x4021dfc0f447d926              # double 8.9370189988808981
	.quad	0x40211defa76fdc74              # double 8.5584690403031586
	.quad	0x4017e306b92093d0              # double 5.9717053342946684
	.quad	0x401d7c35e29ee8cc              # double 7.3712993058672502
	.quad	0x3ff2cd250c09df74              # double 1.1750841589218597
	.quad	0x4018c8a887d8bf6f              # double 6.1959553934137679
	.quad	0x3fd010eb37bc4ee8              # double 0.25103264277389181
	.quad	0x4017e53e1df2330d              # double 5.9738697699620049
	.quad	0x3ff498800f37349e              # double 1.2872315019952008
	.quad	0x402034c0edda0188              # double 8.1030344322796424
	.quad	0x4011bcaf7e36758c              # double 4.4342632027377356
	.quad	0x401ebb42a981548b              # double 7.6828714833437841
	.quad	0x3fd05c9621fd8ecc              # double 0.2556510288179481
	.size	.L__constant_10x10xf64, 800

	.type	.L__constant_45xindex,@object   # @__constant_45xindex
	.p2align	6, 0x0
.L__constant_45xindex:
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.size	.L__constant_45xindex, 360

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.size	.L__constant_11xindex, 88

	.type	.L__constant_45xf64,@object     # @__constant_45xf64
	.p2align	6, 0x0
.L__constant_45xf64:
	.quad	0x40051532617c1bda              # double 2.6353499999999999
	.quad	0x3fde8476f2a5a46a              # double 0.47683500000000001
	.quad	0x4022b0aa64c2f838              # double 9.3450500000000005
	.quad	0x401d1392e1ef73c1              # double 7.2691150000000002
	.quad	0x400177e4de3b8a1a              # double 2.1835420000000001
	.quad	0x40194974a3400b89              # double 6.3217340000000002
	.quad	0x4005bdbca9691a76              # double 2.7176450000000001
	.quad	0x401bc3b60285ec3e              # double 6.9411240000000003
	.quad	0x40146b10ba6266fd              # double 5.1045559999999996
	.quad	0x40202ab5e529bae4              # double 8.0834189999999992
	.quad	0x4020928027d88c1e              # double 8.2861340000000006
	.quad	0x4002dc51dabe2718              # double 2.3575780000000002
	.quad	0x400100d801b43526              # double 2.1254119999999999
	.quad	0x402334e54f7a9197              # double 9.6033120000000007
	.quad	0x400389068986fcdf              # double 2.441907
	.quad	0x40226f1561911490              # double 9.2169600000000003
	.quad	0x4012cb9ae0c17657              # double 4.6988329999999996
	.quad	0x3fd10c77dd872f34              # double 0.26638600000000001
	.quad	0x4022fe7903211cb0              # double 9.4970169999999996
	.quad	0x3fb3e28240b78034              # double 0.077674999999999994
	.quad	0x400a252ce032db1f              # double 3.2681520000000002
	.quad	0x400560346dc5d639              # double 2.6719750000000002
	.quad	0x401cf4e4430b178b              # double 7.2391519999999998
	.quad	0x40100c15097c8084              # double 4.0117989999999999
	.quad	0x4013fc9ea9a3d2d8              # double 4.9966989999999996
	.quad	0x401e72f09d8c6d61              # double 7.6122459999999998
	.quad	0x40110b9884c6a3be              # double 4.2613240000000001
	.quad	0x40083f0b28522ea1              # double 3.030783
	.quad	0x3fc65e4606748e47              # double 0.17475199999999999
	.quad	0x401e421a719b4dcf              # double 7.5645540000000002
	.quad	0x3ffa9bc44bf4cb19              # double 1.6630290000000001
	.quad	0x4013e38da3c21188              # double 4.9722200000000001
	.quad	0x40191236c15d2d02              # double 6.2677870000000002
	.quad	0x40205b2d0a244630              # double 8.1780779999999993
	.quad	0x402367ab10ba6267              # double 9.702477
	.quad	0x40191963992c8c50              # double 6.274794
	.quad	0x400deccff21b3aef              # double 3.740631
	.quad	0x4018d2ccb3a2595c              # double 6.2058590000000002
	.quad	0x4003570f7b9e0610              # double 2.41751
	.quad	0x40093d92b7fe08af              # double 3.155065
	.quad	0x4008c1049235f80a              # double 3.0942470000000002
	.quad	0x4006e0ccff21b3af              # double 2.859766
	.quad	0x4013321d53cddd6e              # double 4.79894
	.quad	0x3fe6610f0e90bc7b              # double 0.69934799999999997
	.quad	0x400a47f90d9d7775              # double 3.2851430000000001
	.size	.L__constant_45xf64, 360

	.section	".note.GNU-stack","",@progbits
