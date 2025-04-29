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
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	0                               # 0x0
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.size	.L__constant_9xindex, 72

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	2                               # 0x2
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	4                               # 0x4
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	6                               # 0x6
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.size	.L__constant_11xindex, 88

	.type	.L__constant_9xf64,@object      # @__constant_9xf64
	.p2align	6, 0x0
.L__constant_9xf64:
	.quad	0x4002fc19c17225b7              # double 2.3730959999999999
	.quad	0x401d205ee568a505              # double 7.281612
	.quad	0x400b997e56473472              # double 3.449948
	.quad	0x40166fdef8487b9a              # double 5.6092490000000002
	.quad	0x3ff2c3e3193f6c27              # double 1.1728240000000001
	.quad	0x400285caafbc1ace              # double 2.3153280000000001
	.quad	0x4002810b630a9153              # double 2.3130099999999998
	.quad	0x4008a68f4b61fe22              # double 3.0813280000000001
	.quad	0x4014c7b28954a7f8              # double 5.195017
	.size	.L__constant_9xf64, 72

	.type	.L__constant_10x10xf64,@object  # @__constant_10x10xf64
	.p2align	6, 0x0
.L__constant_10x10xf64:
	.quad	0x4007185634f70ff3              # double 2.8868831766030723
	.quad	0x400bc1eed2a0655e              # double 3.4696937995146717
	.quad	0x401503d791a3d991              # double 5.2537520176178001
	.quad	0x402310eca59ad964              # double 9.5330554725193863
	.quad	0x401dc278d7a7adfc              # double 7.4399141021817705
	.quad	0x4020a9015a7ca9ae              # double 8.3300884511162074
	.quad	0x3ff5e3ec22cdea76              # double 1.3681451186700122
	.quad	0x401bfb0b5c52f78d              # double 6.9951605249060664
	.quad	0x40036b027e96c448              # double 2.42725085160831
	.quad	0x4017566c2ea73e6e              # double 5.8343970574929767
	.quad	0x40179fe4a8bb4809              # double 5.9061457027728546
	.quad	0x4002ede4aeda83f2              # double 2.3661588344989406
	.quad	0x4023d94b658485b0              # double 9.9244033550520214
	.quad	0x4015803145a0d3fb              # double 5.3751879577075625
	.quad	0x401c528bda98245a              # double 7.080611625228892
	.quad	0x4009cc7d6f7275b3              # double 3.2248486239247653
	.quad	0x4020fc1cb7a9121e              # double 8.4924065965543001
	.quad	0x3ff3771bfbeaa83e              # double 1.2165794220441195
	.quad	0x4018a47f84e72b32              # double 6.1606426969618031
	.quad	0x4023207cfb14555f              # double 9.563453527671923
	.quad	0x4013b261c135fdc0              # double 4.9242010297015781
	.quad	0x401418b7b96811de              # double 5.0241383523720895
	.quad	0x4021096146e93a2c              # double 8.5183202895833218
	.quad	0x402326f07aa18855              # double 9.5760534593756947
	.quad	0x40207b7d93e950b2              # double 8.2411924574192632
	.quad	0x400079d19df1e46e              # double 2.0594818438954041
	.quad	0x402061c1e1aba410              # double 8.1909323236486955
	.quad	0x400d5c89b1549039              # double 3.6701845029765789
	.quad	0x40163b1e6933387c              # double 5.5577331960213279
	.quad	0x401f74c7022ec2c2              # double 7.864040407280017
	.quad	0x400a138c06878547              # double 3.2595444212062463
	.quad	0x4015dd62266a9226              # double 5.466194725279399
	.quad	0x4021ba62669842b0              # double 8.8640319882264009
	.quad	0x4008eff4f42e07dd              # double 3.1171664310977421
	.quad	0x3fc5ac270ec27e18              # double 0.1693161794728304
	.quad	0x3fea5a3f612855ea              # double 0.8235165498360264
	.quad	0x400e241da3e8b2c0              # double 3.767634659327399
	.quad	0x400bcf04931305cc              # double 3.4760829439335108
	.quad	0x3ff8b292d6898eae              # double 1.543597066914042
	.quad	0x401d5bfb9a93c6dc              # double 7.3398269798942373
	.quad	0x401032a2f28cf71d              # double 4.0494497202432997
	.quad	0x40128dbc8b8b72cc              # double 4.6384145549643101
	.quad	0x401613df3fb9722e              # double 5.5194063145577683
	.quad	0x3fff59561b963b62              # double 1.9593106343852118
	.quad	0x4012251a1cf70662              # double 4.5362324262401632
	.quad	0x4003b5222292cc68              # double 2.4634440136956535
	.quad	0x3ff2512910ce3861              # double 1.1448145538775167
	.quad	0x4011ba2d172f321e              # double 4.431812631850816
	.quad	0x40155066de03a2c8              # double 5.3285174073905139
	.quad	0x401488138a2e674f              # double 5.1328870383093337
	.quad	0x40225c345d146700              # double 9.1800870025067525
	.quad	0x40229d52302243af              # double 9.307267669851937
	.quad	0x4017ceaee32f52fc              # double 5.9518390176424383
	.quad	0x4023d521cb7f4bc5              # double 9.9162734597101778
	.quad	0x40212de71a22b80d              # double 8.5896537940389184
	.quad	0x4022ac206b782fe7              # double 9.3361848434651176
	.quad	0x3ff0e88b1d259a85              # double 1.0567732943106034
	.quad	0x4023d875281e4256              # double 9.9227688347756775
	.quad	0x400bdb458043412a              # double 3.4820661564373454
	.quad	0x40034f9d33130034              # double 2.4138740530179579
	.quad	0x40212bb5e0fb4c27              # double 8.5853720003852469
	.quad	0x401bd5cc81612031              # double 6.9587879386454441
	.quad	0x3fdf4a3feebe6a6c              # double 0.48890684428048448
	.quad	0x4002999ce2b2e947              # double 2.325006266674936
	.quad	0x40123901f602f5ae              # double 4.5556715430551957
	.quad	0x40058f7f4d2eb38e              # double 2.6950670270802624
	.quad	0x3fd735dbca5636f8              # double 0.36266226539088064
	.quad	0x402318317b3ebebd              # double 9.5472525133221726
	.quad	0x401b8d53a43ddfd7              # double 6.8880143797650453
	.quad	0x401babeee0bbaa4d              # double 6.9179034342328807
	.quad	0x4022989ff2acd71d              # double 9.2980953060137441
	.quad	0x401c17e23105b718              # double 7.0233237895715988
	.quad	0x3fcc6b0f3dc899b0              # double 0.22201719776894668
	.quad	0x400c6f25cd562184              # double 3.5542713205251761
	.quad	0x400f351d723df796              # double 3.9009350705300205
	.quad	0x3fe70db2e85fb1ca              # double 0.72042222390660382
	.quad	0x40206fbc7419ef7e              # double 8.2182346612605635
	.quad	0x3ff630bf707dd383              # double 1.3869013208579595
	.quad	0x401fdd41ac21785e              # double 7.9660708327702121
	.quad	0x40211ff85608819a              # double 8.5624415288337339
	.quad	0x3ff227954ca4934d              # double 1.1346638673650944
	.quad	0x4020d3d4c122bd70              # double 8.413732562533113
	.quad	0x4010ae8037512352              # double 4.1704109805367171
	.quad	0x40140f9235423210              # double 5.015206176915413
	.quad	0x3ff48f86fb6e3da6              # double 1.2850408383854783
	.quad	0x40142b33be911702              # double 5.0421895767265159
	.quad	0x4022855f756cf7c6              # double 9.2604939170377172
	.quad	0x40233816594f41d6              # double 9.6095455083131291
	.quad	0x4009222a217e53b4              # double 3.1416819206883364
	.quad	0x3ff564dcd4317259              # double 1.3371246613306964
	.quad	0x3ff3c16117ca7da6              # double 1.2347117356619974
	.quad	0x400b861ad616aedf              # double 3.4404808736488657
	.quad	0x3ffde613b6be40f6              # double 1.8686711443334025
	.quad	0x40226ee6691bb91d              # double 9.2166016432134317
	.quad	0x40189a7fa10c0b3e              # double 6.1508774913407347
	.quad	0x3ff4c30a49cfe44d              # double 1.2976172335895797
	.quad	0x400b2345a20e3735              # double 3.3922226582134507
	.quad	0x4001a30488099c2d              # double 2.204598486703182
	.quad	0x402333eb4f538608              # double 9.6014046468217344
	.quad	0x401040684377deef              # double 4.0628977338708259
	.size	.L__constant_10x10xf64, 800

	.section	".note.GNU-stack","",@progbits
