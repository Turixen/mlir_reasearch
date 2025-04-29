	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_v1p0_zicsr2p0_zmmul1p0_zaamo1p0_zalrsc1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"LLVMDialectModule"
	.text
	.p2align	1                               # -- Begin function printMemrefF64
	.type	.LprintMemrefF64,@function
.LprintMemrefF64:                       # @printMemrefF64
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -64
	.cfi_def_cfa_offset 64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	sd	a4, 32(sp)
	sd	a5, 40(sp)
	sd	a6, 48(sp)
	sd	a0, 0(sp)
	sd	a1, 8(sp)
	sd	a2, 16(sp)
	sd	a3, 24(sp)
	mv	a0, sp
	call	_mlir_ciface_printMemrefF64
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	.cfi_restore ra
	addi	sp, sp, 64
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	.LprintMemrefF64, .Lfunc_end0-.LprintMemrefF64
	.cfi_endproc
                                        # -- End function
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
	j	.LBB1_2
.LBB1_1:                                #   in Loop: Header=BB1_2 Depth=1
	addi	s3, s3, 1
.LBB1_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_5 Depth 2
                                        #       Child Loop BB1_8 Depth 3
	bge	s3, s2, .LBB1_11
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
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
	j	.LBB1_5
.LBB1_4:                                #   in Loop: Header=BB1_5 Depth=2
	addi	s8, s8, 1
	addi	s7, s7, 80
.LBB1_5:                                #   Parent Loop BB1_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_8 Depth 3
	blt	s9, s8, .LBB1_1
# %bb.6:                                #   in Loop: Header=BB1_5 Depth=2
	li	s0, 0
	add	a3, s8, s5
	slli	a3, a3, 3
	add	a3, a3, s4
	fld	fa5, 0(a3)
	li	a4, 10
	mv	a1, s7
	mv	a5, s6
	j	.LBB1_8
.LBB1_7:                                #   in Loop: Header=BB1_8 Depth=3
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
.LBB1_8:                                #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	blt	s9, s0, .LBB1_4
# %bb.9:                                #   in Loop: Header=BB1_8 Depth=3
	mv	a3, a4
	blt	a4, a2, .LBB1_7
# %bb.10:                               #   in Loop: Header=BB1_8 Depth=3
	mv	a3, a2
	j	.LBB1_7
.LBB1_11:
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
.Lfunc_end1:
	.size	matmul, .Lfunc_end1-matmul
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	1
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -480
	.cfi_def_cfa_offset 480
	sd	ra, 472(sp)                     # 8-byte Folded Spill
	sd	s0, 464(sp)                     # 8-byte Folded Spill
	sd	s1, 456(sp)                     # 8-byte Folded Spill
	sd	s2, 448(sp)                     # 8-byte Folded Spill
	sd	s3, 440(sp)                     # 8-byte Folded Spill
	sd	s4, 432(sp)                     # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	li	a0, 864
	call	malloc
	mv	s0, a0
	addi	a0, a0, 63
	andi	s1, a0, -64
	addi	a0, sp, 272
	call	assemble_sparse
	addi	a0, sp, 392
	addi	t0, sp, 328
	ld	a5, 304(sp)
	ld	a6, 312(sp)
	ld	a7, 320(sp)
	vsetivli	zero, 4, e64, m2, ta, ma
	vle64.v	v8, (a0)
	ld	a1, 272(sp)
	ld	a2, 280(sp)
	ld	a3, 288(sp)
	ld	a4, 296(sp)
	vsetivli	zero, 8, e64, m4, ta, ma
	vle64.v	v12, (t0)
	ld	a0, 424(sp)
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
	addi	a0, sp, 216
	vsext.vf8	v12, v11
	vse64.v	v12, (s1)
	vse64.v	v8, (s0)
	call	matmul
	ld	s2, 224(sp)
	ld	s3, 232(sp)
	ld	s4, 240(sp)
	ld	s1, 248(sp)
	li	a0, 864
	call	malloc
	mv	s0, a0
	addi	a0, a0, 63
	mul	a2, s4, s1
	slli	a1, s3, 3
	andi	s1, a0, -64
	slli	a2, a2, 3
	add	a1, a1, s2
	mv	a0, s1
	call	memcpy
	li	a3, 10
	li	a4, 10
	li	a5, 10
	li	a6, 1
	mv	a0, s0
	mv	a1, s1
	li	a2, 0
	call	.LprintMemrefF64
	fld	fa5, 0(s2)
	fcvt.l.d	a0, fa5, rtz
	ld	ra, 472(sp)                     # 8-byte Folded Reload
	ld	s0, 464(sp)                     # 8-byte Folded Reload
	ld	s1, 456(sp)                     # 8-byte Folded Reload
	ld	s2, 448(sp)                     # 8-byte Folded Reload
	ld	s3, 440(sp)                     # 8-byte Folded Reload
	ld	s4, 432(sp)                     # 8-byte Folded Reload
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	.cfi_restore s4
	addi	sp, sp, 480
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function assemble_sparse
.LCPI3_0:
	.quad	0                               # 0x0
	.quad	30                              # 0x1e
	.quad	1                               # 0x1
	.quad	3735928559                      # 0xdeadbeef
.LCPI3_1:
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
	lui	a4, %hi(.LCPI3_0)
	addi	a4, a4, %lo(.LCPI3_0)
	addi	a5, a0, 56
	lui	t1, %hi(.LCPI3_1)
	addi	t1, t1, %lo(.LCPI3_1)
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
.Lfunc_end3:
	.size	assemble_sparse, .Lfunc_end3-assemble_sparse
	.cfi_endproc
                                        # -- End function
	.type	.L__constant_10x10xf64,@object  # @__constant_10x10xf64
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
.L__constant_10x10xf64:
	.quad	0x40140774f4a6346a              # double 5.0072820879405331
	.quad	0x400122eaf8269426              # double 2.1420497309468542
	.quad	0x4020df748331688a              # double 8.4364357946217474
	.quad	0x400acf65d01a5414              # double 3.3512684114489364
	.quad	0x40136e76729fbd40              # double 4.8578737173077684
	.quad	0x401a02c077a7764e              # double 6.5026873298607608
	.quad	0x4011ecbb41ee8a0c              # double 4.481183080848961
	.quad	0x3ff9a10803c2f117              # double 1.6018142840321781
	.quad	0x3ffa5f0dfdee51a9              # double 1.6482067031075565
	.quad	0x4006286b0128f566              # double 2.7697353449463433
	.quad	0x40208f2d70da2758              # double 8.2796435610104453
	.quad	0x4023975cede2f64b              # double 9.7956308688691446
	.quad	0x401443e69a6db343              # double 5.066309369035312
	.quad	0x3ff11b6f2e60e66c              # double 1.0691978274975567
	.quad	0x401d1a160b808169              # double 7.2754747197326219
	.quad	0x401ddf26dc116eb8              # double 7.4679216752662611
	.quad	0x3ffd8968d74c76dd              # double 1.8460472498040226
	.quad	0x3ffb9793a3665fdc              # double 1.7245060332115747
	.quad	0x4023a85eb9110df3              # double 9.828847678500983
	.quad	0x401768d89f6f2231              # double 5.8523888503628294
	.quad	0x4012f0c5ab318d54              # double 4.735129046344202
	.quad	0x3fcb60d6da6790f8              # double 0.21389279999051047
	.quad	0x4023f6fbf5dd4b85              # double 9.9823910553584571
	.quad	0x3fcd1f31515806d8              # double 0.22751442405574696
	.quad	0x401139ae887e8485              # double 4.3063298537464378
	.quad	0x3ff07b11cc4e5458              # double 1.0300462704374436
	.quad	0x401cc10b315d29ae              # double 7.1885192597496097
	.quad	0x3ffbace8093bcef5              # double 1.7297134743393461
	.quad	0x401dcc339278e2e6              # double 7.4494154821665912
	.quad	0x40206fa9aa035e9c              # double 8.2180913094628564
	.quad	0x3fe1b7eb19e03af8              # double 0.55370097211729696
	.quad	0x401c59337f8c7f63              # double 7.0871105126860554
	.quad	0x401efaee5954555d              # double 7.7450498540614178
	.quad	0x4010fab570cd8bcb              # double 4.2448327660994876
	.quad	0x3ff464c3062ab3b7              # double 1.2746000519648371
	.quad	0x4022e0db4835c3ca              # double 9.4391729894286023
	.quad	0x4018c2d5db11542a              # double 6.1902689198805465
	.quad	0x40182009e7dad896              # double 6.0312877871821424
	.quad	0x40219400f9227588              # double 8.7890699247898425
	.quad	0x40094a1d3ca4abf2              # double 3.1611885774377635
	.quad	0x4021fb1308ff4a3d              # double 8.9903796016343396
	.quad	0x400b93b69dda4530              # double 3.4471256572948263
	.quad	0x4020fc8fbdaee530              # double 8.4932841564173884
	.quad	0x4023dfe9d5f74a4a              # double 9.9373309006088171
	.quad	0x4004f3ed1743e7b8              # double 2.6191045587156303
	.quad	0x3fe8c09821aff7f2              # double 0.77351004199567641
	.quad	0x3ff67074609151c1              # double 1.4024547359632467
	.quad	0x401dd17608e3928e              # double 7.454551829233095
	.quad	0x4004f4923d9e3760              # double 2.6194195569905077
	.quad	0x40101e91861f6a74              # double 4.0298520046877577
	.quad	0x40130e70bf05daed              # double 4.7641019675563543
	.quad	0x400e80e062c0e214              # double 3.8129279818642861
	.quad	0x40222648a1eb55e9              # double 9.0747728919768225
	.quad	0x4019f7e43fbbb534              # double 6.4920816381757511
	.quad	0x401b272888fff409              # double 6.7882405668469881
	.quad	0x401c067fb2e3c1a0              # double 7.0063465072165911
	.quad	0x4016f46445b7029b              # double 5.7386637585592792
	.quad	0x401e179378abac3a              # double 7.5230234961300599
	.quad	0x3fed4f44e923cab8              # double 0.91592641387099771
	.quad	0x4021544ed5a7e64b              # double 8.6646639602141899
	.quad	0x4016beb4cc8101d1              # double 5.6862365678538973
	.quad	0x40138083ebfab31e              # double 4.8755032417073192
	.quad	0x40232c02cc82a2f9              # double 9.5859588536709328
	.quad	0x40203cc1e70133c0              # double 8.1186668576209513
	.quad	0x4015864232be6050              # double 5.3811119011589454
	.quad	0x400e9fc0ba322d60              # double 3.8280043169558411
	.quad	0x4023ff26639c4349              # double 9.9983397606134918
	.quad	0x4018bbfd07517007              # double 6.1835824149566241
	.quad	0x400b5c630a9bb1b6              # double 3.4201107815517515
	.quad	0x3feb3098b40e8178              # double 0.84968218962971687
	.quad	0x400654858a1f181e              # double 2.791270331453247
	.quad	0x4007c9e505ffb4fa              # double 2.9735813587818685
	.quad	0x400886033d51e78d              # double 3.0654358664150494
	.quad	0x4015f8ca0c9f8f3b              # double 5.4929582569491755
	.quad	0x400f6421a32e3d9a              # double 3.9238922832952996
	.quad	0x4022881615d90609              # double 9.2657934977933269
	.quad	0x401445cb87c90730              # double 5.0681592194030571
	.quad	0x402361cf52f00bda              # double 9.6910348814034712
	.quad	0x4000c72761e3b655              # double 2.0972430846802959
	.quad	0x3feef8fe0fc03ac6              # double 0.96789458347651514
	.quad	0x40099788d44029f1              # double 3.1989914495545624
	.quad	0x400e15f6ee4fb526              # double 3.7607248895716507
	.quad	0x401612ab7ddc0136              # double 5.5182323136835318
	.quad	0x4003c781bd8662a0              # double 2.4724154287944913
	.quad	0x401d2b13bb8f26d2              # double 7.2920674615977124
	.quad	0x402366df50f778f4              # double 9.7009225179758473
	.quad	0x4023e261be0fb8b2              # double 9.9421519655410044
	.quad	0x4004e34165f42446              # double 2.6109645810252315
	.quad	0x402218d025d95151              # double 9.0484630420475316
	.quad	0x400d6ad9642f1d1e              # double 3.6771724535825703
	.quad	0x4019391592c43fc0              # double 6.305746358135309
	.quad	0x401ec78d703e4f25              # double 7.6948754823713771
	.quad	0x400ccf65ac28f49e              # double 3.6012681436537397
	.quad	0x3ff436aed0d1a965              # double 1.263350310992416
	.quad	0x400edd9196aed674              # double 3.8581878444772943
	.quad	0x401c6b3735773d40              # double 7.1047027925517909
	.quad	0x40018617e2e0d0df              # double 2.1904752468927735
	.quad	0x3fd510c00967bbfc              # double 0.32914734762647391
	.quad	0x400955af04c5b61e              # double 3.1668377278172235
	.quad	0x40006a2ee63770e6              # double 2.0518472657841924
	.size	.L__constant_10x10xf64, 800

	.type	.L__constant_30xindex,@object   # @__constant_30xindex
	.p2align	6, 0x0
.L__constant_30xindex:
	.quad	8                               # 0x8
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	7                               # 0x7
	.size	.L__constant_30xindex, 240

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.size	.L__constant_11xindex, 88

	.type	.L__constant_30xf64,@object     # @__constant_30xf64
	.p2align	6, 0x0
.L__constant_30xf64:
	.quad	0x4013067fd3f5b5fa              # double 4.7563469999999999
	.quad	0x4000d2a7bd48cb4b              # double 2.102859
	.quad	0x4015b20ab7132724              # double 5.4238689999999998
	.quad	0x40164f8b588e368f              # double 5.57768
	.quad	0x3fd3353b4b2fa93b              # double 0.300124
	.quad	0x401357d028a1dfb9              # double 4.8357549999999998
	.quad	0x4021b81e2584f4c7              # double 8.8596050000000002
	.quad	0x3ff97ad6cb535009              # double 1.59249
	.quad	0x401d7cffeb074a77              # double 7.3720699999999999
	.quad	0x401cfc32ebe596c8              # double 7.2462879999999998
	.quad	0x4017ad388a8b08dd              # double 5.9191609999999999
	.quad	0x4017d66adb402d17              # double 5.9593920000000002
	.quad	0x4012c85942917508              # double 4.6956530000000001
	.quad	0x3fe44069e7fb267c              # double 0.63286299999999995
	.quad	0x400945f6ba0620ab              # double 3.1591619999999998
	.quad	0x4012d54de7ea5f85              # double 4.7083050000000002
	.quad	0x4020df0cdc8754f3              # double 8.4356449999999992
	.quad	0x4015b94812be48a6              # double 5.4309390000000004
	.quad	0x4000f3d74d594f27              # double 2.1190630000000001
	.quad	0x3fc3c80841ede11a              # double 0.15454200000000001
	.quad	0x4004c2a454de7ea6              # double 2.59504
	.quad	0x3ff773061c79b34a              # double 1.4655819999999999
	.quad	0x3ff523e07a28bb0a              # double 1.321259
	.quad	0x400d9f972474538f              # double 3.702925
	.quad	0x400c568512231833              # double 3.542246
	.quad	0x401b531c219eb639              # double 6.831162
	.quad	0x3ffb937f38c5436c              # double 1.7235100000000001
	.quad	0x401f7dda059a73b4              # double 7.8729019999999998
	.quad	0x40180859c8c9320e              # double 6.0081550000000004
	.quad	0x3ff0c0b242070b8d              # double 1.047045
	.size	.L__constant_30xf64, 240

	.section	".note.GNU-stack","",@progbits
