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
	.quad	15                              # 0xf
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
	lui	a6, %hi(.L__constant_15xindex)
	addi	a6, a6, %lo(.L__constant_15xindex)
	lui	a7, %hi(.L__constant_15xf64)
	addi	a7, a7, %lo(.L__constant_15xf64)
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
	addi	a1, a1, -256
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
	.quad	0x400572648dd5bad4              # double 2.6808558541155012
	.quad	0x4016e3ed46f4b870              # double 5.7225848280778422
	.quad	0x40185dab10124672              # double 6.0914728652147563
	.quad	0x40165c6c86cc5725              # double 5.5902577459544647
	.quad	0x40006a693211e5a2              # double 2.0519584571563465
	.quad	0x40173b47797dfe90              # double 5.8078898413802023
	.quad	0x40238f69c4845a18              # double 9.7801038180887616
	.quad	0x401ab40954ec344a              # double 6.675816847721828
	.quad	0x40202aff80ea2c03              # double 8.0839805875639339
	.quad	0x400e82aa13a0c1ba              # double 3.8138009580072465
	.quad	0x401544283155398c              # double 5.3165595730082593
	.quad	0x4021b9bbc0014087              # double 8.8627605439690011
	.quad	0x3ff9551bcf61ebb8              # double 1.5832784748915696
	.quad	0x4017c0370d65f43a              # double 5.9377100079992093
	.quad	0x4023e3cb894e7dcd              # double 9.9449122341456135
	.quad	0x4008496206befdd8              # double 3.0358315016780857
	.quad	0x40124538a70c3cf8              # double 4.567598924753149
	.quad	0x4020b95052d0d7a2              # double 8.3619409446653812
	.quad	0x401c90ca864a31cd              # double 7.1413975699219465
	.quad	0x40078e82e5209ad4              # double 2.9445855999541468
	.quad	0x40223fa43b21295b              # double 9.1242998579006578
	.quad	0x4010a573994e2362              # double 4.1615737871114522
	.quad	0x4023c2a1237dcf6e              # double 9.8801356402470581
	.quad	0x3ff7627c6cf9f792              # double 1.4615444428340862
	.quad	0x4003ed699ac53ec6              # double 2.4909240809864484
	.quad	0x400bd68f4eaf9042              # double 3.4797655246093493
	.quad	0x3ff02cc3c8934b3a              # double 1.0109289011931666
	.quad	0x401e174211dd02ce              # double 7.5227129737038023
	.quad	0x4018d77899e1ac5b              # double 6.2104209941854505
	.quad	0x4015a9065de2795d              # double 5.415063349674111
	.quad	0x4012bffea0b42622              # double 4.6874947652773091
	.quad	0x40219210f8f3ce86              # double 8.7852857396712913
	.quad	0x4014910ef0682a96              # double 5.1416585506036849
	.quad	0x40234e677ad1dbc9              # double 9.653133237950799
	.quad	0x400e80ed1d1b4b02              # double 3.8129522584871447
	.quad	0x3fdbb77cb3efb480              # double 0.43307416507634144
	.quad	0x3ff78365b55df970              # double 1.469579418626008
	.quad	0x401410d81a1ed240              # double 5.0164493638336012
	.quad	0x401c644bda7b1835              # double 7.0979456079131085
	.quad	0x3faa8d0e1c178500              # double 0.051857415131744133
	.quad	0x401997108b71a3ae              # double 6.3975240505323381
	.quad	0x4015e21dc88b8d7e              # double 5.4708167395759784
	.quad	0x401aa0d05ad39900              # double 6.6570448104523621
	.quad	0x4022a2ff27ab312b              # double 9.3183529278254209
	.quad	0x40118b35b228cc99              # double 4.3859470212365972
	.quad	0x3ff69d9ce5ae4210              # double 1.4134797069456262
	.quad	0x401fadd28083fcbc              # double 7.9197483139570828
	.quad	0x3ffa6c131459bab1              # double 1.6513853831235503
	.quad	0x4014f940cafc4826              # double 5.2434112278442964
	.quad	0x4014b4d8ca0b1add              # double 5.1766082352903284
	.quad	0x401287be8e0be520              # double 4.6325628466377395
	.quad	0x401e1b4bd9f54277              # double 7.5266565376228902
	.quad	0x402147f2469030e7              # double 8.6405202914251742
	.quad	0x401eda4dd25cb67a              # double 7.713187491329899
	.quad	0x4003eb9757b5b85d              # double 2.4900347568828196
	.quad	0x401c2bbace1e3aee              # double 7.0427047925902411
	.quad	0x4021a557d1ff0e4a              # double 8.8229356407020028
	.quad	0x4004160d6483df47              # double 2.5107677319282717
	.quad	0x401f13f1a823d2d0              # double 7.7694765350212975
	.quad	0x400d727d30731067              # double 3.6809028420557754
	.quad	0x401f64a8e6e30e9e              # double 7.8483005596241622
	.quad	0x401fcf76c664b023              # double 7.952601528068075
	.quad	0x401c02105c602fd2              # double 7.0020155366618884
	.quad	0x402281f59e62bdde              # double 9.2538270469221366
	.quad	0x4021e4ca96f25c6f              # double 8.9468581362582125
	.quad	0x4011984678de1da2              # double 4.3987063298767755
	.quad	0x4011370d0bc6c496              # double 4.3037607040470416
	.quad	0x4022574ef21fb605              # double 9.1705241836271032
	.quad	0x401c5c17cc7417c0              # double 7.0899345346314817
	.quad	0x3fdda909d148f110              # double 0.46344228208524019
	.quad	0x4022a3d7d8fb6a6c              # double 9.3200061613944953
	.quad	0x401462669925b8dd              # double 5.0960945061944729
	.quad	0x401fd5d4f0ec3e6f              # double 7.9588201183502027
	.quad	0x3ff85c7c753f86d3              # double 1.5225796298986338
	.quad	0x400e65e72296e436              # double 3.7997572614954391
	.quad	0x4020353ea68a8a0e              # double 8.1039936107745483
	.quad	0x3fed60fb7606150e              # double 0.91808865596309075
	.quad	0x401c04ad83f83f6b              # double 7.004568159128989
	.quad	0x4002daa6d7cc4d70              # double 2.3567635401938603
	.quad	0x3fc0f24b6e5577a8              # double 0.13239424598117222
	.quad	0x40190781c5b51e78              # double 6.2573309795185352
	.quad	0x40179b3efdb5091c              # double 5.9016074792619087
	.quad	0x4022719d36eb9d60              # double 9.2219025766959817
	.quad	0x4018a0c61cc977b6              # double 6.1570057390180661
	.quad	0x402262566ee43f16              # double 9.1920656827565317
	.quad	0x400432b046704d6c              # double 2.5247502806684476
	.quad	0x401b4f81e2025ec7              # double 6.8276439012476606
	.quad	0x401c357c840161fc              # double 7.0522328019947018
	.quad	0x400ff08ab134e378              # double 3.9924520344033532
	.quad	0x3fefb5b49708c6c4              # double 0.99093083857425101
	.quad	0x400b2b63c3b2ec66              # double 3.396186379335222
	.quad	0x4013784ef0e167a2              # double 4.8674886357856924
	.quad	0x4023b6d9482fd8d8              # double 9.8571264799506224
	.quad	0x4018d6e44e73eb58              # double 6.2098552950145276
	.quad	0x3ff0e3aac71fc53c              # double 1.0555827883038793
	.quad	0x4023ffd1a9136c30              # double 9.9996464573106039
	.quad	0x4016e965c2857b7e              # double 5.7279272455187975
	.quad	0x400adf281a8fb64e              # double 3.3589632105929814
	.quad	0x401735c8d3bd0006              # double 5.8025239070993901
	.quad	0x40234a0435605d44              # double 9.6445633583194947
	.size	.L__constant_10x10xf64, 800

	.type	.L__constant_15xindex,@object   # @__constant_15xindex
	.p2align	6, 0x0
.L__constant_15xindex:
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.size	.L__constant_15xindex, 120

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	15                              # 0xf
	.size	.L__constant_11xindex, 88

	.type	.L__constant_15xf64,@object     # @__constant_15xf64
	.p2align	6, 0x0
.L__constant_15xf64:
	.quad	0x4016546801711948              # double 5.5824280000000002
	.quad	0x3ff7ce3476295209              # double 1.487843
	.quad	0x4022023358f2e05d              # double 9.0042980000000004
	.quad	0x401d1ba4d6e47dc3              # double 7.2769959999999996
	.quad	0x400fb83621fafc8b              # double 3.964947
	.quad	0x401513b5bf6a0dbb              # double 5.2692480000000002
	.quad	0x40129b8f14db5958              # double 4.6519130000000004
	.quad	0x401ab2541d8e8640              # double 6.6741489999999999
	.quad	0x4023ba52ef911cf3              # double 9.8639139999999994
	.quad	0x3ff84db0574b4070              # double 1.518967
	.quad	0x400672d55a3a083a              # double 2.8060710000000002
	.quad	0x401dbc5a3e39f773              # double 7.4339380000000004
	.quad	0x4011e6a6e32e3822              # double 4.4752460000000003
	.quad	0x3ffac5ac471b4784              # double 1.67326
	.quad	0x40222691c8eabffd              # double 9.0753310000000003
	.size	.L__constant_15xf64, 120

	.section	".note.GNU-stack","",@progbits
