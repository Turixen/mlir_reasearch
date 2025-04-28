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
	.quad	9                               # 0x9
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
	lui	a6, %hi(.L__constant_9xindex)
	addi	a6, a6, %lo(.L__constant_9xindex)
	lui	a7, %hi(.L__constant_9xf64)
	addi	a7, a7, %lo(.L__constant_9xf64)
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
	lui	a1, 40977
	addi	a1, a1, -1792
	vse64.v	v8, (a3)
	vmv.s.x	v8, a1
	vsext.vf8	v10, v8
	vse64.v	v10, (a0)
	ret
.Lfunc_end2:
	.size	assemble_sparse, .Lfunc_end2-assemble_sparse
	.cfi_endproc
                                        # -- End function
	.type	.L__constant_9xindex,@object    # @__constant_9xindex
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
.L__constant_9xindex:
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.size	.L__constant_9xindex, 72

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	3                               # 0x3
	.quad	3                               # 0x3
	.quad	3                               # 0x3
	.quad	3                               # 0x3
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	6                               # 0x6
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.size	.L__constant_11xindex, 88

	.type	.L__constant_9xf64,@object      # @__constant_9xf64
	.p2align	6, 0x0
.L__constant_9xf64:
	.quad	0x3fdf53ef6b5d462c              # double 0.48949799999999999
	.quad	0x4022f0f14db59579              # double 9.4705910000000006
	.quad	0x401e746f587d6f97              # double 7.6137059999999996
	.quad	0x402035072085b185              # double 8.1035699999999995
	.quad	0x40155202539756c9              # double 5.3300869999999998
	.quad	0x40229997a24894c4              # double 9.2999849999999995
	.quad	0x40171533f42352eb              # double 5.7707059999999997
	.quad	0x3fe012556d19dece              # double 0.50223799999999996
	.quad	0x3fff71e9f2778141              # double 1.965311
	.size	.L__constant_9xf64, 72

	.type	.L__constant_10x10xf64,@object  # @__constant_10x10xf64
	.p2align	6, 0x0
.L__constant_10x10xf64:
	.quad	0x3fe1bc118378041c              # double 0.55420756986143571
	.quad	0x401e582ca5dde372              # double 7.5861078182868926
	.quad	0x400744e32e6b27a5              # double 2.9086364389849728
	.quad	0x4005976f231b02e9              # double 2.6989424460046973
	.quad	0x3feb851d33a80a5c              # double 0.85999927605764581
	.quad	0x4012ffdad73138d5              # double 4.7498582481186604
	.quad	0x402092ee795c9dea              # double 8.286975662761467
	.quad	0x3ff17b017984f894              # double 1.0925307032444254
	.quad	0x401a2ab056c4c542              # double 6.5416883046721654
	.quad	0x400e9d34bc14ae9a              # double 3.826760739689985
	.quad	0x3fe82d39bcaf89ea              # double 0.75552069523501797
	.quad	0x3fd0851b57ccc09c              # double 0.25812419485283455
	.quad	0x4000c6a7f3fbe600              # double 2.0970000325439742
	.quad	0x40222e2b147b4944              # double 9.0901724243636934
	.quad	0x4016e1a91cf79068              # double 5.7203716779805305
	.quad	0x401dd45513a62df8              # double 7.4573557920625646
	.quad	0x4019c2024eb16dd0              # double 6.4394619270128288
	.quad	0x40062a05eb910e70              # double 2.7705191043513011
	.quad	0x4020678055190151              # double 8.2021509736083846
	.quad	0x401102f873ce8447              # double 4.2529008955762668
	.quad	0x3fc830228c946500              # double 0.18896896232835303
	.quad	0x401ea29b7abbc6bf              # double 7.6587962319478597
	.quad	0x40204fe8009d0ea2              # double 8.1560669128151098
	.quad	0x3ff3ed6ec9851928              # double 1.2454669830199894
	.quad	0x4016f89b4898bd9e              # double 5.7427798598504562
	.quad	0x402046f4c63b4285              # double 8.1385862300242113
	.quad	0x400a097bdfe27baf              # double 3.2546308032028359
	.quad	0x401854e2933cf674              # double 6.0828955656012234
	.quad	0x4017183e23bb08f2              # double 5.7736745436579771
	.quad	0x3ff51e7c40f5d61b              # double 1.3199427163612032
	.quad	0x3ffa222c5bcbd7a2              # double 1.6333430848876351
	.quad	0x40054d7d1027cd34              # double 2.6628361951967694
	.quad	0x402194b61c691e37              # double 8.7904518965070633
	.quad	0x3ffc7db94b965034              # double 1.7806942894576538
	.quad	0x3fef02a98dbfaba0              # double 0.96907499013228814
	.quad	0x4010f6e76fbdfdc3              # double 4.2411172351561985
	.quad	0x4005d63dfe2019e4              # double 2.7296104291483392
	.quad	0x400038447559aa90              # double 2.0274743240345927
	.quad	0x4013eeb464e8a4e6              # double 4.9831100241656028
	.quad	0x40199321c6f3bd4e              # double 6.3936835371271865
	.quad	0x3fe8746e64625020              # double 0.7642127953172384
	.quad	0x4023da7b4f909885              # double 9.9267220367439765
	.quad	0x401badc6ee8e0e49              # double 6.9197041773036938
	.quad	0x3ff9d824d0c05382              # double 1.6152694849344873
	.quad	0x401d44cfa0066460              # double 7.317198276891844
	.quad	0x4021551dc68e97c8              # double 8.6662427949012368
	.quad	0x4012a41f9639ed96              # double 4.6602767441612709
	.quad	0x400a730a27cb5b30              # double 3.3061717137274158
	.quad	0x4015790d356cbdc7              # double 5.3682144496555741
	.quad	0x402154674f250bcc              # double 8.6648506863329188
	.quad	0x4015d5c22bbc52a6              # double 5.4587485154812949
	.quad	0x400b603b5cb44f22              # double 3.4219882242704367
	.quad	0x4000c117be244238              # double 2.0942835669341342
	.quad	0x40232c0c239b2f93              # double 9.5860301138816677
	.quad	0x3ffdb00766e413a4              # double 1.8554758090187784
	.quad	0x4009bb6d783431ba              # double 3.2165173903397006
	.quad	0x401a43b5faf7c3d6              # double 6.5661238874171968
	.quad	0x4004dd9054049eec              # double 2.6081854404363778
	.quad	0x3ff67b618d0cd165              # double 1.4051223287361492
	.quad	0x401d6c8453150097              # double 7.3559735280579366
	.quad	0x401c96e52b727a7a              # double 7.1473585880872808
	.quad	0x401d12a4dba18eb7              # double 7.268207008109747
	.quad	0x40125956d6f6c3ed              # double 4.5872453296769722
	.quad	0x40084ffbfb79657e              # double 3.0390548368856676
	.quad	0x40029a74fed509ee              # double 2.3254184635891226
	.quad	0x40224bc53e22ff19              # double 9.1479892175407702
	.quad	0x3ffc562ee66a839e              # double 1.7710408211353079
	.quad	0x40209acee2152709              # double 8.30235964306077
	.quad	0x401e2375b1cb6aad              # double 7.5346286564260198
	.quad	0x3fa60af44507d280              # double 0.043052323748189458
	.quad	0x3fe2c5a37e0eaaa2              # double 0.586625810819289
	.quad	0x401ec5cc355de512              # double 7.6931618059691278
	.quad	0x4011ca20768f072e              # double 4.4473894619748489
	.quad	0x401105ac10fc4bf3              # double 4.255539193533866
	.quad	0x401eea6ad92b5dea              # double 7.7289232189864183
	.quad	0x4019b9b2e6bffe9e              # double 6.4313465170559123
	.quad	0x4018ff50192006fd              # double 6.2493289876745139
	.quad	0x4023b5f32ab6c9ad              # double 9.8553708408479341
	.quad	0x401f4bcb3c9a5d71              # double 7.8240174740998194
	.quad	0x401e4867840ba11c              # double 7.5707073814485533
	.quad	0x402037ef79070b7e              # double 8.109248907194111
	.quad	0x40055a6c49f19a58              # double 2.6691518570762973
	.quad	0x4012c85875e63874              # double 4.6956499501958326
	.quad	0x401c97ee073af704              # double 7.1483689431895563
	.quad	0x401b4a793d0dae58              # double 6.8227281131363142
	.quad	0x400dbd3b945ea0cc              # double 3.7173987952593048
	.quad	0x40104e779c52b62f              # double 4.0766281533702076
	.quad	0x3ff6463e4a26bbf2              # double 1.3921492477927555
	.quad	0x4005acc6d881b948              # double 2.709363643130164
	.quad	0x40217863cf9293a2              # double 8.7351364962031006
	.quad	0x3fc3627635df14e0              # double 0.15144231443824818
	.quad	0x4010287d1f9eff8b              # double 4.0395398083491143
	.quad	0x4002840aadd9f56e              # double 2.3144734937802047
	.quad	0x3fc76a0879863af0              # double 0.18292337354474553
	.quad	0x3fe359ceb421e806              # double 0.60471282178991781
	.quad	0x400f90f2e1484400              # double 3.9457757568529814
	.quad	0x40134676131ded06              # double 4.8188097941413215
	.quad	0x401189e7216e5af1              # double 4.3846707557301992
	.quad	0x4021fcbbd7dafd1a              # double 8.9936206297702945
	.quad	0x400bbb456a6192b7              # double 3.4664409934069584
	.size	.L__constant_10x10xf64, 800

	.section	".note.GNU-stack","",@progbits
