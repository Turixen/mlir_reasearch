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
	.quad	19                              # 0x13
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
	lui	a6, %hi(.L__constant_19xindex)
	addi	a6, a6, %lo(.L__constant_19xindex)
	lui	a7, %hi(.L__constant_19xf64)
	addi	a7, a7, %lo(.L__constant_19xf64)
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
	addi	a1, a1, 768
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
	.quad	0x4013a707c6373bc8              # double 4.9131155940257898
	.quad	0x4010373720ddb0f9              # double 4.0539212355908996
	.quad	0x3fe381b986f722a2              # double 0.60958553657936343
	.quad	0x3ff8299519247751              # double 1.5101519567610533
	.quad	0x3ffa8e783e25208d              # double 1.6597826411762384
	.quad	0x40107144f34ec048              # double 4.1106145874801499
	.quad	0x40169501b239e4f0              # double 5.6455142829738492
	.quad	0x402344d2b608ebd0              # double 9.6344200979127947
	.quad	0x3fd976b7b7a25c70              # double 0.39787095006017292
	.quad	0x402369d2e2698b8e              # double 9.706687045463493
	.quad	0x400892c3c3f087b6              # double 3.0716624553469627
	.quad	0x3ff7b37fd0cf1483              # double 1.4813230663869781
	.quad	0x4017bf58157e64f1              # double 5.9368594511408768
	.quad	0x40166119542e6447              # double 5.5948231843295337
	.quad	0x4010599a89538bee              # double 4.087503572201042
	.quad	0x3fda73d37a257ef8              # double 0.41331946304670408
	.quad	0x4020b902616773df              # double 8.3613462866578043
	.quad	0x40073d28024c0faa              # double 2.9048614673101456
	.quad	0x401c55f8e2f6b6e8              # double 7.0839572394449775
	.quad	0x401fef1bc77459a3              # double 7.9835044064297191
	.quad	0x400930a529ef34d4              # double 3.1487525249600399
	.quad	0x3f959060015402c0              # double 0.021058559495034102
	.quad	0x4020226a06a3b028              # double 8.0672151636900509
	.quad	0x400a75755938e97f              # double 3.3073527307980721
	.quad	0x4012213f7fadfead              # double 4.5324687910030379
	.quad	0x4021bdf8772e7337              # double 8.8710362667276126
	.quad	0x40224953978484c1              # double 9.1432158803239663
	.quad	0x401f7673aeb10e70              # double 7.8656756682936333
	.quad	0x4021b4ec2e80e17f              # double 8.8533644230199098
	.quad	0x40229a7e6ca3c715              # double 9.3017457914279849
	.quad	0x3fbb701d4384a3a0              # double 0.10717947862998622
	.quad	0x4014a68fe958fb5c              # double 5.1626583538589692
	.quad	0x4023a36656a907c4              # double 9.8191401559196336
	.quad	0x40220e1c6f1ba6b0              # double 9.0275606843236744
	.quad	0x3fff85efb9b4428d              # double 1.970199323088454
	.quad	0x3feaa9bd3808497c              # double 0.83322010940382496
	.quad	0x401d428d4bc99fb9              # double 7.3149921266375992
	.quad	0x3fe6a98ba9a1f4a6              # double 0.70819647914290296
	.quad	0x400090b9130e68a3              # double 2.0706655014774511
	.quad	0x40084ee7474c5750              # double 3.0385270662472195
	.quad	0x40108665365dfa32              # double 4.1312454695567329
	.quad	0x4010678e2fa4e8e2              # double 4.1011283344653027
	.quad	0x4022657cd33b27a2              # double 9.1982179650984257
	.quad	0x3fe65fc01f50ab22              # double 0.69918829075081512
	.quad	0x4016abcab663b441              # double 5.667765474162537
	.quad	0x400c8cafaec7225c              # double 3.5686944632073345
	.quad	0x400b3766111e5e0c              # double 3.4020501458542238
	.quad	0x4022041b5f345f71              # double 9.008021330969969
	.quad	0x4005eba6fa38bf6f              # double 2.7400645779197741
	.quad	0x401418317771b50e              # double 5.0236262000228304
	.quad	0x3fc30855460068b8              # double 0.148691806011646
	.quad	0x401f10d150008c84              # double 7.7664234638533607
	.quad	0x40195aa349f78932              # double 6.3385135228475509
	.quad	0x400e7dcdafdff3ac              # double 3.8114274730891875
	.quad	0x400924704db75b65              # double 3.1427923270779723
	.quad	0x401b1b6fbf114b5a              # double 6.7767934660249356
	.quad	0x4002f4ad0e2a1edb              # double 2.3694707018474737
	.quad	0x400b4958d260e147              # double 3.4108139453711916
	.quad	0x40239098c7a140cb              # double 9.7824156174032363
	.quad	0x40010baf1b89a2b2              # double 2.1307050849321394
	.quad	0x4006d1935ea84beb              # double 2.8523318667516739
	.quad	0x401d5abb2970a3b1              # double 7.338604590892758
	.quad	0x401a05e0d5a08ec9              # double 6.5057404879805256
	.quad	0x4013acfc02ba2110              # double 4.9189300943474024
	.quad	0x4017c3884337196d              # double 5.9409494879131275
	.quad	0x4011135346add06a              # double 4.2688723605716437
	.quad	0x4007d1f6775903fe              # double 2.9775208782234577
	.quad	0x3fdd394a7c5af6b4              # double 0.45662176269602672
	.quad	0x400b8eb1776b8bba              # double 3.4446744279570938
	.quad	0x3ff893db91c0efc2              # double 1.5360980695249826
	.quad	0x40196cf85c943d2c              # double 6.3564161744573475
	.quad	0x3ff942c6c52205cd              # double 1.5788028431419321
	.quad	0x401643cfecd6baee              # double 5.5662228590069684
	.quad	0x401cd920160ef186              # double 7.2120364615078696
	.quad	0x4008016d1fb4283a              # double 3.0006964184622378
	.quad	0x4012593a723bfdcd              # double 4.587137017165742
	.quad	0x401f523a1ae24024              # double 7.8302997780411125
	.quad	0x401380af3f669ac2              # double 4.8756685167670089
	.quad	0x3ff2bddecb328596              # double 1.171355050792362
	.quad	0x4017618e71d41021              # double 5.8452699456866251
	.quad	0x4021c0f239676339              # double 8.876848024244838
	.quad	0x3fff8eec762ba104              # double 1.9723934761078121
	.quad	0x401f4f01b6a52c02              # double 7.8271549738228732
	.quad	0x401ac4deaa6297b8              # double 6.6922556517292193
	.quad	0x4018ce4300600e63              # double 6.2014274653080035
	.quad	0x3fff37e54d068608              # double 1.9511464127357403
	.quad	0x4023f158cc2ec9f2              # double 9.971380596839456
	.quad	0x4003802cc33ac098              # double 2.4375853779129777
	.quad	0x4007174d2ce50cfc              # double 2.8863776690865262
	.quad	0x3ffbfd75806528a9              # double 1.7493796363292324
	.quad	0x4013a126a7c6725a              # double 4.9073740210411305
	.quad	0x4010d53f795827a4              # double 4.2082499465995262
	.quad	0x401e238cc2c7163a              # double 7.5347166475308374
	.quad	0x4017cea0b17c4cb8              # double 5.9517848713032251
	.quad	0x4005073d435901d8              # double 2.6285348187959521
	.quad	0x400463a060c1ee81              # double 2.5486457404311413
	.quad	0x401347201e076020              # double 4.8194584552766457
	.quad	0x40216f3c0c25c19a              # double 8.7172550006951504
	.quad	0x4014b2b1e822f340              # double 5.1745067855197817
	.quad	0x401286e0acc4ac26              # double 4.6317164416350689
	.size	.L__constant_10x10xf64, 800

	.type	.L__constant_19xindex,@object   # @__constant_19xindex
	.p2align	6, 0x0
.L__constant_19xindex:
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	5                               # 0x5
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	9                               # 0x9
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.size	.L__constant_19xindex, 152

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	8                               # 0x8
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.size	.L__constant_11xindex, 88

	.type	.L__constant_19xf64,@object     # @__constant_19xf64
	.p2align	6, 0x0
.L__constant_19xf64:
	.quad	0x4009a8c0ce91c8eb              # double 3.2073990000000001
	.quad	0x401bb168b5cbff47              # double 6.9232509999999996
	.quad	0x4020e0af81626b2f              # double 8.4388389999999998
	.quad	0x40219039ef0f16f4              # double 8.7816919999999996
	.quad	0x4002de1c9b413986              # double 2.3584529999999999
	.quad	0x4010c4e2f37fbefd              # double 4.192272
	.quad	0x401b156798958d9b              # double 6.7709029999999997
	.quad	0x401924ff0025bfad              # double 6.2861289999999999
	.quad	0x401f59118c197e56              # double 7.8369809999999998
	.quad	0x401137d49d7ba66a              # double 4.3045220000000004
	.quad	0x3fd90b8cfbfc6541              # double 0.39133000000000001
	.quad	0x40096116659d12cb              # double 3.1724060000000001
	.quad	0x3fee4a1272c94b38              # double 0.94654199999999999
	.quad	0x40043c4b90214ad3              # double 2.5294409999999998
	.quad	0x4019c31487768167              # double 6.4405080000000003
	.quad	0x4019b219a847b246              # double 6.4239259999999998
	.quad	0x4014c42dcf4623d1              # double 5.1915810000000002
	.quad	0x40052d38cda6e760              # double 2.647081
	.quad	0x40074dcb1465e892              # double 2.9129849999999999
	.size	.L__constant_19xf64, 152

	.section	".note.GNU-stack","",@progbits
