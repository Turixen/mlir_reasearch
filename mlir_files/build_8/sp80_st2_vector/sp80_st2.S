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
	.quad	0x4012112047c55118              # double 4.5167247022802925
	.quad	0x400eb0c08ce2bb45              # double 3.8363047606175393
	.quad	0x4022a11a3a6ac324              # double 9.3146532302212747
	.quad	0x401e825c965f5abd              # double 7.6273063178729758
	.quad	0x3ff517d52dad5f69              # double 1.3183185371653627
	.quad	0x4022f3cc33d545b5              # double 9.4761673162309794
	.quad	0x40139acbc9710d9c              # double 4.9011680102588819
	.quad	0x40213de2b46bc74f              # double 8.6208702451291668
	.quad	0x400e2fc9bf72967c              # double 3.7733340222210341
	.quad	0x3ffab97cd2043c10              # double 1.6702850536128189
	.quad	0x40223aa424e3f4e2              # double 9.1145335701243688
	.quad	0x3fcad28d0d49bf38              # double 0.20955050610381831
	.quad	0x3ff277fedb7a0404              # double 1.1542957852655045
	.quad	0x3fdd734e3d52be50              # double 0.46016269672961574
	.quad	0x40131b9f042d85bb              # double 4.7769737866196307
	.quad	0x4021bd7e0dc84b83              # double 8.8701023394585317
	.quad	0x4021e9a04e6df8e5              # double 8.9563011655086004
	.quad	0x40007568b3bb5f0a              # double 2.0573286096149603
	.quad	0x4002c2a33871f14e              # double 2.3450378808758279
	.quad	0x40233c4f4c5810b5              # double 9.617792497396616
	.quad	0x40140fa15a53d4e1              # double 5.015263949743912
	.quad	0x4021e185252edf36              # double 8.940468942615194
	.quad	0x4021b9b713ab21da              # double 8.8627248903657581
	.quad	0x4000c556a41ff6c0              # double 2.0963566610579107
	.quad	0x4014bf735595b247              # double 5.1869634029977254
	.quad	0x401dc785ad14db93              # double 7.4448458713512933
	.quad	0x3ffa0e8cab46921c              # double 1.6285521212058773
	.quad	0x4023071af5a7f755              # double 9.5138775603806298
	.quad	0x4012e51636d2badd              # double 4.7237175527686448
	.quad	0x401cccec6b74ba46              # double 7.2001206197733776
	.quad	0x4020566c21df7f86              # double 8.1687937341046215
	.quad	0x402348f854a7da4d              # double 9.642519612779461
	.quad	0x401b15bdf4c7c522              # double 6.7712324377946818
	.quad	0x400bf183d6cb0934              # double 3.49292724425427
	.quad	0x3ffba12837f69818              # double 1.7268449960770393
	.quad	0x40087c5bfbaed218              # double 3.0607223189092672
	.quad	0x4019a0ba915d3256              # double 6.4069616997845369
	.quad	0x3ffba33480763964              # double 1.7273449914969996
	.quad	0x401431384e83f388              # double 5.0480663555180243
	.quad	0x4023836ee9bc29b4              # double 9.7567055742445987
	.quad	0x4014e163ec13f589              # double 5.2201077353651124
	.quad	0x4012d6060dcf297a              # double 4.7090074689571058
	.quad	0x4013f29e6626d180              # double 4.9869323693459364
	.quad	0x4022dab9a8313d96              # double 9.4271977005107992
	.quad	0x400f36ed7aad59fe              # double 3.901820143142003
	.quad	0x40233fa352be59ec              # double 9.6242929322588324
	.quad	0x4022ee25cd740f2d              # double 9.4651321605848242
	.quad	0x4019dea050b576db              # double 6.4674084292180067
	.quad	0x401e4b46e4c3f34c              # double 7.5735126251791591
	.quad	0x3ff3a244b6459a6a              # double 1.2271163101192095
	.quad	0x40163629aba09f0e              # double 5.5528933350358454
	.quad	0x40226d5c01d0d924              # double 9.2135925834123284
	.quad	0x4022911622bcf433              # double 9.2833720069557781
	.quad	0x4023b7195da28a4e              # double 9.8576154004014391
	.quad	0x401761ef3b635134              # double 5.8456391600960167
	.quad	0x4021c6d32d1e78e9              # double 8.8883298968980444
	.quad	0x4022917362f396d6              # double 9.2840834543562032
	.quad	0x3fdd533eec654794              # double 0.45820592008123495
	.quad	0x3fee53cc9134886e              # double 0.94772938118354744
	.quad	0x401c33a0e062db16              # double 7.0504183826767726
	.quad	0x4019c8e90ab19054              # double 6.446201483810075
	.quad	0x400d4f8cc7b861fa              # double 3.663842735590376
	.quad	0x40213b885e4c5eb0              # double 8.6162747829651778
	.quad	0x400718578d950738              # double 2.8868857442002103
	.quad	0x401ddf7a5552e8a4              # double 7.4682401019910323
	.quad	0x3fe0fecd5fdf3eb4              # double 0.5311037895680415
	.quad	0x40226f05220139a5              # double 9.2168360353942465
	.quad	0x3ff6f7d469aab43b              # double 1.43550530696963
	.quad	0x4005482f5113e694              # double 2.660246499461957
	.quad	0x3fd244c3d6b60210              # double 0.28544708221309723
	.quad	0x40134399c61865c7              # double 4.8160162880316824
	.quad	0x401efc11bc9c23ed              # double 7.7461614103603837
	.quad	0x401f653a4e4f2e08              # double 7.8488552318408508
	.quad	0x402153bd3ff9ad9d              # double 8.663553237179082
	.quad	0x4016ae078ee7da79              # double 5.6699507073413935
	.quad	0x400b332cfc6c785d              # double 3.3999881477930516
	.quad	0x3ffa6c2705d822bb              # double 1.6514044025699792
	.quad	0x40021d1c8f32e774              # double 2.2642146289262488
	.quad	0x3fff57934f58d5eb              # double 1.9588807200901737
	.quad	0x400bfd7fd45dbb9e              # double 3.4987789717774396
	.quad	0x402091e8c9dfbe75              # double 8.2849791608452765
	.quad	0x4004bd3e95133e9c              # double 2.592404522561834
	.quad	0x4021ecc3be943267              # double 8.9624309116272354
	.quad	0x4009f95973e37114              # double 3.246752648714514
	.quad	0x40106cab1c77b076              # double 4.1061214874317695
	.quad	0x4023e41bd8b9d778              # double 9.9455249525887978
	.quad	0x4017528850667452              # double 5.8305981218846501
	.quad	0x40120f5081325be7              # double 4.5149555384623232
	.quad	0x400a06b6204b9782              # double 3.2532770655697627
	.quad	0x401f7f5866bcc232              # double 7.8743606617650119
	.quad	0x400c7802d0129ece              # double 3.5585991149599527
	.quad	0x3feffd9ebcf78e2e              # double 0.99970948131198667
	.quad	0x402344639501a992              # double 9.6335722507981565
	.quad	0x401729c7ce424a0f              # double 5.7908012607536099
	.quad	0x401e4926e7c13ea9              # double 7.5714374744126553
	.quad	0x3ff4ef8dd91a58d6              # double 1.3084848862250076
	.quad	0x40211e425e126da8              # double 8.5591000936027086
	.quad	0x3fd466ef9edb3414              # double 0.3187827159243295
	.quad	0x401fd66f3db401dc              # double 7.9594087258451189
	.quad	0x401075005b6bc448              # double 4.1142591747785175
	.size	.L__constant_10x10xf64, 800

	.type	.L__constant_19xindex,@object   # @__constant_19xindex
	.p2align	6, 0x0
.L__constant_19xindex:
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.size	.L__constant_19xindex, 152

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	8                               # 0x8
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
	.quad	0x4004cb841248d7e0              # double 2.5993729999999999
	.quad	0x4023c4484944ed70              # double 9.8833640000000003
	.quad	0x3fe8477dd872f33d              # double 0.75872700000000004
	.quad	0x4020a4538ef34d6a              # double 8.3209499999999998
	.quad	0x4010e5d41fa76534              # double 4.2244419999999998
	.quad	0x40222185f06f6944              # double 9.0654749999999992
	.quad	0x40200f97cc39ffd6              # double 8.0304549999999999
	.quad	0x3fe2922749f0e4da              # double 0.580341
	.quad	0x401c642aa9f7b5af              # double 7.0978190000000003
	.quad	0x401c64473cd57364              # double 7.0979279999999996
	.quad	0x4010f9984a0e410b              # double 4.2437449999999997
	.quad	0x4001750b955f7836              # double 2.1821510000000002
	.quad	0x401c6be2f7b17ce5              # double 7.1053579999999998
	.quad	0x40101b79d909f1f1              # double 4.0268319999999997
	.quad	0x4001117a46173b86              # double 2.133534
	.quad	0x401874e9813879c4              # double 6.1141719999999999
	.quad	0x4019951dabe2717a              # double 6.3956210000000002
	.quad	0x4023b4db37c99ae9              # double 9.8532349999999997
	.quad	0x400010f7b9e060fe              # double 2.0082849999999999
	.size	.L__constant_19xf64, 152

	.section	".note.GNU-stack","",@progbits
