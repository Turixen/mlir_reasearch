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
	.quad	0x3fff398667943293              # double 1.9515441938448574
	.quad	0x400e4de14a22855c              # double 3.7880273620400384
	.quad	0x401ec2bd6b505a33              # double 7.6901757018845726
	.quad	0x400d57d98f847e68              # double 3.667895432692422
	.quad	0x401da940e3a65342              # double 7.4152865953699933
	.quad	0x3ff746bf1a522e52              # double 1.4547720935978714
	.quad	0x40212b0d53d2473a              # double 8.5840860552012721
	.quad	0x4011febc93887a05              # double 4.4987662365006189
	.quad	0x400f274f7f5b45ce              # double 3.8941945981721124
	.quad	0x401cc0895e35eda2              # double 7.1880240173735803
	.quad	0x401bb1cc8b0e421e              # double 6.923631832833534
	.quad	0x400f553142d2df26              # double 3.9165978642085006
	.quad	0x4019b71380a9b943              # double 6.428785333975898
	.quad	0x4001c259242d2354              # double 2.2198965860629105
	.quad	0x40176b21e6c86876              # double 5.8546215114421241
	.quad	0x401dfb8f850ceb76              # double 7.4956646718154527
	.quad	0x4022f21af40b4c31              # double 9.4728618873396914
	.quad	0x40225c5f4a3a852d              # double 9.1804145046649754
	.quad	0x4023b25a1d86e8aa              # double 9.8483437754806182
	.quad	0x400febe098afe5cc              # double 3.9901744774512959
	.quad	0x401ef88a979963dd              # double 7.7427161872264749
	.quad	0x401620c47a0780b1              # double 5.5319994990424428
	.quad	0x401dde02047c86c0              # double 7.4668045712475646
	.quad	0x4016012f8be31602              # double 5.5011579377510333
	.quad	0x400c563ba15cea12              # double 3.5421059233169752
	.quad	0x4017ed158b291c26              # double 5.9815274947968984
	.quad	0x4022e2abe9e98d32              # double 9.4427178475949383
	.quad	0x3ffd94f92f9c4a02              # double 1.8488704547677348
	.quad	0x4021c08690de5578              # double 8.8760266562846795
	.quad	0x4003228a8a716572              # double 2.3918658080917163
	.quad	0x4010f7c882b918a7              # double 4.2419758248781028
	.quad	0x402239cee3a690e1              # double 9.1129065647914462
	.quad	0x4015e4a3fd0fa302              # double 5.4732818165582575
	.quad	0x401c02bc1f5710a9              # double 7.0026707550897891
	.quad	0x400300cb78c2932c              # double 2.3753880915050072
	.quad	0x401a092fc08292e4              # double 6.5089712218948286
	.quad	0x401e0d215b5704f2              # double 7.5128225585806252
	.quad	0x4023529d87a55c56              # double 9.6613581075054462
	.quad	0x40237f9a30cc3323              # double 9.749223256041267
	.quad	0x4013028f0e2ecfd4              # double 4.7524988380500481
	.quad	0x401ce70f1f6f10d6              # double 7.2256436263598598
	.quad	0x400096e868bb4c00              # double 2.0736854726942511
	.quad	0x40143647e91dd906              # double 5.0530086922137851
	.quad	0x4005539850d0d686              # double 2.6658178628666205
	.quad	0x401454f3229345b6              # double 5.0829587366474041
	.quad	0x3fc1ce975b822f30              # double 0.13911716430845322
	.quad	0x4022041279858b32              # double 9.0079534507291079
	.quad	0x401f2f834f234a12              # double 7.796399342087641
	.quad	0x402011f12f462be4              # double 8.0350432179602151
	.quad	0x400bc0dfc68fe7f1              # double 3.4691768181482918
	.quad	0x40171db982432650              # double 5.7790279725537204
	.quad	0x4019533db343bdf8              # double 6.331290055284164
	.quad	0x401ab0a68084e5d6              # double 6.6725101548303964
	.quad	0x3fed9d2d96f846c4              # double 0.92543677793784029
	.quad	0x401cb755d5d83453              # double 7.1790383732996643
	.quad	0x3fbcaa8a6ee37f50              # double 0.11197724539988241
	.quad	0x4015809c8be4372c              # double 5.3755971773187348
	.quad	0x400794479c44a4c0              # double 2.9474022110412932
	.quad	0x3ffad4fab3b90693              # double 1.676996900598543
	.quad	0x401e477c66058c8c              # double 7.5698104802023742
	.quad	0x402252b09e143f28              # double 9.1615037345614638
	.quad	0x3fd8c6ee032919c4              # double 0.38714170750281718
	.quad	0x3fecbaa0300f7bfa              # double 0.89778146158994265
	.quad	0x40201e89a50d2549              # double 8.0596438959643297
	.quad	0x40216123ab29fce6              # double 8.6897252548937551
	.quad	0x4011940e2cdc1b9b              # double 4.3945853242247734
	.quad	0x4019e4b75bfafab1              # double 6.4733557102141939
	.quad	0x4022b95be9f8bda1              # double 9.3620293728006931
	.quad	0x3fc5c9f00953f4c0              # double 0.17022514777628395
	.quad	0x40011e529ddef539              # double 2.1398060163179733
	.quad	0x3fed6a84bb8deeac              # double 0.9192527449772192
	.quad	0x40234f32e2e20b2b              # double 9.6546851063663634
	.quad	0x3fbe2194f5e86380              # double 0.11769991878135322
	.quad	0x401a616b4cc44468              # double 6.5951358790199279
	.quad	0x4021cac0a7b047cf              # double 8.8960010912595902
	.quad	0x4021cda7126c8dd7              # double 8.9016652829658778
	.quad	0x401105dd2abe193c              # double 4.2557264975096665
	.quad	0x3fe2d8f3dc31d290              # double 0.58898346907388266
	.quad	0x4012ae7b33fbcfb0              # double 4.6703918573802383
	.quad	0x4021a8fb44735e60              # double 8.8300420180159449
	.quad	0x401d87b0267417d1              # double 7.3825078972203793
	.quad	0x40034cb494a589da              # double 2.4124538052576385
	.quad	0x40040075907765f2              # double 2.5002242361485907
	.quad	0x400677c4fdc51c2d              # double 2.8084811998155801
	.quad	0x4020081a5c082cb1              # double 8.015826107023118
	.quad	0x3fda386093605310              # double 0.40969099418843857
	.quad	0x40217c0871b234a3              # double 8.7422519235645435
	.quad	0x4018635f6e588f94              # double 6.0970437280228857
	.quad	0x3ff2b7a4cb5986ef              # double 1.1698348944996118
	.quad	0x40210e5740167382              # double 8.5280094172865155
	.quad	0x401e8a50f0ff25ee              # double 7.6350743919115143
	.quad	0x3fca4949d1dd3960              # double 0.20536158320687559
	.quad	0x401da0ba6b09e140              # double 7.4069611286907389
	.quad	0x401bc1970298ca76              # double 6.9390526204830305
	.quad	0x4021828f39d13b45              # double 8.7549989765080998
	.quad	0x40197823955de7a2              # double 6.3673232401432944
	.quad	0x40099a5b7be0b052              # double 3.2003698041863027
	.quad	0x3ff1640928992950              # double 1.086922796809251
	.quad	0x4020fc770a6dd2b4              # double 8.4930957087575293
	.quad	0x40209eaa1096873e              # double 8.30989124143127
	.size	.L__constant_10x10xf64, 800

	.type	.L__constant_45xindex,@object   # @__constant_45xindex
	.p2align	6, 0x0
.L__constant_45xindex:
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.size	.L__constant_45xindex, 360

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.size	.L__constant_11xindex, 88

	.type	.L__constant_45xf64,@object     # @__constant_45xf64
	.p2align	6, 0x0
.L__constant_45xf64:
	.quad	0x400d1746887a8d65              # double 3.6363650000000001
	.quad	0x40213ff9f87f023f              # double 8.6249540000000007
	.quad	0x4020aae81882adc5              # double 8.3338020000000004
	.quad	0x401941f9acffa7eb              # double 6.3144289999999996
	.quad	0x3ff1e04c05921038              # double 1.1172599999999999
	.quad	0x3ffe2837f7be121f              # double 1.884819
	.quad	0x40018e4c0df58c09              # double 2.1944810000000001
	.quad	0x401db6a8b8f14db6              # double 7.4283780000000004
	.quad	0x4020c6ca25529fe0              # double 8.388261
	.quad	0x40083b23571d1d47              # double 3.0288759999999999
	.quad	0x4010c8dfbd6a593a              # double 4.1961659999999998
	.quad	0x40155ca89fc6da45              # double 5.3404870000000004
	.quad	0x4011962cfd8f0c78              # double 4.3966560000000001
	.quad	0x4011da012599ed7c              # double 4.4628949999999996
	.quad	0x3ffd40a6b93ccd10              # double 1.828284
	.quad	0x40139e62dc6e2a80              # double 4.904674
	.quad	0x3fb645c358afc47e              # double 0.087001999999999996
	.quad	0x4023f5d441355476              # double 9.9801350000000006
	.quad	0x3fd2586876e1dead              # double 0.28664600000000001
	.quad	0x40052449dbec2481              # double 2.642719
	.quad	0x3feebf0563ed0f62              # double 0.96081799999999995
	.quad	0x40165cf1800a7c5b              # double 5.5907650000000002
	.quad	0x401055af294dd723              # double 4.0836759999999996
	.quad	0x400338705425f202              # double 2.402558
	.quad	0x4011146e8f29d40f              # double 4.2699530000000001
	.quad	0x40123187a4a48f97              # double 4.5483690000000001
	.quad	0x4018951b93037d63              # double 6.145613
	.quad	0x4012a45ed4a1ad64              # double 4.6605179999999997
	.quad	0x4022090b1feeb2d1              # double 9.0176630000000007
	.quad	0x401534aa10e02214              # double 5.3014299999999999
	.quad	0x4012d57d9dba908a              # double 4.7084869999999999
	.quad	0x4022139dc2f405f7              # double 9.0383130000000005
	.quad	0x4023957d3910c2c6              # double 9.7919710000000002
	.quad	0x3fded1aeb3dd11be              # double 0.48154799999999998
	.quad	0x400d459a73b42cc3              # double 3.6589860000000001
	.quad	0x40222a55f3519bd4              # double 9.0826869999999999
	.quad	0x40016cf312b1b36c              # double 2.1781980000000001
	.quad	0x401f7b6bb1290258              # double 7.8705280000000001
	.quad	0x4020fc3cc07aaef3              # double 8.4926510000000004
	.quad	0x4019646950fc71d6              # double 6.348058
	.quad	0x401e67cc39ffd60f              # double 7.6013650000000003
	.quad	0x40237577d955714c              # double 9.7294300000000006
	.quad	0x400d64f3343fa2ad              # double 3.6742919999999999
	.quad	0x4017a6c7a7c9de05              # double 5.912871
	.quad	0x401ad978d4fdf3b6              # double 6.7123749999999998
	.size	.L__constant_45xf64, 360

	.section	".note.GNU-stack","",@progbits
