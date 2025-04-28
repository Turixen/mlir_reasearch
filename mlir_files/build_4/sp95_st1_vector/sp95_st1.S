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
	.quad	0x3fe663634150201c              # double 0.69963228947108602
	.quad	0x3fe62aed65bebd40              # double 0.69274015304646497
	.quad	0x4017494a900114e1              # double 5.8215734959278231
	.quad	0x40115045deff7544              # double 4.3283915370387298
	.quad	0x3f939f2897d9e140              # double 0.019161829250579077
	.quad	0x40202121ec552145              # double 8.0647119382780463
	.quad	0x4013b6f09811f5e8              # double 4.9286521683656943
	.quad	0x4000fef8f50dcb10              # double 2.1244982857546191
	.quad	0x3fe1f59cf0cb9dca              # double 0.56123206167551953
	.quad	0x401db76b7c951c0f              # double 7.4291209665307312
	.quad	0x400a69d225c39d26              # double 3.3016703558274854
	.quad	0x3ff5a4aebd74cced              # double 1.3527057076105919
	.quad	0x4010625b6dd31692              # double 4.0960518989646904
	.quad	0x401c700dfb72fdf8              # double 7.1094283379493319
	.quad	0x4023812c04de4f74              # double 9.752288963448997
	.quad	0x4015e346e343318e              # double 5.4719501027833655
	.quad	0x3ffa4c55e95cbd18              # double 1.643636619159059
	.quad	0x402349ce35ba69b2              # double 9.6441513814978386
	.quad	0x401c47460f2e1608              # double 7.0696031925085734
	.quad	0x40120754d05cc238              # double 4.5071594769111059
	.quad	0x401343ed1664641d              # double 4.8163341044210286
	.quad	0x400d9fde859d732a              # double 3.7030611456560978
	.quad	0x3fd656a1385f51a4              # double 0.3490374613295677
	.quad	0x3fe83cc4be6bb606              # double 0.75741803351928705
	.quad	0x401f992a7f120698              # double 7.899576173281865
	.quad	0x402012990ecc125c              # double 8.0363239883528692
	.quad	0x401bc5563d58d0da              # double 6.9427117906054381
	.quad	0x401a2076fd8b6259              # double 6.5317039123843523
	.quad	0x401c525992619efa              # double 7.0804198143084651
	.quad	0x400e4a082993c13c              # double 3.7861483810630983
	.quad	0x40024002e69c4308              # double 2.281255532878621
	.quad	0x401e292ebb305b6e              # double 7.5402173279061184
	.quad	0x4018cfe1952e410a              # double 6.2030089673501241
	.quad	0x4018ca7c743e52b4              # double 6.1977403796233155
	.quad	0x4021791662e7a99e              # double 8.7364989192763538
	.quad	0x401f12a95f2d4bb6              # double 7.7682242270847635
	.quad	0x3fdba7b2b8298a8c              # double 0.43211048111530981
	.quad	0x40124abad1924446              # double 4.5729782815479378
	.quad	0x401fe0c4bb8c0b97              # double 7.9695004753329135
	.quad	0x40225ec4b13f4742              # double 9.1850943937057572
	.quad	0x4010669ea3c04301              # double 4.1002145372483492
	.quad	0x401fbce9cac002bb              # double 7.9344855956739435
	.quad	0x400d11b07521142b              # double 3.6336373472900241
	.quad	0x40129ae3be699c48              # double 4.6512593986472623
	.quad	0x3fd682bad24a04a4              # double 0.35172911201522994
	.quad	0x4020ebc4865306ee              # double 8.4604837395049479
	.quad	0x40229014c6424f96              # double 9.2814084964700605
	.quad	0x3fe6acd8cb4d6766              # double 0.70859946925632467
	.quad	0x402017e5140829dd              # double 8.0466696033444638
	.quad	0x401d55b24cefdd76              # double 7.3336879750635173
	.quad	0x40178492b97ff89b              # double 5.8794659599645014
	.quad	0x4016764e96744727              # double 5.6155341633291647
	.quad	0x4022ebb53f425fff              # double 9.4603671806835318
	.quad	0x4014d95281363173              # double 5.2122287930800324
	.quad	0x40142ffd4ad317a3              # double 5.0468646708813223
	.quad	0x4012f1d9757575ed              # double 4.7361811020796099
	.quad	0x401455dfff97c82c              # double 5.0838622986212094
	.quad	0x4023a2e81c4a41ca              # double 9.8181771126409281
	.quad	0x401476dea83393a8              # double 5.1160837441902132
	.quad	0x4012864d12ad8e09              # double 4.631153385012575
	.quad	0x400781103f73ca7f              # double 2.9380192715846642
	.quad	0x401824db0757260c              # double 6.0359917780820176
	.quad	0x401a428ace66b191              # double 6.5649826288394175
	.quad	0x4005806a5f239f0b              # double 2.68770288779695
	.quad	0x4005d19f46e54ee0              # double 2.7273545778970032
	.quad	0x401cee6e90011ae0              # double 7.232843637530749
	.quad	0x401e9a3982de031a              # double 7.6506100128179018
	.quad	0x4007a1c8d4910aa9              # double 2.9539963347209164
	.quad	0x401b46ab3b4f9792              # double 6.8190125720338006
	.quad	0x401bb4bdd84bd5a0              # double 6.9265054508481683
	.quad	0x3fecbe18ea9f2012              # double 0.89820524048355055
	.quad	0x401173af2554a764              # double 4.3629728157919523
	.quad	0x401d3c039fe2b568              # double 7.308607576572605
	.quad	0x401d4c59518b9143              # double 7.3245594731745909
	.quad	0x4005738526d1fc57              # double 2.681406310351615
	.quad	0x40201fe35079f361              # double 8.0622811459413146
	.quad	0x3ff7ccc3f3c1f930              # double 1.4874915620599261
	.quad	0x400a88ef196e3b1c              # double 3.3168622957958984
	.quad	0x40201877f3108db4              # double 8.0477901418406432
	.quad	0x4021cc8326c35cf0              # double 8.8994381059150953
	.quad	0x400d8cbaf1c9fe09              # double 3.6937159433143774
	.quad	0x4021b60f2f95e389              # double 8.8555846090764749
	.quad	0x401777d0c0547823              # double 5.8670072604709587
	.quad	0x4023fdfc59c0e2b1              # double 9.9960659072833966
	.quad	0x40100dd658735d1f              # double 4.0135129757320831
	.quad	0x3ffe0a410d69757d              # double 1.8775034450439698
	.quad	0x4001ab24f65e68cf              # double 2.2085665938912835
	.quad	0x400a69cef1beb6e6              # double 3.3016642462088042
	.quad	0x40112e315b9f50fc              # double 4.2951101604451161
	.quad	0x401c41236ab6a8b8              # double 7.0636116670595399
	.quad	0x400a2893ae108ab8              # double 3.2698129271314791
	.quad	0x40230d975390c89e              # double 9.5265451540220134
	.quad	0x400c54f8b48efdff              # double 3.5414899927270649
	.quad	0x400579e0802b4948              # double 2.6845102322778622
	.quad	0x40091fbfd0692d96              # double 3.1405025751207161
	.quad	0x40001c599f648c38              # double 2.0138428165969593
	.quad	0x401b42f731d42f8e              # double 6.8153960977323447
	.quad	0x400e2dfab7ee3580              # double 3.7724508637972463
	.quad	0x40195f5d7061409b              # double 6.3431298789365895
	.quad	0x4011f1280803dd1d              # double 4.4855042698248129
	.size	.L__constant_10x10xf64, 800

	.type	.L__constant_5xindex,@object    # @__constant_5xindex
	.p2align	6, 0x0
.L__constant_5xindex:
	.quad	5                               # 0x5
	.quad	3                               # 0x3
	.quad	3                               # 0x3
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.size	.L__constant_5xindex, 40

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	1                               # 0x1
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.size	.L__constant_11xindex, 88

	.type	.L__constant_5xf64,@object      # @__constant_5xf64
	.p2align	6, 0x0
.L__constant_5xf64:
	.quad	0x401005479d4d8341              # double 4.0051560000000004
	.quad	0x3fe0fc6fbd273d5c              # double 0.53081500000000004
	.quad	0x3ffa0ee8d10f51ad              # double 1.6286400000000001
	.quad	0x40027ff79c842fa5              # double 2.312484
	.quad	0x40057bc4d22c881e              # double 2.6854339999999999
	.size	.L__constant_5xf64, 40

	.section	".note.GNU-stack","",@progbits
