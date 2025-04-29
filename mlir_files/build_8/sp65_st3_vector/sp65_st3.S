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
	.quad	0x402218b6e2d67465              # double 9.0482703100953561
	.quad	0x3ffa7ffc3b7631e0              # double 1.656246406814823
	.quad	0x401b88122440e721              # double 6.8828817047704272
	.quad	0x4020bbc58a73c480              # double 8.3667414919202656
	.quad	0x4016123983fbad5e              # double 5.517797529445799
	.quad	0x4007b1960e5a5a18              # double 2.9617119904826374
	.quad	0x4016e35bed92dada              # double 5.7220303650744544
	.quad	0x401542a1dbc40e6d              # double 5.3150705660260487
	.quad	0x3fe777e9dfecb5f0              # double 0.73338788733752658
	.quad	0x40187e1014d4883e              # double 6.1231082205504759
	.quad	0x4003c3462793e710              # double 2.470348653031472
	.quad	0x401e42f4129ad06a              # double 7.5653841883650816
	.quad	0x400fbe0bf5070a04              # double 3.9677962439320726
	.quad	0x400bb88ccec8c038              # double 3.4651123194708155
	.quad	0x4020fb5aad741754              # double 8.4909261898243713
	.quad	0x4020e610e6700d1a              # double 8.4493476878911231
	.quad	0x400a62d7dd659fd0              # double 3.2982632919920221
	.quad	0x3fb37cb0949037e0              # double 0.076121364851331474
	.quad	0x40135fda843e7f66              # double 4.8436070120950259
	.quad	0x3ff0bed163dd0136              # double 1.0465864087019106
	.quad	0x3fee6daa06530d68              # double 0.95088673815955093
	.quad	0x4020fad4fc92ac97              # double 8.4899062089009885
	.quad	0x40121c1648140804              # double 4.5274287473894255
	.quad	0x4019e8b7fa97169d              # double 6.4772643236844063
	.quad	0x40185d3398039ce6              # double 6.0910171272473459
	.quad	0x401cb276a8363c4b              # double 7.174280765829347
	.quad	0x401bb5e24d3957c4              # double 6.9276210848092354
	.quad	0x402152af66e80063              # double 8.6614944608883828
	.quad	0x3ff96511f0e916ac              # double 1.5871753130499355
	.quad	0x40179ecd54c0eded              # double 5.9050801508669624
	.quad	0x40205346baec1268              # double 8.1626490033315378
	.quad	0x4020757259083392              # double 8.229388029338029
	.quad	0x40023affb3f3da4c              # double 2.2788080271523423
	.quad	0x4006d3dec59b5708              # double 2.85345224743185
	.quad	0x401a4543012e2ef8              # double 6.5676384148061899
	.quad	0x401c60969ad069f4              # double 7.094324511499952
	.quad	0x402117153a7f3426              # double 8.545083835628315
	.quad	0x40077352a4fa380a              # double 2.931309975515437
	.quad	0x4013b6c7962eddd2              # double 4.928495737658027
	.quad	0x4015b8f430b65249              # double 5.4306190120010536
	.quad	0x401d6f0a2865572a              # double 7.3584371864178966
	.quad	0x40127c1171fe3882              # double 4.6211602984823248
	.quad	0x4021d4000e1be3d3              # double 8.9140629204793296
	.quad	0x4017c228c103b48d              # double 5.9396085890304109
	.quad	0x400d06a6ee90c81b              # double 3.6282480848249299
	.quad	0x401ad2b16722c0c7              # double 6.7057548632585116
	.quad	0x401dbdf7f732f7cc              # double 7.4355162262781498
	.quad	0x4019e70922b24dde              # double 6.4756207867935398
	.quad	0x401a44ff0113c70e              # double 6.5673790138551009
	.quad	0x40238a32fb71f5e8              # double 9.7699202133762383
	.quad	0x4010f5fda927e103              # double 4.2402254515257054
	.quad	0x4018272afb51b004              # double 6.0382498997314578
	.quad	0x4000bee5d5642d18              # double 2.0932118102260908
	.quad	0x4008753f6396efe4              # double 3.0572498112141933
	.quad	0x4016011510d340e5              # double 5.501056921857729
	.quad	0x40191a02854240b3              # double 6.2754002401053866
	.quad	0x3ff49fda0ab88c0e              # double 1.2890263003143931
	.quad	0x4017b3d0b5c1d81d              # double 5.9256008529246431
	.quad	0x3f8a7a0e46034b00              # double 0.012928115378973981
	.quad	0x400a3812b6ba0f3e              # double 3.2773794436961046
	.quad	0x401526100bde4a21              # double 5.2871705870079788
	.quad	0x401065788e5cef0e              # double 4.0990926975462241
	.quad	0x4013a7ab5ee0aee1              # double 4.913739664519853
	.quad	0x4009b37cd10f0c51              # double 3.2126404125897712
	.quad	0x40116cc8998e11aa              # double 4.3562339776002919
	.quad	0x3fe42570c9482ede              # double 0.62957038224109474
	.quad	0x40232d6e026248ff              # double 9.5887299294449785
	.quad	0x4006debca96674e7              # double 2.8587582811729706
	.quad	0x400297a465ca935a              # double 2.3240440323301472
	.quad	0x400bc167fdc23890              # double 3.4694366288086442
	.quad	0x4013a62b03730e83              # double 4.912273458383086
	.quad	0x401ec145ff2d90f9              # double 7.6887435790597402
	.quad	0x3fd24ea6c6d6a574              # double 0.28605050485437933
	.quad	0x3ff76140a5368be9              # double 1.4612432912479056
	.quad	0x400732daf226d457              # double 2.8998316686725434
	.quad	0x3ff25b05822eeb64              # double 1.1472220502170893
	.quad	0x4005d46265b45172              # double 2.7287033029226047
	.quad	0x4008daf7b86b0034              # double 3.1069178016332675
	.quad	0x401850190e50063a              # double 6.078220580705926
	.quad	0x401d8847b2a73bab              # double 7.3830860056467982
	.quad	0x3ff44973293bc01e              # double 1.2679320917777726
	.quad	0x3fe11dc3de939b00              # double 0.53488343688954387
	.quad	0x3fe10edd5038b11e              # double 0.53306451481106243
	.quad	0x402387c4a8eb06c5              # double 9.7651722704789651
	.quad	0x4002f07175869d36              # double 2.3674039060312237
	.quad	0x4010784e2e3622ab              # double 4.1174857349912299
	.quad	0x400ff8629e5e600a              # double 3.9962818501044284
	.quad	0x4017a4db2a13319e              # double 5.9109922956671692
	.quad	0x402359f3ebd84701              # double 9.6756890965948532
	.quad	0x401ae6773fad7fc2              # double 6.7250642728467387
	.quad	0x401d2c17323ae500              # double 7.293057236523282
	.quad	0x3ff846c745134550              # double 1.5172798822644218
	.quad	0x3fc7a499f1e14a28              # double 0.18471073446797104
	.quad	0x4015f9248ce9f0de              # double 5.4933034913812815
	.quad	0x3feb96e48955e266              # double 0.86216952155434678
	.quad	0x3ff0f7b7df7f6ac1              # double 1.0604780893688004
	.quad	0x401634d119ddcfd4              # double 5.5515789071686932
	.quad	0x3ff1cabf9daf0a35              # double 1.1119991454621758
	.quad	0x3ff2f82b50b7cd9e              # double 1.1855881836935178
	.quad	0x4023adc30b4d47e3              # double 9.83937869375581
	.size	.L__constant_10x10xf64, 800

	.type	.L__constant_35xindex,@object   # @__constant_35xindex
	.p2align	6, 0x0
.L__constant_35xindex:
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	1                               # 0x1
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	1                               # 0x1
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	7                               # 0x7
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.size	.L__constant_35xindex, 280

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.size	.L__constant_11xindex, 88

	.type	.L__constant_35xf64,@object     # @__constant_35xf64
	.p2align	6, 0x0
.L__constant_35xf64:
	.quad	0x4020c0a569b17482              # double 8.3762620000000005
	.quad	0x401d6d1958969a0b              # double 7.3565420000000001
	.quad	0x4015f570c564f97f              # double 5.4896880000000001
	.quad	0x3fda6e115592d98c              # double 0.412968
	.quad	0x4020d6703afb7e91              # double 8.418825
	.quad	0x400caf8d716d2aa6              # double 3.5857190000000001
	.quad	0x400812d44dca8e2e              # double 3.0091939999999999
	.quad	0x4023d21ab4b72c52              # double 9.9103600000000007
	.quad	0x4018082f944241c4              # double 6.0079940000000001
	.quad	0x40052ba1f4b1ee24              # double 2.6463049999999999
	.quad	0x3ff0f7e80389f83c              # double 1.060524
	.quad	0x4007aa2ec28b2a6b              # double 2.958097
	.quad	0x400b25f6ba0620ab              # double 3.3935369999999998
	.quad	0x40104fede97d06bc              # double 4.0780560000000001
	.quad	0x40166e3e29307af2              # double 5.6076589999999999
	.quad	0x402267a95c853c15              # double 9.2024640000000009
	.quad	0x402063838c111ada              # double 8.1943629999999992
	.quad	0x4007380b242070b9              # double 2.9023650000000001
	.quad	0x4021ad8c08b75ea6              # double 8.8389589999999991
	.quad	0x3ff5301a79fec99f              # double 1.324244
	.quad	0x4002062ed352220c              # double 2.2530190000000001
	.quad	0x3ffee0bd44998d04              # double 1.9298679999999999
	.quad	0x400a9418d6909aed              # double 3.3223129999999998
	.quad	0x4004db9389b52008              # double 2.6072150000000001
	.quad	0x402150ba40d90e24              # double 8.6576710000000005
	.quad	0x40032cd63cb81733              # double 2.3968929999999999
	.quad	0x3ff91dd1a21ea359              # double 1.56978
	.quad	0x40222a641b328b6e              # double 9.0827950000000008
	.quad	0x40142064ece9a2c6              # double 5.0316349999999996
	.quad	0x4012c67125dd095b              # double 4.693791
	.quad	0x401d3093d9663843              # double 7.2974389999999998
	.quad	0x3ff0606d938151a4              # double 1.023542
	.quad	0x401f5f8ec0f88334              # double 7.843318
	.quad	0x401d716db0dd82fd              # double 7.3607699999999996
	.quad	0x4007f796bfca85cb              # double 2.9958930000000001
	.size	.L__constant_35xf64, 280

	.section	".note.GNU-stack","",@progbits
