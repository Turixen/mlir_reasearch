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
	.quad	40                              # 0x28
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
	lui	a6, %hi(.L__constant_40xindex)
	addi	a6, a6, %lo(.L__constant_40xindex)
	lui	a7, %hi(.L__constant_40xf64)
	addi	a7, a7, %lo(.L__constant_40xf64)
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
	addi	a1, a1, -2048
	vse64.v	v8, (a3)
	vmv.s.x	v8, a1
	vsext.vf8	v10, v8
	vse64.v	v10, (a0)
	ret
.Lfunc_end2:
	.size	assemble_sparse, .Lfunc_end2-assemble_sparse
	.cfi_endproc
                                        # -- End function
	.type	.L__constant_40xindex,@object   # @__constant_40xindex
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
.L__constant_40xindex:
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	4                               # 0x4
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.size	.L__constant_40xindex, 320

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.size	.L__constant_11xindex, 88

	.type	.L__constant_40xf64,@object     # @__constant_40xf64
	.p2align	6, 0x0
.L__constant_40xf64:
	.quad	0x3fec75515054ac2a              # double 0.88932100000000003
	.quad	0x3ffd821294573a79              # double 1.8442559999999999
	.quad	0x400d02046c764ae0              # double 3.625985
	.quad	0x40033cb252ce032e              # double 2.4046370000000001
	.quad	0x40199b6dca07f66f              # double 6.4017860000000004
	.quad	0x401211187e7c06e2              # double 4.5166950000000003
	.quad	0x401c5ff7164c729f              # double 7.0937159999999997
	.quad	0x40061b4245f5ad97              # double 2.7633100000000002
	.quad	0x4008132a497fa5d3              # double 3.0093580000000002
	.quad	0x4018a18eb8950764              # double 6.1577710000000003
	.quad	0x400e457d9dba908a              # double 3.7839309999999999
	.quad	0x4001ba43fe5c91d1              # double 2.2159499999999999
	.quad	0x3ff61e1c15097c81              # double 1.3823510000000001
	.quad	0x3ffddee99a62ed35              # double 1.866922
	.quad	0x4016934acaff6d33              # double 5.64384
	.quad	0x401e3afff36ac647              # double 7.5576169999999995
	.quad	0x4010a27631b584b2              # double 4.1586540000000003
	.quad	0x4003fc27631b584b              # double 2.498122
	.quad	0x401e85286b59146e              # double 7.6300369999999997
	.quad	0x3ff7a9fe004b7f5a              # double 1.4790019999999999
	.quad	0x402153b6ed677708              # double 8.6635050000000007
	.quad	0x402325cb9a9da598              # double 9.5738190000000003
	.quad	0x401c54567125dd09              # double 7.0823609999999997
	.quad	0x4023e9b7e0ac7da2              # double 9.9564810000000001
	.quad	0x400480913a4f8727              # double 2.5627770000000001
	.quad	0x401b2a6f3f52fc26              # double 6.7914399999999997
	.quad	0x401b2f49491f2dc3              # double 6.7961780000000003
	.quad	0x3fb2964e8b7e4de4              # double 0.072606000000000004
	.quad	0x4009f5946c332f01              # double 3.2449119999999998
	.quad	0x40219133e35c5b4b              # double 8.7835990000000006
	.quad	0x40170da87a072d1b              # double 5.7633380000000001
	.quad	0x401cf3868fd199bb              # double 7.2378179999999999
	.quad	0x40044a771c970f7c              # double 2.5363600000000002
	.quad	0x4021d1eeaa6d2674              # double 8.9100239999999999
	.quad	0x401b998dcdb37c9a              # double 6.8999550000000003
	.quad	0x401ee09bf9c62a1b              # double 7.7193449999999996
	.quad	0x40019205bc01a36e              # double 2.1962999999999999
	.quad	0x401982bf9830e3ce              # double 6.3776840000000004
	.quad	0x3feab42cc2d6a9c5              # double 0.83449399999999996
	.quad	0x401a51fe21d96e9c              # double 6.5800710000000002
	.size	.L__constant_40xf64, 320

	.type	.L__constant_10x10xf64,@object  # @__constant_10x10xf64
	.p2align	6, 0x0
.L__constant_10x10xf64:
	.quad	0x402320a76f2da7e0              # double 9.563777422259534
	.quad	0x40113a5e4bc03388              # double 4.307000335317646
	.quad	0x40058237ec5c48f2              # double 2.6885832276976709
	.quad	0x400c97ec8b99469c              # double 3.5741816431189601
	.quad	0x401483eec206ba1c              # double 5.1288404766660527
	.quad	0x4020e702384281da              # double 8.4511888104615771
	.quad	0x400cfe9eadd05e5f              # double 3.6243260935987531
	.quad	0x4022c697ad54574d              # double 9.3878759541945786
	.quad	0x3fed3a655fd83f4e              # double 0.91337841720267376
	.quad	0x401649b2ba437176              # double 5.5719708541549746
	.quad	0x402120c10283bd8e              # double 8.5639725480857827
	.quad	0x40158bcd9071d9f6              # double 5.3865263528336893
	.quad	0x400bfb672d0bfe1a              # double 3.4977553862843367
	.quad	0x4005b9da6adbccaa              # double 2.7157486294105029
	.quad	0x40107d44f5f0f95e              # double 4.1223333767250931
	.quad	0x401fe23a7d9b8d6e              # double 7.9709262491409003
	.quad	0x3ff0109b12449ca1              # double 1.0040541375727019
	.quad	0x401d8869c6cb473a              # double 7.3832160054751572
	.quad	0x3fe109c4311cee76              # double 0.53244218437562441
	.quad	0x40212d7661ecffea              # double 8.5887938119703513
	.quad	0x401cd9e51cca1df6              # double 7.2127880571711014
	.quad	0x3ffa95886bbfed6d              # double 1.6615070542310051
	.quad	0x401c4695dffff9af              # double 7.0689311027512494
	.quad	0x401e19a4b83c8d84              # double 7.5250424181898588
	.quad	0x401343abafbcd2e5              # double 4.8160846194266229
	.quad	0x3ffe4ae83bacccf4              # double 1.8932878809981135
	.quad	0x3fef2a7878b25b94              # double 0.97393439839912554
	.quad	0x4022680caae2f2f0              # double 9.2032216455495188
	.quad	0x40204b26bf9fb7f7              # double 8.1467800028294572
	.quad	0x4011801761a8c745              # double 4.3750891932739409
	.quad	0x4001815d05e67bc8              # double 2.1881657086337079
	.quad	0x4014ec78d0f25bcc              # double 5.2309296272205295
	.quad	0x4019456814055407              # double 6.3177798393489928
	.quad	0x3ffa35eb8a1474b1              # double 1.6381640809770881
	.quad	0x40062187d7addb8c              # double 2.7663723802501803
	.quad	0x3fd9adf9dd8105e4              # double 0.40124365454911826
	.quad	0x401a27a9144028e9              # double 6.5387309230957067
	.quad	0x4022361841e9cbd2              # double 9.1056538198371619
	.quad	0x3ffd950689d4315d              # double 1.8488831886234813
	.quad	0x4001265fc249433a              # double 2.1437373331649754
	.quad	0x4022b82740768db8              # double 9.3596744675368057
	.quad	0x401d4832b5860abd              # double 7.3205059397757255
	.quad	0x401f8471b60b8a1b              # double 7.8793400234740387
	.quad	0x4016f27b056db46c              # double 5.7367974136551361
	.quad	0x40181ddb203b7b72              # double 6.0291562115006503
	.quad	0x400a0eab39228868              # double 3.2571625198043428
	.quad	0x3fdd7573ef3ab984              # double 0.46029375421758112
	.quad	0x3ff99abff258de53              # double 1.600280710857892
	.quad	0x401bfdaeeeced0e6              # double 6.997737628338859
	.quad	0x40163a146dc1356c              # double 5.5567185544181079
	.quad	0x401423df805425b7              # double 5.0350322772368861
	.quad	0x4012cfba4f015f59              # double 4.7028591484630278
	.quad	0x40139369c94fa4b0              # double 4.8939582304821414
	.quad	0x3ff08b82ec5b53ff              # double 1.0340604050336422
	.quad	0x40055c7f9402ede9              # double 2.6701652110475504
	.quad	0x402014b663b10308              # double 8.0404540208414943
	.quad	0x4013cb6145cca3a2              # double 4.9486132532264566
	.quad	0x400a6adae6a4f4fc              # double 3.3021753329363701
	.quad	0x40036df5e6261d3a              # double 2.4286916714078446
	.quad	0x3fc441c44282a058              # double 0.15825703857012985
	.quad	0x40215f970a65a2e7              # double 8.6866992234294695
	.quad	0x4019c73b7c35ba10              # double 6.4445628555099717
	.quad	0x400447e8c2d637ba              # double 2.5351119252800034
	.quad	0x401a0ffb30cbeaf3              # double 6.5156066536389856
	.quad	0x40209cc3b76531d4              # double 8.3061806975391974
	.quad	0x3ff8d5303afb043e              # double 1.5520479492117967
	.quad	0x4019df01853e0c68              # double 6.4677792376634002
	.quad	0x3ffc95458fce65f9              # double 1.7864432923728357
	.quad	0x402237b3e5b43f20              # double 9.1087943823363844
	.quad	0x3fd7e7b69da1743c              # double 0.37351766008015708
	.quad	0x400598f0f9297ef4              # double 2.6996783700741336
	.quad	0x4017706c76fb8029              # double 5.8597887602809715
	.quad	0x4021cbce7304a28e              # double 8.8980594580800947
	.quad	0x40205917b6b8ffb1              # double 8.1740090466335875
	.quad	0x3fa47bc1147dce80              # double 0.040006669761081248
	.quad	0x3fe298239379f4a8              # double 0.58107165149671847
	.quad	0x402399b09402c99c              # double 9.8001753095057253
	.quad	0x3ffa3d557b2261ae              # double 1.6399740991529188
	.quad	0x40080ccbe400b47e              # double 3.0062482655253566
	.quad	0x401519e989dc8e64              # double 5.2753049412600355
	.quad	0x4017b2b2b1da6316              # double 5.9245097913306122
	.quad	0x4022289a68ba77ca              # double 9.0793030479070644
	.quad	0x4022d9fb7662766a              # double 9.4257466311639355
	.quad	0x4000625b814f8126              # double 2.048026094664368
	.quad	0x4023ee363e755899              # double 9.9652575987095577
	.quad	0x400c2ac7c5f2de23              # double 3.5208888497106883
	.quad	0x4016c4a073557cbc              # double 5.6920183201720498
	.quad	0x401c69738666812e              # double 7.1029797554077003
	.quad	0x3fe7d2289a568bee              # double 0.7444041265883905
	.quad	0x4019d41ba572c097              # double 6.4571367121972321
	.quad	0x3fef2b208abdcfd2              # double 0.97401454065265569
	.quad	0x4007f476f9ad90ea              # double 2.994367552384678
	.quad	0x40176ec4bf0fa814              # double 5.858172402697182
	.quad	0x4013a4bfec02e0cd              # double 4.9108883740193052
	.quad	0x4004c269ccd6b2ac              # double 2.5949283602734194
	.quad	0x4002d71c5e4c6894              # double 2.3550345770900751
	.quad	0x40197a825cd1d3d7              # double 6.369637918764929
	.quad	0x401ede23040f871a              # double 7.7169304499127751
	.quad	0x401370540ecd1020              # double 4.8596956551228061
	.quad	0x4017d44819768cc3              # double 5.9573062876326643
	.size	.L__constant_10x10xf64, 800

	.section	".note.GNU-stack","",@progbits
