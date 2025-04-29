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
	.quad	5                               # 0x5
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
	lui	a6, %hi(.L__constant_5xindex)
	addi	a6, a6, %lo(.L__constant_5xindex)
	lui	a7, %hi(.L__constant_5xf64)
	addi	a7, a7, %lo(.L__constant_5xf64)
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
	lui	a1, 40976
	addi	a1, a1, 1280
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
	.quad	0x3fbf1c11da8c6780              # double 0.12152206025748846
	.quad	0x401a35c3a2904569              # double 6.5525041008525955
	.quad	0x401da260b76de074              # double 7.4085720692456682
	.quad	0x400b62a2c398b106              # double 3.4231620102856395
	.quad	0x3fd95d380e3d6cd0              # double 0.39631463423365876
	.quad	0x401c59e9ad0b1d32              # double 7.0878054655106997
	.quad	0x402283b3f491f376              # double 9.2572323253786912
	.quad	0x400bc7c5bdb85556              # double 3.4725451299552033
	.quad	0x4016ea87b03fba4c              # double 5.7290332354446711
	.quad	0x3ff2997252edcc7f              # double 1.162462543431303
	.quad	0x3fec101d41dd12f8              # double 0.87696707595804835
	.quad	0x401a43e8a1c507f8              # double 6.5663171078212983
	.quad	0x401dfccadb761204              # double 7.496867589074558
	.quad	0x40186da93f3f62ef              # double 6.1070909388006234
	.quad	0x40232392f79aee95              # double 9.5694806458116463
	.quad	0x4019944503783cf0              # double 6.3947945158135866
	.quad	0x3ffe1021f219ff36              # double 1.8789386231509986
	.quad	0x402221220321ef6b              # double 9.06471261777161
	.quad	0x4017f903a9f4fb0f              # double 5.993178039147792
	.quad	0x3feed14cc67e8b84              # double 0.96304930466099891
	.quad	0x4014812e77e1fdd2              # double 5.1261538249668366
	.quad	0x401ec87992abb8a0              # double 7.6957762639341638
	.quad	0x3ffbcb32e07c9e0e              # double 1.737109066869269
	.quad	0x4015ae09c7436095              # double 5.4199591765283417
	.quad	0x40094373c7e07bcf              # double 3.1579356780416457
	.quad	0x4018a1bf0605a56d              # double 6.1579552594133533
	.quad	0x4023a9cc1a675971              # double 9.8316353083762084
	.quad	0x4006e8e97598ef73              # double 2.8637265384003796
	.quad	0x40136b26ef29130e              # double 4.8546407097644657
	.quad	0x40213086dc3e2e78              # double 8.5947789026169943
	.quad	0x400f836ad0e16873              # double 3.9391685789860786
	.quad	0x400d1db49255f9c5              # double 3.6395045692908945
	.quad	0x3fdd530dec12680c              # double 0.45819423726936814
	.quad	0x4010aef69b0c2bb2              # double 4.1708626009157559
	.quad	0x401d5c4492988f28              # double 7.3401053338637112
	.quad	0x4012777aa4977f81              # double 4.6166787831751899
	.quad	0x401b25cf6e9012c1              # double 6.786924102347883
	.quad	0x4005abbda1e27947              # double 2.708857788776331
	.quad	0x4006999fc39a3c07              # double 2.8250117570346478
	.quad	0x3fdb5f5c90c805ac              # double 0.42769540919115445
	.quad	0x40137941daebb777              # double 4.8684152799959213
	.quad	0x40110d365d313b8a              # double 4.2629026948260478
	.quad	0x40204da922dd07cb              # double 8.1516810316860724
	.quad	0x401ecd8dbcb513c9              # double 7.7007359967728428
	.quad	0x401e751d96d7225a              # double 7.6143706864173399
	.quad	0x401d2eea5d71ac93              # double 7.2958159065848518
	.quad	0x4020e285de1a0b18              # double 8.4424275786200695
	.quad	0x3fd4fc7203cb1a34              # double 0.32790804262586737
	.quad	0x402306a8a94ad152              # double 9.5130055335836552
	.quad	0x40204f5d7d482e41              # double 8.1550101423846417
	.quad	0x401aedadd11a285d              # double 6.7321083709922194
	.quad	0x401cc99526620718              # double 7.1968580243426672
	.quad	0x3fff4b81dc518461              # double 1.9559343916119121
	.quad	0x4019515b7fffde59              # double 6.329450607292153
	.quad	0x4020385f26c7209e              # double 8.1101009481502011
	.quad	0x40094f6cebcb3bee              # double 3.1637819692036748
	.quad	0x4004ed9a7f8b226a              # double 2.6160173382125338
	.quad	0x400a5be78e62ca78              # double 3.2948752521418179
	.quad	0x4023ecbd59da6af4              # double 9.9623821334002755
	.quad	0x4023f7ec5e383d7c              # double 9.9842252200748973
	.quad	0x40174cd33f2d6a38              # double 5.8250245925396982
	.quad	0x40102b9ac6214d91              # double 4.042582603247312
	.quad	0x40086c7970e0eed0              # double 3.052966005196005
	.quad	0x401214765b292a27              # double 4.5199827426791108
	.quad	0x400bccb33ac3f31a              # double 3.4749512282418324
	.quad	0x401ca99946c78765              # double 7.1656237658770339
	.quad	0x4023d073f52aebff              # double 9.9071346869368408
	.quad	0x3fb838ca63151160              # double 0.094616555395139467
	.quad	0x4023981d11e68119              # double 9.7970967859151176
	.quad	0x401b0abaadc6b75a              # double 6.760477748159099
	.quad	0x40148d900b405c40              # double 5.1382447965652887
	.quad	0x40211fb245a07187              # double 8.561906982264885
	.quad	0x3fe762d73cd646aa              # double 0.73081552393178595
	.quad	0x400c0b54fd6f5ff8              # double 3.5055331992734828
	.quad	0x4013e5386b68301c              # double 4.9738480360356583
	.quad	0x3ff78e32b65b3e46              # double 1.4722163317964188
	.quad	0x402358339ddf941b              # double 9.6722688041136759
	.quad	0x4016af417f1de81f              # double 5.6711482870105376
	.quad	0x4004c4935fe43907              # double 2.5959842196963367
	.quad	0x40202bbe70a5fd1f              # double 8.0854373171446792
	.quad	0x4013ec227e4f039e              # double 4.9806003318525693
	.quad	0x3fc1588d19e34440              # double 0.13551486743975438
	.quad	0x3fa4c98a5e76c840              # double 0.040600132018326907
	.quad	0x3feb82f42155f9f2              # double 0.85973555098445176
	.quad	0x3fffdfa2b5690ecc              # double 1.992098530420594
	.quad	0x401ccc78ad9162e3              # double 7.1996791000353566
	.quad	0x4019493214ae5595              # double 6.3214801055340972
	.quad	0x3ff46703072160a8              # double 1.2751493719606888
	.quad	0x4004b34f8995fcf9              # double 2.5875540493867644
	.quad	0x40188d8343c6fefc              # double 6.1381960478026905
	.quad	0x3fda1156ab6a1fa8              # double 0.40730826129628861
	.quad	0x3ff30c408b3ede89              # double 1.1904912413864699
	.quad	0x4001e6d7d7acdddc              # double 2.2377163743619644
	.quad	0x4022a90ecacd0fda              # double 9.3301909804649092
	.quad	0x4011b85576276f12              # double 4.4300135098999522
	.quad	0x4012959ffb199441              # double 4.6461180910455946
	.quad	0x4023f65a3d275609              # double 9.9811572180287999
	.quad	0x401c2b0937752776              # double 7.042027346158525
	.quad	0x40195c63fc771d74              # double 6.3402251670553262
	.quad	0x4015b9b26c2924b5              # double 5.4313446903335505
	.size	.L__constant_10x10xf64, 800

	.type	.L__constant_5xindex,@object    # @__constant_5xindex
	.p2align	6, 0x0
.L__constant_5xindex:
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	5                               # 0x5
	.quad	2                               # 0x2
	.size	.L__constant_5xindex, 40

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	4                               # 0x4
	.quad	4                               # 0x4
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	5                               # 0x5
	.quad	5                               # 0x5
	.size	.L__constant_11xindex, 88

	.type	.L__constant_5xf64,@object      # @__constant_5xf64
	.p2align	6, 0x0
.L__constant_5xf64:
	.quad	0x3fd9eca686e7e62e              # double 0.40506900000000001
	.quad	0x401aa02d16b97fe9              # double 6.6564220000000001
	.quad	0x40225112fd32c626              # double 9.1583480000000002
	.quad	0x40148083126e978d              # double 5.1254999999999997
	.quad	0x402304bccf28c79f              # double 9.5092529999999992
	.size	.L__constant_5xf64, 40

	.section	".note.GNU-stack","",@progbits
