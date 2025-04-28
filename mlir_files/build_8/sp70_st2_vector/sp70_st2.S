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
	.quad	30                              # 0x1e
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
	lui	a6, %hi(.L__constant_30xindex)
	addi	a6, a6, %lo(.L__constant_30xindex)
	lui	a7, %hi(.L__constant_30xf64)
	addi	a7, a7, %lo(.L__constant_30xf64)
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
	addi	a1, a1, -512
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
	.quad	0x3fce73b799adf6a0              # double 0.23790640834697729
	.quad	0x40225664891dc705              # double 9.1687357758378401
	.quad	0x4013b864a80ec4ca              # double 4.930071473981295
	.quad	0x4023de2f4105d0f5              # double 9.9339542693710232
	.quad	0x400ab32110bfeb26              # double 3.3374654110497373
	.quad	0x400289f9cc9e03e7              # double 2.3173709855768609
	.quad	0x3fd9b862230a8c08              # double 0.40187886640541182
	.quad	0x40223e820e112762              # double 9.1220859905185456
	.quad	0x3fe6d903eef9b35c              # double 0.71399113345033127
	.quad	0x40203efba55dbedb              # double 8.1230136563239537
	.quad	0x4012b9630ac5f835              # double 4.6810418780642538
	.quad	0x401c0eecfcaaf442              # double 7.0145759085981485
	.quad	0x40214dfcf2a977a6              # double 8.652320464312492
	.quad	0x4023c6a6f61e727b              # double 9.8879925644080142
	.quad	0x4013c9d71e9847a2              # double 4.9471096783107971
	.quad	0x401f7ca2f42b98e8              # double 7.8717153693780588
	.quad	0x40203a3e04dfeb3a              # double 8.1137544177378125
	.quad	0x3fe1428c3bb83d80              # double 0.53937350906373638
	.quad	0x4005bde9dcb27845              # double 2.7177312128033315
	.quad	0x3fe08f17e1161ab4              # double 0.51746744119812726
	.quad	0x40153ed98740d0c5              # double 5.3113766797361608
	.quad	0x4023c86b644be90d              # double 9.8914443342842108
	.quad	0x3fff860b2a322b31              # double 1.9702254913597239
	.quad	0x40015e22b7f03f13              # double 2.1709646578018549
	.quad	0x4022b8be2d053d79              # double 9.360825926675476
	.quad	0x401154469dad43c1              # double 4.332300628376232
	.quad	0x401f8e968ff3b059              # double 7.8892462246404528
	.quad	0x3ffe6bb1a2d719fe              # double 1.9012924538561715
	.quad	0x3ff24e578168bc97              # double 1.1441264205020951
	.quad	0x402109cafe711bb6              # double 8.5191268456527318
	.quad	0x4021d84ddf497ac9              # double 8.9224691178509534
	.quad	0x401103c00399784e              # double 4.2536621630116098
	.quad	0x400798214ab916d3              # double 2.9492822492346504
	.quad	0x40182a46253e6034              # double 6.041283208782307
	.quad	0x4017799b679c91ee              # double 5.8687568845093505
	.quad	0x4019c21b6c883887              # double 6.4395577390806755
	.quad	0x401db811769b287e              # double 7.4297541172219308
	.quad	0x40043d56ffb6a66e              # double 2.5299510934462921
	.quad	0x4005b0be79f0e477              # double 2.7113008047713794
	.quad	0x401f05f4a94cfe39              # double 7.75581612141064
	.quad	0x401bff6be39fe99d              # double 6.9994350019791485
	.quad	0x4001eccf08ef659a              # double 2.2406292627390032
	.quad	0x40131780eb74c540              # double 4.7729527273198187
	.quad	0x4010231422e26a16              # double 4.0342565012638456
	.quad	0x3ffc68acf417088d              # double 1.7755555662884348
	.quad	0x3fe7a263b0f685ce              # double 0.73857292712289691
	.quad	0x3ff5d30516bd0ad4              # double 1.3640185249538961
	.quad	0x401b8fe494321082              # double 6.8905203967625557
	.quad	0x3fede90e159cd3e2              # double 0.93469909878933444
	.quad	0x40046c14587e9c78              # double 2.5527731813086199
	.quad	0x4012203893e5efe1              # double 4.531465826901667
	.quad	0x401567469e40f3b1              # double 5.3508553244727617
	.quad	0x40203c3873b3412a              # double 8.1176181942288004
	.quad	0x3fe73a42d369a4b2              # double 0.72586194316422437
	.quad	0x401030109c35d17c              # double 4.0469383628700335
	.quad	0x401ab947d41a9cb6              # double 6.6809380666010636
	.quad	0x3ff8c43dd194cfcd              # double 1.5479105173844687
	.quad	0x4017915e18ccb858              # double 5.8919605135871151
	.quad	0x401c44db0fb92c28              # double 7.067241902997047
	.quad	0x401481022f489038              # double 5.1259848964728505
	.quad	0x3fd9a1fae859ee50              # double 0.40051148119502944
	.quad	0x40028982c0283fdc              # double 2.3171439182551534
	.quad	0x4012c965994cc685              # double 4.6966766312704111
	.quad	0x3ffcf9ca46377abd              # double 1.8109839194145672
	.quad	0x401cc19313eb677e              # double 7.1890376198224413
	.quad	0x401b55385ae58efc              # double 6.8332227900134477
	.quad	0x3ff66447cde4dcb3              # double 1.399482540391358
	.quad	0x401251a8e81aab05              # double 4.5797458902623065
	.quad	0x4015a2a28d28b9a6              # double 5.4088232093912776
	.quad	0x3ffa1add6ac2fe9e              # double 1.6315588159922423
	.quad	0x3ff48ed3fff267c5              # double 1.2848701475072499
	.quad	0x3fd28fc69e51b63c              # double 0.29002538166864489
	.quad	0x401bac001a1c4a89              # double 6.9179691390769529
	.quad	0x4023d95e1b804087              # double 9.9245461076791468
	.quad	0x400601e8ef196f00              # double 2.7509325675617902
	.quad	0x401ee00de3cf97e8              # double 7.7188029857115694
	.quad	0x401ca86bedf3053a              # double 7.1644742183282748
	.quad	0x401e1a4b2fc67caa              # double 7.5256774392029602
	.quad	0x401938c1c88a0878              # double 6.3054267248390872
	.quad	0x401d96a8be96ae3c              # double 7.3971280841320173
	.quad	0x4019b9b779b8fa49              # double 6.4313639659072317
	.quad	0x401317556c06e833              # double 4.772786796495029
	.quad	0x4002d855cb17b72c              # double 2.3556323877918626
	.quad	0x40109a7d6b609ba6              # double 4.1508690622057767
	.quad	0x4016c4e49ce34015              # double 5.6922783387854183
	.quad	0x401995fe703a20ab              # double 6.3964784179189946
	.quad	0x400348650b261a28              # double 2.4103489752772198
	.quad	0x401c4cc49967254c              # double 7.0749687165455946
	.quad	0x40077e8e6b3169a0              # double 2.9367950796560791
	.quad	0x3fef41fdcef6aa2c              # double 0.97680559561314828
	.quad	0x4022074cbfaf2ac1              # double 9.0142574216200746
	.quad	0x400d0cf3d3f959ed              # double 3.6313244400473565
	.quad	0x4022af01c378757b              # double 9.3418103298706594
	.quad	0x401b2e56bccfad18              # double 6.795252752471491
	.quad	0x4017ecba9b4cf360              # double 5.9811805978505106
	.quad	0x40049ac54fbb7404              # double 2.575571654232137
	.quad	0x400394ef7c393390              # double 2.4477224068600165
	.quad	0x400ac14bbdcb3268              # double 3.3443827464710019
	.quad	0x402309b31afb1fe7              # double 9.5189445907162291
	.quad	0x3fc95d81fedf2ef0              # double 0.19816613144791217
	.size	.L__constant_10x10xf64, 800

	.type	.L__constant_30xindex,@object   # @__constant_30xindex
	.p2align	6, 0x0
.L__constant_30xindex:
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.size	.L__constant_30xindex, 240

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	30                              # 0x1e
	.size	.L__constant_11xindex, 88

	.type	.L__constant_30xf64,@object     # @__constant_30xf64
	.p2align	6, 0x0
.L__constant_30xf64:
	.quad	0x401aec5d63886595              # double 6.7308250000000003
	.quad	0x4021d7c6327ed84d              # double 8.9214339999999996
	.quad	0x4004c748e4755ffe              # double 2.5973069999999998
	.quad	0x400a13fc86cebbba              # double 3.2597589999999999
	.quad	0x4017f4ccee5abc0e              # double 5.9890629999999998
	.quad	0x3ff35e75360d0247              # double 1.210561
	.quad	0x400df30be0ded289              # double 3.7436750000000001
	.quad	0x4018ac393682730c              # double 6.1681869999999996
	.quad	0x401c98b439581062              # double 7.1491249999999997
	.quad	0x3ff532b239a38fbd              # double 1.3248770000000001
	.quad	0x40060ab8a5ce5b42              # double 2.7552349999999999
	.quad	0x3ff2e8dfbd6a593a              # double 1.181854
	.quad	0x40204474b838c112              # double 8.1337030000000006
	.quad	0x3ff77cb81733226c              # double 1.4679489999999999
	.quad	0x401f5fbfc6540cc8              # double 7.8435050000000003
	.quad	0x400a7cb3e5753a3f              # double 3.3108900000000001
	.quad	0x40226751efb6dca0              # double 9.2017969999999991
	.quad	0x40037daceee0f3cb              # double 2.4363649999999999
	.quad	0x401871e9af5ba2be              # double 6.111243
	.quad	0x401982c4d65e4606              # double 6.3777039999999996
	.quad	0x400229c0229a5ebb              # double 2.2703859999999998
	.quad	0x40239e2cdc011d36              # double 9.8089359999999992
	.quad	0x40225a5d6bebe165              # double 9.1764939999999999
	.quad	0x401e261804d98394              # double 7.5372009999999996
	.quad	0x3fea04790b849881              # double 0.81304600000000005
	.quad	0x400a3dcdf6987831              # double 3.2801779999999998
	.quad	0x401a835bd512ec6c              # double 6.6282800000000002
	.quad	0x400a8221426fe719              # double 3.3135400000000002
	.quad	0x3ff71d2178f68be3              # double 1.444612
	.quad	0x3fe4dcdf69878317              # double 0.65196200000000004
	.size	.L__constant_30xf64, 240

	.section	".note.GNU-stack","",@progbits
