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
	.quad	35                              # 0x23
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
	lui	a6, %hi(.L__constant_35xindex)
	addi	a6, a6, %lo(.L__constant_35xindex)
	lui	a7, %hi(.L__constant_35xf64)
	addi	a7, a7, %lo(.L__constant_35xf64)
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
	.quad	0x4016830657d3af7b              # double 5.6279538844063337
	.quad	0x40130dcbf49d73fd              # double 4.7634733410932286
	.quad	0x3feacd465f513dca              # double 0.83755797020597211
	.quad	0x40208170b1f665b5              # double 8.2528129208829828
	.quad	0x4010a369a7b3e86d              # double 4.1595827296788288
	.quad	0x3ffac2a8e9572c8f              # double 1.6725243677963453
	.quad	0x40058f854c4453a1              # double 2.6950784643508574
	.quad	0x400c6a782113cc0c              # double 3.5519869407812674
	.quad	0x401c7136994b3680              # double 7.1105598404079728
	.quad	0x4006b76091a04a0c              # double 2.8395396592179676
	.quad	0x401919e32ba027fb              # double 6.2752806488515445
	.quad	0x4013b86549c7d272              # double 4.9300738838397695
	.quad	0x40199a56cf7c9c99              # double 6.400721780758567
	.quad	0x4014210168c90f87              # double 5.0322319386213001
	.quad	0x3fd87fb4dba6ed70              # double 0.38279458475491079
	.quad	0x401aa80071264df7              # double 6.6640641860608332
	.quad	0x3ff38a8d7d4a5f76              # double 1.2213263410721686
	.quad	0x3ff9b8d1f10513f7              # double 1.6076220908009853
	.quad	0x40074438e9810993              # double 2.9083116762641992
	.quad	0x40173e995bb9b3b7              # double 5.811131890496589
	.quad	0x4017d46add52cf0a              # double 5.9574389058868835
	.quad	0x40225f52b5964804              # double 9.1861778970669618
	.quad	0x401a8b586968851c              # double 6.6360794515651627
	.quad	0x401de2ad2f9ad298              # double 7.4713637769933924
	.quad	0x40218b1bbc5badb8              # double 8.7716959821617451
	.quad	0x400dc7263207f3ec              # double 3.7222408207585342
	.quad	0x3fe6705800fd6e64              # double 0.70121383851387664
	.quad	0x401e26d60cd83ee0              # double 7.537925911615929
	.quad	0x40046027dddb2a74              # double 2.5469510395535568
	.quad	0x401a71f79af9ec8c              # double 6.6112961020509253
	.quad	0x4022c0c5f6874084              # double 9.3765103378393703
	.quad	0x40084478c6ce78d8              # double 3.0334334880600231
	.quad	0x4020fd472b90c7ee              # double 8.4946836103663053
	.quad	0x40117e85e7d9614a              # double 4.3735576845577473
	.quad	0x3ff0b594a66d1865              # double 1.0443312169095631
	.quad	0x402057d0d8ab2a70              # double 8.1715152462904541
	.quad	0x4022d5034132b8cb              # double 9.4160404562393491
	.quad	0x400b5122e1dfd6c4              # double 3.4146173139987201
	.quad	0x40157f79804bf8c9              # double 5.3744869276399152
	.quad	0x4014227ab5a6dbbd              # double 5.0336712248890167
	.quad	0x4012c307643111b8              # double 4.6904578833531829
	.quad	0x401016895a810f14              # double 4.0220083371421147
	.quad	0x3fe98a080ea6ffae              # double 0.79809954511437353
	.quad	0x4021876abdf2d929              # double 8.7644862517305047
	.quad	0x40158627951b37eb              # double 5.3810103700506984
	.quad	0x401f51110e1e5c98              # double 7.8291666227370555
	.quad	0x4020be8bfb3ac7b2              # double 8.3721617230656626
	.quad	0x4020337fa25f48c4              # double 8.1005831471742411
	.quad	0x4010e71a4e9a54c4              # double 4.2256862909027326
	.quad	0x40200eebb71492d7              # double 8.0291421139349222
	.quad	0x4020ed90a3307926              # double 8.4639941212340766
	.quad	0x40027c73a3e993e1              # double 2.3107674413354151
	.quad	0x4012676aee7433ea              # double 4.6009938486504129
	.quad	0x40165cbdc2174fa5              # double 5.59056761996536
	.quad	0x401e2f2fff9c4748              # double 7.5460815371641913
	.quad	0x402072bfa39fd624              # double 8.2241183407414339
	.quad	0x400ee46abc2152df              # double 3.8615317056340781
	.quad	0x40161a8c3f9113c8              # double 5.5259256298349513
	.quad	0x402241d506e0eda3              # double 9.1285783910341873
	.quad	0x40225a4ad9a953b7              # double 9.1763523120115291
	.quad	0x400920329ab212a6              # double 3.1407215200036545
	.quad	0x400af3f9c4fa27c5              # double 3.3691287411538462
	.quad	0x3fff538236b92e9c              # double 1.9578878533965627
	.quad	0x4017501126b90fcf              # double 5.8281904268696527
	.quad	0x4018448999ff8e46              # double 6.0669311582783561
	.quad	0x401a92e8f735b577              # double 6.6434668184787062
	.quad	0x4022fc0b5631451f              # double 9.4922739920753524
	.quad	0x3ffb63b72cce8c5b              # double 1.7118446111933483
	.quad	0x4016f7b8b6c0fb65              # double 5.7419155650412437
	.quad	0x3ffc8fc40a2aedc7              # double 1.7850990674186151
	.quad	0x401d626060e0fdd0              # double 7.3460707795452009
	.quad	0x401fec0942c86378              # double 7.9805040774161781
	.quad	0x3fc42637060b82a0              # double 0.15741622729458005
	.quad	0x40156ca4bbef61d8              # double 5.3560971608025838
	.quad	0x4016390a51bb5ba2              # double 5.5557034273723804
	.quad	0x4023778ccc0bf420              # double 9.7334960712997258
	.quad	0x3ffdc820a2436b35              # double 1.8613592470562257
	.quad	0x40046fb7447191b6              # double 2.5545487734945835
	.quad	0x3ffdb56aa090a866              # double 1.856791140754035
	.quad	0x40160a47c784e492              # double 5.5100394415723191
	.quad	0x40163c17ec7ff853              # double 5.5586850121599864
	.quad	0x4014b9c99e330f0e              # double 5.181433174005873
	.quad	0x3fe818ed5307bedc              # double 0.75304285256239777
	.quad	0x4010f13163eef4c0              # double 4.2355399717900468
	.quad	0x401b3622a01368d2              # double 6.8028664600226012
	.quad	0x4022f8608276d9ee              # double 9.4851113100130213
	.quad	0x401fa499af079b83              # double 7.9107425068276624
	.quad	0x40206daf20c2f5d3              # double 8.2142267454136455
	.quad	0x4023d25f5c0df145              # double 9.9108837859172442
	.quad	0x401a795513d5c757              # double 6.6184886073331972
	.quad	0x3ffaacf38a070347              # double 1.6672244445509976
	.quad	0x401e6a3775b4c839              # double 7.6037271873083733
	.quad	0x4003d446cded56a6              # double 2.4786506736807778
	.quad	0x4009a0cc949b066b              # double 3.2035152063188455
	.quad	0x3fe447d4ce260472              # double 0.63376846564655254
	.quad	0x40147970456bcdb8              # double 5.1185923430488671
	.quad	0x401b8f1ca03d8f02              # double 6.889757636792412
	.quad	0x40197a127f63d33e              # double 6.3692111878088422
	.quad	0x40102bff5cd20abc              # double 4.0429663184356137
	.quad	0x400f6babc85d6778              # double 3.9275737432007496
	.size	.L__constant_10x10xf64, 800

	.type	.L__constant_35xindex,@object   # @__constant_35xindex
	.p2align	6, 0x0
.L__constant_35xindex:
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
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
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.size	.L__constant_35xindex, 280

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.size	.L__constant_11xindex, 88

	.type	.L__constant_35xf64,@object     # @__constant_35xf64
	.p2align	6, 0x0
.L__constant_35xf64:
	.quad	0x40204cc8de2ac322              # double 8.1499699999999997
	.quad	0x4022798bb4d48883              # double 9.2373940000000001
	.quad	0x4019ca83b1d0c804              # double 6.4477679999999999
	.quad	0x40103eb074a771c9              # double 4.0612199999999996
	.quad	0x400c1d4c76d117b5              # double 3.5143059999999999
	.quad	0x3ffb9c443914f484              # double 1.725651
	.quad	0x40072efdc9c4da90              # double 2.897945
	.quad	0x40125e81cb46bacf              # double 4.5922919999999996
	.quad	0x4011b9c6f36ef805              # double 4.4314229999999997
	.quad	0x400b8a51e321a2e8              # double 3.442539
	.quad	0x40152107314ca926              # double 5.282254
	.quad	0x402147bd273d5bab              # double 8.6401149999999998
	.quad	0x402021fd1569f490              # double 8.0663839999999993
	.quad	0x40169b2314013ec4              # double 5.6515009999999997
	.quad	0x3fd5f28c79f66623              # double 0.34292899999999998
	.quad	0x400cbd1b2e59af9f              # double 3.5923370000000001
	.quad	0x401ba92d55a3a084              # double 6.9152120000000004
	.quad	0x400e2d4b2745bf27              # double 3.772116
	.quad	0x3fed2558ea7ce0fc              # double 0.91080899999999997
	.quad	0x4007d2e946801712              # double 2.9779840000000002
	.quad	0x400db79af1886df8              # double 3.7146509999999999
	.quad	0x40150e9531550ca2              # double 5.2642410000000002
	.quad	0x4023bb7aa25d8d7a              # double 9.8661700000000003
	.quad	0x400b8dc22ab25b31              # double 3.4442179999999998
	.quad	0x400cc87980f55de6              # double 3.5978880000000002
	.quad	0x40161012599ed7c7              # double 5.515695
	.quad	0x400250b06c43f5f9              # double 2.289399
	.quad	0x401106876e1deacd              # double 4.2563760000000004
	.quad	0x4020fd3da72a7bd5              # double 8.4946110000000008
	.quad	0x4020c45a5fc7e6b4              # double 8.383502
	.quad	0x4020b1af7d30ad47              # double 8.3470420000000001
	.quad	0x401163d5347a5b10              # double 4.3474930000000001
	.quad	0x3fd3cf7caa7589f0              # double 0.30953900000000001
	.quad	0x4019d36da87a072d              # double 6.4564729999999999
	.quad	0x401bc58750c1b973              # double 6.9428989999999997
	.size	.L__constant_35xf64, 280

	.section	".note.GNU-stack","",@progbits
