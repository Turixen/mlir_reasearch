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
	.quad	9                               # 0x9
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
	lui	a6, %hi(.L__constant_9xindex)
	addi	a6, a6, %lo(.L__constant_9xindex)
	lui	a7, %hi(.L__constant_9xf64)
	addi	a7, a7, %lo(.L__constant_9xf64)
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
	.type	.L__constant_9xindex,@object    # @__constant_9xindex
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
.L__constant_9xindex:
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	3                               # 0x3
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.size	.L__constant_9xindex, 72

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	9                               # 0x9
	.size	.L__constant_11xindex, 88

	.type	.L__constant_9xf64,@object      # @__constant_9xf64
	.p2align	6, 0x0
.L__constant_9xf64:
	.quad	0x4010ec60029f16b1              # double 4.2308349999999999
	.quad	0x40170c53b0813cac              # double 5.7620380000000004
	.quad	0x401f2afd113836a8              # double 7.7919809999999998
	.quad	0x3ff4f92c061847f5              # double 1.3108329999999999
	.quad	0x401cda48b6523704              # double 7.2131679999999996
	.quad	0x3fbd5a5b9628cbd1              # double 0.11466
	.quad	0x400df260f5e41d4b              # double 3.7433489999999998
	.quad	0x40120ec743201041              # double 4.5144320000000002
	.quad	0x401575410f94c87a              # double 5.3645060000000004
	.size	.L__constant_9xf64, 72

	.type	.L__constant_10x10xf64,@object  # @__constant_10x10xf64
	.p2align	6, 0x0
.L__constant_10x10xf64:
	.quad	0x3fe7eab07406e0ec              # double 0.74739859258172947
	.quad	0x400afb483fa9ce08              # double 3.3726963971801105
	.quad	0x3fcb72bac2a3e2a0              # double 0.21443876747050172
	.quad	0x400db350cdd3bb9a              # double 3.7125564651718834
	.quad	0x4022d6832b5ace98              # double 9.4189694927547833
	.quad	0x401678e04560e851              # double 5.6180430260083805
	.quad	0x401d37af6f2d2fdc              # double 7.3043801661806036
	.quad	0x4021c8528b8864aa              # double 8.8912547687526349
	.quad	0x3fac44588006dc20              # double 0.055208936336775816
	.quad	0x4021e39f28b88991              # double 8.9445736623063414
	.quad	0x40237878b08f314e              # double 9.7352957892223024
	.quad	0x4018a986ed995615              # double 6.1655537724341416
	.quad	0x4023464aa6f3c104              # double 9.6372883007575254
	.quad	0x40219f5e4fb963bf              # double 8.8112664140515999
	.quad	0x400c6385ba66c898              # double 3.5485949099175507
	.quad	0x401f2e88fc700222              # double 7.7954444354404888
	.quad	0x40040c8f2d6d432e              # double 2.506132464310574
	.quad	0x401d959e5a45c7e7              # double 7.3961118798342573
	.quad	0x4021992e9fe94e8c              # double 8.7991838428781861
	.quad	0x401fc7b43f2aa1d1              # double 7.9450235242624822
	.quad	0x40210a6e9e7db067              # double 8.5203752067975085
	.quad	0x402119053882227f              # double 8.5488679560523888
	.quad	0x4010ec168eb8b608              # double 4.230554800056332
	.quad	0x40113703a3e60058              # double 4.3037248238689116
	.quad	0x400e9a8a7e6995c4              # double 3.8254594684574119
	.quad	0x4012620fbc51fa7a              # double 4.5957631516490611
	.quad	0x401a20c50bf147cf              # double 6.5320016733184749
	.quad	0x4023360cf7888f09              # double 9.6055676798055333
	.quad	0x4011d81825effcc3              # double 4.4610296180464415
	.quad	0x401fca41e2c63ab6              # double 7.9475169595231616
	.quad	0x40206d420f139c8e              # double 8.2133946143569823
	.quad	0x40236029b88856fc              # double 9.6878183046751402
	.quad	0x4011df088dc7f0f3              # double 4.4678060677799634
	.quad	0x4019fed1bd62bf05              # double 6.4988469687957648
	.quad	0x400f7930b8f5eb44              # double 3.9341749620483899
	.quad	0x4013a23c2a5b06dd              # double 4.9084326379831653
	.quad	0x402030275a09f76b              # double 8.0940502297559842
	.quad	0x4023a68b58c3a883              # double 9.8252818812218318
	.quad	0x400adb6740e8a984              # double 3.3571305342676983
	.quad	0x4011e49c28241f36              # double 4.4732519409224576
	.quad	0x4020bde3a97e976f              # double 8.3708775488882718
	.quad	0x401281db7fb7cf97              # double 4.6268138843478459
	.quad	0x4021fc734089fee7              # double 8.9930668037845418
	.quad	0x3ffdf8ba68c04bd3              # double 1.8732246486513204
	.quad	0x3ffaac37aeaec61a              # double 1.6670452903312083
	.quad	0x3fd340f530ead4bc              # double 0.30083970810967364
	.quad	0x4021adf99d0b1ad5              # double 8.8397950244956665
	.quad	0x4008cdfd27a102b8              # double 3.1005805107127706
	.quad	0x400cb17bc894167c              # double 3.5866618795578784
	.quad	0x40169664852f87aa              # double 5.6468678293476078
	.quad	0x40220cc96da6e0b9              # double 9.024974276181057
	.quad	0x4019e60d447327c0              # double 6.4746599860463334
	.quad	0x401dfdacfc37edfb              # double 7.4977301987778401
	.quad	0x4023b513922cc548              # double 9.8536649398471496
	.quad	0x40112c1da2b28ea0              # double 4.2930818006022093
	.quad	0x401b854ad83b7f67              # double 6.8801683222116941
	.quad	0x3f946823b2419cc0              # double 0.019928510432148938
	.quad	0x401d2dcf748c48bb              # double 7.2947366915342924
	.quad	0x400fe8d8cecad3e0              # double 3.9886947780273516
	.quad	0x400a1549b6a845b8              # double 3.2603945036032336
	.quad	0x3ff78adeaf90cefc              # double 1.4714037759812859
	.quad	0x40116235ea294e23              # double 4.3459087932310778
	.quad	0x40235fbfa95ddc60              # double 9.6870091368747921
	.quad	0x40151b399fc72dc1              # double 5.2765870061224982
	.quad	0x4023c232df764194              # double 9.8792943794112844
	.quad	0x40114da1160afbea              # double 4.3258098072246671
	.quad	0x401601b733995b78              # double 5.5016754209854
	.quad	0x3fd3968f85bddc88              # double 0.30606449185092588
	.quad	0x4022dd66c8c65d0b              # double 9.4324248067992098
	.quad	0x3fffdef4391d1f74              # double 1.9919321280485436
	.quad	0x4004103ea7d7c643              # double 2.5079320061420574
	.quad	0x40072bbe3a45922c              # double 2.8963589241486911
	.quad	0x402054e9289226f7              # double 8.1658413580330329
	.quad	0x4003e2c330772bb9              # double 2.4857238565795936
	.quad	0x400da837b2485d50              # double 3.7071374824842351
	.quad	0x40212d66d4691568              # double 8.5886751535678769
	.quad	0x400659d566add988              # double 2.7938640615277031
	.quad	0x401b9af9461d1d0a              # double 6.9013415293950491
	.quad	0x4023708881fb2a04              # double 9.7197914713951902
	.quad	0x3fef2b1115013400              # double 0.97400716879349147
	.quad	0x3ffa050da737a789              # double 1.6262337238244717
	.quad	0x400975db8fb5489c              # double 3.1825476863096593
	.quad	0x401359e080662b7e              # double 4.8377704679832032
	.quad	0x4015bf2609f2ca76              # double 5.4366685442388327
	.quad	0x3ff08d8df762755f              # double 1.0345592177830765
	.quad	0x401867b2a2201aae              # double 6.1012673694701061
	.quad	0x40200218e56532d1              # double 8.0040961919816329
	.quad	0x400a540b90784fa4              # double 3.2910376822200806
	.quad	0x401b6184363a233a              # double 6.8452309105858209
	.quad	0x402255be32d62e58              # double 9.1674667250110104
	.quad	0x40157ea779bf42d5              # double 5.3736857436167229
	.quad	0x40034bd2621bd472              # double 2.4120223679297448
	.quad	0x3fe77331ee8d1846              # double 0.73281189529439739
	.quad	0x402104fd061d5435              # double 8.5097429190446778
	.quad	0x3ff2087a8efa3eb2              # double 1.1270700058993666
	.quad	0x400810caec800f06              # double 3.0081995464878473
	.quad	0x3ff9588aabf4aa72              # double 1.5841166226406611
	.quad	0x3ff0b27e8c5c4e64              # double 1.0435777170977412
	.quad	0x4021b43a0c4c312b              # double 8.8520053713806046
	.quad	0x401c67a8fc53d675              # double 7.1012305666132436
	.size	.L__constant_10x10xf64, 800

	.section	".note.GNU-stack","",@progbits
