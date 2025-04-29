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
	.quad	30                              # 0x1e
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
	lui	a6, %hi(.L__constant_30xindex)
	addi	a6, a6, %lo(.L__constant_30xindex)
	lui	a7, %hi(.L__constant_30xf64)
	addi	a7, a7, %lo(.L__constant_30xf64)
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
	lui	a1, 40978
	addi	a1, a1, -512
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
	.quad	0x40210dbdecd7fc5c              # double 8.5268396390585436
	.quad	0x4019d83439e533f6              # double 6.4611367269653694
	.quad	0x40131e1e7145a0da              # double 4.7794130038020857
	.quad	0x4004a9c244d50710              # double 2.582890069724165
	.quad	0x402358c5b8e8887e              # double 9.6733835014203997
	.quad	0x3fd640ee4999c710              # double 0.34771306216781372
	.quad	0x4022ee144fe5d08f              # double 9.4649987190280437
	.quad	0x401a75aacddfa618              # double 6.6149093787912747
	.quad	0x4012842de881f706              # double 4.629081376011305
	.quad	0x3fef3c85b0356902              # double 0.97613796630619754
	.quad	0x3fe7a4848e14d8f8              # double 0.73883273840217978
	.quad	0x3fdcbc90bc324238              # double 0.44900911692187462
	.quad	0x3ffb3a77fc694c94              # double 1.7017745837991116
	.quad	0x401d3185be9418d0              # double 7.2983617570773305
	.quad	0x400e897da49f17a7              # double 3.8171341763545175
	.quad	0x40116e6f18fc0e8a              # double 4.3578456786959894
	.quad	0x4000faeede9f4551              # double 2.1225259201388913
	.quad	0x3fd672bfcf834d58              # double 0.35075373902255569
	.quad	0x4007efc244530373              # double 2.9920697534402563
	.quad	0x3ff94b97c8dbebc3              # double 1.580955299955108
	.quad	0x40031feeb64ca8e7              # double 2.3905920259613711
	.quad	0x4010e76bc45dd7ad              # double 4.2259970361973673
	.quad	0x3ffb46643a98f436              # double 1.7046854294742508
	.quad	0x4022e090efb6e415              # double 9.4386057768588589
	.quad	0x400ff09fab82db05              # double 3.9924920462902969
	.quad	0x40150f9c3f215442              # double 5.2652444709866035
	.quad	0x40219412b6462e16              # double 8.789205261294267
	.quad	0x4010fc0a6484a4d6              # double 4.2461333948096662
	.quad	0x400aa33c1d712e1e              # double 3.3297045040287818
	.quad	0x4023c68b3e3d1dff              # double 9.887781090698807
	.quad	0x3ff43b4f73135e4f              # double 1.2644800658362276
	.quad	0x4020d159e02dd410              # double 8.4088888221686204
	.quad	0x3ff33e5346e80bd5              # double 1.2027161378652995
	.quad	0x401699c6afb4b51e              # double 5.6501719907803629
	.quad	0x4013b6d4c8e3e703              # double 4.9285460843182163
	.quad	0x402027759e96e6f2              # double 8.0770692404944135
	.quad	0x401fda7eb330f5d5              # double 7.9633739470131859
	.quad	0x40228c457ece7b37              # double 9.273967707352865
	.quad	0x40106810fb483f80              # double 4.1016272795530995
	.quad	0x40109eebbb795719              # double 4.1551961224374958
	.quad	0x3ff576246a1b40f8              # double 1.341343321302757
	.quad	0x401f18b1c67e3c30              # double 7.7741156591937823
	.quad	0x400ed90abeb8c23c              # double 3.8559775257238282
	.quad	0x4001b5b03eaf0eb9              # double 2.2137150666402161
	.quad	0x3fe4776e74755b2a              # double 0.63957903619561773
	.quad	0x40182413c87db46e              # double 6.0352317167972682
	.quad	0x400e0233fada86c3              # double 3.7510757062853783
	.quad	0x3ff678f673e13d65              # double 1.4045319105678911
	.quad	0x401661cf9fb280f5              # double 5.5955185845088993
	.quad	0x40067d0ee910bb3a              # double 2.8110635956030849
	.quad	0x40221d73ecfabe08              # double 9.0575250679094239
	.quad	0x401b5b59e902d2c2              # double 6.8392101676915349
	.quad	0x4017e99ad972ce76              # double 5.9781297661135024
	.quad	0x3ffba079946a6a4d              # double 1.7266784474837948
	.quad	0x402243e06be82bcc              # double 9.1325715752517666
	.quad	0x4002e32e12203a8a              # double 2.3609277168355378
	.quad	0x40223b35e8782f5f              # double 9.1156456610403307
	.quad	0x400b932c35879f08              # double 3.4468616659177123
	.quad	0x401509e9d1c659f0              # double 5.2596810128511464
	.quad	0x4020de848c570a8e              # double 8.434605012536192
	.quad	0x3fe1554869d58258              # double 0.54166050596911486
	.quad	0x3ff9d79c68734d9e              # double 1.6151393966764327
	.quad	0x401ca327dd316b00              # double 7.1593317567264876
	.quad	0x400ca5b1ef7790ba              # double 3.5809057911265798
	.quad	0x400c2f857b09ed5a              # double 3.5232038128284957
	.quad	0x401a626f92a7a4a8              # double 6.5961287417241365
	.quad	0x400be375c771bf29              # double 3.4860644895160431
	.quad	0x40076bcef25b1889              # double 2.9276408132601017
	.quad	0x4015c2f4da2ac0b8              # double 5.4403871620744937
	.quad	0x40087139918809f1              # double 3.055285584415508
	.quad	0x40225e52fcd7262a              # double 9.1842268955834534
	.quad	0x40112d425fea5190              # double 4.2941985117689825
	.quad	0x4013672a3b025ec0              # double 4.8507470340916257
	.quad	0x40233774a3ad1fc1              # double 9.6083117626984648
	.quad	0x3fd6e61851ed31c0              # double 0.35779388428343495
	.quad	0x3ff7240dba7c26dc              # double 1.4463021549767552
	.quad	0x3fed7e08a846b6ac              # double 0.92163498751115957
	.quad	0x4016cce07917b778              # double 5.7000750466084966
	.quad	0x400bd95397c20e56              # double 3.4811164718719665
	.quad	0x400604bb02685ebb              # double 2.7523098171330651
	.quad	0x401ba121c6ac0e47              # double 6.907355407954646
	.quad	0x4021bc8adbe1c7ad              # double 8.8682469094381648
	.quad	0x401221ae67982d7a              # double 4.5328918635017263
	.quad	0x40208991e30c56c4              # double 8.2686911537706535
	.quad	0x4014e5f7a20979ba              # double 5.2245774572642691
	.quad	0x4014bb5a32a81d64              # double 5.1829612650975356
	.quad	0x4018a81eb8bc023e              # double 6.1641796936751785
	.quad	0x40172c8238d96919              # double 5.793465507764517
	.quad	0x3fe7e24697e506c8              # double 0.74637155215187878
	.quad	0x40228a08edbd9320              # double 9.2695993703760564
	.quad	0x400967685b4cfae4              # double 3.1754920132510609
	.quad	0x4023551c77ae179e              # double 9.666232814790245
	.quad	0x3fa223da470f8280              # double 0.035429783987415142
	.quad	0x3ffbf8e95d7bf0ab              # double 1.7482694293712864
	.quad	0x4005376680191e4c              # double 2.6520509727159034
	.quad	0x4020d5e15122895f              # double 8.4177346567782347
	.quad	0x3fc730c04896e010              # double 0.18117526573564691
	.quad	0x3ff5416b5f0ac27b              # double 1.3284715378360079
	.quad	0x3fc37865c44a72b0              # double 0.15211174091827706
	.quad	0x3ff0c513f3a94ad4              # double 1.0481147306460814
	.size	.L__constant_10x10xf64, 800

	.type	.L__constant_30xindex,@object   # @__constant_30xindex
	.p2align	6, 0x0
.L__constant_30xindex:
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	6                               # 0x6
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.size	.L__constant_30xindex, 240

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.size	.L__constant_11xindex, 88

	.type	.L__constant_30xf64,@object     # @__constant_30xf64
	.p2align	6, 0x0
.L__constant_30xf64:
	.quad	0x4022c6f3d3a1d324              # double 9.388579
	.quad	0x40171eebb341e14c              # double 5.7801960000000001
	.quad	0x401e9b96f21f6cad              # double 7.6519430000000001
	.quad	0x3fd6819d2391d580              # double 0.351661
	.quad	0x401838183f91e647              # double 6.0547800000000001
	.quad	0x4011c44523f67f4e              # double 4.4416700000000002
	.quad	0x4015e3b256ffc116              # double 5.4723600000000001
	.quad	0x400b35db3397dd01              # double 3.401297
	.quad	0x4023ed18b0d0edc4              # double 9.9630790000000004
	.quad	0x400076d0917d6b66              # double 2.0580150000000001
	.quad	0x3fff745f17bd8be7              # double 1.965911
	.quad	0x4003c535c9e6687f              # double 2.4712939999999999
	.quad	0x4017df262888b546              # double 5.9679190000000002
	.quad	0x4001fd15f02c4d66              # double 2.248577
	.quad	0x4015044178705426              # double 5.254156
	.quad	0x4022d92b3cc4ac6d              # double 9.4241580000000002
	.quad	0x401f28c7e28240b8              # double 7.7898250000000004
	.quad	0x4003377af640639d              # double 2.4020899999999998
	.quad	0x40101eacc92146a2              # double 4.0299560000000003
	.quad	0x3ffbfacc4ef88b97              # double 1.7487299999999999
	.quad	0x40191c3bd5992429              # double 6.2775720000000002
	.quad	0x401736ee30caa327              # double 5.8036430000000001
	.quad	0x4023234efcbd5561              # double 9.5689620000000008
	.quad	0x40053487fcb923a3              # double 2.6506500000000002
	.quad	0x401e8e45c358afc4              # double 7.6389379999999996
	.quad	0x4014d1db0142f61f              # double 5.2049370000000001
	.quad	0x4011b0b135979182              # double 4.4225510000000003
	.quad	0x40147d07852f7f4a              # double 5.1220990000000004
	.quad	0x40219cbaf965b20c              # double 8.8061140000000008
	.quad	0x400281ec4e7253da              # double 2.3134389999999998
	.size	.L__constant_30xf64, 240

	.section	".note.GNU-stack","",@progbits
