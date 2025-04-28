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
	.quad	25                              # 0x19
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
	lui	a6, %hi(.L__constant_25xindex)
	addi	a6, a6, %lo(.L__constant_25xindex)
	lui	a7, %hi(.L__constant_25xf64)
	addi	a7, a7, %lo(.L__constant_25xf64)
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
	.type	.L__constant_10x10xf64,@object  # @__constant_10x10xf64
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
.L__constant_10x10xf64:
	.quad	0x3fee272ca742dd44              # double 0.9422820345707028
	.quad	0x3fec30973a4b21e8              # double 0.88093148599096782
	.quad	0x4020d3725403a785              # double 8.4129816297970681
	.quad	0x4000731d7c5e8556              # double 2.0562085834832642
	.quad	0x401265e6742280a7              # double 4.5995119234141049
	.quad	0x4022b22702efca49              # double 9.3479538839066141
	.quad	0x40222711cd9d0d32              # double 9.0763077024663268
	.quad	0x400a7144366898be              # double 3.3053058863325466
	.quad	0x3fef61e685b3f6b8              # double 0.98070074190010014
	.quad	0x40219acba46334cc              # double 8.8023349162198414
	.quad	0x4019b85791576213              # double 6.4300215444168485
	.quad	0x4016fcffd3460f95              # double 5.7470696460258255
	.quad	0x4012c0038fad1e34              # double 4.6875135850346403
	.quad	0x4015f3296ce15088              # double 5.487462712528334
	.quad	0x4023049004c2aab5              # double 9.5089112746839905
	.quad	0x4015e2895ea2c306              # double 5.4712271487085271
	.quad	0x400e41b721d8867c              # double 3.7820875782206809
	.quad	0x3fc272d367db8480              # double 0.14412920542875796
	.quad	0x401b13f7398da65e              # double 6.7694977753359051
	.quad	0x4002767f3cb5e9b7              # double 2.3078598731055666
	.quad	0x4023f8c3d6f7cb5e              # double 9.9858691384776499
	.quad	0x400e7c9534eff6d7              # double 3.810831464360358
	.quad	0x400cbe645532adf6              # double 3.5929648071376006
	.quad	0x401ea2f59b143b4a              # double 7.6591400366876972
	.quad	0x4010278929bd4e95              # double 4.038609172992115
	.quad	0x3fb1402c5f044700              # double 0.067385457227171486
	.quad	0x40001eac7339bdec              # double 2.0149773599621223
	.quad	0x40206690069428ec              # double 8.200317578874511
	.quad	0x4013dc32e95bae3b              # double 4.965037962170352
	.quad	0x40168b923391a574              # double 5.6362999017377327
	.quad	0x402133dbc5b4e100              # double 8.6012861045169302
	.quad	0x401643a26b257770              # double 5.5660492650621194
	.quad	0x402105101e612a7c              # double 8.5098886006937775
	.quad	0x3ff685421feedf7f              # double 1.4075337645899422
	.quad	0x400fddbbbae9ec51              # double 3.9832682230603855
	.quad	0x4008c0ea1ef79847              # double 3.0941965503034541
	.quad	0x40217a6866a58584              # double 8.7390777661373775
	.quad	0x4008325c2361a8fe              # double 3.0245898021868234
	.quad	0x3fe954fe59c01aa0              # double 0.79162519006134246
	.quad	0x3ff3cbd970dae09d              # double 1.2372679146192589
	.quad	0x40116dd4ae7f2177              # double 4.3572566285223422
	.quad	0x4018478fef69b3cc              # double 6.0698850067391952
	.quad	0x4015a840b46770a1              # double 5.4143093288550128
	.quad	0x4023e5e6df0d9a38              # double 9.9490270332436097
	.quad	0x4017f7df9fdea4b5              # double 5.992063997234415
	.quad	0x3fe421fcea395c34              # double 0.62914891955268226
	.quad	0x400964b9fe769fa9              # double 3.1741828803969452
	.quad	0x4000f706a1b061b4              # double 2.1206181175186547
	.quad	0x3ffd3e343719a5a2              # double 1.8276865150786326
	.quad	0x400a9bc52405f356              # double 3.3260596098247488
	.quad	0x401d4689a02fdc96              # double 7.3188843754970971
	.quad	0x400d0be59dba0b39              # double 3.6308090517426561
	.quad	0x402310e6cbe16a67              # double 9.5330108368554657
	.quad	0x4002f2d5ed8e416a              # double 2.3685720976865712
	.quad	0x3feab1129e833f66              # double 0.83411532363423357
	.quad	0x40201f78bde4977a              # double 8.0614680615942582
	.quad	0x4020bd030bcddf24              # double 8.3691638649757535
	.quad	0x401e8d12962921a0              # double 7.6377662146191199
	.quad	0x3fb17971e94e66b0              # double 0.068259353122267497
	.quad	0x40021e7ac7fdb36d              # double 2.2648826240824094
	.quad	0x4014c8cbe39e30db              # double 5.1960902753164318
	.quad	0x4014ca6ebf3f8f93              # double 5.1976880915207344
	.quad	0x401a7c4717d0c3e4              # double 6.6213649483843007
	.quad	0x3ffb195d47975788              # double 1.6936924740343517
	.quad	0x4012156718bc0ea2              # double 4.5209010948925954
	.quad	0x401baf28fb8a1ad0              # double 6.9210547736208383
	.quad	0x40215e2ff8014186              # double 8.6839597226651328
	.quad	0x4021b0ac02e99e63              # double 8.8450623426608157
	.quad	0x402253c28a82db41              # double 9.163593605493249
	.quad	0x3ffadda0709321f1              # double 1.6791080853891993
	.quad	0x40235d16929c887c              # double 9.6818128410416122
	.quad	0x4017350b69ff644d              # double 5.8018013536576065
	.quad	0x4006070e84108263              # double 2.7534456555879827
	.quad	0x4010ffeaf1fa4338              # double 4.249919682407203
	.quad	0x40103124b9b1f8ea              # double 4.0479916586757358
	.quad	0x3ff294e449c4c087              # double 1.1613505250534517
	.quad	0x40058441f7f4a26a              # double 2.6895789500743392
	.quad	0x40231ff90c7320ee              # double 9.5624469652688866
	.quad	0x40116034d8420eeb              # double 4.3439515867537279
	.quad	0x401ef313c0b2931e              # double 7.7373800381654103
	.quad	0x400b75bbdf460c1d              # double 3.4324872439624543
	.quad	0x3fe4dc3d6b3b2ab0              # double 0.65188475555017611
	.quad	0x401c52afbdb7bcf4              # double 7.0807485240359149
	.quad	0x3ff43536a860aa77              # double 1.2629915787935297
	.quad	0x400d67bf4ac66b58              # double 3.6756578294565934
	.quad	0x4013f8d975bb087c              # double 4.993017043629262
	.quad	0x4021c9ddf0031d03              # double 8.8942713741112183
	.quad	0x4010aa73d9d38cb5              # double 4.1664575610513355
	.quad	0x40102bac093dda8e              # double 4.0426484531404991
	.quad	0x3fd866014549f358              # double 0.38122588888636733
	.quad	0x4013494bc27fc62a              # double 4.8215780630576237
	.quad	0x4013c4006b604045              # double 4.9414078500267964
	.quad	0x401a3776344805df              # double 6.5541618508300123
	.quad	0x401f90865c0fd4d3              # double 7.8911375412619291
	.quad	0x401fad1fb8c24a84              # double 7.9190663212381232
	.quad	0x400e3d3c0477e3e5              # double 3.7798996304595556
	.quad	0x4018f4f564178791              # double 6.2392173423157979
	.quad	0x401c010ac9ad9883              # double 7.0010177147106587
	.quad	0x4020d2379a66fdd6              # double 8.4105804682466605
	.quad	0x4020e9ee4c31e5ec              # double 8.456896191683846
	.size	.L__constant_10x10xf64, 800

	.type	.L__constant_25xindex,@object   # @__constant_25xindex
	.p2align	6, 0x0
.L__constant_25xindex:
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	7                               # 0x7
	.quad	1                               # 0x1
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	7                               # 0x7
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.size	.L__constant_25xindex, 200

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.size	.L__constant_11xindex, 88

	.type	.L__constant_25xf64,@object     # @__constant_25xf64
	.p2align	6, 0x0
.L__constant_25xf64:
	.quad	0x400a0327ed84d339              # double 3.251541
	.quad	0x3ff247c957cd466f              # double 1.1425259999999999
	.quad	0x401cca821f2990f3              # double 7.197762
	.quad	0x401d07db2b346131              # double 7.2576720000000003
	.quad	0x40091636f3b213e4              # double 3.1358470000000001
	.quad	0x3fe2705857afea3e              # double 0.576214
	.quad	0x3ff8407cc7d1bb49              # double 1.515744
	.quad	0x40134e6bc621b7e1              # double 4.8265830000000003
	.quad	0x3fff20780fdc1616              # double 1.945427
	.quad	0x40138e429e0a41a2              # double 4.8889259999999997
	.quad	0x4011686c226809d5              # double 4.3519750000000004
	.quad	0x4018ad5c31593e60              # double 6.1692970000000003
	.quad	0x40218fc84b5dcc64              # double 8.7808250000000001
	.quad	0x40037d4c76d117b5              # double 2.4361809999999999
	.quad	0x40086d6b228dc982              # double 3.0534270000000001
	.quad	0x3ffcc475e6362a5e              # double 1.7979639999999999
	.quad	0x400915bdd76683c3              # double 3.1356160000000002
	.quad	0x3ff459ddc1e7967d              # double 1.2719400000000001
	.quad	0x400023bff8a8f3aa              # double 2.0174560000000001
	.quad	0x4010e37154003255              # double 4.2221120000000001
	.quad	0x3fe23e707e175d14              # double 0.57012200000000002
	.quad	0x3fcb4a6eb91b3f21              # double 0.21320900000000001
	.quad	0x400e43ef284167a9              # double 3.7831709999999998
	.quad	0x4020ffa67a52ac75              # double 8.4993169999999996
	.quad	0x3fd4db48909289db              # double 0.32588400000000001
	.size	.L__constant_25xf64, 200

	.section	".note.GNU-stack","",@progbits
