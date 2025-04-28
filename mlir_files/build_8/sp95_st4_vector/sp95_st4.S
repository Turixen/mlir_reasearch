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
	.quad	0x3ff6219150dd8975              # double 1.3831952246478896
	.quad	0x401a2cf8ae249498              # double 6.5439173898531848
	.quad	0x4020e76d48f60d9e              # double 8.4520056534154797
	.quad	0x3ffa544c47f35d2a              # double 1.6455805597850692
	.quad	0x3ff713713df70cdc              # double 1.4422466679105161
	.quad	0x400f848cfd0f3416              # double 3.9397220392479637
	.quad	0x400e2fb116d94726              # double 3.7732869896944008
	.quad	0x402093a540294f91              # double 8.2883701372554999
	.quad	0x40140c3492bb9d96              # double 5.0119193007480103
	.quad	0x4019b2b376bfd274              # double 6.4245127253130825
	.quad	0x40179fbb5592af3e              # double 5.9059880610255373
	.quad	0x3ff3032a8795e5c6              # double 1.1882729812917758
	.quad	0x4022b6cce9359c9c              # double 9.357032096666721
	.quad	0x4014f961480a16ba              # double 5.2435351616056156
	.quad	0x3fe6508f250c2d56              # double 0.69733388172009358
	.quad	0x40200a133f06518d              # double 8.0196780867779811
	.quad	0x3fc0936d913f0f00              # double 0.12949914543252561
	.quad	0x3ff67c86cb0841db              # double 1.4054019862124878
	.quad	0x3fef4cc17fd8e094              # double 0.97811961145545689
	.quad	0x401c60500c13bfec              # double 7.0940553557447679
	.quad	0x4006ea9bb25e40b0              # double 2.8645547804845464
	.quad	0x3fb1298f52395fa0              # double 0.067040402960059087
	.quad	0x40128f46441b63ec              # double 4.6399164811818814
	.quad	0x40208371975eeec2              # double 8.2567260077843265
	.quad	0x3fcca771f2d3d268              # double 0.22386001927192756
	.quad	0x4021bac0cffc5e02              # double 8.8647522922101452
	.quad	0x4013eb047ee98763              # double 4.9795093374285413
	.quad	0x402350c02d2c43f2              # double 9.6577161900076796
	.quad	0x401486cbd84234e1              # double 5.1316369810494686
	.quad	0x3ff5d4e71c0001a7              # double 1.3644782155753121
	.quad	0x4022d939fc2bda38              # double 9.4242705157786161
	.quad	0x4014eb8ad1a0ac14              # double 5.2300217394176975
	.quad	0x3ff30913d7ebab07              # double 1.1897161898038477
	.quad	0x3fe723b657bcf2f8              # double 0.72310940872520657
	.quad	0x402270d1219e73d0              # double 9.2203455453799563
	.quad	0x4000b07cfac0b64e              # double 2.0861758794842791
	.quad	0x4009fa502fa7adc6              # double 3.2472232554480085
	.quad	0x401fde790d251707              # double 7.9672586492431554
	.quad	0x3fb12d432a5c3a90              # double 0.067096898881781053
	.quad	0x401ce50b8c9b9128              # double 7.2236768693876812
	.quad	0x400f4b9a9043ba64              # double 3.9119159002942059
	.quad	0x3fe40af66fd001f4              # double 0.62633821333298423
	.quad	0x40227ff092b49042              # double 9.2498823018469274
	.quad	0x3fda98c536cd257c              # double 0.41557436324782038
	.quad	0x3fff25ad45501130              # double 1.9466984469918991
	.quad	0x4006065c406d081a              # double 2.7531056435846155
	.quad	0x400c8261716f46c2              # double 3.5636624204715597
	.quad	0x40176c132d346809              # double 5.8555419028507538
	.quad	0x4015325816a1ca72              # double 5.2991641556023854
	.quad	0x4007c243ff593a20              # double 2.9698562573532996
	.quad	0x4018b30620f5c88e              # double 6.1748280668272297
	.quad	0x401761501c53beaf              # double 5.8450321603883557
	.quad	0x4023490ec9b07646              # double 9.6426909473331186
	.quad	0x4014aaa5fd4ee954              # double 5.1666488246358604
	.quad	0x401b431cc04283d6              # double 6.8155393639180684
	.quad	0x400bec64998a5068              # double 3.4904262538275823
	.quad	0x400334d213572c2c              # double 2.400791312310977
	.quad	0x401dc28e5e56d2a4              # double 7.4399962177746239
	.quad	0x400b49e55257acf2              # double 3.4110819275862179
	.quad	0x40119db51bd15868              # double 4.4040111872219327
	.quad	0x401db153d6f48136              # double 7.4231713854535908
	.quad	0x401c8d48f2ec7d0a              # double 7.1379735905495725
	.quad	0x40218fae0bd0df67              # double 8.7806247417899623
	.quad	0x3feefafd328009be              # double 0.96813831198988232
	.quad	0x3ff066f948b29ddd              # double 1.025140079474901
	.quad	0x4023761c79f038e0              # double 9.7306860070934249
	.quad	0x3fffe21a5e62c7c4              # double 1.9927009283969577
	.quad	0x3fcd0eb71b389f20              # double 0.22701157406958661
	.quad	0x401bae36768bb062              # double 6.9201296351203343
	.quad	0x400e103e796349c0              # double 3.7579316600251502
	.quad	0x4009052d9ce01955              # double 3.1275284057511876
	.quad	0x401337d9c89d8715              # double 4.8045417162081963
	.quad	0x3ff12b77e0509161              # double 1.0731123697560963
	.quad	0x40047f00a39c958e              # double 2.5620129377518372
	.quad	0x3ffdfb80ef277b74              # double 1.8739022581064235
	.quad	0x401dff010ffadaac              # double 7.499027490316319
	.quad	0x400d4274038e4ff2              # double 3.6574478414349807
	.quad	0x4000931b0c7ebdbc              # double 2.071828935258706
	.quad	0x4006d2361244248e              # double 2.8526421954198389
	.quad	0x4011ba26a4a91c42              # double 4.4317880371300493
	.quad	0x402272afc4c6ecb4              # double 9.2239972584560305
	.quad	0x401aa747d52579bd              # double 6.6633599571345572
	.quad	0x401ac0c9448b192a              # double 6.6882677755259383
	.quad	0x3ff621ed974f430b              # double 1.3832832251102356
	.quad	0x3ffe3e051f42e14c              # double 1.8901416035788143
	.quad	0x401d307a1e92cd2c              # double 7.2973408486462112
	.quad	0x40183ee8a79c79a0              # double 6.0614343823675938
	.quad	0x4016f19950dca4d2              # double 5.7359364161176973
	.quad	0x4019dc469162ae04              # double 6.4651129452208842
	.quad	0x400b00dabf48ef32              # double 3.3754172271855163
	.quad	0x400716b73d5959bc              # double 2.8860916893856636
	.quad	0x3ff9b5e4e889af6b              # double 1.6069077571400736
	.quad	0x40161a174842b806              # double 5.525479439804263
	.quad	0x401962930c725d75              # double 6.3462640709689042
	.quad	0x3ff8ad76cf9c1abf              # double 1.5423496351010468
	.quad	0x401a88ac8941e992              # double 6.6334706732253768
	.quad	0x401d5daec95d4719              # double 7.3414870703870969
	.quad	0x40203ebbf2a9d88e              # double 8.1225276787120286
	.quad	0x401204a461539690              # double 4.5045333106296681
	.quad	0x40050a8ba7572040              # double 2.6301491807426203
	.size	.L__constant_10x10xf64, 800

	.type	.L__constant_5xindex,@object    # @__constant_5xindex
	.p2align	6, 0x0
.L__constant_5xindex:
	.quad	4                               # 0x4
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.size	.L__constant_5xindex, 40

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	1                               # 0x1
	.quad	1                               # 0x1
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	3                               # 0x3
	.quad	3                               # 0x3
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	5                               # 0x5
	.size	.L__constant_11xindex, 88

	.type	.L__constant_5xf64,@object      # @__constant_5xf64
	.p2align	6, 0x0
.L__constant_5xf64:
	.quad	0x4010bef8055fbb51              # double 4.1864929999999996
	.quad	0x3ffdbbb0e5e67946              # double 1.8583229999999999
	.quad	0x401b3cfbfc6540cc              # double 6.8095549999999996
	.quad	0x40236be2d6238da4              # double 9.7107150000000004
	.quad	0x40168a71de69ad43              # double 5.6352000000000002
	.size	.L__constant_5xf64, 40

	.section	".note.GNU-stack","",@progbits
