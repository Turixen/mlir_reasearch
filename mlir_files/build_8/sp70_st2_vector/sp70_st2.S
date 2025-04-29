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
	.quad	0x401c8f96fefceac7              # double 7.1402244417064997
	.quad	0x401e3a1ed975de0e              # double 7.5567583063307335
	.quad	0x40132b8ba83de6a8              # double 4.7925249374181149
	.quad	0x401991c898707d11              # double 6.3923667734773213
	.quad	0x3ff707a38a9957e0              # double 1.4393649496100736
	.quad	0x3fff02625c5f906c              # double 1.9380820854503567
	.quad	0x4004871416a988e6              # double 2.5659562845695403
	.quad	0x40169b54687ffaa0              # double 5.6516891792404351
	.quad	0x400e2b8b4fc49b92              # double 3.7712618095278652
	.quad	0x40199b6407a022b3              # double 6.4017487708558063
	.quad	0x3fe3c7fc0a414fd8              # double 0.61816217425302522
	.quad	0x4021decb5521e5bb              # double 8.9351450542334216
	.quad	0x3ffca1730250d9ca              # double 1.7894163217985004
	.quad	0x400d3e1e50c8d184              # double 3.6553312598500174
	.quad	0x3fcd4ff7d4a14af8              # double 0.22900293237997693
	.quad	0x401db9c2ebc3cef2              # double 7.4314076269399596
	.quad	0x3fe070b0ca5e0712              # double 0.51375617527830486
	.quad	0x400892b26a48ce0a              # double 3.0716293624370836
	.quad	0x4013655c404b2040              # double 4.8489847226956613
	.quad	0x401feaa0876bae7b              # double 7.9791279944871531
	.quad	0x4003be1cb2df980c              # double 2.4678281759725049
	.quad	0x4021481c2ae5565e              # double 8.6408399014427992
	.quad	0x402337dc48f31513              # double 9.6091025158625935
	.quad	0x3ff56958cbe8cabd              # double 1.338219448586343
	.quad	0x40160009bf3f5016              # double 5.5000371820824707
	.quad	0x401d3c228668c420              # double 7.3087254525608216
	.quad	0x3ff52adceb06113b              # double 1.3229645901311204
	.quad	0x40115d592305b286              # double 4.3411603424289122
	.quad	0x401f913fbfcb9651              # double 7.8918447463998555
	.quad	0x40222500e70a2021              # double 9.0722725105152353
	.quad	0x400f07f67a553cd4              # double 3.8788880879652456
	.quad	0x400286d12956c190              # double 2.3158286313629972
	.quad	0x4007f85fd6989ab0              # double 2.9962765469857331
	.quad	0x4021d475a8394ad9              # double 8.9149601526200275
	.quad	0x40237162bc16ec36              # double 9.7214564111692248
	.quad	0x40041b849fa608f0              # double 2.5134365532440981
	.quad	0x4023b9dc685a1a32              # double 9.8630097017276945
	.quad	0x40147a26d8178701              # double 5.1192888035163842
	.quad	0x400ed1506871a516              # double 3.852204147308508
	.quad	0x4023138bdbf52037              # double 9.5381764160848501
	.quad	0x3ffe4d333b991478              # double 1.8938476875348709
	.quad	0x4016dde840e0978d              # double 5.7167062890129161
	.quad	0x401e95d20f5dc8ec              # double 7.646309127902196
	.quad	0x4010b98f8950e1a6              # double 4.1812116103759873
	.quad	0x401d524c24b86ab4              # double 7.3303685891684616
	.quad	0x40216164c89a661e              # double 8.6902220428919996
	.quad	0x401719cdba263505              # double 5.7751988492793815
	.quad	0x400ab3000a24b580              # double 3.337402419324178
	.quad	0x4011c700d778c81e              # double 4.4443391482800774
	.quad	0x3fc82d5d9124be98              # double 0.18888444506727775
	.quad	0x401200e72f257be2              # double 4.5008818976047866
	.quad	0x40210f66bf0c5913              # double 8.5300807669232537
	.quad	0x401da9a8cbffedc3              # double 7.4156829714733616
	.quad	0x402163108a4a43ae              # double 8.6934855666785005
	.quad	0x4007aee1df2270c7              # double 2.9603917534242075
	.quad	0x401ccd04da7a4006              # double 7.2002138268580946
	.quad	0x3ffe647972df116e              # double 1.899529885021447
	.quad	0x4007985fce986673              # double 2.9494014873751495
	.quad	0x4000ed054d0049b8              # double 2.1157327666962509
	.quad	0x4011673f61b34016              # double 4.3508277192741129
	.quad	0x40216a94201eb812              # double 8.7081613576411065
	.quad	0x4017dd271c69a915              # double 5.965969509076122
	.quad	0x3f75314e6a2dce00              # double 0.0051739752842538955
	.quad	0x401fc60af16eeabe              # double 7.9434011196087209
	.quad	0x400ae4dd5a4c2647              # double 3.361750321816348
	.quad	0x40108238b8aa4f98              # double 4.1271694997739345
	.quad	0x3fb6fcd13c6eeda0              # double 0.089795186285235307
	.quad	0x4021625878ce0215              # double 8.6920812369799396
	.quad	0x401d6a819c83bf78              # double 7.3540100531971503
	.quad	0x4004546aafd08930              # double 2.5412191138758757
	.quad	0x401ed22c162cd7fa              # double 7.7052463021154782
	.quad	0x40132cbed94cef9f              # double 4.7936967805107136
	.quad	0x3fe084a9b8ff5860              # double 0.51619421131432475
	.quad	0x4003fdf7a970df82              # double 2.4990075337954645
	.quad	0x401bb74e0e314e50              # double 6.929008695372957
	.quad	0x400d3806d239e6aa              # double 3.652356760398864
	.quad	0x401720da2d2c5e2a              # double 5.7820822771387075
	.quad	0x402205ff49b75b7b              # double 9.0117133175206074
	.quad	0x400f6a9f72a96df2              # double 3.9270619352298519
	.quad	0x3ff3b6acd7bcf667              # double 1.2320984294196025
	.quad	0x40075ac966edd0ec              # double 2.9193294564557757
	.quad	0x3fde5bb9aeea1ff0              # double 0.47434846955775267
	.quad	0x4015c715e2064d4c              # double 5.4444194141718292
	.quad	0x3fe8828f3c026fd2              # double 0.76593744011506204
	.quad	0x402068f843243127              # double 8.2050190908126535
	.quad	0x400dd6504b66b180              # double 3.7296453371729399
	.quad	0x4020ae7acd5ac842              # double 8.3407806561773477
	.quad	0x400129dda1a48920              # double 2.1454422596299452
	.quad	0x40039f70ac3edf0a              # double 2.4528516251265318
	.quad	0x4021de9762743d90              # double 8.9347487227339855
	.quad	0x40238569ef98603f              # double 9.7605738519197284
	.quad	0x40079f1547cfef3e              # double 2.952677308114203
	.quad	0x4012b45f975924ee              # double 4.6761459015044533
	.quad	0x401a0ca2d12f830d              # double 6.5123398480652783
	.quad	0x40120b695f96dc65              # double 4.5111441551044651
	.quad	0x4021a11c30ae2120              # double 8.8146681988296791
	.quad	0x4022d0fe5d7ee03c              # double 9.40819065259722
	.quad	0x401decf2df3054b7              # double 7.4813952325104571
	.quad	0x4017656c2fa9deca              # double 5.8490455100470147
	.quad	0x3fef399f062bf220              # double 0.97578383641627297
	.size	.L__constant_10x10xf64, 800

	.type	.L__constant_30xindex,@object   # @__constant_30xindex
	.p2align	6, 0x0
.L__constant_30xindex:
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	2                               # 0x2
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
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	6                               # 0x6
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	3                               # 0x3
	.size	.L__constant_30xindex, 240

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.size	.L__constant_11xindex, 88

	.type	.L__constant_30xf64,@object     # @__constant_30xf64
	.p2align	6, 0x0
.L__constant_30xf64:
	.quad	0x4010cc59fb1e18f0              # double 4.1995620000000002
	.quad	0x400a0a65492ff4ba              # double 3.2550759999999999
	.quad	0x400fcca3e7d13511              # double 3.9749219999999998
	.quad	0x3fec51f601797cc4              # double 0.88500500000000004
	.quad	0x401a76cdf266ba49              # double 6.6160199999999998
	.quad	0x3fd3ea704bc27632              # double 0.31118400000000002
	.quad	0x4019712018a43bb4              # double 6.360474
	.quad	0x3fff8f3dc054ef46              # double 1.9724710000000001
	.quad	0x400235182a9930be              # double 2.275925
	.quad	0x40226ae557de0d67              # double 9.2087810000000001
	.quad	0x3fe65dbfceb78898              # double 0.69894400000000001
	.quad	0x401129ff4fd6d7e9              # double 4.2910130000000004
	.quad	0x40225709b738e6d1              # double 9.1699959999999994
	.quad	0x40238ce0114d2f5e              # double 9.7751470000000005
	.quad	0x3fe6d0fa58f7121b              # double 0.71301000000000003
	.quad	0x401ae0cd423d9232              # double 6.7195330000000002
	.quad	0x401c55332acfb763              # double 7.0832030000000001
	.quad	0x4021229b8cb8e087              # double 8.5675930000000005
	.quad	0x4000a17ebaf10236              # double 2.0788549999999999
	.quad	0x3fda7e49b1fab96f              # double 0.41395799999999999
	.quad	0x4018f5d0fa58f712              # double 6.2400549999999999
	.quad	0x4015f2bba98eda23              # double 5.487044
	.quad	0x4017c917939a7c18              # double 5.9463790000000003
	.quad	0x4022dbc74fb549f9              # double 9.4292549999999994
	.quad	0x4013a0a808c8259e              # double 4.9068909999999999
	.quad	0x40050f0e0a84be40              # double 2.6323509999999999
	.quad	0x401a1faa8a82a561              # double 6.5309239999999997
	.quad	0x401cdccc89b0ee4a              # double 7.215624
	.quad	0x40214786e3b46fdf              # double 8.6397010000000005
	.quad	0x3ff665eaab042529              # double 1.3998820000000001
	.size	.L__constant_30xf64, 240

	.section	".note.GNU-stack","",@progbits
