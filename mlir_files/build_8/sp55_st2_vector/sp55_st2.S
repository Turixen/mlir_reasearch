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
	.quad	0x40231c3ff4887471              # double 9.5551754395075665
	.quad	0x401fceb2554a71c7              # double 7.9518521620452196
	.quad	0x400fa02677f78769              # double 3.9531983730711784
	.quad	0x3ffdf970244e501a              # double 1.8733979623984909
	.quad	0x401398e6407d761e              # double 4.8993158413482245
	.quad	0x4020205751d6c1a8              # double 8.0631661963132757
	.quad	0x3ff78065418dea6c              # double 1.4688465653149718
	.quad	0x4021fe4820fcefa0              # double 8.9966440495261963
	.quad	0x4016629343b353db              # double 5.5962648943140847
	.quad	0x401ceebbc21a7041              # double 7.2331381157528662
	.quad	0x4020be51ccb018b5              # double 8.3717178311311304
	.quad	0x3fe7c5284de61098              # double 0.74281707014644649
	.quad	0x4015fac6309e5098              # double 5.4948966595294664
	.quad	0x401015124a7ece77              # double 4.0205775871178195
	.quad	0x400007227c268a17              # double 2.0034837435971542
	.quad	0x3fc283f2ad4a53b8              # double 0.14465173207704907
	.quad	0x4010e25ec1e88979              # double 4.2210645960025142
	.quad	0x4023410b378fae7a              # double 9.6270387041943088
	.quad	0x3fe4045986225572              # double 0.62553096960134114
	.quad	0x40161950120e8734              # double 5.5247195073478004
	.quad	0x400c81681421373a              # double 3.5631867954861294
	.quad	0x4021edd619c206bb              # double 8.9645240830753803
	.quad	0x401f9320868571d7              # double 7.893678762335603
	.quad	0x401424ce1a39da42              # double 5.0359424684343725
	.quad	0x40100eca8ba8f752              # double 4.0144445249441834
	.quad	0x3ff231fbd6a8189c              # double 1.1372030625366625
	.quad	0x401793a2864ac103              # double 5.8941746695638839
	.quad	0x4018f9103def7024              # double 6.2432260205642116
	.quad	0x400e71ec2566ee2e              # double 3.8056261941944944
	.quad	0x4010706461137fb9              # double 4.1097579162741846
	.quad	0x4020976efeb9a245              # double 8.2957686997989502
	.quad	0x3ffe5a6abcacb887              # double 1.8970744485955338
	.quad	0x4014487489c58a05              # double 5.0707570578401873
	.quad	0x4008feec9dc59ada              # double 3.1244747472695567
	.quad	0x4013c6427e49fd97              # double 4.9436130268726606
	.quad	0x4021426db12ce711              # double 8.6297431342423199
	.quad	0x401c73b5061e0937              # double 7.1129952388603703
	.quad	0x4012c23bbd88cda6              # double 4.6896810164211384
	.quad	0x401361010edbaf5f              # double 4.8447305986008748
	.quad	0x4001948e4869fb7d              # double 2.1975370080321555
	.quad	0x400b5ef4613eba94              # double 3.4213645550983731
	.quad	0x400cdb818a78679c              # double 3.6071806734079939
	.quad	0x40068bec03dd092d              # double 2.8183212568120752
	.quad	0x401b1cdedbda9632              # double 6.7781938888706907
	.quad	0x3f97f1fcb5fff1c0              # double 0.023384045227418104
	.quad	0x3ff30b69446d7600              # double 1.1902859375908292
	.quad	0x400db134af8a0360              # double 3.711526271247223
	.quad	0x400c05455b1ff425              # double 3.5025736922384731
	.quad	0x4019cc79a4d469cc              # double 6.449682784523656
	.quad	0x402082937dcbe764              # double 8.2550315200239268
	.quad	0x40208d44d19b6a2a              # double 8.2759156706061567
	.quad	0x4012338126830e72              # double 4.5502973573198791
	.quad	0x4001148c88cfb926              # double 2.1350336731330968
	.quad	0x3f4efa01f1229000              # double 9.453305704210102E-4
	.quad	0x4018fb45d6f07c5c              # double 6.2453836044579383
	.quad	0x401474862b296bd5              # double 5.1137930625945573
	.quad	0x401db056a76f481e              # double 7.422205558936211
	.quad	0x4020ee3744093e4f              # double 8.4652653943332137
	.quad	0x40216fec9578fdf1              # double 8.7186018667407286
	.quad	0x4020f83ebe3a758e              # double 8.4848536917077375
	.quad	0x4023e3fa5c9db707              # double 9.9452694838069088
	.quad	0x4005d560e37df5d0              # double 2.72918870666647
	.quad	0x4015ccbb5dca0cf5              # double 5.4499334959575565
	.quad	0x4018439a3b214f5f              # double 6.0660180319863164
	.quad	0x3fedd492acc03bd2              # double 0.93219884624874738
	.quad	0x401eee6c80703dfe              # double 7.7328357761866737
	.quad	0x4008847063d15862              # double 3.0646674917471026
	.quad	0x3ffaa565c5114965              # double 1.6653802583647004
	.quad	0x401e19fd713927c7              # double 7.525380868066299
	.quad	0x401b44b9691f621e              # double 6.8171135354428127
	.quad	0x40209b9368ccdeeb              # double 8.3038590192877191
	.quad	0x4019457b0870e4ab              # double 6.3178521460442125
	.quad	0x4010253c0e669872              # double 4.0363619089240377
	.quad	0x4014ae5f86f675d2              # double 5.1702862823417082
	.quad	0x401aefec9b5381b1              # double 6.7343010205953968
	.quad	0x401bd03743bbb479              # double 6.9533358176532767
	.quad	0x4022780314b44fca              # double 9.2343985052210833
	.quad	0x400126866e184b00              # double 2.143811092487681
	.quad	0x40237dcb0af7aa28              # double 9.7456897189450302
	.quad	0x3feabe1e81c0b0ac              # double 0.83570790617297552
	.quad	0x3fb4b0af64398860              # double 0.080821001023225758
	.quad	0x40110a939303b4c9              # double 4.2603285761844711
	.quad	0x4019aace00f66693              # double 6.416801466979126
	.quad	0x4023dd4fb62b85dc              # double 9.9322487762573743
	.quad	0x401b6d837623e645              # double 6.8569467982684431
	.quad	0x400724a6648a0fe3              # double 2.8928954939492413
	.quad	0x402146ce9ff6212a              # double 8.6382951724959476
	.quad	0x40070c04f2fb8fc8              # double 2.8808688147564432
	.quad	0x4016011d96ceba11              # double 5.501089435927967
	.quad	0x3ff1b32cd9671a86              # double 1.1062439434332716
	.quad	0x4013211e3f84eb7e              # double 4.7823419499280799
	.quad	0x3fdde273bc9693dc              # double 0.46694653908553874
	.quad	0x401580b76573f74a              # double 5.375699601366998
	.quad	0x401a34654ecd7890              # double 6.5511677086743845
	.quad	0x4021da91fc777754              # double 8.9268950362999603
	.quad	0x4004b338f9c533c4              # double 2.5875110162073458
	.quad	0x4013c6921d872c76              # double 4.9439167608025993
	.quad	0x401de08c1fb116b0              # double 7.469284529861099
	.quad	0x402023e378044edb              # double 8.0700948243388009
	.quad	0x3ffd9e295e3eab64              # double 1.8511136704862219
	.size	.L__constant_10x10xf64, 800

	.type	.L__constant_45xindex,@object   # @__constant_45xindex
	.p2align	6, 0x0
.L__constant_45xindex:
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	4                               # 0x4
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	7                               # 0x7
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.size	.L__constant_45xindex, 360

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	13                              # 0xd
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.size	.L__constant_11xindex, 88

	.type	.L__constant_45xf64,@object     # @__constant_45xf64
	.p2align	6, 0x0
.L__constant_45xf64:
	.quad	0x3fcd504c48adeebb              # double 0.22901299999999999
	.quad	0x400459dba908a266              # double 2.543876
	.quad	0x40221f2d5e071c54              # double 9.060893
	.quad	0x4003fa26a22b3893              # double 2.497144
	.quad	0x401765dd8f92af9b              # double 5.8494780000000004
	.quad	0x400a7feda6612839              # double 3.312465
	.quad	0x3fb97a355043e532              # double 0.099520999999999998
	.quad	0x3fedffa3b9ae0c17              # double 0.93745599999999996
	.quad	0x401336861e92923e              # double 4.8032459999999997
	.quad	0x401a50d349be8ff3              # double 6.5789309999999999
	.quad	0x400ea18d6909aed5              # double 3.8288829999999998
	.quad	0x3fee6cacd184c272              # double 0.950766
	.quad	0x400de310dbf0563f              # double 3.7358720000000001
	.quad	0x3fed2af9a8cdea03              # double 0.91149599999999997
	.quad	0x3fb22c343b70ef56              # double 0.070986999999999995
	.quad	0x3fe300a393ee5eee              # double 0.59382800000000002
	.quad	0x3fd42a9d627bf61b              # double 0.31510100000000002
	.quad	0x400c74b9cb6848bf              # double 3.5569950000000001
	.quad	0x3fd176b3bb83cf2d              # double 0.27287
	.quad	0x401f41733226c3b9              # double 7.8139159999999998
	.quad	0x40194752da98676a              # double 6.3196519999999996
	.quad	0x4021bc5bd0e12e84              # double 8.8678880000000006
	.quad	0x4023709a02752546              # double 9.7199249999999999
	.quad	0x40101d8f0c77dd87              # double 4.0288659999999998
	.quad	0x401b0272c94b380d              # double 6.7523910000000003
	.quad	0x40223e931876188b              # double 9.1222159999999999
	.quad	0x4015458bc59b8024              # double 5.3179160000000003
	.quad	0x4020485f6ba0620b              # double 8.1413530000000005
	.quad	0x4004de37585be1a8              # double 2.6085039999999999
	.quad	0x402349528f190d17              # double 9.6432079999999995
	.quad	0x4016990d5a5b9629              # double 5.6494650000000002
	.quad	0x40108aa3f034b0e2              # double 4.1353910000000003
	.quad	0x401b02ad3e920c07              # double 6.7526140000000003
	.quad	0x4008515b573eab36              # double 3.0397249999999998
	.quad	0x400e6812be48a58b              # double 3.8008169999999999
	.quad	0x4010051c193b3a69              # double 4.0049900000000003
	.quad	0x401d730caa326e11              # double 7.3623529999999997
	.quad	0x3fee33c3e74afd54              # double 0.94381899999999996
	.quad	0x4019f20ab7132724              # double 6.4863689999999998
	.quad	0x3ffcfa16e7a311e8              # double 1.8110569999999999
	.quad	0x3ff2855fbb517a46              # double 1.157562
	.quad	0x40148c6b05319829              # double 5.1371270000000004
	.quad	0x400b9171e29b6b2b              # double 3.446018
	.quad	0x401084406c00da1b              # double 4.1291520000000004
	.quad	0x4021f3d7d3910c2c              # double 8.9762559999999993
	.size	.L__constant_45xf64, 360

	.section	".note.GNU-stack","",@progbits
