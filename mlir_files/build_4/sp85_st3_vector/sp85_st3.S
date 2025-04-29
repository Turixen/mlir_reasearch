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
	.quad	0x401e755cb218aa5e              # double 7.6146114184908509
	.quad	0x4014db4ed64f487c              # double 5.2141679273501005
	.quad	0x40193447b10cbe24              # double 6.3010547317531156
	.quad	0x401aa873402d7260              # double 6.6645021465052139
	.quad	0x402130ca016dbdb6              # double 8.5952911802731755
	.quad	0x40217fdda517ae8e              # double 8.7497378913315309
	.quad	0x401603f47d340306              # double 5.5038623393054475
	.quad	0x4009d83140344da4              # double 3.2305626884423919
	.quad	0x40220b2dd9b92c15              # double 9.0218341864147451
	.quad	0x401249c050830db4              # double 4.5720226840962148
	.quad	0x402167d0b4dd7002              # double 8.7027641792592512
	.quad	0x401ccd09d0decc76              # double 7.2002327571855087
	.quad	0x401738cffa7ceada              # double 5.8054808748954319
	.quad	0x4022aaa5a036559f              # double 9.3332948747946016
	.quad	0x4001df3cf5f1f67e              # double 2.2340029921022611
	.quad	0x3ffd5d3db0b786e0              # double 1.8352639105800606
	.quad	0x4004bebc30a2557a              # double 2.5931323813953755
	.quad	0x400bac6d251999d6              # double 3.4591925524175435
	.quad	0x4006af6aeaa1c523              # double 2.8356531458490664
	.quad	0x401fe6e0ed000134              # double 7.9754673987629765
	.quad	0x4018ccd6d58e9243              # double 6.200038277460922
	.quad	0x40199aae97afec0f              # double 6.4010566426395732
	.quad	0x40188421899f1cb1              # double 6.1290341857303909
	.quad	0x4021cbcf595322a0              # double 8.8980663217528786
	.quad	0x40127ca0335f96c5              # double 4.6217048670857297
	.quad	0x3fdac798753f6aac              # double 0.41843234491322323
	.quad	0x401a9b6f13378e6a              # double 6.6517909052523496
	.quad	0x40110042b56686bf              # double 4.2502544730975265
	.quad	0x4020b5f3e1755076              # double 8.355376287050813
	.quad	0x40219e92ffc9116a              # double 8.80971526460117
	.quad	0x4020524b0b050d2f              # double 8.1607287830034618
	.quad	0x401b26df00e45071              # double 6.7879600657798713
	.quad	0x4014a127f0d858a7              # double 5.1573789245650579
	.quad	0x3feb65c66aa01bc4              # double 0.8561737139251524
	.quad	0x4018693231e96b12              # double 6.1027305411069097
	.quad	0x401a8eef6701be3c              # double 6.6395851225675493
	.quad	0x401d533e50db1284              # double 7.331292403575052
	.quad	0x401e0d279512619a              # double 7.5128463070363072
	.quad	0x40225ba92f0bb5a7              # double 9.1790251447481079
	.quad	0x4023b0a01864c5ce              # double 9.8449714301122206
	.quad	0x40185a8baa8c044e              # double 6.0884234092673761
	.quad	0x4014327c9c9272bc              # double 5.0493034805664898
	.quad	0x4004f4a115bbfea0              # double 2.6194478700634392
	.quad	0x401a7ffc95f2cca0              # double 6.6249869756167357
	.quad	0x3fde7072135c22b8              # double 0.47561313524833393
	.quad	0x4018dc357d16cef0              # double 6.215047792927848
	.quad	0x401a92d1f0ae3aa0              # double 6.6433789831486649
	.quad	0x4008b409f4ceb0ea              # double 3.0879096150948628
	.quad	0x4001c4320f3ba9a2              # double 2.2207986059267606
	.quad	0x3ff4a1272f5238cd              # double 1.2893440102084697
	.quad	0x4022b829a4c43872              # double 9.3596927155997243
	.quad	0x3ff433382aac634b              # double 1.2625047366074849
	.quad	0x3ff2cfdcb7523d8b              # double 1.1757476006494894
	.quad	0x401c874f2dac3bfe              # double 7.1321379791615964
	.quad	0x3fe88e3db0fc90ce              # double 0.76736340110485357
	.quad	0x401092ebb956d1f0              # double 4.1434773406258358
	.quad	0x400e96697029271c              # double 3.8234432947691754
	.quad	0x3ff6e385f5c00623              # double 1.4305476760495217
	.quad	0x4021eb75fd62ef6d              # double 8.9598845656653001
	.quad	0x402232161b846c0c              # double 9.0978249167583484
	.quad	0x40056fb5993f2cd2              # double 2.6795455906300072
	.quad	0x40106181202565a2              # double 4.0952191374612159
	.quad	0x4000cb4f0582f4bc              # double 2.0992718153562162
	.quad	0x40226192d91c6122              # double 9.1905734870093205
	.quad	0x40224d43ca520926              # double 9.1509078240529327
	.quad	0x3ff44b94a71bc57e              # double 1.2684523132014358
	.quad	0x400f4bb282098522              # double 3.9119615706591881
	.quad	0x40123b659efe7366              # double 4.5580048411182812
	.quad	0x4006fdb3e55cbab3              # double 2.8738782805370078
	.quad	0x401c5f9b9d685494              # double 7.0933670611313069
	.quad	0x402330cfa0a832b3              # double 9.5953340726203801
	.quad	0x4013534dde7b62dc              # double 4.8313517344292585
	.quad	0x3ff0188d0cfb8855              # double 1.0059938914423772
	.quad	0x3ff63b3f0333aa9d              # double 1.3894643902846504
	.quad	0x3fd2ea6c78557c60              # double 0.2955580878387476
	.quad	0x40121fa90f168ff4              # double 4.5309183461686082
	.quad	0x401f69dbf908e6a4              # double 7.853378192108412
	.quad	0x401b2ee05744d802              # double 6.7957776675957593
	.quad	0x400ca58af8d3ab16              # double 3.5808314742656746
	.quad	0x400eee5e4c003996              # double 3.8663907945221565
	.quad	0x401356a523f610cf              # double 4.8346143359123763
	.quad	0x40226521aa01bc46              # double 9.1975224616163693
	.quad	0x40054a64711326c0              # double 2.6613243898362668
	.quad	0x402183f72133d3c9              # double 8.7577448249593477
	.quad	0x4014811e6bd36247              # double 5.1260926101463786
	.quad	0x400a11d4591af48a              # double 3.2587058030463298
	.quad	0x4014690e4207e088              # double 5.1025934521968637
	.quad	0x400568b593140c28              # double 2.6761275759213454
	.quad	0x4021e0ac9de30686              # double 8.9388169612532344
	.quad	0x40001024586bf8de              # double 2.0078818233442766
	.quad	0x4006cbc9b82ef3c4              # double 2.8495058430985143
	.quad	0x400ffd6aabaaf43e              # double 3.9987386142297785
	.quad	0x401265e9e914a058              # double 4.59952511013406
	.quad	0x4017190e7aa6db4e              # double 5.7744692959157202
	.quad	0x4019ade639eb79de              # double 6.4198235559437915
	.quad	0x4021964f20e4dda2              # double 8.7935724524857655
	.quad	0x4022ea3cfbfb1d3f              # double 9.4574965232883396
	.quad	0x400f0a0e1b98cc48              # double 3.8799097209935418
	.quad	0x3ff5aa5bea2afd59              # double 1.3540915629563044
	.quad	0x4014e67abd709a66              # double 5.225077590940236
	.size	.L__constant_10x10xf64, 800

	.type	.L__constant_15xindex,@object   # @__constant_15xindex
	.p2align	6, 0x0
.L__constant_15xindex:
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.size	.L__constant_15xindex, 120

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	4                               # 0x4
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	8                               # 0x8
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	11                              # 0xb
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.size	.L__constant_11xindex, 88

	.type	.L__constant_15xf64,@object     # @__constant_15xf64
	.p2align	6, 0x0
.L__constant_15xf64:
	.quad	0x3fde99029ae4f334              # double 0.47808899999999999
	.quad	0x40030c447c30d307              # double 2.3809900000000002
	.quad	0x4010265fd8adab9f              # double 4.0374749999999997
	.quad	0x4020ac7a5b0ff10f              # double 8.3368710000000004
	.quad	0x401403c81908e582              # double 5.0036930000000002
	.quad	0x3ffd8ff64cf8d717              # double 1.847647
	.quad	0x4022fba8a3f8982d              # double 9.4915210000000005
	.quad	0x400ef82a9930be0e              # double 3.871175
	.quad	0x4012338b04ab606b              # double 4.5503349999999996
	.quad	0x4023109a24031487              # double 9.5324259999999991
	.quad	0x40185f4b1ee24357              # double 6.0930600000000004
	.quad	0x4022cd22c881e471              # double 9.4006559999999996
	.quad	0x401f4cf95d4e8fb0              # double 7.82517
	.quad	0x4015cadc0980b242              # double 5.448105
	.quad	0x4014d52d234eb9a1              # double 5.2081799999999996
	.size	.L__constant_15xf64, 120

	.section	".note.GNU-stack","",@progbits
