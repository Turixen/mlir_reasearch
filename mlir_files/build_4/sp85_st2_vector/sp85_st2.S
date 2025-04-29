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
	.quad	15                              # 0xf
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
	lui	a6, %hi(.L__constant_15xindex)
	addi	a6, a6, %lo(.L__constant_15xindex)
	lui	a7, %hi(.L__constant_15xf64)
	addi	a7, a7, %lo(.L__constant_15xf64)
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
	addi	a1, a1, -256
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
	.quad	0x3ffafcaa61c3acf3              # double 1.6866859263344025
	.quad	0x40164cf8d955034b              # double 5.575168033422254
	.quad	0x3ff06ce6a4a7ea60              # double 1.0265871459838749
	.quad	0x4006d46edf3f83a6              # double 2.8537270966775905
	.quad	0x4001a782995c81ac              # double 2.2067920667033913
	.quad	0x401a1a9cbc351a10              # double 6.5259885222826739
	.quad	0x401f127bad9ce5be              # double 7.7680499197971908
	.quad	0x3ffbc104cffc87d4              # double 1.734623730132161
	.quad	0x3fc0b6c599a062b8              # double 0.13057775498670821
	.quad	0x401cab5cb37bf96b              # double 7.1673458141725446
	.quad	0x4008ed85e0bfb9dd              # double 3.1159780081281796
	.quad	0x4022e4592e0b417f              # double 9.4459928883304637
	.quad	0x400b0a0bc07d8188              # double 3.3799052274991404
	.quad	0x400eaa79fd329719              # double 3.8332404881538307
	.quad	0x3ff5c5a4219888bb              # double 1.3607522308671338
	.quad	0x400d4230f94b08cd              # double 3.6573199726127315
	.quad	0x40117f10332fd4d8              # double 4.374085235399626
	.quad	0x4020964b9a29bde6              # double 8.2935455490068755
	.quad	0x401e5fbe2db3b5be              # double 7.5934989109932172
	.quad	0x3fbd158ad24dbc70              # double 0.11360995897642723
	.quad	0x401589cae0fd7d8b              # double 5.384562983962847
	.quad	0x400c22ad8db1d3b5              # double 3.516932589520787
	.quad	0x40041d4127364b5d              # double 2.5142844260639508
	.quad	0x401b72b1d3990def              # double 6.8620064794699678
	.quad	0x40079e4b63c2b81b              # double 2.9522922319220135
	.quad	0x3ff1b77abf97eade              # double 1.1072947963827384
	.quad	0x400760595bf96aae              # double 2.9220454392901365
	.quad	0x40044bb96b5858f0              # double 2.5369747530304423
	.quad	0x40037111f194a4d8              # double 2.4302100060927891
	.quad	0x4022db38996d6947              # double 9.4281661935862199
	.quad	0x3fed837ca26e5e96              # double 0.92230064129667499
	.quad	0x401d41014dda47e6              # double 7.3134815372922954
	.quad	0x401a975eacfe3caa              # double 6.6478220968412334
	.quad	0x401dfd1d3be81fe4              # double 7.497181831400642
	.quad	0x40223c8b3e59b8d4              # double 9.1182498440288455
	.quad	0x3ff20a1c3a8d9501              # double 1.1274683272579866
	.quad	0x401d9d343ba798f5              # double 7.4035195656817807
	.quad	0x4009ea6f778c35b2              # double 3.2394704188979739
	.quad	0x401679a23cf3ff40              # double 5.6187829517292016
	.quad	0x4016168466efe6d1              # double 5.5219894489216168
	.quad	0x401582a691920bc9              # double 5.377588533915465
	.quad	0x401b0ace45513347              # double 6.7605524855433208
	.quad	0x40219ffce2b02a7c              # double 8.8124762382551509
	.quad	0x401ff4c8fdfe9793              # double 7.9890479742661169
	.quad	0x4004a9d6ff1877cc              # double 2.5829296044675853
	.quad	0x401676332c9b709d              # double 5.6154295892594321
	.quad	0x401882d1200f4448              # double 6.1277508744543141
	.quad	0x4019ed9e0c43f1b8              # double 6.4820482174367768
	.quad	0x40214da23c890be5              # double 8.6516283910077139
	.quad	0x4023966222759fb7              # double 9.7937174576362462
	.quad	0x3ff82f069e2a2434              # double 1.5114809206300039
	.quad	0x4022eb27340ddadd              # double 9.4592834727204095
	.quad	0x401cc1f8a3bc9c3e              # double 7.1894250472897152
	.quad	0x402234c3a59790da              # double 9.1030551669613722
	.quad	0x4000e68a613262a6              # double 2.1125686257840526
	.quad	0x401cd410d0e534b4              # double 7.207095397939316
	.quad	0x3ff092b3a991ad66              # double 1.0358158706465814
	.quad	0x4017bf6361a1d992              # double 5.9369025473628358
	.quad	0x40217f4bca5aca8f              # double 8.748625110228458
	.quad	0x401578c6c52ef83d              # double 5.3679457483213442
	.quad	0x401c9549a2ae1e0a              # double 7.1457887095234671
	.quad	0x3ff279f99a52be97              # double 1.1547790554285819
	.quad	0x4006a5b7f4605c80              # double 2.8309172717959541
	.quad	0x401de9c4c434494e              # double 7.4782896668351224
	.quad	0x40217cb7d1ca1a5f              # double 8.743589931412485
	.quad	0x400470b7217bd31e              # double 2.5550367942727368
	.quad	0x4017523b19fd272c              # double 5.8303035794031466
	.quad	0x401fbc218364b7f8              # double 7.9337215929244777
	.quad	0x400a5a49594d8f3e              # double 3.2940852143091481
	.quad	0x3ffaedb133c5c852              # double 1.6830303213469233
	.quad	0x4013eb0f01ff78e5              # double 4.9795494377305873
	.quad	0x401ce300493b8918              # double 7.2216807787501907
	.quad	0x401231ff0729f050              # double 4.5488244170520176
	.quad	0x3fc7c0da44762770              # double 0.18557289450501058
	.quad	0x4015cbd9e4303df8              # double 5.4490733770794506
	.quad	0x401882b4d8410614              # double 6.1276429929435103
	.quad	0x40195b8908030ea0              # double 6.3393899204126285
	.quad	0x40125e8d49473925              # double 4.5923358392449574
	.quad	0x400daad6e726a4a4              # double 3.7084177073162028
	.quad	0x40182fe521d859c0              # double 6.0467725075054091
	.quad	0x4008d2f8b87ceea7              # double 3.1030134595037739
	.quad	0x3ff428cd742578a2              # double 1.2599615609138159
	.quad	0x400d95847f0d99f7              # double 3.6980066228891206
	.quad	0x40152eec7098c018              # double 5.2958238213759827
	.quad	0x4016d31ca99e7124              # double 5.7061640265422149
	.quad	0x40138884424e6668              # double 4.8833170280791833
	.quad	0x3fec27d1f1bc5f3c              # double 0.87986085142163217
	.quad	0x4007dac7e5489b5c              # double 2.9818265831740245
	.quad	0x40212d8d00ca701b              # double 8.5889663931957809
	.quad	0x4004290e83000f9a              # double 2.5200472101586913
	.quad	0x401264a08baa4c61              # double 4.5982686827365749
	.quad	0x40140119cf28e1a3              # double 5.001075016851618
	.quad	0x4013d80f917e7dbd              # double 4.9609968884901123
	.quad	0x3fb47b5aede0c400              # double 0.080007250858002976
	.quad	0x4016711f2bff0f3a              # double 5.6104704737115814
	.quad	0x400bb2349717d936              # double 3.4620143703606585
	.quad	0x401103a5b6f64c32              # double 4.2535618388965748
	.quad	0x400bcf1462762d84              # double 3.4761130993189813
	.quad	0x4012a9a998df57b7              # double 4.6656860243146445
	.quad	0x401ba658e7c7cd40              # double 6.9124485221576037
	.size	.L__constant_10x10xf64, 800

	.type	.L__constant_15xindex,@object   # @__constant_15xindex
	.p2align	6, 0x0
.L__constant_15xindex:
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.size	.L__constant_15xindex, 120

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	15                              # 0xf
	.size	.L__constant_11xindex, 88

	.type	.L__constant_15xf64,@object     # @__constant_15xf64
	.p2align	6, 0x0
.L__constant_15xf64:
	.quad	0x3ff35eefe4ffc979              # double 1.2106779999999999
	.quad	0x4001fdc93ea2d2fe              # double 2.2489189999999999
	.quad	0x40124e00d1b71759              # double 4.5761750000000001
	.quad	0x4015b36694898f60              # double 5.4251959999999997
	.quad	0x3fd447a5b0ff10ed              # double 0.31687300000000002
	.quad	0x3fe8e02a77a2cecd              # double 0.77736400000000005
	.quad	0x40114a5a89b951c6              # double 4.3226110000000002
	.quad	0x4021a71886df82b2              # double 8.8263590000000001
	.quad	0x401bf1ae2da554b9              # double 6.9860160000000002
	.quad	0x4022539fdbd2fa0d              # double 9.1633289999999992
	.quad	0x4018ba47a9e2bcf9              # double 6.1819139999999999
	.quad	0x401bc162ae4b0186              # double 6.9388529999999999
	.quad	0x40182fee6fb4c3c2              # double 6.0468080000000004
	.quad	0x3ff93b8e4b87bdcf              # double 1.57704
	.quad	0x4015987c6327ed85              # double 5.3989120000000002
	.size	.L__constant_15xf64, 120

	.section	".note.GNU-stack","",@progbits
