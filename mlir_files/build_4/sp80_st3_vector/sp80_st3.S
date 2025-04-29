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
	.quad	0x4023876a8a598835              # double 9.7644847139637054
	.quad	0x401ebab56270f09e              # double 7.6823325520928432
	.quad	0x40105532b551a164              # double 4.0832012492249739
	.quad	0x4013d5159e29576b              # double 4.9580902779324374
	.quad	0x40042ff2a5abe2d1              # double 2.5234120314674802
	.quad	0x3fd3563936738808              # double 0.3021376640082285
	.quad	0x400165b17cbda7a5              # double 2.1746549363496848
	.quad	0x4008fe3f243ed715              # double 3.1241438705136582
	.quad	0x401dee077a1800ba              # double 7.4824503972196741
	.quad	0x3fe3186a17ac1334              # double 0.59673027633161846
	.quad	0x400fa0d8eb11a9f4              # double 3.9535387387052143
	.quad	0x401e358c9770866f              # double 7.5522941267423524
	.quad	0x401140a658ea7ca8              # double 4.313134564697215
	.quad	0x4014b74ac057b08e              # double 5.1789960912248159
	.quad	0x3fc5f5206c214188              # double 0.17154317168980193
	.quad	0x4007be60bc18f308              # double 2.9679579444040236
	.quad	0x4015e3382c4e2d6e              # double 5.4718939707484946
	.quad	0x4003034d470697f8              # double 2.3766122387778488
	.quad	0x401090f1e904904c              # double 4.1415478142772137
	.quad	0x401ed823cc92dbbe              # double 7.7110740627894625
	.quad	0x4004f9d92ebfb2ec              # double 2.6219962742092005
	.quad	0x400bd135c1f448d6              # double 3.4771533157992094
	.quad	0x3f7bc123e5d09e00              # double 0.0067759897474739539
	.quad	0x3fb4e6c66b1d6460              # double 0.081646348143651348
	.quad	0x401ca143d6af82a2              # double 7.1574853462813355
	.quad	0x4021c9b943f6b864              # double 8.8939915884659015
	.quad	0x401ce5f8f4801673              # double 7.2245825007608913
	.quad	0x402128e48fd05fce              # double 8.5798687879431803
	.quad	0x3ff4d2f25c356db3              # double 1.301500663938765
	.quad	0x4020ae298c41ef20              # double 8.3401607351766529
	.quad	0x40027df066dec800              # double 2.3114936863648836
	.quad	0x4010ec7e6d064e95              # double 4.2309510264491523
	.quad	0x401e5b7dd677f3ed              # double 7.5893472204888725
	.quad	0x4013265feabfab0e              # double 4.7874752692685103
	.quad	0x3ff851ae0a75de0c              # double 1.5199413689241537
	.quad	0x3ff2f8b5cd1076ea              # double 1.1857202539753708
	.quad	0x401d3e65c85c6ddd              # double 7.3109351450361517
	.quad	0x400b0efe81f07b7e              # double 3.3823213721765901
	.quad	0x401ac0b9b58e3ec1              # double 6.6882084243840731
	.quad	0x3fed72a836323f8e              # double 0.9202462252160204
	.quad	0x3ff55d1ca9dd11c9              # double 1.335232413796904
	.quad	0x4000276f3f8bcbb3              # double 2.0192551579034101
	.quad	0x3ff1c66dc6c89789              # double 1.1109445347769642
	.quad	0x4021ead173d9d8be              # double 8.9586292460847936
	.quad	0x3fdf2fe5a2f09b24              # double 0.48729840194794094
	.quad	0x3fed89f70d6bb646              # double 0.9230914365886711
	.quad	0x3ff32263a0979c2e              # double 1.195895793259989
	.quad	0x400fd57ed58220dc              # double 3.9792458229386352
	.quad	0x401d001281968e20              # double 7.2500705955640399
	.quad	0x40119f29bd1bc2dc              # double 4.405432658023269
	.quad	0x40210f597572e1e2              # double 8.5299793913590669
	.quad	0x401cfaeb8dabad64              # double 7.2450391899140847
	.quad	0x402343fd8ad36089              # double 9.6327937491444277
	.quad	0x400bd1e24f7a9ec2              # double 3.4774824342055988
	.quad	0x401449cd79523588              # double 5.0720728832651574
	.quad	0x3ffd9bcddfdc3da2              # double 1.8505381340545246
	.quad	0x401eb590d00308aa              # double 7.6773102285243713
	.quad	0x401f79465b95b30a              # double 7.8684324560279126
	.quad	0x401c67d278c1b4a0              # double 7.1013888233402724
	.quad	0x40190ee1f31450a4              # double 6.2645338040494245
	.quad	0x400713d21728ab02              # double 2.8846780595098389
	.quad	0x40172710a7230488              # double 5.7881494631884678
	.quad	0x40163ad77b088abf              # double 5.5574626182521447
	.quad	0x3ffb538d7a74bbae              # double 1.7078985961377202
	.quad	0x4008ae95fbaf56a8              # double 3.0852470076450409
	.quad	0x4021f129d6a06df2              # double 8.971022326549221
	.quad	0x40066664a067511b              # double 2.7999966174630919
	.quad	0x4013df31e5e916c0              # double 4.9679637835994868
	.quad	0x401191905cbcc92a              # double 4.3921522608018595
	.quad	0x400c7770ad6d6945              # double 3.5583203839316035
	.quad	0x400893cc499a67fa              # double 3.072166991257288
	.quad	0x3ff5d073b6d2b8cd              # double 1.3633916036156279
	.quad	0x3ff20c97f35535fd              # double 1.1280745988073015
	.quad	0x4020eb68a14cd460              # double 8.4597826391492958
	.quad	0x401a0fdd32e29b70              # double 6.5154922438440366
	.quad	0x401960dc8805d90b              # double 6.344591260296748
	.quad	0x40035847d499d1e6              # double 2.418105755752765
	.quad	0x4008bd2680bad02a              # double 3.0923585946093413
	.quad	0x4020a9b8f53c14b5              # double 8.3314892421570708
	.quad	0x401ce5c2dd727f7c              # double 7.224376163590815
	.quad	0x4014e1c8d7de48f0              # double 5.2204927186414665
	.quad	0x3ff408ec4bc78c39              # double 1.2521784744392461
	.quad	0x4023914d09b1bfea              # double 9.7837908772925921
	.quad	0x401a2b1b74d25878              # double 6.5420969251045946
	.quad	0x402124d8e196c6c3              # double 8.5719671722939719
	.quad	0x40236069bfbbcef5              # double 9.6883068005331356
	.quad	0x3ff76eff377686dc              # double 1.4645988623164419
	.quad	0x400b735d233bea72              # double 3.4313299896869518
	.quad	0x4021448751838b06              # double 8.6338448975634599
	.quad	0x40138e3320e82f0e              # double 4.8888669149125814
	.quad	0x3ff92ef59626e4e4              # double 1.573964678317048
	.quad	0x40229d6c11af1d60              # double 9.3074651266348951
	.quad	0x401d2d487fc7d091              # double 7.2942218747813437
	.quad	0x3fef29d5480a9a5e              # double 0.97385658331479497
	.quad	0x4021c87ef5c48efb              # double 8.8915936281623456
	.quad	0x40024667c09f2853              # double 2.2843775795527477
	.quad	0x3ff80e18cd96d73f              # double 1.5034416228131275
	.quad	0x400fe66c99a61bc3              # double 3.9875118259255671
	.quad	0x3ff1856f8e0d1094              # double 1.0950770901554607
	.quad	0x401c2f0bc835eb48              # double 7.0459433825406634
	.size	.L__constant_10x10xf64, 800

	.type	.L__constant_19xindex,@object   # @__constant_19xindex
	.p2align	6, 0x0
.L__constant_19xindex:
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	1                               # 0x1
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.size	.L__constant_19xindex, 152

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	4                               # 0x4
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.size	.L__constant_11xindex, 88

	.type	.L__constant_19xf64,@object     # @__constant_19xf64
	.p2align	6, 0x0
.L__constant_19xf64:
	.quad	0x40153361565c2d28              # double 5.3001760000000004
	.quad	0x4023ed8e86402081              # double 9.9639779999999991
	.quad	0x402001ed5ae1cde6              # double 8.0037640000000003
	.quad	0x4022b14d72799a20              # double 9.3462940000000003
	.quad	0x3ff1736bd2b6f199              # double 1.090679
	.quad	0x401cb508f648c719              # double 7.1767919999999998
	.quad	0x4010ac55c96030c2              # double 4.1682959999999998
	.quad	0x400647cb70ac3a86              # double 2.785056
	.quad	0x4021d2122fad6cb5              # double 8.9102949999999996
	.quad	0x3ff031d0c8041030              # double 1.012162
	.quad	0x401fee8ee6b8305e              # double 7.9829670000000004
	.quad	0x40107b762d83c6c9              # double 4.1205679999999996
	.quad	0x401bee6afcce1c58              # double 6.9828299999999999
	.quad	0x3ff889d495182a99              # double 1.53365
	.quad	0x3ff1e43bb40b34e7              # double 1.1182209999999999
	.quad	0x40029138bcdfefbf              # double 2.3209089999999999
	.quad	0x402356b6e0d23d4f              # double 9.6693639999999998
	.quad	0x401bd6ac215b9a5b              # double 6.9596410000000004
	.quad	0x401904916ca46e09              # double 6.254461
	.size	.L__constant_19xf64, 152

	.section	".note.GNU-stack","",@progbits
