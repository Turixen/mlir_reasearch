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
	.quad	0x3feb5c9bff0ec8c0              # double 0.8550548535916036
	.quad	0x3fd2f1d9aa43767c              # double 0.29601136805818107
	.quad	0x40066eae022ca2da              # double 2.8040428323623532
	.quad	0x4022d91fcceee55d              # double 9.4240707437153847
	.quad	0x4012be976685846e              # double 4.6861244219772811
	.quad	0x40101716153be96a              # double 4.022545177251553
	.quad	0x40178e7ebd2cfd56              # double 5.8891553457936734
	.quad	0x40076589826aac80              # double 2.9245786846927899
	.quad	0x3ff79852e2397332              # double 1.47468841904556
	.quad	0x40220f3eed693617              # double 9.0297769728595494
	.quad	0x3fc9ef4174e023b0              # double 0.20261400420011233
	.quad	0x400d8660aa370112              # double 3.6906140611682838
	.quad	0x400576a3a6b1e605              # double 2.6829293273010557
	.quad	0x401473db3f729738              # double 5.1131410516443836
	.quad	0x401f71ed01779ac0              # double 7.861255667615012
	.quad	0x3fde14859a66f2b8              # double 0.47000255659422008
	.quad	0x40017f069ab923c2              # double 2.1870243156194826
	.quad	0x3fe7e0569b2520da              # double 0.74613504697574773
	.quad	0x4017ca0fe7de0c2d              # double 5.9473263005520893
	.quad	0x40131424bfecb40e              # double 4.7696714390012982
	.quad	0x4003caf961f604e2              # double 2.4741084721759856
	.quad	0x4012053a4df43e76              # double 4.5051052265476894
	.quad	0x3fefcf4e279caf40              # double 0.99405582176903095
	.quad	0x401b61817b491206              # double 6.8452204955433498
	.quad	0x3fd036639a82afac              # double 0.25331964577594124
	.quad	0x402197017ab0ea70              # double 8.794933160873569
	.quad	0x4023f5841e757fbe              # double 9.9795236128264797
	.quad	0x3fefbeffc773a244              # double 0.99206532435807348
	.quad	0x3fef92f4ca8ca9d0              # double 0.98668899116938213
	.quad	0x4022aa3565e0ab25              # double 9.332438644099577
	.quad	0x40033c186c63d7da              # double 2.4043434589357107
	.quad	0x401ce45e671fcc71              # double 7.2230163682134938
	.quad	0x40157df77c46ff70              # double 5.3730143946012134
	.quad	0x40039aee731d2466              # double 2.4506501191395271
	.quad	0x4021733ccd9fbd2a              # double 8.7250732667440225
	.quad	0x401158376b4c28ec              # double 4.3361489072069439
	.quad	0x4010a78144e8a410              # double 4.1635790602677076
	.quad	0x40181c2955366a8d              # double 6.0275014223540326
	.quad	0x40091dd404a04781              # double 3.1395645486272206
	.quad	0x40008890ae5f85b4              # double 2.066682207384213
	.quad	0x3feae743df8173a4              # double 0.84073060658885312
	.quad	0x4019a6ee52ea795a              # double 6.4130185084926215
	.quad	0x40207842f74425fc              # double 8.2348859091462074
	.quad	0x40205942157f182b              # double 8.1743323056835688
	.quad	0x4021a2d8044d81a8              # double 8.8180543274509802
	.quad	0x400f71b5fed878bc              # double 3.930522910100164
	.quad	0x400323f4c8661310              # double 2.3925567299032835
	.quad	0x40220edb2e7336b7              # double 9.029015971721817
	.quad	0x401c8f4733237c08              # double 7.1399200430305498
	.quad	0x40112afad082642a              # double 4.2919724063477052
	.quad	0x402284b71465edd7              # double 9.259209287111771
	.quad	0x4012fa7daa7a07f2              # double 4.7446200024587473
	.quad	0x3ffc89bb87c7a99b              # double 1.7836261085418303
	.quad	0x3fff9f925cfb62f8              # double 1.9764579422100592
	.quad	0x401c6b962f7e1e49              # double 7.1050650997854712
	.quad	0x40071bbc599202bc              # double 2.888542842644112
	.quad	0x4020ad1d46b84b6f              # double 8.3381139850586958
	.quad	0x401383c1bbf68255              # double 4.8786687249381275
	.quad	0x4023d61a3af8596b              # double 9.9181688717041733
	.quad	0x401cbca682df2d59              # double 7.1842289398876682
	.quad	0x401f488df53770bc              # double 7.8208540263259998
	.quad	0x400ffc994c08ba66              # double 3.9983392658389674
	.quad	0x401eb7a25695bb17              # double 7.6793302086723747
	.quad	0x4021b07b6a89a4a8              # double 8.8446915905972929
	.quad	0x4023940bed326eb0              # double 9.7891534923613506
	.quad	0x4013f5f6f6de8d78              # double 4.9901999066672644
	.quad	0x3ffb27afafbbf4a8              # double 1.6971890320412886
	.quad	0x3fd5b9cbe2ab7944              # double 0.33946511398052714
	.quad	0x3ffc531213ad18af              # double 1.7702809113120954
	.quad	0x4023de453bb74861              # double 9.9341219578965951
	.quad	0x401cfd3451a1caa0              # double 7.2472698931693742
	.quad	0x40192032e42364a1              # double 6.2814441343881819
	.quad	0x400f67688210c412              # double 3.925492302071242
	.quad	0x401533cd4542a2cc              # double 5.3005877324982968
	.quad	0x401963bf47a091f6              # double 6.3474093620065926
	.quad	0x4023cccefe5a861e              # double 9.9000167356016924
	.quad	0x4012eb7bfa7e9941              # double 4.7299651279229815
	.quad	0x4013e7f1cf3ddff3              # double 4.9765083676829702
	.quad	0x400c127cb9e27aa4              # double 3.5090269586792875
	.quad	0x401c72a7f9a95706              # double 7.1119688996893782
	.quad	0x400647b9e933ad91              # double 2.785022565736377
	.quad	0x3fd54c8a6180b0cc              # double 0.33279666444537948
	.quad	0x4019a964210da5d1              # double 6.4154210247592838
	.quad	0x401b7770d22a5c21              # double 6.8666413153032702
	.quad	0x4022ff01e08db09e              # double 9.4980611966096227
	.quad	0x401d7c99c3da4e26              # double 7.3716803171151124
	.quad	0x40105e10b351946c              # double 4.0918605822126715
	.quad	0x3fe78921fbb4ea20              # double 0.73548983727897976
	.quad	0x3fe878df44f0b914              # double 0.7647549005976395
	.quad	0x4023908808c55692              # double 9.7822878590480151
	.quad	0x400be79d630981a8              # double 3.4880931603695053
	.quad	0x4020a7ea8ef26334              # double 8.3279614134677117
	.quad	0x4020a35a677f5742              # double 8.3190491049714446
	.quad	0x400c9c457a9efb38              # double 3.5763043956534624
	.quad	0x3ff68a264c735e16              # double 1.4087279306749045
	.quad	0x4010fe2cdec0b008              # double 4.2482180409533683
	.quad	0x401332ea7e2359fc              # double 4.7997226437641949
	.quad	0x40123a8819a1a6b4              # double 4.5571598057664922
	.quad	0x4019ae3efbed306d              # double 6.4201621402281548
	.quad	0x40084c0fd9c76eb0              # double 3.0371396078097277
	.size	.L__constant_10x10xf64, 800

	.type	.L__constant_25xindex,@object   # @__constant_25xindex
	.p2align	6, 0x0
.L__constant_25xindex:
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.size	.L__constant_25xindex, 200

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	25                              # 0x19
	.size	.L__constant_11xindex, 88

	.type	.L__constant_25xf64,@object     # @__constant_25xf64
	.p2align	6, 0x0
.L__constant_25xf64:
	.quad	0x3ff4dc044284dfce              # double 1.303715
	.quad	0x401bff8d716d2aa6              # double 6.9995630000000002
	.quad	0x40085fab10ba6267              # double 3.046713
	.quad	0x4013de9680e06530              # double 4.967371
	.quad	0x3ffb026fe718a86d              # double 1.6880949999999999
	.quad	0x4003d042528ae74f              # double 2.4766889999999999
	.quad	0x4008413122b7baed              # double 3.0318320000000001
	.quad	0x4002014c660a2014              # double 2.2506339999999998
	.quad	0x40146c981beb1811              # double 5.1060489999999996
	.quad	0x3fd6ed1394317acc              # double 0.35821999999999998
	.quad	0x4022122595bbbe88              # double 9.0354430000000008
	.quad	0x4011a9c6b0531983              # double 4.4157970000000004
	.quad	0x4016ab042528ae75              # double 5.667008
	.quad	0x400e68765ba6efc3              # double 3.8010069999999998
	.quad	0x40236d96638433d7              # double 9.7140380000000003
	.quad	0x4011df63c31df762              # double 4.4681540000000002
	.quad	0x4020e1ee88df3733              # double 8.4412730000000007
	.quad	0x4016ce536501e258              # double 5.7014899999999997
	.quad	0x401f630e3cd9a522              # double 7.8467339999999997
	.quad	0x400d29f94855da27              # double 3.6454949999999999
	.quad	0x3fffea715831f03d              # double 1.994737
	.quad	0x4009beefe4ffc979              # double 3.2182309999999998
	.quad	0x401c027bb2fec56d              # double 7.0024249999999997
	.quad	0x4014034ce3de614a              # double 5.0032230000000002
	.quad	0x3fd148a58b3f63c3              # double 0.27005899999999999
	.size	.L__constant_25xf64, 200

	.section	".note.GNU-stack","",@progbits
