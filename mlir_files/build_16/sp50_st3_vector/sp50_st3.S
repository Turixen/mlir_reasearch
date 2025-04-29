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
	addi	sp, sp, -160
	.cfi_def_cfa_offset 160
	sd	ra, 152(sp)                     # 8-byte Folded Spill
	sd	s0, 144(sp)                     # 8-byte Folded Spill
	sd	s1, 136(sp)                     # 8-byte Folded Spill
	sd	s2, 128(sp)                     # 8-byte Folded Spill
	sd	s3, 120(sp)                     # 8-byte Folded Spill
	sd	s4, 112(sp)                     # 8-byte Folded Spill
	sd	s5, 104(sp)                     # 8-byte Folded Spill
	sd	s6, 96(sp)                      # 8-byte Folded Spill
	sd	s7, 88(sp)                      # 8-byte Folded Spill
	sd	s8, 80(sp)                      # 8-byte Folded Spill
	sd	s9, 72(sp)                      # 8-byte Folded Spill
	sd	s10, 64(sp)                     # 8-byte Folded Spill
	sd	s11, 56(sp)                     # 8-byte Folded Spill
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
	csrr	a1, vlenb
	slli	a1, a1, 4
	sub	sp, sp, a1
	.cfi_escape 0x0f, 0x0e, 0x72, 0x00, 0x11, 0xa0, 0x01, 0x22, 0x11, 0x10, 0x92, 0xa2, 0x38, 0x00, 0x1e, 0x22 # sp + 160 + 16 * vlenb
	csrr	a1, vlenb
	slli	a1, a1, 4
	add	a1, a1, sp
	ld	s10, 272(a1)
	csrr	a1, vlenb
	slli	a1, a1, 4
	add	a1, a1, sp
	ld	a1, 368(a1)
	sd	a1, 32(sp)                      # 8-byte Folded Spill
	csrr	a1, vlenb
	slli	a1, a1, 4
	add	a1, a1, sp
	ld	a1, 360(a1)
	sd	a1, 24(sp)                      # 8-byte Folded Spill
	csrr	a1, vlenb
	slli	a1, a1, 4
	add	a1, a1, sp
	ld	a1, 352(a1)
	sd	a1, 16(sp)                      # 8-byte Folded Spill
	csrr	a1, vlenb
	slli	a1, a1, 4
	add	a1, a1, sp
	ld	t2, 344(a1)
	csrr	a1, vlenb
	slli	a1, a1, 4
	add	a1, a1, sp
	ld	t3, 336(a1)
	csrr	a1, vlenb
	slli	a1, a1, 4
	add	a1, a1, sp
	ld	s11, 328(a1)
	csrr	a1, vlenb
	slli	a1, a1, 4
	add	a1, a1, sp
	ld	t4, 320(a1)
	csrr	a1, vlenb
	slli	a1, a1, 4
	add	a1, a1, sp
	ld	s4, 192(a1)
	lwu	a1, 0(a2)
	lwu	a3, 4(a2)
	lwu	a4, 8(a2)
	lwu	a2, 12(a2)
	csrr	a5, vlenb
	li	t5, 10
	li	t6, 80
	li	s9, 9
	slli	a3, a3, 32
	or	s3, a3, a1
	slli	ra, a5, 4
	slli	a2, a2, 32
	or	s2, a2, a4
	slli	t1, a5, 1
	slli	t0, a5, 3
	j	.LBB0_2
.LBB0_1:                                #   in Loop: Header=BB0_2 Depth=1
	addi	s3, s3, 1
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #       Child Loop BB0_8 Depth 3
	bge	s3, s2, .LBB0_11
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	li	s5, 0
	li	s8, 0
	slli	a1, s3, 3
	add	a1, a1, a7
	lwu	a2, 4(a1)
	lwu	a1, 0(a1)
	slli	a2, a2, 32
	or	a1, a1, a2
	mul	s6, s3, t5
	mul	s7, a1, t6
	j	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=2
	addi	s8, s8, 1
	addi	s5, s5, 80
.LBB0_5:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_8 Depth 3
	blt	s9, s8, .LBB0_1
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=2
	li	s1, 0
	add	a1, s8, s6
	slli	a1, a1, 3
	add	a1, a1, s4
	fld	fa5, 0(a1)
	li	a2, 10
	mv	s0, s5
	mv	a4, s7
	j	.LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=3
	vsetvli	a6, zero, e32, m8, ta, ma
	vmv.v.x	v8, a1
	csrr	a1, vlenb
	slli	a1, a1, 3
	add	a1, a1, sp
	addi	a1, a1, 48
	vs8r.v	v8, (a1)                        # Unknown-size Folded Spill
	add	a1, s11, a4
	vsetvli	a5, zero, e64, m8, ta, ma
	vmv.v.i	v8, 0
	addi	a3, sp, 48
	vs8r.v	v8, (a3)                        # Unknown-size Folded Spill
	add	a5, s10, s0
	vsetvli	a3, zero, e32, m8, ta, ma
	vid.v	v24
	csrr	a3, vlenb
	slli	a3, a3, 3
	add	a3, a3, sp
	addi	a3, a3, 48
	vl8r.v	v0, (a3)                        # Unknown-size Folded Reload
	vsetvli	a3, zero, e32, m4, ta, ma
	vmslt.vv	v7, v24, v0
	csrr	a3, vlenb
	slli	a3, a3, 3
	add	a3, a3, sp
	addi	a3, a3, 48
	vl8r.v	v16, (a3)                       # Unknown-size Folded Reload
	vmslt.vv	v6, v28, v20
	vsetvli	zero, zero, e64, m8, ta, mu
	vmv.v.i	v16, 0
	add	a3, a1, t0
	vmv1r.v	v0, v6
	vle64.v	v8, (a3), v0.t
	csrr	a6, vlenb
	slli	a6, a6, 3
	add	a6, a6, sp
	addi	a6, a6, 48
	vs8r.v	v8, (a6)                        # Unknown-size Folded Spill
	vmv1r.v	v0, v7
	addi	a6, sp, 48
	vl8r.v	v24, (a6)                       # Unknown-size Folded Reload
	vle64.v	v24, (a1), v0.t
	vle64.v	v16, (a5), v0.t
	add	a5, a5, t0
	vmv.v.i	v8, 0
	vmv1r.v	v0, v6
	vle64.v	v8, (a5), v0.t
	vfmul.vf	v16, v16, fa5
	vfadd.vv	v16, v24, v16
	vfmul.vf	v8, v8, fa5
	csrr	a5, vlenb
	slli	a5, a5, 3
	add	a5, a5, sp
	addi	a5, a5, 48
	vl8r.v	v24, (a5)                       # Unknown-size Folded Reload
	vfadd.vv	v8, v24, v8
	vse64.v	v8, (a3), v0.t
	vmv1r.v	v0, v7
	vse64.v	v16, (a1), v0.t
	add	s1, s1, t1
	add	a4, a4, ra
	add	s0, s0, ra
	sub	a2, a2, t1
.LBB0_8:                                #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	blt	s9, s1, .LBB0_4
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=3
	mv	a1, a2
	blt	a2, t1, .LBB0_7
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=3
	mv	a1, t1
	j	.LBB0_7
.LBB0_11:
	sd	t4, 0(a0)
	sd	s11, 8(a0)
	sd	t3, 16(a0)
	sd	t2, 24(a0)
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	sd	a1, 32(a0)
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	sd	a1, 40(a0)
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	sd	a1, 48(a0)
	csrr	a0, vlenb
	slli	a0, a0, 4
	add	sp, sp, a0
	.cfi_def_cfa sp, 160
	ld	ra, 152(sp)                     # 8-byte Folded Reload
	ld	s0, 144(sp)                     # 8-byte Folded Reload
	ld	s1, 136(sp)                     # 8-byte Folded Reload
	ld	s2, 128(sp)                     # 8-byte Folded Reload
	ld	s3, 120(sp)                     # 8-byte Folded Reload
	ld	s4, 112(sp)                     # 8-byte Folded Reload
	ld	s5, 104(sp)                     # 8-byte Folded Reload
	ld	s6, 96(sp)                      # 8-byte Folded Reload
	ld	s7, 88(sp)                      # 8-byte Folded Reload
	ld	s8, 80(sp)                      # 8-byte Folded Reload
	ld	s9, 72(sp)                      # 8-byte Folded Reload
	ld	s10, 64(sp)                     # 8-byte Folded Reload
	ld	s11, 56(sp)                     # 8-byte Folded Reload
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
	addi	sp, sp, 160
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
	.quad	50                              # 0x32
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
	lui	a6, %hi(.L__constant_50xindex)
	addi	a6, a6, %lo(.L__constant_50xindex)
	lui	a7, %hi(.L__constant_50xf64)
	addi	a7, a7, %lo(.L__constant_50xf64)
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
	addi	a1, a1, 512
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
	.quad	0x3ffa9a5dbde563dc              # double 1.6626870553793571
	.quad	0x4020786f48a3dc40              # double 8.2352240276360362
	.quad	0x3ff782701c067b62              # double 1.4693451971758908
	.quad	0x40177f87fe84a393              # double 5.8745422142464063
	.quad	0x40116c245f1cb72c              # double 4.3556074963833389
	.quad	0x4001830ac8e7c1e4              # double 2.1889854140974752
	.quad	0x4021661c132b3ee5              # double 8.6994329443254603
	.quad	0x3fe0dc8ac3e1ee6c              # double 0.52692163713750295
	.quad	0x4023137ffc91d256              # double 9.5380858352665818
	.quad	0x4019731792caf201              # double 6.3623946129196165
	.quad	0x40124005ecc9f2c8              # double 4.5625226019153118
	.quad	0x4012380276a9965e              # double 4.5546968976028364
	.quad	0x3ff4e5287740a913              # double 1.3059467943481351
	.quad	0x3ff53752769c3c8a              # double 1.3260063775267406
	.quad	0x3fe451b8e6782346              # double 0.63497586263211114
	.quad	0x3feb94c8d0929138              # double 0.86191216217824884
	.quad	0x40150f9a2688169a              # double 5.2652364750444125
	.quad	0x4020e274322420f5              # double 8.4422927540876831
	.quad	0x40239267207d3806              # double 9.7859430458884269
	.quad	0x400f22b0a07cbd42              # double 3.8919384515826616
	.quad	0x3fe2577222c59aba              # double 0.57317454139123147
	.quad	0x4004633bde86cb3c              # double 2.5484540352712468
	.quad	0x3feee7110e5e6fa8              # double 0.96570637518333501
	.quad	0x3ff6d7d1bd233a52              # double 1.4276902568996275
	.quad	0x402222b6ee836a93              # double 9.0678019080562873
	.quad	0x400df231926b028e              # double 3.7432586134821753
	.quad	0x3ff02e3b476e09a4              # double 1.0112870016315378
	.quad	0x402291697f660994              # double 9.2840080081994429
	.quad	0x4007c9d99d4ad0ca              # double 2.9735595978218941
	.quad	0x3f86fbdda6e54480              # double 0.011222583442448419
	.quad	0x40080e09adb18848              # double 3.00685439775501
	.quad	0x4012411aa8182ac4              # double 4.5635782494306945
	.quad	0x401a8ffc9df4da19              # double 6.6406120949455039
	.quad	0x3fc635bcb870e4d0              # double 0.17351492887409004
	.quad	0x4002843713dbde91              # double 2.3145581771348778
	.quad	0x4022a32f7a82df42              # double 9.3187216076618178
	.quad	0x401041858c9e571a              # double 4.0639860126155103
	.quad	0x400ecf23667c03f4              # double 3.8511417395206937
	.quad	0x4020bfea5369308f              # double 8.3748346391587614
	.quad	0x400dec5ea46ba4f6              # double 3.740414890799566
	.quad	0x4018e05002beab40              # double 6.2190552166819657
	.quad	0x401486e0980e3220              # double 5.1317161329903058
	.quad	0x401c0bd50e0274b0              # double 7.0115549267767818
	.quad	0x40076a15542678ce              # double 2.9267984937897387
	.quad	0x3fe8bfff59fede32              # double 0.77343719079266848
	.quad	0x3fe9a83fb1464846              # double 0.80178818344052938
	.quad	0x3ff665ad8a6ee638              # double 1.3998237044855966
	.quad	0x402151a9e857c247              # double 8.6594994170310553
	.quad	0x4018c77c2fd6c565              # double 6.1948096728168354
	.quad	0x400f702d4b3ba8fa              # double 3.9297738912183577
	.quad	0x4005d3a53d9fed22              # double 2.7283425154142984
	.quad	0x400aa850861a9910              # double 3.3321848370425258
	.quad	0x3ffa9481bd1b1f78              # double 1.6612565409613733
	.quad	0x40076fb177fb7d0e              # double 2.9295377133963774
	.quad	0x3fee26f2dad74bac              # double 0.94225447409040929
	.quad	0x3fb9aaa335cbd300              # double 0.10025997222312455
	.quad	0x40133113ac345d0e              # double 4.7979266077957288
	.quad	0x401b3408753c67ec              # double 6.8008135145300734
	.quad	0x3ffc7e10186f870f              # double 1.7807770685689694
	.quad	0x4020d26bbb13834f              # double 8.4109781705207336
	.quad	0x401da74d0aec6310              # double 7.4133798319605972
	.quad	0x401de0359080cbee              # double 7.4689543322192389
	.quad	0x40119da1945fb962              # double 4.4039366897035013
	.quad	0x3f9f24875c17cb00              # double 0.030412783618838368
	.quad	0x401ca6afd6017edc              # double 7.162780135957032
	.quad	0x401fe353a44f9658              # double 7.971998755796072
	.quad	0x40029c2821c3fdbc              # double 2.3262484205185654
	.quad	0x401293b9c77a3c4e              # double 4.6442633789402645
	.quad	0x3fe3f081902310ca              # double 0.62310865546944538
	.quad	0x4013269e3d264f70              # double 4.7877130083687547
	.quad	0x3fe027cb5a796df2              # double 0.50485770865219437
	.quad	0x401474a191a55700              # double 5.1138975865521843
	.quad	0x3fbc2d7d57837e30              # double 0.11006911646426754
	.quad	0x4012bf8af0955c9e              # double 4.687053450695343
	.quad	0x401c5e9d29652986              # double 7.0923963993067272
	.quad	0x4021769401156c53              # double 8.7315979326869293
	.quad	0x401ffbaf53e989fe              # double 7.9957860099116242
	.quad	0x4023a36588d0dfc4              # double 9.8191340212796447
	.quad	0x3fd61098abf463ec              # double 0.3447629622692705
	.quad	0x4013386242b30a71              # double 4.8050623342302154
	.quad	0x40191d89a00ac539              # double 6.2788453108381015
	.quad	0x4015fb98792b3a28              # double 5.4956988270410321
	.quad	0x40104229870773f4              # double 4.0646115396784701
	.quad	0x3ffeaa012ecf8909              # double 1.9165050343077061
	.quad	0x3ff735669a64adfa              # double 1.4505373030650603
	.quad	0x400d3d11e3955720              # double 3.654819276804929
	.quad	0x400ff547920eff32              # double 3.9947654162241628
	.quad	0x3ff03fc5999255e6              # double 1.0155693053142101
	.quad	0x401e9269c8298afa              # double 7.6429816508632431
	.quad	0x4018a5f656115930              # double 6.1620725105370155
	.quad	0x40212589013e6784              # double 8.573310889117927
	.quad	0x401ce7ba0a8f7a5f              # double 7.2262956285545377
	.quad	0x401aa286157d4823              # double 6.6587146146503384
	.quad	0x3ff362a2be97199b              # double 1.2115809864932092
	.quad	0x401bd3f97a38c40e              # double 6.957006368365013
	.quad	0x4020656ae47eb330              # double 8.1980811504996325
	.quad	0x401aac28b6e3ac88              # double 6.6681240631543304
	.quad	0x400a6d57cc07685a              # double 3.3033901157150867
	.quad	0x40123bbeafb4a147              # double 4.5583445981977269
	.quad	0x4015d1fd6071f18f              # double 5.4550681180520675
	.size	.L__constant_10x10xf64, 800

	.type	.L__constant_50xindex,@object   # @__constant_50xindex
	.p2align	6, 0x0
.L__constant_50xindex:
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.size	.L__constant_50xindex, 400

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.size	.L__constant_11xindex, 88

	.type	.L__constant_50xf64,@object     # @__constant_50xf64
	.p2align	6, 0x0
.L__constant_50xf64:
	.quad	0x40214b3c81908e58              # double 8.6469459999999998
	.quad	0x401cbba55d1c3ac9              # double 7.1832479999999999
	.quad	0x3fb54185058dde7a              # double 0.083030999999999993
	.quad	0x4017e70a3d70a3d7              # double 5.975625
	.quad	0x4006e2f48c2e770c              # double 2.8608180000000001
	.quad	0x4003784ec636b096              # double 2.4337439999999999
	.quad	0x40125e0bd44998d0              # double 4.5918419999999998
	.quad	0x401908fcd67fd3f6              # double 6.2587770000000003
	.quad	0x4022f55d5f56a7ad              # double 9.4792280000000008
	.quad	0x3fe9bda72a7bd48d              # double 0.80440100000000003
	.quad	0x4017e1904b3c3e75              # double 5.9702770000000003
	.quad	0x3fb7d9988d2a1f8e              # double 0.093163999999999996
	.quad	0x3fb32873bc903ea7              # double 0.074836
	.quad	0x3fd1c98a222d5172              # double 0.27792600000000001
	.quad	0x400f0c63f141205c              # double 3.8810500000000001
	.quad	0x40232d5bee3d5fdd              # double 9.5885920000000002
	.quad	0x40208475818c5c9a              # double 8.2587089999999996
	.quad	0x4016b805a2d72ffd              # double 5.6797089999999999
	.quad	0x3feb13708aac96cc              # double 0.84612299999999995
	.quad	0x4018f35e310dbf05              # double 6.2376639999999997
	.quad	0x400e92e59af9ebea              # double 3.8217270000000001
	.quad	0x400ab2c7325918a0              # double 3.337294
	.quad	0x4006cec0f88333fd              # double 2.8509540000000002
	.quad	0x401f56bf01322f27              # double 7.8347129999999998
	.quad	0x3ff45ca9ef5232d3              # double 1.2726230000000001
	.quad	0x3ff677e0ac7da1ec              # double 1.4042669999999999
	.quad	0x4001b1b584b1ab08              # double 2.2117719999999998
	.quad	0x401d0b7d84901d19              # double 7.2612209999999999
	.quad	0x3ff1dae70c1333b9              # double 1.1159429999999999
	.quad	0x401f5a469d7342ee              # double 7.8381600000000002
	.quad	0x4015bde0d66f0cfe              # double 5.4354279999999999
	.quad	0x4000998958d9b5e9              # double 2.0749689999999998
	.quad	0x401931fab96f21f7              # double 6.2988080000000002
	.quad	0x3fd91294573a7979              # double 0.39175900000000002
	.quad	0x400cb2ccf6be37df              # double 3.5873050000000002
	.quad	0x3ffb26afcce1c582              # double 1.6969449999999999
	.quad	0x4012e9b38d60a633              # double 4.728224
	.quad	0x4008f1361dc93ea3              # double 3.1177790000000001
	.quad	0x40109549f94855da              # double 4.1457899999999999
	.quad	0x40224c37a3db3bfb              # double 9.1488619999999994
	.quad	0x40023be4473cd573              # double 2.2792439999999998
	.quad	0x400dfad5bee3d5fe              # double 3.7474780000000001
	.quad	0x3ff4a3315d701d9f              # double 1.2898419999999999
	.quad	0x40237cafd5454153              # double 9.7435290000000005
	.quad	0x400fb08893b7d849              # double 3.961198
	.quad	0x40200c1ca3a4b557              # double 8.0236560000000008
	.quad	0x4023559817b95a29              # double 9.6671759999999995
	.quad	0x402199fc08fa7a85              # double 8.800751
	.quad	0x3ff967c393682731              # double 1.587833
	.quad	0x3fec892ab68cef67              # double 0.89174399999999998
	.size	.L__constant_50xf64, 400

	.section	".note.GNU-stack","",@progbits
