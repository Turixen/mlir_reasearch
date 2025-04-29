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
	.quad	19                              # 0x13
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
	lui	a6, %hi(.L__constant_19xindex)
	addi	a6, a6, %lo(.L__constant_19xindex)
	lui	a7, %hi(.L__constant_19xf64)
	addi	a7, a7, %lo(.L__constant_19xf64)
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
	.quad	0x40216a52cfccd555              # double 8.7076630532780346
	.quad	0x401b0bc11fe9f368              # double 6.7614788996259918
	.quad	0x4016f9c5122b918c              # double 5.7439158286182526
	.quad	0x401c7389a2bd1dd0              # double 7.1128297260215305
	.quad	0x4003b269c3cc4b74              # double 2.4621157929154212
	.quad	0x4015e80e7b25ab9d              # double 5.4766177407972494
	.quad	0x4009f96a79d540d6              # double 3.2467851179318172
	.quad	0x400e4a0b936c90e2              # double 3.7861548917299936
	.quad	0x400ddfa5749da9ec              # double 3.7342023001303826
	.quad	0x401ebeb8a892a6a8              # double 7.6862512912281673
	.quad	0x3fcb2d04f2544d60              # double 0.21231138069615962
	.quad	0x4019f7f118566e42              # double 6.4921306421998128
	.quad	0x400b0d13f8bd2ae0              # double 3.3813857491235098
	.quad	0x4013982a3a489ad2              # double 4.8985985857786591
	.quad	0x400daff7f21b0c1e              # double 3.7109221376899901
	.quad	0x40237b34d66e1707              # double 9.7406374940287729
	.quad	0x400d6c8d547ac4a2              # double 3.6780039405790186
	.quad	0x4022a9466a598205              # double 9.3306153520834503
	.quad	0x40180af208ce0dbf              # double 6.0106889129414744
	.quad	0x40236ae1956671f0              # double 9.7087523162417426
	.quad	0x3ff067b7b330ceaf              # double 1.0253216743121063
	.quad	0x4021cfa0cea4f776              # double 8.9055237366080569
	.quad	0x3ffd9892d3c256f2              # double 1.8497494003144621
	.quad	0x4019bc037e1c869d              # double 6.4336070732985293
	.quad	0x401441b4e0371c77              # double 5.0641665490758134
	.quad	0x3ff0b600b1dffa61              # double 1.0444342563856923
	.quad	0x401c0c3531da8662              # double 7.0119216718318018
	.quad	0x40107d998996967e              # double 4.1226560114060913
	.quad	0x40007895a2d97fce              # double 2.0588791582704067
	.quad	0x4013df336651f063              # double 4.9679695117484668
	.quad	0x40184c7110ee13a5              # double 6.0746500630674847
	.quad	0x4014ff383f203c73              # double 5.2492380011964199
	.quad	0x4016d68c78d6b4af              # double 5.7095202332540529
	.quad	0x40135c294254217d              # double 4.8400011409615873
	.quad	0x40165380ea82d7ac              # double 5.5815464632377534
	.quad	0x401cb46d3b8dcfaa              # double 7.1761979394249611
	.quad	0x4020e45d5fdee53f              # double 8.4460248908604836
	.quad	0x4021473d68bbca40              # double 8.6391403893695724
	.quad	0x3feef68bea7314e2              # double 0.96759601393628381
	.quad	0x402144db40369fb2              # double 8.634485251110025
	.quad	0x4021c300cdb0fb3d              # double 8.8808655050794361
	.quad	0x3ffda2a192c31c7c              # double 1.8522048695465676
	.quad	0x3fefe2a58f41dc28              # double 0.99641683559355431
	.quad	0x401ccb60264ecd34              # double 7.1986089692684807
	.quad	0x40104fefbce1315d              # double 4.0780629646727364
	.quad	0x400451e92edb39db              # double 2.539995542588469
	.quad	0x4023a8fa24d41f23              # double 9.830033446210626
	.quad	0x40219f52f9ba103e              # double 8.811179927790473
	.quad	0x4018ce2bf09aef60              # double 6.2013394922795158
	.quad	0x4020e6c1a0b943f6              # double 8.4506960130838529
	.quad	0x401dbd9f91964040              # double 7.4351790187793654
	.quad	0x3fd084ab59a3b260              # double 0.25809749368526091
	.quad	0x400f8b85459292a1              # double 3.9431252894740543
	.quad	0x40130539a60eb272              # double 4.7551027246923798
	.quad	0x4022123ff9e0d557              # double 9.0356443488077911
	.quad	0x4018e1ba9bff86a0              # double 6.220438420744955
	.quad	0x4011d75dfaaa97ef              # double 4.4603194395658496
	.quad	0x4012364c3fbf19ed              # double 4.5530252418889008
	.quad	0x401e01a0972f3e70              # double 7.501589166887797
	.quad	0x4009f4b8593b1204              # double 3.2444922419692848
	.quad	0x4020537afa5b7e42              # double 8.1630476223646191
	.quad	0x4014c67b13e91f36              # double 5.1938288794552161
	.quad	0x3fdac69f012c3608              # double 0.41837287058373862
	.quad	0x3ff1db5937d28a84              # double 1.1160518818439025
	.quad	0x4001d548a559edb1              # double 2.2291424673146243
	.quad	0x4010f09059ebe349              # double 4.2349256563400752
	.quad	0x3ff9d2576a4f6a4d              # double 1.6138528969519428
	.quad	0x40187f4c4f72f102              # double 6.124314538374394
	.quad	0x400add22eb2f8f31              # double 3.3579767583741149
	.quad	0x4013372d960979da              # double 4.803884834602707
	.quad	0x40164fbe0021c152              # double 5.5778732319452775
	.quad	0x40226388e678ad17              # double 9.1944038412389499
	.quad	0x40233bf76dce4be7              # double 9.6171221079184316
	.quad	0x400765e7c0cdd80c              # double 2.9247584402865012
	.quad	0x3fef70ed2038f8d6              # double 0.98253494542566489
	.quad	0x3ff802c870ae16bf              # double 1.5006794358791209
	.quad	0x3ffc7db6d61fcbf7              # double 1.7806919445254132
	.quad	0x401ac3ae6aeb605c              # double 6.6910950380480152
	.quad	0x40189cc3a9afd23d              # double 6.1530901444971819
	.quad	0x401a44990302af7e              # double 6.5669899435414418
	.quad	0x40221da75d444f87              # double 9.0579175134551075
	.quad	0x3fd1eb9dc7730d68              # double 0.28000587918741937
	.quad	0x4021d8af45cf69d4              # double 8.9232122245493101
	.quad	0x40013a502b63b737              # double 2.153473223667699
	.quad	0x3fabc8a310649dc0              # double 0.054265113593199299
	.quad	0x401c0eab1720c08e              # double 7.0143245328655563
	.quad	0x4007ebe7e74e4855              # double 2.9901884146466196
	.quad	0x401ceb26091a53d9              # double 7.2296372816390084
	.quad	0x4017a5b311d9c417              # double 5.9118159093059353
	.quad	0x4018d4cf2d31731b              # double 6.2078215657645854
	.quad	0x401699e19ac7db9d              # double 5.6502746757968483
	.quad	0x40109e746c0656e1              # double 4.1547409895772214
	.quad	0x401473c5a15e7f93              # double 5.1130585874488075
	.quad	0x401c3afa7c90920b              # double 7.0575961554755038
	.quad	0x401028a0c2631bbe              # double 4.0396757481566379
	.quad	0x400f51bc3f806a28              # double 3.9149098359169052
	.quad	0x3ff485baf26cceeb              # double 1.2826489896514726
	.quad	0x3f73936e78197700              # double 0.0047792735291218857
	.quad	0x401eb6699699314e              # double 7.6781371623040524
	.quad	0x3fd01663f8a58a5c              # double 0.25136660844706227
	.size	.L__constant_10x10xf64, 800

	.type	.L__constant_19xindex,@object   # @__constant_19xindex
	.p2align	6, 0x0
.L__constant_19xindex:
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.size	.L__constant_19xindex, 152

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	19                              # 0x13
	.size	.L__constant_11xindex, 88

	.type	.L__constant_19xf64,@object     # @__constant_19xf64
	.p2align	6, 0x0
.L__constant_19xf64:
	.quad	0x401dc0a7c5ac471b              # double 7.4381399999999998
	.quad	0x3ff955097c80841f              # double 1.583261
	.quad	0x400f897c80841ede              # double 3.942132
	.quad	0x4014824d8fd5cb79              # double 5.1272489999999999
	.quad	0x40075b4edb2f661f              # double 2.919584
	.quad	0x3ff2e224edf61240              # double 1.1802109999999999
	.quad	0x4014653c148344c3              # double 5.0988619999999996
	.quad	0x4000916c1e364bec              # double 2.0710069999999998
	.quad	0x40041dc1e7967caf              # double 2.5145300000000002
	.quad	0x4002b8116ebd4cfd              # double 2.339877
	.quad	0x3ff13f79c842fa51              # double 1.0779970000000001
	.quad	0x40078c343b70ef56              # double 2.9434589999999998
	.quad	0x40239c156e264e48              # double 9.8048509999999993
	.quad	0x401086ff7dfa00e2              # double 4.1318339999999996
	.quad	0x40059abc0e38a7e7              # double 2.7005539999999999
	.quad	0x40189f05a708ede5              # double 6.1552949999999997
	.quad	0x40226815c209246c              # double 9.2032910000000001
	.quad	0x401c196dd26b723f              # double 7.0248330000000001
	.quad	0x40208e162f166e01              # double 8.2775130000000008
	.size	.L__constant_19xf64, 152

	.section	".note.GNU-stack","",@progbits
