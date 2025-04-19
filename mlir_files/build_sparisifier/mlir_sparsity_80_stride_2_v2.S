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
	addi	sp, sp, -80
	.cfi_def_cfa_offset 80
	sd	s0, 72(sp)                      # 8-byte Folded Spill
	sd	s1, 64(sp)                      # 8-byte Folded Spill
	sd	s2, 56(sp)                      # 8-byte Folded Spill
	sd	s3, 48(sp)                      # 8-byte Folded Spill
	sd	s4, 40(sp)                      # 8-byte Folded Spill
	sd	s5, 32(sp)                      # 8-byte Folded Spill
	sd	s6, 24(sp)                      # 8-byte Folded Spill
	sd	s7, 16(sp)                      # 8-byte Folded Spill
	sd	s8, 8(sp)                       # 8-byte Folded Spill
	.cfi_offset s0, -8
	.cfi_offset s1, -16
	.cfi_offset s2, -24
	.cfi_offset s3, -32
	.cfi_offset s4, -40
	.cfi_offset s5, -48
	.cfi_offset s6, -56
	.cfi_offset s7, -64
	.cfi_offset s8, -72
	li	t6, 0
	li	t5, 0
	ld	s7, 192(sp)
	ld	a6, 288(sp)
	ld	t0, 280(sp)
	ld	t1, 272(sp)
	ld	t2, 264(sp)
	ld	t3, 256(sp)
	ld	s8, 248(sp)
	ld	t4, 240(sp)
	ld	s3, 112(sp)
	li	s6, 99
	li	s2, 800
	vsetivli	zero, 16, e32, m4, ta, ma
	vid.v	v4
	vsetvli	zero, zero, e64, m8, ta, ma
	vmv.v.i	v8, 0
	j	.LBB0_2
.LBB0_1:                                #   in Loop: Header=BB0_2 Depth=1
	addi	t5, t5, 1
	addi	t6, t6, 800
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #       Child Loop BB0_8 Depth 3
	blt	s6, t5, .LBB0_11
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	slli	a1, t5, 3
	add	a1, a1, a2
	lwu	a4, 4(a1)
	lwu	a5, 0(a1)
	lwu	s0, 12(a1)
	lwu	a1, 8(a1)
	slli	a4, a4, 32
	or	s5, a4, a5
	slli	s0, s0, 32
	or	s4, s0, a1
	j	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=2
	addi	s5, s5, 1
.LBB0_5:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_8 Depth 3
	bge	s5, s4, .LBB0_1
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=2
	li	a1, 0
	slli	a4, s5, 3
	add	a5, a7, a4
	lwu	s0, 4(a5)
	lwu	a5, 0(a5)
	add	a4, a4, s3
	fld	fa5, 0(a4)
	slli	s0, s0, 32
	or	a5, a5, s0
	mul	s0, a5, s2
	li	a5, 100
	mv	a4, t6
	j	.LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=3
	vsetvli	zero, zero, e32, m4, ta, ma
	vmslt.vx	v0, v4, s1
	add	a3, s8, s0
	vmv8r.v	v24, v8
	add	s1, s7, a4
	vmv8r.v	v16, v8
	vsetvli	zero, zero, e64, m8, ta, mu
	vle64.v	v24, (a3), v0.t
	vle64.v	v16, (s1), v0.t
	addi	a1, a1, 16
	addi	s0, s0, 128
	addi	a4, a4, 128
	vfmul.vf	v16, v16, fa5
	vfadd.vv	v16, v24, v16
	vse64.v	v16, (a3), v0.t
	addi	a5, a5, -16
.LBB0_8:                                #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	blt	s6, a1, .LBB0_4
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=3
	li	a3, 16
	mv	s1, a5
	blt	a5, a3, .LBB0_7
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=3
	li	s1, 16
	j	.LBB0_7
.LBB0_11:
	sd	t4, 0(a0)
	sd	s8, 8(a0)
	sd	t3, 16(a0)
	sd	t2, 24(a0)
	sd	t1, 32(a0)
	sd	t0, 40(a0)
	sd	a6, 48(a0)
	ld	s0, 72(sp)                      # 8-byte Folded Reload
	ld	s1, 64(sp)                      # 8-byte Folded Reload
	ld	s2, 56(sp)                      # 8-byte Folded Reload
	ld	s3, 48(sp)                      # 8-byte Folded Reload
	ld	s4, 40(sp)                      # 8-byte Folded Reload
	ld	s5, 32(sp)                      # 8-byte Folded Reload
	ld	s6, 24(sp)                      # 8-byte Folded Reload
	ld	s7, 16(sp)                      # 8-byte Folded Reload
	ld	s8, 8(sp)                       # 8-byte Folded Reload
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	.cfi_restore s4
	.cfi_restore s5
	.cfi_restore s6
	.cfi_restore s7
	.cfi_restore s8
	addi	sp, sp, 80
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
	lui	a0, 20
	addiw	a0, a0, -1856
	call	malloc
	mv	s0, a0
	addi	a0, a0, 63
	andi	s1, a0, -64
	addi	a0, sp, 280
	call	test_assemble
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
	lui	t1, %hi(.L__constant_100x100xf64)
	addi	t1, t1, %lo(.L__constant_100x100xf64)
	lui	s1, 228023
	lui	t2, 5702
	addi	t3, sp, 184
	slli	s1, s1, 2
	addi	s1, s1, -273
	sd	a0, 96(sp)
	sd	s1, 104(sp)
	sd	t1, 112(sp)
	sd	t0, 152(sp)
	lui	a0, 411206
	addi	s1, t2, 1124
	vse64.v	v12, (sp)
	vmv.s.x	v10, s1
	addi	s1, sp, 120
	addi	a0, a0, 1024
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
	fld	fa5, 808(a0)
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
	.p2align	5, 0x0                          # -- Begin function test_assemble
.LCPI2_0:
	.quad	0                               # 0x0
	.quad	1999                            # 0x7cf
	.quad	1                               # 0x1
	.quad	100                             # 0x64
.LCPI2_1:
	.quad	0                               # 0x0
	.quad	1999                            # 0x7cf
	.quad	1                               # 0x1
	.quad	3735928559                      # 0xdeadbeef
.LCPI2_2:
	.quad	0                               # 0x0
	.quad	101                             # 0x65
	.quad	1                               # 0x1
	.quad	3735928559                      # 0xdeadbeef
	.text
	.globl	test_assemble
	.p2align	1
	.type	test_assemble,@function
test_assemble:                          # @test_assemble
	.cfi_startproc
# %bb.0:
	lui	a1, %hi(.L__constant_101xindex)
	addi	a1, a1, %lo(.L__constant_101xindex)
	lui	a7, %hi(.L__constant_1999xindex)
	addi	a7, a7, %lo(.L__constant_1999xindex)
	lui	t0, %hi(.L__constant_1999xf64)
	addi	t0, t0, %lo(.L__constant_1999xf64)
	li	a6, 101
	li	a5, 100
	lui	a4, 228023
	lui	a2, %hi(.LCPI2_0)
	addi	a2, a2, %lo(.LCPI2_0)
	addi	a3, a0, 96
	vsetivli	zero, 4, e64, m2, ta, ma
	vle64.v	v8, (a2)
	lui	a2, %hi(.LCPI2_1)
	addi	a2, a2, %lo(.LCPI2_1)
	vle64.v	v10, (a2)
	ld	a2, 800(a1)
	slli	a4, a4, 2
	addi	a4, a4, -273
	sd	a4, 0(a0)
	sd	a1, 8(a0)
	sd	a7, 48(a0)
	sd	t0, 88(a0)
	lui	a1, %hi(.LCPI2_2)
	addi	a1, a1, %lo(.LCPI2_2)
	sd	a5, 128(a0)
	sd	a6, 136(a0)
	sd	a2, 144(a0)
	sd	a2, 152(a0)
	vse64.v	v8, (a3)
	vle64.v	v8, (a1)
	addi	a1, a0, 56
	vse64.v	v10, (a1)
	addi	a0, a0, 16
	vse64.v	v8, (a0)
	ret
.Lfunc_end2:
	.size	test_assemble, .Lfunc_end2-test_assemble
	.cfi_endproc
                                        # -- End function
	.type	.L__constant_100x100xf64,@object # @__constant_100x100xf64
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
.L__constant_100x100xf64:
	.quad	0x3fe9edf9891c4521              # double 0.8102996519029696
	.quad	0x3fe4dfc9a736a96d              # double 0.65231783541575583
	.quad	0x3fc8a17be37787f0              # double 0.1924280987432776
	.quad	0x3feadf6cbf91184a              # double 0.83977353492151363
	.quad	0x3fe6b36a8b216787              # double 0.7094013898269943
	.quad	0x3fcfceac15b26368              # double 0.24849463519492621
	.quad	0x3febab6b73c69370              # double 0.86467526066244993
	.quad	0x3fd61f9821022984              # double 0.34567836020928433
	.quad	0x3fc023682f5f1500              # double 0.12608053505952199
	.quad	0x3fb061adef9a7100              # double 0.063990469929596117
	.quad	0x3fe150901823f753              # double 0.54108433451595273
	.quad	0x3fe409f7374b6813              # double 0.62621651458471417
	.quad	0x3fe48d0ae136d05e              # double 0.64221710192806447
	.quad	0x3fb6dc4881a519e0              # double 0.089298755313485412
	.quad	0x3fec98426a498981              # double 0.89358635672788023
	.quad	0x3fc8eac9c0a74914              # double 0.19466516405970735
	.quad	0x3fe402b9918bcb4f              # double 0.6253326265999507
	.quad	0x3fbe5d58b39c1508              # double 0.11861185441019384
	.quad	0x3f7c1afb00851400              # double 0.006861668087656092
	.quad	0x3f93b9850a0f3f60              # double 0.019262388934122909
	.quad	0x3fe16018104d681f              # double 0.5429802244573273
	.quad	0x3feacb23adc2ee33              # double 0.83729728639395373
	.quad	0x3fc99cf10aeb6e20              # double 0.20010197671113961
	.quad	0x3fe98d0719cc8868              # double 0.7984652999769084
	.quad	0x3feebcfb4636be88              # double 0.96056903566018636
	.quad	0x3fe286b568d369af              # double 0.57894392465396105
	.quad	0x3fe8305ae9bbed46              # double 0.75590272570790584
	.quad	0x3feffd46f5815241              # double 0.9996676249525721
	.quad	0x3fd8b3807d47cf5c              # double 0.38595592722344008
	.quad	0x3fec090d5966414f              # double 0.87610499821497878
	.quad	0x3fe57acf80f7db18              # double 0.6712415236387157
	.quad	0x3fbe322eb069eea0              # double 0.11795322234132266
	.quad	0x3fcb08e1b17270e0              # double 0.2112085453453636
	.quad	0x3fed046890f868fe              # double 0.90678814234277616
	.quad	0x3fd9db2dba12ec12              # double 0.40400260134964683
	.quad	0x3fc6ae9089745e14              # double 0.17720228873871291
	.quad	0x3fe0a873acbdadd8              # double 0.52056297052825595
	.quad	0x3fe87ec0ed0882be              # double 0.76547285361819895
	.quad	0x3fe836a923cc62e6              # double 0.75667244903442277
	.quad	0x3fddc73954935d8c              # double 0.46528466471996732
	.quad	0x3fd75d1d7c540b88              # double 0.36505829945979729
	.quad	0x3fe5cca75bc20089              # double 0.68123214646767949
	.quad	0x3f4084be18972400              # double 5.0410539659495601E-4
	.quad	0x3fb090eed51ee930              # double 0.064711501151496931
	.quad	0x3feda7cb9c73c320              # double 0.92673283154553942
	.quad	0x3feb0f52883b4196              # double 0.84562040908535852
	.quad	0x3fdb3e2ac03dc7b4              # double 0.42566937230651125
	.quad	0x3fe4a7bbea7bdf83              # double 0.64547534749634428
	.quad	0x3fe833b081286901              # double 0.7563097498525907
	.quad	0x3fdbe42a4bae3f60              # double 0.43580109968842429
	.quad	0x3fc5459ccd9de584              # double 0.16618690528757096
	.quad	0x3fd9e23ff8a94f3e              # double 0.40443419726692642
	.quad	0x3fe01e64c3c4cff0              # double 0.50371015773862204
	.quad	0x3fe66cd2430fc1ef              # double 0.70078385446509894
	.quad	0x3fc94595008dd980              # double 0.197435975332791
	.quad	0x3fe8049b9b28e924              # double 0.75056248001718417
	.quad	0x3fee20bedf4ad830              # double 0.94149726497449215
	.quad	0x3fda2963223f2c1c              # double 0.40877607674036809
	.quad	0x3fc50154ecc1012c              # double 0.16410314140558435
	.quad	0x3fed953e4f54d18e              # double 0.92446818823241173
	.quad	0x3fc2a5aa8b336d78              # double 0.14568073079031385
	.quad	0x3fb92363a71e69e0              # double 0.098196247387398738
	.quad	0x3fa84f85d090cac0              # double 0.047481710157077028
	.quad	0x3fcfd6a0036f3150              # double 0.2487373368043202
	.quad	0x3fd13a1d95bfc51a              # double 0.2691720926660125
	.quad	0x3fd1f700b1781464              # double 0.28070084887469293
	.quad	0x3fd4f05b724cf84e              # double 0.32717024004148676
	.quad	0x3fd88d4f0371741c              # double 0.38362479530570837
	.quad	0x3fbe85d28c62d4c8              # double 0.11922946860689188
	.quad	0x3fb92c78c1d3de18              # double 0.09833483440512969
	.quad	0x3fc729569cb431ec              # double 0.18094904567296
	.quad	0x3fb75005587483a0              # double 0.09106477174328953
	.quad	0x3fe9e418c91ec799              # double 0.80909384995742351
	.quad	0x3fe08f988d8cb172              # double 0.51752879759219028
	.quad	0x3fdbca0c9da64b32              # double 0.43420710940806651
	.quad	0x3fe4ed89e1afb441              # double 0.65399641112674811
	.quad	0x3fc4ad68ea578644              # double 0.1615420479056856
	.quad	0x3fee55cc3d811d8f              # double 0.94797336590356618
	.quad	0x3fee4eec02fbaf56              # double 0.94713402350087494
	.quad	0x3fe67c6a8d6ef783              # double 0.70268752692912562
	.quad	0x3fe3d4dc261de938              # double 0.6197338814229516
	.quad	0x3fbb2f0117732100              # double 0.10618597815039621
	.quad	0x3feb54e15521372a              # double 0.85411135317710785
	.quad	0x3fe048ec6b7e55dc              # double 0.50890179629157783
	.quad	0x3fdecad2d7a37364              # double 0.48112937029309522
	.quad	0x3fe772289ba78ccc              # double 0.73268537904041287
	.quad	0x3fd28d3f19a2975e              # double 0.28987100127630139
	.quad	0x3fec67c8433dc23c              # double 0.88766873486571951
	.quad	0x3fe9554bfc105afb              # double 0.79166220885494398
	.quad	0x3fe54430b8de578e              # double 0.66457401377805225
	.quad	0x3fe66f66bd4fca30              # double 0.70109879469811709
	.quad	0x3fc921ba6e917c48              # double 0.19634180449335958
	.quad	0x3fc659af39209c3c              # double 0.17461195268080754
	.quad	0x3fc35ea7bf0388d8              # double 0.15132614924284016
	.quad	0x3feb8c1cc0b6fd68              # double 0.86085355414972486
	.quad	0x3fef7d1188e8a38d              # double 0.9840171503066003
	.quad	0x3fc340ca718e5298              # double 0.15041475815509808
	.quad	0x3fea4268dcbeb04a              # double 0.82060664285882834
	.quad	0x3fe87c456302e2ef              # double 0.76516980493678755
	.quad	0x3fa44ca4d2e8b1d0              # double 0.03964724611828141
	.quad	0x3fa39bcef12c8870              # double 0.038298098507099421
	.quad	0x3fdc0ddaaae2a4ce              # double 0.43834559143085705
	.quad	0x3fec412b514687fe              # double 0.88295522569774199
	.quad	0x3feb1a908fbdf5f6              # double 0.84699276041618421
	.quad	0x3fd7378dd196d8d8              # double 0.36276574580859977
	.quad	0x3fe6a26e3a248722              # double 0.70732795101159618
	.quad	0x3fdc5da4f9309362              # double 0.44321560225426115
	.quad	0x3fe86103fe4e2b86              # double 0.76184272450460422
	.quad	0x3fda38e70616ae04              # double 0.40972304911221635
	.quad	0x3fb39e39dfee1cd8              # double 0.076633088274422945
	.quad	0x3fe8095d6425d5b7              # double 0.75114316520801239
	.quad	0x3feac2a111d70ecf              # double 0.83625844463719001
	.quad	0x3fdcf6c7e67f1bba              # double 0.4525623084013507
	.quad	0x3fce242a3cad1914              # double 0.23547866785720173
	.quad	0x3fc1dba7d06ac304              # double 0.13951585461247629
	.quad	0x3fe230a9f349578e              # double 0.56844041363614095
	.quad	0x3fb8cb09cf49d048              # double 0.096848118884566792
	.quad	0x3feef50e6f70361c              # double 0.96741410985277154
	.quad	0x3fd4db46d7fdc39c              # double 0.32588358967682907
	.quad	0x3fd091e8b9f4e89e              # double 0.25890558395225038
	.quad	0x3fe454aecd5947b1              # double 0.63533725840738076
	.quad	0x3fcf58ea1a2ad598              # double 0.24490095403386358
	.quad	0x3fe3cc5f8feaf8f5              # double 0.6186979113479355
	.quad	0x3feaa5b4ae2fa375              # double 0.83272775669784826
	.quad	0x3fd0d9093de242c0              # double 0.26324683230727075
	.quad	0x3feb34d06c8c007b              # double 0.85019704056323009
	.quad	0x3fe40f323493f2e1              # double 0.62685499447942672
	.quad	0x3f9cc1a0d735cce0              # double 0.028082383284936507
	.quad	0x3fd4147b74e08a54              # double 0.31375013746052116
	.quad	0x3fe1ae5d209970d3              # double 0.55253464095178584
	.quad	0x3fdfa24445f1b184              # double 0.4942789729164121
	.quad	0x3fe87a8a6e62e462              # double 0.76495858726333332
	.quad	0x3fe699404c64aa5a              # double 0.70620741768409379
	.quad	0x3feb870de57772e7              # double 0.86023611848540049
	.quad	0x3fe000072aaec18d              # double 0.50000341736272136
	.quad	0x3fe874e00b51cc4b              # double 0.76426698885769306
	.quad	0x3fb52717226186a8              # double 0.082627721685208599
	.quad	0x3fe1759876ac6b85              # double 0.54560492685719508
	.quad	0x3fc9179a043209b4              # double 0.19603276448112938
	.quad	0x3fd82ba2b8a26c14              # double 0.37766330748280663
	.quad	0x3fee26110af3e3c9              # double 0.94214679850767269
	.quad	0x3fea3eb647050284              # double 0.82015527602204985
	.quad	0x3fd25247b9e0e74a              # double 0.28627198364448658
	.quad	0x3fbd181fd144e1b0              # double 0.11364935740574
	.quad	0x3fe4371b2182ef5d              # double 0.63172680421073901
	.quad	0x3fe4db97dfcc51e9              # double 0.65180581770488033
	.quad	0x3fe5986e6d11f4f7              # double 0.67485734274637721
	.quad	0x3fd3cec55198eec8              # double 0.30949528664107762
	.quad	0x3fab2bbc99af0060              # double 0.053068059692578329
	.quad	0x3fea66daa26a6e2f              # double 0.82505542489838557
	.quad	0x3fb53da0506030d0              # double 0.082971591589912963
	.quad	0x3fe6bd80e8bf46f5              # double 0.71063275774414925
	.quad	0x3fd8db710b91c762              # double 0.38839365129307712
	.quad	0x3fec8999d77946b4              # double 0.89179699024881253
	.quad	0x3fe9da38d056b5b0              # double 0.80788841906694664
	.quad	0x3fb2e88dd12d2638              # double 0.073860992020080896
	.quad	0x3fe55d5f5f5f6a91              # double 0.66764801623806325
	.quad	0x3feeee9d5880727c              # double 0.96662776265618743
	.quad	0x3fdf6514dafb18f6              # double 0.49054452309464069
	.quad	0x3fc147d4de610f4c              # double 0.13500462396961621
	.quad	0x3fd0e44f5a6639a6              # double 0.26393493488367381
	.quad	0x3fead074814cd542              # double 0.83794617895060974
	.quad	0x3fd6a4038a369710              # double 0.35376060960185018
	.quad	0x3fc4710eaa7e9e64              # double 0.15970023465091565
	.quad	0x3fdb2776fdecec6e              # double 0.42428374097261823
	.quad	0x3fed36ee04e4be06              # double 0.91295529323355207
	.quad	0x3fea3c466fd7404c              # double 0.81985780567084409
	.quad	0x3fc60ad106392774              # double 0.17220509342069656
	.quad	0x3fcb2e2d43fc12bc              # double 0.21234670466960448
	.quad	0x3fe9fea95df4129c              # double 0.81233661985659777
	.quad	0x3fbb6943bbe5cc40              # double 0.10707496011109274
	.quad	0x3feed6a8a46140f2              # double 0.96370346169899634
	.quad	0x3fcb0ab97d635c54              # double 0.21126478788821379
	.quad	0x3fea0563eab60ef6              # double 0.81315799562477653
	.quad	0x3fefdb46b4449d3d              # double 0.99551711281393517
	.quad	0x3fe8fa522a3a0a82              # double 0.78055675742537312
	.quad	0x3fe6a43ded4fe8b0              # double 0.70754906034496479
	.quad	0x3feb83d7084172fa              # double 0.85984374630387994
	.quad	0x3feea90aa346a652              # double 0.9581349553092855
	.quad	0x3fe443f8182f38f2              # double 0.63329701159980645
	.quad	0x3fef177b74a13487              # double 0.97161648539771838
	.quad	0x3fee3146be2e882f              # double 0.94351517815471719
	.quad	0x3fd06c577952595c              # double 0.2566126522809975
	.quad	0x3fd48422aab8c122              # double 0.32056490585365982
	.quad	0x3fe0b081a707fd9b              # double 0.52154619811328773
	.quad	0x3fbdaa39cdf0b3b0              # double 0.11587868955457625
	.quad	0x3fefe81992efe378              # double 0.99708250712056578
	.quad	0x3fd7a0a288881288              # double 0.36917937596471306
	.quad	0x3fdbfbeb580357b6              # double 0.43725093455338582
	.quad	0x3fe572323705780b              # double 0.67018995996818498
	.quad	0x3fb84b0e99d47438              # double 0.094895279461028603
	.quad	0x3fdecba468e45a8c              # double 0.48117933505401633
	.quad	0x3fd83e35ab063e1c              # double 0.37879697515106314
	.quad	0x3fdb2f69739ba922              # double 0.42476879396294198
	.quad	0x3fe8e65e386157c9              # double 0.77812109958426234
	.quad	0x3fee0eae68a0ba7b              # double 0.93929214892507618
	.quad	0x3fd8d9d35f95308e              # double 0.38829502424483386
	.quad	0x3fb603f301764138              # double 0.085997760636250642
	.quad	0x3fdffa1b500d3946              # double 0.49964030091804934
	.quad	0x3fe0576608dcf5f8              # double 0.51066877108649944
	.quad	0x3fef125cc6a2c8e3              # double 0.97099150463170891
	.quad	0x3fe4160efdabb4f2              # double 0.62769269509376913
	.quad	0x3fea5d1938f05234              # double 0.82386456604814961
	.quad	0x3fe49f868ae9bbe4              # double 0.64447333461236811
	.quad	0x3fe0bf0d14d33612              # double 0.52332166736022345
	.quad	0x3fee7f0054f04b4f              # double 0.95300308789806276
	.quad	0x3fc3f104e2aec77c              # double 0.15579281872265571
	.quad	0x3fcda162718ccf98              # double 0.23148756546436
	.quad	0x3fe204822610559e              # double 0.56305034097993079
	.quad	0x3fb6f03991c87510              # double 0.089603040782510356
	.quad	0x3fe2d647b0d90bbb              # double 0.58865723171799489
	.quad	0x3fe0a6652cdffc63              # double 0.52031191601407689
	.quad	0x3fb378201bd9bdb0              # double 0.076051718520594446
	.quad	0x3fe304cd30d5ac8b              # double 0.59433612382908174
	.quad	0x3fe7e3c6697458ed              # double 0.74655457111910339
	.quad	0x3fe7f693fcb65177              # double 0.74884986265037312
	.quad	0x3fe6c002be715c9f              # double 0.71093880840171042
	.quad	0x3fdea381cf0320cc              # double 0.47872967926060706
	.quad	0x3fde2e7bd25ac4e4              # double 0.47158713858068624
	.quad	0x3feac6a6bbb1a659              # double 0.83674942645047701
	.quad	0x3fd5eaf5218c30bc              # double 0.34246567035803444
	.quad	0x3fe9bff6fbbe1621              # double 0.80468320053541131
	.quad	0x3fe02c2d4f690dfe              # double 0.50539269933545916
	.quad	0x3fd364a4b0658b8e              # double 0.30301778055416484
	.quad	0x3fc7c3702f65f838              # double 0.18565180124636682
	.quad	0x3fe0f5a364698d00              # double 0.52998513805178504
	.quad	0x3fe978dca14dda11              # double 0.79600364212712027
	.quad	0x3fade9719fb1f500              # double 0.058421660179172719
	.quad	0x3fec85b921d66840              # double 0.8913236294640754
	.quad	0x3fed81dc625be4dc              # double 0.92210215769514602
	.quad	0x3fe8e846999dea6c              # double 0.77835397723477006
	.quad	0x3fe9955a43169f93              # double 0.79948151686856972
	.quad	0x3fe73c2e7861acb2              # double 0.72609637748737144
	.quad	0x3faa97e913547c50              # double 0.051940234765645799
	.quad	0x3fe2f5f6586fa705              # double 0.59252469322856938
	.quad	0x3fd19af7d1d22ae2              # double 0.27508349886254113
	.quad	0x3fe64cb56bb96297              # double 0.69686385192751998
	.quad	0x3fd49f6ea39ae8ce              # double 0.32223096825658792
	.quad	0x3fa7dd00343b13b0              # double 0.046607977271868051
	.quad	0x3fe375cc96590aff              # double 0.60812978138741858
	.quad	0x3fc251465e550d60              # double 0.1431053124052637
	.quad	0x3fddce563de43fd0              # double 0.46571880382634578
	.quad	0x3fc956d9b8f8b330              # double 0.19796296626864196
	.quad	0x3fde19045bf44dcc              # double 0.47027691821969309
	.quad	0x3fe9515ab2398d6b              # double 0.79118094262632377
	.quad	0x3fd5785e7adcf20c              # double 0.33547174452158468
	.quad	0x3fe8ff20aa8e8b3b              # double 0.78114350616338102
	.quad	0x3fddfeeb21e284e8              # double 0.46868398961130575
	.quad	0x3fe692234c72bde5              # double 0.70533909732142475
	.quad	0x3fd5e6ddfbc949d2              # double 0.34221601093773046
	.quad	0x3fb03bb58dc665b8              # double 0.063411090004953929
	.quad	0x3fd1dd6e7122b430              # double 0.279140100940654
	.quad	0x3fe65f5741c2478e              # double 0.69913828700576786
	.quad	0x3fdc258c8b4ba91c              # double 0.43979180911141369
	.quad	0x3fe24d670e3318cc              # double 0.57194855473860562
	.quad	0x3fe8bfcbb109a71b              # double 0.77341255738903969
	.quad	0x3febdce1c4ac2154              # double 0.8707131234414569
	.quad	0x3fdfd8903a8f8c74              # double 0.49759298056432688
	.quad	0x3fc9e11d446756e8              # double 0.20218244400046292
	.quad	0x3fee7fb3f896bc4d              # double 0.95308874657156084
	.quad	0x3fa648c903961f80              # double 0.04352405709056395
	.quad	0x3fe60ebdeb66f7cf              # double 0.68929954506870128
	.quad	0x3fd41fe8c6f876cc              # double 0.31444758825987829
	.quad	0x3fec7b865f3af74e              # double 0.89007872199702276
	.quad	0x3fd27ac08a4d418c              # double 0.28874219423325864
	.quad	0x3febbe63bff45e84              # double 0.86699092379690556
	.quad	0x3fedff97f90c39fe              # double 0.93745039598599056
	.quad	0x3fcf1d4a8ed13ab4              # double 0.24308139775754045
	.quad	0x3fe3cfca92b70aff              # double 0.61911514907146159
	.quad	0x3fef1d9412ce4106              # double 0.97236064599022209
	.quad	0x3fe7330924889ffd              # double 0.72497994552122658
	.quad	0x3fce41e68b5337d0              # double 0.23638612559301331
	.quad	0x3fcd46c93d69c7e8              # double 0.22872272013370254
	.quad	0x3fe6e2ed922bb6cb              # double 0.71520117329574739
	.quad	0x3fea5a811279b9c2              # double 0.82354787453169132
	.quad	0x3fd8221ce64c0a66              # double 0.37708208551354117
	.quad	0x3fe35be3d3ccbae2              # double 0.60496703498014548
	.quad	0x3fc906ebabc5f4b0              # double 0.19552369963995408
	.quad	0x3fe9efeb811158fa              # double 0.81053710182712213
	.quad	0x3fd301dc35cad86a              # double 0.29698853734169595
	.quad	0x3fd3b667081ccb46              # double 0.30800796310648015
	.quad	0x3fd40ce256e5c9ae              # double 0.31328638540358156
	.quad	0x3fea68d973ce0137              # double 0.82529900186640404
	.quad	0x3fe662b8d0f9e8cf              # double 0.69955101791063068
	.quad	0x3fc2f7bb10119664              # double 0.148185141416593
	.quad	0x3fd53f50e200da08              # double 0.3319894988120784
	.quad	0x3fef306473c4330c              # double 0.974657274347551
	.quad	0x3fe900c9b558c6ee              # double 0.78134618205350903
	.quad	0x3fefdec8cec13bb5              # double 0.99594536191749816
	.quad	0x3feadde26ea34f08              # double 0.83958551033944762
	.quad	0x3fdd98d5554acd68              # double 0.46245320634189691
	.quad	0x3fe7996e1d20901f              # double 0.73747926415353848
	.quad	0x3fefd83a347d399b              # double 0.99514494182385548
	.quad	0x3fc760cc831d4bc0              # double 0.18264156724998593
	.quad	0x3fd215c4cb210a46              # double 0.28257865750143585
	.quad	0x3fe97b52f5b7be0b              # double 0.79630420676943581
	.quad	0x3fd1394b1db588b0              # double 0.26912191296845389
	.quad	0x3fe173ce1d2826a5              # double 0.54538636870093582
	.quad	0x3fa67bd824008b90              # double 0.043913607020178991
	.quad	0x3fc3c6699dec6f28              # double 0.15449257098304625
	.quad	0x3fe7a19bd6241518              # double 0.73847762894061741
	.quad	0x3f9aade95784d4a0              # double 0.026054044691779965
	.quad	0x3faff8d4fc3137b0              # double 0.062445312295138833
	.quad	0x3fb941f5495ffb60              # double 0.098662691510964517
	.quad	0x3fe706a289f34c8f              # double 0.71955992644724798
	.quad	0x3fd2086a06ccd716              # double 0.28176355995252444
	.quad	0x3fe5fb792ab89ec9              # double 0.68694742530802799
	.quad	0x3fcdcbf45efaafec              # double 0.23278669965418375
	.quad	0x3fc832c967610704              # double 0.18904988811305412
	.quad	0x3fec9c96f97c19ec              # double 0.89411495902532811
	.quad	0x3f81125feafe20c0              # double 0.0083358281697346603
	.quad	0x3fec8d26319b2346              # double 0.89223012627289999
	.quad	0x3fd1903c1a79208e              # double 0.2744283922697911
	.quad	0x3fee7494fc90bc62              # double 0.95173119858908373
	.quad	0x3fd6ab3f4bfe714a              # double 0.35420210286408305
	.quad	0x3fd2e9e638596eda              # double 0.29552608015886295
	.quad	0x3feb17fa1db71420              # double 0.84667688182583233
	.quad	0x3feae73ddbe3bf47              # double 0.84072773883051688
	.quad	0x3fe3e5d8e81db897              # double 0.62180753073859563
	.quad	0x3fd73528ddd3fab4              # double 0.36261960661787929
	.quad	0x3fcaa3cb9adb39c4              # double 0.20812363683076118
	.quad	0x3fb1515c85b11078              # double 0.067647726668896513
	.quad	0x3fe3ed5666811ed3              # double 0.6227218629873853
	.quad	0x3fee77d3f4377093              # double 0.95212743471667449
	.quad	0x3fe1561b7c4b124c              # double 0.54176115299248684
	.quad	0x3fe5e02d01cf68d2              # double 0.68361521104386669
	.quad	0x3fd35637cf7e5f36              # double 0.30213732970286189
	.quad	0x3fe321271089139a              # double 0.59779694776135561
	.quad	0x3fe81285064b01ce              # double 0.75226069668866002
	.quad	0x3fd8516819496208              # double 0.37996866673850649
	.quad	0x3fdfc7aca7d9e95c              # double 0.49656216041298307
	.quad	0x3fee41542a4e1d02              # double 0.94547470343323448
	.quad	0x3fa54e2b4edde180              # double 0.041612008454595006
	.quad	0x3fdcdfa44d9dd6fe              # double 0.4511500127767788
	.quad	0x3fe75a199707a785              # double 0.72974853036906551
	.quad	0x3fe66f6e3d96f496              # double 0.70110237149460164
	.quad	0x3fe1dfe173cde2ea              # double 0.55857918375030846
	.quad	0x3f95d1c3185fee40              # double 0.021307991373744395
	.quad	0x3fdf4eff5b3c99b4              # double 0.48919662389598817
	.quad	0x3fd2397d2fcd6a08              # double 0.28475885074809115
	.quad	0x3fd2613f8cf3dba4              # double 0.28718556179904398
	.quad	0x3fa568b575ea48c0              # double 0.041814489978734937
	.quad	0x3fe87261353b22cb              # double 0.76396236797980899
	.quad	0x3fdb3eb5d8b80ef0              # double 0.42570253528559387
	.quad	0x3fc46cc6908de89c              # double 0.15956956919018672
	.quad	0x3feaed5f1bc5c5e9              # double 0.84147601532293692
	.quad	0x3fa1a45993a8d970              # double 0.034457015299653615
	.quad	0x3fd5eccd47a33464              # double 0.34257823940135368
	.quad	0x3fe7144175de9d77              # double 0.72122262021450367
	.quad	0x3fe6c5c9226dde55              # double 0.71164375996063234
	.quad	0x3fe02f4a168af779              # double 0.50577263262651606
	.quad	0x3fe68a4f5efcd6d7              # double 0.70438355018878951
	.quad	0x3facacc0a2d3da70              # double 0.056005496860895287
	.quad	0x3fc32a5404fe86a0              # double 0.14972925418719729
	.quad	0x3fe7ca17231af331              # double 0.74341923576830571
	.quad	0x3fdb75bbeb6416fa              # double 0.42906091678047142
	.quad	0x3fd791f53a2d23d6              # double 0.36828356438905752
	.quad	0x3fee9590bc7c3584              # double 0.95575749219430905
	.quad	0x3fd0802ddf366af0              # double 0.25782343671896424
	.quad	0x3f694734905ffe00              # double 0.0030857111587463404
	.quad	0x3fe6f321da51df67              # double 0.71717922821606528
	.quad	0x3fba90e571c398b8              # double 0.10377344157641033
	.quad	0x3fe0a232341eb781              # double 0.51979932956395214
	.quad	0x3fdea873e3d887a4              # double 0.47903153658455211
	.quad	0x3fd3c6f520f24f2c              # double 0.30901840417321824
	.quad	0x3fecd71ae6c87880              # double 0.90125794482061394
	.quad	0x3feb8b5f175a0967              # double 0.86076311646347115
	.quad	0x3fc1c13222ceadb8              # double 0.13870836925103247
	.quad	0x3f8d468c5e224c40              # double 0.014294716475239722
	.quad	0x3fef5d6220a83ccc              # double 0.98014932993273751
	.quad	0x3fde1b03707cb1c0              # double 0.47039876923625101
	.quad	0x3fc909527e8b4b3c              # double 0.19559699229156446
	.quad	0x3fb78a83a482f620              # double 0.091957309402424858
	.quad	0x3fecba827696afce              # double 0.89776728784408433
	.quad	0x3fe78b0fc01a2070              # double 0.73572528381283853
	.quad	0x3fde386aae985e40              # double 0.4721934037238249
	.quad	0x3fdf1cd3da47246a              # double 0.48613449398232567
	.quad	0x3fd3c5861394b06a              # double 0.30893089210690639
	.quad	0x3fec0b614021092e              # double 0.87638914609150276
	.quad	0x3fe116da84a13774              # double 0.53403974441765323
	.quad	0x3fd4b73f43d43cd2              # double 0.32368451713496171
	.quad	0x3fec844e80e127c9              # double 0.89115071460514017
	.quad	0x3fb4e107a1fec9a0              # double 0.081558682489037526
	.quad	0x3feb5659b43f7eae              # double 0.85429082112019272
	.quad	0x3fe2ed12976f57fa              # double 0.59143952920089693
	.quad	0x3fc3394b2762ef88              # double 0.15018596099059445
	.quad	0x3fc2f7d964d46a4c              # double 0.14818875716521729
	.quad	0x3fd17cfd2c71061c              # double 0.2732537206648844
	.quad	0x3fedd021729d4462              # double 0.93165657411203662
	.quad	0x3fee7a6bcad96efa              # double 0.95244397753728482
	.quad	0x3feb8d77cf263690              # double 0.86101904352990921
	.quad	0x3fd2bf22022fa0e8              # double 0.29291582311135622
	.quad	0x3fc98826a00ff45c              # double 0.19946749511283002
	.quad	0x3fdcbdaf475aa07c              # double 0.44907743423619428
	.quad	0x3fc9d4c27917b994              # double 0.20180540955284398
	.quad	0x3fe7a0528021bc4f              # double 0.73832058931101041
	.quad	0x3fe8731f80296606              # double 0.76405310660919734
	.quad	0x3fe991e5fee1e3ac              # double 0.7990598657771577
	.quad	0x3fe606ff8e693e21              # double 0.68835428061169435
	.quad	0x3fd96a419494fc70              # double 0.39711036214789086
	.quad	0x3fcc8d11eb864f6c              # double 0.22305511474825879
	.quad	0x3febb38a745e12f4              # double 0.86566660621664803
	.quad	0x3fc7dd35df49e474              # double 0.18643830683484774
	.quad	0x3fbbdb20bce52f50              # double 0.10881237613392369
	.quad	0x3fe5d4fff98fa3c6              # double 0.68225096456910062
	.quad	0x3feedef8ab2d6c90              # double 0.96471818383305852
	.quad	0x3feea9348e9e8cf8              # double 0.95815494399394562
	.quad	0x3fe130f22a3299b7              # double 0.53722484819154814
	.quad	0x3fe8a636f122338f              # double 0.77028987022787188
	.quad	0x3fd55abe619bc484              # double 0.3336635544974984
	.quad	0x3fdaaf87561bea92              # double 0.416963419047229
	.quad	0x3fa61334097c9d10              # double 0.043115259321263477
	.quad	0x3fe24e987cbfb64a              # double 0.57209419598593425
	.quad	0x3f99a19ed64fcf60              # double 0.025030595617820395
	.quad	0x3fe07b78adf6c435              # double 0.5150721929295573
	.quad	0x3fea56e4ab23260d              # double 0.82310708451513082
	.quad	0x3fe14b85c31d9d26              # double 0.54046905621081431
	.quad	0x3fe63ddb368c1074              # double 0.69505081800208623
	.quad	0x3fee9d92ef1eebc4              # double 0.95673510268476791
	.quad	0x3fedfd5a1cdb57c7              # double 0.93717675815673196
	.quad	0x3fef9dd1f18d15f5              # double 0.98801514795257949
	.quad	0x3fa954255cfee9a0              # double 0.049470107652683781
	.quad	0x3feec24afa9bc176              # double 0.96121739336926626
	.quad	0x3feab54e62e361a6              # double 0.83463210405448218
	.quad	0x3fe33cd7f9af624b              # double 0.60117720381374207
	.quad	0x3fd8ed5f0eac2e98              # double 0.38948799546117518
	.quad	0x3fe7ca4da3961a7c              # double 0.74344522428948734
	.quad	0x3fc590ce4fe220a0              # double 0.16848162556221258
	.quad	0x3fe9ec6b68c94607              # double 0.81010981050548103
	.quad	0x3fc607835136a240              # double 0.17210427728174871
	.quad	0x3fc9cafeee0e606c              # double 0.20150744079433325
	.quad	0x3fe22f31aaea6297              # double 0.5682609880633035
	.quad	0x3fd69664c93619ac              # double 0.35292930268806333
	.quad	0x3fe20e9422ec9dc2              # double 0.56427962132595888
	.quad	0x3fed819aa518a5f7              # double 0.92207081075065289
	.quad	0x3fe2a473fb701994              # double 0.58257483586276004
	.quad	0x3fdaf948719c4584              # double 0.42146502585190881
	.quad	0x3fec337c2bdb0953              # double 0.88128479543255833
	.quad	0x3fe611f3cd2bcc74              # double 0.68969144890287604
	.quad	0x3fee82dfb0bb826d              # double 0.95347580450113656
	.quad	0x3fafd2001bb22030              # double 0.062149051075778394
	.quad	0x3fcd512b46ba3ac0              # double 0.22903958276261527
	.quad	0x3fed880158082071              # double 0.92285220330906104
	.quad	0x3fe8b006bcaccc42              # double 0.77148758745750734
	.quad	0x3fe275731524463b              # double 0.57683710221517204
	.quad	0x3fe64d43d864fe76              # double 0.69693176521827982
	.quad	0x3fee8860b73500ac              # double 0.95414768011689465
	.quad	0x3fd1ac3e13fc3b42              # double 0.27613784743964598
	.quad	0x3fdd03e505e8f51e              # double 0.45336270882747154
	.quad	0x3fc5bc61a759d7c8              # double 0.16981144591744468
	.quad	0x3fba305592243f98              # double 0.10230002229604762
	.quad	0x3fec09f6fc3e2aeb              # double 0.87621640459232475
	.quad	0x3fed02fb6ae8acfd              # double 0.90661402588503359
	.quad	0x3fbffeb1d5204900              # double 0.12498008206629052
	.quad	0x3fe28983844919d1              # double 0.57928634488126296
	.quad	0x3fefccba6498c857              # double 0.99374122283758026
	.quad	0x3fcc7ce20b9632c4              # double 0.22256112638242176
	.quad	0x3fea6e86373783e3              # double 0.82599173340360854
	.quad	0x3fb001f84cc3eae0              # double 0.062530058614281625
	.quad	0x3fdfda059035cac4              # double 0.4976819904615406
	.quad	0x3f4655d5bb816800              # double 6.8161903528651813E-4
	.quad	0x3fc32ff125b10a5c              # double 0.1499005731621591
	.quad	0x3fe9b98938c74dd3              # double 0.80389844026142965
	.quad	0x3fe700325fb66ae4              # double 0.71877402013646163
	.quad	0x3fd85ddc8c179c8c              # double 0.38072885208971097
	.quad	0x3fea4bcc451c4b93              # double 0.8217526769461635
	.quad	0x3feedaf7de490a64              # double 0.96422952094173952
	.quad	0x3fd5799f50c051ee              # double 0.33554823766578934
	.quad	0x3fe6c060023e0ca5              # double 0.71098328054394655
	.quad	0x3fec04417a38244a              # double 0.87551950331647643
	.quad	0x3fe352d1142c28ac              # double 0.60385946216526554
	.quad	0x3fe5f4945f67dd89              # double 0.68610590585642328
	.quad	0x3fec6257178631d1              # double 0.88700441927499629
	.quad	0x3fdbc7e9d9bb2fb4              # double 0.43407675040065929
	.quad	0x3fe6ea860a2ee90d              # double 0.71612836827196846
	.quad	0x3fdb7cd4ee042c02              # double 0.42949412578371959
	.quad	0x3fe8e4401947d554              # double 0.77786259591690987
	.quad	0x3fe3238f5fbac5ba              # double 0.59809082696136007
	.quad	0x3fc9757019c807d4              # double 0.19889642008644037
	.quad	0x3fe237d0d37ef90c              # double 0.56931344325838174
	.quad	0x3fed16029352b146              # double 0.90893677495982028
	.quad	0x3fe2e272139444df              # double 0.59014228653009215
	.quad	0x3fec11fd2fd071ef              # double 0.87719592417448478
	.quad	0x3fc5809535324c04              # double 0.16798653695568089
	.quad	0x3fe3ebc095005ab2              # double 0.62252835370857995
	.quad	0x3fd7ceac2feb45c8              # double 0.37198929481118315
	.quad	0x3fc240c4f4be045c              # double 0.14260160398774502
	.quad	0x3f70fdeb1264d580              # double 0.0041484053129371423
	.quad	0x3fb45dec9833e850              # double 0.079558169516446897
	.quad	0x3fedb4ac52e43aae              # double 0.92830482663869929
	.quad	0x3fe6cfafee32cbb7              # double 0.71285244486931887
	.quad	0x3fd96f8081b4fc60              # double 0.39743054072090978
	.quad	0x3fefc077c50e060a              # double 0.99224461066495562
	.quad	0x3fd101acbea150f2              # double 0.26572722069000954
	.quad	0x3fe2ee6b09de7f0a              # double 0.59160377433360734
	.quad	0x3fb42a5445bedb40              # double 0.078770892169683471
	.quad	0x3fdff975b7829822              # double 0.49960081978713522
	.quad	0x3fee6f08443ea2ef              # double 0.951053746500376
	.quad	0x3fb12d80671c9750              # double 0.067100548909903468
	.quad	0x3fcf58b2018c5434              # double 0.24489426684945814
	.quad	0x3fd8df44004475f8              # double 0.3886270525561879
	.quad	0x3fc03becf5bc8564              # double 0.12682878493164218
	.quad	0x3fdc0bc058e38572              # double 0.43821724587004163
	.quad	0x3f908710dd0660e0              # double 0.016140235414781823
	.quad	0x3fe16fa302a7f14c              # double 0.5448775340915204
	.quad	0x3fe68c172be2cbba              # double 0.70460089274853677
	.quad	0x3fee6669f8876d6d              # double 0.95000170269797268
	.quad	0x3fecd9eb5b3dc226              # double 0.90160148449473776
	.quad	0x3fe1f7ffa5144684              # double 0.56152326814681475
	.quad	0x3fc5b43d2d9cb1ec              # double 0.16956295706894708
	.quad	0x3fea4f81eb4dcae0              # double 0.82220550496853306
	.quad	0x3fe09261059149c4              # double 0.51786852919968185
	.quad	0x3feafff173775dce              # double 0.84374306251532416
	.quad	0x3f49742305803000              # double 7.7678403886372038E-4
	.quad	0x3fec6155b2deb468              # double 0.88688168464217387
	.quad	0x3fe747f23358d483              # double 0.72753248242101198
	.quad	0x3fe62e85d72f9ba8              # double 0.69317905453214212
	.quad	0x3fe65c4627b22b0e              # double 0.69876392129057918
	.quad	0x3fd5f124a8b15b2e              # double 0.34284321283250818
	.quad	0x3fe8141d8fbe5017              # double 0.75245550227055247
	.quad	0x3feb034e7f6ef64d              # double 0.84415364159912942
	.quad	0x3fde9a3617a1e358              # double 0.47816231067513604
	.quad	0x3fe9f947cfafbe39              # double 0.81167975009697735
	.quad	0x3fe3826bb484e8b7              # double 0.60967049844409515
	.quad	0x3fdbcb6418f19144              # double 0.43428900180721919
	.quad	0x3fe58d4f91872c85              # double 0.67349985526506428
	.quad	0x3fee276ddba153c2              # double 0.94231312653084154
	.quad	0x3fef6414b76f33c8              # double 0.98096690966632937
	.quad	0x3fe8fd0c609b2616              # double 0.78088969105118866
	.quad	0x3fedc9204719d264              # double 0.93080152403724669
	.quad	0x3fe7b42012b5ceee              # double 0.74073794988950481
	.quad	0x3fbe9044dc31a5d0              # double 0.11938887000874066
	.quad	0x3feb290f4d32104d              # double 0.84876217915781071
	.quad	0x3fe7aa69c4f1045e              # double 0.73955238785869049
	.quad	0x3fb53870d3fce758              # double 0.082892467264995218
	.quad	0x3fe98b1b3d357987              # double 0.79823076205120536
	.quad	0x3fe8cf9276fa34d4              # double 0.77533839452521613
	.quad	0x3fe37843651e267e              # double 0.60843057393613242
	.quad	0x3fccbc8f1ea6bafc              # double 0.22450436588902523
	.quad	0x3fe3e78c9051f6fa              # double 0.62201526820692199
	.quad	0x3fe9eb636ac41819              # double 0.80998392918332052
	.quad	0x3fa3c0c529e77580              # double 0.038580094685793931
	.quad	0x3fe94638673da3db              # double 0.78982181705680021
	.quad	0x3fed1cc8be924728              # double 0.90976369114853117
	.quad	0x3fd63fd27318e9dc              # double 0.34764538993809224
	.quad	0x3fb61156a9dcbc80              # double 0.086202064962650482
	.quad	0x3fe347d20a41629c              # double 0.60251714709291404
	.quad	0x3fd0b8c8c2d11a72              # double 0.26127833390311317
	.quad	0x3fb2e9c34bd79160              # double 0.073879438415649812
	.quad	0x3fed264e57790611              # double 0.91092602810403112
	.quad	0x3fe641e98e3048fe              # double 0.69554593821729305
	.quad	0x3fd720b6b2b2bd22              # double 0.36137168360706273
	.quad	0x3feb8523f008476e              # double 0.86000248795811074
	.quad	0x3fceeae0de2ec950              # double 0.24154291962401908
	.quad	0x3fa45ff3be348e40              # double 0.039794556587619656
	.quad	0x3fd6e1dce859dfe4              # double 0.35753557863745145
	.quad	0x3fecd4591cd13aee              # double 0.90092139843349428
	.quad	0x3fe8fd55841b93fa              # double 0.78092456629076357
	.quad	0x3f8bef52bd2bb9c0              # double 0.013640066526446115
	.quad	0x3feaedd9ddce146f              # double 0.84153455086983608
	.quad	0x3fb49c9b3964d370              # double 0.08051462317673752
	.quad	0x3fa22dd5cf447bf0              # double 0.035505944777689424
	.quad	0x3fe9f1c7aaa99b0c              # double 0.81076415379070132
	.quad	0x3fe28228cd075084              # double 0.57838859600680381
	.quad	0x3fe73c12015e4ea1              # double 0.72608280436766759
	.quad	0x3fb8567f1ae17670              # double 0.095069831907915292
	.quad	0x3fb55ac4f2a70988              # double 0.083416280022936218
	.quad	0x3fef9a8ed3a86cac              # double 0.98761693324504085
	.quad	0x3fd4dbb1faf64344              # double 0.32590913303379332
	.quad	0x3fe8993e2cd30797              # double 0.76870640520813793
	.quad	0x3fe1b9a4594aeaa0              # double 0.5539113754269529
	.quad	0x3fbea5615078df40              # double 0.11971100058223971
	.quad	0x3fd972f67d87aa0a              # double 0.39764177569182435
	.quad	0x3fe1667bbda087e9              # double 0.54376017605340821
	.quad	0x3fd9e614f1d3a0ae              # double 0.40466807952771944
	.quad	0x3fb9bdbcf964c0a0              # double 0.10055142487249435
	.quad	0x3feccdc0247d48b8              # double 0.90011603476366187
	.quad	0x3fc2b042f7d3feb4              # double 0.14600407696706486
	.quad	0x3fc6b800cde9508c              # double 0.17749033025996075
	.quad	0x3fd2af34aa912e5c              # double 0.2919437089628667
	.quad	0x3fe0477eed51773e              # double 0.5087275157090756
	.quad	0x3fe921f65a6e49b5              # double 0.78539579069393162
	.quad	0x3fdf112caf7cf724              # double 0.48542325150980248
	.quad	0x3fc8653ed9d86738              # double 0.19058976780871162
	.quad	0x3fe5f896fc32f9ee              # double 0.68659543283120938
	.quad	0x3fcd1bab6113f978              # double 0.22740690460336643
	.quad	0x3fd31cc7125fd81c              # double 0.29863144678472664
	.quad	0x3feb596ac261cd7c              # double 0.85466516461603658
	.quad	0x3fcd429a9a231090              # double 0.22859509016246138
	.quad	0x3fea6c43c9418f18              # double 0.82571591670827882
	.quad	0x3fd8bcbc9cc554f0              # double 0.38651957807208159
	.quad	0x3fe110b0fdda11da              # double 0.53328752117573264
	.quad	0x3fe8097f61ab7bdc              # double 0.75115937305588031
	.quad	0x3fe51158ef698b18              # double 0.65836760292254137
	.quad	0x3fc5fd75618ff728              # double 0.17179744018351895
	.quad	0x3fdaaa858287397e              # double 0.41665780779739936
	.quad	0x3fe229e486485e1f              # double 0.56761385180556434
	.quad	0x3fe05f238375a799              # double 0.51161361385060211
	.quad	0x3fe62f8c76b960aa              # double 0.69330428303057556
	.quad	0x3fe4b9140fad174e              # double 0.64759257375474433
	.quad	0x3fd12a2ad3746b1c              # double 0.26819868707541317
	.quad	0x3fedaccf58cf5945              # double 0.9273449644631816
	.quad	0x3fd523480dbd83d8              # double 0.33027840940309039
	.quad	0x3fec07bdcc19aa87              # double 0.87594499457675645
	.quad	0x3fd5969f8a5068c8              # double 0.33731831080661978
	.quad	0x3fcd20f1b69b0730              # double 0.22756787697113046
	.quad	0x3fd988e0dd6eaaf2              # double 0.39897939323661469
	.quad	0x3f829d5b7dc558c0              # double 0.0090891978986004096
	.quad	0x3fed2f7d9805d5e0              # double 0.91204719249679655
	.quad	0x3fe00c559003eff9              # double 0.50150564315799706
	.quad	0x3fddf3053545e844              # double 0.46795778467606319
	.quad	0x3fccd02292bb7aa4              # double 0.22510177769341511
	.quad	0x3fda8fc16af035ca              # double 0.41502414172358881
	.quad	0x3fe361b4c57be1a9              # double 0.60567701884342739
	.quad	0x3fe4bdba87e1e20c              # double 0.64816023387453603
	.quad	0x3fcad18aa15a1414              # double 0.20951969984540197
	.quad	0x3fd9fccd84ac6740              # double 0.4060548587454953
	.quad	0x3fedd2e8490d77db              # double 0.93199552791679297
	.quad	0x3fd05e363fe0d24a              # double 0.25575023878198933
	.quad	0x3fe733dbbe942a11              # double 0.72508036825576216
	.quad	0x3fe04e588c81c703              # double 0.50956370775949755
	.quad	0x3fe4c31385cda669              # double 0.64881302007161168
	.quad	0x3fea0d6c8e61ef5e              # double 0.81413867768376824
	.quad	0x3feaaa508cfb7b32              # double 0.83329036269774392
	.quad	0x3fe67c350179cc4d              # double 0.70266199386822736
	.quad	0x3fe875b21956aefb              # double 0.76436715077349449
	.quad	0x3fea0176516e57bd              # double 0.81267848877427407
	.quad	0x3fda00d91c6c6aac              # double 0.40630176330311474
	.quad	0x3f8ca1fba0801bc0              # double 0.013980832896789752
	.quad	0x3fd7a66b3c658d0a              # double 0.36953240297425849
	.quad	0x3feab89b5ad0febf              # double 0.83503501641822442
	.quad	0x3fe8bdb0a9b90af3              # double 0.77315552853573732
	.quad	0x3fb6980ec2a6ec00              # double 0.088257715723486285
	.quad	0x3fea5913d975dc81              # double 0.82337372277005738
	.quad	0x3fe7fad59f994bed              # double 0.74936944171565545
	.quad	0x3fd80b30520b970c              # double 0.37568290722116227
	.quad	0x3fe743e93868a5f6              # double 0.72703991906490617
	.quad	0x3fc8cfeaa86b7d00              # double 0.1938451120722462
	.quad	0x3fdd2a984c2af9c4              # double 0.4557247871233836
	.quad	0x3fef5aceb14d89ac              # double 0.97983488683194286
	.quad	0x3fe77fcbe34f81ec              # double 0.73435015102955736
	.quad	0x3fdc856204dee29e              # double 0.44564104533814397
	.quad	0x3fca2ba9c535ce38              # double 0.20445749406245439
	.quad	0x3fe4f49a4d75fbdc              # double 0.65485873345448509
	.quad	0x3fe8f811a62fb5fe              # double 0.78028185327792676
	.quad	0x3fceb5e89b38fc48              # double 0.23992641047695629
	.quad	0x3feedbe805f6e9b0              # double 0.96434403576795624
	.quad	0x3fd98b9795a01188              # double 0.3991450272735837
	.quad	0x3fefe5eaa4ca1eec              # double 0.99681598840194629
	.quad	0x3fe25236c7676a71              # double 0.57253588625037655
	.quad	0x3fe2cba43d97f3cd              # double 0.58735858945839825
	.quad	0x3fa8308e6d97e3c0              # double 0.047245455625620547
	.quad	0x3fefeb12eeceae59              # double 0.9974455513196957
	.quad	0x3fe3a15fdc28170f              # double 0.6134490299161558
	.quad	0x3feca366443e8784              # double 0.89494622544246782
	.quad	0x3fe71296a3bda1b2              # double 0.72101909618964144
	.quad	0x3fc0c4ea71e27aa4              # double 0.13100939331794337
	.quad	0x3fe4fd560374c58a              # double 0.6559248034956664
	.quad	0x3fc789bf051ee3b4              # double 0.18389117956192325
	.quad	0x3fc3e49dcbcc3cf4              # double 0.15541431857170773
	.quad	0x3fe0f33e5aaf1b6d              # double 0.52969281875344409
	.quad	0x3fde903dc21f8e92              # double 0.47755378682470806
	.quad	0x3fdcde26dd83ee1c              # double 0.45105907089575381
	.quad	0x3fdf99ef423c49ae              # double 0.49377042263327098
	.quad	0x3feadd260587f783              # double 0.83949566917702645
	.quad	0x3fefc2635f0c55dc              # double 0.99247902454470304
	.quad	0x3fef7943c362dece              # double 0.98355281983728005
	.quad	0x3fe1cb3f16338510              # double 0.55606035553151578
	.quad	0x3fe13490952507ad              # double 0.53766659860433708
	.quad	0x3fd1e250258556b6              # double 0.2794380537428468
	.quad	0x3fcf22372d3a6048              # double 0.24323167522811873
	.quad	0x3fbf7703c9cedaa0              # double 0.12290977169946382
	.quad	0x3fbc018e98dfa350              # double 0.10939875824227596
	.quad	0x3fc05fb4045104b4              # double 0.12792062960401085
	.quad	0x3fec3da4920dc9b3              # double 0.88252476240295719
	.quad	0x3fe5ceaf5d5feea1              # double 0.68148010480168264
	.quad	0x3fed846149b908aa              # double 0.92240967177374
	.quad	0x3fe144a7216341cb              # double 0.5396304752448996
	.quad	0x3fc4aede4c375570              # double 0.1615865585469396
	.quad	0x3fd4adb48489810a              # double 0.32310212081030498
	.quad	0x3fda1334dd5235c8              # double 0.40742227185623081
	.quad	0x3fcd348f34064bec              # double 0.2281664852167461
	.quad	0x3fc5fc8c5e3b0644              # double 0.17176966286756301
	.quad	0x3fe7311e69c9baea              # double 0.72474594747276666
	.quad	0x3faa0c8d64e8aca0              # double 0.050877016609171877
	.quad	0x3fbed108b3955558              # double 0.12037710556372383
	.quad	0x3f867074b8122ac0              # double 0.010956680171394395
	.quad	0x3fe0e5c0f9aa98d7              # double 0.52804611933677392
	.quad	0x3feb14d8582a3377              # double 0.84629456729599795
	.quad	0x3fad80d3bc961310              # double 0.057623497744350272
	.quad	0x3fea88f18cf73ff1              # double 0.8292167428244267
	.quad	0x3fcb5945ac08ef64              # double 0.21366187000409831
	.quad	0x3fe05ba79f359ad0              # double 0.51118832679352444
	.quad	0x3fe9c7605421e9d6              # double 0.80558792526363265
	.quad	0x3fe18298d181edc1              # double 0.54719201011123897
	.quad	0x3fe1927505ec1d98              # double 0.54912806660370261
	.quad	0x3fdd6030a4498a66              # double 0.45899597209623832
	.quad	0x3fb821606def7c58              # double 0.094259287681312087
	.quad	0x3fe8718f53a41f85              # double 0.76386228881982332
	.quad	0x3fe1eb7995d8ea0f              # double 0.559994499846029
	.quad	0x3fdb11b9e5de369c              # double 0.42295691917466072
	.quad	0x3fe65c5e0e5b51d8              # double 0.69877531818434147
	.quad	0x3fe622046a2e46e1              # double 0.69165249575072718
	.quad	0x3fe51bfd56603aa3              # double 0.65966669912616671
	.quad	0x3feb1ef49968be28              # double 0.84752874338841355
	.quad	0x3fe1f63ae27e9026              # double 0.56130737530884711
	.quad	0x3febf1892ca0ccea              # double 0.87323435512953762
	.quad	0x3fe1e5db4418d2ff              # double 0.55930865574063648
	.quad	0x3fe28da08cb25525              # double 0.5797884700756738
	.quad	0x3fda7e8a96a52e26              # double 0.41397347175072452
	.quad	0x3feb1e6a7db3c4d3              # double 0.84746288825240368
	.quad	0x3fa3e2476aa278c0              # double 0.038835746542859706
	.quad	0x3fb5bb89f92ff318              # double 0.084892867409461892
	.quad	0x3fc9eec4b7c2f75c              # double 0.20259913418515907
	.quad	0x3fef785672dd6b3a              # double 0.98343965944818668
	.quad	0x3fcea9d525b27d04              # double 0.23955787983593535
	.quad	0x3feb7eb7b12b5487              # double 0.85921845057841117
	.quad	0x3fb3fceee4224278              # double 0.07807820386575226
	.quad	0x3fd7bcceac8b72e4              # double 0.3708988842970895
	.quad	0x3fc3a0bbedbb77b0              # double 0.15334271533987254
	.quad	0x3feae0320c16e8e0              # double 0.83986761437634172
	.quad	0x3fe8db1a27653d2b              # double 0.77674586958338432
	.quad	0x3f580406cdea3800              # double 0.001465803761365958
	.quad	0x3fe02a6a2291776b              # double 0.50517756225211252
	.quad	0x3fd14b6af98c82c2              # double 0.27022814149863106
	.quad	0x3feede7dd3544ae0              # double 0.96465960765121039
	.quad	0x3feb023c8826ed5e              # double 0.84402300445746525
	.quad	0x3fe1553f538e870c              # double 0.54165617294003843
	.quad	0x3fd60401a12ab75c              # double 0.34399452914191442
	.quad	0x3fe95119a32a9965              # double 0.79114992016256436
	.quad	0x3fe0a16d93c771d0              # double 0.51970557082273139
	.quad	0x3fb84506b9a2af70              # double 0.094803257294811649
	.quad	0x3faa36adc259ef50              # double 0.051198415731930624
	.quad	0x3fee33f59c54c855              # double 0.94384270223077726
	.quad	0x3fe018c1e75c46ff              # double 0.50302214801396861
	.quad	0x3feb8cbe5e0b5607              # double 0.8609306179811832
	.quad	0x3fefb7907e9ad0fa              # double 0.991157767558007
	.quad	0x3fe8ec02aae992bc              # double 0.77880986577346034
	.quad	0x3fea5a715b877ecf              # double 0.82354038121044393
	.quad	0x3fd457fa3b682966              # double 0.3178697185654954
	.quad	0x3fdef7dc5593ea6c              # double 0.48387821538168541
	.quad	0x3fe0f00eec6f95e3              # double 0.52930399111636139
	.quad	0x3fdb74b7a0ac2ed4              # double 0.42899885836298535
	.quad	0x3fd11157a119fdc0              # double 0.26668349011012182
	.quad	0x3fe8c37b1c05959a              # double 0.77386241410265488
	.quad	0x3fe5cbe2f019ee80              # double 0.68113848585876724
	.quad	0x3fec8d1b720a09d8              # double 0.89222500108035785
	.quad	0x3fd978429c6d0c06              # double 0.3979651000592529
	.quad	0x3fe7b510ff8c2d97              # double 0.74085283195147411
	.quad	0x3fe489c93a74ddf2              # double 0.64181958596503663
	.quad	0x3febbf507eda1992              # double 0.86710381294033056
	.quad	0x3fe4638a178eb136              # double 0.63715080834439308
	.quad	0x3feeba5815330aa7              # double 0.9602470792818466
	.quad	0x3fa9e08caafb8cf0              # double 0.050541301605130928
	.quad	0x3fee4216321fe6cd              # double 0.94556722440685237
	.quad	0x3fe852fe0bf0e23f              # double 0.76013090450494036
	.quad	0x3febc11b41a51334              # double 0.86732256718878497
	.quad	0x3fd4ec2c3e44075a              # double 0.32691484528196713
	.quad	0x3feee86e14f0c372              # double 0.96587280359209005
	.quad	0x3fc3fc0b0aa63f2c              # double 0.15612924594869904
	.quad	0x3fe6bdc73b1b3159              # double 0.71066628975089963
	.quad	0x3fe5d79bf0f697f0              # double 0.6825694757760612
	.quad	0x3fe0d3d46835c42f              # double 0.52585811952133621
	.quad	0x3fe6dd36f9568ad4              # double 0.71450375269736321
	.quad	0x3fcf41e2c1f1a350              # double 0.24419817418972878
	.quad	0x3fc88145bcd38cbc              # double 0.19144508094823276
	.quad	0x3fe27dcc53f58861              # double 0.57785622022880656
	.quad	0x3fdb90464026f0b2              # double 0.43068081154684557
	.quad	0x3fe8310f7fa8db6d              # double 0.75598883565440433
	.quad	0x3fdf73d807e5794e              # double 0.49144554873591495
	.quad	0x3fc5e190f3d30d68              # double 0.17094623475541515
	.quad	0x3fb3e161ed9b34f0              # double 0.077657814511628009
	.quad	0x3fdd8cc8ea098418              # double 0.46171782355492175
	.quad	0x3fe05d050ee93722              # double 0.5113549510221882
	.quad	0x3feaea51bc2357e3              # double 0.84110342736925892
	.quad	0x3f71b66e06285f80              # double 0.0043243692221252017
	.quad	0x3fdc5feca3f97a5c              # double 0.44335475934159319
	.quad	0x3fbeb918259f29d8              # double 0.12001181524752924
	.quad	0x3fd007ffeb25e7a6              # double 0.25048826183012307
	.quad	0x3fd14a30d90dd976              # double 0.2701532478016796
	.quad	0x3faf8a4423786c30              # double 0.061601762132532989
	.quad	0x3fec5c1141345709              # double 0.88623869643444764
	.quad	0x3fcc994b80eee830              # double 0.22342819018905535
	.quad	0x3fd7661b9211496e              # double 0.36560715927512077
	.quad	0x3fcab51da7427eac              # double 0.20865221659641031
	.quad	0x3fe69ec9c2791854              # double 0.7068833158780401
	.quad	0x3fe22bd06ac0c832              # double 0.56784840440946582
	.quad	0x3feb772aafbae1ed              # double 0.85829672167079496
	.quad	0x3fefc94a7b9761bd              # double 0.99332164896900787
	.quad	0x3fea7e4c4f4d3e0a              # double 0.82791724671000222
	.quad	0x3fd1e0b3694da562              # double 0.27933964999700411
	.quad	0x3fe94f3019fbf19e              # double 0.79091649127035502
	.quad	0x3fe3d291ee185676              # double 0.61945435049956532
	.quad	0x3fe9482c2a92cd63              # double 0.79006012263418446
	.quad	0x3fe4966e07c606d0              # double 0.64336301344175162
	.quad	0x3fda3bb5bd5a0d22              # double 0.40989440432913871
	.quad	0x3fc0756da72bdca0              # double 0.12858362829840519
	.quad	0x3fb3e3d087380df0              # double 0.077694924366418893
	.quad	0x3fb25fdc0dea46f0              # double 0.071775201222660234
	.quad	0x3fe4c2caa2dbce58              # double 0.64877826507877057
	.quad	0x3fe4954f2d80746d              # double 0.64322623145166136
	.quad	0x3fee44de8f67c549              # double 0.94590690621240825
	.quad	0x3f9c7e05d523e2c0              # double 0.027824488767665967
	.quad	0x3fd9950618f4199e              # double 0.39972069203249727
	.quad	0x3fc7f26831bb2788              # double 0.18708517483019826
	.quad	0x3fe6d14ee0da5bbf              # double 0.71305030743211961
	.quad	0x3fee791abbf2fdde              # double 0.95228325566125327
	.quad	0x3fd329a05e9ecbc6              # double 0.29941567650092471
	.quad	0x3fe6624706946605              # double 0.69949675831884461
	.quad	0x3fc8d004b46f1f1c              # double 0.19384821710831879
	.quad	0x3fbe5b1362d28970              # double 0.11857720530182347
	.quad	0x3fe162a0a7e54786              # double 0.54328949730027953
	.quad	0x3fe07759b1749a71              # double 0.51456913623117206
	.quad	0x3fa76f2ad0d27aa0              # double 0.045770013800610743
	.quad	0x3fcfad81842ca66c              # double 0.24748248056248501
	.quad	0x3fef5e0c5dd2127c              # double 0.98023050617537377
	.quad	0x3fe8ffe6fa5471b8              # double 0.78123806850958655
	.quad	0x3fe3e1861394c29a              # double 0.62127975296432969
	.quad	0x3fd5716d492eee2a              # double 0.33504802843865156
	.quad	0x3fd5bd2190beed00              # double 0.33966864714939504
	.quad	0x3fee2b06aa07df11              # double 0.94275220116739622
	.quad	0x3fd85d8fc6fbe2f0              # double 0.38071054870628895
	.quad	0x3fd3b9c397e7787a              # double 0.30821313700096875
	.quad	0x3fe253238d9a8afd              # double 0.57264878899545091
	.quad	0x3fd7fcaabf2c0562              # double 0.37479656857620658
	.quad	0x3fef8d0994c965bc              # double 0.98596648273376485
	.quad	0x3fe32077ebeaebd1              # double 0.59771343305271263
	.quad	0x3fef2610654a3d54              # double 0.97339648993685523
	.quad	0x3fd2dca100144f50              # double 0.29471611984012203
	.quad	0x3fd688dd7d8d6b26              # double 0.35210358868578095
	.quad	0x3fc4ed3089104600              # double 0.16348845188672101
	.quad	0x3fbd8e2f0368ca28              # double 0.11545080025897703
	.quad	0x3fe8be1a72f6dbce              # double 0.77320597127879309
	.quad	0x3fd39fe0734e406a              # double 0.30663310299224256
	.quad	0x3f9158cc3ffacf00              # double 0.016940299420368454
	.quad	0x3fd2ec7355fb3310              # double 0.29568179508787384
	.quad	0x3fdf8f864d147094              # double 0.49313504721954726
	.quad	0x3feade3c6c0b1f9a              # double 0.83962842085110201
	.quad	0x3fd5790a3b08efd0              # double 0.33551269307258469
	.quad	0x3fe45f1f746d0cc7              # double 0.63661167849968414
	.quad	0x3fd26c634f434618              # double 0.28786547413355512
	.quad	0x3fe6cb4f7a38f0a1              # double 0.71231817122999896
	.quad	0x3fcebd0c7c613460              # double 0.24014431069591335
	.quad	0x3fb9c20e822ff2e0              # double 0.10061731985474465
	.quad	0x3fe37acfc594b742              # double 0.60874165143989267
	.quad	0x3feacaff3fb7ec43              # double 0.8372799152852014
	.quad	0x3fe97216ee1b8772              # double 0.79517694955232643
	.quad	0x3fe5c7a4580d0a9a              # double 0.68062035748910721
	.quad	0x3fd6c84d418b541c              # double 0.35597545052343249
	.quad	0x3fd5f82c9bf28896              # double 0.34327235440481141
	.quad	0x3fea7ecc912c92dd              # double 0.82797840456313632
	.quad	0x3fe4135892054bf8              # double 0.62736156959215261
	.quad	0x3fd31117743c76a0              # double 0.29791818953695248
	.quad	0x3fec484e3cd74b5d              # double 0.88382636912352164
	.quad	0x3fe1edf784ff3b0f              # double 0.56029869056678361
	.quad	0x3fe90a4003e54826              # double 0.78250122795930532
	.quad	0x3fd0d180c9f8a502              # double 0.26278705333477614
	.quad	0x3fe811dc53622645              # double 0.75218025480098361
	.quad	0x3fe74e8c976d702e              # double 0.72833852363283369
	.quad	0x3fd872096f5c95bc              # double 0.3819602572933396
	.quad	0x3fe0411d9d84778a              # double 0.50794869198920023
	.quad	0x3fde44f90b1090e8              # double 0.47295976715601151
	.quad	0x3fe1a7d480613a26              # double 0.55173707079103873
	.quad	0x3fdbc2c7716ee854              # double 0.43376337125267139
	.quad	0x3f6498998ba24f00              # double 0.0025141714987259034
	.quad	0x3fe80b547ffba6ee              # double 0.7513830661457328
	.quad	0x3fd19df30f430b6a              # double 0.27526546945971708
	.quad	0x3fdf27737443bb9c              # double 0.486782897510176
	.quad	0x3fc66689fb06b034              # double 0.17500424153456751
	.quad	0x3fe2ee95d512b026              # double 0.59162417999096273
	.quad	0x3feca305955af610              # double 0.89490012331924795
	.quad	0x3fedb81a340be758              # double 0.92872343221027176
	.quad	0x3fd027c6d291f514              # double 0.25242777408114248
	.quad	0x3f83a6ee049f3ec0              # double 0.0095957369957483384
	.quad	0x3fb6e6a7f5855850              # double 0.089457032624836729
	.quad	0x3fe5e2d63a39179d              # double 0.68394004222567484
	.quad	0x3fc1d4a3cd411d24              # double 0.13930175325570204
	.quad	0x3fe988379fe88021              # double 0.79787808639594371
	.quad	0x3fb14a96f09b2770              # double 0.067544397107807574
	.quad	0x3fd2660bd323957c              # double 0.28747840518038692
	.quad	0x3fe7e30f6ce20ca3              # double 0.74646731630527474
	.quad	0x3fdd5a86a108dd74              # double 0.45865026212728499
	.quad	0x3fc039b7c36e1dd4              # double 0.12676140825736459
	.quad	0x3fe30296aa2e9b26              # double 0.59406598318750947
	.quad	0x3fe0838259ab4fa5              # double 0.51605336678993707
	.quad	0x3fa7f2ac9a4db620              # double 0.04677333243931181
	.quad	0x3fe3594318b68c2f              # double 0.60464625193379173
	.quad	0x3fe2df2fa5bf1adb              # double 0.58974439976085635
	.quad	0x3fd977abcc850864              # double 0.39792914364455201
	.quad	0x3fd66f4fdb7f2d00              # double 0.35054394183380566
	.quad	0x3fe9d60eb045722b              # double 0.80738005092604703
	.quad	0x3fdd3374c156dab8              # double 0.45626562958515704
	.quad	0x3fd7f306e59179f4              # double 0.37420818728233418
	.quad	0x3fa1a8daa77a4700              # double 0.034491379684494561
	.quad	0x3fefc9e84f0db36c              # double 0.99339690628185683
	.quad	0x3fe695277001c09d              # double 0.70570728184067699
	.quad	0x3fd094a17f2c3148              # double 0.25907170695497372
	.quad	0x3fc89fd0cacdccf8              # double 0.19237718489203082
	.quad	0x3fc5a106f7bbc108              # double 0.16897666069372286
	.quad	0x3fcd70e25306a524              # double 0.23000744871141265
	.quad	0x3fc2c602b406d930              # double 0.14666780271881796
	.quad	0x3f959611cdd097c0              # double 0.021080282389583038
	.quad	0x3fbaf9d84327c4c8              # double 0.10537482871565651
	.quad	0x3fedb0853d1d41b6              # double 0.92779790817626551
	.quad	0x3fe391e863bf4a2f              # double 0.61156100732688923
	.quad	0x3fc8c7ee5c08dc40              # double 0.1936014127147434
	.quad	0x3fd4f3cfea8b44ea              # double 0.32738111405076487
	.quad	0x3fe254aca935180a              # double 0.57283623741455014
	.quad	0x3feb2dc66170dae7              # double 0.84933775931753253
	.quad	0x3fc16c05e0467acc              # double 0.13610909892027789
	.quad	0x3fe5a06ca2d5a3e0              # double 0.67583305171603669
	.quad	0x3fc788e39b630914              # double 0.18386502349137201
	.quad	0x3fdeb456c7384004              # double 0.47975701766063161
	.quad	0x3fbbaadbc32c4f10              # double 0.10807584300010498
	.quad	0x3fee5e003c6910e7              # double 0.9489747218981649
	.quad	0x3fa4ea1ffb93ccc0              # double 0.040848731479763867
	.quad	0x3fefe74790d6914a              # double 0.9969823674078182
	.quad	0x3fe3820bc309886d              # double 0.60962474911890541
	.quad	0x3fec239309bab8e6              # double 0.87934257412214545
	.quad	0x3fd034f3295bb6cc              # double 0.25323180235760101
	.quad	0x3fef42fb4721739f              # double 0.97692645924290733
	.quad	0x3fe55a8f2104d2e2              # double 0.66730457734101045
	.quad	0x3feda460df50cd91              # double 0.92631572357497494
	.quad	0x3fe9bde0d13e4f95              # double 0.80442849033214492
	.quad	0x3fe56920e28c6098              # double 0.66908306358074565
	.quad	0x3feb122e6b3fc614              # double 0.84596939990132336
	.quad	0x3fba799a9a7f0060              # double 0.10341802856328419
	.quad	0x3fc0a150d168b37c              # double 0.12992296433494832
	.quad	0x3feea5cabd4769f5              # double 0.95773827522799471
	.quad	0x3fc3e4540f719574              # double 0.15540552858434931
	.quad	0x3fefd1aa7db55cc6              # double 0.99434399177962329
	.quad	0x3fd683adadcfd182              # double 0.35178701375777888
	.quad	0x3fea661f2d01f995              # double 0.82496603766030552
	.quad	0x3fe216d3e2a4a91a              # double 0.56528658167124779
	.quad	0x3fe669eaa5d9982c              # double 0.70042927162717694
	.quad	0x3fbb74934cb0a1d8              # double 0.10724754926980695
	.quad	0x3fbb26844f6dffc0              # double 0.10605647029114973
	.quad	0x3fdcba00a7399212              # double 0.44885269480281054
	.quad	0x3fec08a69d6ebb9e              # double 0.87605601070923789
	.quad	0x3fe12d22cb93ff6f              # double 0.53675975571966983
	.quad	0x3fe40b0b6fd81cb2              # double 0.62634822697227421
	.quad	0x3fc03cb255f8bbf8              # double 0.12685231397469443
	.quad	0x3fcdc8e42a1e1bd4              # double 0.23269321495555906
	.quad	0x3fdd4f1f886e0882              # double 0.45795429537987087
	.quad	0x3fdb90ac3516224e              # double 0.43070511993622496
	.quad	0x3fe67cce33a6bff5              # double 0.70273504341275717
	.quad	0x3fe2c27480051e2b              # double 0.58623719219116788
	.quad	0x3fde6c02095c06d6              # double 0.47534228242885257
	.quad	0x3fc89252e5f53b98              # double 0.1919654486505038
	.quad	0x3fb2acf0eb7da140              # double 0.072951371662957065
	.quad	0x3fa797d98d60d1c0              # double 0.046080397136765594
	.quad	0x3fc3a5baac330bc8              # double 0.15349515350507503
	.quad	0x3fe9030b4c3afc7c              # double 0.78162159813645315
	.quad	0x3fcff2b14fbe7fb0              # double 0.24959389108425745
	.quad	0x3fc077fdf3748b6c              # double 0.12866186511481759
	.quad	0x3fe42c4d4967613d              # double 0.63040794693646485
	.quad	0x3fe5d7f443c138cb              # double 0.68261159165720053
	.quad	0x3fe41a30d1712ec7              # double 0.62819710642494264
	.quad	0x3feabc4da2c0dd99              # double 0.83548623836297786
	.quad	0x3feea50706d29497              # double 0.95764495213065259
	.quad	0x3fd66923346ff090              # double 0.35016708489252668
	.quad	0x3fa314184317e680              # double 0.037262685957057506
	.quad	0x3fe1fc7b97e5f90f              # double 0.56207065265314948
	.quad	0x3fe28d2585814051              # double 0.57972980570958488
	.quad	0x3fee5412b8cd4c40              # double 0.94776283353929358
	.quad	0x3fdfca1e6680fc1c              # double 0.49671134958401963
	.quad	0x3f706143c9794300              # double 0.0039990089349692948
	.quad	0x3fdb88a5b4ed639e              # double 0.43021528881723181
	.quad	0x3fe0a1e961dd80fb              # double 0.51976460565859328
	.quad	0x3fe79f7c6936e07e              # double 0.73821850347214002
	.quad	0x3fb4e30d3ff7b730              # double 0.081589534871196134
	.quad	0x3fe829aa4d3333f0              # double 0.75508608892562101
	.quad	0x3feea7629a8bf897              # double 0.95793276009478034
	.quad	0x3fec7430ab6ab344              # double 0.88918336372226081
	.quad	0x3f73c48217e01280              # double 0.004826076676185509
	.quad	0x3fe662a95ce2e668              # double 0.69954364911900502
	.quad	0x3fac41107d33bd40              # double 0.055183902057132972
	.quad	0x3fd6f84423c7cf94              # double 0.35890296453657666
	.quad	0x3fde9dc6f0ce7600              # double 0.47837995067843053
	.quad	0x3fe2ba8fe2b8bd14              # double 0.5852736881405769
	.quad	0x3fc3fb7791b86d10              # double 0.15611166587118719
	.quad	0x3fedc47bcb172db5              # double 0.93023481050607038
	.quad	0x3fecd65ddac753d1              # double 0.90116780023765319
	.quad	0x3fd2a72e1cf214b0              # double 0.29145386530610562
	.quad	0x3fe9f92efe623217              # double 0.81166791614811273
	.quad	0x3fe9360203023567              # double 0.78784275615332156
	.quad	0x3fe51ae8520e0367              # double 0.65953460718456547
	.quad	0x3f6cb48af6e6c400              # double 0.003504058279951483
	.quad	0x3fc36948bda7344c              # double 0.15165051708609878
	.quad	0x3fd323cb624ec21e              # double 0.29905972099644085
	.quad	0x3fce246d09e4932c              # double 0.23548663123178792
	.quad	0x3fd47f192058d542              # double 0.32025745543372264
	.quad	0x3fd3a9775120db8a              # double 0.30721838877382679
	.quad	0x3fde3247a987872e              # double 0.47181884341817948
	.quad	0x3fd28d4da9005fe0              # double 0.2898744726567184
	.quad	0x3fef63c369383028              # double 0.98092814016991258
	.quad	0x3fe9ab490766e258              # double 0.80215884633714563
	.quad	0x3fe034e12aaddb8c              # double 0.50645502410667254
	.quad	0x3fe2f7a73013ad0e              # double 0.59273108854304879
	.quad	0x3fce5f55d8f838f8              # double 0.23728440374583903
	.quad	0x3fd471c2c69e5206              # double 0.31944341083843175
	.quad	0x3fd070ef0df8f8ec              # double 0.25689293255335488
	.quad	0x3fd79a16bf0f35d2              # double 0.3687798372091865
	.quad	0x3fb756c985a264d8              # double 0.09116801750714687
	.quad	0x3fee738e01036bfa              # double 0.95160579870150674
	.quad	0x3fdaf03829acb990              # double 0.4209118277530246
	.quad	0x3fe89030c6a48f93              # double 0.76760138318467097
	.quad	0x3fb94f44555108b0              # double 0.098865767316086872
	.quad	0x3fe66235bfaba21a              # double 0.69948852000840422
	.quad	0x3fd92e5d9c18a2c6              # double 0.39345493549130273
	.quad	0x3fe49cd7a75090cd              # double 0.64414580038694569
	.quad	0x3fe49788ec0acde4              # double 0.64349790670388218
	.quad	0x3fe03c21961a1186              # double 0.50734023396266603
	.quad	0x3fd3c843553cc5b0              # double 0.30909808467830668
	.quad	0x3fedcfb4aa033987              # double 0.93160470204911483
	.quad	0x3fd24f5b503c8efa              # double 0.28609354816056476
	.quad	0x3fe3ae2335a127be              # double 0.61500702356828874
	.quad	0x3fe62270ce0ba6af              # double 0.69170418017639246
	.quad	0x3fd7fa71f142c174              # double 0.37466095505353469
	.quad	0x3fd03b22b17d2e66              # double 0.25360934574994187
	.quad	0x3fd96f3550221404              # double 0.39741261315822407
	.quad	0x3fe881b12af4d463              # double 0.76583155050196827
	.quad	0x3fdc29e33222e7b0              # double 0.44005660911681854
	.quad	0x3fe1ddfec6d92206              # double 0.55834902608427295
	.quad	0x3fbe590bfdc41400              # double 0.11854624696213989
	.quad	0x3fe6285c0b00626c              # double 0.69242670201044865
	.quad	0x3feb492057fff956              # double 0.85267655551414623
	.quad	0x3faf44cf69086230              # double 0.06107185513628044
	.quad	0x3fee7603c926c1ac              # double 0.95190610206014047
	.quad	0x3fa2e0d664008010              # double 0.036871623713750634
	.quad	0x3fc5f4384bb6c1c4              # double 0.17151550003974425
	.quad	0x3f947fe165897e20              # double 0.020019075224238958
	.quad	0x3fc9175bf7ab2974              # double 0.19602536767190382
	.quad	0x3fd65adccb71d692              # double 0.34929580562252582
	.quad	0x3fea53403a2ac2f1              # double 0.82266246186017444
	.quad	0x3fd8d48e569f5fc4              # double 0.38797338923677338
	.quad	0x3fec651646b7c1af              # double 0.88733972370214598
	.quad	0x3fdc988916d1ef36              # double 0.44681002834817052
	.quad	0x3fe1c6baecd895f0              # double 0.55550905474654932
	.quad	0x3feba541ad816630              # double 0.8639229191568969
	.quad	0x3fea73c8fab50643              # double 0.82663392034755423
	.quad	0x3fea87e8e39f1dcc              # double 0.82909054238637613
	.quad	0x3fd6392ceab8a746              # double 0.34723971292497813
	.quad	0x3fbcb4f4e3b6b190              # double 0.11213617858329017
	.quad	0x3fedf9aff4dc2191              # double 0.93672941040226665
	.quad	0x3fe14d9835a67217              # double 0.54072199324179138
	.quad	0x3fe51817c3173444              # double 0.65919101813927528
	.quad	0x3fecd66184572c09              # double 0.90116954658276527
	.quad	0x3fe71770c73ced86              # double 0.72161139405891173
	.quad	0x3fe444bcf986a161              # double 0.63339089141394933
	.quad	0x3fe25996ac0257a2              # double 0.57343610377823873
	.quad	0x3fda672f9f18ae74              # double 0.41254797493704776
	.quad	0x3fdbf64cf9b2f738              # double 0.43690800079990622
	.quad	0x3fbd90afa257d300              # double 0.11548898423627563
	.quad	0x3fe2f8d5422a8d64              # double 0.5928751270588859
	.quad	0x3fd6a61eb6958c5e              # double 0.35388915853963521
	.quad	0x3fe606c6fb107ce1              # double 0.68832730327622127
	.quad	0x3fb9aa593fdea690              # double 0.10025556382484013
	.quad	0x3fe48e0dda37018d              # double 0.64234058971492092
	.quad	0x3fed9f3331436393              # double 0.9256835901424999
	.quad	0x3fdeb3ebf7cbf946              # double 0.47973155211356688
	.quad	0x3fd27e058ca82798              # double 0.28894175277729905
	.quad	0x3fdcb4bfa0810fa8              # double 0.44853201555474209
	.quad	0x3fecfd964417d315              # double 0.90595544146944695
	.quad	0x3fea6c0775c2d33d              # double 0.82568715095712941
	.quad	0x3fbece365d151090              # double 0.12033405087010096
	.quad	0x3fc8480432dfc6e8              # double 0.18969776615227052
	.quad	0x3fc49e3d11f2f164              # double 0.1610790574685651
	.quad	0x3fd4d2534fe286fc              # double 0.32533724595315028
	.quad	0x3fd03d9455c64ae4              # double 0.25375851036475994
	.quad	0x3fa01e4998f20510              # double 0.031481075210658571
	.quad	0x3fef08f23c3ba1f0              # double 0.96984206928487815
	.quad	0x3fd7efbaf3f05b6a              # double 0.37400697538526251
	.quad	0x3fe4312eb5019f5e              # double 0.6310037169723548
	.quad	0x3faa4b7f02f47720              # double 0.051357239828787593
	.quad	0x3fe4ccde02e61ba1              # double 0.6500082069986669
	.quad	0x3fbb948fcde82308              # double 0.10773562218686206
	.quad	0x3fd2f093b3a69d58              # double 0.29593365234400926
	.quad	0x3fe9f734aa2df385              # double 0.81142647970374127
	.quad	0x3fb227355f6573d8              # double 0.070910774030792267
	.quad	0x3fe997af67dd7958              # double 0.79976625715407135
	.quad	0x3fe81b20f54bad79              # double 0.75331161412525127
	.quad	0x3fe8d7e07e97271d              # double 0.77635216450400757
	.quad	0x3fe14a800984968a              # double 0.54034425600976133
	.quad	0x3fe1d9691bda62ea              # double 0.55778937759450042
	.quad	0x3fc386649403d688              # double 0.1525388453225569
	.quad	0x3fe10007cc5d7fcb              # double 0.53125371852001402
	.quad	0x3fee2f1517fc02c6              # double 0.94324736294228084
	.quad	0x3fc55d5f531f8748              # double 0.16691199835536907
	.quad	0x3fc5175affc62dec              # double 0.16477525223704903
	.quad	0x3fc3c96799386b20              # double 0.15458388310875026
	.quad	0x3fe969761b8c9c95              # double 0.79412370091167139
	.quad	0x3fe89cb5e358efae              # double 0.76912969974318002
	.quad	0x3f9858da0be86d60              # double 0.023776442505647366
	.quad	0x3fd6086a420112a4              # double 0.34426361509057757
	.quad	0x3fd1f32a8b34d784              # double 0.2804666861951477
	.quad	0x3feda2e908ed9bf3              # double 0.92613651031285682
	.quad	0x3fbb988f8023b0c0              # double 0.10779663923648553
	.quad	0x3fe3ee1230ca58bf              # double 0.62281140832308057
	.quad	0x3fe7d50ff9b38a96              # double 0.74475859422485047
	.quad	0x3fe15de53bf7c253              # double 0.54271184647047688
	.quad	0x3fe7cd35e284dc6b              # double 0.74380010835637955
	.quad	0x3fe010010df30b25              # double 0.50195362781991959
	.quad	0x3f8bfce6a6509840              # double 0.013665964079404458
	.quad	0x3fb57ceb79b713d8              # double 0.083937375274288129
	.quad	0x3fe866304cb4ec33              # double 0.76247420293601065
	.quad	0x3fe56c4bffa2aee6              # double 0.66946983269505433
	.quad	0x3feb3bbcb630ab99              # double 0.85104213317878241
	.quad	0x3fec19dac71a10df              # double 0.87815607916902738
	.quad	0x3fc0602ab57e2878              # double 0.12793477880433435
	.quad	0x3fcfcbd2c184631c              # double 0.24840769242361993
	.quad	0x3febb8ad766cd41c              # double 0.86629365091232868
	.quad	0x3fbced9c214dff58              # double 0.11300063908674696
	.quad	0x3fdbcec955d25846              # double 0.43449624424954825
	.quad	0x3fedaadfbc73634a              # double 0.92710863882812444
	.quad	0x3fd2551482003c2e              # double 0.28644287772562194
	.quad	0x3fefd6967dd1dc82              # double 0.99494480680631647
	.quad	0x3fc3d022ee00f4dc              # double 0.15478932019497094
	.quad	0x3fe0bdb76310de59              # double 0.52315873478705577
	.quad	0x3fc1f5b0c3e6e5e0              # double 0.14031037869953789
	.quad	0x3fdde50b8526b948              # double 0.46710479739239874
	.quad	0x3fdd55938c6a5f2c              # double 0.4583481665845166
	.quad	0x3fe14c4c28557e94              # double 0.54056365850188337
	.quad	0x3fd1bab4a36a9b88              # double 0.27702060660015393
	.quad	0x3fc261ef050e3f5c              # double 0.14361369845255012
	.quad	0x3fd9ca2016bf5c50              # double 0.40296175214229368
	.quad	0x3fd7f8eb29d27950              # double 0.37456778606601393
	.quad	0x3fd7fcf00b2486e4              # double 0.37481309021141684
	.quad	0x3fe9501bc5aeccf9              # double 0.79102886781620818
	.quad	0x3fcaec0ac5e60388              # double 0.21032843268406176
	.quad	0x3fce4e0ecf034a24              # double 0.23675713642167395
	.quad	0x3fb09cd4aac870a0              # double 0.064893047041950869
	.quad	0x3fe351052b0f2b33              # double 0.60364015970239959
	.quad	0x3fe604b1735e9f7f              # double 0.68807289631966728
	.quad	0x3fea8cfc887dfc5f              # double 0.829710260950275
	.quad	0x3fb9ec7ae326ef30              # double 0.10126464887337927
	.quad	0x3fd52c7d69b9c3c0              # double 0.33084044766206588
	.quad	0x3fd4121970756ab4              # double 0.31360469801226576
	.quad	0x3fc1b8198eae5d54              # double 0.13843078104830886
	.quad	0x3fd2fb961d8b4b10              # double 0.29660561452071565
	.quad	0x3fe9266f8d418e65              # double 0.78594186390951093
	.quad	0x3fe8a37c0cfc16c1              # double 0.769956612931047
	.quad	0x3fc072df70624458              # double 0.12850563991063058
	.quad	0x3fb3cf97f3aba238              # double 0.077386376371244903
	.quad	0x3fd4bea176329e02              # double 0.32413517515894352
	.quad	0x3fe134f1d5ab7264              # double 0.53771297199598367
	.quad	0x3fe253dd229cd8f9              # double 0.57273728142061409
	.quad	0x3fee7eaee40eaf2a              # double 0.95296425383046324
	.quad	0x3fc7d72cfd567ca0              # double 0.18625414247523953
	.quad	0x3fd838bfe4c9f83c              # double 0.37846371977491677
	.quad	0x3fdca1532bc78ed4              # double 0.44734648967117363
	.quad	0x3fc58214bb91494c              # double 0.16803225668497601
	.quad	0x3fed0c4fd4c81777              # double 0.90775291022212812
	.quad	0x3fe457e638be6868              # double 0.63572989542741443
	.quad	0x3fe346f26749d56e              # double 0.60241050885694647
	.quad	0x3fd47138d5b3b22c              # double 0.31941052312211826
	.quad	0x3fd2231ffc355ec2              # double 0.28339385633215042
	.quad	0x3fe74c111a0f3e5a              # double 0.72803549852137484
	.quad	0x3fe360ff8cc9a06d              # double 0.60559060571268974
	.quad	0x3fef91b87d33cada              # double 0.98653816655709226
	.quad	0x3fee764170987829              # double 0.95193550101590063
	.quad	0x3fdb5accb4de64d4              # double 0.4274169698997643
	.quad	0x3fe2942dbe088104              # double 0.580588217886572
	.quad	0x3feaa71e68a752b2              # double 0.83290024223477688
	.quad	0x3fec19dfc4c08f42              # double 0.87815845897828404
	.quad	0x3fe0f028e2fd9981              # double 0.52931637128931197
	.quad	0x3fd4b319690124e4              # double 0.3234313512262601
	.quad	0x3fafd7e039c5cdd0              # double 0.062193877270057762
	.quad	0x3feaf7b1b0e11809              # double 0.8427360968278218
	.quad	0x3fb8953a4dc2c5a8              # double 0.096027034744813222
	.quad	0x3fe42e33e324908c              # double 0.63063997615655998
	.quad	0x3feb693ed7e9488c              # double 0.8565973488823757
	.quad	0x3fe70015f90249dd              # double 0.71876047739561566
	.quad	0x3fc6df22569364c0              # double 0.17868451335269775
	.quad	0x3fed831a560ced4c              # double 0.92225376898515198
	.quad	0x3fe5dac123f7429f              # double 0.68295342468816844
	.quad	0x3fd83e02694a8d82              # double 0.37878475458474992
	.quad	0x3feac77d5be93989              # double 0.83685176802991734
	.quad	0x3fd552fa12909122              # double 0.33318950474701314
	.quad	0x3fe49e14db4c5d74              # double 0.64429705459308062
	.quad	0x3fdea05316ef22d0              # double 0.47853543510113372
	.quad	0x3fe2d09dbf7a94f1              # double 0.58796584509096139
	.quad	0x3fe4c9e8006e3b4a              # double 0.64964675983524356
	.quad	0x3fed9631dcf56495              # double 0.92458432346315311
	.quad	0x3f9ce96f4b23da60              # double 0.028234232865509745
	.quad	0x3fef6b94e0faed99              # double 0.98188251439516982
	.quad	0x3fefa255ac38ff18              # double 0.98856624257311676
	.quad	0x3fd962fe02c1cc2c              # double 0.39666700619926831
	.quad	0x3fe56475f25b3e4a              # double 0.66851327262151838
	.quad	0x3fd4fef5128d47e8              # double 0.32806135951716309
	.quad	0x3fc681c4ffbdae08              # double 0.17583525168753078
	.quad	0x3fe9cf7ef9b72969              # double 0.80657910130075294
	.quad	0x3fe8f32fa908894a              # double 0.77968581213307542
	.quad	0x3fe0f516de7b8923              # double 0.52991813138604404
	.quad	0x3fe9d4ae268eec19              # double 0.80721194773593929
	.quad	0x3fd9a495a7a6ca32              # double 0.40067044613093394
	.quad	0x3fecc40bca76021f              # double 0.89893140357168366
	.quad	0x3febecde94beaa4e              # double 0.87266472865787548
	.quad	0x3fe65d85d5e42dcc              # double 0.69891635680817776
	.quad	0x3fe18788b14f724b              # double 0.54779467230725609
	.quad	0x3f91f52be6195380              # double 0.017536817473529975
	.quad	0x3fdb3e0436dd9d42              # double 0.42566018445946352
	.quad	0x3fe0faddc3a6e26a              # double 0.53062332356701103
	.quad	0x3fc21ffb32cfc23c              # double 0.14160099011452754
	.quad	0x3fc8e9750eb7ed2c              # double 0.19462455004382073
	.quad	0x3fec0ae28138f1be              # double 0.87632870901830251
	.quad	0x3fde56465673543c              # double 0.47401579325134313
	.quad	0x3fe3c74d7b0ad2e5              # double 0.61807893783278856
	.quad	0x3fe875f319442fe7              # double 0.76439814505419867
	.quad	0x3fe207ccfd25a838              # double 0.56345223849098769
	.quad	0x3fcb9418583924c0              # double 0.21545700366758602
	.quad	0x3fed8f2e7dc489e1              # double 0.92372822345742744
	.quad	0x3fe38a6a86dfa49b              # double 0.61064649908543644
	.quad	0x3fe1058c8d812857              # double 0.53192737233735954
	.quad	0x3f95b50baf614fc0              # double 0.021198446826317996
	.quad	0x3fded2bdf0b8b4b0              # double 0.48161266811332393
	.quad	0x3fc4aaac6d524554              # double 0.16145854318578279
	.quad	0x3fd8fb28e38ebe1a              # double 0.390329572891433
	.quad	0x3fb227ac8bd3b520              # double 0.070917877328345202
	.quad	0x3fe315d4aff514e2              # double 0.59641489378614332
	.quad	0x3fdbf843a8533ae0              # double 0.43702784955978125
	.quad	0x3fe283b25fbe3508              # double 0.57857626628688852
	.quad	0x3fe622a7b91a3198              # double 0.69173036721035697
	.quad	0x3fecc4e700df6da5              # double 0.89903593225919975
	.quad	0x3fc8abd1265f647c              # double 0.19274343846953801
	.quad	0x3f9cec28cb6f78c0              # double 0.028244626442636145
	.quad	0x3fd261554f644150              # double 0.28719074967468305
	.quad	0x3fee680c560e150d              # double 0.95020119483584298
	.quad	0x3fed6c96821e6723              # double 0.91950536168880992
	.quad	0x3fdf958dd6289768              # double 0.49350305475160505
	.quad	0x3fe9dca3565c7a09              # double 0.80818335406712649
	.quad	0x3fbf59665e876b18              # double 0.12245788390957235
	.quad	0x3fc2eda23fb6be6c              # double 0.14787700758960243
	.quad	0x3fd2fa8acbc5bed8              # double 0.29654188060429254
	.quad	0x3fe13a24fa3f599f              # double 0.53834771038491513
	.quad	0x3fe3533c4dfaa67d              # double 0.60391059141438996
	.quad	0x3fbaa9912af6e528              # double 0.10414988802849179
	.quad	0x3fca38be44057f90              # double 0.20485666581498352
	.quad	0x3fc350bbca9894f4              # double 0.1509012927282708
	.quad	0x3feb44c10aa77a35              # double 0.85214283066654295
	.quad	0x3fef460cd7b51f13              # double 0.97730104570743703
	.quad	0x3fc45cd3f580b894              # double 0.15908288466875276
	.quad	0x3fecc78d82abc27d              # double 0.89935946962039248
	.quad	0x3fdaa671abb8700c              # double 0.41640893716407912
	.quad	0x3fee717c0bd5f760              # double 0.95135309516602362
	.quad	0x3f99f27d26af04c0              # double 0.025339084135116208
	.quad	0x3fe0b1c075940184              # double 0.52169821705324226
	.quad	0x3fea6982892cc61c              # double 0.82537962715122459
	.quad	0x3fee083da92d6267              # double 0.93850596468389547
	.quad	0x3f880137d37bbac0              # double 0.011721073285540284
	.quad	0x3fdbd7d1abb1591c              # double 0.43504754797813106
	.quad	0x3fe56257c3aa4ed4              # double 0.668254739912721
	.quad	0x3fe68541def888ae              # double 0.70376676129332849
	.quad	0x3fe43a8e59a59129              # double 0.63214795598154183
	.quad	0x3fa2c1b8dcd59570              # double 0.036634232480348028
	.quad	0x3fcab9d78256abe0              # double 0.2087964426440001
	.quad	0x3fe608459f9fbb73              # double 0.68850976158669963
	.quad	0x3fbb779e45e7e3d0              # double 0.10729397970852905
	.quad	0x3fce5861afd7a8d8              # double 0.23707219205909413
	.quad	0x3fe54599262760be              # double 0.66474587871473267
	.quad	0x3fd70c72e75cd8d8              # double 0.3601348170663079
	.quad	0x3fbaf1aefb26edf8              # double 0.10525029784815121
	.quad	0x3feaecabcba2e59c              # double 0.84139051220624905
	.quad	0x3fee3b2cef0b09b5              # double 0.94472357452496303
	.quad	0x3fd466e2ea9766cc              # double 0.31877968701665504
	.quad	0x3fdf88ccdc44e772              # double 0.49272462378177473
	.quad	0x3fb6c6cce1a11de8              # double 0.088970952115338897
	.quad	0x3fb8ea8f50e79980              # double 0.09732909894191799
	.quad	0x3fe3ae55ea2eb82b              # double 0.6150312017323406
	.quad	0x3fd9c218c28145c2              # double 0.4024717235052685
	.quad	0x3fe0c6698251fca3              # double 0.52422023251701366
	.quad	0x3fd0b986c0c24266              # double 0.2613236315164954
	.quad	0x3fdfa02566528048              # double 0.49414954178246662
	.quad	0x3fd0fe31389f8ce0              # double 0.26551466493238074
	.quad	0x3fece248b2554315              # double 0.90262255507159017
	.quad	0x3fa6c0a933f095b0              # double 0.044438636389070196
	.quad	0x3feac55867e6d36d              # double 0.83659000676435158
	.quad	0x3f9b671317e46d60              # double 0.026760385831136602
	.quad	0x3fe5550cfa978623              # double 0.66663216537216774
	.quad	0x3fe1c977f7f41cfe              # double 0.5558433382838357
	.quad	0x3fd6d2c386f909f8              # double 0.35661400013864819
	.quad	0x3fe4665c352018bb              # double 0.63749513984728112
	.quad	0x3fca191124abd438              # double 0.2038899830874088
	.quad	0x3feb9819cc6e62c7              # double 0.86231698921172828
	.quad	0x3fd707e91296531c              # double 0.35985781493336488
	.quad	0x3fdf854e28c0fb54              # double 0.49251131038538642
	.quad	0x3fd661f24b5b6774              # double 0.3497281776341119
	.quad	0x3fe9718b448e70e2              # double 0.79511035337375469
	.quad	0x3fe774669679caeb              # double 0.73295907392306725
	.quad	0x3feb9f6b87776490              # double 0.86321045358921999
	.quad	0x3fedcb7beabc14d4              # double 0.9310893616353959
	.quad	0x3fd74f4a1ca9e4f8              # double 0.36421444701370786
	.quad	0x3fe9d9f99832ff6b              # double 0.80785827375801256
	.quad	0x3fc816e333365688              # double 0.18819847107504395
	.quad	0x3fcf7df9b2498a48              # double 0.24603196340020106
	.quad	0x3fe70a82b10fabea              # double 0.72003302175778328
	.quad	0x3fe4193f9a3d867c              # double 0.62808208584847547
	.quad	0x3fcdbef04b36d3ec              # double 0.23238948509756996
	.quad	0x3fd499d860b4c410              # double 0.3218899673839255
	.quad	0x3fb1d26fc3a64718              # double 0.069617257371899277
	.quad	0x3fc26322a9e73748              # double 0.14365037246755663
	.quad	0x3fd2ae7356bb15fe              # double 0.29189761609845266
	.quad	0x3fd71d29f3530ef6              # double 0.36115502130654364
	.quad	0x3fdd8d5c6dd6a432              # double 0.4617529938355488
	.quad	0x3fe7c20f022a86ca              # double 0.7424387972170845
	.quad	0x3fe74df7d2a20ff2              # double 0.72826758517521584
	.quad	0x3fe6628cbe073b91              # double 0.69953000178235147
	.quad	0x3fa924186cd47e90              # double 0.049103511128348321
	.quad	0x3fa08cdb1226a810              # double 0.032324644056032636
	.quad	0x3fd94ce9c4d33038              # double 0.39531940671145405
	.quad	0x3fe942835884f9b0              # double 0.78936927117302069
	.quad	0x3fea8277757818cc              # double 0.82842610305012831
	.quad	0x3fc376c3c3a7aab0              # double 0.15206191113914747
	.quad	0x3fee2a99ccef672e              # double 0.94270029093170193
	.quad	0x3fc61ef976ae8664              # double 0.17282026572233911
	.quad	0x3fdc725d6d81f7cc              # double 0.44448028272733775
	.quad	0x3fc5e41006d227c8              # double 0.17102241833737097
	.quad	0x3fe5cdc2a214e2b2              # double 0.6813672223716678
	.quad	0x3fcd94161d0f76c4              # double 0.23108173769917617
	.quad	0x3fec8f627b16d6e9              # double 0.89250301400053644
	.quad	0x3fe40e18d18fb98d              # double 0.62672081880536867
	.quad	0x3fec5f6b10fbbcf3              # double 0.88664773289738574
	.quad	0x3fa7bc03e589d920              # double 0.04635631730063694
	.quad	0x3fecdb9e9521d571              # double 0.9018090164887963
	.quad	0x3fe508f37e8954ec              # double 0.65734266962195198
	.quad	0x3fe40670cd7bb12a              # double 0.62578621037895243
	.quad	0x3fe67cb1d54bd226              # double 0.70272151622208834
	.quad	0x3fe3c8e21226cf89              # double 0.61827186150775149
	.quad	0x3fed0d9a1b4aff51              # double 0.9079103978219597
	.quad	0x3fb1cfff005092e8              # double 0.069580018593636717
	.quad	0x3feedff24ad44cc8              # double 0.96483721366021146
	.quad	0x3fd4dc5937acdedc              # double 0.32594900548018102
	.quad	0x3fe874cad5fb6dc4              # double 0.7642568759287589
	.quad	0x3fe4a701103def1c              # double 0.6453862492776099
	.quad	0x3fd18a175f0d7806              # double 0.27405342371446328
	.quad	0x3fb44cdf6bb78db8              # double 0.0792979848843548
	.quad	0x3fdfd06e0c0f959a              # double 0.49709654977626772
	.quad	0x3fced6af4406f084              # double 0.24092665502201183
	.quad	0x3fd765d8375fe738              # double 0.36559110076597134
	.quad	0x3fd2936fc0bff554              # double 0.29024881194330487
	.quad	0x3fe7e3cfd05fbcc8              # double 0.74655905435602055
	.quad	0x3fdd32e244306bfa              # double 0.45623070391746945
	.quad	0x3fe262deb3e6c5eb              # double 0.57456908356669822
	.quad	0x3fb8d36da9107de8              # double 0.096976140761846019
	.quad	0x3fdad79e24916c72              # double 0.41941026278590876
	.quad	0x3fe244d5b15367bc              # double 0.57090267785974147
	.quad	0x3fd88b2eb37bcd16              # double 0.38349502113051537
	.quad	0x3fc2bde1a5ad19a4              # double 0.14641972150475369
	.quad	0x3feef090347b14eb              # double 0.96686563730386632
	.quad	0x3fe97968d777890d              # double 0.79607050021539438
	.quad	0x3fe34a63c04dcd14              # double 0.60283076819760817
	.quad	0x3fd99187f985b018              # double 0.39950751655010341
	.quad	0x3fd59ab928b33bb6              # double 0.33756855940458352
	.quad	0x3fef283b1fe05d45              # double 0.97366100526679899
	.quad	0x3fe84da53e1afa81              # double 0.75947820787389742
	.quad	0x3fe598c0946f6f00              # double 0.67489651671664319
	.quad	0x3fb916efef0105d8              # double 0.098006244516930408
	.quad	0x3fa62b99ddb4e8d0              # double 0.043301399530223272
	.quad	0x3fcca05d7f60789c              # double 0.22364395827839167
	.quad	0x3fc8b7fcea9a6094              # double 0.19311486678339362
	.quad	0x3fc0419ea43b7560              # double 0.12700255412247952
	.quad	0x3fe57f92c551fff0              # double 0.6718229154503188
	.quad	0x3fe82a2cd0ff8dfb              # double 0.7551483232495565
	.quad	0x3fc9e03073b72360              # double 0.20215421343007289
	.quad	0x3fe10b33913c3c5b              # double 0.53261736265438786
	.quad	0x3fe9f3a470b7271c              # double 0.81099149718031382
	.quad	0x3fb4dcd1e44bb538              # double 0.081494444118750731
	.quad	0x3fe4207a5145190a              # double 0.6289645755103106
	.quad	0x3f74844b7bce4680              # double 0.0050089787081489812
	.quad	0x3fd5e46586d8db22              # double 0.34206522148763174
	.quad	0x3fd76043c4ccc5b4              # double 0.36525053232898164
	.quad	0x3fc56cd3d3123644              # double 0.16738364988525423
	.quad	0x3fdfbfbfc2bc2604              # double 0.49607843415341812
	.quad	0x3feb8c6819abc27d              # double 0.8608894826302983
	.quad	0x3fbdf6939fd0ee48              # double 0.11704371120225077
	.quad	0x3fe42458c1f0536a              # double 0.62943685415903627
	.quad	0x3fc44d339df4a088              # double 0.15860600674318825
	.quad	0x3fe511a033fd5518              # double 0.6584015860959509
	.quad	0x3fe6afd4c4f7940c              # double 0.70896376104485759
	.quad	0x3fd21b38d420c0e2              # double 0.28291149821872186
	.quad	0x3fe54d32efa25c7e              # double 0.66567370227393474
	.quad	0x3fd01d586a4cc0e6              # double 0.25179109936563149
	.quad	0x3fcdb692fc162348              # double 0.23213422116193727
	.quad	0x3fe21da1d9c9389d              # double 0.56611721550304461
	.quad	0x3fe2408f98e41778              # double 0.57038097249527109
	.quad	0x3fcabc9a3d3c2a00              # double 0.20888069143286714
	.quad	0x3fd1b0f72ceef156              # double 0.27642611873649992
	.quad	0x3fec6826512b9918              # double 0.88771358350348617
	.quad	0x3f960020cbc8d2c0              # double 0.021484863698975287
	.quad	0x3fda47a0490fd9c6              # double 0.41062171111061863
	.quad	0x3fdd6103641f2ec0              # double 0.45904621865768647
	.quad	0x3fd73c46810399a0              # double 0.36305391882924631
	.quad	0x3fea0f4187e262b3              # double 0.81436230220704997
	.quad	0x3fe9f010d6005d03              # double 0.81055490300323674
	.quad	0x3fe0f65a7580b3d0              # double 0.53007243108515389
	.quad	0x3fd5c30d155870cc              # double 0.34002997478979746
	.quad	0x3fe58ad1951c7a40              # double 0.67319563983239306
	.quad	0x3fe9e5fd33b21d38              # double 0.8093248376543789
	.quad	0x3fe9e0e4f426e158              # double 0.80870292364037777
	.quad	0x3fe24dd9dbfbf13b              # double 0.5720032974782393
	.quad	0x3fd838b235d32320              # double 0.37846045738528922
	.quad	0x3fe2f4fdae78f6ed              # double 0.59240612103141432
	.quad	0x3fd3de774d75350a              # double 0.31045324863664858
	.quad	0x3fe466e51f8303a9              # double 0.63756042627948262
	.quad	0x3fdbde0cbd8fb242              # double 0.43542784225317999
	.quad	0x3fce55cba4fe9574              # double 0.23699327045794016
	.quad	0x3fea9aa7ee351c42              # double 0.83137890362639433
	.quad	0x3f91222439548c20              # double 0.016731801985894745
	.quad	0x3fe96106e7768cc4              # double 0.79309411246904248
	.quad	0x3fdca2f410147254              # double 0.44744588442134625
	.quad	0x3fee9d591f1aec7f              # double 0.95670753550747623
	.quad	0x3fa5be9c64575e50              # double 0.042469870804492715
	.quad	0x3fe0cd775527fe62              # double 0.5250813163001562
	.quad	0x3fb70cae54d32890              # double 0.090037246426762473
	.quad	0x3fe53ec4d4678448              # double 0.66391221509196274
	.quad	0x3fd987adfcf5c746              # double 0.39890622809536003
	.quad	0x3fe1cda4312382aa              # double 0.55635270688442984
	.quad	0x3fd8c9a383cf7f7c              # double 0.3873070513927741
	.quad	0x3fc8fd70fd243cdc              # double 0.19523441658427643
	.quad	0x3fea6d5a8a3b1466              # double 0.82584883688163013
	.quad	0x3fe229c17fc6b125              # double 0.56759715038564151
	.quad	0x3f9c568c14debc40              # double 0.027673901342208262
	.quad	0x3fe4281f0b468cd2              # double 0.62989761545432033
	.quad	0x3fe4133996dc1232              # double 0.62734679665351778
	.quad	0x3fbb397680fed810              # double 0.10634556435874765
	.quad	0x3fe527aa33120fc7              # double 0.6610918996307128
	.quad	0x3fe8ebd2c680f0eb              # double 0.77878702898263208
	.quad	0x3fe35b300a6142b2              # double 0.60488130595520873
	.quad	0x3fe8d74c4fd1696c              # double 0.77628150548416163
	.quad	0x3fd9b00bc792ae16              # double 0.40136999597118128
	.quad	0x3fe24bc7ac8a28ae              # double 0.57175048541218643
	.quad	0x3fb2683c21c8b2b8              # double 0.071902998207131641
	.quad	0x3fe241bbb03a4a20              # double 0.57052406711074255
	.quad	0x3fb9d15f83bc1720              # double 0.10085103002719764
	.quad	0x3fe73e37b6859904              # double 0.72634492539216966
	.quad	0x3fd2e56349e8fc7c              # double 0.2952507230547281
	.quad	0x3fdcc70b6922d746              # double 0.44964871661374095
	.quad	0x3fcde6994b154108              # double 0.23359981695330867
	.quad	0x3fe1a9aff433031a              # double 0.55196378417176395
	.quad	0x3fe13f8bad908060              # double 0.53900703334148758
	.quad	0x3fef7827a93710d7              # double 0.98341734933685642
	.quad	0x3fd9909fe13a7f3c              # double 0.39945218081446732
	.quad	0x3fd8e4e0d72092da              # double 0.3889696217395745
	.quad	0x3fb4bf82a0b99a98              # double 0.081047214736467033
	.quad	0x3fd7821c907d408e              # double 0.36731638059883032
	.quad	0x3fd07bc9b83beffe              # double 0.25755541793455439
	.quad	0x3fd9ed35e041f76a              # double 0.40510317707218368
	.quad	0x3fe311ba1699b641              # double 0.59591392912052055
	.quad	0x3fc0e257f30826e0              # double 0.13190745703496187
	.quad	0x3fb67469b6e3a660              # double 0.087713820601174941
	.quad	0x3f965ce345f4ab80              # double 0.021838713783988606
	.quad	0x3fdbc291494c07b4              # double 0.43375045926961353
	.quad	0x3fdfda966ae9a8fe              # double 0.49771652641960873
	.quad	0x3fe6e5e79a4ecdad              # double 0.71556453836676825
	.quad	0x3f92b451c5488d20              # double 0.01826598898527465
	.quad	0x3f9f5f833ea807e0              # double 0.030637789439431518
	.quad	0x3fedaa9f76366ebe              # double 0.9270779904213311
	.quad	0x3fec2ee39ced424f              # double 0.88072376870884195
	.quad	0x3fd33702b4855ae8              # double 0.30023257855411467
	.quad	0x3fca966d0a366a68              # double 0.2077156352869054
	.quad	0x3fc39e09f1444204              # double 0.15326046257588655
	.quad	0x3fd8f9d7612ae768              # double 0.39024910439513016
	.quad	0x3fdcff3894f537fe              # double 0.45307745501202124
	.quad	0x3fe4969a9915074a              # double 0.64338426493507339
	.quad	0x3fdcc13808ee1faa              # double 0.44929314491354921
	.quad	0x3fe42a10d89ee1af              # double 0.6301349860068991
	.quad	0x3fe5198aff1910c5              # double 0.65936803649722064
	.quad	0x3fedde4d891c1529              # double 0.93338658122289531
	.quad	0x3feccd2791863d54              # double 0.90004328177193793
	.quad	0x3fe15881f7b2539b              # double 0.54205416086425673
	.quad	0x3fe1a0ad2c2e7bdc              # double 0.55086382512297005
	.quad	0x3fef2e767f776cc3              # double 0.97442173858453207
	.quad	0x3fe31c98e85bff46              # double 0.59724088080108895
	.quad	0x3fdc0bdf2edbd336              # double 0.43822459770244693
	.quad	0x3fe2a33ce7af6c50              # double 0.58242650271439267
	.quad	0x3f9f3208e4ac69a0              # double 0.030464304883119575
	.quad	0x3fd89c2bfc5dd8a6              # double 0.38453197140860096
	.quad	0x3fed1fb328d3d46f              # double 0.91011960958588911
	.quad	0x3fa8389a5f6962d0              # double 0.047306846758777277
	.quad	0x3fa572d05e9f4ae0              # double 0.041891585875097226
	.quad	0x3fe47f32505746a7              # double 0.64052692119203847
	.quad	0x3fdcfa1102d81842              # double 0.45276284482713802
	.quad	0x3fe9b7f3edc87118              # double 0.80370518152224957
	.quad	0x3fcdad752be8c224              # double 0.23185600894932279
	.quad	0x3faa81e24b0a8170              # double 0.051772185955317407
	.quad	0x3fecd473717cd87c              # double 0.90093395391046682
	.quad	0x3fe694829916c57b              # double 0.70562868023095804
	.quad	0x3fe553224dd1c046              # double 0.66639819335069528
	.quad	0x3fdc83215b86cb48              # double 0.4455035585225926
	.quad	0x3fc0a30726fcdc8c              # double 0.12997521785448318
	.quad	0x3fc0711f3e874ff0              # double 0.12845221093323245
	.quad	0x3fd3bcd4edc46f2a              # double 0.3084003755518433
	.quad	0x3fe978f5138309a6              # double 0.79601529894744227
	.quad	0x3fea27bf290bd563              # double 0.81735189453926826
	.quad	0x3f9cbaab9f5500c0              # double 0.028055841064315912
	.quad	0x3faeed21c4af3590              # double 0.060402922877624055
	.quad	0x3fe9a66ffa04205e              # double 0.80156706649087162
	.quad	0x3fc83f83d16abe8c              # double 0.18943832135618199
	.quad	0x3fbe8f7069d8ee70              # double 0.11937620720066788
	.quad	0x3fe99ac4ccf7fd57              # double 0.80014266999198014
	.quad	0x3fe540923968d756              # double 0.66413222515869097
	.quad	0x3fd4d4130fca1874              # double 0.32544399778306077
	.quad	0x3fe3c024ac130926              # double 0.61720498665116419
	.quad	0x3fe653ca99bba1d4              # double 0.69772844339336837
	.quad	0x3fe6ac9f921b3b5a              # double 0.70857218300248381
	.quad	0x3fe9fb0d1fc84692              # double 0.81189590651975352
	.quad	0x3fc87b90c8b0ad9c              # double 0.19127092170070348
	.quad	0x3fba6c86ddaa0b40              # double 0.10321848785137622
	.quad	0x3fe9ad6f4aa2639d              # double 0.8024212320043379
	.quad	0x3fe9fcf11d89e27b              # double 0.81212669152507944
	.quad	0x3feeb3d0edf23c09              # double 0.95945021127579466
	.quad	0x3fb55c162e095e88              # double 0.083436380614665961
	.quad	0x3fe239d8f5cffd7a              # double 0.5695614625000609
	.quad	0x3fe8df55448c704a              # double 0.77726233852764293
	.quad	0x3fe35604863f4270              # double 0.60425020427835641
	.quad	0x3fe1cdb6e959d252              # double 0.55636163307515063
	.quad	0x3feab4f8f6264ac1              # double 0.83459137035455211
	.quad	0x3fec024012692861              # double 0.87527469249586087
	.quad	0x3fee571a6956dda9              # double 0.94813271116338627
	.quad	0x3fe5e4f4f110ec58              # double 0.68419882853721514
	.quad	0x3fd2026fa2d34090              # double 0.28139868641756838
	.quad	0x3feeeabad5db1dfc              # double 0.96615354317412949
	.quad	0x3feb5827f46715d8              # double 0.85451123938463081
	.quad	0x3feb801741b6172f              # double 0.85938608965145658
	.quad	0x3fb6cb1255c37590              # double 0.0890361270316673
	.quad	0x3fe913c7a6cae5eb              # double 0.78366453720735529
	.quad	0x3fe91f6128f64581              # double 0.78508050918951267
	.quad	0x3fe5ab956c53cdd6              # double 0.67719527394950307
	.quad	0x3fdac9cc8f1e34b8              # double 0.41856683708540343
	.quad	0x3fd07a1c68660f82              # double 0.25745306201155682
	.quad	0x3fe0a77274f169e5              # double 0.52044031944688796
	.quad	0x3fed46a7060e770a              # double 0.91487456496153752
	.quad	0x3fe0786ff0a181b4              # double 0.51470181463451192
	.quad	0x3fec5546eeef9327              # double 0.88540980021625593
	.quad	0x3fd09578c82d3318              # double 0.25912303493969224
	.quad	0x3fe5ff18696a3b90              # double 0.68738957012998192
	.quad	0x3fa043b8d9cf7c60              # double 0.031766678417391558
	.quad	0x3fcc67f49bb295d8              # double 0.22192247011586974
	.quad	0x3fe2de74bb813611              # double 0.58965527174012966
	.quad	0x3fea1f5e89eabfbf              # double 0.81632925927078037
	.quad	0x3fe4222bf86e7d46              # double 0.62917135736271557
	.quad	0x3fd99db21f220a7a              # double 0.40024998703317005
	.quad	0x3fe79b54f6450318              # double 0.73771141147162478
	.quad	0x3fe55f8749769874              # double 0.66791118953984929
	.quad	0x3fec48414641e956              # double 0.8838201877800127
	.quad	0x3f8511c376d90a40              # double 0.010287787498900802
	.quad	0x3fcb1f38f9cc8894              # double 0.21189033696379467
	.quad	0x3fcdfeb49bf2bc38              # double 0.23433549513490148
	.quad	0x3fda634f555c2366              # double 0.41231139503411496
	.quad	0x3fee79c00707159d              # double 0.95236207363693703
	.quad	0x3fe60898fa0ca0dd              # double 0.68854950750121768
	.quad	0x3fc3e47bba652740              # double 0.155410257352111
	.quad	0x3fe7aed508b3fb59              # double 0.7400918169003986
	.quad	0x3fec73d1e251b6f0              # double 0.88913816645592014
	.quad	0x3fde7b06a9c51292              # double 0.47625891284068544
	.quad	0x3fe2435f85894ec1              # double 0.57072425919837866
	.quad	0x3fd0c08110d45ef0              # double 0.26174952167046595
	.quad	0x3fe201e304ce9266              # double 0.56273032130100087
	.quad	0x3fe58ce61c7acbc3              # double 0.67344956934390898
	.quad	0x3fc135cc0f4b56a8              # double 0.1344542574576526
	.quad	0x3fd7ec7f096e509a              # double 0.37380958481777216
	.quad	0x3fe417b56ae6e5ff              # double 0.62789412383352772
	.quad	0x3f950366737dfdc0              # double 0.020520783232766737
	.quad	0x3fdda0aa0ebd45ae              # double 0.46293116988553151
	.quad	0x3fdb6ca7014eb3ac              # double 0.42850661399534817
	.quad	0x3fc15e000ffe81e8              # double 0.13568115979161566
	.quad	0x3fd1531f77c93e78              # double 0.27069842050421
	.quad	0x3fdcfddc4c93e048              # double 0.45299441793713813
	.quad	0x3fedc83d96379c3d              # double 0.930693429368041
	.quad	0x3fdf710b1ebd0af2              # double 0.49127462388803089
	.quad	0x3fe63ef80c71c468              # double 0.69518663816974158
	.quad	0x3fb493c39c10dde0              # double 0.080379701234839285
	.quad	0x3fb28bb0ba761a60              # double 0.072444005511081766
	.quad	0x3fed22cf28dac79c              # double 0.91049917201438601
	.quad	0x3fed3b85afe4724e              # double 0.9135158954046092
	.quad	0x3f8a033d586da3c0              # double 0.012701491604916515
	.quad	0x3fea55d9dd317d00              # double 0.82297986223048269
	.quad	0x3fd61a21896ab998              # double 0.34534490985506627
	.quad	0x3fef3d6cc7a531e7              # double 0.97624815934392195
	.quad	0x3fce5749ff09a004              # double 0.23703885033614835
	.quad	0x3fe6797c1b6c45a7              # double 0.70232968669931928
	.quad	0x3fea95be99326b01              # double 0.83077936097410554
	.quad	0x3fcfec365f49fad8              # double 0.24939613011152661
	.quad	0x3fe8c184a8c1fcad              # double 0.77362282715320918
	.quad	0x3fe7a34f626baf97              # double 0.7386853143957407
	.quad	0x3feb8c9d27fbab56              # double 0.86091478165813373
	.quad	0x3fdb6d5be9d4bbaa              # double 0.4285497458940265
	.quad	0x3fea4a47f935594a              # double 0.82156752275003808
	.quad	0x3fb0b3e075d1a6f0              # double 0.065244702114479969
	.quad	0x3f90784359d69a20              # double 0.016083767278951666
	.quad	0x3fe64af5cff9dd7f              # double 0.6966504156143144
	.quad	0x3fc42abafeb1eedc              # double 0.15755402981073174
	.quad	0x3fe1e1e076691695              # double 0.55882285239268248
	.quad	0x3fe1b126b47cdf7f              # double 0.55287490130920947
	.quad	0x3fde1629edd7dada              # double 0.47010277010796886
	.quad	0x3fef3d47ccea4b6c              # double 0.97623052618506056
	.quad	0x3fa265f53bd44170              # double 0.035934127381667902
	.quad	0x3fcf944eae2aaa40              # double 0.24671348098975621
	.quad	0x3fd90dab65e463c6              # double 0.39145932150273344
	.quad	0x3fe9df87ef64a519              # double 0.80853649860833621
	.quad	0x3fab5346a4ef4600              # double 0.05336972010958263
	.quad	0x3feb21e743adae47              # double 0.84788859575696385
	.quad	0x3fd079c98af2289a              # double 0.25743330544413257
	.quad	0x3feb95ce9881fa61              # double 0.86203698908486726
	.quad	0x3fe89d8daacc3100              # double 0.76923259123717003
	.quad	0x3fbff0bb408c0eb8              # double 0.12476702047211574
	.quad	0x3fe60a76df9df6a7              # double 0.68877738642887187
	.quad	0x3fec3f6296cb1287              # double 0.88273744060332227
	.quad	0x3fd1268a4559ed5a              # double 0.26797730228982675
	.quad	0x3fb81f78a621cdc0              # double 0.094230213698941689
	.quad	0x3fe0f9ddb7ebbae0              # double 0.53050123140368655
	.quad	0x3fd7439c702b9264              # double 0.36350165323373163
	.quad	0x3fecaff3330a02c8              # double 0.89647827118468459
	.quad	0x3fdf89bc2e19771e              # double 0.49278168203260175
	.quad	0x3fe48407ad231882              # double 0.64111694160307331
	.quad	0x3fecac498576fa2c              # double 0.89603115146002698
	.quad	0x3fd1aee40df0cdfc              # double 0.27629948960677075
	.quad	0x3fdecc64dcff2dde              # double 0.48122521955221298
	.quad	0x3fcc052532a4633c              # double 0.21890702221642211
	.quad	0x3fe0677174caa288              # double 0.51262734232757712
	.quad	0x3fed7d50b95b362a              # double 0.92154728128816044
	.quad	0x3fdd153c6f59f290              # double 0.45442114710002901
	.quad	0x3feae224d3d8d1a5              # double 0.8401054513583871
	.quad	0x3fc50c33b0b4186c              # double 0.16443487289524528
	.quad	0x3fe90c42a06942c2              # double 0.7827466137915382
	.quad	0x3fef40b6a58a7de8              # double 0.97664959270690321
	.quad	0x3fc69fc98cb2849c              # double 0.17675132150637729
	.quad	0x3fece21f01cfd38d              # double 0.90260267595168531
	.quad	0x3fc21d12651f09f8              # double 0.14151220262108644
	.quad	0x3fe5ded20b654b30              # double 0.68344976640432797
	.quad	0x3fd4bc72ab505a98              # double 0.32400194864150356
	.quad	0x3fe3d5d711e37a09              # double 0.61985352987159203
	.quad	0x3fd76d865c969184              # double 0.3660598663502912
	.quad	0x3fdbf43e461da860              # double 0.43678242537737866
	.quad	0x3fe3c586c48c0310              # double 0.61786211383886958
	.quad	0x3fbea6d392ff2fa0              # double 0.11973306978978693
	.quad	0x3fe59bf7552a89c7              # double 0.67528883584991994
	.quad	0x3feb25cfbb701716              # double 0.84836565598445435
	.quad	0x3fca8744b7b69ee8              # double 0.2072530648267652
	.quad	0x3fbc1e45eaeb9750              # double 0.10983693108900394
	.quad	0x3feac2f764ef2f6f              # double 0.83629960740789311
	.quad	0x3fdb7d5d3450a38a              # double 0.42952661618124266
	.quad	0x3fea5bac91817792              # double 0.8236906854542545
	.quad	0x3fe9627af7dcd6a6              # double 0.79327152643846399
	.quad	0x3fd893881fba1c7a              # double 0.38400462244357636
	.quad	0x3fd85ab4356dab56              # double 0.38053612916580926
	.quad	0x3fd05031aef1a5ea              # double 0.25489465793961463
	.quad	0x3fe3229a0667a1ec              # double 0.59797383547725991
	.quad	0x3fe6d5ecd56c5c3f              # double 0.71361390766367794
	.quad	0x3fbaf09986339aa0              # double 0.10523376013189045
	.quad	0x3fd584ccf64325b4              # double 0.33623050736477045
	.quad	0x3fd0cf1924413152              # double 0.26264027157300973
	.quad	0x3fee90b3f716978d              # double 0.95516393908904862
	.quad	0x3fdd33dfe68173f8              # double 0.45629117498702909
	.quad	0x3febbf26c653a417              # double 0.86708391891181946
	.quad	0x3fdd2afb2657edda              # double 0.45574835533599656
	.quad	0x3fdda0b98becd6f6              # double 0.46293486275258944
	.quad	0x3fe8ae67e4bfea31              # double 0.77128977468175297
	.quad	0x3fd73a3f8d41181e              # double 0.36293019098627777
	.quad	0x3feaff5eb0370855              # double 0.84367308060633184
	.quad	0x3fe34c57dc894c52              # double 0.60306923936367185
	.quad	0x3fe343db81bd3a81              # double 0.60203337993318951
	.quad	0x3fbdd094141f5b50              # double 0.11646390429755837
	.quad	0x3fefe180e72d7cf7              # double 0.99627728607074927
	.quad	0x3fe2e221750db4c0              # double 0.59010384428042784
	.quad	0x3fd5061db4fc0c2e              # double 0.32849829363130112
	.quad	0x3fe2a59cb0607b9f              # double 0.58271631668673141
	.quad	0x3fd19115d5113e00              # double 0.27448030288084624
	.quad	0x3feaf16c920bd8cf              # double 0.84197071575797533
	.quad	0x3fd6ef5f0ebd9298              # double 0.35836006583694191
	.quad	0x3fc3b48d68df2750              # double 0.15394752140701451
	.quad	0x3fa3658606eaf6a0              # double 0.037883938164197106
	.quad	0x3fc9ce2280b5d2cc              # double 0.20160323414497439
	.quad	0x3fee663ada63ee98              # double 0.94997923521391935
	.quad	0x3fe3775de5233159              # double 0.60832113984501313
	.quad	0x3fba65a699c54618              # double 0.10311356786885317
	.quad	0x3fd93f046ee840b2              # double 0.39447127180848007
	.quad	0x3fca5c47cc05a190              # double 0.20594117605220363
	.quad	0x3fad93bb5c3db610              # double 0.057767729768652853
	.quad	0x3fcb32614640b9e4              # double 0.21247497492136269
	.quad	0x3fa7b311173c05b0              # double 0.046288045965421687
	.quad	0x3fcda445b8e9744c              # double 0.23157569435980674
	.quad	0x3fec143787573e55              # double 0.87746788438557621
	.quad	0x3fe297fbffbf09fc              # double 0.58105277967871372
	.quad	0x3fe19040b4c303c7              # double 0.54885897927317095
	.quad	0x3fcf55f7fd1e1f30              # double 0.24481105670224101
	.quad	0x3fd0944a629f1728              # double 0.25905093794823353
	.quad	0x3fe5f57d7b005dd7              # double 0.68621706031529583
	.quad	0x3fd7ed426d698da6              # double 0.37385616955563206
	.quad	0x3fed8f73ce21c0d1              # double 0.92376127491118087
	.quad	0x3fdd9b0a4ed9dd5c              # double 0.46258790684028894
	.quad	0x3fe679f0ca2a57f3              # double 0.70238532529287878
	.quad	0x3feb452a7661de6e              # double 0.85219309922736186
	.quad	0x3fef3dfb8f45c883              # double 0.97631624205520528
	.quad	0x3fdd145e78d7a27a              # double 0.45436822701461888
	.quad	0x3fc6eeb28135f8ec              # double 0.17915946301577124
	.quad	0x3fdc5a1c5ce3e09e              # double 0.4429999262934049
	.quad	0x3fe51810741c0c0e              # double 0.65918753316543799
	.quad	0x3fe1ed8ad7241623              # double 0.56024686832160275
	.quad	0x3fcbdf8cd432f104              # double 0.21775970803526701
	.quad	0x3fe747703e359873              # double 0.72747051382317662
	.quad	0x3fb312f4695262c8              # double 0.074507976258597286
	.quad	0x3fe09dc40461b761              # double 0.51925850730706824
	.quad	0x3f84ebf9fb275d80              # double 0.010215714432816325
	.quad	0x3fd6cd88a4a1b50a              # double 0.35629478528319736
	.quad	0x3feaa4d76e8eb244              # double 0.83262225716823268
	.quad	0x3faf7e459788d570              # double 0.061510252712120628
	.quad	0x3fe2dee93306aace              # double 0.58971080747627425
	.quad	0x3fe4d60808176b64              # double 0.65112687664382607
	.quad	0x3fdd404eb9198318              # double 0.45705001903665865
	.quad	0x3fc8ec866f1accac              # double 0.1947181742194507
	.quad	0x3fdea43397924962              # double 0.47877206613443068
	.quad	0x3fe92177b1e9a88e              # double 0.78533539532260632
	.quad	0x3fa8d909d3626e10              # double 0.048530871442576395
	.quad	0x3fbe394ba163b0f0              # double 0.11806175890132287
	.quad	0x3fb16af7be7374d0              # double 0.068038448330713708
	.quad	0x3fd30f83667a640a              # double 0.29782185561776997
	.quad	0x3fe27d67e9c32743              # double 0.57780833870604231
	.quad	0x3fe5d38bf737cf3b              # double 0.68207357678190961
	.quad	0x3fd726817691c802              # double 0.36172520236061712
	.quad	0x3fe7f4da9a45d75d              # double 0.74863939410600333
	.quad	0x3feca1362ac383af              # double 0.89467914917269364
	.quad	0x3fe60f3e7edc2017              # double 0.68936085488622012
	.quad	0x3fb8bf87fe432eb8              # double 0.096672534538067789
	.quad	0x3fede2122845469a              # double 0.93384654870370132
	.quad	0x3fb5fe6ec8d42a48              # double 0.085913585691892114
	.quad	0x3fd5ca09659aeac0              # double 0.34045634195687668
	.quad	0x3fe62b9d91dd2ab1              # double 0.69282415856408452
	.quad	0x3fc37835c493d388              # double 0.15210601900585297
	.quad	0x3fea70a49c8e42ed              # double 0.82625036790167672
	.quad	0x3fe1889c632037bb              # double 0.54792613373296406
	.quad	0x3fe7c05a729f231e              # double 0.74223062884366064
	.quad	0x3fc562a2710f96ec              # double 0.1670725872092399
	.quad	0x3fe4e86469f48fa6              # double 0.65336819357297737
	.quad	0x3fd8ee46b8a67f70              # double 0.38954322845710632
	.quad	0x3fd4f41e08468dee              # double 0.3273997383896291
	.quad	0x3fe41c3203948db1              # double 0.62844181727671444
	.quad	0x3fe32ad5dcde7fc6              # double 0.59897893084052423
	.quad	0x3fc6d42870cf696c              # double 0.17834954746542608
	.quad	0x3feae7dc6d61500f              # double 0.84080335009866924
	.quad	0x3fe0a977b69e38bf              # double 0.52068696658695746
	.quad	0x3fee657b3ae5e28a              # double 0.94988786223901056
	.quad	0x3fdb8e737293327a              # double 0.43056951703037039
	.quad	0x3fcec5fffa0996e4              # double 0.24041747769222532
	.quad	0x3fd6651da09dbcf6              # double 0.34992161450550385
	.quad	0x3fbe872dea120ae8              # double 0.11925017323123266
	.quad	0x3fd9bfd9438a420e              # double 0.40233451457700731
	.quad	0x3fe72fa6e4e892ae              # double 0.7245668860310468
	.quad	0x3f85266d560e4300              # double 0.010327200115882729
	.quad	0x3fdd7ceeed923070              # double 0.4607503242521096
	.quad	0x3fefb04bcbd22c22              # double 0.99027051743303596
	.quad	0x3fd246295688c568              # double 0.28553231669055501
	.quad	0x3fe2d77dd69fdde3              # double 0.58880512160152099
	.quad	0x3fde21a8f3645e2e              # double 0.47080444115406095
	.quad	0x3fbd1ffeed758058              # double 0.11376946732843984
	.quad	0x3fe80f3303819ffa              # double 0.75185537991364915
	.quad	0x3fd7c084d130aab0              # double 0.3711254160759081
	.quad	0x3f99ca4d47fba2e0              # double 0.025185782927027556
	.quad	0x3fde1f569d03e0d8              # double 0.47066274007330611
	.quad	0x3fec60c11febfb7c              # double 0.88681083903053048
	.quad	0x3fc313a17a3f2140              # double 0.14903658360550232
	.quad	0x3fb911e1ee0a8a78              # double 0.097929115882417039
	.quad	0x3fea6083547851f9              # double 0.82428137300536186
	.quad	0x3fec6254696a877a              # double 0.88700314129913171
	.quad	0x3fe141de581ab525              # double 0.53929059226871756
	.quad	0x3feb73c01f6f693f              # double 0.8578796972244972
	.quad	0x3fe2734ae56b23a1              # double 0.5765737992124863
	.quad	0x3fea2715642742a9              # double 0.81727094231799413
	.quad	0x3fe6c78061339171              # double 0.71185320839553701
	.quad	0x3fe31eaa2be30e50              # double 0.59749325343768511
	.quad	0x3fd3d301ef1ce064              # double 0.30975387907847662
	.quad	0x3fbc2422390c9fc8              # double 0.10992635624700065
	.quad	0x3fb15d4bf15187a0              # double 0.067829843917506683
	.quad	0x3fd923ef302068fa              # double 0.39281825733054598
	.quad	0x3fd31b29f0a6204a              # double 0.29853294850227441
	.quad	0x3fe6f560457368c8              # double 0.71745313229191598
	.quad	0x3fd9edcd84f12dca              # double 0.40513933165194926
	.quad	0x3fef8a1f10dd1534              # double 0.98561051648781594
	.quad	0x3fc53b099a007ec8              # double 0.16586418170572004
	.quad	0x3fc171cbe5101374              # double 0.13628529247958066
	.quad	0x3fdbf5743837770a              # double 0.43685632219227044
	.quad	0x3fe725da34011b66              # double 0.72337064892859071
	.quad	0x3fd83b495fea2954              # double 0.37861856810254335
	.quad	0x3fb9aa86f18e4728              # double 0.10025828740461107
	.quad	0x3fcf73b183c1c774              # double 0.24571818288273628
	.quad	0x3fee337dad9c92b4              # double 0.94378551395910514
	.quad	0x3fdfd7ecd110691e              # double 0.49755402008453753
	.quad	0x3fea0e741c76ffa1              # double 0.81426435050524415
	.quad	0x3f8cc6b45d2f1a80              # double 0.014050873845815604
	.quad	0x3fe4fd6c1830ffc5              # double 0.65593533253558489
	.quad	0x3fbe7c18a759e308              # double 0.11908105931969371
	.quad	0x3fcfdf92d70d4f68              # double 0.24901042461953726
	.quad	0x3fc90c89ed1e2cfc              # double 0.19569515302678286
	.quad	0x3fc1f9e8ae1f141c              # double 0.14043911458989633
	.quad	0x3fe4fb042a02bc1d              # double 0.6556416340371275
	.quad	0x3fe26538be6f8c4c              # double 0.5748561591575565
	.quad	0x3fec7d4af0ad0cb0              # double 0.89029452330614411
	.quad	0x3fec2db69d9e8d68              # double 0.88058024201420171
	.quad	0x3fa36b9ad0c5ab50              # double 0.037930334076767935
	.quad	0x3fe247830d0c2062              # double 0.57122948215784342
	.quad	0x3fd073ccb54ca668              # double 0.25706784920712389
	.quad	0x3fe54a42f274744f              # double 0.66531512598488429
	.quad	0x3fde0ae0da4c3992              # double 0.46941396062984453
	.quad	0x3fd434d88d9d71e2              # double 0.31572545842735
	.quad	0x3fecce22a3a4c85e              # double 0.90016300164849006
	.quad	0x3fba7b90c1d975d8              # double 0.1034479592576284
	.quad	0x3fe78f688ad5886a              # double 0.73625590435063981
	.quad	0x3fe5fef7ff49af5c              # double 0.68737411366371814
	.quad	0x3fe2525acab309e3              # double 0.57255305852623584
	.quad	0x3fed3c86459871b8              # double 0.91363824456089215
	.quad	0x3fe6bb71aed9ffe9              # double 0.71038135672278913
	.quad	0x3fd210ec1416dc68              # double 0.28228284799428716
	.quad	0x3fed551a97fa9fbf              # double 0.91663865741156048
	.quad	0x3fd02d5278aeee3c              # double 0.25276624474983911
	.quad	0x3fd85cfddf02a1ee              # double 0.38067576197002395
	.quad	0x3fd97548a322e80e              # double 0.39778343135151395
	.quad	0x3fa64a74909b81e0              # double 0.043536799099232359
	.quad	0x3f9c761bd47760e0              # double 0.027794298975863607
	.quad	0x3fb3d668e73dc090              # double 0.07749038358247362
	.quad	0x3fee801904d17cf4              # double 0.95313692990376219
	.quad	0x3fe139715b3e9b09              # double 0.53826206036760127
	.quad	0x3fc477f996f0bfbc              # double 0.15991134519708605
	.quad	0x3fdbf3737bf9cdec              # double 0.43673407656680641
	.quad	0x3fc2367bacffe320              # double 0.14228769252056228
	.quad	0x3fefab341317b074              # double 0.98964885453234652
	.quad	0x3fd595f20767c226              # double 0.33727694247412143
	.quad	0x3fd7e10a54087ac2              # double 0.37311037260398561
	.quad	0x3fe211f57e22d1ce              # double 0.56469225536289414
	.quad	0x3facfb8d80558eb0              # double 0.056606695094868598
	.quad	0x3fe013e98baf9f7a              # double 0.50243069918086225
	.quad	0x3fd8e7a12a7e77d0              # double 0.38913754606062145
	.quad	0x3fe953790c470a1a              # double 0.79143955610226446
	.quad	0x3fd79e0d58201dfa              # double 0.3690217362022562
	.quad	0x3faae2afb642ff10              # double 0.052510729788535326
	.quad	0x3fd6349a3eade374              # double 0.3469606029607839
	.quad	0x3f99dcaf75b5f1a0              # double 0.025255910453311992
	.quad	0x3f65b472719f1000              # double 0.0026495204192276134
	.quad	0x3fe932e712eba912              # double 0.78746370025081291
	.quad	0x3fd2c425b57f5ec8              # double 0.29322188114518299
	.quad	0x3fda3dcd25b225a0              # double 0.41002205544699599
	.quad	0x3fd6ffa544da52b2              # double 0.35935336803349138
	.quad	0x3fe2a1e301389904              # double 0.58226156462185985
	.quad	0x3fed2a7c4cdbce40              # double 0.91143622409294522
	.quad	0x3fca11a9158bdd18              # double 0.20366395523135661
	.quad	0x3faf6ee9adb828d0              # double 0.061393072563150519
	.quad	0x3fed5a87702080a0              # double 0.91730090999410052
	.quad	0x3fde1f681b4d6b66              # double 0.47066691080333667
	.quad	0x3fd62f2655cc7ff8              # double 0.34662779215614092
	.quad	0x3fdd4d8fe0fe8862              # double 0.45785901043030297
	.quad	0x3fd9541085bb6348              # double 0.39575589236988096
	.quad	0x3fcf76b60fdcaee0              # double 0.24581027769578778
	.quad	0x3fe70eaff9b75d3b              # double 0.72054289601047772
	.quad	0x3f98ba6bad606aa0              # double 0.024148638207501905
	.quad	0x3fe58e96b36f87ae              # double 0.67365584417369972
	.quad	0x3fdb53d56c8d7004              # double 0.42699180222348354
	.quad	0x3fd61e69c095071c              # double 0.34560626799439986
	.quad	0x3feba6b81fa8a79f              # double 0.86410146888123396
	.quad	0x3faa0496cb32a700              # double 0.050816261581827504
	.quad	0x3fcbb910ff110d44              # double 0.21658527807640315
	.quad	0x3fd88a1a261f9b3a              # double 0.38342908595079772
	.quad	0x3fdc2498aa1ba018              # double 0.43973366367436162
	.quad	0x3fe86894c05d7877              # double 0.76276624270737059
	.quad	0x3fe43ee61e0e3820              # double 0.63267808790419977
	.quad	0x3fb59d41ca988a48              # double 0.084430801355247387
	.quad	0x3feed11942d245b4              # double 0.9630247407059671
	.quad	0x3fed0084fd77fc78              # double 0.90631341462712012
	.quad	0x3fd6eaeb29822f88              # double 0.35808829358642713
	.quad	0x3fd8f8beab69df6e              # double 0.39018217792135246
	.quad	0x3fd918f1582508d6              # double 0.39214738471868082
	.quad	0x3fd5653012c281b4              # double 0.3343010123444643
	.quad	0x3fe3768a4d534dae              # double 0.60822024443262079
	.quad	0x3fd4a5664b8f16c2              # double 0.32259518984606583
	.quad	0x3feb5b1f0661d22e              # double 0.85487319227701675
	.quad	0x3fd116c46e30f7be              # double 0.26701460610263072
	.quad	0x3fda2804a4e486d4              # double 0.40869251349259383
	.quad	0x3fb9e1083e1e7fb8              # double 0.1010899688394592
	.quad	0x3fcd86881dcf175c              # double 0.23066808181300302
	.quad	0x3fe518ef5e3944d1              # double 0.65929382708614004
	.quad	0x3fee08041eb5603b              # double 0.93847852704767065
	.quad	0x3fcc6196441dbe1c              # double 0.22172811819062666
	.quad	0x3fde8ee39f4a0166              # double 0.47747126155447572
	.quad	0x3fa656fc49cf3430              # double 0.043632396707473098
	.quad	0x3fdca5e532ab6c44              # double 0.44762544582562591
	.quad	0x3fef67966f23b7e3              # double 0.98139497477472692
	.quad	0x3fe25b59ea64fd8b              # double 0.57365127353834688
	.quad	0x3fec5e3b8646ac00              # double 0.88650299287598955
	.quad	0x3fe75a7dcaf380d2              # double 0.72979631079581453
	.quad	0x3fe9edf078d747d1              # double 0.81029533006425869
	.quad	0x3fed3ca17a3aada0              # double 0.91365121720211917
	.quad	0x3fe3d6f1414a461b              # double 0.61998808624247503
	.quad	0x3fd6eab037f4ec32              # double 0.35807424034618685
	.quad	0x3fc8aa4b33564ff4              # double 0.19269695288369315
	.quad	0x3fd100bbd8f15ea2              # double 0.26566978631806581
	.quad	0x3fadfa303bfcd060              # double 0.058549411127757578
	.quad	0x3fd4a9b25e08668c              # double 0.3228574674882132
	.quad	0x3fc6509cf27f00e8              # double 0.17433511582021954
	.quad	0x3feb5b97c138a414              # double 0.85493076075101948
	.quad	0x3fe8e77554da18e8              # double 0.77825419018406894
	.quad	0x3fe72e4dd891e630              # double 0.72440235422909005
	.quad	0x3fde99bccf3dfbb2              # double 0.47813339460838755
	.quad	0x3fe66b141f546c32              # double 0.70057111853691922
	.quad	0x3fe2ab6cc440acac              # double 0.5834258873996041
	.quad	0x3fc06a469797d44c              # double 0.1282432785225488
	.quad	0x3fd24072a317abdc              # double 0.28518358160971302
	.quad	0x3fbff0adecaa5520              # double 0.12476622608149457
	.quad	0x3fb467d3e427e070              # double 0.079709284975139516
	.quad	0x3fcc9f9f84b9bee0              # double 0.22362131100407279
	.quad	0x3fc25551020cb4cc              # double 0.1432286510475137
	.quad	0x3fe2d06d3962d6f8              # double 0.58794270714017127
	.quad	0x3fe8dcf372deefa0              # double 0.77697155414306351
	.quad	0x3fd82dad1651ed60              # double 0.3777878492325808
	.quad	0x3fd4cbfbc83a08b6              # double 0.32495016625774598
	.quad	0x3fec673b50d9b20a              # double 0.8876015261753889
	.quad	0x3fe96355452cb9ac              # double 0.7933756209438818
	.quad	0x3fa71eadd58ce940              # double 0.045155937498253085
	.quad	0x3fed4331ea543e3a              # double 0.9144525124301659
	.quad	0x3fedd49c1cb79f7f              # double 0.93220334633677726
	.quad	0x3fe4b766d3cf6f11              # double 0.64738789910504313
	.quad	0x3fc8b91eb96ebc04              # double 0.19314941458057444
	.quad	0x3fd4c257c0ad22d2              # double 0.32436174217268132
	.quad	0x3fed8f6f2ab958b3              # double 0.92375906319172996
	.quad	0x3fd8ee8bbf0a424c              # double 0.38955968528992879
	.quad	0x3fd5594b5b8ac6b0              # double 0.3335750955549015
	.quad	0x3fd9647917fb9c54              # double 0.39675738660884474
	.quad	0x3f5fe79e55f45c00              # double 0.0019473119971900044
	.quad	0x3fe29f952429f828              # double 0.58198029578466492
	.quad	0x3fc6d90f66f46f04              # double 0.1784991505345418
	.quad	0x3fe61f33222c86e1              # double 0.69130856203647906
	.quad	0x3fcdbe67856d5708              # double 0.23237318053241318
	.quad	0x3fdeb2733181f7d4              # double 0.47964172205672395
	.quad	0x3fb805ad337e3fb0              # double 0.093836617538044064
	.quad	0x3fe2cdc8b26e3565              # double 0.58762011384685009
	.quad	0x3fe345abd8aaf9d6              # double 0.60225479429191853
	.quad	0x3fe80c61a8c62637              # double 0.75151141132045651
	.quad	0x3fe7b11c1c902d39              # double 0.74036984995601707
	.quad	0x3fdf75c663b965c4              # double 0.49156341303531925
	.quad	0x3fe50c9fd1b4e535              # double 0.65779105146717731
	.quad	0x3fc88658ca0314e0              # double 0.1915999399554158
	.quad	0x3fe4ff342a2b0f2e              # double 0.65615280376412044
	.quad	0x3fdb5454a23d4dcc              # double 0.42702213138292389
	.quad	0x3fef27f46d9dde4a              # double 0.97362729463106601
	.quad	0x3feb849e566fc3e4              # double 0.85993878252167776
	.quad	0x3feab7185257e67f              # double 0.83485046465575852
	.quad	0x3faa47603335a240              # double 0.051325803996239205
	.quad	0x3feaa6fed84ac51e              # double 0.8328851913885591
	.quad	0x3fe4cd60978d196a              # double 0.65007047271573737
	.quad	0x3fd6f07d96a6b038              # double 0.35842838012718259
	.quad	0x3fe620d47847a89f              # double 0.69150756351634246
	.quad	0x3f94c0da9844c900              # double 0.020266929191344651
	.quad	0x3fe167205a9904c6              # double 0.54383866972798312
	.quad	0x3fe38f1faf349416              # double 0.61122116298486406
	.quad	0x3fbbe59a79e87500              # double 0.10897222019453423
	.quad	0x3fedad36de6ee40f              # double 0.92739432758310325
	.quad	0x3fd8fc033c429688              # double 0.39038163075233756
	.quad	0x3fe68e74d514ea0a              # double 0.70488969438093929
	.quad	0x3fe8e2e90d8064c6              # double 0.777699018831435
	.quad	0x3fdf9022d3441ea0              # double 0.49317236548857046
	.quad	0x3fd47471d26e8614              # double 0.31960721540426218
	.quad	0x3fdf498615a95a56              # double 0.48886253466972585
	.quad	0x3fd4116c6b5334ac              # double 0.31356344681700921
	.quad	0x3fec1f34fe6ca56e              # double 0.87880944912209968
	.quad	0x3febe47e5a98f5e1              # double 0.87164228148293088
	.quad	0x3fd00f23174aadd0              # double 0.25092389368611823
	.quad	0x3fdf785af10b2a52              # double 0.4917209009114788
	.quad	0x3fe10582ca94d453              # double 0.5319227177302629
	.quad	0x3fe9519bcea436d1              # double 0.79121198997173725
	.quad	0x3fe588f627fbd050              # double 0.67296893891626475
	.quad	0x3fea3b0e05001acc              # double 0.8197088334717022
	.quad	0x3fd32fc6f5303810              # double 0.29979108757186257
	.quad	0x3feb2160c28ad47c              # double 0.84782445904296777
	.quad	0x3fe620bc18434781              # double 0.69149594057874719
	.quad	0x3fe82e0fb0609e2a              # double 0.75562271546090654
	.quad	0x3fee9f4a51789f2b              # double 0.95694461738910286
	.quad	0x3fe4c39367180dfd              # double 0.64887399802722678
	.quad	0x3fa39082fbbc6200              # double 0.038211911420322764
	.quad	0x3fef5fa2a257bd8a              # double 0.98042422969403842
	.quad	0x3fc2244091ae5270              # double 0.14173133004500782
	.quad	0x3fc7f1b00f40abe8              # double 0.18706322426564204
	.quad	0x3fb80e6e9d519880              # double 0.093970216186422206
	.quad	0x3fefd522e33afde3              # double 0.99476761227554921
	.quad	0x3fe93cf7e6207914              # double 0.78869242617273238
	.quad	0x3f9d6f5521471240              # double 0.028745012432198402
	.quad	0x3fe11aa5f154c835              # double 0.53450295577045515
	.quad	0x3fee5426cd4f6b32              # double 0.94777240848211464
	.quad	0x3fa477cf1c189050              # double 0.039976570300752301
	.quad	0x3fb4acd878e123f0              # double 0.080762414466462706
	.quad	0x3fc98b5f9971dd18              # double 0.19956583969517605
	.quad	0x3fddc21ecf03be2c              # double 0.46497316566726243
	.quad	0x3fb951a6e5867708              # double 0.098902159725607786
	.quad	0x3fede3b5e10b7455              # double 0.93404668764163523
	.quad	0x3feafc9a3bbd16f2              # double 0.84333526294423522
	.quad	0x3fd42d6675565f76              # double 0.31527101000528235
	.quad	0x3fe5e28e51f6d79e              # double 0.68390575417173571
	.quad	0x3fd2f2fc54407ba2              # double 0.29608066776011743
	.quad	0x3fe3ca589c02fec0              # double 0.6184504553893575
	.quad	0x3fd3dc37689fc35c              # double 0.3103159448356132
	.quad	0x3fdec7ab24589dfe              # double 0.48093679952077639
	.quad	0x3fe69651272bf403              # double 0.70584924364777668
	.quad	0x3f74f45032bff680              # double 0.0051158077949345904
	.quad	0x3feb831c3982724a              # double 0.85975466949782597
	.quad	0x3fb966be019d6318              # double 0.099223971742855688
	.quad	0x3fe5f7bca5678852              # double 0.6864913206629899
	.quad	0x3fee49e70d2b6d8c              # double 0.94652130672641154
	.quad	0x3fab6a858d583550              # double 0.05354707098386291
	.quad	0x3fe414dfe915397e              # double 0.6275481750870282
	.quad	0x3fbd65d732191410              # double 0.11483521435828004
	.quad	0x3fea752c606502cd              # double 0.82680338694634659
	.quad	0x3fd38f5559ee3acc              # double 0.30562337667735728
	.quad	0x3fdd7108948e5018              # double 0.46002401835835505
	.quad	0x3fdb6c636be37e82              # double 0.42849050079346551
	.quad	0x3faa663115490520              # double 0.051560911033911916
	.quad	0x3fe0b7937ce96c57              # double 0.52240919491613169
	.quad	0x3fe6fd61c81ff5b1              # double 0.71843041502841321
	.quad	0x3fe493a1a7f0e09b              # double 0.64302141953432412
	.quad	0x3fe2e25cc516d1f3              # double 0.59013212675068727
	.quad	0x3fd70b356d922a9c              # double 0.36005912494935344
	.quad	0x3fe80939b59892a8              # double 0.75112615077940337
	.quad	0x3fceff5a873eb6ac              # double 0.24216777423628366
	.quad	0x3fe5aa9be2461932              # double 0.67707628435235834
	.quad	0x3f96878a3ae348e0              # double 0.022001418918827009
	.quad	0x3fdfc3d9a3001b4c              # double 0.49632874410638261
	.quad	0x3fe287a5153d5bdb              # double 0.57905820988059575
	.quad	0x3fc5996838b7c094              # double 0.16874411363051378
	.quad	0x3fcd10c788026ce8              # double 0.22707456723296748
	.quad	0x3fddc20b7006118c              # double 0.4649685472470757
	.quad	0x3fa3f74841692710              # double 0.038995988831244444
	.quad	0x3fd9913c0a6f6bd6              # double 0.39948941248956993
	.quad	0x3fd125d841f93384              # double 0.26793486063689209
	.quad	0x3fdeb234b4003286              # double 0.47962682321739469
	.quad	0x3fcb3ca83a0f2c94              # double 0.21278860888410078
	.quad	0x3fe981748058483f              # double 0.79705262248376829
	.quad	0x3fe1356a8e501813              # double 0.53777053637964156
	.quad	0x3fe68eaba682ea0a              # double 0.70491583368067379
	.quad	0x3fe69a8c3a21434b              # double 0.70636569360258628
	.quad	0x3fe8a17f7a5d861d              # double 0.76971410655477579
	.quad	0x3fd6f310f611ec6a              # double 0.35858558683657427
	.quad	0x3fe75da012b4497d              # double 0.73017886784718622
	.quad	0x3fd2276abb657446              # double 0.28365581798954442
	.quad	0x3fde2df61692d746              # double 0.47155525402500975
	.quad	0x3fbe033f69213de0              # double 0.11723705593725908
	.quad	0x3fc0945b05e732a0              # double 0.12952745235670182
	.quad	0x3fd93a66863d8a2e              # double 0.39418948277867372
	.quad	0x3fe0226c72e8aa88              # double 0.50420210307250191
	.quad	0x3febcd6be005f471              # double 0.86882585291426839
	.quad	0x3fd1be9a901b0706              # double 0.27725853035745762
	.quad	0x3fec78141850cc33              # double 0.88965801953452794
	.quad	0x3fd358b43bc58022              # double 0.30228906476077289
	.quad	0x3fe5043b96d668d9              # double 0.65676669559914125
	.quad	0x3fd9d3ac2f9fb3b0              # double 0.40354447031750862
	.quad	0x3fdf111e4f30c286              # double 0.48541982396549377
	.quad	0x3fefe2b4d686041a              # double 0.99642412089463339
	.quad	0x3fec65c5214c56ef              # double 0.88742310050539952
	.quad	0x3fd81281a8ad985c              # double 0.37612954590293213
	.quad	0x3fd487b8fab29390              # double 0.32078384859260556
	.quad	0x3fd3cd07624be95e              # double 0.30938896750708078
	.quad	0x3fe2bca903e41b94              # double 0.58552981147737393
	.quad	0x3fd907eefa27b018              # double 0.39110922269060344
	.quad	0x3fd9124bcbf7f370              # double 0.39174170416645548
	.quad	0x3fd8bb31242cbec2              # double 0.38642529041952056
	.quad	0x3fe2260a0444fc58              # double 0.56714344819909979
	.quad	0x3fe7c406e1cfb204              # double 0.74267906287929053
	.quad	0x3fefdf5a8ce2aac3              # double 0.99601485745127893
	.quad	0x3fd2bba98be89e86              # double 0.29270399725871987
	.quad	0x3fd87f8d6af845ea              # double 0.38278518148680851
	.quad	0x3fe85a86d6bafd83              # double 0.76105062427079451
	.quad	0x3fe1895367d79f54              # double 0.54801340371794049
	.quad	0x3fda0f46fd1b48ee              # double 0.40718245236816031
	.quad	0x3fb562c42e5b0ca0              # double 0.083538304631519456
	.quad	0x3fe17b30e8c4e7e6              # double 0.54628797018744701
	.quad	0x3fe50cd298cbf7cc              # double 0.65781526415934755
	.quad	0x3f92b6db4a288b80              # double 0.018275667573230958
	.quad	0x3fa0df97242dbff0              # double 0.032955859342905458
	.quad	0x3feb5ef442287f30              # double 0.8553410808708346
	.quad	0x3fda5ef9f6514c14              # double 0.41204690031480706
	.quad	0x3fe1f85c7d69d7ef              # double 0.56156754011931109
	.quad	0x3fec790a0b9810a3              # double 0.88977529777959707
	.quad	0x3fe46c872a8ca2cd              # double 0.63824804602071483
	.quad	0x3feca3e15e8065d5              # double 0.89500492532095655
	.quad	0x3fd9b02c807936e6              # double 0.40137779756774561
	.quad	0x3fe160a208a5aa98              # double 0.54304601372617167
	.quad	0x3fcbea2ca012077c              # double 0.21808393302859119
	.quad	0x3feb20779ec4005f              # double 0.84771328934585799
	.quad	0x3fdad0b2901efcf4              # double 0.41898788523026487
	.quad	0x3fe64ed393c87baa              # double 0.69712237228292406
	.quad	0x3fd8ba65ebdbe140              # double 0.38637683899971265
	.quad	0x3fc4f860053d4110              # double 0.16382980590652396
	.quad	0x3fd3c3b44bbfcdc4              # double 0.30881984135995943
	.quad	0x3fe5ce9cf737a67c              # double 0.68147133144994099
	.quad	0x3fe86ef000317f6d              # double 0.76354217565311233
	.quad	0x3fe2ad1ef8b16cde              # double 0.58363293240418179
	.quad	0x3fe9aeff38e6fc1c              # double 0.80261193383910578
	.quad	0x3fe1a91039364f6f              # double 0.55188761877296411
	.quad	0x3f85c27e06b12bc0              # double 0.010624870852685819
	.quad	0x3fcc8532dcdd2710              # double 0.22281490120285996
	.quad	0x3febf135e78f0163              # double 0.87319464899341559
	.quad	0x3fbe3823896b14b8              # double 0.11804411034525486
	.quad	0x3fd7cc83e9dce560              # double 0.37185762251063714
	.quad	0x3fee6835f3e44825              # double 0.95022103915312484
	.quad	0x3fe86e508dd824da              # double 0.76346614555327652
	.quad	0x3fee66113f48b407              # double 0.94995939598231949
	.quad	0x3fcffbf8747639f8              # double 0.24987703024494556
	.quad	0x3fc96c0c118e7110              # double 0.19860983712431635
	.quad	0x3fdfe9479274de9c              # double 0.49861325552363112
	.quad	0x3fecf5088169e7f1              # double 0.9049112823115576
	.quad	0x3fe0952cdf3847bd              # double 0.51820987317682177
	.quad	0x3fc0021eec459954              # double 0.12506472145760006
	.quad	0x3fd83836d8172554              # double 0.37843104460315158
	.quad	0x3fe428f3b938d67d              # double 0.62999902893234572
	.quad	0x3fd4eac0a7dc21f0              # double 0.32682815926139508
	.quad	0x3fa3ab207c583f70              # double 0.038414969614790517
	.quad	0x3fed782c16b26ab5              # double 0.92091946061130747
	.quad	0x3fe46444ea5768a7              # double 0.63723989267170544
	.quad	0x3fe06ce0ddcaee53              # double 0.5132908183945325
	.quad	0x3fe68e46a3c92b0c              # double 0.70486766805092449
	.quad	0x3fe32cca2728418e              # double 0.59921748779201933
	.quad	0x3fe2f30540305241              # double 0.59216558968416433
	.quad	0x3fe19627be9ef99c              # double 0.5495794985834439
	.quad	0x3fcdb654edb0c010              # double 0.23212682348230418
	.quad	0x3fe7a8c16986974d              # double 0.73935003862855242
	.quad	0x3fccfb711a2faee4              # double 0.22642339495302288
	.quad	0x3fd28281d92c0af8              # double 0.28921552856642974
	.quad	0x3fd64df3e25ab140              # double 0.34850785355481051
	.quad	0x3fdd1d6a6f2d55f6              # double 0.45492039544237117
	.quad	0x3fed6152637f3a29              # double 0.91813010628704206
	.quad	0x3fd2d144ce464282              # double 0.29402275222768293
	.quad	0x3fe5bf1c9dba9608              # double 0.67957907492081038
	.quad	0x3fe48d384a326cd8              # double 0.64223875514599182
	.quad	0x3fefde48dedcf69d              # double 0.9958843567653336
	.quad	0x3feaeae6e4fa291a              # double 0.84117455217463832
	.quad	0x3fd53a13cbf5f100              # double 0.3316697589687152
	.quad	0x3fe646b1d6083163              # double 0.6961297207176752
	.quad	0x3fd2e7c94cc7c7fe              # double 0.29539711473546493
	.quad	0x3fd850ad4a1f1dd4              # double 0.37992412794525632
	.quad	0x3fd8ce6738762dac              # double 0.38759785188514218
	.quad	0x3febde707511d5dc              # double 0.87090323319597073
	.quad	0x3fef93cbff007a14              # double 0.98679160885859795
	.quad	0x3f742d56b2af9980              # double 0.0049260508194265418
	.quad	0x3fef1ce942e9df73              # double 0.97227919644409011
	.quad	0x3fe428aeb11fb3c3              # double 0.62996611208438258
	.quad	0x3fbb0403c182cf98              # double 0.10553000902547038
	.quad	0x3fdf0be48298b770              # double 0.48510086778229944
	.quad	0x3fa8f96e407c2df0              # double 0.048778005000794766
	.quad	0x3fd50e903f498afe              # double 0.32901388340376048
	.quad	0x3feb418a776a31e7              # double 0.85175059626777461
	.quad	0x3fe254181369fb3d              # double 0.57276538650317088
	.quad	0x3fe5459865dd96cd              # double 0.6647455205499796
	.quad	0x3fe4a95b4776ac28              # double 0.64567340810515805
	.quad	0x3fd21f93d81cd532              # double 0.28317733864544714
	.quad	0x3fdcaf8ad10fa70c              # double 0.44821424881102767
	.quad	0x3fe58a8bfd9b3a12              # double 0.67316245586863688
	.quad	0x3fd42b143fba28d8              # double 0.31512933944089871
	.quad	0x3fd4e3e0a830f054              # double 0.32640854287069954
	.quad	0x3fe883ffb73a4442              # double 0.76611314570084965
	.quad	0x3fe24da0aeabf611              # double 0.57197603335925085
	.quad	0x3fd9736bf19585c6              # double 0.39766977874941423
	.quad	0x3fabf7b1de942bb0              # double 0.05462413637186303
	.quad	0x3fe5eb1f0b7540da              # double 0.68495132673163117
	.quad	0x3feebf9ca4549520              # double 0.96089012237340298
	.quad	0x3fdfe3d178fb7284              # double 0.49827992262525123
	.quad	0x3fa3069d19053780              # double 0.037159833244557738
	.quad	0x3fe2665f75c26a58              # double 0.57499669074907001
	.quad	0x3fab8ff700065c60              # double 0.053832739594491086
	.quad	0x3feb2e12ba8a559f              # double 0.84937416490236106
	.quad	0x3febfa2c8cb1dd48              # double 0.87428882102441552
	.quad	0x3fe9e5df2d2e52f0              # double 0.80931052040486229
	.quad	0x3fc5aef1b72d54d0              # double 0.16940137333100447
	.quad	0x3fd2e204a5d4cc80              # double 0.29504505342919884
	.quad	0x3fc2bf2ce343d41c              # double 0.14645920845910687
	.quad	0x3fdea05059d904da              # double 0.47853478216354761
	.quad	0x3fe3537ad66a89b9              # double 0.60394040945202854
	.quad	0x3fd7e5aa44406964              # double 0.37339264550396067
	.quad	0x3fd45a14e4925712              # double 0.31799814530801129
	.quad	0x3fc8edbc00505fb4              # double 0.19475507750825971
	.quad	0x3fd2568128bfbb2a              # double 0.2865298173846208
	.quad	0x3fc14ada90e82b64              # double 0.13509685588391129
	.quad	0x3f74b144c0e8d700              # double 0.0050518689809473383
	.quad	0x3fe11016844516b9              # double 0.53321386178932706
	.quad	0x3fc959479e8b7d54              # double 0.19803710214089654
	.quad	0x3fd7abfa97f8be14              # double 0.36987175789815407
	.quad	0x3fd3a9c3515be06c              # double 0.30723650880054865
	.quad	0x3fe388fd6fd178a9              # double 0.61047241057874146
	.quad	0x3fd472156387c390              # double 0.31946310729750227
	.quad	0x3fe81d6f7c26d7ad              # double 0.75359319923767532
	.quad	0x3fe91d314bef4bbc              # double 0.78481354552274451
	.quad	0x3fdc184e2abbcc28              # double 0.43898348019792133
	.quad	0x3fc600d1e431a5d0              # double 0.17190002100259827
	.quad	0x3fd567c761fe6306              # double 0.33445915765473477
	.quad	0x3fe11aa0fd34dd96              # double 0.5345005937041829
	.quad	0x3fd4bae7028e48a0              # double 0.32390761613454266
	.quad	0x3fdc64c0fd470ec4              # double 0.44364952787530521
	.quad	0x3fd72d3d95b43d36              # double 0.36213626498734486
	.quad	0x3fef6f3fcc1075e8              # double 0.98233022552784365
	.quad	0x3fcef9fb434b849c              # double 0.24200382982147495
	.quad	0x3fe1d3d0720ca234              # double 0.55710623049987484
	.quad	0x3fe01b9836a515fa              # double 0.50336847946954255
	.quad	0x3fee7d41cab5e88f              # double 0.95279016105566139
	.quad	0x3fe17622e583263f              # double 0.54567093683835555
	.quad	0x3fcda529f60404fc              # double 0.23160290253148463
	.quad	0x3fde3a24708d9996              # double 0.47229872695461361
	.quad	0x3feb502e5da10b70              # double 0.85353773390703047
	.quad	0x3fedb135dc88de29              # double 0.927882128459662
	.quad	0x3fea20d680134089              # double 0.81650853171051196
	.quad	0x3fe7b0347f7ab292              # double 0.74025940798090262
	.quad	0x3fcdc0b1c8152598              # double 0.23244306821497385
	.quad	0x3fd9fc16637883c6              # double 0.40601119722310519
	.quad	0x3fccfe33e4624458              # double 0.22650765086703717
	.quad	0x3fdf29797217a032              # double 0.48690639631104482
	.quad	0x3fd6bd76afbf2740              # double 0.35531394160044627
	.quad	0x3fe2d61945516e01              # double 0.58863509691894944
	.quad	0x3feaee253e40bce0              # double 0.8415704933048822
	.quad	0x3fb8990f21854bc8              # double 0.096085496600877396
	.quad	0x3fead4879dd4cc49              # double 0.838443573249955
	.quad	0x3fe5c75d0a5d6132              # double 0.6805863573490909
	.quad	0x3fc9f3e5fe66714c              # double 0.20275568887599105
	.quad	0x3fdaabce54e0df72              # double 0.41673620499522379
	.quad	0x3fefea61b6bdeded              # double 0.9973610467126811
	.quad	0x3fb4095456eaf0f8              # double 0.07826735612883684
	.quad	0x3feeab844fe6fec0              # double 0.95843711477206028
	.quad	0x3fc4af086a02dd48              # double 0.16159157921149814
	.quad	0x3fe932000b27867f              # double 0.7873535364016816
	.quad	0x3fd9a212f4c4b274              # double 0.40051721480521185
	.quad	0x3fe876de428d1d57              # double 0.76451027868544486
	.quad	0x3fdd51c1dff81ece              # double 0.45811507102960725
	.quad	0x3fef8a5ca9c6bd5e              # double 0.98563988837660665
	.quad	0x3fcca6bf1a3b3a70              # double 0.22383869915798327
	.quad	0x3fe27c6c10aac9da              # double 0.57768824820805809
	.quad	0x3fe04cefa922f5c4              # double 0.5093916228722084
	.quad	0x3fdd346cdb6ee40a              # double 0.45632478169460511
	.quad	0x3fe6bda8461cd4a5              # double 0.71065152830000911
	.quad	0x3fed8dcb2c585a7e              # double 0.92355879460485801
	.quad	0x3fb843c23779cb00              # double 0.094783915084729386
	.quad	0x3fd756a6d0279da2              # double 0.36466379478084765
	.quad	0x3fe6130c1de5a062              # double 0.68982511367086041
	.quad	0x3fe3fe8b3bf6cefe              # double 0.62482225143182268
	.quad	0x3fc5eeec855d05f4              # double 0.17135387908824351
	.quad	0x3fd045a2709b14ba              # double 0.25425015446337407
	.quad	0x3fed29f027c95f49              # double 0.91136939783880522
	.quad	0x3fc2ce26ba87d68c              # double 0.14691623790684039
	.quad	0x3fef47f2bd2ef1be              # double 0.97753273916128314
	.quad	0x3fd0f92763faa8a2              # double 0.26520714534366097
	.quad	0x3fe9debf0923faea              # double 0.80844070229781306
	.quad	0x3feb0e07e5ddaa9f              # double 0.84546275039368257
	.quad	0x3fe3c99ae15d4d6e              # double 0.6183599855088866
	.quad	0x3fd8f60226a73776              # double 0.39001516127324665
	.quad	0x3fd4d5f3dee96e78              # double 0.32555863159880216
	.quad	0x3fe156d17e761237              # double 0.54184794139343395
	.quad	0x3fe236b08550b8bb              # double 0.56917596853397556
	.quad	0x3fb177b4fce8c650              # double 0.068232833619526589
	.quad	0x3fbd7e3f5d1830b0              # double 0.11520763418974656
	.quad	0x3fe67bba6fb5cb5b              # double 0.70260354822526538
	.quad	0x3fe659a966d0e6a4              # double 0.69844503480199593
	.quad	0x3fc02bf5542a31a0              # double 0.12634150132761324
	.quad	0x3fdc1ee5269a30de              # double 0.43938568849331527
	.quad	0x3fefb62f53d78e4f              # double 0.99098936438935847
	.quad	0x3fe5a5fe22463fa5              # double 0.67651278204174459
	.quad	0x3f7b21bfbce38680              # double 0.0066239824065817965
	.quad	0x3fc5ddbb374f3a60              # double 0.17082920265825674
	.quad	0x3fc6d3263264431c              # double 0.17831876240281808
	.quad	0x3fdbf176fdedd8a8              # double 0.43661284253847521
	.quad	0x3fe2cd9fcb4eee16              # double 0.58760060986191109
	.quad	0x3fe8939c571fabf2              # double 0.76801888481474934
	.quad	0x3f9bf49ad8fab580              # double 0.027300281041495733
	.quad	0x3fdb716224c95344              # double 0.42879537193703166
	.quad	0x3fedf4875c017f3f              # double 0.93609970064060366
	.quad	0x3fe21bbb9f3e81e9              # double 0.56588536360146435
	.quad	0x3fed9364bc1c8ad3              # double 0.9242423700382808
	.quad	0x3fdac1b61d341140              # double 0.41807320453542118
	.quad	0x3feb0033914fe770              # double 0.8437745893599935
	.quad	0x3fd5c7da9fef84a4              # double 0.34032312029564538
	.quad	0x3fc25e52c0c88628              # double 0.14350351727721145
	.quad	0x3fe2bee4e53d1205              # double 0.58580250523715505
	.quad	0x3fedc7d12a70fc58              # double 0.93064173020674001
	.quad	0x3fe3c7e87643bb3b              # double 0.6181528386931413
	.quad	0x3fec161ff1fd5af9              # double 0.87770077956778814
	.quad	0x3fe3402abc4b727e              # double 0.60158287788688347
	.quad	0x3fc4368335926bf4              # double 0.15791359058206889
	.quad	0x3fa4eb6711d6bc60              # double 0.040858479430760708
	.quad	0x3fe8e0ae62d1934c              # double 0.77742690372961353
	.quad	0x3fd6637b2993f016              # double 0.34982184467639976
	.quad	0x3f7bdb9e6a596180              # double 0.0068012416937438536
	.quad	0x3fed1cd1ba39fffc              # double 0.9097679745900673
	.quad	0x3fe43088d66b2d3e              # double 0.63092462423939089
	.quad	0x3fdc5953a432c534              # double 0.44295207056991903
	.quad	0x3fdffa1032e2ceb2              # double 0.49963765115101488
	.quad	0x3fe397b6ce6d88d0              # double 0.61226978605216154
	.quad	0x3f959eb315dee7a0              # double 0.021113203248866008
	.quad	0x3fd8a9a8bec077ea              # double 0.38535517337902425
	.quad	0x3fd65a976ae8c8b6              # double 0.3492792648350006
	.quad	0x3fd513e946d479d0              # double 0.32934028546324345
	.quad	0x3fb23e8306bc6f70              # double 0.071266354698705348
	.quad	0x3fc726fd32e1bc1c              # double 0.18087735161267993
	.quad	0x3fd36b751bd1a42a              # double 0.30343368260088488
	.quad	0x3fde80da5100496c              # double 0.47661455068841607
	.quad	0x3fe8f6e41716031a              # double 0.78013805874806796
	.quad	0x3feb4301043db40b              # double 0.85192919567418934
	.quad	0x3fda487d13c2171a              # double 0.41067435197361279
	.quad	0x3fbd5a94780a4c60              # double 0.11466339045209528
	.quad	0x3fd8e2e4fadb71be              # double 0.38884853837751254
	.quad	0x3fe9b848904ef61c              # double 0.80374553857081165
	.quad	0x3feea68665489f90              # double 0.95782775670976328
	.quad	0x3fc8f90ff2016f24              # double 0.19510077778510848
	.quad	0x3fef7cc8fedcc3f8              # double 0.98398256089978897
	.quad	0x3fc16ca58e59f9c8              # double 0.13612813425784354
	.quad	0x3fca3014a49b75ec              # double 0.20459230458702338
	.quad	0x3fd2d69633088a20              # double 0.29434733375288324
	.quad	0x3fbbc2ce52eefa18              # double 0.10844125294440976
	.quad	0x3fefc174ff766871              # double 0.99236535925889601
	.quad	0x3fed305f930df5b1              # double 0.91215494844043665
	.quad	0x3fd31ebb4cc48db4              # double 0.29875071045736523
	.quad	0x3fec136c9e8e4b2f              # double 0.87737112968384234
	.quad	0x3fe723fed28b43ea              # double 0.72314396974445327
	.quad	0x3fde34b6030de6f0              # double 0.47196722315093975
	.quad	0x3fce36f688459b60              # double 0.23605233816052884
	.quad	0x3fe6d8244f8e4788              # double 0.71388450182188112
	.quad	0x3fe847b2e531be2b              # double 0.75875229610932615
	.quad	0x3fec1bb14d58bebc              # double 0.87838044268388371
	.quad	0x3fd8af2c63d2bd38              # double 0.38569173572882987
	.quad	0x3fe10c6785667956              # double 0.53276420645469602
	.quad	0x3fec48d2bab55433              # double 0.88388954607456183
	.quad	0x3fe0e5dde6f0061b              # double 0.52805991272925057
	.quad	0x3f8a3c0b72640a00              # double 0.012809838703565113
	.quad	0x3febf474a3b658b0              # double 0.87359077429825582
	.quad	0x3fef65415232d509              # double 0.98111024908453814
	.quad	0x3fe909c1e1a363bb              # double 0.78244108266800738
	.quad	0x3fe67df1c6d4b50e              # double 0.7028740771690154
	.quad	0x3fdc5559c19f4038              # double 0.44270938785939817
	.quad	0x3fbde4347bb51318              # double 0.11676338215063387
	.quad	0x3fedfba2252d59c8              # double 0.93696696530496925
	.quad	0x3fed99434acd3d68              # double 0.92495884523115723
	.quad	0x3fd7c1b7083430fc              # double 0.37119842339667719
	.quad	0x3fde1fae3960ba64              # double 0.47068362811379516
	.quad	0x3f9f6f122fec98c0              # double 0.030697139906941784
	.quad	0x3f947bf546998540              # double 0.020004112657607154
	.quad	0x3fe7ccadbdcb6c2c              # double 0.74373519009839617
	.quad	0x3fe1703ddfa6adf4              # double 0.54495137864927168
	.quad	0x3fe59a40ac0f080f              # double 0.67507966618745907
	.quad	0x3fe5c2a81fb46c19              # double 0.68001180832232244
	.quad	0x3fe5d1374127dabe              # double 0.68178904271811525
	.quad	0x3fde4c982d73aed2              # double 0.4734249538293912
	.quad	0x3fd06989a9a1e15e              # double 0.25644151273401927
	.quad	0x3fe1c9cd024379f7              # double 0.55588388864617755
	.quad	0x3fe498e868c137b7              # double 0.64366550884164198
	.quad	0x3fcfb0e3db72ff08              # double 0.24758575644772685
	.quad	0x3fe2cfe0f5cbcee3              # double 0.58787582404189853
	.quad	0x3fdcd346fb3c2af6              # double 0.45039534125014258
	.quad	0x3fc60c8745693980              # double 0.17225733651362063
	.quad	0x3fe00045e2b3639d              # double 0.50003332402694733
	.quad	0x3fe57ee18e48aa65              # double 0.67173841275991875
	.quad	0x3fd943e575ba3ae8              # double 0.39476906296560665
	.quad	0x3fd81d98ec75631e              # double 0.37680647937445311
	.quad	0x3fb1c09c80dda228              # double 0.069345265828481772
	.quad	0x3fce4fe7d101f340              # double 0.23681352334451766
	.quad	0x3fc9d029106e4218              # double 0.20166505148201064
	.quad	0x3fefc3cfe78a140d              # double 0.99265284750492954
	.quad	0x3fe8273ec4b2fade              # double 0.75479067247200837
	.quad	0x3febeb9e7f371e8b              # double 0.8725121006654758
	.quad	0x3fd723832a109a2e              # double 0.36154250247855912
	.quad	0x3fecc982f6048bda              # double 0.89959857988685177
	.quad	0x3feaf5218cb1e297              # double 0.84242322425332616
	.quad	0x3fe43add4157f6f0              # double 0.63218558084892429
	.quad	0x3fe93518216a4923              # double 0.78773123289491698
	.quad	0x3fd763ab12763cf2              # double 0.36545826723973029
	.quad	0x3fc49d894bfe288c              # double 0.16105762682520142
	.quad	0x3fb001aff7799748              # double 0.062525747221653494
	.quad	0x3feb721ea1f3976c              # double 0.85768062239797648
	.quad	0x3fda2a6c9aedbd60              # double 0.40883937005761162
	.quad	0x3fbd9bfd7aca9378              # double 0.11566147086939604
	.quad	0x3fa6908302ba0450              # double 0.0440712872341541
	.quad	0x3fec843a1aa21a0b              # double 0.89114098741339498
	.quad	0x3fc036aada534c24              # double 0.1266683164636514
	.quad	0x3fa5be419c49de10              # double 0.042467165306273924
	.quad	0x3febb32dd68f9f12              # double 0.86562244326066407
	.quad	0x3fe2383f946f2be4              # double 0.56936625472132762
	.quad	0x3fc25b974e87292c              # double 0.14342013677953369
	.quad	0x3fd9c9a9bb793472              # double 0.40293353374438035
	.quad	0x3fe7541ca763da1c              # double 0.72901756947868845
	.quad	0x3fe69f77443a869a              # double 0.70696605039502747
	.quad	0x3fceab96999a3068              # double 0.23961145877945289
	.quad	0x3fd8916a95a04ed0              # double 0.38387550937589499
	.quad	0x3fe0269c2c1fe9e6              # double 0.50471314066026873
	.quad	0x3fec992cf533f7cc              # double 0.89369819537363914
	.quad	0x3fe6328a45801386              # double 0.69366944860722479
	.quad	0x3fdbe2403ab080e4              # double 0.43568425876038774
	.quad	0x3fb6d684d85364b0              # double 0.089210799039750154
	.quad	0x3fe720f2e38174c3              # double 0.72277206835465113
	.quad	0x3fe9f9046b9ae3a5              # double 0.8116476155911313
	.quad	0x3fe40d928935bba3              # double 0.62665678786094181
	.quad	0x3fec839915b32c00              # double 0.89106420744190018
	.quad	0x3fe64ad2cf77006a              # double 0.69663372536161927
	.quad	0x3fc9b0b945052bd0              # double 0.20070567960860197
	.quad	0x3fee44fbf680900b              # double 0.94592092652283222
	.quad	0x3fd23e14ca805f40              # double 0.28503913665325697
	.quad	0x3fd774dbea294d84              # double 0.3665075098735644
	.quad	0x3fd524b45c547eec              # double 0.33036526695830903
	.quad	0x3fea6f66d86b3386              # double 0.8260988451889808
	.quad	0x3fcb9e07a743fcc4              # double 0.21576018969788013
	.quad	0x3fd0475160ff668a              # double 0.25435289833476615
	.quad	0x3fec408fc02da46c              # double 0.88288104567358294
	.quad	0x3fedcc8f67449bd9              # double 0.93122072381526799
	.quad	0x3fc1767b1458d434              # double 0.13642824643616935
	.quad	0x3fb0d33be7eb9fa8              # double 0.0657231751644064
	.quad	0x3fef4b2b9290a9e2              # double 0.97792605043406078
	.quad	0x3fdbb1b9fed45e0a              # double 0.43272256742190562
	.quad	0x3fd4aa69cf56c328              # double 0.32290120361271812
	.quad	0x3fe56aa83ddf1e4a              # double 0.66926967701233164
	.quad	0x3fe55aeb00c459d9              # double 0.66734838628581905
	.quad	0x3febf5a0d11fa84c              # double 0.87373391003098666
	.quad	0x3fe3031cc5f16851              # double 0.59412993107549472
	.quad	0x3fe7edb36dafc132              # double 0.74776622222092315
	.quad	0x3fc427d46b433ccc              # double 0.15746550786432179
	.quad	0x3fe5f0ee962fe12b              # double 0.68566064198879439
	.quad	0x3fedbee4baf62b98              # double 0.92955242649019265
	.quad	0x3fd5896e134309f8              # double 0.33651306038896633
	.quad	0x3fda2003762e10d6              # double 0.40820395031938739
	.quad	0x3fdbca7e4e96d7de              # double 0.4342342154953921
	.quad	0x3fee533fed2af28e              # double 0.9476623184378512
	.quad	0x3fe1daaa144d0dac              # double 0.55794242825543483
	.quad	0x3fde68ac64b21bfe              # double 0.47513875802582095
	.quad	0x3fe039faa18bf5bb              # double 0.507077518006262
	.quad	0x3fe2ff3a506d6826              # double 0.59365573605032718
	.quad	0x3f9bcb0a39889160              # double 0.027141723405422424
	.quad	0x3fd3e113846874a2              # double 0.31061256342384003
	.quad	0x3fce7d98d7d7ad4c              # double 0.23820791758712756
	.quad	0x3fdbe53fd731aad8              # double 0.43586727156677574
	.quad	0x3fe5763f12dc978d              # double 0.67068437274859749
	.quad	0x3fd990ba7490dc06              # double 0.39945851691612722
	.quad	0x3fc5e582afdbdbf4              # double 0.17106660448891342
	.quad	0x3fe99e7f1f6168af              # double 0.8005977261448346
	.quad	0x3fe59b0aa2057e97              # double 0.67517596859757389
	.quad	0x3fcb81866e7c2a70              # double 0.21489029307152263
	.quad	0x3fe88d9e9aaf9299              # double 0.76728754245830821
	.quad	0x3fed35bbc9fabf93              # double 0.91280927132719325
	.quad	0x3fd782dfce01b318              # double 0.36736292951427307
	.quad	0x3fd932d11db90ad4              # double 0.39372661497706685
	.quad	0x3fd2adfee4ddc4a6              # double 0.29186985349867667
	.quad	0x3fe59ec4fb3cfc29              # double 0.67563103742566455
	.quad	0x3feacaf53158bbec              # double 0.8372751201439974
	.quad	0x3fd455ec703d4038              # double 0.31774435959687564
	.quad	0x3fc635ab22bba190              # double 0.17351283260292094
	.quad	0x3fe0b5c6eb10f12b              # double 0.52218957816470402
	.quad	0x3fc81175646be134              # double 0.1880327930773632
	.quad	0x3fe627b9ee1ceca0              # double 0.6923494005817652
	.quad	0x3fe31814b121905d              # double 0.59668955417556513
	.quad	0x3feedc23c60ed9e4              # double 0.96437252696233288
	.quad	0x3fe4d9ea42328367              # double 0.65160096100963194
	.quad	0x3fefe0027fdb4cff              # double 0.99609494182587343
	.quad	0x3febb1cf1a1e6d0a              # double 0.86545519925439973
	.quad	0x3fe83e7909451cbc              # double 0.75762607393780667
	.quad	0x3fe233f1606c92ff              # double 0.56884068329654258
	.quad	0x3feb6b9f31fc2df8              # double 0.85688743365011444
	.quad	0x3fd9224e16185f1e              # double 0.39271881253942975
	.quad	0x3feabb86cc975f47              # double 0.83539142569768721
	.quad	0x3fdfaed5ace74318              # double 0.49504606137365803
	.quad	0x3fece2da8ec5b785              # double 0.90269210705967906
	.quad	0x3fe6fe2e72304f0d              # double 0.71852800657731708
	.quad	0x3fc004db1a808994              # double 0.12514818948791329
	.quad	0x3fc663ffb6f63250              # double 0.17492672380139362
	.quad	0x3fcc60c6abf8ad98              # double 0.22170337101975401
	.quad	0x3fe260af1168da56              # double 0.57430222893055816
	.quad	0x3fe66a00c9dcfe87              # double 0.70043982912461977
	.quad	0x3fd24c7ee683f70e              # double 0.28591892730024504
	.quad	0x3fea3c51410092ac              # double 0.81986296363591781
	.quad	0x3fe132be2e004602              # double 0.5374442003687252
	.quad	0x3fd4bcb028567d20              # double 0.32401660861246917
	.quad	0x3fd2fa358542df96              # double 0.29652154935637876
	.quad	0x3fdfe846158cc3aa              # double 0.49855186562040876
	.quad	0x3fd806a3864386f0              # double 0.37540519820878071
	.quad	0x3fa7b2abb9743cd0              # double 0.046285025013384051
	.quad	0x3fc411612ef9487c              # double 0.15678038400307404
	.quad	0x3fe743cd09d71e3e              # double 0.72702648088392841
	.quad	0x3fe33cdb0cbcaafa              # double 0.60117866981212775
	.quad	0x3fef7267509b689d              # double 0.98271527999465357
	.quad	0x3fda4009378550fa              # double 0.41015844747495545
	.quad	0x3fe808d39e352385              # double 0.75107746982494972
	.quad	0x3fa228febeb22e10              # double 0.035469017771074474
	.quad	0x3fe0fd96132cbd99              # double 0.53095535035201913
	.quad	0x3fe9cf5e6be6d4a4              # double 0.80656357836291592
	.quad	0x3faa895f1dc731a0              # double 0.051829311738035289
	.quad	0x3f98e70b74d94f20              # double 0.024318865782631538
	.quad	0x3fe13861ffcdcba0              # double 0.53813266717621744
	.quad	0x3f942d60711f3960              # double 0.019704348472992961
	.quad	0x3fd3c5c6110fb396              # double 0.30894614854951763
	.quad	0x3fef36671d34fba2              # double 0.97539096550450588
	.quad	0x3fe652933b5efe43              # double 0.69757997127448623
	.quad	0x3fe511d24bcf315b              # double 0.65842547232163484
	.quad	0x3fe94f5741ea41e6              # double 0.7909351622966454
	.quad	0x3fd5a2047e522a56              # double 0.3380137666323767
	.quad	0x3fe4049bb37210ce              # double 0.62556252525293998
	.quad	0x3f425c51730ce400              # double 5.6032158872831861E-4
	.quad	0x3fd6918a763d4ea8              # double 0.3526331095392643
	.quad	0x3fd1234ff3d1abd4              # double 0.26778029261066405
	.quad	0x3fee202d6a8e5596              # double 0.94142790614812344
	.quad	0x3fd29e58f569d210              # double 0.29091476408146466
	.quad	0x3fc9cea54c1896e4              # double 0.2016188260615116
	.quad	0x3fd231e590145dda              # double 0.28429545469540829
	.quad	0x3febbdc5e28d3df4              # double 0.86691564796814057
	.quad	0x3fe6f71b16ad0eeb              # double 0.71766428402812943
	.quad	0x3fa1709b8cbe3e60              # double 0.034062252932127945
	.quad	0x3fd56b19cc98893c              # double 0.33466191272795576
	.quad	0x3fe0d3eacd2b599d              # double 0.52586879799018826
	.quad	0x3fefdb6ebc56a3ba              # double 0.99553620133257614
	.quad	0x3febaf0195acd626              # double 0.86511306031633661
	.quad	0x3fed8f357081492c              # double 0.92373153661381968
	.quad	0x3fe21334af8b2e28              # double 0.56484445844529763
	.quad	0x3feee12594144c71              # double 0.96498373910652734
	.quad	0x3fecd19c489ed587              # double 0.90058721717530055
	.quad	0x3fe6ac3dce70609e              # double 0.70852556533920441
	.quad	0x3fec2b675f9a3fd4              # double 0.88029831573839567
	.quad	0x3f6fab293839ca00              # double 0.0038657956190999432
	.quad	0x3fe87628cb599def              # double 0.76442374913034239
	.quad	0x3fdd56eb1682c624              # double 0.4584300727684385
	.quad	0x3fccf42e6abe5e54              # double 0.22620182239619402
	.quad	0x3fe31627211b1af8              # double 0.5964542051886772
	.quad	0x3fe1c6dc398e08c1              # double 0.55552493325401298
	.quad	0x3fee8458c64b5e33              # double 0.95365561227203555
	.quad	0x3fdbaff6a28bdfae              # double 0.43261495469732381
	.quad	0x3fd587e5f07f79e6              # double 0.33641956792953776
	.quad	0x3fe46a15a84922bd              # double 0.63794978016183956
	.quad	0x3fec21cfa80a5a54              # double 0.87912733860395997
	.quad	0x3fd29aa195d59864              # double 0.29068793899785406
	.quad	0x3fe2a7521d698684              # double 0.5829248976189807
	.quad	0x3fdce7ec5b6585d2              # double 0.45165547299810982
	.quad	0x3fe26d45294600dd              # double 0.5758386427042087
	.quad	0x3fd43cfae776452e              # double 0.31622192958555473
	.quad	0x3fc1a7023ea63524              # double 0.13790920313878374
	.quad	0x3fefee4631ad623a              # double 0.99783620550721897
	.quad	0x3fe3f0d3d716f20b              # double 0.62314788827603829
	.quad	0x3f8c9575d9742d80              # double 0.013956947992957991
	.quad	0x3fe2b267f2ecf2ae              # double 0.5842780823364444
	.quad	0x3fe7520c299c6a5d              # double 0.72876556517742197
	.quad	0x3fcb4e26caaed614              # double 0.21332249542835824
	.quad	0x3fbebdc742822628              # double 0.12008328794231515
	.quad	0x3fecc38b74fffe10              # double 0.89887020923191763
	.quad	0x3fe4a57b03ab5de2              # double 0.64520025936775149
	.quad	0x3fdaf8cb9e048f26              # double 0.42143526488711058
	.quad	0x3fe4d796d99d569c              # double 0.65131704810001478
	.quad	0x3fb33071b514aa88              # double 0.074957949361001863
	.quad	0x3fe2a5348049d0b3              # double 0.58266663605038216
	.quad	0x3fc6131cd4d01250              # double 0.17245827094315525
	.quad	0x3faab836551abe20              # double 0.052186677826622452
	.quad	0x3fe23a5eb30b3c0c              # double 0.56962523431309497
	.quad	0x3fb1a27564e31780              # double 0.068885171061166872
	.quad	0x3fe6736b61cb1aac              # double 0.70158928966778467
	.quad	0x3feae9e1a8aa00a4              # double 0.84104998533441177
	.quad	0x3fec54ee5bbd17a3              # double 0.88536756437018871
	.quad	0x3fd7fdcd68591070              # double 0.37486586752152729
	.quad	0x3fe5b00b3e35729b              # double 0.67773973608162252
	.quad	0x3fe4f1d06a32c93e              # double 0.6545183252513096
	.quad	0x3fd3b2ed84957ffa              # double 0.30779588649420442
	.quad	0x3fd01b2d53918ee6              # double 0.2516587558841209
	.quad	0x3fcf3c2ff3245470              # double 0.24402427074588529
	.quad	0x3feb651fb6d40f36              # double 0.85609422405875679
	.quad	0x3fd1d197cf0894b6              # double 0.27841754167668442
	.quad	0x3fbaacdd53d8cd30              # double 0.10420020386736861
	.quad	0x3fe4f03301841cfe              # double 0.65432119651896392
	.quad	0x3fe2b3e29712e45e              # double 0.58445863253212926
	.quad	0x3fcbca642ecc6c8c              # double 0.2171139935024694
	.quad	0x3fe5749fdc56c92f              # double 0.67048638377153746
	.quad	0x3fd45061f5c937b8              # double 0.31740616800822918
	.quad	0x3fefdecd88c4d6af              # double 0.9959476157443613
	.quad	0x3fe35f1a6c98292c              # double 0.60535927972640513
	.quad	0x3fecbcf9b6ce4543              # double 0.89806829170462554
	.quad	0x3fe0828bc1a4f7f3              # double 0.51593578168080823
	.quad	0x3fa1c985496e4640              # double 0.034740605558124305
	.quad	0x3fc5d43f23cfe060              # double 0.17053975342401184
	.quad	0x3fea5d26d0cb2e75              # double 0.82387104778304254
	.quad	0x3fd8a136dc998508              # double 0.38483974020898915
	.quad	0x3fcaed7b9e8c3ff8              # double 0.21037240258783618
	.quad	0x3fe97028d1ea20ce              # double 0.79494133948267076
	.quad	0x3fc6125c2a2cfec0              # double 0.17243530330050838
	.quad	0x3fdcdb61b44f0cc4              # double 0.45088999374656802
	.quad	0x3fe18e353f554d02              # double 0.54860937471167426
	.quad	0x3fe51e6cf721cbbf              # double 0.65996406810733521
	.quad	0x3f86637353c34cc0              # double 0.010931874269238029
	.quad	0x3fe2c0bd72efcc86              # double 0.58602783630921418
	.quad	0x3fe822d93a5ab478              # double 0.75425397298171415
	.quad	0x3fe07d58b5e515d6              # double 0.51530108953800879
	.quad	0x3fc0dfdee39fba38              # double 0.13183199037980997
	.quad	0x3fe916544832dfd7              # double 0.7839757356768996
	.quad	0x3f9cfab191992600              # double 0.028300070296870317
	.quad	0x3fb08fe8af0bd8d8              # double 0.064695875869662856
	.quad	0x3fe60cccc6e4354f              # double 0.68906248899444644
	.quad	0x3fdd780f2d281eb4              # double 0.46045283708415785
	.quad	0x3fdb66ea28590a32              # double 0.42815641346183775
	.quad	0x3fdd32b01490e7f6              # double 0.45621873863603868
	.quad	0x3fc8d4896125dde0              # double 0.19398610347319245
	.quad	0x3fe68d3fdb38fc13              # double 0.70474236313737249
	.quad	0x3fe1651bb4cd7f22              # double 0.54359231293708299
	.quad	0x3feb99bf35bc68fc              # double 0.86251793380077357
	.quad	0x3fd788cc06e18674              # double 0.36772442504852809
	.quad	0x3f786f42968dec80              # double 0.0059654809091355121
	.quad	0x3fda04c3a540a9f8              # double 0.40654078615139566
	.quad	0x3f795b2736dc1300              # double 0.0061904460724278021
	.quad	0x3fdb51b2a93cce4e              # double 0.42686144377805568
	.quad	0x3fed3c156e53d130              # double 0.91358443783113863
	.quad	0x3fe4bef9c67e36e5              # double 0.64831246154946298
	.quad	0x3fe6df83d3779450              # double 0.71478453924340535
	.quad	0x3fe3567b35618b18              # double 0.60430679727537306
	.quad	0x3febf5563461e7dc              # double 0.87369833212801095
	.quad	0x3fec8f3363886f02              # double 0.8924805587771234
	.quad	0x3fd39c8d4f33c1f0              # double 0.30643017515742965
	.quad	0x3fda17993310792e              # double 0.40769033419373357
	.quad	0x3feb1b45abc98943              # double 0.84707912018010523
	.quad	0x3fe74dc04282e865              # double 0.72824109068393439
	.quad	0x3fed536e851b75ac              # double 0.91643453595650248
	.quad	0x3fc180b1446c9a38              # double 0.13673988190676467
	.quad	0x3fe35b3556718eca              # double 0.60488383182060912
	.quad	0x3fbb1b775ef2d398              # double 0.10588785236434572
	.quad	0x3fe77d850a3a6678              # double 0.73407222745591039
	.quad	0x3fe6c4818292c67c              # double 0.71148753645520868
	.quad	0x3fd66446f7e9827e              # double 0.34987043581171651
	.quad	0x3fb37b01f24cf9e0              # double 0.076095697074357371
	.quad	0x3fed6e71ae57f8b8              # double 0.91973194171421024
	.quad	0x3fe7abcd657a7e50              # double 0.73972196407334856
	.quad	0x3fe5e59760be6b8b              # double 0.6842762841728115
	.quad	0x3fcae1763b7c4684              # double 0.21000554947436367
	.quad	0x3fd2a570966536d6              # double 0.29134764372871069
	.quad	0x3fde84b191cbc8f6              # double 0.47684897649663982
	.quad	0x3fd0015e50fec510              # double 0.25008352193533856
	.quad	0x3fe28e1d51809576              # double 0.57984796446241549
	.quad	0x3fe7fbc36e8de902              # double 0.74948283760684853
	.quad	0x3fe60e85264af294              # double 0.68927247504287203
	.quad	0x3febe04361f4c48c              # double 0.87112588054709894
	.quad	0x3fe7d982ec731e5d              # double 0.74530168706491973
	.quad	0x3fbccea449bcd258              # double 0.11252810287698745
	.quad	0x3fe2edc7d002ba16              # double 0.59152594210701426
	.quad	0x3faefc6b8aca4810              # double 0.060519562427671869
	.quad	0x3fb347d99a31a040              # double 0.075315094132407445
	.quad	0x3fcd58e7ec1cb83c              # double 0.2292756941691908
	.quad	0x3fc645b7115d3840              # double 0.17400253627642037
	.quad	0x3fe9df616fbc0392              # double 0.80851814101343877
	.quad	0x3fd16538b5f7b996              # double 0.27180307169228379
	.quad	0x3fd054948dc3d352              # double 0.25516237110359896
	.quad	0x3fe47f8bad539568              # double 0.64056953289825191
	.quad	0x3fd4fa6edebdc9be              # double 0.32778522255025766
	.quad	0x3fd3777e5f965926              # double 0.30416831335732508
	.quad	0x3fe10790c9d617ef              # double 0.53217353268769141
	.quad	0x3fc0681fb51a8650              # double 0.12817760794591715
	.quad	0x3f817d7d8dbbad00              # double 0.0085401352766525385
	.quad	0x3fe32b576964cf1d              # double 0.59904070458148662
	.quad	0x3fe1be4340177ed9              # double 0.55447542684484141
	.quad	0x3feca55e1b53fad0              # double 0.89518647515782312
	.quad	0x3fe1f068264b43d2              # double 0.56059653739259319
	.quad	0x3fbbe2270267fdd0              # double 0.1089195614695122
	.quad	0x3fbdc2a476013030              # double 0.11625125771496481
	.quad	0x3fd2f3711db7b44e              # double 0.29610851194485555
	.quad	0x3fe947367d9a07b9              # double 0.78994297534540359
	.quad	0x3fe42c9e64229bfb              # double 0.63044662053732681
	.quad	0x3fe310c0870fc4b8              # double 0.59579492930620059
	.quad	0x3fd6e997a88e6c16              # double 0.35800734959201586
	.quad	0x3fd264fa32e6eb42              # double 0.28741316767598246
	.quad	0x3feb88428d6fdd15              # double 0.86038329719932227
	.quad	0x3fe8e3d073919df3              # double 0.77780935833010145
	.quad	0x3fdf501d8fdcff34              # double 0.48926486062190411
	.quad	0x3fd7dc10a0084e60              # double 0.37280669811409517
	.quad	0x3fcaad51e82af4c8              # double 0.2084143050796341
	.quad	0x3fe6eaae08ddafdf              # double 0.71614743930467373
	.quad	0x3fd234199621c0c4              # double 0.2844299284106564
	.quad	0x3fe66ad08a12e2d0              # double 0.70053889243635048
	.quad	0x3fee5c224322769b              # double 0.94874680626135743
	.quad	0x3fefb239c3a83b92              # double 0.99050605978287565
	.quad	0x3fd4bc1307af71ca              # double 0.32397914648552428
	.quad	0x3fd9c8e0b4e79b16              # double 0.40288560549235919
	.quad	0x3fe96793544832fe              # double 0.79389349423726663
	.quad	0x3fb5e08303c20238              # double 0.085457027833407362
	.quad	0x3fdc8cc447ef3474              # double 0.44609171891062904
	.quad	0x3fda25b0d6772abc              # double 0.40855046218772961
	.quad	0x3fd73d7e5e2db8e6              # double 0.36312827298287542
	.quad	0x3fe7f35fd118c339              # double 0.74845877494053703
	.quad	0x3fca3dd489bfceb8              # double 0.20501190877950193
	.quad	0x3f95c9161bf5c240              # double 0.021274896103422813
	.quad	0x3fe9857e940fb6c9              # double 0.79754570883025011
	.quad	0x3fcbb59bec248a70              # double 0.21647976904303645
	.quad	0x3fcd489916d59a6c              # double 0.22877801527939157
	.quad	0x3f74e7c3bbe2d480              # double 0.0051038404327999887
	.quad	0x3fd4b93cf7f03c44              # double 0.32380603993164336
	.quad	0x3fd4998c57e478f6              # double 0.32187183936356634
	.quad	0x3feddb11c61c05f2              # double 0.93299187367682479
	.quad	0x3fd0fd97b82e3d14              # double 0.26547806726826306
	.quad	0x3fd771bdbdb69b78              # double 0.36631721045198828
	.quad	0x3fd4a87d6eb6b14a              # double 0.32278381168250248
	.quad	0x3fdf6d0ea2f3fe5c              # double 0.49103132165325802
	.quad	0x3fd8815eeb7413a4              # double 0.38289616578577523
	.quad	0x3fe638616a7072c0              # double 0.69438238896290017
	.quad	0x3fa6a8de58e1d320              # double 0.044257114744061576
	.quad	0x3fd8680a4186b392              # double 0.38135010146179937
	.quad	0x3fddb8ccb830acdc              # double 0.46440427768056991
	.quad	0x3fd1d25e2a303c0e              # double 0.27846483344996009
	.quad	0x3fea10753b2d819e              # double 0.8145090251746756
	.quad	0x3feee36f78287be8              # double 0.96526311367403838
	.quad	0x3fc0dd10c2ad7670              # double 0.13174638276807427
	.quad	0x3f71e798d7c84b00              # double 0.0043712587762623212
	.quad	0x3fc2529184bf3b50              # double 0.1431447885683732
	.quad	0x3fd0bd2f0fecbe54              # double 0.26154686503557412
	.quad	0x3feee811bc13f1c9              # double 0.96582876905409265
	.quad	0x3fef30311a2376ac              # double 0.9746327887075572
	.quad	0x3feba16b10ce21ab              # double 0.86345437319055429
	.quad	0x3fe93d7e5bce6aac              # double 0.78875654154702123
	.quad	0x3fc9fd89caffa004              # double 0.20304987346685277
	.quad	0x3fe5ef188ebf12e4              # double 0.68543651466515287
	.quad	0x3fe0fe8b224e19c2              # double 0.53107220363818208
	.quad	0x3fd974732cc312a8              # double 0.39773253794946095
	.quad	0x3fed2fe7ce657900              # double 0.91209783851425641
	.quad	0x3fb414d3ff532c48              # double 0.078442811808757118
	.quad	0x3fe44237a68986fc              # double 0.63308317686843862
	.quad	0x3fdb0f9b5defa9cc              # double 0.42282756970840008
	.quad	0x3fd17af716c9d0b0              # double 0.2731301996748341
	.quad	0x3fc21bb849a91b88              # double 0.14147094341953115
	.quad	0x3fe148400bb13c3d              # double 0.54006960185677821
	.quad	0x3fd2366a2d536f06              # double 0.2845712130199306
	.quad	0x3fe4f86dd15e5a51              # double 0.65532580272958729
	.quad	0x3fea87f6a3d0a5d1              # double 0.82909709925768926
	.quad	0x3febf27262487059              # double 0.87334555812732184
	.quad	0x3fe587a9521da667              # double 0.67281023061987077
	.quad	0x3feae4cd1eed1b34              # double 0.84042984047196123
	.quad	0x3fbcdfa1f3742630              # double 0.1127873629922298
	.quad	0x3fcb91ff1f0a985c              # double 0.21539296165173283
	.quad	0x3febe69cd86f3de3              # double 0.87190096161242214
	.quad	0x3feddb2e3f03cb1f              # double 0.93300545032102267
	.quad	0x3f723e27e5fb6580              # double 0.0044538076906176505
	.quad	0x3feba2283022b64f              # double 0.86354455377085937
	.quad	0x3fee1b1807adb848              # double 0.94080735683179117
	.quad	0x3fcefebb678be490              # double 0.24214880519847215
	.quad	0x3fce2c28e82988ac              # double 0.23572264991805036
	.quad	0x3fc928432a3918e4              # double 0.19654120980903322
	.quad	0x3fe38cb31299e208              # double 0.61092523224857676
	.quad	0x3feaed8094461016              # double 0.84149197540000631
	.quad	0x3fea7535ef083de0              # double 0.82680794416404168
	.quad	0x3fe5217b9c111ced              # double 0.66033726198011566
	.quad	0x3fee4679174d764f              # double 0.94610266257559228
	.quad	0x3fe7328808530968              # double 0.72491838098384864
	.quad	0x3fe1034c37755e9b              # double 0.53165255386098254
	.quad	0x3fe29039c56e663a              # double 0.58010567246237277
	.quad	0x3fe900ed24b81294              # double 0.78136307880102373
	.quad	0x3fc5aea38356583c              # double 0.16939205086663545
	.quad	0x3fd48434048f3fe4              # double 0.32056904263754249
	.quad	0x3fec3c195b39150c              # double 0.88233630959499143
	.quad	0x3fdba96d11766316              # double 0.43221594529454543
	.quad	0x3fee422e833b2263              # double 0.94557881957105072
	.quad	0x3fd01a72e35e5f52              # double 0.25161430553406661
	.quad	0x3fe6fa2a005f03b0              # double 0.71803760597696531
	.quad	0x3fdb3a9f9d265ff0              # double 0.42545309397382791
	.quad	0x3fb53af1e00593d0              # double 0.082930676644152656
	.quad	0x3fd659849748e4f2              # double 0.34921374105358816
	.quad	0x3fdee1eb053546a8              # double 0.4825389433727687
	.quad	0x3fea27f94588a4d8              # double 0.81737960415662325
	.quad	0x3f9d03a0a37345c0              # double 0.028334150291646543
	.quad	0x3fe111330dbda5ed              # double 0.53334953960182718
	.quad	0x3fee2d2d932b8dbd              # double 0.9430148958603507
	.quad	0x3fb2b8f2f1c23128              # double 0.073134597800337375
	.quad	0x3fe35632009e0ce6              # double 0.60427188988287805
	.quad	0x3fc709658a069118              # double 0.17997426261457217
	.quad	0x3fc984cb04537c44              # double 0.19936502181278304
	.quad	0x3fd7f5b2acda0636              # double 0.37437121276898055
	.quad	0x3fe48fe39bccac14              # double 0.64256458692159635
	.quad	0x3fe0282124776594              # double 0.50489861605017206
	.quad	0x3fed608b764bcf28              # double 0.9180352507087024
	.quad	0x3fa4915b0a894590              # double 0.040171475444945703
	.quad	0x3f945533ee8070e0              # double 0.019856273109426392
	.quad	0x3feaaa95b2800008              # double 0.83332333434373229
	.quad	0x3fef1460a097f782              # double 0.97123748174611557
	.quad	0x3fe58218c8231fb6              # double 0.67213095750138652
	.quad	0x3fdb92d47c22a86c              # double 0.43083679316135348
	.quad	0x3fe50e5781f71b44              # double 0.65800071128692439
	.quad	0x3fe255abb1ea375e              # double 0.57295784710889186
	.quad	0x3fc3397ad6c37efc              # double 0.15019164549357089
	.quad	0x3fd2d412cec782e0              # double 0.29419393723769183
	.quad	0x3fdc4e0d2c6fb5ce              # double 0.44226388301362085
	.quad	0x3fe6e34cd7411c9b              # double 0.71524660150398078
	.quad	0x3fe99266b5684883              # double 0.79912124091266923
	.quad	0x3fdee73a790cccc4              # double 0.48286306210793506
	.quad	0x3fee8a9c6fd70054              # double 0.95442029803963146
	.quad	0x3fdb201a767dd2d2              # double 0.42383443423686373
	.quad	0x3fe81fb23528a92f              # double 0.75386915571769986
	.quad	0x3fdcc3c4fe0d1e94              # double 0.44944882211391612
	.quad	0x3fd064c7cee6979a              # double 0.2561511536135811
	.quad	0x3fd410287a240bba              # double 0.31348621299565205
	.quad	0x3fcc437eb5dc72a0              # double 0.22080978279054353
	.quad	0x3fdc16dd78a4be5e              # double 0.4388955763015242
	.quad	0x3fee3ec2066f8d7d              # double 0.94516087777121494
	.quad	0x3fa9a5d992d2f3a0              # double 0.050093459294181075
	.quad	0x3fe920e2e0fa7a91              # double 0.78526443425274028
	.quad	0x3fd2b08c95ffc70a              # double 0.29202570579865095
	.quad	0x3fe6b603c74d0afd              # double 0.70971859861342035
	.quad	0x3fe2ff0337ab0ace              # double 0.59362946388895366
	.quad	0x3f9487e8d912de60              # double 0.020049703835609001
	.quad	0x3fad7e3cdeb538f0              # double 0.057603742776892619
	.quad	0x3fe167463eebf81e              # double 0.54385673798947543
	.quad	0x3fd248e736980488              # double 0.28569965678622866
	.quad	0x3fe79d508da43e2e              # double 0.73795344986314659
	.quad	0x3fef0e97bdf05224              # double 0.97053134057438628
	.quad	0x3fd77fbb3a0bd39c              # double 0.36717110317777624
	.quad	0x3fed0af13426ec0a              # double 0.90758571802086974
	.quad	0x3fe7526b010d6a0b              # double 0.72881078916117426
	.quad	0x3fc722f7547da328              # double 0.18075458169485015
	.quad	0x3fc361db5f1b83b8              # double 0.15142385620040755
	.quad	0x3fc15ad582ef7998              # double 0.13558453458149411
	.quad	0x3fe3e018fc5b4a2b              # double 0.6211056641425946
	.quad	0x3fe7e7a5f381931d              # double 0.74702737388415452
	.quad	0x3fa5e2e6e50b22e0              # double 0.04274674936238454
	.quad	0x3fe5d9761d7fb4d0              # double 0.68279557954306291
	.quad	0x3fd8a3d9973df056              # double 0.38500060815545589
	.quad	0x3fda8aff19ee5d12              # double 0.41473367245039683
	.quad	0x3fe38bbe08871fa3              # double 0.61080838838187324
	.quad	0x3faf82576fc3c620              # double 0.061541302102238626
	.quad	0x3fc3d6a265c72c34              # double 0.15498762101774022
	.quad	0x3fe7ada59dc71285              # double 0.73994713607733387
	.quad	0x3fe273a1d990bdca              # double 0.57661526196710011
	.quad	0x3fcc11b0c96b2c94              # double 0.2192898734559533
	.quad	0x3fe888ebcd742a90              # double 0.76671400191965411
	.quad	0x3fd5d268fc9cbff6              # double 0.34096741360826799
	.quad	0x3fe3fac1fbfa3d93              # double 0.62436007704120511
	.quad	0x3fef1ddd1f9aba4c              # double 0.97239547894225486
	.quad	0x3fe9f739a4cf7665              # double 0.81142885388881025
	.quad	0x3fd989c3040d8300              # double 0.39903331180362045
	.quad	0x3febc3293a09f004              # double 0.86757336936671025
	.quad	0x3fe74834433873d0              # double 0.72756398324019678
	.quad	0x3fe6e09c1f841f40              # double 0.7149181952999939
	.quad	0x3fded12218db36e2              # double 0.48151447703717853
	.quad	0x3fcb7912dd20cfc0              # double 0.21463237569116522
	.quad	0x3fe094ae383a6f36              # double 0.51814948064882205
	.quad	0x3fdf1d0ea58ee23a              # double 0.4861485115793901
	.quad	0x3fe30de8c20d326a              # double 0.59544790173238238
	.quad	0x3fee89f50fc039a6              # double 0.95434048725455933
	.quad	0x3fe3cef732dc58b3              # double 0.61901435788856529
	.quad	0x3feb82495497a923              # double 0.85965410730321812
	.quad	0x3fd3e63a24a8e0c6              # double 0.31092694835707524
	.quad	0x3fe2caa088d23210              # double 0.58723475191942676
	.quad	0x3fe80641aa5ea151              # double 0.75076373362848348
	.quad	0x3fd3827d5675dabe              # double 0.30483945315738115
	.quad	0x3fdf2a153862bae6              # double 0.48694353586590322
	.quad	0x3fd286bc6ac64a5e              # double 0.28947363307194063
	.quad	0x3fdf066aa1c5cd7a              # double 0.4847666339694211
	.quad	0x3fc04445ecac5f34              # double 0.12708353096308544
	.quad	0x3fc8f19809cf19c0              # double 0.19487286070780208
	.quad	0x3fe805897cbfd5e5              # double 0.75067591061695949
	.quad	0x3fc1ff81a65a4a50              # double 0.14060993788423781
	.quad	0x3fe5e91eee8ba9fc              # double 0.68470713225298097
	.quad	0x3fe0712d6f927443              # double 0.51381561080382487
	.quad	0x3fec1419d0e375ea              # double 0.87745371626413982
	.quad	0x3fc23f0f71c40324              # double 0.14254944853748797
	.quad	0x3fe333ff9585670b              # double 0.60009745791760005
	.quad	0x3fb4c83361567f40              # double 0.081179820312624607
	.quad	0x3fec72dc8ab92634              # double 0.88902117819197323
	.quad	0x3fe3ef03184ff47d              # double 0.62292628048420762
	.quad	0x3fb433e8dd512d48              # double 0.07891707804917758
	.quad	0x3fca443774fe48a0              # double 0.20520680630267396
	.quad	0x3feb34abdbbc5b94              # double 0.85017960469382325
	.quad	0x3fe64fa5b9c68131              # double 0.69722257885226757
	.quad	0x3fca2a90ea85ecc8              # double 0.20442401362729457
	.quad	0x3fe261445acd025a              # double 0.57437341436895939
	.quad	0x3fe8dd13e81de166              # double 0.77698703131958946
	.quad	0x3fe88bed67cc827f              # double 0.76708097718444879
	.quad	0x3fc8e4852b16f438              # double 0.19447388271319865
	.quad	0x3fe75fa106d5a084              # double 0.7304234632001827
	.quad	0x3fe194d515ebaddd              # double 0.54941801339503693
	.quad	0x3fc7b6f28a008884              # double 0.18527061212904894
	.quad	0x3fe6ef574495ee1a              # double 0.71671641727101876
	.quad	0x3fe8027d6b87913d              # double 0.75030394555918856
	.quad	0x3fe5bb6253c8ee6e              # double 0.67912403454051939
	.quad	0x3fbdf1f83b305578              # double 0.11697341389693416
	.quad	0x3fe968b5cc9d6535              # double 0.79403200115044703
	.quad	0x3fd7cf54c5dc21aa              # double 0.37202948877577546
	.quad	0x3feae02ec386b6d3              # double 0.83986604870525594
	.quad	0x3fdcd7a9d25a5e14              # double 0.45066304724011386
	.quad	0x3fc5c80a397853b0              # double 0.17016723447946225
	.quad	0x3fe883a4d664cf0e              # double 0.76606981157098786
	.quad	0x3feb7e770b6694a4              # double 0.85918762423229511
	.quad	0x3fc8601a0bb219d8              # double 0.19043279238776623
	.quad	0x3fe504b74382d3c2              # double 0.65682566819906918
	.quad	0x3fa018198366ff60              # double 0.031433865824054719
	.quad	0x3feeafa952e991b3              # double 0.95894304460357771
	.quad	0x3fd3bf3b6ba97276              # double 0.30854688180787748
	.quad	0x3fd60056f7c1455e              # double 0.34377073473759434
	.quad	0x3fc0da7397b67b6c              # double 0.13166661174633576
	.quad	0x3fda66657a7b4cf8              # double 0.41249978028390855
	.quad	0x3fea8cf4124c6c7a              # double 0.82970622610027012
	.quad	0x3fdcfe64ba45daf0              # double 0.45302694502554086
	.quad	0x3feef3436d16b9c5              # double 0.96719523722077183
	.quad	0x3fed1b6822e73740              # double 0.90959555451420471
	.quad	0x3fcb34f673b84db8              # double 0.21255379343402381
	.quad	0x3fc949d22dccbb4c              # double 0.19756533848109326
	.quad	0x3fb1f0de28341958              # double 0.070081600966749646
	.quad	0x3fe0cb5b91795c18              # double 0.52482393658545146
	.quad	0x3fef8ef2988807c3              # double 0.98619966307909867
	.quad	0x3fb8b28b49644ae8              # double 0.096474366586601357
	.quad	0x3fc4e4de28fb59f0              # double 0.16323449135843715
	.quad	0x3fd1225204889148              # double 0.26771974985810632
	.quad	0x3fd34d86428013ea              # double 0.30160671705408382
	.quad	0x3feb6471020cdcc4              # double 0.85601091766775327
	.quad	0x3fe801f61a131fa0              # double 0.75023942082133387
	.quad	0x3fd069c7abb4f510              # double 0.2564562966179702
	.quad	0x3fcab7d9196dcd5c              # double 0.20873559705396871
	.quad	0x3fd4a053d890945c              # double 0.32228561543371881
	.quad	0x3fdf401116701cf6              # double 0.48828532401280655
	.quad	0x3fe74fe4dd9e7ffe              # double 0.72850268635738735
	.quad	0x3fc4ca48906d4658              # double 0.1624232011040927
	.quad	0x3fddac21edb44464              # double 0.46363113606736861
	.quad	0x3fdad6571e78a1f2              # double 0.41933229423241791
	.quad	0x3fe4a46d4dcf2b9c              # double 0.64507165143128331
	.quad	0x3feb9eb98f770bd9              # double 0.8631255914736996
	.quad	0x3fe885df88825860              # double 0.76634194051690585
	.quad	0x3feaf4066c961376              # double 0.84228821953057209
	.quad	0x3fe328aeb6df79de              # double 0.59871612279294673
	.quad	0x3fdff98cf56899a4              # double 0.49960636106188816
	.quad	0x3fd160e7e176b48a              # double 0.27153965967119886
	.quad	0x3fedfa49d52a1789              # double 0.93680278428722474
	.quad	0x3fece1b7b038aa59              # double 0.90255340975029263
	.quad	0x3feb86bf1440c497              # double 0.86019853549636849
	.quad	0x3fe3640d09e01c6c              # double 0.60596324852748529
	.quad	0x3fc932fd3f008294              # double 0.19686856819409526
	.quad	0x3fce98ac6ad73e5c              # double 0.239034225624425
	.quad	0x3fdd4860189d3554              # double 0.45754244235725605
	.quad	0x3f85ea2640a62ec0              # double 0.010700510833678734
	.quad	0x3fec80470fdd5946              # double 0.8906588849884336
	.quad	0x3fe53d949b953aa3              # double 0.66376715075769643
	.quad	0x3f7de19e39aeaa00              # double 0.0072952442814462337
	.quad	0x3fecc33a08531faf              # double 0.89883138299864196
	.quad	0x3fea1cd421e5597d              # double 0.81601912136356669
	.quad	0x3fe9021ffa828c03              # double 0.78150938918804547
	.quad	0x3fd3b78731b55b98              # double 0.30807666639651066
	.quad	0x3fdf95a9832ca4ec              # double 0.49350965318679019
	.quad	0x3fb8dd2778142880              # double 0.097124544921969757
	.quad	0x3fb325f62924a240              # double 0.074797997517301873
	.quad	0x3fc0f741e8af514c              # double 0.13254569875301525
	.quad	0x3fd9d27083b1c49e              # double 0.403469208343333
	.quad	0x3fe959319e09dcee              # double 0.79213791720294835
	.quad	0x3fecbb83f3cafca6              # double 0.89789006820492001
	.quad	0x3fdf39ebee9ae712              # double 0.48791025449064407
	.quad	0x3fc1b9b801282bd4              # double 0.13848018700113462
	.quad	0x3fc3f0f6c76a0030              # double 0.15579113709463988
	.quad	0x3faf5fe23ad7e4a0              # double 0.061278409655593835
	.quad	0x3fd2d17a113afdf0              # double 0.2940354507699956
	.quad	0x3fea9a218610668a              # double 0.83131481346500036
	.quad	0x3fd3a5a3b309e9a6              # double 0.30698482975244656
	.quad	0x3fd9d2e3891f820c              # double 0.4034966315357742
	.quad	0x3fdfb85c6fc7e016              # double 0.49562750736322536
	.quad	0x3fde46ac3e28ccac              # double 0.47306352682353281
	.quad	0x3fef9fb0d90f048d              # double 0.98824350733060983
	.quad	0x3fd3db74377da3e4              # double 0.31026940745374376
	.quad	0x3fd8ead90c00303a              # double 0.38933397457072128
	.quad	0x3f9a60d713d25c80              # double 0.025760040840932863
	.quad	0x3fec1115c8e444a6              # double 0.87708558308272155
	.quad	0x3fb3884ea521d5b8              # double 0.07629863292262129
	.quad	0x3fe48c33b18f3284              # double 0.64211449317515745
	.quad	0x3fed4c6e09ff9cf7              # double 0.91557981446103909
	.quad	0x3fe2a5a0b5284183              # double 0.58271823293948477
	.quad	0x3fda8bd29a6ad4c0              # double 0.41478409843268693
	.quad	0x3fea7511bf726f4a              # double 0.82679068939203515
	.quad	0x3fe1b7580e355a4c              # double 0.55363085532264611
	.quad	0x3fed584f15a320f4              # double 0.91702989793796385
	.quad	0x3fe8a0867c2dd3e7              # double 0.76959537748063844
	.quad	0x3fbcc39c16df5b48              # double 0.11235976751718824
	.quad	0x3fc28dae05bcd508              # double 0.14494872360379696
	.quad	0x3fb74979794b8e10              # double 0.090964882004805014
	.quad	0x3fefe525b0715bd4              # double 0.9967220731876929
	.quad	0x3fea85f168a7dfa2              # double 0.82885046425416342
	.quad	0x3fd971b4497472e4              # double 0.39756495641067446
	.quad	0x3fde49d59b5fbe30              # double 0.47325649426690841
	.quad	0x3fea5b5a41222245              # double 0.82365143510202954
	.quad	0x3fe37ebb3250faa5              # double 0.6092201216450418
	.quad	0x3fbe6ece247e8588              # double 0.11887825385067263
	.quad	0x3f75f46d51c8de00              # double 0.0053600569049687685
	.quad	0x3fc98017508a6bc0              # double 0.1992215293183488
	.quad	0x3feffbea6a755b84              # double 0.99950142662679342
	.quad	0x3feb53c8771facd4              # double 0.85397742525438014
	.quad	0x3fe201b40c9f8973              # double 0.56270792451350216
	.quad	0x3fe5377b5cabb8ce              # double 0.66302269077075393
	.quad	0x3fe46dfb315531b2              # double 0.63842544207869012
	.quad	0x3fd790fda5f26ca2              # double 0.36822453695067214
	.quad	0x3fef5fecaa0180a1              # double 0.98045952991744311
	.quad	0x3fba305649d54d38              # double 0.10230006506508438
	.quad	0x3fd143496970bf12              # double 0.26973185822406365
	.quad	0x3fbc518769ba4838              # double 0.11061903315774735
	.quad	0x3fe52aec20b6b7fc              # double 0.66148954762843415
	.quad	0x3fdfaba5d391b694              # double 0.49485154782346652
	.quad	0x3fd080fb46f55c9c              # double 0.25787240914855558
	.quad	0x3fd1d2106811e2f6              # double 0.27844629443238433
	.quad	0x3fbcb7b91f2a46f8              # double 0.11217839251392181
	.quad	0x3fdc8bc348e75e88              # double 0.44603044623861665
	.quad	0x3fe554e4959ed652              # double 0.6666129038118902
	.quad	0x3fef0523ef507bab              # double 0.96937748662081923
	.quad	0x3fc37ce9bd762fec              # double 0.15224954367692989
	.quad	0x3fe27b3d81dec5f8              # double 0.57754397740626384
	.quad	0x3fd368f296644874              # double 0.30328049360935627
	.quad	0x3fec91fd0dd50cd5              # double 0.89282086087805601
	.quad	0x3fef9811c240599e              # double 0.98731315555305676
	.quad	0x3fe5d1459ba0fede              # double 0.68179588695781113
	.quad	0x3faa9724f25a9c80              # double 0.051934389671537851
	.quad	0x3fe1cd91932f25d7              # double 0.55634382960232187
	.quad	0x3fe644b654964e5a              # double 0.69588772316860603
	.quad	0x3fe8cefe3871f194              # double 0.77526770615036122
	.quad	0x3fd81b99cee557bc              # double 0.37668461994814684
	.quad	0x3fb34814903f3910              # double 0.075318608490509086
	.quad	0x3fa180fb4a0a2a60              # double 0.034187176502275873
	.quad	0x3faa5ee7799a6310              # double 0.051505311578870061
	.quad	0x3fea063581a13548              # double 0.81325793569855254
	.quad	0x3fde49343f942a8e              # double 0.47321802338471108
	.quad	0x3fe316f8e59f1e26              # double 0.59655423019370768
	.quad	0x3fe4919634f0683f              # double 0.64277181949297091
	.quad	0x3fe8013b474558fb              # double 0.75015033645720963
	.quad	0x3fec8232824b7ed8              # double 0.89089322517608149
	.quad	0x3fe0ea28c11f104d              # double 0.52858388632785991
	.quad	0x3fe7a931a49a2306              # double 0.73940355442854933
	.quad	0x3fd0e89f8346ba16              # double 0.26419818706463738
	.quad	0x3fd400fd66b5ffd0              # double 0.31256041555752478
	.quad	0x3fd39957e84e33fc              # double 0.30623433767397024
	.quad	0x3feceae769c1be01              # double 0.90367479949594565
	.quad	0x3fdd451caa4076b0              # double 0.45734326006081982
	.quad	0x3fbb510a36cc3228              # double 0.10670532071908012
	.quad	0x3fe0e99db8825176              # double 0.5285175899212351
	.quad	0x3fc4196d6475686c              # double 0.15702598004537849
	.quad	0x3fd692c94eb820cc              # double 0.35270912825991441
	.quad	0x3fd5ddacb208cd86              # double 0.34165494333429824
	.quad	0x3fea7cbed6ebfd85              # double 0.82772771813317603
	.quad	0x3fe2773465c2b674              # double 0.57705135226360804
	.quad	0x3fedec7729eb1dad              # double 0.93511541545097077
	.quad	0x3fd764809c3332b4              # double 0.36550917867570409
	.quad	0x3fcf447633a7f590              # double 0.2442767860629087
	.quad	0x3fe47caa9a533614              # double 0.64021806851968899
	.quad	0x3fea9633d12ca928              # double 0.83083525518785439
	.quad	0x3fb1236984c30328              # double 0.066946597015896558
	.quad	0x3fca5e6c7309b868              # double 0.20600658051575071
	.quad	0x3fe09bc1ab20802b              # double 0.51901324675782712
	.quad	0x3fb1e4e8bf3b8d18              # double 0.069899126708652282
	.quad	0x3fe18c5890b9e747              # double 0.54838207499344882
	.quad	0x3fd1d1d3b0687506              # double 0.27843181826922636
	.quad	0x3fbef01ee4188ba8              # double 0.12085145062205405
	.quad	0x3fd077c95d925c7c              # double 0.25731119287360804
	.quad	0x3fd8decfbfc54494              # double 0.38859933593364215
	.quad	0x3fcbd652141faf00              # double 0.21747804625135103
	.quad	0x3fe9431f4ded6893              # double 0.78944363804045492
	.quad	0x3fdf618ebbf25542              # double 0.49032944063340633
	.quad	0x3fe5861e7aa45f52              # double 0.67262195542842051
	.quad	0x3fe01d7803f812f6              # double 0.50359726691439621
	.quad	0x3feb6c04ed3ae989              # double 0.85693594297417619
	.quad	0x3fe10c30a7c95545              # double 0.53273804446022466
	.quad	0x3fc8a90c1f808d5c              # double 0.19265891588393458
	.quad	0x3fe8dab4fafa3d66              # double 0.77669762629549832
	.quad	0x3fe2b385c9a07e9b              # double 0.58441438083896757
	.quad	0x3fb69a9f18a69c80              # double 0.088296836393611854
	.quad	0x3fc2b057142a44e4              # double 0.14600647434830372
	.quad	0x3fd119146ffa66f4              # double 0.26715575156559557
	.quad	0x3fc0bf767ae04af0              # double 0.13084298133670513
	.quad	0x3fe513860d9f977d              # double 0.65863325749226898
	.quad	0x3fec697c7c616fe8              # double 0.88787674229706415
	.quad	0x3fe86cb703fa3580              # double 0.76327086235839658
	.quad	0x3feae6a8fd6e90a9              # double 0.84065675257126771
	.quad	0x3fd9ed1502e66edc              # double 0.40509534152236681
	.quad	0x3feaf00287f90497              # double 0.84179808194325545
	.quad	0x3fe55e634ba9e4f0              # double 0.66777195718819193
	.quad	0x3fb5b78865dd94a8              # double 0.084831738347548424
	.quad	0x3fd12e3dc73a9a4c              # double 0.26844734626721301
	.quad	0x3fd7cd37b10d1014              # double 0.3719004849447185
	.quad	0x3fb64e49102e9878              # double 0.087132040453612336
	.quad	0x3fe368d815d102ed              # double 0.60654834996247831
	.quad	0x3fe4214a884dedf5              # double 0.62906386014895921
	.quad	0x3fe71c78eba4414f              # double 0.72222562812570767
	.quad	0x3fe2e31b8446695b              # double 0.5902230819222426
	.quad	0x3fe5b7adb738ddfc              # double 0.67867170129369425
	.quad	0x3fdb5619a66667ee              # double 0.42713013887407569
	.quad	0x3fd6005c6c358258              # double 0.34377203528678058
	.quad	0x3fe9d2cb5287b57f              # double 0.80698171729243018
	.quad	0x3feec98aaeac5650              # double 0.96210226169450586
	.quad	0x3fd1585b3deef712              # double 0.27101784752072533
	.quad	0x3faf634a2a8356b0              # double 0.061304395379619847
	.quad	0x3f8ab7562d776600              # double 0.013044999372982424
	.quad	0x3fb261c32adac090              # double 0.071804235422634699
	.quad	0x3fe4c60c350c8840              # double 0.6491757427322753
	.quad	0x3fc7fa5bcb7ca58c              # double 0.18732783733257141
	.quad	0x3fe795aac8f291af              # double 0.7370199131733467
	.quad	0x3fa0a529fbe820a0              # double 0.032510101318679263
	.quad	0x3fdce6652e4bd918              # double 0.45156220933076119
	.quad	0x3fdc9c4812f42d02              # double 0.44703866816480808
	.quad	0x3fd8ef3caadd1d84              # double 0.38960186658774654
	.quad	0x3feab50d7bd41eac              # double 0.83460115609428475
	.quad	0x3fec58be9aa32dfb              # double 0.88583307459469951
	.quad	0x3fe7448e728c30c5              # double 0.72711870548803204
	.quad	0x3fd07cc7a86dbd78              # double 0.25761596153366595
	.quad	0x3fde142bd064697c              # double 0.46998114920429379
	.quad	0x3fd18e3d1324ecf8              # double 0.27430655355028888
	.quad	0x3fe02d63cd6868b5              # double 0.50554075354309325
	.quad	0x3fecc06c2bac7ea1              # double 0.89848907976189107
	.quad	0x3fdb08167db80d18              # double 0.42236864354363624
	.quad	0x3fdd772c148abe2a              # double 0.46039869314242543
	.quad	0x3fe20681707c5767              # double 0.56329414338936779
	.quad	0x3faa2e040bb12220              # double 0.05113232271884649
	.quad	0x3fc52b837a066408              # double 0.16539042909860791
	.quad	0x3fe3bfaf02a27def              # double 0.61714888109776023
	.quad	0x3fe2bb9b9ecd5b35              # double 0.58540135398911863
	.quad	0x3fc0f0c50d2fa934              # double 0.132347709120333
	.quad	0x3fe9978c0b4f0d41              # double 0.79974939545392243
	.quad	0x3fed71c69c2b9884              # double 0.92013864995966843
	.quad	0x3feeaf7864dfe77a              # double 0.95891971304011681
	.quad	0x3fea7b8471f0ea19              # double 0.82757780317416796
	.quad	0x3fec5762de1b0003              # double 0.88566726093267822
	.quad	0x3fe50de2216f92bb              # double 0.65794474153934546
	.quad	0x3fbd484d39381c30              # double 0.11438448569252624
	.quad	0x3fb6dc1b80baf280              # double 0.08929607289150887
	.quad	0x3fdb9d25ea4e1228              # double 0.43146655923217958
	.quad	0x3fc82ade4f99ac90              # double 0.18880823981030348
	.quad	0x3fd8de01553f5380              # double 0.38855012249887722
	.quad	0x3fee8826e9932dec              # double 0.95412011737920243
	.quad	0x3febf3a713b26c47              # double 0.87349275443137564
	.quad	0x3fe77dc420a10237              # double 0.73410230992164471
	.quad	0x3fe274db448ea866              # double 0.57676471128548878
	.quad	0x3fcba82cdba83a14              # double 0.21606980061956504
	.quad	0x3fe7904c2f6c4083              # double 0.73636445295598241
	.quad	0x3fc453a625fd21a8              # double 0.15880276541635152
	.quad	0x3fda9913122d78ca              # double 0.41559292578848483
	.quad	0x3fd1f2a2dc51e122              # double 0.28043433681115648
	.quad	0x3fe43186eb23daea              # double 0.63104577947418972
	.quad	0x3fe27074aaa7bb02              # double 0.57622750598042694
	.quad	0x3fba8faf6129de78              # double 0.10375496027142528
	.quad	0x3fcb2e4a1fb94f90              # double 0.21235014485375503
	.quad	0x3fbbf444927fd850              # double 0.10919598175664302
	.quad	0x3fe080a290987a50              # double 0.51570251694995228
	.quad	0x3fdff4df46371a18              # double 0.49932081086117952
	.quad	0x3fdbd694077acc98              # double 0.43497181635320592
	.quad	0x3fd390825ffebd28              # double 0.30569514631766248
	.quad	0x3fdff5b5750d560e              # double 0.49937187605732525
	.quad	0x3fde40e083e0539c              # double 0.47270977858107144
	.quad	0x3fb56b0836d67988              # double 0.083664430034764092
	.quad	0x3fd20be0852dbdd0              # double 0.28197491651277762
	.quad	0x3fc9ebec14fa40cc              # double 0.20251227402014249
	.quad	0x3fccd41dde37231c              # double 0.22522328710899664
	.quad	0x3fdc90ff7e85df6e              # double 0.44634997707134161
	.quad	0x3fd5360c3e5e79b4              # double 0.33142381754614836
	.quad	0x3fcd5431a7e18978              # double 0.22913189599337236
	.quad	0x3fc6a5d9dac5f3ec              # double 0.17693637068069223
	.quad	0x3fc1530c766abe80              # double 0.13534694463804797
	.quad	0x3fe5e4e3a5c3a93f              # double 0.68419058204498373
	.quad	0x3fed5b1559caac5b              # double 0.91736857926788262
	.quad	0x3fe4463fa6b62796              # double 0.63357527314041096
	.quad	0x3fe33446f3a9cc40              # double 0.60013148870928745
	.quad	0x3fe06c14e1bda012              # double 0.5131935509680281
	.quad	0x3fca2d1fc78ba910              # double 0.20450207942423804
	.quad	0x3fb5bb81e8207f08              # double 0.084892386600127989
	.quad	0x3fe16d21716ecb84              # double 0.54457161097376217
	.quad	0x3fd4c17a9e164822              # double 0.32430901945292778
	.quad	0x3fb7292f50a565d0              # double 0.090472180546746772
	.quad	0x3fc4e7004e92aab8              # double 0.16329959713524089
	.quad	0x3fee031301e22814              # double 0.93787527435165651
	.quad	0x3feaa6b2dac2a07d              # double 0.83284895636189982
	.quad	0x3f744983c429d280              # double 0.0049529215926794601
	.quad	0x3fe3574f8a30f9c4              # double 0.60440804472437337
	.quad	0x3fe9ca230aa022cc              # double 0.8059249122171308
	.quad	0x3fe321578cdbcc96              # double 0.59782006751483396
	.quad	0x3fe1d4384d7b7d84              # double 0.55715575345304602
	.quad	0x3fd56b35b2a20c1a              # double 0.3346685642683852
	.quad	0x3fee2d37bbdf52b8              # double 0.94301974004573363
	.quad	0x3fe019b4150e4413              # double 0.50313762772032289
	.quad	0x3fe0774623b95863              # double 0.5145598123297187
	.quad	0x3fe60cd00ad8a1a3              # double 0.68906404608155858
	.quad	0x3fabd41eaaf9cfd0              # double 0.054352720614502581
	.quad	0x3fe333305e2c6731              # double 0.59999864953281279
	.quad	0x3fe54a7efa26a116              # double 0.66534375054928563
	.quad	0x3fe266233b4b912d              # double 0.57496797162142388
	.quad	0x3fe56abe0b03cddf              # double 0.66928007270183432
	.quad	0x3feceb52508d3dd3              # double 0.90372577412375177
	.quad	0x3fe5d1f495c2dc60              # double 0.68187932253102801
	.quad	0x3fc642cc6973f9f0              # double 0.17391352795671322
	.quad	0x3fe2887414cbed9d              # double 0.57915691434702732
	.quad	0x3fe98d1d0dca31e7              # double 0.79847576802563658
	.quad	0x3fe8e05aef8f37aa              # double 0.77738711155847295
	.quad	0x3fcd13d9b90bb74c              # double 0.22716828856885696
	.quad	0x3fe364d62049e875              # double 0.60605913454425198
	.quad	0x3fc5b2f252d24544              # double 0.16952351612102678
	.quad	0x3fb459af9a5d0200              # double 0.079493498979907429
	.quad	0x3feedf9eaa1c88c4              # double 0.96479733681578538
	.quad	0x3fe131a1803aa0a9              # double 0.53730845494012158
	.quad	0x3fe84446f7ee6da4              # double 0.75833462165922016
	.quad	0x3fab02ef239669f0              # double 0.052756760687049709
	.quad	0x3fc8981dcf731078              # double 0.19214222554558424
	.quad	0x3feccf32e198c9fa              # double 0.90029281675225481
	.quad	0x3fe3bfeb5794f6e7              # double 0.61717764955366483
	.quad	0x3fe6cd4f4c30d6d6              # double 0.71256222611438136
	.quad	0x3f437c0120abf000              # double 5.9461646136993451E-4
	.quad	0x3fe5c2b794860d80              # double 0.68001917847179527
	.quad	0x3fe221cb4fe6ecd5              # double 0.56662526708478345
	.quad	0x3fd471be6808d87a              # double 0.3194423690760072
	.quad	0x3fd9e0902bda0328              # double 0.40433124811538557
	.quad	0x3fd19b758cf56524              # double 0.27511347547040743
	.quad	0x3fbf7a93b50cfb08              # double 0.12296412630255926
	.quad	0x3fd602389851ea38              # double 0.34388556361196576
	.quad	0x3fe28fefe9ab8990              # double 0.58007045401272883
	.quad	0x3fe565dd61cf8a09              # double 0.66868466476108879
	.quad	0x3fcb1bb03aa1e6b0              # double 0.21178248274718703
	.quad	0x3fb7bc0effe6d4d8              # double 0.092713296390530942
	.quad	0x3fcd29f7c396e258              # double 0.22784325647605175
	.quad	0x3fe549777c646579              # double 0.66521810813280446
	.quad	0x3fcc6e7e4b8a3ac8              # double 0.22212198914026815
	.quad	0x3fedc1959b2c027b              # double 0.92988090807928303
	.quad	0x3fc8dfb643e7c634              # double 0.19432714763347436
	.quad	0x3f990f1b6b9fe260              # double 0.024471691554909802
	.quad	0x3fed604318ebdb5d              # double 0.91800074450916791
	.quad	0x3fd52deefe647254              # double 0.33092856257443271
	.quad	0x3fe62d3933f90185              # double 0.69302044058717682
	.quad	0x3fde94391c33b676              # double 0.47779681924917072
	.quad	0x3fe071af25944ca1              # double 0.51387746181207572
	.quad	0x3fe979a0a341535c              # double 0.79609710584427828
	.quad	0x3fe382327394fece              # double 0.60964319777118603
	.quad	0x3fd381b99177c206              # double 0.30479277807083383
	.quad	0x3fee98ddda36f49c              # double 0.95616047496845935
	.quad	0x3fd8dc80fc5ebd6a              # double 0.38845848699107555
	.quad	0x3fe83ef0c6730a41              # double 0.75768316993373486
	.quad	0x3fddf79860422c8a              # double 0.46823701286548014
	.quad	0x3fe2384215aca4d5              # double 0.56936744912413906
	.quad	0x3fe99ae9a49c4ee9              # double 0.80016023779395795
	.quad	0x3fe61da288ccb124              # double 0.69111754149119919
	.quad	0x3feebae256172dca              # double 0.96031300367888517
	.quad	0x3fe89ef9f86262c6              # double 0.76940630447924074
	.quad	0x3fe9f2554ccb2659              # double 0.81083168982258791
	.quad	0x3fd7521068674da0              # double 0.36438379474312832
	.quad	0x3fe4a034b652dfb3              # double 0.64455638513663016
	.quad	0x3feeb36ab348d497              # double 0.95940146461966235
	.quad	0x3fd3bc21972e166a              # double 0.30835761798548467
	.quad	0x3fdc0fd993767af0              # double 0.43846740151086205
	.quad	0x3fe1c3498f4f2ba2              # double 0.55508878698434594
	.quad	0x3fecf7b947e01384              # double 0.90523971593994234
	.quad	0x3fdf5d296f8b83ae              # double 0.49006114857734928
	.quad	0x3fe813fc15967671              # double 0.75243953911167527
	.quad	0x3fe9f34d14a42d0a              # double 0.81094984084612176
	.quad	0x3fcd0708d67afd00              # double 0.22677717659642127
	.quad	0x3fdef4e0d7de74fe              # double 0.48369618493036615
	.quad	0x3fe74a70b8301b78              # double 0.72783695196345288
	.quad	0x3fb1d7c0b6762750              # double 0.069698376222871561
	.quad	0x3fd93c8e5e90cf0c              # double 0.3943210528843657
	.quad	0x3fe91e90b1c5f4bf              # double 0.78498110505429242
	.quad	0x3fe9e966c08037bb              # double 0.8097413787634119
	.quad	0x3fe89fe298df41e3              # double 0.76951722963172775
	.quad	0x3fdf728c4853871a              # double 0.49136645377267174
	.quad	0x3fcf57181e760ce8              # double 0.24484540450439529
	.quad	0x3fe26a1d301fb0be              # double 0.57545337104013305
	.quad	0x3fe3b46fabd62500              # double 0.6157759052449876
	.quad	0x3fe58ae5429848b5              # double 0.67320502287682038
	.quad	0x3fe43a2c5eed4fcf              # double 0.63210123577527522
	.quad	0x3fe292b9a5f45fc2              # double 0.58041078961377246
	.quad	0x3fd1b4cde673f168              # double 0.27666041855970613
	.quad	0x3fef1c9e800f8461              # double 0.97224354755247699
	.quad	0x3fc40c4ad691d670              # double 0.15662513234171938
	.quad	0x3fab37adabdc6350              # double 0.053159167508232685
	.quad	0x3fe2a67173a82599              # double 0.58281776990149858
	.quad	0x3faab7b76757b2a0              # double 0.052182895054874168
	.quad	0x3fd53753b6143952              # double 0.33150189191009816
	.quad	0x3fe7cc211d63ad00              # double 0.74366813411816679
	.quad	0x3fe3a172ec122a4d              # double 0.61345811946495987
	.quad	0x3fe5fc0d16a61220              # double 0.68701795981957403
	.quad	0x3feae4c20a90ef54              # double 0.8404245573396829
	.quad	0x3febbd1dc35e85db              # double 0.86683548124363641
	.quad	0x3fd23b647365777a              # double 0.28487502354788996
	.quad	0x3fa99b396f56e370              # double 0.050012392846332854
	.quad	0x3fef0791e95017b4              # double 0.96967406815450951
	.quad	0x3fe79b154e5b2ea0              # double 0.73768105796758121
	.quad	0x3feaa10103fc0081              # double 0.83215380457114929
	.quad	0x3fe7d46a394bfaf9              # double 0.74467955771237293
	.quad	0x3feaf59b5d14d7db              # double 0.8424813096996745
	.quad	0x3fd4f2a5fb3187ca              # double 0.32731008082020863
	.quad	0x3fd593397902e71a              # double 0.33711087052835043
	.quad	0x3feacf8ef32fd891              # double 0.8378367185348613
	.quad	0x3fd457b3bb191dbe              # double 0.31785290976810276
	.quad	0x3fe4350c15fd27f9              # double 0.63147548956589994
	.quad	0x3fe504ba6f853fcd              # double 0.65682718068455304
	.quad	0x3fefd8b30a26bc8d              # double 0.99520256025961517
	.quad	0x3fe435c9ad5c4e79              # double 0.63156589374052807
	.quad	0x3fd9dce6af57336e              # double 0.40410773394687893
	.quad	0x3feef67cccfde32a              # double 0.9675888065095013
	.quad	0x3fa8dbd70842fbe0              # double 0.048552245863440424
	.quad	0x3fed9bbcce690c1c              # double 0.92526092829246264
	.quad	0x3fea8929a7010d80              # double 0.8292434942053859
	.quad	0x3fd922621706cada              # double 0.39272358177838174
	.quad	0x3fe40056c8fd5a0d              # double 0.62504138236801199
	.quad	0x3fcfece5bd9b7b10              # double 0.2494170356576082
	.quad	0x3fe0a95354f7040a              # double 0.52066961855609972
	.quad	0x3fef0970993b39e3              # double 0.96990232398985332
	.quad	0x3fd814482874e640              # double 0.37623790694087589
	.quad	0x3feebe209c72de9b              # double 0.96070890957249177
	.quad	0x3fec4063e111a0a4              # double 0.88286012610207764
	.quad	0x3fe56769e86b86c9              # double 0.66887374300514424
	.quad	0x3fd1637b2563a984              # double 0.27169684077548362
	.quad	0x3fdcc92448a9345a              # double 0.44977671714588541
	.quad	0x3fed10c3974a75aa              # double 0.90829639004703222
	.quad	0x3fa3a677a345c880              # double 0.03837941997598282
	.quad	0x3fe6d7a7141ab567              # double 0.71382478644015357
	.quad	0x3fe7ed116d5dcfac              # double 0.74768897400507717
	.quad	0x3fe9d26d97d7c2f2              # double 0.80693702370453324
	.quad	0x3fe11ec9bab9da44              # double 0.53500830144805223
	.quad	0x3fd912a72891a602              # double 0.39176348649797899
	.quad	0x3fd120a86a64cc70              # double 0.26761827840818508
	.quad	0x3fef85b59ad72e35              # double 0.98507194750113191
	.quad	0x3fc5fe80a8ed01a8              # double 0.17182930229502102
	.quad	0x3fec4317bcf760ec              # double 0.88319003016934294
	.quad	0x3fef045d21cb757e              # double 0.96928269005336154
	.quad	0x3f7b9e19bb484700              # double 0.0067425732745662881
	.quad	0x3fe1a2a19dd9d6e7              # double 0.55110245542774983
	.quad	0x3fc1d2cbce89c894              # double 0.13924548706888074
	.quad	0x3fd0349b797a1694              # double 0.25321089613894654
	.quad	0x3fac10d2f935c220              # double 0.054815857812062996
	.quad	0x3fd863cd5955905a              # double 0.38109143947645452
	.quad	0x3fedac5dc493f672              # double 0.92729080576073231
	.quad	0x3feb53779b28a927              # double 0.85393886856517021
	.quad	0x3fea4f885bd56c92              # double 0.82220857559458893
	.quad	0x3fd59b0c935836f8              # double 0.33758844746704098
	.quad	0x3fe7ab229d2d8404              # double 0.73964052866733754
	.quad	0x3fd2c6f7d6a7507e              # double 0.29339405023825538
	.quad	0x3fe27877cd5c6be6              # double 0.57720556363653652
	.quad	0x3fe44b93b6ce53a0              # double 0.63422570900239705
	.quad	0x3fd5a48aca957e58              # double 0.33816785605993038
	.quad	0x3fb8ccae925ae988              # double 0.096873198252899084
	.quad	0x3fc9d90ff599ff98              # double 0.20193671695960513
	.quad	0x3fecb3b70036e9ff              # double 0.89693784753700345
	.quad	0x3fccd4a21443a320              # double 0.22523904790366434
	.quad	0x3fdbccff42c7ffcc              # double 0.4343870308075537
	.quad	0x3fe5d4bf4a1a2c84              # double 0.68222012017339795
	.quad	0x3fc867637ad03828              # double 0.19065516945596639
	.quad	0x3fe4a31ccaa4f741              # double 0.64491118983253426
	.quad	0x3fefbc67163752c4              # double 0.99174837435801821
	.quad	0x3fcd553ad4212a50              # double 0.22916350705993915
	.quad	0x3fef705b78c6a47b              # double 0.98246549214412881
	.quad	0x3fe01336bab1c872              # double 0.50234543288958222
	.quad	0x3fe84fa7984436ac              # double 0.75972347011130159
	.quad	0x3fe1fb87f929383e              # double 0.56195448555241234
	.quad	0x3fd55a3357494bfc              # double 0.33363040470175043
	.quad	0x3fc03931ccac81c8              # double 0.12674543851700393
	.quad	0x3fc4af3d616f4c88              # double 0.16159789331013408
	.quad	0x3feb127496a5359e              # double 0.84600285933418085
	.quad	0x3fb101642d331b60              # double 0.066427479777400489
	.quad	0x3fe5a21d39bb8e1e              # double 0.67603932643800468
	.quad	0x3fe36fa49b14438e              # double 0.60737829483888262
	.quad	0x3fd18029c38f4d6c              # double 0.27344745729097641
	.quad	0x3fdce7f6e946fe32              # double 0.45165798932063972
	.quad	0x3fe043cd096d6717              # double 0.50827648011474735
	.quad	0x3fefbf3f6c3b1cdc              # double 0.99209567202424464
	.quad	0x3feeec3f69d2d5a1              # double 0.96633883160273026
	.quad	0x3fcf73d1f177bda4              # double 0.24572204866806857
	.quad	0x3fe2975128afc31e              # double 0.58097131678195857
	.quad	0x3f96110dfe9e6140              # double 0.021549433389368433
	.quad	0x3f98ab319f55be00              # double 0.024090552663833975
	.quad	0x3f9716d798d787c0              # double 0.022548073486070797
	.quad	0x3fe13c4a31c8bb5a              # double 0.53860959742983572
	.quad	0x3fc557aa1f35953c              # double 0.16673780940906535
	.quad	0x3fd2765340efd324              # double 0.28847199765668763
	.quad	0x3fd55958cd0843a2              # double 0.33357830069240368
	.quad	0x3fe0cdfbfb0e511e              # double 0.52514456781731034
	.quad	0x3fe50dae9d9f71bf              # double 0.65792017732342589
	.quad	0x3fd8fef39b9397d2              # double 0.39056101029416113
	.quad	0x3fc36423ed9d59ec              # double 0.15149354078557964
	.quad	0x3fe751522b65b088              # double 0.72867687679310311
	.quad	0x3fe083e8d84f870a              # double 0.51610224006819405
	.quad	0x3fce0a8781ac2bec              # double 0.23469632941882368
	.quad	0x3fdfb21f45e82d70              # double 0.49524671389436659
	.quad	0x3fc2807c69949608              # double 0.14454608111661593
	.quad	0x3fdb45b1f0cb273c              # double 0.42612885012623614
	.quad	0x3fd514f894c81d84              # double 0.32940496949637343
	.quad	0x3fcb4b3a9bb23540              # double 0.21323330499982696
	.quad	0x3fea1ea597c3957e              # double 0.81624107018858161
	.quad	0x3fe6aea9d97911ab              # double 0.70882122492962674
	.quad	0x3fe35827acfda214              # double 0.6045111063695594
	.quad	0x3fe355fee1d485ee              # double 0.6042475138421517
	.quad	0x3fc401b523f74140              # double 0.15630211120743276
	.quad	0x3fcf59bf3b1012e8              # double 0.24492636093068332
	.quad	0x3fee24be4106aa40              # double 0.94198525143048783
	.quad	0x3fc65e56b718c66c              # double 0.17475398960373256
	.quad	0x3fcdab7de3380f50              # double 0.23179601282765327
	.quad	0x3fecc1979654e6ea              # double 0.89863185273790447
	.quad	0x3fee2e35438ab2ab              # double 0.94314063255076996
	.quad	0x3fdb3eff9facb7b6              # double 0.42572012513380331
	.quad	0x3f95647e6da588a0              # double 0.020891166155145968
	.quad	0x3fe9487ba01db35c              # double 0.79009801170978333
	.quad	0x3fee32e77de8abd5              # double 0.9437138995320945
	.quad	0x3fe9889e3729b008              # double 0.79792700551979667
	.quad	0x3fde00a260a49cd2              # double 0.46878871381563869
	.quad	0x3fd8fbdc40aa25e6              # double 0.39037233652979209
	.quad	0x3fe8d926fe2a6a87              # double 0.77650785104499753
	.quad	0x3fd27e18e27fa3bc              # double 0.28894636267665041
	.quad	0x3fdea446379f3194              # double 0.47877650672742189
	.quad	0x3fe38a5945ad71de              # double 0.61063827141657234
	.quad	0x3fe60e4e94a6f86d              # double 0.68924645455969158
	.quad	0x3fd66d21dcf27150              # double 0.35041090561732791
	.quad	0x3fd326b6619f4edc              # double 0.29923781903674551
	.quad	0x3fe8a19c30d0cd5e              # double 0.76972779783538292
	.quad	0x3fedbc0e4de81bc8              # double 0.92920603958270309
	.quad	0x3fe08c85e388db1d              # double 0.5171536869082477
	.quad	0x3fed6457e5a3c228              # double 0.91849894382000219
	.quad	0x3fe75f360078645b              # double 0.73037242977001016
	.quad	0x3feceaa7e975b25c              # double 0.90364451978309601
	.quad	0x3fee51ee2a54fda3              # double 0.94750126140563784
	.quad	0x3faf4da30ff42ea0              # double 0.061139198014726448
	.quad	0x3fe0a95b3cca0e29              # double 0.52067338822275133
	.quad	0x3fea9cccdb6e9a71              # double 0.83164065225430595
	.quad	0x3fd6f6975d48d928              # double 0.35880073652096423
	.quad	0x3fd8f6d8cf6b9bc6              # double 0.39006634002583629
	.quad	0x3fdb209a752badb0              # double 0.42386495058482421
	.quad	0x3fdce1dbcda20648              # double 0.45128531533564287
	.quad	0x3fcbb4a1393a23f4              # double 0.2164498834065679
	.quad	0x3feac8730a2c7c17              # double 0.83696891772331383
	.quad	0x3fea93eab7ec7ab4              # double 0.83055625841719527
	.quad	0x3fe499c8f7b382f8              # double 0.64377258662361125
	.quad	0x3fe6243e6af7c47f              # double 0.6919242943969407
	.quad	0x3f8f9a69ab5fb700              # double 0.015431237738052328
	.quad	0x3fe2b88c5d5bfab0              # double 0.58502786859738443
	.quad	0x3fd2254f88687270              # double 0.28352726288884522
	.quad	0x3fe0a7136177a010              # double 0.52039498364047354
	.quad	0x3fd1b189d3137e0e              # double 0.2764610825815631
	.quad	0x3fd7272abb34a456              # double 0.36176555902290397
	.quad	0x3fdde0d35eb8b30c              # double 0.46684726953644495
	.quad	0x3fec0748ed22c684              # double 0.8758892661628157
	.quad	0x3fdbf418f93727f8              # double 0.43677353227087634
	.quad	0x3fe8f439b0764554              # double 0.77981266465409726
	.quad	0x3fd2afd26cdf9acc              # double 0.29198132164166846
	.quad	0x3fe5d25721a070eb              # double 0.68192631309241614
	.quad	0x3fb6799251874068              # double 0.087792534736992445
	.quad	0x3fd8b3ccbbe7ec2e              # double 0.38597410535993759
	.quad	0x3fa3eddf810ebbd0              # double 0.038924202446075307
	.quad	0x3fa21239c5bb6260              # double 0.035295300852969502
	.quad	0x3fea95309366fee8              # double 0.83071163930432323
	.quad	0x3fe2a65ae8221a0b              # double 0.58280701960103565
	.quad	0x3fd23da878ef9ec0              # double 0.28501331148298092
	.quad	0x3fddcd653c88454c              # double 0.46566134368284362
	.quad	0x3fe793792fbf4cc5              # double 0.73675212216985442
	.quad	0x3fec77d461002b17              # double 0.88962763734284322
	.quad	0x3fd3c965601308ac              # double 0.30916723615895125
	.quad	0x3fa748f9108ad870              # double 0.04547861411030929
	.quad	0x3f9b954db2adf2c0              # double 0.026936735182504945
	.quad	0x3fdc153f2ddfb98a              # double 0.4387968013751552
	.quad	0x3f9a4b3d174e0c60              # double 0.025677637622277039
	.quad	0x3fe61d41b3b47bc9              # double 0.69107136820445547
	.quad	0x3fcaad595f466dd4              # double 0.20841519500832695
	.quad	0x3fc88a39b32debfc              # double 0.19171830414765612
	.quad	0x3fea940b5bd7d13c              # double 0.8305718225297265
	.quad	0x3fcc992c42ceb958              # double 0.22342446577153896
	.quad	0x3fe1ff96cdf9619a              # double 0.56244983891797351
	.quad	0x3fe6e71ae03c8665              # double 0.71571105762650389
	.quad	0x3fc00d6a20bcd250              # double 0.12540937994494294
	.quad	0x3fd580b9b0852924              # double 0.33598177183434275
	.quad	0x3feee636ad4d285c              # double 0.9656022438805496
	.quad	0x3fb72ad641b9e478              # double 0.090497389837666975
	.quad	0x3fe957ea973160f9              # double 0.79198197870121512
	.quad	0x3fe5f5b0c7573b10              # double 0.68624152120341542
	.quad	0x3fe2a7fbfbace847              # double 0.58300589709620787
	.quad	0x3fe21dd037fce8f1              # double 0.56613932547705137
	.quad	0x3fe20fa879e097d4              # double 0.5644113903442709
	.quad	0x3feb1a2b0815e8d5              # double 0.84694434718337652
	.quad	0x3fa3f62fa9005ba0              # double 0.038987626438191869
	.quad	0x3fd60419ca64c862              # double 0.3440002895832831
	.quad	0x3fef6238d1d009e6              # double 0.98073998431237608
	.quad	0x3fab3cb4b9c2cf00              # double 0.053197524715328015
	.quad	0x3fe0b89fc2b9daea              # double 0.52253711731358732
	.quad	0x3fee42e7bcdca258              # double 0.94566714179115773
	.quad	0x3fedc2bbc5c8ee6c              # double 0.93002117757664626
	.quad	0x3feee71cc07883b4              # double 0.96571195213265648
	.quad	0x3feb9fdcffb3872b              # double 0.86326456014305586
	.quad	0x3fc8070206c2585c              # double 0.1877138646129336
	.quad	0x3fef867cb7632ce8              # double 0.98516689126827561
	.quad	0x3fe57164a7692be5              # double 0.67009194085528334
	.quad	0x3fe3adbf94dd8f6e              # double 0.61495951724326203
	.quad	0x3fe76a6979f06c14              # double 0.73173974815597598
	.quad	0x3fedd3139aa89ac1              # double 0.93201618391761809
	.quad	0x3fe5ccb18ca336e3              # double 0.68123700588486391
	.quad	0x3fdc73588dda71a4              # double 0.44454015591488827
	.quad	0x3fda1488507e1b04              # double 0.40750320301633303
	.quad	0x3fea1f64c498c0fe              # double 0.81633222959320029
	.quad	0x3fe8ebf85b13b091              # double 0.77880494869670447
	.quad	0x3f681859ecef6300              # double 0.0029412990911449333
	.quad	0x3fe8ee843f4879d8              # double 0.77911579475385917
	.quad	0x3fcd241fe07eb234              # double 0.22766493283906331
	.quad	0x3feabcb8dd1a78d7              # double 0.83553736862429673
	.quad	0x3fea30afbad63c6d              # double 0.81844316951345564
	.quad	0x3fd8c27d4199b758              # double 0.38687068373007127
	.quad	0x3fe2a4fa2b250927              # double 0.58263882090276276
	.quad	0x3fde45d236e6516a              # double 0.47301154481217245
	.quad	0x3fe3bafd7643769d              # double 0.61657593820901335
	.quad	0x3faffdc610417940              # double 0.062483014568658124
	.quad	0x3fec4618f4bf0081              # double 0.88355682184193551
	.quad	0x3feb715ba6f4af52              # double 0.85758764847330782
	.quad	0x3fe91fbb3f1aa7a3              # double 0.78512346577666781
	.quad	0x3fee508d7e524dc9              # double 0.94733309433143476
	.quad	0x3fdd4b15414cab26              # double 0.45770770432379704
	.quad	0x3fe18d821c8ee1c0              # double 0.54852395608673277
	.quad	0x3fe8ce3c30496f03              # double 0.7751751845457594
	.quad	0x3fb393fc94e7a960              # double 0.076476847032301176
	.quad	0x3fefb61f0a3b598b              # double 0.99098159788518225
	.quad	0x3fdc80ebe9ba320a              # double 0.44536874604162391
	.quad	0x3fda8782d3a9944e              # double 0.4145209376350224
	.quad	0x3fc75d9c72d35224              # double 0.18254428488457208
	.quad	0x3fdb96080eeea464              # double 0.43103219469282394
	.quad	0x3fbbcccdfff81a70              # double 0.1085938215183917
	.quad	0x3fe218d3fa4eafc9              # double 0.56553076637418898
	.quad	0x3fdac85608c71d6c              # double 0.41847754342275922
	.quad	0x3f99f0fc94bab0e0              # double 0.025333353593553265
	.quad	0x3fea12a4a084c908              # double 0.81477576590830925
	.quad	0x3fe69ebbbc1e06cb              # double 0.70687662831934384
	.quad	0x3fdf573e0bcadbc0              # double 0.48969985152819717
	.quad	0x3fe056addab3f212              # double 0.51058094706928814
	.quad	0x3fe4d070c2f6b056              # double 0.65044439390977504
	.quad	0x3fdab70dbbd88392              # double 0.41742270798027292
	.quad	0x3fdfe5fdef44701e              # double 0.49841259351683387
	.quad	0x3f4d530397d51400              # double 8.9490580982298784E-4
	.quad	0x3fe3f491a18cb880              # double 0.62360459854768635
	.quad	0x3fe55a5969961717              # double 0.66727896330187064
	.quad	0x3fc9caca43d6b494              # double 0.20150116264759232
	.quad	0x3fe0183b9d4062a7              # double 0.50295811379608757
	.quad	0x3fd422faa34a3f6a              # double 0.31463495203296665
	.quad	0x3fe57f178b0ac594              # double 0.6717641559281895
	.quad	0x3fe7c475d5e3c721              # double 0.74273196959822851
	.quad	0x3fe3dfb744e61069              # double 0.62105906922125798
	.quad	0x3fd2a772359a6dfc              # double 0.29147010073367574
	.quad	0x3fdbd98fbc4d0c5c              # double 0.43515389813200556
	.quad	0x3fe320cc1419c76a              # double 0.59775356222074305
	.quad	0x3fc7800f6c12ec4c              # double 0.18359558846518309
	.quad	0x3fd8845639874276              # double 0.38307719820026109
	.quad	0x3fe96552dadedc46              # double 0.79361860988763833
	.quad	0x3fe7d6e14943fa1b              # double 0.74498047170328918
	.quad	0x3feffa34c8a6565f              # double 0.99929274739652018
	.quad	0x3fdb64779a71b97e              # double 0.42800703127331718
	.quad	0x3fe8bb1dc5183bad              # double 0.77284134383250136
	.quad	0x3fcd624fe32c9d58              # double 0.22956274597639026
	.quad	0x3fec2627f88fb258              # double 0.8796577315056977
	.quad	0x3fe4413ee61d56b8              # double 0.63296456283816038
	.quad	0x3fd7ed6c54645f1e              # double 0.37386615983403881
	.quad	0x3fd68fb207076e2c              # double 0.35252047239711959
	.quad	0x3fe550ab656fb4a0              # double 0.66609735309397777
	.quad	0x3fd825668224a2ec              # double 0.37728274068153556
	.quad	0x3fb67d91d7f83230              # double 0.087853541590626305
	.quad	0x3f7f10cbbcee8600              # double 0.0075843771473116384
	.quad	0x3fd37c1f3cac982e              # double 0.30445080685820158
	.quad	0x3fba6105118bf6c8              # double 0.10304290464770383
	.quad	0x3fef1cdf8914b4e6              # double 0.97227455876932534
	.quad	0x3fc5766e27d7c230              # double 0.1676767057938533
	.quad	0x3fc1ff5927591a48              # double 0.14060511037151202
	.quad	0x3fe283e4ed92dfd9              # double 0.57860037232512262
	.quad	0x3feda3226dc41c81              # double 0.92616387785609799
	.quad	0x3fe4e086959b2b8f              # double 0.65240792484233789
	.quad	0x3fe74e94e0fad330              # double 0.7283424753319192
	.quad	0x3fc1575c1b1b8cdc              # double 0.13547850917448201
	.quad	0x3fd79f25b74a09b4              # double 0.36908858203255623
	.quad	0x3fe886ae2253841d              # double 0.76644045547812178
	.quad	0x3fc6bc04ba03e1bc              # double 0.17761286814471855
	.quad	0x3fe27c2a9c67c067              # double 0.57765703723817985
	.quad	0x3fcbd65c1c54bd28              # double 0.21747924216604386
	.quad	0x3fce6c9f382c1998              # double 0.23768987887178805
	.quad	0x3fe39efa2a34710c              # double 0.61315639727720983
	.quad	0x3fe8eefb3ff71d5e              # double 0.77917253964634958
	.quad	0x3fefe9f68b985780              # double 0.99730994476952617
	.quad	0x3fefa7d4f352a18a              # double 0.98923728488903007
	.quad	0x3fe5942a0557866b              # double 0.67433644336069898
	.quad	0x3fcc3053b01ec394              # double 0.22022482013337863
	.quad	0x3f7693895a2f1100              # double 0.005511795551630394
	.quad	0x3fb63976bbdbf3e8              # double 0.086814328064022228
	.quad	0x3fca66ba956588c4              # double 0.20626003546482796
	.quad	0x3fdac7ce3c538eec              # double 0.41844516650438268
	.quad	0x3fd330a6b38b8b36              # double 0.29984443219852908
	.quad	0x3fed31bf0e2b923a              # double 0.91232254760377107
	.quad	0x3fc849eab0ce044c              # double 0.1897557605080088
	.quad	0x3fdf76ddc9a40372              # double 0.49163002673599643
	.quad	0x3fe7b3627cd1199d              # double 0.74064754846840553
	.quad	0x3f882bacdf143c00              # double 0.011802053983528182
	.quad	0x3fdd9cc91d2dfbc2              # double 0.46269443368504082
	.quad	0x3fef57d109f5ad1b              # double 0.97946979470490036
	.quad	0x3fbb6adb4cc5dc60              # double 0.10709925293291311
	.quad	0x3fe2ce4155eb1403              # double 0.58767763882553969
	.quad	0x3fa0711d21bcda40              # double 0.032112989776966305
	.quad	0x3fc58487cf7b6a24              # double 0.1681070101829657
	.quad	0x3febd917ba5a301b              # double 0.87025057217533985
	.quad	0x3fb08ec6c0a40268              # double 0.064678594619189789
	.quad	0x3fef19369e145ace              # double 0.97182780146507652
	.quad	0x3fe4f35bbf2cae7a              # double 0.65470683420922104
	.quad	0x3fa9737e0ecd85d0              # double 0.049709262186990011
	.quad	0x3fda53a68821eff0              # double 0.41135562223621402
	.quad	0x3f81759baf96ff00              # double 0.008525100990368184
	.quad	0x3fd291cb63db2242              # double 0.2901485896259467
	.quad	0x3fd21968e482cf3e              # double 0.28280088725590591
	.quad	0x3fe1ad1b4b47d2af              # double 0.55238117888673866
	.quad	0x3fef5d76a5399aa0              # double 0.98015911360274188
	.quad	0x3fe4e282f42a12f9              # double 0.65265033424711227
	.quad	0x3fe75525975f7903              # double 0.72914390149142638
	.quad	0x3fec6f2e8a3e3175              # double 0.88857199669432296
	.quad	0x3fd7c2dceefb7d54              # double 0.3712684949695888
	.quad	0x3fd7916e96dd3810              # double 0.36825146420312738
	.quad	0x3fd25d18de5dc3f6              # double 0.2869321986718768
	.quad	0x3fd941f17449c97e              # double 0.39464985233566796
	.quad	0x3fe24cf36d0ebe74              # double 0.57189341831504104
	.quad	0x3fec6ae37c334637              # double 0.88804792650098008
	.quad	0x3fc4f0e7f72f78c4              # double 0.16360187120057479
	.quad	0x3fece6e882fbd78f              # double 0.90318704207196443
	.quad	0x3fc12baee761831c              # double 0.13414560602088776
	.quad	0x3fde8f9eb6e3b2c4              # double 0.47751586780831823
	.quad	0x3fe9b182a7217005              # double 0.80291874544809672
	.quad	0x3fefeef733fa4fc9              # double 0.99792060996923581
	.quad	0x3fefb2ff443f968a              # double 0.99060023622287585
	.quad	0x3fc29826e8f2619c              # double 0.14526831030231058
	.quad	0x3fb989a9795d87f0              # double 0.099756805544103377
	.quad	0x3fe203d8d748401e              # double 0.56296960875807023
	.quad	0x3fe29b92f70d6bb0              # double 0.58149097683359763
	.quad	0x3fe6f62d55e0a798              # double 0.71755091450653463
	.quad	0x3fc40013818653fc              # double 0.15625232529114885
	.quad	0x3fa8c14b41568a90              # double 0.048349715925060655
	.quad	0x3fbc54577b6eede0              # double 0.11066195262440415
	.quad	0x3fc8c43a24067f14              # double 0.19348837622691717
	.quad	0x3fd6a4f6bf1a2d5a              # double 0.35381859457330267
	.quad	0x3fdfef955768f76c              # double 0.498998008118966
	.quad	0x3fe506bea98cd998              # double 0.65707333674690727
	.quad	0x3fba0604bbaba2c8              # double 0.10165433484838637
	.quad	0x3feba071d283cb98              # double 0.86333552471329522
	.quad	0x3fef6396bcb6ca88              # double 0.98090683801849909
	.quad	0x3fe6e6f10bf09b5c              # double 0.715691111869869
	.quad	0x3fe553ca61074873              # double 0.66647833777302734
	.quad	0x3fef12d282c463b7              # double 0.97104764500101381
	.quad	0x3fcdb87e8eebe1e0              # double 0.23219282129845364
	.quad	0x3fb8006bf3013920              # double 0.093756434275949818
	.quad	0x3fdfbd23f2cb7d30              # double 0.49591921530187033
	.quad	0x3facb5efbfc6da30              # double 0.056075565490960932
	.quad	0x3fddaf5929c15888              # double 0.46382741048490361
	.quad	0x3fd2d278d1e6bf80              # double 0.29409618852786679
	.quad	0x3fd95f5831901102              # double 0.39644436683762774
	.quad	0x3fe40a52945a15f3              # double 0.62626008009891476
	.quad	0x3fe783c4239b5d9a              # double 0.73483473734352178
	.quad	0x3fe71a670f44d61e              # double 0.72197297079282285
	.quad	0x3fc6b1d7c2e4ea9c              # double 0.17730233208006474
	.quad	0x3fdc44218665e586              # double 0.44165838360603293
	.quad	0x3fea025eed4dcdf3              # double 0.81278940533087363
	.quad	0x3f9f94bb3c179ae0              # double 0.030840802710282555
	.quad	0x3fe900fecf555510              # double 0.7813715028266035
	.quad	0x3fdc4f515964daca              # double 0.44234117250327343
	.quad	0x3fbbcf03095cde40              # double 0.10862750032981072
	.quad	0x3fd67557c4346c26              # double 0.35091203842756824
	.quad	0x3fe634a25a9ad119              # double 0.69392507263413272
	.quad	0x3fc3b4a0d3e9839c              # double 0.15394983622811942
	.quad	0x3fb4ad48ab198ca0              # double 0.080769101879513361
	.quad	0x3fd6a3bffe23fb52              # double 0.35374450510419309
	.quad	0x3fe056d0369ed935              # double 0.51059733074251901
	.quad	0x3fba65e3bcb6f018              # double 0.10311721188821854
	.quad	0x3feac55c823d6209              # double 0.83659196317154383
	.quad	0x3feb84f70dd3c2bc              # double 0.85998108578322485
	.quad	0x3fdf9244261039ac              # double 0.49330238072516397
	.quad	0x3fe4b84026a66ac0              # double 0.64749152706948365
	.quad	0x3fedf22b88abc549              # double 0.93581177419233896
	.quad	0x3fed3251e46c868a              # double 0.91239256490753573
	.quad	0x3fc4805fa9f61284              # double 0.16016765402686783
	.quad	0x3fab1c229f111330              # double 0.052949029843637141
	.quad	0x3fc16376ebc6c464              # double 0.13584791672249985
	.quad	0x3fec28492c504245              # double 0.8799177041528955
	.quad	0x3fd69acb1b7afd88              # double 0.35319783862720344
	.quad	0x3fd134b7256c5756              # double 0.26884249357805368
	.quad	0x3fd42aef27f11926              # double 0.31512049580159596
	.quad	0x3fe039e0d84d4cae              # double 0.50706522222971784
	.quad	0x3fc197524ce1d204              # double 0.13743046525964087
	.quad	0x3fe86e791ed8c6e6              # double 0.76348548912775693
	.quad	0x3fed05bb8f248575              # double 0.90694978673506788
	.quad	0x3fb8edfade410e68              # double 0.097381285916577576
	.quad	0x3fa4b01ba838e6d0              # double 0.040406097683854392
	.quad	0x3fd2f2997c0aced4              # double 0.29605710137842078
	.quad	0x3fe6b0261c1e76d8              # double 0.70900254718773237
	.quad	0x3fe8b3ac4c59aada              # double 0.7719327441421584
	.quad	0x3fdf23543f2daeac              # double 0.48653131646890801
	.quad	0x3fd8807bbe49d366              # double 0.38284200270509527
	.quad	0x3fe755f4277dcdda              # double 0.72924239838760774
	.quad	0x3fdc489cad1a4478              # double 0.4419318857627057
	.quad	0x3fee499764f7c29e              # double 0.94648332329059648
	.quad	0x3fe3992dd87a6d27              # double 0.6124486187067405
	.quad	0x3fe7be67138e81c6              # double 0.74199251002942712
	.quad	0x3fe1aac694d1d199              # double 0.55209664408043857
	.quad	0x3fd47db749bcddce              # double 0.32017309380486558
	.quad	0x3fefa2592d824201              # double 0.98856791389886222
	.quad	0x3fa690185110c4c0              # double 0.044068107505503828
	.quad	0x3fec8f3235e5b704              # double 0.89247999693699897
	.quad	0x3fc52a6971d87568              # double 0.16535680827011423
	.quad	0x3fe64e286775322f              # double 0.69704075056649184
	.quad	0x3fdebc06fd02b1e0              # double 0.4802262755208897
	.quad	0x3fb97bc83269a080              # double 0.099545013721241915
	.quad	0x3fba3656669cf238              # double 0.10239162450029304
	.quad	0x3fe5551a67fb5647              # double 0.66663856800978116
	.quad	0x3fe04002320d4368              # double 0.50781354690307712
	.quad	0x3fee93ad66ff1ec9              # double 0.95552702061191852
	.quad	0x3feef4d87d06f1cc              # double 0.96738838595734355
	.quad	0x3fe83ed131f9ac53              # double 0.75766811142728796
	.quad	0x3fe7deff4f0b1ed2              # double 0.74597135008022009
	.quad	0x3fea6737e11d7d57              # double 0.82509988754092489
	.quad	0x3fd9ebbce59a31c0              # double 0.40501329824544641
	.quad	0x3fe7309748fca531              # double 0.72468151335957576
	.quad	0x3fea3bb87af16686              # double 0.81979011547373726
	.quad	0x3fe34c586d6da36f              # double 0.60306950924596758
	.quad	0x3fc61b60bf06c75c              # double 0.17271050765480822
	.quad	0x3fd31a1f438661d8              # double 0.29846936792594425
	.quad	0x3fe40072f7d160f9              # double 0.62505482103281829
	.quad	0x3fe88ec37a6fd27e              # double 0.76742719567717166
	.quad	0x3fe9198aefc4a773              # double 0.78436800794336958
	.quad	0x3fe5abf1ea130c95              # double 0.67723937719019267
	.quad	0x3fd8fd8d89b31158              # double 0.39047563979354072
	.quad	0x3fe3a0ddf9bb1968              # double 0.61338709617193121
	.quad	0x3fe4200329143f27              # double 0.62890775702723978
	.quad	0x3fe51ee506d74be6              # double 0.66002131782658746
	.quad	0x3fcf49251a355ccc              # double 0.24441970615109765
	.quad	0x3f96cf8c477e8440              # double 0.022276107658061983
	.quad	0x3fc0337f6e0bd6cc              # double 0.12657158730842466
	.quad	0x3fd60940cbf327f0              # double 0.34431476513839154
	.quad	0x3fe22bf1408ac67b              # double 0.56786406141163981
	.quad	0x3fe0e7999ec25e2a              # double 0.52827149398485074
	.quad	0x3fea1906d2e1d42f              # double 0.81555501163405164
	.quad	0x3febf1a7987e2b9a              # double 0.8732488611579925
	.quad	0x3feb9750d7687902              # double 0.86222116538900218
	.quad	0x3fe053f3d7668896              # double 0.51024810858168013
	.quad	0x3fef095f17193bb5              # double 0.96989397536696364
	.quad	0x3fa162de44311920              # double 0.033957429718201704
	.quad	0x3feb0ead40e8e2e2              # double 0.84554159810712926
	.quad	0x3fd89aacf7cca1ba              # double 0.38444065283922735
	.quad	0x3fe54f6f8960ec9a              # double 0.66594673949966254
	.quad	0x3fedca87beb724a4              # double 0.9309729313764774
	.quad	0x3fd0f8017cfad646              # double 0.26513707356511806
	.quad	0x3fe4fdf849837cd1              # double 0.65600218160752821
	.quad	0x3fb49e9a7bbaac20              # double 0.080545096595117105
	.quad	0x3feb13a09e301871              # double 0.84614592453068671
	.quad	0x3fdf4606ae4a2de2              # double 0.48864905376896506
	.quad	0x3fe41142bb0a7f89              # double 0.62710701495596866
	.quad	0x3fcfdfd6ab625200              # double 0.2490185105167626
	.quad	0x3fcf7be0b85520d8              # double 0.24596795082675871
	.quad	0x3fe7f71c4b95c8a2              # double 0.74891485941613589
	.quad	0x3fe54d44f3191427              # double 0.66568229179450078
	.quad	0x3fecb9e190c42d85              # double 0.89769056582137863
	.quad	0x3fee82105d8a8d4b              # double 0.95337694425362807
	.quad	0x3fc6e027254c083c              # double 0.17871560403006181
	.quad	0x3fbc7f2d30cfccd8              # double 0.11131555978481644
	.quad	0x3fee0bdca3038c4e              # double 0.93894798124927958
	.quad	0x3fec0be4d468545f              # double 0.87645188794943951
	.quad	0x3fed42cb59c5cf58              # double 0.91440360578279023
	.quad	0x3fe28c583e770426              # double 0.57963192176987799
	.quad	0x3fbafd27bc325588              # double 0.10542534203189835
	.quad	0x3fd72e859466b69c              # double 0.36221446506793042
	.quad	0x3fe2e9752570fdd9              # double 0.59099824250000232
	.quad	0x3fe9a8a19278c5c1              # double 0.80183485610739791
	.quad	0x3fc545cdfc8a4374              # double 0.16619276839312713
	.quad	0x3fbbfdc10ca45188              # double 0.10934073027266866
	.quad	0x3fc269cce5de65a8              # double 0.14385377143916611
	.quad	0x3fdfe45ef60457a4              # double 0.49831365609258627
	.quad	0x3fde1c1aa339e2f4              # double 0.47046533527422629
	.quad	0x3fd836895095334c              # double 0.3783286368314307
	.quad	0x3fe5e13307f3d8e5              # double 0.68374015382030662
	.quad	0x3fda56b92b7a1b3a              # double 0.41154317136572482
	.quad	0x3fe1b1f8728afd8f              # double 0.55297491428057011
	.quad	0x3fe723f94f5c8166              # double 0.72314134121192519
	.quad	0x3fe9a56fbaa55ca5              # double 0.80144487814222443
	.quad	0x3fef54bf86f50eb1              # double 0.97909523352469396
	.quad	0x3fe6d78d96f997a4              # double 0.71381263243960236
	.quad	0x3fe2a1016775a76a              # double 0.58215398985815381
	.quad	0x3fe17feb50ad0106              # double 0.54686513669005943
	.quad	0x3f91a149e7c9e5e0              # double 0.017216830036408726
	.quad	0x3fe4dc9c92caa12a              # double 0.65193012876719547
	.quad	0x3fe14d438e4d041d              # double 0.54068162720807644
	.quad	0x3fa8217d99b1dc90              # double 0.04713051320225603
	.quad	0x3fe1e6e2c2c74c64              # double 0.55943429987599957
	.quad	0x3fe4364e89aa1dca              # double 0.63162924659348474
	.quad	0x3fd08ab14c6f150c              # double 0.25846512283563139
	.quad	0x3fea620ec8305c9f              # double 0.82446993922612311
	.quad	0x3fef8f3e83c8ea0b              # double 0.98623586405966656
	.quad	0x3fe4212e7de201e3              # double 0.62905048929684104
	.quad	0x3fe40c0ae9d6f68e              # double 0.62647004768196424
	.quad	0x3fd800130b6be8fc              # double 0.37500454059012589
	.quad	0x3fd82e04a1171f0e              # double 0.37780872088886575
	.quad	0x3fddd2b626bca6ae              # double 0.465985811070463
	.quad	0x3feefb276f298acf              # double 0.96815845214254092
	.quad	0x3fc74996de1af8e4              # double 0.1819332680224256
	.quad	0x3fe8c5fbe319c0ee              # double 0.77416796069704019
	.quad	0x3fa07660c5e65410              # double 0.032153152616196334
	.quad	0x3fc9bce5756c03b8              # double 0.20107715829365502
	.quad	0x3fd378d7d644db86              # double 0.30425067829803998
	.quad	0x3fe8ee97b099d04f              # double 0.77912506573057694
	.quad	0x3fe244559bccd779              # double 0.57084160260886485
	.quad	0x3fe7f636e52aa62a              # double 0.74880547293759503
	.quad	0x3fe41d3204d8a7d3              # double 0.62856388994736745
	.quad	0x3fd1ae8cd5b03fce              # double 0.2762786948014736
	.quad	0x3faa015cf2b6bdd0              # double 0.050791649463799993
	.quad	0x3fec64b053c79bdd              # double 0.8872911106417366
	.quad	0x3fd806e241194762              # double 0.37542015416430818
	.quad	0x3f68ea3ed6c29f00              # double 0.0030413844416051772
	.quad	0x3fd00334cb5fed2e              # double 0.25019569264232444
	.quad	0x3fecf36822844317              # double 0.90471274129422141
	.quad	0x3fbf6c9a5205f778              # double 0.12275089743158485
	.quad	0x3fdba44d8523aa5c              # double 0.43190324785124345
	.quad	0x3fbe4bf232627610              # double 0.11834634523480525
	.quad	0x3feafdb18704467d              # double 0.84346844072770433
	.quad	0x3feb00d68f896ab4              # double 0.84385231050995068
	.quad	0x3fd014f54416345e              # double 0.25127917908759467
	.quad	0x3fd46c455c7218d2              # double 0.31910833385371717
	.quad	0x3fc18d4870a451e0              # double 0.13712411403743285
	.quad	0x3fe35a7d9b835b4b              # double 0.60479622243551867
	.quad	0x3fe7fb0435ca2377              # double 0.74939165597707713
	.quad	0x3fdf91d82707ee7c              # double 0.49327663241977127
	.quad	0x3fe49e053b2cc90f              # double 0.64428960378271138
	.quad	0x3fe1fdc84063a56a              # double 0.56222927642845133
	.quad	0x3fe360295b95dde5              # double 0.60548847091461921
	.quad	0x3fdb3edaf665342c              # double 0.42571138441127476
	.quad	0x3fef830b3c050f69              # double 0.98474656794176695
	.quad	0x3fd9f9280a6572e0              # double 0.40583230033170814
	.quad	0x3fed603a0411d598              # double 0.91799641413551836
	.quad	0x3fe64830a6bd1d9a              # double 0.69631226125868584
	.quad	0x3feee7176c679c06              # double 0.96570941136167288
	.quad	0x3fd2ea68977507a4              # double 0.29555716315018743
	.quad	0x3f92ab5ec56f5cc0              # double 0.018231850433804153
	.quad	0x3fe11949fdb65cd0              # double 0.53433703950113376
	.quad	0x3fdaceee2e4d18dc              # double 0.41888002893064225
	.quad	0x3fea9be9a37725d1              # double 0.83153230597343442
	.quad	0x3fe238a532a2c705              # double 0.56941470994772259
	.quad	0x3fe03e7d70abcffd              # double 0.50762817388613224
	.quad	0x3fef9d83f6f32c41              # double 0.98797796471024679
	.quad	0x3f9aa2a998514a20              # double 0.026011133119320573
	.quad	0x3fa5c58aaa61c920              # double 0.042522748278218225
	.quad	0x3fdbac36f91cbf60              # double 0.43238615348217557
	.quad	0x3fe722e373c303ec              # double 0.72300884828302747
	.quad	0x3fe4e8a29e4e458f              # double 0.65339785498706415
	.quad	0x3fe831875ad5507f              # double 0.75604598751898766
	.quad	0x3fe7c26d1561780b              # double 0.74248365569997199
	.quad	0x3fe82b4ab71cd708              # double 0.75528465046110771
	.quad	0x3fe4e110fc36df9b              # double 0.65247391949286582
	.quad	0x3fe0f39dcaf4e534              # double 0.52973832740750604
	.quad	0x3fe7dae75955eb24              # double 0.7454716439091027
	.quad	0x3fe3f1da45e1c284              # double 0.62327302597812251
	.quad	0x3fee8a66e29b332c              # double 0.95439476260216826
	.quad	0x3fd242df7d3a8508              # double 0.28533160428385473
	.quad	0x3fd8d979a49e582a              # double 0.38827363086727706
	.quad	0x3fc8cea81ed00560              # double 0.19380666260262114
	.quad	0x3fe7a6b7cd66457c              # double 0.73910131566132931
	.quad	0x3f7c3753a4fcdb00              # double 0.0068887011873843829
	.quad	0x3fba4ff161b35748              # double 0.10278233180301044
	.quad	0x3fe0030bc2f9a5f9              # double 0.50037181931582986
	.quad	0x3fcd1b12d063fb74              # double 0.22738871741600131
	.quad	0x3fc5694b8bba0890              # double 0.16727585146515311
	.quad	0x3fc4c01342c180dc              # double 0.16211167106212698
	.quad	0x3fc12bc95a26f4ac              # double 0.13414875890695066
	.quad	0x3fe127d0dde4085a              # double 0.53611033762013993
	.quad	0x3fc136c1748bf594              # double 0.13448351088292709
	.quad	0x3fdd9759beefa72e              # double 0.46236270567043192
	.quad	0x3fe91b3e7ad64699              # double 0.78457569114307824
	.quad	0x3f8f2153f7a98b00              # double 0.015200286860993284
	.quad	0x3fee9e01a87a8a2e              # double 0.95678790002813741
	.quad	0x3fee3d1488ceccb0              # double 0.9449560806300692
	.quad	0x3fd23f64f3e66284              # double 0.2851192838511809
	.quad	0x3fcabe5c4421f898              # double 0.20893433882514922
	.quad	0x3fdd2ed87c1afd06              # double 0.45598423118276832
	.quad	0x3fd33a19e0e1fa74              # double 0.30042120896533864
	.quad	0x3fed85b6264e394e              # double 0.92257220727496203
	.quad	0x3fc8d0312b8008fc              # double 0.19385351776151782
	.quad	0x3fefb053e24614c0              # double 0.99027437395184136
	.quad	0x3fc120091b29baf8              # double 0.13379014803236777
	.quad	0x3fe5ed98dab640f7              # double 0.68525355069326011
	.quad	0x3fef27ea528227bf              # double 0.9736224757664259
	.quad	0x3fbd25b66a514508              # double 0.11385669799462417
	.quad	0x3fb5ec8c8a629620              # double 0.085640701089311211
	.quad	0x3fe870736b2cef9f              # double 0.7637269109031769
	.quad	0x3fe0dae7d285cce5              # double 0.52672186963755208
	.quad	0x3fdd170f0355e9ac              # double 0.45453238797895312
	.quad	0x3fe245ad880603c0              # double 0.57100559775437176
	.quad	0x3fdfc8fbc0d387fc              # double 0.4966420538968348
	.quad	0x3fe37e1e85250f00              # double 0.6091454124911877
	.quad	0x3fce98db0a12a9ac              # double 0.23903978339997189
	.quad	0x3fe759af0093152e              # double 0.72969770538535328
	.quad	0x3fdb52c52f43d7b6              # double 0.42692689529155403
	.quad	0x3fe1794ecc0b7418              # double 0.5460580811737854
	.quad	0x3fd567dec72d6a68              # double 0.33446473551672407
	.quad	0x3fdb9fbf35c9a804              # double 0.43162517788607624
	.quad	0x3fea63f709b88b5e              # double 0.82470275782211977
	.quad	0x3fe3413100796e03              # double 0.60170793621676955
	.quad	0x3fdaf8747244ae36              # double 0.42141448172580753
	.quad	0x3fe9999ccff56f8c              # double 0.80000153176250554
	.quad	0x3fe222b511f72d5d              # double 0.56673673161405314
	.quad	0x3fa63b98a8a15950              # double 0.043423433861493721
	.quad	0x3fc9ff68a92a4338              # double 0.20310695896162101
	.quad	0x3fb885bbd7214be0              # double 0.09579061510275677
	.quad	0x3fb1096f2232d608              # double 0.066550203179609579
	.quad	0x3feaf65adc04d138              # double 0.8425726220362213
	.quad	0x3fe27ecfd12a5810              # double 0.57797995426767734
	.quad	0x3fd76c41acceb816              # double 0.36598245502216409
	.quad	0x3fbd7abf674e4ca8              # double 0.11515423080554632
	.quad	0x3fa6f711d8e4df20              # double 0.044853742338487601
	.quad	0x3feca57d87517b00              # double 0.89520145825721897
	.quad	0x3fc5d74dc7429ae0              # double 0.17063305119992034
	.quad	0x3fda8e974c6d6344              # double 0.41495306457141035
	.quad	0x3fe2e88e99f257f0              # double 0.59088831012445375
	.quad	0x3fe60034740b7cdc              # double 0.68752501168264812
	.quad	0x3fc77a57cf6d9b60              # double 0.18342111233070124
	.quad	0x3fd384586e3fb182              # double 0.30495272413715935
	.quad	0x3fa88ae5c388e7f0              # double 0.047934703940384682
	.quad	0x3fb5fbee50f176f8              # double 0.08587541080620642
	.quad	0x3febb7d90f3666a1              # double 0.86619236918632592
	.quad	0x3fe79db2c771254c              # double 0.7380002875662881
	.quad	0x3fcd501e74255da4              # double 0.22900753661336382
	.quad	0x3fe07aa1cd351546              # double 0.51496973113595668
	.quad	0x3fe996e88d765b0a              # double 0.79967143658981965
	.quad	0x3fe69a5f089e29b3              # double 0.70634414370697696
	.quad	0x3fc288d4826482fc              # double 0.14480072371318176
	.quad	0x3fdc9058ce980952              # double 0.44631023574051654
	.quad	0x3fdb95039b017b0a              # double 0.43097009789737284
	.quad	0x3fea146b1a5a07bf              # double 0.81499247690975796
	.quad	0x3fc1feb9605d2cb0              # double 0.14058606343528401
	.quad	0x3fe47a7982bbfe82              # double 0.6399505189328496
	.quad	0x3fc5b820620ea4e4              # double 0.16968159473370925
	.quad	0x3fe995f200ed3cd2              # double 0.79955387288091573
	.quad	0x3fe4f023c188fabd              # double 0.65431392478770756
	.quad	0x3fc80b9934a920e4              # double 0.18785395690270612
	.quad	0x3fe1f22846654cba              # double 0.56081022023354099
	.quad	0x3fd9bfac68da4c7c              # double 0.40232382049106952
	.quad	0x3fd2ed20ecc22b06              # double 0.29572318192428815
	.quad	0x3f81f12e5d465480              # double 0.0087607977118671077
	.quad	0x3fe525f6c3f3fb97              # double 0.66088426849443038
	.quad	0x3fa511ea15aafa70              # double 0.041152300972943645
	.quad	0x3fdc5801f5d9318e              # double 0.4428715611327555
	.quad	0x3fe72610df1ca5fa              # double 0.72339671684784368
	.quad	0x3fdb752124a0f5e0              # double 0.42902401520754374
	.quad	0x3fea15ccc612b819              # double 0.81516112028271259
	.quad	0x3fe55c786d3e75c0              # double 0.66753789269176167
	.quad	0x3fc9900590c27a74              # double 0.19970769470542715
	.quad	0x3fed67cf06d424b4              # double 0.91892196019866512
	.quad	0x3fc1f167075fa784              # double 0.14017951831857201
	.quad	0x3fd4b2101bf466b8              # double 0.32336809854460169
	.quad	0x3fe75be0b5654589              # double 0.72996554783655754
	.quad	0x3fe6562d7cd45173              # double 0.69801973705993559
	.quad	0x3fde0de7f4d2562c              # double 0.46959875973093079
	.quad	0x3fec63423a90c1ba              # double 0.887116541276604
	.quad	0x3fbc726427a9be08              # double 0.11112047165237737
	.quad	0x3fdad9dc2be2d520              # double 0.41954712186573495
	.quad	0x3fed1abc1c040723              # double 0.90951352569411303
	.quad	0x3fede5902045e5ef              # double 0.93427282622650221
	.quad	0x3fde0a2e98207a62              # double 0.4693714604963245
	.quad	0x3fdba4ae38286a2c              # double 0.4319263027588558
	.quad	0x3fcd84ebbbb4ab00              # double 0.23061892190283828
	.quad	0x3fc16afbd5bfaefc              # double 0.13607738434745176
	.quad	0x3fe69d0caeae01f1              # double 0.70667108647472621
	.quad	0x3f9c271cf1faa8e0              # double 0.027492954510912493
	.quad	0x3fefde4d01911cb8              # double 0.99588632875465687
	.quad	0x3fdf4134612fa5b6              # double 0.48835477343399292
	.quad	0x3fe41d62f780fb53              # double 0.6285872301158214
	.quad	0x3fe3baaa10f3f465              # double 0.61653617201922073
	.quad	0x3fe8b08a05257c92              # double 0.77155018811380871
	.quad	0x3fd25adfb78f3274              # double 0.28679650235861875
	.quad	0x3fe3cdcbd0072dbb              # double 0.61887159948803772
	.quad	0x3fb07f890e332b28              # double 0.064446035353438291
	.quad	0x3fd728fdcdd8c11e              # double 0.36187691786018827
	.quad	0x3fafd6250f19de20              # double 0.062180669873608929
	.quad	0x3fc1c21550059694              # double 0.13873545081439842
	.quad	0x3fe9b107f82bcf58              # double 0.80286024542736367
	.quad	0x3feb844ce902d7ee              # double 0.85989995489103221
	.quad	0x3fd52d2eae31aad2              # double 0.33088271151670512
	.quad	0x3fc5c54ecd807728              # double 0.17008385690945116
	.quad	0x3fc0141da3cb5ef0              # double 0.12561388490461622
	.quad	0x3fef6607bd056ace              # double 0.98120486181445599
	.quad	0x3fd271830e638268              # double 0.28817821889064144
	.quad	0x3fed02671d371be9              # double 0.90654330926997517
	.quad	0x3fe685eb8e31538b              # double 0.70384767314918528
	.quad	0x3fcfa901caa1c4d0              # double 0.24734518427025032
	.quad	0x3fdfff2186eecdcc              # double 0.49994695832284886
	.quad	0x3fca18460f65662c              # double 0.20386577369463177
	.quad	0x3fd551eeddb7c2a2              # double 0.33312579776888118
	.quad	0x3fe792604bf9ad05              # double 0.73661818350720465
	.quad	0x3fe33a9ed8c51358              # double 0.60090582216126176
	.quad	0x3fc7126b61b7fed4              # double 0.18024961730406253
	.quad	0x3fee7c7594bdd200              # double 0.95269278575011639
	.quad	0x3fc36c1ab148ae6c              # double 0.15173658043328275
	.quad	0x3fd6a5e55309b258              # double 0.35387547597091418
	.quad	0x3fc63c95455d4eb4              # double 0.17372384917199712
	.quad	0x3fd0ca7ca4750c9c              # double 0.26235881862903354
	.quad	0x3fee8ea7cfcb3969              # double 0.9549140032266169
	.quad	0x3fe6c9146166bd6d              # double 0.71204585097977502
	.quad	0x3fe38ab4ace2e11c              # double 0.61068185583920664
	.quad	0x3fd0beaa3c259d5e              # double 0.26163726686214328
	.quad	0x3fd0a048aa0a8a12              # double 0.25978294950087488
	.quad	0x3fee88e9fd50dff3              # double 0.95421313739552571
	.quad	0x3fb03b38415b80e0              # double 0.063403621632008633
	.quad	0x3fe7f36779922ecd              # double 0.74846242660847795
	.quad	0x3fceef2192f860e8              # double 0.24167270351677606
	.quad	0x3feb4eeabea2ff7c              # double 0.85338341935856432
	.quad	0x3fd8c042968d827c              # double 0.3867346258394162
	.quad	0x3fe30d4d23603945              # double 0.59537369641638149
	.quad	0x3fe62479df9be362              # double 0.6919526450502469
	.quad	0x3faa4b13d073c7a0              # double 0.051354045101006607
	.quad	0x3fe531afdd743227              # double 0.66231530430520003
	.quad	0x3fe9464d7c3a72fc              # double 0.78983186972945373
	.quad	0x3fe1058e65010f6d              # double 0.5319282505738393
	.quad	0x3fe60db484bc8968              # double 0.68917299199192161
	.quad	0x3fe25024f45932fa              # double 0.57228324627212079
	.quad	0x3fdfcf168959d6e2              # double 0.49701465047051674
	.quad	0x3fe660ac1e9c884d              # double 0.6993008230094887
	.quad	0x3fcdde2c7170a958              # double 0.23334270037714577
	.quad	0x3fe491d928b758b7              # double 0.64280374481565772
	.quad	0x3fed694bf35c8e09              # double 0.91910359889556148
	.quad	0x3fd975b2319f8220              # double 0.39780859800342405
	.quad	0x3feedd5126dd90f9              # double 0.96451623526493712
	.quad	0x3fe003f82b4a2047              # double 0.50048454718581403
	.quad	0x3fd325f996fee898              # double 0.29919280763318445
	.quad	0x3fc6156d08f1528c              # double 0.17252886711743931
	.quad	0x3fe8b74c11eac7a7              # double 0.77237514018473952
	.quad	0x3fe5195c473fff6c              # double 0.65934575954450514
	.quad	0x3fdab0f396a9004a              # double 0.4170502635279304
	.quad	0x3fe037a05be54824              # double 0.50679033230176573
	.quad	0x3fe5f64d5dc38595              # double 0.68631618798478888
	.quad	0x3fa47258613f0360              # double 0.039934884901873913
	.quad	0x3fe12458f3184c64              # double 0.53568694571948727
	.quad	0x3fe07e9986c88581              # double 0.51545406651364101
	.quad	0x3fe97cba1461c2f8              # double 0.796475448425638
	.quad	0x3fc1eab67470194c              # double 0.13997536359256413
	.quad	0x3fdd674ac87e1ef0              # double 0.45942945079194342
	.quad	0x3feadf3915e3b9b9              # double 0.83974890017798665
	.quad	0x3fdd2403a9e6fcd0              # double 0.45532313911458022
	.quad	0x3fd8424f4ee6e652              # double 0.37904722886341802
	.quad	0x3fdfa3830f873732              # double 0.49435497776436244
	.quad	0x3fe51d52dca19a33              # double 0.65982955066721727
	.quad	0x3fef34130a0a3e83              # double 0.97510673485699361
	.quad	0x3fd4dffec90231ca              # double 0.3261715853666628
	.quad	0x3f73f8102a0faf00              # double 0.0048752433221854741
	.quad	0x3fea284a55dde653              # double 0.81741825838907756
	.quad	0x3fcfcd49488d56b4              # double 0.24845233957846846
	.quad	0x3fe880e42fc56f5b              # double 0.76573380785292089
	.quad	0x3fc07bd240444278              # double 0.12877872598666662
	.quad	0x3fee3440b2873e80              # double 0.9438785063629922
	.quad	0x3fd510b6beb40c96              # double 0.3291451322877007
	.quad	0x3fe61f418f775863              # double 0.6913154413293906
	.quad	0x3fe3effc47e58327              # double 0.62304510156909465
	.quad	0x3fddf3adb42a10b4              # double 0.46799795717403048
	.quad	0x3fd4435a027adf2a              # double 0.31661081545051906
	.quad	0x3fca5cb68803f504              # double 0.20595437661533122
	.quad	0x3fa9b7190540e5e0              # double 0.050225049868867222
	.quad	0x3fe9ba392ff4c73d              # double 0.80398234716833594
	.quad	0x3fc986d33c3412f4              # double 0.19942703666324457
	.quad	0x3fe378af75247f15              # double 0.60848210219771437
	.quad	0x3fe2b62529d2219d              # double 0.58473451774721108
	.quad	0x3feaae20694d73e0              # double 0.83375568930534527
	.quad	0x3fe8b01ee2f759fb              # double 0.77149910287226875
	.quad	0x3fe34d17e6a4515a              # double 0.60316081092109219
	.quad	0x3fb0a8267f8efc50              # double 0.065065771238537851
	.quad	0x3fe47b357edea643              # double 0.6400401571201616
	.quad	0x3fb0dedcdc28c170              # double 0.065900615453534206
	.quad	0x3fd52923aba80698              # double 0.33063594592395296
	.quad	0x3fde2e1e9ea363ae              # double 0.47156491748824692
	.quad	0x3fe582b60f8527b1              # double 0.67220595389630067
	.quad	0x3febcc5fe9e88167              # double 0.86869807896804907
	.quad	0x3fe20689e830fd85              # double 0.56329818105579987
	.quad	0x3fbbf58d062c7b70              # double 0.109215559012666
	.quad	0x3feb116af8c73dee              # double 0.84587620343694225
	.quad	0x3fca83ded63b88b0              # double 0.20714936695646236
	.quad	0x3fee19248fbdf702              # double 0.94056919169062803
	.quad	0x3fe2638c5ddcd434              # double 0.57465189297238917
	.quad	0x3fee84c6cc0dac76              # double 0.95370807508642375
	.quad	0x3fe0df2b24e9ea5a              # double 0.5272422524424869
	.quad	0x3fef5c00e4f48ea6              # double 0.97998089521248199
	.quad	0x3fb2651002a39400              # double 0.071854591984063632
	.quad	0x3fdcd1bccc014d14              # double 0.45030136034365964
	.quad	0x3fe2aef78480774b              # double 0.58385825995694896
	.quad	0x3fd5432d6d41bac2              # double 0.33222518605809281
	.quad	0x3fef4d877f983fc8              # double 0.9782140247425497
	.quad	0x3fe66b4380c3c806              # double 0.70059371137017545
	.quad	0x3fed5637aaea76a2              # double 0.91677459127432237
	.quad	0x3fd593ea83a9f8a8              # double 0.33715308053786908
	.quad	0x3fe54f2f2a7dc038              # double 0.6659160451799897
	.quad	0x3fcfc3b632afa84c              # double 0.24816014742765657
	.quad	0x3fe2495c389cb2f0              # double 0.57145510727931814
	.quad	0x3fb663b26847a540              # double 0.087458754023505669
	.quad	0x3fe908f3418c6697              # double 0.7823425560229279
	.quad	0x3fef4444b1722dd3              # double 0.97708353669571079
	.quad	0x3fe790a9565001cf              # double 0.73640887124934717
	.quad	0x3f9eee19222668a0              # double 0.030205147466042193
	.quad	0x3fca7fdcd6ec41ec              # double 0.20702705854684156
	.quad	0x3fed6244d3faea54              # double 0.9182457103955337
	.quad	0x3fd3a30db26b6684              # double 0.30682699607641717
	.quad	0x3fefb5e856febac5              # double 0.9909555148240875
	.quad	0x3fd374fe1e7bbb06              # double 0.30401566483389819
	.quad	0x3fe09e9fd3e2dec6              # double 0.51936332115197881
	.quad	0x3fe4eafac6707d7f              # double 0.6536840320367644
	.quad	0x3fcda777b693f0a8              # double 0.23167320647178724
	.quad	0x3fe67ec5a4601ed7              # double 0.70297510246833894
	.quad	0x3fe9c639ef4fea1e              # double 0.80544754734666291
	.quad	0x3fda8c74a40599a4              # double 0.41482273118745128
	.quad	0x3fecc10eea327ad8              # double 0.89856668225896907
	.quad	0x3fe5095fa9a09da3              # double 0.65739424829819304
	.quad	0x3feed3c15c7fb5ce              # double 0.96334903780160075
	.quad	0x3fa22b21f7ab7980              # double 0.03548532627404466
	.quad	0x3f9be199b9488bc0              # double 0.02722778504734058
	.quad	0x3fe1138e06f93e4a              # double 0.53363705980331955
	.quad	0x3fe17a6fbd717fd7              # double 0.54619585991531039
	.quad	0x3fb180cb07caade0              # double 0.068371476557039568
	.quad	0x3fe9442ea6cfa0b9              # double 0.78957302646906335
	.quad	0x3fc3fe0c511f8c54              # double 0.15619043313117464
	.quad	0x3fe207873fd307c4              # double 0.56341898408594959
	.quad	0x3fdd4eb3b2693a90              # double 0.45792858527139746
	.quad	0x3fdadc3a00787d76              # double 0.41969156309092825
	.quad	0x3fd3270015737906              # double 0.29925539107161148
	.quad	0x3faffab37373bd70              # double 0.062459571688914362
	.quad	0x3fefc99ac92e80a0              # double 0.99335994046488806
	.quad	0x3fedcf56ef787a46              # double 0.93156000873188627
	.quad	0x3feefa8b219894f3              # double 0.9680839210674591
	.quad	0x3fba497b7c11cdf8              # double 0.10268375186006284
	.quad	0x3fcc8a848bc9c704              # double 0.2229772265014206
	.quad	0x3fdcb5eea20e0054              # double 0.44860425782826963
	.quad	0x3fed29f7a57cc673              # double 0.91137296983488481
	.quad	0x3fd94c780920a726              # double 0.395292290605186
	.quad	0x3fef19f959d6075a              # double 0.97192065759757473
	.quad	0x3fd4f88ab0475304              # double 0.32766978468616537
	.quad	0x3fe6998e8ac7d6b3              # double 0.70624472718801312
	.quad	0x3fe263afbe514d37              # double 0.57466876193431105
	.quad	0x3fe90aa2b290c7ba              # double 0.78254828334887994
	.quad	0x3fc966bea6057570              # double 0.19844802004346773
	.quad	0x3fcc294775b1aca4              # double 0.22000973936824153
	.quad	0x3fd2331097f44c1c              # double 0.2843667491844728
	.quad	0x3fe053556c108ad9              # double 0.51017256838198499
	.quad	0x3fde4aa646c760b4              # double 0.4733062449645431
	.quad	0x3fe88df30a5fdf1f              # double 0.76732780481595231
	.quad	0x3fc8377cfc0f51cc              # double 0.18919336612328974
	.quad	0x3fd0ff18858b9630              # double 0.26556981126336421
	.quad	0x3fe59d66d16e733d              # double 0.67546406654910351
	.quad	0x3fdc15d9bd25226c              # double 0.43883365126797602
	.quad	0x3fbe382df1873c68              # double 0.1180447306316964
	.quad	0x3fd1db0eedef9ac0              # double 0.27899525867398367
	.quad	0x3fd1e8574807cbaa              # double 0.2798059657499673
	.quad	0x3fe9850cb9b9891a              # double 0.79749141954769986
	.quad	0x3fea64cb31af9db6              # double 0.82480392174050254
	.quad	0x3fef5d9a672adb90              # double 0.98017616414914421
	.quad	0x3fd7f639b9b9c292              # double 0.37440341126697618
	.quad	0x3fd9297ffeb2112c              # double 0.39315795776953411
	.quad	0x3fe9f7bfa02334c5              # double 0.81149274136409899
	.quad	0x3feca092c8447e9d              # double 0.89460124125249119
	.quad	0x3fec82c132a43c27              # double 0.89096126452375735
	.quad	0x3fd5241cf4369f8e              # double 0.33032916878664131
	.quad	0x3fe8b11ffea369e1              # double 0.77162170156526255
	.quad	0x3fe2ab1d2596dd4f              # double 0.58338792173064202
	.quad	0x3fec1d502abe26b4              # double 0.87857826564978447
	.quad	0x3fe29014d5450d3d              # double 0.58008805898899818
	.quad	0x3fe6d28d64161c98              # double 0.71320218608970531
	.quad	0x3fed40d5f740881a              # double 0.91416452685757865
	.quad	0x3fd5b132758fa8ae              # double 0.33894025307257436
	.quad	0x3fca67eae5ee51dc              # double 0.2062963125905658
	.quad	0x3fe3512366245e4c              # double 0.60365457486745688
	.quad	0x3fa388a84098e110              # double 0.038151986966513118
	.quad	0x3feb3d2b90612d87              # double 0.85121706198826608
	.quad	0x3fd5e239ea65f0e6              # double 0.34193275347185048
	.quad	0x3fdedef5327d5f62              # double 0.48235826426161144
	.quad	0x3fce83daf6af12bc              # double 0.23839890523063001
	.quad	0x3fddb5622793670a              # double 0.46419576515982952
	.quad	0x3fda0c8d57f00460              # double 0.4070161207928944
	.quad	0x3fea10387e63da8d              # double 0.81448006330067957
	.quad	0x3fd814ab3cea8f32              # double 0.37626152943470281
	.quad	0x3fe799b93affc4db              # double 0.73751508258115039
	.quad	0x3fa26160f67b5bb0              # double 0.035899190986746432
	.quad	0x3fcd75794cff24e0              # double 0.23014751681902279
	.quad	0x3fd6513fe37e6a2e              # double 0.34870907989685207
	.quad	0x3fda1e1fbc4d10fc              # double 0.40808862103246191
	.quad	0x3feb5e09173f34d6              # double 0.85522894421014928
	.quad	0x3fe62637cfc99127              # double 0.69216528495284002
	.quad	0x3fe807487d11e2bc              # double 0.75088905742366973
	.quad	0x3fb5684fb12fcbc0              # double 0.083622914083931299
	.quad	0x3fa3be6229a703a0              # double 0.038561885437508936
	.quad	0x3fdf7939ef089cce              # double 0.49177406638268628
	.quad	0x3fc9eb3fedaf6290              # double 0.20249175172536527
	.quad	0x3fd7159d2a6ad586              # double 0.36069420950237718
	.quad	0x3fe658f164f0a83e              # double 0.69835729327065343
	.quad	0x3fb72e993d6032c0              # double 0.090554788097686689
	.quad	0x3fc0dff0133c9bb8              # double 0.13183403910917746
	.quad	0x3fe89436cab4f28d              # double 0.76809253302742919
	.quad	0x3f9e6c71def16a20              # double 0.029710559112894441
	.quad	0x3fe080ae0fac76b6              # double 0.51570799886004326
	.quad	0x3fc6a08a46a7291c              # double 0.17677429628231145
	.quad	0x3f987157a5843300              # double 0.023869866826362163
	.quad	0x3fef9adcd9df57c3              # double 0.98765413811883495
	.quad	0x3fe013213dd82cad              # double 0.50233518675795141
	.quad	0x3fd11a8fbe471430              # double 0.26724618512918408
	.quad	0x3fd5cc04ef5c0162              # double 0.34057734847012544
	.quad	0x3fe25d67d747265b              # double 0.57390205427618513
	.quad	0x3fedd7ffefee30c5              # double 0.93261715756809649
	.quad	0x3fa77e0d9fb9c810              # double 0.045883584735648353
	.quad	0x3fb82824fbe00eb8              # double 0.094362555973982576
	.quad	0x3fe4cd6301ce8a00              # double 0.65007162430657672
	.quad	0x3fc7ed27edf47900              # double 0.18692492598433574
	.quad	0x3fe4294762e39529              # double 0.63003892244583881
	.quad	0x3fef803e49b979e5              # double 0.98440470122642109
	.quad	0x3fe4a4653c049642              # double 0.64506780359506188
	.quad	0x3fec1ef6c69aa1af              # double 0.87877978124475031
	.quad	0x3fd9b594842a9b0c              # double 0.40170777232053534
	.quad	0x3fe5847144120cfc              # double 0.67241729064008338
	.quad	0x3fceb99d4d5fc4f4              # double 0.24003950384170702
	.quad	0x3f9364ce24ad9d00              # double 0.018939229000719315
	.quad	0x3fafb8ef35178e60              # double 0.061957812529524814
	.quad	0x3fc511199a5c085c              # double 0.16458435093960844
	.quad	0x3fa111c4d0630e20              # double 0.033338690221651257
	.quad	0x3fe50b2cbe70579d              # double 0.65761410899243666
	.quad	0x3fcf0a29035df318              # double 0.24249756492999874
	.quad	0x3fec6b90a3fa20ba              # double 0.88813049341936012
	.quad	0x3fde9ad05782911a              # double 0.47819908662701638
	.quad	0x3fe3f3646af174d5              # double 0.62346096885053248
	.quad	0x3fe1ef5ee618e551              # double 0.56047005596989596
	.quad	0x3fd7499d55b95d72              # double 0.3638680779599418
	.quad	0x3fe6aaf33cb36bc9              # double 0.70836793761861216
	.quad	0x3fe495504d9cc81c              # double 0.64322676809956958
	.quad	0x3fe05e7b109e17f6              # double 0.51153329129806369
	.quad	0x3fdde0437ce45c9c              # double 0.46681296535957428
	.quad	0x3fd67f01b077b80c              # double 0.35150186761063718
	.quad	0x3fa0493a85acb420              # double 0.03180868989725405
	.quad	0x3fd8e4378ba9fdcc              # double 0.38892925871911355
	.quad	0x3fc8d407a5f8d2b0              # double 0.19397063831424566
	.quad	0x3fd2e57cb4412a6a              # double 0.29525678256019339
	.quad	0x3fea1c3e78532469              # double 0.81594775677616582
	.quad	0x3fd585fad613a7e2              # double 0.33630247980056371
	.quad	0x3fdc8051b96e1064              # double 0.44533198459999412
	.quad	0x3fee8e990e88f50a              # double 0.95490696753373183
	.quad	0x3fcba7eabdeba67c              # double 0.21606191895925864
	.quad	0x3fc28e85ae798420              # double 0.14497443217536077
	.quad	0x3fb875f72c806d10              # double 0.095550011028923131
	.quad	0x3fded06173057602              # double 0.48146854622413582
	.quad	0x3fdbcb4a506b2e2c              # double 0.43428285458932936
	.quad	0x3fd4daf8f6dcd7aa              # double 0.32586502177889065
	.quad	0x3fefa0d552429811              # double 0.98838296953613469
	.quad	0x3fb7be2df4fb6f58              # double 0.092745659170245687
	.quad	0x3fef29059ea2a913              # double 0.9737575624797351
	.quad	0x3fab40f1e3723660              # double 0.053229865087911277
	.quad	0x3fb222a20a6ce468              # double 0.07084095720792194
	.quad	0x3fd9de90bf0ebf40              # double 0.40420931489915191
	.quad	0x3fd4a530a461327a              # double 0.32258239796355037
	.quad	0x3fe1028d3aa17cf3              # double 0.53156148387270574
	.quad	0x3fe57879d166c99b              # double 0.67095652483685642
	.quad	0x3fe340a38eaff5bc              # double 0.60164049023267507
	.quad	0x3fec825bdc76e398              # double 0.89091294345336092
	.quad	0x3fb17075be5db680              # double 0.068122252441492392
	.quad	0x3fc276078a09ebd4              # double 0.14422697296308107
	.quad	0x3fc0269b4552c21c              # double 0.12617817768979556
	.quad	0x3fe8788afaacec06              # double 0.76471470794729224
	.quad	0x3feb9a2867ef352a              # double 0.86256809520424338
	.quad	0x3fdd5279afd85160              # double 0.45815889522898168
	.quad	0x3fd5ed02c3aa9fde              # double 0.3425909910970385
	.quad	0x3fd5610cb3cb2a9e              # double 0.3340484386250554
	.quad	0x3fe285470d29117d              # double 0.57876923151393067
	.quad	0x3fa815c736680b10              # double 0.047041154281052155
	.quad	0x3fe9384f1b8736b7              # double 0.78812365891072644
	.quad	0x3fe526532705d55f              # double 0.66092832204473584
	.quad	0x3fd67a2575684dca              # double 0.35120521989412323
	.quad	0x3fcd2c41b1364074              # double 0.22791310456205205
	.quad	0x3fc52ba4d71a1244              # double 0.16539440634746161
	.quad	0x3fd54083e7b2a1b4              # double 0.33206269861923521
	.quad	0x3fe6cb01e9f7d26d              # double 0.71228118607412017
	.quad	0x3fc74c3d47e3a234              # double 0.18201414118017711
	.quad	0x3fd4e1865f275f8c              # double 0.32626494686473317
	.quad	0x3fe77c7f555c6f61              # double 0.73394743606648316
	.quad	0x3fd4d11ef2f9cca6              # double 0.32526372650245106
	.quad	0x3fc75cfda25d366c              # double 0.1825253527444376
	.quad	0x3fe1f87d9b6846b4              # double 0.56158333161348262
	.quad	0x3fe7895c28ea11c2              # double 0.73551757803993945
	.quad	0x3fbed2efc3ba2208              # double 0.12040613678448875
	.quad	0x3fe7f8da8fc40ab7              # double 0.74912765578513685
	.quad	0x3fe790fc1631fcb7              # double 0.73644832930576498
	.quad	0x3fefa23fc84436c0              # double 0.98855580439131784
	.quad	0x3fe3a57aac627ac0              # double 0.61395009678729906
	.quad	0x3fed6e70ecfd430d              # double 0.91973158156369694
	.quad	0x3fe395e09901f5d2              # double 0.61204557308490792
	.quad	0x3fe177d3afae6043              # double 0.54587730705953452
	.quad	0x3fc12e4ea0647f34              # double 0.1342256816069437
	.quad	0x3fe000572aa1a910              # double 0.50004156424009416
	.quad	0x3fee2cf851c718ca              # double 0.94298950168811158
	.quad	0x3fc97246fd974b78              # double 0.19879996664402788
	.quad	0x3fc1abb2c86c3ca8              # double 0.13805231844205434
	.quad	0x3fecc8bd49464912              # double 0.8995043212073901
	.quad	0x3fc4f1d46cb2aef0              # double 0.16363005931395191
	.quad	0x3feee31b9f7c7e8b              # double 0.96522313260716552
	.quad	0x3fecfcc031986b8a              # double 0.90585336386298931
	.quad	0x3fe896d03cafe674              # double 0.76840984204245765
	.quad	0x3fe8da2dcab2160d              # double 0.77663316334718646
	.quad	0x3fdc0246951f6fdc              # double 0.43763889849446769
	.quad	0x3fe7bea54cfd581e              # double 0.74202218091045657
	.quad	0x3fd2c90e39e08abc              # double 0.29352145816862296
	.quad	0x3fc8583f81f4b7e0              # double 0.19019311757568769
	.quad	0x3fc2ec00711e2160              # double 0.14782720111203229
	.quad	0x3fd41c244fc2ddcc              # double 0.31421764172725086
	.quad	0x3feb6d0564ecd3b9              # double 0.85705823623594946
	.quad	0x3fe987b3aeb9b54b              # double 0.79781517149027914
	.quad	0x3fcfb1af31450810              # double 0.24760999589676702
	.quad	0x3fe1654a3ee4063f              # double 0.54361450465530214
	.quad	0x3fa783cd36687300              # double 0.045927441493608612
	.quad	0x3fecc0ccdd11eae0              # double 0.89853518655521824
	.quad	0x3fe418ebf09fd648              # double 0.62804219242998105
	.quad	0x3fb30edb35802170              # double 0.07444543892063904
	.quad	0x3fc14dc70b2f04ac              # double 0.13518608137204546
	.quad	0x3fedbdd1f10afde9              # double 0.92942139700602155
	.quad	0x3fa4db31a068d2a0              # double 0.040734816390260109
	.quad	0x3fbb182014ef0878              # double 0.10583687316014501
	.quad	0x3fc3a8ced56bb920              # double 0.15358910962044892
	.quad	0x3fd344703440e1ba              # double 0.30105214217067167
	.quad	0x3febf11bdbbb731f              # double 0.87318222919893518
	.quad	0x3fe3a000932cdbed              # double 0.61328152413522974
	.quad	0x3fedef64add48a70              # double 0.93547281218736877
	.quad	0x3fd89cc7916821d8              # double 0.38456906509284527
	.quad	0x3fe6094ad5218039              # double 0.68863431574937473
	.quad	0x3fe58c24b8322f5c              # double 0.67335735297954669
	.quad	0x3fec3f7d1c130fa9              # double 0.88275008662502785
	.quad	0x3fd7418832d366b4              # double 0.36337475741820957
	.quad	0x3fe6d24bc02fa43c              # double 0.71317088638637172
	.quad	0x3fc46e04d28d0f88              # double 0.1596075084763664
	.quad	0x3f9e6326af3b0ea0              # double 0.029675106473190938
	.quad	0x3fef7a140a82ae7b              # double 0.98365213444544907
	.quad	0x3fd48b1c37dc0800              # double 0.32099061446217547
	.quad	0x3fcc33c53966df3c              # double 0.22032990744423298
	.quad	0x3fef580636b8d4c3              # double 0.97949515045061052
	.quad	0x3fd7105352c7aadc              # double 0.36037142833690239
	.quad	0x3fe818bc04261c9b              # double 0.75301934061362219
	.quad	0x3fee627678b0b2bc              # double 0.94951938221273435
	.quad	0x3fafad4d26b15510              # double 0.061869059537153714
	.quad	0x3fdafbb3181245dc              # double 0.42161252356262735
	.quad	0x3fe21e487e1bf440              # double 0.56619667654707229
	.quad	0x3fc3f92dcb774e38              # double 0.15604183611741163
	.quad	0x3fea82d8cea45c14              # double 0.82847252235194668
	.quad	0x3fcde01cb50b9698              # double 0.23340185966587934
	.quad	0x3fe52f01b308dac6              # double 0.66198811500256549
	.quad	0x3fb699ef3268e028              # double 0.088286351973579813
	.quad	0x3fc0109f57c170f4              # double 0.12550727639143811
	.quad	0x3fad003e07a3a580              # double 0.056642473633313095
	.quad	0x3fe9dfd310520347              # double 0.80857232272692492
	.quad	0x3fbd3e3d090848c0              # double 0.11423093290821651
	.quad	0x3fe26d9681ae71aa              # double 0.57587743118670187
	.quad	0x3fcd07be78bc8330              # double 0.22679882903414628
	.quad	0x3fdbbdbb6de8e49c              # double 0.43345533116696244
	.quad	0x3fee8c80396d23d7              # double 0.95465098587112152
	.quad	0x3fd5399af37f9282              # double 0.33164094714292258
	.quad	0x3fc7cdfad0f8eb8c              # double 0.18597350314834349
	.quad	0x3fef15a63fc4cc31              # double 0.97139275030929728
	.quad	0x3fe541046ec922c4              # double 0.66418668401555481
	.quad	0x3fc7cfd2343db824              # double 0.18602969694933436
	.quad	0x3fd6204922221450              # double 0.34572056134522189
	.quad	0x3fecfe6c937c2f66              # double 0.90605763250048876
	.quad	0x3fdd4a10f0863c14              # double 0.45764564026552645
	.quad	0x3fe17a1696b659ed              # double 0.54615334926603298
	.quad	0x3fe0327c0c703303              # double 0.50616266660071607
	.quad	0x3fec3d056d3d2e1d              # double 0.88244887672175631
	.quad	0x3fdbad9259279072              # double 0.43246897417544183
	.quad	0x3faad47b30690510              # double 0.052402352961971599
	.quad	0x3fc4f581bee8ac64              # double 0.16374227353785209
	.quad	0x3fe77dc605753d5d              # double 0.73410321298608106
	.quad	0x3fda169d24d4e44e              # double 0.40763023945652754
	.quad	0x3fe6d7b399d64f9c              # double 0.71383075758284376
	.quad	0x3fbf2ea6c186df00              # double 0.12180559372688649
	.quad	0x3fe88e4a1a9f57b8              # double 0.76736931991285129
	.quad	0x3fd478baf1338cac              # double 0.31986878924198936
	.quad	0x3fdf536581468906              # double 0.48946511864245712
	.quad	0x3fd4e19a30050208              # double 0.32626967133913398
	.quad	0x3f9ecdc009e7c800              # double 0.030081749538972247
	.quad	0x3fec72cc5205d3df              # double 0.8890134431845772
	.quad	0x3fb346b603cee358              # double 0.075297714166379648
	.quad	0x3fdf8ac01090ada2              # double 0.49284364335718511
	.quad	0x3fea910caa97c389              # double 0.83020623511230085
	.quad	0x3fcb4f78b3133934              # double 0.21336277717495877
	.quad	0x3fec5b40a93c9d0d              # double 0.88613923124367633
	.quad	0x3fd9e41ba80301c0              # double 0.40454760939976708
	.quad	0x3febad40d780dffa              # double 0.86489908304702046
	.quad	0x3fe1ad53294b52fc              # double 0.55240781846313736
	.quad	0x3fb95d58652c48b0              # double 0.099080586147723748
	.quad	0x3fe3d906ae9d96c1              # double 0.62024244408231521
	.quad	0x3fc65b824a74310c              # double 0.17466763148730313
	.quad	0x3fdbccf3b2e442d2              # double 0.4343842741955487
	.quad	0x3fe7a3b7efc07636              # double 0.73873516870998546
	.quad	0x3fde70833bf98c9e              # double 0.47561722618974922
	.quad	0x3fd7b868e68c6232              # double 0.3706304789971312
	.quad	0x3fe2b15ed84e6998              # double 0.58415167090724918
	.quad	0x3fee9211a05a510c              # double 0.955330670537053
	.quad	0x3fdd0e814d87f7c8              # double 0.45401032039069067
	.quad	0x3febba12692e7927              # double 0.86646385710972573
	.quad	0x3fc57a160419a9c4              # double 0.16778826904494626
	.quad	0x3fc506f379845ae4              # double 0.16427462991187902
	.quad	0x3fdca675de5f62b8              # double 0.44765993801187731
	.quad	0x3f920e0c08fd5c80              # double 0.01763171009892206
	.quad	0x3fbe1fac2e5bb900              # double 0.11767078525346975
	.quad	0x3fe33a17b6c21a52              # double 0.60084138579333968
	.quad	0x3fea4b6ed932da39              # double 0.82170813008889987
	.quad	0x3fe4978325b5900d              # double 0.64349515309413763
	.quad	0x3fedfb7dd0641095              # double 0.93694964124053348
	.quad	0x3fc1aa1835cdbab4              # double 0.13800337435846688
	.quad	0x3fe49f711f0921ea              # double 0.64446312009482409
	.quad	0x3fe3ccf3da6655c9              # double 0.61876862198067173
	.quad	0x3fd296bd37e43520              # double 0.29045038660190592
	.quad	0x3fdc553727986fd6              # double 0.44270113817924306
	.quad	0x3fedac36750c9db9              # double 0.92727206097781967
	.quad	0x3fdcbf03adeaae54              # double 0.44915859207205711
	.quad	0x3fe136acfa57ec63              # double 0.53792427916722507
	.quad	0x3fc4d65d3f6af8c0              # double 0.16279187771391967
	.quad	0x3fe7e49df9e1144a              # double 0.74665736012014716
	.quad	0x3fe6f33b625a07c4              # double 0.71719140252411551
	.quad	0x3fda5a44ba1dd828              # double 0.41175954986045094
	.quad	0x3fe0ebea747af419              # double 0.52879832029396134
	.quad	0x3f9f700f3c3de240              # double 0.030700910617698307
	.quad	0x3fbdf73a2d486e80              # double 0.11705363851108963
	.quad	0x3fd0d4c581cc1de0              # double 0.26298654246826736
	.quad	0x3faa72f3e3c96ec0              # double 0.051658269458781714
	.quad	0x3fe9fd675e543a2a              # double 0.81218307899127251
	.quad	0x3fe57bb55c202da5              # double 0.67135112756061643
	.quad	0x3fe617dab7464c00              # double 0.69041190906352767
	.quad	0x3fe8e5367f1d4718              # double 0.7779800875380003
	.quad	0x3fee696fee178121              # double 0.95037075521762315
	.quad	0x3facaf4966c36330              # double 0.056024831575717804
	.quad	0x3fd1fd38b1b45c46              # double 0.28108041147192286
	.quad	0x3fd9e968b19f9abe              # double 0.40487115236320992
	.quad	0x3fa74ac2258c70e0              # double 0.045492236217087756
	.quad	0x3fdaaa1ca344d8a8              # double 0.41663280433875594
	.quad	0x3fb25bede7a615e0              # double 0.071715230040431788
	.quad	0x3f7a9425ac948780              # double 0.0064889403959415004
	.quad	0x3fb808e30bca2810              # double 0.093885603311861354
	.quad	0x3fcde59c7538cc70              # double 0.23356967662548156
	.quad	0x3fd63ac381b9bece              # double 0.34733665150177451
	.quad	0x3fd51029d9d167f8              # double 0.32911154052055691
	.quad	0x3fd7264266dd2802              # double 0.36171016736318518
	.quad	0x3fe4b66893a23378              # double 0.64726666292845803
	.quad	0x3fe8f44ac7ba191b              # double 0.77982081422013338
	.quad	0x3fec85c49f7121f9              # double 0.89132910862923531
	.quad	0x3fc219abf406a5c0              # double 0.14140843787508395
	.quad	0x3fedaec6edaac2cd              # double 0.92758509082167395
	.quad	0x3fe9f4fd8e674684              # double 0.81115606129806439
	.quad	0x3fec2aa2d9344f8e              # double 0.88020460531923717
	.quad	0x3fab9c79c01132f0              # double 0.05392818898744689
	.quad	0x3fe6ddf36fbb5598              # double 0.71459361860859172
	.quad	0x3fe59e3826492317              # double 0.67556388356851726
	.quad	0x3fb83ec5041d5ff8              # double 0.094707787994934622
	.quad	0x3fe77c278464c90d              # double 0.73390556200163959
	.quad	0x3fe51674d741c35b              # double 0.65899126093254823
	.quad	0x3fc0fade67f0c9a0              # double 0.13265590739463295
	.quad	0x3fe30f3ae9d9bb29              # double 0.59560914682319777
	.quad	0x3fa7d9c8cfe83fd0              # double 0.046583438281345146
	.quad	0x3fe6908eba384845              # double 0.70514618273797025
	.quad	0x3fe6061894779b9e              # double 0.68824414250854082
	.quad	0x3fe68eaabcf01516              # double 0.70491539861601171
	.quad	0x3feeb45afdbdb806              # double 0.95951604422384729
	.quad	0x3fe4c6d999ede42b              # double 0.64927368225392479
	.quad	0x3fd61c6e1ee437d2              # double 0.34548523918863083
	.quad	0x3fd34cfc3c7ec690              # double 0.30157380969749514
	.quad	0x3fbcec3081efbab8              # double 0.11297896549488484
	.quad	0x3fdf29a94fcb53dc              # double 0.48691780846030297
	.quad	0x3fea7116e2a9db03              # double 0.82630485792364572
	.quad	0x3fcc14821042adac              # double 0.21937585634200951
	.quad	0x3fd9ef778e17cb04              # double 0.40524090648902722
	.quad	0x3fbdccad86a458b8              # double 0.11640438592107472
	.quad	0x3fb52ed2c5189da8              # double 0.082745717162302612
	.quad	0x3fd7463cb619889c              # double 0.36366193564584548
	.quad	0x3f53ac1662eefe00              # double 0.0012006968133703166
	.quad	0x3fd8fd58a8e0d274              # double 0.39046303264630144
	.quad	0x3fdc4e82cedd1cd0              # double 0.44229192925963634
	.quad	0x3fe299e20f2495a3              # double 0.58128455121611855
	.quad	0x3feca654d8a08539              # double 0.89530412969558093
	.quad	0x3fd3f42352a1c6bc              # double 0.31177599973225845
	.quad	0x3fc47a6eac5fc50c              # double 0.1599863378210461
	.quad	0x3fccc9a33ee0b9dc              # double 0.22490349359709583
	.quad	0x3fc480b09fd5dfec              # double 0.16017730526414142
	.quad	0x3fbf015743f85c80              # double 0.1211142102186944
	.quad	0x3febfd98bee2b9a7              # double 0.87470662386276821
	.quad	0x3fec3976534388dc              # double 0.88201442968809429
	.quad	0x3fefd762f7ddd274              # double 0.99504230891632383
	.quad	0x3f980e66ee9bb180              # double 0.023492439568984391
	.quad	0x3fd305c254710704              # double 0.29722650762788327
	.quad	0x3fe3a7e555148626              # double 0.61424509637089808
	.quad	0x3feb76687dc060ef              # double 0.85820412216983566
	.quad	0x3fd8653f150bd19c              # double 0.38117959075250396
	.quad	0x3fedadbfe53672a1              # double 0.92745966690161563
	.quad	0x3fdfcd11a48746de              # double 0.49689141337613119
	.quad	0x3fe84f56740f3306              # double 0.75968477886053232
	.quad	0x3fa2e2e847157230              # double 0.036887415578096827
	.quad	0x3fec5405dddb610c              # double 0.88525670367656195
	.quad	0x3fda9413bd5998e4              # double 0.41528790942392235
	.quad	0x3fe6c8df19039467              # double 0.71202044377845375
	.quad	0x3feac3055e73df05              # double 0.83630627105500877
	.quad	0x3fd0af618fa1562a              # double 0.26070441271199007
	.quad	0x3fe48258371a5a6d              # double 0.64091120493215004
	.quad	0x3fdba5bbe661f780              # double 0.43199059961613528
	.quad	0x3fe4e5fe45449289              # double 0.65307534722212879
	.quad	0x3fb3722657e60fb0              # double 0.075960537395131977
	.quad	0x3fe5ce65cf9c0abe              # double 0.68144503163087911
	.quad	0x3fed7670714a581b              # double 0.92070791365654558
	.quad	0x3fe549b0bf1cd45c              # double 0.66524541212732968
	.quad	0x3fedc4ddbd5670ff              # double 0.93028151493083999
	.quad	0x3fe8c4847d87e484              # double 0.77398895757427554
	.quad	0x3fe3427128c136e4              # double 0.60186059913550283
	.quad	0x3fcad8143b3361f4              # double 0.20971920862827143
	.quad	0x3fce9461203cb93c              # double 0.23890317987520315
	.quad	0x3fc6933f212c2e30              # double 0.1763686096168029
	.quad	0x3fe22062ee6df8ad              # double 0.56645342415119659
	.quad	0x3fd358ba087c439c              # double 0.30229044750836365
	.quad	0x3fe93cfbad995e10              # double 0.78869422823021473
	.quad	0x3fe6abf3d2ecafe7              # double 0.70849028774455014
	.quad	0x3fdb7bf08ecce574              # double 0.42943967767094837
	.quad	0x3fe07f80724d17b4              # double 0.51556417774621943
	.quad	0x3fdb782d24387766              # double 0.42920998131909582
	.quad	0x3fea9f01035c4873              # double 0.83190966278404088
	.quad	0x3fde109197a9887c              # double 0.46976127444043647
	.quad	0x3fedc45a95d410d7              # double 0.93021897567134715
	.quad	0x3feb6efe659f0f09              # double 0.85729904029764825
	.quad	0x3fefa3ccc3d6969e              # double 0.98874510049491326
	.quad	0x3fd8d45591725fc6              # double 0.38795985416208756
	.quad	0x3fe87046cc50ec45              # double 0.76370563416947645
	.quad	0x3fec54044cde19db              # double 0.8852559567756616
	.quad	0x3fd2436e7249ba60              # double 0.28536568795144568
	.quad	0x3fad31fc083c0250              # double 0.057021976475884473
	.quad	0x3f9200d27fc17e80              # double 0.017581261680219118
	.quad	0x3fb0c40283aef018              # double 0.065490872525458932
	.quad	0x3faedf0a9fd55df0              # double 0.06029542161075685
	.quad	0x3fad038d04a0de70              # double 0.056667715849866407
	.quad	0x3fe9b9d861fbf14d              # double 0.80393618714837489
	.quad	0x3fe4076f36206841              # double 0.62590752193069232
	.quad	0x3fe62060cd0267b3              # double 0.69145240822694232
	.quad	0x3fce927356d9b1e4              # double 0.23884431591740374
	.quad	0x3fd24205a940852e              # double 0.28527967003363386
	.quad	0x3fee4dceaf9d65f7              # double 0.94699796962521432
	.quad	0x3fc12d737a2c523c              # double 0.13419955697522024
	.quad	0x3fbbc6ee01280a30              # double 0.10850417640907817
	.quad	0x3fdadcb494203314              # double 0.41972078767212051
	.quad	0x3fe7b20b8cd3489e              # double 0.74048402314135209
	.quad	0x3fdd80e50163d6c6              # double 0.46099209914914885
	.quad	0x3feb5c7d75dd09b2              # double 0.85504029293252004
	.quad	0x3fd244dabda381c6              # double 0.28545254249004548
	.quad	0x3fe72cc05e58f416              # double 0.72421282222024064
	.quad	0x3fd48bed5c933e0a              # double 0.32104047813933845
	.quad	0x3fee5cd5f2ad6c0c              # double 0.94883248708663492
	.quad	0x3fe44c3098de108a              # double 0.63430051667138909
	.quad	0x3fb9ffd354e06f40              # double 0.10155983755288123
	.quad	0x3feacbcd9007d07e              # double 0.83737829333269054
	.quad	0x3fdf0897d0f3caae              # double 0.48489947705744896
	.quad	0x3fc91398c4c178c8              # double 0.19591054541792219
	.quad	0x3fdde2678e176e48              # double 0.46694363475919376
	.quad	0x3fa76fccada9ccb0              # double 0.045774837683802416
	.quad	0x3fe00fc081d459b6              # double 0.501922849248152
	.quad	0x3fe0b7765f9cabe3              # double 0.52239531206339185
	.quad	0x3fe9274b5d53dbca              # double 0.78604667881051538
	.quad	0x3fd7f910c2575fc2              # double 0.37457674959796006
	.quad	0x3fe5df0d37892f1d              # double 0.68347798201418508
	.quad	0x3fc317075a43d4a4              # double 0.14914028079480091
	.quad	0x3fe5672fa463c05f              # double 0.66884595973352734
	.quad	0x3fb5185f9f1bd630              # double 0.082403160424143306
	.quad	0x3fc4279fcdc8f668              # double 0.15745923565002617
	.quad	0x3fdc9efb47781c62              # double 0.44720346431171809
	.quad	0x3fe0d51b5b0cc61e              # double 0.52601402075942238
	.quad	0x3fe1d2c08bfe04aa              # double 0.55697657911527654
	.quad	0x3fea936c7437a762              # double 0.83049605082235822
	.quad	0x3fca2607748fa404              # double 0.20428555671176707
	.quad	0x3fcf0be1437aa7ec              # double 0.24255004687194004
	.quad	0x3fe1077fdb4fcedb              # double 0.53216545900655932
	.quad	0x3fc48cfc8c61de28              # double 0.16055256704906751
	.quad	0x3fe6712e55532997              # double 0.70131603875170156
	.quad	0x3fdbc09efca8748c              # double 0.43363165544162352
	.quad	0x3feb4aa756b672dd              # double 0.85286299644539165
	.quad	0x3fef95e5268c5d91              # double 0.98704774407353756
	.quad	0x3fde76bc44070482              # double 0.47599703448583608
	.quad	0x3fed9d4dd422c0e4              # double 0.92545215065731811
	.quad	0x3fb5a164d3a30f00              # double 0.084493924779106777
	.quad	0x3feff0ae4c304426              # double 0.99812998657774155
	.quad	0x3fec27580eb17300              # double 0.87980273122556696
	.quad	0x3fc4693712ce2bf4              # double 0.15946091097097759
	.quad	0x3fe33c9075862408              # double 0.6011431022062661
	.quad	0x3fecb8b37db0ab0b              # double 0.89754652546739189
	.quad	0x3fd2565d00fabc9e              # double 0.28652119727753156
	.quad	0x3fc2cbc7f8ded2d0              # double 0.14684390689730842
	.quad	0x3fe9e7f4845b3204              # double 0.80956483698679493
	.quad	0x3fe899f01fe95480              # double 0.76879125817016813
	.quad	0x3fdf7a0ceb163fa8              # double 0.4918243690271944
	.quad	0x3fe4133c3e916a8c              # double 0.62734806270903354
	.quad	0x3fce179f4b425a5c              # double 0.23509589361920546
	.quad	0x3fe3b4fc53563fed              # double 0.61584297444096381
	.quad	0x3fe520727e795757              # double 0.66021084501219718
	.quad	0x3fe89d835d0bca36              # double 0.7692276780420062
	.quad	0x3fe521a7b49491f6              # double 0.66035828847503697
	.quad	0x3fca996e496b9ff4              # double 0.20780733666401796
	.quad	0x3fd8318848b8e166              # double 0.37802321531082439
	.quad	0x3fddf6b9e707b610              # double 0.46818397103820164
	.quad	0x3fdad2b54443702e              # double 0.41911060015059121
	.quad	0x3fc9bb2a89ab5e10              # double 0.20102435800684804
	.quad	0x3fef7773fe9b159b              # double 0.98333167770094875
	.quad	0x3fd68c4001b72126              # double 0.35231018226160626
	.quad	0x3fe7bba17714007a              # double 0.74165414102027616
	.quad	0x3fca6ad88983a4b0              # double 0.20638567652284712
	.quad	0x3fed31813e3b22dc              # double 0.91229307322017971
	.quad	0x3fea5b16befe54d3              # double 0.82361924460806291
	.quad	0x3fe854476e0008fa              # double 0.76028796657945397
	.quad	0x3fef18eecaa2b119              # double 0.97179355218171104
	.quad	0x3fece2b18159cb05              # double 0.90267253173655659
	.quad	0x3fc9447405a49b1c              # double 0.19740152621781071
	.quad	0x3feb7ab3fd849627              # double 0.85872840419023511
	.quad	0x3fd7757f9176e404              # double 0.36654652791509101
	.quad	0x3f786c7f84f04480              # double 0.0059628468725502204
	.quad	0x3fdcb70e83a9685e              # double 0.44867289407341626
	.quad	0x3fe988609ad9cdfc              # double 0.79789762729927771
	.quad	0x3fcd7022fa777980              # double 0.2299846384984896
	.quad	0x3fee84527431c580              # double 0.95365259832594518
	.quad	0x3fe9ad5068444030              # double 0.80240650524684121
	.quad	0x3fe5af90853508ab              # double 0.67768121735595821
	.quad	0x3fe3ee422fb1d7a4              # double 0.62283429446573679
	.quad	0x3fe86cf2fc6754a6              # double 0.76329945848069225
	.quad	0x3fea70831fc9c74b              # double 0.82623439987785596
	.quad	0x3fe1f89aa12199f5              # double 0.56159717055271463
	.quad	0x3fc2edbdf7d6f498              # double 0.14788031198068974
	.quad	0x3fead6967122030b              # double 0.83869478317510138
	.quad	0x3fea62d439c59376              # double 0.82456408771086731
	.quad	0x3feaf728ecff161c              # double 0.84267088211408092
	.quad	0x3f97b8541723b0a0              # double 0.023164094841306437
	.quad	0x3fe0f3f1c53634f6              # double 0.5297783710281283
	.quad	0x3fef772d43c39874              # double 0.98329795107998885
	.quad	0x3fe172acb746cf0e              # double 0.54524837299547513
	.quad	0x3fb1ce6777123f58              # double 0.069555727548729407
	.quad	0x3fec41cee012b871              # double 0.88303321613581265
	.quad	0x3fc91099d19316a4              # double 0.19581911786206263
	.quad	0x3fe42f229b69d6c4              # double 0.63075380663095659
	.quad	0x3fc8a6edebe8842c              # double 0.19259428042372073
	.quad	0x3fd3f4e6e5c25fbc              # double 0.3118226283781913
	.quad	0x3fcedb0b159312c0              # double 0.24105967095797176
	.quad	0x3fd209d595a67b46              # double 0.28185023893631855
	.quad	0x3fe402ddeaeed7d5              # double 0.62534995923374004
	.quad	0x3feb04c96f082565              # double 0.84433433233168087
	.quad	0x3fb35ea05c1d9538              # double 0.075662634362363757
	.quad	0x3fd7d5b164b54c88              # double 0.37241778216157018
	.quad	0x3fec24b13933ad1e              # double 0.87947903797376958
	.quad	0x3fea1dde5a340c74              # double 0.81614606492838825
	.quad	0x3fedca4d05e09d63              # double 0.93094493053369509
	.quad	0x3fef4e4e710003f6              # double 0.97830888815235428
	.quad	0x3fe24bfeaf451748              # double 0.57177671654128748
	.quad	0x3fe3dee98a6a6672              # double 0.6209609702520551
	.quad	0x3fee3cad7a0347f8              # double 0.94490693884495069
	.quad	0x3fc88b97a2a9bf80              # double 0.19176001970799561
	.quad	0x3fc068d2d1d87aec              # double 0.12819895979278983
	.quad	0x3fe158da94f4d41b              # double 0.54209641545333243
	.quad	0x3fe371207030286e              # double 0.60755941306821426
	.quad	0x3fcb2d56275cfe08              # double 0.2123210613444686
	.quad	0x3fdd697a020c37d8              # double 0.45956278037999487
	.quad	0x3fea80c37e76a0a8              # double 0.82821821880226754
	.quad	0x3fe55b6b26eeb4c5              # double 0.6674094925307591
	.quad	0x3f66f02b4b7b3b00              # double 0.0028000684359094086
	.quad	0x3fe26e9f0cd9f117              # double 0.57600357542063108
	.quad	0x3fb3779b802c29c0              # double 0.076043814460866166
	.quad	0x3feee71cda9b3bf2              # double 0.9657120008140494
	.quad	0x3fe5931a9f4d8507              # double 0.67420703042822161
	.quad	0x3fee229dd9ae3462              # double 0.94172565952034071
	.quad	0x3fdd78e571ef8d84              # double 0.46050392271555318
	.quad	0x3fc13d5f189a739c              # double 0.13468540860494904
	.quad	0x3feebb6649c7bd47              # double 0.96037592325402776
	.quad	0x3fe5da9d6a364cc2              # double 0.68293638939430701
	.quad	0x3f8fd419aa0d77c0              # double 0.015541267873853459
	.quad	0x3fe906a82e59a7d3              # double 0.78206261685158507
	.quad	0x3f9d6892bca9f360              # double 0.028719227566841865
	.quad	0x3fef966536f435f4              # double 0.98710880978768367
	.quad	0x3fdda24f60a87244              # double 0.46303162040002044
	.quad	0x3feaa7dbb919c267              # double 0.83299051430192328
	.quad	0x3fe44c6cd806390c              # double 0.63432924453971529
	.quad	0x3fef34421343d418              # double 0.97512916338621646
	.quad	0x3fd8ca6360bd006a              # double 0.3873527950963821
	.quad	0x3fa54ba2bd097080              # double 0.041592679572858948
	.quad	0x3fd0666f53369912              # double 0.25625212789818008
	.quad	0x3fb6b6b4a35067d8              # double 0.088725366469957989
	.quad	0x3fdb891fa3f02bf8              # double 0.43024436006152156
	.quad	0x3fecfb190c28fe13              # double 0.9056515920164564
	.quad	0x3fec32b56e7097fe              # double 0.88119002886082831
	.quad	0x3fd3569d0ec77d7c              # double 0.30216146891867601
	.quad	0x3fefeaa5510ad083              # double 0.99739328220904643
	.quad	0x3fef78ba6a330c75              # double 0.98348732702323948
	.quad	0x3fe859b8198e027c              # double 0.76095204344899469
	.quad	0x3fd7624fa5c3e610              # double 0.36537543476114909
	.quad	0x3fd5d961eaa578be              # double 0.34139297403988766
	.quad	0x3fea140fc83d8dd7              # double 0.81494893178426764
	.quad	0x3fdd875df9680d2c              # double 0.4613871512994645
	.quad	0x3fed4707376cea4b              # double 0.91492043328555306
	.quad	0x3fedd24839732b93              # double 0.93191920490913771
	.quad	0x3feeae7232daf24a              # double 0.95879468853633765
	.quad	0x3faee48bab02c960              # double 0.060337414384224131
	.quad	0x3fe1ca6f5bad982b              # double 0.55596130281333467
	.quad	0x3fd583ba37e4be28              # double 0.33616500337936595
	.quad	0x3fd5234931eb11d8              # double 0.33027868151500916
	.quad	0x3fad343976c25e60              # double 0.057039066073397704
	.quad	0x3fd1e4d9eaa0ccc4              # double 0.279592970971134
	.quad	0x3fd1496c7a17107e              # double 0.27010642931805495
	.quad	0x3fea3310a4892b81              # double 0.81873352180387837
	.quad	0x3fe301d4d3941cb1              # double 0.59397355388582274
	.quad	0x3fd89ee1766b17ac              # double 0.38469730915346179
	.quad	0x3fefe72ed738d489              # double 0.99697057757897866
	.quad	0x3fe46706e99ba004              # double 0.63757653833909034
	.quad	0x3fc65413b41e9efc              # double 0.17444082541373251
	.quad	0x3f9f8daa932dc800              # double 0.030813851578791684
	.quad	0x3fe15d5c57ade745              # double 0.54264657139649641
	.quad	0x3fe678d30971a041              # double 0.7022490677309251
	.quad	0x3fd0873b6ac0bc44              # double 0.25825391221127725
	.quad	0x3fa15e9fea79ca00              # double 0.033925053951765705
	.quad	0x3fdcdf0c001d3f02              # double 0.451113700973096
	.quad	0x3fd3573aeb0e92ae              # double 0.30219910578515907
	.quad	0x3fec43a0541179d9              # double 0.88325516147215943
	.quad	0x3fe0f9d8fb973c04              # double 0.53049897326297968
	.quad	0x3fc05e937121fdf4              # double 0.12788622879087053
	.quad	0x3fe7560341c510ed              # double 0.72924959989225402
	.quad	0x3fe9b9b32988f4e4              # double 0.80391843902875992
	.quad	0x3feb944107f4fef0              # double 0.86184741548637867
	.quad	0x3fd8049506da59e6              # double 0.37527967137557849
	.quad	0x3fe1f3d379e5e039              # double 0.561013925630511
	.quad	0x3fdf2209159d8f2a              # double 0.48645236121068314
	.quad	0x3fad77845dece760              # double 0.057552467790130235
	.quad	0x3fe9f0e417f1ece0              # double 0.81065563847314692
	.quad	0x3fee48121068d276              # double 0.9462976761338513
	.quad	0x3fe87c77c2edc9b1              # double 0.76519382545511949
	.quad	0x3fdd389c06acff0c              # double 0.45658016826563208
	.quad	0x3f87024d4932d180              # double 0.01123485927232859
	.quad	0x3fefe96aa1263b32              # double 0.99724322771530738
	.quad	0x3fcf015c8235e610              # double 0.24222904546677215
	.quad	0x3fe8e62412b23eeb              # double 0.77809337283721669
	.quad	0x3fd745991675023e              # double 0.36362292473862456
	.quad	0x3fc90e0bcf517fb8              # double 0.19574115393606717
	.quad	0x3fe84b3ce70bef60              # double 0.75918431402486064
	.quad	0x3fe61c4237db777a              # double 0.69094954404475506
	.quad	0x3fdfa92e2cb2527a              # double 0.49470095028781425
	.quad	0x3fdba90dd06e15e6              # double 0.4321932349633627
	.quad	0x3fe4bdf1f99f62d2              # double 0.64818667177595501
	.quad	0x3fe3f973e1b9ab49              # double 0.62420076453177231
	.quad	0x3fd0fda61079a83a              # double 0.26548148735912813
	.quad	0x3fbee3fe73afc788              # double 0.12066641163235492
	.quad	0x3fe6bdfce1644eae              # double 0.71069187185135774
	.quad	0x3fbc412013009110              # double 0.11036873306199291
	.quad	0x3f94a453bf8eea60              # double 0.020158108298100053
	.quad	0x3fc3104e24e01048              # double 0.14893509674596062
	.quad	0x3fed086492e27f4e              # double 0.90727451980999674
	.quad	0x3fb255a7fc613740              # double 0.071619509807729465
	.quad	0x3fbaafb4899ee8a0              # double 0.10424354896432186
	.quad	0x3fe94c0888c62f97              # double 0.79053141320899811
	.quad	0x3fe679c69b1f322f              # double 0.70236521050680334
	.quad	0x3fd4405363d8c486              # double 0.3164261317315965
	.quad	0x3fec8f5ee990cee5              # double 0.89250131243030906
	.quad	0x3fe7c636ee4a3cac              # double 0.74294611493123375
	.quad	0x3fd09e80167f0028              # double 0.25967409321674717
	.quad	0x3fe779aca61a9031              # double 0.73360283319607877
	.quad	0x3fe56c09708ce0c8              # double 0.66943809492570328
	.quad	0x3f87e09353e0b100              # double 0.011658812520260131
	.quad	0x3fc58b6c5821b288              # double 0.16831735900213496
	.quad	0x3fe0a3ca63757982              # double 0.51999396730006731
	.quad	0x3f94600b584ffc60              # double 0.019897629990733967
	.quad	0x3fde507c34c69cea              # double 0.47366242555513216
	.quad	0x3fd079d62d09461c              # double 0.25743631742543172
	.quad	0x3f9c5d237bccfe80              # double 0.027699045592497473
	.quad	0x3fb6efbae0769540              # double 0.089595489311780518
	.quad	0x3fd8a0d6e0d28c4a              # double 0.38481685595815363
	.quad	0x3fe798c73808e9cc              # double 0.73739968246746335
	.quad	0x3feb384ada73e58c              # double 0.8506216303496088
	.quad	0x3fe40c7a3e61e1ea              # double 0.62652313407948879
	.quad	0x3fd9cd90d70e4230              # double 0.40317173959286645
	.quad	0x3f972603aec418c0              # double 0.022605950872297553
	.quad	0x3fdb14fa0720c4f6              # double 0.42315531440824772
	.quad	0x3fe8bf92a95a83ca              # double 0.77338536335820973
	.quad	0x3fbf5badc32664a0              # double 0.12249265684512745
	.quad	0x3fdcf015f49bfc68              # double 0.45215367210034296
	.quad	0x3fbcdfe4543f4b78              # double 0.11279131943528664
	.quad	0x3fd4cd4eacf8f8ca              # double 0.32503096477365701
	.quad	0x3fe740a91d59af11              # double 0.72664314014898157
	.quad	0x3fd488eec5e5c978              # double 0.32085770917833356
	.quad	0x3fdae7e363c1d2c8              # double 0.42040333501726623
	.quad	0x3fea87590efc74c0              # double 0.82902195860847172
	.quad	0x3fd197fd6fdd63f8              # double 0.27490173267648244
	.quad	0x3fe2a349917e9823              # double 0.58243254105469011
	.quad	0x3fc3aa9f577bf908              # double 0.15364448329632574
	.quad	0x3fc69ba35572da1c              # double 0.17662469551369575
	.quad	0x3f913ad4c69bf400              # double 0.016825985548155842
	.quad	0x3fe18722d2bfec60              # double 0.54774609720278633
	.quad	0x3fcafbe103a46f24              # double 0.21081173589561175
	.quad	0x3fc7e7168fe7ff78              # double 0.18673975016281097
	.quad	0x3fe125e990b09c7e              # double 0.53587797412627913
	.quad	0x3feca1bf59b59c17              # double 0.89474456330651975
	.quad	0x3fdf209870512014              # double 0.48636446922728394
	.quad	0x3fe316e225228c2f              # double 0.59654338124199124
	.quad	0x3fe2fcf2e2a6359b              # double 0.59337753550942141
	.quad	0x3fba6bfaca824ab8              # double 0.10321013874117113
	.quad	0x3fe6bb38f888bdfb              # double 0.71035431424928619
	.quad	0x3fc497b4f1d402c4              # double 0.16087972457900979
	.quad	0x3fe5f1d24939f7f4              # double 0.68576921751059539
	.quad	0x3fe03f2339543bc9              # double 0.50770722577169025
	.quad	0x3fd039d97d49b508              # double 0.25353085742138193
	.quad	0x3feb53fd9f6664c7              # double 0.85400277264411606
	.quad	0x3fe9e042405ad32a              # double 0.80862534112256879
	.quad	0x3fed38a364ff8a67              # double 0.91316385008060486
	.quad	0x3fe3cd76bcd2a384              # double 0.61883103255705452
	.quad	0x3fc0dd7412fafe64              # double 0.13175822188167097
	.quad	0x3fa15ef15b5d61b0              # double 0.033927481081892252
	.quad	0x3fdc942557e9dbc6              # double 0.44654210648826298
	.quad	0x3fe085d64424a0dc              # double 0.51633752164073199
	.quad	0x3fb81b324f201120              # double 0.094164985959711788
	.quad	0x3f9e55e49b872ee0              # double 0.029624530785254843
	.quad	0x3fe6f009c3e0c9e5              # double 0.71680153138578062
	.quad	0x3fdb3103f8624bea              # double 0.42486666923758654
	.quad	0x3fde3cc2b214d2bc              # double 0.47245852843051828
	.quad	0x3fdad495f0115d7e              # double 0.41922520107387828
	.quad	0x3fe791edf81ad846              # double 0.73656366785031291
	.quad	0x3fe769c557f838d2              # double 0.73166148358884642
	.quad	0x3fc51d30dced4d9c              # double 0.16495333468865858
	.quad	0x3fd19645e5674416              # double 0.27479693796800697
	.quad	0x3fe1307ef7629a2d              # double 0.53716991727271124
	.quad	0x3fd0ffece715d5b6              # double 0.26562044684336727
	.quad	0x3fec92f357a5454f              # double 0.89293830030707422
	.quad	0x3fdaf33683272534              # double 0.42109453971768862
	.quad	0x3fe332bb66460913              # double 0.59994287467296414
	.quad	0x3fe1f6f250e3709c              # double 0.56139484213374002
	.quad	0x3fe131738be884c5              # double 0.53728654218516481
	.quad	0x3fe721f460d721e5              # double 0.72289484895833012
	.quad	0x3fc7e7a6befdb8f0              # double 0.1867569382261034
	.quad	0x3fe5d1bc6f56f98c              # double 0.68185254808467866
	.quad	0x3fee1cdffd49f3f6              # double 0.94102477522358075
	.quad	0x3fea5d6064df39c2              # double 0.82389850331838255
	.quad	0x3fe2c1b0723508a9              # double 0.58614370637976265
	.quad	0x3fe31730b20dee40              # double 0.59658083702328923
	.quad	0x3fe8d885b9d94d23              # double 0.77643095301246878
	.quad	0x3fef8003ad997823              # double 0.98437675386572143
	.quad	0x3fd19205df58612e              # double 0.27453753291185279
	.quad	0x3fe95f954ed48f96              # double 0.79291787525697788
	.quad	0x3fd368ef7116a78a              # double 0.30327974361227261
	.quad	0x3fe21eff97ba75a4              # double 0.56628398546643099
	.quad	0x3fdfa85d9d064332              # double 0.49465122541828344
	.quad	0x3fa93438afb3bd90              # double 0.049226542900096537
	.quad	0x3fe9e5610bf7f1f6              # double 0.80925037705998082
	.quad	0x3fef7f08ab120e7f              # double 0.98425706302846538
	.quad	0x3fe798cb8dd2d0a1              # double 0.73740174960996197
	.quad	0x3fa115cf38e3cfa0              # double 0.03336951798874499
	.quad	0x3fde362e505a903c              # double 0.47205694052741243
	.quad	0x3fe5a9f7c5cf188c              # double 0.67699803003849146
	.quad	0x3feddd71922e14d0              # double 0.93328169394285432
	.quad	0x3fd7e47a8631f06c              # double 0.37332022767055295
	.quad	0x3fc1d6e5888e5930              # double 0.13937062423492241
	.quad	0x3fd0ce1c0f43bfb4              # double 0.26257993212402231
	.quad	0x3f6d897a207a4d00              # double 0.0036055932321886752
	.quad	0x3fc8237728184e24              # double 0.188582319810494
	.quad	0x3fe79da3ff1a6403              # double 0.73799323868581757
	.quad	0x3fe024e01329806f              # double 0.5045013784656599
	.quad	0x3fd963424f4f54ec              # double 0.39668328995806124
	.quad	0x3f5794b8f442e800              # double 0.0014392667954283844
	.quad	0x3fd5a709e59edf26              # double 0.33832023071180328
	.quad	0x3fecf33fce91d516              # double 0.90469351144443766
	.quad	0x3fe095cc1e549193              # double 0.51828580783744582
	.quad	0x3fe05120c0b1434a              # double 0.50990331301918812
	.quad	0x3fd180a196244f0c              # double 0.2734760252217121
	.quad	0x3fd65c592ca8dfd6              # double 0.34938649522109466
	.quad	0x3feb35397b418a0f              # double 0.85024713586273204
	.quad	0x3fc9f938c7c85094              # double 0.20291814570430644
	.quad	0x3fd496031772183e              # double 0.32165601052873061
	.quad	0x3fe4a6826d46ff50              # double 0.64532586425046112
	.quad	0x3feda712899a4ed8              # double 0.92664458156147145
	.quad	0x3feddf2231d4ba14              # double 0.93348798496828289
	.quad	0x3fd2b0027369e5c2              # double 0.29199277182450711
	.quad	0x3fe2c263e276e951              # double 0.58622926932666009
	.quad	0x3fed0a829f43308c              # double 0.90753298860501407
	.quad	0x3fe20365598509c0              # double 0.56291453823387627
	.quad	0x3fbbd61ef82688b0              # double 0.1087359767757643
	.quad	0x3fcc899223b34e00              # double 0.2229483293836978
	.quad	0x3fdadef22c16998e              # double 0.41985754304405354
	.quad	0x3fb62456773b21e8              # double 0.086491970166327925
	.quad	0x3fb7e38d366d2c00              # double 0.093315912044246829
	.quad	0x3fcbb0279e74ccd8              # double 0.21631331669923415
	.quad	0x3fe22f2a242cebb9              # double 0.56825739923021168
	.quad	0x3fbd71c991bb8908              # double 0.11501750762866803
	.quad	0x3fed99eb3cd1bfbd              # double 0.92503892782951136
	.quad	0x3fe7bf834940ff08              # double 0.74212803180123021
	.quad	0x3fc13c5e78283d28              # double 0.13465481631326637
	.quad	0x3fd21d0f722a7878              # double 0.2830237021352171
	.quad	0x3fd9d10d9a3a76f6              # double 0.40338459073414812
	.quad	0x3fef8bfb4dfa54d0              # double 0.98583760480928539
	.quad	0x3f8acc64a3c90c40              # double 0.013085161445934301
	.quad	0x3fdd655158a88cae              # double 0.45930894525572341
	.quad	0x3fe0c77c868615d3              # double 0.52435137056516579
	.quad	0x3fe13685063d5810              # double 0.53790522783924821
	.quad	0x3fd4d4e3433505e4              # double 0.32549363673396514
	.quad	0x3fe0e38a1cec67c0              # double 0.52777581833947096
	.quad	0x3fdfdab7f46d8a9e              # double 0.49772452230369335
	.quad	0x3fcef9910ba95f48              # double 0.24199116773047025
	.quad	0x3fefe02dbaeea0fa              # double 0.99611555586037004
	.quad	0x3fe486cf2434e077              # double 0.64145619460670289
	.quad	0x3fe05e3b2c8c4be2              # double 0.51150282574451134
	.quad	0x3fd5733e84455062              # double 0.33515894810739699
	.quad	0x3fd6d7f329f1d712              # double 0.35693053337250646
	.quad	0x3fe68fec39c29cbc              # double 0.70506869584359988
	.quad	0x3fd62119db91ddb8              # double 0.34577032511102912
	.quad	0x3fef19b07fd6ccce              # double 0.97188591927115353
	.quad	0x3f85a62ae82ceec0              # double 0.010570845804628859
	.quad	0x3fe551201ede66be              # double 0.66615301159909968
	.quad	0x3feb94e209f67892              # double 0.86192419000487264
	.quad	0x3fbaba0d813be248              # double 0.10440143971562421
	.quad	0x3fd962b6e0d963e0              # double 0.39665004690101391
	.quad	0x3fc6e9c95aa4c7ec              # double 0.17900959897957536
	.quad	0x3fac93842c0114e0              # double 0.055812960025414915
	.quad	0x3fec45996b6a6a4a              # double 0.88349600772500847
	.quad	0x3fd0c26928565610              # double 0.26186589183029785
	.quad	0x3fbcbdb21ab91318              # double 0.11226952698150361
	.quad	0x3fc7b90ba87142e8              # double 0.18533464169242753
	.quad	0x3fe0c8fde8ff0e1f              # double 0.52453513629047055
	.quad	0x3fca52cca0e4ef04              # double 0.20565183502355222
	.quad	0x3fe39d886f858d00              # double 0.61298009664133701
	.quad	0x3f82c043f7f86ac0              # double 0.0091557798432878589
	.quad	0x3fa46a0da1a79060              # double 0.039871622069569623
	.quad	0x3fe01be26eec7ba3              # double 0.50340387024686029
	.quad	0x3fc5b24e5379a0e0              # double 0.16950396610196261
	.quad	0x3fdc433f674fc11a              # double 0.44160447205560305
	.quad	0x3fdaad9f0c7efc38              # double 0.41684700222316762
	.quad	0x3fde76824e08478c              # double 0.4759832155260646
	.quad	0x3fc740d7dd7d3758              # double 0.18166635813616483
	.quad	0x3fe28f6ad06248a6              # double 0.58000698757156921
	.quad	0x3fd71f06dc2f097a              # double 0.3612687254173107
	.quad	0x3fdcf2488f37d78c              # double 0.45228780733247542
	.quad	0x3fe159fb13921bda              # double 0.54223398039254822
	.quad	0x3fdbe1b483d62cb4              # double 0.43565094828290829
	.quad	0x3fe0025d6a3e890d              # double 0.5002886843761033
	.quad	0x3fe07bd2e3eb7bff              # double 0.51511520877454575
	.quad	0x3fec8794a14211f8              # double 0.89155036445350699
	.quad	0x3fafd11a67b910c0              # double 0.062142205392349492
	.quad	0x3fec47d5bc36c858              # double 0.88376890907808114
	.quad	0x3fd45df9dae255f8              # double 0.31823583960917246
	.quad	0x3fef869dcd2ca144              # double 0.98518266747581906
	.quad	0x3fcd6d8b93f52408              # double 0.22990555500499021
	.quad	0x3fd02a35577331ec              # double 0.25257619419133337
	.quad	0x3fb6432673154d30              # double 0.086962130638586598
	.quad	0x3fcb2ae849edac64              # double 0.21224692926202515
	.quad	0x3fe41498518b9a5d              # double 0.62751403738804934
	.quad	0x3fdaf4f21d87f766              # double 0.42120030292414012
	.quad	0x3fd79f5769862356              # double 0.36910043053699348
	.quad	0x3fc34bc3ec3a5d40              # double 0.15074967417306517
	.quad	0x3fc0633b269ba4f0              # double 0.12802829156070272
	.quad	0x3fb5e12bd3c27488              # double 0.085467089842909627
	.quad	0x3fe7079ba5a5910d              # double 0.7196787104881267
	.quad	0x3fe902ac12f90bd3              # double 0.78157619195587313
	.quad	0x3f92ceea1d5ef540              # double 0.018367441218051228
	.quad	0x3fe4e477892ebbe9              # double 0.65288903039424639
	.quad	0x3fefd21cb7e03356              # double 0.99439845956076556
	.quad	0x3fd5827390ff96c2              # double 0.33608712348937442
	.quad	0x3febe5281e36a529              # double 0.87172323132577845
	.quad	0x3fc256f6995e6b30              # double 0.14327890862190307
	.quad	0x3fe53c1742d0ab3a              # double 0.66358531045748426
	.quad	0x3fe11a9fd6c6efd1              # double 0.53450004528667183
	.quad	0x3fcbf1c9a4b43b60              # double 0.2183162740916158
	.quad	0x3fea4d11a97ff08c              # double 0.82190783601210304
	.quad	0x3fe04b066167945b              # double 0.50915831589066884
	.quad	0x3fec90c7a0bf8683              # double 0.89267331501123726
	.quad	0x3fd36efc1280317c              # double 0.30364896589960444
	.quad	0x3fcff5147ab24c88              # double 0.24966674796141697
	.quad	0x3fb47d40a83aa260              # double 0.080036202498953823
	.quad	0x3feb2c6977c28762              # double 0.84917138472176767
	.quad	0x3fe3a710d9810301              # double 0.61414377671471254
	.quad	0x3fed1f05bafa5b2c              # double 0.91003691214686943
	.quad	0x3fdd1bdcf4746502              # double 0.4548256289723015
	.quad	0x3fec395dae70f464              # double 0.8820026785903221
	.quad	0x3fd38a31ab6edc86              # double 0.30530969373234773
	.quad	0x3fe15d6d58fdaa81              # double 0.54265468007118056
	.quad	0x3fd651eebc17db8c              # double 0.34875076645351366
	.quad	0x3fabbf4f920c4e10              # double 0.05419396074117
	.quad	0x3fd9c206df87e736              # double 0.40246745900332159
	.quad	0x3fe4ca20cd2b2dfe              # double 0.64967384407049145
	.quad	0x3fdf3fb8310d78b8              # double 0.48826412954612008
	.quad	0x3fc5eea23e3d70c4              # double 0.17134502448141664
	.quad	0x3fe532a3e6b84c84              # double 0.66243166983112234
	.quad	0x3fdd9ac6cd0da070              # double 0.46257181191186358
	.quad	0x3fe319000ab47d22              # double 0.59680177775218035
	.quad	0x3fc66b89e3f9e608              # double 0.17515681869171851
	.quad	0x3fc9a8c08017c3ec              # double 0.20046240095646739
	.quad	0x3fe5179bd118ea56              # double 0.65913191642114088
	.quad	0x3fae14a3a0191960              # double 0.058751214307039445
	.quad	0x3fd8b9c8cf2ebbd0              # double 0.38633938057585926
	.quad	0x3fe6f4ad10d8094c              # double 0.71736768045256261
	.quad	0x3fb85d3f5fdeec10              # double 0.095172844797090982
	.quad	0x3fe7054479a7dbac              # double 0.71939300309064924
	.quad	0x3fa624a3c3426fc0              # double 0.043248288712873784
	.quad	0x3fd74d4b95db7664              # double 0.36409272799014603
	.quad	0x3f811a36db550040              # double 0.0083507810292077211
	.quad	0x3fd92ae45f72c482              # double 0.39324292489170187
	.quad	0x3fe2ca31228ac77f              # double 0.5871816324854392
	.quad	0x3fcd06ab96b163dc              # double 0.22676606042912695
	.quad	0x3fd18aea483570de              # double 0.27410370875965195
	.quad	0x3fe0b79fdae75552              # double 0.52241509203546799
	.quad	0x3fc324d505c0cad0              # double 0.14956152707016779
	.quad	0x3fe4d39ac523221f              # double 0.65083063605658598
	.quad	0x3fc491338c442de4              # double 0.16068119381848966
	.quad	0x3fc9001611f6affc              # double 0.19531513096933384
	.quad	0x3fb05aa839a237d8              # double 0.063883318014830492
	.quad	0x3fd44daa78245a06              # double 0.31724035008065277
	.quad	0x3fe47cdaf556f6b6              # double 0.64024112623129414
	.quad	0x3fe482d3786fb106              # double 0.64096997759546137
	.quad	0x3fc6b5bf5b6ddb48              # double 0.17742149318993428
	.quad	0x3fe0f8eea4f0bae4              # double 0.5303872319689984
	.quad	0x3fe6564305e14b71              # double 0.69803000591705999
	.quad	0x3fd283f31ca20fae              # double 0.28930356785007916
	.quad	0x3fb2ffef630dd548              # double 0.074217759783853698
	.quad	0x3feb009fd51b7dd0              # double 0.84382621405159774
	.quad	0x3fe8428029809a38              # double 0.75811775308540685
	.quad	0x3fee9b22e66d6e58              # double 0.95643754010547876
	.quad	0x3fb7b48563007e18              # double 0.092598282499686824
	.quad	0x3fe3096c8feb5df9              # double 0.59490039929636318
	.quad	0x3fdd1513a3e466da              # double 0.45441142087075337
	.quad	0x3febd774f7374784              # double 0.87005089077341368
	.quad	0x3fd3e2d3dc0151c8              # double 0.31071945652845701
	.quad	0x3fee2a67b130a94e              # double 0.94267639739454423
	.quad	0x3fde915a344d4116              # double 0.47762160403819232
	.quad	0x3fb9f373373a1838              # double 0.10137100313485881
	.quad	0x3fcd3e4f1625f9a0              # double 0.22846401769124913
	.quad	0x3fe5e08213eeb345              # double 0.6836557759575973
	.quad	0x3fe09d7ff0baaca1              # double 0.51922604577466214
	.quad	0x3fe1b336f53e70cd              # double 0.55312679194641989
	.quad	0x3fea7e0410186d1f              # double 0.82788279670367959
	.quad	0x3fe729dd69bc373b              # double 0.72386046077165334
	.quad	0x3fb1d6c2cdf428f0              # double 0.069683242112805521
	.quad	0x3fe3c63366ca1d30              # double 0.61794443203044658
	.quad	0x3febd546f42c0b01              # double 0.86978480996944552
	.quad	0x3fb1459e7c0bd7d8              # double 0.067468552860958098
	.quad	0x3fb913fd48c24608              # double 0.09796126390781279
	.quad	0x3fe0a12b6933e9b2              # double 0.51967402026575926
	.quad	0x3fed6cc6d99574b5              # double 0.9195284127887563
	.quad	0x3fe8062e658947e8              # double 0.75075454551028731
	.quad	0x3feb2fe28c5341c4              # double 0.84959533126134845
	.quad	0x3fdbe91c878fe07a              # double 0.43610299337843339
	.quad	0x3fef5549c8395ce7              # double 0.9791611586214487
	.quad	0x3fadd8504d1142e0              # double 0.058290967376370295
	.quad	0x3fe04e9704e13298              # double 0.50959349587499769
	.quad	0x3fea51426e367942              # double 0.82241937185225589
	.quad	0x3fec37d888bda280              # double 0.88181711871318669
	.quad	0x3fb43508130ad1a0              # double 0.078934197091092617
	.quad	0x3fe9b97476b91ee7              # double 0.80388854206190963
	.quad	0x3fc00d0a0f74ddb8              # double 0.12539792780601799
	.quad	0x3fe4e51a8dad3c92              # double 0.6529667632220415
	.quad	0x3fe602066c8b9837              # double 0.68774720382930965
	.quad	0x3fe4bbd73b6314e8              # double 0.64792977904349147
	.quad	0x3fe31828c2a8ac57              # double 0.59669912356674615
	.quad	0x3fbfbd8ad8891a80              # double 0.12398593698990545
	.quad	0x3fcc0bb9c5855e80              # double 0.21910783905581255
	.quad	0x3fc123ac65d3e058              # double 0.13390116664936857
	.quad	0x3fe8ebf132c13371              # double 0.77880153573060629
	.quad	0x3fba4ac50ee6cec0              # double 0.10270339597519307
	.quad	0x3fe653c3a1d9f272              # double 0.69772512065499215
	.quad	0x3fec5c523b249b41              # double 0.88626967955938352
	.quad	0x3fe00ede03678c5c              # double 0.50181484856546943
	.quad	0x3feb642e9f451d23              # double 0.85597926242272526
	.quad	0x3fd1eac2de763536              # double 0.27995368695049494
	.quad	0x3fd1a90fff7471da              # double 0.27594375559581652
	.quad	0x3fe347dc9455d1dc              # double 0.60252217265820773
	.quad	0x3fdd65d3ebdc11ea              # double 0.45934007676285538
	.quad	0x3fdcc64eac3c3c40              # double 0.44960371799328769
	.quad	0x3fdd71e89c4e9cc6              # double 0.46007743133891343
	.quad	0x3fef9e6ec1872142              # double 0.98808992193611567
	.quad	0x3fd3e4990fe48b30              # double 0.3108275084688783
	.quad	0x3fdd9cf2a1746688              # double 0.46270433203753969
	.quad	0x3fd8138879854a32              # double 0.3761922060704449
	.quad	0x3fc710202473001c              # double 0.18017961292025653
	.quad	0x3fec9959a48e78b3              # double 0.89371950283000101
	.quad	0x3feeb9be44e4406e              # double 0.96017373519317828
	.quad	0x3fe723fb02086cfa              # double 0.72314215085080424
	.quad	0x3fe6037a25f7f5fe              # double 0.68792445579282435
	.quad	0x3fdc5d63d7b7e37c              # double 0.44320007387391747
	.quad	0x3fa0ede86ffeca50              # double 0.033065093680666124
	.quad	0x3fed5c1c9234c213              # double 0.91749409252048719
	.quad	0x3fd92508d86f1f04              # double 0.39288540969981534
	.quad	0x3fecc77b48afa705              # double 0.89935077854644929
	.quad	0x3fc64b4e1653d780              # double 0.17417312708101562
	.quad	0x3fd4a29bae775d0a              # double 0.32242481267663037
	.quad	0x3feeedcca689eb5a              # double 0.9665282490453635
	.quad	0x3fe6f5e8d0b80cd1              # double 0.71751824155253463
	.quad	0x3fc6242f353b6c90              # double 0.17297926043724887
	.quad	0x3fc5c78fb6a946fc              # double 0.17015263003354864
	.quad	0x3fc7f83b75362c54              # double 0.18726294730399451
	.quad	0x3fe05d8f909a0379              # double 0.51142099611762071
	.quad	0x3fd5269dad30fd6c              # double 0.33048192895144868
	.quad	0x3fc136f36bfb6444              # double 0.13448946735914735
	.quad	0x3fec28f2422b6e04              # double 0.87999833034285801
	.quad	0x3fd9e5cb0283d204              # double 0.40465045209501249
	.quad	0x3fe94a8dc5963ff1              # double 0.79035080519861201
	.quad	0x3fdd88ee15e2bd60              # double 0.46148254525447463
	.quad	0x3fee29765ca43679              # double 0.94256132215532695
	.quad	0x3fe21ff2aeebe7e8              # double 0.56639990009648233
	.quad	0x3fab452cbf258240              # double 0.0532621367772248
	.quad	0x3fedce840b96c013              # double 0.93145944846583217
	.quad	0x3fe126ae61c227f9              # double 0.53597182362977869
	.quad	0x3fe5bb3db23ae179              # double 0.67910656748340081
	.quad	0x3fd7145c67e9eb98              # double 0.36061773441149958
	.quad	0x3fec2c237a2f52e2              # double 0.88038801063757099
	.quad	0x3fe0c1526e425d4f              # double 0.52359887633330426
	.quad	0x3fee29e18956cf1d              # double 0.94261242698710002
	.quad	0x3fe2cfc6bedf8030              # double 0.58786332397358443
	.quad	0x3fdd8f37f1992b02              # double 0.461866365371563
	.quad	0x3fddbd2079d6625c              # double 0.46466838739573801
	.quad	0x3fe4f81c4ffeee76              # double 0.65528693794426718
	.quad	0x3fe98f12b297e250              # double 0.79871497041228601
	.quad	0x3fa9a71c1ca2ea80              # double 0.050103071685460243
	.quad	0x3fafc422a1e41870              # double 0.062043268453678801
	.quad	0x3fefbdef51fe5cf7              # double 0.99193540586830308
	.quad	0x3fe18f610bdf7d6c              # double 0.5487523300070456
	.quad	0x3fe3d47276d223da              # double 0.61968348700713283
	.quad	0x3feb9e538c0dcd5d              # double 0.86307694772987598
	.quad	0x3fccb3ec73d63068              # double 0.2242408338173647
	.quad	0x3fefc01e00ffe44d              # double 0.99220180697660398
	.quad	0x3fdd1b24989602ee              # double 0.45478167439436745
	.quad	0x3fe9d1423123b3a4              # double 0.80679425809431792
	.quad	0x3fe5e1a6386bc491              # double 0.68379508037300429
	.quad	0x3fe49ebf84927f82              # double 0.6443784322072903
	.quad	0x3fecc585f6b99a6b              # double 0.89911173046568871
	.quad	0x3fecc04ca04424d5              # double 0.89847403814305926
	.quad	0x3fbdc3828091ca38              # double 0.11626449240592585
	.quad	0x3f850e5ad25f5380              # double 0.010281285805754825
	.quad	0x3fda2ddab50fac42              # double 0.40904872590789776
	.quad	0x3fe79bb8010a13ae              # double 0.73775863841057343
	.quad	0x3fe39b5cd11d5630              # double 0.61271515696234324
	.quad	0x3fcba0150c583d34              # double 0.21582282164352196
	.quad	0x3fde7a52bd91b93e              # double 0.47621601593609231
	.quad	0x3fe8f050a1dc99c6              # double 0.77933532346360646
	.quad	0x3fbb9b5f71944358              # double 0.10783955119064836
	.quad	0x3feac1cffb04c0ea              # double 0.83615874316276728
	.quad	0x3fcba88abe4cc76c              # double 0.21608099262226277
	.quad	0x3fefa115155f20eb              # double 0.98841337370052195
	.quad	0x3feee9c96551f7d1              # double 0.96603841580485483
	.quad	0x3fd2b17f297ac994              # double 0.29208354044671947
	.quad	0x3fcfb749baa2b6a8              # double 0.24778100598398578
	.quad	0x3fce4aec1a0d4728              # double 0.23666144630492991
	.quad	0x3fa716e270fb94d0              # double 0.045096470157469093
	.quad	0x3fe9be7c356c0907              # double 0.80450258668887009
	.quad	0x3fe2dfee35062e98              # double 0.58983526569632527
	.quad	0x3fc0d9e34cdd2210              # double 0.13164941075434955
	.quad	0x3fc2324f35dc6be0              # double 0.14216032152111691
	.quad	0x3fe12110e8789ff3              # double 0.53528638271836682
	.quad	0x3fd3be12a16d4d96              # double 0.30847612156250059
	.quad	0x3fc57f9c76d4f79c              # double 0.16795688440646195
	.quad	0x3fce7a9f106ea9c8              # double 0.23811710646016437
	.quad	0x3febc3734d508c56              # double 0.86760869122043505
	.quad	0x3fd4cb292b712316              # double 0.32489995233895408
	.quad	0x3fdd636625805298              # double 0.45919183408958864
	.quad	0x3fd1e3af0eaf5536              # double 0.27952171739646603
	.quad	0x3fede87b3f66216c              # double 0.93462908156020096
	.quad	0x3fd1ab9df75ac108              # double 0.27609967380250611
	.quad	0x3fead73e8041907b              # double 0.83877491998693132
	.quad	0x3fd88ddc067d0f6e              # double 0.38365841516155441
	.quad	0x3fe2f957ec7fe9f9              # double 0.59293743316021541
	.quad	0x3fd7fdd7f144fa7a              # double 0.37486837922543936
	.quad	0x3fde2383e6fcc34c              # double 0.47091767842635046
	.quad	0x3fe5517a5e4f039c              # double 0.66619604510934805
	.quad	0x3fd25c20b185c5b2              # double 0.28687302910028756
	.quad	0x3feea1c990fe469f              # double 0.95724943465230072
	.quad	0x3fe0f0e8d25f5b0c              # double 0.52940789306998814
	.quad	0x3fd3f0b46d0a7782              # double 0.31156645439647701
	.quad	0x3fea0cb7f7127d80              # double 0.81405256515783719
	.quad	0x3fc350018fdd8ce4              # double 0.15087909245185138
	.quad	0x3fe75fdb80f3046c              # double 0.73045134721190896
	.quad	0x3fe1982bbe6444d9              # double 0.54982554612993362
	.quad	0x3fab8586238e5820              # double 0.05375308212312313
	.quad	0x3fe319de3d3856fe              # double 0.59690772969290129
	.quad	0x3fc30ed7afb20834              # double 0.1488904579055671
	.quad	0x3f882718e23dfc80              # double 0.011793321995126727
	.quad	0x3f96c704db9f9e60              # double 0.02224357214427497
	.quad	0x3fe4598262520aee              # double 0.6359264297792302
	.quad	0x3fe4651b326b264b              # double 0.63734207007764476
	.quad	0x3fc81becb01bbddc              # double 0.1883521900085573
	.quad	0x3feee5b5532d2b93              # double 0.96554056401633869
	.quad	0x3fe2f1901128215e              # double 0.59198764182023544
	.quad	0x3fd348e71645275c              # double 0.30132462668244897
	.quad	0x3fef9b826462d54e              # double 0.98773307425168766
	.quad	0x3fefbca0b554695f              # double 0.99177585044825977
	.quad	0x3fd36eafb97ee750              # double 0.30363076319519156
	.quad	0x3fe3b336d1cecd24              # double 0.61562672594155687
	.quad	0x3fcd23e493547160              # double 0.2276578635582025
	.quad	0x3fe4e0bb2f36ce2a              # double 0.65243300649166724
	.quad	0x3fd4279108142e02              # double 0.31491494931171371
	.quad	0x3fd73966049354a8              # double 0.36287832686259458
	.quad	0x3fe1ddfc82b8cb68              # double 0.55834794551479394
	.quad	0x3f9e63d8901797e0              # double 0.029677757067382404
	.quad	0x3fc6968bdb16e0e0              # double 0.17646930883143508
	.quad	0x3fdee14568743544              # double 0.48249945831851826
	.quad	0x3fe5300f3474a476              # double 0.66211662526360615
	.quad	0x3fd39a529ae968ce              # double 0.30629410865880125
	.quad	0x3fd64ae6ca0b3a00              # double 0.34832162600369543
	.quad	0x3fda48c91a136cc0              # double 0.41069247766945338
	.quad	0x3feca27b455aa730              # double 0.89483417077756222
	.quad	0x3fdeaa4b594c7f3a              # double 0.47914394112193615
	.quad	0x3fe25cbe38a930f6              # double 0.57382117334921534
	.quad	0x3faa96570be79630              # double 0.051928253367617194
	.quad	0x3fed0ec5bb33ff92              # double 0.90805326998814651
	.quad	0x3fc57e06c986bf0c              # double 0.1679085239425081
	.quad	0x3fc2da9364a5ca78              # double 0.14729540266451457
	.quad	0x3fdf708a025f2b82              # double 0.49124384147278743
	.quad	0x3fd88dee8dca6edc              # double 0.38366283270600632
	.quad	0x3fbc7f265abb1818              # double 0.111315152312358
	.quad	0x3fe6ac224639cf9e              # double 0.70851243701916977
	.quad	0x3fd1dc469fa998e0              # double 0.27906957237281738
	.quad	0x3fc36e206b4d413c              # double 0.15179829825729907
	.quad	0x3fd658f190121c56              # double 0.34917868680390052
	.quad	0x3fcae88a1a57a15c              # double 0.21022154127355008
	.quad	0x3fed4963b34cc3ea              # double 0.91520867366318481
	.quad	0x3fee02e4fd1f5470              # double 0.93785333097424761
	.quad	0x3fe69735c8720c69              # double 0.7059582629157265
	.quad	0x3fe6573057032d5a              # double 0.69814316744433857
	.quad	0x3fd1f997f71f454a              # double 0.28085898526213227
	.quad	0x3fbc4b4874ba4060              # double 0.11052372789186071
	.quad	0x3fe20a9c55a0ae92              # double 0.56379524921563218
	.quad	0x3fe96af5521acbfd              # double 0.7943064311606346
	.quad	0x3fe604b1ce63a2c4              # double 0.68807306585684858
	.quad	0x3fbe4a4b370c4f88              # double 0.11832113355586504
	.quad	0x3fe1a67f71c3213f              # double 0.55157444209275031
	.quad	0x3fc4e6043cfee1dc              # double 0.16326954820921358
	.quad	0x3fb5c64566f6a328              # double 0.085056626927905499
	.quad	0x3fb16b5c2061ac60              # double 0.068044431596420818
	.quad	0x3fdc6c00e757629e              # double 0.44409201232842033
	.quad	0x3fbb37736552dc48              # double 0.10631486152384284
	.quad	0x3fe467c14b004b8c              # double 0.63766541145956657
	.quad	0x3fdd4ab735b373ee              # double 0.45768528217541771
	.quad	0x3fe57dc1f7864875              # double 0.67160127968442274
	.quad	0x3fa7cc6755ed3f30              # double 0.046481351126770654
	.quad	0x3fa0ac2eff06ac80              # double 0.032563656455146806
	.quad	0x3fc1f77c4068c3f8              # double 0.14036515374166902
	.quad	0x3fe513edf97641a9              # double 0.65868281100306547
	.quad	0x3fe7b5b892a7079c              # double 0.74093273776110236
	.quad	0x3fd448d9fcb92584              # double 0.31694650344851305
	.quad	0x3fd381bf9022bc64              # double 0.30479420734167761
	.quad	0x3fe507154099b6eb              # double 0.65711462609553217
	.quad	0x3fe0feb2ea126652              # double 0.53109117238200043
	.quad	0x3feb59eca5246510              # double 0.8547270989830924
	.quad	0x3fe893812b2c0416              # double 0.76800592834490788
	.quad	0x3fd22c5a935d762e              # double 0.28395714179154907
	.quad	0x3fda593c4e747cd2              # double 0.41169650708793626
	.quad	0x3fdd4065b06792b0              # double 0.45705549456605876
	.quad	0x3fe3a71ae88d0147              # double 0.61414857311323423
	.quad	0x3fe34d505f85d1c2              # double 0.60318773896010947
	.quad	0x3fcf247bacab6ae8              # double 0.24330087596066297
	.quad	0x3fd46c82f621ea3a              # double 0.31912302051901842
	.quad	0x3fda11ec499fde48              # double 0.40734393300906335
	.quad	0x3fe01be21bbaf169              # double 0.50340371528686234
	.quad	0x3fe8bd6ee2334963              # double 0.77312416248086568
	.quad	0x3fec2295b31a2da0              # double 0.87922177296552561
	.quad	0x3fe3a89ceb154caf              # double 0.61433263697326435
	.quad	0x3fd4facd72bf72ec              # double 0.32780777173847642
	.quad	0x3fc106a061eedc98              # double 0.13301472455870988
	.quad	0x3fc87888752641f0              # double 0.19117837639033963
	.quad	0x3fe70d72b7faaab6              # double 0.72039161618643877
	.quad	0x3fe20cc58c11056e              # double 0.56405904156433251
	.quad	0x3feb4fb865889042              # double 0.85348148184539974
	.quad	0x3fed1566d045129e              # double 0.90886250188539797
	.quad	0x3fe9cccda0fd1868              # double 0.80625039523216646
	.quad	0x3fbfc8e7570df010              # double 0.12415929675438542
	.quad	0x3fd2e879bdc9ad90              # double 0.2954391816517381
	.quad	0x3fe8f0ca192e43fe              # double 0.77939324300871227
	.quad	0x3fc3baded7285dd0              # double 0.1541403341841332
	.quad	0x3fe95c4876926c29              # double 0.79251502188288214
	.quad	0x3f99d0dfe3304fa0              # double 0.025210855714319913
	.quad	0x3fee88d7a6ecb885              # double 0.9542043934104788
	.quad	0x3fb2373ce7b75908              # double 0.07115536362775654
	.quad	0x3fb57c37d5e23638              # double 0.083926667897878171
	.quad	0x3fd80a513b04683e              # double 0.37562971843147241
	.quad	0x3fc5b927fcc87150              # double 0.1697130188266649
	.quad	0x3feb4c48f669fc00              # double 0.85306213500723516
	.quad	0x3f90ad14ec9d1bc0              # double 0.016285254422907292
	.quad	0x3f960457a8f38e00              # double 0.021500940024351323
	.quad	0x3fd78f8241e87428              # double 0.36813408314066232
	.quad	0x3fc5c2616e66d124              # double 0.16999452486710098
	.quad	0x3fe0ccd670b78afd              # double 0.52500459685356271
	.quad	0x3fc3765c4eb327a0              # double 0.15204957812084974
	.quad	0x3fe3cdb1ef1090a0              # double 0.61885925953221843
	.quad	0x3fa3a81b8209f960              # double 0.03839193308248201
	.quad	0x3fe74397624a10a2              # double 0.72700089642650689
	.quad	0x3fcb8249b5d85808              # double 0.21491357211260742
	.quad	0x3fe93f933e370ffb              # double 0.78901064063438697
	.quad	0x3fc8cb71170359c4              # double 0.19370854972539864
	.quad	0x3fe5c043c1c0b6dd              # double 0.67971980898229456
	.quad	0x3fc4e216b63d0060              # double 0.16314968012193543
	.quad	0x3feda982d44dd0c2              # double 0.92694226709002003
	.quad	0x3fe65103edf4185c              # double 0.69738956904690097
	.quad	0x3fdf6937c7d7968e              # double 0.49079699054559789
	.quad	0x3fa482492e3126b0              # double 0.040056502236052949
	.quad	0x3fe6c9611abf5b76              # double 0.71208243583792696
	.quad	0x3fe9fa2691fea16f              # double 0.81178596987323981
	.quad	0x3fdd272633e4fb66              # double 0.45551447933023892
	.quad	0x3fe1e56e3e9b70f6              # double 0.55925667026488557
	.quad	0x3fbcee55957e3c68              # double 0.11301169299825775
	.quad	0x3fe89333e0bcd826              # double 0.76796907323910513
	.quad	0x3fd06a2be5306cc0              # double 0.25648019201043937
	.quad	0x3fea9f4d8a2b783e              # double 0.8319461535099959
	.quad	0x3fefd49835da1582              # double 0.99470148580500983
	.quad	0x3feb34457c06b617              # double 0.85013078903074557
	.quad	0x3fdcc0d4ae422e68              # double 0.44926945702966359
	.quad	0x3facabc3666d1590              # double 0.055997949841677941
	.quad	0x3fd33ff1473fdd88              # double 0.30077774007755709
	.quad	0x3fc8ce626478f164              # double 0.19379835039024862
	.quad	0x3fea1b1bf92a3c19              # double 0.81580923714671194
	.quad	0x3fe0cf0e34cb1e82              # double 0.52527532874314908
	.quad	0x3fe160643a7011e5              # double 0.54301654256465481
	.quad	0x3fe33084974d1f3a              # double 0.59967259932543659
	.quad	0x3fe3a55f1e907b38              # double 0.61393695802312376
	.quad	0x3fe3adb8579efff5              # double 0.6149560653066134
	.quad	0x3fbf95b76ac37030              # double 0.12337824207810466
	.quad	0x3fd30c1674762728              # double 0.29761277554699683
	.quad	0x3fe41dc8bed39e30              # double 0.62863576193644199
	.quad	0x3feefdc7b9484ff8              # double 0.96847902477247682
	.quad	0x3fd8f9d0cd93bac4              # double 0.3902475364292679
	.quad	0x3fe3b94710bf3c39              # double 0.61636689444447434
	.quad	0x3fd674df717dcb9a              # double 0.35088335116523128
	.quad	0x3fcf2573d6773848              # double 0.24333045932729847
	.quad	0x3fc815d7b1075f88              # double 0.18816658157333799
	.quad	0x3feccecf1361fa8d              # double 0.90024522576989485
	.quad	0x3fe328551262be15              # double 0.59867337790450625
	.quad	0x3fce4fc8174ab1fc              # double 0.23680974137586464
	.quad	0x3fc4f6d63f2b7714              # double 0.16378286442243761
	.quad	0x3fef9ce9b5fa3205              # double 0.98790441076704438
	.quad	0x3fe916456777ca46              # double 0.7839686413629543
	.quad	0x3fe6cc6dcda473f6              # double 0.71245470203905259
	.quad	0x3fed6f274d56842f              # double 0.91981854538983565
	.quad	0x3fe1c3d453053f8c              # double 0.55515495505277235
	.quad	0x3fe0c5e58aa20b74              # double 0.52415730549578976
	.quad	0x3fd1ea13641b5ef6              # double 0.2799118497473353
	.quad	0x3fde5b616497be38              # double 0.47432741950521828
	.quad	0x3fbbb744ebf75628              # double 0.10826521645443477
	.quad	0x3f961d1b0d571ae0              # double 0.02159540432856033
	.quad	0x3fdb64d302f60fa4              # double 0.42802882470300063
	.quad	0x3fedd6957f2da282              # double 0.93244433249954306
	.quad	0x3fef02bfbe6253ed              # double 0.96908557114022431
	.quad	0x3fd7fbf82e1e0c50              # double 0.37475399497651996
	.quad	0x3fe45f317f43e817              # double 0.63662028175827146
	.quad	0x3fe518355c4d76cc              # double 0.65920513179636364
	.quad	0x3fe930b3b782efa1              # double 0.78719507066806582
	.quad	0x3fefcdd6d2bd2280              # double 0.99387684974597335
	.quad	0x3fe466c2dce2b772              # double 0.63754408971520449
	.quad	0x3faf5cc6e77f38e0              # double 0.06125470710650105
	.quad	0x3fd5bb67475088fa              # double 0.33956319774928512
	.quad	0x3fefcde62ca03a58              # double 0.99388416973108473
	.quad	0x3fed5cd7b12e68ed              # double 0.91758331876488131
	.quad	0x3fe8ebc64e986cc5              # double 0.77878108359018283
	.quad	0x3fef5f9711eaa5d2              # double 0.98041871547064319
	.quad	0x3f8c55c784ef8100              # double 0.013835486168261912
	.quad	0x3fe066f7e4f3230f              # double 0.51256937710522432
	.quad	0x3fbf413de8136ef0              # double 0.12208926120677766
	.quad	0x3fc759e504d5de1c              # double 0.1824308656321002
	.quad	0x3fed30a76bf88edb              # double 0.91218920791694857
	.quad	0x3feef9f4c241606f              # double 0.96801221790793856
	.quad	0x3fdcd494de328468              # double 0.45047494601209914
	.quad	0x3fefe712529a0ed3              # double 0.99695697911416869
	.quad	0x3fccb927e8c8adec              # double 0.22440050951386981
	.quad	0x3fe28a0f8fdcdd1d              # double 0.57935312364762448
	.quad	0x3fe3b7d40de87000              # double 0.6161899825706314
	.quad	0x3fed33440d748e38              # double 0.91250803592669794
	.quad	0x3fed9be7d41edcfe              # double 0.92528144292637626
	.quad	0x3fee2bb163fcd59d              # double 0.9428336098559843
	.quad	0x3fe4970bc14e1035              # double 0.64343822245473936
	.quad	0x3fdf87238771fc04              # double 0.49262321688723909
	.quad	0x3fbc19518f851658              # double 0.10976133111861353
	.quad	0x3faf5de188fab870              # double 0.061263130160441714
	.quad	0x3fe99ca6c473a138              # double 0.80037248963802821
	.quad	0x3fef4ae9894d7960              # double 0.97789456192894519
	.quad	0x3febe5c200e7f6f3              # double 0.87179660965895633
	.quad	0x3f97379b779f4520              # double 0.02267306249251988
	.quad	0x3fc2f5a15a6b0708              # double 0.14812104144044036
	.quad	0x3feaaf11da9c39e2              # double 0.8338708181125265
	.quad	0x3fca8e32b6e6b67c              # double 0.20746454172824602
	.quad	0x3fdb9bf8b23b3cc2              # double 0.43139474301728964
	.quad	0x3fa22ca870842340              # double 0.035496963248141444
	.quad	0x3fdf0477da164858              # double 0.48464771554529795
	.quad	0x3f70fb54b57d9a80              # double 0.0041459378188394291
	.quad	0x3fef5cc5414d2627              # double 0.9800745273034338
	.quad	0x3fe630f871e62ada              # double 0.6934778427688244
	.quad	0x3fcbd2c96adde218              # double 0.21737020223714931
	.quad	0x3fe50decb9f5c648              # double 0.65794979400943365
	.quad	0x3fcdd22e1d7cca28              # double 0.23297668876473776
	.quad	0x3fee40ca7076a015              # double 0.94540903058532655
	.quad	0x3fdfa0c4f5ef56ca              # double 0.49418758408624497
	.quad	0x3fb3e984edbb4e88              # double 0.077781971015889906
	.quad	0x3fec0de89d9a132d              # double 0.87669783383953404
	.quad	0x3fa246fc8cf25040              # double 0.035697834210765667
	.quad	0x3fed13a7e55fb562              # double 0.90864939498503028
	.quad	0x3fbe88d73469aed8              # double 0.11927552251443829
	.quad	0x3fd76d4be0458a42              # double 0.36604592229392463
	.quad	0x3fd894373c47763c              # double 0.38404637228618177
	.quad	0x3fe1bab8e2aa1a27              # double 0.55404323835756919
	.quad	0x3fef6507edf44c36              # double 0.98108288264700749
	.quad	0x3fbb0ce4845b4b10              # double 0.10566547614443444
	.quad	0x3fe941c9957d5502              # double 0.78928069302733683
	.quad	0x3fefcfc9e5387879              # double 0.99411482591291566
	.quad	0x3fe9d37e3a57c406              # double 0.80706702609143188
	.quad	0x3fe93d8433bc8a01              # double 0.78875932793408776
	.quad	0x3fe25b6f5354bf05              # double 0.57366148257821747
	.quad	0x3fbe842edaced388              # double 0.1192044529150974
	.quad	0x3fe743a48f8713b0              # double 0.72700717957251548
	.quad	0x3fcb7cd6159e4128              # double 0.21474720054221419
	.quad	0x3fed91b2b5c78425              # double 0.92403541091710351
	.quad	0x3fe75aec820d6c8e              # double 0.7298491039358781
	.quad	0x3feb247155fe19ba              # double 0.84819857402253906
	.quad	0x3feaa77a162af9b5              # double 0.83294395761168138
	.quad	0x3fd52e97785b7040              # double 0.33096873048430453
	.quad	0x3fed741c92ea59fe              # double 0.92042378134175329
	.quad	0x3fd75ef31ee4462c              # double 0.36517026917235529
	.quad	0x3fb91f8357c46d38              # double 0.098137101104318059
	.quad	0x3fe98e2c7387453f              # double 0.79860518039837547
	.quad	0x3fe59c888cd88a53              # double 0.67535808094937477
	.quad	0x3fd5843ffc137642              # double 0.33619689575957434
	.quad	0x3fba20d3b3c0bb38              # double 0.10206339968202094
	.quad	0x3fe326995cb8ad41              # double 0.59846180066725918
	.quad	0x3fd646dcff04d97e              # double 0.34807515052980154
	.quad	0x3fe45e86a65efa61              # double 0.6365388154443502
	.quad	0x3fe5ff8977c70224              # double 0.68744347948092299
	.quad	0x3fdc7b5196f22dbc              # double 0.44502677670308421
	.quad	0x3fdd1f212aed4c98              # double 0.45502499763569793
	.quad	0x3fe043b1bba03edb              # double 0.50826346059508454
	.quad	0x3fe920bcc48ba01d              # double 0.78524626148010024
	.quad	0x3fee30fe5997d74f              # double 0.94348065851839091
	.quad	0x3fda4eec936b7b5e              # double 0.41106714626760332
	.quad	0x3fe0b258542e325e              # double 0.52177063409323998
	.quad	0x3fe9e18193edd15c              # double 0.80877760784509744
	.quad	0x3fe787b78d056898              # double 0.73531701605976973
	.quad	0x3fe42102cafe81d9              # double 0.62902965209292028
	.quad	0x3fc7567a4589a12c              # double 0.18232658763305076
	.quad	0x3fe95629f4336214              # double 0.79176805205776412
	.quad	0x3fc15ca092bdb4a8              # double 0.13563925900544871
	.quad	0x3fb6fcc4373f7ef8              # double 0.089794410217560627
	.quad	0x3fe57f0946a7ba71              # double 0.67175735282746818
	.quad	0x3fccd85f21463758              # double 0.2253531372520523
	.quad	0x3fcc113a71dee228              # double 0.219275765992067
	.quad	0x3fe8d2df7d0ad8a9              # double 0.77574133322084038
	.quad	0x3fee82b5c6df2c2b              # double 0.95345581857816819
	.quad	0x3fc8a13360128524              # double 0.1924194544890635
	.quad	0x3fcf8e2460cce488              # double 0.24652533270435506
	.quad	0x3fd74ea4877b3d64              # double 0.36417496901136404
	.quad	0x3fda657c1f2e39b8              # double 0.41244414372422566
	.quad	0x3fe1c81e27d4bdcc              # double 0.55567844180580428
	.quad	0x3fdfc544a4a00200              # double 0.49641529156363617
	.quad	0x3feef035c63b96a0              # double 0.96682251660668683
	.quad	0x3fc58e6edbcf7198              # double 0.16840921147276045
	.quad	0x3fe2b4df99fb32f8              # double 0.58457927774870111
	.quad	0x3fd2931e95c2b454              # double 0.29022946000151717
	.quad	0x3fd564dc8deb55e0              # double 0.33428109988503074
	.quad	0x3fe2e831c798b6e5              # double 0.59084404929828038
	.quad	0x3fe34aaaefd66596              # double 0.60286471217402737
	.quad	0x3fe76ae9b5f02e83              # double 0.73180089506918511
	.quad	0x3fe9342aceb4ce0f              # double 0.78761806843107418
	.quad	0x3fd29072f40bf806              # double 0.29006646950426818
	.quad	0x3fef039abc67fa86              # double 0.96918999479369528
	.quad	0x3fb231b631ee2570              # double 0.071071040334705904
	.quad	0x3fc156ef81bcd814              # double 0.13546556315276403
	.quad	0x3fe3f0734b5f0f65              # double 0.62310185166323306
	.quad	0x3fdf561eda181a32              # double 0.48963137911087806
	.quad	0x3fe02925b7c00adf              # double 0.50502286804870866
	.quad	0x3f970b6d2f66df60              # double 0.022504526155642579
	.quad	0x3fd9da1e68a8161e              # double 0.40393791408891555
	.quad	0x3fe75f211ef71bf7              # double 0.73036247299103152
	.quad	0x3fe3ddc58c40bae6              # double 0.62082173722396017
	.quad	0x3fcb70728d98f208              # double 0.21436912454545642
	.quad	0x3fecbafc0379c364              # double 0.89782524756274684
	.quad	0x3fc62e2c99d067b4              # double 0.17328412542775384
	.quad	0x3fe016288e3df8b1              # double 0.50270488530784097
	.quad	0x3fd8a9fb4dc3a168              # double 0.38537485689314233
	.quad	0x3fe972a15b5944d3              # double 0.79524295655769561
	.quad	0x3fdda5e2f5bee962              # double 0.46324991224869028
	.quad	0x3f9b1c48c8dfd8a0              # double 0.026475083599472371
	.quad	0x3fefea15320b70fd              # double 0.99732455992082658
	.quad	0x3fbcbc80510554b0              # double 0.11225130060241173
	.quad	0x3fe93b2aec7a23b6              # double 0.78847261607108154
	.quad	0x3fc28fc2ea09a3a0              # double 0.14501224925632261
	.quad	0x3fe29dfc834418eb              # double 0.58178544652835507
	.quad	0x3fdea506860783c6              # double 0.47882235611728807
	.quad	0x3f77c5e9cecb9e00              # double 0.005803979217240407
	.quad	0x3fe19adb1291ca04              # double 0.55015329005101465
	.quad	0x3fed0ceac303b5b3              # double 0.90782678688781571
	.quad	0x3fea854c22c1dac6              # double 0.82877165592693625
	.quad	0x3fd0ba178ceb6638              # double 0.26135815393135742
	.quad	0x3fd17e5a4f00fff4              # double 0.27333696093773985
	.quad	0x3fe1820e15f41e82              # double 0.54712585723696372
	.quad	0x3feb35757a5fdce9              # double 0.85027574445021259
	.quad	0x3fe88bfee5a4ceaf              # double 0.76708931782055412
	.quad	0x3fc91bcd4f60787c              # double 0.19616094947645368
	.quad	0x3fc19807d1ea8ca4              # double 0.13745210408987873
	.quad	0x3fec8398dfa1c017              # double 0.89106410673230385
	.quad	0x3fe58355f300849f              # double 0.67228219472248785
	.quad	0x3fecad226c731804              # double 0.89613457852897271
	.quad	0x3fef8c6900317983              # double 0.98588991201158682
	.quad	0x3fdb4d18e48b6bc4              # double 0.42658064192590595
	.quad	0x3fddffb8d91b6110              # double 0.46873303605890815
	.quad	0x3fdb545949564130              # double 0.42702324067888053
	.quad	0x3fe14452b94869fe              # double 0.53959022701320669
	.quad	0x3fe62c2e51eb7f2f              # double 0.69289318084699925
	.quad	0x3fe6fe244ac1df5c              # double 0.71852316475904443
	.quad	0x3fee1712ce56575d              # double 0.94031658458946377
	.quad	0x3fd8a0c3b7459340              # double 0.38481228730806905
	.quad	0x3fe2ef75d485e6ee              # double 0.59173099049004718
	.quad	0x3febf8cbfada6be1              # double 0.8741207026936274
	.quad	0x3fdccce08ccc5494              # double 0.4500047087652288
	.quad	0x3fe38bdb30e85cff              # double 0.61082229187277892
	.quad	0x3fe150333fd5e25f              # double 0.54104006259792559
	.quad	0x3fe8be00fc19aadb              # double 0.77319382894833255
	.quad	0x3fe47d205093cadd              # double 0.64027419793850593
	.quad	0x3fe5791e5109ea9c              # double 0.6710349638736548
	.quad	0x3fe6ef3cb87c9792              # double 0.71670375855022628
	.quad	0x3febfc760ad85e6b              # double 0.87456800573540983
	.quad	0x3fa6d3641a3821c0              # double 0.044581535530656691
	.quad	0x3fde270bf86b9618              # double 0.47113322505751531
	.quad	0x3fe7831e0ecc93eb              # double 0.73475554361777762
	.quad	0x3fe125173cc59591              # double 0.53577768201346221
	.quad	0x3fd8f62a52e11378              # double 0.39002473920509528
	.quad	0x3fa312fb8beb2c60              # double 0.037254200773155999
	.quad	0x3fd6f3ba254f72b2              # double 0.3586259235724284
	.quad	0x3fd072b45d1bf560              # double 0.25700100987145014
	.quad	0x3fbd1c47b2900938              # double 0.11371276959838361
	.quad	0x3fdb4d28c02363a0              # double 0.4265844227170934
	.quad	0x3fb5edd28618bf78              # double 0.085660131205029688
	.quad	0x3fe4712df8ad374c              # double 0.63881586618092845
	.quad	0x3fdb8deed9110c6a              # double 0.43053790281209692
	.quad	0x3fdde8a123e2069c              # double 0.4673235750598026
	.quad	0x3fef9108cb1c2167              # double 0.98645438833140708
	.quad	0x3fd27ac51b9386c6              # double 0.28874328320499065
	.quad	0x3fb7cec960ca3bf0              # double 0.092999063616147514
	.quad	0x3fec34a651fe5120              # double 0.88142696394291775
	.quad	0x3fef4c6cf5857a95              # double 0.97807929948233385
	.quad	0x3fe279f3290434d5              # double 0.57738645564099988
	.quad	0x3fdaeda00e650466              # double 0.42075349240992066
	.quad	0x3fe4cf9114eeee34              # double 0.65033773506679049
	.quad	0x3fb94cda0e19d408              # double 0.0988289150644307
	.quad	0x3fba576cce5e08b0              # double 0.1028964999987092
	.quad	0x3fbb7af511cc6848              # double 0.10734492954762331
	.quad	0x3fd114fc97812426              # double 0.26690592570645533
	.quad	0x3fe902ed07da7a4c              # double 0.78160716565964483
	.quad	0x3fe0a43d132fb702              # double 0.52004865405407963
	.quad	0x3fe38fb369aa2fd5              # double 0.61129160535483129
	.quad	0x3fc4413d1dc5fc38              # double 0.15824092820909796
	.quad	0x3feb234a76509ddd              # double 0.84805796726589799
	.quad	0x3fd575a90888dc6c              # double 0.33530641396959626
	.quad	0x3fde39f32b212eae              # double 0.47228697978855905
	.quad	0x3fe0b833b3640e03              # double 0.52248559033654407
	.quad	0x3fe8b37afba9b5cd              # double 0.77190922882953716
	.quad	0x3fe0848863a272bb              # double 0.51617831668735137
	.quad	0x3fe9c2137512d94b              # double 0.80494091859763139
	.quad	0x3fcbe37bfad1b148              # double 0.21787976977374002
	.quad	0x3fdf6a66be71c070              # double 0.49086922262268384
	.quad	0x3fce5dd7695508f8              # double 0.23723881381199141
	.quad	0x3fa8af2e154596e0              # double 0.048211517426165917
	.quad	0x3f96a2435a408de0              # double 0.022103359588198646
	.quad	0x3fd3fd94827595da              # double 0.31235230198066477
	.quad	0x3fd1dd77f8cc4dec              # double 0.2791423730534166
	.quad	0x3fe7ff13fe6e8223              # double 0.74988746350942781
	.quad	0x3fd0744d86d8d50e              # double 0.25709856194164693
	.quad	0x3fe089d190f2dfc3              # double 0.51682356176660738
	.quad	0x3fe540b8cc37e51f              # double 0.6641506184234095
	.quad	0x3fe607490787a227              # double 0.6883893153254278
	.quad	0x3febb62082d95446              # double 0.8659822993892099
	.quad	0x3fead7e093fabf08              # double 0.83885220434419328
	.quad	0x3faf6bf237a3a0d0              # double 0.061370438854113751
	.quad	0x3fe3c893f5a05368              # double 0.61823461507684119
	.quad	0x3fda540fc0bf8b7e              # double 0.4113807089144571
	.quad	0x3fbc228050749a30              # double 0.10990144695515691
	.quad	0x3fecceefc79a762b              # double 0.90026082024605125
	.quad	0x3fee1c95072a8937              # double 0.94098903083457841
	.quad	0x3fec805bde1b122e              # double 0.89066880588558717
	.quad	0x3fc2502af0951b78              # double 0.14307152507009469
	.quad	0x3fed90338fe9b0b5              # double 0.92385271175364514
	.quad	0x3fd1bc8b7a4cc2c6              # double 0.27713286345810351
	.quad	0x3fe153de59428516              # double 0.54148786004603511
	.quad	0x3fec366c121ba7c0              # double 0.88164332901691722
	.quad	0x3fdd7aadd1d998b0              # double 0.46061273091471389
	.quad	0x3fe87d3f31e5cb6d              # double 0.76528892274505511
	.quad	0x3fd606a608bad29a              # double 0.34415579655186834
	.quad	0x3fe4f4ea297000b1              # double 0.65489681332839755
	.quad	0x3fde2f11bf945bc0              # double 0.47162288388193119
	.quad	0x3fa13ef7d757c440              # double 0.033683533703773083
	.quad	0x3fa75109909d9300              # double 0.045540141013395541
	.quad	0x3fbecce55c62f5e0              # double 0.12031396394282678
	.quad	0x3fdd113b50131436              # double 0.45417673892763177
	.quad	0x3fdfe6e12a454104              # double 0.49846676948529045
	.quad	0x3fc82b596ae85678              # double 0.18882291526886141
	.quad	0x3fdfc1099e999ecc              # double 0.4961570786312961
	.quad	0x3fdd786480cef2de              # double 0.46047318057007469
	.quad	0x3fd82746ba7989d4              # double 0.37739723406244008
	.quad	0x3fa93a4b6d677260              # double 0.049272877793303804
	.quad	0x3fe5b26872ffb36e              # double 0.67802832089146903
	.quad	0x3fc6b11c237e5c0c              # double 0.17727996571622417
	.quad	0x3fdf5cf2972dc160              # double 0.49004807246730842
	.quad	0x3fdd096870ead83a              # double 0.45369921710096472
	.quad	0x3fe27d0a458ef848              # double 0.57776368699683989
	.quad	0x3fea24de408c56e3              # double 0.81700050932951418
	.quad	0x3fdfb2b6426c28f4              # double 0.4952827118546701
	.quad	0x3feaf31e26466bd8              # double 0.8421774623451439
	.quad	0x3fdf8d9c78f96698              # double 0.49301826299561347
	.quad	0x3f8e2d01cd6ae5c0              # double 0.014734281617495237
	.quad	0x3fcac9628293b85c              # double 0.20927077651816972
	.quad	0x3fe49d8b08a87c50              # double 0.64423133555454548
	.quad	0x3fe20169890b2950              # double 0.56267239347770648
	.quad	0x3fd077eeb7a9568a              # double 0.25732009826365554
	.quad	0x3fd17d66564305ea              # double 0.2732787935638884
	.quad	0x3fe53422676eb3dd              # double 0.66261406137129664
	.quad	0x3fe796e696a0bbf2              # double 0.73717049998765405
	.quad	0x3fe69c73a6cbbd44              # double 0.70659811570468678
	.quad	0x3fe149846d7b144f              # double 0.54022427924122407
	.quad	0x3fccbf9ac3ade568              # double 0.22459730677273204
	.quad	0x3f920ee2da010da0              # double 0.017634911113658114
	.quad	0x3fdbad8beab2e08c              # double 0.43246744079397881
	.quad	0x3fef9b4620af5db8              # double 0.98770433791917522
	.quad	0x3fe7c454e24ac842              # double 0.74271625707320532
	.quad	0x3fd8d1e97d462f0c              # double 0.38781201585582958
	.quad	0x3fef668b0c34aef9              # double 0.98126747497505484
	.quad	0x3fd8f121e8283900              # double 0.38971755668252683
	.quad	0x3fec3e0560ac36e4              # double 0.88257092362775013
	.quad	0x3fd89b4f9f15699e              # double 0.38447943244468685
	.quad	0x3fe7fad914553e28              # double 0.74937108966145605
	.quad	0x3febf66f70ab7762              # double 0.87383243566339908
	.quad	0x3fc49bae43031d40              # double 0.16100099823072789
	.quad	0x3fe108145d5de90d              # double 0.5322362731524507
	.quad	0x3fdc5c13151dd1ce              # double 0.44311978399425989
	.quad	0x3fd251f1a0489308              # double 0.28625145580944933
	.quad	0x3fecef393ab3b7f3              # double 0.9042020937465608
	.quad	0x3fe6fcbf975be8b4              # double 0.71835307657536029
	.quad	0x3fed3684582b6b45              # double 0.91290490360857091
	.quad	0x3fd866d607711f98              # double 0.38127661444422634
	.quad	0x3fe7f60ba4db1910              # double 0.74878484915169174
	.quad	0x3fcc8d8fc66d4ea8              # double 0.22307011784379438
	.quad	0x3fe3c63feb6bc6c5              # double 0.6179504011217537
	.quad	0x3fef71f7acaaedef              # double 0.98266204570921711
	.quad	0x3fddec289edbd124              # double 0.46753898156682028
	.quad	0x3fe7afd964a90fb4              # double 0.74021596584542815
	.quad	0x3fecb2ba287da88b              # double 0.89681728275651673
	.quad	0x3fec66823deb40c3              # double 0.88751327603861119
	.quad	0x3fd3066d6281b94c              # double 0.29726729030416688
	.quad	0x3fddb383c96dadfe              # double 0.46408171339746207
	.quad	0x3fea22847b28279a              # double 0.81671356252740002
	.quad	0x3fccd366dd7cbc64              # double 0.22520147146994696
	.quad	0x3fe8feb38dbca880              # double 0.78109147723195349
	.quad	0x3feaace5a868f87e              # double 0.83360560314737575
	.quad	0x3fe98b2c6f495400              # double 0.79823896155960483
	.quad	0x3fe2fc01962b30fa              # double 0.59326247529818876
	.quad	0x3fe13b548a232159              # double 0.53849246005942597
	.quad	0x3fe4ce7b7c439a9c              # double 0.65020536680534091
	.quad	0x3fef36e41d76f588              # double 0.97545057062932105
	.quad	0x3fdcb34b2b9619da              # double 0.44844321495511752
	.quad	0x3fe7abd28545b1b7              # double 0.73972440747961954
	.quad	0x3fc6c2d5c25524e4              # double 0.17782089222809028
	.quad	0x3fe0ecc09fb3b585              # double 0.52890044395250924
	.quad	0x3fc1f5fe015b16bc              # double 0.14031958643152176
	.quad	0x3fc38401dd4e08dc              # double 0.15246604257487817
	.quad	0x3fc6f10240e0cb1c              # double 0.17923000495792329
	.quad	0x3fdff7bdfd77dc52              # double 0.49949598076586199
	.quad	0x3fce8dffe7fab638              # double 0.23870848490825991
	.quad	0x3fd4ced5ebb78d08              # double 0.32512424487340796
	.quad	0x3fe1cb6f151d0a19              # double 0.55608324168889844
	.quad	0x3f898e7984c8aac0              # double 0.012478780140630419
	.quad	0x3feb620778a99c1b              # double 0.85571645323659895
	.quad	0x3fe669ba09099b17              # double 0.70040609135762366
	.quad	0x3fd68d2825aa4ca4              # double 0.35236552885289485
	.quad	0x3fea3d5017461743              # double 0.81998447938597285
	.quad	0x3fe010bdd7d6e716              # double 0.50204364925523026
	.quad	0x3fe2c694d4854e81              # double 0.58674088962511928
	.quad	0x3fde0dc7054836fe              # double 0.46959090724782004
	.quad	0x3fc120c2a7f2ac40              # double 0.13381226730902718
	.quad	0x3fe4fbba537b6b79              # double 0.65572849564647051
	.quad	0x3fd7af79c2bf4f28              # double 0.37008518236437959
	.quad	0x3fce115125c25b14              # double 0.23490347236357734
	.quad	0x3fc7b7061d0fb6a8              # double 0.18527294558537233
	.quad	0x3fe5890147707fcc              # double 0.67297424271600326
	.quad	0x3fdd564502c3330e              # double 0.45839047689223456
	.quad	0x3fe3ec5813af815f              # double 0.62260059208714924
	.quad	0x3fd2b86bb6138418              # double 0.29250614910967121
	.quad	0x3fd904e13e279e1e              # double 0.39092284269142563
	.quad	0x3fdf6a39d955b768              # double 0.49085851883034204
	.quad	0x3fc0aff18123b144              # double 0.13036936574588698
	.quad	0x3fedff6c19cf2e21              # double 0.93742947617414896
	.quad	0x3fe5f857c3c1f80b              # double 0.6865652869598774
	.quad	0x3fb28c85fd3a5d98              # double 0.072456716845741176
	.quad	0x3feba016bc818a00              # double 0.86329209153728925
	.quad	0x3fdd8615a7892b2c              # double 0.4613088737575477
	.quad	0x3fb18c005a972f78              # double 0.068542501561010272
	.quad	0x3fd58e9dd5c7eff8              # double 0.33682962300349528
	.quad	0x3fefa7fa78874214              # double 0.98925517597860102
	.quad	0x3fede3e27d14ae2e              # double 0.9340679591163672
	.quad	0x3fc33c0ffa91189c              # double 0.15027045950609341
	.quad	0x3fd0ff8d22986db4              # double 0.26559761408290261
	.quad	0x3fcff3efde3dd908              # double 0.24963186599388387
	.quad	0x3fe972bd6e63bb45              # double 0.79525634346450913
	.quad	0x3fe9d3b380ff5803              # double 0.8070924300652681
	.quad	0x3fe2c83123884edf              # double 0.58693749370510406
	.quad	0x3febd9b4eb9601db              # double 0.87032552731403301
	.quad	0x3fe27529519f3977              # double 0.57680192891875393
	.quad	0x3fe59976ba1a4dae              # double 0.67498337124054841
	.quad	0x3fe22edf1c765237              # double 0.56822162207624316
	.quad	0x3fc5acddf50d708c              # double 0.16933798280195267
	.quad	0x3fead341a3665182              # double 0.8382881347084068
	.quad	0x3fe1a4f90583a941              # double 0.55138827397357926
	.quad	0x3fbe76a812a8f770              # double 0.11899805503432304
	.quad	0x3fd7e2676bbbecf8              # double 0.37319360276133251
	.quad	0x3fe2a9351d4f689f              # double 0.58315520977636826
	.quad	0x3fe8cbfa75be979e              # double 0.77489970204327441
	.quad	0x3fefb8a14ac63ec5              # double 0.99128784756063537
	.quad	0x3f96560475cdf380              # double 0.021812505426612727
	.quad	0x3fdd4c3a4abf1c02              # double 0.45777756976571038
	.quad	0x3febdbe2e2def7ff              # double 0.8705915862153687
	.quad	0x3fcc54e0e04373e8              # double 0.22134028387418359
	.quad	0x3fdfb3904cf8d4b2              # double 0.49533469692989762
	.quad	0x3feb53bba53d38be              # double 0.85397131226797973
	.quad	0x3fe2381f62a66789              # double 0.56935090320188053
	.quad	0x3fe873fdc9deadb7              # double 0.76415910175040025
	.quad	0x3fda9f8c994851de              # double 0.41598811120027601
	.quad	0x3fa9b055ff15a840              # double 0.050173461330658586
	.quad	0x3fdc3b53f46a590a              # double 0.44112109059041471
	.quad	0x3fc8487268575be0              # double 0.18971090407168756
	.quad	0x3fe8cffa5a7db912              # double 0.77538793252986893
	.quad	0x3fe6c3164f9b1f0d              # double 0.7113143496326032
	.quad	0x3fd88cb68b26d07e              # double 0.3835884436514404
	.quad	0x3febcf8540e33579              # double 0.86908209489199273
	.quad	0x3fcf4abb7d455894              # double 0.24446815125219656
	.quad	0x3fde55bd1a62ce92              # double 0.4739830739665446
	.quad	0x3fd080036f20e4d0              # double 0.25781331875221003
	.quad	0x3fd7dd77ce1febb4              # double 0.37289233331074034
	.quad	0x3fcd1f05679c541c              # double 0.22750918921579533
	.quad	0x3fe66304f1977bec              # double 0.69958731828580545
	.quad	0x3fb67f1ec811cf20              # double 0.087877200932606758
	.quad	0x3fef89b510b578a8              # double 0.98555997146083473
	.quad	0x3fcaa38bf76020a8              # double 0.20811605051881554
	.quad	0x3fd7849ecb005b5e              # double 0.3674694998202791
	.quad	0x3fec8f05f3609085              # double 0.8924588921986617
	.quad	0x3fe6966e0b1d24bf              # double 0.70586301966354614
	.quad	0x3fef117d7fa53db8              # double 0.9708850377154965
	.quad	0x3fee958967373e21              # double 0.95575399550756768
	.quad	0x3fd2c5155070b532              # double 0.29327900748724567
	.quad	0x3fd3fb648958bff4              # double 0.31221879399072283
	.quad	0x3fd9fc1905150d9e              # double 0.40601182457268148
	.quad	0x3fb8eb497093eca8              # double 0.097340192780324686
	.quad	0x3fd753376a47062a              # double 0.36445412996917759
	.quad	0x3fd2badf0a7d5a06              # double 0.29265571617489206
	.quad	0x3fec6002df8b9a42              # double 0.88672012005992706
	.quad	0x3fc2cd9544920c2c              # double 0.14689889763039454
	.quad	0x3fe7b788257b14fe              # double 0.74115378685442557
	.quad	0x3fa8b9a18e85e270              # double 0.048291252754045
	.quad	0x3fc3fa01f614cf3c              # double 0.15606712833106851
	.quad	0x3fd33be74d046644              # double 0.3005312206383659
	.quad	0x3fd101271ae9cd7c              # double 0.26569535854579107
	.quad	0x3feae11892ed4a0b              # double 0.83997753807699505
	.quad	0x3fd62930a1b46b58              # double 0.34626403609734302
	.quad	0x3fe01646b07471cb              # double 0.50271925414886576
	.quad	0x3fecdd4215ba9bae              # double 0.90200905078824234
	.quad	0x3f519ad0ba10ba00              # double 0.0010745085094289175
	.quad	0x3fe0cc9634b47c5c              # double 0.52497396749448511
	.quad	0x3fe9c65241f9f001              # double 0.80545914541244212
	.quad	0x3fd5bb61ea54aefa              # double 0.3395619190584821
	.quad	0x3fd3b9d68e2ea6dc              # double 0.30821765789970157
	.quad	0x3fbc0aa56380ae38              # double 0.10953744582428093
	.quad	0x3fec66312bbba063              # double 0.88747461835465591
	.quad	0x3fdff6ceaf2d5606              # double 0.49943892581117699
	.quad	0x3f99eef24f33cd00              # double 0.025325571140411007
	.quad	0x3fd8058595ccfd22              # double 0.37533702496507904
	.quad	0x3feb29a4c05789a3              # double 0.84883344237123415
	.quad	0x3fc7c4f7d4120734              # double 0.18569848876000494
	.quad	0x3fc3f555f1572bc0              # double 0.15592455181317
	.quad	0x3fe377df00fd3023              # double 0.6083827037159647
	.quad	0x3fef5175331cd06e              # double 0.97869358046456312
	.quad	0x3fed0f9d9c266127              # double 0.9081562089732288
	.quad	0x3fd00304c9961dde              # double 0.25018424688502516
	.quad	0x3fdd94dbb0c8a572              # double 0.46221058143654326
	.quad	0x3fd5b141c10ccc4a              # double 0.33894389965570737
	.quad	0x3f9762a8fdd23040              # double 0.022837296001441354
	.quad	0x3feb38a715a6907c              # double 0.85066560963288351
	.quad	0x3fe3de37bce48142              # double 0.62087618725858129
	.quad	0x3fe968344e1da8cd              # double 0.79397025353434858
	.quad	0x3fd0736592be26cc              # double 0.25704325991010246
	.quad	0x3fe4bdcb586341e0              # double 0.64816825164058045
	.quad	0x3fce2e3ab7cd568c              # double 0.2357858083220673
	.quad	0x3fde05ad34adabae              # double 0.4690964712560185
	.quad	0x3fcbeca3bc60cf2c              # double 0.21815916727211382
	.quad	0x3fe28032c7c62a19              # double 0.57814921396613095
	.quad	0x3fe9dce5f1bc6cf7              # double 0.80821511472768648
	.quad	0x3fea76ba9c80cef0              # double 0.82699328009627315
	.quad	0x3fe973bd743af9fe              # double 0.79537842465634845
	.quad	0x3fe7d76551ced359              # double 0.74504343011958973
	.quad	0x3fe209036500c8fa              # double 0.56360025145684678
	.quad	0x3fe141010670ec8a              # double 0.5391850591471592
	.quad	0x3fe875553e76f38f              # double 0.76432287407043187
	.quad	0x3fde4220cfb592de              # double 0.47278614315136547
	.quad	0x3f94c8da1212e780              # double 0.020297438958301495
	.quad	0x3fee58fc3c6abf65              # double 0.94836246299926741
	.quad	0x3fd95aeb04b2d644              # double 0.39617419680448429
	.quad	0x3fe938e2084c2afa              # double 0.78819371815310935
	.quad	0x3fe17163c7600587              # double 0.54509152355619583
	.quad	0x3feb994bbc1db779              # double 0.86246287099287067
	.quad	0x3fe58f56a4b3ab44              # double 0.67374736946417402
	.quad	0x3fde1e79644e742c              # double 0.470609996753242
	.quad	0x3fe00c6a0bcec241              # double 0.50151541048223447
	.quad	0x3fe61c2c169e143d              # double 0.69093899171333073
	.quad	0x3feb440be44219da              # double 0.85205645162278221
	.quad	0x3fd73fdac465d630              # double 0.36327237300369841
	.quad	0x3fe0b98718f3f675              # double 0.52264742730740343
	.quad	0x3fe96729e1b26e9b              # double 0.79384321290440896
	.quad	0x3fe78455046d9414              # double 0.73490382065631588
	.quad	0x3fed851184f582a4              # double 0.92249370544967179
	.quad	0x3fedcbd0d62b8c12              # double 0.9311298544893154
	.quad	0x3fc841c5351bdd30              # double 0.18950715153889908
	.quad	0x3f9026b4664dd3e0              # double 0.015772646659986012
	.quad	0x3fc8008ebea001ac              # double 0.18751701648581098
	.quad	0x3fda378cbe8176b8              # double 0.40964048961709976
	.quad	0x3fc78a1eed33ae58              # double 0.18390261251566886
	.quad	0x3fcc718ba6a5bb10              # double 0.22221513402060866
	.quad	0x3fe8b3d6e2e0f173              # double 0.7719530516838361
	.quad	0x3fe51126c7e10aa0              # double 0.65834368742828886
	.quad	0x3febcbadcf0c22f7              # double 0.86861315192172028
	.quad	0x3feab6e11702e318              # double 0.83482412809744044
	.quad	0x3fedcb98a67b8a77              # double 0.93110306278351984
	.quad	0x3fec3a8c9050142d              # double 0.88214710413069997
	.quad	0x3fe7b12c12ea975d              # double 0.74037746138194971
	.quad	0x3fc726ca25569600              # double 0.18087126563220579
	.quad	0x3febe8d333f7783b              # double 0.87217102193586216
	.quad	0x3fe1abca2fd70165              # double 0.55222043365214957
	.quad	0x3fe8624e1c07b50e              # double 0.76200013613348161
	.quad	0x3fec916ef352fe4a              # double 0.89275310062652946
	.quad	0x3fd0569c506b61de              # double 0.25528629163230032
	.quad	0x3fd80cac8b8ac734              # double 0.37577355982931526
	.quad	0x3fc321e68f0c2248              # double 0.14947206482635722
	.quad	0x3fe4c3fe0f80eb08              # double 0.6489248564533634
	.quad	0x3fe59f7a3a6fc04a              # double 0.67571746266731592
	.quad	0x3fd51bca2e42d970              # double 0.32982115285576352
	.quad	0x3fe4fba73a1e17f8              # double 0.65571938849529854
	.quad	0x3fea29aa19e8cc70              # double 0.81758599338935589
	.quad	0x3fa3e344ba91a6f0              # double 0.03884329583600088
	.quad	0x3fdc9cdc05cf66e6              # double 0.4470739418735391
	.quad	0x3fc67f0d75d42a28              # double 0.17575233701093507
	.quad	0x3fe7c9a12eb5c3c0              # double 0.74336299059915945
	.quad	0x3feb5dadbdcf12d4              # double 0.85518538543746069
	.quad	0x3fe4022dcf5e5ead              # double 0.62526598455129589
	.quad	0x3feeb4a439723203              # double 0.9595509645455994
	.quad	0x3fd0155420ffeda6              # double 0.2513017961752787
	.quad	0x3fc8b44c84bd4ed0              # double 0.19300228578014478
	.quad	0x3fdd83678ec92992              # double 0.46114529556202755
	.quad	0x3fc0c8f9120809bc              # double 0.1311332071346224
	.quad	0x3fe318dd5b227a59              # double 0.59678523826353136
	.quad	0x3fef52a5ac7daa6d              # double 0.97883876504540767
	.quad	0x3fa84d4fd1204610              # double 0.047464842107853511
	.quad	0x3fecf597cd1bef20              # double 0.90497961101889146
	.quad	0x3fbfd79279b44630              # double 0.12438312026304099
	.quad	0x3fc0656d33ed4ccc              # double 0.12809529338355785
	.quad	0x3fed98fdb472d78a              # double 0.92492566341273741
	.quad	0x3fe6a8fc8a15998a              # double 0.70812823266605673
	.quad	0x3fe64c66a1b7f666              # double 0.69682628236450905
	.quad	0x3fe60796c7a2e9af              # double 0.68842638961296199
	.quad	0x3fc3544f3a836984              # double 0.15101042134376652
	.quad	0x3f8398964df3f400              # double 0.009568380598006243
	.quad	0x3fe42e356762fc9d              # double 0.63064069931705868
	.quad	0x3fe7050590a499aa              # double 0.71936300516681695
	.quad	0x3fe500e1475d5f58              # double 0.65635742128777519
	.quad	0x3fd49432378205f2              # double 0.32154517574971841
	.quad	0x3fed34748b76df15              # double 0.91265322913293068
	.quad	0x3fe89666cb3e70e2              # double 0.76835956283641971
	.quad	0x3fe86bdeeb007ae1              # double 0.76316781901172359
	.quad	0x3fcafaf4b0e3b394              # double 0.21078356396847353
	.quad	0x3fb5a878811cbcc0              # double 0.084601909181162505
	.quad	0x3fdb6cc616139d8e              # double 0.42851402431411934
	.quad	0x3fd9fbdd68d043b2              # double 0.40599761233994081
	.quad	0x3fed3b301216a720              # double 0.91347507031352748
	.quad	0x3fe266d6c80123eb              # double 0.57505358756418212
	.quad	0x3fe1f3f960ed2229              # double 0.56103199892919975
	.quad	0x3fd371aa50e77c06              # double 0.30381257916263882
	.quad	0x3fb64865a331f3c0              # double 0.087042190878448444
	.quad	0x3fde98ea2893740c              # double 0.47808317148684476
	.quad	0x3fc7c2dd9fe05cb4              # double 0.18563432985749773
	.quad	0x3fd2bc62723f7360              # double 0.2927480807973577
	.quad	0x3febede6b82a56a7              # double 0.8727906796436472
	.quad	0x3fe4cce76263d156              # double 0.65001267639903904
	.quad	0x3fe5f8c1fdcfd87e              # double 0.68661593983303226
	.quad	0x3fd3c169771b8a88              # double 0.30867993003463612
	.quad	0x3fd0944b79afa5ce              # double 0.25905119784746666
	.quad	0x3fe2e3b2a4577531              # double 0.59029514406180372
	.quad	0x3fd82fa5f27e417e              # double 0.37790821724868084
	.quad	0x3feabd4592b7a97f              # double 0.83560446410892542
	.quad	0x3fd7d08919f95c1c              # double 0.37210300003556696
	.quad	0x3f90e15384393000              # double 0.016484551377558887
	.quad	0x3fda2c5ecde55880              # double 0.40895814997691815
	.quad	0x3fdd478dde1acc94              # double 0.45749231996450956
	.quad	0x3fe2818ca041cc99              # double 0.57831412601662457
	.quad	0x3fd91d526b3fbf38              # double 0.39241466973816186
	.quad	0x3fe434980294ef38              # double 0.63142014030697791
	.quad	0x3fd7b5ad8572a586              # double 0.37046373397841881
	.quad	0x3fd6a88de0cdc58e              # double 0.35403773263450311
	.quad	0x3fd3b9b4cc3129ae              # double 0.30820960941914677
	.quad	0x3febf6f70bbbccf3              # double 0.87389709750860189
	.quad	0x3fe9a94cc75204f9              # double 0.80191649369967799
	.quad	0x3fead800ac77469c              # double 0.83886750874281146
	.quad	0x3fb5673251839180              # double 0.083605904484619131
	.quad	0x3fec4741682c86ad              # double 0.88369818064184857
	.quad	0x3fdb10851fcb650e              # double 0.42288330178196609
	.quad	0x3fe9dc9354e48e95              # double 0.80817572193741916
	.quad	0x3fe766429654ae65              # double 0.73123292314035082
	.quad	0x3fef0dc5174b2083              # double 0.9704308943701253
	.quad	0x3fe80556cb4cb751              # double 0.75065173823325371
	.quad	0x3fcb7e9c2db2e8ec              # double 0.21480133277311297
	.quad	0x3fe8ce6ba29023be              # double 0.77519780874819566
	.quad	0x3fdfc567561183dc              # double 0.49642356305235835
	.quad	0x3f6e853d09aed200              # double 0.0037256424088474294
	.quad	0x3fe97d8a81629244              # double 0.79657483358875724
	.quad	0x3fe87693891b67f3              # double 0.76447464731904657
	.quad	0x3feddb4db2f4813e              # double 0.93302044822852515
	.quad	0x3fd47b9311fe708c              # double 0.3200423885080077
	.quad	0x3fe027a70efe1fdb              # double 0.50484040191895063
	.quad	0x3fed86b80b1b6ce5              # double 0.92269518060075184
	.quad	0x3fc33e466c4e6dd4              # double 0.15033798492809913
	.quad	0x3fc28138034d3ad8              # double 0.144568444835804
	.quad	0x3fe2e96c41dc6735              # double 0.59099400390116463
	.quad	0x3fbe247bc8ef8eb8              # double 0.11774419456156238
	.quad	0x3fd6249fbebc32d4              # double 0.34598535181502865
	.quad	0x3fe64436b854aeea              # double 0.69582687379940222
	.quad	0x3fe44d7098e738fe              # double 0.63445310462864746
	.quad	0x3fef53b5da2e69b4              # double 0.97896854985747561
	.quad	0x3fe9883b28054786              # double 0.79787977043655256
	.quad	0x3fe5b289103f5c36              # double 0.67804387257900234
	.quad	0x3fe5161b87fbcba7              # double 0.65894867476742014
	.quad	0x3fe5d5d66e6c6206              # double 0.6823532253939113
	.quad	0x3fc6929e4ce64484              # double 0.17634943728311125
	.quad	0x3fac4e03123ed6b0              # double 0.055282684304456153
	.quad	0x3fb51ac04bf95ca8              # double 0.082439440296513511
	.quad	0x3fe3a90f1eb4cfdd              # double 0.61438709256480772
	.quad	0x3feba138d98ef22d              # double 0.86343042842742579
	.quad	0x3febf6a6b4a6541c              # double 0.87385878832958807
	.quad	0x3fe575e0f3b13020              # double 0.67063949199792106
	.quad	0x3fcc661a0e2a2cc4              # double 0.22186589900625198
	.quad	0x3fdd76895909af7a              # double 0.46035989470578154
	.quad	0x3feaffd77d96fefb              # double 0.84373068360579795
	.quad	0x3fcba640bb139808              # double 0.21601113447758302
	.quad	0x3fe0bb04bcf23a5d              # double 0.52282940772586139
	.quad	0x3fc6696d51151d20              # double 0.17509237727265603
	.quad	0x3fe76d10af93edf7              # double 0.7320636204962615
	.quad	0x3fe1215e4439a852              # double 0.53532327008475478
	.quad	0x3fdec2743de57e34              # double 0.48061853451324343
	.quad	0x3fe3e2eafff6d72c              # double 0.62144994729053371
	.quad	0x3fd16d838b5729c0              # double 0.27230919463604764
	.quad	0x3fe4434be66ca66f              # double 0.63321490292328331
	.quad	0x3fe5bbdbec8d589a              # double 0.67918201638782993
	.quad	0x3fe1e546abcf4388              # double 0.55923780018393732
	.quad	0x3fed6b0b63985103              # double 0.91931695415635806
	.quad	0x3fe4950067b2ccaf              # double 0.64318866971588828
	.quad	0x3fdac1459b5ba968              # double 0.41804638072667055
	.quad	0x3fdc0a6bee0691f8              # double 0.43813608402913884
	.quad	0x3fe3e4ba70f217bd              # double 0.62167093333913892
	.quad	0x3f7b04b32caeae80              # double 0.0065962790494428214
	.quad	0x3fdfdd7b680e93fa              # double 0.49789319192706183
	.quad	0x3fd9cb47fa371940              # double 0.40303229746895752
	.quad	0x3fcb9c6959945224              # double 0.21571080087655148
	.quad	0x3fe241329126fb53              # double 0.57045868253758625
	.quad	0x3fe108a481d31230              # double 0.53230500561091354
	.quad	0x3fc3d4cae4b5e1e4              # double 0.1549314133406049
	.quad	0x3fd1f4dc1571931c              # double 0.28057005018335857
	.quad	0x3fd0e95bfebcb6ee              # double 0.2642431247394218
	.quad	0x3fbb19e5e6cc6fe0              # double 0.10586392292719848
	.quad	0x3fe2ef51be8a7a10              # double 0.59171378340744418
	.quad	0x3fefb86edb7b966c              # double 0.99126379840590805
	.quad	0x3fe0b72bc2a2fcef              # double 0.52235973372435562
	.quad	0x3fd6c09a6a8af8a0              # double 0.3555055656869488
	.quad	0x3fedc3060cdaceea              # double 0.93005659590423062
	.quad	0x3fc6cf628876dcbc              # double 0.17820388472839521
	.quad	0x3fecfba61bdec558              # double 0.90571885531805219
	.quad	0x3fef755e6daef006              # double 0.98307725355653086
	.quad	0x3fef918168f13663              # double 0.98651190277605527
	.quad	0x3fc1a665654f78dc              # double 0.13789050528334357
	.quad	0x3fe021ab14745ac2              # double 0.50410989756604629
	.quad	0x3fe3b56ae2bdbfe2              # double 0.61589569363968288
	.quad	0x3fd1c75d7a6ea69e              # double 0.27779328304550599
	.quad	0x3fe4eaab7f5152a0              # double 0.6536462294266876
	.quad	0x3fea992728e743e8              # double 0.83119543065015211
	.quad	0x3fe7100c569034d0              # double 0.72070900828262019
	.quad	0x3fde7fc1469fe9e4              # double 0.47654754540385924
	.quad	0x3fd25e0e3b50bbd8              # double 0.28699069778934705
	.quad	0x3fe5b4496e49efb7              # double 0.67825767079147326
	.quad	0x3f9ffd5678aa4380              # double 0.031239844431698582
	.quad	0x3fd034f14f6cec78              # double 0.25323136097330901
	.quad	0x3fc71999e769c8a8              # double 0.18046878623460327
	.quad	0x3fe078c15c93fb3f              # double 0.51474063951159355
	.quad	0x3fd767a381614258              # double 0.36570060381658243
	.quad	0x3fcfc91039172918              # double 0.24832346713657993
	.quad	0x3fdd0286a8f4fb8e              # double 0.45327917575553378
	.quad	0x3fd3a9c9aa1331c8              # double 0.30723802193531613
	.quad	0x3fd377179feecb0c              # double 0.30414381617008313
	.quad	0x3feec3553b45ee09              # double 0.96134435250081751
	.quad	0x3fe1e8b989faa37c              # double 0.55965878438028893
	.quad	0x3fa585d422ac94b0              # double 0.04203665660160405
	.quad	0x3febf58a3299ec03              # double 0.87372312434251886
	.quad	0x3fdb94c63b448736              # double 0.43095546520099803
	.quad	0x3fedd999d5a3c746              # double 0.93281261183276665
	.quad	0x3fd97f8166cb6920              # double 0.39840731657536033
	.quad	0x3fd2373c56796686              # double 0.28462131924388989
	.quad	0x3fe7be5bd82b8dd6              # double 0.74198715420464612
	.quad	0x3fec3f098aadbc18              # double 0.88269497953104104
	.quad	0x3fcf931ec41f8f98              # double 0.2466772515900828
	.quad	0x3fe5d3231f77a2b0              # double 0.68202358385049955
	.quad	0x3fdfa63c5a7f037c              # double 0.49452122533335063
	.quad	0x3fdeae37592b434e              # double 0.47938331325444927
	.quad	0x3fd3fa7e9bda27a0              # double 0.31216397495210835
	.quad	0x3fe0471f286a33d6              # double 0.50868184941793504
	.quad	0x3fe799ba785c6f10              # double 0.73751567371388838
	.quad	0x3fedc913a2f2bf6d              # double 0.93079549623324243
	.quad	0x3fbfd80e52bdb4f0              # double 0.12439050216717695
	.quad	0x3fef588994339143              # double 0.97955779023735833
	.quad	0x3fef99c1f404d1c8              # double 0.98751924190451578
	.quad	0x3fed5a20f543005a              # double 0.91725204374962321
	.quad	0x3fdb75a13337a370              # double 0.42905454637234808
	.quad	0x3fdf5053188efa56              # double 0.4892776241139577
	.quad	0x3fd03225252a589a              # double 0.25306061391291623
	.quad	0x3feba850f34e06b5              # double 0.86429641266314283
	.quad	0x3fe8be2b08518abe              # double 0.77321387886725979
	.quad	0x3fcace151b603ee8              # double 0.20941413723675528
	.quad	0x3fb9d4e5be02ef90              # double 0.10090480698539595
	.quad	0x3fd0206d3f4bf952              # double 0.25197917157483574
	.quad	0x3fe10298cc7f859b              # double 0.53156700078050123
	.quad	0x3fdd41a851d5d7bc              # double 0.45713241569262286
	.quad	0x3feb59577cacb637              # double 0.85465597486990574
	.quad	0x3feeb338a3455418              # double 0.95937759293394986
	.quad	0x3fc9e5cf4b738464              # double 0.20232573684828303
	.quad	0x3fe81ce2f094d34a              # double 0.75352618206543664
	.quad	0x3fbb87625444c578              # double 0.10753454739894674
	.quad	0x3fe22eb1a5eac0bd              # double 0.56819994359650361
	.quad	0x3fea7c2c77946651              # double 0.82765792231948343
	.quad	0x3fd6d97b8dbe7e96              # double 0.35702408640097738
	.quad	0x3fca875baa270248              # double 0.20725580032559976
	.quad	0x3fe2101f0e003e38              # double 0.56446793303070475
	.quad	0x3fe647744bf488fc              # double 0.69622244677546474
	.quad	0x3fed16f6e5acebf6              # double 0.90905327661982827
	.quad	0x3fe24c6e95536536              # double 0.57183007397831065
	.quad	0x3fe96a2853f846a5              # double 0.79420868301732084
	.quad	0x3fd2c459db4638f4              # double 0.29323431409365175
	.quad	0x3fea7684d0754037              # double 0.82696762766318599
	.quad	0x3fb005402f6eb210              # double 0.062580119686295399
	.quad	0x3fb6cc497486b3e0              # double 0.089054671238684602
	.quad	0x3fef4cc13219542e              # double 0.97811946663808214
	.quad	0x3fb27b1539c48ba8              # double 0.072190596202331592
	.quad	0x3fcc5c4cff886110              # double 0.22156679608520635
	.quad	0x3fca594d5fcabd1c              # double 0.20585028817502227
	.quad	0x3fcaa03f61473dc8              # double 0.2080153679839738
	.quad	0x3fed59ed9acec88f              # double 0.91722755657089461
	.quad	0x3fb8e7bf3a53c820              # double 0.097286178340965978
	.quad	0x3fd6f01d7742966c              # double 0.35840546270842455
	.quad	0x3fcfbabc3ab8e37c              # double 0.24788620822235063
	.quad	0x3fed364d69f39c9b              # double 0.91287871068643101
	.quad	0x3fc907233b894b80              # double 0.19553032309576324
	.quad	0x3fcdb1eb2f6b6ea8              # double 0.23199214759266806
	.quad	0x3fa914d6ad1782e0              # double 0.048987110738158313
	.quad	0x3fd5c96dbb864bfa              # double 0.34041922867726238
	.quad	0x3fec9407550a7f97              # double 0.893069902511331
	.quad	0x3fe53e8cfae4ce59              # double 0.66388558390321883
	.quad	0x3fe36eb743c7a351              # double 0.60726512182473347
	.quad	0x3fd95197911f9c98              # double 0.39560498401847033
	.quad	0x3fe5b1619cb99be8              # double 0.67790299043997226
	.quad	0x3fd4083fddcfdfde              # double 0.31300350819901535
	.quad	0x3fc6e3d206728464              # double 0.17882752718745387
	.quad	0x3fe37ad6ed136b9c              # double 0.60874506286505747
	.quad	0x3fe51fac2d1839fa              # double 0.66011627967401343
	.quad	0x3fef6157621f5757              # double 0.98063248791252533
	.quad	0x3fe445ab97b841af              # double 0.63350467331661331
	.quad	0x3fe555a96c6f1b76              # double 0.66670676401632423
	.quad	0x3fec78926da4da27              # double 0.88971825995287623
	.quad	0x3fc1069ca7af80c8              # double 0.13301428020259309
	.quad	0x3fe5ae160e28c840              # double 0.67750075116624231
	.quad	0x3fc7c136106cd500              # double 0.18558383752830565
	.quad	0x3fe74870061695af              # double 0.72759247960191498
	.quad	0x3fe0679c4d43eb84              # double 0.5126477727020391
	.quad	0x3fdd6f61405f3c00              # double 0.45992308889702826
	.quad	0x3fe6458e3ae0cb3e              # double 0.6959906721079745
	.quad	0x3fd27b6712da5190              # double 0.28878189889044226
	.quad	0x3fc6abce9e4c02d4              # double 0.17711813668576915
	.quad	0x3fea9bbde0fdca87              # double 0.83151143973948727
	.quad	0x3fe0e43e0bc1db08              # double 0.5278616170533903
	.quad	0x3fda09bdd4f09858              # double 0.40684457583336586
	.quad	0x3fef7c8b0829edfb              # double 0.9839530143212295
	.quad	0x3fe53fa89402b660              # double 0.66402081402129554
	.quad	0x3fec9172da78665e              # double 0.89275496168120205
	.quad	0x3fd8fb8b311a5068              # double 0.39035301013178136
	.quad	0x3fb7ca965dc3abe0              # double 0.092934987918553258
	.quad	0x3fd3a8413760684c              # double 0.30714445503111132
	.quad	0x3fe1d50b25613c27              # double 0.55725629139658828
	.quad	0x3fd0f37f29a99a84              # double 0.26486186092953568
	.quad	0x3fe7121df2799d4d              # double 0.72096154554757563
	.quad	0x3fc80d8eb1187990              # double 0.18791373870130856
	.quad	0x3fc946f34fe9b670              # double 0.19747773553847336
	.quad	0x3fe02d027083d580              # double 0.5054943273122916
	.quad	0x3fe23101e1488dbc              # double 0.56848234177271406
	.quad	0x3feba2f3e4f595c5              # double 0.86364168852440371
	.quad	0x3fe99cf2f3c800f4              # double 0.80040881742027503
	.quad	0x3fe44932273b0055              # double 0.63393504774286191
	.quad	0x3fddf7f063a3c1cc              # double 0.46825799684941383
	.quad	0x3fd23ae27468cb9a              # double 0.28484403007603876
	.quad	0x3fedc8b6db1b7092              # double 0.93075125498173095
	.quad	0x3feb0dd6a648e869              # double 0.84543926694392468
	.quad	0x3fd470d8eef136aa              # double 0.31938765844538841
	.quad	0x3feac836d827bf64              # double 0.83694021432709719
	.quad	0x3fe2caa7bc9b7bff              # double 0.58723818623900559
	.quad	0x3fe5d4e52304bb1d              # double 0.68223816718623065
	.quad	0x3f9df5004c847e80              # double 0.029254917783986034
	.quad	0x3fddfa8c2c7a6314              # double 0.4684172090870089
	.quad	0x3fe3a6fb29cff122              # double 0.61413343588313674
	.quad	0x3fef617bfa327bba              # double 0.98064993731156069
	.quad	0x3feb91028bac1bb2              # double 0.86145140914674401
	.quad	0x3fec57f35ab15e74              # double 0.8857361575455358
	.quad	0x3fe8768cca644dda              # double 0.76447143106127702
	.quad	0x3fef42c0602891a0              # double 0.97689837246848654
	.quad	0x3fedfdd5d629de02              # double 0.9372357542878833
	.quad	0x3fe8801a877d07b8              # double 0.76563765013292251
	.quad	0x3fe2437889761e5e              # double 0.57073618743829591
	.quad	0x3fef229c81287193              # double 0.97297501779717021
	.quad	0x3fd7b8de0feb18d6              # double 0.37065841249967713
	.quad	0x3fe1e75e8ff63808              # double 0.55949333303010551
	.quad	0x3fdf0a5ff484ced4              # double 0.48500822905337526
	.quad	0x3fa496fc02ef7360              # double 0.040214419706649407
	.quad	0x3fd01a155d734006              # double 0.25159200788493796
	.quad	0x3fdecca6471bfb48              # double 0.48124081558483001
	.quad	0x3fd0c8cfcf44ef34              # double 0.26225657693042881
	.quad	0x3fe43c9573391100              # double 0.63239548210597718
	.quad	0x3fe3a069b16f0f21              # double 0.61333164839786403
	.quad	0x3fe2030dfdc3b004              # double 0.5628728824935938
	.quad	0x3fe61c09c5f4fcbf              # double 0.69092262900803536
	.quad	0x3fd1942fcb42b736              # double 0.27466959809941061
	.quad	0x3fdf838eb578957a              # double 0.49240462991505007
	.quad	0x3fecf62536118dfe              # double 0.90504704056041851
	.quad	0x3fdb297c435e400e              # double 0.42440706805155137
	.quad	0x3fd27e7d56e86134              # double 0.28897031294902153
	.quad	0x3feea3c8835ac3e6              # double 0.95749307303605913
	.quad	0x3fe6f08206e2a041              # double 0.71685887665535841
	.quad	0x3fbc05294e0a3778              # double 0.10945375590583051
	.quad	0x3fe11f46ed17a936              # double 0.53506799990763088
	.quad	0x3fdcb443bb6695fa              # double 0.44850247670032639
	.quad	0x3fd42dd39df5e540              # double 0.31529703546364729
	.quad	0x3fe7680ef5efaf65              # double 0.73145244631221529
	.quad	0x3fdf3b5a483e7558              # double 0.48799759917331675
	.quad	0x3fe97071a587b53c              # double 0.79497606592273184
	.quad	0x3fbce10442867920              # double 0.1128084814467667
	.quad	0x3fdb6020b55e6b48              # double 0.42774217330741182
	.quad	0x3fdfec264ee5e8e6              # double 0.49878843026057351
	.quad	0x3f5a5e0843df4a00              # double 0.0016093331064338523
	.quad	0x3fdd9fdcf0f465cc              # double 0.4628822663376837
	.quad	0x3fb53ddb75d6eb30              # double 0.082975116986671038
	.quad	0x3fef3f23cbdfcfcd              # double 0.976457498733447
	.quad	0x3fedf0b08d49ab23              # double 0.9356310615088187
	.quad	0x3feb5d29baae0415              # double 0.85512243710411673
	.quad	0x3fe7c32e9c3dd22b              # double 0.74257593646922737
	.quad	0x3fe195ba6581b907              # double 0.54952735734494318
	.quad	0x3fece83a96f38725              # double 0.9033482502238469
	.quad	0x3fea9f2a0f920fc0              # double 0.83192923585055922
	.quad	0x3fc418feb2424f04              # double 0.15701278404286978
	.quad	0x3fb6e805bc3fea08              # double 0.089477880916014496
	.quad	0x3fd83cbc1e2eecf6              # double 0.37870696017826277
	.quad	0x3fe258c2479c0b47              # double 0.57333482729186691
	.quad	0x3fec11cd8acdaa19              # double 0.87717320547136801
	.quad	0x3fc267b3d029fed4              # double 0.14378974594364158
	.quad	0x3fe7341aa37cf221              # double 0.72511035853637307
	.quad	0x3f89c6820b383a00              # double 0.01258565518130883
	.quad	0x3fed7d843969cf27              # double 0.92157183850801949
	.quad	0x3fb9cc0a992b3500              # double 0.1007696746775828
	.quad	0x3fec04e968d3704b              # double 0.87559957956137546
	.quad	0x3fde124b57f9bef2              # double 0.46986659613956683
	.quad	0x3fe67a5f55acb39f              # double 0.70243803723643683
	.quad	0x3fe26791fe17e9a3              # double 0.57514285686129474
	.quad	0x3fc39b970bb01940              # double 0.15318573065469288
	.quad	0x3fe839697df3cc79              # double 0.75700831031862414
	.quad	0x3f76e90e26993800              # double 0.005593352581469091
	.quad	0x3fd6d14ab42a1852              # double 0.35652415842230767
	.quad	0x3fe06bf9ff2f65af              # double 0.51318073120926566
	.quad	0x3fe12f74f676036b              # double 0.53704307686721842
	.quad	0x3fadb85776356cd0              # double 0.058047040157100604
	.quad	0x3fe2665e43d5e978              # double 0.57499612092151065
	.quad	0x3fed64768212a134              # double 0.91851354031408627
	.quad	0x3fedacc093addc23              # double 0.92733792155820927
	.quad	0x3fddc071e855f27c              # double 0.4648709076789499
	.quad	0x3fdd243d26de0f80              # double 0.45533684535643459
	.quad	0x3fb1f7f2253d32a8              # double 0.070189603892866104
	.quad	0x3fe3d9273d0f6272              # double 0.62025796819496137
	.quad	0x3fea6836daa5e5e6              # double 0.82522146897025261
	.quad	0x3fed08934c5a38cb              # double 0.90729679977973754
	.quad	0x3fe3d4a71a1b8189              # double 0.61970858668432627
	.quad	0x3fe783ec8a9af065              # double 0.73485400267919643
	.quad	0x3fdb4f314d999bc0              # double 0.42670853212478832
	.quad	0x3fdd3e5c7097e1e2              # double 0.45693121905745049
	.quad	0x3fdacce65e680f6c              # double 0.41875609607108433
	.quad	0x3fef4e57e4117b38              # double 0.97831339401805106
	.quad	0x3fed2a11e8638bab              # double 0.91138549221465348
	.quad	0x3f793279df866380              # double 0.0061516533536626339
	.quad	0x3fa4f5d80e130950              # double 0.04093814060026324
	.quad	0x3fe9f78d15669111              # double 0.81146864108862549
	.quad	0x3fe3c089cc84e561              # double 0.61725320763723002
	.quad	0x3fef21d7ba645cb2              # double 0.97288118748374175
	.quad	0x3fea68135771d20f              # double 0.82520453528428728
	.quad	0x3fd3aa876c3b2186              # double 0.30728326386863392
	.quad	0x3feb0c76cdf98c21              # double 0.84527149419261971
	.quad	0x3fe3f8dcd111fe99              # double 0.62412873109856826
	.quad	0x3fd51707ad1a80ac              # double 0.32953063873902511
	.quad	0x3fea0b86849116f5              # double 0.81390691654152525
	.quad	0x3fce874e434a7548              # double 0.23850420270620476
	.quad	0x3feef46146cdfffc              # double 0.96733154133835297
	.quad	0x3fd475d57c37ca52              # double 0.31969201212556186
	.quad	0x3fc757468d8bda98              # double 0.18235093985977779
	.quad	0x3fba71e7b0abe4f8              # double 0.10330055297153595
	.quad	0x3fdc71660bca08c8              # double 0.44442130233086319
	.quad	0x3fa9220d8c37da50              # double 0.049087928167797501
	.quad	0x3fdba5ca0c0fc816              # double 0.43199397256751249
	.quad	0x3fd920fdf9b6c15e              # double 0.39263867746469383
	.quad	0x3fdcb5ff30db2928              # double 0.4486082055197067
	.quad	0x3fd759027409dd96              # double 0.36480771381271759
	.quad	0x3fec0b96d62705c7              # double 0.87641469790121895
	.quad	0x3fe4f979bd490506              # double 0.65545355767986346
	.quad	0x3f9554731ef0a280              # double 0.020829962504793631
	.quad	0x3fcc4ffaee86f2e4              # double 0.2211908020671195
	.quad	0x3fbd887d18c60658              # double 0.11536390166113486
	.quad	0x3fa8b16fc6487ae0              # double 0.048228733973010085
	.quad	0x3fec9ab8931ba5fc              # double 0.89388684017211472
	.quad	0x3fe6b66f7bc56c88              # double 0.7097699563413622
	.quad	0x3fe01dbde6631a3c              # double 0.50363059041485014
	.quad	0x3fedca88edaa612c              # double 0.93097349566509057
	.quad	0x3fd35e1c1b6c8b4a              # double 0.30261900594830549
	.quad	0x3fd93d2bba2a8bc8              # double 0.39435856991093177
	.quad	0x3fd721c27f5cf116              # double 0.36143553197668277
	.quad	0x3fc1fa99b9584028              # double 0.14046021986041635
	.quad	0x3fcfe6dad755cb5c              # double 0.2492326308671079
	.quad	0x3fddfc641c4a8152              # double 0.46852972758099043
	.quad	0x3fc846cfb07b3608              # double 0.18966098897219319
	.quad	0x3feab321c39353bf              # double 0.83436668585147078
	.quad	0x3fba0980b928fd58              # double 0.10170750160704267
	.quad	0x3fdaa6d1b444a4c0              # double 0.41643183330831945
	.quad	0x3fe1640ebe3a111b              # double 0.54346406129528491
	.quad	0x3fe8a8480e8ebefc              # double 0.77054217189103679
	.quad	0x3fd4f7b136729426              # double 0.32761793439050491
	.quad	0x3fddfe1692aa50c8              # double 0.4686333114889405
	.quad	0x3fcdee935d48a270              # double 0.23384325079793511
	.quad	0x3fdc1bf04e430a1e              # double 0.43920524256478355
	.quad	0x3fd6dbe7d78bfeda              # double 0.35717197465417672
	.quad	0x3fe85f9703ec92cd              # double 0.76166868940762245
	.quad	0x3fe3ae516f0251db              # double 0.61502906495530441
	.quad	0x3fe5a4acb163993d              # double 0.67635187765407745
	.quad	0x3fe746d015d7e24d              # double 0.72739414469021713
	.quad	0x3fdab4c1b9efe838              # double 0.41728251607821987
	.quad	0x3fb07769a66f6c30              # double 0.064322093137364034
	.quad	0x3fec6e937947acd6              # double 0.8884980553388242
	.quad	0x3fd480a458f6bcde              # double 0.32035168350098597
	.quad	0x3fcd011f6ea9c914              # double 0.22659676459768063
	.quad	0x3fee55ced3c12422              # double 0.94797459944050311
	.quad	0x3fe07420983b4690              # double 0.51417569859241219
	.quad	0x3fcf382beb63d98c              # double 0.24390171998647892
	.quad	0x3fd4dd90653cc17a              # double 0.32602319609124886
	.quad	0x3fe1f5a2c999b1a2              # double 0.56123484969207404
	.quad	0x3fedfe401ac1d5a9              # double 0.93728642679223129
	.quad	0x3fdea50f40c05886              # double 0.47882443736433122
	.quad	0x3fd570f8d5fc1974              # double 0.33502026459645795
	.quad	0x3fe723f6ef6c9c56              # double 0.72314020884085539
	.quad	0x3fdda44216f66536              # double 0.46315052263669843
	.quad	0x3fe0b623bb53d6bd              # double 0.52223383510018773
	.quad	0x3fe516c3b99be825              # double 0.65902887584457359
	.quad	0x3feb88ec87d7ff70              # double 0.86046434909802194
	.quad	0x3fd12a098121f092              # double 0.26819074259379605
	.quad	0x3fce15b75e4bf8c4              # double 0.23503772835096559
	.quad	0x3f74e69fe0ff3380              # double 0.0051027531880664112
	.quad	0x3fe88dc21676482b              # double 0.76730446230999882
	.quad	0x3fed820b5d678034              # double 0.92212455981280649
	.quad	0x3fdb8742e2561fb4              # double 0.43013069251218927
	.quad	0x3fe062907cac1c8d              # double 0.51203178739605593
	.quad	0x3fe83f87f82c1ef1              # double 0.75775526496087597
	.quad	0x3fee01a96fe79868              # double 0.93770286423092574
	.quad	0x3fe061597def0a5d              # double 0.51188349338947214
	.quad	0x3fe69e3078074516              # double 0.7068102211289069
	.quad	0x3fd2df14d278c2a8              # double 0.29486580423239639
	.quad	0x3fc3b1694a9ac57c              # double 0.15385166304399067
	.quad	0x3fe85caec087efed              # double 0.76131379703246937
	.quad	0x3fe8799985a14f42              # double 0.76484371280319174
	.quad	0x3fba6cbcdf0da160              # double 0.10322170682559806
	.quad	0x3fcd362e0ccb1890              # double 0.22821593880343416
	.quad	0x3fc806474c47d488              # double 0.18769160484922431
	.quad	0x3fc15686ce913ac4              # double 0.13545308195394601
	.quad	0x3fe3a1b5c7ec906d              # double 0.61349000022575029
	.quad	0x3fd9a0748c125564              # double 0.40041841200703332
	.quad	0x3fe608edd54aa713              # double 0.68858997019308033
	.quad	0x3fe94e715e84a986              # double 0.79082554302776553
	.quad	0x3f7c7ddd34a6d000              # double 0.006955970844888526
	.quad	0x3feeb1dfa5348b64              # double 0.95921308771754043
	.quad	0x3fd578546089fde4              # double 0.33546933581962279
	.quad	0x3f8ecc795a92aac0              # double 0.015038440777364825
	.quad	0x3fc47f13cb308a5c              # double 0.16012809201591238
	.quad	0x3faeece325750ea0              # double 0.060401056597155334
	.quad	0x3fd8925186d6f782              # double 0.38393057029667699
	.quad	0x3fedf0cee80848a2              # double 0.93564553564853647
	.quad	0x3fe0f895776a115a              # double 0.53034470866308969
	.quad	0x3fd90a60c71e32c6              # double 0.391258425189147
	.quad	0x3fee6fce451e0cf8              # double 0.95114816188325246
	.quad	0x3fddd79107914c6e              # double 0.46628213633557081
	.quad	0x3fb9316ae3938500              # double 0.098410301743133032
	.quad	0x3f9ab58f11736200              # double 0.026083217086894095
	.quad	0x3fee437a50645d9e              # double 0.94573703481266924
	.quad	0x3fe5f5bbb0f5aee2              # double 0.68624672472421033
	.quad	0x3fd6995eba884026              # double 0.35311096397436115
	.quad	0x3fed134bcc3a4f72              # double 0.90860547912823919
	.quad	0x3fdd45c96aad6892              # double 0.45738444726669869
	.quad	0x3fd969e526e92b48              # double 0.39708832549938622
	.quad	0x3fefa0c22d38c888              # double 0.98837384064087618
	.quad	0x3fe4668650e60967              # double 0.63751521873954864
	.quad	0x3fe5fd4771ea1660              # double 0.6871678566828443
	.quad	0x3fe4425a94154a57              # double 0.63309983179562834
	.quad	0x3fc558580910287c              # double 0.16675854151282354
	.quad	0x3fde141adc90ee76              # double 0.46997710742628074
	.quad	0x3fb35f368cdaf160              # double 0.075671586407172864
	.quad	0x3fc6bbcdcc199fc8              # double 0.17760632005524557
	.quad	0x3fed23cb96625840              # double 0.91061953899293968
	.quad	0x3fc9c39289098934              # double 0.20128089610359157
	.quad	0x3fdf8a5c72964a3e              # double 0.49281989278930272
	.quad	0x3f8f8d8dd48a43c0              # double 0.015406711624821656
	.quad	0x3fd8035591f622be              # double 0.37520350698518345
	.quad	0x3fc8e7ab5db10a6c              # double 0.19456998896392308
	.quad	0x3f831eb0188b60c0              # double 0.0093358762255068006
	.quad	0x3fe11e99459f2082              # double 0.53498519514052156
	.quad	0x3f9c840fff799180              # double 0.027847528427075385
	.quad	0x3fdc43f43ae208ee              # double 0.44164758444107022
	.quad	0x3fc47a7a529a53e8              # double 0.15998772652952131
	.quad	0x3fe399a4b478e051              # double 0.61250529526206254
	.quad	0x3fb63f7db851bdc8              # double 0.086906297206716165
	.quad	0x3fd74ac9dfed1954              # double 0.36393973224439446
	.quad	0x3fe87dffea2acebd              # double 0.76538081870827279
	.quad	0x3fe13bfae5c9e424              # double 0.53857178574174158
	.quad	0x3fe8da1bdef76d9c              # double 0.77662461803577143
	.quad	0x3fce2aa1edce9bd8              # double 0.23567604171441192
	.quad	0x3fcfc3d05bc1059c              # double 0.24816326599288352
	.quad	0x3fcc05a344f2d74c              # double 0.21892205111151453
	.quad	0x3feb9a4b1a1b3837              # double 0.86258463953868769
	.quad	0x3fd5ea4494911fe0              # double 0.34242357738957985
	.quad	0x3fe50e01170fca23              # double 0.65795950416788107
	.quad	0x3fc57405736ef6f4              # double 0.16760318886183934
	.quad	0x3fba6a24ea163580              # double 0.10318213191040648
	.quad	0x3fd143e61ee7c4be              # double 0.26976922052478958
	.quad	0x3fb200400b05b430              # double 0.070316317263590333
	.quad	0x3fd6ee1d43f9cbd2              # double 0.35828334463365963
	.quad	0x3feaad9ae7db4e90              # double 0.83369202885156035
	.quad	0x3fcf04da19a3a388              # double 0.24233556987681149
	.quad	0x3fef68d4860ac910              # double 0.98154665165046318
	.quad	0x3fc63011ce544b88              # double 0.17334196638747934
	.quad	0x3fcf2b6387f32e5c              # double 0.24351162088565814
	.quad	0x3fe606c8100f6358              # double 0.6883278192209259
	.quad	0x3fee5ade3c6ca03c              # double 0.9485922985231876
	.quad	0x3fcfb6594db6f154              # double 0.24775234503420995
	.quad	0x3fe068f92ba3b260              # double 0.51281412623718481
	.quad	0x3fc2057c75a4861c              # double 0.14079242462416708
	.quad	0x3fe1db03c46ad466              # double 0.55798519480471209
	.quad	0x3fc7ecac95c85e4c              # double 0.18691022218330244
	.quad	0x3fe5cb4a92b0c50f              # double 0.6810658326195681
	.quad	0x3fd6556747e13c4c              # double 0.34896261233820236
	.quad	0x3fd4930b2437c306              # double 0.32147482430359309
	.quad	0x3fe40616e481c429              # double 0.62574333791974823
	.quad	0x3fa23442b5de2f90              # double 0.035554966641114238
	.quad	0x3fe0f6494e7c909b              # double 0.53006425218019915
	.quad	0x3fdca3429afad0cc              # double 0.44746461043110908
	.quad	0x3fbf0a3d4e5a89c0              # double 0.12124999201709041
	.quad	0x3fed585917e03da9              # double 0.9170346704794855
	.quad	0x3fdc125fd8c66526              # double 0.43862148446494797
	.quad	0x3fb2ad8731f0ddf8              # double 0.072960328762626037
	.quad	0x3fd10ce50547bbf4              # double 0.2664120246471946
	.quad	0x3fe3848aa7a93819              # double 0.60992939707080318
	.quad	0x3fe02743732e4509              # double 0.50479290481794792
	.quad	0x3fd3160c49ad8546              # double 0.29822070307826143
	.quad	0x3febf3af8af9a75e              # double 0.87349679130168645
	.quad	0x3fd513e3f7d11bd6              # double 0.32933901978361513
	.quad	0x3fef6fcac650c9bc              # double 0.98239649518500682
	.quad	0x3fc9ca9b2eaae278              # double 0.20149554995238694
	.quad	0x3fcb5c0b9da7e718              # double 0.21374650190392042
	.quad	0x3fdea30da83660fc              # double 0.47870198657029994
	.quad	0x3fd24ed579115578              # double 0.28606163809794038
	.quad	0x3fb1fc4eefa559f8              # double 0.070256169802952573
	.quad	0x3fd45c8a5c65102c              # double 0.31814822218825856
	.quad	0x3fe97c57402b8de8              # double 0.79642832310895262
	.quad	0x3fc5d0b7de145fdc              # double 0.17043207496385449
	.quad	0x3fc201ea80b72af0              # double 0.14068347248970481
	.quad	0x3fd302f7044671b0              # double 0.2970559636831025
	.quad	0x3fc7580713361c84              # double 0.18237389028601936
	.quad	0x3fec19652e5d7bd1              # double 0.87810000472733851
	.quad	0x3fdc9d77d2726fca              # double 0.44711108733622196
	.quad	0x3fe01ebc442d97b2              # double 0.50375188175234187
	.quad	0x3fe96c5773a09cea              # double 0.79447529395556882
	.quad	0x3fd2e5e48dff050e              # double 0.2952815424615246
	.quad	0x3fe4e929385fdf67              # double 0.65346203814168013
	.quad	0x3fd0b614d35585c0              # double 0.26111336362927418
	.quad	0x3fc2f6d42a109798              # double 0.1481576161760898
	.quad	0x3feb9a71746366fa              # double 0.86260292751396084
	.quad	0x3fed32779073f939              # double 0.91241052831154612
	.quad	0x3fd24682939e09c2              # double 0.28555359283214099
	.quad	0x3fe7d2e9cb8dfe5c              # double 0.74449624783296597
	.quad	0x3fe27712f8c09ace              # double 0.57703541359372834
	.quad	0x3fcf5dd06f473224              # double 0.24505048211575897
	.quad	0x3fe7c603a60a7506              # double 0.74292166166165496
	.quad	0x3f749b5b719cf500              # double 0.0050309726737485239
	.quad	0x3fe325a80395581d              # double 0.59834671687963559
	.quad	0x3fc730cd7365d144              # double 0.1811768353906108
	.quad	0x3fc59d59e18a367c              # double 0.16886447441759234
	.quad	0x3fdcc0859fdbbce6              # double 0.44925060855071164
	.quad	0x3fe3ffddd8cff2f2              # double 0.62498371454384327
	.quad	0x3fe21d5c2571bbf0              # double 0.56608397782644992
	.quad	0x3fd59bb5ac51c486              # double 0.33762876346651927
	.quad	0x3fddac2634010c92              # double 0.46363215521359635
	.quad	0x3fe637961a18b72b              # double 0.69428544136983328
	.quad	0x3f946efe77f951e0              # double 0.019954658577562401
	.quad	0x3fc42656202472f4              # double 0.15741993493511297
	.quad	0x3fda265871c8f60c              # double 0.40859042274300417
	.quad	0x3fbad828089feab8              # double 0.10486078463137971
	.quad	0x3fe0c6653d888916              # double 0.52421819704275907
	.quad	0x3fe6554e927b3237              # double 0.69791344270340161
	.quad	0x3fd2674cebde0bc0              # double 0.28755496057436503
	.quad	0x3fd55bc414ecde38              # double 0.33372594874842632
	.quad	0x3fee9d1d704412c3              # double 0.95667907645164296
	.quad	0x3fe89fc148fcb5d0              # double 0.76950134520819269
	.quad	0x3fcea72a973924a4              # double 0.23947651275583326
	.quad	0x3fea0ab18303d568              # double 0.81380534733640975
	.quad	0x3fc7db9e056bfb3c              # double 0.18638968720184745
	.quad	0x3fda1db0c514b80e              # double 0.40806216474709422
	.quad	0x3fa5a91faf1d8100              # double 0.042305936933873411
	.quad	0x3fe8ad62bb522c05              # double 0.77116524301652645
	.quad	0x3fd7dfa96180d234              # double 0.37302622339055636
	.quad	0x3fd375c07a4350fe              # double 0.30406200351468715
	.quad	0x3fd32bb12aeb649c              # double 0.29954175177915388
	.quad	0x3fc9c90847171d24              # double 0.20144751998143662
	.quad	0x3fdaf34093384e10              # double 0.42109693886706712
	.quad	0x3fe87aaf3f7991eb              # double 0.76497614285886806
	.quad	0x3fe9b2a1fde2442f              # double 0.80305575930299777
	.quad	0x3fc683292bfd6db0              # double 0.17587771079966563
	.quad	0x3fcf5f1a1c775c5c              # double 0.24508978261903536
	.quad	0x3fd0fb0d75fd80d2              # double 0.26532303354725884
	.quad	0x3fc58d206625def4              # double 0.16836934077922872
	.quad	0x3fe58045021c13be              # double 0.67190790569349423
	.quad	0x3fc0d8a2c3e25474              # double 0.13161119999554993
	.quad	0x3fe44659abcc75a8              # double 0.63358768038203994
	.quad	0x3fc1ec3dd4ff0058              # double 0.14002201938820025
	.quad	0x3fe749743ffd5065              # double 0.72771656511259819
	.quad	0x3fe3b74d731fa11f              # double 0.61612579808300783
	.quad	0x3fcd752ce02bda70              # double 0.23013840623726223
	.quad	0x3feb8e03ad93b8c2              # double 0.86108573819890233
	.quad	0x3fd2452cd0404394              # double 0.28547211014761698
	.quad	0x3fe25f7909c86474              # double 0.57415439520549549
	.quad	0x3fba5c37d5de8360              # double 0.10296963664451431
	.quad	0x3fe442ef16c57f1c              # double 0.63317064712098015
	.quad	0x3fe28b3caf81fcb6              # double 0.57949671057567431
	.quad	0x3fcc600ef8a57684              # double 0.22168147221502832
	.quad	0x3fa06292866b6f60              # double 0.032002047451640037
	.quad	0x3fe5f4138e6d6948              # double 0.6860444814476887
	.quad	0x3fde25fc8d50c4bc              # double 0.47106851387350068
	.quad	0x3fc50f0796bdfcd0              # double 0.16452116833168029
	.quad	0x3fe8a068ee739dbd              # double 0.76958128521521696
	.quad	0x3fefcab7fd789950              # double 0.99349593645164624
	.quad	0x3fe50f2c4adff270              # double 0.65810217498763102
	.quad	0x3fd5de25018b381a              # double 0.34168362761272564
	.quad	0x3fe8674fcceca70e              # double 0.76261129402448247
	.quad	0x3fdfd07c4652914a              # double 0.49709994189676776
	.quad	0x3fc6e71911fb2770              # double 0.17892754915220221
	.quad	0x3fd444023bc53e66              # double 0.31665092312775867
	.quad	0x3fbdd85ab0efff90              # double 0.11658255405200024
	.quad	0x3fe63a7b6c61bdae              # double 0.69463893097229401
	.quad	0x3fe2e71eee6084de              # double 0.59071299131405985
	.quad	0x3fd9d970de72bcca              # double 0.40389653895813338
	.quad	0x3fe822910e16a76c              # double 0.75421955825480102
	.quad	0x3fe322d7a3c4fce6              # double 0.59800321565844849
	.quad	0x3fe7579b11c1c91f              # double 0.72944406002196505
	.quad	0x3fc4ef17456510f4              # double 0.16354647530000188
	.quad	0x3fa88bbc3a867370              # double 0.047941095489682506
	.quad	0x3feaa2bb9a328e2a              # double 0.83236484638877539
	.quad	0x3fe9513308f015ae              # double 0.79116203065557555
	.quad	0x3fd3dcfa84b615de              # double 0.31036246261677813
	.quad	0x3fdc1af4da7614e6              # double 0.43914529165370053
	.quad	0x3feec65c647eedf5              # double 0.96171397808160341
	.quad	0x3fcb0d7286f4ef74              # double 0.21134788121878112
	.quad	0x3fd07125239c1cbc              # double 0.2569058273078999
	.quad	0x3fedb819d06b65b1              # double 0.92872324664056383
	.quad	0x3feb5029c14ccf2c              # double 0.85353553537286108
	.quad	0x3fe358329b0c3e28              # double 0.60451631815698637
	.quad	0x3fecd0521e803355              # double 0.90042978245910865
	.quad	0x3fe7780954501b6e              # double 0.73340288607947257
	.quad	0x3fee4b2d3880c34f              # double 0.94667683635462108
	.quad	0x3fef3813e8868c20              # double 0.97559543051864139
	.quad	0x3fdfa39e934f69c8              # double 0.49436153779757008
	.quad	0x3fd4e12eb0f7843a              # double 0.32624404222412162
	.quad	0x3fc97579b945adf8              # double 0.19889756723874519
	.quad	0x3fd20a38fbf4424c              # double 0.28187393765350488
	.quad	0x3fd7be125b098d4c              # double 0.37097605600702788
	.quad	0x3fe7cf93caf5bb6d              # double 0.74408902779201258
	.quad	0x3fe2e18822c67302              # double 0.59003073493985903
	.quad	0x3fdfcedcccd54594              # double 0.49700088504058582
	.quad	0x3fde81ee5f2ddcb6              # double 0.4766803674205663
	.quad	0x3fe8db4e43c891f8              # double 0.77677071799240505
	.quad	0x3fd34f862db4f83e              # double 0.30172876800122939
	.quad	0x3fb8913a5e843438              # double 0.095966003489778795
	.quad	0x3fd67be631e860e6              # double 0.35131220697213761
	.quad	0x3fdb40a5c4b7c19c              # double 0.42582077227327786
	.quad	0x3fe6d726ecad366e              # double 0.71376367784405459
	.quad	0x3feb690cd69d842c              # double 0.85657350461054226
	.quad	0x3fec4f47a53f0878              # double 0.88467771792080807
	.quad	0x3fd508933a091d48              # double 0.32864838283099518
	.quad	0x3fe9d5a6b334212b              # double 0.80733046532353592
	.quad	0x3fee0b5e335f157b              # double 0.93888769181710019
	.quad	0x3f43e8ac73dfbc00              # double 6.0757084406570794E-4
	.quad	0x3fdc3d7a4d9237b4              # double 0.44125230384167513
	.quad	0x3fc01c36219b9a38              # double 0.12586094513899737
	.quad	0x3fa11eec1d361f70              # double 0.03343904358467753
	.quad	0x3fe6e8e6cf4ed0f3              # double 0.715930371187396
	.quad	0x3fe3c99f5b7dd2ff              # double 0.61836212033685445
	.quad	0x3fe72255092ff772              # double 0.72294093889625644
	.quad	0x3fe2ca365d73212a              # double 0.58718412639521955
	.quad	0x3fede8389350946b              # double 0.93459728977599121
	.quad	0x3fdf8fe7af5ca392              # double 0.49315826535399154
	.quad	0x3fe97927aa20d60a              # double 0.79603942135025929
	.quad	0x3fe4c3d002f9cfba              # double 0.64890289860931394
	.quad	0x3feb89009c12c433              # double 0.86047392352168683
	.quad	0x3fef46136daadd92              # double 0.97730418605253733
	.quad	0x3fe8e44fa5c1dd1b              # double 0.77787001013249168
	.quad	0x3fe634b8a9af8673              # double 0.69393571035125345
	.quad	0x3fe89a0e26cd6e7f              # double 0.76880557612044231
	.quad	0x3fe8699dafd8febd              # double 0.76289257378808595
	.quad	0x3fb8f9d2c4e0b318              # double 0.09756200129113457
	.quad	0x3fac761e6b355b60              # double 0.055588675105062491
	.quad	0x3fc52fee889cef7c              # double 0.16552526159818715
	.quad	0x3fd5fae445bab358              # double 0.34343821343900549
	.quad	0x3fc73033ad36c4f8              # double 0.18115850408279477
	.quad	0x3fd5ea5c3170c70e              # double 0.34242920711686586
	.quad	0x3fed65dd86ab8aab              # double 0.91868473341704282
	.quad	0x3fe95e53865fa00a              # double 0.79276443714934541
	.quad	0x3fd6977c83d06598              # double 0.35299599525895919
	.quad	0x3fedc6a6d527c42c              # double 0.93049947387601639
	.quad	0x3fde0585cbaf9f9e              # double 0.46908707514966774
	.quad	0x3fd835f80a679412              # double 0.37829400077890896
	.quad	0x3fd89ee9dc695ece              # double 0.38469931149073211
	.quad	0x3fc855a2b0224d08              # double 0.19011338806431177
	.quad	0x3fe544881549147d              # double 0.66461567075079098
	.quad	0x3fa96ccceaa389a0              # double 0.049658206598695687
	.quad	0x3fdff1604a74616c              # double 0.49910743018110426
	.quad	0x3fe6188cd8fb8790              # double 0.69049684886361895
	.quad	0x3fe5f83e4256ad38              # double 0.68655312496904397
	.quad	0x3fb855300bd472d0              # double 0.095049860847619571
	.quad	0x3fe201a25a390e3f              # double 0.56269948598532682
	.quad	0x3fe131382bf1ece0              # double 0.53725823004733897
	.quad	0x3fe68c458e0b07bf              # double 0.7046230100897829
	.quad	0x3fd29958a053b2d0              # double 0.2906095090573162
	.quad	0x3fe93caa8cd92a35              # double 0.78865554341729782
	.quad	0x3fb2a3a638828758              # double 0.072809590145451408
	.quad	0x3fe9a8436b6d5238              # double 0.80178996068804675
	.quad	0x3fa5584f84648e00              # double 0.041689381514768087
	.quad	0x3fedacd0d008c2db              # double 0.92734566337284308
	.quad	0x3febf96baeab8361              # double 0.87419685473660647
	.quad	0x3fbaab87abeefa80              # double 0.10417983958812194
	.quad	0x3fe63b8483c5af78              # double 0.69476533638724813
	.quad	0x3fb55cb4fb738048              # double 0.083445845975348765
	.quad	0x3fcc6f920f212980              # double 0.22215486277339025
	.quad	0x3fe12f098b79d7e2              # double 0.5369918560161262
	.quad	0x3fe196b8c094ec6a              # double 0.54964864362353905
	.quad	0x3fe6168765a547bf              # double 0.69025010922108965
	.quad	0x3fd70ccdd196d214              # double 0.36015649287881613
	.quad	0x3fe4da632d36777a              # double 0.65165861921899126
	.quad	0x3fbfa1c79a038570              # double 0.12356231222249447
	.quad	0x3f7c504ef8ce7480              # double 0.0069125256385663691
	.quad	0x3fdd364449c4740c              # double 0.45643717960211982
	.quad	0x3fd8187ad1cd4dec              # double 0.37649412620996148
	.quad	0x3fe2cf4cf6a9ac32              # double 0.58780525375676107
	.quad	0x3fe9e4e90bc6dbad              # double 0.80919315624384114
	.quad	0x3fa1b3aa6e8ebc90              # double 0.034573865886494137
	.quad	0x3fdd804d45a5f210              # double 0.46095592309555489
	.quad	0x3f85c3266f003b40              # double 0.010626125586012614
	.quad	0x3fcdbe642425f898              # double 0.23237277760558039
	.quad	0x3fd57d04733d7222              # double 0.33575545553120112
	.quad	0x3fe8b18073d2dadb              # double 0.77166769620711351
	.quad	0x3fd88fd62909e100              # double 0.38377908713984255
	.quad	0x3fd71ced0cac6158              # double 0.36114050138123366
	.quad	0x3fdf2facce2999da              # double 0.48728485234314933
	.quad	0x3fdcc482f2875a74              # double 0.44949411091275882
	.quad	0x3f78fba1d7dd3900              # double 0.0060993501663928473
	.quad	0x3fefe51cfbaba87a              # double 0.99671792177583929
	.quad	0x3fe24b7069a84027              # double 0.57170887600114362
	.quad	0x3fc09a17bd253de8              # double 0.12970253692263545
	.quad	0x3fec900cf4460678              # double 0.89258430204081574
	.quad	0x3fc9438e4bd9de54              # double 0.1973741407743882
	.quad	0x3fe807dc354ed456              # double 0.75095949565605724
	.quad	0x3fda11d28349ec58              # double 0.4073377878300497
	.quad	0x3fd0b028f0f705dc              # double 0.260751948659246
	.quad	0x3fd0be5039bd705c              # double 0.2616158069483896
	.quad	0x3fabf24eff68a680              # double 0.054583042791205294
	.quad	0x3fec35da75f8b1a6              # double 0.8815738968019573
	.quad	0x3fcbbb7ab18d1cec              # double 0.21665891332143106
	.quad	0x3fcb50389a79bd0c              # double 0.21338565390349407
	.quad	0x3fddade1848638e8              # double 0.46373784963442555
	.quad	0x3fd24ecf4b76b316              # double 0.28606016511439358
	.quad	0x3fc891b857cfdfb0              # double 0.19194702422805454
	.quad	0x3fe3068f3cb32ba8              # double 0.5945507226509692
	.quad	0x3fef016bd7fa7f98              # double 0.96892349417975065
	.quad	0x3fe2a20140da5274              # double 0.58227598825994997
	.quad	0x3feb9a8d62d9f07f              # double 0.86261624628924938
	.quad	0x3fa97aed824f0a70              # double 0.049765989453153803
	.quad	0x3fbb002af026c838              # double 0.10547130930970716
	.quad	0x3fd2c4c02f265ad2              # double 0.29325871090388234
	.quad	0x3fd58e8914ed1690              # double 0.33682467502181002
	.quad	0x3fe3f9f64cec3adf              # double 0.62426295303324852
	.quad	0x3fec052dd0dd6f1e              # double 0.87563219827595495
	.quad	0x3fd05ce9f840bb28              # double 0.25567101710741946
	.quad	0x3fdbad11b2f00086              # double 0.43243830179563536
	.quad	0x3fed644b9fcec25a              # double 0.91849309170181503
	.quad	0x3fc8e055c52bcd54              # double 0.1943461621045609
	.quad	0x3fd8683657387c40              # double 0.38136061208382799
	.quad	0x3fe5a206429a7f27              # double 0.67602837570664043
	.quad	0x3feb4b8adc0a1f51              # double 0.8529714868209145
	.quad	0x3fedbad7da5d6fb7              # double 0.92905800485049539
	.quad	0x3fdfae64fef77422              # double 0.49501919650157522
	.quad	0x3feb891641cb7508              # double 0.86048424578226079
	.quad	0x3fc99102cc978bc8              # double 0.19973788251726732
	.quad	0x3fe9215e8a8b663d              # double 0.78532340106466558
	.quad	0x3fe09bf3430f76dc              # double 0.51903689477668591
	.quad	0x3fd737c6d45789c8              # double 0.36277933823126007
	.quad	0x3fe401c85253ec65              # double 0.62521759109166608
	.quad	0x3fdcef15189e9d26              # double 0.45209243206268679
	.quad	0x3fdc7fdda7fd174c              # double 0.44530431180134111
	.quad	0x3fe96d582ef50110              # double 0.79459771319673855
	.quad	0x3fd82e41683b64f2              # double 0.37782321146876463
	.quad	0x3f80e24adea3ecc0              # double 0.0082441186136662514
	.quad	0x3fdf118c2463ba48              # double 0.48544601014774402
	.quad	0x3fe978893087c4a4              # double 0.79596385458548413
	.quad	0x3fd468c94b760412              # double 0.31889564866293185
	.quad	0x3fe7ee73b88a7a07              # double 0.74785791438245119
	.quad	0x3feebbd724bd43fa              # double 0.96042973685882704
	.quad	0x3fd461ffd65c7b3e              # double 0.31848140653339729
	.quad	0x3fb08c386feda0e0              # double 0.064639594389180655
	.quad	0x3fe8abe0fa5e5a9d              # double 0.77098130130874021
	.quad	0x3fce617f37ae8868              # double 0.23735037058674213
	.quad	0x3feda0fe3d010364              # double 0.92590248026691002
	.quad	0x3feee0ffba161f18              # double 0.96496569008829435
	.quad	0x3fed567928a17951              # double 0.91680581985182574
	.quad	0x3fd65d3f12392de4              # double 0.34944130687355668
	.quad	0x3fd7ab4105e47b4a              # double 0.36982751441421569
	.quad	0x3fd7527b039df84c              # double 0.3644092116663884
	.quad	0x3fa1c8cfff527e20              # double 0.034735202710404645
	.quad	0x3fb16d3159a52520              # double 0.0680723995075323
	.quad	0x3fa3a5ece42d8970              # double 0.038375285009140891
	.quad	0x3fe8825e082a987a              # double 0.76591397852895615
	.quad	0x3fcf6bf63dcee84c              # double 0.2454822351263054
	.quad	0x3fc33ec750e547e4              # double 0.15035335016233298
	.quad	0x3fd5defecee03500              # double 0.3417355556747026
	.quad	0x3feb9b04601fa70b              # double 0.86267298483036947
	.quad	0x3fe0240e9ff1cae2              # double 0.50440150489006563
	.quad	0x3fdccc6ef9c61390              # double 0.44997763053862005
	.quad	0x3fee8f9328290ac1              # double 0.95502622455418174
	.quad	0x3fe604db57333ff8              # double 0.68809287101066641
	.quad	0x3fd039de5c499358              # double 0.25353201878015375
	.quad	0x3fb99baae0fcdac0              # double 0.10003154747833332
	.quad	0x3fe5e807fcf671b9              # double 0.68457412153980279
	.quad	0x3fe16819a717250a              # double 0.54395754465909474
	.quad	0x3fe24d914a7baac3              # double 0.57196869418597662
	.quad	0x3fe7a5a886535f5a              # double 0.73897196040614266
	.quad	0x3fbb4ac028621080              # double 0.10660935388483672
	.quad	0x3fe36f891c887a79              # double 0.60736518452524912
	.quad	0x3fc40c78fe1f7994              # double 0.15663063438746561
	.quad	0x3f7adf5e81fa9900              # double 0.0065606776912885412
	.quad	0x3fdf64071c4dca72              # double 0.49048021091508709
	.quad	0x3fe62a5caae1f4bd              # double 0.6926711404372764
	.quad	0x3fe40fb5c601931f              # double 0.6269177310283317
	.quad	0x3fd4afae6eb0561a              # double 0.32322274026350473
	.quad	0x3fbb79ac2bf26388              # double 0.10732532570763287
	.quad	0x3fe9800f237a697b              # double 0.79688221864061803
	.quad	0x3fe2fe83108df681              # double 0.59356835587796308
	.quad	0x3fc9503424fb01b8              # double 0.19776012235344154
	.quad	0x3f93c7b5acfdeee0              # double 0.019316519435490842
	.quad	0x3fe54883a59e1ea2              # double 0.66510183665464617
	.quad	0x3fe9142d2b4a5af0              # double 0.78371294455686602
	.quad	0x3fd7cefc3e404950              # double 0.3720083816453057
	.quad	0x3fe35b0d2f6d796f              # double 0.60486468566140938
	.quad	0x3fb3c487989007b0              # double 0.077217554804547061
	.quad	0x3fd8f865c21ac322              # double 0.39016097980042919
	.quad	0x3fdb41dc51b1041c              # double 0.42589481332476153
	.quad	0x3f9b4fe147d40800              # double 0.02667190552620724
	.quad	0x3fdcf8d52d088010              # double 0.4526875438477882
	.quad	0x3f63f24337660400              # double 0.002434855730087282
	.quad	0x3fc4f21be3eb6e44              # double 0.16363857869042608
	.quad	0x3fdbdc0fec876688              # double 0.43530653093839833
	.quad	0x3fe266de1ea3e19f              # double 0.5750570867958692
	.quad	0x3fa4a1bdafb31730              # double 0.040296485612584809
	.quad	0x3fe25a5a7f67586c              # double 0.57352948077710897
	.quad	0x3fe52a2692c354be              # double 0.66139534630442376
	.quad	0x3fe472d4107f4173              # double 0.63901713583076825
	.quad	0x3fc8b7611c2f6b70              # double 0.19309629322273336
	.quad	0x3fdba05f7f6c2606              # double 0.43166339343642368
	.quad	0x3fecc09b80928eca              # double 0.89851164924444871
	.quad	0x3fee3ce5e87736be              # double 0.94493384746029796
	.quad	0x3fdbd20cdfd61942              # double 0.43469545229926976
	.quad	0x3fd3a64c660780a0              # double 0.30702505077170805
	.quad	0x3fe7944276f70eff              # double 0.73684809909215676
	.quad	0x3fe314e15947dd08              # double 0.59629886090888906
	.quad	0x3fc4f348231b8888              # double 0.16367437090145054
	.quad	0x3fe1b4802d15b402              # double 0.55328377538319296
	.quad	0x3fedd6c598d15126              # double 0.93246726844021022
	.quad	0x3fc904f460701928              # double 0.19546370228653953
	.quad	0x3fdbed0538daa63e              # double 0.43634157707365151
	.quad	0x3fefdd7b7ea9ee8f              # double 0.99578642596266486
	.quad	0x3feafe79123d81c3              # double 0.84356359064627673
	.quad	0x3f629157b54ba100              # double 0.0022665703821652672
	.quad	0x3fd80e7c352913fa              # double 0.37588410560084606
	.quad	0x3fccdc3bb57a1a30              # double 0.22547098504237928
	.quad	0x3feb13282a302c55              # double 0.84608848800543035
	.quad	0x3fe08d25f9b5620c              # double 0.51723002215573066
	.quad	0x3fd9ec8fa534d6c0              # double 0.40506354459226301
	.quad	0x3fb5bbcb4897b290              # double 0.084896760199351328
	.quad	0x3fe7e8de79cab244              # double 0.7471763972039942
	.quad	0x3fe8528afff774d5              # double 0.76007604592782718
	.quad	0x3fecf2fc8378dc0a              # double 0.90466142347475054
	.quad	0x3fe0fe44c89d9c66              # double 0.53103865797755812
	.quad	0x3fb75170db7cff88              # double 0.091086438737873476
	.quad	0x3fe8111454fccc58              # double 0.75208489035720572
	.quad	0x3fea25b51f364150              # double 0.8171029672248924
	.quad	0x3fe0a02abf45e27e              # double 0.5195516334343464
	.quad	0x3fdd8aa4d89a3d6a              # double 0.46158715393627026
	.quad	0x3fc9f4af31fbfc94              # double 0.20277967396393548
	.quad	0x3fc6bcc6347f26d0              # double 0.17763593257250543
	.quad	0x3fea9c7b69ca5f66              # double 0.83160181677065448
	.quad	0x3fd2bfb95062079e              # double 0.29295189714331993
	.quad	0x3fedf10cb8b94c23              # double 0.93567501143332199
	.quad	0x3fd7525b16bebf4e              # double 0.36440160008622946
	.quad	0x3fe84215d5633989              # double 0.7580670516706941
	.quad	0x3fee1a8913527221              # double 0.94073919080580393
	.quad	0x3fe9fc9e79fb8235              # double 0.81208728623102522
	.quad	0x3fe28d4c649266da              # double 0.57974834101625139
	.quad	0x3febbe7d5566de55              # double 0.86700312309307981
	.quad	0x3fd93be0c3494326              # double 0.39427966185489749
	.quad	0x3fefdcb35b406047              # double 0.99569099257042459
	.quad	0x3fec3333dc11c6b0              # double 0.88125031454383951
	.quad	0x3fdf003b1119c34e              # double 0.48438908262237568
	.quad	0x3fd9139653b3acca              # double 0.39182050870904261
	.quad	0x3fd9f658a2e7051e              # double 0.40566078098716385
	.quad	0x3fc48309066349d4              # double 0.16024887859255321
	.quad	0x3fd8811dfb1a77ca              # double 0.38288068315329993
	.quad	0x3fdb7dd9ce125628              # double 0.42955632328207338
	.quad	0x3feae35a879d5215              # double 0.84025312888349168
	.quad	0x3feb8e7e2f95ae20              # double 0.86114415449032222
	.quad	0x3fc903809ff8a684              # double 0.19541938601587472
	.quad	0x3fc17979ecd6708c              # double 0.13651966156328788
	.quad	0x3fed4603a8d31ead              # double 0.91479666684695859
	.quad	0x3fdfc9bc0e5f5412              # double 0.49668790248443984
	.quad	0x3fed2680299cda82              # double 0.91094978454096087
	.quad	0x3fe1348058050c01              # double 0.53765885535574409
	.quad	0x3fd1c03fa302433c              # double 0.27735892218429448
	.quad	0x3fc3b133d7077f2c              # double 0.1538452911327054
	.quad	0x3fda0e674105e16a              # double 0.40712910985850803
	.quad	0x3fece564a05d5d4e              # double 0.90300208398086013
	.quad	0x3feff8951df1be5a              # double 0.9990945420121975
	.quad	0x3fe9a3a9ca68ff0a              # double 0.80122842343550471
	.quad	0x3feb20473ee15472              # double 0.84769022256172222
	.quad	0x3fdee72ee940f994              # double 0.48286030558292592
	.quad	0x3feade2fcc08f382              # double 0.83962240076617456
	.quad	0x3fd732cbdd21b7be              # double 0.36247536272901104
	.quad	0x3fdec24eda0d24f6              # double 0.48060962003781016
	.quad	0x3fdfd99b3b2751d0              # double 0.49765663887708644
	.quad	0x3fe6403f8b49c81c              # double 0.6953428001854749
	.quad	0x3fc825402aa88474              # double 0.18863679964946167
	.quad	0x3fe32eaaaf0ff114              # double 0.59944662277078686
	.quad	0x3fe837c3459c8d57              # double 0.75680698009493141
	.quad	0x3fd61227529ec31a              # double 0.34485800808310929
	.quad	0x3fa17ced45f16f50              # double 0.034156241214729932
	.quad	0x3fd1bb10f5fdffa0              # double 0.27704261801408769
	.quad	0x3fe6230516f625ee              # double 0.6917748878924479
	.quad	0x3fe101133ad49a37              # double 0.53138123979881058
	.quad	0x3fefd610d8cd988f              # double 0.99488108009679077
	.quad	0x3fc778db7731bbdc              # double 0.18337577171357011
	.quad	0x3f9f6fd5eb4fdce0              # double 0.030700056540777676
	.quad	0x3fc2eda93fb6bb00              # double 0.14787784205460497
	.quad	0x3fca5fa2b1d08bb8              # double 0.20604356462817264
	.quad	0x3fc6ab4ada74c5c8              # double 0.17710242907337048
	.quad	0x3fdd8d3fa2533466              # double 0.46174612857868735
	.quad	0x3fc83857172197b8              # double 0.1892193663545052
	.quad	0x3fe1c86ef24aec24              # double 0.55571696589266084
	.quad	0x3febd39e6bdc0cec              # double 0.86958237711260499
	.quad	0x3fb79f2246b8d380              # double 0.092271940485103343
	.quad	0x3fe59e7e7d745f3a              # double 0.67559742453429483
	.quad	0x3fe4d2d5719f6232              # double 0.65073654357826727
	.quad	0x3fe79b3a58ce927e              # double 0.73769872040845974
	.quad	0x3fd7a0f9086d101a              # double 0.36919999907354539
	.quad	0x3fe6a6722ed7bcb3              # double 0.70781811856240606
	.quad	0x3fe9d0295716a57b              # double 0.80666033753838862
	.quad	0x3fe198c6ae60bb0b              # double 0.5498994260613882
	.quad	0x3fdc25dced050442              # double 0.43981097361035293
	.quad	0x3fcad8bed71d0f2c              # double 0.20973954681004991
	.quad	0x3fd3a97d0bd1df14              # double 0.30721975473669372
	.quad	0x3feda72e54842211              # double 0.92665783412036451
	.quad	0x3feba85d4dcba85f              # double 0.86430230326119417
	.quad	0x3fa979df89903820              # double 0.049757943670656113
	.quad	0x3fe73ebf0a816514              # double 0.72640945484013963
	.quad	0x3fe757fe6161fe19              # double 0.72949141521525285
	.quad	0x3fe82b982a112cdd              # double 0.75532158104160951
	.quad	0x3f9b93fc6a91ec60              # double 0.026931709293858908
	.quad	0x3fd37d5dba444d60              # double 0.30452674093358745
	.quad	0x3fd5e451376f4cce              # double 0.34206037915755594
	.quad	0x3f959bcb835f94a0              # double 0.02110212315883031
	.quad	0x3fe1ad8ec4b850d1              # double 0.55243624135848723
	.quad	0x3fc2216c1295b4c0              # double 0.14164496333561338
	.quad	0x3fd8308eea500fac              # double 0.3779637611589759
	.quad	0x3fe5a5e14591ed67              # double 0.67649901950737223
	.quad	0x3fad949c893e6490              # double 0.057774440530189541
	.quad	0x3fe5d2da711eb9e7              # double 0.68198892682795254
	.quad	0x3fd57181be3a1528              # double 0.3350529058155467
	.quad	0x3fefcddeab42f1af              # double 0.99388059091102387
	.quad	0x3fd6c824ad95ed9e              # double 0.35596577598308865
	.quad	0x3fc1a5cf0b7deca0              # double 0.13787258206489117
	.quad	0x3fef8b053cac5c58              # double 0.98572027063608924
	.quad	0x3fb15653d1507788              # double 0.067723501779680118
	.quad	0x3fe59ff1c7287cc2              # double 0.67577446840359578
	.quad	0x3feb83c549970649              # double 0.85983528492961014
	.quad	0x3fe9a95ed5ac0910              # double 0.80192510350051016
	.quad	0x3febce6bcd66d1e0              # double 0.868947888541296
	.quad	0x3fe472bebb7c23a2              # double 0.63900696390293299
	.quad	0x3fd3f72c7be3d144              # double 0.31196128939270218
	.quad	0x3febbde4022b8682              # double 0.86693001197654973
	.quad	0x3fe737e22801ceba              # double 0.72557170690421136
	.quad	0x3fd4fdb66bf4295a              # double 0.32798538725241644
	.quad	0x3feb70bf0b0a882d              # double 0.85751297146294336
	.quad	0x3fcc29a1d47ea0c8              # double 0.22002051234927067
	.quad	0x3fe4b9ac2fd54507              # double 0.6476651128997738
	.quad	0x3fea7f56efc2528d              # double 0.82804438426917815
	.quad	0x3fe28606d4b704d8              # double 0.57886067911035877
	.quad	0x3fd69dc2da075da6              # double 0.35337897579071365
	.quad	0x3fed1ac04c1cd723              # double 0.90951552263024771
	.quad	0x3fcc1ee37454aa48              # double 0.21969264202319239
	.quad	0x3fec87ce7fd158fb              # double 0.89157795872122791
	.quad	0x3fe023b87d92e9e8              # double 0.50436043287419086
	.quad	0x3fecc118034ef6ac              # double 0.89857102056676785
	.quad	0x3fe10e59bf536c98              # double 0.53300177925429448
	.quad	0x3fdc72d489507d62              # double 0.44450868043528236
	.quad	0x3fe0cc34ec1d3d41              # double 0.52492757907922549
	.quad	0x3feca593a7024824              # double 0.89521200770309805
	.quad	0x3f4e2245b144ac00              # double 9.1961291267261824E-4
	.quad	0x3fa80eeb3c6a0720              # double 0.046988822102333794
	.quad	0x3fd7dc04b7c345de              # double 0.3728038591917463
	.quad	0x3fe2133cd9fb5548              # double 0.56484835218967877
	.quad	0x3fc656f7be014b20              # double 0.17452904489126642
	.quad	0x3fc61c01876e7aa8              # double 0.1727296744620237
	.quad	0x3fee459a67fe50af              # double 0.94599647818770005
	.quad	0x3fbb79deadd382b0              # double 0.10732833617977167
	.quad	0x3fd76be9a2616cba              # double 0.36596146447636679
	.quad	0x3fac28ba499e3100              # double 0.054998227583469728
	.quad	0x3fdc0fb2dec86b4a              # double 0.43845817333356207
	.quad	0x3fd63d639a8bc4a8              # double 0.34749689190273125
	.quad	0x3fea3d2e97f55d7d              # double 0.81996850661646159
	.quad	0x3fc18b76cd247a68              # double 0.13706860558245926
	.quad	0x3fc0b7ca09dc0588              # double 0.13060880166453281
	.quad	0x3fa644b3fbdbdea0              # double 0.043492912764063307
	.quad	0x3fe1037fbbb3a9ff              # double 0.5316771188784627
	.quad	0x3fec2caeb9f7a128              # double 0.88045440980662182
	.quad	0x3fe49915393035aa              # double 0.64368687791436696
	.quad	0x3fd5c675434164cc              # double 0.34023791854776841
	.quad	0x3fd4a0df45366cd6              # double 0.3223188568023948
	.quad	0x3fef2802c0277567              # double 0.97363412408928418
	.quad	0x3fe46bd81345710d              # double 0.63816455615918388
	.quad	0x3fecddaa27e1359d              # double 0.9020586756611696
	.quad	0x3faa0264f70d7180              # double 0.050799517781999093
	.quad	0x3fe4561599e0ab91              # double 0.63550834707472081
	.quad	0x3fe6cc5dc0e2eb7b              # double 0.71244704888464072
	.quad	0x3fce1465c85cb594              # double 0.23499748500163931
	.quad	0x3fbb0698ad7fe840              # double 0.10556940303641316
	.quad	0x3fea84e54050e04e              # double 0.8287225967569698
	.quad	0x3fb292e0415e8cd0              # double 0.072553649863539293
	.quad	0x3feb5c3d4d08cf6b              # double 0.85500969930442972
	.quad	0x3fd3ad8f803fd644              # double 0.30746829532958864
	.quad	0x3fe66b97de796979              # double 0.70063394023900039
	.quad	0x3fcbdb59321a08b8              # double 0.21763148256656506
	.quad	0x3fe1014589e26206              # double 0.53140522890595387
	.quad	0x3fe1a806745bebce              # double 0.55176089025860064
	.quad	0x3fe8327809715e6a              # double 0.75616075367265734
	.quad	0x3feb9f72fa9a9967              # double 0.86321400590967989
	.quad	0x3fe69f25547baf49              # double 0.70692698002447074
	.quad	0x3fe1ca7614b3629d              # double 0.55596450846777012
	.quad	0x3fa374ca23074900              # double 0.038000408912596484
	.quad	0x3fdec03b3a301b62              # double 0.48048287088788844
	.quad	0x3fd969fbc066cc44              # double 0.39709371365751545
	.quad	0x3fdc34785ca0ad5c              # double 0.44070252462070925
	.quad	0x3fe2dbbad7a4dcc3              # double 0.58932249181716434
	.quad	0x3fe27ffaf75dd95a              # double 0.5781225997332442
	.quad	0x3fe4c01c429d0b4b              # double 0.64845097551765585
	.quad	0x3fd9268c2a8cf1fc              # double 0.39297775416687819
	.quad	0x3fde4a0b16a3e374              # double 0.47326924525218961
	.quad	0x3fe0adacfdb3c82f              # double 0.52120065261101967
	.quad	0x3fe6a9e988ef68b3              # double 0.70824124093203122
	.quad	0x3fd647a81dd8d250              # double 0.34812357821218587
	.quad	0x3fdb490875798e16              # double 0.42633258316183864
	.quad	0x3fe993de35dee162              # double 0.79930029412848236
	.quad	0x3fdd6e17c38354a0              # double 0.4598445329004992
	.quad	0x3fe48dbd96128155              # double 0.64230231581681585
	.quad	0x3fb509380acd32d8              # double 0.082171919476603406
	.quad	0x3fe8c8fc9c5fd222              # double 0.77453451673369877
	.quad	0x3feb5434f56f567a              # double 0.85402915894037723
	.quad	0x3fe09971c0933cae              # double 0.518730999110536
	.quad	0x3fd25c70f026e18e              # double 0.2868921609147258
	.quad	0x3fed4ab4f17b453d              # double 0.91536948360786818
	.quad	0x3fe2bf629e7cd573              # double 0.58586245493522282
	.quad	0x3fe98618aebcdfca              # double 0.79761919144129334
	.quad	0x3fcdce50da4a8588              # double 0.23285875948662871
	.quad	0x3fc70c11449c4814              # double 0.18005576944466439
	.quad	0x3fd4e0fb13ca5246              # double 0.3262317364945243
	.quad	0x3fe185c74aa51698              # double 0.54758038119389862
	.quad	0x3f9c0b7c275f8a40              # double 0.027387561705731978
	.quad	0x3fe9c7c9669b29f7              # double 0.80563802757507019
	.quad	0x3fe28852ff9d1108              # double 0.57914113926429511
	.quad	0x3fe3668a48d6a513              # double 0.6062671110750294
	.quad	0x3fec090ac2aceadc              # double 0.87610376379538079
	.quad	0x3fd8bbd242d27524              # double 0.38646370435329147
	.quad	0x3fdf591c6e438bac              # double 0.48981390731767749
	.quad	0x3fc64514f87bded8              # double 0.17398321278573436
	.quad	0x3fd484ec7d134f46              # double 0.32061302389523794
	.quad	0x3fdebc386c038264              # double 0.48023806141103464
	.quad	0x3fc75e49af73f448              # double 0.18256493632353199
	.quad	0x3fce1a6e65a47984              # double 0.23518161738406829
	.quad	0x3fdc9a2b51cb2822              # double 0.44690974223760993
	.quad	0x3fe34c68ec8e0e8e              # double 0.60307737543230799
	.quad	0x3f8f51febb8706c0              # double 0.015293111894496447
	.quad	0x3fe06de599fc402b              # double 0.51341514659180143
	.quad	0x3fb5fe6e0b191758              # double 0.085913541516757674
	.quad	0x3fe9ae1a837a4370              # double 0.80250287703721135
	.quad	0x3fd3bbba78abf0de              # double 0.30833303245868915
	.quad	0x3fd702c31c1142c6              # double 0.35954358807525144
	.quad	0x3fce0dc07dc99644              # double 0.23479467527356424
	.quad	0x3fe0be01500128fc              # double 0.52319398523221095
	.quad	0x3fd2754db8065200              # double 0.28840964289818771
	.quad	0x3fe85607ad4237bd              # double 0.76050170745451562
	.quad	0x3fd5808a2afa82fa              # double 0.33597044179082014
	.quad	0x3fed2f15580adf22              # double 0.91199748225969679
	.quad	0x3fe41dc4d3101cda              # double 0.62863389228086963
	.quad	0x3fc7eeff239cdc10              # double 0.18698109854605649
	.quad	0x3fe5f5318010f251              # double 0.68618083012513342
	.quad	0x3fd67b542c2f87f4              # double 0.35127739253050483
	.quad	0x3fe0b3d061e9e2e1              # double 0.52194995044473214
	.quad	0x3fb990e8297521d0              # double 0.099867353555175286
	.quad	0x3febc505dbefd47b              # double 0.86780064541257163
	.quad	0x3fde4e4c0cb66ab4              # double 0.4735288738390111
	.quad	0x3fc9f594f5663c54              # double 0.20280706388845948
	.quad	0x3fe4c0ecb9a37b68              # double 0.64855037934817705
	.quad	0x3fe8c0e73a928588              # double 0.77354775848304858
	.quad	0x3fd301142db2f7dc              # double 0.29694084608843041
	.quad	0x3fe31947da3523be              # double 0.59683601969401656
	.quad	0x3fe5b50409255944              # double 0.67834665094668667
	.quad	0x3fd2aff17baddfd2              # double 0.29198872640654117
	.quad	0x3fe8a8527de005b2              # double 0.77054714760759269
	.quad	0x3fdb0467509cacbc              # double 0.42214377281443283
	.quad	0x3fee4eb8e12dab88              # double 0.94710964183956125
	.quad	0x3fd748871cf19f18              # double 0.36380174471422455
	.quad	0x3fe33e3a2641e64c              # double 0.60134608719017413
	.quad	0x3fc9994d4d6a3988              # double 0.19999090461756119
	.quad	0x3fea9712ed822e62              # double 0.83094164265044079
	.quad	0x3fd1ec8f86f03968              # double 0.28006351640296723
	.quad	0x3feee31f507eee94              # double 0.96522489282456769
	.quad	0x3f91678c974ce840              # double 0.01699657128776999
	.quad	0x3f86be1673d641c0              # double 0.011104751024306192
	.quad	0x3fe4ce60cdf3b406              # double 0.65019264435761737
	.quad	0x3fe077c665d5eab5              # double 0.51462097062843404
	.quad	0x3fb1553669087cc0              # double 0.067706490176067113
	.quad	0x3fd197ced116923e              # double 0.27489061754957678
	.quad	0x3fd3b76f421a8654              # double 0.30807095961981656
	.quad	0x3fed348d89396654              # double 0.91266514588933
	.quad	0x3feaff5955288825              # double 0.84367052681432553
	.quad	0x3fe4f26093233e26              # double 0.65458706605744932
	.quad	0x3fc7fb772a38ef1c              # double 0.18736161767616799
	.quad	0x3fc50fd0c66dc774              # double 0.16454515160472349
	.quad	0x3fd82d337b65ea0e              # double 0.37775885630222283
	.quad	0x3febf810d796b93e              # double 0.87403146845989688
	.quad	0x3febb430f0127555              # double 0.86574599160273158
	.quad	0x3fb66223a29cf0c0              # double 0.0874349853519929
	.quad	0x3fc98c80e66f3cfc              # double 0.19960032703099972
	.quad	0x3fd674ce996904bc              # double 0.35087933522670389
	.quad	0x3fa71826d7411b50              # double 0.04510613801590202
	.quad	0x3fe54f0f94e4c728              # double 0.66590098458093383
	.quad	0x3fb93b9fd65f4750              # double 0.098566045605619878
	.quad	0x3fd8c5b23dd1102a              # double 0.38706642185957441
	.quad	0x3fa06712b6e9e6b0              # double 0.032036385372476217
	.quad	0x3fdee8752510b07c              # double 0.4829380857434058
	.quad	0x3fee39874570681a              # double 0.94452251016923872
	.quad	0x3fe5df1f5d89721d              # double 0.68348663586545266
	.quad	0x3fd7b180136ae766              # double 0.37020875831841804
	.quad	0x3fb0f704968aeb10              # double 0.066269194367958528
	.quad	0x3fe8ef1d033ab7fb              # double 0.77918863898025792
	.quad	0x3fe92198964d73ed              # double 0.7853510795208628
	.quad	0x3f2beee8f99ca000              # double 2.1311372693699759E-4
	.quad	0x3fa64d503293d140              # double 0.04355860345268292
	.quad	0x3fe36c5bbf4e8973              # double 0.60697734226805122
	.quad	0x3fe2b2ae59a13a1e              # double 0.58431165223902659
	.quad	0x3fc091e1b24120fc              # double 0.12945195392445175
	.quad	0x3fc97963dbe48ed4              # double 0.19901703106835689
	.quad	0x3feff50e1ddb86ae              # double 0.99866395789668672
	.quad	0x3fe5abd0cd9014af              # double 0.6772235884569876
	.quad	0x3fe0b956c52122e1              # double 0.52262438299029779
	.quad	0x3fe51014bf2efc6c              # double 0.65821301785025588
	.quad	0x3fe9ad85c3d46d66              # double 0.80243194816595742
	.quad	0x3fe8fffa31a97eaa              # double 0.78124723147989994
	.quad	0x3feb05b0bc255894              # double 0.84444462535135977
	.quad	0x3fd3fddda4d303d8              # double 0.31236973854180183
	.quad	0x3fe2150c498f7f4e              # double 0.56506933562557449
	.quad	0x3fdf21e7d9107898              # double 0.48644443700494255
	.quad	0x3fcfba01d3e461a8              # double 0.24786398741049465
	.quad	0x3fe45b4a34d0e804              # double 0.63614378276474826
	.quad	0x3fe0deef0a06f00a              # double 0.52721359213274011
	.quad	0x3fcd0a47a4f774c0              # double 0.22687621645937917
	.quad	0x3fe0ff6246ceaa05              # double 0.53117479161784387
	.quad	0x3fcde6267d0e3360              # double 0.23358613115524474
	.quad	0x3fe653d7756b8da0              # double 0.69773457463854882
	.quad	0x3feed8c44791dc60              # double 0.96396078089209069
	.quad	0x3fbd00dc016a17a8              # double 0.11329436335117171
	.quad	0x3fda93733d6962ea              # double 0.41524964329941716
	.quad	0x3fdd45759ac714c0              # double 0.45736446490293403
	.quad	0x3fdc8e37103bd2b0              # double 0.44618012032814658
	.quad	0x3fe1af15a4209f1a              # double 0.55262262397897932
	.quad	0x3fce93dfdb0d725c              # double 0.23888776966022618
	.quad	0x3fdfb7b4d2043546              # double 0.49558754453103793
	.quad	0x3fd7a1213cf89770              # double 0.36920958475308563
	.quad	0x3fcca3bff29f94ec              # double 0.2237472471889882
	.quad	0x3fd5e716e92cee2c              # double 0.34222958346410581
	.quad	0x3fcbda3ae3ce6140              # double 0.21759735225055898
	.quad	0x3fee18590bee70ca              # double 0.94047214823106029
	.quad	0x3fd9c7abe5fc2b04              # double 0.4028119798610279
	.quad	0x3feb6fa0b9e4447b              # double 0.85737644488302978
	.quad	0x3fe3170c34d2c4ec              # double 0.59656343762449415
	.quad	0x3fca731f52520f44              # double 0.20663825530584223
	.quad	0x3fe6042812d91642              # double 0.68800738984345622
	.quad	0x3fee6a1688cfcdcf              # double 0.95045019837419342
	.quad	0x3fc143e8774325f0              # double 0.13488488982538582
	.quad	0x3fd6361dd0ab8bd2              # double 0.34705300691547081
	.quad	0x3fec5544f82d1e4a              # double 0.88540886375353378
	.quad	0x3fe2bf15e4aca0c7              # double 0.58582586920695057
	.quad	0x3fe418e8f047cfa1              # double 0.6280407612780331
	.quad	0x3fd4c461573b5548              # double 0.32448609846808951
	.quad	0x3fca817ff2ce1ed8              # double 0.20707702022286045
	.quad	0x3fddaaaae5d45db0              # double 0.46354172176639974
	.quad	0x3fee856501b2dfe8              # double 0.95378351527960791
	.quad	0x3fe6c4a67ad34f6f              # double 0.71150516499845462
	.quad	0x3fe834a61f0bfae4              # double 0.75642686904742761
	.quad	0x3fd49226e92ed32e              # double 0.32142040988701381
	.quad	0x3fe29c8a376b9682              # double 0.58160887550612039
	.quad	0x3fca35a57406c3bc              # double 0.20476215520241492
	.quad	0x3fc5cefa1579aa70              # double 0.17037893341633348
	.quad	0x3febf7c8b2d36f44              # double 0.8739970677083666
	.quad	0x3fc055ad29df0ed8              # double 0.12761463684557017
	.quad	0x3fd6a6a54db7480c              # double 0.35392124738166397
	.quad	0x3fe72a96df60a87e              # double 0.72394889477187951
	.quad	0x3fe510ec28440adf              # double 0.658315733570216
	.quad	0x3fcaa93764b56b40              # double 0.20828907411017816
	.quad	0x3fd5559711386b3e              # double 0.33334900552442892
	.quad	0x3fe2acfb90915970              # double 0.58361604915516629
	.quad	0x3fd02187214a65c0              # double 0.25204637766873006
	.quad	0x3fd89608946d1e84              # double 0.3841573190188472
	.quad	0x3fe21d7fa5bec054              # double 0.56610090610593966
	.quad	0x3fc7d0c32317c5e4              # double 0.18605841840285031
	.quad	0x3fe65c70f6242bec              # double 0.69878433298560827
	.quad	0x3fc5de4c3f1ffcdc              # double 0.17084649164460231
	.quad	0x3f74ac897aa19280              # double 0.0050473566317107421
	.quad	0x3fd90b2b267d55a8              # double 0.3913066745638738
	.quad	0x3febe74bbc59273b              # double 0.87198435580032851
	.quad	0x3feb6990a14796d0              # double 0.85663634777002962
	.quad	0x3fc88906201f1588              # double 0.19168163841656516
	.quad	0x3fe816f7ac6f3e2b              # double 0.75280364683744005
	.quad	0x3fe8df4eebc83627              # double 0.77725931216418054
	.quad	0x3feba22c37589fb4              # double 0.86354647455026745
	.quad	0x3feea0ffe859e6e2              # double 0.95715327626313873
	.quad	0x3fe841acd52f0b7b              # double 0.75801698338942403
	.quad	0x3fa2a78617860f90              # double 0.036434355136434893
	.quad	0x3fd46eaeaee4cfa2              # double 0.31925551490280146
	.quad	0x3fe72be180e2cd94              # double 0.72410655186688411
	.quad	0x3fdc00241c1bd1c8              # double 0.43750860924708634
	.quad	0x3fef129f8e360ab7              # double 0.97102334762197173
	.quad	0x3fee480b6d42bbff              # double 0.94629451122261787
	.quad	0x3fe1ce036ab156e8              # double 0.55639811361717495
	.quad	0x3fd128d5fec151c4              # double 0.26811742666657445
	.quad	0x3fe6e9a53f44693e              # double 0.7160211787880042
	.quad	0x3fb884a7b8c51040              # double 0.09577415715199411
	.quad	0x3fd7a772b10691c6              # double 0.36959521567976272
	.quad	0x3fe950df3dd18f54              # double 0.79112207483238217
	.quad	0x3fe80a9c5f4350fe              # double 0.75129526716275996
	.quad	0x3fe6e668ec711615              # double 0.71562620334651916
	.quad	0x3fbf48cc17125b70              # double 0.12220454753183474
	.quad	0x3feee15892f37851              # double 0.96500805570009096
	.quad	0x3fe1a0a6261e152b              # double 0.55086047596765775
	.quad	0x3fbdeb545b3be1a8              # double 0.11687209346189908
	.quad	0x3feb6b525bc70284              # double 0.85685079503316829
	.quad	0x3fef043157f5f6c5              # double 0.96926181011050316
	.quad	0x3fe4e0a1d823bc8e              # double 0.6524209233738405
	.quad	0x3fe363fe79a9d4c3              # double 0.60595630419143054
	.quad	0x3fef8501bf985379              # double 0.98498618527319969
	.quad	0x3fd1557c401a6576              # double 0.27084261188573266
	.quad	0x3fe36952f5ed753c              # double 0.60660694153526817
	.quad	0x3fd05d9f2466270a              # double 0.25571421198456845
	.quad	0x3fd984eb952b3b34              # double 0.3987378079154269
	.quad	0x3fe2b9e0e51e3998              # double 0.58519024610159232
	.quad	0x3fe5ec8aa3785a63              # double 0.68512470176467521
	.quad	0x3fb1ce0a7853b8f8              # double 0.069550184609145194
	.quad	0x3fee7b6a058fe3b5              # double 0.95256520353642904
	.quad	0x3fd0c6c2b543e8bc              # double 0.26213138295828364
	.quad	0x3fb8dabaa27d0408              # double 0.097087540311818654
	.quad	0x3fe1c218bab81763              # double 0.55494343250823552
	.quad	0x3fda6e47b9475d98              # double 0.41298096746091906
	.quad	0x3fe93a4e37288ee7              # double 0.78836737416392288
	.quad	0x3fcff8fa8d1ff2c4              # double 0.24978572741374283
	.quad	0x3fecb40df7deaaf2              # double 0.89697931682652965
	.quad	0x3fef3a27276ac52d              # double 0.97584874819418632
	.quad	0x3fe1126dc4a90747              # double 0.53349960718353706
	.quad	0x3fdb524813847b10              # double 0.42689706712728626
	.quad	0x3fda0cffeb950f2e              # double 0.40704343801575049
	.quad	0x3fee8d4fd556cb7b              # double 0.95474998157293045
	.quad	0x3fd82bdccd0766ca              # double 0.37767715475420671
	.quad	0x3fdb0f6b9ae6c20c              # double 0.42281618239488306
	.quad	0x3feb1fd717661fd5              # double 0.8476367432604045
	.quad	0x3f9f5f3ab296ade0              # double 0.030636708402807744
	.quad	0x3fdeaf908300bf40              # double 0.47946560662511573
	.quad	0x3fe8d78d11258b5e              # double 0.77631238316494566
	.quad	0x3fdad518acca6102              # double 0.41925637125088155
	.quad	0x3fe4d468b23558b9              # double 0.65092882925343709
	.quad	0x3fcf761e1750af0c              # double 0.24579216135440907
	.quad	0x3fb98dda7c234f40              # double 0.099820761973487215
	.quad	0x3fe12b24a382df46              # double 0.53651649413857494
	.quad	0x3fec997108b79d8e              # double 0.89373065664851636
	.quad	0x3feeb88910f9434d              # double 0.96002629580662246
	.quad	0x3fb1806f8408f380              # double 0.068366021857356074
	.quad	0x3fda4329e3c86476              # double 0.410349342769741
	.quad	0x3fcb30059f781890              # double 0.21240301405504569
	.quad	0x3fd6d8077d6aa786              # double 0.35693537948338194
	.quad	0x3fd1f4a81351e46e              # double 0.28055765043934044
	.quad	0x3faef06a68113bc0              # double 0.060427975848703408
	.quad	0x3fd91e018612446c              # double 0.39245641796976005
	.quad	0x3fd440f7d0575b10              # double 0.31646533342193184
	.quad	0x3fdc673019b403de              # double 0.44379808912350238
	.quad	0x3fd8d0a0d0ae83c4              # double 0.38773365382263258
	.quad	0x3fe177cdb686ddba              # double 0.54587445878762897
	.quad	0x3fc480bc55a580d4              # double 0.1601787012286936
	.quad	0x3fe41d4f79d7b82c              # double 0.62857793614762647
	.quad	0x3fd8f6454d4cd644              # double 0.39003117131082754
	.quad	0x3fd578b4c534017c              # double 0.33549231775398147
	.quad	0x3fd415b869bbd76e              # double 0.3138257057720385
	.quad	0x3f931459362747c0              # double 0.018632310800803742
	.quad	0x3fe017028e6e1a0a              # double 0.50280883615852301
	.quad	0x3fe698ef3c8ef4e3              # double 0.70616876437966558
	.quad	0x3fc3f21bc4ec03f4              # double 0.15582606425598977
	.quad	0x3fe42edacd04bb8f              # double 0.63071956675217844
	.quad	0x3fe4899e657b410d              # double 0.64179916210744781
	.quad	0x3fe61b3e5aa8e808              # double 0.69082563120832763
	.quad	0x3fb0712e1cbfd4c0              # double 0.064226991671449518
	.quad	0x3fd5c9111fc19394              # double 0.34039714909732166
	.quad	0x3fe316890b201958              # double 0.59650089428832143
	.quad	0x3fcee23217e9db48              # double 0.24127794425631977
	.quad	0x3fcd6289c170a8c4              # double 0.22956964440647287
	.quad	0x3fd93df541d9f016              # double 0.39440661841195046
	.quad	0x3fc930cb1512b7c4              # double 0.19680155304871338
	.quad	0x3fe2dd64aafcb22e              # double 0.58952554126660117
	.quad	0x3fc1726ae237354c              # double 0.13630424543081643
	.quad	0x3f8366ce281201c0              # double 0.0094734292963501998
	.quad	0x3feb882af4f4bc24              # double 0.86037204592674187
	.quad	0x3febf5820e8a09f2              # double 0.87371924247446331
	.quad	0x3fe802041c61f6da              # double 0.75024610084048082
	.quad	0x3fda5a7f6d9474c0              # double 0.41177354527628651
	.quad	0x3fd3b8c1d11ec116              # double 0.30815167829406798
	.quad	0x3fe4cda0dbbbbe3a              # double 0.65010111729311082
	.quad	0x3feed88f63683a90              # double 0.96393556037385686
	.quad	0x3fd947385b03ed28              # double 0.39497193229881811
	.quad	0x3fef851769a10627              # double 0.98499651556648337
	.quad	0x3fefabcc58867746              # double 0.98972146310891485
	.quad	0x3fec5b8c11264ad8              # double 0.88617518758322955
	.quad	0x3febcae3843df1ff              # double 0.86851669147978316
	.quad	0x3fdd5b92b1b86bf8              # double 0.45871417384631696
	.quad	0x3fe5432af0154a4d              # double 0.66444918528788721
	.quad	0x3f8310a8901a8d40              # double 0.0093091172196354543
	.quad	0x3fe84fae8930844c              # double 0.75972677988841885
	.quad	0x3fe4e39473c2ea1a              # double 0.65278074845929557
	.quad	0x3fd19bdb9603e6ca              # double 0.27513780260015308
	.quad	0x3fcf0ff3958e7134              # double 0.2426743011718685
	.quad	0x3fe5f65fe490e459              # double 0.68632502214235125
	.quad	0x3fdb4ff591ca6e5e              # double 0.42675532567384333
	.quad	0x3fe34905fd5246b4              # double 0.6026639888461518
	.quad	0x3faebfa9b1145b00              # double 0.060056021562720829
	.quad	0x3fc044afb88ed7a0              # double 0.12709614287967685
	.quad	0x3fee46850fb4c1d3              # double 0.94610837047189944
	.quad	0x3fe13219509bbcde              # double 0.53736558669870838
	.quad	0x3febd18d0f705cae              # double 0.86932995810902525
	.quad	0x3fdaeb65361aa3d2              # double 0.42061739238357376
	.quad	0x3fc9556347409ea0              # double 0.19791832903978435
	.quad	0x3fe6db812a2ce2d0              # double 0.714294988988593
	.quad	0x3fc3c0cc427d1ddc              # double 0.15432122465629916
	.quad	0x3fe2e38c9de69aeb              # double 0.59027701225281015
	.quad	0x3feae30b86f869fb              # double 0.84021545754813987
	.quad	0x3fe2eb23a650087a              # double 0.59120352251944941
	.quad	0x3fec4d68a3f4865c              # double 0.88444931051726483
	.quad	0x3fd98d388c995fc0              # double 0.39924443941481158
	.quad	0x3fe5b0537d9e1256              # double 0.67777418646489695
	.quad	0x3feee065905cc7c8              # double 0.96489217944894623
	.quad	0x3fcf3096d8c90940              # double 0.24367032609195327
	.quad	0x3fa05c868fb181e0              # double 0.031955914536186958
	.quad	0x3fd1b00491f3e4e8              # double 0.27636827710337153
	.quad	0x3feca778c1bced55              # double 0.89544332351162359
	.quad	0x3fe7ebb0af333475              # double 0.74752077311280962
	.quad	0x3fee79cd8ecb06f5              # double 0.95236852540275996
	.quad	0x3f970d1e1cf0c5e0              # double 0.022510977283848876
	.quad	0x3fc40efe174f2f0c              # double 0.15670753610753996
	.quad	0x3fe749ad0577fd12              # double 0.72774363582712653
	.quad	0x3fd706defafad9f0              # double 0.35979437360529598
	.quad	0x3fed9bfba6f0f454              # double 0.9252908955164778
	.quad	0x3fc72e38f566b668              # double 0.18109809858781323
	.quad	0x3fe428755f585b92              # double 0.6299387800416858
	.quad	0x3fe29eee9a62ea27              # double 0.58190088418570418
	.quad	0x3fe1388f36578f12              # double 0.53815422643353572
	.quad	0x3fefc85a17fff520              # double 0.99320702254741277
	.quad	0x3fd0e0b19868c084              # double 0.26371421703061793
	.quad	0x3fdadb6bbf28b6d8              # double 0.41964238803744314
	.quad	0x3feb9c1b4daaef12              # double 0.86280598802065556
	.quad	0x3fe79a924c24bcc9              # double 0.73761858817842907
	.quad	0x3fb02c826a1cccb8              # double 0.063179160028812187
	.quad	0x3fde9c63bd4c8dee              # double 0.47829526411280099
	.quad	0x3fe40cd410a6fdf7              # double 0.62656596424488853
	.quad	0x3fd9ff4bfb45589c              # double 0.4062070802514286
	.quad	0x3feeef8fc551b41c              # double 0.96674335993668902
	.quad	0x3fef537591e2b31d              # double 0.97893789761801353
	.quad	0x3fe5f233b6a3b8b8              # double 0.68581567451271663
	.quad	0x3fe676cc77483798              # double 0.70200179383549521
	.quad	0x3fd7bbf4659ded7c              # double 0.37084684299016835
	.quad	0x3fbaa3406e5d15a0              # double 0.10405352301048376
	.quad	0x3fdc7f0bb56ec4f8              # double 0.44525425642048289
	.quad	0x3fdfa999df44c65c              # double 0.49472662738398809
	.quad	0x3fde967f5d7a9174              # double 0.47793563965594577
	.quad	0x3fe894b6b1d7fcc2              # double 0.76815352187249908
	.quad	0x3fdbc289cb95bbe8              # double 0.43374867326104871
	.quad	0x3fe5d9662923dede              # double 0.68278797183208062
	.quad	0x3feabe174b92c1b7              # double 0.83570446739582038
	.quad	0x3f65cb3e1e7d0700              # double 0.002660390211446706
	.quad	0x3fd906d011a3fd14              # double 0.3910408184310239
	.quad	0x3fdea4c7d2c5d446              # double 0.47880740721968029
	.quad	0x3fe9b212ae955a7b              # double 0.80298742388079292
	.quad	0x3fd449a41aa22042              # double 0.31699469185742057
	.quad	0x3fdd1373bc9a9df2              # double 0.45431226175648398
	.quad	0x3fafbcdd12e4c430              # double 0.061987789684629369
	.quad	0x3fedab2b6a43ddaa              # double 0.92714472536947778
	.quad	0x3fd289fe3443a37e              # double 0.28967242340018362
	.quad	0x3fdbbc703711d876              # double 0.43337636354352271
	.quad	0x3fe1f3f899c8b2a4              # double 0.561031627997711
	.quad	0x3fe4cb26f64e4558              # double 0.64979885202971399
	.quad	0x3fe506756fec443d              # double 0.65703842029518678
	.quad	0x3fd86391f6d1fbee              # double 0.38107728103199079
	.quad	0x3fdea5c9bdc8ae7a              # double 0.47886889966569124
	.quad	0x3fd19a62f0075160              # double 0.27504800262729212
	.quad	0x3fd866e76a850ed2              # double 0.38128075983352716
	.quad	0x3fd9cd1a742e1e22              # double 0.40314351411550053
	.quad	0x3fe324b06e9b6d72              # double 0.59822866061169422
	.quad	0x3fdd6cafde8f356a              # double 0.45975872740094437
	.quad	0x3fe8f57d7733f703              # double 0.77996705324014248
	.quad	0x3fe830c1b63c1289              # double 0.75595174401003462
	.quad	0x3fe3783e50b5923b              # double 0.60842815173652498
	.quad	0x3fefd30b5234ffba              # double 0.99451223426876045
	.quad	0x3fe70fcb3e6387f3              # double 0.7206779688387982
	.quad	0x3fed9612aeace924              # double 0.92456945530219458
	.quad	0x3fe638efd7ea9968              # double 0.69445030375645178
	.quad	0x3fe317188889996c              # double 0.59656931560020388
	.quad	0x3fe32156f84b6832              # double 0.59781979079276071
	.quad	0x3fdff4b968b00f64              # double 0.49931178306018453
	.quad	0x3fe9c1666fa5f321              # double 0.80485841566369143
	.quad	0x3fe83056695067c2              # double 0.75590057915837172
	.quad	0x3fd2e400ca919d38              # double 0.29516620428190121
	.quad	0x3fe254226fd42105              # double 0.57277032701043196
	.quad	0x3fd76cb6b31a5f60              # double 0.36601035585908015
	.quad	0x3fc7cf6551616374              # double 0.18601671670583253
	.quad	0x3fbcfe974dfc8378              # double 0.11325975088085538
	.quad	0x3fcc4f1763221f88              # double 0.22116367664807179
	.quad	0x3fe93cb460514168              # double 0.78866022884362241
	.quad	0x3fe066f4a186798f              # double 0.51256782100590381
	.quad	0x3fd1f2ce40ad1d2e              # double 0.2804446822742247
	.quad	0x3fe1aef617c09ebd              # double 0.55260758055825188
	.quad	0x3fe94e9e15833f4d              # double 0.79084686471649379
	.quad	0x3fee5193e0f587de              # double 0.94745820939374048
	.quad	0x3fa134bb90816360              # double 0.033605443372556776
	.quad	0x3f92b3bdeba19380              # double 0.018263785845550995
	.quad	0x3fe5920175516e2e              # double 0.67407296098412472
	.quad	0x3fe65568d4f5b048              # double 0.69792596429534459
	.quad	0x3fe8b819d1eb49e2              # double 0.77247324943374118
	.quad	0x3fe67ce29e022899              # double 0.70274477826139325
	.quad	0x3fe03b915bd0e57e              # double 0.50727146084606978
	.quad	0x3feaf3a13305de0e              # double 0.84223995175756428
	.quad	0x3fefb3209300dccb              # double 0.99061611854167475
	.quad	0x3fb74583d6225f50              # double 0.090904464510797255
	.quad	0x3fefcd372db4f0b4              # double 0.99380072524174645
	.quad	0x3fe7378eb3ba72ca              # double 0.72553191283403717
	.quad	0x3fde16be57d6d452              # double 0.47013815477413801
	.quad	0x3fd4d3cfd78a3be0              # double 0.32542797135186952
	.quad	0x3fd2649a360ea240              # double 0.28739028243083808
	.quad	0x3fe3e58383eeffbf              # double 0.62176681297568581
	.quad	0x3fda05ff2e835906              # double 0.40661601583759965
	.quad	0x3feb97a5638d5e1d              # double 0.86226148074905817
	.quad	0x3fe2512d70d7bda9              # double 0.57240936317059721
	.quad	0x3fecfbed85ea66ba              # double 0.90575290828129273
	.quad	0x3fef5de56e1d9d1c              # double 0.98021193987816301
	.quad	0x3fccd43acb4f1308              # double 0.22522673537437066
	.quad	0x3f9c9e65414c2680              # double 0.027947980986061882
	.quad	0x3fe2fde25e9665b1              # double 0.59349173044318182
	.quad	0x3fed8f10760a0e15              # double 0.92371390394731867
	.quad	0x3fea587ea804b149              # double 0.82330258194046124
	.quad	0x3fe5a1d18b3fb089              # double 0.67600323864964296
	.quad	0x3fcb7d2336c97034              # double 0.21475639510288291
	.quad	0x3fc7d04a929b0350              # double 0.1860440460059416
	.quad	0x3fba2450316f9848              # double 0.10211659628802849
	.quad	0x3fe1b171d6a14555              # double 0.5529107276908386
	.quad	0x3fe2987dbb786042              # double 0.58111464133526902
	.quad	0x3fef9b7a26865551              # double 0.98772914432871961
	.quad	0x3fa04dcc057dde10              # double 0.03184354369198783
	.quad	0x3fdab5c5bd08eadc              # double 0.41734450779374099
	.quad	0x3fe900d9588400f5              # double 0.78135363853655682
	.quad	0x3fed775c7a4b4912              # double 0.9208204639965365
	.quad	0x3fe2b297501da617              # double 0.58430066726322394
	.quad	0x3fe53ed5cbfbd249              # double 0.66392030563890458
	.quad	0x3feac2dbcb46aefd              # double 0.83628644659390228
	.quad	0x3fea37c1cff929e4              # double 0.81930628413948314
	.quad	0x3fe6d851df174ef6              # double 0.71390622684927396
	.quad	0x3fe75a809ccc67c8              # double 0.72979765534113827
	.quad	0x3fc05c7e24e7d9d0              # double 0.12782265474352394
	.quad	0x3fd4924ddf131a20              # double 0.32142969879751782
	.quad	0x3fecf20a482ce862              # double 0.90454591843377963
	.quad	0x3fe2c20f70ecad35              # double 0.5861890035206786
	.quad	0x3fef0939080134f5              # double 0.96987582744045985
	.quad	0x3fcb99a4c37e0a60              # double 0.21562633080982874
	.quad	0x3fe630cea461830c              # double 0.69345790963788678
	.quad	0x3fd9215521dfe264              # double 0.39265945728360507
	.quad	0x3fea37ffa821262d              # double 0.81933577382841849
	.quad	0x3fe024070ad37745              # double 0.50439788927517581
	.quad	0x3feb163bf1f45a4e              # double 0.84646413094271522
	.quad	0x3fee03896d188535              # double 0.93793174083490405
	.quad	0x3fe52dfb7159c4d1              # double 0.66186306132126493
	.quad	0x3fe6ac7fd1d79129              # double 0.70855704293038457
	.quad	0x3fe7ba8e0d017f15              # double 0.74152281322673963
	.quad	0x3fdcbc80eec7fe56              # double 0.44900534933546987
	.quad	0x3fe9eddc147e6905              # double 0.81028560640996317
	.quad	0x3fef75ad8a2425df              # double 0.98311497669891056
	.quad	0x3fc3f288cd1e6ff4              # double 0.15583906188555796
	.quad	0x3fec5b0cfa871a32              # double 0.88611458712768454
	.quad	0x3fd2a74f7fc657b2              # double 0.29146182516103203
	.quad	0x3fd66cc43187c198              # double 0.35038857304518833
	.quad	0x3f936c95a5666de0              # double 0.018968904705259138
	.quad	0x3fc64d127ca038d0              # double 0.17422705731627852
	.quad	0x3fc5d44b801d2ba0              # double 0.17054122691692175
	.quad	0x3fc8be6c8fd254bc              # double 0.19331128141917542
	.quad	0x3fc0fb53da1a80d0              # double 0.13266990804277734
	.quad	0x3fef5745dacc0812              # double 0.97940342649258327
	.quad	0x3fe7616bc0c6a6ac              # double 0.73064220096167309
	.quad	0x3fb32172f5b97668              # double 0.074729142180751773
	.quad	0x3fe2ae5afa0c8c7a              # double 0.58378361547182966
	.quad	0x3fec0cc3f5ede6e6              # double 0.87655828507487565
	.quad	0x3fe2ddd665bd6a24              # double 0.58957977171968823
	.quad	0x3fd1f00a77f23202              # double 0.28027593339427892
	.quad	0x3fed9fb2ce49d782              # double 0.9257444409438309
	.quad	0x3fe92587d212cb00              # double 0.7858313658710756
	.quad	0x3fd8af67907099a0              # double 0.38570584397748497
	.quad	0x3fc0dba7ad75b6f4              # double 0.13170333833425441
	.quad	0x3fe73ebab330c11d              # double 0.72640738485464207
	.quad	0x3fef24f22bfcac85              # double 0.97326000777447119
	.quad	0x3fa7b873e4d4b150              # double 0.04632913750023937
	.quad	0x3fdde785532b4e9e              # double 0.46725590822209451
	.quad	0x3fc1cc2716dafff0              # double 0.13904274574269904
	.quad	0x3fe4f550be8a7c10              # double 0.65494572844534282
	.quad	0x3fabdea344d5dfa0              # double 0.054432966377987002
	.quad	0x3fd9c00207ebf306              # double 0.40234423421479482
	.quad	0x3fc8d39e66c6869c              # double 0.19395809191069169
	.quad	0x3fc389602e708ae4              # double 0.15262987392005478
	.quad	0x3fe297d53dfd4d7e              # double 0.58103429896657111
	.quad	0x3feae87492e40c1f              # double 0.84087589921580619
	.quad	0x3fe1c1ae619c046a              # double 0.55489272178978166
	.quad	0x3fe1c4157070811f              # double 0.55518600426515607
	.quad	0x3fea6541331771eb              # double 0.82486019114327058
	.quad	0x3fbbb0d7d2e87d78              # double 0.1081671609795104
	.quad	0x3febdcb0bee72139              # double 0.87068974767411256
	.quad	0x3fe96331fa2fe27f              # double 0.79335879196794667
	.quad	0x3fe1400124ce484f              # double 0.53906304539328598
	.quad	0x3fdcc5d8733b914a              # double 0.44957553151313745
	.quad	0x3fe8a07d347c9008              # double 0.76959095240863551
	.quad	0x3fbaebdf23a78c50              # double 0.10516161556692905
	.quad	0x3fb4131f8677ca90              # double 0.078416796044431302
	.quad	0x3f7ba65d2bb10480              # double 0.0067504538993158336
	.quad	0x3fd048a6eb6876fe              # double 0.25443432797497667
	.quad	0x3fd31eb0db815dbc              # double 0.29874822078769703
	.quad	0x3fd83f120f76defa              # double 0.37884952078046263
	.quad	0x3f950cc6463ff6c0              # double 0.020556543386183845
	.quad	0x3fe2b13475f86b2b              # double 0.58413146058169241
	.quad	0x3fd3cffbed2e9068              # double 0.30956934129995384
	.quad	0x3fa5936e60229230              # double 0.042140435443148383
	.quad	0x3fc474c6d818a97c              # double 0.15981374312952912
	.quad	0x3feb9e644f98c414              # double 0.86308494135130553
	.quad	0x3fed6b4f747907e0              # double 0.91934941052045004
	.quad	0x3fedb03986b9f2bb              # double 0.92776180566541855
	.quad	0x3fe3eadf296d6c40              # double 0.62242086497588645
	.quad	0x3fe58ff9c53fc0b6              # double 0.67382515454484948
	.quad	0x3fee1993a4e224ed              # double 0.94062215999397625
	.quad	0x3fc731a63f4d8f28              # double 0.1812026795479309
	.quad	0x3fe916119800b824              # double 0.78394393623398572
	.quad	0x3fd4c49ca38a150a              # double 0.32450023623125956
	.quad	0x3fd1ac4057a2cb68              # double 0.27613838728136963
	.quad	0x3fe48138b80eb940              # double 0.64077411602719536
	.quad	0x3fcc3e1ecba442a4              # double 0.22064576095046562
	.quad	0x3faf5007b54bf4a0              # double 0.061157456284470557
	.quad	0x3fea894a4a2018e1              # double 0.82925905683148582
	.quad	0x3fe2603860c72d4a              # double 0.57424563314399646
	.quad	0x3fcc6c2f592efc9c              # double 0.22205154280343187
	.quad	0x3fe907e85e4862f6              # double 0.78221529402352874
	.quad	0x3fcd15f6287c7998              # double 0.22723271347872465
	.quad	0x3fb9ae2e62808c00              # double 0.10031404404485045
	.quad	0x3fe8731191fbfd23              # double 0.76404646408619603
	.quad	0x3fc4738cd55b0a68              # double 0.15977631013636828
	.quad	0x3fee62361d6fcf13              # double 0.94948869466176899
	.quad	0x3fe9dd1eb6f51c73              # double 0.80824218496208144
	.quad	0x3fd05650a03c9282              # double 0.25526824615580079
	.quad	0x3fe03dd8282b10e2              # double 0.50754936070782386
	.quad	0x3fda170ad9a2234c              # double 0.40765639546639387
	.quad	0x3fdc9243f50d0b7e              # double 0.44642733507878762
	.quad	0x3fe6fb97b8c67626              # double 0.71821199501909372
	.quad	0x3fcdf107151d78c4              # double 0.23391808062564767
	.quad	0x3fbc4c02be050328              # double 0.11053483142042053
	.quad	0x3fe64def1014a1d0              # double 0.69701340809575107
	.quad	0x3fe6e3473ed732ac              # double 0.71524393342550274
	.quad	0x3fd599ae967c6b2c              # double 0.33750500389003224
	.quad	0x3fedd0e87ce8c33b              # double 0.93175148388227258
	.quad	0x3fbb238b1884e968              # double 0.10601109837162925
	.quad	0x3fe30a0af269e5a5              # double 0.59497592302721058
	.quad	0x3fe03e289bfd9291              # double 0.5075877234163092
	.quad	0x3fd94d74729f5bea              # double 0.3953524703369441
	.quad	0x3fb1598978842018              # double 0.067772476122741288
	.quad	0x3febc0ef068fbf9a              # double 0.86730147630258903
	.quad	0x3fd3c46de9355aca              # double 0.30886409544238502
	.quad	0x3fe6743a8c1e037d              # double 0.70168807379387454
	.quad	0x3fed0bca037aec8a              # double 0.90768910102578215
	.quad	0x3fb809c4dc78d9f8              # double 0.093899062944593825
	.quad	0x3fea5d04494f7659              # double 0.823854582962393
	.quad	0x3feb1ca264b4488a              # double 0.84724540394587788
	.quad	0x3feef8f4870cd35e              # double 0.96789003731701562
	.quad	0x3fd11e9219f68e98              # double 0.26749088798008236
	.quad	0x3fb0058dd56e4888              # double 0.062584747893455028
	.quad	0x3fc1554ca52fef0c              # double 0.1354156309679343
	.quad	0x3fe0c36612a7c548              # double 0.5238523830759414
	.quad	0x3fe308b15bbef496              # double 0.59481113356709403
	.quad	0x3fdf13a62e209b1c              # double 0.48557428841233885
	.quad	0x3fe5bbf8b51e79e6              # double 0.67919574141324968
	.quad	0x3fc2e58ef5cb82e8              # double 0.1476305675669416
	.quad	0x3fdcbde5d62e51c8              # double 0.44909044185740443
	.quad	0x3fda2897185bf432              # double 0.40872743014171242
	.quad	0x3fe539587e4ea8b9              # double 0.66325020474803076
	.quad	0x3fe8c3363e7d8db6              # double 0.77382957654156459
	.quad	0x3fe82ac0684ab411              # double 0.75521870011800918
	.quad	0x3fe9f0621899dfc5              # double 0.81059365086456892
	.quad	0x3fd6d2105fa85992              # double 0.35657128659786352
	.quad	0x3fd06fa1ad312b80              # double 0.25681344903266989
	.quad	0x3fdaaf8a63aa7668              # double 0.41696414692873995
	.quad	0x3fe695954a65c6ee              # double 0.70575966387533895
	.quad	0x3fda18ec25df47e0              # double 0.40777114580589391
	.quad	0x3fe2a822f7387279              # double 0.5830244854474379
	.quad	0x3fd001278439b940              # double 0.25007045662541216
	.quad	0x3fc86f504f20a1ec              # double 0.19089702476163894
	.quad	0x3fc8e3a483788338              # double 0.19444710177870106
	.quad	0x3fe5de23a9c951a3              # double 0.68336661492735506
	.quad	0x3fe91ea3169c594f              # double 0.78498987594756808
	.quad	0x3fe94675dda64425              # double 0.78985112467683349
	.quad	0x3fde6fccefd0f074              # double 0.47557376308009869
	.quad	0x3fde4c40717301bc              # double 0.47340403632190564
	.quad	0x3fe377cbea2e75c3              # double 0.60837360132762119
	.quad	0x3fd6c2057bfe1b58              # double 0.35559212788250738
	.quad	0x3fd97d48635993a0              # double 0.39827165319575819
	.quad	0x3fe7f2b78b6e9fce              # double 0.74837853653752417
	.quad	0x3fd5b0de7553f62c              # double 0.33892022569475233
	.quad	0x3fc0c52c6754909c              # double 0.13101725621630045
	.quad	0x3fdbc224d1c8f0a0              # double 0.433724598758781
	.quad	0x3fc96abc8fcd21a4              # double 0.19856984159038149
	.quad	0x3fe064f2bc7e69ee              # double 0.51232277693935457
	.quad	0x3fe3d73ac0b4b0c1              # double 0.62002313268524045
	.quad	0x3fe53dca5523596e              # double 0.66379276875049498
	.quad	0x3fd4192d759c2124              # double 0.31403671727504645
	.quad	0x3fdbf0ea5030e7a6              # double 0.43657930213123064
	.quad	0x3fe1ec5caab15157              # double 0.56010278070838637
	.quad	0x3fde0c4b1036d0a0              # double 0.46950031836900941
	.quad	0x3fe9680177747359              # double 0.79394601183922042
	.quad	0x3fe285cf9388ac3e              # double 0.57883433165751064
	.quad	0x3fd71983d43c3cf6              # double 0.36093230939964316
	.quad	0x3fe27b33b24c2fae              # double 0.57753929923773284
	.quad	0x3fdc4e71bb93981a              # double 0.44228785818120431
	.quad	0x3fe8bee085cc7293              # double 0.7733004201177941
	.quad	0x3fbc9dcdf697fc70              # double 0.11178290624956033
	.quad	0x3fed9025a025a5b5              # double 0.9238460662719975
	.quad	0x3fd5781d814cb1ce              # double 0.33545625330841922
	.quad	0x3fdcbc969a73e5fa              # double 0.44901051600717745
	.quad	0x3fc1d9b01c57d144              # double 0.13945580848634098
	.quad	0x3fe8813e996a1ad6              # double 0.76577691997303066
	.quad	0x3fe3c25819d2c8e8              # double 0.6174736503947118
	.quad	0x3fbe14cad6458420              # double 0.11750476580847691
	.quad	0x3fe40986e0f6fb48              # double 0.62616294802124006
	.quad	0x3fbd213b7fb923c8              # double 0.11378833645097963
	.quad	0x3fb5bf6fafd34490              # double 0.084952335764017172
	.quad	0x3fdf8d19056851b8              # double 0.4929869225318515
	.quad	0x3fdbfbd32f0ed6ba              # double 0.43724517436508459
	.quad	0x3fe5ed28c9ada432              # double 0.6852001132039105
	.quad	0x3fe5b367bd21a9dd              # double 0.67815005244966253
	.quad	0x3fef00770918abb5              # double 0.9688067605651357
	.quad	0x3fb89cef63d41e30              # double 0.096144639847005164
	.quad	0x3fe11ec2b95ce3ea              # double 0.53500496104890982
	.quad	0x3fc1ac14db003790              # double 0.13806400960350773
	.quad	0x3fc348eafe38d920              # double 0.15066277898012803
	.quad	0x3fed4147b0c243fe              # double 0.91421875498974692
	.quad	0x3fe9820cfeb059db              # double 0.79712533706588873
	.quad	0x3fd787f3d5a42048              # double 0.36767288077726734
	.quad	0x3fe13dfcc381dc0a              # double 0.53881681618702371
	.quad	0x3fe537f0a42b18c8              # double 0.66307861389284373
	.quad	0x3fe11bea1b1fea38              # double 0.53465752885615014
	.quad	0x3f98acfa345d0300              # double 0.024097356267932746
	.quad	0x3fced58fcc5cab6c              # double 0.24089238623249842
	.quad	0x3fe740db8623105a              # double 0.72666717718721974
	.quad	0x3fe1653e92f58546              # double 0.54360893919889786
	.quad	0x3fcddb663fbe5d7c              # double 0.23325803863984251
	.quad	0x3fcc4716f2e873e8              # double 0.22091948376410575
	.quad	0x3febc90523aaa12e              # double 0.86828858343236504
	.quad	0x3fb01f3d2c598e30              # double 0.0629766686702673
	.quad	0x3fee8d2e802ef4d5              # double 0.95473408733200904
	.quad	0x3fe8b84bc884c965              # double 0.77249707378204546
	.quad	0x3fe56eb9e6a33171              # double 0.6697663788450382
	.quad	0x3fabd6deb27c9390              # double 0.054373702323835649
	.quad	0x3fe543b8396679a4              # double 0.66451655589098779
	.quad	0x3fe7d19306e9b4ee              # double 0.74433280325106721
	.quad	0x3fbcfcf7654a8a68              # double 0.11323496077469886
	.quad	0x3fd3f235f3daf286              # double 0.31165837110510386
	.quad	0x3fb11e77810ab840              # double 0.066871136669505837
	.quad	0x3fd5307fe90dead4              # double 0.33108518370833662
	.quad	0x3fbe83be03266580              # double 0.11919772698310815
	.quad	0x3fdd5cdd5fe9e336              # double 0.45879301420750396
	.quad	0x3fe2475c8e64985f              # double 0.57121112643359229
	.quad	0x3fee0b0132700530              # double 0.93884334422197036
	.quad	0x3fe7409101b336b3              # double 0.72663164455453566
	.quad	0x3fec8bb56c01ca54              # double 0.89205428214183735
	.quad	0x3f92d4e9353368e0              # double 0.0183903158875659
	.quad	0x3fed029940bf86cd              # double 0.9065672173130338
	.quad	0x3fd0ecc01ae314da              # double 0.26445009828269195
	.quad	0x3fcfd542d7517008              # double 0.24869571221904629
	.quad	0x3fb05ded75dc3ba0              # double 0.06393322112511024
	.quad	0x3fe9fef3ad339525              # double 0.81237205341736696
	.quad	0x3fed81015d1a072a              # double 0.92199772056503559
	.quad	0x3fea395789b13117              # double 0.81949974911688883
	.quad	0x3febb8eb316042db              # double 0.86632308620218212
	.quad	0x3fe3fac90c7d4d04              # double 0.62436344565722424
	.quad	0x3fb38d776c84def8              # double 0.076377357477095731
	.quad	0x3fdaa19bf4343c8a              # double 0.41611384246875416
	.quad	0x3fea0c2f082c5671              # double 0.81398727032019569
	.quad	0x3fd0ed64a5950920              # double 0.26448932809957348
	.quad	0x3fdc3531f2f6268e              # double 0.44074677206717972
	.quad	0x3feb322c5954aff3              # double 0.84987466285156044
	.quad	0x3fee37fe3caf46bb              # double 0.94433509685969541
	.quad	0x3fdabce15124dae8              # double 0.41777832912650448
	.quad	0x3fec1de74c7ac383              # double 0.87865033090029987
	.quad	0x3fed74e646e184be              # double 0.92051996082241039
	.quad	0x3fa94ff80a282230              # double 0.04943823932632474
	.quad	0x3fe0a6d235c7a92e              # double 0.52036390785113951
	.quad	0x3fcb5388fce23110              # double 0.21348678920583852
	.quad	0x3fbafb476a163148              # double 0.10539671268469875
	.quad	0x3fd5e063d51c3a9e              # double 0.34182067691373585
	.quad	0x3fd7c68ea166fdbe              # double 0.37149396669334667
	.quad	0x3fd3384e850f4c26              # double 0.30031168932072416
	.quad	0x3fed289d8b05c6cd              # double 0.91120793488354368
	.quad	0x3fe0fd042495de0c              # double 0.53088576455678682
	.quad	0x3feccf3668470fe1              # double 0.90029449812618279
	.quad	0x3fd56bd31e8d8904              # double 0.33470609649351979
	.quad	0x3fe0959b6239c8b9              # double 0.51826256928168057
	.quad	0x3fdc88448fe1991e              # double 0.44581712771322823
	.quad	0x3fe591409c72969a              # double 0.6739810042970078
	.quad	0x3fe87f6082e22737              # double 0.76554894984403787
	.quad	0x3fc84c19a2bbecb4              # double 0.18982239194870021
	.quad	0x3feabbaa49d42684              # double 0.83540834827108811
	.quad	0x3fe2d49ccf4b89bf              # double 0.58845367896383738
	.quad	0x3fe8af5bbe2a6982              # double 0.77140605108006377
	.quad	0x3fbcc12dd92374c0              # double 0.11232267905457416
	.quad	0x3fe2816f119c59b4              # double 0.57830003203962699
	.quad	0x3fea81ad90190756              # double 0.82832983154387807
	.quad	0x3fe6651f46bd9eb2              # double 0.69984401527923112
	.quad	0x3fc4da4b0cfbcf1c              # double 0.1629117787739397
	.quad	0x3fe31cf5d9d8fd40              # double 0.59728519962656179
	.quad	0x3fd23554625d83ce              # double 0.28450498205171193
	.quad	0x3fe31862b8de2c85              # double 0.59672676188473928
	.quad	0x3f9d3205f2098580              # double 0.028511135957506095
	.quad	0x3fe54d8d6ed71363              # double 0.66571685455765495
	.quad	0x3fd4f008e8e5be16              # double 0.32715056175126855
	.quad	0x3fe54512fa66d8ac              # double 0.66468190104094083
	.quad	0x3fd012b53731a100              # double 0.2511418379786079
	.quad	0x3fecd97d610010e8              # double 0.90154904313433537
	.quad	0x3fd268bc6c18e612              # double 0.28764257961629014
	.quad	0x3fb79cb5d34d8e30              # double 0.0922349587322564
	.quad	0x3fc77b9aa8ab1754              # double 0.18345959888227503
	.quad	0x3fad50468a218690              # double 0.057253078805627244
	.quad	0x3fe647654c34c29c              # double 0.69621529468539078
	.quad	0x3fb390f753b84478              # double 0.07643075746479322
	.quad	0x3fc54438d09784cc              # double 0.16614446816587358
	.quad	0x3fe8bca4c179992a              # double 0.77302778041920317
	.quad	0x3fc75c2ae2fe3328              # double 0.18250022967949886
	.quad	0x3fd76a20cc7ac8ee              # double 0.36585254639352527
	.quad	0x3fd0b1e98b692c06              # double 0.26085890402163192
	.quad	0x3fe3c8871b3a1b59              # double 0.61822848623055926
	.quad	0x3feeda860853a6df              # double 0.96417523981400765
	.quad	0x3fe407ef7b8c6e6d              # double 0.62596868639543646
	.quad	0x3fdab324bf0cee6a              # double 0.41718405396725322
	.quad	0x3fa8371f5e35c950              # double 0.047295551538712233
	.quad	0x3fe7e8c761d87970              # double 0.7471653853461202
	.quad	0x3fc5eb5fee3133bc              # double 0.17124556665876678
	.quad	0x3fe86a7dd44234d7              # double 0.76299945313226203
	.quad	0x3feeea1812d1906f              # double 0.96607593226918975
	.quad	0x3fe5327030b90492              # double 0.66240701213986797
	.quad	0x3fe0d01a92b4c2e6              # double 0.52540329602751679
	.quad	0x3fdff9e91efc24fa              # double 0.49962833429215403
	.quad	0x3fd01187495ee612              # double 0.25106985249621616
	.quad	0x3fe4ad48a3f9cac7              # double 0.64615280176652667
	.quad	0x3fd81aaa18236caa              # double 0.37662746770156252
	.quad	0x3fe074978b1e5162              # double 0.51423241778915618
	.quad	0x3fe3fef23704f1e3              # double 0.62487135644874703
	.quad	0x3fd9bde70343f0e2              # double 0.40221572226415792
	.quad	0x3fe227db07570d2b              # double 0.5673651831970451
	.quad	0x3fd46ed747d58620              # double 0.31926519408270515
	.quad	0x3fc9ca526460047c              # double 0.20148687268377674
	.quad	0x3fe3a3222c0ad2a9              # double 0.61366375543601237
	.quad	0x3fb4e8d28ce849e0              # double 0.081677588845458171
	.quad	0x3fdb818f4f95a974              # double 0.42978270313201183
	.quad	0x3fca85b56f662bb0              # double 0.20720546664628392
	.quad	0x3fd0d4afb3b7f082              # double 0.26298134375225157
	.quad	0x3fe70e7bbc10ba3c              # double 0.72051798564445546
	.quad	0x3fe4878b833d04c0              # double 0.6415460170029732
	.quad	0x3fe7cd886857a869              # double 0.74383945826890596
	.quad	0x3fc4b743f912ec68              # double 0.16184281980335702
	.quad	0x3fed481e20309751              # double 0.91505342757293751
	.quad	0x3fee0819fd6da1bb              # double 0.93848895547585387
	.quad	0x3fdd55d4bd26484a              # double 0.45836370917925662
	.quad	0x3fe9a07d1cae3c68              # double 0.80084090806657304
	.quad	0x3fcc3c7e2decc53c              # double 0.22059609644342426
	.quad	0x3fc0cea066ef3c50              # double 0.13130574251269644
	.quad	0x3fe42d6c323e8bf5              # double 0.63054475606293059
	.quad	0x3fcb803a3f0977a0              # double 0.21485069349267594
	.quad	0x3fcae7b8ad76fbd8              # double 0.21019657583198526
	.quad	0x3fe2631b30f10a08              # double 0.57459792670152954
	.quad	0x3fe53ba345cb3003              # double 0.66353000289518638
	.quad	0x3fb9815745304238              # double 0.099629835502363373
	.quad	0x3fe2906cdb634eec              # double 0.58013003205493652
	.quad	0x3fd371f7d633f782              # double 0.30383106153737327
	.quad	0x3fb03ac79269da20              # double 0.063396905179481156
	.quad	0x3fe41166f8582169              # double 0.62712429527986757
	.quad	0x3fea7db367f3b902              # double 0.82784433653958467
	.quad	0x3fd648dbb7a2fc76              # double 0.34819691594379465
	.quad	0x3fd87c634b29aef0              # double 0.38259203281516729
	.quad	0x3fc265bddb08b77c              # double 0.14372990794202767
	.quad	0x3fe4cdf8fe379143              # double 0.65014314319390853
	.quad	0x3feff2fd03e980f3              # double 0.99841166271292391
	.quad	0x3fb7360c985bc698              # double 0.090668475338839705
	.quad	0x3fe2e4ac6202a5a8              # double 0.59041422979969571
	.quad	0x3fec5e1fe35f0830              # double 0.88648981483880185
	.quad	0x3fe597074616288b              # double 0.67468608559399124
	.quad	0x3fedc18b2599623d              # double 0.92987592071137437
	.quad	0x3feb9c5bfab7d90a              # double 0.86283682793035266
	.quad	0x3fd491c1f1503380              # double 0.32139633718252725
	.quad	0x3fe739f73dc0d8ce              # double 0.7258259016150761
	.quad	0x3fd7a5ddddf07f46              # double 0.36949869798444401
	.quad	0x3fe7c0f4dcef7bbf              # double 0.74230425979100534
	.quad	0x3fac266ee9ac4940              # double 0.054980722450766795
	.quad	0x3fd12891da2fa2a2              # double 0.26810118014558715
	.quad	0x3fc37cdf4247f4d8              # double 0.15224829422360275
	.quad	0x3fbeff8406bd68c8              # double 0.12108636059329847
	.quad	0x3fbe059d526b7128              # double 0.11727317106437296
	.quad	0x3fe3a7c8ec22e369              # double 0.61423154945724179
	.quad	0x3fe4622283279344              # double 0.63697934738284134
	.quad	0x3fcdfaa9a5ac1b80              # double 0.23421211804835806
	.quad	0x3fc213ae66c9ced0              # double 0.1412256242652945
	.quad	0x3feb19b8d6df0670              # double 0.84688989607839282
	.quad	0x3fd1e177ab9e53ae              # double 0.27938644179931316
	.quad	0x3fe93b97123ce23f              # double 0.78852418481898912
	.quad	0x3fde4bdcb009c2f6              # double 0.47338025275443785
	.quad	0x3fe3b51abba5e1fa              # double 0.61585747385021183
	.quad	0x3fea6bd92f7c8d33              # double 0.82566508555138396
	.quad	0x3fe1e6187f0f4a86              # double 0.55933785263398828
	.quad	0x3fef14891054ce2b              # double 0.9712567633600363
	.quad	0x3fd4d1f8dfff6f2c              # double 0.32531568407806577
	.quad	0x3fe49214b3a5fe20              # double 0.64283213698940145
	.quad	0x3fc582ffb321aaf0              # double 0.16806026693969711
	.quad	0x3fd9bcf51ca37cd8              # double 0.40215804859867665
	.quad	0x3fd7f361b277e24c              # double 0.37422983578247648
	.quad	0x3fdb86261fa59692              # double 0.43006280031691191
	.quad	0x3fe3adfe2aaa4a87              # double 0.61498936017081085
	.quad	0x3fe3e4cf4f7c692b              # double 0.62168088459592263
	.quad	0x3fe58f8ccbe536a8              # double 0.67377319167436145
	.quad	0x3fee91022a8118a0              # double 0.95520122815721109
	.quad	0x3fe13a0fd91239b3              # double 0.53833763500897758
	.quad	0x3fedec7d0250a082              # double 0.9351182027067042
	.quad	0x3fe26dac4a4172a8              # double 0.57588781836564795
	.quad	0x3fdb1fe165ead1c4              # double 0.42382082894189588
	.quad	0x3fef6db841e9996e              # double 0.98214352487120293
	.quad	0x3fe884a373620b55              # double 0.76619122062434519
	.quad	0x3fdcbc0df8999652              # double 0.44897794034327376
	.quad	0x3fe5fd86a0ff7b58              # double 0.68719798512379793
	.quad	0x3fddeff07e191a98              # double 0.46776974024070617
	.quad	0x3fe60f9cc08ed3e1              # double 0.68940579995125628
	.quad	0x3fe3d0f830f36ff6              # double 0.61925897179344136
	.quad	0x3fe4dadbb6d5a93b              # double 0.65171609601865244
	.quad	0x3feb67a70f3e83ae              # double 0.85640290238744909
	.quad	0x3fc4934f12d0d404              # double 0.16074551028000894
	.quad	0x3fddcad37b455fa0              # double 0.46550452268774656
	.quad	0x3fe99c15df2d124c              # double 0.80030339802812866
	.quad	0x3fd48a810e4de3ca              # double 0.32095362088108159
	.quad	0x3febce25bbcd843b              # double 0.86891447715982595
	.quad	0x3fd22ee059ea6114              # double 0.28411110668959449
	.quad	0x3fed0ffd138c0350              # double 0.90820173089751144
	.quad	0x3fb27ad3f77723e0              # double 0.072186706463198913
	.quad	0x3fd69b57456210aa              # double 0.35323125625314822
	.quad	0x3fea505000d9a6a8              # double 0.82230377355627571
	.quad	0x3fdf7f78385019ea              # double 0.49215512751871293
	.quad	0x3fefae53606e7056              # double 0.9900299914766133
	.quad	0x3fe8392fd2f9e586              # double 0.75698081213265378
	.quad	0x3febcf9681c5b076              # double 0.86909032198083369
	.quad	0x3fd772ffb0e07398              # double 0.36639396927949397
	.quad	0x3fe63270cf51cbb4              # double 0.6936573075494068
	.quad	0x3fc43176427c6f90              # double 0.15775945898428434
	.quad	0x3feb1a09d3585503              # double 0.84692851332025076
	.quad	0x3fed50d7c58ba294              # double 0.91611851294608692
	.quad	0x3fde6d4079d8ef72              # double 0.47541820429955017
	.quad	0x3fe53603234c85c5              # double 0.66284329313582957
	.quad	0x3f808777a3d49e80              # double 0.0080708834526170836
	.quad	0x3fe434164ee2b3e5              # double 0.63135829360328144
	.quad	0x3fe8a7e13abc74e8              # double 0.77049313995271707
	.quad	0x3fae6e5e8764ff90              # double 0.059435800578739095
	.quad	0x3fdf0e20ed08f30a              # double 0.48523734233803906
	.quad	0x3fdd2019fa4bb754              # double 0.45508431857057485
	.quad	0x3fe4c27b7926ce45              # double 0.64874051725787096
	.quad	0x3fe07e4b2e2ab725              # double 0.5154167081543376
	.quad	0x3fe11c13df232116              # double 0.53467744428147301
	.quad	0x3fd800c267a3e436              # double 0.37504634972680451
	.quad	0x3fe0bdaa340e8969              # double 0.52315244834271113
	.quad	0x3fd0470365ce84a0              # double 0.25433430616437569
	.quad	0x3fe8529d48689249              # double 0.7600847639301459
	.quad	0x3fe5eba18e7c2d72              # double 0.68501355961909227
	.quad	0x3fdf5c02d2b2c0ca              # double 0.4899909074401988
	.quad	0x3fc44b42cf2cf53c              # double 0.15854678264614985
	.quad	0x3fd8bc7a50158bca              # double 0.38650377102584044
	.quad	0x3fea8b6fc2b77240              # double 0.82952106504996692
	.quad	0x3fea81399d6606d4              # double 0.82827454320814775
	.quad	0x3feef88d6801ee91              # double 0.96784086526845858
	.quad	0x3fc591a972a73000              # double 0.16850774858755813
	.quad	0x3fe89685083f7fc0              # double 0.76837398158021841
	.quad	0x3fe71537bba772cc              # double 0.72134005213919172
	.quad	0x3fd2cff4f2e109f6              # double 0.29394267767580062
	.quad	0x3feee657bd5f7e3e              # double 0.96561800944250087
	.quad	0x3fddaa69fb5bf91a              # double 0.46352624460986791
	.quad	0x3fd602f7a57de912              # double 0.34393111382782238
	.quad	0x3fe09599b6984ad4              # double 0.51826177275719454
	.quad	0x3fd833ba19540274              # double 0.37815716241315234
	.quad	0x3fdf10b1bce9a8c8              # double 0.48539393852719259
	.quad	0x3fe051e27a3ea323              # double 0.50999568820870811
	.quad	0x3fe5b66d5263f644              # double 0.67851892558946547
	.quad	0x3fe351c61bf8709a              # double 0.60373216116888107
	.quad	0x3fca1b02f993b72c              # double 0.2039493292463076
	.quad	0x3fefa39df4faffee              # double 0.98872278068301767
	.quad	0x3fdafadd5d839f92              # double 0.42156156666032374
	.quad	0x3fcaf4c5e7989690              # double 0.21059488113785507
	.quad	0x3fd1c089bbc4ff52              # double 0.27737658821933053
	.quad	0x3fe4a581f2a7e59c              # double 0.64520356553764513
	.quad	0x3fc3c8135c38cf00              # double 0.15454332354567413
	.quad	0x3fb71740cb07b4c8              # double 0.090198564117332514
	.quad	0x3fdfb429330a4cf8              # double 0.49537115082166805
	.quad	0x3fe1ccce106e3f86              # double 0.55625060280907301
	.quad	0x3fc1144b72a9e994              # double 0.13343184565367194
	.quad	0x3fcdebf2cac284d4              # double 0.23376307392485407
	.quad	0x3fd0a5c388562382              # double 0.26011741937741573
	.quad	0x3fd0db068c315f6c              # double 0.26336826029500204
	.quad	0x3fe42b48545d0b19              # double 0.63028351285206263
	.quad	0x3fe11dd200ea252a              # double 0.534890176569353
	.quad	0x3fe265aba2527c9e              # double 0.57491094306523727
	.quad	0x3fe78e420e32c906              # double 0.73611548207398481
	.quad	0x3fe2e83be63e92e3              # double 0.59084887475600245
	.quad	0x3fddf4c53fcb98ae              # double 0.46806460599908462
	.quad	0x3fd4423fff2491f0              # double 0.31654357830328106
	.quad	0x3fb627ecb23765c8              # double 0.086546700963842871
	.quad	0x3faaff981acac650              # double 0.052731278677481286
	.quad	0x3fdf94eab26827cc              # double 0.49346415922684339
	.quad	0x3fccd974ab0c4e30              # double 0.22538622238117645
	.quad	0x3fe136e6b32a8f6f              # double 0.53795180314453528
	.quad	0x3fca38260e0a5f54              # double 0.20483852086612819
	.quad	0x3fe64bc9ecf39de0              # double 0.69675155906309882
	.quad	0x3fec2494a1c7f9f9              # double 0.8794654044903033
	.quad	0x3fea002ed48e21da              # double 0.81252233042419708
	.quad	0x3fe1c86648374694              # double 0.55571283440277108
	.quad	0x3fd6e877bd92032a              # double 0.35793870461206956
	.quad	0x3fe5cdd6ae8374bf              # double 0.68137678227108001
	.quad	0x3fc144cda3ea145c              # double 0.13491220954543592
	.quad	0x3fe3464e70cd9581              # double 0.60233232528541703
	.quad	0x3fd7e1451f781866              # double 0.373124390346112
	.quad	0x3fe709cc13e2ca17              # double 0.71994594463314143
	.quad	0x3fe447251f50a292              # double 0.63368469349105028
	.quad	0x3fdf2138ae8c5a2e              # double 0.48640267415740623
	.quad	0x3fef36ff4596bf85              # double 0.97546351996969404
	.quad	0x3fd17f1e36777a4e              # double 0.27338366812719961
	.quad	0x3fe850dd4ebd75f1              # double 0.75987115267679262
	.quad	0x3fdbda8dbe8544a0              # double 0.4352144585182689
	.quad	0x3fdfbca5ff58a6f0              # double 0.49588918625032274
	.quad	0x3fe6460030339576              # double 0.69604501165728894
	.quad	0x3fd70d32372ddc8e              # double 0.36018042934979
	.quad	0x3fe73dba33133778              # double 0.7262850759086481
	.quad	0x3f896b21579ee100              # double 0.012411365972966326
	.quad	0x3fd0ff12ff1a4b64              # double 0.26556849396108917
	.quad	0x3fd13cc03070f6b8              # double 0.26933293085663079
	.quad	0x3fe49c3a95ffad45              # double 0.64407090469959682
	.quad	0x3fe8c22ea8c7494e              # double 0.77370388950866142
	.quad	0x3fdce69ffb340b74              # double 0.45157622844288103
	.quad	0x3fdc39c71b84dec8              # double 0.44102647483257984
	.quad	0x3feba1c4819bcf0e              # double 0.86349702181039034
	.quad	0x3feae0222dd94174              # double 0.83986004786315371
	.quad	0x3fc222dbe2a273e8              # double 0.1416888100256124
	.quad	0x3feb4010de90c0a7              # double 0.85157054395496778
	.quad	0x3fecc8453110e627              # double 0.89944705565648497
	.quad	0x3fe2235ffdd46443              # double 0.56681823326210468
	.quad	0x3fde9490edf20506              # double 0.47781775700430307
	.quad	0x3fe16ee5368ab81d              # double 0.54478703167638154
	.quad	0x3fe8d3ca39ec5ce5              # double 0.77585326493399676
	.quad	0x3fe13b796409ccce              # double 0.53851003206946202
	.quad	0x3fbba9dedfe57068              # double 0.10806076971260981
	.quad	0x3fe8f3b034786dcf              # double 0.77974710701112737
	.quad	0x3fed7afd4a1fc5cd              # double 0.92126335599294296
	.quad	0x3fccc7184ce24734              # double 0.22482589487167959
	.quad	0x3fbd881a6dae3978              # double 0.11535802057026057
	.quad	0x3fe6c2349eacae87              # double 0.71120673171158522
	.quad	0x3fe02a24ba755220              # double 0.50514446656831424
	.quad	0x3fdae656e2f439ea              # double 0.42030880130269443
	.quad	0x3fe2a744db287016              # double 0.58291857532776947
	.quad	0x3fdc490d8fae06f6              # double 0.44195879966001372
	.quad	0x3fea88c6b1a602c2              # double 0.82919630715340298
	.quad	0x3fe1417060d4303f              # double 0.53923815643202733
	.quad	0x3fc1fb6f8ae65d80              # double 0.14048570902080471
	.quad	0x3fd326bcb595d6b6              # double 0.29923932774486717
	.quad	0x3fee38d042cf6e31              # double 0.94443524407274115
	.quad	0x3fe28fff53374601              # double 0.58007780316455648
	.quad	0x3fe9e506a27b449d              # double 0.80920726523085629
	.quad	0x3fd33ed1a4838012              # double 0.30070916238582968
	.quad	0x3fc7992e0a6fb5b4              # double 0.18436217794025611
	.quad	0x3feaad20468531a7              # double 0.83363355420583651
	.quad	0x3fd844f4487a1352              # double 0.37920863225763413
	.quad	0x3fe0eec4be045baf              # double 0.5291465483922958
	.quad	0x3fe8872c02aeee56              # double 0.76650047802054178
	.quad	0x3fdba24a1613b988              # double 0.43178035884820831
	.quad	0x3fcfef5a0237a3ac              # double 0.24949193104046452
	.quad	0x3fd0d353eeee1422              # double 0.26289842923171325
	.quad	0x3fe481e780b7ea2f              # double 0.64085745945278016
	.quad	0x3fe914166d8d5383              # double 0.7837021007240853
	.quad	0x3feb3be8b350b19f              # double 0.85106310865880974
	.quad	0x3fd064d74ce12444              # double 0.2561548472190831
	.quad	0x3fedb38346b5792e              # double 0.92816318331077752
	.quad	0x3fda69c735ea4fee              # double 0.41270618691601058
	.quad	0x3fe0af2c39dc3f38              # double 0.5213833932957419
	.quad	0x3fd445c90093d050              # double 0.3167593484533926
	.quad	0x3fef7661aca82aef              # double 0.98320087167789249
	.quad	0x3fca6e4c7f35f35c              # double 0.20649105273687496
	.quad	0x3fd02d423ec3d0cc              # double 0.25276237611184338
	.quad	0x3fdfcce3ef183eec              # double 0.49688051556675705
	.quad	0x3fe7e1f25c0bf017              # double 0.74633138635499818
	.quad	0x3fd1762b60849430              # double 0.2728374903256876
	.quad	0x3fee6e417f7705bd              # double 0.9509589662122192
	.quad	0x3fec2effdeda628f              # double 0.88073724294652489
	.quad	0x3fe6de565a28f6f2              # double 0.71464078530672581
	.quad	0x3fdaaaa1f7139d16              # double 0.4166645920617652
	.quad	0x3fd45363e62fbd30              # double 0.31758973578594674
	.quad	0x3fb4d31705ad52c8              # double 0.081345976720807234
	.quad	0x3fc10a0a6976452c              # double 0.13311891698371292
	.quad	0x3fe945d8aa5c2bcd              # double 0.78977616570898024
	.quad	0x3fea1d3bd1377516              # double 0.81606856215117562
	.quad	0x3fcd8026c9c3d610              # double 0.23047337390714562
	.quad	0x3fe419dd27c13f20              # double 0.62815721287367765
	.quad	0x3fd897bab37db320              # double 0.38426082161349662
	.quad	0x3fd8af7987e5b6fe              # double 0.38571012755606648
	.quad	0x3fc4965dc61be074              # double 0.16083881543432066
	.quad	0x3febd47cae4abd20              # double 0.86968835870166927
	.quad	0x3fde8e3ee494b658              # double 0.47743198702196343
	.quad	0x3fd3f640a0a53300              # double 0.3119050568391657
	.quad	0x3fc2f65f9d807b18              # double 0.14814372244378471
	.quad	0x3fedc67adbae4332              # double 0.93047850519551489
	.quad	0x3fe1d2cd4e383c5e              # double 0.55698266293792265
	.quad	0x3fdc2ff263155320              # double 0.4404264419184063
	.quad	0x3febcf58299f5e80              # double 0.86906059388543611
	.quad	0x3fe6b2be620bf2e4              # double 0.70931929731122212
	.quad	0x3fd3e8c2b0f9b236              # double 0.31108157427550809
	.quad	0x3fd48df03ebb7a3e              # double 0.3211632359142732
	.quad	0x3fe72d62daa818a5              # double 0.72429030138370776
	.quad	0x3fe7911e863ad997              # double 0.73646475044988591
	.quad	0x3fd79515a7d55070              # double 0.36847440137831367
	.quad	0x3fe0430d94fecf3a              # double 0.50818518734602169
	.quad	0x3fce1b71b40c08c0              # double 0.235212529100016
	.quad	0x3fd3646be1926316              # double 0.30300423649309616
	.quad	0x3fbf9b985958c428              # double 0.12346794301335307
	.quad	0x3fa0b26595f5e770              # double 0.032611059718830826
	.quad	0x3fedca0e1041a80f              # double 0.93091490912525099
	.quad	0x3fd25c66e39c1c9a              # double 0.28688976504822394
	.quad	0x3fd26b258d2f6604              # double 0.28778971469509451
	.quad	0x3fe8005d45a29c4c              # double 0.75004447556137554
	.quad	0x3fec3c6108ba1534              # double 0.88237048820943764
	.quad	0x3fb0b31cc59d23c8              # double 0.065233038182795799
	.quad	0x3feb2c5b89b7af39              # double 0.8491647424502623
	.quad	0x3fd83361cb017820              # double 0.37813610863475056
	.quad	0x3fe062bc35ab2353              # double 0.51205263597612782
	.quad	0x3fe6ed333f2e5b4a              # double 0.7164551004415014
	.quad	0x3fd5206919b64524              # double 0.33010318289696472
	.quad	0x3fb5218cfba69578              # double 0.082543193281329752
	.quad	0x3fda3fd8e528ad3a              # double 0.41014692667768637
	.quad	0x3fdd69a0546993da              # double 0.45957191699409139
	.quad	0x3fceb620ae52a338              # double 0.23993309509139649
	.quad	0x3fe49438e7218c44              # double 0.64309353964598204
	.quad	0x3fe0b2230a733b80              # double 0.52174522439041482
	.quad	0x3fe289b9895bef00              # double 0.57931210353805795
	.quad	0x3fb556061c583760              # double 0.08334387008673394
	.quad	0x3fe5368ba859e08f              # double 0.66290839081831787
	.quad	0x3fc01a84175193dc              # double 0.12580920351606906
	.quad	0x3f9393281998c340              # double 0.019116045534420367
	.quad	0x3fb1c3ea62d63cb0              # double 0.069395684366315491
	.quad	0x3fa8c04a6bed2150              # double 0.048342061686130422
	.quad	0x3fd29a61995f7314              # double 0.29067268350427011
	.quad	0x3fddc2626a8b181c              # double 0.46498928455946653
	.quad	0x3fe6cfa79507c0c9              # double 0.71284846408345814
	.quad	0x3fd86b1e04dc29d2              # double 0.38153791880236299
	.quad	0x3fd99f9b7bb965c6              # double 0.40036665995065979
	.quad	0x3fb49fdf147a7610              # double 0.080564444064713081
	.quad	0x3fdf7316ca557272              # double 0.49139947661550487
	.quad	0x3fec88f0f215a89d              # double 0.89171645433568225
	.quad	0x3fedc03a97f13856              # double 0.92971543956970026
	.quad	0x3feead3e77c4187b              # double 0.95864795104786482
	.quad	0x3fe10f73e2e41340              # double 0.53313631357796254
	.quad	0x3fbc4b6f1f8757f8              # double 0.11052603263610183
	.quad	0x3fc31c65bd9a4dc8              # double 0.14930412061640497
	.quad	0x3fc6a939023aa2f4              # double 0.17703926667061121
	.quad	0x3fe2feabcdab83ca              # double 0.59358778161924275
	.quad	0x3fe7919953ca42cd              # double 0.73652330746889449
	.quad	0x3fed96b32f646c64              # double 0.92464598900131678
	.quad	0x3fc4f62c9ea7f904              # double 0.16376264330751422
	.quad	0x3fe4483bbd6aacd0              # double 0.63381754870843032
	.quad	0x3fde9409d22c23cc              # double 0.47778554463053236
	.quad	0x3fc23df3bf479a14              # double 0.14251562919453475
	.quad	0x3fb31e4b849ba148              # double 0.074681014895422781
	.quad	0x3fbd318db6baffd8              # double 0.11403737746422793
	.quad	0x3fc233763dee579c              # double 0.1421954920194225
	.quad	0x3fda90ea30926130              # double 0.41509489768351937
	.quad	0x3fe686f510e51095              # double 0.70397427844774774
	.quad	0x3fd499b0c91e8096              # double 0.32188052788297605
	.quad	0x3feaa7f9cece1ff6              # double 0.83300485984454897
	.quad	0x3fd0285e863b4af2              # double 0.25246394260936633
	.quad	0x3fe889790978e9fa              # double 0.76678134775221385
	.quad	0x3fe593d978901edd              # double 0.67429803416686307
	.quad	0x3fe180e73a8b528b              # double 0.5469852584306677
	.quad	0x3feb781bcf65460a              # double 0.85841169840767972
	.quad	0x3fea68c203375a64              # double 0.82528782489937357
	.quad	0x3fcefb154e9c1c0c              # double 0.24203745210999761
	.quad	0x3fe01be88b59dc5b              # double 0.50340678421970197
	.quad	0x3fce58ebafd68ff8              # double 0.2370886429390564
	.quad	0x3fdb40c31cc509c0              # double 0.42582776841677727
	.quad	0x3fe355bf39bad1ac              # double 0.60421715998977765
	.quad	0x3fed43efc70cefc5              # double 0.9145430457788214
	.quad	0x3fd625ad7a5f26d0              # double 0.34604966116294822
	.quad	0x3fbf79bec4ee79f8              # double 0.12295143421076904
	.quad	0x3fefd65b1ba62a40              # double 0.99491649055682529
	.quad	0x3fe44282e108b420              # double 0.6331190486140521
	.quad	0x3fe5ee3fd33d4eb8              # double 0.68533316858016402
	.quad	0x3fe5f6c50b4f2328              # double 0.68637325486006251
	.quad	0x3fe091685f36458b              # double 0.51774996372312054
	.quad	0x3fb4a553bab84ea8              # double 0.080647690854955045
	.quad	0x3fed226d331c25ea              # double 0.91045246107495115
	.quad	0x3f9e09888ce6c540              # double 0.029333242034856655
	.quad	0x3fd7662b521648f4              # double 0.36561091438592475
	.quad	0x3fb77acb596f79f0              # double 0.09171744283182881
	.quad	0x3feaeb6bbe491f10              # double 0.84123789944803384
	.quad	0x3fce086237d82d04              # double 0.23463084913996834
	.quad	0x3fd8eae1d097c8e4              # double 0.389336065010083
	.quad	0x3fd62016525d7f32              # double 0.34570844691733094
	.quad	0x3fd746dc4f1eb446              # double 0.36369998671108694
	.quad	0x3fe48525ea73fb68              # double 0.64125343124019896
	.quad	0x3fcb1564de674e58              # double 0.21159039363429843
	.quad	0x3fe15dc64fee2bff              # double 0.54269710170171936
	.quad	0x3fc0cb47d471872c              # double 0.13120363114563227
	.quad	0x3fe3e37af60b702a              # double 0.62151859336473092
	.quad	0x3fe1d3e37b839e2e              # double 0.55711530803541165
	.quad	0x3fe2d6ca6861a789              # double 0.58871956240658208
	.quad	0x3fadc7e615a37c00              # double 0.058165731564933765
	.quad	0x3fd93a8f5a695466              # double 0.39419921712153039
	.quad	0x3fb84718e01c3468              # double 0.094834856714628324
	.quad	0x3fc09ac6ef731638              # double 0.12972342197297038
	.quad	0x3fd735ba8e844aee              # double 0.3626543418660465
	.quad	0x3fdf423c368b582c              # double 0.48841767622559717
	.quad	0x3fee3498a4265b98              # double 0.94392044125094098
	.quad	0x3fe0369324877643              # double 0.50666195997809671
	.quad	0x3fcba417cc371e20              # double 0.21594521972132075
	.quad	0x3fd41ac89a4a6636              # double 0.31413474147265974
	.quad	0x3fd41265a573054c              # double 0.31362286717565691
	.quad	0x3fdcd57cdb902f36              # double 0.45053025666924229
	.quad	0x3fe2c91f140f7e4b              # double 0.58705095213003611
	.quad	0x3fd26f5079c95562              # double 0.28804408925255676
	.quad	0x3fe057f608194cdb              # double 0.51073743421366247
	.quad	0x3fdde11ea5f99844              # double 0.46686521728986841
	.quad	0x3fe3e1d452ed0ae3              # double 0.62131706425165267
	.quad	0x3fde28b09bc62d00              # double 0.47123351299588023
	.quad	0x3fd3363881d2e05e              # double 0.30018437078570581
	.quad	0x3fa28ad99260dc10              # double 0.036215590589954272
	.quad	0x3fe8b936672c879c              # double 0.77260894919548972
	.quad	0x3fcd823e0a4a5430              # double 0.23053718092401843
	.quad	0x3fd941cef60f1db0              # double 0.39464162854388984
	.quad	0x3fe71bd8d3c4c923              # double 0.7221492897136027
	.quad	0x3fc5fbd5e0df772c              # double 0.17174790840265908
	.quad	0x3fe6f58e8b988cd8              # double 0.71747519745658916
	.quad	0x3fec1ef096a4b916              # double 0.87877683088825864
	.quad	0x3fda1f16470cabb6              # double 0.40814740122248894
	.quad	0x3fd651bbc0c05de0              # double 0.34873861144430229
	.quad	0x3fd269a6bc5cb8e6              # double 0.2876984443163465
	.quad	0x3fe2dcc9c9dbdea8              # double 0.58945168901023681
	.quad	0x3fdc4dea5504736e              # double 0.44225557615737088
	.quad	0x3fea63b73401d0f4              # double 0.82467231900821369
	.quad	0x3fe8b4dcb3a8616f              # double 0.77207789506341651
	.quad	0x3fcf7cf10bb5a85c              # double 0.24600041457898925
	.quad	0x3fc9d118251ba510              # double 0.2016935521308274
	.quad	0x3fe4a239146f539f              # double 0.64480260840592851
	.quad	0x3fdfa40d91221f44              # double 0.49438800023243723
	.quad	0x3fe31b1de05d5154              # double 0.59706014462657686
	.quad	0x3fe087d86b7ee5aa              # double 0.51658268924000095
	.quad	0x3fdd570bc7fd61aa              # double 0.45843786745310899
	.quad	0x3fdc83f143baa396              # double 0.44555312742391473
	.quad	0x3fe2259583b0ba63              # double 0.56708789559145278
	.quad	0x3fbe87c8509216b0              # double 0.1192593762117109
	.quad	0x3fefb002095c9b65              # double 0.99023534611192742
	.quad	0x3fe92276d4a148a9              # double 0.78545705346393391
	.quad	0x3fe492ce0eac66b5              # double 0.64292052141100575
	.quad	0x3fd6ca14ae3de174              # double 0.3560840322093306
	.quad	0x3fe0178b02e04aab              # double 0.50287390290971723
	.quad	0x3fd50702982feaa8              # double 0.32855286466625921
	.quad	0x3fdd3f25f2bc1e10              # double 0.45697926239560704
	.quad	0x3fddf6f80e20b1f6              # double 0.46819878940257753
	.quad	0x3fe574810844f094              # double 0.67047168364617216
	.quad	0x3fe2cc3ae4cd60cf              # double 0.58743042648259258
	.quad	0x3fe6d6fd480dd6de              # double 0.71374382088717048
	.quad	0x3fe72fce87fc8cdd              # double 0.72458578643672988
	.quad	0x3fe3514b5ae08c8d              # double 0.60367362737123786
	.quad	0x3fa19ec8d152e720              # double 0.034414554168917144
	.quad	0x3febc84b1cd620ff              # double 0.86819987899892215
	.quad	0x3fe04c4c71c816f4              # double 0.50931379530876919
	.quad	0x3fe0f7d4f16f2bcb              # double 0.53025290637139599
	.quad	0x3fe3a4e5788c1e06              # double 0.61387895149613381
	.quad	0x3fcd3123c543c514              # double 0.22806212551180549
	.quad	0x3fd11431efed09e4              # double 0.26685760908381284
	.quad	0x3fe243869c73e9b3              # double 0.57074289853271976
	.quad	0x3fe05282daf9e8b6              # double 0.51007216233053643
	.quad	0x3fd29019948bfc4e              # double 0.2900451613094831
	.quad	0x3fea4e0b74d19c98              # double 0.82202694717570335
	.quad	0x3fe0ecdc988c1fab              # double 0.52891378206640149
	.quad	0x3feb6637227a36f4              # double 0.85622746213786493
	.quad	0x3fdb326ccd097bb4              # double 0.4249526979746705
	.quad	0x3fe8e207c0abc7c0              # double 0.77759158736284206
	.quad	0x3fe8be33fc33a386              # double 0.77321814783236742
	.quad	0x3fe9c512e34a6fcc              # double 0.80530685799339485
	.quad	0x3fef4a8d03e9ff3f              # double 0.97785044445479474
	.quad	0x3fdc795287abdbd6              # double 0.44490493058350233
	.quad	0x3fe562242d15753d              # double 0.66823014073785425
	.quad	0x3fedd4a0c3046f8d              # double 0.93220556344339089
	.quad	0x3feead106cf5847f              # double 0.95862599640908274
	.quad	0x3fe045d286fe6be9              # double 0.50852323881133288
	.quad	0x3fd1ba908bd4ed34              # double 0.27701200156635086
	.quad	0x3fe4a859094a1511              # double 0.64555026830990603
	.quad	0x3feb08b58b47d094              # double 0.84481312945583164
	.quad	0x3fef72b84965f7da              # double 0.98275389037712135
	.quad	0x3fd41dfefa3183ca              # double 0.31433081086111925
	.quad	0x3fd88c600bc1de86              # double 0.38356782100843423
	.quad	0x3fb8b652bd944208              # double 0.096532031330078039
	.quad	0x3fe25812815fc12c              # double 0.57325101154677816
	.quad	0x3fe5ea752b6e5dc1              # double 0.68487032396927117
	.quad	0x3fdadcf7782bba66              # double 0.41973673568182901
	.quad	0x3fde3cf13699a6d6              # double 0.47246961910296414
	.quad	0x3fdd81b065d02e5e              # double 0.46104059164711042
	.quad	0x3fb36c5815a09070              # double 0.075871949462966048
	.quad	0x3fd40c234ea1581a              # double 0.31324083975539596
	.quad	0x3fe4c5af9d92d07e              # double 0.64913159156868949
	.quad	0x3fd74615b4cf97e6              # double 0.36365263612094478
	.quad	0x3fd3d80771904eea              # double 0.31006036844449503
	.quad	0x3f9f2ab749816d00              # double 0.030436385976241986
	.quad	0x3fe7d0d6da2bf468              # double 0.74424307452831062
	.quad	0x3fad0d0e22219d40              # double 0.056740228334826615
	.quad	0x3feaafdea35c975b              # double 0.8339684668214703
	.quad	0x3fa52a1703e407a0              # double 0.041336745476669323
	.quad	0x3fe302ed17b88b20              # double 0.59410719521506294
	.quad	0x3fe4a5acfecf5c05              # double 0.64522409217431742
	.quad	0x3fe41adfb7fec196              # double 0.62828050552893688
	.quad	0x3fd4320e1967f2ee              # double 0.31555511933383584
	.quad	0x3fe670089e829cce              # double 0.70117598494553035
	.quad	0x3fee56ae471e69a0              # double 0.94808114900961371
	.quad	0x3fb1b581036c0a10              # double 0.069175780616241633
	.quad	0x3fcd7905c5688cd8              # double 0.23025581492502201
	.quad	0x3fd8340fba3fa978              # double 0.37817757786128636
	.quad	0x3fef3926cade931a              # double 0.97572650549827533
	.quad	0x3fa3bf895ba2ca20              # double 0.038570682941458267
	.quad	0x3fed1bf6827e9dbc              # double 0.9096634434435411
	.quad	0x3fd81c8895c23184              # double 0.37674154877529298
	.quad	0x3fe0336b4633e187              # double 0.50627673827607189
	.quad	0x3fe86553383b81e9              # double 0.76236878378773298
	.quad	0x3fd8b9686b0b2904              # double 0.38631639913059268
	.quad	0x3fe67a470787d601              # double 0.7024264475900851
	.quad	0x3fdb4d745acf63d4              # double 0.42660244815993775
	.quad	0x3fe910897117ccd8              # double 0.78326866234274473
	.quad	0x3fe46a0068bf9fb6              # double 0.63793964823434268
	.quad	0x3fba700ff376e6c0              # double 0.1032724351306582
	.quad	0x3fd0a2b93050c0ec              # double 0.25993184774689726
	.quad	0x3fe1f74bbe7a5c9b              # double 0.56143748476724242
	.quad	0x3fe1df5a2d2aa332              # double 0.55851467916099851
	.quad	0x3fb26dbf42cf2550              # double 0.071987108050185045
	.quad	0x3fd84078fb61beb8              # double 0.37893509434705264
	.quad	0x3fd8b6780bd7b116              # double 0.38613701969622249
	.quad	0x3fe4b8b5c0eb436b              # double 0.64754760436526959
	.quad	0x3fdc55c7564d0cce              # double 0.44273551395253896
	.quad	0x3fd5c1bf7e7666ca              # double 0.33995044088224502
	.quad	0x3fdaa406a7056fa8              # double 0.41626135168712119
	.quad	0x3fde450e91c766ba              # double 0.47296489940854836
	.quad	0x3fec4ff1cdeea400              # double 0.88475885602122162
	.quad	0x3fd9a0843b547e4a              # double 0.4004221515078582
	.quad	0x3f99f3b7c87ab9c0              # double 0.025343772517482099
	.quad	0x3fd65f71763e113e              # double 0.34957539126505199
	.quad	0x3fe2ed7acc2dfb7f              # double 0.59148921850997727
	.quad	0x3fb5b404d0aba580              # double 0.084778119034714549
	.quad	0x3fc06b60254f4fa8              # double 0.12827684232490566
	.quad	0x3fed9b8d16b2bd27              # double 0.92523817475549641
	.quad	0x3fe9792f01673d41              # double 0.79604292177274527
	.quad	0x3fedf86d4af32c07              # double 0.93657555235529422
	.quad	0x3fdfa1ec2f5a4a90              # double 0.49425797104155667
	.quad	0x3feb999143166523              # double 0.86249602416061
	.quad	0x3fe9195d3a9f49b8              # double 0.78434621286060402
	.quad	0x3fa8b6e8a0224460              # double 0.048270482585515806
	.quad	0x3fec6f00350ce403              # double 0.88854990350148488
	.quad	0x3fda169f51c445fe              # double 0.40763075814274419
	.quad	0x3fd76efccef54174              # double 0.36614914141411892
	.quad	0x3f9c244e5fbb97a0              # double 0.027482246964516954
	.quad	0x3fd273396ed69f04              # double 0.28828273605402921
	.quad	0x3fd20b70a8151f2c              # double 0.28194824613864244
	.quad	0x3fea19e1e36f5616              # double 0.81565946980362258
	.quad	0x3fea75b242984c60              # double 0.82686722761935627
	.quad	0x3feb29a699036322              # double 0.84883432279011495
	.quad	0x3f9e79bbd928ff00              # double 0.029761252526667725
	.quad	0x3fb655947e8cff38              # double 0.087243348022636336
	.quad	0x3fe3337400785dca              # double 0.60003089992363212
	.quad	0x3fda2f207061c4b0              # double 0.40912638640208865
	.quad	0x3fec44c847e5f749              # double 0.88339628260266878
	.quad	0x3fa2feec40ba3e40              # double 0.037101157094295178
	.quad	0x3fe5987d52d1b62f              # double 0.67486444640753074
	.quad	0x3fd83f9ea91ac214              # double 0.37888304247010862
	.quad	0x3fe534a42bb62d19              # double 0.66267593896319277
	.quad	0x3fe19db754504844              # double 0.55050245730877423
	.quad	0x3fe68195cc6fa7cb              # double 0.70331849984108297
	.quad	0x3fd8a49c4ff6c75a              # double 0.38504703339559898
	.quad	0x3fe0460abc01aa6c              # double 0.50855004043598973
	.quad	0x3fd859ab161f6652              # double 0.38047291908660441
	.quad	0x3fe8b36632c69a73              # double 0.7718993179049235
	.quad	0x3fd57008e8817d70              # double 0.33496306138655196
	.quad	0x3fcdd0f897954ad8              # double 0.2329397907402242
	.quad	0x3feb010768981c14              # double 0.84387560299444652
	.quad	0x3fea752ebec77e4f              # double 0.82680451642586117
	.quad	0x3fe77574fddf5c07              # double 0.73308801254722844
	.quad	0x3fea80756479b419              # double 0.82818097709753424
	.quad	0x3febf59b957f7f91              # double 0.87373141478382099
	.quad	0x3fe4935dd6b631f1              # double 0.64298908172491853
	.quad	0x3fec6e55f3e8d384              # double 0.88846871985025233
	.quad	0x3fe1b5de96727e64              # double 0.55345086464144488
	.quad	0x3fea851dea3e94b1              # double 0.82874961615438825
	.quad	0x3fee839c44e9277e              # double 0.95356572589047039
	.quad	0x3fedfeadf6eabc31              # double 0.93733881212199865
	.quad	0x3fbe10f926107388              # double 0.1174464910440759
	.quad	0x3fd1f14df26e5fd4              # double 0.28035305666844335
	.quad	0x3fdbf3dc99bd53f6              # double 0.43675913823727741
	.quad	0x3fefa0aca2f168fe              # double 0.98836356949621496
	.quad	0x3fee72ff30d5e6d3              # double 0.95153770006364835
	.quad	0x3fe64fd967442e3c              # double 0.69724722069935963
	.quad	0x3fd589a7ce9a9a0c              # double 0.33652682472384821
	.quad	0x3fe21217df79e986              # double 0.56470864913653496
	.quad	0x3fe77ec2939e0ea2              # double 0.73422364074254554
	.quad	0x3fe281e8248fadc5              # double 0.57835776463382926
	.quad	0x3feee025691ef0ab              # double 0.9648615887777131
	.quad	0x3fe90cbb3e9a07bd              # double 0.78280412890330064
	.quad	0x3fdff2e83f63907a              # double 0.4992008799583868
	.quad	0x3fd34a07655ee5f2              # double 0.30139336490137147
	.quad	0x3fe7a771cd069711              # double 0.73919000667658186
	.quad	0x3fe61db4bf7311db              # double 0.69112622635344267
	.quad	0x3fc0b9c465cd1d9c              # double 0.13066916437877019
	.quad	0x3fee44b88b519893              # double 0.9458887787884741
	.quad	0x3fefb702da9a8839              # double 0.99109022804282809
	.quad	0x3feffee844460c97              # double 0.99986661276524813
	.quad	0x3f98fa1836c142c0              # double 0.024391535131430997
	.quad	0x3fe9b9102a2a213f              # double 0.80384071574466265
	.quad	0x3fbb2fbf8c7de458              # double 0.10619733028387779
	.quad	0x3fcf1bc14e7290e8              # double 0.24303451853223312
	.quad	0x3fd1635571362abe              # double 0.27168785148448282
	.quad	0x3fdef1d726f041e0              # double 0.48351076891506573
	.quad	0x3fe28f4614e2e4b0              # double 0.57998947219234331
	.quad	0x3fd7b66b81a56d7a              # double 0.37050902996789825
	.quad	0x3fd58f2ea0b9e102              # double 0.33686414428622424
	.quad	0x3fda08e52a37a8d8              # double 0.40679291842265064
	.quad	0x3fedd55750d308bc              # double 0.93229261194235091
	.quad	0x3f92329806a32280              # double 0.017771125226121232
	.quad	0x3fed62242d58d9c1              # double 0.91823014122820024
	.quad	0x3fbe4848d07960f8              # double 0.11829047288609107
	.quad	0x3fe972dab716df8c              # double 0.79527030715597524
	.quad	0x3fedecd3ebff8188              # double 0.93515964597104162
	.quad	0x3fd7a8db1b6519c0              # double 0.36968114543233455
	.quad	0x3fead742640c9174              # double 0.83877677479590184
	.quad	0x3fc546890c86c854              # double 0.1662150679745219
	.quad	0x3fd66caaf86fc376              # double 0.35038255940803908
	.quad	0x3fdefcd79ed55a92              # double 0.48418226729465019
	.quad	0x3fe6d418f569c367              # double 0.71339080745938765
	.quad	0x3fe10c7163285ef2              # double 0.53276891104448354
	.quad	0x3fe237cc3848f338              # double 0.56931124680668344
	.quad	0x3fd9f5285eef70f6              # double 0.40558823843981828
	.quad	0x3fd76f7914e13f2c              # double 0.36617877043771574
	.quad	0x3fd4ea22bda51b86              # double 0.32679050941481369
	.quad	0x3fe35cfca7bfd018              # double 0.60510094417122939
	.quad	0x3fe2ea1b91169787              # double 0.59107759797619586
	.quad	0x3fec3720f77b4ac3              # double 0.881729586946982
	.quad	0x3fdaaa1bcabdc768              # double 0.41663260268170754
	.quad	0x3fdd334681dd3cc2              # double 0.45625460321475597
	.quad	0x3fe3e1e717406da0              # double 0.62132601300566037
	.quad	0x3fee36202e0e3401              # double 0.94410714144908081
	.quad	0x3fed79fd34feed13              # double 0.92114124632590444
	.quad	0x3feffee255c75ecf              # double 0.99986378434820177
	.quad	0x3fe1299212478ab4              # double 0.53632453508574551
	.quad	0x3fe2498937d630e2              # double 0.5714765635071013
	.quad	0x3fe34665807e1df9              # double 0.60234332176418015
	.quad	0x3feab97e4ed52fb7              # double 0.83514323613189034
	.quad	0x3fbe2a14bd715988              # double 0.11782960534160314
	.quad	0x3fe1495c5573ffe7              # double 0.54020516099990068
	.quad	0x3fe15defa3216dda              # double 0.54271680699769864
	.quad	0x3fd451b7a9772102              # double 0.31748763608312924
	.quad	0x3fe228bfb9b07c48              # double 0.56747423427067023
	.quad	0x3fb5da9e1fbe58a8              # double 0.085367090940368429
	.quad	0x3fec168f8e876772              # double 0.87775400006942861
	.quad	0x3fd9c089b996b1ea              # double 0.40237658618823835
	.quad	0x3fac2fa794cf72f0              # double 0.055051075854611997
	.quad	0x3fe098640da7d99f              # double 0.51860239665147734
	.quad	0x3fd0d369301f16a6              # double 0.26290349673613844
	.quad	0x3fe2d811d3da899a              # double 0.58887568833988557
	.quad	0x3fd84bb6c62ae82a              # double 0.37962121345811062
	.quad	0x3fbd67dce36ee178              # double 0.11486607124868964
	.quad	0x3fec41a300560a8c              # double 0.88301229539531922
	.quad	0x3fe6781bdf078b6e              # double 0.7021617275280343
	.quad	0x3fda3c1f0e8defac              # double 0.40991951390582915
	.quad	0x3fe8deb5366911ef              # double 0.77718601824795808
	.quad	0x3fe0232aff411b91              # double 0.50429296354637831
	.quad	0x3fe5c6a5ab19f22c              # double 0.68049891870720591
	.quad	0x3fe978de691d2a43              # double 0.79600449113906568
	.quad	0x3fb5e9bfed9c0e50              # double 0.085597987661509167
	.quad	0x3fd6e243cc022780              # double 0.35756010935494231
	.quad	0x3fefd94b7960a85c              # double 0.99527524668270528
	.quad	0x3fe9453fc82f0be0              # double 0.78970326517480415
	.quad	0x3fc7d929c4cc3824              # double 0.18631479367508164
	.quad	0x3fc4ff49231cc74c              # double 0.16404070105050506
	.quad	0x3fcb1cfc5350d0c8              # double 0.21182207172535628
	.quad	0x3fe7964152c51ed3              # double 0.73709169546142517
	.quad	0x3fa7b737a2350e30              # double 0.046319712210359021
	.quad	0x3febc8cc703abc6a              # double 0.86826154632389074
	.quad	0x3fec1d3866534ef4              # double 0.87856693253931306
	.quad	0x3fb93d09d9f57928              # double 0.098587623322121787
	.quad	0x3fe69d91a5d152af              # double 0.70673448930991423
	.quad	0x3fec114235fd6fdb              # double 0.87710676712913072
	.quad	0x3fef9dd8ba8351e2              # double 0.98801838329614733
	.quad	0x3fdbab6be8fec824              # double 0.43233773950044196
	.quad	0x3fed9d9dcdec5041              # double 0.92549028605800043
	.quad	0x3fe3b90a927e7eda              # double 0.61633804905064982
	.quad	0x3fe42290c3b45030              # double 0.62921941970353679
	.quad	0x3fe7dd27ab75ed8f              # double 0.7457464550820293
	.quad	0x3fe2516844314d4d              # double 0.57243741339554222
	.quad	0x3fe7828739e42788              # double 0.73468362147217281
	.quad	0x3feb1c69558dcf07              # double 0.84721819600824311
	.quad	0x3fe36034f6c03e2c              # double 0.60549400514168417
	.quad	0x3fd0f8580dcbfe58              # double 0.26515771243427855
	.quad	0x3fe239efbe98f160              # double 0.56957232690869475
	.quad	0x3fe5a6565d1e9269              # double 0.6765548533190443
	.quad	0x3fc7f8e574687674              # double 0.18728321250903301
	.quad	0x3fe7d802940611f0              # double 0.74511841688996405
	.quad	0x3fd2df172440a026              # double 0.29486635723378851
	.quad	0x3fc7d490ceeaf758              # double 0.1861744890538215
	.quad	0x3f5bbda19e06e200              # double 0.0016931608480331706
	.quad	0x3fca852c88073bd0              # double 0.20718914644245823
	.quad	0x3fd242f466f1aac0              # double 0.28533659031988279
	.quad	0x3fbc2c322e8573b8              # double 0.11004937778257229
	.quad	0x3fe7f90a42f53f5f              # double 0.74915040090307261
	.quad	0x3fc3b048f5a5b780              # double 0.15381729120730014
	.quad	0x3fc0fedd370e0a18              # double 0.1327778357336491
	.quad	0x3fe0d3424030dc7e              # double 0.52578842675474369
	.quad	0x3fe1c3138c9afc25              # double 0.5550630327414906
	.quad	0x3fe2b61cbcc5f02f              # double 0.58473049993290782
	.quad	0x3fe59e52d9ec25b3              # double 0.67557661593416751
	.quad	0x3fe7e7656eb9d376              # double 0.74699660898350717
	.quad	0x3fe46a5fdac4ea4f              # double 0.63798516014441897
	.quad	0x3fde4b9b77b9252e              # double 0.47336470309945156
	.quad	0x3fd8dbbbba86ee74              # double 0.38841145720991865
	.quad	0x3fe2c01e7785512c              # double 0.58595202773952826
	.quad	0x3feab4f973d5908e              # double 0.8345916044604722
	.quad	0x3fe2c9c7a00ab01c              # double 0.5871313215079712
	.quad	0x3fe038919e2dd852              # double 0.50690537351943932
	.quad	0x3fbd01db5a37bf60              # double 0.11330958321172835
	.quad	0x3fe26d834dc119b2              # double 0.57586827455889122
	.quad	0x3fe7c7f3309e6a98              # double 0.7431579541765414
	.quad	0x3fd1f82dcc338dbe              # double 0.28077263776341599
	.quad	0x3fd22d9685045998              # double 0.28403246869984278
	.quad	0x3fea48289a5d1930              # double 0.82130842351106104
	.quad	0x3feb5cd2a20df369              # double 0.85508090640324241
	.quad	0x3fc9b535650dd74c              # double 0.20084254678993785
	.quad	0x3fcb6e0f2ae52230              # double 0.21429624170765882
	.quad	0x3fe5598b27192d76              # double 0.66718061100384207
	.quad	0x3fcfc9d9a67242dc              # double 0.24834747912657107
	.quad	0x3fe5e5b8bc2c266f              # double 0.68429219009813191
	.quad	0x3fc811c82ce15e84              # double 0.18804266158507599
	.quad	0x3fdb4047df927bf2              # double 0.42579838593695662
	.quad	0x3fea57ffb6de2201              # double 0.823242051280488
	.quad	0x3fc7b36f0dd537cc              # double 0.18516338515695308
	.quad	0x3fd3d3a2de892fd8              # double 0.30979224903125901
	.quad	0x3fe64432e6011052              # double 0.69582505152403429
	.quad	0x3fe81432d47d5c04              # double 0.75246564390079173
	.quad	0x3fec00ba87f6e686              # double 0.87508894496495837
	.quad	0x3fe78e75c0bbca9b              # double 0.73614013331674089
	.quad	0x3fdd806c60c66c8c              # double 0.46096333933537248
	.quad	0x3fd192f1f9744872              # double 0.27459382401241961
	.quad	0x3fdb53ff3a13b914              # double 0.42700176879488194
	.quad	0x3feb71610a1eb466              # double 0.85759021736670316
	.quad	0x3fef193e4da8e8dc              # double 0.97183146636896422
	.quad	0x3fce8a43d0f29d54              # double 0.23859451010251098
	.quad	0x3fbbdaac43812958              # double 0.10880543373165119
	.quad	0x3fd996e247ff76b6              # double 0.39983422308965133
	.quad	0x3fe9cf1e6b002ef4              # double 0.80653305910661154
	.quad	0x3fe95ee3d840ff3c              # double 0.79283325421417982
	.quad	0x3fc7b13cfaee7484              # double 0.18509638073456725
	.quad	0x3fe033e85d6847f9              # double 0.50633638614294718
	.quad	0x3fcd2e319e010e28              # double 0.22797222342534096
	.quad	0x3fdac826447f4ae0              # double 0.41846615494902828
	.quad	0x3fe0b9b572793ccd              # double 0.52266952856180071
	.quad	0x3fd4aaf87d90539c              # double 0.32293522131049612
	.quad	0x3fd4617539f2b29c              # double 0.3184483590983207
	.quad	0x3fe9b04db85c2f73              # double 0.80277143485862579
	.quad	0x3fe0d57d7bed7776              # double 0.52606081204042598
	.quad	0x3fe3d38ca080ef66              # double 0.619573892100999
	.quad	0x3fe49791181621aa              # double 0.64350180343995089
	.quad	0x3fb4864f9d1462c0              # double 0.080174423074264034
	.quad	0x3fbb897a35da0168              # double 0.10756648840652405
	.quad	0x3fe476adb23ec828              # double 0.63948712171100386
	.quad	0x3fef2cc32588ca3d              # double 0.97421414690899832
	.quad	0x3fea86eba864d9d5              # double 0.82896979226534973
	.quad	0x3fe6dd6bdd92bdb9              # double 0.71452897335068777
	.quad	0x3fedf5ce3ed226f4              # double 0.9362555720301473
	.quad	0x3fdfbe107b6a7356              # double 0.49597560932470708
	.quad	0x3fe7bb690f6cdb5e              # double 0.74162724507082678
	.quad	0x3fd17526a90c57da              # double 0.27277533062567516
	.quad	0x3feb47170ff0a7e5              # double 0.85242798913281759
	.quad	0x3fdd53e9f4e9f732              # double 0.45824669759155079
	.quad	0x3fdc01d7e01cdc32              # double 0.43761250387200612
	.quad	0x3fe7d28e55447647              # double 0.74445263532442929
	.quad	0x3fe01f11f9fda672              # double 0.50379275156337955
	.quad	0x3fea261aff3d8e95              # double 0.81715154506351217
	.quad	0x3fe92ce352807be7              # double 0.78672948945665844
	.quad	0x3fdb23bcbe07d5c8              # double 0.42405623014141414
	.quad	0x3fc34198afdd1bbc              # double 0.15043934428305572
	.quad	0x3fec4c263593fb90              # double 0.88429556335892023
	.quad	0x3fd6e3b3d1931a3c              # double 0.35764785257598297
	.quad	0x3feba6b3ef24f1fa              # double 0.86409947116732089
	.quad	0x3fd7545ff2427dc4              # double 0.36452482851197154
	.quad	0x3fc0eb60d11c1b18              # double 0.13218317232550514
	.quad	0x3fef3a8a33a465c5              # double 0.97589597784388415
	.quad	0x3fe7eddb97e60906              # double 0.74778537433329073
	.quad	0x3fdbdd48df614804              # double 0.4353811437077868
	.quad	0x3fe783be039bd0c9              # double 0.7348318167192015
	.quad	0x3fedd37774d2092d              # double 0.93206379715437537
	.quad	0x3fe09b1149b4a1b8              # double 0.51892914195655404
	.quad	0x3fea7def83498a4b              # double 0.82787299768490052
	.quad	0x3fe4c28ca4e3d548              # double 0.64874870495865711
	.quad	0x3fd2968af5c1243c              # double 0.29043840407809163
	.quad	0x3fe61f7e2163f829              # double 0.69134432336409646
	.quad	0x3fdeebe85f2827a8              # double 0.48314866345082885
	.quad	0x3fc35550c3529df0              # double 0.15104112183801943
	.quad	0x3fdd4fcf0ed322ae              # double 0.45799614379624642
	.quad	0x3fe3bd82aedc155e              # double 0.61688360359464034
	.quad	0x3fd8aa79d4126a10              # double 0.38540502271794796
	.quad	0x3fd5b1e98883c3aa              # double 0.33898390132440659
	.quad	0x3fcc6dac5fc9c588              # double 0.22209696461827044
	.quad	0x3fb0729e187fd670              # double 0.064248925191202622
	.quad	0x3fe48d9ad8ad165d              # double 0.64228575057559179
	.quad	0x3fee11fa7bf006de              # double 0.93969463545382914
	.quad	0x3fea705764dea30b              # double 0.82621354771717515
	.quad	0x3fe34724e15cb56e              # double 0.60243457809489853
	.quad	0x3fdef8a4bae7235a              # double 0.48392599346384702
	.quad	0x3fa9c1f07ffca810              # double 0.05030776560154504
	.quad	0x3fd6c65af3126dc8              # double 0.35585664498804848
	.quad	0x3fb8ad1c59a741f8              # double 0.096391460311913479
	.quad	0x3fae367c45cd8420              # double 0.059009440918778688
	.quad	0x3fd005dc60f2e0e8              # double 0.25035771815920649
	.quad	0x3fe4bedfcea09d9a              # double 0.64830007893481256
	.quad	0x3feff38e3d457047              # double 0.99848091094055113
	.quad	0x3fea120223a94c56              # double 0.81469828572370306
	.quad	0x3fc951083d2cc8f4              # double 0.19778540598924332
	.quad	0x3fc45159a2c74f98              # double 0.158732609254568
	.quad	0x3fe6713efc122e4f              # double 0.70132397873516961
	.quad	0x3fef19a9288d6135              # double 0.97188241882671511
	.quad	0x3fefce529d0960dd              # double 0.99393587752549772
	.quad	0x3feddad95dd88492              # double 0.93296497658970368
	.quad	0x3fd545ad7fba1b36              # double 0.3323777911504523
	.quad	0x3fdda0037002be9c              # double 0.46289144457385034
	.quad	0x3fef55bf0cda876b              # double 0.97921707640146615
	.quad	0x3fe9dd08c623c1f2              # double 0.80823172282367595
	.quad	0x3febd9719a803235              # double 0.87029342819147948
	.quad	0x3fb32abcf76d1cc8              # double 0.07487088242224893
	.quad	0x3fe274ad61ceff0f              # double 0.57674283126104509
	.quad	0x3fe08af4abf0aef4              # double 0.51696237165512438
	.quad	0x3fe526853997ab10              # double 0.66095219849134601
	.quad	0x3fe1a4961e3a544a              # double 0.55134111312748613
	.quad	0x3f90b52bbb498520              # double 0.016316111856558568
	.quad	0x3fde19011b94af76              # double 0.47027614301145293
	.quad	0x3fe9d8cd35c06bed              # double 0.80771503923767585
	.quad	0x3fee7ecebd02945b              # double 0.95297943988829148
	.quad	0x3fdb7a2fb628568e              # double 0.42933266438317552
	.quad	0x3fd2cfdb13178072              # double 0.29393650879320099
	.quad	0x3feeab0669ecdd58              # double 0.95837708176160685
	.quad	0x3fe456e1566963f1              # double 0.63560549618989459
	.quad	0x3fe474c04a99a91f              # double 0.63925184793814427
	.quad	0x3fe3251fbdd91feb              # double 0.59828173713412747
	.quad	0x3fd71c53116355f4              # double 0.36110378931093057
	.quad	0x3fe1daa2341edd52              # double 0.5579386728267457
	.quad	0x3fecd0406bf5410d              # double 0.90042134366561444
	.quad	0x3fe5cbb6b19ebad6              # double 0.68111738864339588
	.quad	0x3fef979dbc68e4cc              # double 0.98725783156182833
	.quad	0x3fca781521be5c00              # double 0.20678962848316473
	.quad	0x3fe2dbb544089a3b              # double 0.58931983268559607
	.quad	0x3fe6316b9faedbc4              # double 0.6935327643212692
	.quad	0x3fd9941b4fc11814              # double 0.39966471470359122
	.quad	0x3fe469bdabf6ed6a              # double 0.6379078253443542
	.quad	0x3fe19932f4311c4b              # double 0.54995105451315263
	.quad	0x3fa7e51823acb1a0              # double 0.046669725756461888
	.quad	0x3fe334f37889755d              # double 0.60021375219700313
	.quad	0x3fe0647d404f2d68              # double 0.51226675568015612
	.quad	0x3fe563493995467b              # double 0.66836987730694319
	.quad	0x3fb10d42d7710448              # double 0.066608598325744173
	.quad	0x3fcb7ad381122cec              # double 0.21468585779471228
	.quad	0x3fe53eeb0acd7181              # double 0.66393043622842651
	.quad	0x3fea7d551e05b9d7              # double 0.82779937614196342
	.quad	0x3fc414a66175afbc              # double 0.15688018568778073
	.quad	0x3fef85ed4329317d              # double 0.98509848706593994
	.quad	0x3fd2cb2931de19d8              # double 0.29364995832329788
	.quad	0x3fef04b428eede2f              # double 0.96932418818227528
	.quad	0x3feaebf73d3d7c49              # double 0.84130441628429609
	.quad	0x3fdf57980ddc3532              # double 0.4897213111260782
	.quad	0x3fecc5b101613227              # double 0.89913225430934041
	.quad	0x3fe4747073092851              # double 0.63921377628254039
	.quad	0x3fe263e4f55a57aa              # double 0.57469413681495962
	.quad	0x3fb1b788435be118              # double 0.069206730313343789
	.quad	0x3fe48f92a60cb533              # double 0.64252598220415391
	.quad	0x3fdc5d4d9a036096              # double 0.44319477119780382
	.quad	0x3fd07006cd268a9e              # double 0.25683755907281547
	.quad	0x3fcbad4a95dce6c0              # double 0.21622593228840081
	.quad	0x3fdd4770f4cfbdd2              # double 0.4574854269730767
	.quad	0x3fd9668cc0ca4986              # double 0.39688414408842509
	.quad	0x3fa63dce3733a640              # double 0.04344028877114825
	.quad	0x3fe7a20bff10bef6              # double 0.73853111093009605
	.quad	0x3fded3e955ed0a0e              # double 0.48168404952244337
	.quad	0x3fda2a2ec456f700              # double 0.40882462667273956
	.quad	0x3fe7419613c5562a              # double 0.72675613271230088
	.quad	0x3fe513f19d8cd4b8              # double 0.65868454715259528
	.quad	0x3f93452ca4af0580              # double 0.018818566848272322
	.quad	0x3fed12e690c5cbe5              # double 0.90855720783144689
	.quad	0x3fefa84f26d293ee              # double 0.98929555494816923
	.quad	0x3fe4d449a46379bf              # double 0.65091402156013334
	.quad	0x3fdf3d6758381eb4              # double 0.48812278380544716
	.quad	0x3fe62d0eb40f9b67              # double 0.69300017517239787
	.quad	0x3fe08bdf00cdfbff              # double 0.51707410962251277
	.quad	0x3fd073783baa2ca6              # double 0.25704770876536498
	.quad	0x3fdd6e6f8bcf9f22              # double 0.45986546185894117
	.quad	0x3fec16a80ef4cc5b              # double 0.877765683375752
	.quad	0x3fe2861989b1ef10              # double 0.57886959928097959
	.quad	0x3fe0ed977da03025              # double 0.52900290046955389
	.quad	0x3fe5064decc5de6b              # double 0.65701957936012201
	.quad	0x3fd373297ebf6788              # double 0.30390393617346279
	.quad	0x3fce75a36d4700b0              # double 0.23796503864105523
	.quad	0x3fe5102370eea439              # double 0.65822002465313922
	.quad	0x3fd968f5b8057aac              # double 0.39703124018516678
	.quad	0x3fede4d233530acd              # double 0.93418226265233673
	.quad	0x3fe7a277bbd5205b              # double 0.73858248411216765
	.quad	0x3fdf9ea5199e8700              # double 0.49405791761283524
	.quad	0x3feaf234fe0798d0              # double 0.84206628432436936
	.quad	0x3fd664bee054d508              # double 0.34989902407990359
	.quad	0x3fb9150574827f98              # double 0.097977009720578656
	.quad	0x3fe61b965a920e70              # double 0.69086759271199405
	.quad	0x3fe2b39056ee3bcb              # double 0.58441941240914141
	.quad	0x3fe0325531b1c078              # double 0.50614413934637437
	.quad	0x3fcac6601f585eb4              # double 0.20917893915679076
	.quad	0x3fccd05231cd97f4              # double 0.22510745460311876
	.quad	0x3feff64b729c81d5              # double 0.99881527314215168
	.quad	0x3fdb08ef811e618e              # double 0.4224203835415431
	.quad	0x3fe276e4016dd723              # double 0.57701301840890939
	.quad	0x3fbb1d60864ca7c0              # double 0.10591700819773475
	.quad	0x3fe5db421c1859f9              # double 0.68301492202118574
	.quad	0x3fd2c3a7af3dffde              # double 0.29319183457846332
	.quad	0x3fe5d85859dd823f              # double 0.68265931655702861
	.quad	0x3fbff8cce4483338              # double 0.12489014218608652
	.quad	0x3fdfd1bf58bb27ba              # double 0.49717696824211155
	.quad	0x3fd07c355dc78936              # double 0.25758108289859949
	.quad	0x3feae53fcd601ec5              # double 0.84048452484508884
	.quad	0x3feda839aa65c834              # double 0.92678530960825478
	.quad	0x3fdca65f800ce22c              # double 0.44765460495867404
	.quad	0x3fdb235947c18cd8              # double 0.42403251655032426
	.quad	0x3fd3105a8298e71c              # double 0.29787314180031088
	.quad	0x3fe149b593695e02              # double 0.54024771491361911
	.quad	0x3fc8ac4073af176c              # double 0.19275670670156886
	.quad	0x3fec5ded52d07f8d              # double 0.88646570372292077
	.quad	0x3fd3c1ef76e6a692              # double 0.30871187793182131
	.quad	0x3fe5164bb1f40d20              # double 0.65897164112576334
	.quad	0x3fbf991aae6e6450              # double 0.12342993506025945
	.quad	0x3fdd39c63b1be768              # double 0.45665126583445792
	.quad	0x3fbc2cb07da196d0              # double 0.11005690638702537
	.quad	0x3fefcefdbbb9e936              # double 0.99401747384334871
	.quad	0x3fe6d4ccf48d8e46              # double 0.71347663654564353
	.quad	0x3feaca28d40df00a              # double 0.83717767159350953
	.quad	0x3fd5995a3608951a              # double 0.33748488690101086
	.quad	0x3fe3e5a56d808289              # double 0.62178298365695739
	.quad	0x3fe6ee600b3843e2              # double 0.71659853164066711
	.quad	0x3fe97c8716444326              # double 0.7964511332412243
	.quad	0x3fe8d48645addb04              # double 0.77594293221667998
	.quad	0x3fc6c4e31ac70c54              # double 0.17788351829048799
	.quad	0x3fe9de012f5b65bc              # double 0.80835017442148382
	.quad	0x3fe3a6abd36e3841              # double 0.61409560484913339
	.quad	0x3fe00afe31a60cf9              # double 0.50134191224097358
	.quad	0x3fdfe98a9fc0a2a4              # double 0.49862924195125857
	.quad	0x3fe3b8cc566e5e87              # double 0.61630837327079824
	.quad	0x3fbbd41da933c810              # double 0.10870538121142226
	.quad	0x3fdaaff7865258c0              # double 0.41699016682958856
	.quad	0x3fe222ee26ef3d3e              # double 0.56676395038986249
	.quad	0x3fdab8b3b2ba4f40              # double 0.41752331212886773
	.quad	0x3fe78fe38732d879              # double 0.73631454854945766
	.quad	0x3f7b64a97f433800              # double 0.0066877957326152426
	.quad	0x3fee966c57bf4b5f              # double 0.955862208730064
	.quad	0x3fd77a24cf2067d4              # double 0.36683006503301141
	.quad	0x3feb4733f1be815b              # double 0.85244176116615777
	.quad	0x3fef337821eda203              # double 0.9750328695927809
	.quad	0x3fe4166f1d996417              # double 0.62773853093233611
	.quad	0x3fc7e33526da2790              # double 0.18662132641867091
	.quad	0x3feb5d50842fce67              # double 0.85514093225215226
	.quad	0x3feb507cc8895190              # double 0.85357512633577137
	.quad	0x3fa2d3fda1eecb50              # double 0.036773611085115676
	.quad	0x3feb7df6318088c2              # double 0.85912618320823975
	.quad	0x3fd49d0d1e827f0c              # double 0.32208564738719825
	.quad	0x3fcb1976fe2cebb8              # double 0.21171462450896938
	.quad	0x3fd3b9b36749599e              # double 0.30820927702498035
	.quad	0x3fe685b58dfa4ebc              # double 0.70382192354232798
	.quad	0x3fdfba73ee228fd0              # double 0.49575517897960442
	.quad	0x3fe4883f1cb81d8f              # double 0.64163165673464728
	.quad	0x3fec081fab733670              # double 0.87599166380250715
	.quad	0x3fadb167c0445ab0              # double 0.057994119854062887
	.quad	0x3fe5528b4ba97470              # double 0.66632618692132262
	.quad	0x3fcad3bfec703c84              # double 0.20958708805889981
	.quad	0x3fee983be4ee8043              # double 0.95608324731075134
	.quad	0x3fe02e3e6b0479de              # double 0.50564499761440707
	.quad	0x3fdd924e5bc98b0e              # double 0.46205481494523404
	.quad	0x3feb1f4f8ba05a8f              # double 0.84757210989740084
	.quad	0x3fb979d69415f8f0              # double 0.099515353349463486
	.quad	0x3fbceca6ad2e2d28              # double 0.11298600891148125
	.quad	0x3fdba5afb306d3ac              # double 0.43198769076416954
	.quad	0x3fe5102689dc552b              # double 0.65822150159752846
	.quad	0x3fe7d9d6e755c735              # double 0.74534173185950314
	.quad	0x3fe4f0cc4be3b187              # double 0.65439429113534764
	.quad	0x3fe9f5ab34a1aa9f              # double 0.81123886375037901
	.quad	0x3fec4e622bc4b159              # double 0.88456829594137354
	.quad	0x3fe85ea17f78adef              # double 0.76155161759146306
	.quad	0x3fef962d38a0b4f1              # double 0.98708211002454337
	.quad	0x3fd03bab9dd48c28              # double 0.25364199078666383
	.quad	0x3feafe7708dbfb60              # double 0.84356261949856659
	.quad	0x3fde6333097c9518              # double 0.47480464865141547
	.quad	0x3feff9550a1ad6df              # double 0.99918605779268065
	.quad	0x3fe56f8ee2fc2394              # double 0.66986793835632108
	.quad	0x3fefa31976997ff1              # double 0.98865960277544051
	.quad	0x3fd7331908af6fd2              # double 0.36249376152204349
	.quad	0x3fd3a717035914bc              # double 0.30707335783911183
	.quad	0x3fe548e2346b195f              # double 0.66514692533455022
	.quad	0x3fbf68cdedd39428              # double 0.12269293838797124
	.quad	0x3fb75164cd1f4760              # double 0.091085720137269899
	.quad	0x3fbfec626e1d59b8              # double 0.12470069111200288
	.quad	0x3fc3e7f32438bd08              # double 0.15551604527124874
	.quad	0x3fe9754fbf2b1615              # double 0.79557025277671534
	.quad	0x3fed0104bfda756a              # double 0.90637433501585218
	.quad	0x3fe4ef0e6c8cb185              # double 0.65418168259707044
	.quad	0x3fe0bc664f01b47c              # double 0.52299800330150914
	.quad	0x3fe0b5aa0367868e              # double 0.52217579522057789
	.quad	0x3fd0d457506fa9d2              # double 0.26296027045341674
	.quad	0x3fe0c6256cd3f05d              # double 0.52418776755758822
	.quad	0x3fee4eaf9e2854ff              # double 0.94710522546907316
	.quad	0x3fbe3c6e64859180              # double 0.11810960725921937
	.quad	0x3fe701a20ba4a76b              # double 0.7189493396192409
	.quad	0x3fe10dcd5937f620              # double 0.53293483186252288
	.quad	0x3fc92620a9b7522c              # double 0.19647606169623211
	.quad	0x3fdcde32db23d812              # double 0.45106192970649872
	.quad	0x3fdbcf6dfaca2eb6              # double 0.43453549853505125
	.quad	0x3fb099f31a75bb10              # double 0.064849084815915115
	.quad	0x3fd3d8bd8aa85e1a              # double 0.3101037839964832
	.quad	0x3fe66f11d05d6055              # double 0.70105829902878247
	.quad	0x3fe4c4cc0783e5ae              # double 0.64902307002846782
	.quad	0x3fe14e95b5022ea2              # double 0.54084287026622158
	.quad	0x3fea775cad7c5746              # double 0.82707055934836471
	.quad	0x3fe7396c0727bd24              # double 0.72575951955324003
	.quad	0x3fcb35a243df44d8              # double 0.21257427515096228
	.quad	0x3fe533756154b804              # double 0.66253155717799972
	.quad	0x3fd11529a56c819c              # double 0.26691666750596155
	.quad	0x3fb9803eb5b74520              # double 0.099613112797005687
	.quad	0x3fd6bc308faa6d50              # double 0.35523618726593487
	.quad	0x3feee20bf53a2918              # double 0.96509359260497529
	.quad	0x3fdf8eb3e0f4862a              # double 0.49308487861898931
	.quad	0x3fe6eca2930f9baa              # double 0.71638611529202945
	.quad	0x3fa22c36326bf830              # double 0.035493558554648863
	.quad	0x3fe47384a66197ec              # double 0.63910133835156335
	.quad	0x3fdfc05bdf67c814              # double 0.49611565415318748
	.quad	0x3fd27e0fa512cc7a              # double 0.28894415970280074
	.quad	0x3fd7df845d0dcf70              # double 0.37301739775943243
	.quad	0x3fd415e8ec1902f8              # double 0.31383727127472083
	.quad	0x3fec0dee7cc0c95f              # double 0.87670063367685802
	.quad	0x3fd60d48f823fcce              # double 0.34456085426786565
	.quad	0x3fccda694c3d1cc8              # double 0.22541538450807352
	.quad	0x3fd0f5facaf64986              # double 0.26501340694917308
	.quad	0x3fe1cd7a532216f3              # double 0.55633274304338298
	.quad	0x3fef9c148fb16ed9              # double 0.98780277314241538
	.quad	0x3fc431cc1dda5660              # double 0.15776969392452411
	.quad	0x3feafa290882e016              # double 0.84303714430189092
	.quad	0x3fd7b2374ded7a3a              # double 0.37025244341012675
	.quad	0x3fb1a504eb9ba120              # double 0.06892424347063697
	.quad	0x3fdf9b81b1e24fe6              # double 0.49386637088286844
	.quad	0x3fd09dbc8ef3a288              # double 0.25962747535826525
	.quad	0x3fe3f5f3c43afa68              # double 0.62377346349951512
	.quad	0x3fd76cf33625d36e              # double 0.36602478301875052
	.quad	0x3fecd6d814eba758              # double 0.90122608266868109
	.quad	0x3fec30148a4b44ab              # double 0.88086916933584314
	.quad	0x3fa6362db95c4ca0              # double 0.043382099988002354
	.quad	0x3fe37fd9edf521ff              # double 0.60935684658130629
	.quad	0x3fed176cd3ca5a37              # double 0.90910951009101992
	.quad	0x3fc47dbe1a255e3c              # double 0.1600873592058053
	.quad	0x3fd834e12fbd145e              # double 0.37822751676532629
	.quad	0x3fe2c23210874776              # double 0.58620551326951786
	.quad	0x3fdffa3bc98d7980              # double 0.49964804346918612
	.quad	0x3fd0913e09da8cd4              # double 0.25886488878513814
	.quad	0x3f9590e2d49d7240              # double 0.021060508944503065
	.quad	0x3fec2d6767e09b16              # double 0.88054247177646761
	.quad	0x3fe231c9dc8e35e3              # double 0.56857770039794919
	.quad	0x3fc302f5e8d81f88              # double 0.14852784985873435
	.quad	0x3fcba76c6607fd8c              # double 0.21604685766213227
	.quad	0x3fbc45e5d9cb25a0              # double 0.11044155661797683
	.quad	0x3fe63c48598e5034              # double 0.6948587178362744
	.quad	0x3fedbd265f68b636              # double 0.92933958658767923
	.quad	0x3fa152715fe2e730              # double 0.033832114176631456
	.quad	0x3fecd5b15bf412ee              # double 0.90108554801608221
	.quad	0x3fe17c82d1399cd7              # double 0.54644909729258984
	.quad	0x3fe60cfc54e48a8e              # double 0.68908516483891602
	.quad	0x3fe036ce1a7686fe              # double 0.50669007462076343
	.quad	0x3feaa41c1a581065              # double 0.8325329317599538
	.quad	0x3fb9e6b0a6a904c0              # double 0.1011763007054638
	.quad	0x3fe2a6c5861c2edc              # double 0.58285785859467465
	.quad	0x3fd28b8066c5ae24              # double 0.28976450001093412
	.quad	0x3fb66c5935901860              # double 0.087590766503212958
	.quad	0x3fc523e48556bf44              # double 0.1651578570431359
	.quad	0x3fe7154ca2050cc3              # double 0.72135001797178011
	.quad	0x3fd678ace0280a92              # double 0.35111543550753155
	.quad	0x3fb8326e2ea83b08              # double 0.094519506827264732
	.quad	0x3fb4ea0b0d1988b0              # double 0.081696215341738875
	.quad	0x3fcad43782eefe3c              # double 0.20960134404411856
	.quad	0x3fc0d141b942f704              # double 0.1313860087010924
	.quad	0x3fb119a8483a2568              # double 0.066797750123574695
	.quad	0x3fe9e28c4c5f71f7              # double 0.80890479008263483
	.quad	0x3fe8f1cf102638b1              # double 0.77951768068466809
	.quad	0x3fec89e7187a9a90              # double 0.89183382779158826
	.quad	0x3fe7508a989f34a1              # double 0.72858171280826778
	.quad	0x3fda79da1ed04ec4              # double 0.4136872578539903
	.quad	0x3fedc4b632690ceb              # double 0.93026265950939313
	.quad	0x3fe764de6b5aa247              # double 0.73106308906160045
	.quad	0x3fc60e3098f777b4              # double 0.17230803937030503
	.quad	0x3fe6951448794ab1              # double 0.70569814829862854
	.quad	0x3fd6bc674b63ca1c              # double 0.35524923670087261
	.quad	0x3fe0285164a178b8              # double 0.50492162374918959
	.quad	0x3fefcdd531cfeddb              # double 0.99387607315969306
	.quad	0x3fe131472980a555              # double 0.53726537805520513
	.quad	0x3fef40d4afae522f              # double 0.9766639167087926
	.quad	0x3fd08cc07c72858a              # double 0.25859081414281404
	.quad	0x3fdb6c06abb74576              # double 0.42846838730937209
	.quad	0x3fcf8ae379d70e24              # double 0.24642604302617699
	.quad	0x3fd24ea843574610              # double 0.28605085922490137
	.quad	0x3fe61f455d5fb8ff              # double 0.69131725537388877
	.quad	0x3fbe7e54b29e7bd8              # double 0.11911515580003085
	.quad	0x3fcab91657e59508              # double 0.20877341548763462
	.quad	0x3fe11ed414088c3f              # double 0.53501323616763574
	.quad	0x3fdbf0fb7b5a2342              # double 0.43658339544395031
	.quad	0x3fc30ce21fda93d0              # double 0.14883066707002834
	.quad	0x3fdb214faa49b2fc              # double 0.42390815381695268
	.quad	0x3fc8eb95350e6c84              # double 0.1946894177498032
	.quad	0x3fef48344cbb8c57              # double 0.97756400095785067
	.quad	0x3fe32a4f15fd46e1              # double 0.59891466421887796
	.quad	0x3fbec8f21280b690              # double 0.12025368644455114
	.quad	0x3fe7ec2250c63277              # double 0.74757495666706475
	.quad	0x3fe449aa6a3f82fc              # double 0.63399239303188848
	.quad	0x3fee43b5ec01449e              # double 0.94576545805661616
	.quad	0x3fdc7d2a4a8ba698              # double 0.44513947753748928
	.quad	0x3fd212d65960fbf8              # double 0.28239973762896353
	.quad	0x3fd4a2c9cca5dfa8              # double 0.32243580804014949
	.quad	0x3fe2008f46c9d774              # double 0.56256831956737452
	.quad	0x3fd37e7076ac2a72              # double 0.30459224309075872
	.quad	0x3fe0a6ffda3de462              # double 0.52038567185730877
	.quad	0x3fd88b7d400df592              # double 0.38351374869656596
	.quad	0x3fbd441a6b908b30              # double 0.11432042242135476
	.quad	0x3fea1ccbf83eddef              # double 0.81601522908652935
	.quad	0x3fb113393d5a5598              # double 0.066699578741767573
	.quad	0x3fe224bcac88df7b              # double 0.56698449800658979
	.quad	0x3fc08a2226685708              # double 0.12921549678201694
	.quad	0x3fcba4fff5398814              # double 0.21597289537300013
	.quad	0x3fd3d5ae6ab1f504              # double 0.30991707248161071
	.quad	0x3febec7f706bfa03              # double 0.87261936147098174
	.quad	0x3fead02f3f78c93c              # double 0.83791315457191428
	.quad	0x3fef35bd952b0d31              # double 0.97531012663276872
	.quad	0x3fe899e7561d8279              # double 0.76878706759823878
	.quad	0x3fe422e404df1b5d              # double 0.62925911857096717
	.quad	0x3fe80c01e995476f              # double 0.75146575566962592
	.quad	0x3febde640e6289be              # double 0.87089731988481112
	.quad	0x3fb89e9870d1fbf8              # double 0.096169974845892514
	.quad	0x3fe74fa675ae1a3f              # double 0.72847292885200676
	.quad	0x3fe93e2a4b990d66              # double 0.78883852734763305
	.quad	0x3fcd08833c5b7090              # double 0.22682228514793623
	.quad	0x3fe2ad7a45949b67              # double 0.58367646779957461
	.quad	0x3fee913936ed9b1a              # double 0.95522747734216584
	.quad	0x3fdd94c94afdc256              # double 0.46220619510044025
	.quad	0x3fd7a1ff0d48d498              # double 0.36926246926606998
	.quad	0x3fec1c9f2d174cb2              # double 0.87849386984671285
	.quad	0x3fee05ef6dfd9cc8              # double 0.93822452051690508
	.quad	0x3fef858ee3dd1a10              # double 0.98505348686814109
	.quad	0x3fde214b6ff30b72              # double 0.4707821458106799
	.quad	0x3fda21809a7ab812              # double 0.4082948216045007
	.quad	0x3fb27edfd5a11a98              # double 0.072248448997110137
	.quad	0x3fe00950963534af              # double 0.50113705956905175
	.quad	0x3fee8410258248e8              # double 0.95362098051034838
	.quad	0x3fea63a8c23b6655              # double 0.82466543136542703
	.quad	0x3feda3caa4b07920              # double 0.92624408880127262
	.quad	0x3fc60d4eaefcb8dc              # double 0.17228110832497279
	.quad	0x3fee42af43011ead              # double 0.94564021193305836
	.quad	0x3fa8cf9d9551a3c0              # double 0.048458981015591984
	.quad	0x3fddeb673a8a725a              # double 0.4674928733527729
	.quad	0x3fde28a612636248              # double 0.47123100085949376
	.quad	0x3fed82023afd51dc              # double 0.92212020417587892
	.quad	0x3fd88717d154706a              # double 0.38324542467467515
	.quad	0x3fc4deefc1679368              # double 0.16305348342498438
	.quad	0x3fea167f39e94af1              # double 0.81524621306229339
	.quad	0x3fdc3b865ebd284c              # double 0.44113311054082227
	.quad	0x3fda16b20c173068              # double 0.40763522320481238
	.quad	0x3fe42de76b9007a2              # double 0.63060351379703072
	.quad	0x3fe244a7b624864f              # double 0.57088075232258884
	.quad	0x3fe88e477fca87a5              # double 0.76736807784276506
	.quad	0x3fe2d0457f06ce2a              # double 0.58792376336936525
	.quad	0x3fe85629e79eba5b              # double 0.76051802862441364
	.quad	0x3fde42fe2d816056              # double 0.47283892101177594
	.quad	0x3fe09d0fbd22712f              # double 0.51917254391040568
	.quad	0x3fd10ec13fd168d6              # double 0.26652556640841618
	.quad	0x3fbefbf80ba82750              # double 0.12103224072066365
	.quad	0x3fee229eeeb4fa71              # double 0.94172617552233195
	.quad	0x3fdb08ace756cd86              # double 0.42240450469690705
	.quad	0x3fe126855f0e07ce              # double 0.53595226827041542
	.quad	0x3fde30b600453e9c              # double 0.47172307993330675
	.quad	0x3fa2885f1f038fd0              # double 0.036196682487371512
	.quad	0x3fe56dc6deb3d32f              # double 0.66965049263544596
	.quad	0x3febab5bafac625c              # double 0.86466774283605785
	.quad	0x3fe40507d3482d6e              # double 0.62561408296589405
	.quad	0x3fe896780d5f7053              # double 0.76836779224277973
	.quad	0x3fe5cbe5f9b2a017              # double 0.68113993424504116
	.quad	0x3fa6b1ea440d9aa0              # double 0.04432613449789824
	.quad	0x3fe65a1714339f71              # double 0.69849733300814709
	.quad	0x3feed85e087e4883              # double 0.96391202601286385
	.quad	0x3fc53a8de398f3bc              # double 0.16584943402440711
	.quad	0x3fce1b3a6b576f3c              # double 0.23520593873296913
	.quad	0x3fde8393bad0ce3e              # double 0.47678082698550728
	.quad	0x3fdf6c7b04c1422e              # double 0.49099612678859017
	.quad	0x3fe4775e3f7517fd              # double 0.63957130807898432
	.quad	0x3fc634cfcb6128dc              # double 0.17348668509141063
	.quad	0x3fec82d0bbec3acb              # double 0.89096867278734615
	.quad	0x3fe61db4fd1e2165              # double 0.69112634121942718
	.quad	0x3fc5fb1b8311f558              # double 0.1717256917944876
	.quad	0x3fe7b4946e4d73d5              # double 0.74079343360392136
	.quad	0x3fa23f4da9d59260              # double 0.035639216405603191
	.quad	0x3fef52000f95ac41              # double 0.97875979465369067
	.quad	0x3fe080e0e766f8e4              # double 0.51573224254368855
	.quad	0x3fd5a0f30e57b66a              # double 0.33794857407233414
	.quad	0x3fe094b8dea25553              # double 0.5181545589754627
	.quad	0x3fe9f8910641d524              # double 0.81159259054280541
	.quad	0x3fee0406bc1e5445              # double 0.93799149267091109
	.quad	0x3fc56da6260d8180              # double 0.16740872247738636
	.quad	0x3fdb7b3a9a3f8c9a              # double 0.42939629615120511
	.quad	0x3fc0e45f616ed8bc              # double 0.13196937806578102
	.quad	0x3fb92d5755ef27d0              # double 0.098348101120023345
	.quad	0x3fb65889a82c9370              # double 0.087288478429923932
	.quad	0x3fd43c0883ba7a7c              # double 0.31616413940529475
	.quad	0x3fceabf72d7c13c8              # double 0.23962297173434721
	.quad	0x3fe7250453fb580d              # double 0.72326866533944811
	.quad	0x3fe570d4dec17fab              # double 0.67002337939265055
	.quad	0x3fbd3e2ad45e2a78              # double 0.1142298477626954
	.quad	0x3fe2ae09cd7c72d8              # double 0.58374490865716222
	.quad	0x3fede150ca82d1f2              # double 0.93375434449131789
	.quad	0x3fe48aada0dfab85              # double 0.64192849560400644
	.quad	0x3fe78f205eac5eee              # double 0.7362214898193693
	.quad	0x3fed9a3aee1fa94c              # double 0.92507692822008769
	.quad	0x3fd66c0e3078cf2e              # double 0.35034517987809266
	.quad	0x3feda366ed2bd954              # double 0.9261965400935801
	.quad	0x3fe41b472d758d7b              # double 0.62832983855007229
	.quad	0x3fd06a35eaeae6cc              # double 0.2564825815312417
	.quad	0x3fe8ed6ddbf3c4a3              # double 0.77898304900567827
	.quad	0x3fec46440a20ed75              # double 0.88357736566778888
	.quad	0x3fe62dca1cd0d7a7              # double 0.6930895388420496
	.quad	0x3fecf0c724cd0688              # double 0.90439183414146473
	.quad	0x3febce7d55bbd482              # double 0.86895624871125698
	.quad	0x3fea94696c239d10              # double 0.83061667557640995
	.quad	0x3fd04990c42ccf1a              # double 0.25449008138387941
	.quad	0x3fecbe386ab11f1d              # double 0.89822026098497398
	.quad	0x3fd4509c56edd90e              # double 0.31742008675736677
	.quad	0x3fbac38d1c1fafa8              # double 0.10454637467017724
	.quad	0x3f878f6db5cffec0              # double 0.011504037009216872
	.quad	0x3fedc8bb6dd1a4dc              # double 0.93075343560226597
	.quad	0x3fe91571ecf8b6a4              # double 0.78386780055526061
	.quad	0x3fe8345ac87f6873              # double 0.75639094505028337
	.quad	0x3fe9c2f23ae19b82              # double 0.80504714489221407
	.quad	0x3fec9235914d2d4d              # double 0.89284780863946767
	.quad	0x3fd7b831b01c1594              # double 0.37061731527531916
	.quad	0x3fa777c3c8608220              # double 0.04583560772903561
	.quad	0x3fe53428077e89ba              # double 0.66261674369552925
	.quad	0x3fe46c0b7449cf82              # double 0.63818905556262018
	.quad	0x3feb51abe4926ec6              # double 0.85371966021508494
	.quad	0x3fa3c42fbea10f20              # double 0.03860615922942956
	.quad	0x3fc4754c50fa2e34              # double 0.15982965425460949
	.quad	0x3fdfa1d745cfbc66              # double 0.4942529851677534
	.quad	0x3fd17b29ac5dc1d4              # double 0.27314225990906249
	.quad	0x3fa1f078b8808ed0              # double 0.035037777445067086
	.quad	0x3fe605adccc08c99              # double 0.68819322577145947
	.quad	0x3fee04007aa96143              # double 0.93798850972510939
	.quad	0x3fefb099a9bf9dc9              # double 0.99030764726642772
	.quad	0x3fec92c0a64ea387              # double 0.89291412813064219
	.quad	0x3faa25a128b25580              # double 0.051068340509270449
	.quad	0x3fd8fb6c946b8be2              # double 0.3903457116522856
	.quad	0x3fae17e6fff5e800              # double 0.058776110406100202
	.quad	0x3fdc26b2c0a56214              # double 0.43986195386017468
	.quad	0x3fdfa9d9db5f2e28              # double 0.49474188254382279
	.quad	0x3fb29a50d80790b8              # double 0.072667172185506668
	.quad	0x3f523b620fa85000              # double 0.0011127908352408511
	.quad	0x3fda3f401ac91ea8              # double 0.41011049857886883
	.quad	0x3fcc509c122b60c0              # double 0.22121001135997709
	.quad	0x3feb60abdbc52b75              # double 0.85555069850793919
	.quad	0x3fed1288c7c71fac              # double 0.90851248759371605
	.quad	0x3fec5a3d303a13ed              # double 0.88601550502118942
	.quad	0x3feb50747c9ef425              # double 0.85357117023489038
	.quad	0x3fbec00376d6df48              # double 0.1201173939833754
	.quad	0x3fd00f3245e6d084              # double 0.25092751337366104
	.quad	0x3fe938749cb8cf17              # double 0.78814154252765689
	.quad	0x3fe1db593aa7fc58              # double 0.5580259462002557
	.quad	0x3fc3cc289ec0f400              # double 0.15466792823454512
	.quad	0x3fef95e749bea08f              # double 0.98704876330613611
	.quad	0x3fbb4c91906a6478              # double 0.10663709426661849
	.quad	0x3feb2f238daed4d4              # double 0.84950425789306871
	.quad	0x3fed2a822a2df240              # double 0.91143902052096593
	.quad	0x3fd485f2b71c6b6c              # double 0.3206755436128137
	.quad	0x3fe3734ba6dcc043              # double 0.60782415952963509
	.quad	0x3fed8f2bcfeee636              # double 0.92372694599106953
	.quad	0x3fd009ae17f111de              # double 0.25059082353643969
	.quad	0x3fc8a624afbf6ba8              # double 0.19257029134209103
	.quad	0x3fd0a18c5a9261d6              # double 0.25986012310889117
	.quad	0x3fe62f36c8e58d04              # double 0.69326342809327501
	.quad	0x3fe9d682352cd926              # double 0.80743513475207318
	.quad	0x3fcc36c7a5fdb784              # double 0.22042174916299129
	.quad	0x3fe833b226e6c371              # double 0.75631053541120086
	.quad	0x3fc0d4bdaa6d0054              # double 0.13149233647891612
	.quad	0x3fe9c77bc2d203fd              # double 0.80560100603918239
	.quad	0x3fc3ce59f5173ee8              # double 0.15473484484981914
	.quad	0x3fc863b5af8899c8              # double 0.19054289885498421
	.quad	0x3fd773468f750b8e              # double 0.366410865874223
	.quad	0x3fe96363416a95b2              # double 0.79338228966360291
	.quad	0x3fea9cdd21e5b5fb              # double 0.8316484129006193
	.quad	0x3fef294c349de180              # double 0.97379122044280564
	.quad	0x3fd790bc344c0862              # double 0.36820893389825049
	.quad	0x3fdc10d64a4eb1ea              # double 0.43852765328008891
	.quad	0x3fe4933aa9257690              # double 0.64297230755228618
	.quad	0x3fe0b8546b95321a              # double 0.52250119220986169
	.quad	0x3fd37cee5a195344              # double 0.30450018690799063
	.quad	0x3fde701cc0917f44              # double 0.47559279256346465
	.quad	0x3fd3ef2a336d9f8a              # double 0.31147246382033045
	.quad	0x3fc61507df83ea44              # double 0.17251680768807109
	.quad	0x3fe52029511f9c36              # double 0.66017595142773788
	.quad	0x3fba9d4e5765a458              # double 0.10396279939381381
	.quad	0x3fce683668512684              # double 0.23755531400302143
	.quad	0x3fd081d06a6af0d2              # double 0.25792322532994405
	.quad	0x3fe7fc567478903e              # double 0.7495529436896573
	.quad	0x3fe2487d901bd9b4              # double 0.57134893556831523
	.quad	0x3fa6da141f6e0dd0              # double 0.044632557713181975
	.quad	0x3f94d162a04149a0              # double 0.020329991370383049
	.quad	0x3fa25d5e248e07b0              # double 0.035868589365250059
	.quad	0x3fe57c14801c834e              # double 0.67139649411920188
	.quad	0x3fe4a897c6e95cd3              # double 0.64558018541256457
	.quad	0x3fd737d8b9b11636              # double 0.36278360494575013
	.quad	0x3fcfa615cd982fac              # double 0.24725601710121958
	.quad	0x3fe672339db2d3ad              # double 0.70144062805649343
	.quad	0x3fd40b2df94907c2              # double 0.31318234771981335
	.quad	0x3fe2082b94ef61bf              # double 0.5634973439110168
	.quad	0x3fc562f6205e60a4              # double 0.16708256321431236
	.quad	0x3fb7ef0e41867598              # double 0.09349145030724626
	.quad	0x3f66f040e5022700              # double 0.0028001086685137677
	.quad	0x3faee231207dbc90              # double 0.060319457260328169
	.quad	0x3faa309b972b2610              # double 0.051152097895805437
	.quad	0x3fee63b2c4a14319              # double 0.94967020420344561
	.quad	0x3fe1b4169a3dadc7              # double 0.55323343396360591
	.quad	0x3fe526bcac524fcc              # double 0.66097863823460434
	.quad	0x3fe70c213b993f45              # double 0.72023069038730425
	.quad	0x3fcc65f45eaca5e4              # double 0.2218614065434813
	.quad	0x3fc1505b9dca6a70              # double 0.13526482777236337
	.quad	0x3fe320b1ed6e11c9              # double 0.59774109242476314
	.quad	0x3fe2a950ccd1bfee              # double 0.5831684112908968
	.quad	0x3fdce187320ebec0              # double 0.45126514328419987
	.quad	0x3fed10b7545ae1d5              # double 0.90829054332339842
	.quad	0x3feb86f5ee4f18d4              # double 0.86022469086381159
	.quad	0x3fd07af0838721ca              # double 0.25750363201634896
	.quad	0x3feaf56c6b94b259              # double 0.84245892536052758
	.quad	0x3fe48ee4694ffc3e              # double 0.64244289940678079
	.quad	0x3fb8e0abf2c81cd0              # double 0.097178217671273658
	.quad	0x3f9dae5ef9008ce0              # double 0.028985485027203661
	.quad	0x3fd90ec4bac1d896              # double 0.39152639616021057
	.quad	0x3fea6f462435edd1              # double 0.82608325073618449
	.quad	0x3fec58f99e5d12f7              # double 0.88586121492752923
	.quad	0x3fe63dd8cb26dace              # double 0.69504966428834236
	.quad	0x3fe80a059eaca54b              # double 0.75122338286488721
	.quad	0x3fee5f5e156e36aa              # double 0.94914154229782821
	.quad	0x3fd3bc2f40d454dc              # double 0.30836087542531998
	.quad	0x3fea59f04f17f5f1              # double 0.82347884605377264
	.quad	0x3fed80357b4da63c              # double 0.92190050203971152
	.quad	0x3fdbe6b6d41594ce              # double 0.4359566756377945
	.quad	0x3fe253430898dcb4              # double 0.57266380004047912
	.quad	0x3fe73ff0f4ecdc03              # double 0.72655532681426427
	.quad	0x3feaa2962a374d97              # double 0.83234699483220964
	.quad	0x3fe2e4dd78c809b8              # double 0.59043763723484854
	.quad	0x3fa5cdb486d750c0              # double 0.042585030994503281
	.quad	0x3f9e789936e7c620              # double 0.029756921745450637
	.quad	0x3fe394d40d5b7f4b              # double 0.61191752060765603
	.quad	0x3fee58dc9189531e              # double 0.94834736275751985
	.quad	0x3fc290ff52189cc8              # double 0.14504996784783075
	.quad	0x3fe5d2a9cdedc9fc              # double 0.68196573467713462
	.quad	0x3fe5fe39f26a5177              # double 0.68728349062671057
	.quad	0x3fe7c8da66cbffe1              # double 0.74326820447458541
	.quad	0x3fc4c819784a91c4              # double 0.16235655187223419
	.quad	0x3fb663c1ef9b2228              # double 0.08745967960124601
	.quad	0x3fdec37f1c169724              # double 0.48068216078751136
	.quad	0x3fe2697ee4b652b9              # double 0.57537789030410302
	.quad	0x3fe59963b8d38310              # double 0.67497430895682164
	.quad	0x3fe4421cc2e0d1e2              # double 0.63307035505436837
	.quad	0x3fd130afb0f16b6c              # double 0.26859657554239535
	.quad	0x3fcfe6ef5a61b0b8              # double 0.24923507607616613
	.quad	0x3fee2d6c24416502              # double 0.94304473000661937
	.quad	0x3fe3e842ede6d8c6              # double 0.6221022268789731
	.quad	0x3fde7eac61e45b18              # double 0.47648152885214889
	.quad	0x3fe377b7a7b189fb              # double 0.60836394074095723
	.quad	0x3fe2c79ea61e34d8              # double 0.5868676418773715
	.quad	0x3fe2b1837e387024              # double 0.58416914608415427
	.quad	0x3fe7ad0cd0f7b809              # double 0.7398742753409816
	.quad	0x3fea7273eed965c4              # double 0.82647129678951403
	.quad	0x3fd2e82eaa43c912              # double 0.29542128207607832
	.quad	0x3fd4586cc24b4db2              # double 0.31789702390707497
	.quad	0x3fd47050c9a77278              # double 0.31935519879133478
	.quad	0x3fd504eef145588a              # double 0.32842610894784541
	.quad	0x3fe42fe43dee4049              # double 0.63084613891442942
	.quad	0x3fe5cb1c1c152ef5              # double 0.68104367718612357
	.quad	0x3fe91805730ad6d6              # double 0.78418228596884876
	.quad	0x3fcc6d437781ecf0              # double 0.22208445868805127
	.quad	0x3fa788bca0ada610              # double 0.045965094198276657
	.quad	0x3fd2ebb5d9cc725c              # double 0.2956366183223389
	.quad	0x3fc9df574035d5e0              # double 0.20212832103031442
	.quad	0x3fb22f46b0f1c840              # double 0.071033876609164714
	.quad	0x3fe98c851471dbce              # double 0.79840330117337444
	.quad	0x3fed7b6f55d32e28              # double 0.92131773722343713
	.quad	0x3fda6d2a6c5025c6              # double 0.41291294648598542
	.quad	0x3fe8054328269a1e              # double 0.75064237443877224
	.quad	0x3fc6717734526708              # double 0.1753376965978577
	.quad	0x3feefef6e209d3ce              # double 0.96862358234522516
	.quad	0x3feec4a6ebce0b1f              # double 0.96150537543903513
	.quad	0x3fef7ae9a7a0eed1              # double 0.98375399341554203
	.quad	0x3fccd4c979f3ca2c              # double 0.22524374441816641
	.quad	0x3fed4129b5dc4d35              # double 0.91420445937766337
	.quad	0x3fdf7b3b60e4bf46              # double 0.49189648115406148
	.quad	0x3fdbde4553c8d8b4              # double 0.435441333599907
	.quad	0x3fd6ba6a97287bec              # double 0.35512795220887372
	.quad	0x3fdfd0e8e3c63b00              # double 0.49712583774173424
	.quad	0x3fda6146729906ba              # double 0.41218720618426696
	.quad	0x3fd082d59e2924cc              # double 0.25798550076849547
	.quad	0x3f8b09739c2a0300              # double 0.013201621249437689
	.quad	0x3fa6314135720130              # double 0.043344533704841814
	.quad	0x3fc448957c097428              # double 0.15846508556833894
	.quad	0x3fe0935b99de79a6              # double 0.51798801472232436
	.quad	0x3fe24f8277a4005a              # double 0.57220576636610621
	.quad	0x3fe84cbef02cef45              # double 0.75936839017183699
	.quad	0x3fe239697c774342              # double 0.56950830754986037
	.quad	0x3feddec8b20ccec2              # double 0.93344530845066509
	.quad	0x3fc8224499878af4              # double 0.1885457753806673
	.quad	0x3fe488a4e71f41c4              # double 0.64168019429239864
	.quad	0x3fd1a448bf543e3c              # double 0.27565210995178169
	.quad	0x3fd944c68ee390d4              # double 0.39482273057934703
	.quad	0x3fe2fcfbf51f52b3              # double 0.59338186145267569
	.quad	0x3fe26a70a5232cf5              # double 0.57549316647910465
	.quad	0x3fe718f772d30589              # double 0.72179768015500756
	.quad	0x3fed9b520b4dc13c              # double 0.92521002013931008
	.quad	0x3fe48ec747f91b81              # double 0.64242900902978317
	.quad	0x3fe1102cb1b69616              # double 0.53322443685164234
	.quad	0x3fe5debcd3e81e12              # double 0.68343964946774549
	.quad	0x3fc73fda6fc948bc              # double 0.18163614710153364
	.quad	0x3fc4d56a07ed6914              # double 0.16276288401679351
	.quad	0x3fc97624aa35b3c8              # double 0.19891794501327653
	.quad	0x3feba6c17cde2c19              # double 0.86410593403104763
	.quad	0x3fe413e14c1782e1              # double 0.62742676603019387
	.quad	0x3fc013a32fa4eb1c              # double 0.1255992872846371
	.quad	0x3fe9c07aa7cf1ad8              # double 0.80474598670192687
	.quad	0x3fe46484b393fbac              # double 0.63727030824508324
	.quad	0x3fb262d6ce7fd310              # double 0.071820664801475198
	.quad	0x3fe799293f63b89d              # double 0.73744642620819756
	.quad	0x3fc9196b8b099714              # double 0.19608825959147025
	.quad	0x3fed7bfdc1a17b30              # double 0.92138564890396957
	.quad	0x3fd16e43b6fa73da              # double 0.27235501164414944
	.quad	0x3fd061289fb25010              # double 0.25593009562840141
	.quad	0x3fdf12918aa1f962              # double 0.48550833261824355
	.quad	0x3febf2e331598c5c              # double 0.8733993495810739
	.quad	0x3f8060ff30005700              # double 0.0079975067638247133
	.quad	0x3fb6bb8f77edb258              # double 0.088799444941920824
	.quad	0x3fdd3bc299401186              # double 0.45677247014852929
	.quad	0x3fe89f178f87318b              # double 0.76942041428405739
	.quad	0x3fd37f54d9aa766e              # double 0.30464669472153261
	.quad	0x3fc796ea5f6dd00c              # double 0.18429307613007528
	.quad	0x3fc081f6936c72ac              # double 0.12896616171282937
	.quad	0x3fc933ea978e1c60              # double 0.19689686203148238
	.quad	0x3feb8aeac1506ce5              # double 0.86070764309570491
	.quad	0x3fe1295766da0447              # double 0.53629655922134922
	.quad	0x3fef635b64cc40e5              # double 0.98087854086955117
	.quad	0x3fe5bd2f0619543e              # double 0.67934371176909969
	.quad	0x3fc6e33b332e8700              # double 0.17880954741581689
	.quad	0x3fedaf0ae0888bcd              # double 0.92761749128509907
	.quad	0x3fe2a6e77bb33aad              # double 0.58287405166796236
	.quad	0x3fd2e4f344572d6e              # double 0.2952240149868065
	.quad	0x3fef1893d56c1c7f              # double 0.97175018009228597
	.quad	0x3fed44d015d9f0ac              # double 0.91465000408017749
	.quad	0x3fe852884e9fb608              # double 0.76007476192688816
	.quad	0x3fde585dd7617d22              # double 0.47414346726687218
	.quad	0x3fd07862668cacea              # double 0.25734767927742885
	.quad	0x3fed9e1200d26410              # double 0.9255456939746427
	.quad	0x3fe01feee76cbdc1              # double 0.50389809799337837
	.quad	0x3fec9652163f53f5              # double 0.89334968896093747
	.quad	0x3fdf0c7d66192f46              # double 0.48513731928391157
	.quad	0x3fd2e9af85bb3f40              # double 0.29551303920469607
	.quad	0x3fed6a78acae35f6              # double 0.91924699522650033
	.quad	0x3fe60093d510a986              # double 0.68757049192690611
	.quad	0x3fd32378071a384c              # double 0.29903984731288769
	.quad	0x3fec3254d642fe26              # double 0.88114396903978753
	.quad	0x3fed841045b4790c              # double 0.92237104048015927
	.quad	0x3fe83c1b83cca621              # double 0.75733733884880305
	.quad	0x3fd0586d21ae74dc              # double 0.25539711274343602
	.quad	0x3fca3992f3d02b14              # double 0.20488202004374811
	.quad	0x3f924cb24b603960              # double 0.017870698786333405
	.quad	0x3fded751d97a524e              # double 0.48189207304065895
	.quad	0x3fed5b4c67dd19aa              # double 0.91739483152268986
	.quad	0x3fed8154152e9b61              # double 0.92203716408844738
	.quad	0x3fe0687b1af42033              # double 0.51275401367548168
	.quad	0x3fd30d118e4c3726              # double 0.29767264267217042
	.quad	0x3fed4e9ad5184220              # double 0.91584531421728243
	.quad	0x3fb4a573e986bdb0              # double 0.080649609101547836
	.quad	0x3fe81e3a1834fed2              # double 0.75368981101925159
	.quad	0x3fe434b2eb0924ee              # double 0.63143297105230345
	.quad	0x3fdca699c2fc4cf0              # double 0.44766849557454602
	.quad	0x3fefcb4585b058cf              # double 0.99356342421631349
	.quad	0x3fbd6e703423c0a0              # double 0.11496640465679997
	.quad	0x3fe886982a1b126b              # double 0.76642997955111747
	.quad	0x3fc1ab79aebc85f4              # double 0.13804551155139644
	.quad	0x3fba994f02d2a218              # double 0.1039018041507308
	.quad	0x3fd5f6ba5c9551d2              # double 0.34318408051811133
	.quad	0x3fae738c7a669be0              # double 0.05947531694555841
	.quad	0x3fe943db7dd36cc9              # double 0.78953337264410905
	.quad	0x3fe1be77d4a79178              # double 0.5545004990968172
	.quad	0x3fef241ed835714b              # double 0.97315923908494406
	.quad	0x3fec8c4a2a9eb945              # double 0.89212520908567028
	.quad	0x3feab568420fbb2a              # double 0.83464444067599186
	.quad	0x3fdfa2dc3d843e5c              # double 0.49431520469167878
	.quad	0x3fe293c945cbd23c              # double 0.58054031021180874
	.quad	0x3feb8f85ac641f28              # double 0.86126979513298796
	.quad	0x3fd81bded7ac0936              # double 0.37670107900352734
	.quad	0x3fcb5b6660b76844              # double 0.21372680399400867
	.quad	0x3fd4afb0f1d83a2e              # double 0.32322333924904256
	.quad	0x3fe132a85d2e957d              # double 0.53743379783251977
	.quad	0x3fe3ebcb3b015a74              # double 0.62253343128652583
	.quad	0x3fed8d63ba9fdda9              # double 0.92350946855633709
	.quad	0x3fe65b79f07e59dc              # double 0.69866654368780301
	.quad	0x3fd691e180055642              # double 0.35265386106525309
	.quad	0x3feec387fc492e70              # double 0.96136855387289977
	.quad	0x3fee54e7cc9746a6              # double 0.94786443671383291
	.quad	0x3fdf876720beddb0              # double 0.49263933370408619
	.quad	0x3fc646d7498443e8              # double 0.1740368946998665
	.quad	0x3fe97a3c15339676              # double 0.79617122784539052
	.quad	0x3fc8fa9a9483abe0              # double 0.1951478219192202
	.quad	0x3fc49d4235f40a70              # double 0.16104915270269116
	.quad	0x3fdfe8566a075904              # double 0.49855575899472648
	.quad	0x3fc6127e16745840              # double 0.17243934723291154
	.quad	0x3fee223a47855a5d              # double 0.94167818039825202
	.quad	0x3fbb02b3dcaaf280              # double 0.10550998818775703
	.quad	0x3feef786c92972a3              # double 0.96771563805994664
	.quad	0x3fe07dc376c2491f              # double 0.51535199351409122
	.quad	0x3fdc2b228587df1c              # double 0.44013274231063959
	.quad	0x3fe0be983a85da3a              # double 0.52326594763037027
	.quad	0x3fd1880659e84874              # double 0.27392729549422445
	.quad	0x3fe127816ee0e75b              # double 0.53607246070826464
	.quad	0x3fbb3702ebf343d0              # double 0.10630815754417644
	.quad	0x3fe6eb8aa7bca4db              # double 0.71625263939963746
	.quad	0x3fd06ea544acef00              # double 0.25675327021211558
	.quad	0x3fb6fe6bcadfd420              # double 0.089819657354226923
	.quad	0x3fe53db48971037d              # double 0.66378237575564436
	.quad	0x3fd9872846c3f6de              # double 0.39887434874240835
	.quad	0x3fe5094dfa9af2c8              # double 0.65738581606236668
	.quad	0x3fea2edd26c84b9f              # double 0.81822068762481936
	.quad	0x3fbe9cff200dfa60              # double 0.11958307774146126
	.quad	0x3faa7f21044d3430              # double 0.051751167082877081
	.quad	0x3fee2eac313ebaef              # double 0.94319734209224559
	.quad	0x3f95ba559fe885c0              # double 0.021218622097995299
	.quad	0x3fdc05e73961d416              # double 0.43786030391430708
	.quad	0x3fe3aab104e11cd1              # double 0.61458636239049202
	.quad	0x3feb967168f8aba5              # double 0.86211462499828839
	.quad	0x3feda45f778f863c              # double 0.92631505347907916
	.quad	0x3fdd5d246ffcab28              # double 0.45880995689610637
	.quad	0x3fd456103d091334              # double 0.31775289497845738
	.quad	0x3fd5962270795db4              # double 0.33728848441884485
	.quad	0x3fcb1c7ab75046c0              # double 0.21180662108286263
	.quad	0x3f950be45e36a720              # double 0.020553177118620813
	.quad	0x3fb8d80a048d2af0              # double 0.097046495543661626
	.quad	0x3f3b75ee122db800              # double 4.1901647835274058E-4
	.quad	0x3fd2931951538a86              # double 0.29022820417427686
	.quad	0x3fea66944d6250f2              # double 0.825021887913435
	.quad	0x3fdaca33360c0022              # double 0.41859131124511084
	.quad	0x3fead18609ed4d5a              # double 0.83807660998210598
	.quad	0x3fda37249ecbc2cc              # double 0.40961566455284237
	.quad	0x3fd9637fb23eb45e              # double 0.39669792563183204
	.quad	0x3fc0ad87ce303f3c              # double 0.13029573028370034
	.quad	0x3fe8667446cb0fbe              # double 0.76250661684797882
	.quad	0x3fbe163093eee798              # double 0.11752608882571136
	.quad	0x3fec80b2717d54ec              # double 0.89071008840497034
	.quad	0x3f7c548525aea780              # double 0.0069165421545366312
	.quad	0x3fc179640e4a1f30              # double 0.13651705453616492
	.quad	0x3fe729a63d6268e6              # double 0.72383415211814106
	.quad	0x3fe629b51c6d536f              # double 0.69259124328764965
	.quad	0x3fafab1e9e2b8700              # double 0.061852413947930174
	.quad	0x3fe36f98c489bda5              # double 0.60737265001619234
	.quad	0x3fe85bc094bede4f              # double 0.76120022823210742
	.quad	0x3fcd7e03db8159a0              # double 0.23040817468672703
	.quad	0x3f8181f8e80f7a40              # double 0.008548683721469108
	.quad	0x3f9234410c11f4c0              # double 0.017777458535864765
	.quad	0x3fd1097bba395748              # double 0.2662038153260835
	.quad	0x3fc1e7f44bbbbf60              # double 0.13989118287963276
	.quad	0x3fd569e8d233ab6c              # double 0.3345892002823152
	.quad	0x3fbee1caa8e59430              # double 0.12063280700165602
	.quad	0x3fec53fecc5077c4              # double 0.88525333314077458
	.quad	0x3fe7a8e00743d4c9              # double 0.73936463755549042
	.quad	0x3fc4742e8e0b3f6c              # double 0.15979558883418166
	.quad	0x3fd8e7400d67d33e              # double 0.38911439236771972
	.quad	0x3fa25bbd124c32e0              # double 0.035856159671401988
	.quad	0x3fe9bbb500105e12              # double 0.80416345608222373
	.quad	0x3fcc2cd717074728              # double 0.22011841415820155
	.quad	0x3fcf9300c7e26ed4              # double 0.24667367706285026
	.quad	0x3fc2c0689d039694              # double 0.14649684588146228
	.quad	0x3fca8b2fcf0dd570              # double 0.20737264261303379
	.quad	0x3fecc7d15be5e6e7              # double 0.89939182232702997
	.quad	0x3fd7cc99ea33e418              # double 0.37186286803586333
	.quad	0x3fdb94e3a1a9beda              # double 0.43096247470292115
	.quad	0x3fcc69d160f11ce8              # double 0.22197930558670653
	.quad	0x3fd3a926a2288ce4              # double 0.30719915233403428
	.quad	0x3fe7759e333ac0c5              # double 0.73310766225588309
	.quad	0x3fc24ca8f953f340              # double 0.14296447920050959
	.quad	0x3febf9214609851b              # double 0.87416137389314785
	.quad	0x3fc47b683b76c278              # double 0.16001608756552677
	.quad	0x3fd0af0c4a331afa              # double 0.26068408247049002
	.quad	0x3fbe0f52c3fb62c8              # double 0.11742131504741871
	.quad	0x3fcbd1eebdb20e74              # double 0.2173441339729042
	.quad	0x3fee2ecafe18d6db              # double 0.94321202877355448
	.quad	0x3fb128a333873070              # double 0.067026329116915084
	.quad	0x3fe4b4d2b76f27e5              # double 0.64707313372605013
	.quad	0x3fd0fa1adf34ca30              # double 0.26526519582253894
	.quad	0x3fee01084dce3664              # double 0.93762602993383525
	.quad	0x3fea95b2abf05304              # double 0.83077367383756994
	.quad	0x3fecbec0150c536b              # double 0.89828495131460551
	.quad	0x3fd613e07585f028              # double 0.34496318318247399
	.quad	0x3fef8227df5884b5              # double 0.98463815328809423
	.quad	0x3fd8b1266a3eebfe              # double 0.38581238151135711
	.quad	0x3fd3aeda04433c8e              # double 0.30754709640763955
	.quad	0x3fa03866ff570910              # double 0.031680315656119729
	.quad	0x3fcf86496135352c              # double 0.24628560301281632
	.quad	0x3fe1e0db21e82853              # double 0.55869824049410466
	.quad	0x3f95151ad8991620              # double 0.020588321180431746
	.quad	0x3fdcc098fc89bb9c              # double 0.44925522481838143
	.quad	0x3fc8dc71eddbbc60              # double 0.19422744859864149
	.quad	0x3fd99f89371decbc              # double 0.4003623045206941
	.quad	0x3fd9502882fc4030              # double 0.39551747123278158
	.quad	0x3feac50f91294497              # double 0.83655527450368339
	.quad	0x3fab791492476eb0              # double 0.053658144813849673
	.quad	0x3fda1f31b3fdb40e              # double 0.4081539399838342
	.quad	0x3fd2814516ea35be              # double 0.28914000737935541
	.quad	0x3feb998755962f35              # double 0.86249129024643045
	.quad	0x3fe90377d869fcc5              # double 0.7816733576618381
	.quad	0x3fef6f69de0b228a              # double 0.98235028617735165
	.quad	0x3fd575a9739d9ee0              # double 0.33530651369663467
	.quad	0x3fca4214ad37514c              # double 0.20514162500206579
	.quad	0x3fd932967770cb16              # double 0.39371263183709126
	.quad	0x3f8dd104ac0d6bc0              # double 0.014558826923964818
	.quad	0x3fe5963e8c2f0276              # double 0.67459037189116944
	.quad	0x3fe0463a29eab07c              # double 0.50857265650621697
	.quad	0x3fd75a08ccfcb9b4              # double 0.36487026232034769
	.quad	0x3fed2a3febc0b6ea              # double 0.91140743298975946
	.quad	0x3fc7311d2163907c              # double 0.18118633394545103
	.quad	0x3fe6e9e9a6b12c49              # double 0.71605379635855926
	.quad	0x3fb07dddc349a488              # double 0.064420566728261019
	.quad	0x3fd5b604193bb406              # double 0.33923437561207981
	.quad	0x3fd91959ea5a3622              # double 0.39217231641745987
	.quad	0x3fe1097bb20d2477              # double 0.53240761542941939
	.quad	0x3fdcbd9222e3cb6e              # double 0.44907048613747846
	.quad	0x3fe24d4c833abc86              # double 0.57193589812040169
	.quad	0x3febd93d029f72a9              # double 0.87026834976457679
	.quad	0x3fed7f39202ac8f1              # double 0.92178016932146367
	.quad	0x3feb1904ca6a5fd1              # double 0.84680404218942773
	.quad	0x3fe01bbb65617d42              # double 0.50338525582257199
	.quad	0x3fe72b324e841c53              # double 0.72402301154296322
	.quad	0x3fc8137d7d929914              # double 0.1880947936198899
	.quad	0x3fd4515de55362e0              # double 0.31746623416033337
	.quad	0x3fad358db046d350              # double 0.057049205558917238
	.quad	0x3fb052c9499df4d0              # double 0.063763218377022257
	.quad	0x3fcfb60ac87a8dcc              # double 0.2477429846668272
	.quad	0x3fd0fc925d9fcbba              # double 0.26541575568188203
	.quad	0x3fc3a20c0828e264              # double 0.15338278196738309
	.quad	0x3fd113450afa5a40              # double 0.26680112907471099
	.quad	0x3fec9dd20b68bd55              # double 0.89426519611690003
	.quad	0x3fecba1ed219cab0              # double 0.8977197745828871
	.quad	0x3fc0a4f395818c30              # double 0.13003392028903837
	.quad	0x3fed77a4debde573              # double 0.92085498337034577
	.quad	0x3feb4c8c1d16b570              # double 0.8530941551340856
	.quad	0x3fccdd508e3f0560              # double 0.22550398774732638
	.quad	0x3fd3e2495482cf10              # double 0.31068642857575046
	.quad	0x3fa3375e8f5bb220              # double 0.037531809806612637
	.quad	0x3fb91f647359e6a0              # double 0.098135259782703432
	.quad	0x3fe614176ea50c2c              # double 0.68995257959648404
	.quad	0x3fcb4df4eacc84a8              # double 0.21331654991903304
	.quad	0x3fe7e83580628540              # double 0.74709582400479491
	.quad	0x3fde49fe2ba1c77a              # double 0.47326616536076183
	.quad	0x3fcb9cf8bc35111c              # double 0.21572789373215862
	.quad	0x3fa1235eed856e30              # double 0.033472982878006596
	.quad	0x3fc45f791ca2543c              # double 0.15916360757970149
	.quad	0x3fe622496eade426              # double 0.69168540589374028
	.quad	0x3fd8bb0b41ffe05e              # double 0.38641625828996051
	.quad	0x3fe0a224177e3d44              # double 0.51979260052204568
	.quad	0x3fc88b72fb4fa1dc              # double 0.19175565024421715
	.quad	0x3fdbc5c8bf794f5e              # double 0.43394678782100538
	.quad	0x3fc6d6d484e1a86c              # double 0.17843109596589402
	.quad	0x3fe4eb298e05e069              # double 0.65370633829935543
	.quad	0x3fd4d92d5368073c              # double 0.32575543542053587
	.quad	0x3fd068cc041ad880              # double 0.25639629746309112
	.quad	0x3fcefcdd6fd50b3c              # double 0.24209182701641818
	.quad	0x3fc30935f7ebc064              # double 0.14871859174263868
	.quad	0x3fe0e986282b8102              # double 0.52850635381403799
	.quad	0x3fd68956f978bc48              # double 0.35213255274260691
	.quad	0x3fca6a5fd781b1c8              # double 0.20637128851684694
	.quad	0x3fb2c3dd5617d178              # double 0.073301156538780776
	.quad	0x3fe6d95e8eb1b4e5              # double 0.71403434629396811
	.quad	0x3fcd72497f8fb040              # double 0.23005026558473851
	.quad	0x3fe1e857bae7f710              # double 0.55961214547252958
	.quad	0x3fe0975363999cd9              # double 0.51847238019118003
	.quad	0x3fc9956b5a92173c              # double 0.19987241670986033
	.quad	0x3fe861b5d622a088              # double 0.76192752669614183
	.quad	0x3fd38a36fac60266              # double 0.30531095971676903
	.quad	0x3fe7190dc9f2cff7              # double 0.7218083328539241
	.quad	0x3fedb42bf30cfd33              # double 0.92824361296508184
	.quad	0x3fd907430c872adc              # double 0.39106823180615691
	.quad	0x3fa867bb1cffeb30              # double 0.047666404047012612
	.quad	0x3fd9c8d92a3c12b0              # double 0.40288380741575747
	.quad	0x3fd27ea0258fa8d0              # double 0.28897861164172145
	.quad	0x3fda858fab02c842              # double 0.41440192890434357
	.quad	0x3fe1af5494377b94              # double 0.55265263508396112
	.quad	0x3fe96525e8cb57bf              # double 0.79359717815054143
	.quad	0x3fe9a82c2c329947              # double 0.80177887565950179
	.quad	0x3fb5f1f70dc33520              # double 0.085723343715660594
	.quad	0x3fd1532c7acb3018              # double 0.27070152274677772
	.quad	0x3fc725c2b172b25c              # double 0.18083985962347782
	.quad	0x3fc0b3720c3725e8              # double 0.13047624203163299
	.quad	0x3fb80a578b161b40              # double 0.093907805878285622
	.quad	0x3fe4258cc97c589a              # double 0.62958373406106038
	.quad	0x3fe922849a5aedae              # double 0.78546362063882724
	.quad	0x3fd39e81bd994050              # double 0.3065494872616954
	.quad	0x3fcdc7ea817f47d8              # double 0.23266345332245808
	.quad	0x3fe8a97b21a4023a              # double 0.77068859644356924
	.quad	0x3fecf9a0300fd94c              # double 0.90547189128009497
	.quad	0x3fe77248d880b6c2              # double 0.73270075116825972
	.quad	0x3fc94751dacbe604              # double 0.19748900588437845
	.quad	0x3fec960ac556436e              # double 0.89331568281532525
	.quad	0x3fe9eb18710b6fb1              # double 0.80994817809140873
	.quad	0x3fe23f42aff35d75              # double 0.57022222867355643
	.quad	0x3fe82d6f99d4fc68              # double 0.75554637952144521
	.quad	0x3fcb52b80a62e86c              # double 0.21346188075205264
	.quad	0x3fefc7e7c6b98d93              # double 0.9931525117248604
	.quad	0x3fe43c2a8abc6cc1              # double 0.63234450432664613
	.quad	0x3fe7d07446cb478a              # double 0.74419606997456467
	.quad	0x3fe667a379d2d973              # double 0.70015119355848154
	.quad	0x3fe254d0f49c258a              # double 0.57285354400043897
	.quad	0x3fde8059ec2d12c2              # double 0.47658393920964326
	.quad	0x3fd95ff035e6e0d0              # double 0.39648061050276073
	.quad	0x3fb57ead58ca1780              # double 0.083964189698319202
	.quad	0x3fe4524c272c67ab              # double 0.63504607821527281
	.quad	0x3fe5601e723d80c1              # double 0.66798326790378593
	.quad	0x3fd528abf2dd7eb8              # double 0.33060740201288352
	.quad	0x3fe4898493afad2d              # double 0.64178685040443428
	.quad	0x3fe096909252f5d6              # double 0.51837948397558864
	.quad	0x3fe9b8f89c6fef0e              # double 0.80382948450230329
	.quad	0x3fe35f2b646ec973              # double 0.60536737075589853
	.quad	0x3fe9d5af127ec5f2              # double 0.80733445751519484
	.quad	0x3fb6b827a6e3cf80              # double 0.088747480625725572
	.quad	0x3fde9cac7b2ad7c4              # double 0.47831260707914347
	.quad	0x3fdf2ed682634dec              # double 0.48723376019662967
	.quad	0x3fe49fbc54f019d5              # double 0.64449898328239874
	.quad	0x3fbe432fdfd3a008              # double 0.11821269239919741
	.quad	0x3fe80bc4c9d03e6a              # double 0.75143660942735591
	.quad	0x3fe3b526a73baec8              # double 0.61586315787050072
	.quad	0x3fcd1d6b1b558ea4              # double 0.22746027788808931
	.quad	0x3feadbdb9937aa8e              # double 0.83933811116487944
	.quad	0x3fbe8af7e3c8f418              # double 0.11930798827320677
	.quad	0x3fc8544a883b3ea8              # double 0.19007236148762741
	.quad	0x3fc02c2bb8fcf35c              # double 0.12634798557874205
	.quad	0x3fd984a5609d6426              # double 0.39872106967010479
	.quad	0x3fcd05ab8a31e5e4              # double 0.22673553703115978
	.quad	0x3fe9cbe7dd88f26d              # double 0.80614083546204329
	.quad	0x3fda1345f9294104              # double 0.40742635090011015
	.quad	0x3fe6584ade80527f              # double 0.69827788789059742
	.quad	0x3fe4450e18052fa1              # double 0.63342957202393191
	.quad	0x3fd7ca149fddeba2              # double 0.37170901882171326
	.quad	0x3fd5b6e0be2d2b46              # double 0.33928698131483193
	.quad	0x3fd9dfe0b6689502              # double 0.40428941548664465
	.quad	0x3fd3069c4f4ec624              # double 0.29727847809690133
	.quad	0x3fcee5efa467da7c              # double 0.24139209296818709
	.quad	0x3fd87c034a9db808              # double 0.38256914412238574
	.quad	0x3fe7573403d3eb7c              # double 0.72939491984958194
	.quad	0x3fb9c9c89b353238              # double 0.10073522366764898
	.quad	0x3fd31faa6e5f4520              # double 0.29880772379427079
	.quad	0x3fd81652f6bc2454              # double 0.37636255355079595
	.quad	0x3fe75dc7771956f3              # double 0.73019765149612537
	.quad	0x3fecb50602972770              # double 0.89709759241053
	.quad	0x3fe463ce1a787032              # double 0.63718323869716742
	.quad	0x3fe734455269695a              # double 0.72513071151778807
	.quad	0x3fefd927fc9db934              # double 0.99525832499583666
	.quad	0x3f81ad90a92d1380              # double 0.0086318303707544342
	.quad	0x3fe5b85f422c7986              # double 0.67875636028820518
	.quad	0x3fde5938697d69d2              # double 0.47419557859180117
	.quad	0x3f99dc8d05466c80              # double 0.025255397269216662
	.quad	0x3fe285eb73dc85fc              # double 0.57884762410338864
	.quad	0x3fd77504c35544f8              # double 0.36651724887367676
	.quad	0x3fa32e9a022f6520              # double 0.037464916960468608
	.quad	0x3fd008ef7e0c8618              # double 0.25054538068261101
	.quad	0x3fd41d1f0fee661c              # double 0.31427742534433079
	.quad	0x3feda389c69dd245              # double 0.92621315758021494
	.quad	0x3fd39046c66910ae              # double 0.30568093658463169
	.quad	0x3fc1c2488fbe4e28              # double 0.13874156016082506
	.quad	0x3fe985c47de77761              # double 0.79757904616029063
	.quad	0x3fb72e0a6328d708              # double 0.090546273430700208
	.quad	0x3fe28ea97edd707d              # double 0.57991480615920887
	.quad	0x3f7d8173f7a77680              # double 0.007203534124042954
	.quad	0x3fe84984acad0dd5              # double 0.75897439695148228
	.quad	0x3fe278019eadf7d8              # double 0.57714920990087659
	.quad	0x3fe39f41d23255d2              # double 0.61319056562450158
	.quad	0x3fee86f9e521314e              # double 0.95397658111463968
	.quad	0x3fbc6de907b0dc48              # double 0.11105209768071334
	.quad	0x3fdbe32ac09aad58              # double 0.43574017342571869
	.quad	0x3fa8d9501def0a00              # double 0.048532966283818979
	.quad	0x3fdb2c77cc1d4866              # double 0.42458910878224854
	.quad	0x3fe29681fc97012d              # double 0.58087252935368883
	.quad	0x3febfd0ccf315f7e              # double 0.8746398970351803
	.quad	0x3fd563bf99bd46b8              # double 0.33421316159829528
	.quad	0x3fac89c4bd46c110              # double 0.055738590340640326
	.quad	0x3fd472b2e1335456              # double 0.31950065605389477
	.quad	0x3feb14e9f3f9f36a              # double 0.84630296374926428
	.quad	0x3fd8bc5c163060d0              # double 0.38649656454937276
	.quad	0x3fc76afa0212e328              # double 0.18295216656931612
	.quad	0x3fb7a5af4b4d5918              # double 0.092371898540794084
	.quad	0x3fcfa86836493748              # double 0.24732687617000182
	.quad	0x3fe34702bd3eb052              # double 0.60241829835787031
	.quad	0x3fe0257b8e7e589c              # double 0.50457551794785926
	.quad	0x3fdae3b8bf7b0a16              # double 0.42014902781753116
	.quad	0x3feb7e817681471f              # double 0.85919259210115573
	.quad	0x3feabb2fe7c9498a              # double 0.83534999151952261
	.quad	0x3fad3a07785546e0              # double 0.057083352507687257
	.quad	0x3fe7632b0e384707              # double 0.73085549142180717
	.quad	0x3fec57d2322ebc07              # double 0.88572034646301823
	.quad	0x3f99e9f8123f7c40              # double 0.025306583513039493
	.quad	0x3fef44a676b2d6fd              # double 0.97713015731162011
	.quad	0x3fdd575aa9fb612c              # double 0.45845667457389783
	.quad	0x3fe8a86c85090f83              # double 0.77055955871081527
	.quad	0x3fe5805495741c02              # double 0.67191533270022341
	.quad	0x3f92ca77361e47e0              # double 0.018350470235937055
	.quad	0x3fea5239252a8293              # double 0.82253701457018946
	.quad	0x3fd55354ea5051e2              # double 0.33321116335107892
	.quad	0x3fe586f086bddcfd              # double 0.6727221137688556
	.quad	0x3fe4997a589475f1              # double 0.64373509693876774
	.quad	0x3fe76a9f15087941              # double 0.73176530941035633
	.quad	0x3fa456e9c1df5f70              # double 0.039725594440539136
	.quad	0x3fefc2e7b8bbcb32              # double 0.99254213410163161
	.quad	0x3fe6f1bebc222c1f              # double 0.7170098947984832
	.quad	0x3fe32d91e61cfa22              # double 0.59931273406965979
	.quad	0x3fc4c624ede772f8              # double 0.16229688278590237
	.quad	0x3fe6337895620488              # double 0.69378308464378424
	.quad	0x3feb6f11a3d2fdfb              # double 0.85730821606551844
	.quad	0x3fe694058960af6f              # double 0.70556904632165451
	.quad	0x3fed2f37be1f65ee              # double 0.91201388486223123
	.quad	0x3fb32b0a7cf578c8              # double 0.07487550307039037
	.quad	0x3fd6fce836e47bc8              # double 0.3591862236079888
	.quad	0x3fe8291ea4b57cd4              # double 0.75501949472154672
	.quad	0x3fbbada3b018a870              # double 0.10811827706553045
	.quad	0x3fea938a823ba0db              # double 0.83051038204305472
	.quad	0x3fce2dbc183005ac              # double 0.23577071362528323
	.quad	0x3fd315058d6e8e52              # double 0.29815806209282869
	.quad	0x3fe9fdfec164d70e              # double 0.81225526592490538
	.quad	0x3fd43100f73ed940              # double 0.31549095292156792
	.quad	0x3fd9ecc179efd6dc              # double 0.4050754252233284
	.quad	0x3fbd4b439aa940e8              # double 0.11442968870074177
	.quad	0x3fa08f4fb9347070              # double 0.032343379362118507
	.quad	0x3fe39cdb4f8551a4              # double 0.612897544206636
	.quad	0x3fea72f76358ab98              # double 0.8265339794501072
	.quad	0x3fe949279cf2aa54              # double 0.79018002179993596
	.quad	0x3fa6c9aff837adb0              # double 0.044507502603518545
	.quad	0x3fe863fb503bcf67              # double 0.76220479651099715
	.quad	0x3fe8e697d623816c              # double 0.77814857315028751
	.quad	0x3fef6bcf9eb9ea87              # double 0.98191052437989945
	.quad	0x3fedc866640980cd              # double 0.930712886223796
	.quad	0x3fe592948bf1de00              # double 0.67414309819190521
	.quad	0x3fd6308c1473e3f2              # double 0.34671308514913257
	.quad	0x3fe866a129f307b9              # double 0.76252802079419901
	.quad	0x3fe2cb65e50d41f4              # double 0.58732886063267964
	.quad	0x3f9c97e99883fee0              # double 0.027923250135244326
	.quad	0x3fd509bfc7f5cb78              # double 0.32872004058224702
	.quad	0x3fd8be5d76ff2b8c              # double 0.38661896343972368
	.quad	0x3fdf41cfff1a1672              # double 0.48839187538428697
	.quad	0x3fd05e2917e10868              # double 0.25574710208832707
	.quad	0x3fbc08bbe7686218              # double 0.10950827025988763
	.quad	0x3fcdeb40a244cec8              # double 0.23374183581619534
	.quad	0x3feaa3b0109cb17f              # double 0.83248141521976027
	.quad	0x3fd6778cd09128f6              # double 0.35104675643800876
	.quad	0x3fe8f0f4651a368c              # double 0.77941341158448684
	.quad	0x3fde42e0e2588950              # double 0.47283193687521408
	.quad	0x3fed14c901e52f62              # double 0.90878725404898497
	.quad	0x3fe5587b07292ca2              # double 0.66705085180855783
	.quad	0x3fe171db8f0d6018              # double 0.54514863910572142
	.quad	0x3fe4bd1dd9ffb0eb              # double 0.64808552339448278
	.quad	0x3fdf06b0259875e0              # double 0.48478320762100502
	.quad	0x3fdaac9a01ea87f2              # double 0.41678476512072316
	.quad	0x3fe73e238c18d92b              # double 0.72633530962665327
	.quad	0x3fb7042d8a7c8d50              # double 0.089907499609173102
	.quad	0x3fec1e950397dab8              # double 0.87873316480439367
	.quad	0x3fd36021e7b021f2              # double 0.30274245858939175
	.quad	0x3fb419a7a462cda0              # double 0.078516461976326557
	.quad	0x3fe866ff9988439d              # double 0.76257305132650155
	.quad	0x3fd4029293220efa              # double 0.31265701645337141
	.quad	0x3fc36e06a7ce40bc              # double 0.15179522699009407
	.quad	0x3fef587bb9ee6f53              # double 0.97955118479465352
	.quad	0x3fdc3d1d78adea0c              # double 0.44123017106144924
	.quad	0x3fe198483bfd6bdc              # double 0.54983913151533725
	.quad	0x3fe8ff77331230c3              # double 0.78118476843658191
	.quad	0x3fea8962a10bfe66              # double 0.8292706628271389
	.quad	0x3fe1f76ae1a6d813              # double 0.56145233223537827
	.quad	0x3fe4aa1af0364d6d              # double 0.64576479832105138
	.quad	0x3fe309bbcfd26e6b              # double 0.59493818845971924
	.quad	0x3fd205f7af98d522              # double 0.28161422870774022
	.quad	0x3fd7629cb160134a              # double 0.36539380380445563
	.quad	0x3fdd6f947920693e              # double 0.45993530110139946
	.quad	0x3fe00260f01a9330              # double 0.50029036422038153
	.quad	0x3fc65b404bc530dc              # double 0.17465976428719088
	.quad	0x3fef665e93fd04ca              # double 0.98124627021766142
	.quad	0x3fd38b913a51bff8              # double 0.30539351172683338
	.quad	0x3fd6e638942b38c8              # double 0.35780157537091073
	.quad	0x3fec191c43775c15              # double 0.87806523491861077
	.quad	0x3feb11247fb58794              # double 0.84584259932693095
	.quad	0x3fea8cb6b543e825              # double 0.82967696574565208
	.quad	0x3fdde9b2088257e8              # double 0.46738863783809714
	.quad	0x3fac3f65787a1280              # double 0.055171175915380566
	.quad	0x3fcd9ca3ad55afd4              # double 0.23134275401696291
	.quad	0x3fe1cda0be792787              # double 0.55635106279190516
	.quad	0x3fe332d0b3c6edab              # double 0.5999530326147825
	.quad	0x3fb5a64a8a01c4e8              # double 0.084568651860326249
	.quad	0x3fea5dfbaf63c326              # double 0.82397255187797636
	.quad	0x3fe0f2b056c2ca39              # double 0.52962510056960987
	.quad	0x3fe4670f6a167c85              # double 0.63758059234886899
	.quad	0x3fdda511a0de9736              # double 0.4632000037184868
	.quad	0x3fc3b9e7fd7443d8              # double 0.15411090732280175
	.quad	0x3fdf26c1a95a42cc              # double 0.48674050844514904
	.quad	0x3fd25703ada8d2f2              # double 0.28656093558247087
	.quad	0x3fdbd80b3b3780fc              # double 0.43506127150432383
	.quad	0x3fe4c78a21d17a6a              # double 0.64935785870677631
	.quad	0x3fe859e517f28e4b              # double 0.7609734981273929
	.quad	0x3fbde84725741d28              # double 0.11682552971261784
	.quad	0x3f9fc8eae7b02680              # double 0.031039877310865993
	.quad	0x3fef208e88fd4ef6              # double 0.97272421603926662
	.quad	0x3fb4d58d1265bea8              # double 0.081383530608713728
	.quad	0x3fbf03c2148c3820              # double 0.12115109445241545
	.quad	0x3fe9fd2df08aa588              # double 0.81215569477824179
	.quad	0x3fe5cec52f446217              # double 0.68149050933704103
	.quad	0x3fed36aa12f98e0d              # double 0.91292289453525799
	.quad	0x3fe866ab9b6dd488              # double 0.76253300053817075
	.quad	0x3f8f9f79027355c0              # double 0.015440888774189143
	.quad	0x3fe0fd248c0eb2a8              # double 0.53090121607745733
	.quad	0x3fe9f24a000e39b7              # double 0.81082630167821079
	.quad	0x3fc3a441407b61a8              # double 0.15345016144307277
	.quad	0x3fe52d918b51091e              # double 0.66181256494772689
	.quad	0x3fdc992bbee7277c              # double 0.44684880869737476
	.quad	0x3fde011a4fabaf60              # double 0.46881730823837664
	.quad	0x3fdcce16b3e34136              # double 0.45007865492972898
	.quad	0x3fe99db0d3405420              # double 0.8004993558885225
	.quad	0x3fef19f77c401525              # double 0.97191976802483692
	.quad	0x3fe734691c0f1897              # double 0.72514777641551376
	.quad	0x3fe552303512701c              # double 0.66628275266294024
	.quad	0x3fea6ca5a77da503              # double 0.82576258385702805
	.quad	0x3fecaf1efba30bb4              # double 0.89637707851249226
	.quad	0x3fd1bb9464535310              # double 0.27707395360384712
	.quad	0x3feed77623497a28              # double 0.96380144969936498
	.quad	0x3fefd9ed747a95d0              # double 0.99535248517775621
	.quad	0x3fe4e8406c13eb89              # double 0.65335103138873862
	.quad	0x3fd0c3fbca7041a4              # double 0.261961887067651
	.quad	0x3fefe4a5e3eef0f8              # double 0.99666113394007904
	.quad	0x3fda61e0e8e164aa              # double 0.41222403280478181
	.quad	0x3feb6e9539bdcb46              # double 0.85724889066327914
	.quad	0x3fde5926178b222c              # double 0.47419121073883974
	.quad	0x3fc2a04fba27a0e0              # double 0.14551731671895762
	.quad	0x3fd716e14e2a9896              # double 0.36077149041592216
	.quad	0x3fcee1a8bf96f07c              # double 0.24126157145463256
	.quad	0x3fdeabeec4696ea0              # double 0.47924393826336065
	.quad	0x3fea126f935dfbd1              # double 0.81475046904221859
	.quad	0x3fcdd32f48ab797c              # double 0.23300734566050696
	.quad	0x3fd58a4a6f0a7d2c              # double 0.33656559795231789
	.quad	0x3fc72878d6e3f6f0              # double 0.18092260830592677
	.quad	0x3fe522632e9568c2              # double 0.66044768427243405
	.quad	0x3fe36a4a2e61b421              # double 0.60672482546727136
	.quad	0x3fd4ea81998cd8ac              # double 0.32681312556395414
	.quad	0x3fdb5629fabc56de              # double 0.42713403211506129
	.quad	0x3fe90669ced34708              # double 0.78203287501875796
	.quad	0x3fdea712cd060782              # double 0.47894735357123619
	.quad	0x3fefd2f4c107020a              # double 0.99450147343310502
	.quad	0x3fe64bc978565b6b              # double 0.69675134185204735
	.quad	0x3fe8372a57ac4aec              # double 0.75673405765186663
	.quad	0x3febb06370eb89ae              # double 0.86528179220868195
	.quad	0x3fb1a2bc5c3b3cc0              # double 0.068889400975638004
	.quad	0x3f86b5ce7441ef00              # double 0.011088955805682144
	.quad	0x3feba7d8859f36f3              # double 0.86423898790391573
	.quad	0x3fbc694576dc0f28              # double 0.11098131324621063
	.quad	0x3fd36dcf4790ce06              # double 0.30357725132782354
	.quad	0x3fbeab7d5cebb158              # double 0.11980422514506495
	.quad	0x3fcdb737187ae97c              # double 0.2321537847072469
	.quad	0x3fd4f3364d4a7108              # double 0.32734448955467643
	.quad	0x3fd684cc9dacaec4              # double 0.35185542486099686
	.quad	0x3fe2923afd2a8e0e              # double 0.58035039373902619
	.quad	0x3fef7ef8768d8e18              # double 0.98424933581231055
	.quad	0x3fee9d785fac9aba              # double 0.95672243772863585
	.quad	0x3fc8f3261c406b8c              # double 0.19492031459307346
	.quad	0x3fd409cceaba9d56              # double 0.31309817240476912
	.quad	0x3fea9c3eb4d078a5              # double 0.83157286944676356
	.quad	0x3feed4d28881ea89              # double 0.96347929631822737
	.quad	0x3fd652793d74dd54              # double 0.34878378869639914
	.quad	0x3fe47e3f5ff3aa3b              # double 0.64041107884015191
	.quad	0x3fe1513a9ce1e3e6              # double 0.54116564408388679
	.quad	0x3fe4f75d7190e219              # double 0.65519592457627873
	.quad	0x3fd6148ebf3547fe              # double 0.34500473663968012
	.quad	0x3fd6c45327dbe954              # double 0.35573271648867899
	.quad	0x3fe3412958c7dece              # double 0.60170428600300752
	.quad	0x3fe8714840db9570              # double 0.76382839839486216
	.quad	0x3fef01b1513f0f21              # double 0.96895662182257435
	.quad	0x3fd7314b83bedb18              # double 0.36238372674726937
	.quad	0x3feb1fd06d5f7d98              # double 0.84763356553951308
	.quad	0x3fd90829a4c447d0              # double 0.39112320986270976
	.quad	0x3fce4e8dcd511f84              # double 0.23677227521170263
	.quad	0x3fe96afb8a68270c              # double 0.79430939705454894
	.quad	0x3fe893419fe9d7b1              # double 0.76797562821479037
	.quad	0x3fd47234a732444e              # double 0.31947056129235285
	.quad	0x3feec50ea6a75683              # double 0.96155483769935334
	.quad	0x3fe3f1d9ff6fe432              # double 0.62327289476446013
	.quad	0x3fe1f7253cbbee12              # double 0.56141912328843291
	.quad	0x3fe269557f8fe197              # double 0.57535815157375481
	.quad	0x3fe0ec294c609727              # double 0.52882828633730561
	.quad	0x3fe681d6a17ddf7e              # double 0.70334941426607123
	.quad	0x3fec33f25360664d              # double 0.88134113583073204
	.quad	0x3fbac1c461af2fd8              # double 0.10451915154334246
	.quad	0x3fef7eac3614ea61              # double 0.98421297610122959
	.quad	0x3fe652819bf2b4f8              # double 0.69757156809433152
	.quad	0x3fe4b9051c29c25a              # double 0.64758544445619326
	.quad	0x3fe7b8882dcfc270              # double 0.74127587268419681
	.quad	0x3fd32061013c49ca              # double 0.29885125275282276
	.quad	0x3fc85745e0f67dc4              # double 0.19016335949434737
	.quad	0x3fedadd4db0b1d6b              # double 0.92746966154019839
	.quad	0x3fb53764e2c84ab0              # double 0.082876496664804788
	.quad	0x3fd90b8902243b0e              # double 0.39132905205853852
	.quad	0x3fe6e4eee5ac077c              # double 0.71544594629106895
	.quad	0x3fcf5d266af05270              # double 0.24503021451586759
	.quad	0x3fec53524fc05427              # double 0.88517108513281506
	.quad	0x3fb3907d58dabc48              # double 0.07642348689363232
	.quad	0x3fdb5e58df6fc126              # double 0.42763349361395553
	.quad	0x3fb3b2ba71df0fc8              # double 0.07694592742978934
	.quad	0x3fe5cd80f5ea54ff              # double 0.68133590727180138
	.quad	0x3fcbf279abe1e14c              # double 0.21833725826923922
	.quad	0x3fe2075c001cb489              # double 0.56339836141491262
	.quad	0x3fe82073f760deac              # double 0.75396154705136586
	.quad	0x3fd4c5c697a4c644              # double 0.32457127388906692
	.quad	0x3fcf0fc4edfd9338              # double 0.24266873951560242
	.quad	0x3fc9f3574ef2b110              # double 0.20273867945559987
	.quad	0x3fe2939fbf8919b7              # double 0.58052050980841485
	.quad	0x3fe6337243413ff0              # double 0.69378007064551461
	.quad	0x3fd4939cda599bd8              # double 0.3215095646214059
	.quad	0x3fe4f72f0125c62e              # double 0.65517378067142373
	.quad	0x3fee678b3e9e8663              # double 0.95013963918991029
	.quad	0x3fe591e187e09ee5              # double 0.67405773676452141
	.quad	0x3fe7db9b4e8dff5f              # double 0.74555745451651123
	.quad	0x3f90d5e02c56e560              # double 0.016440870958580489
	.quad	0x3f66f8b62d297600              # double 0.0028041418202480184
	.quad	0x3fec8dd52101eeb1              # double 0.89231354185854717
	.quad	0x3fd6282a89c0ade6              # double 0.34620154812247816
	.quad	0x3fe351fe205af152              # double 0.60375887221702329
	.quad	0x3fded1128bc1a1e4              # double 0.48151076934894221
	.quad	0x3fe60410af378a93              # double 0.68799623701154855
	.quad	0x3fe48f4be142af4d              # double 0.64249223705471936
	.quad	0x3fb244c7277d6160              # double 0.071361968174988188
	.quad	0x3fea7e27811d4de5              # double 0.82789969651861084
	.quad	0x3fcc8b390159d2c0              # double 0.22299873891792821
	.quad	0x3fbd74a5e7d4c830              # double 0.11506115827504071
	.quad	0x3fdd63756b54da94              # double 0.45919547540271677
	.quad	0x3fc2cf4c37af36d0              # double 0.14695122450796427
	.quad	0x3f4bd899b8d77400              # double 8.4979539831986362E-4
	.quad	0x3fcebf720e2263fc              # double 0.24021745386269788
	.quad	0x3fe1fb0fdc1845be              # double 0.56189721095341105
	.quad	0x3fe391801f9e0821              # double 0.61151128936058197
	.quad	0x3fe7138e2acf19ae              # double 0.7211371265519142
	.quad	0x3fe3b2a3de1b7460              # double 0.61555665378876867
	.quad	0x3fec50e2c9ef41d4              # double 0.88487376633025371
	.quad	0x3fe70fd9d63b7fd7              # double 0.72068492738980694
	.quad	0x3fc5902012491704              # double 0.16846085446211856
	.quad	0x3fef5d8c86569277              # double 0.98016954648899357
	.quad	0x3fdf376a00dc60d6              # double 0.48775720676486622
	.quad	0x3fe7a1a9c83b5b8b              # double 0.73848427875314948
	.quad	0x3fde668becdd13cc              # double 0.47500894671639737
	.quad	0x3f61fca0ecd6cf00              # double 0.0021956580228222888
	.quad	0x3feed95e56961ea5              # double 0.96403424178511853
	.quad	0x3fbbc852bc4a36a0              # double 0.10852543923302926
	.quad	0x3fead5068c951eb4              # double 0.83850409944076043
	.quad	0x3fbb6d3761599998              # double 0.10713525892933828
	.quad	0x3fa38b9c902f6590              # double 0.03817452678749611
	.quad	0x3fc1fd2e2178386c              # double 0.14053894647844645
	.quad	0x3fd4b76607600e20              # double 0.32369375915752308
	.quad	0x3fefa47697f641f6              # double 0.9888260810858458
	.quad	0x3feafd201b8a3291              # double 0.84339909914850086
	.quad	0x3fb96f302caac940              # double 0.099352847008764122
	.quad	0x3fc1ab4b4e10e4a8              # double 0.13803998290840025
	.quad	0x3fc2a0b8a5720144              # double 0.14552982405076353
	.quad	0x3fe63d4e7ed37da7              # double 0.69498371859292696
	.quad	0x3fe967b15c7fe42b              # double 0.79390781465838722
	.quad	0x3fd366979ee1d96c              # double 0.30313673511354611
	.quad	0x3fd8163bcafe5996              # double 0.37635702918614677
	.quad	0x3fece79b35435ec8              # double 0.9032722511573974
	.quad	0x3feb77408e83b896              # double 0.85830715021963289
	.quad	0x3fdfd7fda20101f2              # double 0.49755802937218541
	.quad	0x3fe0640d168d81eb              # double 0.51221327214085244
	.quad	0x3fd22f8db832d06e              # double 0.28415244091161795
	.quad	0x3fe4c51f1c82a88e              # double 0.64906268661913358
	.quad	0x3fe7ba4d05195468              # double 0.7414918040837053
	.quad	0x3fcb83016e63ece0              # double 0.2149354733481692
	.quad	0x3fb595f9bbd3a720              # double 0.084319694858689065
	.quad	0x3fec18c17bfb624c              # double 0.87802194800594568
	.quad	0x3fe36352ff775fd8              # double 0.60587453742754871
	.quad	0x3fa7bf955d8e6110              # double 0.046383540792875988
	.quad	0x3fa2307c25f93860              # double 0.035526160846175214
	.quad	0x3fd17d1c83e7b06a              # double 0.27326119309760222
	.quad	0x3fe32a835db84b3e              # double 0.5989395933596382
	.quad	0x3fe66ac6f8d104ee              # double 0.70053433033913648
	.quad	0x3fd22d44fc080bea              # double 0.28401302921719085
	.quad	0x3f60688e7c123c00              # double 0.0020029814628013121
	.quad	0x3fe3839927ec6539              # double 0.60981424138586882
	.quad	0x3fc57079cc9d7110              # double 0.16749498835532295
	.quad	0x3fd454a267dc2a74              # double 0.31766567366199827
	.quad	0x3fef633c53e3ea57              # double 0.98086372742484229
	.quad	0x3fda4c93dcf225ea              # double 0.41092392517802401
	.quad	0x3fc50e29d21003e0              # double 0.16449473149262328
	.quad	0x3fe3091ea0fa796e              # double 0.59486323777291061
	.quad	0x3fde2edcc62b58f6              # double 0.47161025383446942
	.quad	0x3fcf0ee78fc585b8              # double 0.24264235038849136
	.quad	0x3f98ddecbfdef480              # double 0.024284075938102223
	.quad	0x3fe48fa0f7bed0f8              # double 0.64253281009453556
	.quad	0x3fdf805cd9d98f20              # double 0.49220963739775137
	.quad	0x3fd2c683e153378e              # double 0.29336640362168331
	.quad	0x3fb1b5e2d5177900              # double 0.069181611084307093
	.quad	0x3fee0ad2d14dbbd1              # double 0.93882122878664565
	.quad	0x3fa85619cd3fd4e0              # double 0.047531896881915392
	.quad	0x3fd8c7bfd2ebef20              # double 0.38719173047842226
	.quad	0x3fd35f7a9c3bb3ea              # double 0.30270257241391951
	.quad	0x3fe0dbabdfbcc051              # double 0.52681535433476701
	.quad	0x3fe5ef885453dafb              # double 0.68548981161333644
	.quad	0x3fd21431bc47d6a4              # double 0.28248256098536673
	.quad	0x3fe05e4e1be3c90f              # double 0.51151185462211568
	.quad	0x3fed88fda082105d              # double 0.92297250127058883
	.quad	0x3fe8a1ca4cde6ab4              # double 0.76974978459778364
	.quad	0x3fede6fa6423ed16              # double 0.93444556769046261
	.quad	0x3fd7d159fecf5ca0              # double 0.37215280422010188
	.quad	0x3fd62ad2dd825600              # double 0.3463637507605597
	.quad	0x3fdd7d7121651330              # double 0.46078136693204197
	.quad	0x3fd5c50450d33566              # double 0.34014995472974474
	.quad	0x3fe6b717756d5a94              # double 0.7098500531672749
	.quad	0x3feeb0d51017f44c              # double 0.95908597129131001
	.quad	0x3fd5ea2ea29b1e6a              # double 0.34241834525571468
	.quad	0x3f907a7f9dfa6ba0              # double 0.016092294709419641
	.quad	0x3fe1e62c17445413              # double 0.55934719604795402
	.quad	0x3fd06a82b3518ee6              # double 0.25650088798123105
	.quad	0x3fda0425c9806904              # double 0.4065031497754179
	.quad	0x3fe00c7800e3d85d              # double 0.50152206586677617
	.quad	0x3fc18336501637f4              # double 0.13681677732932906
	.quad	0x3fe97e4a80e69645              # double 0.7966663854210273
	.quad	0x3fe9f8c04e7a5cb9              # double 0.81161513641099881
	.quad	0x3fe069651fe77e76              # double 0.51286560279181859
	.quad	0x3f86ea6724ad6a80              # double 0.011189275557332623
	.quad	0x3fac40e6589557e0              # double 0.055182646096610943
	.quad	0x3fef93140b0759ae              # double 0.98670389322324126
	.quad	0x3fcdc06c8dd4e470              # double 0.23243481564876189
	.quad	0x3fe41abcf58ccc25              # double 0.62826393088323995
	.quad	0x3fbaf173012c99f8              # double 0.10524672297160709
	.quad	0x3feac5996257f60b              # double 0.83662099082693098
	.quad	0x3fe10778301cca38              # double 0.53216180226292575
	.quad	0x3fe49182e701d646              # double 0.64276261442746185
	.quad	0x3fef1d7296b30a9b              # double 0.97234467919800537
	.quad	0x3febab76432c5db4              # double 0.8646804153421983
	.quad	0x3fe0cc7d954e22fa              # double 0.52496222649742141
	.quad	0x3fd2d3423ff2c1a6              # double 0.29414421315143569
	.quad	0x3fe8bf27f280c05d              # double 0.7733344780335859
	.quad	0x3fe379f23a452ea2              # double 0.60863601094157027
	.quad	0x3fd5e34685622744              # double 0.34199679399226945
	.quad	0x3fcae7718ac51d00              # double 0.21018809581639886
	.quad	0x3fb35b86c19f4b40              # double 0.075615331908278627
	.quad	0x3fe1601789e27a4d              # double 0.54297997408486653
	.quad	0x3fee6ce33751455b              # double 0.95079193882171908
	.quad	0x3fd6bf46b6f44a60              # double 0.35542457453371945
	.quad	0x3fe5ee2a944b4e4d              # double 0.68532303775504888
	.quad	0x3feeed10781e8c0b              # double 0.96643851719670814
	.quad	0x3fd0ff48190b9b04              # double 0.26558115430673035
	.quad	0x3fd3e9b170799656              # double 0.31113849624521117
	.quad	0x3fd190f753de09fe              # double 0.27447302999658507
	.quad	0x3fc15f48a89e3a48              # double 0.13572033150963336
	.quad	0x3fe0fb58981db369              # double 0.53068189344558647
	.quad	0x3fdeb1eab05e8108              # double 0.47960917686033655
	.quad	0x3fe40b803ed10213              # double 0.62640392559848335
	.quad	0x3fe149ab55b7f241              # double 0.54024283162977593
	.quad	0x3fd13f74d562c12c              # double 0.26949807012990123
	.quad	0x3fe584adc4c210af              # double 0.67244614056882834
	.quad	0x3fcb39ef1baa3ffc              # double 0.21270550585586523
	.quad	0x3fc3f896f9e0d024              # double 0.15602385712702571
	.quad	0x3fdb491e5bc71424              # double 0.42633780443822133
	.quad	0x3fe4371a6c8c76ca              # double 0.63172646714129965
	.quad	0x3fec755712a9dd01              # double 0.8893237461587945
	.quad	0x3fef2ea7d7cc2f6b              # double 0.97444526813477005
	.quad	0x3fd7b253a6ecd6c2              # double 0.37025920201572771
	.quad	0x3fed449dddecacba              # double 0.91462605805045105
	.quad	0x3fe024ea5da4180a              # double 0.50450628556495869
	.quad	0x3fccb3a49fe0658c              # double 0.22423227125618117
	.quad	0x3feb3dccdb1539ba              # double 0.85129397191649692
	.quad	0x3fe5ddc5682d7a16              # double 0.68332167002864952
	.quad	0x3fdb51ef721c7d7c              # double 0.42687593597107543
	.quad	0x3faebab8c5d12300              # double 0.060018324039054605
	.quad	0x3fe3a3bdc84ad85c              # double 0.6137379562340004
	.quad	0x3fc998464b9db25c              # double 0.19995955173671376
	.quad	0x3fd562a874d44864              # double 0.33414660843948796
	.quad	0x3fdaa26ce4e902aa              # double 0.4161636577082769
	.quad	0x3fcd156e3828fafc              # double 0.2272165083140506
	.quad	0x3fe1d7c4981a4e9f              # double 0.55758886058397994
	.quad	0x3fd90cf637da7f90              # double 0.39141612486309274
	.quad	0x3fe51827bce2f198              # double 0.65919863597769091
	.quad	0x3fdfbd1c1969ed46              # double 0.49591734391988884
	.quad	0x3fd89128ec9aa1a2              # double 0.38385985475408735
	.quad	0x3fb8ddace07f0c30              # double 0.097132496651327171
	.quad	0x3fe7a9452e0e3501              # double 0.73941287036146275
	.quad	0x3fd531e75cde7524              # double 0.33117088383899529
	.quad	0x3f962c3483d76e80              # double 0.021653004214256644
	.quad	0x3fb11b86afa35e88              # double 0.066826265221033521
	.quad	0x3fc6d93b732543e8              # double 0.17850440142004165
	.quad	0x3fe10896899bc945              # double 0.53229834438960977
	.quad	0x3fd1e1da38dd6200              # double 0.2794099383659443
	.quad	0x3fb8af6c8e074068              # double 0.096426758456119921
	.quad	0x3fe5354898b6606d              # double 0.66275434328691818
	.quad	0x3fa47ade79b082a0              # double 0.03999991641490408
	.quad	0x3fefa33fc40b5d2e              # double 0.98867786683959991
	.quad	0x3fd6c12a488e1b66              # double 0.35553986630877998
	.quad	0x3fece790fa0982d5              # double 0.90326737246877065
	.quad	0x3fe1d7a64c5b8a79              # double 0.55757441438284083
	.quad	0x3fc0672bb8af0d04              # double 0.12814852254641818
	.quad	0x3fea251ddaeb8fb6              # double 0.81703083761066497
	.quad	0x3fda11027c11d6c2              # double 0.40728819004230499
	.quad	0x3fcbfb44fbc6cc60              # double 0.21860563558365964
	.quad	0x3fe50dc29bf95701              # double 0.65792971099537578
	.quad	0x3feb818f47505d94              # double 0.8595653908586649
	.quad	0x3feb259552ecd698              # double 0.84833780475919962
	.quad	0x3fe1d2f8439d7fc5              # double 0.55700314718341615
	.quad	0x3fc763f38e07d890              # double 0.18273777422991033
	.quad	0x3fd659f3d648eeaa              # double 0.34924026418932874
	.quad	0x3fcd7dbcb97f6bf0              # double 0.2303996949911773
	.quad	0x3fe5772e79567d1f              # double 0.67079852770612891
	.quad	0x3fdd0484b3d310d0              # double 0.45340077935203471
	.quad	0x3fe21851d6f1d76c              # double 0.56546871167550483
	.quad	0x3fe62c284dffdf1e              # double 0.69289031252171518
	.quad	0x3fe9b0a036ba5720              # double 0.80281077088395491
	.quad	0x3fe5c12be94eedff              # double 0.67983050888091145
	.quad	0x3fd4ed90505c6f7c              # double 0.32699973914872493
	.quad	0x3fdf7c9db58510d6              # double 0.49198096014539539
	.quad	0x3fd98e7a0a278bc0              # double 0.39932108871124328
	.quad	0x3fc194d77d0112dc              # double 0.13735478976936732
	.quad	0x3fe3def01286ab2c              # double 0.62096408480042475
	.quad	0x3feb6649f71e9557              # double 0.85623644128342391
	.quad	0x3fccffc0a188c5d4              # double 0.22655494582572422
	.quad	0x3fc12d5e36240880              # double 0.1341970219000963
	.quad	0x3fc5c7bb61f1f110              # double 0.17015783579325516
	.quad	0x3fce32091574f1a0              # double 0.23590196178146261
	.quad	0x3fc39ee1cd23c0a8              # double 0.15328619495949636
	.quad	0x3fce138766ae7878              # double 0.2349709750532758
	.quad	0x3fec0cf90474fa10              # double 0.87658358450409146
	.quad	0x3fa9b2733e137740              # double 0.050189591720239068
	.quad	0x3fcaba83a002d3b0              # double 0.20881696045912923
	.quad	0x3fead08fa4e61c48              # double 0.83795911986170157
	.quad	0x3fd478284917836a              # double 0.31983382356525303
	.quad	0x3fdd31252f905302              # double 0.45612458844088632
	.quad	0x3fe9a5296efe9846              # double 0.80141135862937385
	.quad	0x3fe80838dfba1272              # double 0.75100368210458002
	.quad	0x3fdf82a04af1ae3c              # double 0.49234778708225568
	.quad	0x3fe40caa90dea13c              # double 0.62654617590764117
	.quad	0x3fef620f62a195e6              # double 0.98072022689728722
	.quad	0x3fa8a618170df990              # double 0.048142197431832234
	.quad	0x3fc607d68d5d867c              # double 0.17211419966320196
	.quad	0x3fdfb1f5ad941e96              # double 0.49523679686579081
	.quad	0x3fd08ea8cadae308              # double 0.25870723543225482
	.quad	0x3fec694d6f082e52              # double 0.88785430608681737
	.quad	0x3fed599dab18898e              # double 0.91718943993719093
	.quad	0x3fe81127a6a9985d              # double 0.75209410239473196
	.quad	0x3fdca41e2a47af14              # double 0.44751695755870569
	.quad	0x3fc5dbecf25b9898              # double 0.17077409585835279
	.quad	0x3fdd4c038cdebc50              # double 0.45776451832620513
	.quad	0x3fe4af6856fbc645              # double 0.64641205777133648
	.quad	0x3fe4d3cb07ef9b80              # double 0.65085364866250472
	.quad	0x3fd700a716058b14              # double 0.35941483641197292
	.quad	0x3feccdc61d7da5d0              # double 0.90011888275074092
	.quad	0x3fe424e56e0ad869              # double 0.62950393192910525
	.quad	0x3fcf22a327cc41b4              # double 0.24324454730277767
	.quad	0x3fe6dc98ffd056df              # double 0.71442842448842814
	.quad	0x3fe56c95c8d1130f              # double 0.66950501653681893
	.quad	0x3fe55baf83984ba3              # double 0.66744209005479538
	.quad	0x3feab95dedd5e23f              # double 0.83512779667132253
	.quad	0x3fb9e076c991ac98              # double 0.10108129902953278
	.quad	0x3fd5fe317ab56378              # double 0.34363972647911778
	.quad	0x3fe59b5cc53323cd              # double 0.67521513476924044
	.quad	0x3fdc80c3da39f7f0              # double 0.44535919486213427
	.quad	0x3fe2db955ffd5922              # double 0.58930462596871203
	.quad	0x3fcbf84932f4678c              # double 0.21851458538077073
	.quad	0x3fef36825e1bceca              # double 0.97540396099653859
	.quad	0x3fd29f5b3ad8b056              # double 0.29097634073946688
	.quad	0x3fdc4f5965b89e62              # double 0.44234309133250893
	.quad	0x3fcb3401ae1e4a98              # double 0.21252461435195324
	.quad	0x3fe79929719886a2              # double 0.73744651972466024
	.quad	0x3fdd4768fc94301e              # double 0.45748352685837002
	.quad	0x3fceae5b03588ba4              # double 0.23969590819714626
	.quad	0x3fe341ac0a91e993              # double 0.60176660599181486
	.quad	0x3fe8a636a66800da              # double 0.77028973103736154
	.quad	0x3fc5003d365db464              # double 0.16406979708281988
	.quad	0x3fbc5d7074c634e0              # double 0.11080077029164981
	.quad	0x3fcf298e80673a40              # double 0.24345570821465579
	.quad	0x3fd22965988676d6              # double 0.28377666373294852
	.quad	0x3fdaf0b7889e4706              # double 0.42094219533565569
	.quad	0x3fd4170e95ad8af2              # double 0.3139072858522659
	.quad	0x3fe9b3085b586094              # double 0.80310457077850339
	.quad	0x3fec55a17a3ea9e4              # double 0.88545297504361686
	.quad	0x3fdb2710fc663580              # double 0.42425942085613855
	.quad	0x3fdc98029e59bd50              # double 0.4467779680625954
	.quad	0x3fd81865e610c15a              # double 0.37648913829163677
	.quad	0x3fe5a457ed77b0f1              # double 0.67631145840053197
	.quad	0x3fecade8a88e4977              # double 0.89622910424286217
	.quad	0x3fefcc389b5c5242              # double 0.99367933601258351
	.quad	0x3fe9bb6c6142f388              # double 0.80412882801430019
	.quad	0x3fe07cd5082df59d              # double 0.5152383003002573
	.quad	0x3fd3954358547384              # double 0.30598529458966817
	.quad	0x3fe1e3ff1ba50cf4              # double 0.55908160590516198
	.quad	0x3fe2cbfe1a4ce427              # double 0.58740143906391473
	.quad	0x3fc1af4fad6f73f0              # double 0.13816257446788383
	.quad	0x3fbfaf7963e52cc0              # double 0.12377127350662231
	.quad	0x3fd844fce4244dea              # double 0.37921068458055507
	.quad	0x3fe16c064ec2cbe3              # double 0.54443660147660144
	.quad	0x3fe604fc894ef841              # double 0.68810869997083313
	.quad	0x3febec595e01e4bd              # double 0.8726012073595012
	.quad	0x3fe5756e7c0ebb63              # double 0.67058490972509011
	.quad	0x3feb3e7810fa094c              # double 0.85137561145556039
	.quad	0x3fe3f67182bc628a              # double 0.62383342298842703
	.quad	0x3fb53e707ddfc9e0              # double 0.082983999949454823
	.quad	0x3fed58cdeaa0f896              # double 0.91709037614761502
	.quad	0x3fdf4e54c6e8a2bc              # double 0.48915595459633798
	.quad	0x3fe528c252271e66              # double 0.66122547193021997
	.quad	0x3fee46442aec2afd              # double 0.94607742675120188
	.quad	0x3f85d10b6cb48f00              # double 0.010652627234385204
	.quad	0x3fe0e2c4483f229d              # double 0.52768148527782766
	.quad	0x3fd465cd6e4da5d0              # double 0.31871352931792973
	.quad	0x3fe31439d89c60c3              # double 0.59621898943716933
	.quad	0x3fe958a6dda1bc55              # double 0.79207175528962159
	.quad	0x3fe4396282dae9f7              # double 0.63200498159068175
	.quad	0x3fe2f8f1d62323c6              # double 0.59288875411686415
	.quad	0x3fe151032fcf2143              # double 0.5411392148753652
	.quad	0x3fe3c050df8318a1              # double 0.61722606329637497
	.quad	0x3fe36e512cc8a2eb              # double 0.60721644160102295
	.quad	0x3fd24baa9e22af6a              # double 0.28586831515234812
	.quad	0x3fd92edde228214e              # double 0.39348551831837575
	.quad	0x3fece344aa3fee1b              # double 0.90274270297908588
	.quad	0x3fe9c0c830001d8b              # double 0.80478295683944745
	.quad	0x3fb93eccc5fb2798              # double 0.098614500365469815
	.quad	0x3fe22b41db024307              # double 0.56778042578852783
	.quad	0x3feaf4a6cd3b4f74              # double 0.842364693492057
	.quad	0x3fc6b044fd886630              # double 0.17725431804210379
	.quad	0x3fa482a1a5df3740              # double 0.040059138773001823
	.quad	0x3fd5b9c9e8c26258              # double 0.33946464281465216
	.quad	0x3feef0955be91254              # double 0.96686809493309988
	.quad	0x3fd23fd45d584836              # double 0.28514584651668728
	.quad	0x3fee33de30d12d3f              # double 0.94383153471554937
	.quad	0x3fe3bb5bd477fb50              # double 0.61662093637264981
	.quad	0x3fddf53a9f289e66              # double 0.46809258978689738
	.quad	0x3fa617ef89ebf550              # double 0.043151364885469889
	.quad	0x3fc4f2c38217d794              # double 0.16365856029704828
	.quad	0x3fe9337650cd65e9              # double 0.78753200322824768
	.quad	0x3fe80d6245e496f4              # double 0.75163377428972788
	.quad	0x3fe083cb16fd4b20              # double 0.51608805170176097
	.quad	0x3fcf7c06c8b4c320              # double 0.24597248840429931
	.quad	0x3fe209e128750d86              # double 0.56370599653057307
	.quad	0x3fc3e59d98be64f0              # double 0.15544481237592533
	.quad	0x3fe29e30527e80c5              # double 0.5818101512159265
	.quad	0x3fd3a664c0d026de              # double 0.30703085736659641
	.quad	0x3fbf5fa772e5a0b0              # double 0.12255331568815353
	.quad	0x3fea6dd31bd64728              # double 0.8259063285533772
	.quad	0x3fe1ddc2c8dd4b75              # double 0.5583204196103525
	.quad	0x3f93528772973be0              # double 0.018869511002602368
	.quad	0x3fe6f4ebbe27948e              # double 0.71739756717274061
	.quad	0x3fefda4da201bdf1              # double 0.99539834634737023
	.quad	0x3fd86894ffa91e30              # double 0.38138318030221097
	.quad	0x3fdb171930a7a074              # double 0.42328481437153376
	.quad	0x3fa0018676cb5a90              # double 0.03126163673521376
	.quad	0x3fd4ed3e24df104c              # double 0.32698014832226785
	.quad	0x3fee247f80d0d102              # double 0.94195532950701044
	.quad	0x3fdb7510a4623eb6              # double 0.42902008107283096
	.quad	0x3fec56c79ad3c3b5              # double 0.88559322585762479
	.quad	0x3fb8cb28cb489fe8              # double 0.096849965696150897
	.quad	0x3fc686f001833f94              # double 0.17599296640264284
	.quad	0x3fe9f02920d4db1d              # double 0.81056648647686169
	.quad	0x3febbc4a37a2106e              # double 0.86673460832436233
	.quad	0x3fefb44f5f2d3054              # double 0.99076050366557888
	.quad	0x3feff44306298002              # double 0.99856711581742297
	.quad	0x3fe067742e0f6e3c              # double 0.51262864109180084
	.quad	0x3fdb62391132196a              # double 0.42787005118625265
	.quad	0x3fcae97e3c58692c              # double 0.210250644174104
	.quad	0x3fedb805067aaecc              # double 0.92871333375429676
	.quad	0x3fb7d6d4468bca08              # double 0.093121783469349961
	.quad	0x3feb2f76db1f830e              # double 0.84954397962073513
	.quad	0x3fe9744ef0ff42b6              # double 0.79544779844044089
	.quad	0x3fea1edcfd25cc2b              # double 0.81626748507404068
	.quad	0x3fe4b6db51e63e87              # double 0.64732137676215096
	.quad	0x3fe8bc1388556068              # double 0.77295853259694258
	.quad	0x3fea34db111dacf2              # double 0.81895211546853219
	.quad	0x3fe45ce7ba0f3bc8              # double 0.63634096469638113
	.quad	0x3fdb587230cfc442              # double 0.42727331892735176
	.quad	0x3fe38bb0053fbe5f              # double 0.6108017065543655
	.quad	0x3fe55f4f4b7c3528              # double 0.66788449042511377
	.quad	0x3fd1bc5b05c98aa6              # double 0.27712131085551517
	.quad	0x3f9696d632f9e240              # double 0.022059771405539275
	.quad	0x3feafd3c7797d40e              # double 0.8434126220514615
	.quad	0x3fc48649d9451c34              # double 0.16034815892109722
	.quad	0x3fb10b1fa7d0d378              # double 0.066575983496319213
	.quad	0x3fd171edda859a56              # double 0.27257868137386276
	.quad	0x3fcdb6203235b700              # double 0.23212053729678672
	.quad	0x3faab4952129e600              # double 0.05215898542241959
	.quad	0x3fee3cdf1155c676              # double 0.94493058572534383
	.quad	0x3fb92ac1125458a0              # double 0.09830862710473065
	.quad	0x3fe40e7528fd83b3              # double 0.62676485067287613
	.quad	0x3fe7609f8a9f225d              # double 0.73054482531103881
	.quad	0x3fbcafff49b9e088              # double 0.11206050443604643
	.quad	0x3fe22bfe9893f3ec              # double 0.56787042427424472
	.quad	0x3fd14c4945c3fd5a              # double 0.27028114140553827
	.quad	0x3fede9d4bc526c68              # double 0.93479382306703673
	.quad	0x3fc76e24a12e2678              # double 0.18304880018358793
	.quad	0x3fdab5293fa49d5c              # double 0.4173071977151801
	.quad	0x3fa4cf096c13a890              # double 0.040642065470664623
	.quad	0x3fe31679d420b1eb              # double 0.59649363928980159
	.quad	0x3fefc8ac6cabc6bb              # double 0.99324628090672406
	.quad	0x3fc4b0852488a374              # double 0.16163696559786056
	.quad	0x3fe96c6d92be9dfb              # double 0.79448584233335795
	.quad	0x3fee0b214a7b3ad4              # double 0.93885864779607652
	.quad	0x3fdd23c765000fcc              # double 0.45530876982979573
	.quad	0x3fd33aecff8287f6              # double 0.30047154380929386
	.quad	0x3fb6d9ab238d0768              # double 0.089258857898156685
	.quad	0x3fe4ee766c9c6479              # double 0.65410920346324908
	.quad	0x3f914160daa36e40              # double 0.016850961060170144
	.quad	0x3fb89b2b4e597b38              # double 0.096117693546585836
	.quad	0x3fe9565e1f4da30c              # double 0.79179292787475352
	.quad	0x3fe277e62906ebc3              # double 0.57713611615269433
	.quad	0x3fb6d33edc5ed510              # double 0.08916085128915463
	.quad	0x3fbc5f52b8e7cbc0              # double 0.11082951559346466
	.quad	0x3fcc58072f7e40f8              # double 0.22143640345576165
	.quad	0x3fbc16ff2ac929b0              # double 0.1097259025056363
	.quad	0x3fe648ce754036cf              # double 0.69638750935129135
	.quad	0x3fd34ad9300f0608              # double 0.30144338315230401
	.quad	0x3fd2778de14d8700              # double 0.28854701044302544
	.quad	0x3fceacd054fc0794              # double 0.23964885854371387
	.quad	0x3fb8d7f463cdc758              # double 0.097045206419151042
	.quad	0x3fde417b3c02c9f4              # double 0.47274666653097985
	.quad	0x3fe724fd2f70d7be              # double 0.72326525941638642
	.quad	0x3fe7d040daeccc21              # double 0.74417155035769522
	.quad	0x3fd1c6bdcaf50256              # double 0.27775521106744827
	.quad	0x3fd7cccede44084e              # double 0.37187549310340706
	.quad	0x3fd0a6e0f591ece8              # double 0.2601854704041231
	.quad	0x3fd2dee2f663b028              # double 0.29485391675439354
	.quad	0x3fe9e890aa35b64c              # double 0.80963929409126356
	.quad	0x3fd16f1032f94140              # double 0.27240376451392834
	.quad	0x3fc517097d356c10              # double 0.16476553548531614
	.quad	0x3fdf0d043a4e11d0              # double 0.48516946500629121
	.quad	0x3feab48205b0bd90              # double 0.83453465567974838
	.quad	0x3fe7bd32f11ebb22              # double 0.74184558004148848
	.quad	0x3fd7736021bf5a4e              # double 0.36641696258212597
	.quad	0x3fddee950ea683d6              # double 0.46768690520008016
	.quad	0x3fe29c626036ab04              # double 0.5815898780032005
	.quad	0x3fe131c613f541a2              # double 0.53732589624455707
	.quad	0x3fe3661c8279971e              # double 0.60621476634398497
	.quad	0x3fe8377f2f882861              # double 0.75677451404159168
	.quad	0x3fe07671ec73cde5              # double 0.51445861990071917
	.quad	0x3fe70562abfc28d3              # double 0.71940740195102604
	.quad	0x3fd13d787811cf06              # double 0.26937686658423876
	.quad	0x3fd5e67b690a67da              # double 0.34219250924945543
	.quad	0x3fd308a450e9a298              # double 0.29740245725273828
	.quad	0x3fe44b1f60f19dfd              # double 0.63417023596133471
	.quad	0x3fe064e1b3a1b685              # double 0.51231465420069411
	.quad	0x3fd2bf193b7679a8              # double 0.29291373068726978
	.quad	0x3fc70ffbeab0f778              # double 0.18017529449019398
	.quad	0x3f7f14a338892600              # double 0.0075880409063500132
	.quad	0x3fc0b38948f3b61c              # double 0.13047901212796453
	.quad	0x3fe5a35ce612ae05              # double 0.67619175850035218
	.quad	0x3fa974c63b2f16d0              # double 0.0497190425153754
	.quad	0x3fa39716e9f43ed0              # double 0.038262096461151196
	.quad	0x3fed4569a0db4dfe              # double 0.91472321908298659
	.quad	0x3fd31a9793eead4c              # double 0.29849805304066446
	.quad	0x3fe50825615e4647              # double 0.65724438683737041
	.quad	0x3fe6e96dc4102171              # double 0.71599472325855917
	.quad	0x3fe758c7a8b01850              # double 0.72958739230012704
	.quad	0x3fe393365de302bf              # double 0.61172026002176227
	.quad	0x3fee796f22e9e867              # double 0.95232350176889902
	.quad	0x3fbba736c0f13b48              # double 0.10802023134713779
	.quad	0x3feda26571ca9099              # double 0.92607376313073353
	.quad	0x3fec89b5ef19068a              # double 0.89181038569241022
	.quad	0x3fdb14296b047f20              # double 0.42310557795461712
	.quad	0x3fe42ed7a2288357              # double 0.63071805640729905
	.quad	0x3fd2b9ae5edbb954              # double 0.29258307708268672
	.quad	0x3fd831c7d079862e              # double 0.37803836211068897
	.quad	0x3fd886d21e15f0ec              # double 0.38322880685860983
	.quad	0x3fe2387e18708b64              # double 0.56939606450428615
	.quad	0x3fe702d744fb0106              # double 0.71909678910017827
	.quad	0x3fd5465f54bd9368              # double 0.33242018962328368
	.quad	0x3fc92c9cb12f69f4              # double 0.19667395259496312
	.quad	0x3fd9d7824020f9bc              # double 0.40377861273364224
	.size	.L__constant_100x100xf64, 80000

	.type	.L__constant_101xindex,@object  # @__constant_101xindex
	.p2align	6, 0x0
.L__constant_101xindex:
	.quad	0                               # 0x0
	.quad	39                              # 0x27
	.quad	39                              # 0x27
	.quad	82                              # 0x52
	.quad	82                              # 0x52
	.quad	121                             # 0x79
	.quad	121                             # 0x79
	.quad	165                             # 0xa5
	.quad	165                             # 0xa5
	.quad	206                             # 0xce
	.quad	206                             # 0xce
	.quad	248                             # 0xf8
	.quad	248                             # 0xf8
	.quad	292                             # 0x124
	.quad	292                             # 0x124
	.quad	330                             # 0x14a
	.quad	330                             # 0x14a
	.quad	372                             # 0x174
	.quad	372                             # 0x174
	.quad	414                             # 0x19e
	.quad	414                             # 0x19e
	.quad	456                             # 0x1c8
	.quad	456                             # 0x1c8
	.quad	492                             # 0x1ec
	.quad	492                             # 0x1ec
	.quad	528                             # 0x210
	.quad	528                             # 0x210
	.quad	569                             # 0x239
	.quad	569                             # 0x239
	.quad	608                             # 0x260
	.quad	608                             # 0x260
	.quad	647                             # 0x287
	.quad	647                             # 0x287
	.quad	688                             # 0x2b0
	.quad	688                             # 0x2b0
	.quad	726                             # 0x2d6
	.quad	726                             # 0x2d6
	.quad	770                             # 0x302
	.quad	770                             # 0x302
	.quad	810                             # 0x32a
	.quad	810                             # 0x32a
	.quad	848                             # 0x350
	.quad	848                             # 0x350
	.quad	885                             # 0x375
	.quad	885                             # 0x375
	.quad	911                             # 0x38f
	.quad	911                             # 0x38f
	.quad	947                             # 0x3b3
	.quad	947                             # 0x3b3
	.quad	986                             # 0x3da
	.quad	986                             # 0x3da
	.quad	1027                            # 0x403
	.quad	1027                            # 0x403
	.quad	1068                            # 0x42c
	.quad	1068                            # 0x42c
	.quad	1109                            # 0x455
	.quad	1109                            # 0x455
	.quad	1149                            # 0x47d
	.quad	1149                            # 0x47d
	.quad	1192                            # 0x4a8
	.quad	1192                            # 0x4a8
	.quad	1237                            # 0x4d5
	.quad	1237                            # 0x4d5
	.quad	1274                            # 0x4fa
	.quad	1274                            # 0x4fa
	.quad	1316                            # 0x524
	.quad	1316                            # 0x524
	.quad	1350                            # 0x546
	.quad	1350                            # 0x546
	.quad	1394                            # 0x572
	.quad	1394                            # 0x572
	.quad	1437                            # 0x59d
	.quad	1437                            # 0x59d
	.quad	1476                            # 0x5c4
	.quad	1476                            # 0x5c4
	.quad	1518                            # 0x5ee
	.quad	1518                            # 0x5ee
	.quad	1558                            # 0x616
	.quad	1558                            # 0x616
	.quad	1601                            # 0x641
	.quad	1601                            # 0x641
	.quad	1642                            # 0x66a
	.quad	1642                            # 0x66a
	.quad	1678                            # 0x68e
	.quad	1678                            # 0x68e
	.quad	1722                            # 0x6ba
	.quad	1722                            # 0x6ba
	.quad	1761                            # 0x6e1
	.quad	1761                            # 0x6e1
	.quad	1800                            # 0x708
	.quad	1800                            # 0x708
	.quad	1839                            # 0x72f
	.quad	1839                            # 0x72f
	.quad	1881                            # 0x759
	.quad	1881                            # 0x759
	.quad	1921                            # 0x781
	.quad	1921                            # 0x781
	.quad	1961                            # 0x7a9
	.quad	1961                            # 0x7a9
	.quad	1999                            # 0x7cf
	.quad	1999                            # 0x7cf
	.size	.L__constant_101xindex, 808

	.type	.L__constant_1999xindex,@object # @__constant_1999xindex
	.p2align	6, 0x0
.L__constant_1999xindex:
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.size	.L__constant_1999xindex, 15992

	.type	.L__constant_1999xf64,@object   # @__constant_1999xf64
	.p2align	6, 0x0
.L__constant_1999xf64:
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.size	.L__constant_1999xf64, 15992

	.section	".note.GNU-stack","",@progbits
