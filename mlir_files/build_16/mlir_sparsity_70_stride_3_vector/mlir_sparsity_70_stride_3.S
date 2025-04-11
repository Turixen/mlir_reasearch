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
	addi	sp, sp, -80
	.cfi_def_cfa_offset 80
	sd	s0, 72(sp)                      # 8-byte Folded Spill
	sd	s1, 64(sp)                      # 8-byte Folded Spill
	sd	s2, 56(sp)                      # 8-byte Folded Spill
	sd	s3, 48(sp)                      # 8-byte Folded Spill
	sd	s4, 40(sp)                      # 8-byte Folded Spill
	sd	s5, 32(sp)                      # 8-byte Folded Spill
	sd	s6, 24(sp)                      # 8-byte Folded Spill
	sd	s7, 16(sp)                      # 8-byte Folded Spill
	sd	s8, 8(sp)                       # 8-byte Folded Spill
	.cfi_offset s0, -8
	.cfi_offset s1, -16
	.cfi_offset s2, -24
	.cfi_offset s3, -32
	.cfi_offset s4, -40
	.cfi_offset s5, -48
	.cfi_offset s6, -56
	.cfi_offset s7, -64
	.cfi_offset s8, -72
	li	t6, 0
	li	t5, 0
	ld	s8, 192(sp)
	ld	a6, 288(sp)
	ld	t0, 280(sp)
	ld	t1, 272(sp)
	ld	t2, 264(sp)
	ld	t3, 256(sp)
	ld	a4, 248(sp)
	ld	t4, 240(sp)
	ld	s3, 112(sp)
	li	s7, 99
	li	s2, 800
	j	.LBB0_2
.LBB0_1:                                #   in Loop: Header=BB0_2 Depth=1
	addi	t5, t5, 1
	addi	t6, t6, 800
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #       Child Loop BB0_7 Depth 3
	blt	s7, t5, .LBB0_8
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	slli	a1, t5, 3
	add	a1, a1, a2
	lwu	s4, 4(a1)
	lwu	s1, 0(a1)
	lwu	s0, 12(a1)
	lwu	a1, 8(a1)
	slli	s4, s4, 32
	or	s5, s4, s1
	slli	s0, s0, 32
	or	s4, s0, a1
	j	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=2
	addi	s5, s5, 1
.LBB0_5:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_7 Depth 3
	bge	s5, s4, .LBB0_1
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=2
	li	a1, 0
	slli	s0, s5, 3
	add	s1, a7, s0
	lwu	s6, 4(s1)
	lwu	s1, 0(s1)
	add	s0, s0, s3
	fld	fa5, 0(s0)
	slli	s6, s6, 32
	or	s0, s6, s1
	mul	s0, s0, s2
	mv	s1, t6
	bltz	s7, .LBB0_4
.LBB0_7:                                #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add	a3, a4, s0
	add	a5, s8, s1
	fld	fa4, 0(a5)
	fld	fa3, 0(a3)
	addi	a1, a1, 1
	addi	s0, s0, 8
	fmul.d	fa4, fa5, fa4
	fadd.d	fa4, fa3, fa4
	fsd	fa4, 0(a3)
	addi	s1, s1, 8
	bge	s7, a1, .LBB0_7
	j	.LBB0_4
.LBB0_8:
	sd	t4, 0(a0)
	sd	a4, 8(a0)
	sd	t3, 16(a0)
	sd	t2, 24(a0)
	sd	t1, 32(a0)
	sd	t0, 40(a0)
	sd	a6, 48(a0)
	ld	s0, 72(sp)                      # 8-byte Folded Reload
	ld	s1, 64(sp)                      # 8-byte Folded Reload
	ld	s2, 56(sp)                      # 8-byte Folded Reload
	ld	s3, 48(sp)                      # 8-byte Folded Reload
	ld	s4, 40(sp)                      # 8-byte Folded Reload
	ld	s5, 32(sp)                      # 8-byte Folded Reload
	ld	s6, 24(sp)                      # 8-byte Folded Reload
	ld	s7, 16(sp)                      # 8-byte Folded Reload
	ld	s8, 8(sp)                       # 8-byte Folded Reload
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	.cfi_restore s4
	.cfi_restore s5
	.cfi_restore s6
	.cfi_restore s7
	.cfi_restore s8
	addi	sp, sp, 80
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
	lui	a0, 20
	addiw	a0, a0, -1856
	call	malloc
	mv	s0, a0
	addi	a0, a0, 63
	andi	s1, a0, -64
	addi	a0, sp, 280
	call	test_assemble
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
	lui	t1, %hi(.L__constant_100x100xf64)
	addi	t1, t1, %lo(.L__constant_100x100xf64)
	lui	s1, 228023
	lui	t2, 5702
	addi	t3, sp, 184
	slli	s1, s1, 2
	addi	s1, s1, -273
	sd	a0, 96(sp)
	sd	s1, 104(sp)
	sd	t1, 112(sp)
	sd	t0, 152(sp)
	lui	a0, 411206
	addi	s1, t2, 1124
	vse64.v	v12, (sp)
	vmv.s.x	v10, s1
	addi	s1, sp, 120
	addi	a0, a0, 1024
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
	fld	fa5, 808(a0)
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
	.p2align	5, 0x0                          # -- Begin function test_assemble
.LCPI2_0:
	.quad	0                               # 0x0
	.quad	3000                            # 0xbb8
	.quad	1                               # 0x1
	.quad	100                             # 0x64
.LCPI2_1:
	.quad	0                               # 0x0
	.quad	3000                            # 0xbb8
	.quad	1                               # 0x1
	.quad	3735928559                      # 0xdeadbeef
.LCPI2_2:
	.quad	0                               # 0x0
	.quad	101                             # 0x65
	.quad	1                               # 0x1
	.quad	3735928559                      # 0xdeadbeef
	.text
	.globl	test_assemble
	.p2align	1
	.type	test_assemble,@function
test_assemble:                          # @test_assemble
	.cfi_startproc
# %bb.0:
	lui	a1, %hi(.L__constant_101xindex)
	addi	a1, a1, %lo(.L__constant_101xindex)
	lui	a7, %hi(.L__constant_3000xindex)
	addi	a7, a7, %lo(.L__constant_3000xindex)
	lui	t0, %hi(.L__constant_3000xf64)
	addi	t0, t0, %lo(.L__constant_3000xf64)
	li	a6, 101
	li	a5, 100
	lui	a4, 228023
	lui	a2, %hi(.LCPI2_0)
	addi	a2, a2, %lo(.LCPI2_0)
	addi	a3, a0, 96
	vsetivli	zero, 4, e64, m2, ta, ma
	vle64.v	v8, (a2)
	lui	a2, %hi(.LCPI2_1)
	addi	a2, a2, %lo(.LCPI2_1)
	vle64.v	v10, (a2)
	ld	a2, 800(a1)
	slli	a4, a4, 2
	addi	a4, a4, -273
	sd	a4, 0(a0)
	sd	a1, 8(a0)
	sd	a7, 48(a0)
	sd	t0, 88(a0)
	lui	a1, %hi(.LCPI2_2)
	addi	a1, a1, %lo(.LCPI2_2)
	sd	a5, 128(a0)
	sd	a6, 136(a0)
	sd	a2, 144(a0)
	sd	a2, 152(a0)
	vse64.v	v8, (a3)
	vle64.v	v8, (a1)
	addi	a1, a0, 56
	vse64.v	v10, (a1)
	addi	a0, a0, 16
	vse64.v	v8, (a0)
	ret
.Lfunc_end2:
	.size	test_assemble, .Lfunc_end2-test_assemble
	.cfi_endproc
                                        # -- End function
	.type	.L__constant_101xindex,@object  # @__constant_101xindex
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
.L__constant_101xindex:
	.quad	0                               # 0x0
	.quad	47                              # 0x2f
	.quad	65                              # 0x41
	.quad	91                              # 0x5b
	.quad	135                             # 0x87
	.quad	156                             # 0x9c
	.quad	186                             # 0xba
	.quad	236                             # 0xec
	.quad	251                             # 0xfb
	.quad	267                             # 0x10b
	.quad	315                             # 0x13b
	.quad	336                             # 0x150
	.quad	357                             # 0x165
	.quad	398                             # 0x18e
	.quad	415                             # 0x19f
	.quad	437                             # 0x1b5
	.quad	485                             # 0x1e5
	.quad	508                             # 0x1fc
	.quad	532                             # 0x214
	.quad	581                             # 0x245
	.quad	605                             # 0x25d
	.quad	625                             # 0x271
	.quad	670                             # 0x29e
	.quad	690                             # 0x2b2
	.quad	699                             # 0x2bb
	.quad	745                             # 0x2e9
	.quad	764                             # 0x2fc
	.quad	782                             # 0x30e
	.quad	831                             # 0x33f
	.quad	851                             # 0x353
	.quad	871                             # 0x367
	.quad	919                             # 0x397
	.quad	938                             # 0x3aa
	.quad	959                             # 0x3bf
	.quad	1003                            # 0x3eb
	.quad	1022                            # 0x3fe
	.quad	1038                            # 0x40e
	.quad	1090                            # 0x442
	.quad	1106                            # 0x452
	.quad	1129                            # 0x469
	.quad	1179                            # 0x49b
	.quad	1202                            # 0x4b2
	.quad	1224                            # 0x4c8
	.quad	1273                            # 0x4f9
	.quad	1292                            # 0x50c
	.quad	1317                            # 0x525
	.quad	1369                            # 0x559
	.quad	1390                            # 0x56e
	.quad	1410                            # 0x582
	.quad	1458                            # 0x5b2
	.quad	1477                            # 0x5c5
	.quad	1496                            # 0x5d8
	.quad	1550                            # 0x60e
	.quad	1565                            # 0x61d
	.quad	1585                            # 0x631
	.quad	1632                            # 0x660
	.quad	1660                            # 0x67c
	.quad	1677                            # 0x68d
	.quad	1723                            # 0x6bb
	.quad	1739                            # 0x6cb
	.quad	1761                            # 0x6e1
	.quad	1807                            # 0x70f
	.quad	1837                            # 0x72d
	.quad	1854                            # 0x73e
	.quad	1898                            # 0x76a
	.quad	1920                            # 0x780
	.quad	1945                            # 0x799
	.quad	1990                            # 0x7c6
	.quad	2015                            # 0x7df
	.quad	2041                            # 0x7f9
	.quad	2089                            # 0x829
	.quad	2121                            # 0x849
	.quad	2136                            # 0x858
	.quad	2185                            # 0x889
	.quad	2207                            # 0x89f
	.quad	2225                            # 0x8b1
	.quad	2270                            # 0x8de
	.quad	2292                            # 0x8f4
	.quad	2316                            # 0x90c
	.quad	2360                            # 0x938
	.quad	2380                            # 0x94c
	.quad	2399                            # 0x95f
	.quad	2448                            # 0x990
	.quad	2465                            # 0x9a1
	.quad	2489                            # 0x9b9
	.quad	2533                            # 0x9e5
	.quad	2555                            # 0x9fb
	.quad	2574                            # 0xa0e
	.quad	2630                            # 0xa46
	.quad	2659                            # 0xa63
	.quad	2681                            # 0xa79
	.quad	2726                            # 0xaa6
	.quad	2749                            # 0xabd
	.quad	2776                            # 0xad8
	.quad	2827                            # 0xb0b
	.quad	2850                            # 0xb22
	.quad	2872                            # 0xb38
	.quad	2924                            # 0xb6c
	.quad	2936                            # 0xb78
	.quad	2955                            # 0xb8b
	.quad	3000                            # 0xbb8
	.size	.L__constant_101xindex, 808

	.type	.L__constant_3000xindex,@object # @__constant_3000xindex
	.p2align	6, 0x0
.L__constant_3000xindex:
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	9                               # 0x9
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	64                              # 0x40
	.quad	72                              # 0x48
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	19                              # 0x13
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	57                              # 0x39
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	67                              # 0x43
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	37                              # 0x25
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	36                              # 0x24
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	77                              # 0x4d
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	4                               # 0x4
	.quad	13                              # 0xd
	.quad	24                              # 0x18
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	77                              # 0x4d
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	65                              # 0x41
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	10                              # 0xa
	.quad	26                              # 0x1a
	.quad	35                              # 0x23
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	89                              # 0x59
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	46                              # 0x2e
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	97                              # 0x61
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	26                              # 0x1a
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	83                              # 0x53
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	50                              # 0x32
	.quad	62                              # 0x3e
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	48                              # 0x30
	.quad	59                              # 0x3b
	.quad	68                              # 0x44
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	78                              # 0x4e
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	20                              # 0x14
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	67                              # 0x43
	.quad	79                              # 0x4f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	37                              # 0x25
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	13                              # 0xd
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	21                              # 0x15
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	90                              # 0x5a
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	45                              # 0x2d
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	84                              # 0x54
	.quad	93                              # 0x5d
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	23                              # 0x17
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	58                              # 0x3a
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	70                              # 0x46
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	63                              # 0x3f
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	19                              # 0x13
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	43                              # 0x2b
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	10                              # 0xa
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	91                              # 0x5b
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.size	.L__constant_3000xindex, 24000

	.type	.L__constant_3000xf64,@object   # @__constant_3000xf64
	.p2align	6, 0x0
.L__constant_3000xf64:
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.size	.L__constant_3000xf64, 24000

	.type	.L__constant_100x100xf64,@object # @__constant_100x100xf64
	.p2align	6, 0x0
.L__constant_100x100xf64:
	.quad	0x3fee3b571a26a3bd              # double 0.94474368198017766
	.quad	0x3fee9caf6df8729a              # double 0.95662662008870147
	.quad	0x3fb76308a77e4890              # double 0.091354885951917319
	.quad	0x3fdb717f554040ae              # double 0.42880233121196454
	.quad	0x3fd233fd1eea7e1c              # double 0.2844231416620191
	.quad	0x3fe5bca376088d96              # double 0.67927716306114649
	.quad	0x3fdf40690d2022b4              # double 0.48830629617490762
	.quad	0x3fa078f98c02fd00              # double 0.032172964421528505
	.quad	0x3fed5ba2fb9a2f98              # double 0.91743611470291153
	.quad	0x3fd1551737a19bd6              # double 0.27081852371924009
	.quad	0x3feb506eecdf8da7              # double 0.85356851829822211
	.quad	0x3fe37d3e330224a4              # double 0.60903844797680451
	.quad	0x3fa9ee274b788fe0              # double 0.050645091974985013
	.quad	0x3fb7f14044107ba8              # double 0.093524948708803124
	.quad	0x3fde4ee8f3e5430e              # double 0.47356628244328725
	.quad	0x3fc3abf5ff4c4b18              # double 0.15368533101771997
	.quad	0x3fe5f3be16d957c9              # double 0.68600372755712968
	.quad	0x3fe71b7ed2b1584b              # double 0.72210637236526887
	.quad	0x3fa8edf548e30d90              # double 0.048690476558046147
	.quad	0x3fc0dffd9687ac30              # double 0.13183564996811148
	.quad	0x3fbc51738b552680              # double 0.11061784888911497
	.quad	0x3fef46b8c62f011c              # double 0.97738302905785046
	.quad	0x3fe79d0dee662dc6              # double 0.73792168199855079
	.quad	0x3fdd9cba0e6ef764              # double 0.46269084367292224
	.quad	0x3fd349ff0cb0fa2c              # double 0.30139137496363122
	.quad	0x3fd983d2313ace2e              # double 0.39867071921910024
	.quad	0x3fdd81a3672823b2              # double 0.46103749345689515
	.quad	0x3fef0345bcbba6ab              # double 0.96914946424404513
	.quad	0x3feb2c52977bfeb4              # double 0.84916047655857207
	.quad	0x3fbb3058e7688ac0              # double 0.10620647096269931
	.quad	0x3fd0e79886f895e8              # double 0.26413548641934748
	.quad	0x3faf4f6a1b73d1d0              # double 0.061152759410024182
	.quad	0x3fccd69563fae274              # double 0.22529857045971691
	.quad	0x3fc96e0848cf53cc              # double 0.19867042117280531
	.quad	0x3fee8ebd8e07f1e5              # double 0.95492437115131834
	.quad	0x3fe56dbed99b6f4e              # double 0.66964666844749288
	.quad	0x3f9ad009d16b4dc0              # double 0.026184228331499915
	.quad	0x3fe9613ab0e34b71              # double 0.7931188063470086
	.quad	0x3fb4a88c795178e8              # double 0.080696849459375053
	.quad	0x3fee25323505ed69              # double 0.94204054218373046
	.quad	0x3fe65dfab1106ff0              # double 0.69897207815983897
	.quad	0x3fb38c20140406b0              # double 0.076356892477657423
	.quad	0x3f72e1bf7131ce00              # double 0.004609821148835902
	.quad	0x3fec2727a87d3aae              # double 0.87977965267221747
	.quad	0x3fdfae97961bf0b6              # double 0.49503125819297666
	.quad	0x3fe83b2e6321a33c              # double 0.75722426759339311
	.quad	0x3fe44bbcb3a90851              # double 0.6342452534665971
	.quad	0x3f9a6bbf04824ae0              # double 0.025801643991665624
	.quad	0x3fb554bcc0ddf258              # double 0.083324238859810662
	.quad	0x3fc688d9da65c3fc              # double 0.17605136074010364
	.quad	0x3feee09a41210398              # double 0.96491730423450672
	.quad	0x3fec779d893c5abb              # double 0.88960148624285951
	.quad	0x3fcce3d4c501a0e8              # double 0.22570285434199566
	.quad	0x3feb5b623836d17e              # double 0.8549052331859881
	.quad	0x3fe1278d7013b49f              # double 0.53607818498644011
	.quad	0x3f32d26d073b4800              # double 2.8720056364506252E-4
	.quad	0x3feb4ae6bad4c5a2              # double 0.85289322367150455
	.quad	0x3fe17527b3c3b062              # double 0.54555115804897647
	.quad	0x3fe4abd788c98f49              # double 0.64597679821279386
	.quad	0x3feb5a5358e1c42a              # double 0.85477607116456977
	.quad	0x3fd927653eea70be              # double 0.39302950996512809
	.quad	0x3fdcccd2934ca48c              # double 0.45000137695985454
	.quad	0x3fae3a2eddf4dcc0              # double 0.059037651628778942
	.quad	0x3fc17cf86a59877c              # double 0.13662629311425778
	.quad	0x3fe79b0312535911              # double 0.7376723630830232
	.quad	0x3feff8ef67dd62d7              # double 0.99913759504405674
	.quad	0x3fe7968405ae0753              # double 0.73712349995933335
	.quad	0x3feba88c5e60fa73              # double 0.86432474549640259
	.quad	0x3fcf69cc4faba540              # double 0.24541620149765642
	.quad	0x3fc0ffd1c1e8b47c              # double 0.13280698745930752
	.quad	0x3fe30420b3e20de0              # double 0.59425387509730498
	.quad	0x3fdcfe76f1e5d1b4              # double 0.45303128836465167
	.quad	0x3fb15f45e6667128              # double 0.067860001325645514
	.quad	0x3fd1fcf1672d1116              # double 0.28106341434274051
	.quad	0x3fbd1c228782e540              # double 0.11371055420285803
	.quad	0x3fee0883180162b3              # double 0.93853907288128935
	.quad	0x3fea27d964135803              # double 0.81736440225608964
	.quad	0x3feacce15e3698b9              # double 0.83750980759648208
	.quad	0x3fea9b3284894bf6              # double 0.83144498716353499
	.quad	0x3fe48c3aa220cd49              # double 0.64211780229235516
	.quad	0x3fcc7da40777b190              # double 0.22258425106646174
	.quad	0x3fd132ba4191d59a              # double 0.26872116473472263
	.quad	0x3fe7691f5f5c4896              # double 0.73158234238714459
	.quad	0x3fe9121914ba6c70              # double 0.78345922516326816
	.quad	0x3fe8e141a0878ac9              # double 0.77749711373720587
	.quad	0x3fe4c72e2037a254              # double 0.64931398670621343
	.quad	0x3fd348a788562e10              # double 0.30130947412610087
	.quad	0x3fd92c1ce4d212ce              # double 0.39331743570100464
	.quad	0x3feb5c42510588db              # double 0.85501209091696795
	.quad	0x3fe97881f00d8a81              # double 0.79596039662676799
	.quad	0x3fee2cb927427e3c              # double 0.94295938175122939
	.quad	0x3fd6c6cbc860ea70              # double 0.35588354652615006
	.quad	0x3fd584f58fb0a3fe              # double 0.33624018699862279
	.quad	0x3fe4bfd4f909a902              # double 0.64841698303396833
	.quad	0x3fd92349b6d5b0e2              # double 0.39277880530313614
	.quad	0x3fe5ea63c219de9c              # double 0.68486202154504694
	.quad	0x3fd495253c446278              # double 0.32160311589681312
	.quad	0x3fddda7731d4bb24              # double 0.46645908228213018
	.quad	0x3fe9dc5e10541e30              # double 0.8081503218572319
	.quad	0x3fe7ab7d4ff09465              # double 0.73968377698168963
	.quad	0x3fe17a876bf06092              # double 0.54620715219336291
	.quad	0x3fe618c8b31f6896              # double 0.69052538857364953
	.quad	0x3fd71c3fa80f0254              # double 0.3610991612622787
	.quad	0x3fe719d670871e92              # double 0.72190401056373532
	.quad	0x3fc6758510cc4694              # double 0.17546141929829118
	.quad	0x3fed21bb5ce046e1              # double 0.91036766185626672
	.quad	0x3fe86b7a528dfaca              # double 0.7631198513407409
	.quad	0x3fef388b90d20b98              # double 0.97565248761417233
	.quad	0x3fde47116b80380c              # double 0.47308764932756797
	.quad	0x3fc0bd75c1f49760              # double 0.13078186007003989
	.quad	0x3fe580fce5756646              # double 0.67199559036380019
	.quad	0x3fc3f427c97231fc              # double 0.15588853203043118
	.quad	0x3fe00d5ad415fd47              # double 0.5016302244475036
	.quad	0x3fbc718da4ae3540              # double 0.11110768576164265
	.quad	0x3fe8d084eeb9df6f              # double 0.77545401216683085
	.quad	0x3fea49478c6db008              # double 0.8214452498191358
	.quad	0x3fd389667f7152bc              # double 0.30526125379155267
	.quad	0x3fe3d2dc98563bb6              # double 0.61948995354929681
	.quad	0x3fa92ef9326d3a80              # double 0.049186503797149506
	.quad	0x3fe45ef31734c0b7              # double 0.63659052402910887
	.quad	0x3fe53a66ffc9730b              # double 0.66337919195538697
	.quad	0x3fe3af0839138c2f              # double 0.61511622569776658
	.quad	0x3fe7abb131ccbf98              # double 0.73970851637385504
	.quad	0x3f8fe0b3a4bf0f80              # double 0.015565303292426114
	.quad	0x3faa5909d6c6ff70              # double 0.051460559337555334
	.quad	0x3febe73c2ed697ca              # double 0.87197693966003809
	.quad	0x3fd4eadb068605a2              # double 0.3268344463068279
	.quad	0x3fee58c536a9a33c              # double 0.94833622623728031
	.quad	0x3fe9080d74e705dd              # double 0.7822329791308068
	.quad	0x3fe7d80e190bc743              # double 0.74512390987204247
	.quad	0x3fe862f6a4f376d0              # double 0.762080499811157
	.quad	0x3feccd11b9d526b5              # double 0.90003286643442115
	.quad	0x3feb73093d256b08              # double 0.85779249136553037
	.quad	0x3fc1759b3f85d35c              # double 0.13640156366059386
	.quad	0x3fd442598224ec5e              # double 0.31654966077230096
	.quad	0x3fd7303aa0406fb2              # double 0.36231866502361776
	.quad	0x3fdf690070ea2364              # double 0.49078379656616833
	.quad	0x3fea89c98c053e1b              # double 0.82931973788976465
	.quad	0x3fe165bd52767b49              # double 0.5436693773843696
	.quad	0x3fe22e3e9ed14fec              # double 0.56814509409968883
	.quad	0x3fe957b12914e364              # double 0.79195459388493505
	.quad	0x3fc12bb4d7611a70              # double 0.13414631382530073
	.quad	0x3fe045b3a5efdde4              # double 0.50850851449552836
	.quad	0x3feee36ae4087f58              # double 0.96526093042119054
	.quad	0x3fec2e059778119a              # double 0.88061790069382373
	.quad	0x3fe16be79437f8f9              # double 0.54442194889978091
	.quad	0x3fdda21291c8a17e              # double 0.46301712261858785
	.quad	0x3fd24a389e3eaf04              # double 0.28578010037993828
	.quad	0x3fe0912dc9a381b8              # double 0.51772202856596206
	.quad	0x3fbb5fcdac0adde0              # double 0.10693059396987037
	.quad	0x3fc4fbe0cc823074              # double 0.16393671022194989
	.quad	0x3fe5ef11e0061786              # double 0.6854333281960272
	.quad	0x3fdafc8cbb142c8c              # double 0.4216644122067883
	.quad	0x3fe12c0fd87a4808              # double 0.53662864952843936
	.quad	0x3fdf2d21da9a4076              # double 0.4871296534338464
	.quad	0x3fefa85adc46a6cf              # double 0.98930113814022913
	.quad	0x3faecc8278050e80              # double 0.060154034758423514
	.quad	0x3feb43aec9d42a8a              # double 0.85201205653841439
	.quad	0x3fe91d933a5961e7              # double 0.78486024280851729
	.quad	0x3fd2ac94faa81712              # double 0.29178356626685897
	.quad	0x3fe8cb42d6c4e817              # double 0.77481214472868742
	.quad	0x3fb14a6b8cf79048              # double 0.06754181090906386
	.quad	0x3fb70f72435e04b8              # double 0.090079442450604286
	.quad	0x3fbc09075b49ffa0              # double 0.10951276758896578
	.quad	0x3fe10ba1e1229e4f              # double 0.53266996356701124
	.quad	0x3fdeb1801b50ee38              # double 0.47958376567450811
	.quad	0x3fe94b008e7f8160              # double 0.79040553886083486
	.quad	0x3fcdacdf649bb93c              # double 0.23183815395845808
	.quad	0x3fcd64d89f7e386c              # double 0.22964008128878122
	.quad	0x3fc92b50fb5e516c              # double 0.19663440965508572
	.quad	0x3fa3db817921aeb0              # double 0.038784071003502674
	.quad	0x3fc7ec0f555fe14c              # double 0.18689147633245751
	.quad	0x3fc62bca3f4bf9f4              # double 0.17321136561072559
	.quad	0x3fe1043bc716a4e6              # double 0.53176678547347644
	.quad	0x3fa4490027c144d0              # double 0.039619450428867276
	.quad	0x3fec470e6ff10105              # double 0.88367387641486117
	.quad	0x3fba4171afb83988              # double 0.10256109752683618
	.quad	0x3fdc94db1f1661ba              # double 0.44658544574624737
	.quad	0x3fead176063aac71              # double 0.83806897369994549
	.quad	0x3fe321e8d92a43ea              # double 0.59788935103472096
	.quad	0x3fbbab8223e75c10              # double 0.10808575989300118
	.quad	0x3fee6619550e4ff4              # double 0.94996325123292857
	.quad	0x3fea40bfcaad8c55              # double 0.82040395341426608
	.quad	0x3fa4f2ea58022310              # double 0.04091579746552132
	.quad	0x3fd6cca119c183c0              # double 0.35623958125330191
	.quad	0x3fe202cab952a78d              # double 0.56284080692170024
	.quad	0x3fa22d9a0cb35bb0              # double 0.035504163790100463
	.quad	0x3fc4798c19392a24              # double 0.15995932799917612
	.quad	0x3fd30c9d8359c8d6              # double 0.29764497592181038
	.quad	0x3feeb818983c7352              # double 0.95997266515369462
	.quad	0x3fe24d9d88eeb2f4              # double 0.57197453255284225
	.quad	0x3f7efa1c9f865980              # double 0.0075627439586213318
	.quad	0x3fedc86d00f3129f              # double 0.93071603951883108
	.quad	0x3fe682419d4c033c              # double 0.70340042802863634
	.quad	0x3fa20c1b7a2ff170              # double 0.035248621621550735
	.quad	0x3fdeb71dd7e62da0              # double 0.47992654880428098
	.quad	0x3fe7c4a1c37054ea              # double 0.74275291606559546
	.quad	0x3fb6fcc7c3554ef8              # double 0.089794621647623418
	.quad	0x3fc763e6de3c6658              # double 0.18273626185764402
	.quad	0x3fcc10654c1f2350              # double 0.21925035683514205
	.quad	0x3fe81904f815d19e              # double 0.75305412725588261
	.quad	0x3febf4ece69cd7bf              # double 0.87364811936890152
	.quad	0x3fe102ee228e7caa              # double 0.53160769223531656
	.quad	0x3fd0346fc6596492              # double 0.25320047731435935
	.quad	0x3fe9456751fbabc0              # double 0.7897221184951988
	.quad	0x3fd184202af89ff0              # double 0.27368931003957098
	.quad	0x3fee98790ed638cd              # double 0.95611241243184397
	.quad	0x3fdb5038fabb6104              # double 0.42677139745275405
	.quad	0x3fe05c50464220b5              # double 0.51126874658895949
	.quad	0x3fd9f6926e6fa7a6              # double 0.40567456040173011
	.quad	0x3fec5c6927c58087              # double 0.88628061073178876
	.quad	0x3fe39f088a85a96a              # double 0.61316325240231362
	.quad	0x3fcd03eb249c0ac0              # double 0.22668208396506451
	.quad	0x3fdbb2e2c44a7c94              # double 0.43279332322158237
	.quad	0x3fca9c39054c6040              # double 0.20789253958423792
	.quad	0x3feef3c6c9cf9394              # double 0.96725787559681686
	.quad	0x3fb1c301c3ebf298              # double 0.069381819088400909
	.quad	0x3fc8ecf1ee54a598              # double 0.19473098885763984
	.quad	0x3fe15fb3cf9e6048              # double 0.54293242025870203
	.quad	0x3fea07a9a3748d3a              # double 0.81343538212642064
	.quad	0x3fd3ee88026bed88              # double 0.31143379436954222
	.quad	0x3feb5a0bc45eeb4d              # double 0.85474193910281715
	.quad	0x3fecb70240c97cea              # double 0.89733994153712371
	.quad	0x3fe26b0689589775              # double 0.5755646402874236
	.quad	0x3fd065a34df0ed5c              # double 0.25620348559796979
	.quad	0x3fddcd7d346641b6              # double 0.46566705815441922
	.quad	0x3fd05e07d2471a9a              # double 0.25573916945396891
	.quad	0x3fd2eb16e5b121dc              # double 0.29559872084476324
	.quad	0x3fed9cee66eea33f              # double 0.92540664771977521
	.quad	0x3fcc05458343e798              # double 0.2189108744567505
	.quad	0x3feab3663d524cb3              # double 0.83439933754779927
	.quad	0x3fe915306704df26              # double 0.78383655663399021
	.quad	0x3fe41487071e0507              # double 0.62750579252329508
	.quad	0x3fee0056e8864dc0              # double 0.93754144110646819
	.quad	0x3fe5bbbd881c2c5c              # double 0.67916752418512827
	.quad	0x3fc8ccbfb779bfac              # double 0.1937484403492794
	.quad	0x3fed772e71bd74d7              # double 0.92079851355415598
	.quad	0x3fd85d27cd21071c              # double 0.38068575889711709
	.quad	0x3fd83b23ffd3757c              # double 0.37860965712555816
	.quad	0x3fd2e6167088bcac              # double 0.2952934359518149
	.quad	0x3fe67a7a46a74894              # double 0.70245088386060894
	.quad	0x3fb153f080da59a0              # double 0.067687064607844238
	.quad	0x3fae92a5ea4d06e0              # double 0.059712586260969536
	.quad	0x3fd80649e791d9c8              # double 0.37538383115989093
	.quad	0x3fda4b35160ba050              # double 0.41084029343483497
	.quad	0x3fecb1c00ab75e9e              # double 0.89669801800751592
	.quad	0x3fe49b838b344765              # double 0.6439836233932793
	.quad	0x3fea932b149516d0              # double 0.83046487827297177
	.quad	0x3fe5f479aeca3768              # double 0.68609317911771672
	.quad	0x3fefeb3efb27df6a              # double 0.99746655515535321
	.quad	0x3fe12ebeb1196b37              # double 0.53695616330819618
	.quad	0x3fedcbaa417a2c44              # double 0.93111145771525416
	.quad	0x3fec188757a2e400              # double 0.87799422375167069
	.quad	0x3fc27e5643c6f910              # double 0.14448049840388721
	.quad	0x3fec62631416034e              # double 0.88701013491673009
	.quad	0x3fce0258753e69ec              # double 0.23444658016963105
	.quad	0x3fe1e05556f7b1cf              # double 0.55863444314814525
	.quad	0x3fb8900d6fb65db8              # double 0.095948066495444517
	.quad	0x3fddc56dadb1d294              # double 0.46517507517209222
	.quad	0x3fe610d46ae2b10a              # double 0.68955441356732305
	.quad	0x3fd33a361a59314c              # double 0.30042793820463909
	.quad	0x3fc84bddd579ab14              # double 0.18981526301953322
	.quad	0x3fe7bd1a88f4e6ea              # double 0.74183394193025021
	.quad	0x3fd06f7f3f56b8e6              # double 0.25680524049211184
	.quad	0x3fe4c002d695caee              # double 0.64843885337026363
	.quad	0x3fd8c4aa11d2bdb2              # double 0.38700343838260232
	.quad	0x3fcfa0feed48cfb8              # double 0.24710070215371416
	.quad	0x3fe8582be2413717              # double 0.76076311293010945
	.quad	0x3fe3776e2c305c02              # double 0.60832890158314989
	.quad	0x3fe872f74e922726              # double 0.76403394075280029
	.quad	0x3fe03a451dbac657              # double 0.50711303526459062
	.quad	0x3fe8895302d35d6f              # double 0.76676321555980376
	.quad	0x3fe6793ceb3ae2b3              # double 0.70229955619205098
	.quad	0x3fea0b220f2901c0              # double 0.81385901413892014
	.quad	0x3fe192a6084d0095              # double 0.54915143605468819
	.quad	0x3fef2e23af08a5d8              # double 0.97438224970135944
	.quad	0x3fe65c3d1c3f02f0              # double 0.69875960842918339
	.quad	0x3fdda546624babd8              # double 0.46321258162668988
	.quad	0x3fdfa36485dfde92              # double 0.49434769700699477
	.quad	0x3fe52dc06435bb51              # double 0.66183490345233953
	.quad	0x3fde117427f223cc              # double 0.46981529141390577
	.quad	0x3fe48bd10dc2b065              # double 0.6420674580345006
	.quad	0x3fef08dcc30f1494              # double 0.96983183000033301
	.quad	0x3fdee2c49c79defe              # double 0.48259082108368989
	.quad	0x3fd4e02684b28386              # double 0.326181058490015
	.quad	0x3fc1b053a9dc0d24              # double 0.13819356721806131
	.quad	0x3febacfae4cdc418              # double 0.86486572921978944
	.quad	0x3fca468c6246e07c              # double 0.20527796553301758
	.quad	0x3fa95cc4eee18d60              # double 0.049535898361478869
	.quad	0x3fe911c3781dc13d              # double 0.78341840229226245
	.quad	0x3fe877132725bc26              # double 0.76453550001122461
	.quad	0x3fe0d8367bc6416e              # double 0.52639316725439556
	.quad	0x3fca0286b9809214              # double 0.20320209558225655
	.quad	0x3fe57c219447e3f3              # double 0.67140273057077449
	.quad	0x3fd1ca39f0a5243e              # double 0.27796791553970823
	.quad	0x3fda39f4854d6084              # double 0.40978730218694914
	.quad	0x3fe341ad0cfe1e72              # double 0.60176708734156947
	.quad	0x3fe6eae5dfb17b72              # double 0.71617406549544982
	.quad	0x3fdc9f39e2620740              # double 0.4472183905382856
	.quad	0x3fd1be8a55b4d05a              # double 0.2772546612716319
	.quad	0x3fefeaaa76ea7ae2              # double 0.99739573694008876
	.quad	0x3fe614d9db4d159a              # double 0.69004528839348045
	.quad	0x3fee8310e30b902b              # double 0.95349926323661316
	.quad	0x3fdcd422c42d7088              # double 0.45044774206122229
	.quad	0x3fcae287ba5a31d4              # double 0.21003815268740189
	.quad	0x3fc93d093b3686ec              # double 0.19717517272243101
	.quad	0x3fd53fe1bb366f74              # double 0.332024033379404
	.quad	0x3fca5b722dc68eb0              # double 0.20591571078431548
	.quad	0x3fed862e722a936f              # double 0.92262956903560489
	.quad	0x3feb6fa5294c0b17              # double 0.85737855974034261
	.quad	0x3fef829045531573              # double 0.98468793430281065
	.quad	0x3fd882eb7c8dfc68              # double 0.38299071467913004
	.quad	0x3fc6dd506885671c              # double 0.17862897018022117
	.quad	0x3fda5035fbb5fe82              # double 0.41114568310874955
	.quad	0x3feae24c6690a29c              # double 0.84012432129118819
	.quad	0x3fe0205016b372fd              # double 0.50394443925651411
	.quad	0x3fe3bf9c7e59789d              # double 0.61714005162845675
	.quad	0x3fce70a4dd3959d0              # double 0.23781262208895138
	.quad	0x3f7c3b9302c17500              # double 0.0068927519424424322
	.quad	0x3fc239e48cd6df80              # double 0.1423917472545746
	.quad	0x3fc220c87835a4ec              # double 0.14162546033484291
	.quad	0x3fe0991d5a184dce              # double 0.51869075390498565
	.quad	0x3f7b59ff7b8a3a80              # double 0.0066776256359292185
	.quad	0x3fe19c411e8197d1              # double 0.55032401998755109
	.quad	0x3fc0961942121a0c              # double 0.12958064771756062
	.quad	0x3feee320b4f901a4              # double 0.96522555681444943
	.quad	0x3fe9a60ecb392e2d              # double 0.80152072612822212
	.quad	0x3fe9f40701897c2c              # double 0.81103849697308794
	.quad	0x3fc9f953207ef1a4              # double 0.20292128645622853
	.quad	0x3fe884301d4ba752              # double 0.76613622400075543
	.quad	0x3fea94d38846fd0d              # double 0.83066727272663032
	.quad	0x3fc8c2a059ab4018              # double 0.1934395253979353
	.quad	0x3fe2dd334e6e89fa              # double 0.58950200384816687
	.quad	0x3fe2e43cc98c132f              # double 0.59036101689034648
	.quad	0x3fe589afec8f9e1a              # double 0.67305751994439622
	.quad	0x3fe11958c5d202e2              # double 0.53434408795154931
	.quad	0x3fe458b4717f0beb              # double 0.63582822959176377
	.quad	0x3fe7669fa7e0d3a9              # double 0.73127730168072447
	.quad	0x3fd0c6c9cbbced02              # double 0.26213307281769016
	.quad	0x3fb0024d02da5258              # double 0.062535107799996381
	.quad	0x3fd7a51af36d850a              # double 0.36945222637412256
	.quad	0x3fdded0ff3b89c2e              # double 0.4675941352929297
	.quad	0x3fe6e62836bc65b5              # double 0.7155953473149369
	.quad	0x3fd141f3d1551b04              # double 0.26965041582700189
	.quad	0x3fb1f205e85194c0              # double 0.070099229067255742
	.quad	0x3fda1acc159fb564              # double 0.40788557159142713
	.quad	0x3fe3f4f9798b2de1              # double 0.6236541150951177
	.quad	0x3fe5b0697347aa9d              # double 0.6777846576272456
	.quad	0x3fc64a1445ba7364              # double 0.17413571743682177
	.quad	0x3fc309df3099a7a4              # double 0.14873876450593315
	.quad	0x3fb2077d1db74248              # double 0.070426769022796099
	.quad	0x3f883b7a13692700              # double 0.011832193105095978
	.quad	0x3fe369fba3aad628              # double 0.60668737379336779
	.quad	0x3fdc0f3a83d3838c              # double 0.43842947839407809
	.quad	0x3fef0f5827130c0d              # double 0.97062308913916839
	.quad	0x3fd666a656df48d6              # double 0.35001524432767661
	.quad	0x3fed7a98bd51fc0d              # double 0.92121541000949636
	.quad	0x3fcc3a9ec5f387f4              # double 0.22053894677725305
	.quad	0x3fe1669cc4d595fc              # double 0.54377592510417072
	.quad	0x3fd977d9820ba9c4              # double 0.39794004153978002
	.quad	0x3fe6f34e53490ef7              # double 0.71720043436695746
	.quad	0x3fd56d59fc7d29b4              # double 0.33479928643341883
	.quad	0x3fb881a6d6632e58              # double 0.095728328076057578
	.quad	0x3fef0922a22702ab              # double 0.96986514730823125
	.quad	0x3fcdd07938d67548              # double 0.2329246070411648
	.quad	0x3fd45d8265b5945a              # double 0.31820735867069561
	.quad	0x3fb631687090e0a0              # double 0.086691405755916495
	.quad	0x3fb64767914d4070              # double 0.087027047132552715
	.quad	0x3fd22bf1db5a0516              # double 0.28393217488344769
	.quad	0x3fe45d9288477959              # double 0.63642241112737985
	.quad	0x3fd0b053cd189b68              # double 0.26076216725271317
	.quad	0x3fe4b64f33f92488              # double 0.64725456381815238
	.quad	0x3fea2d8e54c08771              # double 0.81806103280199072
	.quad	0x3fe19e50c88b02d7              # double 0.55057562988812492
	.quad	0x3fd95c220ee2fc84              # double 0.39624835447097717
	.quad	0x3fe73eceb623d6ad              # double 0.72641692709176697
	.quad	0x3fc408834df74b90              # double 0.15650979334767756
	.quad	0x3f94559e8d062d60              # double 0.019857861859731485
	.quad	0x3fe722d0ffe34333              # double 0.7230000493819716
	.quad	0x3fd6974f80868aa2              # double 0.35298526336024783
	.quad	0x3fec86fcc9c2e3e8              # double 0.89147796064855545
	.quad	0x3fe8db8c9db71a63              # double 0.77680044940718707
	.quad	0x3fe3c02e519313b5              # double 0.61720958645366031
	.quad	0x3fd15ba141e6ee7a              # double 0.27121764598607678
	.quad	0x3fcd35f9f95d4ab8              # double 0.22820973087308061
	.quad	0x3fa665dbf248afb0              # double 0.04374587376182093
	.quad	0x3fcc1b277ad0a2cc              # double 0.21957868096185107
	.quad	0x3fd2d88493613fd4              # double 0.29446520226065087
	.quad	0x3fe7b26fc79a2772              # double 0.74053181633756382
	.quad	0x3fc3909001e76828              # double 0.15284919827428323
	.quad	0x3fd26392b7449e20              # double 0.28732746026295963
	.quad	0x3fbbb1ca3bb7f880              # double 0.10818160970663548
	.quad	0x3feeeeb040fcfe9a              # double 0.96663677876491083
	.quad	0x3febece762831287              # double 0.87266892662644657
	.quad	0x3fbf4054ce936280              # double 0.12207536738731939
	.quad	0x3fed18e01f20f307              # double 0.90928655700517502
	.quad	0x3fe6c2b38fbee6fc              # double 0.71126726222357162
	.quad	0x3fe276d54788a1e6              # double 0.57700599643163453
	.quad	0x3fccf831e9f13940              # double 0.22632430956805116
	.quad	0x3fcb19cbdd5411ac              # double 0.21172474200296898
	.quad	0x3fd8bfb7450b63d0              # double 0.38670140974641942
	.quad	0x3fda13d926bbc696              # double 0.40746144087379699
	.quad	0x3fd06c539973d1b8              # double 0.25661172853076719
	.quad	0x3fe91649da21b49b              # double 0.78397076228943108
	.quad	0x3fd4acf8beb58766              # double 0.32305735229430466
	.quad	0x3fc4574a54ab6008              # double 0.15891389021157942
	.quad	0x3fe4fc007a7ac7aa              # double 0.65576194688604983
	.quad	0x3fdaf63c03b3fcb2              # double 0.42127895700100304
	.quad	0x3fed1d9d4632c66d              # double 0.90986503325093582
	.quad	0x3fc7b256be75e8ec              # double 0.18512996959527273
	.quad	0x3fd7fccd72489cd0              # double 0.37480484161865224
	.quad	0x3fe558766253e278              # double 0.6670486374342337
	.quad	0x3fcf7832ba62f69c              # double 0.2458556566324902
	.quad	0x3fdd187f6895a52e              # double 0.45462022031149985
	.quad	0x3fc30ad59ce0bd74              # double 0.14876814041188491
	.quad	0x3fe0e496b34ae1af              # double 0.52790389078204736
	.quad	0x3fe09387cad026dd              # double 0.51800908672268131
	.quad	0x3fe371fb9452130b              # double 0.60766390770786083
	.quad	0x3fe287160372e486              # double 0.57898998902887011
	.quad	0x3fb38757177a0338              # double 0.076283877593607552
	.quad	0x3fe50ea65b521f66              # double 0.65803830944149122
	.quad	0x3fd96a0242a0db16              # double 0.39709526545213814
	.quad	0x3fd565bad21c2088              # double 0.33433409231702926
	.quad	0x3fd4035f151f4e30              # double 0.31270577490542717
	.quad	0x3fce8c9ba93faad0              # double 0.23866601718994795
	.quad	0x3fe1573ac24a5646              # double 0.54189813563670763
	.quad	0x3fec096bf2c41031              # double 0.87615010657510173
	.quad	0x3fe1b6c43807d17d              # double 0.55356036132302189
	.quad	0x3fe66f0820caf241              # double 0.70105368046603911
	.quad	0x3fc0eaea70ed6e14              # double 0.1321690608409517
	.quad	0x3fb429a6be8cf0c8              # double 0.078760549088602194
	.quad	0x3fec8f5745d331b9              # double 0.89249766957941923
	.quad	0x3fe83fc6b03d8096              # double 0.75778517171785853
	.quad	0x3fec3eedf605f6ab              # double 0.88268182803559136
	.quad	0x3fd1e213c8105f28              # double 0.27942366158957777
	.quad	0x3fdcdac839b954c6              # double 0.45085340153793785
	.quad	0x3fe57dd0227f806c              # double 0.67160803544903791
	.quad	0x3fe2960d73c651dd              # double 0.5808169614052151
	.quad	0x3fd4dd72062b0c96              # double 0.32601595499381497
	.quad	0x3fb374788c5cb990              # double 0.075995954769245921
	.quad	0x3f8bf58902158940              # double 0.013651914955236877
	.quad	0x3fee10a0fe59df86              # double 0.93952989271109355
	.quad	0x3fe47dd56880835a              # double 0.6403605500273486
	.quad	0x3fcbba9edc62cc38              # double 0.21663270722419425
	.quad	0x3fef77c4b06a54c3              # double 0.98337015586971465
	.quad	0x3fe1571b014bdbcd              # double 0.54188299420536057
	.quad	0x3fc0dfd664053e50              # double 0.1318309772855053
	.quad	0x3fe66642bd06859d              # double 0.69998299521482787
	.quad	0x3fec5704d814de05              # double 0.88562242701931437
	.quad	0x3fe677cd64f0c543              # double 0.70212430682128291
	.quad	0x3fe55f9e9193243c              # double 0.66792229111263834
	.quad	0x3febe6fa1b496e8a              # double 0.87194543199025643
	.quad	0x3facc7d59488dd50              # double 0.056212114698093729
	.quad	0x3fcb60b34e39df74              # double 0.21388856238968013
	.quad	0x3fbb6c8a1e2b0c50              # double 0.10712493168380033
	.quad	0x3fe1a8549dc0ded8              # double 0.55179816065989495
	.quad	0x3feee8424c7dad3d              # double 0.96585192622789117
	.quad	0x3fb1923c7fe93708              # double 0.068637639263411043
	.quad	0x3febbda51c4e1d78              # double 0.86690001991602994
	.quad	0x3fd0edbe1f152076              # double 0.26451066050913796
	.quad	0x3fd6bf9a6c5e97d8              # double 0.35544453223189754
	.quad	0x3fe905b7caf4cd17              # double 0.78194799079793398
	.quad	0x3fd71fbf678d9766              # double 0.3613127242336901
	.quad	0x3fead962811efa33              # double 0.83903622836061797
	.quad	0x3f744718d4055c00              # double 0.0049506158687426804
	.quad	0x3fea0854bb5bb50a              # double 0.81351696580318955
	.quad	0x3fdb6554bd981f12              # double 0.42805975451527545
	.quad	0x3fd2b87aef312eda              # double 0.29250977858167249
	.quad	0x3fd280b611df6982              # double 0.28910590882664888
	.quad	0x3fb5ff078dbcbd88              # double 0.085922691444230037
	.quad	0x3fe2a9008086d12d              # double 0.58313012221200256
	.quad	0x3fee5853c4b83d02              # double 0.94828213140309026
	.quad	0x3fb54706dbf825c0              # double 0.083115032866905914
	.quad	0x3fd1fc0554a72402              # double 0.28100713030704594
	.quad	0x3fc5b3f762b3f1c4              # double 0.16955463714101715
	.quad	0x3fc669a5261e86b8              # double 0.17509903298655671
	.quad	0x3fea60a0fd3b209c              # double 0.82429551562474356
	.quad	0x3fc381fd1243626c              # double 0.15240443603285614
	.quad	0x3feeb52525568fc5              # double 0.95961243908504256
	.quad	0x3feb459d2f6740c4              # double 0.85224780329192428
	.quad	0x3fe85a11a5f63dc9              # double 0.76099474348478069
	.quad	0x3fe00f8500b35fec              # double 0.50189447533466369
	.quad	0x3fba0c5a398a1eb0              # double 0.10175098328374577
	.quad	0x3fc38d6112d40c34              # double 0.15275205058432706
	.quad	0x3fe37cb466fe36b1              # double 0.60897274127792944
	.quad	0x3fe7e4aec4e2f3e5              # double 0.74666536764527491
	.quad	0x3fd8b1d591607018              # double 0.38585414120621087
	.quad	0x3fd76fe0221aa2b2              # double 0.36620333986733578
	.quad	0x3fe0fa6161b3f0c6              # double 0.53056401331516478
	.quad	0x3fdb9c8d37a6e598              # double 0.43143015322456213
	.quad	0x3fb15d99c025fa70              # double 0.067834481631487753
	.quad	0x3fbba1f3425831e0              # double 0.10793991441477813
	.quad	0x3fe707405f21ea32              # double 0.71963518696367701
	.quad	0x3fdbc54e1e09f1da              # double 0.43391755040627589
	.quad	0x3fa34465ce206240              # double 0.037631207858968896
	.quad	0x3fb6e7d90c4221b0              # double 0.089475217335467815
	.quad	0x3fecd99edeaf5758              # double 0.90156501286649426
	.quad	0x3fd0be0e91ee608e              # double 0.26160015345659182
	.quad	0x3fd36f863d82ccd2              # double 0.30368190771987458
	.quad	0x3fe5fd822c8efcea              # double 0.6871958608898272
	.quad	0x3fd8c418d474e894              # double 0.38696881053659493
	.quad	0x3fe2731ff855e752              # double 0.57655333045043222
	.quad	0x3fc86c8a47489798              # double 0.19081238251345378
	.quad	0x3fe0eaaf7bc33173              # double 0.52864813015325607
	.quad	0x3fa0789b336790c0              # double 0.032170152687997611
	.quad	0x3fec7e457f2823d8              # double 0.89041399798690701
	.quad	0x3fe595608445fd82              # double 0.6744844993080934
	.quad	0x3fb50bfc18970840              # double 0.082214122775469356
	.quad	0x3fedb5fa13be6165              # double 0.92846397262750868
	.quad	0x3fee9fb54d657253              # double 0.95699563137493227
	.quad	0x3faa1c0b5dcf0040              # double 0.05099521179317934
	.quad	0x3fe7a82295df9408              # double 0.73927430412425199
	.quad	0x3fe9981041b35b34              # double 0.79981243927145451
	.quad	0x3fd53bb725571f94              # double 0.33176973959461376
	.quad	0x3fccb562549ca06c              # double 0.22428540355145132
	.quad	0x3fed9df1a26fd4b4              # double 0.92553025937981781
	.quad	0x3fb01afa09b3cd60              # double 0.062911631935823831
	.quad	0x3fe864d60f38cd3a              # double 0.76230910275481922
	.quad	0x3fe954b9801063be              # double 0.79159235966209684
	.quad	0x3fdae5a585580b8c              # double 0.42026651403301041
	.quad	0x3feffc70445ae7cc              # double 0.99956525183301314
	.quad	0x3fec99b6319cf040              # double 0.89376363458678298
	.quad	0x3fb123faa0821dc8              # double 0.066955246149624448
	.quad	0x3fbdcd4d269e0068              # double 0.11641390030672627
	.quad	0x3fcd6e6271b377e0              # double 0.22993116905030231
	.quad	0x3fede19225af872b              # double 0.93378550873260247
	.quad	0x3fe8cafd06e8768b              # double 0.77477885579328765
	.quad	0x3fc34db8ff7c3808              # double 0.15080940699448342
	.quad	0x3fddc556790cb138              # double 0.46516954251525844
	.quad	0x3fe98653261a93d1              # double 0.79764707033302262
	.quad	0x3fe9ae87be3b4c16              # double 0.80255496172537977
	.quad	0x3fc19e7d60608d08              # double 0.1376492233840525
	.quad	0x3fe5ee7b16756ed2              # double 0.68536142717808901
	.quad	0x3fd2d7ed9e118dac              # double 0.29442921100982278
	.quad	0x3fed3ff20556ff71              # double 0.91405583422600334
	.quad	0x3fd2e11310dd3e34              # double 0.2949874558152914
	.quad	0x3fb8eacd521f3b80              # double 0.097332794713322456
	.quad	0x3fee66ca3baebd15              # double 0.9500476041484115
	.quad	0x3fe491112645a224              # double 0.64270837283135451
	.quad	0x3fee41ae515fab5b              # double 0.94551769154837062
	.quad	0x3feafd248fc05ce0              # double 0.84340122295807518
	.quad	0x3fd4d4dc7462ce42              # double 0.32549201360527402
	.quad	0x3fb488808db52be8              # double 0.080207857700926533
	.quad	0x3fe60937c4f6d541              # double 0.68862522573059703
	.quad	0x3fdd8f79b0507a06              # double 0.46188204019736678
	.quad	0x3fc8c77d2b43da60              # double 0.19358791935492814
	.quad	0x3fe2a93284099aad              # double 0.58315397060944962
	.quad	0x3fd0520a73b4eb70              # double 0.25500737475856905
	.quad	0x3fd49866ac235eb6              # double 0.32180182276122637
	.quad	0x3fbbbe22be90b500              # double 0.10836999084922994
	.quad	0x3fed353b5ef7d774              # double 0.91274803684676308
	.quad	0x3f9b5f4a9340e7a0              # double 0.026730694997446514
	.quad	0x3fc725fb073db5ec              # double 0.18084657529418224
	.quad	0x3fe1f30cbc71760c              # double 0.5609191589862248
	.quad	0x3feb6c0044ebdf38              # double 0.85693372212606445
	.quad	0x3fd620840a1ab680              # double 0.34573460566284808
	.quad	0x3fb4dcd20295f690              # double 0.081494451171204795
	.quad	0x3fe478fe9d911a52              # double 0.63976984762923395
	.quad	0x3fbdfd14d11b6168              # double 0.11714296441221494
	.quad	0x3fab6b27604c20d0              # double 0.053551893715906851
	.quad	0x3fedf8d98c3eb37b              # double 0.93662717238986148
	.quad	0x3fdde162dee81d9e              # double 0.46688148277504549
	.quad	0x3fedf518bd04b15c              # double 0.93616902272837476
	.quad	0x3f799d1337ddb200              # double 0.0062533140861487091
	.quad	0x3fbd87ac14429e18              # double 0.11535144323954005
	.quad	0x3fd7a1d1c81564aa              # double 0.36925167598162523
	.quad	0x3fecc79b9c766128              # double 0.89936619338098911
	.quad	0x3feb70161a36619b              # double 0.85743241424193017
	.quad	0x3fcf4839b2b5dfd0              # double 0.2443916437730409
	.quad	0x3fe88f5dc3b2fef3              # double 0.76750076506138354
	.quad	0x3fe7fe86126f8340              # double 0.74981978989317355
	.quad	0x3fd4eedc46a518f8              # double 0.3270788850681039
	.quad	0x3fea18e05098e5f8              # double 0.8155366491475311
	.quad	0x3fed2dd563a5d5d5              # double 0.91184491598567752
	.quad	0x3fe3d0b1a964dee3              # double 0.61922534069796276
	.quad	0x3fbb88c79c8d3428              # double 0.10755584308681476
	.quad	0x3fe593d1f8ff3dcd              # double 0.67429445869668714
	.quad	0x3fc0ecd2eee02678              # double 0.13222729362341901
	.quad	0x3fd152f9e2528bea              # double 0.27068945981790071
	.quad	0x3fea692760f4ed73              # double 0.82533616005768662
	.quad	0x3fdf18b825cde9b8              # double 0.48588374797659695
	.quad	0x3fe787a729213367              # double 0.73530920060293858
	.quad	0x3fe8b95ea131c411              # double 0.77262813075333459
	.quad	0x3fd94a9a4001a3e6              # double 0.39517837763429353
	.quad	0x3fed53e97f36ccf8              # double 0.91649317595002255
	.quad	0x3feb00ee8c0e3c8b              # double 0.84386374811755738
	.quad	0x3fef4b8b53ef5cda              # double 0.97797171014363049
	.quad	0x3fa89fe0d16c74c0              # double 0.048094773830805959
	.quad	0x3fe64b5911564778              # double 0.69669774423731123
	.quad	0x3fe37069079a5d43              # double 0.6074719570632755
	.quad	0x3fee8ca1e4eaf503              # double 0.95466704092510246
	.quad	0x3fcfd7ebe1b9df18              # double 0.24877689859180729
	.quad	0x3fdba17c3bffff62              # double 0.4317312799394043
	.quad	0x3fe9d1ecef1f3855              # double 0.80687567428118234
	.quad	0x3fd3a6de3cae23f4              # double 0.30705982137493426
	.quad	0x3fe63d014348678b              # double 0.69494689122369502
	.quad	0x3fede615e77697b8              # double 0.93433661658922684
	.quad	0x3fe6c9c17ec7ed93              # double 0.71212839853198984
	.quad	0x3feab29b5f9a010d              # double 0.834302603456338
	.quad	0x3fbeef136d39f830              # double 0.12083550850545133
	.quad	0x3fe47a9580cf140b              # double 0.63996386678684425
	.quad	0x3fd5a79f274cb62a              # double 0.33835581624848265
	.quad	0x3fd59a82e44d4062              # double 0.33755562110036952
	.quad	0x3fe2d467a3e67329              # double 0.58842832576519755
	.quad	0x3febfc38e7680187              # double 0.87453885265863185
	.quad	0x3fcff4827fb5c998              # double 0.24964934573979458
	.quad	0x3fd9aac1cd02b0bc              # double 0.4010471822791819
	.quad	0x3f9e6cb8d8a6b900              # double 0.029711616729110268
	.quad	0x3fdc893dae30ffaa              # double 0.44587652216795937
	.quad	0x3fd5cf38c7a66e56              # double 0.34077281472284449
	.quad	0x3feb61a0e5889cd9              # double 0.85566754179753979
	.quad	0x3fee852415d92af2              # double 0.95375255839584683
	.quad	0x3fb47c08f9159210              # double 0.080017624675356779
	.quad	0x3fe02230eab69772              # double 0.50417371599608729
	.quad	0x3fe84c5f36008303              # double 0.75932274386659093
	.quad	0x3fdafa4faa0f2ae8              # double 0.42152778251026612
	.quad	0x3fc44a7c16a44a38              # double 0.15852309327654424
	.quad	0x3fe54ea8c7377f04              # double 0.66585196408775049
	.quad	0x3fe502c6a7cb034b              # double 0.65658886692117713
	.quad	0x3fd7f0127508fbb8              # double 0.37402783803184603
	.quad	0x3fbac49f23b3e630              # double 0.10456270810745916
	.quad	0x3fe4e870591544e3              # double 0.65337388419189002
	.quad	0x3fe861ca496e6bce              # double 0.76193727819497226
	.quad	0x3fa3eda368d044f0              # double 0.038922411484358821
	.quad	0x3fe1b66d4810f783              # double 0.55351890635914491
	.quad	0x3febfe49c951fd8c              # double 0.87479104347578262
	.quad	0x3fcf5addb7d206b4              # double 0.2449605128822917
	.quad	0x3fd8ef6ca8eafbf2              # double 0.3896133088673529
	.quad	0x3fe90a82de9ad877              # double 0.78253310658943931
	.quad	0x3f95969b928e3f20              # double 0.021082335300490418
	.quad	0x3fe8a52223bde23a              # double 0.77015788060004486
	.quad	0x3fef87a1f1cf29cd              # double 0.98530671337476294
	.quad	0x3fe16d7efaa08dab              # double 0.54461621237390057
	.quad	0x3fde64794271782c              # double 0.47488242615316056
	.quad	0x3fe2a84c70095b34              # double 0.58304426080835592
	.quad	0x3f9bcc0f76260c80              # double 0.027145616136760697
	.quad	0x3fe6cb39e27e74f5              # double 0.71230787503341608
	.quad	0x3fcafa0a3159f5c0              # double 0.2107556096051848
	.quad	0x3fef33b0f5ca9b2c              # double 0.97505996709955899
	.quad	0x3fe07f3c81b29dba              # double 0.51553178149781975
	.quad	0x3fe3208d67d32b11              # double 0.59772367742820809
	.quad	0x3fc18ec6f7fb5768              # double 0.13716971500860642
	.quad	0x3fd9d6c946e69852              # double 0.40373451160337936
	.quad	0x3fecbf5766851ab7              # double 0.89835710547853054
	.quad	0x3fc221e1708fd500              # double 0.14165895458396704
	.quad	0x3fe72704dd274e1d              # double 0.72351306146669325
	.quad	0x3fda722b8ff8e9e0              # double 0.41321839389607185
	.quad	0x3fe7f7c9b822cc87              # double 0.74899755443620186
	.quad	0x3fdb4bc75c3465f4              # double 0.42650016788829181
	.quad	0x3fe8416fdd2f186c              # double 0.75798791122430264
	.quad	0x3fdbe8a809ab9e80              # double 0.43607521957753903
	.quad	0x3feb6f6ff57236d3              # double 0.85735319079113947
	.quad	0x3fe2a98139e166f4              # double 0.58319150261669828
	.quad	0x3fedd3832c60fa71              # double 0.93206938426722108
	.quad	0x3fc35153c1df4590              # double 0.15091940847791507
	.quad	0x3fe0104bc4102857              # double 0.50198925298287633
	.quad	0x3feaf445eeb9f736              # double 0.84231850267653985
	.quad	0x3f89a6b820092880              # double 0.012525022962240451
	.quad	0x3fea69a07d9be90a              # double 0.82539391072285295
	.quad	0x3fb1ba5610d4a7a8              # double 0.069249514683774493
	.quad	0x3fddc44a830e253a              # double 0.46510565565457151
	.quad	0x3fdb75dc679c6b5c              # double 0.42906866186392789
	.quad	0x3fd64b25566889a6              # double 0.34833653868022407
	.quad	0x3fc2c3c4c17914dc              # double 0.14659938284800134
	.quad	0x3fc414ea31b725fc              # double 0.15688826968680292
	.quad	0x3fa4d286ef337900              # double 0.040668694209431422
	.quad	0x3fe04459781a99a7              # double 0.50834344346803995
	.quad	0x3fb761e7787f87e0              # double 0.091337649267671406
	.quad	0x3facb0e0fb317050              # double 0.05603697840044275
	.quad	0x3febed426f824582              # double 0.87271234301640299
	.quad	0x3fe6b3dc9531f774              # double 0.70945576800998689
	.quad	0x3fef823964f3ed2b              # double 0.98464650838233092
	.quad	0x3fd877d629729932              # double 0.38231424377080991
	.quad	0x3fd55964705a4e46              # double 0.33358107540081894
	.quad	0x3f5b95bd8f537600              # double 0.0016836501284197558
	.quad	0x3fc19118e00b951c              # double 0.13724051418027094
	.quad	0x3fee87579402122f              # double 0.95402125270681448
	.quad	0x3fed960f5d29ee0e              # double 0.92456787296345211
	.quad	0x3fda77944b0f7148              # double 0.41354853944882963
	.quad	0x3fce00f51c0159b4              # double 0.23440421931691235
	.quad	0x3fad23c7e3ae39c0              # double 0.05691361097625558
	.quad	0x3fcc1cdf3160c624              # double 0.21963109885250376
	.quad	0x3fdbeaf8c2e0ffe0              # double 0.43621653586524012
	.quad	0x3fee9eae1c30b80e              # double 0.95687013154906864
	.quad	0x3fecc159f86ac2e4              # double 0.89860247153236771
	.quad	0x3fd3c8b1b2ea50a0              # double 0.30912439796635205
	.quad	0x3fd923b55e5b76fc              # double 0.39280447210863634
	.quad	0x3fc4d11665ef71b8              # double 0.16263084389983162
	.quad	0x3fd0c0455d0fe5b4              # double 0.26173528755279141
	.quad	0x3fe1dcebb0d10586              # double 0.55821785482855613
	.quad	0x3fe2b4c2340240f0              # double 0.58456525953263672
	.quad	0x3fc737e578bff4ec              # double 0.18139332195270386
	.quad	0x3fea3ffb0482b2b0              # double 0.82031012421574268
	.quad	0x3fb6cb86f846e400              # double 0.089043079008561676
	.quad	0x3fe93ecc0b0dc971              # double 0.78891565474468284
	.quad	0x3fe38067b70e1a8e              # double 0.60942445519397537
	.quad	0x3fe6a372a3655575              # double 0.70745212472199503
	.quad	0x3fe13e992ce4d11c              # double 0.53889139908145323
	.quad	0x3fea82917ee43931              # double 0.82843851836677207
	.quad	0x3fe4d149e160263a              # double 0.6505479242197858
	.quad	0x3fd39a163cb97e16              # double 0.30627971582541258
	.quad	0x3fe816849258cb03              # double 0.75274876197212881
	.quad	0x3f87a7449a519e00              # double 0.011549507102428969
	.quad	0x3fe8c7611bae660f              # double 0.77433829695218204
	.quad	0x3fcfaf0cf5df758c              # double 0.24752962117683486
	.quad	0x3fecd69b7b0d964b              # double 0.90119718583873387
	.quad	0x3feb3d5b35f43b18              # double 0.8512397817411026
	.quad	0x3fcd07ff1d9532d0              # double 0.22680653519127825
	.quad	0x3fe70b14ed9fb531              # double 0.72010275278959146
	.quad	0x3fd5d469e457fe6e              # double 0.3410896997374725
	.quad	0x3fe49d8f2ea697a7              # double 0.64423331366991909
	.quad	0x3fc83ccd92ead1a4              # double 0.18935556100553896
	.quad	0x3f96e65f665ab6a0              # double 0.022363176939214413
	.quad	0x3fea7300afbb2716              # double 0.82653841326211608
	.quad	0x3fedeac5f927ae24              # double 0.93490885413251989
	.quad	0x3fd8e615616657fc              # double 0.38904318343827504
	.quad	0x3fd81535b3670cce              # double 0.37629454154757702
	.quad	0x3fc0c00062ddd120              # double 0.13085942103828874
	.quad	0x3feb1e83757d79c1              # double 0.84747479388516223
	.quad	0x3fb366cb1defd380              # double 0.075787253197473702
	.quad	0x3fe48f1ec874d55f              # double 0.64247073318135139
	.quad	0x3fe85bb501e32ee5              # double 0.76119470947875512
	.quad	0x3fdb4908f4c2c50a              # double 0.426332701706159
	.quad	0x3fdf4500057e0650              # double 0.48858643089633791
	.quad	0x3fe22468755d7356              # double 0.56694434092387769
	.quad	0x3feb0f13e093f4b3              # double 0.84559053290253983
	.quad	0x3fc79ca1a3128004              # double 0.18446751081955892
	.quad	0x3fe7f7f069bcfa94              # double 0.7490160050582113
	.quad	0x3fc54ef307784f4c              # double 0.16647184242958202
	.quad	0x3fc0ff3f9792713c              # double 0.13278956318834811
	.quad	0x3fc4fde4e880abb0              # double 0.16399823525111179
	.quad	0x3fdb0ba6ec6c02a2              # double 0.42258618438794759
	.quad	0x3fea49a106997598              # double 0.82148791588740533
	.quad	0x3fe2e50c26be8380              # double 0.59045989577508351
	.quad	0x3f7386bbb4063a80              # double 0.0047671634823830411
	.quad	0x3fd1fcf4ff6290aa              # double 0.28106427135413503
	.quad	0x3fe7759ad716fc56              # double 0.73310606012081325
	.quad	0x3feffcad59f7c5c0              # double 0.99959437915656934
	.quad	0x3fe27f5a13d11ae0              # double 0.57804588194343509
	.quad	0x3fee9a640459df4d              # double 0.95634651994530773
	.quad	0x3f939bed4e63c9a0              # double 0.019149501714261441
	.quad	0x3fca3d60e7c4da74              # double 0.20499812428325337
	.quad	0x3fd47a564e1f45f4              # double 0.31996686581723499
	.quad	0x3fef27e0a33ca9b7              # double 0.97361785776347786
	.quad	0x3fccc8ccff522d28              # double 0.22487795321317461
	.quad	0x3fabe8b3d87334e0              # double 0.054509754345056782
	.quad	0x3fef86a68b8cb296              # double 0.98518683677464725
	.quad	0x3fdc14c04339d2bc              # double 0.43876654210115951
	.quad	0x3fe6c0e3e5dc2b87              # double 0.71104617018259908
	.quad	0x3fecd98ade0ef4e3              # double 0.90155547495637867
	.quad	0x3fe53f6fb1f950a2              # double 0.66399369011425713
	.quad	0x3fc3c6cd3e238518              # double 0.15450444730871804
	.quad	0x3fd37cdd625e21f2              # double 0.30449614149304616
	.quad	0x3fc3bedfdae674b0              # double 0.15426252544867713
	.quad	0x3fe38aec8558c317              # double 0.61070848507196984
	.quad	0x3fd1b4821db09b0c              # double 0.27664235019112549
	.quad	0x3fea333141bab332              # double 0.81874907338860781
	.quad	0x3fcef8c2c6f180e0              # double 0.2419665786173999
	.quad	0x3fe0073dab38fd2f              # double 0.50088389818112045
	.quad	0x3feae3eae8472a0f              # double 0.84032197348398252
	.quad	0x3fd1a90a9792b6c0              # double 0.27594246675549172
	.quad	0x3fe0a065ace9adbe              # double 0.51957973262818036
	.quad	0x3fd8ae09189327ee              # double 0.38562228584180402
	.quad	0x3fdc57bef2690860              # double 0.44285558388594914
	.quad	0x3fef7ae0c04b0d03              # double 0.98374974782237278
	.quad	0x3fcbe3eae56b16e8              # double 0.2178929920393593
	.quad	0x3fd6f0a3f5b13ea4              # double 0.35843752854723676
	.quad	0x3fd58623ec6b7932              # double 0.33631227577088219
	.quad	0x3f96dfde9f29dee0              # double 0.022338369812557768
	.quad	0x3fd81e14eec9bf16              # double 0.37683604544780402
	.quad	0x3fc60eb8b16e7760              # double 0.17232426322601224
	.quad	0x3fea4a43c44f8133              # double 0.82156551687152157
	.quad	0x3fe441d744f76ebb              # double 0.6330372187616925
	.quad	0x3fb2d2899fc6d1a8              # double 0.073525048740356369
	.quad	0x3fbdc0d5d5417730              # double 0.11622368294180485
	.quad	0x3fe18c7577a78fd0              # double 0.54839585657145484
	.quad	0x3fbc1eae9bbf0f78              # double 0.10984317114258413
	.quad	0x3fb0ab9b5881dbc0              # double 0.065118512256829852
	.quad	0x3fcc7f32b012afc0              # double 0.22263177487672969
	.quad	0x3fe99843835cadef              # double 0.79983688027044575
	.quad	0x3fda7d06496d6d0c              # double 0.4138808934273619
	.quad	0x3fbc2e9b3eb42578              # double 0.11008615761615725
	.quad	0x3fa0952894842c10              # double 0.032387989167624309
	.quad	0x3fe802142a77202b              # double 0.75025375646601355
	.quad	0x3fd36d803d3af81c              # double 0.30355840663458067
	.quad	0x3fde8fa1280a3b1e              # double 0.47751645002510823
	.quad	0x3fd569d28d6c63b8              # double 0.33458389101866315
	.quad	0x3fdd86d897d1126a              # double 0.46135535074089395
	.quad	0x3fc1bcc6c2cf1630              # double 0.13857349884180925
	.quad	0x3fd844099c3f79da              # double 0.37915268190945783
	.quad	0x3fee350803b681a5              # double 0.94397354817561008
	.quad	0x3fc1260bf5832b7c              # double 0.13397359359654704
	.quad	0x3fe45458c753c886              # double 0.63529623919591027
	.quad	0x3fe42b34c81ec78f              # double 0.63027419172270693
	.quad	0x3fe7dbb5beebd5ca              # double 0.74557006158163941
	.quad	0x3fd176878e7203c4              # double 0.2728594676082674
	.quad	0x3fc9c837e45418c4              # double 0.20142267845966988
	.quad	0x3fd8514f9ba8cd24              # double 0.37996282769309375
	.quad	0x3fee346a778bfa3c              # double 0.94389842366201248
	.quad	0x3fe2a8fb0a8331a1              # double 0.58312751820772146
	.quad	0x3fe1bf0473567e81              # double 0.55456755186965279
	.quad	0x3fcbfd23a976f5e4              # double 0.21866269850390474
	.quad	0x3fee8e9cec46a0f7              # double 0.95490881106982684
	.quad	0x3fe4d5a6936c34a1              # double 0.65108040612689788
	.quad	0x3fea1d15516d3bfc              # double 0.81605020431186359
	.quad	0x3fe9b6e6e02a3bdb              # double 0.80357688696119156
	.quad	0x3fe4e05f5c29bd89              # double 0.6523892211970842
	.quad	0x3fea07fdc3bc92a9              # double 0.81347549657637785
	.quad	0x3fd1b2e6aa3c9f96              # double 0.27654425263107763
	.quad	0x3fc26432be77be14              # double 0.14368280697043245
	.quad	0x3fdaf0d8a35f50e2              # double 0.420950088065423
	.quad	0x3fb5ed393e8f2570              # double 0.08565099503825535
	.quad	0x3fd5032acf155d72              # double 0.3283183119105707
	.quad	0x3fedfe06c6b29455              # double 0.93725909050102507
	.quad	0x3fe4634f8bfa2dcc              # double 0.63712289180096482
	.quad	0x3fccbcf3325c9a78              # double 0.2245162959963698
	.quad	0x3fea79abbe0469c1              # double 0.82735240090124063
	.quad	0x3fe6a961590257d7              # double 0.70817630180931246
	.quad	0x3f9ab30351ae59e0              # double 0.026073505268493835
	.quad	0x3fecf4e2cd27cdd3              # double 0.90489330357962172
	.quad	0x3f7f7e5109073580              # double 0.0076888242187583832
	.quad	0x3faadd00c81ea7d0              # double 0.052467369488411131
	.quad	0x3fe7b956b048761f              # double 0.74137434416087789
	.quad	0x3fec3c3f8510ee12              # double 0.88235450734595333
	.quad	0x3fc370ba22fddb1c              # double 0.1518776579721014
	.quad	0x3fde99bad636d6f4              # double 0.47813292426449938
	.quad	0x3fe5f58b6f0f7408              # double 0.68622371379353897
	.quad	0x3fe63bde4c0dcaea              # double 0.69480814794800705
	.quad	0x3fdfa8e164841102              # double 0.49468264404301021
	.quad	0x3fddd60faba477a4              # double 0.4661902595706755
	.quad	0x3fe30ca0743f41d0              # double 0.59529135422240564
	.quad	0x3fe022fd8dfc0523              # double 0.50427129489267875
	.quad	0x3febab754e900caf              # double 0.86467995971942979
	.quad	0x3fc24b6f452acf90              # double 0.14292708279901634
	.quad	0x3fea1232e9f39b1c              # double 0.8147215432516961
	.quad	0x3fe80fee980ecef3              # double 0.75194482516096028
	.quad	0x3fe245a465882e6e              # double 0.57100124197445523
	.quad	0x3fbb1827576303b0              # double 0.10583730586496531
	.quad	0x3fef3cfeaf85c7a6              # double 0.97619566232446142
	.quad	0x3feaa60c41fd8437              # double 0.83276951683740819
	.quad	0x3fcd7bc8befd71b8              # double 0.23034009290394208
	.quad	0x3fdf7c9bc0480726              # double 0.49198049333073113
	.quad	0x3fea7f7351a87445              # double 0.82805791806061591
	.quad	0x3facac56062b9030              # double 0.056002319577402537
	.quad	0x3fc5b993538da854              # double 0.16972581462624936
	.quad	0x3fdcdcc435aaceaa              # double 0.45097451439799363
	.quad	0x3fdf5a37244a74ae              # double 0.48988131088283182
	.quad	0x3fce6718ea0bf7ec              # double 0.23752128055633592
	.quad	0x3fbd08d52f04afe8              # double 0.11341602704914033
	.quad	0x3fdcdafa770c24a4              # double 0.45086537957883821
	.quad	0x3fd039f1b573786e              # double 0.25353663177327845
	.quad	0x3fa4c531578c83c0              # double 0.04056696122848491
	.quad	0x3fd3a10742498168              # double 0.30670339082100506
	.quad	0x3fee04895ae69b6a              # double 0.93805377725662464
	.quad	0x3fefe1c5910b9334              # double 0.99631002740043195
	.quad	0x3fb5d07f4cebc508              # double 0.085212665824446643
	.quad	0x3fec573e6e071a70              # double 0.88564988603395811
	.quad	0x3fd2e245003a4990              # double 0.29506039640650616
	.quad	0x3fb79eeaa8cfc270              # double 0.092268625463256759
	.quad	0x3faae391419bb110              # double 0.05251745153313625
	.quad	0x3fd47400da245fd8              # double 0.31958028128565052
	.quad	0x3fe8d240b9d420b9              # double 0.77566562933591066
	.quad	0x3fb25ecdc71803a0              # double 0.071759091479192794
	.quad	0x3fec65e569ef181e              # double 0.88743849458910851
	.quad	0x3fd19c6bdd9a84ea              # double 0.27517220154739042
	.quad	0x3fd1e819a719b3ce              # double 0.27979127233885215
	.quad	0x3fe7de865c2bf2dd              # double 0.74591367723732172
	.quad	0x3fe249030b2e5a1c              # double 0.57141258415032636
	.quad	0x3fd87a976960406e              # double 0.38248238840697624
	.quad	0x3feb6e911ef47dc1              # double 0.85724693342120173
	.quad	0x3fd6c08338d72d06              # double 0.35550003577073175
	.quad	0x3fde18b8bf94a8fc              # double 0.47025889119198871
	.quad	0x3fef18e893f26648              # double 0.97179058929322881
	.quad	0x3fc4e3a5eea5f5b0              # double 0.16319727089641622
	.quad	0x3fb31e676797d740              # double 0.074682677069941583
	.quad	0x3fe8a1cefa2a06cc              # double 0.76975201473416055
	.quad	0x3fe388904089aece              # double 0.61042034726184524
	.quad	0x3fd3ad7bbe3bfebc              # double 0.30746358468602941
	.quad	0x3fd720bc2af91c06              # double 0.36137298771467419
	.quad	0x3fcb840cffc2f5d4              # double 0.21496736992223353
	.quad	0x3feab9a8605a4ed0              # double 0.83516329592608862
	.quad	0x3f85ac99988872c0              # double 0.010583114592969678
	.quad	0x3fbc25023a736c38              # double 0.10993970801375574
	.quad	0x3fe716a8cdd80080              # double 0.72151603893145477
	.quad	0x3fd4105b04d2e1ae              # double 0.31349826308317119
	.quad	0x3fcde5a82f953448              # double 0.23357107470875094
	.quad	0x3fe68b315963a558              # double 0.70449130495868939
	.quad	0x3fd5585e8ad87c72              # double 0.33351863440652274
	.quad	0x3fb490d481497c00              # double 0.080334931911679064
	.quad	0x3fdc788b115bdb44              # double 0.44485737509915091
	.quad	0x3fee2c0cefa68a1e              # double 0.94287726217982359
	.quad	0x3fe7cd4515e07529              # double 0.74380735657510855
	.quad	0x3fa641eda63665c0              # double 0.043471743144617658
	.quad	0x3fe9ea699a03f1f2              # double 0.80986480790266868
	.quad	0x3fee982c131ea5d7              # double 0.95607570394821095
	.quad	0x3fc94c8a2b612a64              # double 0.19764830701963654
	.quad	0x3fc24ed3d0c05df4              # double 0.14303062146130652
	.quad	0x3fda8216c7cea9d0              # double 0.4141900016062694
	.quad	0x3fd0cee8e2fdc068              # double 0.26262876669989632
	.quad	0x3f5b5a8a1358e000              # double 0.0016695354837690246
	.quad	0x3fcf35e58c7f2394              # double 0.2438322959917768
	.quad	0x3fce735a9435f20c              # double 0.23789531933643138
	.quad	0x3fc7f2fa12e29f54              # double 0.18710256502276457
	.quad	0x3fcf885ffc8073e0              # double 0.24634933308780571
	.quad	0x3fd5140af9b1a2ee              # double 0.32934831985634971
	.quad	0x3fd3ba9d4da10816              # double 0.30826504307708669
	.quad	0x3fc0b5b065137410              # double 0.13054470954276143
	.quad	0x3fdce14172a82624              # double 0.45124851414638756
	.quad	0x3fe5603cc7cbbfa2              # double 0.66799773237834281
	.quad	0x3feff9852cc855f7              # double 0.99920901056856237
	.quad	0x3feea575a0833e47              # double 0.95769769048815412
	.quad	0x3fe095dabf437f56              # double 0.51829278331932005
	.quad	0x3fb499c097410fe8              # double 0.080471074034960233
	.quad	0x3fea8473d42627e4              # double 0.82866851268158514
	.quad	0x3fd926d0f8bef8fc              # double 0.39299415866470588
	.quad	0x3fca6c8200dc411c              # double 0.2064363960457819
	.quad	0x3fe78ef313247bbd              # double 0.73619989146015252
	.quad	0x3fc52867209c1c70              # double 0.16529549686694933
	.quad	0x3fecd1d0cae72733              # double 0.90061225537758671
	.quad	0x3fec37116310cef9              # double 0.88172215794335707
	.quad	0x3fd96c6087dfcc7a              # double 0.39723981160131638
	.quad	0x3febd0bb0b7195f2              # double 0.86922981486412554
	.quad	0x3fd85dd66b771ca0              # double 0.38072739119201948
	.quad	0x3fc2f7f41b515fb0              # double 0.14819194158439819
	.quad	0x3fe27eaf5f033dbf              # double 0.57796448285255753
	.quad	0x3fcfbaa326e4d798              # double 0.24788321875683716
	.quad	0x3fd7190511969ab4              # double 0.36090208737952456
	.quad	0x3fd800771179691e              # double 0.3750283880850861
	.quad	0x3fee39cc3b26da47              # double 0.94455539277152745
	.quad	0x3fe74116a181444f              # double 0.72669536155638947
	.quad	0x3fe8f15fc97ee059              # double 0.7794646201573513
	.quad	0x3fe2ab7dd8441ce0              # double 0.58343403090921342
	.quad	0x3fe0deb8a2dd898d              # double 0.52718765077251961
	.quad	0x3fef7ece3ab617ea              # double 0.98422919718791246
	.quad	0x3feb9ef4e83a59a1              # double 0.86315389019982913
	.quad	0x3fddd7ea8644c328              # double 0.46630347358864066
	.quad	0x3fd3247238496a3c              # double 0.29909949776416389
	.quad	0x3fec18266fafca32              # double 0.8779480153446626
	.quad	0x3fdce79b51a80f66              # double 0.45163615202203855
	.quad	0x3fbe25ec91f76f80              # double 0.11776617587696414
	.quad	0x3fea48603d92fa31              # double 0.82133495355794228
	.quad	0x3fd489cb3737a690              # double 0.32091026680300505
	.quad	0x3fd441ccf16d6204              # double 0.31651614739305978
	.quad	0x3fe983eb320fddea              # double 0.79735336091738174
	.quad	0x3fe5de63892bc179              # double 0.68339707175441256
	.quad	0x3fe3b3df6bcb610b              # double 0.61570712140658779
	.quad	0x3fe547bf7902d639              # double 0.66500829348542034
	.quad	0x3fef5b7c794ec58b              # double 0.97991775219831944
	.quad	0x3fbc918b72c83b28              # double 0.11159583618448876
	.quad	0x3fdcaede7ed78cee              # double 0.44817316424287312
	.quad	0x3fe8c9cda41383fb              # double 0.77463419004573042
	.quad	0x3fc0f96440d6b928              # double 0.13261082807498181
	.quad	0x3f94901073697060              # double 0.020080811542684152
	.quad	0x3fe947e20e26c0cc              # double 0.790024783744252
	.quad	0x3fee261ad1b8c3be              # double 0.942151460278289
	.quad	0x3fe746ddfd073bde              # double 0.72740077418881888
	.quad	0x3fe50dd5b2fdcf68              # double 0.65793881377474595
	.quad	0x3fc8b88a2f22d8a8              # double 0.19313170720642359
	.quad	0x3f9ede8a84ff63e0              # double 0.030145801894693736
	.quad	0x3fde58b5df9de42c              # double 0.47416445577215671
	.quad	0x3fd5fe5f023025ac              # double 0.34365058149031813
	.quad	0x3fb575f62cd0a250              # double 0.083831201497227114
	.quad	0x3fe105ff9ed93494              # double 0.53198224091615254
	.quad	0x3fdef2cea43b3f28              # double 0.48356977499223541
	.quad	0x3fdbcda27f48452a              # double 0.43442594938194878
	.quad	0x3fd6759e8b5f24d0              # double 0.35092891321671704
	.quad	0x3fe68a5baf4896b6              # double 0.70438942179745001
	.quad	0x3fe441f94beebfc1              # double 0.63305344420040666
	.quad	0x3fd73d877ff2dbf8              # double 0.3631304502009125
	.quad	0x3fed27734f3b27fc              # double 0.91106572604007807
	.quad	0x3fc5f11555d85210              # double 0.17141977969789979
	.quad	0x3fd64a64f2d1b192              # double 0.34829066956333421
	.quad	0x3feeae1b8952ae0b              # double 0.95875336476223205
	.quad	0x3fcd9b6659e27308              # double 0.2313049258126727
	.quad	0x3fe5bcbec8c96c43              # double 0.6792901918046329
	.quad	0x3fea290f667080e6              # double 0.81751222617824904
	.quad	0x3fed05960264fba0              # double 0.90693188159626814
	.quad	0x3f8ed5e4b3839640              # double 0.015056406715710513
	.quad	0x3fc1e65c496508b0              # double 0.1398425444004423
	.quad	0x3fe595c620d0fa94              # double 0.67453295144499004
	.quad	0x3f41566c98ec5400              # double 5.2910139661099809E-4
	.quad	0x3feffe00494e8903              # double 0.99975599591951469
	.quad	0x3fe691461fec05dd              # double 0.70523363337286649
	.quad	0x3fec8808983639e2              # double 0.89160566071387515
	.quad	0x3fea7414114e042f              # double 0.8266697252257752
	.quad	0x3fe1f8038c955596              # double 0.56152512986834568
	.quad	0x3fe6b930874f3422              # double 0.71010614802947125
	.quad	0x3fe806f5a17a19e6              # double 0.7508495477530317
	.quad	0x3fd0aba633372ef4              # double 0.26047663690108824
	.quad	0x3fbc093b77bfc148              # double 0.109515873656851
	.quad	0x3fb88b20d5382d20              # double 0.09587292867233943
	.quad	0x3fe8c1ee56c1f37e              # double 0.77367321915481546
	.quad	0x3fd799f8aabd91ae              # double 0.3687726657283531
	.quad	0x3fea0b26ad876eaf              # double 0.81386121647252263
	.quad	0x3fcf5ceb6fd7faa4              # double 0.24502318345181096
	.quad	0x3fe61f9128096e7c              # double 0.6913533956498692
	.quad	0x3fe4f3a8f65d6e4a              # double 0.6547436534705835
	.quad	0x3fec872e2b1c8faa              # double 0.89150150699832875
	.quad	0x3febc3017f28f608              # double 0.86755442462862309
	.quad	0x3fe704257a64defe              # double 0.7192561522014953
	.quad	0x3f98606eb10598e0              # double 0.023805360369259954
	.quad	0x3fe30b2080d99488              # double 0.59510827222824592
	.quad	0x3f8886a936b755c0              # double 0.011975595457367372
	.quad	0x3fe4c2debe65867f              # double 0.64878785311539378
	.quad	0x3faea4203d5c5fc0              # double 0.05984593152078288
	.quad	0x3fdd080d52a6e0aa              # double 0.45361645766707659
	.quad	0x3fe4bbf46db1a8c5              # double 0.64794370102506404
	.quad	0x3fe6ab339841c107              # double 0.70839862573305445
	.quad	0x3fd0c62812fac9d4              # double 0.26209451535683326
	.quad	0x3fead1dcd48408d2              # double 0.83811799532875342
	.quad	0x3feed285992cca77              # double 0.96319847027764537
	.quad	0x3fe76127c9286365              # double 0.73060979164720818
	.quad	0x3fd55612604ca4da              # double 0.33337840465772006
	.quad	0x3fe8891de5c1aa94              # double 0.766737889044935
	.quad	0x3fd0373223db4a40              # double 0.2533688879167677
	.quad	0x3fc1953a8e4dee18              # double 0.13736659954507568
	.quad	0x3fd338be910de926              # double 0.30033840337240958
	.quad	0x3fc866f8fcc722fc              # double 0.19064247458143047
	.quad	0x3fdd84160adbcc22              # double 0.46118689594658424
	.quad	0x3fbb8c08b0248ab8              # double 0.10760549831733612
	.quad	0x3fedcc4aa638774f              # double 0.93118793930964638
	.quad	0x3fe128758037d09b              # double 0.53618884127219546
	.quad	0x3fe884a997bc1dec              # double 0.76619414935788432
	.quad	0x3fc3762ab60f74b4              # double 0.15204366578737949
	.quad	0x3fec8bb9e7aa358d              # double 0.89205641982123185
	.quad	0x3feac0fae6d2ab0b              # double 0.83605713923074754
	.quad	0x3fd6264bb33350ce              # double 0.3460873842243587
	.quad	0x3fd0592e5c6d1874              # double 0.25544318223945273
	.quad	0x3fe5dfd925c9ace5              # double 0.68357522373608204
	.quad	0x3fc212619c1ac204              # double 0.14118595239916953
	.quad	0x3fd825dab0d987a0              # double 0.37731044073563602
	.quad	0x3fb8afe123799040              # double 0.096433707390645829
	.quad	0x3fe1bd333ef16eb5              # double 0.55434572499821988
	.quad	0x3fdd497213869a5c              # double 0.45760776430907923
	.quad	0x3fca97bfcf1d259c              # double 0.2077560197160836
	.quad	0x3fdea3557850b542              # double 0.47871910810029672
	.quad	0x3fe105beafd7d336              # double 0.53195127815579357
	.quad	0x3fce4ae383e81254              # double 0.23666042271374244
	.quad	0x3fd930e62c3ff314              # double 0.39360956498403366
	.quad	0x3fdde3f949ff7132              # double 0.46703941561078743
	.quad	0x3fe93fb00345deeb              # double 0.78902435912365598
	.quad	0x3fe378e3355fff14              # double 0.60850677895357075
	.quad	0x3fe2184b599574e9              # double 0.56546561714972399
	.quad	0x3feb58a84e751239              # double 0.85457244228070472
	.quad	0x3fdf383f6eaf9e06              # double 0.48780809220485855
	.quad	0x3fc76a119dac96fc              # double 0.18292446326193346
	.quad	0x3fe512313a6aaeb3              # double 0.65847073945538737
	.quad	0x3feed4836f591bb0              # double 0.96344157931968333
	.quad	0x3fe7d418f9b7b5bb              # double 0.74464081547710437
	.quad	0x3fc57a23141818c4              # double 0.16778982621344174
	.quad	0x3fef27b408adbf2a              # double 0.97359658904131163
	.quad	0x3fe7a1097fdd4cb5              # double 0.73840785001302456
	.quad	0x3fed53e69c621a7c              # double 0.91649179977032657
	.quad	0x3fc1ff49513a1c30              # double 0.14060322252427815
	.quad	0x3fc3571baf3a0194              # double 0.15109582954393075
	.quad	0x3fc696898010859c              # double 0.17646902802611641
	.quad	0x3fa8eb6f06359020              # double 0.048671216495478342
	.quad	0x3fe9696ab3f7cff5              # double 0.79411826276782327
	.quad	0x3fdae4a517479ee0              # double 0.42020537637152522
	.quad	0x3fbc87669533cd40              # double 0.11144105093608392
	.quad	0x3fd874f4794715aa              # double 0.38213836520693667
	.quad	0x3feaef3c77202e60              # double 0.84170363680591364
	.quad	0x3fd40ea6a76df938              # double 0.31339422560258212
	.quad	0x3fea9458e7374440              # double 0.8306087985930688
	.quad	0x3fda9b3dfed59f04              # double 0.41572523008515838
	.quad	0x3fdf9fb8888061cc              # double 0.4941235859892259
	.quad	0x3fc69a2f580b05ac              # double 0.17658035086610135
	.quad	0x3f9cfe6b90a078e0              # double 0.02831428594810681
	.quad	0x3fe5eb7e29ab341f              # double 0.68499668253355483
	.quad	0x3fca702422b9aeb0              # double 0.20654727645466187
	.quad	0x3fa7dee48b711490              # double 0.046622411748594605
	.quad	0x3fe41bc83dad40a5              # double 0.6283913807510727
	.quad	0x3fedc2351ae9f133              # double 0.92995696312531206
	.quad	0x3fe8e92a1a216240              # double 0.77846245864481745
	.quad	0x3fdb10678e88fe8a              # double 0.42287625235983539
	.quad	0x3fc6237b30fa9ac8              # double 0.17295780078457867
	.quad	0x3fe18de80a9b7fb1              # double 0.54857256004105726
	.quad	0x3fe59ed9703ffd95              # double 0.67564079212017936
	.quad	0x3fcbbb7dccf26ce4              # double 0.21665928370644061
	.quad	0x3fd883618e5cbeec              # double 0.38301886465613566
	.quad	0x3feb9608698d2258              # double 0.86206455817689243
	.quad	0x3fed85ddf37adef6              # double 0.92259118609123791
	.quad	0x3fd2f2628a7dcd7e              # double 0.29604400181343482
	.quad	0x3fe75c8776429ad3              # double 0.7300450620430986
	.quad	0x3fe24fcac2659165              # double 0.57224023788562006
	.quad	0x3fa0c7369ae66ee0              # double 0.032769876869876091
	.quad	0x3fd8918394281ed8              # double 0.38388146847181082
	.quad	0x3fbeeb1a847fc2a0              # double 0.1207748960002939
	.quad	0x3feeebfee3debf15              # double 0.96630806451682593
	.quad	0x3fe859a62a5e232f              # double 0.76094349169679798
	.quad	0x3fcbe53a31f39e40              # double 0.21793296278996088
	.quad	0x3fee427f884a90d4              # double 0.94561745280636921
	.quad	0x3fed4ad03a810d53              # double 0.91538249422630213
	.quad	0x3fd99073ef0ba0f2              # double 0.39944170326499695
	.quad	0x3fa49a9c5d764e50              # double 0.040242086800529209
	.quad	0x3feea5076c96e576              # double 0.95764514168619885
	.quad	0x3fe0f5422c85ab97              # double 0.52993878074390721
	.quad	0x3feef8326df8ca96              # double 0.96779748419642675
	.quad	0x3fe471fa2645bb54              # double 0.63891322588993171
	.quad	0x3fd0ceba49061734              # double 0.26261765605191845
	.quad	0x3feecda9afe6b254              # double 0.96260532718367608
	.quad	0x3fd7a5fc01638c20              # double 0.36950588355665737
	.quad	0x3f90979c84d1cec0              # double 0.016203351599371585
	.quad	0x3fd7fa719818aba6              # double 0.37466087201272058
	.quad	0x3fe0a988981f1605              # double 0.52069501601425883
	.quad	0x3fb71ef76c3edd30              # double 0.090316261222018523
	.quad	0x3fca2c3988a7270c              # double 0.20447463200098814
	.quad	0x3fe47c3fdf868da0              # double 0.64016717583983862
	.quad	0x3fed5f850387074d              # double 0.91791010559993824
	.quad	0x3fee885e6e0d91e5              # double 0.95414659018257153
	.quad	0x3fafe107f04a31a0              # double 0.062263725359204658
	.quad	0x3fc1c71d317d104c              # double 0.13888897816116452
	.quad	0x3fcdcee0acaaceac              # double 0.23287590437904748
	.quad	0x3fe257979ed4650d              # double 0.5731924154416973
	.quad	0x3fb4e5588a92c418              # double 0.08162454016816445
	.quad	0x3fd3f567cd7b15e8              # double 0.31185336176380796
	.quad	0x3fc7653fe328ebb4              # double 0.18277739135541327
	.quad	0x3fe1fb7ebb5a93c9              # double 0.56195007889311299
	.quad	0x3fd79b492b90d064              # double 0.36885289434872548
	.quad	0x3fd541c701828810              # double 0.33213973185968459
	.quad	0x3fe91b8b8c949e7b              # double 0.78461244065415714
	.quad	0x3fa122bec2ea79b0              # double 0.033468209546515637
	.quad	0x3fda5745786992f6              # double 0.41157662161849318
	.quad	0x3fc3c0b1aec2fa80              # double 0.15431805642397833
	.quad	0x3fbd2caaeb6a94b8              # double 0.11396282432049787
	.quad	0x3fe3ab0979eb8a75              # double 0.61462854206577211
	.quad	0x3fe95f3abbbc03b5              # double 0.79287468592530408
	.quad	0x3fb803852794fac0              # double 0.093803713000833788
	.quad	0x3fe54e8a8e59faa8              # double 0.66583755305312753
	.quad	0x3fc2c03facd02168              # double 0.14649196565757028
	.quad	0x3fcffb6dbbaa4248              # double 0.24986049331029592
	.quad	0x3fdd98a6e2903efa              # double 0.46244213223779662
	.quad	0x3fe2ec1d4450234e              # double 0.59132254927053807
	.quad	0x3fb122bb00d1f940              # double 0.066936195087667905
	.quad	0x3fea7f1593cf5995              # double 0.8280132185853285
	.quad	0x3fd7da6e32c703c0              # double 0.37270693739634098
	.quad	0x3fbe496255cb6f30              # double 0.11830725283237764
	.quad	0x3fe5448948f7ff17              # double 0.66461624385553619
	.quad	0x3fdcf447178ee22e              # double 0.45240952778434262
	.quad	0x3fd8ac2ed923b684              # double 0.38550921635656032
	.quad	0x3fe45dc6ebc84833              # double 0.63644739199867784
	.quad	0x3feb446146c9cf07              # double 0.8520971663078577
	.quad	0x3fe814cb64dc1426              # double 0.75253839205891349
	.quad	0x3feedfc7d4e363eb              # double 0.96481696681723627
	.quad	0x3fea72aa66acf7bf              # double 0.82649726919020583
	.quad	0x3febfa358fed0ff5              # double 0.87429311857749659
	.quad	0x3f964bbc645bb820              # double 0.02177328455484695
	.quad	0x3fe77f91702166ef              # double 0.73432227993472832
	.quad	0x3fb9b41bfe947ad8              # double 0.10040450063068407
	.quad	0x3fc94bf16d729428              # double 0.19763009876365456
	.quad	0x3fe7e0096fbc6631              # double 0.74609824965881988
	.quad	0x3fb6288712aec7f8              # double 0.086555902539458773
	.quad	0x3fe41838f0c9e404              # double 0.62795683888464326
	.quad	0x3fe6ce4f633896ef              # double 0.71268433932411124
	.quad	0x3fd6c0db437e4e2c              # double 0.35552102652693196
	.quad	0x3fb550e605a6e1e0              # double 0.083265663509230148
	.quad	0x3fd036cbc7b5be76              # double 0.25334448340343074
	.quad	0x3fcbacd4fb815dcc              # double 0.21621191292318398
	.quad	0x3fcf46e428cd6f90              # double 0.2443509291869046
	.quad	0x3fef1505080aa89d              # double 0.97131587572700406
	.quad	0x3fc7154821e334b8              # double 0.18033696798958032
	.quad	0x3fee1a70cbe777c5              # double 0.94072761368783431
	.quad	0x3fd4314ff2054f68              # double 0.31550978312338041
	.quad	0x3fd0b81615bc5b40              # double 0.26123573420175106
	.quad	0x3fea8ced550ca97d              # double 0.82970301257346046
	.quad	0x3fe233d458046e9a              # double 0.56882683936005951
	.quad	0x3fee842fe7663da0              # double 0.95363612361136418
	.quad	0x3fddcf16b21bba76              # double 0.46576468842878371
	.quad	0x3fd7cba274942512              # double 0.37180386910093077
	.quad	0x3fbd5f4ebec29158              # double 0.11473552853801061
	.quad	0x3fed2f0b93c29789              # double 0.91199282512091984
	.quad	0x3f98035798b5f400              # double 0.023450249381756549
	.quad	0x3fc66962645c187c              # double 0.1750910749471507
	.quad	0x3fe8d39a8e110f64              # double 0.77583053347960317
	.quad	0x3fde940e20b078de              # double 0.47778657142943171
	.quad	0x3fe92d599b2b2e2a              # double 0.78678589159375645
	.quad	0x3fd742cdf2331c08              # double 0.36345242168721414
	.quad	0x3fe1fbcc85db797b              # double 0.56198717254646569
	.quad	0x3fe0636416c1f76a              # double 0.51213268704280535
	.quad	0x3fe0a8e3cc6b8fc6              # double 0.5206164352971363
	.quad	0x3fca2f4a34b6d2e4              # double 0.20456817220624324
	.quad	0x3fd3904a7a100f76              # double 0.30568181915463499
	.quad	0x3fe659da628e33f8              # double 0.69846839188687593
	.quad	0x3fce4a9d6e932fbc              # double 0.23665206813018169
	.quad	0x3fef76daa4f06d68              # double 0.98325855459863209
	.quad	0x3feb230515da9419              # double 0.8480248858292071
	.quad	0x3fe9f9e9f284c9bb              # double 0.81175706259664737
	.quad	0x3fe09b7c448a413b              # double 0.51898015391092345
	.quad	0x3fef708848e8c9e4              # double 0.98248686065772661
	.quad	0x3fe597486123cd1d              # double 0.67471713039995829
	.quad	0x3fc453266cff4254              # double 0.15878753969311055
	.quad	0x3fec2e9f797b458c              # double 0.88069127776013678
	.quad	0x3f8944c2ebd9d9c0              # double 0.012338183233833955
	.quad	0x3fdc1a4c5daf1c90              # double 0.43910512112456335
	.quad	0x3fce8c370603f494              # double 0.23865402024958782
	.quad	0x3fd8c0844e9be728              # double 0.38675029446277387
	.quad	0x3fe7f9fd5639d190              # double 0.74926630822169393
	.quad	0x3fe0a75d34ad2b6e              # double 0.52043018616073566
	.quad	0x3fe6829acbfd1ef4              # double 0.70344295350602559
	.quad	0x3fb0804d2e139b48              # double 0.064457725285689382
	.quad	0x3fe3dd4000053762              # double 0.62075805667857886
	.quad	0x3fe189885259fdeb              # double 0.54803863605769487
	.quad	0x3fdc3972d49f3dde              # double 0.44100638164397121
	.quad	0x3fe9aa3259a99874              # double 0.80202596199229825
	.quad	0x3fd56aeeb4053f52              # double 0.33465163784147933
	.quad	0x3fe8b504ce7b2e3f              # double 0.77209701851229073
	.quad	0x3fd461b2e101f35a              # double 0.31846305821800558
	.quad	0x3fce927280318ba0              # double 0.23884421596002614
	.quad	0x3fed97b9b9736a14              # double 0.92477117749087023
	.quad	0x3fdff10313f2a2b8              # double 0.49908520648981947
	.quad	0x3fe2b81e20fb9074              # double 0.58497530404976184
	.quad	0x3feb7521dfaccc01              # double 0.85804837881585183
	.quad	0x3feeaeb81607be02              # double 0.95882801344663471
	.quad	0x3fc2bbd7def47140              # double 0.1463575209280723
	.quad	0x3fc75fb1470b45a8              # double 0.18260780304858071
	.quad	0x3fe19d216ca89baa              # double 0.55043097708118194
	.quad	0x3fa9414bb76c8060              # double 0.049326292172054975
	.quad	0x3feadeabdf311b9e              # double 0.83968156425622786
	.quad	0x3fe50835a23308c5              # double 0.65725213698922202
	.quad	0x3fd85a374e8aeb08              # double 0.38050635023289248
	.quad	0x3fe63597ae6cef7e              # double 0.69404205386625484
	.quad	0x3fd3ad69dec647ec              # double 0.3074593234570091
	.quad	0x3feb0ca800db32a1              # double 0.8452949539874518
	.quad	0x3fb6c3c444dc24d0              # double 0.088924662410266863
	.quad	0x3fdcd4258a74736e              # double 0.45044840355858795
	.quad	0x3fb8fd72471f35b8              # double 0.097617285121677777
	.quad	0x3fd7b016f62ac4ac              # double 0.37012266196968358
	.quad	0x3fe968b030953bbc              # double 0.79402932633262635
	.quad	0x3fe89fc0f71bd3b8              # double 0.76950119269769512
	.quad	0x3fe0fce50db06936              # double 0.53087093995717427
	.quad	0x3fe13c36bd8e80e9              # double 0.538600321033326
	.quad	0x3feba0696df905b7              # double 0.86333152274180847
	.quad	0x3febef0c618a25aa              # double 0.87293070841513054
	.quad	0x3fb5931670f8d2c8              # double 0.084275629597708179
	.quad	0x3fe1e2d86c0514b3              # double 0.55894108865381609
	.quad	0x3fee92bac66cf9dd              # double 0.95541132693307029
	.quad	0x3fea1dd2e63506b7              # double 0.81614060365992358
	.quad	0x3fed58582bcb1445              # double 0.91703423074125878
	.quad	0x3fd1abc1e1bb64ba              # double 0.27610823673382934
	.quad	0x3fd98bcbe7f31256              # double 0.39915750171011177
	.quad	0x3fddc5f59a46b26a              # double 0.46520748201400031
	.quad	0x3fec7c063dadfdbd              # double 0.89013969466025566
	.quad	0x3fdd8008a2f5d608              # double 0.46093955911723627
	.quad	0x3f3a82b3a07b9000              # double 4.0451894208914929E-4
	.quad	0x3fe9cc1d60432070              # double 0.80616635132993331
	.quad	0x3fea2bd7c496acdb              # double 0.81785190960126941
	.quad	0x3fe16c4816c26f32              # double 0.54446796841828005
	.quad	0x3fd564af3afd989a              # double 0.33427029381562934
	.quad	0x3fc1db2bbd3424fc              # double 0.13950106371365922
	.quad	0x3fdefa068651d916              # double 0.48401034466896087
	.quad	0x3fe399f9328f6ca1              # double 0.6125455844406994
	.quad	0x3fe560d871529c0b              # double 0.66807195790613727
	.quad	0x3fea7d34edc6cf8f              # double 0.82778402748816571
	.quad	0x3fed235a4e252c68              # double 0.91056552183853245
	.quad	0x3fe1dd4942c22e03              # double 0.55826247252247219
	.quad	0x3fe7e34ef62ab16f              # double 0.74649761275717974
	.quad	0x3fa216691b3596f0              # double 0.035327229091121626
	.quad	0x3fdec80c47e5f72a              # double 0.48095995923346158
	.quad	0x3f9d64fefb40f2c0              # double 0.028705581746396147
	.quad	0x3fe6e935bd07b435              # double 0.71596800727787147
	.quad	0x3fed28ecd2c8f1b9              # double 0.91124573868687897
	.quad	0x3fdaf334c0a5567c              # double 0.42109412015029313
	.quad	0x3fcea79b9bdae99c              # double 0.23948998556245449
	.quad	0x3fe7e9bd39a85362              # double 0.74728261243090466
	.quad	0x3fe1a98b8d6167a4              # double 0.55194642651916981
	.quad	0x3fdffad41d0ccb90              # double 0.49968436085617274
	.quad	0x3fd975e6b16094a4              # double 0.39782111474989734
	.quad	0x3fd7c3e67f652b10              # double 0.37133181038795815
	.quad	0x3fdfdeee9ed71ac6              # double 0.49798169624083888
	.quad	0x3fbc09d84c9c9460              # double 0.10952522154237121
	.quad	0x3fd1f17958ac8be2              # double 0.28036340388842806
	.quad	0x3feba643187a3365              # double 0.86404566555721074
	.quad	0x3fd6dfdbf8b1dc98              # double 0.35741328512762882
	.quad	0x3fd52cf5aacbed52              # double 0.33086911849359979
	.quad	0x3fdebe0acf190eee              # double 0.48034925674822559
	.quad	0x3fe3cc38fc70e265              # double 0.61867951683877875
	.quad	0x3fea0afcc8ae6590              # double 0.81384123988680024
	.quad	0x3fa44a77432a8610              # double 0.03963062949084073
	.quad	0x3faa87c31ee2a210              # double 0.051817033310104788
	.quad	0x3f9e1647741bcc40              # double 0.029381863080697679
	.quad	0x3fe938039c251263              # double 0.7880876588538509
	.quad	0x3fdc536832d03d42              # double 0.44259076082467541
	.quad	0x3fefe9e6611a0b6d              # double 0.99730223622496583
	.quad	0x3faf47756f691770              # double 0.061092061853328938
	.quad	0x3feb96d0cdeab51f              # double 0.8621601125538837
	.quad	0x3fd66c4e04f09276              # double 0.35036039812465647
	.quad	0x3fd1cac73c233df6              # double 0.27800160286730546
	.quad	0x3fec3cc240d6fafa              # double 0.88241684593216907
	.quad	0x3fd00f95450d532e              # double 0.25095111602176956
	.quad	0x3fee82510d66414c              # double 0.95340778939320491
	.quad	0x3fe8a99f7d786dd4              # double 0.77070593362753436
	.quad	0x3fe40f62e15a65ca              # double 0.62687820448189169
	.quad	0x3feaf1819d5e51f5              # double 0.84198075042746601
	.quad	0x3fe36c0068a0bc66              # double 0.60693378863460334
	.quad	0x3fd571b90594cc46              # double 0.33506608529132043
	.quad	0x3fbfa341c5962a70              # double 0.12358485292330967
	.quad	0x3fed6ac17abe62d0              # double 0.91928171132448178
	.quad	0x3fdbba9f2f75d522              # double 0.43326549181741048
	.quad	0x3fce189459ef9970              # double 0.23512510672953679
	.quad	0x3fef1559c689a8a0              # double 0.97135628487491842
	.quad	0x3fe91441fdd53e20              # double 0.78372287346605062
	.quad	0x3fdf4d74d90367d4              # double 0.4891025656958139
	.quad	0x3fce2e2eb39288ac              # double 0.23578437584098333
	.quad	0x3fc464a5515fa24c              # double 0.15932146523779733
	.quad	0x3fdafa067792201e              # double 0.42151033093296231
	.quad	0x3f65390a84488200              # double 0.0025906758694562715
	.quad	0x3fecf3cf109293fe              # double 0.90476182209806644
	.quad	0x3fed717ff2fb6732              # double 0.92010495622091626
	.quad	0x3fd798fb2050e4f8              # double 0.36871221690996903
	.quad	0x3fee79319bad6ca7              # double 0.95229416280507884
	.quad	0x3fee65f5d89c185e              # double 0.94994633013335394
	.quad	0x3febe0ebd8d91b5c              # double 0.87120621064319037
	.quad	0x3fe2eb57781ed3e6              # double 0.59122823201198282
	.quad	0x3fd132011a4fef92              # double 0.26867702073627087
	.quad	0x3fdf45aaf5db7740              # double 0.48862718591214005
	.quad	0x3fe188e21a90ddd8              # double 0.54795937718057086
	.quad	0x3fd6a43b5846e396              # double 0.35377391453544627
	.quad	0x3fd686085c975250              # double 0.35193070451831421
	.quad	0x3fd8d534ce4cd34c              # double 0.38801307817930275
	.quad	0x3fd51746ee96623e              # double 0.32954572009615279
	.quad	0x3fdea62cd6e0e00a              # double 0.47889252647610248
	.quad	0x3fe7d50847ebda67              # double 0.74475492522362863
	.quad	0x3fe4a66d873e8963              # double 0.64531589903735342
	.quad	0x3fe13b90677e54b0              # double 0.53852100575990924
	.quad	0x3feb2220a3e7c993              # double 0.84791595471169712
	.quad	0x3feaedfc48013271              # double 0.84155096114552752
	.quad	0x3fc23b1fcecc2230              # double 0.14242932889489301
	.quad	0x3feeceb17b4ada06              # double 0.96273111420197277
	.quad	0x3fd135c530d09ba2              # double 0.26890687720372786
	.quad	0x3fef2f46bda1489b              # double 0.97452103650200017
	.quad	0x3fe193a1b7ba9e4e              # double 0.54927144894186042
	.quad	0x3feb646ca9f9314e              # double 0.85600884626323093
	.quad	0x3fe4cee45af4a8f2              # double 0.65025537266526912
	.quad	0x3feff3c32a085e59              # double 0.99850614747533505
	.quad	0x3fba8fbac8feb3e0              # double 0.10375564009764515
	.quad	0x3fef771bb381aa71              # double 0.98328957614769596
	.quad	0x3fb56f89ee2b8410              # double 0.08373319687554237
	.quad	0x3fd93f3253a5261c              # double 0.39448221367328684
	.quad	0x3fe394938308b167              # double 0.61188674538202015
	.quad	0x3fc88c58beff4d74              # double 0.19178304029501769
	.quad	0x3fd73756465bee66              # double 0.36275250311857687
	.quad	0x3fcd0f0a78e8a410              # double 0.22702151206729626
	.quad	0x3fe1e6b39ac8324a              # double 0.55941181403029216
	.quad	0x3fd499b01dfeacae              # double 0.32188036851102708
	.quad	0x3fb8b62ccdc5e720              # double 0.096529770124018643
	.quad	0x3fdce22b5e20b66a              # double 0.45130428497473096
	.quad	0x3feba1fc45ac70b6              # double 0.86352361305355063
	.quad	0x3fdbb50e1857b528              # double 0.43292572381217775
	.quad	0x3fe5ff4955eec0f0              # double 0.68741289886204804
	.quad	0x3fc64707b4553160              # double 0.1740426664858985
	.quad	0x3fc199e94d2cb078              # double 0.13750950115479887
	.quad	0x3fdf05e4d64d51a4              # double 0.48473473480160068
	.quad	0x3fe433d18a8a2096              # double 0.63132550295360335
	.quad	0x3feefbed0db603cd              # double 0.96825268438271339
	.quad	0x3fd0582fbaf77c8a              # double 0.25538247354956722
	.quad	0x3fe35ec9d1a3ca11              # double 0.60532084412835918
	.quad	0x3feee99196786ac6              # double 0.96601180447336144
	.quad	0x3febe706a5a9b538              # double 0.87195141178168623
	.quad	0x3fd49afd5fcb059c              # double 0.3219598231772467
	.quad	0x3fd1b53d89de9682              # double 0.27668703521553806
	.quad	0x3fef09002c5b5a38              # double 0.96984871543356288
	.quad	0x3fce067429856924              # double 0.23457195308112333
	.quad	0x3faaa9522477baa0              # double 0.052073065711615074
	.quad	0x3fe1948de76b667b              # double 0.54938407134177625
	.quad	0x3fdd3b337900f5ce              # double 0.4567383462598088
	.quad	0x3fe9d50c49a2096b              # double 0.80725683576046714
	.quad	0x3fc803d6d32d7594              # double 0.18761716185956046
	.quad	0x3fdb791bb23c0414              # double 0.42926685720164071
	.quad	0x3fdbc16c79d19c88              # double 0.43368064781538651
	.quad	0x3fe6771229437ee2              # double 0.70203502711589416
	.quad	0x3feaa0557a9d643a              # double 0.83207200954632943
	.quad	0x3fc970f37fcec514              # double 0.19875949612245647
	.quad	0x3fd544f0d4b4ebb2              # double 0.33233280918255581
	.quad	0x3fc62df52ed4ef4c              # double 0.17327751909931022
	.quad	0x3fdd2e8406e94c1c              # double 0.4559640948766075
	.quad	0x3fdf673024be6630              # double 0.49067309940582771
	.quad	0x3fe8814d21f7b3af              # double 0.76578385004324001
	.quad	0x3fb82dbfde75e618              # double 0.094448081790595828
	.quad	0x3fc0728772500178              # double 0.1284951503912557
	.quad	0x3fc9d24b962a8768              # double 0.20173020202951908
	.quad	0x3fd6fe28fb7bb670              # double 0.35926270064269428
	.quad	0x3fec66d7bc7bab1b              # double 0.88755404294110762
	.quad	0x3fe21aba4ef26241              # double 0.56576266688632171
	.quad	0x3fe0d743dc9dba57              # double 0.52627747620665388
	.quad	0x3fe935e846537f6f              # double 0.78783048377588993
	.quad	0x3fde5593550d0878              # double 0.47397311502221084
	.quad	0x3fd0d30f130937ca              # double 0.26288201197610006
	.quad	0x3fef3b44879a34f5              # double 0.97598482594335556
	.quad	0x3fe601b44ca8410a              # double 0.6877080437862173
	.quad	0x3f91a804c606ddc0              # double 0.017242502771947832
	.quad	0x3fe4198b94a4e750              # double 0.62811831504880367
	.quad	0x3fc02032d09c4370              # double 0.12598262010626682
	.quad	0x3f959301e6c09c20              # double 0.021068601330764491
	.quad	0x3fe05b4d6f6294d6              # double 0.51114532236956722
	.quad	0x3fbb2c9e03cdfa28              # double 0.10614955513845159
	.quad	0x3fa723c35407fd00              # double 0.045194725043979034
	.quad	0x3fc313dcf0cf3d74              # double 0.14904367216375258
	.quad	0x3fe298e4426b9974              # double 0.58116353008953903
	.quad	0x3fd5135e28c468fa              # double 0.32930711728262418
	.quad	0x3fc0079ba5a941e8              # double 0.12523217762874528
	.quad	0x3feecf4fd4bed375              # double 0.9628066210922116
	.quad	0x3fc22e70ca260100              # double 0.14204225416688843
	.quad	0x3fe1847841f812bf              # double 0.54742062458588936
	.quad	0x3feaed1b07ec1c25              # double 0.84144355342221344
	.quad	0x3fec4161a5b3d049              # double 0.88298113216161156
	.quad	0x3f8da54d40958200              # double 0.014475444348762245
	.quad	0x3fc994ebd66b0338              # double 0.19985721559171465
	.quad	0x3fe9a8addc37ffba              # double 0.80184071551774783
	.quad	0x3fd67de14a9c7b8a              # double 0.35143310819869866
	.quad	0x3feb2262508b4113              # double 0.84794727069132347
	.quad	0x3fef610a9951fe1b              # double 0.98059587426536454
	.quad	0x3feb9064ebb6b5b2              # double 0.86137624776681876
	.quad	0x3fe8623431e0e554              # double 0.76198777906317127
	.quad	0x3fde7c9a5ea64f92              # double 0.4763551639855389
	.quad	0x3fcae569b9f43930              # double 0.21012612895760574
	.quad	0x3fcd59255fc58cf8              # double 0.22928301979400323
	.quad	0x3fe82b1595be68bb              # double 0.75525931593735807
	.quad	0x3fd5b20f5e0aa7e2              # double 0.33899292167427408
	.quad	0x3fe02ffec8afcfe7              # double 0.50585879513391496
	.quad	0x3feefb8e06a14eec              # double 0.968207371663508
	.quad	0x3fe0bf33ee8f6988              # double 0.52334019273557519
	.quad	0x3feef3497ad5a51a              # double 0.96719812384722847
	.quad	0x3fc548fe8032d58c              # double 0.16629010448165749
	.quad	0x3fe56d8597d88743              # double 0.66961936623940976
	.quad	0x3fe3c74ca47dac4a              # double 0.61807853819971936
	.quad	0x3fcbe0a09d79db84              # double 0.2177925843168077
	.quad	0x3fc3eea582b60c90              # double 0.15572041399363856
	.quad	0x3fd57460c56fdcec              # double 0.33522815018609609
	.quad	0x3fc6939908b47d7c              # double 0.17637932705927628
	.quad	0x3fe4c6a8b43fdc21              # double 0.64925036625834676
	.quad	0x3fe1dad5ca8f1c7d              # double 0.55796327173528903
	.quad	0x3fc10508d0665e8c              # double 0.13296613860869788
	.quad	0x3fed503c5ca95b6d              # double 0.91604440782508123
	.quad	0x3faa5b1e5b975e10              # double 0.051476429634643606
	.quad	0x3fde9b9be11a17c0              # double 0.47824761374101499
	.quad	0x3fb6c3d36adfedd0              # double 0.088925565330945532
	.quad	0x3fe3aeaf056d1a16              # double 0.61507369098473208
	.quad	0x3fcb5beb0638a55c              # double 0.21374261668942551
	.quad	0x3fee1d9e36f63dc3              # double 0.9411154817079751
	.quad	0x3fb67eecbb3ebad8              # double 0.087874217714424829
	.quad	0x3fe7969824fb8639              # double 0.73713309500835245
	.quad	0x3fcf08069f72a864              # double 0.24243243012944327
	.quad	0x3fceee56e50ff78c              # double 0.24164854225812993
	.quad	0x3fea638d09f9c82c              # double 0.82465221355801565
	.quad	0x3fecf6dffbd10107              # double 0.90513610060591609
	.quad	0x3fe4694210b8be83              # double 0.63784888521145466
	.quad	0x3fdd1e9ad1500dd4              # double 0.45499296608633455
	.quad	0x3fc1bac48da40b98              # double 0.1385122005086401
	.quad	0x3fd45507fcb0c8be              # double 0.3176898925477295
	.quad	0x3fe211130dbaf8f9              # double 0.56458428079329714
	.quad	0x3fd2d2aa89150ee2              # double 0.29410804163874904
	.quad	0x3fd4c33bf129ef0a              # double 0.32441614676621155
	.quad	0x3fcdd435582f72f4              # double 0.23303858571934877
	.quad	0x3fea67cfeaef0b06              # double 0.82517238507748014
	.quad	0x3feceeb5bfd2f10c              # double 0.90413939920066033
	.quad	0x3fdf5933e03432e4              # double 0.48981949705993899
	.quad	0x3fda997ce1221d2e              # double 0.41561815248174383
	.quad	0x3fdd7d4beb82bc4c              # double 0.46077249526110076
	.quad	0x3fedc54a92652ee0              # double 0.9303334101946028
	.quad	0x3fbdf3862b45abb0              # double 0.11699713283967017
	.quad	0x3fe929ae1991f3d0              # double 0.7863379001060995
	.quad	0x3fd59e9469d05aa2              # double 0.33780393918406493
	.quad	0x3fdc9e285594b36e              # double 0.44715317113405362
	.quad	0x3fe1a0c4b0df1a74              # double 0.55087503953184447
	.quad	0x3fdaa739abbc5cfe              # double 0.41645662089418056
	.quad	0x3fe4787b7b4ddeb6              # double 0.6397073181423909
	.quad	0x3fe383dab19252f3              # double 0.60984549219082707
	.quad	0x3fd3076748c65bdc              # double 0.29732687098424804
	.quad	0x3fc5c76ad986ab44              # double 0.17014823552502822
	.quad	0x3fd348a72bc6cf2a              # double 0.30130938792284445
	.quad	0x3fec810777539f57              # double 0.89075063043581337
	.quad	0x3fe44bd962faa7d8              # double 0.63425893146381451
	.quad	0x3fbb79fd52923e70              # double 0.1073301626768115
	.quad	0x3feb511777c82339              # double 0.85364888567810404
	.quad	0x3fe95c04ef191bab              # double 0.79248282145350879
	.quad	0x3feda54f95b44e88              # double 0.92642955054402965
	.quad	0x3fd47b66514907e6              # double 0.3200317186166316
	.quad	0x3fa322c9162b1bd0              # double 0.037374767261603048
	.quad	0x3fb41b2b0ff5bb90              # double 0.078539554020365054
	.quad	0x3fe15579aa61bbb1              # double 0.54168399121942035
	.quad	0x3fb817f8e44f4e10              # double 0.094115787257855965
	.quad	0x3fe31c76ee2e563e              # double 0.59722467918135869
	.quad	0x3fd871296756278c              # double 0.38190684405764652
	.quad	0x3fa314c82e2c63e0              # double 0.03726792873039364
	.quad	0x3fcc979b2b0f2e14              # double 0.22337665178780297
	.quad	0x3fe64ed6fc3a944b              # double 0.69712399733965336
	.quad	0x3fc6c70de9779be8              # double 0.17794965648428662
	.quad	0x3fe5c17803f5554b              # double 0.67986679814445361
	.quad	0x3fcf60ad401928dc              # double 0.24513784055517973
	.quad	0x3fd198a88e607f98              # double 0.27494253067015384
	.quad	0x3fd10473d130233e              # double 0.26589675358313858
	.quad	0x3fe57e2906ff9b26              # double 0.671650422734136
	.quad	0x3fe663eaa11e0c28              # double 0.69969684093701279
	.quad	0x3fc6802d0c6cb478              # double 0.1757866202036984
	.quad	0x3fee94b2d8357113              # double 0.95565168598435191
	.quad	0x3fd2abbfb39218d4              # double 0.29173271690559699
	.quad	0x3fd5c310486e77de              # double 0.34003073762312208
	.quad	0x3fece1cb00a74b70              # double 0.90256261947284422
	.quad	0x3fdecc4da322c1d2              # double 0.48121968203761611
	.quad	0x3fe55626ccdfb0de              # double 0.66676654829418758
	.quad	0x3fe5c1a824dd142d              # double 0.67988974761886356
	.quad	0x3fc73ce84942864c              # double 0.18154624535695729
	.quad	0x3fe9926b380b7015              # double 0.79912339159227719
	.quad	0x3fcca000db10b350              # double 0.22363291451019984
	.quad	0x3fdd6d16d6b58310              # double 0.45978327720335788
	.quad	0x3fd824ebb893f288              # double 0.37725346589267206
	.quad	0x3feff9a6bc2380d0              # double 0.99922501321636936
	.quad	0x3fdd267d997b5006              # double 0.45547428120085021
	.quad	0x3fe217c8141f2eed              # double 0.56540302209893201
	.quad	0x3fedca795ede3185              # double 0.93096607712645663
	.quad	0x3fde720cdf446bce              # double 0.47571107676929791
	.quad	0x3fcec803f4947f18              # double 0.24047898714433624
	.quad	0x3fe0cf19a97d15f3              # double 0.52528079131360383
	.quad	0x3fe0ffe45a629c0f              # double 0.53123681691511304
	.quad	0x3fc4b55725266bcc              # double 0.16178407014817109
	.quad	0x3fd35b6f073574be              # double 0.30245567039476018
	.quad	0x3fec5fabb2bccde2              # double 0.88667855176612087
	.quad	0x3fb90f0074a1c1f0              # double 0.097885158991409815
	.quad	0x3fe107e9cfc63c85              # double 0.5322159822552669
	.quad	0x3fc5600623ba4c70              # double 0.16699291939275751
	.quad	0x3fd9b9a8fd488718              # double 0.40195679411600471
	.quad	0x3fe4f47d9293e472              # double 0.65484503391702575
	.quad	0x3fe1b92d71f7761f              # double 0.55385467776403974
	.quad	0x3fdd1e4709952620              # double 0.45497299133112001
	.quad	0x3fe5925414c0ac18              # double 0.67411235860106711
	.quad	0x3fe73c3770b2351c              # double 0.7261006547065878
	.quad	0x3feff335ed51185a              # double 0.99843880034382981
	.quad	0x3fe36cd2b3924ab0              # double 0.60703406403111693
	.quad	0x3fbbf948bebb5398              # double 0.10927252441918112
	.quad	0x3feea72ee47b1b32              # double 0.95790810227558709
	.quad	0x3fee246715de7f79              # double 0.94194368621172864
	.quad	0x3fe70fb8bbf30784              # double 0.72066914280752359
	.quad	0x3fc727422448393c              # double 0.18088557025516561
	.quad	0x3fe68c33a470175b              # double 0.70461446873444389
	.quad	0x3fe3140941f2f011              # double 0.59619582062396337
	.quad	0x3fc04a20b63bc474              # double 0.12726220033758617
	.quad	0x3fe69c0f4e66454d              # double 0.70655026733781201
	.quad	0x3fd28016ec165560              # double 0.28906796508211663
	.quad	0x3fef1269b47a705c              # double 0.97099766969359846
	.quad	0x3fcd0e9eb36d4808              # double 0.22700866471365111
	.quad	0x3fce0475bb2c97fc              # double 0.23451110495915362
	.quad	0x3fd640e38b8a43de              # double 0.34771050097429945
	.quad	0x3fd65c41b49396d2              # double 0.3493808997576312
	.quad	0x3fee1b775aec3af7              # double 0.94085281141619148
	.quad	0x3fe952d625c730e7              # double 0.79136187914403144
	.quad	0x3fc68be86a2d2884              # double 0.17614464935678964
	.quad	0x3feb6311b22000f8              # double 0.85584339895288419
	.quad	0x3fe7d7bb29589a81              # double 0.74508436274921064
	.quad	0x3fc1f09b1d331c68              # double 0.140155209787028
	.quad	0x3fee0e0e820db424              # double 0.93921590233879159
	.quad	0x3fe01fde4d38b558              # double 0.50389018137290531
	.quad	0x3f92c3ffa83352a0              # double 0.018325800553457783
	.quad	0x3fc89f92f2f07574              # double 0.19236981260557295
	.quad	0x3fdb1937597d5cf8              # double 0.42341407527187824
	.quad	0x3fdaabc25e92bc7c              # double 0.41673335300124115
	.quad	0x3feb858089c9c49c              # double 0.86004664336919089
	.quad	0x3fddc7e2490ae86a              # double 0.46532494671885749
	.quad	0x3fed7b4482741460              # double 0.92129731635271738
	.quad	0x3fbb1b7636820410              # double 0.1058877833438745
	.quad	0x3fe222c1b5e31348              # double 0.5667427589874956
	.quad	0x3fe2bea2aba1f9d0              # double 0.5857709266854787
	.quad	0x3fa2b5c0d1e87950              # double 0.036542916892573829
	.quad	0x3fe8e814facbb642              # double 0.77833031638665084
	.quad	0x3f9b1c3fc0551a80              # double 0.026474948991813907
	.quad	0x3fee17ef54f88aa7              # double 0.94042173953888131
	.quad	0x3feea2caadeba7c9              # double 0.95737203568318663
	.quad	0x3fe1a598dbafee56              # double 0.55146449000990105
	.quad	0x3fee2aacca3b6b32              # double 0.94270934580285926
	.quad	0x3fe3cfc919ce2abd              # double 0.61911444702248952
	.quad	0x3fe44e641a0412ef              # double 0.63456921654923615
	.quad	0x3fa2c8dec1e88ab0              # double 0.036688767595724925
	.quad	0x3fecddecc604efc5              # double 0.90209044147149398
	.quad	0x3fe185113ab73598              # double 0.54749356716063158
	.quad	0x3fd5acc696294fb2              # double 0.33867039360233797
	.quad	0x3fe3dc0c0026e206              # double 0.6206111910788088
	.quad	0x3fbf303d1bb91f20              # double 0.12182981421312578
	.quad	0x3fe969e632fb18ef              # double 0.7941771503181182
	.quad	0x3fe039fb08ebb969              # double 0.50707771055548989
	.quad	0x3fe2823039d9c3d7              # double 0.57839213656381616
	.quad	0x3fd5489173afad0c              # double 0.33255420968517124
	.quad	0x3fe16f6482ececfc              # double 0.54484773227105121
	.quad	0x3fe92b1c6dbe9bb9              # double 0.7865125792931088
	.quad	0x3fc656a449844db8              # double 0.17451909627616913
	.quad	0x3fcfeed5a6160ebc              # double 0.24947615251232047
	.quad	0x3fe1c76139b67d65              # double 0.55558835289040742
	.quad	0x3fa06a1b03cf60a0              # double 0.032059520926567275
	.quad	0x3fd7cf1dbf789c7c              # double 0.37201636980393693
	.quad	0x3fdd1aa708b569ec              # double 0.45475173807576996
	.quad	0x3fe545d053f6a5f5              # double 0.66477219008555599
	.quad	0x3f791c15760d2400              # double 0.0061302984548285977
	.quad	0x3fe8c43111dae12b              # double 0.77394917952827791
	.quad	0x3fd2be13d9ce81b2              # double 0.29285141248876834
	.quad	0x3fe0f94b41e81cbd              # double 0.53043139336013889
	.quad	0x3fd9aecc0e8e8560              # double 0.40129376813464113
	.quad	0x3fc9bdec9404bdc0              # double 0.20110852458445372
	.quad	0x3febaf74e2a1fe7f              # double 0.86516803993431768
	.quad	0x3fc54c0ea5dcf2b4              # double 0.16638358210356829
	.quad	0x3fe8cfdb0a03b809              # double 0.77537300067865644
	.quad	0x3fc0e253d6c857d4              # double 0.13190696704322014
	.quad	0x3fbb35ebbf218928              # double 0.10629151741298826
	.quad	0x3fc187ee237e7e14              # double 0.13696076138602165
	.quad	0x3fd540fd978ff7aa              # double 0.33209171105397195
	.quad	0x3feb1c9f64485e60              # double 0.84724397264922046
	.quad	0x3feb0260a4e93974              # double 0.84404022416292301
	.quad	0x3fe0b50aff24d49b              # double 0.52209997017657217
	.quad	0x3fe413de4a1e6eb5              # double 0.62742533184378735
	.quad	0x3fbea3dafec8b878              # double 0.11968773575128633
	.quad	0x3fda9e8451fcfeee              # double 0.41592510229746338
	.quad	0x3fd6c124a95c8226              # double 0.35553852595515634
	.quad	0x3f703c481feefa00              # double 0.0039637391445794812
	.quad	0x3fe9ddc7fb16b8b4              # double 0.80832289734623552
	.quad	0x3fe07b84fbaf5de5              # double 0.5150780597422765
	.quad	0x3fd813e26fd410e8              # double 0.37621365471592449
	.quad	0x3fe79ae924f199c5              # double 0.73765999999596288
	.quad	0x3fceea23793b28a8              # double 0.2415203420590093
	.quad	0x3fdd08482263b880              # double 0.45363047941544465
	.quad	0x3fe17fac3577f0d1              # double 0.54683504527158722
	.quad	0x3fd0bcb143e53928              # double 0.26151687269602286
	.quad	0x3fee473c33bba8cf              # double 0.9461956987772967
	.quad	0x3fd85ef561c21de4              # double 0.38079580828386228
	.quad	0x3fe73ea6f2a22f16              # double 0.72639796628343123
	.quad	0x3fb0951e4d3116d8              # double 0.064775365682261721
	.quad	0x3fec4309bb0e5387              # double 0.88318335089080413
	.quad	0x3fef46a3e0781250              # double 0.97737306443793592
	.quad	0x3fef0f86108bb5ef              # double 0.97064498168555057
	.quad	0x3fe3eb5cbd77f152              # double 0.62248074536868558
	.quad	0x3fc0dae6c6264f24              # double 0.13168034243846549
	.quad	0x3fe07607de7699ea              # double 0.51440804910526805
	.quad	0x3fe8c5b3945d27a4              # double 0.77413348176309115
	.quad	0x3fc812cced6ca980              # double 0.18807374566069868
	.quad	0x3fc18e03608847e0              # double 0.1371463986729955
	.quad	0x3feafc747a04a589              # double 0.84331725913686839
	.quad	0x3feb3084ad7bf91c              # double 0.84967264064451653
	.quad	0x3fa1c03a322a9dd0              # double 0.034669703124844298
	.quad	0x3fdc42a25d7799d0              # double 0.44156703117041918
	.quad	0x3fca24e2e4600914              # double 0.20425068045739947
	.quad	0x3fedea8fd84b35fd              # double 0.93488304371720654
	.quad	0x3fdb38610c5ebb34              # double 0.42531610687267407
	.quad	0x3fd5a3458c9d3af6              # double 0.33809031230786901
	.quad	0x3fb6f5a239711500              # double 0.08968557264696031
	.quad	0x3fc23eadcfefa304              # double 0.14253780987862552
	.quad	0x3fd59520c1fa303a              # double 0.33722704833121819
	.quad	0x3fd25e9389dacd64              # double 0.28702248060581881
	.quad	0x3fd6ce02def69732              # double 0.35632392667536117
	.quad	0x3fd5a9e2a926e06a              # double 0.33849398154007437
	.quad	0x3fed80e5768efd15              # double 0.92198441654173513
	.quad	0x3fe56fce40eb264e              # double 0.66989815406231812
	.quad	0x3fe0c06c64b87962              # double 0.52348918601982697
	.quad	0x3f95d466cd439d00              # double 0.02131806018669824
	.quad	0x3fd98bfe354875e6              # double 0.39916949466154816
	.quad	0x3fd3734a81cdfb84              # double 0.30391180683357555
	.quad	0x3fe525db984ebf63              # double 0.6608713125951734
	.quad	0x3fdc173dc9460060              # double 0.43891853957757654
	.quad	0x3fe89c4e93a58e41              # double 0.76908043706175289
	.quad	0x3fc35e1202bbdc5c              # double 0.15130829938400125
	.quad	0x3fe9c8cfb1e96f4b              # double 0.80576309917840072
	.quad	0x3f51a5bda8f59000              # double 0.0010771133564384527
	.quad	0x3fe1f57e5262944c              # double 0.56121746149859453
	.quad	0x3fb8c49430196dc8              # double 0.096749555342675042
	.quad	0x3fee764bdfa99704              # double 0.95194047626566247
	.quad	0x3fe3eff9f88defb4              # double 0.62304400010861238
	.quad	0x3fe102cca6a66f21              # double 0.53159172581533565
	.quad	0x3fcc21f850280bf4              # double 0.21978668130768109
	.quad	0x3fef6a80119c5992              # double 0.98175052108381267
	.quad	0x3fe8f71d603af8d8              # double 0.78016537470810032
	.quad	0x3fd1408017225dd8              # double 0.2695617891235691
	.quad	0x3fa75b4164918bd0              # double 0.045618098761017856
	.quad	0x3fe0e7bdf498c0ee              # double 0.52828882000724575
	.quad	0x3fece7260ea37417              # double 0.90321638926582437
	.quad	0x3fed158e4ba69c8d              # double 0.90888132834960944
	.quad	0x3fee74657c28dfea              # double 0.95170854806837935
	.quad	0x3fc458577907513c              # double 0.15894597444151681
	.quad	0x3fec8ef8a1fcb046              # double 0.89245254171465471
	.quad	0x3fd6645121c7d470              # double 0.34987285899052889
	.quad	0x3f6018078330a300              # double 0.0019645830848457058
	.quad	0x3fe86d3e8895df1a              # double 0.7633354823765075
	.quad	0x3fe53d2cfccc820c              # double 0.66371774077203005
	.quad	0x3fdec6ccd6bbaf52              # double 0.48088379831346117
	.quad	0x3fe3142b43f62400              # double 0.59621203683593649
	.quad	0x3fe1d0e558df4046              # double 0.55674998624636696
	.quad	0x3fe847a6b6bc66dc              # double 0.75874648752798234
	.quad	0x3fe506e26294a4b7              # double 0.65709037069350174
	.quad	0x3fe2c6ee9912fc21              # double 0.58678369424149335
	.quad	0x3fe03cec3fd942fa              # double 0.50743687124676673
	.quad	0x3fe4939f62a39401              # double 0.64302033677506654
	.quad	0x3feff807b952ab52              # double 0.99902712055095777
	.quad	0x3fc4c9badc67f298              # double 0.16240630876554429
	.quad	0x3fe08182c9adad54              # double 0.51580943479840835
	.quad	0x3fea1003238df6bd              # double 0.81445462173697758
	.quad	0x3fe478882cb62d3d              # double 0.63971337063541223
	.quad	0x3feea6227c7b34cb              # double 0.95778011620282066
	.quad	0x3fd5ec179a24e474              # double 0.34253492406020958
	.quad	0x3fdf01ba07c6bc84              # double 0.48448038825421968
	.quad	0x3fd44b2d1fe7d018              # double 0.31708839526913968
	.quad	0x3fe7385dabae7a14              # double 0.7256306031375197
	.quad	0x3fed1ef1a689b0dc              # double 0.91002733733105456
	.quad	0x3f6682f66de0fe00              # double 0.0027479947157471596
	.quad	0x3fb2b13db38fbd78              # double 0.073016983354809883
	.quad	0x3fe347d5805e578b              # double 0.6025187976072045
	.quad	0x3fba95e946b1ecc0              # double 0.10384996391251189
	.quad	0x3fe5ab125e8b3e07              # double 0.67713278260811272
	.quad	0x3fde4fcd8f334c56              # double 0.47362078651821571
	.quad	0x3fe9b30a645d012f              # double 0.80310554125029465
	.quad	0x3fe177bfa86de11a              # double 0.54586775680857902
	.quad	0x3fa55091123b72b0              # double 0.041630300021755828
	.quad	0x3fe305a452bf3775              # double 0.59443870698463164
	.quad	0x3fda2e7c6b5e031e              # double 0.40908728108483838
	.quad	0x3fd94add60ea5714              # double 0.3951943823279731
	.quad	0x3fe64b3869702e76              # double 0.6966821727123278
	.quad	0x3fd8de4b41dc4f14              # double 0.38856774741837907
	.quad	0x3fd0864a1e412e04              # double 0.2581963820891533
	.quad	0x3fe517e5a7edc367              # double 0.65916712568842406
	.quad	0x3fefa8c660bb0d89              # double 0.98935240643224731
	.quad	0x3fd6b72342ff1bb2              # double 0.35492784063938665
	.quad	0x3fddc392318b19aa              # double 0.46506171072214875
	.quad	0x3fac3fc365c20ef0              # double 0.055173975154529376
	.quad	0x3fbc2fcf8ff7e190              # double 0.1101045347676346
	.quad	0x3fbd6c9d4ca25fc0              # double 0.11493857499078697
	.quad	0x3fe6e7c1b3cc3c04              # double 0.71579060665851602
	.quad	0x3fdd6fcfbe5f6292              # double 0.45994943228792196
	.quad	0x3fe97e38f7557ae6              # double 0.79665802295116062
	.quad	0x3fbe631f88012e00              # double 0.11869999952721599
	.quad	0x3fd42e07bed04496              # double 0.31530946382651714
	.quad	0x3fd5062456105d0e              # double 0.32849987415961912
	.quad	0x3fadf3b74a1ba9d0              # double 0.05850003032340434
	.quad	0x3fdab4f29a0eb0d2              # double 0.41729416889826354
	.quad	0x3fd25c48c8548594              # double 0.28688258708469871
	.quad	0x3fbb4e2cd5979800              # double 0.10666160788204593
	.quad	0x3fe9de584e698c6c              # double 0.80839171709921009
	.quad	0x3fdbe99dd0755c50              # double 0.43613381726521983
	.quad	0x3fe47413e5f3a122              # double 0.6391696444743824
	.quad	0x3fd65de346b94612              # double 0.34948045641530812
	.quad	0x3fe3ef7dc3e3b0c1              # double 0.62298477420474552
	.quad	0x3fdb03ef2ff31b0a              # double 0.42211513216572938
	.quad	0x3fe7cbc8ba97c3e7              # double 0.74362598842537586
	.quad	0x3fbe70dd65ff0a40              # double 0.11890968074934793
	.quad	0x3fe90fdc8bf2bea0              # double 0.78318621953618006
	.quad	0x3fd0e4094bbf9454              # double 0.26391823193836683
	.quad	0x3fd2171e6298668c              # double 0.28266105297516542
	.quad	0x3fe1f390c8b8cf5e              # double 0.56098212436198103
	.quad	0x3fe96468c92ea64e              # double 0.79350699704554883
	.quad	0x3fd08d1e5b6e0566              # double 0.25861319473923172
	.quad	0x3fe27a98ea12df54              # double 0.5774654933693264
	.quad	0x3fd2c13bd985e97e              # double 0.29304405443658499
	.quad	0x3fd67a618f14052a              # double 0.35121954891663398
	.quad	0x3fe7d58aab21cde5              # double 0.74481709884861103
	.quad	0x3fe3f24757832c33              # double 0.62332503406776707
	.quad	0x3fdde01622853b9c              # double 0.46680215235840605
	.quad	0x3f9d9f7285682780              # double 0.02892855586291132
	.quad	0x3fdea3084f298ade              # double 0.47870071154299676
	.quad	0x3fda382ba4694c2a              # double 0.40967837386887374
	.quad	0x3fde9821c169f570              # double 0.4780353916938429
	.quad	0x3fd863f48112f2b8              # double 0.38110077481159577
	.quad	0x3fe13171293c0720              # double 0.53728540471658803
	.quad	0x3fcdda2f00732698              # double 0.23322093507731689
	.quad	0x3fe8b9e3755e7b5e              # double 0.77269146846434089
	.quad	0x3fed70a9449f57a3              # double 0.92000258829897452
	.quad	0x3fe54e6a56b54efa              # double 0.66582219062044534
	.quad	0x3fe7be9f64a1bd6b              # double 0.74201936392448198
	.quad	0x3fe067f75f83f8b5              # double 0.51269119887708448
	.quad	0x3fe181f8f429d4b9              # double 0.54711578071751099
	.quad	0x3fb22ee89ccb6c88              # double 0.071028269081056306
	.quad	0x3fe078784cda0bc0              # double 0.51470580110650843
	.quad	0x3fc1dfa79fc86d14              # double 0.13963790227794759
	.quad	0x3fdbfb52ed02bcfe              # double 0.43721459527564821
	.quad	0x3fc6fefce57d61c8              # double 0.17965661244922004
	.quad	0x3fcb0df4e9ed6ce4              # double 0.21136342451322954
	.quad	0x3feb94fbda15c933              # double 0.86193649859186505
	.quad	0x3f9e73c305838a40              # double 0.029738471232926722
	.quad	0x3fec1c2bf2dc5c61              # double 0.87843892511126509
	.quad	0x3fe37b73c5ffb9e9              # double 0.60881985351244083
	.quad	0x3fdf1cc5d95050ca              # double 0.48613115522426809
	.quad	0x3fbd8b731ba1cbc0              # double 0.11540908264741656
	.quad	0x3fe711c98f090758              # double 0.72092130600524751
	.quad	0x3f8504aeeebf9f80              # double 0.010262838994051782
	.quad	0x3fefd4942c5d8e86              # double 0.99469956078651545
	.quad	0x3f5ae2bdf4bb8000              # double 0.0016409735716749196
	.quad	0x3fe95904d91d8eda              # double 0.79211656957019305
	.quad	0x3fc899e372277f74              # double 0.19219630311908598
	.quad	0x3fd5345907266404              # double 0.33132005403746256
	.quad	0x3fe8b1494c7cffdd              # double 0.77164139689557099
	.quad	0x3fe0fca9ef0574c1              # double 0.53084274944162513
	.quad	0x3fd59bbea7dc0cba              # double 0.33763090508018545
	.quad	0x3fdbcedfa5d433a8              # double 0.43450156397085005
	.quad	0x3fef94ba908b3a2a              # double 0.9869053671953385
	.quad	0x3fe234516042e1df              # double 0.56888645936038162
	.quad	0x3fc8de9bc7d32c20              # double 0.19429347283434684
	.quad	0x3fe5f1a0726d61b1              # double 0.68574545239521545
	.quad	0x3f9e3a6a5e2d5880              # double 0.029519712446323343
	.quad	0x3fef4dd702a9eb51              # double 0.9782519390131289
	.quad	0x3fe9299e838029bb              # double 0.78633046802251927
	.quad	0x3fb6b0a78d946a28              # double 0.088633033814780604
	.quad	0x3fd6ba78162c2b8a              # double 0.35513116994177862
	.quad	0x3fb064ba22d2a0d0              # double 0.064036973477985315
	.quad	0x3fef6910d1f99c22              # double 0.98157540331601845
	.quad	0x3fe8e735a8f7f05b              # double 0.77822382928526268
	.quad	0x3feec7a37a72d20e              # double 0.9618699447224246
	.quad	0x3fd9b02caecbc0aa              # double 0.40137784070885607
	.quad	0x3fd6cee863fe63c8              # double 0.35637864842425104
	.quad	0x3fe266c3fa5bea66              # double 0.57504462145091106
	.quad	0x3fa3c792432a0020              # double 0.038631983469713527
	.quad	0x3fe44a4f6eb78f62              # double 0.63407107948703989
	.quad	0x3feb17eacd9953c7              # double 0.84666958004037773
	.quad	0x3fd244fb2396985a              # double 0.28546026683250647
	.quad	0x3fcd981d3be691d0              # double 0.23120465683781655
	.quad	0x3fc4be05c734a420              # double 0.16204902865254756
	.quad	0x3fee92443c687875              # double 0.95535480307058995
	.quad	0x3fc540b6ae2b23d0              # double 0.16603740219423324
	.quad	0x3feeb5de6700085c              # double 0.95970077626430905
	.quad	0x3fe7a52cf6ecea64              # double 0.73891304233195543
	.quad	0x3fd830e56b0acb78              # double 0.37798438504540099
	.quad	0x3fe589c3ef0d5c8a              # double 0.67306706132775784
	.quad	0x3fe9e84e45a24965              # double 0.80960763550164627
	.quad	0x3fc630f03cab6034              # double 0.17336848223090018
	.quad	0x3fe622e17823e1c1              # double 0.69175790276408844
	.quad	0x3fd48d96e8ccc5ec              # double 0.32114193662991286
	.quad	0x3fc0576cc2f311ac              # double 0.12766799468057621
	.quad	0x3febccb9a39833d8              # double 0.86874086334284595
	.quad	0x3fe5c06687442ed6              # double 0.67973638934332814
	.quad	0x3fdd0c55e2aec1c6              # double 0.45387789856888749
	.quad	0x3fb8695ebe747a38              # double 0.095357820031929275
	.quad	0x3f9aab98dafb4ac0              # double 0.026045215955330603
	.quad	0x3fde7fe753465858              # double 0.47655661709121011
	.quad	0x3feac494825dd9ea              # double 0.83649659597614101
	.quad	0x3fdc16fbeaf48fc6              # double 0.43890283532004692
	.quad	0x3fdf8032ca5e04ee              # double 0.49219960939815521
	.quad	0x3fdab631dbb65f84              # double 0.41737028557098932
	.quad	0x3fd42279f369a480              # double 0.31460427065628238
	.quad	0x3fc2d61abc1555cc              # double 0.14715894874340874
	.quad	0x3fc7f673acdfb740              # double 0.18720861378772646
	.quad	0x3feba5266801c297              # double 0.86390991510241377
	.quad	0x3fed4987a042a9b3              # double 0.91522580433711764
	.quad	0x3fec84fd037e4aa9              # double 0.89123392755785347
	.quad	0x3fd3199d7967259e              # double 0.29843842368844686
	.quad	0x3fda2dd7f35c08f4              # double 0.40904806867196375
	.quad	0x3fd6d40ee9897136              # double 0.35669300848327923
	.quad	0x3fef48194796e03d              # double 0.97755111677452755
	.quad	0x3fe868c4d98cc037              # double 0.76278917780110234
	.quad	0x3fe4df3d23424732              # double 0.65225083242896731
	.quad	0x3fedfe9859cd75a8              # double 0.93732850589338045
	.quad	0x3fec6c6882044d9a              # double 0.88823342698963192
	.quad	0x3fdeba8b4166530e              # double 0.48013574015321658
	.quad	0x3f90f650e3e7fea0              # double 0.016564620886127757
	.quad	0x3fdcee1eff1e3348              # double 0.45203375734199769
	.quad	0x3fdea999452d85be              # double 0.47910148387571982
	.quad	0x3fe6e64c5ecb983a              # double 0.7156125880690134
	.quad	0x3fc5f4bc64603e64              # double 0.17153124715013057
	.quad	0x3fb25ce4316ce258              # double 0.07172990996048989
	.quad	0x3fda3bb12853fc8c              # double 0.40989331186569511
	.quad	0x3fe27339e77f3866              # double 0.57656569685219661
	.quad	0x3fe4b017fbbbeb2d              # double 0.6464958111458593
	.quad	0x3fd6aea3d22b68ae              # double 0.3544091751515549
	.quad	0x3fd808434f6f5378              # double 0.37550432927428501
	.quad	0x3fd48e1b96e908dc              # double 0.3211735700352969
	.quad	0x3fdae243638c2c52              # double 0.42006001206818155
	.quad	0x3fd4b8eba820d730              # double 0.32378665369775472
	.quad	0x3fb6658f40f0d010              # double 0.087487176279694489
	.quad	0x3febd170374d4e35              # double 0.86931620408217347
	.quad	0x3fe4f3726f8b8a85              # double 0.65471765314244179
	.quad	0x3fda89abf9be3b54              # double 0.41465281857465652
	.quad	0x3fe4dc8128c5b266              # double 0.65191705668764821
	.quad	0x3fe977adb9d8cda2              # double 0.79585920618267303
	.quad	0x3feece2df1146650              # double 0.96266839109302715
	.quad	0x3fe847317cc11ad5              # double 0.75869058958127289
	.quad	0x3fec597d2e09cb89              # double 0.88592394821022069
	.quad	0x3feb5c373ab8f4f7              # double 0.85500680417285835
	.quad	0x3fdda7f5cc2e8e3a              # double 0.46337647380480329
	.quad	0x3fd9a439becfbd80              # double 0.40064853319105254
	.quad	0x3feba9482b143fe6              # double 0.8644142953289673
	.quad	0x3fe8799dbf8ad3b1              # double 0.76484572802166018
	.quad	0x3fe68cab584d3850              # double 0.7046715473786751
	.quad	0x3fe57985925e52c7              # double 0.67108419978702549
	.quad	0x3fd9c124a3b5c176              # double 0.40241352069190073
	.quad	0x3fe1865808ff6a16              # double 0.5476494003044674
	.quad	0x3fe9241933cd06cf              # double 0.78565654866562251
	.quad	0x3fe74018bb1faa13              # double 0.72657429263682827
	.quad	0x3fe29f2d631af9a8              # double 0.58193082195775947
	.quad	0x3fe5645a44f39263              # double 0.66850007502632669
	.quad	0x3fd90208588a4afe              # double 0.39074906012062616
	.quad	0x3fde900878dffc24              # double 0.47754108242219417
	.quad	0x3fece3a6b3aa6acd              # double 0.90278945055919169
	.quad	0x3fd20a6af89f9bf6              # double 0.28188585548053824
	.quad	0x3feca8ab7e9cb683              # double 0.89558958748757822
	.quad	0x3f91ca52c668fd40              # double 0.0173733647918628
	.quad	0x3fef7b8a29444c4b              # double 0.98383052883071664
	.quad	0x3fd14956051cb096              # double 0.27010107516503845
	.quad	0x3fd7d7648d110b14              # double 0.37252153183014625
	.quad	0x3fd7c75d9520e5e4              # double 0.37154330790835233
	.quad	0x3fc62048bb6b442c              # double 0.17286023284262464
	.quad	0x3fe5274c09749968              # double 0.66104699942370093
	.quad	0x3fcea9e4327e1358              # double 0.23955967393353705
	.quad	0x3fe7f268d5fdfd9e              # double 0.74834100528089542
	.quad	0x3fe84062cc4445c4              # double 0.75785961051786232
	.quad	0x3fdeb0e645a745dc              # double 0.47954708864298623
	.quad	0x3fc7a3662d717a50              # double 0.18467404574308199
	.quad	0x3fe9dc24ca5f81ba              # double 0.80812301183691848
	.quad	0x3fe4eaba0f877539              # double 0.65365317376168897
	.quad	0x3fe2a7bd6ea4baf1              # double 0.58297607049993705
	.quad	0x3fea7d6e1a799a86              # double 0.82781129046345892
	.quad	0x3fd56d74d1728224              # double 0.33480568364942287
	.quad	0x3fed6eb7f179e249              # double 0.91976544535925442
	.quad	0x3fd5c14d686f090a              # double 0.33992324064833268
	.quad	0x3fdf17fcc723262c              # double 0.48583907553674766
	.quad	0x3fd554c181f0b54a              # double 0.33329808892706991
	.quad	0x3fda78236b14adf6              # double 0.41358266312701575
	.quad	0x3fecf45bc3015a90              # double 0.90482891165705048
	.quad	0x3fe46ad04984916e              # double 0.63803877219156191
	.quad	0x3fc1b950d6fa3050              # double 0.13846788880289518
	.quad	0x3fe6f1aa39bd5d49              # double 0.71700011517797535
	.quad	0x3fd5a6371004c92a              # double 0.33826996387792241
	.quad	0x3feffce72f78d45f              # double 0.99962195655701779
	.quad	0x3fe3b56e4bdaba43              # double 0.61589731993974117
	.quad	0x3fe8ac6ba5053e69              # double 0.77104742270053095
	.quad	0x3fa9772f4ed905a0              # double 0.049737432837456241
	.quad	0x3fe2cfb8998b4e6b              # double 0.58785657872290409
	.quad	0x3fe024935b4c49b8              # double 0.50446479636803243
	.quad	0x3fb0af67c7c6aab0              # double 0.065176473878333807
	.quad	0x3fe329c5ebc51588              # double 0.59884925888825169
	.quad	0x3f73cd846bceba00              # double 0.0048346684169886522
	.quad	0x3fe78f12ae58c18d              # double 0.73621496250238894
	.quad	0x3fe44379319b6233              # double 0.63323650063381931
	.quad	0x3fa862a263c6bc80              # double 0.047627520255780986
	.quad	0x3fc6a50b8f455ee0              # double 0.17691177840855854
	.quad	0x3fe0b675f8c1e491              # double 0.52227305016926284
	.quad	0x3fd7cfb14fdd6cce              # double 0.3720515518122739
	.quad	0x3fc03ce039e1cf6c              # double 0.12685778452179919
	.quad	0x3fec3e238e4e3717              # double 0.88258531374023874
	.quad	0x3fec3242ae72b353              # double 0.88113531181225324
	.quad	0x3fd6458571f2259a              # double 0.34799324157264666
	.quad	0x3fd4e5b9fe90fcf6              # double 0.32652139530178148
	.quad	0x3fef4038c7aa3208              # double 0.97658957478557884
	.quad	0x3fe616837a80745e              # double 0.69024824072006274
	.quad	0x3feae9da7dd5878a              # double 0.84104656769726316
	.quad	0x3fefc9cc9b71d010              # double 0.99338369713086827
	.quad	0x3fbd973e4f427b10              # double 0.11558904109049828
	.quad	0x3fee676f01fca1a9              # double 0.95012617481284167
	.quad	0x3fec8763be6487fa              # double 0.89152705370020091
	.quad	0x3f9b843a26ea2fe0              # double 0.026871594071550819
	.quad	0x3fcdf8428ff8fc18              # double 0.23413879423057504
	.quad	0x3fe20f418d86f1ef              # double 0.56436231271760373
	.quad	0x3fe58f8527c27d45              # double 0.67376954808779799
	.quad	0x3fea43abba37ff36              # double 0.82076059695098169
	.quad	0x3fd6175b1eaf29d0              # double 0.34517553326136596
	.quad	0x3feb067a9d47b973              # double 0.84454088896545298
	.quad	0x3fe80c8c8468f91a              # double 0.75153184758508762
	.quad	0x3fcbf4f5dc4c4160              # double 0.21841309792263086
	.quad	0x3fb6d881d652e978              # double 0.08924113733784178
	.quad	0x3fd5787e29ca886e              # double 0.33547929841200286
	.quad	0x3fb194e414580f58              # double 0.068678145376961708
	.quad	0x3fe818ef1b889c32              # double 0.75304370286619915
	.quad	0x3feed432c98096f3              # double 0.96340312343519796
	.quad	0x3fd9c8630ed10c5e              # double 0.40285564848836042
	.quad	0x3fdf21102a367c16              # double 0.48639301416727798
	.quad	0x3fed4229ba3c01b6              # double 0.91432653783709017
	.quad	0x3fe970530e6e2e18              # double 0.79496147936282835
	.quad	0x3fef2449aa327065              # double 0.97317965737921652
	.quad	0x3fe1f61b81544bcd              # double 0.56129241237283056
	.quad	0x3fbef38811cc12b0              # double 0.12090349611760121
	.quad	0x3fee079b90341041              # double 0.93842867054673473
	.quad	0x3fdbaeaa6ccf918a              # double 0.43253574968391517
	.quad	0x3fbef35725673748              # double 0.12090058005489113
	.quad	0x3fcb75c3c3b46104              # double 0.21453139358414586
	.quad	0x3fc562753b3144c0              # double 0.16706719770676237
	.quad	0x3fe76f07ebc7525f              # double 0.73230358171947418
	.quad	0x3fd4510cde433720              # double 0.31744691567733874
	.quad	0x3fda5ef1ba7a2bc0              # double 0.41204493723551749
	.quad	0x3fa42fa00391aaf0              # double 0.039425850330038759
	.quad	0x3fe2e6204662f6dc              # double 0.59059156176928296
	.quad	0x3fe7076fdcae1801              # double 0.71965783216069223
	.quad	0x3fbbc7c6512ed808              # double 0.10851706964498942
	.quad	0x3fe9a78110fa2e24              # double 0.80169728580353138
	.quad	0x3fd61fc7891cfa3a              # double 0.34568966283760327
	.quad	0x3fe7e2182e76d3e2              # double 0.74634942126305881
	.quad	0x3f95f5aaacec1a40              # double 0.021444956592882258
	.quad	0x3fe807f0626e6e0b              # double 0.75096911644817632
	.quad	0x3feec640cf62a8d1              # double 0.96170082573851278
	.quad	0x3f7612abf7e67900              # double 0.0053889005197602646
	.quad	0x3feaf26ca884f462              # double 0.84209282792984319
	.quad	0x3fd8bfa0bc30cba8              # double 0.38669603708256739
	.quad	0x3fd3aaf83dbbe878              # double 0.30731016186439986
	.quad	0x3fe633809ad52ced              # double 0.69378690949215882
	.quad	0x3fe9d6eb06e37198              # double 0.80748511643791954
	.quad	0x3fd76fc2b7f0ba8c              # double 0.36619632685589276
	.quad	0x3fab7c78e3e82ba0              # double 0.053684022732418457
	.quad	0x3fba48d1314692b8              # double 0.10267360165614547
	.quad	0x3fd6d779a5a18e1e              # double 0.3569015614977803
	.quad	0x3fa7540aef7082b0              # double 0.045563070038274645
	.quad	0x3fed6f1fc2b38ccd              # double 0.91981494929896146
	.quad	0x3fd4f3a849f198b0              # double 0.32737166615550972
	.quad	0x3fd751c233c309b6              # double 0.36436514906759088
	.quad	0x3fc1d122082f3248              # double 0.1391947307551098
	.quad	0x3f9611e22dec0840              # double 0.021552595188957691
	.quad	0x3fec220d02fc3c63              # double 0.87915659506860455
	.quad	0x3fd68285d8bebf84              # double 0.3517164818431342
	.quad	0x3fd76667b7e99236              # double 0.36562531433290546
	.quad	0x3fbbe25414866550              # double 0.10892224789713123
	.quad	0x3fd9150702b86ae0              # double 0.39190840974485575
	.quad	0x3fe82bb91fd0d5b5              # double 0.75533729757324031
	.quad	0x3fe3a52b1b6ea710              # double 0.6139121566568253
	.quad	0x3fd5d4c8333e00ba              # double 0.34111218456383663
	.quad	0x3fe909a56d383bdc              # double 0.78242751438107971
	.quad	0x3fe3717d3f2a984c              # double 0.60760366761383855
	.quad	0x3fe6890b177d0f24              # double 0.70422892177200369
	.quad	0x3fe90eca93e3a70e              # double 0.78305558094618433
	.quad	0x3fe228b9568e9fa6              # double 0.56747118859947387
	.quad	0x3feb782b270227ba              # double 0.85841901415664457
	.quad	0x3fda71ec7e563fda              # double 0.41320335710133593
	.quad	0x3fef86c2d164d66d              # double 0.9852003183102177
	.quad	0x3fbc6333e2eda308              # double 0.11088871278992596
	.quad	0x3fd0a32b5dec8598              # double 0.25995906994111229
	.quad	0x3fe5dc2257f8f5fb              # double 0.68312184507493556
	.quad	0x3fe8ad4c72b815ee              # double 0.77115461736746993
	.quad	0x3fe0cd3b7150ee39              # double 0.52505275852258315
	.quad	0x3fc4aaf6c5aa8b2c              # double 0.16146740581197017
	.quad	0x3fb7c2af09eae808              # double 0.092814388200082587
	.quad	0x3fd3850810ac10a8              # double 0.30499459865701306
	.quad	0x3feb808770c6a9a2              # double 0.859439583078075
	.quad	0x3fdcff195269c72a              # double 0.45307000206149672
	.quad	0x3fce116c315d8614              # double 0.23490669641891826
	.quad	0x3fde4ca24bb53f28              # double 0.47342736619337922
	.quad	0x3fd67eac5b8d92da              # double 0.35148152294850166
	.quad	0x3fd7e1cdfc37b7e2              # double 0.37315702086095659
	.quad	0x3fefdacec38c08dc              # double 0.9954599208142798
	.quad	0x3fea20007f76389d              # double 0.816406487416106
	.quad	0x3fef3c5ed7bd3269              # double 0.97611944328816691
	.quad	0x3fe327b56b28f4d7              # double 0.5985972493141628
	.quad	0x3fecee0c6a410530              # double 0.90405865433436894
	.quad	0x3fe92f3e8b8c8fb1              # double 0.78701712852170236
	.quad	0x3fe961738185dc69              # double 0.79314589784088441
	.quad	0x3fe57c356226e502              # double 0.67141217394160457
	.quad	0x3fdd0068333df9aa              # double 0.45314984325514251
	.quad	0x3fe1134ca7e0ae65              # double 0.53360588825803446
	.quad	0x3fea90e7dc793313              # double 0.83018868504732024
	.quad	0x3fe29545f9a2f8ff              # double 0.5807218433108402
	.quad	0x3fdddf8ca958807e              # double 0.46676937616030745
	.quad	0x3fde0e2891624ff6              # double 0.46961416433009562
	.quad	0x3fea789daeb059e5              # double 0.82722362631721735
	.quad	0x3f9154873b2a6f80              # double 0.01692401217097439
	.quad	0x3fe6b19a783f78ba              # double 0.70918010221409777
	.quad	0x3fe99441e13b3f2b              # double 0.79934782019151862
	.quad	0x3fee4ae15480872f              # double 0.94664064888295296
	.quad	0x3fc5b72c7bd8322c              # double 0.16965251967521178
	.quad	0x3fe99a4693f41687              # double 0.80008248231088508
	.quad	0x3fdb851fda717af4              # double 0.43000027019836229
	.quad	0x3fe1ffb12d17f122              # double 0.5624624138577341
	.quad	0x3fdfc719dc5ddf0a              # double 0.49652716179069556
	.quad	0x3fd206d56ab7567e              # double 0.28166709348202079
	.quad	0x3fee1feec2cd352c              # double 0.94139802977739384
	.quad	0x3febecf06b924cdf              # double 0.87267323503547434
	.quad	0x3fce1424602e4a04              # double 0.23498968788460683
	.quad	0x3fe91a7b98069797              # double 0.78448276226548586
	.quad	0x3fc8523fb2b1ece8              # double 0.19001003480284528
	.quad	0x3fe9ff9507aa26be              # double 0.81244899270060222
	.quad	0x3f60f53d9563d800              # double 0.0020700648120692833
	.quad	0x3fd4ecdd88fce3ca              # double 0.32695711496085933
	.quad	0x3fe368fea7b262e0              # double 0.60656674149785417
	.quad	0x3fecefbf18ea0476              # double 0.90426592699090125
	.quad	0x3fc2e722a9db4fc8              # double 0.14767869275840284
	.quad	0x3fe5f558013aedfd              # double 0.6861991905238366
	.quad	0x3fe0447e00fb50e1              # double 0.50836086456049767
	.quad	0x3f780042d426f900              # double 0.0058596239563810659
	.quad	0x3fd03d69a165acc4              # double 0.25374832879488118
	.quad	0x3fe5efb5767ad189              # double 0.68551133289888455
	.quad	0x3fdb67f63b0054d0              # double 0.42822032701344614
	.quad	0x3fe0d69dde24483b              # double 0.52619832408004841
	.quad	0x3fea35c23fa09954              # double 0.81906235148634687
	.quad	0x3fdac69e5250e702              # double 0.41837270773577029
	.quad	0x3f9ee30cbe9c0ea0              # double 0.030163001188170058
	.quad	0x3fc2209c9a68dea8              # double 0.14162023105176513
	.quad	0x3fcbd2423d96f96c              # double 0.21735408789931954
	.quad	0x3fe4e874646779b2              # double 0.65337581262774891
	.quad	0x3fe70922cfe29c82              # double 0.71986523249223944
	.quad	0x3fdce69f7fc27ed6              # double 0.45157611347711446
	.quad	0x3fda68c1d63cdd88              # double 0.41264387056022445
	.quad	0x3fd89e51f3aa7caa              # double 0.38466309352402084
	.quad	0x3fb3e359ad9f3240              # double 0.077687840355062043
	.quad	0x3fe705a2a6ce3bb0              # double 0.71943790988176737
	.quad	0x3fc37c7d9a4331c8              # double 0.1522366526827581
	.quad	0x3fe61b7b44878d66              # double 0.6908546770541022
	.quad	0x3fe1313853d2976e              # double 0.53725830432516175
	.quad	0x3fe061a3649ebc05              # double 0.51191873218874717
	.quad	0x3fef7aef9f2e696a              # double 0.98375683870407937
	.quad	0x3fed5a2c5a0ada32              # double 0.91725747667698543
	.quad	0x3fbe1c49adf5cef0              # double 0.11761913773608135
	.quad	0x3fbf0534b2948100              # double 0.12117318496575891
	.quad	0x3fbdb793b594c470              # double 0.11608241255886909
	.quad	0x3febf099f385f0b5              # double 0.87312028468252001
	.quad	0x3fe8ba3f3d3721f7              # double 0.77273523288846391
	.quad	0x3fe4a6e8e23518ab              # double 0.64537471943983371
	.quad	0x3fd2abefceebf6a6              # double 0.29174418647003575
	.quad	0x3fd9f5100f6b8a58              # double 0.40558244233958396
	.quad	0x3fe8fbd81109f88a              # double 0.78074267700118694
	.quad	0x3fd047ef73776d5e              # double 0.25439058567072503
	.quad	0x3fe070755dd06408              # double 0.51372783968975089
	.quad	0x3fa0aeb8dd1d1820              # double 0.032583024016773487
	.quad	0x3f9df0163812b660              # double 0.029236170933179983
	.quad	0x3f743fe3b8a5a580              # double 0.0049437423097996591
	.quad	0x3fc1c0f0c70a42e4              # double 0.13870057791475354
	.quad	0x3fcbe22ae710ab14              # double 0.21783958704448791
	.quad	0x3fe28d0368795717              # double 0.57971353917193624
	.quad	0x3fca06370281d5d0              # double 0.20331466314716673
	.quad	0x3fe5682b15f027e0              # double 0.66896585736071401
	.quad	0x3fdfd0307ee9fb8e              # double 0.49708187478966515
	.quad	0x3fd4beea2adcd4ee              # double 0.32415250955393915
	.quad	0x3fe1f4ee7c4e64bc              # double 0.56114887503203859
	.quad	0x3fcb6fe7e7318f48              # double 0.21435259617566715
	.quad	0x3fd3498ded5e0e06              # double 0.3013644044915228
	.quad	0x3fea508f0a603376              # double 0.82233383204002908
	.quad	0x3fea1c7cd2a99a65              # double 0.81597748894712352
	.quad	0x3fe6536a584bb9fc              # double 0.69768254514002548
	.quad	0x3fe06892eb8062e7              # double 0.51276536938084127
	.quad	0x3fbc2cfdd95ca1b0              # double 0.11006151730237579
	.quad	0x3fed72b121055202              # double 0.92025047730800247
	.quad	0x3fde0d9b10780254              # double 0.46958042724876248
	.quad	0x3f9f75e343a36a80              # double 0.03072314358073891
	.quad	0x3fd6cef207a5c2d0              # double 0.35638094660593556
	.quad	0x3fe9004f03c6d0ba              # double 0.78128767717000547
	.quad	0x3fec6fa06821d48c              # double 0.88862629259405556
	.quad	0x3fed928e7044c9c4              # double 0.92414018561822119
	.quad	0x3fcd7f334f37d358              # double 0.23044434898442989
	.quad	0x3fe828d447bf023a              # double 0.75498403561511584
	.quad	0x3fe6c51466c50dbe              # double 0.71155757972922351
	.quad	0x3fe8983dee0dcafb              # double 0.76858421797655241
	.quad	0x3fe0b5e00dcfa5f0              # double 0.52220156381116389
	.quad	0x3fdd3909725538c2              # double 0.4566062561542702
	.quad	0x3fe77e464c77176f              # double 0.73416438040361054
	.quad	0x3fb00f96a1886bc0              # double 0.062737860142461521
	.quad	0x3fd90ea505226d1e              # double 0.39151883603490656
	.quad	0x3fdea3a1002dd9d4              # double 0.47873711602678992
	.quad	0x3fcf827027bfff50              # double 0.24616815510671097
	.quad	0x3fec9df8ba373f7a              # double 0.89428364153171391
	.quad	0x3feec60d3272ae85              # double 0.96167621472473341
	.quad	0x3fda0b0575518bd6              # double 0.40692268807305021
	.quad	0x3fe5fad3ed4ec07c              # double 0.68686863278527666
	.quad	0x3fee4172f91a50e0              # double 0.94548939373865081
	.quad	0x3feb4b8cbeecdbcc              # double 0.85297238626559979
	.quad	0x3fccb4c3ad496948              # double 0.2242664905668994
	.quad	0x3fdce0ffb462b12e              # double 0.45123283973477413
	.quad	0x3fe0c318f6baafde              # double 0.52381561459833015
	.quad	0x3fb6d032a8ee5030              # double 0.089114347689531525
	.quad	0x3fedfa1d9ef85d9e              # double 0.93678170250761972
	.quad	0x3feadb19db7853a9              # double 0.83924572816123544
	.quad	0x3fe003618cebeba6              # double 0.50041272662871417
	.quad	0x3fcf444acc860d7c              # double 0.24427161203866976
	.quad	0x3f95bfe87fa6bb80              # double 0.021239884177414847
	.quad	0x3fb6901771ad1ac0              # double 0.088136162999130185
	.quad	0x3fba46a756d85328              # double 0.10264058943023413
	.quad	0x3fed93e5f3af56db              # double 0.92430398554526094
	.quad	0x3fc421f480a4a940              # double 0.15728622704893702
	.quad	0x3fef3b908642c4d3              # double 0.97602106306853853
	.quad	0x3fdc77dad8dee098              # double 0.44481536082049322
	.quad	0x3feb3bef51560d07              # double 0.85106626401867025
	.quad	0x3fd17be1cb25050a              # double 0.27318615759220732
	.quad	0x3fe9e29871abad78              # double 0.80891058160106777
	.quad	0x3fe51bdffc55a351              # double 0.65965270313345503
	.quad	0x3fa8075f871a9530              # double 0.046931252710502469
	.quad	0x3fd1d0450dcc0f8a              # double 0.27833677623151998
	.quad	0x3fe1392b654d34ae              # double 0.53822870049920879
	.quad	0x3fe8a4b872b0d83f              # double 0.77010748291537101
	.quad	0x3fd5a659d9559134              # double 0.33827825759933039
	.quad	0x3fd669e754e9a76c              # double 0.350213845179147
	.quad	0x3fd24b1da93b0856              # double 0.28583470846581827
	.quad	0x3fd08ad6e0b16c30              # double 0.25847408240014413
	.quad	0x3fd81ac4ed1a278c              # double 0.37663386492260353
	.quad	0x3fdfe43829228c34              # double 0.49830440537533893
	.quad	0x3fdacce376b9e3cc              # double 0.41875540346478313
	.quad	0x3feaa44d583a7a1f              # double 0.8325564120494312
	.quad	0x3fe4ad41145f3ade              # double 0.64614919642357527
	.quad	0x3faaf322ce388190              # double 0.052636230157307229
	.quad	0x3fc6d90ef97a4ed8              # double 0.17849909955531618
	.quad	0x3fe4e7e47c26daf5              # double 0.65330719231027834
	.quad	0x3fc3e98eec32b02c              # double 0.15556513341050626
	.quad	0x3fd137afab5987c0              # double 0.26902381642696227
	.quad	0x3fe0dbe39f09d924              # double 0.52684193670464596
	.quad	0x3febe627eced43b2              # double 0.87184520983475111
	.quad	0x3fe73ec93d967413              # double 0.7264143183598456
	.quad	0x3fde71bcdbfc6a1a              # double 0.47569200022704339
	.quad	0x3fe0327988e9c016              # double 0.50616146794164041
	.quad	0x3fcd8c00d90cc0e4              # double 0.23083506200919779
	.quad	0x3fc05732ff5bcb48              # double 0.12766110867195324
	.quad	0x3fe4eba07be3ac9d              # double 0.6537630481447142
	.quad	0x3fd18f994460dec2              # double 0.27438956906869916
	.quad	0x3fd9a6f8f02ee23c              # double 0.4008161874330971
	.quad	0x3fea18bbc4fbded2              # double 0.81551922295963153
	.quad	0x3f9b3cbd84520fa0              # double 0.026598893357472897
	.quad	0x3fe7158d22cd3516              # double 0.72138077542482182
	.quad	0x3fe6d9a8dd0a1035              # double 0.71406977817287631
	.quad	0x3fec622eea537497              # double 0.88698526160046043
	.quad	0x3feefe7f35fdebdb              # double 0.96856651826180539
	.quad	0x3fc02825a4d320d0              # double 0.12622519062120441
	.quad	0x3fdca7f33c928b04              # double 0.44775086322094659
	.quad	0x3fe91fc1d9df02a2              # double 0.78512661507564396
	.quad	0x3fb0ba9503b948d8              # double 0.065347016724703777
	.quad	0x3fe630cfefbe1e65              # double 0.69345852684723452
	.quad	0x3fd402ac5ed19296              # double 0.31266316661484816
	.quad	0x3fe0c4c3395f1b0e              # double 0.52401887135860803
	.quad	0x3fd01432a6160d7e              # double 0.25123277873372973
	.quad	0x3fd3df6ebf39a22a              # double 0.31051224397973221
	.quad	0x3fe54faf6a71250f              # double 0.66597719945380784
	.quad	0x3fdc5bbab17a4a98              # double 0.44309871036345205
	.quad	0x3fa052abfe004190              # double 0.031880736118299002
	.quad	0x3fc02be2267b1094              # double 0.12633921507779589
	.quad	0x3fe6264afd8f81d6              # double 0.69217443011808188
	.quad	0x3febf3311e44f7d8              # double 0.87343650733941569
	.quad	0x3fedcccb8b9e8259              # double 0.93124940175409698
	.quad	0x3fe3cacf4991e6cb              # double 0.61850704545141733
	.quad	0x3fd99b207fa00daa              # double 0.40009319747351901
	.quad	0x3fb4b26623850308              # double 0.080847152396938182
	.quad	0x3fd364fd23127934              # double 0.30303886818900883
	.quad	0x3fe3b2bc304ac616              # double 0.61556825096176015
	.quad	0x3fe8d2975179a853              # double 0.77570691979532069
	.quad	0x3fe74230c8ec3b92              # double 0.72682990305644268
	.quad	0x3fe64cf7591c914c              # double 0.69689528851135085
	.quad	0x3fe03e0bdaf0692c              # double 0.50757401238960176
	.quad	0x3fef5efde7f1d6c6              # double 0.98034568120666488
	.quad	0x3fe670d09c708c4f              # double 0.70127134852044459
	.quad	0x3fe543b4f50bee1a              # double 0.66451499806084091
	.quad	0x3fe5201940bc37ff              # double 0.66016829150771617
	.quad	0x3fa2feb91a418900              # double 0.03709963269717953
	.quad	0x3febceed903f9ad5              # double 0.86900976346518155
	.quad	0x3fd5c6f8bf7a2cf6              # double 0.34026926707220129
	.quad	0x3fde910aeb672372              # double 0.47760270107806158
	.quad	0x3f91e0fb27cbc740              # double 0.017459797195392257
	.quad	0x3fe698b09f6eb77f              # double 0.70613890780599309
	.quad	0x3fd514555e6de030              # double 0.32936605664827123
	.quad	0x3fee5a5d54f90730              # double 0.94853083225482315
	.quad	0x3fed300add9ed85b              # double 0.91211455617191051
	.quad	0x3fdad9d29cb58228              # double 0.41954484275450676
	.quad	0x3fd3c699bb28fc10              # double 0.30899661328652517
	.quad	0x3f9823662ddd8ac0              # double 0.023572536992456206
	.quad	0x3febe1889b52b6fc              # double 0.871280959477843
	.quad	0x3fd245423fd519b4              # double 0.28547722085604765
	.quad	0x3fb96a4dcd765ae8              # double 0.099278319036197993
	.quad	0x3fd6194ab25144fa              # double 0.3452936879521783
	.quad	0x3fddb1cb00dd44b4              # double 0.46397662243277726
	.quad	0x3fcfbe6489a087d4              # double 0.24799782486030486
	.quad	0x3fe5285b6c7eb37f              # double 0.66117640676894485
	.quad	0x3fcc0c55ea68a570              # double 0.21912645288220345
	.quad	0x3fd1759580e134c2              # double 0.27280175767812065
	.quad	0x3feeb9583b359383              # double 0.96012507976830396
	.quad	0x3feaadc56cd036f4              # double 0.83371230366330317
	.quad	0x3fdc8de3a44e0340              # double 0.44616023106941682
	.quad	0x3fc7d322f153bacc              # double 0.18613087447689336
	.quad	0x3fea39e48df59933              # double 0.81956699110450015
	.quad	0x3feffcd2976d2faf              # double 0.99961213660707481
	.quad	0x3fee48e6f4daf81c              # double 0.94639919112501358
	.quad	0x3fdf51962ae7d88c              # double 0.48935465040211379
	.quad	0x3fe8232981b8c73f              # double 0.75429225288664969
	.quad	0x3fcc4605ead6ab30              # double 0.22088693587041908
	.quad	0x3fe1bdfb33c57571              # double 0.55444107162081313
	.quad	0x3fdf2ede5e97b150              # double 0.48723563420823712
	.quad	0x3fd5bc58d603f7fe              # double 0.33962078952743002
	.quad	0x3fbca5ec715b1aa8              # double 0.11190679328420094
	.quad	0x3fed1b171b0ba11a              # double 0.90955691606817202
	.quad	0x3fe28c08f4f16475              # double 0.57959411468904298
	.quad	0x3fec43989a6bbbf4              # double 0.88325147781676927
	.quad	0x3fd95d779ed6bcf6              # double 0.39632978927234264
	.quad	0x3fe263767aaae16a              # double 0.57464145620819562
	.quad	0x3fe21a715dd3c561              # double 0.56572788549071273
	.quad	0x3fdd3d412005e64e              # double 0.45686367156267671
	.quad	0x3fed34f35b500e60              # double 0.91271369776263711
	.quad	0x3fedd0ba8294259e              # double 0.93172955993320605
	.quad	0x3fe56a0fce272bfa              # double 0.66919698967228602
	.quad	0x3fd8d516d8aba660              # double 0.38800593528012506
	.quad	0x3fef318dea9815f9              # double 0.97479911631734161
	.quad	0x3fc943d9a007e138              # double 0.19738312067034669
	.quad	0x3feff50947c75910              # double 0.9986616517951763
	.quad	0x3fe2e796a23503d7              # double 0.59077006989547953
	.quad	0x3fe31bce216cff00              # double 0.59714418915243073
	.quad	0x3fe755be71c43da4              # double 0.72921678752930008
	.quad	0x3fc144338cdb2e70              # double 0.13489384057753595
	.quad	0x3feadd729785dacb              # double 0.83953218073187352
	.quad	0x3fd71806deea3c4c              # double 0.36084148186723009
	.quad	0x3fe98ebd95671370              # double 0.79867438488200371
	.quad	0x3fd0b2bfb39d68ae              # double 0.26090996304049952
	.quad	0x3feef984dca44b2e              # double 0.96795886129470943
	.quad	0x3fe6d7fd8bee3c8b              # double 0.71386601762959978
	.quad	0x3fc8ec1e5790b080              # double 0.1947057654919071
	.quad	0x3fa424733a8025c0              # double 0.039340592280562969
	.quad	0x3fd13148300e1f5a              # double 0.26863293354880613
	.quad	0x3fcb90a82f805d38              # double 0.21535208053021804
	.quad	0x3fe4ebe75d6267b5              # double 0.65379684676303518
	.quad	0x3fc897631ad8541c              # double 0.19211996851723334
	.quad	0x3febc0d9b32dfe5c              # double 0.86729130741145921
	.quad	0x3fd478526082bfec              # double 0.31984385895611811
	.quad	0x3fe5d6e60bdb9ffe              # double 0.68248274150846533
	.quad	0x3fe27a7c04d7fe93              # double 0.57745171495476411
	.quad	0x3fe4b5c99b98b520              # double 0.6471908606523904
	.quad	0x3fc2ddd122948384              # double 0.14739431560976979
	.quad	0x3feaf40928ae553b              # double 0.84228952355866882
	.quad	0x3feffe999840cd10              # double 0.99982909905375728
	.quad	0x3fbe755cf77ca398              # double 0.11897831957015936
	.quad	0x3fec8e6807a14a1c              # double 0.89238358965150466
	.quad	0x3fe518907ce8e70d              # double 0.65924858471336878
	.quad	0x3fd8f91ab959f828              # double 0.39020412541128957
	.quad	0x3fd8ae35233b88a6              # double 0.38563278618506514
	.quad	0x3fc0f5209c284e74              # double 0.13248069405436846
	.quad	0x3fd9a8181187db06              # double 0.40088464462262186
	.quad	0x3fe8e6d5f8b77fae              # double 0.77817820146082339
	.quad	0x3fef9779ecf7d929              # double 0.98724075587123139
	.quad	0x3fd5a9452c8cb282              # double 0.33845643377825507
	.quad	0x3fe5d8f4eaaa17d6              # double 0.68273397286315674
	.quad	0x3fdaa694342de91e              # double 0.41641717048300275
	.quad	0x3fdfe28f92c83ff0              # double 0.49820317587091179
	.quad	0x3fbf9c60dbe2eae0              # double 0.12347989433593964
	.quad	0x3feb38602fcebfc2              # double 0.85063180291580687
	.quad	0x3fee677b208f493e              # double 0.95013195380514737
	.quad	0x3feed7b4f345d3dd              # double 0.96383140100681041
	.quad	0x3fec6a2ebff26bcd              # double 0.88796174516334647
	.quad	0x3fe1c8f79b70831b              # double 0.5557821308067078
	.quad	0x3fe230d563862a7c              # double 0.56846112669275284
	.quad	0x3fd53ed8eda28d42              # double 0.33196089941539608
	.quad	0x3fcacf0d9338a8c8              # double 0.20944375694791106
	.quad	0x3fa2e1e51a9a0680              # double 0.036879691598199038
	.quad	0x3f5cb5faee264200              # double 0.001752371834843669
	.quad	0x3fbe105402888ca0              # double 0.1174366480050133
	.quad	0x3fe9585ddce3328e              # double 0.79203694479072495
	.quad	0x3fe1f618e8362414              # double 0.56129117349439861
	.quad	0x3fde160304f7d05c              # double 0.47009349332006933
	.quad	0x3fb15af84594a630              # double 0.067794339168039341
	.quad	0x3fe3522d8beca61a              # double 0.60378148392664177
	.quad	0x3fa536d44608b330              # double 0.041433938550062499
	.quad	0x3fd6f08a56ca38e2              # double 0.3584314200933375
	.quad	0x3fc6106d9f615be8              # double 0.17237634927980072
	.quad	0x3febf831af85d39b              # double 0.87404712945736962
	.quad	0x3fc67a2fa02cf2a4              # double 0.17560382195542446
	.quad	0x3fd4c8e4fb4286e8              # double 0.32476162469002512
	.quad	0x3fe70a4a66063b58              # double 0.72000617910985465
	.quad	0x3fec839236d91fd0              # double 0.89106093132522268
	.quad	0x3fc26531b3037438              # double 0.14371320000546617
	.quad	0x3fcc483faf879cd4              # double 0.22095485754764488
	.quad	0x3fe35a207c9ac252              # double 0.60475181900808139
	.quad	0x3fd9c0d027cbe7ae              # double 0.4023933781278356
	.quad	0x3fe1192bd46e2a77              # double 0.53432265749263663
	.quad	0x3fd84db088b13c94              # double 0.37974179600582514
	.quad	0x3fde5826acd4acca              # double 0.47413031461719568
	.quad	0x3fc4752f025eff24              # double 0.15982616058135435
	.quad	0x3fe297e2773c56a8              # double 0.58104060447904704
	.quad	0x3fa11f04ebf072e0              # double 0.033439782906702353
	.quad	0x3fc841ea11993898              # double 0.18951154574682927
	.quad	0x3fce092a2948fcd4              # double 0.2346546842181626
	.quad	0x3fda27ca87cc308c              # double 0.40867865811811366
	.quad	0x3fdded715fb4c41c              # double 0.46761736246395613
	.quad	0x3fdee319819bdbf0              # double 0.48261106164085188
	.quad	0x3fd3595d06cff0ac              # double 0.30232930817852366
	.quad	0x3fe70a0d135c7cc5              # double 0.71997693807124874
	.quad	0x3fe306f586732616              # double 0.59459949741102736
	.quad	0x3fb383f6d507e6e0              # double 0.07623236370991604
	.quad	0x3fe22ff13112921c              # double 0.56835231384735918
	.quad	0x3fcb170997d8eb90              # double 0.21164054788991082
	.quad	0x3fe2216849537e0a              # double 0.56657804795753575
	.quad	0x3fda95b464e5391c              # double 0.41538724759165446
	.quad	0x3feb9dbd0b8fd714              # double 0.86300518282107185
	.quad	0x3fd945894f6bedf0              # double 0.39486916309371534
	.quad	0x3fc10f576c64c880              # double 0.13328068535480853
	.quad	0x3fecbbc8987355a4              # double 0.89792279983037248
	.quad	0x3fe136dfdc7ab7dd              # double 0.53794854223610467
	.quad	0x3fbf23f5ef02cb68              # double 0.12164246640422294
	.quad	0x3fde206cc98162f0              # double 0.47072906187308572
	.quad	0x3fd86c8842d94576              # double 0.38162428405947624
	.quad	0x3fdd42292057dfce              # double 0.45716312559625016
	.quad	0x3fed0b70c2dff0d8              # double 0.90764654218176144
	.quad	0x3fe8f52240608981              # double 0.77992355893756848
	.quad	0x3fce150ac8d81ac0              # double 0.23501715475886975
	.quad	0x3fde555ff2cf798e              # double 0.47396086418111671
	.quad	0x3fc7b10dccc0f88c              # double 0.18509075639480377
	.quad	0x3fdcbec060d7f084              # double 0.44914254624723804
	.quad	0x3feab808c902dbcb              # double 0.83496512660973943
	.quad	0x3fefdb629ec897e9              # double 0.99553042423644655
	.quad	0x3fe83e0054b390d5              # double 0.75756851714370532
	.quad	0x3fe07dfe6b564929              # double 0.51538010563152625
	.quad	0x3fd4e8c3af04c3ae              # double 0.32670681087170805
	.quad	0x3fc2d1874df9bd90              # double 0.14701930339240876
	.quad	0x3fec956e9985b510              # double 0.89324121460745864
	.quad	0x3fe99c62931c6639              # double 0.800339972806973
	.quad	0x3fb5e80e02a428e0              # double 0.085572124142490491
	.quad	0x3fc73d0c14aa5f78              # double 0.1815505124002319
	.quad	0x3feca44b4b75df8d              # double 0.89505543459289216
	.quad	0x3fde3476161e0870              # double 0.47195198211568989
	.quad	0x3fef34e42fcf53f7              # double 0.97520646417490197
	.quad	0x3fc53713ebdbd9ac              # double 0.16574334160368431
	.quad	0x3fed8c431c02d22e              # double 0.92337184401418937
	.quad	0x3fcd508263182544              # double 0.22901944960202958
	.quad	0x3fc196113e298220              # double 0.13739219222317534
	.quad	0x3fec63a5dce4bef2              # double 0.88716405051488167
	.quad	0x3fd6df927dec2968              # double 0.35739576623077207
	.quad	0x3fc8253b614d8d08              # double 0.18863622904891764
	.quad	0x3fe3536c2f253763              # double 0.60393342216569257
	.quad	0x3febcfb772e6c5b4              # double 0.86910602990808749
	.quad	0x3fe72d189173d7e2              # double 0.7242548790807144
	.quad	0x3fed6a2162d437d2              # double 0.91920537283453485
	.quad	0x3fdcf2822dc73782              # double 0.45230154486204566
	.quad	0x3fe505a56c019100              # double 0.65693923087067674
	.quad	0x3fe69038ecc67041              # double 0.70510526890894465
	.quad	0x3fe1c469bf034771              # double 0.55522620494069319
	.quad	0x3f940c07efd61e00              # double 0.019577144635631427
	.quad	0x3fd33242da6881b6              # double 0.29994269684723507
	.quad	0x3fcb083c1af01324              # double 0.21118880572625998
	.quad	0x3fed46ebab921cd9              # double 0.91490729818260796
	.quad	0x3fca598016f05adc              # double 0.20585633392393887
	.quad	0x3fea5fdb30f9af73              # double 0.82420119824881366
	.quad	0x3fdd879c75517fcc              # double 0.46140204865332346
	.quad	0x3fb8fcb0527ceb10              # double 0.097605724466955701
	.quad	0x3fd5ce9a2ae3551e              # double 0.34073499859126055
	.quad	0x3fe6af302592214c              # double 0.70888526285220044
	.quad	0x3fbc7526fdb15eb8              # double 0.11116260236428388
	.quad	0x3fead321f6dc9acb              # double 0.83827303137953757
	.quad	0x3fef5a145a71c11c              # double 0.9797460333338992
	.quad	0x3fc9ef04afdd88f8              # double 0.20260675990272836
	.quad	0x3fd9387b6dc0b23a              # double 0.39407239645041481
	.quad	0x3fb5fee9c7fb6f90              # double 0.085920916866085272
	.quad	0x3fe9ae6ede9ca319              # double 0.80254310110931038
	.quad	0x3feec8f85a536296              # double 0.96203248636000427
	.quad	0x3f82487993f0b740              # double 0.0089272974274440253
	.quad	0x3f90c89c4fa8ba40              # double 0.016390268671040653
	.quad	0x3fec9f587bfe6370              # double 0.89445137231369465
	.quad	0x3fe7a05831571c76              # double 0.73832330357335141
	.quad	0x3fee3d331c448675              # double 0.94497066041021915
	.quad	0x3fe8d9152cefa898              # double 0.77649935509295442
	.quad	0x3fd47bb0167458b4              # double 0.32004930680103461
	.quad	0x3fd44f5d9417ae46              # double 0.31734408819349758
	.quad	0x3fe3ee6c3e2abd43              # double 0.62285434858305455
	.quad	0x3fd3c44c89ecc166              # double 0.3088561388895158
	.quad	0x3fd0444de29a00f0              # double 0.25416895989475474
	.quad	0x3fca5d959bd7474c              # double 0.20598096951885692
	.quad	0x3fad37a5586842c0              # double 0.057065169374373337
	.quad	0x3fc37267094a5fa0              # double 0.15192878678930999
	.quad	0x3fd5b8e6c263d184              # double 0.33941048606291013
	.quad	0x3fcc9f60305c18ac              # double 0.223613761532936
	.quad	0x3fd4aa1c3c216028              # double 0.32288270828348908
	.quad	0x3fdf51c812c2c65c              # double 0.4893665488444634
	.quad	0x3fd20d327e3a7ab4              # double 0.28205549551959597
	.quad	0x3fb92b09ab4a90b8              # double 0.098312954253347296
	.quad	0x3fe9dd9a0921354f              # double 0.80830098899029135
	.quad	0x3fdb4db80cc85356              # double 0.42661858795445562
	.quad	0x3fd39c690324d114              # double 0.3064215212537118
	.quad	0x3fd6db5c0babb632              # double 0.35713864459725919
	.quad	0x3feaac55afe336d2              # double 0.83353695252454885
	.quad	0x3fe871608b1b52d8              # double 0.76383998078616866
	.quad	0x3fbcabf07807a478              # double 0.11199858599106161
	.quad	0x3fec77bc40dc465a              # double 0.88961613338524193
	.quad	0x3fe9b5ec83f9de14              # double 0.80345750595637577
	.quad	0x3fe88fc9563b1d9b              # double 0.7675520595739046
	.quad	0x3feef9750a3cfb55              # double 0.967951316830162
	.quad	0x3fc8b8a7800ae5b0              # double 0.19313520195082168
	.quad	0x3fee425a9eebc75e              # double 0.94559985198268826
	.quad	0x3fe461b2d13abcf9              # double 0.63692608704687281
	.quad	0x3fc44b4170ea05d4              # double 0.15854661954294491
	.quad	0x3fe05c95e38f6ad2              # double 0.5113019413505191
	.quad	0x3fe2c8d433d26c5e              # double 0.58701524850347275
	.quad	0x3fd636f6bf3c5b80              # double 0.34710472751014976
	.quad	0x3fe91344f6861149              # double 0.78360222005043412
	.quad	0x3fe461890a094ca4              # double 0.6369061656972872
	.quad	0x3fc208b40fa80ce8              # double 0.14089060558772037
	.quad	0x3fd7a5042a7b759c              # double 0.36944679402025726
	.quad	0x3fea4f3d874bd114              # double 0.82217289376288471
	.quad	0x3fe289a4d5ab95e9              # double 0.57930223209831155
	.quad	0x3fb4ea70241bc9f0              # double 0.081702240768016798
	.quad	0x3f953d21efd9fba0              # double 0.020741014732717056
	.quad	0x3fe1a3a32d86d80e              # double 0.55122527019443779
	.quad	0x3fc25f18281806ac              # double 0.14352704961497886
	.quad	0x3fe7a175db05611b              # double 0.73845951821843714
	.quad	0x3fec0f7ab8fee57f              # double 0.87688957340212415
	.quad	0x3fe54f1a7cac3658              # double 0.66590618467462104
	.quad	0x3fe4769b40738684              # double 0.63947832668436932
	.quad	0x3fe8dfa94a26205f              # double 0.7773024032803838
	.quad	0x3fa651fccc627490              # double 0.043594264935770899
	.quad	0x3fd77a30ff461b18              # double 0.36683297089659694
	.quad	0x3fe2c4bd5c099650              # double 0.58651607490600988
	.quad	0x3fcc7dafc16fbc58              # double 0.22258564896717092
	.quad	0x3fbc5af96e634848              # double 0.11076315827384164
	.quad	0x3feb43f7a1349f98              # double 0.85204678998433092
	.quad	0x3fe9af78320860df              # double 0.80266961833970274
	.quad	0x3fe060d1a6936942              # double 0.5118187192377166
	.quad	0x3fe1acf434141a01              # double 0.55236253902040755
	.quad	0x3fdc78b1c7a66f28              # double 0.44486660477717743
	.quad	0x3fe5201872477507              # double 0.660167906953263
	.quad	0x3f8eb30370663240              # double 0.014989878528262612
	.quad	0x3fc747c585c666e8              # double 0.18187779457075881
	.quad	0x3fd49572c6d7e1de              # double 0.32162160318651256
	.quad	0x3fe430fa4ab8fe9e              # double 0.63097872347130468
	.quad	0x3fc660a45515d634              # double 0.17482427744441653
	.quad	0x3fc1418a1c0c4a50              # double 0.13481260652095495
	.quad	0x3fcc1dace0c47c28              # double 0.2196556184289602
	.quad	0x3fc30f09d5bc9370              # double 0.14889643608435277
	.quad	0x3fe78aa35d7022f6              # double 0.73567360162368689
	.quad	0x3fe8c253e1e9dfd6              # double 0.77372163890594936
	.quad	0x3feb436e8062ec58              # double 0.85198140216324258
	.quad	0x3f90cb35e6e371e0              # double 0.016400186745942125
	.quad	0x3f9b73cfac543f60              # double 0.026808972256787356
	.quad	0x3fd5b27f6abcf18c              # double 0.33901963637961141
	.quad	0x3fe4cea7b82aea91              # double 0.65022645921938438
	.quad	0x3fdeed0322ba4182              # double 0.48321607962954982
	.quad	0x3fcc58d928b80cbc              # double 0.22146143425206855
	.quad	0x3fd6be521185c95e              # double 0.35536624633018288
	.quad	0x3fd7aafd4ffb2594              # double 0.36981137095116279
	.quad	0x3fd7b0cc12595a92              # double 0.37016584197901026
	.quad	0x3fe474e5fd659787              # double 0.63926982394762966
	.quad	0x3fec63deaecc7d16              # double 0.88719114437472757
	.quad	0x3fe0eaacfc094aa6              # double 0.5286469385703938
	.quad	0x3fe89b5ba470d390              # double 0.76896459691362118
	.quad	0x3fd6e04da8304c24              # double 0.35744038986848836
	.quad	0x3fdc65341efdaed8              # double 0.44367697740993384
	.quad	0x3fd5897634072886              # double 0.33651499825339959
	.quad	0x3fa4193e68c5e840              # double 0.039255094804460544
	.quad	0x3fed2cf9b68e309c              # double 0.91174016623837728
	.quad	0x3f98aa5818a0e5e0              # double 0.024087311270909129
	.quad	0x3feab36fd40f7bd8              # double 0.8344039098554914
	.quad	0x3fe46b3572987516              # double 0.63808700925770512
	.quad	0x3fd7e5fcdafa8112              # double 0.37341233620283376
	.quad	0x3fe26b10f1a7a700              # double 0.57556960294934356
	.quad	0x3fecf35328fa55bf              # double 0.90470273974886328
	.quad	0x3fe4ebef4b5384fe              # double 0.65380062782438109
	.quad	0x3fe1b72339962694              # double 0.55360566375130071
	.quad	0x3fe53012d52488c5              # double 0.66211835507808614
	.quad	0x3fcee01665a6ee20              # double 0.24121360743980436
	.quad	0x3fbc284183a49e30              # double 0.10998925651494385
	.quad	0x3fdd65b72af90f58              # double 0.45933322140284849
	.quad	0x3fda5c172493b422              # double 0.41187075206727475
	.quad	0x3fdd11953b525bd0              # double 0.45419817727218703
	.quad	0x3febd946c0ed29a4              # double 0.87027299576702832
	.quad	0x3fdd013c6f8d5080              # double 0.45320044416190086
	.quad	0x3fe2b66319a6c82c              # double 0.58476405153328903
	.quad	0x3feea7e2afa7ef66              # double 0.95799383457004406
	.quad	0x3fc47b5aa54f9670              # double 0.16001446792431606
	.quad	0x3fb8322e988fd6c0              # double 0.094515716787863191
	.quad	0x3fb662b232662bc0              # double 0.087443482689351093
	.quad	0x3fe791fa42d43e92              # double 0.736569529080912
	.quad	0x3fc5cc5f6de8459c              # double 0.17029946199958779
	.quad	0x3fa5d3ddb813da50              # double 0.042632034988788647
	.quad	0x3fe3223e8e060a67              # double 0.59793021906837118
	.quad	0x3feb29db015bd4fb              # double 0.84885931268095705
	.quad	0x3fdccf209b70924e              # double 0.45014205150281306
	.quad	0x3fe3b6082137b32d              # double 0.6159706734448257
	.quad	0x3fe1f82f186660d7              # double 0.56154589429481916
	.quad	0x3fc26a89c2f31b24              # double 0.14387628573441547
	.quad	0x3fde12dc85dcc216              # double 0.46990120956891823
	.quad	0x3fe0144b76da5fa5              # double 0.50247739041786998
	.quad	0x3fb6b7c9cd780960              # double 0.088741886771491973
	.quad	0x3fd751b04029f20e              # double 0.36436086908341359
	.quad	0x3fe932aab6023789              # double 0.78743491695944201
	.quad	0x3fe1ad5a9a58a988              # double 0.5524113668991939
	.quad	0x3fed548bad7f4899              # double 0.91657050977871102
	.quad	0x3f9081f340223f40              # double 0.016120720662512911
	.quad	0x3fdc630e86df749c              # double 0.44354594393900881
	.quad	0x3feb61ac78d8e808              # double 0.85567306139933041
	.quad	0x3fe3549c38294ecc              # double 0.60407839745536185
	.quad	0x3fead53a21abe012              # double 0.83852869583552292
	.quad	0x3fd0fe87091385c4              # double 0.2655351246486044
	.quad	0x3fe706a049b3234a              # double 0.71955885309680778
	.quad	0x3fc4ae8f43750e64              # double 0.16157713693438602
	.quad	0x3fb3f47eb776c3a8              # double 0.077949447432514973
	.quad	0x3fdbdd6c5afed6c8              # double 0.43538960348392353
	.quad	0x3fd2a38f7cf1187c              # double 0.29123294068666161
	.quad	0x3f947c9f9b4e7b00              # double 0.020006650785599156
	.quad	0x3fe195e53c2d99f5              # double 0.54954778436223128
	.quad	0x3fe0d2b8fff0899e              # double 0.52572298038676357
	.quad	0x3fefaba311c4c811              # double 0.98970178099102856
	.quad	0x3fc433ff23a1e988              # double 0.15783681144587214
	.quad	0x3fd46607b8195f24              # double 0.31872742632320894
	.quad	0x3fd13f5b5c21cde2              # double 0.26949199673910418
	.quad	0x3fe059a2f0a4b08f              # double 0.51094195366523987
	.quad	0x3fd342e40eb48636              # double 0.30095769344379464
	.quad	0x3fe52ec7fa7da27d              # double 0.66196059154488263
	.quad	0x3fe5a4b23ed7b906              # double 0.67635452531774898
	.quad	0x3feea6d413cd7116              # double 0.9578647982375823
	.quad	0x3fd098a951e7fe86              # double 0.25931771277098681
	.quad	0x3fe8adbc9cd325d1              # double 0.77120810155718733
	.quad	0x3fa243243036e580              # double 0.035668497930099186
	.quad	0x3feccef1b59c84a1              # double 0.90026174040771789
	.quad	0x3fd104978857959c              # double 0.26590526880894472
	.quad	0x3fe9f0edb55a7dd6              # double 0.81066022320367881
	.quad	0x3fd9f1e68b5c9254              # double 0.40538943872005473
	.quad	0x3fe0724a8c63d336              # double 0.5139515630713507
	.quad	0x3fe46fbc8d053cb2              # double 0.63863971274431308
	.quad	0x3fd705e82eb17a46              # double 0.35973553237809985
	.quad	0x3fdf805109db1d06              # double 0.4922068210839402
	.quad	0x3fdd41475e2c92cc              # double 0.4571093005818454
	.quad	0x3fd82765c96f4ec4              # double 0.37740463897101173
	.quad	0x3fd68a1814f80368              # double 0.35217859313711708
	.quad	0x3fed601d7c246a90              # double 0.91798280951054956
	.quad	0x3fba1f4c82b98c18              # double 0.10204008285067834
	.quad	0x3fe071e7e8accbbe              # double 0.51390452808697495
	.quad	0x3fd9b0e7648751a2              # double 0.40142235581631713
	.quad	0x3fd78ce18dbd87a6              # double 0.36797369806128655
	.quad	0x3fc67fc5aededa70              # double 0.17577429808234823
	.quad	0x3fe3933b24c0a073              # double 0.61172253778660346
	.quad	0x3fd8c3695a237ef6              # double 0.38692697336772086
	.quad	0x3fe812bc7f56d4dd              # double 0.75228714819845843
	.quad	0x3fd07254923e9422              # double 0.25697817117390021
	.quad	0x3fd762926de23af6              # double 0.36539135676223056
	.quad	0x3fc35b35baafe954              # double 0.15122100463470167
	.quad	0x3fe18d580f3a87f1              # double 0.54850390409796834
	.quad	0x3fd127e52f1ffcd0              # double 0.26806001283689529
	.quad	0x3fe123b9769fbf08              # double 0.53561089676620188
	.quad	0x3feaa65d07d0174e              # double 0.83280803228329048
	.quad	0x3fc91a92c5292b60              # double 0.19612345339768478
	.quad	0x3fe142fa6dc0eb47              # double 0.53942605434654289
	.quad	0x3fe286cd0c0ced3a              # double 0.57895519593822731
	.quad	0x3f5ad5ec0df61400              # double 0.001637917062766947
	.quad	0x3fee18dd6ae7a5ea              # double 0.94053526763781048
	.quad	0x3fe4b4ccdba5984f              # double 0.647070340154423
	.quad	0x3fe2684a2e82f0bd              # double 0.57523068508410058
	.quad	0x3fe3085ff1c687c5              # double 0.59477231237200867
	.quad	0x3fbd153db2caa6b8              # double 0.1136053620818086
	.quad	0x3fd14bb455dc068a              # double 0.27024563202585539
	.quad	0x3fde49336ef65604              # double 0.47321782909543253
	.quad	0x3fee7f1d7b7073b5              # double 0.95301698788863709
	.quad	0x3fdef9c3ae468ca2              # double 0.48399440783595982
	.quad	0x3fe9cdbd8eeb8998              # double 0.80636480249477227
	.quad	0x3fac1b05ad224ce0              # double 0.054893662819404332
	.quad	0x3fe44372184b0bf6              # double 0.63323311562305551
	.quad	0x3fe4e80fd476c26d              # double 0.6533278608022336
	.quad	0x3fc09b115d0d735c              # double 0.12973229449826362
	.quad	0x3fdd8221ccd54ade              # double 0.46106762889136899
	.quad	0x3fcd16a16bc856d0              # double 0.22725312960454014
	.quad	0x3fd3016bb7cebfce              # double 0.29696171712839436
	.quad	0x3fd614820f747f84              # double 0.34500171193393947
	.quad	0x3fd78eb04aaa583a              # double 0.36808402339500257
	.quad	0x3fedc24733b14ece              # double 0.92996559234821929
	.quad	0x3feadd743db95b2d              # double 0.8395329671428492
	.quad	0x3fdc140d97f733bc              # double 0.43872394409555304
	.quad	0x3fa77729d4e127e0              # double 0.045831019626873859
	.quad	0x3fe70994abf355df              # double 0.71991952499473288
	.quad	0x3fefd8b68f2f90ba              # double 0.99520423856713269
	.quad	0x3feecb70a69c9264              # double 0.96233398953752358
	.quad	0x3fec1f5d9093256a              # double 0.87882879483474352
	.quad	0x3fd649539de4e0c2              # double 0.34822550219861281
	.quad	0x3fef6140fb230e68              # double 0.98062180566962542
	.quad	0x3fdb5962585ed4cc              # double 0.42733057622838255
	.quad	0x3fe13278462109b1              # double 0.53741086670952687
	.quad	0x3fed91d1e6b94bc2              # double 0.9240502840351541
	.quad	0x3fe5f2ad5f109866              # double 0.68587368552540506
	.quad	0x3fdbf548c8f60a88              # double 0.43684596657855268
	.quad	0x3fdc2906de6d5a56              # double 0.44000407906915961
	.quad	0x3fc5c65584f9f07c              # double 0.17011517518028885
	.quad	0x3feefa97e2460bae              # double 0.96809000200334139
	.quad	0x3fea16955b970c26              # double 0.81525676621129572
	.quad	0x3fe7cef54f591a78              # double 0.74401345727603907
	.quad	0x3feae0bbbeedcf80              # double 0.8399332741814618
	.quad	0x3fde717362bff1ce              # double 0.4756744827607492
	.quad	0x3fa77693c0733430              # double 0.045826546900208931
	.quad	0x3fdf16c0498ca836              # double 0.4857636183029429
	.quad	0x3fe575742a4148a9              # double 0.6705876183789502
	.quad	0x3fc976b09bddb8e8              # double 0.19893462763452097
	.quad	0x3feff0e68c9728dc              # double 0.9981568094165385
	.quad	0x3fd1fb31629e97c2              # double 0.28095659857569555
	.quad	0x3fd28ea654cbe3fc              # double 0.28995664864447668
	.quad	0x3febc2e9233ea50d              # double 0.86754280933124195
	.quad	0x3fe16dfb64c786d7              # double 0.54467553790547185
	.quad	0x3fd5a79352482d08              # double 0.33835299525590345
	.quad	0x3fe7e0540dc0e622              # double 0.74613382993920063
	.quad	0x3faddccf38e25fa0              # double 0.058325267499810041
	.quad	0x3fe189c0aa2319e2              # double 0.54806550245194452
	.quad	0x3fd35f16da4000ae              # double 0.3026787883136518
	.quad	0x3fd7dcb5237ad5da              # double 0.37284592118097992
	.quad	0x3fda96afd87b2bc6              # double 0.41544719830261234
	.quad	0x3fd03b4c2ffb6fa2              # double 0.2536192387176418
	.quad	0x3fd8066d459db3c2              # double 0.3753922633975969
	.quad	0x3f9fcfb0194a2420              # double 0.031065703910403752
	.quad	0x3fda5a3a511631de              # double 0.41175706785796062
	.quad	0x3fb2d35525452838              # double 0.073537179564625244
	.quad	0x3fe240194dbea45c              # double 0.57032456573973489
	.quad	0x3fe137121cbc52b6              # double 0.53797250378064265
	.quad	0x3fee7e2e0e86b1d7              # double 0.95290282094134227
	.quad	0x3fe99f697eef7b0d              # double 0.80070948402485131
	.quad	0x3fe5ae00a10e4d26              # double 0.67749053436492512
	.quad	0x3fec738a49fa121f              # double 0.88910402725793236
	.quad	0x3fefbb459f8910cf              # double 0.99161034735927866
	.quad	0x3fe66fda1fb1a27a              # double 0.70115381422245027
	.quad	0x3fd3a9e6c69e8c12              # double 0.3072449626581043
	.quad	0x3feaf28b318fe701              # double 0.84210738830663001
	.quad	0x3fba9d319f4a5df0              # double 0.10396108759811518
	.quad	0x3fd24f1681447256              # double 0.28607714294210973
	.quad	0x3fec2f4ed0cab389              # double 0.88077488689087702
	.quad	0x3fef838b3ec81a28              # double 0.98480760824242441
	.quad	0x3fdbd63b9acea654              # double 0.43495073430913078
	.quad	0x3fe917055f6c46ed              # double 0.78406017911239945
	.quad	0x3feab8506bde5bc5              # double 0.83499928539355806
	.quad	0x3fb0d714de48d7a8              # double 0.065781883495985682
	.quad	0x3fedd783de61acb9              # double 0.9325579970731247
	.quad	0x3fc95a3fe87ddc14              # double 0.19806670047884778
	.quad	0x3fb099fcd7765a70              # double 0.064849665263275957
	.quad	0x3fd13222d4976228              # double 0.26868506203530496
	.quad	0x3fb97e89a5d6efd0              # double 0.099587061870749282
	.quad	0x3fb5b42e7a51b7b0              # double 0.084780602324569853
	.quad	0x3fe9186400c9a482              # double 0.78422737268296339
	.quad	0x3feefef6ceb5d9c8              # double 0.96862354634395675
	.quad	0x3febc59618ab74f4              # double 0.86786942308722681
	.quad	0x3fe7ee128bde1d26              # double 0.74781157796761444
	.quad	0x3fd94af2189c70dc              # double 0.39519932177951289
	.quad	0x3feb222bfa1193b0              # double 0.84792136041197885
	.quad	0x3fe12f6df22b84f4              # double 0.53703973101451519
	.quad	0x3fb2cb9a903937a0              # double 0.073419246874634414
	.quad	0x3fef726c8cb8e237              # double 0.98271777615361244
	.quad	0x3fcbfda64c8835e8              # double 0.21867827164571385
	.quad	0x3fd768b38f4536c8              # double 0.36576546660658638
	.quad	0x3fdfa8dbf2952d48              # double 0.49468134584158863
	.quad	0x3fd2653049b60c7e              # double 0.28742606352188449
	.quad	0x3fe2e2a8078f0411              # double 0.59016801334667168
	.quad	0x3fe50c67484d94a3              # double 0.65776409265221891
	.quad	0x3fe289eab9a30f56              # double 0.5793355584832891
	.quad	0x3fd6ff9d652da288              # double 0.35935149079026774
	.quad	0x3fd457fc9cf29aa2              # double 0.31787028624459357
	.quad	0x3fe72e2a7fbe6667              # double 0.72438549947692088
	.quad	0x3fc8b54ab6173844              # double 0.1930325879206426
	.quad	0x3fe26f9e0442fc22              # double 0.57612515289645594
	.quad	0x3fa1ba4303ac21f0              # double 0.034624189565935271
	.quad	0x3fdf83eb91181d30              # double 0.49242676896433846
	.quad	0x3fc5bcfe1639fd34              # double 0.16983009419707573
	.quad	0x3fc8e2d29319d1ac              # double 0.19442207510622944
	.quad	0x3fe99ba50c4bddcd              # double 0.80024959947234608
	.quad	0x3fee55fc46b299e9              # double 0.94799627121102248
	.quad	0x3fd734ab7b74457c              # double 0.36258971267769602
	.quad	0x3fcac679c38f107c              # double 0.20918199585696928
	.quad	0x3fcd225821fd0b84              # double 0.22761060390083909
	.quad	0x3fe8ff477ac81065              # double 0.78116201382409811
	.quad	0x3fe094f15d0b0198              # double 0.51818149731120666
	.quad	0x3fb6b2c69b5c6ab0              # double 0.088665402345592836
	.quad	0x3fdf3f7f55e58b34              # double 0.48825057400079008
	.quad	0x3fe48ed6d99c0b92              # double 0.64243643285623109
	.quad	0x3fee9294535d36b8              # double 0.9553929928021807
	.quad	0x3fe6de88558bdff2              # double 0.71466461857107633
	.quad	0x3fefbf5282b06bc7              # double 0.99210477376197381
	.quad	0x3fe0277444e26a33              # double 0.50481618360510649
	.quad	0x3fd0684c60a2d582              # double 0.25636586606136558
	.quad	0x3fe0fa53931b55e9              # double 0.53055742961686037
	.quad	0x3fa20e5c15a14f10              # double 0.035265805855173693
	.quad	0x3fd099837a460568              # double 0.25936972561620175
	.quad	0x3fe5f5a6a772b489              # double 0.68623669342709193
	.quad	0x3fd93074c5a803a0              # double 0.39358252813695493
	.quad	0x3fe3d039f5b3f1f0              # double 0.61916826237535183
	.quad	0x3fea48f8c29daa84              # double 0.82140768061556501
	.quad	0x3fcce8912bc84864              # double 0.22584738385973246
	.quad	0x3fca3c3a767bdf58              # double 0.2049630239996485
	.quad	0x3fc3575211a2e030              # double 0.15110231267112928
	.quad	0x3fe788b80b32d453              # double 0.73543932139603851
	.quad	0x3fd7329cfb39a346              # double 0.36246418508249112
	.quad	0x3fdd6521bef70a0c              # double 0.45929759644437307
	.quad	0x3fc7f2e326886804              # double 0.18709983235822858
	.quad	0x3fe79481809885cc              # double 0.7368781577717356
	.quad	0x3fc9c716c7f22f84              # double 0.20138821375837435
	.quad	0x3fed0e483673d947              # double 0.9079934180761392
	.quad	0x3feea7f3afeac094              # double 0.95800194128789195
	.quad	0x3fe3c32a35f6d298              # double 0.61757383861420845
	.quad	0x3fe1fa5b86b795b8              # double 0.56181122123660199
	.quad	0x3fc8676ba997a504              # double 0.1906561449134544
	.quad	0x3fedbf9c10c7c1c3              # double 0.92963984753992468
	.quad	0x3fc6b251fe91d2f8              # double 0.17731690340192308
	.quad	0x3fe677df0827e448              # double 0.70213271706519098
	.quad	0x3fede6c56a535f91              # double 0.93442030684217248
	.quad	0x3fd01c8113fb6dde              # double 0.25173975898152701
	.quad	0x3fd86f01a5be4632              # double 0.38177529512276742
	.quad	0x3fd2a2c036fc7328              # double 0.29118352288951366
	.quad	0x3fe78aba2e4a1b37              # double 0.735684481057297
	.quad	0x3fa30d58ec8905b0              # double 0.037211207269602808
	.quad	0x3fe8c98e5800071b              # double 0.77460400760193993
	.quad	0x3fe40232797b4d95              # double 0.62526820876012101
	.quad	0x3feabf31f8366220              # double 0.83583925703993955
	.quad	0x3fc5f811adb53188              # double 0.17163296682191409
	.quad	0x3f954919b4110140              # double 0.020786668410665898
	.quad	0x3fef30dbfbb282cc              # double 0.97471427116041686
	.quad	0x3fda9353f72863f0              # double 0.41524218689443071
	.quad	0x3f8f1aa4cd605b00              # double 0.015187537686910613
	.quad	0x3fea8037f8446de9              # double 0.82815168847758713
	.quad	0x3fc5c70dfc4ad178              # double 0.17013716525037714
	.quad	0x3fd5e2cfb647782a              # double 0.34196846771908673
	.quad	0x3fe3f225157ea11a              # double 0.62330869863675109
	.quad	0x3fea5388f6180134              # double 0.82269714417637951
	.quad	0x3fdd95c19a4132d6              # double 0.46226539672788414
	.quad	0x3fbae26936164908              # double 0.10501725740894952
	.quad	0x3fab849355e67660              # double 0.053745846019620513
	.quad	0x3fe9d2d25e4cf2e4              # double 0.80698507707674282
	.quad	0x3fe9028d30410696              # double 0.78156146454439823
	.quad	0x3fb28d6adb82f650              # double 0.072470358459179041
	.quad	0x3fd82f69400c7458              # double 0.37789374594450953
	.quad	0x3fe04464f267d5c1              # double 0.50834891648144531
	.quad	0x3fb5b5fc07cc4208              # double 0.084808113006381913
	.quad	0x3fdb40a2499279f4              # double 0.42581994232924036
	.quad	0x3fd478fa7efa6412              # double 0.31988394165233658
	.quad	0x3fd06c68de4204ca              # double 0.25661679940101279
	.quad	0x3fee638d2cd921f0              # double 0.94965227851304057
	.quad	0x3fb86f060ae59730              # double 0.095444085750924001
	.quad	0x3fcda3027c41080c              # double 0.23153716151324522
	.quad	0x3fef133af78731ed              # double 0.97109745354970089
	.quad	0x3fd359edbf498000              # double 0.30236381225950026
	.quad	0x3febaf1cfb9bc6c1              # double 0.8651261247852845
	.quad	0x3fc40a293eb36844              # double 0.15656009255946135
	.quad	0x3fef7c9edb907d3c              # double 0.98396246799158104
	.quad	0x3fd90e1362b08ee0              # double 0.39148411405242989
	.quad	0x3fee126c1ba439e4              # double 0.93974881552440736
	.quad	0x3fe145be2166add4              # double 0.53976351283693669
	.quad	0x3fbfb5d13e7bdd88              # double 0.12386806273922535
	.quad	0x3fe1a4f19c4e25ed              # double 0.55138474014637284
	.quad	0x3fc9d9ef3bed256c              # double 0.20196333337870997
	.quad	0x3fe6a768131417b7              # double 0.70793536878840413
	.quad	0x3fe91c3a50eb4ddc              # double 0.78469577602885065
	.quad	0x3fd9efc02ad330f8              # double 0.40525821859479505
	.quad	0x3fe70ffce4071dfb              # double 0.72070164238624501
	.quad	0x3fe4337a1f4cd1f0              # double 0.63128381837173997
	.quad	0x3fcf66cb2b3bceb0              # double 0.24532451258675314
	.quad	0x3f9015647cbfa400              # double 0.015706606020021496
	.quad	0x3fe0d3c305c15c63              # double 0.52584982990346096
	.quad	0x3feb93bfb8a4c8ef              # double 0.86178575576039218
	.quad	0x3fdbb421a4039576              # double 0.43286934868805049
	.quad	0x3fd1400d2a05d0fe              # double 0.26953438857823631
	.quad	0x3fd9b5734faa1abe              # double 0.4016998556111665
	.quad	0x3fe08bb5dcd51ae0              # double 0.5170544922956104
	.quad	0x3fdd34f1fddb52e4              # double 0.45635652342507016
	.quad	0x3fecf647f3cd847f              # double 0.90506360643134076
	.quad	0x3fde9931321618d8              # double 0.47810010806314329
	.quad	0x3fc6b3556274fa88              # double 0.17734782512157587
	.quad	0x3fefe50eb11c7c12              # double 0.99671110717815936
	.quad	0x3fcc1324cc5c266c              # double 0.21933422068132147
	.quad	0x3fef3e1b3114ebcb              # double 0.97633132540010458
	.quad	0x3fc446b4feda37f4              # double 0.15840780681577338
	.quad	0x3fa9d99c351b5470              # double 0.050488358958013957
	.quad	0x3fe90cb8d237a541              # double 0.78280297334746518
	.quad	0x3fe8e683a7d925d7              # double 0.77813895018442281
	.quad	0x3fc88ceb1fca95b8              # double 0.19180048992454402
	.quad	0x3fd8de5ea2824980              # double 0.38857236738217438
	.quad	0x3fe94db830fd51a9              # double 0.79073724334971474
	.quad	0x3fd882edf421ec76              # double 0.38299130288186889
	.quad	0x3fc4c4363d28b558              # double 0.16223791109352237
	.quad	0x3feb91d5a1a3e116              # double 0.86155206270544471
	.quad	0x3fece1350a26d98c              # double 0.9024911115910057
	.quad	0x3fd7ce78c36856c2              # double 0.37197703440447694
	.quad	0x3fc0fc09d8366098              # double 0.13269160325285578
	.quad	0x3fe9f6b4b3b15ed7              # double 0.81136546226749828
	.quad	0x3fa3890f34ea7700              # double 0.038155055245836067
	.quad	0x3fe7f46ecdf2d0e1              # double 0.74858799194637637
	.quad	0x3fea9945d99ba519              # double 0.83121006490287919
	.quad	0x3fcb7514b723a550              # double 0.21451052610727084
	.quad	0x3fe0b6c8c44041a0              # double 0.52231252985261634
	.quad	0x3fe722f0e21e600c              # double 0.72301525272178102
	.quad	0x3fe5d7f8915181e0              # double 0.68261364347932485
	.quad	0x3fe78195edb14610              # double 0.73456856178580843
	.quad	0x3fde3739a51cdcc2              # double 0.47212067722598416
	.quad	0x3fe60c0566882668              # double 0.68896741891621804
	.quad	0x3fa711ede61fb270              # double 0.045058664647375291
	.quad	0x3fe7da2cf0d32cfd              # double 0.74538275753130245
	.quad	0x3fdcab4426defe5c              # double 0.4479532603836327
	.quad	0x3fe67b75f502c5a3              # double 0.70257089475324042
	.quad	0x3fd064710e7824f8              # double 0.25613047040003734
	.quad	0x3fc2ab4a40349c3c              # double 0.14585235724482171
	.quad	0x3fe10e24173ccb47              # double 0.53297619379586869
	.quad	0x3fed2803f0ae468f              # double 0.91113469131433245
	.quad	0x3fd4d0817e2657de              # double 0.32522618598284037
	.quad	0x3feb1607b03d43da              # double 0.84643921300641556
	.quad	0x3fe6ce65c448cb06              # double 0.71269501053606699
	.quad	0x3fde3ee540307e54              # double 0.47258883732317725
	.quad	0x3fec036c20d4bdd3              # double 0.87541777050312886
	.quad	0x3fd1f7a7df62d8e2              # double 0.28074070754099811
	.quad	0x3fced605c950c954              # double 0.24090645151006618
	.quad	0x3fec2ea7e35ef169              # double 0.8806952896916701
	.quad	0x3fe2d78325a4fa6b              # double 0.58880765297346949
	.quad	0x3fe8be8c1b51ae3c              # double 0.77326016746287207
	.quad	0x3fea0ac83c56c2e5              # double 0.81381618294662117
	.quad	0x3fb10101edda6378              # double 0.06642162377319305
	.quad	0x3fc92c5fb58d4dec              # double 0.1966666828617315
	.quad	0x3fd40c84b25994de              # double 0.31326405922875533
	.quad	0x3fee90ec80c3ec7f              # double 0.9551908984134484
	.quad	0x3feeec1c06f05f5c              # double 0.96632195811524068
	.quad	0x3fdbb197b34a011a              # double 0.43271439083766128
	.quad	0x3fc2705fe05ea774              # double 0.14405439811281051
	.quad	0x3fef55e4eee65aba              # double 0.97923514042016468
	.quad	0x3fe890394daab530              # double 0.76760544938375652
	.quad	0x3fec10c28ba0ac8d              # double 0.87704589148542456
	.quad	0x3fe23fc71f5c51f0              # double 0.57028537869569895
	.quad	0x3fe12c473b577ef1              # double 0.53665505972091243
	.quad	0x3fe3bdd5478c955b              # double 0.61692298864788186
	.quad	0x3fca3cb06f1902dc              # double 0.20497708725635888
	.quad	0x3fd9aec84b6a218c              # double 0.40129287113861589
	.quad	0x3fdd7f91b5adc83a              # double 0.46091120473932146
	.quad	0x3fe9129ff1c42988              # double 0.78352353305790334
	.quad	0x3fe5abfedc7c0d4d              # double 0.6772455507602132
	.quad	0x3fd5f0a36a1753d0              # double 0.34281239853345102
	.quad	0x3fb39804aa7c1688              # double 0.076538364050145913
	.quad	0x3fe9e621f90bedcb              # double 0.80934237138665688
	.quad	0x3fef9afe2579df80              # double 0.98767001456779724
	.quad	0x3fc899e0acf953bc              # double 0.19219597288124912
	.quad	0x3fe55a4a7beb57cb              # double 0.66727184489240565
	.quad	0x3fef58addf285ad8              # double 0.97957509599185765
	.quad	0x3f81980705d9df80              # double 0.0085907505665401285
	.quad	0x3fbca252c74611e8              # double 0.11185185780602291
	.quad	0x3fc678f5635bdb70              # double 0.17556636191849462
	.quad	0x3fe917fabf985406              # double 0.78417718335060793
	.quad	0x3fe9b20b1427baa1              # double 0.80298379837570988
	.quad	0x3fc34557823b9c9c              # double 0.15055364474321642
	.quad	0x3fe36ceb3ca3556b              # double 0.6070457634292955
	.quad	0x3fe6c83c59e36733              # double 0.71194284015948595
	.quad	0x3fefd807a2a2ea63              # double 0.9951208282939884
	.quad	0x3fd27a24d04913f0              # double 0.28870506611229896
	.quad	0x3fe59178ab210a4b              # double 0.67400773452420404
	.quad	0x3feded176353223f              # double 0.93519181632388626
	.quad	0x3fec5cae3cedf1f9              # double 0.88631355190551553
	.quad	0x3fe8628c1d200845              # double 0.76202970207692344
	.quad	0x3fe590a9aabbf871              # double 0.6739090284970769
	.quad	0x3fe38ed006e1d321              # double 0.61118317932286825
	.quad	0x3fe6d3348abfa2c9              # double 0.71328188990909169
	.quad	0x3fa24417433c3480              # double 0.035675742108744579
	.quad	0x3fe569d7f46f3b50              # double 0.66917035809624714
	.quad	0x3fa3b160529665c0              # double 0.038462648469429706
	.quad	0x3febcd41b0bb32b8              # double 0.86880573766537506
	.quad	0x3fc2acec7a06c8d0              # double 0.14590221365285183
	.quad	0x3fda222729f38aa8              # double 0.40833453270730979
	.quad	0x3fd5be984ce284d6              # double 0.33975799091611003
	.quad	0x3fe4b8b1a412f889              # double 0.64754564328883746
	.quad	0x3faab44504b97310              # double 0.05215659792586369
	.quad	0x3fea7a5fc702e9fb              # double 0.82743824834261603
	.quad	0x3feb61c414a28082              # double 0.85568431883076834
	.quad	0x3feb042bd34ce868              # double 0.84425917882550738
	.quad	0x3fe84bfa1eacb1a4              # double 0.75927453986291881
	.quad	0x3fdca8ff3b8a5912              # double 0.44781475843900964
	.quad	0x3fd2baa3be09c586              # double 0.29264157827773152
	.quad	0x3f9c0c550d11cfa0              # double 0.027390793726638329
	.quad	0x3febfcee6d4cf128              # double 0.87462540958180046
	.quad	0x3fe48f7fcb1f65b1              # double 0.64251699135200202
	.quad	0x3fe05f57009c7b7d              # double 0.51163816565882281
	.quad	0x3fee7bedff1fed62              # double 0.95262813405080871
	.quad	0x3fe0ea543092cb03              # double 0.52860459792131598
	.quad	0x3f803b4fa37b9680              # double 0.0079256269231777754
	.quad	0x3fe1dae0e3d9175c              # double 0.55796856404843309
	.quad	0x3fe2f7464dfc298b              # double 0.59268489104697275
	.quad	0x3fca734eae903b20              # double 0.20664390109637853
	.quad	0x3fe43a8e29a6c305              # double 0.63214786658326771
	.quad	0x3fd073cff1f196f2              # double 0.25706862094226246
	.quad	0x3fcb29854902b9c8              # double 0.21220460953686726
	.quad	0x3fd2855d9e833a8a              # double 0.28938999633548035
	.quad	0x3fed89df5c88b28c              # double 0.92308013985673786
	.quad	0x3fdb95368409510a              # double 0.43098223585299478
	.quad	0x3fef68711eded3fb              # double 0.98149925259951886
	.quad	0x3fc294f07a5f8078              # double 0.14517026877638606
	.quad	0x3fdf30e9ad322402              # double 0.48736040033014671
	.quad	0x3fc71f77aec29dd0              # double 0.1806478122064008
	.quad	0x3fe431609f2fb7f0              # double 0.63102751818746405
	.quad	0x3fe8006eab8ea1ff              # double 0.75005277163751305
	.quad	0x3fda64f2d625a8ee              # double 0.4124114123611794
	.quad	0x3fd2fc220f22bec2              # double 0.29663897970293018
	.quad	0x3faa65e21ceb1930              # double 0.05155855753905525
	.quad	0x3fe239a7ee18cf6a              # double 0.56953808310798348
	.quad	0x3fe7442348940a2e              # double 0.72706760573811891
	.quad	0x3fd788d6f46d204c              # double 0.3677270304656346
	.quad	0x3fd85cf5213dfa22              # double 0.38067367788599615
	.quad	0x3fe732f8a99d1a2a              # double 0.72497208717033357
	.quad	0x3fe7549ee186d5a8              # double 0.72907966659720547
	.quad	0x3fce044bf663c72c              # double 0.23450612574338814
	.quad	0x3fcb0973008e5d20              # double 0.21122586753038153
	.quad	0x3fbe50c383367350              # double 0.11841985658106791
	.quad	0x3fc3b8628f360f3c              # double 0.15406448357327374
	.quad	0x3fd59c9bc869a930              # double 0.33768362590366774
	.quad	0x3fe32f730b283141              # double 0.59954216174222819
	.quad	0x3fe2ae309ce77cfe              # double 0.58376341481553573
	.quad	0x3fe1da9011a2e482              # double 0.5579300255259485
	.quad	0x3fd12e5d83616272              # double 0.26845491247289666
	.quad	0x3fc8fd899ea59bbc              # double 0.19523735281401666
	.quad	0x3fe7b89eee3f844d              # double 0.74128672154268715
	.quad	0x3fd3cbad63a81116              # double 0.3093064759452927
	.quad	0x3fd3be55c77ba7e4              # double 0.30849213104977324
	.quad	0x3fd10d5da8670dcc              # double 0.26644078679620686
	.quad	0x3fcc797101ee9460              # double 0.22245609850247927
	.quad	0x3fdcdd51cdfac9a0              # double 0.45100827326964499
	.quad	0x3fdc5c242cc9687c              # double 0.44312385915475949
	.quad	0x3fd13a7ae59825ec              # double 0.26919433995553166
	.quad	0x3fc54bbb175e5668              # double 0.16637362137832956
	.quad	0x3feb8712e67af5c2              # double 0.86023850455938367
	.quad	0x3fe917976de7c43f              # double 0.7841298243130338
	.quad	0x3fe25f638edf3415              # double 0.57414415268579211
	.quad	0x3fd1349dec0982e0              # double 0.26883647966864821
	.quad	0x3feb029de28414ea              # double 0.84406942597766244
	.quad	0x3fae0127d9dc7180              # double 0.05860256704747524
	.quad	0x3fd0f1a6b066e8fe              # double 0.26474921442753885
	.quad	0x3fd28a1cce6ec24e              # double 0.28967971953810412
	.quad	0x3fee39c4ab6dc5fb              # double 0.94455178720653465
	.quad	0x3fecdaa0fb436710              # double 0.90168809008466333
	.quad	0x3fe4e28e95669da2              # double 0.65265587978221995
	.quad	0x3fdc9a5496c20efe              # double 0.44691958162751166
	.quad	0x3fee9f78c4815ef3              # double 0.95696676616623078
	.quad	0x3fe4adcec3e6333d              # double 0.64621675740782047
	.quad	0x3fd36ab8dac6c404              # double 0.30338879933248131
	.quad	0x3fe3207a2cde0d5e              # double 0.59771450770532986
	.quad	0x3fd363723b23b742              # double 0.30294471526473299
	.quad	0x3fdcb969c3a7184a              # double 0.44881672007284534
	.quad	0x3fddce5c381b5d7c              # double 0.46572022895039544
	.quad	0x3fe0a4d6f33fb12d              # double 0.5201220274880477
	.quad	0x3fdb5bccb85fc04e              # double 0.42747800832058125
	.quad	0x3fddc51f179055e4              # double 0.46515633870271089
	.quad	0x3fa1f90f505c73a0              # double 0.035103300628384959
	.quad	0x3fe7ce9a7a58f701              # double 0.74397014518737603
	.quad	0x3fdf14c574e8c1ea              # double 0.48564278046526843
	.quad	0x3f446ee6d8c5ec00              # double 6.2357208075469739E-4
	.quad	0x3fd144e2610f441e              # double 0.26982936361770438
	.quad	0x3fe598c5a95b66fa              # double 0.67489893987223515
	.quad	0x3fccab6e0c1b2cc8              # double 0.22398162451859194
	.quad	0x3fe495e5cba14b8b              # double 0.64329805156227005
	.quad	0x3fcb26b2c5bf9580              # double 0.21211847930605288
	.quad	0x3feb8ad60374c2cd              # double 0.86069775271433857
	.quad	0x3fd2781b72a4c080              # double 0.28858076282177336
	.quad	0x3fded1806260341a              # double 0.48153695685397369
	.quad	0x3fee4ac05f3f370c              # double 0.94662493327061403
	.quad	0x3fbb4ec818dcb648              # double 0.10667086226450195
	.quad	0x3fe4f725bd8bb87c              # double 0.65516936321888819
	.quad	0x3f92b6d9aec05c80              # double 0.018275643626193716
	.quad	0x3fdd57a4804879d0              # double 0.45847427871367774
	.quad	0x3fe48919b86a24dc              # double 0.64173589724046165
	.quad	0x3fe53efee629037d              # double 0.66393990471998132
	.quad	0x3fea2ae35566cc95              # double 0.81773535423271204
	.quad	0x3fe4bca26cfc4e4f              # double 0.64802666937107201
	.quad	0x3fd6cae56a4b6fd4              # double 0.35613379841174475
	.quad	0x3fc538602e02ca10              # double 0.16578294989228981
	.quad	0x3fe6fa05f81dea22              # double 0.71802042446444525
	.quad	0x3fe5564eef4f58aa              # double 0.66678568592285115
	.quad	0x3fe240540cb0582a              # double 0.57035257795610517
	.quad	0x3fd42634c1c6fdf0              # double 0.31483191417279865
	.quad	0x3fe1053fc8313120              # double 0.53189076519041478
	.quad	0x3fe401c7555e7692              # double 0.62521711991913009
	.quad	0x3fe18ff1e723dbf6              # double 0.54882140297456661
	.quad	0x3fe6eb16683185d3              # double 0.71619720793040142
	.quad	0x3fcce204547d26a8              # double 0.22564748883660468
	.quad	0x3fc824820e4b6348              # double 0.18861413667652926
	.quad	0x3fc062d74217c6a4              # double 0.12801638343039656
	.quad	0x3fe5a60e899a5ae3              # double 0.67652060390068092
	.quad	0x3fe4113279d4d7ec              # double 0.6270992640991131
	.quad	0x3fdf4a64bf1ed706              # double 0.48891562141521694
	.quad	0x3fe84decd7c32c62              # double 0.75951234952061619
	.quad	0x3fe54b4b4b637a52              # double 0.66544117664654778
	.quad	0x3fd8ad5f917c7d04              # double 0.38558186729092392
	.quad	0x3fe2d58020ea666f              # double 0.58856207302888019
	.quad	0x3fed43df972831dd              # double 0.91453532717565234
	.quad	0x3fe37d0baa991910              # double 0.60901435203484944
	.quad	0x3feda8c9ae978f0f              # double 0.92685398197179036
	.quad	0x3fdfb8a3dc1c4aba              # double 0.49564453597228531
	.quad	0x3fc31c6e64201904              # double 0.14930515183386472
	.quad	0x3fe883d88bc1eb2d              # double 0.76609446808229154
	.quad	0x3feb6424b9d64e20              # double 0.85597454353632329
	.quad	0x3fcf5e721796417c              # double 0.2450697531862821
	.quad	0x3fe1896d27050bbd              # double 0.54802568074261837
	.quad	0x3fd1f5d3aa2d4414              # double 0.28062907809095461
	.quad	0x3fe9329745643862              # double 0.78742564728760223
	.quad	0x3fee7100739ec2d1              # double 0.95129416067183048
	.quad	0x3fd6adcb51fddd9c              # double 0.35435755736349406
	.quad	0x3fe5bfd6091725b2              # double 0.6796674897715802
	.quad	0x3fe96cfe6fe894a8              # double 0.79455491883404239
	.quad	0x3f9264032df98500              # double 0.017959642106124996
	.quad	0x3fecb3f388eb9488              # double 0.89696671240075521
	.quad	0x3fe1709bb1349e79              # double 0.54499611483056676
	.quad	0x3fe750c7c1a33593              # double 0.72861087627249999
	.quad	0x3feb975bbeb79262              # double 0.86222636460713553
	.quad	0x3fd127700cc27046              # double 0.26803208585784366
	.quad	0x3feffd8f13d46695              # double 0.99970201371179945
	.quad	0x3fe8529c0f21c932              # double 0.76008418040718184
	.quad	0x3fd031ae6a334112              # double 0.25303230639566821
	.quad	0x3f8d5c430dbf4900              # double 0.014336131913215144
	.quad	0x3feb8df182613d26              # double 0.86107707466900218
	.quad	0x3fe3b59a70296bab              # double 0.61591836840249437
	.quad	0x3fea94445538dfb3              # double 0.83059898991540704
	.quad	0x3fe5f9dabd4027d9              # double 0.68674981081971531
	.quad	0x3fecd8ebdbcf044d              # double 0.90147965365771088
	.quad	0x3fbab97e317047c8              # double 0.10439289767262416
	.quad	0x3fbeb8b643c7c6e8              # double 0.12000598101419835
	.quad	0x3fea428f28ad6219              # double 0.82062490410595779
	.quad	0x3feaa08a01ecaf49              # double 0.83209705711258508
	.quad	0x3fe70f84c76e5317              # double 0.7206443686614844
	.quad	0x3fe2bd43841c66e4              # double 0.58560348322791045
	.quad	0x3fd5503d2a71ee6c              # double 0.33302239556335311
	.quad	0x3fc41f2e3f3e28b4              # double 0.15720155799892199
	.quad	0x3fe717bd421287c5              # double 0.72164786247980628
	.quad	0x3fe6ff27573e6c04              # double 0.71864668884097727
	.quad	0x3fe4c7117aac89a7              # double 0.64930032691727468
	.quad	0x3fc78fff7e4b0c40              # double 0.1840819708505439
	.quad	0x3fe35b3be8c2d7dd              # double 0.60488696538117959
	.quad	0x3fe1453243505f3f              # double 0.53969681880241882
	.quad	0x3fe1fb59bea6a207              # double 0.56193244205957249
	.quad	0x3fe7b05f1793543b              # double 0.74027971844282747
	.quad	0x3fedd73ea0f0070e              # double 0.9325249808609628
	.quad	0x3feccf3fcd0989a4              # double 0.90029897734011798
	.quad	0x3fee750e48df8aed              # double 0.95178903801965264
	.quad	0x3fd24c862eb23a0e              # double 0.28592066345382328
	.quad	0x3fd6701db8134d32              # double 0.35059302307236628
	.quad	0x3fdcbef2c2cf5734              # double 0.4491545584145229
	.quad	0x3fee33c7c515cff4              # double 0.94382084363178231
	.quad	0x3fd8aeb63ba8806a              # double 0.3856635649299337
	.quad	0x3fe6e6f0e5fa340c              # double 0.71569104115917659
	.quad	0x3fd479b77d91624c              # double 0.31992900145045122
	.quad	0x3fe5afc66ee1b463              # double 0.677706924978008
	.quad	0x3fdbbb6fe1471086              # double 0.43331524848714087
	.quad	0x3fe59b2562baae15              # double 0.67518872530985397
	.quad	0x3fddd2192200474a              # double 0.46594837494295815
	.quad	0x3fecfc97e17fa72d              # double 0.90583414118484529
	.quad	0x3fe50f817b3910a1              # double 0.65814279620146376
	.quad	0x3fc39cd661a13b20              # double 0.15322379843788614
	.quad	0x3fd93867cf5eb7e4              # double 0.39406771899200366
	.quad	0x3feac08727a66d77              # double 0.83600194687043838
	.quad	0x3fef929f3f0eb59a              # double 0.98664820018682353
	.quad	0x3fc1d0e473a6e288              # double 0.13918738982262746
	.quad	0x3fee8ef8bd78b733              # double 0.95495259290848933
	.quad	0x3feb70d24be96fa3              # double 0.85752215220007988
	.quad	0x3fe9ecc89de37f14              # double 0.81015425527218321
	.quad	0x3fc7aa0fa212f350              # double 0.18487735189219245
	.quad	0x3feb6e7755d07f84              # double 0.85723463783868725
	.quad	0x3feceaff49ea46c2              # double 0.90368618427802283
	.quad	0x3fc87c57889db4cc              # double 0.19129461451249197
	.quad	0x3fe41c29bb9e4db8              # double 0.62843786853993944
	.quad	0x3fd15578b9d126e6              # double 0.27084177156630884
	.quad	0x3fe85c4688e148a6              # double 0.76126410230996977
	.quad	0x3fdeb22f947229e2              # double 0.47962560173678359
	.quad	0x3fc633640c66c200              # double 0.1734433231881809
	.quad	0x3fe3563da0724b76              # double 0.60427743279647816
	.quad	0x3fe931a244420983              # double 0.7873088200724826
	.quad	0x3fe57cfbb3824848              # double 0.67150673923811954
	.quad	0x3feffc7e98ada172              # double 0.9995720846173255
	.quad	0x3fa5cfccfdb811b0              # double 0.042601018878517194
	.quad	0x3f98397b1029df80              # double 0.023656771527810871
	.quad	0x3fe9cf170292ca68              # double 0.80652952673547151
	.quad	0x3fdc5fc93c27afc2              # double 0.44334631800188273
	.quad	0x3fee03b274e1852f              # double 0.93795130565937324
	.quad	0x3fda6d47ccf980b4              # double 0.41291995064785714
	.quad	0x3fb7a446e7ddba90              # double 0.092350417716924093
	.quad	0x3fe88b8925035d5b              # double 0.76703316907052554
	.quad	0x3fd946b1f461780e              # double 0.39493988862329921
	.quad	0x3fe01162ea81dfe2              # double 0.50212236215793049
	.quad	0x3fde3d9d9159378c              # double 0.47251071161451175
	.quad	0x3fdccb326f7ca9aa              # double 0.4499021614780313
	.quad	0x3fe86ee1b4a723a4              # double 0.76353535922782045
	.quad	0x3fca7f57eab93e48              # double 0.20701121293176272
	.quad	0x3fe0dbee947bfa32              # double 0.52684716225468819
	.quad	0x3fec4a6000699340              # double 0.88407898026034815
	.quad	0x3fec6a3aeab89363              # double 0.88796754688210588
	.quad	0x3fe97281e46cf338              # double 0.79522795309421834
	.quad	0x3fd17be17c3acabc              # double 0.2731860840969309
	.quad	0x3fdfb31807bdd394              # double 0.49530602222449116
	.quad	0x3fe8f96017c7f93f              # double 0.7804413284755255
	.quad	0x3fd29948a1d2d4d2              # double 0.29060569575387973
	.quad	0x3fe86f0c64d4dc26              # double 0.76355571454667337
	.quad	0x3fd58e7671176324              # double 0.3368202309043673
	.quad	0x3fd2226cd449efea              # double 0.28335114222841062
	.quad	0x3fdc1ea53a3b372a              # double 0.43937044798518576
	.quad	0x3fe3b310dcae9acd              # double 0.61560862638438041
	.quad	0x3fe92fb8ceb81bdb              # double 0.78707542776907802
	.quad	0x3fc4757080b4bb30              # double 0.1598339680144476
	.quad	0x3fc7d647dfb13250              # double 0.18622682974309379
	.quad	0x3feac96c16a3af53              # double 0.83708767339474333
	.quad	0x3fe28a65c986a709              # double 0.57939423904937926
	.quad	0x3fdb43611d9433ee              # double 0.42598750961843634
	.quad	0x3fcd0cd6b356b0e8              # double 0.22695430523652438
	.quad	0x3fe50097da821eb6              # double 0.65632240941427855
	.quad	0x3fe2d4351a5092e8              # double 0.58840422763441058
	.quad	0x3fe11a6b5f392df0              # double 0.53447502706825212
	.quad	0x3faca5c1a6306e20              # double 0.055952121292843993
	.quad	0x3fdc5b705111594e              # double 0.44308097759985265
	.quad	0x3fdce338912f6ec4              # double 0.45136846712351208
	.quad	0x3fef81904dac8328              # double 0.98456587954215013
	.quad	0x3fd47eaeb0644cbc              # double 0.32023207879792515
	.quad	0x3fea2cddcf08953c              # double 0.81797686039195793
	.quad	0x3fe39083555009c0              # double 0.61139074957491601
	.quad	0x3fee4385512304e0              # double 0.94574228140859517
	.quad	0x3fb9ad9f1f22cc78              # double 0.10030550489573098
	.quad	0x3fd69523d5921776              # double 0.35285278183470525
	.quad	0x3fdeb61ed76bda82              # double 0.4798657516215955
	.quad	0x3fcb4cfe0a3e8518              # double 0.2132871198673818
	.quad	0x3fd2d058bb0190d0              # double 0.29396646749797828
	.quad	0x3fd49363799e2d2a              # double 0.32149588467355505
	.quad	0x3feaa4ac5ce9ae14              # double 0.83260172030481038
	.quad	0x3fd0881616ebf2ac              # double 0.25830604780621047
	.quad	0x3fc8243624231a20              # double 0.18860508694179234
	.quad	0x3fe728b6913821a7              # double 0.72371986735474969
	.quad	0x3fe6111801ca21a3              # double 0.68958664273764148
	.quad	0x3f8c96ffb7f469c0              # double 0.013959882546761615
	.quad	0x3fce601bb0820564              # double 0.23730798834371136
	.quad	0x3feecbe992b3b7ba              # double 0.96239164974917135
	.quad	0x3fd1ceacd0cf9a06              # double 0.27823944465345141
	.quad	0x3fdf9cad6d7a4a0e              # double 0.493937832748231
	.quad	0x3fe6657c91bbfa6e              # double 0.69988850082138554
	.quad	0x3fc55d611ac3ca04              # double 0.16691221053004324
	.quad	0x3feac672badda39d              # double 0.83672462937566972
	.quad	0x3fd302dcc140c32a              # double 0.29704970238076334
	.quad	0x3fedcc657d413b40              # double 0.9312007376082434
	.quad	0x3f985f93fff2d320              # double 0.02380210160909535
	.quad	0x3fdf15db8cc752d8              # double 0.48570908306036875
	.quad	0x3fdb5855087339e4              # double 0.42726636719899447
	.quad	0x3fce45b9da961818              # double 0.23650286839637213
	.quad	0x3fed8aae8841a2d7              # double 0.92317892658783307
	.quad	0x3fe837dc02ee6f35              # double 0.75681877682243359
	.quad	0x3fe2f24c1ccced31              # double 0.59207730889412435
	.quad	0x3fe8671876e68c3b              # double 0.76258490774888033
	.quad	0x3fce2d58d09dae20              # double 0.2357588785774718
	.quad	0x3fe8fcf3b595d266              # double 0.78087792840831294
	.quad	0x3fc7544971dbf904              # double 0.18225973186049071
	.quad	0x3fd030bb6b15ce5a              # double 0.25297437150513746
	.quad	0x3fd6c378852d216c              # double 0.35568058972832861
	.quad	0x3fe5fb1d3424b46c              # double 0.68690357383969802
	.quad	0x3fccbd0aecb74218              # double 0.224519124587929
	.quad	0x3fe4962575ff2971              # double 0.643328409635883
	.quad	0x3fedfee712f8dd10              # double 0.93736604409687807
	.quad	0x3fee3f124152a6f5              # double 0.94519913442965608
	.quad	0x3fb76917e52aa460              # double 0.091447347115392486
	.quad	0x3fb8d00fb1e232f0              # double 0.096924763611422326
	.quad	0x3fd502db3eb3dbf4              # double 0.3282993423776468
	.quad	0x3fdfaed866b4410a              # double 0.49504671125124899
	.quad	0x3faaf96a381459a0              # double 0.052684134812966521
	.quad	0x3fe120443541b27f              # double 0.53518877412496113
	.quad	0x3feed935b6bce3b8              # double 0.96401487055765411
	.quad	0x3fe7b105f2a39f4c              # double 0.74035928144892571
	.quad	0x3fe6c3d04bcbd2c1              # double 0.71140303424780182
	.quad	0x3fe160b3a67f167c              # double 0.54305441397509879
	.quad	0x3fe65d8f7045ba30              # double 0.6989209358997126
	.quad	0x3fdf4fb31ed19f8a              # double 0.48923948297169118
	.quad	0x3fe88fcf5449cb94              # double 0.76755491697837152
	.quad	0x3fddab9ae79b0354              # double 0.46359894387938039
	.quad	0x3fb32541c5e992a0              # double 0.074787245577292882
	.quad	0x3fecc09423a4e7c2              # double 0.89850813829183829
	.quad	0x3fdc688cb893d34e              # double 0.44388120675221365
	.quad	0x3fd14eca13b1453c              # double 0.27043392108051356
	.quad	0x3fe4eeb1362135f1              # double 0.65413723537647972
	.quad	0x3feff48746181a78              # double 0.99859965982689313
	.quad	0x3fe6b4ae20e33868              # double 0.70955568717341766
	.quad	0x3fd2255dc930c5c0              # double 0.28353066108237712
	.quad	0x3fee4d49ec3bc7a6              # double 0.9469346631942599
	.quad	0x3fe267812e076249              # double 0.5751348399163102
	.quad	0x3fe533ee24cbf169              # double 0.6625891417202584
	.quad	0x3fb444e812e90d68              # double 0.07917643033674937
	.quad	0x3fee6c9e0041130f              # double 0.95075893449447502
	.quad	0x3fe445f1943f7187              # double 0.63353804545072101
	.quad	0x3fd9cdf92ec3018a              # double 0.40319661680771246
	.quad	0x3feaf942c6842ca6              # double 0.84292734883037634
	.quad	0x3fe5c1266df2506f              # double 0.67982789491590079
	.quad	0x3fdac1475ae0e890              # double 0.41804679751261009
	.quad	0x3fb77407a6fce8d0              # double 0.091614225643670055
	.quad	0x3fd7638b3c5600b2              # double 0.36545067684347565
	.quad	0x3fb63d5ecda1cbd0              # double 0.08687393684685607
	.quad	0x3fee7493f2231ab7              # double 0.95173070232779977
	.quad	0x3fefb0613861202d              # double 0.99028073321915643
	.quad	0x3fe09150e7b84363              # double 0.51773877389687717
	.quad	0x3fcbfd0c436de748              # double 0.21865990917631906
	.quad	0x3fcfc6ed647c2338              # double 0.2482582798623072
	.quad	0x3fe2bdef8d25b119              # double 0.58568551605052044
	.quad	0x3fc4b204136ce55c              # double 0.16168261478905321
	.quad	0x3fedaefa0b01e2f3              # double 0.92760946416737367
	.quad	0x3fd82445f6950bbe              # double 0.37721394615453707
	.quad	0x3fa2f8e01eeb9e70              # double 0.037055019163571568
	.quad	0x3fb29f105a6726c0              # double 0.072739622183827457
	.quad	0x3fef546025c1f346              # double 0.97904975294623209
	.quad	0x3fef0d36dc68c653              # double 0.9703630738133121
	.quad	0x3fdbbcd13e0a9e90              # double 0.43339949663866495
	.quad	0x3fe4242cb04592b4              # double 0.62941584041671783
	.quad	0x3fe87ae8dd739d00              # double 0.76500361683147844
	.quad	0x3fd49cdf93b6006c              # double 0.32207478928467626
	.quad	0x3fca2c8374ea82d4              # double 0.20448344429771359
	.quad	0x3fe3b57b3f27c0ce              # double 0.61590349516884557
	.quad	0x3fd077e44b3859e8              # double 0.25731761308398271
	.quad	0x3fed4c77583bd73e              # double 0.91558425171999835
	.quad	0x3fe65e0f2f2c5ffd              # double 0.69898184979956535
	.quad	0x3fb7f444dbcb34f0              # double 0.093570998821821183
	.quad	0x3fde6043c305a7d8              # double 0.47462553067327695
	.quad	0x3fb230c3bfe41388              # double 0.07105658945881832
	.quad	0x3fd896350b9bd456              # double 0.38416792043364489
	.quad	0x3fe5b67930ba4997              # double 0.67852458493352941
	.quad	0x3fb009f1f8b10278              # double 0.062651751723942328
	.quad	0x3fd26c2a791a63c2              # double 0.28785192324135889
	.quad	0x3fb95eb2a40c46d0              # double 0.099101223994036091
	.quad	0x3fe7f5b7c3f6ff14              # double 0.7487448527753906
	.quad	0x3fd5e21f1202d9b2              # double 0.34192635306262809
	.quad	0x3fe762cfee6ef745              # double 0.73081204003367672
	.quad	0x3fe732fbc74485dc              # double 0.72497357291666331
	.quad	0x3fe4ef9c8eeb657c              # double 0.65424945749252528
	.quad	0x3fefb0b56c2fdd59              # double 0.99032088403957196
	.quad	0x3fe7412791c87070              # double 0.72670343850360375
	.quad	0x3fe6f6c2f20841d6              # double 0.71762225410389635
	.quad	0x3fba8fde75f511f8              # double 0.10375776653115298
	.quad	0x3fee47321949efde              # double 0.94619088114950123
	.quad	0x3fe3095399afd626              # double 0.59488849656071774
	.quad	0x3fe0de59cf53637d              # double 0.52714243405635808
	.quad	0x3fc452a8e8e93d78              # double 0.15877257702457448
	.quad	0x3fe55c2f6e00e7fa              # double 0.66750308499399513
	.quad	0x3fec0aa4ee52b2f1              # double 0.87629934833020517
	.quad	0x3feffdaedac42c40              # double 0.99971716621201522
	.quad	0x3fe1cd97029964f3              # double 0.55634642131476963
	.quad	0x3fc01ac22c7af944              # double 0.12581660434620734
	.quad	0x3fd63c5317aed158              # double 0.34743192017346791
	.quad	0x3feb501a88cf080a              # double 0.85352827759220529
	.quad	0x3fec4bc8c672efd7              # double 0.884251010509156
	.quad	0x3fef0a5de2e1b149              # double 0.97001547158064582
	.quad	0x3f84777b071338c0              # double 0.0099935161146301743
	.quad	0x3fecf48dead3600e              # double 0.90485282768622866
	.quad	0x3fd8195ac1b2d734              # double 0.37654751697424449
	.quad	0x3fd0bbf4a4b07b72              # double 0.26147190173099155
	.quad	0x3fd33c90f031b4de              # double 0.30057166534863977
	.quad	0x3fd0c20653a9a058              # double 0.26184232874084534
	.quad	0x3fc529b2ca20e058              # double 0.16533503408004679
	.quad	0x3fe71dd5d0590dbd              # double 0.722391993455339
	.quad	0x3fe2debb93f4ca8a              # double 0.58968905351351109
	.quad	0x3fd5f479ea7956ae              # double 0.34304664514398098
	.quad	0x3fbea8eedd9d1f80              # double 0.11976521406643137
	.quad	0x3fe33702a4a2cb8a              # double 0.60046512752011094
	.quad	0x3fe1590772af0eed              # double 0.54211780928787123
	.quad	0x3fd99f8bb72b7a14              # double 0.4003629006164442
	.quad	0x3fe773811ed90106              # double 0.73284965538917457
	.quad	0x3fe7e8fa5c462a1e              # double 0.74718969366341859
	.quad	0x3fe8a14ab87df668              # double 0.76968894990541248
	.quad	0x3fe6ce87dc73ab01              # double 0.7127112680148856
	.quad	0x3fee163df960886d              # double 0.94021509844266193
	.quad	0x3fe26c13e1bf67f6              # double 0.57569307414382709
	.quad	0x3fe9782ff6906896              # double 0.79592130810785267
	.quad	0x3fd454c70b191706              # double 0.31767440875806618
	.quad	0x3fd609a5df738bca              # double 0.34433886357708998
	.quad	0x3fc4152d15e2fcf0              # double 0.15689624375043065
	.quad	0x3fe28f2356f33a75              # double 0.57997290594523909
	.quad	0x3fe62fe1985ba1e4              # double 0.69334487683687174
	.quad	0x3fd1668080575334              # double 0.27188122304260109
	.quad	0x3fec622b626ae5c0              # double 0.88698357793980875
	.quad	0x3fec3f7bb5e6ad86              # double 0.88274941947513308
	.quad	0x3febebc9a55437b5              # double 0.87253267565551218
	.quad	0x3fc3322c5a46becc              # double 0.14996866615319104
	.quad	0x3fe6b2e32153e9a5              # double 0.70933681973774709
	.quad	0x3fe7db59f1df166d              # double 0.74552628746523697
	.quad	0x3fb3a39157b4ad98              # double 0.076714595711271705
	.quad	0x3fe4209e99cb63e3              # double 0.62898187673556227
	.quad	0x3fe8f8d371671f5c              # double 0.78037426136959764
	.quad	0x3fec43759fe853d2              # double 0.88323479873599298
	.quad	0x3fe9e3aba9e50d51              # double 0.80904181654515572
	.quad	0x3fd5c733c650884c              # double 0.34028334013612915
	.quad	0x3fdf74098bdaba04              # double 0.49145735414177261
	.quad	0x3fca7c5d6adde308              # double 0.20692031591513449
	.quad	0x3fd8e89b0b9c0ed2              # double 0.38919712194204437
	.quad	0x3fe683aa49496792              # double 0.70357240976157898
	.quad	0x3fe27cb62a682717              # double 0.57772358210169983
	.quad	0x3fe5d26127966e66              # double 0.68193109256703788
	.quad	0x3fd03bf09d1befbc              # double 0.25365844099701085
	.quad	0x3fea157513b82ca3              # double 0.81511930324031245
	.quad	0x3fab2fba47019430              # double 0.053098508041138692
	.quad	0x3fbee12ba7613f90              # double 0.12062332950995214
	.quad	0x3fdc759b004a76a4              # double 0.44467806843190716
	.quad	0x3fd8fa51ab941fe0              # double 0.39027826076244132
	.quad	0x3fd6666f0f80fb8e              # double 0.35000206483885499
	.quad	0x3f9da151e230d100              # double 0.028935698919853259
	.quad	0x3febb28c3213641f              # double 0.86554536610049471
	.quad	0x3fcd20eb35e30128              # double 0.22756710177601147
	.quad	0x3fcfebbcbe7a4b50              # double 0.24938163090390697
	.quad	0x3fe57f8edfe1dcf3              # double 0.67182105757720334
	.quad	0x3fe996359f3fc97f              # double 0.79958611586907569
	.quad	0x3fe244cbc493edfd              # double 0.57089794534789429
	.quad	0x3fd8ae7430f37efe              # double 0.38564781933199288
	.quad	0x3f92bf338c8968e0              # double 0.01830750031727113
	.quad	0x3fe05ff37c672678              # double 0.51171278283545885
	.quad	0x3fe9e0333747cb73              # double 0.80861817166292693
	.quad	0x3fccabfc7481e798              # double 0.22399860085334633
	.quad	0x3fe74e2ae91f9c43              # double 0.72829194576196021
	.quad	0x3fea70bf18f9fdc8              # double 0.82626299741962672
	.quad	0x3fdf84fabb02a270              # double 0.49249141943668118
	.quad	0x3fdb5fa89deabd46              # double 0.42771354123666006
	.quad	0x3fe03749dc2989ff              # double 0.50674908638421801
	.quad	0x3f8d9d5efe7dd080              # double 0.014460317746604057
	.quad	0x3fee012d965e9e98              # double 0.93764380806983904
	.quad	0x3fed0f97f10ea223              # double 0.90815350610234125
	.quad	0x3fe74175cc173b9d              # double 0.72674074040866155
	.quad	0x3fe20d6e64720781              # double 0.56413955324408971
	.quad	0x3fd38946d0e2fad8              # double 0.30525370024763054
	.quad	0x3fcdf8dda96449c4              # double 0.23415728350717135
	.quad	0x3fcb3e873ab49180              # double 0.21284571043464595
	.quad	0x3fe2f8d455092759              # double 0.59287468536897869
	.quad	0x3fe740860292a9f0              # double 0.72662640097160924
	.quad	0x3fd2f40d3663f204              # double 0.2961457282215465
	.quad	0x3fd36c35079fc2ec              # double 0.30347944016015904
	.quad	0x3fec29eebfe5916b              # double 0.88011872749170317
	.quad	0x3fdbc9efe71107aa              # double 0.43420026364412456
	.quad	0x3fdff3c81507e7fc              # double 0.49925424627110693
	.quad	0x3fec4807147fdaa4              # double 0.88379243854327116
	.quad	0x3fe950754e31b66c              # double 0.79107156059553807
	.quad	0x3fef32501a2cc756              # double 0.97489171135223773
	.quad	0x3fe34f72d24c2abf              # double 0.60344830583320419
	.quad	0x3fe00d72074e4cd4              # double 0.50164128710675948
	.quad	0x3fd83f32c380900a              # double 0.37885731784831533
	.quad	0x3fe6bc635c1e3758              # double 0.71049659721186753
	.quad	0x3fecf7e633294d7f              # double 0.90526113502930616
	.quad	0x3fb3cb3b0d96c7f0              # double 0.077319804017662141
	.quad	0x3fdb52891edbe4f8              # double 0.42691257489748535
	.quad	0x3fb742c4991ac0b8              # double 0.090862548235920992
	.quad	0x3fdf33a4e57a986e              # double 0.48752710733459181
	.quad	0x3fe436353d8eaa1a              # double 0.63161718390375943
	.quad	0x3fe0eba13856ee89              # double 0.52876339916061099
	.quad	0x3fb71168d4c14a08              # double 0.090109397833011085
	.quad	0x3fd2d89646f3fdfe              # double 0.29446942261708375
	.quad	0x3fef43dc7bb99139              # double 0.97703384556783767
	.quad	0x3fe06f9e51405767              # double 0.51362529630089859
	.quad	0x3fd1dceff4692818              # double 0.27910994404067102
	.quad	0x3fe7013bd394f161              # double 0.7189005978066626
	.quad	0x3fe2bb02d47058f2              # double 0.58532849781002327
	.quad	0x3fe44f0f41728818              # double 0.63465082915013493
	.quad	0x3fdf50c05a067322              # double 0.48930367270968322
	.quad	0x3fecac6fd9fab655              # double 0.89604942869272952
	.quad	0x3fe3b7e439403fb8              # double 0.6161976926978161
	.quad	0x3fe71af8dd41c6ab              # double 0.72204249586339608
	.quad	0x3fda1484d65f1aa0              # double 0.40750237402645872
	.quad	0x3fdda23ad2bea3b8              # double 0.46302671986137112
	.quad	0x3fd28224e12bdfe2              # double 0.2891933630885416
	.quad	0x3fb8670dc0565d48              # double 0.095322474915851108
	.quad	0x3fc24b31248e3bfc              # double 0.14291967663709204
	.quad	0x3fc4079edde9a1dc              # double 0.15648256145074313
	.quad	0x3fee92a72c83695e              # double 0.95540198034295165
	.quad	0x3fd09916866e9f4a              # double 0.25934374931465654
	.quad	0x3fce4c3de8dc5bb8              # double 0.23670171613841062
	.quad	0x3fce18a4ee868328              # double 0.23512708327054921
	.quad	0x3fe109849085827c              # double 0.53241184450969525
	.quad	0x3fda0349ac82583a              # double 0.40645067068669827
	.quad	0x3fe4a168748b3a31              # double 0.64470312845680244
	.quad	0x3fee5d29966010af              # double 0.94887236948172482
	.quad	0x3fb1c90406a3bbc0              # double 0.069473506566040122
	.quad	0x3fd0c2662e1a6432              # double 0.2618651819444181
	.quad	0x3fec30b163b5157f              # double 0.88094396089643101
	.quad	0x3fe82722e3b818df              # double 0.75477737881081086
	.quad	0x3fe0a134e4245087              # double 0.51967854079204379
	.quad	0x3fdc4ad17c134e2a              # double 0.44206654659976385
	.quad	0x3fe561c82ea2fbd2              # double 0.66818627461167979
	.quad	0x3fe897890a4690e3              # double 0.76849796301806028
	.quad	0x3fe82378c3d4239f              # double 0.7543300461558039
	.quad	0x3fdb2fa27b322350              # double 0.42478239088864189
	.quad	0x3fed40b63d4b8204              # double 0.91414939853353915
	.quad	0x3faad4588b7c2390              # double 0.052401320483176694
	.quad	0x3feab61c59f3dcdf              # double 0.8347303158651832
	.quad	0x3fed2ccaf720e5e6              # double 0.91171787516867364
	.quad	0x3fe68f76380c829e              # double 0.70501242587132018
	.quad	0x3fedef6e557a76b7              # double 0.93547741599078094
	.quad	0x3fd50598b5971c60              # double 0.32846658452439748
	.quad	0x3fd0f7c9f917a214              # double 0.26512383771344727
	.quad	0x3fc77a199a6e3a7c              # double 0.18341369667583141
	.quad	0x3fed761bfc58f314              # double 0.92066764151204205
	.quad	0x3fe61db53ad32a9c              # double 0.69112645615799151
	.quad	0x3fc9d7d3ee7090a4              # double 0.20189904348911114
	.quad	0x3fbe10c4021d4020              # double 0.11744332362764043
	.quad	0x3fe8fd1bdd29f7fe              # double 0.78089707561571209
	.quad	0x3fdc2464cf9c2eea              # double 0.43972130083487448
	.quad	0x3fe9468ecde056e1              # double 0.78986301622600419
	.quad	0x3fccd180034fc4f8              # double 0.22514343415927107
	.quad	0x3fd93d2ab553a9ba              # double 0.39435832698532247
	.quad	0x3fe20d690849b839              # double 0.56413699740165335
	.quad	0x3fcb2ad346a1ec50              # double 0.21224442433217172
	.quad	0x3fc0fae23bac3648              # double 0.1326563636179563
	.quad	0x3fe63b634b224b55              # double 0.69474949526407193
	.quad	0x3fe12453117068c2              # double 0.53568414121698305
	.quad	0x3fde9af532352542              # double 0.47820787337385096
	.quad	0x3fbbc10efb00ff60              # double 0.10841458919548819
	.quad	0x3fe4ba2fab5aef68              # double 0.64772780864539659
	.quad	0x3fd535aa6f232fd4              # double 0.33140049794451198
	.quad	0x3fd975ba90d2233e              # double 0.39781059401189001
	.quad	0x3fda6e65df4030f8              # double 0.41298815538244993
	.quad	0x3fe1c78cda424aa6              # double 0.55560915592862581
	.quad	0x3fda7bf33f11d77e              # double 0.41381531867170185
	.quad	0x3fd1faf6d18c9002              # double 0.28094263519074059
	.quad	0x3f86818f2a154940              # double 0.010989302131439005
	.quad	0x3fdaa44060a4f070              # double 0.41627511442107501
	.quad	0x3fa2a5c040455390              # double 0.036420829625661288
	.quad	0x3fe722ffcb233322              # double 0.72302236247341889
	.quad	0x3fe7201ab8ef6a9d              # double 0.72266899223480474
	.quad	0x3fe1a3b50a7929f4              # double 0.55123378797116951
	.quad	0x3fe7b0ccaa2e1ef5              # double 0.74033196676552271
	.quad	0x3fe77631634db610              # double 0.73317784686304499
	.quad	0x3fea323dc4d1dc71              # double 0.8186329692970401
	.quad	0x3fefc16588b0b868              # double 0.99235798547102849
	.quad	0x3fcfcf661eb8c604              # double 0.24851681232534883
	.quad	0x3febd0367585ce45              # double 0.86916659310959032
	.quad	0x3feea0e06dc73e29              # double 0.95713826600144103
	.quad	0x3fdd4917379a835e              # double 0.45758610181842652
	.quad	0x3feec420483725b6              # double 0.96144117455076272
	.quad	0x3fe7aa04be751f9b              # double 0.73950421522839649
	.quad	0x3febc5d11c58e4ea              # double 0.86789756332941903
	.quad	0x3fe6692303e7cb84              # double 0.70033407938750303
	.quad	0x3fcd5c857953aab4              # double 0.22938602852021506
	.quad	0x3fd1923b2cf718bc              # double 0.27455024138579254
	.quad	0x3fbbeba215d91220              # double 0.10906422646900937
	.quad	0x3fdcf1979dcd34ce              # double 0.45224562082587461
	.quad	0x3fe73fcf7b2bb4dc              # double 0.72653936440260791
	.quad	0x3fec55fc18764245              # double 0.88549618509029726
	.quad	0x3fd7370835d06e46              # double 0.36273389106074594
	.quad	0x3feefd2de7caaf12              # double 0.96840567848036785
	.quad	0x3fba10db1c14c1d8              # double 0.1018197005803424
	.quad	0x3fe1fdd4855f7349              # double 0.56223512696633648
	.quad	0x3fee4d6fbadabef6              # double 0.9469526910306445
	.quad	0x3fe65cb709573869              # double 0.6988177473483691
	.quad	0x3fdcedc2a27d0934              # double 0.45201173656473093
	.quad	0x3fe7c05ec84ba7e4              # double 0.7422326957723695
	.quad	0x3fe0b6572675b19f              # double 0.52225835334461468
	.quad	0x3fd52677f0267778              # double 0.33047293140577194
	.quad	0x3fd4985863cd6fb6              # double 0.32179841753326899
	.quad	0x3fe136a2abfa7aad              # double 0.53791936482942548
	.quad	0x3fcb08b0c8fa8458              # double 0.21120271504790611
	.quad	0x3fdd3e324b04a8d0              # double 0.45692117048259906
	.quad	0x3fd3d9ab24e17cd2              # double 0.31016043283120809
	.quad	0x3fe523802a028578              # double 0.66058357434319159
	.quad	0x3fe0a709d26ef6df              # double 0.520390425684777
	.quad	0x3f7c021af855fe00              # double 0.0068379453199436391
	.quad	0x3fe29673886bae02              # double 0.58086563725140672
	.quad	0x3fdb8907ac7ca664              # double 0.43023864597726047
	.quad	0x3feaaaa56182bcdc              # double 0.83333081288392518
	.quad	0x3fd01658d37b981e              # double 0.25136395123115729
	.quad	0x3fe593a27a3bf7f9              # double 0.67427181123616642
	.quad	0x3fde2772f17df798              # double 0.47115777571877393
	.quad	0x3fdb147e936ae358              # double 0.42312588115924177
	.quad	0x3fea8a97973782af              # double 0.82941798719919813
	.quad	0x3fdc60925bf7291e              # double 0.44339426976206819
	.quad	0x3fd290be4daf6ea4              # double 0.29008443438008613
	.quad	0x3fd0c5e5d07d3dd6              # double 0.26207871780658587
	.quad	0x3fb0110e9431ece0              # double 0.062760268383431406
	.quad	0x3fe230aa2b6de4e7              # double 0.56844051821022112
	.quad	0x3feca1f94e760e91              # double 0.89477219891019122
	.quad	0x3fd93014bfb78140              # double 0.39355963442178066
	.quad	0x3fbe06900f20f520              # double 0.117287639325657
	.quad	0x3fb84e7d22bd74e8              # double 0.094947644216023641
	.quad	0x3fdddf2ee8ee61b6              # double 0.46674702403245349
	.quad	0x3fc24f9d417cdcfc              # double 0.14305463502544302
	.quad	0x3fe14b85880c33e5              # double 0.54046894618806773
	.quad	0x3fe0210c51fa2109              # double 0.50403419505258384
	.quad	0x3fefd9366d37c128              # double 0.99526521045303173
	.quad	0x3fc3d321a10fb574              # double 0.15488071789097158
	.quad	0x3fee4b7a04fdf18c              # double 0.94671345686906382
	.quad	0x3fa995a785295940              # double 0.049969897275035979
	.quad	0x3fd695536fde84dc              # double 0.35286413120964055
	.quad	0x3fe2e950c2abe293              # double 0.59098089238894358
	.quad	0x3fde242778b755d2              # double 0.47095667637526362
	.quad	0x3fec40606988a006              # double 0.88285847293900654
	.quad	0x3fe24779b73b23d1              # double 0.57122503077800435
	.quad	0x3fe72d427bea2955              # double 0.72427486612404357
	.quad	0x3fb9ede2ef4366b0              # double 0.10128610936535654
	.quad	0x3fdbc616eb029848              # double 0.43396542501648527
	.quad	0x3fd13b5dd7864d98              # double 0.26924844786955182
	.quad	0x3fdf1dd111b765ce              # double 0.48619486551396285
	.quad	0x3fe90b8c3caec4d9              # double 0.78265964366996876
	.quad	0x3fc6f48b4836dcec              # double 0.17933789278115542
	.quad	0x3fbb12399cd0d918              # double 0.10574684217940378
	.quad	0x3fbf00c9c3bca418              # double 0.12110577610714335
	.quad	0x3fc485c0f1ea0f30              # double 0.16033183872434043
	.quad	0x3fa469dca849f6a0              # double 0.039870162528115261
	.quad	0x3fed9c751fc39762              # double 0.92534881786262368
	.quad	0x3fd7abfb3274586e              # double 0.36987190177149543
	.quad	0x3fe87b1221443a88              # double 0.76502329347006626
	.quad	0x3faf177084b10fc0              # double 0.060725704381666912
	.quad	0x3fe60e62239e1369              # double 0.6892557807592371
	.quad	0x3fc20442c4ba8900              # double 0.14075502973452814
	.quad	0x3fd036d16e9e8996              # double 0.2533458309427713
	.quad	0x3fd4d9ea0fd09f1e              # double 0.32580043358255917
	.quad	0x3fd7e7f698fad07a              # double 0.37353291453769766
	.quad	0x3fe98a8cf91ef988              # double 0.79816292435116143
	.quad	0x3fcc9da53ba24100              # double 0.22356095706755497
	.quad	0x3fe7c9c711712a6a              # double 0.74338105589533865
	.quad	0x3fe76af22df8c31c              # double 0.7318049333462997
	.quad	0x3fe92f41fbad4037              # double 0.78701876788728142
	.quad	0x3fa9c1a3c5c66b60              # double 0.050305478947129556
	.quad	0x3f9335a9a6ea24c0              # double 0.018759394467029678
	.quad	0x3fcb04f559a89730              # double 0.21108881833895898
	.quad	0x3fe0bbc3444b6fbc              # double 0.52292025889209226
	.quad	0x3fefd549c3b32c31              # double 0.99478615019450533
	.quad	0x3fdbe2e81781281e              # double 0.43572428031314014
	.quad	0x3fcbadb285e8d3fc              # double 0.21623832262562803
	.quad	0x3fe53cd28f112bd0              # double 0.6636746210364155
	.quad	0x3fab133a344e0570              # double 0.052881068119868924
	.quad	0x3fec779bbbe0ee52              # double 0.88960062689825237
	.quad	0x3fcad915d10a79fc              # double 0.20974991519047126
	.quad	0x3fecee61583fd1a8              # double 0.90409915195646295
	.quad	0x3fe54f0fb0afd359              # double 0.66590103634971876
	.quad	0x3fe756bb4e06e122              # double 0.72933736075996003
	.quad	0x3fe326cf8350ff27              # double 0.59848762176259107
	.quad	0x3feaa60d4884de0c              # double 0.83277000583524474
	.quad	0x3fdb5f193ab4d920              # double 0.42767935498285858
	.quad	0x3fdb446c8b903d4e              # double 0.42605126981012098
	.quad	0x3fd4e7a4031d2dba              # double 0.32663822464084158
	.quad	0x3fefa1b3a2496740              # double 0.98848897644641198
	.quad	0x3fe0dddc410d8705              # double 0.52708256440766432
	.quad	0x3fce01db42d6aefc              # double 0.23443165553668865
	.quad	0x3fad1b85e5431df0              # double 0.056850609050851264
	.quad	0x3fcae134d15ed028              # double 0.20999775145685473
	.quad	0x3fc66657a33d01a4              # double 0.17499824019070076
	.quad	0x3fe77ea478dce5e5              # double 0.73420928579360789
	.quad	0x3fddbe47ceca2308              # double 0.46473879999443612
	.quad	0x3fe8f615f360bbbd              # double 0.7800397637819213
	.quad	0x3fb78e2f212eaba8              # double 0.092013307191037286
	.quad	0x3fb44928374af0e0              # double 0.079241288661197284
	.quad	0x3fd604d242be0008              # double 0.34404427068511767
	.quad	0x3fd54097961dbfaa              # double 0.33206739101205562
	.quad	0x3fc96d5df806f13c              # double 0.19865011797618048
	.quad	0x3fe7ca6286bc30f9              # double 0.74345518413022582
	.quad	0x3fe99cd05afcf7d9              # double 0.80039232035755525
	.quad	0x3fe6200199e19815              # double 0.69140701346327893
	.quad	0x3fc0dcaa1af8e328              # double 0.13173414532664052
	.quad	0x3fd942868bfd147e              # double 0.39468539877663733
	.quad	0x3fe5464010073e06              # double 0.6648254693081419
	.quad	0x3fea2239dfc1f336              # double 0.81667798712405815
	.quad	0x3fe44110be57f314              # double 0.63294255424952661
	.quad	0x3fe4f4617ca806c3              # double 0.65483164164489727
	.quad	0x3fed770c10e0b77c              # double 0.92078212067075027
	.quad	0x3fe9f25ffb5a1d16              # double 0.81083678333462461
	.quad	0x3fee69b2ab543714              # double 0.95040257895172652
	.quad	0x3fdb45536cfd86f8              # double 0.42610631602848015
	.quad	0x3fed047bc68783e6              # double 0.90679730201020159
	.quad	0x3fe1651d40862f65              # double 0.5435930500257028
	.quad	0x3fee00636494ee49              # double 0.93754739422679123
	.quad	0x3fee6e709088ef87              # double 0.95098140935395825
	.quad	0x3fd5a37a6652f4da              # double 0.33810291283209681
	.quad	0x3fdc6f0f5a8708da              # double 0.44427856293272117
	.quad	0x3fe4dfb2812605be              # double 0.652306797259534
	.quad	0x3f90204c2de6ab80              # double 0.015748205472543741
	.quad	0x3fed313bee2d7e68              # double 0.91226002234539028
	.quad	0x3feb4e2194c7ed3c              # double 0.85328749712736096
	.quad	0x3fc1d89162730d20              # double 0.13942162806606806
	.quad	0x3fec8e8dcc472c75              # double 0.89240159891177362
	.quad	0x3fee982856ae127b              # double 0.95607392244035283
	.quad	0x3fe6cf2a9a1ee5b3              # double 0.71278886892030469
	.quad	0x3fb74fbec4ce6a78              # double 0.091060565040985142
	.quad	0x3fe5822b2d1fdc21              # double 0.67213972867364558
	.quad	0x3fb0bd003f6362b0              # double 0.065383925891533634
	.quad	0x3fc082090320f9ec              # double 0.12896835949682328
	.quad	0x3fd8dc0224190fb0              # double 0.38842824483094329
	.quad	0x3fab41ca1cdfb920              # double 0.053236309075020083
	.quad	0x3fda4e2704c2499c              # double 0.4110200449441892
	.quad	0x3fe834b06e82e33a              # double 0.75643178543314282
	.quad	0x3fef94ff323b914e              # double 0.98693809329101057
	.quad	0x3fdcb59fd2d5cb88              # double 0.44858546819084966
	.quad	0x3fd3bc434955e4b8              # double 0.30836565171882624
	.quad	0x3fd3f8dd64fa082a              # double 0.31206450329784963
	.quad	0x3fca0ba5b46db88c              # double 0.20348044691076372
	.quad	0x3fde08dbb4586808              # double 0.46929066287850718
	.quad	0x3fe2394a83ab1792              # double 0.56949353901358024
	.quad	0x3fe343535c791ec5              # double 0.60196846066624998
	.quad	0x3fd4aa218ac3629a              # double 0.32288397360893273
	.quad	0x3fe15e64dc2e0b62              # double 0.54277270320777071
	.quad	0x3fa0d5aedc9c8780              # double 0.032880272321803794
	.quad	0x3fda6ec852e04f46              # double 0.41301162808780523
	.quad	0x3fd806dad0450f02              # double 0.37541838015407347
	.quad	0x3fe56092fbd3169a              # double 0.66803883728489954
	.quad	0x3f975a328c03ce80              # double 0.022805013461904
	.quad	0x3fed3c0227534f5a              # double 0.91357524567363702
	.quad	0x3fe8839e335092d5              # double 0.76606664678964853
	.quad	0x3fe72b638e4de4d7              # double 0.72404649537852606
	.quad	0x3fe5b2a6a3131958              # double 0.67805797434338455
	.quad	0x3fb1b911bbf33258              # double 0.069230183016040114
	.quad	0x3f839c023fc0e500              # double 0.0095749068933508319
	.quad	0x3fcca4e20120f3b0              # double 0.22378182463753893
	.quad	0x3fe0d9dc91f75d85              # double 0.52659443387067084
	.quad	0x3fe84a7fba533040              # double 0.75909410850136538
	.quad	0x3fd22d4d086a81ec              # double 0.28401494809989347
	.quad	0x3fdac9a4ed04551c              # double 0.41855738779243423
	.quad	0x3feaee96ee5d9f7f              # double 0.8416247039394732
	.quad	0x3fc2b7e1fb8fc3b0              # double 0.14623665602951297
	.quad	0x3fe7f76b2028f978              # double 0.74895244866620114
	.quad	0x3fb350c34d55ec98              # double 0.075451094036838362
	.quad	0x3f845d1bb5df7b80              # double 0.0099432148817280019
	.quad	0x3fc79cfe5871d574              # double 0.18447856253230166
	.quad	0x3fec89006b5ee1f5              # double 0.89172383280589307
	.quad	0x3fc222a501fe4618              # double 0.14168226811720852
	.quad	0x3fb65b19a6aed6e8              # double 0.08732757872970931
	.quad	0x3fc18d42a4af6404              # double 0.13712342301622027
	.quad	0x3fdce3dc2e6b3b06              # double 0.45140747578709328
	.quad	0x3fcf3718cde95d9c              # double 0.24386892370487778
	.quad	0x3fe8c63f11b44119              # double 0.77419999559245689
	.quad	0x3fd5cb6e93a5604a              # double 0.34054150026850449
	.quad	0x3fc1a88421c4a348              # double 0.13795520447572529
	.quad	0x3fedbc4dd4c090d4              # double 0.9292363314930534
	.quad	0x3fe57d590f66e726              # double 0.67155125625797463
	.quad	0x3feab4679e0afaf3              # double 0.83452206485512048
	.quad	0x3fc9e84216230c90              # double 0.20240045624641256
	.quad	0x3fd17f0eca4477d4              # double 0.27337999108010291
	.quad	0x3feef38c60cbfcd1              # double 0.96723002343778763
	.quad	0x3fe0af911ce047e2              # double 0.52143149986136117
	.quad	0x3fd69d4559b11684              # double 0.35334905394515936
	.quad	0x3fe9de49d1b4289a              # double 0.80838480909121135
	.quad	0x3fcc6747eec3cd18              # double 0.2219018855899797
	.quad	0x3fdeff5064c7fce0              # double 0.48433313218988694
	.quad	0x3fde8b95cb5133c8              # double 0.47726960044093092
	.quad	0x3fe9e1b5b176eafb              # double 0.80880245839156772
	.quad	0x3fb5827ffb32acc0              # double 0.084022520854591498
	.quad	0x3fd3017ba22a942a              # double 0.29696551167063723
	.quad	0x3fe8e12a5044f738              # double 0.77748599698654797
	.quad	0x3feb8d1ff397a2b0              # double 0.86097714974046902
	.quad	0x3fe5e2fa312808f0              # double 0.68395719147545542
	.quad	0x3fc31a05360c37c0              # double 0.14923157824563127
	.quad	0x3fe11431c6c87ef6              # double 0.53371514153329147
	.quad	0x3fd1800aed7125f8              # double 0.27344010532087237
	.quad	0x3fd2b2b037276536              # double 0.29215627084848295
	.quad	0x3fed4293041e694c              # double 0.9143767433591079
	.quad	0x3fefa3adf79bf908              # double 0.98873041497407232
	.quad	0x3fc0f323b86bbea4              # double 0.13242002968717259
	.quad	0x3fba3d03934bbda8              # double 0.10249349924173734
	.quad	0x3fbcc64c14587c00              # double 0.11240077492446687
	.quad	0x3f6e11ddac3a3f00              # double 0.0036706285043875964
	.quad	0x3fd1e030a1f6d554              # double 0.27930846993270575
	.quad	0x3fe37116e223e341              # double 0.60755485694890166
	.quad	0x3fbfabcc79563128              # double 0.12371519052812074
	.quad	0x3fc09ca285075bdc              # double 0.12978011603874406
	.quad	0x3fc9ea6359fe05b0              # double 0.20246545690683382
	.quad	0x3f698bd7d0341500              # double 0.0031184401610767631
	.quad	0x3fef181e1f79d75e              # double 0.97169405124325769
	.quad	0x3fc03b294f2d7f20              # double 0.12680546156024608
	.quad	0x3fe08b6c5956e70e              # double 0.51701943825830354
	.quad	0x3feb530dda26673e              # double 0.85388844115661988
	.quad	0x3fbeaa57ed8cc5c8              # double 0.11978673505361492
	.quad	0x3feea55918d2b4cd              # double 0.95768408630615343
	.quad	0x3fef87ade4a8882a              # double 0.98531241092519406
	.quad	0x3fed98762060535d              # double 0.924861014590174
	.quad	0x3f97dbb781769180              # double 0.023299090649417931
	.quad	0x3faa1bfd21c1d080              # double 0.050994787569750066
	.quad	0x3fcca1bf01dd257c              # double 0.22368609992035349
	.quad	0x3fd71a6cd790336c              # double 0.36098786402799621
	.quad	0x3fe6ad2d0c54a9b7              # double 0.70863964470236496
	.quad	0x3fec55fd0b52b5ca              # double 0.88549663745441731
	.quad	0x3fd91bac3c01dcc4              # double 0.39231401310048519
	.quad	0x3f8dee7d5d7de480              # double 0.014615039268152552
	.quad	0x3fe5b48aab40dece              # double 0.67828877876214633
	.quad	0x3fc27216933ca300              # double 0.1441066950731269
	.quad	0x3fd80429f4ac9eb6              # double 0.37525414365743914
	.quad	0x3fc2746bba9352ac              # double 0.14417788133746023
	.quad	0x3fecf9ab65fc98d1              # double 0.90547723693159743
	.quad	0x3feba0e9ffe9f1f6              # double 0.86339282973454945
	.quad	0x3fcb1934bef76524              # double 0.21170672726183526
	.quad	0x3fedf3d5f28bebb2              # double 0.93601510403038035
	.quad	0x3feac414aee3b1f6              # double 0.83643564375012036
	.quad	0x3f7ca4db3c447680              # double 0.0069931568034725666
	.quad	0x3fe477b59a2f26e8              # double 0.63961296190356354
	.quad	0x3fb988315e82dc50              # double 0.099734387945191516
	.quad	0x3fdd6de3ca1d8f98              # double 0.4598321412834081
	.quad	0x3fbdfccd14f0bd18              # double 0.11713868867149235
	.quad	0x3fd810b84fcfebe8              # double 0.37602050584945212
	.quad	0x3fe15101c600c48d              # double 0.54113854095898406
	.quad	0x3fb5fe7f8d7c4598              # double 0.085914585153906819
	.quad	0x3fcfa27322de5cf8              # double 0.24714507296150834
	.quad	0x3fe684437eed2ff9              # double 0.70364546575865383
	.quad	0x3fe6ea2faf2c29f1              # double 0.71608719075567084
	.quad	0x3fd9fbe899e9666a              # double 0.40600028067055993
	.quad	0x3fce37e030d53aac              # double 0.2360801924173378
	.quad	0x3fe4768e6540f23c              # double 0.63947219635117092
	.quad	0x3fdf1b33beb300fc              # double 0.48603528616878555
	.quad	0x3fe5ebd275da1950              # double 0.6850368787570833
	.quad	0x3fe677cd67148dd2              # double 0.70212431080693194
	.quad	0x3feb8bed82d16c01              # double 0.86083102751160834
	.quad	0x3f9ea567ca8dbf40              # double 0.029927846658608148
	.quad	0x3fed37a240dd99c0              # double 0.91304123562877493
	.quad	0x3fefce5eafa49c66              # double 0.99394163422847437
	.quad	0x3fe1fc6d1c3749bc              # double 0.56206374655658164
	.quad	0x3fa69ad63a8834f0              # double 0.044150061268831808
	.quad	0x3fe7f37b44e52064              # double 0.74847186523494402
	.quad	0x3fd13de2af20ba42              # double 0.26940219023063972
	.quad	0x3fb687b6d2477df0              # double 0.088008333528243332
	.quad	0x3feff1fe830156b4              # double 0.99829030596693835
	.quad	0x3fd25878ab94f296              # double 0.28664986377752066
	.quad	0x3fe5919e7221457c              # double 0.67402574816712457
	.quad	0x3fdf33ec2f59f602              # double 0.48754410385285507
	.quad	0x3fe2793244567df4              # double 0.57729447695959246
	.quad	0x3fe30de7d81dd33d              # double 0.59544746599440368
	.quad	0x3f94550513ea2540              # double 0.019855574932568176
	.quad	0x3feb29115c76c38e              # double 0.84876316127166418
	.quad	0x3fd5b38064907fe6              # double 0.33908090420481896
	.quad	0x3fdccf9dbbe1c4c2              # double 0.45017188403933173
	.quad	0x3fc53129d961d800              # double 0.16556285013547267
	.quad	0x3fe77d760a07d41b              # double 0.73406507453057956
	.quad	0x3febea05acc62412              # double 0.87231715912742147
	.quad	0x3fd0ab3a3df2ded6              # double 0.2604508976905725
	.quad	0x3fed2f75c7f11568              # double 0.91204346705550865
	.quad	0x3fd0d25e4f3faade              # double 0.26283986796503978
	.quad	0x3fe48a063ce9e669              # double 0.64184867760850495
	.quad	0x3fe15cffff1d3844              # double 0.54260253741245679
	.quad	0x3fc967c284b0e2e4              # double 0.19847899893809207
	.quad	0x3fdd4caa10a116ba              # double 0.45780421852064601
	.quad	0x3fee24b4c554c0ee              # double 0.94198072949623479
	.quad	0x3fe43ad6f0e71808              # double 0.6321825699931205
	.quad	0x3fbda6d5aceadb10              # double 0.11582694503418289
	.quad	0x3fe3ae5ed9fac67b              # double 0.61503546308649903
	.quad	0x3fca2f170b427ff4              # double 0.20456207322877129
	.quad	0x3fd48f46f93c2320              # double 0.32124494876238607
	.quad	0x3fc9e3be29820804              # double 0.202262659328028
	.quad	0x3fe01eb270230622              # double 0.50374719526024969
	.quad	0x3fd358cd650c72a6              # double 0.30229506366758085
	.quad	0x3fdbc108c8846674              # double 0.43365687925106688
	.quad	0x3fda89ab793789a4              # double 0.41465269887535272
	.quad	0x3fe9f22a6a77c5b0              # double 0.81081124109748792
	.quad	0x3fec8d6c97dfb287              # double 0.89226369536261607
	.quad	0x3fd745fa0573d08a              # double 0.36364603550396934
	.quad	0x3fe23a1549c356ad              # double 0.56959022909969337
	.quad	0x3fc4e32d73d39f50              # double 0.16318290858839157
	.quad	0x3fd35213c41ab3d8              # double 0.30188459540187074
	.quad	0x3fe188bd16956c0f              # double 0.54794172678828257
	.quad	0x3fe09fa18450ace1              # double 0.51948619692612052
	.quad	0x3fdb54cdc781ea30              # double 0.42705101473953544
	.quad	0x3fef50dc9bffaeeb              # double 0.97862081974514347
	.quad	0x3fe0fb9aa9010e6f              # double 0.53071339615457969
	.quad	0x3fe0089278986ad9              # double 0.50104640535149791
	.quad	0x3fe793f41f54f9cb              # double 0.73681074256438117
	.quad	0x3fd995987ea1fcfa              # double 0.39975559584122744
	.quad	0x3fe533ca94262d87              # double 0.66257218299271947
	.quad	0x3fe5171bae38ccae              # double 0.65907081630429842
	.quad	0x3fefd774306901b5              # double 0.99505052046884279
	.quad	0x3fedf7353047f7b8              # double 0.9364267294874855
	.quad	0x3fe6f2eebb7ba458              # double 0.71715485208290897
	.quad	0x3fe7d9be6f79381c              # double 0.74533006450815575
	.quad	0x3fdeb11ebfaae40e              # double 0.47956055371793205
	.quad	0x3fe5cb43c0af20f0              # double 0.68106258042919698
	.quad	0x3fe365bda81bf4b7              # double 0.60616953691319153
	.quad	0x3fe5284dc19cd1e2              # double 0.66116988959271006
	.quad	0x3fe5d2386eb0a9d9              # double 0.68191167468222169
	.quad	0x3fd2723711fa65f2              # double 0.28822113757777779
	.quad	0x3fe58af4937d4c65              # double 0.67321232611210446
	.quad	0x3fefbec8123eeb9f              # double 0.99203876079205943
	.quad	0x3fec0b0430948f17              # double 0.87634477127400856
	.quad	0x3fee953ff7ba811a              # double 0.95571897873381606
	.quad	0x3fafb80e49c60ce0              # double 0.061951109414644767
	.quad	0x3fdadba984a13250              # double 0.41965711547962758
	.quad	0x3fe016244ccc8061              # double 0.50270285606167076
	.quad	0x3fe84f7fad20c4f9              # double 0.75970443548263156
	.quad	0x3fe9afa36a6ff2df              # double 0.80269022739920703
	.quad	0x3fe2e417857e7b8d              # double 0.5903432471567257
	.quad	0x3fedd9283889f13e              # double 0.93275843661061919
	.quad	0x3fe38e7580adf36e              # double 0.61114001400674822
	.quad	0x3fece17893608500              # double 0.90252331528259333
	.quad	0x3fe8c4aaafc4813d              # double 0.77400717095955651
	.quad	0x3fe223ce1eb8f46b              # double 0.5668707466171673
	.quad	0x3fed5cfe3b5e38ca              # double 0.91760169596980146
	.quad	0x3fe907846ceb57ee              # double 0.78216763757040808
	.quad	0x3feb08761e1efa4d              # double 0.84478288538941515
	.quad	0x3fc92f2999057b0c              # double 0.19675178500889279
	.quad	0x3fdf633472bdb1cc              # double 0.49042998509574143
	.quad	0x3fd9fe0ca02f8980              # double 0.40613093989500015
	.quad	0x3f9459c6c5281440              # double 0.019873719962579139
	.quad	0x3fd00d9a94795b68              # double 0.25083031176966708
	.quad	0x3fea03ae203fc9a2              # double 0.8129492406717882
	.quad	0x3fc342f3d2aa4c34              # double 0.15048072611225083
	.quad	0x3fdedefe8c87dc3e              # double 0.48236049388600921
	.quad	0x3fb18a81bdc5b230              # double 0.068519696074596181
	.quad	0x3fee93c157913956              # double 0.95553652861580463
	.quad	0x3fdcc257279f1538              # double 0.44936159962920241
	.quad	0x3fb3fd17fe40c1b0              # double 0.078080653737521599
	.quad	0x3fd40943afa1832e              # double 0.31306545402007913
	.quad	0x3fe5669d0b32324b              # double 0.66877605616316183
	.quad	0x3fdf540b44f42824              # double 0.48950463994754245
	.quad	0x3fc133925f60d430              # double 0.13438634545460237
	.quad	0x3fda0e180742536c              # double 0.40711022099394856
	.quad	0x3fe885636ba279b0              # double 0.76628275892635678
	.quad	0x3feb3b190d71dba7              # double 0.85096409440926812
	.quad	0x3fe58484b30f8208              # double 0.6724265572811996
	.quad	0x3fe54bfe0d79ddc3              # double 0.66552641517676425
	.quad	0x3fc3f72381e4d384              # double 0.15597957460854783
	.quad	0x3fcaa65b1e9573b0              # double 0.20820178025578917
	.quad	0x3fe0b51a2186fa01              # double 0.52210718677798706
	.quad	0x3fac558d4bbfd680              # double 0.055340209480999825
	.quad	0x3fe68c6bb2f058ce              # double 0.70464119862551811
	.quad	0x3fd2de61c135a400              # double 0.29482311123007321
	.quad	0x3fc475d1d54c91e0              # double 0.15984557070727501
	.quad	0x3fd61092ceae81f2              # double 0.34476156409985415
	.quad	0x3fe4e216fcec9494              # double 0.65259885215040692
	.quad	0x3fd8c19ebc10ea86              # double 0.38681763044193251
	.quad	0x3fcf388d66d21774              # double 0.24391334076443238
	.quad	0x3fdbf8738efe293c              # double 0.43703927005903487
	.quad	0x3fd39cff745fe074              # double 0.30645738949488721
	.quad	0x3fe1781c63882daa              # double 0.54591197433312755
	.quad	0x3fb7d14eed451b28              # double 0.093037541320069139
	.quad	0x3fefbd77df27e8be              # double 0.99187844834457173
	.quad	0x3fe5028a6abe160b              # double 0.6565601429762763
	.quad	0x3fea4b1247d31961              # double 0.82166399029010162
	.quad	0x3fef9fecaf756161              # double 0.98827204007379176
	.quad	0x3fde0d54b0ed6a42              # double 0.46956364896837866
	.quad	0x3fe1b01c76204c8a              # double 0.55274794646756331
	.quad	0x3fe4f95582ddcccb              # double 0.65543628272862386
	.quad	0x3feb25b4ce0364b7              # double 0.84835281598056766
	.quad	0x3f76e0b74059ad00              # double 0.0055853994614196711
	.quad	0x3feeeded35acb7af              # double 0.96654377444587236
	.quad	0x3fe2d190ade79639              # double 0.58808168378590786
	.quad	0x3fedce1e041a8cbb              # double 0.93141079713350139
	.quad	0x3fa52736699f3560              # double 0.041314793008136119
	.quad	0x3fde0245d451a0b8              # double 0.46888871893180406
	.quad	0x3fe88f02ada4800e              # double 0.76745733179632381
	.quad	0x3feb5f526ac3346f              # double 0.85538597919516046
	.quad	0x3feb9aa6c09d0e7c              # double 0.86262834186386738
	.quad	0x3fe1783ef5d6b9e7              # double 0.54592845931420875
	.quad	0x3fc5fbfa71425578              # double 0.17175226717214875
	.quad	0x3fe082c4d85790ce              # double 0.51596300367648396
	.quad	0x3fe0f601ac837e77              # double 0.53003009504386867
	.quad	0x3fe3eb8412b7a344              # double 0.62249950080613603
	.quad	0x3fd52020e43331ce              # double 0.33008596692232295
	.quad	0x3f848fd20de7c140              # double 0.010039940881114817
	.quad	0x3fd9d927834d4498              # double 0.40387904951519138
	.quad	0x3fb3108e730ad8d0              # double 0.074471381269947345
	.quad	0x3fe24b50401f84ae              # double 0.57169353984877147
	.quad	0x3fe4d2ce4434a517              # double 0.65073312112250192
	.quad	0x3fe59e8227d4fc25              # double 0.67559917239839662
	.quad	0x3fe2dbd54cc9dd33              # double 0.58933510778198295
	.quad	0x3fede968c3c3ee10              # double 0.9347423385183351
	.quad	0x3f7d9a290ff3a500              # double 0.007227096938757116
	.quad	0x3fe755f463ab8372              # double 0.72924251047889599
	.quad	0x3fd8d69dc0dfa720              # double 0.38809913478199753
	.quad	0x3fe9482c050b4677              # double 0.79006005273022495
	.quad	0x3fea21294943db01              # double 0.81654800710279585
	.quad	0x3fe3f3f0a3db4631              # double 0.62352783206205775
	.quad	0x3fd55366387a373c              # double 0.33321528926250088
	.quad	0x3fd03f6d70c8f406              # double 0.25387130750806397
	.quad	0x3fd96668f420465c              # double 0.39687560882984996
	.quad	0x3fce3b4b07f9ce20              # double 0.23618448152011329
	.quad	0x3fc5fd5b71635cd4              # double 0.17179434811143912
	.quad	0x3fe69121f7c475f7              # double 0.70521639244151302
	.quad	0x3f9fcff6b3afa060              # double 0.0310667559787422
	.quad	0x3fefa7fe3298256e              # double 0.98925695306495043
	.quad	0x3fca7379861d6b34              # double 0.20664900826053556
	.quad	0x3fc6e1d2ceeab9c8              # double 0.17876658538211943
	.quad	0x3fd91880838617b6              # double 0.39212048381920839
	.quad	0x3fc1b93bc8327c34              # double 0.13846537852529794
	.quad	0x3fecab33afcd4c76              # double 0.89589866958921394
	.quad	0x3fc66de828096d7c              # double 0.17522909121440111
	.quad	0x3fea3019f1db8c08              # double 0.81837174642385069
	.quad	0x3feaa6cbb7bfaba4              # double 0.83286081207676376
	.quad	0x3fee1f4319c56cb5              # double 0.94131617577968163
	.quad	0x3fe53d59fcef5b97              # double 0.66373919869771469
	.quad	0x3fd98b1ecf81f1dc              # double 0.39911623253263229
	.quad	0x3fbbc05673c55630              # double 0.10840359045445136
	.quad	0x3feb235450f80ac9              # double 0.84806266607514502
	.quad	0x3f86939273f040c0              # double 0.011023658908044687
	.quad	0x3f812c362d5688c0              # double 0.0083851082407061516
	.quad	0x3fdcc6c5a46468da              # double 0.44963208249977316
	.quad	0x3fe1fae56db2a19c              # double 0.56187697816226345
	.quad	0x3fc5eef342f63740              # double 0.17135468263261977
	.quad	0x3fb27264c29dea60              # double 0.072058007730370743
	.quad	0x3fbf72fc35870d88              # double 0.12284828478646237
	.quad	0x3fe9f080c809747b              # double 0.81060828275407404
	.quad	0x3fe09e7ecf22f24b              # double 0.51934757667874842
	.quad	0x3fd436a179875380              # double 0.31583439701108063
	.quad	0x3fb9ac52f49eb878              # double 0.10028570625465416
	.quad	0x3fe858050e364e53              # double 0.76074459815795092
	.quad	0x3fe65ad7f73151d5              # double 0.69858930854621326
	.quad	0x3feb4e7d3c3da596              # double 0.85333120122702399
	.quad	0x3fe4ad8679e264a7              # double 0.64618228726898941
	.quad	0x3fe3a7367181ac80              # double 0.61416170281644611
	.quad	0x3fcbbea5c6de3ce8              # double 0.21675560198170918
	.quad	0x3fe4ef797a06cdf1              # double 0.65423272927585974
	.quad	0x3fe0c65bc3174f20              # double 0.52421367744179648
	.quad	0x3fe3a689f5a2a0ef              # double 0.61407945609701453
	.quad	0x3fe5819ee4fc6df9              # double 0.67207283710325705
	.quad	0x3fd20c6898e2c42a              # double 0.28200735979322877
	.quad	0x3fd22405d461bab8              # double 0.2834486555138187
	.quad	0x3fcd86f77cbc12e4              # double 0.2306813582473729
	.quad	0x3fe85a3294572fe5              # double 0.7610104462887618
	.quad	0x3fee21deaf0f9a72              # double 0.94163450423805117
	.quad	0x3fcac5cab12eaf68              # double 0.20916112567408196
	.quad	0x3fb2fd7306e9d198              # double 0.074179829776602424
	.quad	0x3fe44d409dd02f0c              # double 0.63443022559064977
	.quad	0x3fddd9e677bbf5b6              # double 0.46642457669062354
	.quad	0x3fea489bcefe64bd              # double 0.82136335781537861
	.quad	0x3fe4e68983a86240              # double 0.65314174379734169
	.quad	0x3fe3a3c3782dae87              # double 0.61374066803314598
	.quad	0x3fedb6d8500e99c9              # double 0.92856994281901806
	.quad	0x3fd7e8cb0bedb428              # double 0.37358356633086709
	.quad	0x3fe754c1696716df              # double 0.72909613214934754
	.quad	0x3fda29f7846c17ca              # double 0.40881145412310771
	.quad	0x3fe3dc7d362d18a7              # double 0.6206651743057322
	.quad	0x3fb44cf916259bb0              # double 0.079299514681777649
	.quad	0x3fe9c379c9693a2b              # double 0.80511178339094636
	.quad	0x3fdad203b9abd928              # double 0.41906827098809396
	.quad	0x3fbec63652f4ca78              # double 0.12021197819994167
	.quad	0x3fe97822fd5e11e3              # double 0.79591512189705005
	.quad	0x3fd6dd62d9bc4686              # double 0.35726233733394286
	.quad	0x3f9a50dfcbc481a0              # double 0.025699135601031764
	.quad	0x3fefb44594286d90              # double 0.99075583397955036
	.quad	0x3fe025a44187a313              # double 0.50459492491526914
	.quad	0x3fdb901dddcd3e8a              # double 0.43067118320775732
	.quad	0x3fe32cd3cc0dce59              # double 0.5992220864704435
	.quad	0x3fc6a86ef68ee494              # double 0.1770151809594479
	.quad	0x3fe62cb5ea9b5aeb              # double 0.69295783826495716
	.quad	0x3fb6ffc1113eda28              # double 0.089839998922663811
	.quad	0x3fec4b46a172d638              # double 0.88418895275999088
	.quad	0x3fd9584233a7b99e              # double 0.39601187748385225
	.quad	0x3fd759a3c9cb4184              # double 0.36484617906992178
	.quad	0x3fb26d74329dbc68              # double 0.07198263393159865
	.quad	0x3f949bfadd64f900              # double 0.020126266253321923
	.quad	0x3fd2c43286da0e50              # double 0.29322493714446285
	.quad	0x3fdfd17ddc5046cc              # double 0.4971613551616485
	.quad	0x3fe5e8a652804a12              # double 0.68464962113859174
	.quad	0x3fe200833987a1f2              # double 0.56256257282535516
	.quad	0x3fe34ac060b7c5f8              # double 0.60287493601043618
	.quad	0x3fbcb64c5ac9e8d8              # double 0.11215665070077152
	.quad	0x3fc0e5ba12fda1c4              # double 0.13201070716173835
	.quad	0x3fa7e5f7fd492450              # double 0.046676397007623494
	.quad	0x3fe073dbe69f802a              # double 0.51414294284405071
	.quad	0x3fdea7bb3ace5f0c              # double 0.47898751013552565
	.quad	0x3fde7fdb36dbd2ee              # double 0.47655372960370712
	.quad	0x3feedc03a48ee125              # double 0.96435720577486405
	.quad	0x3fe58bb2f7b30390              # double 0.67330311182750968
	.quad	0x3fe055bea46256ea              # double 0.51046688181187716
	.quad	0x3fefbb2881b57dd2              # double 0.99159646352557673
	.quad	0x3fb51efd445af988              # double 0.082504109562227979
	.quad	0x3feccbf0b9a45dd3              # double 0.89989506014074505
	.quad	0x3fe33428d6fec445              # double 0.60011713019606161
	.quad	0x3fe523e56eab2d78              # double 0.66063186278317598
	.quad	0x3febef66ba40cf40              # double 0.87297378900118616
	.quad	0x3fed71b614084549              # double 0.92013076698837282
	.quad	0x3fd09e53fd78cc2e              # double 0.25966357949363583
	.quad	0x3fe56a20ffce805a              # double 0.66920518839107079
	.quad	0x3feb0acfe88bb8ca              # double 0.8450698415670328
	.quad	0x3fd5e6a272d58134              # double 0.34220181669481353
	.quad	0x3feab62ff8c40d91              # double 0.83473967158390583
	.quad	0x3fceac7ce8248728              # double 0.23963891348926691
	.quad	0x3feeb99daf63a7ad              # double 0.96015819793432444
	.quad	0x3fe4ca0c6bdfd9d0              # double 0.64966412610265856
	.quad	0x3fb16a822e231560              # double 0.068031440986563663
	.quad	0x3fe87430dca1ffdd              # double 0.76418345539422783
	.quad	0x3fe80db0c92e06b9              # double 0.75167121212890387
	.quad	0x3fe2b128d0894f7e              # double 0.58412590722808466
	.quad	0x3fd8e652e3c6bdf8              # double 0.38905784839423019
	.quad	0x3fd4592618295900              # double 0.31794121131441955
	.quad	0x3fea184a92422200              # double 0.81546524587707836
	.quad	0x3fe3ceba8a17ca95              # double 0.61898543330456113
	.quad	0x3fd1d46754a69c7e              # double 0.2785890890758721
	.quad	0x3feb6134e3bbea6c              # double 0.85561604003244218
	.quad	0x3f9ad59a9effc4e0              # double 0.026205459551367549
	.quad	0x3feeb7f4cb851529              # double 0.95995559453937062
	.quad	0x3fd7c3ebd501e0ea              # double 0.37133308221338146
	.quad	0x3fe53456c862652d              # double 0.66263903749055475
	.quad	0x3fe901d60849add5              # double 0.78147412890160217
	.quad	0x3fd07a57b64b2706              # double 0.25746720125299338
	.quad	0x3fddf9afa8c37ff2              # double 0.46836463433100939
	.quad	0x3f79f76b3d052d00              # double 0.0063394726751753172
	.quad	0x3fe8ab39e6885232              # double 0.77090163255576827
	.quad	0x3fcc9ee25fb26e98              # double 0.2235987632055767
	.quad	0x3fd9a6fa86bff54e              # double 0.40081656607784033
	.quad	0x3fc68eced1daa7c4              # double 0.17623315092833824
	.quad	0x3faff5474086b980              # double 0.062418200136892033
	.quad	0x3fd4f6f79d4fef28              # double 0.32757368433498124
	.quad	0x3fc12655c3b2716c              # double 0.13398239188689887
	.quad	0x3fe6b114d8ed3f7a              # double 0.70911638611322236
	.quad	0x3fc0420b707f1f1c              # double 0.12701552384373194
	.quad	0x3fd94e7a16ebbb5c              # double 0.39541485060083459
	.quad	0x3fe8e65c1df51f38              # double 0.77812009669376092
	.quad	0x3fce6163b874f7f0              # double 0.23734709269223186
	.quad	0x3fd9e698745a3542              # double 0.40469943392311702
	.quad	0x3fe720ec05e9ace1              # double 0.72276879458277332
	.quad	0x3fd641932fbd9050              # double 0.34775237714916774
	.quad	0x3fa654bf7463f8a0              # double 0.043615324933840016
	.quad	0x3fc77e74a7483a40              # double 0.183546621018154
	.quad	0x3fbc60447ba43aa0              # double 0.1108439256533793
	.quad	0x3fbd0b7fde64ed48              # double 0.11345671824976933
	.quad	0x3fd84e1153f334d8              # double 0.37976487348789822
	.quad	0x3fe9723dc985c0d0              # double 0.79519547805650781
	.quad	0x3fdeb9e1d7fb5d5e              # double 0.4800953492353609
	.quad	0x3fd0dd26f973ad04              # double 0.2634980617574032
	.quad	0x3fe5c9c857f556f3              # double 0.68088166407934947
	.quad	0x3fe1f79185b3e4d7              # double 0.56147075761614473
	.quad	0x3fe1a810ff3f04b3              # double 0.55176591732756319
	.quad	0x3fe410da316a3857              # double 0.62705716754295338
	.quad	0x3fd241ebd1dda222              # double 0.28527350897505432
	.quad	0x3fd8fc553342b82a              # double 0.39040117269439867
	.quad	0x3feb21438461ff0c              # double 0.84781051498427606
	.quad	0x3fed0f6f177abc2c              # double 0.90813402734591397
	.quad	0x3fde5d923a2cb246              # double 0.47446113282311264
	.quad	0x3feb5f3b3384a541              # double 0.8553749090398598
	.quad	0x3fe60fa08270e25a              # double 0.68940759159802245
	.quad	0x3fb1fcdad0736188              # double 0.070264507190023306
	.quad	0x3f9762b7c7eb08a0              # double 0.02283751638129472
	.quad	0x3fe6635534ae3c07              # double 0.69962559022121773
	.quad	0x3fe6f3a899c40902              # double 0.71724348099112967
	.quad	0x3fe9be2da07eb3a8              # double 0.80446511599221981
	.quad	0x3feb5e38c57dff31              # double 0.85525168011370145
	.quad	0x3fec32fbc72fcb8d              # double 0.88122357276584895
	.quad	0x3fef5db3e73ffe73              # double 0.98018832365046504
	.quad	0x3fe136a4b69528ef              # double 0.53792033825564356
	.quad	0x3fd628ba50d9bd00              # double 0.34623582740364611
	.quad	0x3fe273a51453fdc5              # double 0.57661680193262355
	.quad	0x3fec8df83b243691              # double 0.89233027983728352
	.quad	0x3fef39ae6d8853d3              # double 0.97579118149826127
	.quad	0x3fbeaad176031998              # double 0.11979397898821842
	.quad	0x3feb5b65aaf2f2c9              # double 0.854906877407836
	.quad	0x3fe2b07a4526d0c1              # double 0.58404267793823561
	.quad	0x3fe88fead4273f1e              # double 0.76756802974884741
	.quad	0x3fdab6c877f7a2ba              # double 0.41740619388159994
	.quad	0x3feda0ba13c0e549              # double 0.92586997850518415
	.quad	0x3feb2498b7b23057              # double 0.84821735265860354
	.quad	0x3fd5ae56b13d0878              # double 0.3387657862514355
	.quad	0x3fc17ab26122e48c              # double 0.13655690901740447
	.quad	0x3fd0eff92e87068e              # double 0.26464681190200501
	.quad	0x3fe70aa2583c6a93              # double 0.72004811509698852
	.quad	0x3fd4f4fe94d5a806              # double 0.32745327505711008
	.quad	0x3fb6497c96514980              # double 0.087058817576041391
	.quad	0x3fd9eca4668dc46e              # double 0.40506849303262171
	.quad	0x3fea563b7b7098df              # double 0.82302641019193945
	.quad	0x3fe1b025cdf0763b              # double 0.55275240156669925
	.quad	0x3fd275cd2cfb3a2a              # double 0.28844003098211835
	.quad	0x3fe999a9d2b7a4f8              # double 0.8000077357839066
	.quad	0x3fd77764849e5cfe              # double 0.36666214896236216
	.quad	0x3fcc750f1109b8f8              # double 0.22232235271389533
	.quad	0x3feff4442c9dc8c0              # double 0.99856766428117538
	.quad	0x3fe7f8cd3708f76f              # double 0.74912129162815499
	.quad	0x3fd3195b03fdc4f4              # double 0.29842257871412348
	.quad	0x3fe7d929ec9078fe              # double 0.74525924877141825
	.quad	0x3fe7d5dcbef15068              # double 0.74485623639567411
	.quad	0x3fe72bd5851f2b4c              # double 0.72410083771078737
	.quad	0x3feb41cfd936c38c              # double 0.85178368019670491
	.quad	0x3fe0a31704a1832d              # double 0.51990843681787668
	.quad	0x3feb76ad922abdf1              # double 0.85823706196054961
	.quad	0x3fde11e375e04bd8              # double 0.46984182845443234
	.quad	0x3fdcac273d586bc6              # double 0.4480074023319357
	.quad	0x3fe7cc61db3ee378              # double 0.74369900533120781
	.quad	0x3fb80387d4512bf8              # double 0.093803872428153912
	.quad	0x3fb67b290b1dc830              # double 0.087816777433346926
	.quad	0x3fe1580c57d629cc              # double 0.54199807315426929
	.quad	0x3fda6c2d66a5356e              # double 0.41285262130698797
	.quad	0x3fcf1cbeb8e80488              # double 0.24306472805622925
	.quad	0x3fd5f334b797e718              # double 0.34296911171951328
	.quad	0x3fda9070ded2b912              # double 0.4150659729010765
	.quad	0x3fd5fadf3081aade              # double 0.34343700158085066
	.quad	0x3fe60bcd5ad2ec1c              # double 0.6889406942276568
	.quad	0x3fedcb8c88bd8375              # double 0.93109728533828096
	.quad	0x3fb73a12d42e8c78              # double 0.090729882051663213
	.quad	0x3fe20948024b04db              # double 0.56363296935901575
	.quad	0x3fe145268e02a869              # double 0.53969123588946133
	.quad	0x3fecc6dbc491c7b7              # double 0.89927471535178582
	.quad	0x3fe818e1f08b3871              # double 0.75303742390839379
	.quad	0x3feec7d7d01f1892              # double 0.96189489983295773
	.quad	0x3fe8a9a9ac7537ca              # double 0.77071078952007466
	.quad	0x3fe5323e44d99ca4              # double 0.66238320777201354
	.quad	0x3fe8b28a40a2a005              # double 0.77179443954537474
	.quad	0x3febd3e9085119db              # double 0.86961795448660995
	.quad	0x3fede097e3b0097e              # double 0.93366617651217587
	.quad	0x3fb0c2714353c620              # double 0.065466956078829686
	.quad	0x3fe92737b8997436              # double 0.78603731207443306
	.quad	0x3fe43ece59165962              # double 0.63266675376761961
	.quad	0x3fe437a0f0feb45f              # double 0.631790610020868
	.quad	0x3fb59f776570f578              # double 0.084464514032296267
	.quad	0x3fd37a7157863fd0              # double 0.30434831187539846
	.quad	0x3fd2f176ed9f7e1e              # double 0.29598782735226503
	.quad	0x3fe4aa165496af38              # double 0.64576260110104666
	.quad	0x3fd51f24f0766980              # double 0.33002589686079631
	.quad	0x3fe49add0c05f296              # double 0.64390423153197918
	.quad	0x3fb8fe4e4c744378              # double 0.097630399385037481
	.quad	0x3fe10c545709fcd9              # double 0.53275506019408703
	.quad	0x3fea3d546973a1b8              # double 0.81998653980286118
	.quad	0x3fd0b53c6e8a5ac4              # double 0.26106177134481023
	.quad	0x3fec74edd103f242              # double 0.88927355597804358
	.quad	0x3fed7d07d9959299              # double 0.92151253220488905
	.quad	0x3fe3739441a1aea5              # double 0.60785878008524163
	.quad	0x3fd3e05937cb1c9a              # double 0.31056814621519779
	.quad	0x3fc9f1405cccd1b0              # double 0.20267490893605844
	.quad	0x3fafbf5165a8e930              # double 0.062006515178341437
	.quad	0x3fdf2d3a9113ddee              # double 0.48713554542288662
	.quad	0x3fc496c361381080              # double 0.16085092780133792
	.quad	0x3f88b7a027dea340              # double 0.012068988053060559
	.quad	0x3fc955b7f9d2db74              # double 0.19792842577382042
	.quad	0x3fb2ba347fdc5d50              # double 0.073153763977065411
	.quad	0x3fda80fa5f3bc8a8              # double 0.41412219333791223
	.quad	0x3fccbccecd742ef0              # double 0.22451195747304764
	.quad	0x3fea3c5cf738e6d4              # double 0.8198685482559207
	.quad	0x3fdb4e8361d0a1c6              # double 0.42666706611865057
	.quad	0x3fd7db28f1db000a              # double 0.37275146120737246
	.quad	0x3fa300197ffaf770              # double 0.037110134956931939
	.quad	0x3fef56dfee015f5e              # double 0.97935482488081127
	.quad	0x3fd222cba130cb96              # double 0.28337374440450824
	.quad	0x3fec88848a0ca035              # double 0.89166476214177826
	.quad	0x3fd402008a430a2a              # double 0.31262219907890432
	.quad	0x3feac56d505cc9ef              # double 0.83659997649948348
	.quad	0x3fe4884ed91497b5              # double 0.64163916014216815
	.quad	0x3fc8fb0f97e5d9e4              # double 0.19516177098166942
	.quad	0x3fcbf20da7757d50              # double 0.2183243816061613
	.quad	0x3fd10d49797b7a68              # double 0.26643597472676683
	.quad	0x3fe8001d67c3d046              # double 0.75001402155476948
	.quad	0x3fd875a4d0a426d8              # double 0.3821804082404987
	.quad	0x3fdcec528857ca70              # double 0.45192397417773744
	.quad	0x3fdc248c5a330b58              # double 0.43973072823080406
	.quad	0x3fa5fb356747e2a0              # double 0.042932194573898075
	.quad	0x3feaf840d55d2186              # double 0.84280435249915864
	.quad	0x3fe58b80cdbcd091              # double 0.67327919180981344
	.quad	0x3fddc3d6f970ae66              # double 0.46507810935393079
	.quad	0x3fe4e0d5885fa6f5              # double 0.65244557033039874
	.quad	0x3fe5623a0b52c394              # double 0.66824056827145961
	.quad	0x3fc0ee2cf2d5edf0              # double 0.13226854188165715
	.quad	0x3fe9bfdbef501f82              # double 0.80467030278030927
	.quad	0x3fe7598f16ad458b              # double 0.72968248776503353
	.quad	0x3fe3d1b0e74f8905              # double 0.6193470495020682
	.quad	0x3fe624e661c5d331              # double 0.69200438591233226
	.quad	0x3febab63aad21456              # double 0.86467154849436656
	.quad	0x3fd38e71805ef668              # double 0.30556905304169968
	.quad	0x3fdc8c19533742c6              # double 0.44605095984028897
	.quad	0x3fcb3669d96154a8              # double 0.21259806741969567
	.quad	0x3fe7a51e1c7c17fb              # double 0.73890595973421058
	.quad	0x3fa1241579828cb0              # double 0.033478423197516149
	.quad	0x3fb7d70edd699128              # double 0.093125275665049245
	.quad	0x3fe43e99f41f700f              # double 0.63264177017436107
	.quad	0x3fee586931d84d43              # double 0.9482923482450264
	.quad	0x3fce51a1598b0c38              # double 0.23686615822052359
	.quad	0x3fe81cf6d4ccc829              # double 0.75353566706167385
	.quad	0x3fed0135c7d28142              # double 0.90639771487989429
	.quad	0x3fd80b3e5c47c492              # double 0.37568625461342109
	.quad	0x3fe2e88ef78e47ca              # double 0.59088848448504305
	.quad	0x3feb7d0bbf7c43c1              # double 0.85901439094060816
	.quad	0x3fe293b14736adf3              # double 0.58052886876015319
	.quad	0x3fe482e250a66a9b              # double 0.64097705604520472
	.quad	0x3fdef0f645442b12              # double 0.48345715297971126
	.quad	0x3fc96ad4afa5d808              # double 0.19857271744302829
	.quad	0x3fdda65b54615500              # double 0.46327861061338638
	.quad	0x3fdcc1ed165bea68              # double 0.4493363111829809
	.quad	0x3fea043a8c13f26a              # double 0.81301619872062969
	.quad	0x3fc0a098e3d3e9ec              # double 0.12990103840259282
	.quad	0x3febdfd719f4c632              # double 0.87107424802360911
	.quad	0x3fe84e037a10ecac              # double 0.75952314225232475
	.quad	0x3fe9b0530af97b61              # double 0.80277397292580244
	.quad	0x3f6c77b0580fb400              # double 0.0034750408381030162
	.quad	0x3fe89cee23d2f344              # double 0.76915652272109769
	.quad	0x3fec415f04c92c74              # double 0.8829798787568408
	.quad	0x3fef82b3d6c39e32              # double 0.98470489450568821
	.quad	0x3fd91020f928a238              # double 0.39160942394167675
	.quad	0x3fe377c81a428f8f              # double 0.60837178353220789
	.quad	0x3fe1d67232ebc7a0              # double 0.55742750115881634
	.quad	0x3feea4d6d4dc8a8d              # double 0.95762197088727563
	.quad	0x3fef8d7983b94143              # double 0.98601985671306413
	.quad	0x3fc2462d37beec18              # double 0.14276662084543612
	.quad	0x3feaf248d5022155              # double 0.84207574465930668
	.quad	0x3fc4e2fb5668783c              # double 0.16317693442482717
	.quad	0x3fca5ecbf1ce008c              # double 0.20601796442861475
	.quad	0x3fb0b7ef3cf0ff58              # double 0.065306618097563329
	.quad	0x3fe770ce12f24939              # double 0.73252013874506539
	.quad	0x3fd385c71e3007f6              # double 0.30504014919290456
	.quad	0x3fe3fe1b1c7d8169              # double 0.62476878704550842
	.quad	0x3fe4a7b7fbed4fa5              # double 0.64547347263804922
	.quad	0x3fb02ff9b2bf41a8              # double 0.063232046260287889
	.quad	0x3fc9d53a1871a96c              # double 0.20181966966203946
	.quad	0x3fe2d4e6b00cb54f              # double 0.58848890671439757
	.quad	0x3fd10767ba838eea              # double 0.26607697691200249
	.quad	0x3fe449125d12e24b              # double 0.6339198892447454
	.quad	0x3fba13d061f93b10              # double 0.10186483756954723
	.quad	0x3faa28e7605f4fa0              # double 0.051093321336934894
	.quad	0x3fb7475b36d9c980              # double 0.090932560817043039
	.quad	0x3fe69b7c6593ca79              # double 0.70648021544759765
	.quad	0x3f87379bf7f166c0              # double 0.011336534980887492
	.quad	0x3fed66ddcc632dba              # double 0.91880693358819276
	.quad	0x3fe6c75588e14871              # double 0.71183277830483693
	.quad	0x3fde1c7f87be0ae0              # double 0.47048938995446399
	.quad	0x3fe9f96b777cfd0d              # double 0.81169675195261137
	.quad	0x3febce6489549ec4              # double 0.86894442388889858
	.quad	0x3fe6fa4d29577b35              # double 0.71805437159114283
	.quad	0x3fe87fcad8daa0e7              # double 0.76559965471554114
	.quad	0x3feef8a7268814e8              # double 0.96785314107606001
	.quad	0x3fd56032fb1db5aa              # double 0.33399652979900429
	.quad	0x3fc6f1a1bdc25090              # double 0.17924901738718235
	.quad	0x3fee089225915be4              # double 0.93854625070059372
	.quad	0x3fc30386adc50ea4              # double 0.14854510769702245
	.quad	0x3fd897d500354456              # double 0.38426709194488262
	.quad	0x3f7ecfdc629c2600              # double 0.0075224503323254588
	.quad	0x3fc6c31f98f4dfdc              # double 0.17782969444829078
	.quad	0x3fd5d55c0a999204              # double 0.34114743266243885
	.quad	0x3fed15c85102cda1              # double 0.90890899488879395
	.quad	0x3fd90f0c65ad19ac              # double 0.39154348306001441
	.quad	0x3fd44e8f42d84fb6              # double 0.31729489829853763
	.quad	0x3fe9a8d7cec15870              # double 0.80186071760068778
	.quad	0x3fe156e3295b633f              # double 0.54185636594329611
	.quad	0x3fc85002f4e7e9d0              # double 0.18994175871178109
	.quad	0x3fe4257e6cc4f219              # double 0.62957688564307823
	.quad	0x3fc8aa97e3d7d5dc              # double 0.19270609498168667
	.quad	0x3fe3c7a3ae70372a              # double 0.61812004156101819
	.quad	0x3fc071705da7268c              # double 0.12846188137909953
	.quad	0x3f995374dc179060              # double 0.024732423718788588
	.quad	0x3fa6f2de194ada50              # double 0.044821682536554719
	.quad	0x3fe51649f45526a4              # double 0.65897081109251987
	.quad	0x3fd2a22ee90b5b4c              # double 0.29114887960661373
	.quad	0x3fdd2b6d036a4596              # double 0.45577550252445442
	.quad	0x3fda139c080fbe9e              # double 0.40744686877494896
	.quad	0x3fde74543f9aa616              # double 0.47585016452157569
	.quad	0x3fd20c172462e968              # double 0.28198793938977085
	.quad	0x3fcf6b5e295a4340              # double 0.24546410578889244
	.quad	0x3fdba32e3e4db728              # double 0.43183475574811547
	.quad	0x3fd3fd563e54bb80              # double 0.31233745657930712
	.quad	0x3fec629344973e7b              # double 0.88703311344757141
	.quad	0x3fdd7a5a9195e1c6              # double 0.46059288232165974
	.quad	0x3fd046f3ac03977e              # double 0.25433055685277128
	.quad	0x3fde6fabbc23c3e4              # double 0.47556584713953343
	.quad	0x3fe504cf2b031553              # double 0.65683706665792341
	.quad	0x3fea7f564f34a76f              # double 0.8280440852151808
	.quad	0x3fbd39a4bfb8d440              # double 0.11416082077705969
	.quad	0x3feb0a06783f7d21              # double 0.84497378812730883
	.quad	0x3fb4564a0fe149c8              # double 0.079441670300446465
	.quad	0x3fd29de8df3d01d8              # double 0.29088804054847861
	.quad	0x3fe1bb109227d2e3              # double 0.55408505006797915
	.quad	0x3fec6a1ce285e852              # double 0.88795322649753872
	.quad	0x3fdca263404befde              # double 0.44741135863273296
	.quad	0x3fe05ab737fb4955              # double 0.51107369359878396
	.quad	0x3fe313e99b922a4b              # double 0.59618072876885131
	.quad	0x3fe2d1ad885d4f43              # double 0.58809544213952625
	.quad	0x3fddad16e7ea72a0              # double 0.46368954322842093
	.quad	0x3fedcd39bb0a319d              # double 0.93130194216933015
	.quad	0x3fecc4a0db73cdc9              # double 0.89900248395718407
	.quad	0x3fb67ecf932e3128              # double 0.087872479851459517
	.quad	0x3fd41cd17f9b620a              # double 0.31425893270127914
	.quad	0x3fc3d97dc881a568              # double 0.15507480898240122
	.quad	0x3fd52a739bc44232              # double 0.33071603976808028
	.quad	0x3fccdf865c1264c8              # double 0.22557143684097114
	.quad	0x3fdfbdfb68d4290e              # double 0.49597058522398718
	.quad	0x3fea1f224497b46d              # double 0.81630051991454666
	.quad	0x3fba3bebf49cc108              # double 0.10247683259945373
	.quad	0x3fe77c364580b5e4              # double 0.73391259741555048
	.quad	0x3fe83d2898d60658              # double 0.75746564722812604
	.quad	0x3fe5ec7cbfa8dc70              # double 0.68511807855146678
	.quad	0x3fdc9f5eed7f744e              # double 0.44722722237731183
	.quad	0x3feb90f42e7b8316              # double 0.8614445598469469
	.quad	0x3feeccfb696c51c3              # double 0.96252222624257688
	.quad	0x3fe9158543f897db              # double 0.78387702251051949
	.quad	0x3fdf11eb3ff95f04              # double 0.48546868560286804
	.quad	0x3fdc240ea0e70f86              # double 0.43970075333731307
	.quad	0x3fd7bd27eeb32338              # double 0.37092016516230641
	.quad	0x3fedca536955cfaa              # double 0.93094797681123009
	.quad	0x3fc0c6a461febc90              # double 0.13106207642474432
	.quad	0x3fe3851952319b89              # double 0.60999742558929981
	.quad	0x3fe1bf2d9b96d2ce              # double 0.55458717716700234
	.quad	0x3fde065c58771fb2              # double 0.46913822783653381
	.quad	0x3fefabaa2c74f730              # double 0.98970516856181767
	.quad	0x3fd4fae1ebe4d39c              # double 0.3278126529360692
	.quad	0x3fde4d3800f174a6              # double 0.47346305935009025
	.quad	0x3fd0b75f70ddf9a6              # double 0.26119218847443404
	.quad	0x3fe7c6e14d25a830              # double 0.7430273539332628
	.quad	0x3fe0cfca63813463              # double 0.52536506113541426
	.quad	0x3fe416fa3d53761c              # double 0.62780487039316624
	.quad	0x3febe1319d2dbd36              # double 0.87123947810133617
	.quad	0x3fdcf87ce467b050              # double 0.45266649537257297
	.quad	0x3fe8d1d5ee353a19              # double 0.77561470532401977
	.quad	0x3fe686a78b817863              # double 0.70393731353011579
	.quad	0x3fce613826a3b604              # double 0.23734189879125733
	.quad	0x3fb1c799b9a8dfa0              # double 0.069451911761346796
	.quad	0x3fe24ece9bb50a08              # double 0.57212000285682141
	.quad	0x3fd102a2c54d7202              # double 0.26578587787460617
	.quad	0x3feabea4dc950176              # double 0.83577197153503735
	.quad	0x3fecf0009f36cb81              # double 0.90429717155926437
	.quad	0x3fe8fc238c847bf1              # double 0.78077866978480703
	.quad	0x3fc72d156995d2bc              # double 0.18106334357766751
	.quad	0x3fe555de761a69ae              # double 0.6667320543959272
	.quad	0x3fecba98c1de2870              # double 0.89777791847997257
	.quad	0x3fa442570ea6b500              # double 0.039568634546734316
	.quad	0x3fdd51f1a71a2ce2              # double 0.45812646215990871
	.quad	0x3fef318fcfec92e9              # double 0.97480002031497037
	.quad	0x3fbaba729fae1dc0              # double 0.10440746687355951
	.quad	0x3fd525408087c9ca              # double 0.33039867927359678
	.quad	0x3fcc07fbd1f69c44              # double 0.21899364235034302
	.quad	0x3fee06c7ce45672b              # double 0.93832769667935645
	.quad	0x3fd98ad79ae1f24a              # double 0.39909925580267169
	.quad	0x3fe0765d01dc03ff              # double 0.51444864619418229
	.quad	0x3fea1928417d02eb              # double 0.81557095328034046
	.quad	0x3fc5d89af583e768              # double 0.17067276943253806
	.quad	0x3fdfd7a9a01de43e              # double 0.497538000453975
	.quad	0x3fda9d75f5504062              # double 0.4158606429709889
	.quad	0x3fd9edb5a60b330e              # double 0.40513364043435807
	.quad	0x3fdec64d3535fa64              # double 0.48085336872455842
	.quad	0x3f92d6ab017d47e0              # double 0.018397018400101106
	.quad	0x3fa4899055982620              # double 0.040112028549696754
	.quad	0x3fe5193c05919170              # double 0.65933037841436537
	.quad	0x3fc83c29bf1ed300              # double 0.18933603126574639
	.quad	0x3fe084a8bb93080b              # double 0.5161937392770154
	.quad	0x3fee396312c6aed5              # double 0.94450524966438343
	.quad	0x3fd7daaab4b8d58c              # double 0.37272136353143348
	.quad	0x3fec7be1f6db9959              # double 0.89012239660659553
	.quad	0x3fe713c2e092f0c6              # double 0.72116226064783784
	.quad	0x3fd3c5850394d086              # double 0.30893063878762239
	.quad	0x3feea02f81948367              # double 0.9570539027082362
	.quad	0x3fe30a61a3c5879e              # double 0.59501726137772315
	.quad	0x3fe71ac95d91fd5a              # double 0.72201984668201225
	.quad	0x3fe374676faf712d              # double 0.60795947850741572
	.quad	0x3fc49df9860dadbc              # double 0.16107100530221696
	.quad	0x3fd78098c96a83ce              # double 0.36722392720735975
	.quad	0x3fe83880741a8bc2              # double 0.75689718891623436
	.quad	0x3fd2d7222b4698f2              # double 0.29438070512914216
	.quad	0x3fe81756ee928056              # double 0.75284906955858832
	.quad	0x3fb7f092f695f358              # double 0.093514619065854787
	.quad	0x3fe4f4a6d26a5666              # double 0.65486470314745016
	.quad	0x3fe84c347351de14              # double 0.75930235408208313
	.quad	0x3fc3a5f64579b798              # double 0.15350225822788555
	.quad	0x3fea62dd14563bdb              # double 0.82456830951729942
	.quad	0x3fe544f3239b70f5              # double 0.66466671900300744
	.quad	0x3fe98004f1936b09              # double 0.79687735731872167
	.quad	0x3fdd0e65dae63576              # double 0.45400377632980538
	.quad	0x3fe9c5a67dabed42              # double 0.8053772406123374
	.quad	0x3fab393cd7803ff0              # double 0.053171063715239941
	.quad	0x3fe6e222fb4ee225              # double 0.71510457118626347
	.quad	0x3fb5affa146dec80              # double 0.08471644400371936
	.quad	0x3fb585c0f6e5e490              # double 0.084072170522534017
	.quad	0x3fde1858f2e1d24a              # double 0.47023605078655761
	.quad	0x3fe158202eddd1b0              # double 0.54200753358468567
	.quad	0x3fe5bbd758d3cf32              # double 0.67917983388040271
	.quad	0x3fd4b18ceedaadac              # double 0.32333682370764438
	.quad	0x3fc6922b8c8d9ef0              # double 0.17633575785588773
	.quad	0x3fba6a2ff370a458              # double 0.10318278973922312
	.quad	0x3fe722af69e475bf              # double 0.7229840343676911
	.quad	0x3fed46a9c5ef9f27              # double 0.91487587603930798
	.quad	0x3fedf35b388bed7a              # double 0.93595658344513244
	.quad	0x3fc40ce4bb4a0a48              # double 0.15664347786885657
	.quad	0x3fd2fe78466ba4e0              # double 0.29678160550117916
	.quad	0x3fe418913b85e677              # double 0.62799893975825583
	.quad	0x3fd73c6f555f8f08              # double 0.3630636533473397
	.quad	0x3fee685a03059274              # double 0.95023823347271596
	.quad	0x3fe87545a909a8df              # double 0.76431544318372946
	.quad	0x3fae91e513b8bf90              # double 0.059706839234762943
	.quad	0x3fb9fbc3bb7d6490              # double 0.10149787261379317
	.quad	0x3fdda9e4f9e84c3e              # double 0.46349453358670079
	.quad	0x3fe341dcb9de5fdb              # double 0.60178982069464426
	.quad	0x3fe0882c8eb7b27f              # double 0.51662280916714554
	.quad	0x3fed8c2a6408c6e0              # double 0.92336005723901948
	.quad	0x3fa00063f541f5f0              # double 0.03125297898166568
	.quad	0x3fec8cba05166804              # double 0.89217854493767889
	.quad	0x3fd5b940c5eef4ca              # double 0.33943194703517732
	.quad	0x3fe35364ed4457b2              # double 0.60392996159747825
	.quad	0x3fd8d82230e762e8              # double 0.38819174552695168
	.quad	0x3fd3fb680fd83b66              # double 0.31221963450746271
	.quad	0x3fbbd2f45fb59610              # double 0.10868766152051301
	.quad	0x3feb05f6b285c078              # double 0.84447798602742719
	.quad	0x3fed10d625c72705              # double 0.90830523851875056
	.quad	0x3fd89d7409959fa8              # double 0.38461018501265665
	.quad	0x3fed7a98165d6fa6              # double 0.92121509903107746
	.quad	0x3f829663e1dc53c0              # double 0.0090759089758111199
	.quad	0x3feaac4868627205              # double 0.83353062045677062
	.quad	0x3fe2f74e2642374f              # double 0.59268863174814068
	.quad	0x3fe02f5bad34fa5c              # double 0.50578101949197274
	.quad	0x3fe0b0c121d11bd5              # double 0.5215764675602893
	.quad	0x3fe475814d1429e1              # double 0.63934388212629412
	.quad	0x3fd27aae555f854e              # double 0.28873785340518487
	.quad	0x3fd61a136299b498              # double 0.34534153584429239
	.quad	0x3fe4d05495909027              # double 0.65043095790725125
	.quad	0x3fdde85670d90252              # double 0.46730576534540547
	.quad	0x3fef1ae4678c94d8              # double 0.97203273987238514
	.quad	0x3fc017c00bf67efc              # double 0.12572479805111658
	.quad	0x3fc100e61164d20c              # double 0.13283992623622998
	.quad	0x3fd52a5f7bcfeb38              # double 0.3307112416365956
	.quad	0x3fae80f9fc153350              # double 0.05957776262457648
	.quad	0x3fcf8e23ce1bffd8              # double 0.24652526439604006
	.quad	0x3fec7a922bce5ddc              # double 0.88996227794535398
	.quad	0x3fef7dd957613b9b              # double 0.98411242548342003
	.quad	0x3f9a4a30c8068a80              # double 0.025673639496412992
	.quad	0x3fc2b0adb2b542e4              # double 0.14601680017451379
	.quad	0x3fe042418f325f94              # double 0.50808790176505392
	.quad	0x3fe955dda0032f74              # double 0.79173165562086333
	.quad	0x3fe6ee8884a0371f              # double 0.71661783126339518
	.quad	0x3fe1862812855a2f              # double 0.54762652985920635
	.quad	0x3fea3609c2b813ce              # double 0.81909645110192186
	.quad	0x3fea59c3b0bd051a              # double 0.82345757025919686
	.quad	0x3fe8ec54df3c65f5              # double 0.77884906388061259
	.quad	0x3fe6d9e722af7fe7              # double 0.71409947180290778
	.quad	0x3fed41e716d993e3              # double 0.9142947622573242
	.quad	0x3feb91d5b7a156da              # double 0.86155210366515722
	.quad	0x3fe0879782e83c48              # double 0.51655173843199353
	.quad	0x3fe1c74db738d184              # double 0.55557904992615237
	.quad	0x3fd23144baab6ee4              # double 0.28425710896929801
	.quad	0x3fe4afa80391e3ef              # double 0.64644241997950569
	.quad	0x3fe3aa9244cd3ee0              # double 0.61457169950332613
	.quad	0x3fe5fbf750b53bdf              # double 0.68700757754583808
	.quad	0x3fec457d1428029b              # double 0.88348249375129073
	.quad	0x3fe7573e8524f883              # double 0.72939992909211104
	.quad	0x3fecd30e96dcd054              # double 0.90076379266111894
	.quad	0x3febc5a238a306a6              # double 0.86787520467642731
	.quad	0x3fc137c9f1569018              # double 0.13451504024590188
	.quad	0x3fed9897e490f475              # double 0.92487711564866848
	.quad	0x3fbed439c6fec830              # double 0.1204258070781925
	.quad	0x3fd5bd58cb394dea              # double 0.3396818146331656
	.quad	0x3fdfa1067ab7d1ca              # double 0.49420320495781012
	.quad	0x3fee2962f5e41332              # double 0.94255207086152937
	.quad	0x3febb29c1fe5cf8c              # double 0.86555296163577244
	.quad	0x3fc07bf3b00c5334              # double 0.12878271194554147
	.quad	0x3fd7bcd21aaa3352              # double 0.37089970211018397
	.quad	0x3fe5dde681d0443c              # double 0.68333745340544949
	.quad	0x3fa29610374f7900              # double 0.036301142455828384
	.quad	0x3feb7ef138e0ccaa              # double 0.85924588307388672
	.quad	0x3fcfb126ec1fb104              # double 0.24759375123483818
	.quad	0x3fd3dd9446d49304              # double 0.31039912144687798
	.quad	0x3fea737b4d7b3fd9              # double 0.82659688122839292
	.quad	0x3fe630db54605ff5              # double 0.69346395950105821
	.quad	0x3fe6cb2e375df2b4              # double 0.71230231107582265
	.quad	0x3fe6115a355678ad              # double 0.68961821000609336
	.quad	0x3fe5b01983b12c0e              # double 0.67774654122456623
	.quad	0x3feb28fa389d770a              # double 0.84875212724338778
	.quad	0x3fc32bf1647bab30              # double 0.14977853208923753
	.quad	0x3fd667637530a370              # double 0.35006033367476785
	.quad	0x3fe028f25fbf5287              # double 0.50499838543562781
	.quad	0x3feb098438fc77dd              # double 0.84491168146245921
	.quad	0x3fdcf3e306e01a74              # double 0.45238567038942468
	.quad	0x3fdd5f4b418b4c08              # double 0.45894128227990949
	.quad	0x3fea952df15a1fa4              # double 0.83071038378783557
	.quad	0x3fc7892596964a10              # double 0.18387288906940613
	.quad	0x3fe42fe852d80889              # double 0.63084808521695479
	.quad	0x3fbf02bb60192a28              # double 0.12113543602132693
	.quad	0x3fc47f19a57b8d94              # double 0.16012878971296785
	.quad	0x3fde520639dc78e4              # double 0.47375636721143466
	.quad	0x3fea25b0962b6498              # double 0.81710080461484136
	.quad	0x3fdaa9a2658b3918              # double 0.41660365978613489
	.quad	0x3fef52ec958901fc              # double 0.97887257772532576
	.quad	0x3fd5f2e70084abac              # double 0.34295058298692527
	.quad	0x3fe6d6d91d8ea4e0              # double 0.71372657559291142
	.quad	0x3fd0597f4dc6824a              # double 0.25546248049980547
	.quad	0x3fbf185fe88f5750              # double 0.12146567752583093
	.quad	0x3fea1107ad5bad03              # double 0.81457885607724767
	.quad	0x3febe368b3d4e500              # double 0.87150988696444642
	.quad	0x3fedc34c73669b74              # double 0.93009016551228151
	.quad	0x3fb0b075a6a365b8              # double 0.065192559416934581
	.quad	0x3f848689ba609ec0              # double 0.010022235870635554
	.quad	0x3fc4365f294603a0              # double 0.15790929332072512
	.quad	0x3fe74c8d20cd4699              # double 0.72809463888752923
	.quad	0x3fbb2ff289f85d38              # double 0.10620036953365719
	.quad	0x3febc07c0a0ebace              # double 0.86724664654124139
	.quad	0x3fd717154c4c9588              # double 0.36078388644303816
	.quad	0x3fee9a5da29cc7f3              # double 0.95634347686995935
	.quad	0x3fd202b8ff6bb688              # double 0.28141617721016887
	.quad	0x3fe3a54746c664f9              # double 0.61392558882940229
	.quad	0x3feb0bb7b294bfe0              # double 0.84518036727058287
	.quad	0x3fed5d3792153f31              # double 0.91762903720698408
	.quad	0x3fb309f5d4079990              # double 0.074370731606540952
	.quad	0x3fe946fcb4072e18              # double 0.78991542016723582
	.quad	0x3fa0d5737c5ed990              # double 0.032878502780863461
	.quad	0x3fe554e33c71124d              # double 0.66661226086632441
	.quad	0x3fe8db3be8b8d206              # double 0.77676196530825403
	.quad	0x3fb0079304cc64e8              # double 0.062615574523437467
	.quad	0x3fdbd94253c43412              # double 0.43513544254602821
	.quad	0x3fccb8a533cf87c0              # double 0.2243849280339969
	.quad	0x3fef2ddd5a93c2bf              # double 0.9743487137876271
	.quad	0x3fe500f218565086              # double 0.65636543992378971
	.quad	0x3fea96fad0e56a2b              # double 0.83093014526395359
	.quad	0x3fde061e75db0d32              # double 0.46912347325651915
	.quad	0x3fee453357b1e8d8              # double 0.94594733360215865
	.quad	0x3fe3174caa238831              # double 0.59659417371972812
	.quad	0x3fe2c5eece68ddd2              # double 0.58666172327405719
	.quad	0x3fc9164a030a2440              # double 0.19599270962160809
	.quad	0x3fe0bf34876bf672              # double 0.52334047746235357
	.quad	0x3fdf7c406ae5d8be              # double 0.49195871772043265
	.quad	0x3fd31dd8181c7cbe              # double 0.29869654039971383
	.quad	0x3fcfd7a94ee098bc              # double 0.24876896239692836
	.quad	0x3fa63f45d29f8220              # double 0.043451482735467062
	.quad	0x3fe8d018994d1aa8              # double 0.77540235463751106
	.quad	0x3fb6f7f62f373d60              # double 0.089721094634332754
	.quad	0x3fdb1b707b9bdd2a              # double 0.4235497672193157
	.quad	0x3fe11e53cb8fb030              # double 0.53495206602156564
	.quad	0x3fe5b2e4cbbf566c              # double 0.67808761400619977
	.quad	0x3fe9eb0be701a696              # double 0.80994219892928032
	.quad	0x3fea66e5937b4e10              # double 0.82506064229022691
	.quad	0x3fc6064c9edbf188              # double 0.17206723934931412
	.quad	0x3fdc762c72d13f96              # double 0.44471274578699516
	.quad	0x3fe96925c6abd48e              # double 0.79408539584132298
	.quad	0x3fe64ddf00f861c7              # double 0.69700575055599578
	.quad	0x3fedb88a765abc21              # double 0.92877696148014277
	.quad	0x3fbc239fc6ea4e18              # double 0.10991858106927344
	.quad	0x3febb96e46faad0b              # double 0.86638559210897037
	.quad	0x3fea349271343ff5              # double 0.81891748533416708
	.quad	0x3fe2aa874c9de06c              # double 0.58331646885109256
	.quad	0x3fe271797ec482a6              # double 0.57635187873173233
	.quad	0x3fabdfbfdb787690              # double 0.054441447773780571
	.quad	0x3fd0511f5ae846f0              # double 0.25495132329625303
	.quad	0x3fd3dabc09fdf808              # double 0.31022549606120764
	.quad	0x3fe9a1e555a31089              # double 0.80101267553301725
	.quad	0x3fcb76c3e353b660              # double 0.21456192588759659
	.quad	0x3fe9c4aa5077e5dd              # double 0.80525699345087853
	.quad	0x3fd095682bffc968              # double 0.25911907479089402
	.quad	0x3fd3f4e807a580c2              # double 0.31182289835670585
	.quad	0x3fcaf89d2e38e920              # double 0.21071209675739855
	.quad	0x3febe3a4610ea909              # double 0.87153834301469246
	.quad	0x3fe55cf6358931b0              # double 0.66759787040932927
	.quad	0x3fd576b36054b86c              # double 0.33536991507833736
	.quad	0x3fe7ea858babab5c              # double 0.74737813262377584
	.quad	0x3fc38937048aed14              # double 0.15262496682940052
	.quad	0x3fd2319e1a6dac08              # double 0.28427841740511939
	.quad	0x3fe47d80a70e492f              # double 0.64032013538443333
	.quad	0x3fe0c8d4ec589a12              # double 0.52451559220645749
	.quad	0x3fd7a41a97bc694c              # double 0.36939110582320178
	.quad	0x3fe165e6cd21d173              # double 0.54368915619720182
	.quad	0x3feff1de2dde617d              # double 0.99827488859868618
	.quad	0x3fe96018eca20730              # double 0.79298063485496151
	.quad	0x3fe662a04dea1c04              # double 0.69953932969735932
	.quad	0x3fe142d33ccce7f6              # double 0.53940736651497789
	.quad	0x3fcecabd310c03f8              # double 0.24056210417623425
	.quad	0x3f93a8d0876868a0              # double 0.019198663963927332
	.quad	0x3fde39b578650426              # double 0.47227226979527115
	.quad	0x3fe93b7a318ce952              # double 0.78851041486567852
	.quad	0x3fdfab5d8d5290d8              # double 0.49483431626346208
	.quad	0x3fe2276896647eea              # double 0.56731061337992839
	.quad	0x3fbd4eff3de17498              # double 0.11448664913901252
	.quad	0x3feecb704918111f              # double 0.96233381534742423
	.quad	0x3feac718c1caccb9              # double 0.83680379724537268
	.quad	0x3fe219b0f6d0a0c0              # double 0.56563614088101843
	.quad	0x3fa156a309a6ef50              # double 0.033864111831887755
	.quad	0x3fe5820e36da012e              # double 0.67212591851424519
	.quad	0x3fe7e1043af1e8d4              # double 0.74621783745467463
	.quad	0x3fe01cbf7ac58ce8              # double 0.50350927332729345
	.quad	0x3fef9c2d0ca447bf              # double 0.98781444996915712
	.quad	0x3feb703fbb66d7a6              # double 0.85745226480388648
	.quad	0x3fe15923f61b1c44              # double 0.54213140552099803
	.quad	0x3fd4b844a036f254              # double 0.32374683042488539
	.quad	0x3fe5fbaf423a62d7              # double 0.68697321829958014
	.quad	0x3fe10eded2dbe355              # double 0.53306523497949831
	.quad	0x3fc802b564710db4              # double 0.18758265880943059
	.quad	0x3fe512355474518b              # double 0.65847269530290597
	.quad	0x3fee717a0d64db86              # double 0.95135214439402271
	.quad	0x3fcf5af7cb3d3b94              # double 0.24496362136639205
	.quad	0x3fd7f4228854fc1a              # double 0.3742758113257324
	.quad	0x3fea67501b7c9ef6              # double 0.82511144035831196
	.quad	0x3fe7e7d3e65ac0fb              # double 0.7470492838965862
	.quad	0x3fe1d5d21a5e1385              # double 0.55735116147899133
	.quad	0x3fe2f3b5937f75dd              # double 0.5922496681993682
	.quad	0x3fdbb803f50f5034              # double 0.43310641223547752
	.quad	0x3fe2f8563d0e81fa              # double 0.59281455922251713
	.quad	0x3fc4b14fad9f36f8              # double 0.16166110971101211
	.quad	0x3fd0f4a7614cd5d4              # double 0.26493248464552477
	.quad	0x3fc2dad809c43cec              # double 0.14730358578569935
	.quad	0x3fc203771dbe4f2c              # double 0.14073075249017941
	.quad	0x3fec650d75f3299f              # double 0.88733552014427974
	.quad	0x3fe60c2faecaa473              # double 0.68898758067110888
	.quad	0x3fecee3174a1c599              # double 0.9040763166396345
	.quad	0x3fd2d62c72883a56              # double 0.2943221205213481
	.quad	0x3fc2de251e5b5238              # double 0.14740432722341423
	.quad	0x3fd693566372570a              # double 0.3527427645834541
	.quad	0x3fea178e1b5c9cff              # double 0.81537537902923407
	.quad	0x3fe17593515fc4c9              # double 0.54560247319582189
	.quad	0x3fd825edf49f63ea              # double 0.37731503380706377
	.quad	0x3fd91b756d8ef7b2              # double 0.39230094622677847
	.quad	0x3fd1e265a2391f64              # double 0.27944317667105723
	.quad	0x3fef4e2130c3aa21              # double 0.97828731083183495
	.quad	0x3fefc112fea040a9              # double 0.99231862765920653
	.quad	0x3fd990543349f5fa              # double 0.39943413742716383
	.quad	0x3fede909eee92ca7              # double 0.93469711935303657
	.quad	0x3fe60c489c772cf1              # double 0.68899946746515017
	.quad	0x3fc15d9249a54c4c              # double 0.13566807361584876
	.quad	0x3fe4b4d36ff1c24c              # double 0.64707347740302046
	.quad	0x3fdcc6c1fcaf3088              # double 0.44963121105389137
	.quad	0x3fdb576239dd2ade              # double 0.4272084775044912
	.quad	0x3fe3fee0868e8355              # double 0.62486292152980616
	.quad	0x3fe5fe263cd4b570              # double 0.68727409249338045
	.quad	0x3fc227713bc81f04              # double 0.14182868403462845
	.quad	0x3fede17fcffd4e58              # double 0.93377676604218163
	.quad	0x3fecff49b7f80240              # double 0.90616308146861257
	.quad	0x3fe04d86605a447c              # double 0.50946348971241617
	.quad	0x3fc182345759dbbc              # double 0.13678602471529
	.quad	0x3fd9b2a76d211a1e              # double 0.40152917534979504
	.quad	0x3fe8612a07f3bbb6              # double 0.76186086228505334
	.quad	0x3fee61a94daab85a              # double 0.9494215504580652
	.quad	0x3fd423d26d09508e              # double 0.31468639991840852
	.quad	0x3fe94f7b427efd72              # double 0.79095232951651284
	.quad	0x3fe2c575ddc9645e              # double 0.58660405461990783
	.quad	0x3f8aae6921d51600              # double 0.013027974457723523
	.quad	0x3fa0de5c607374f0              # double 0.032946478627971731
	.quad	0x3fc21ffc3ab88344              # double 0.14160111300682321
	.quad	0x3fafb7116d082700              # double 0.061943573531676677
	.quad	0x3feb494da55a372f              # double 0.85269815726653586
	.quad	0x3fe4b33dd8ca776b              # double 0.64688007680864013
	.quad	0x3fd9eccb6056430e              # double 0.40507778556734386
	.quad	0x3fdbefb6486c86aa              # double 0.43650586197518726
	.quad	0x3fb976422c348ef0              # double 0.099460731308280037
	.quad	0x3fecf9aa24f47c1a              # double 0.90547663896348074
	.quad	0x3fe13a876ed69826              # double 0.53839465759370309
	.quad	0x3fe84a35e9eeb08c              # double 0.75905891122740021
	.quad	0x3fcb0278cfec99f8              # double 0.21101293709325808
	.quad	0x3fcc931a27e93708              # double 0.22323920201090908
	.quad	0x3fec02a2c81809f4              # double 0.87532176094856462
	.quad	0x3fdbf2d8c81fce4a              # double 0.43669719260580975
	.quad	0x3fea2d89b3dda2be              # double 0.81805882577926758
	.quad	0x3fd63d7648b1860c              # double 0.34750134562463653
	.quad	0x3fd42bc568014910              # double 0.31517157704105703
	.quad	0x3fe54d2b3c4f96b7              # double 0.66567003039809591
	.quad	0x3fd5caceb116d750              # double 0.34050338071698594
	.quad	0x3f931843e467b780              # double 0.018647251907104145
	.quad	0x3fad8ee9c0a4f1b0              # double 0.057730965391303513
	.quad	0x3fe04e0b2d3c64e8              # double 0.50952681384219733
	.quad	0x3feef1605416b2ed              # double 0.96696487830703647
	.quad	0x3fd009413705c5ce              # double 0.25056486485763407
	.quad	0x3fe6fa63c779f2b5              # double 0.71806515655733583
	.quad	0x3fec802315f50c25              # double 0.89064173019904003
	.quad	0x3fd0b381c9cfa76a              # double 0.26095623691673231
	.quad	0x3fdb1dd876624ef8              # double 0.42369662819804388
	.quad	0x3fe113d54468977a              # double 0.53367102967307223
	.quad	0x3fbd210783445f20              # double 0.11378523783457384
	.quad	0x3fc49398e24f0164              # double 0.16075430917954769
	.quad	0x3fea54f12cc0f9cb              # double 0.82286890736559692
	.quad	0x3fdfc148c40a311a              # double 0.4961721338702475
	.quad	0x3fd65ae6babdc534              # double 0.34929817425207266
	.quad	0x3fe969a9b5e71e1b              # double 0.7941483071126102
	.quad	0x3fcb7b4665e8bd08              # double 0.21469955421478226
	.quad	0x3fe6f27e766aeb74              # double 0.71710131767700469
	.quad	0x3fc10030e07e6bb8              # double 0.13281832658398485
	.quad	0x3fe7e8a44e3fe56a              # double 0.74714865954517262
	.quad	0x3fd354e66e0a5d52              # double 0.30205689188138252
	.quad	0x3fe49d44190ae3cc              # double 0.6441975106346205
	.quad	0x3fe4747b00cc5be0              # double 0.63921880870736558
	.quad	0x3fdaa59e81b69a20              # double 0.41635859172166256
	.quad	0x3fb04d469aebe330              # double 0.063679135153404287
	.quad	0x3fece1ffd734b5d0              # double 0.9025878146400661
	.quad	0x3fdc65907d904a2c              # double 0.44369899999688545
	.quad	0x3fe5de733f89210b              # double 0.68340456399258309
	.quad	0x3fd6ca1917903d78              # double 0.35608508397213923
	.quad	0x3fca448699d9b4ec              # double 0.20521624099948299
	.quad	0x3fd57da1465cd510              # double 0.33579284545278743
	.quad	0x3febdc80b653bad6              # double 0.87066684351688184
	.quad	0x3f653de5f0929700              # double 0.0025929919252857259
	.quad	0x3fe406043155ef02              # double 0.62573442111849453
	.quad	0x3fe0dd4ee47ae81c              # double 0.52701515793819764
	.quad	0x3fd4f6961702fc4c              # double 0.32755043265564576
	.quad	0x3f9949f50c0a76a0              # double 0.024696186885754146
	.quad	0x3fc0335b68e5d2d0              # double 0.12656729337654449
	.quad	0x3fe3d3f785476301              # double 0.61962486296678787
	.quad	0x3fcec52d06f9b3e8              # double 0.24039233055682918
	.quad	0x3fd958660783924c              # double 0.39602041944298061
	.quad	0x3fa4117a303e4b20              # double 0.039195841206625781
	.quad	0x3fea44b151bcd026              # double 0.82088533367505501
	.quad	0x3fea38c4998d0ad3              # double 0.81942968359393331
	.quad	0x3fc180bbb9a3cfcc              # double 0.13674112858245591
	.quad	0x3fe52378b3ed90fa              # double 0.66058001653848852
	.quad	0x3fdd53e1b3d3b17e              # double 0.45824472962592455
	.quad	0x3fe7eb92ccf1a758              # double 0.74750652340047008
	.quad	0x3fb875229e34f860              # double 0.09553734171365269
	.quad	0x3fe4782a61f65cf4              # double 0.63966864712975147
	.quad	0x3fcb8208358f2ae8              # double 0.21490576377103499
	.quad	0x3fe7db9ce8f368be              # double 0.74555821893888896
	.quad	0x3fbc2a834bd653a0              # double 0.11002369500631781
	.quad	0x3fb002a95383c068              # double 0.062540610207862835
	.quad	0x3fe320ad2ae39d97              # double 0.59773882271558676
	.quad	0x3fecf19aaba70f89              # double 0.90449269796271026
	.quad	0x3f87ed49cd3d0a00              # double 0.01168306024158472
	.quad	0x3fe130acf2e3f0a9              # double 0.5371918434098194
	.quad	0x3fe1f0a466d30e71              # double 0.56062526781938804
	.quad	0x3fd6afab328e64b4              # double 0.35447196900492917
	.quad	0x3fe2a0730eb88b8c              # double 0.58208611369296781
	.quad	0x3fdfb102fae8efe6              # double 0.4951789331714721
	.quad	0x3fe755a2cb9be8e9              # double 0.72920360343348734
	.quad	0x3fdb8022d9db566c              # double 0.42969580912663363
	.quad	0x3febbadfe9c8fe1d              # double 0.86656184827001292
	.quad	0x3fddb752144a9bf8              # double 0.4643140028151147
	.quad	0x3fd8bd61d02db124              # double 0.38655896501474474
	.quad	0x3fe2ddde83e893bd              # double 0.58958364261035678
	.quad	0x3fd7cd4fb1eef144              # double 0.37190620781236228
	.quad	0x3fc63f1b13c2f43c              # double 0.17380083527487666
	.quad	0x3fb4beaa7286c480              # double 0.081034329376750591
	.quad	0x3fd6a67117d085d8              # double 0.35390879941595932
	.quad	0x3fedc8d44abeedde              # double 0.93076529120247264
	.quad	0x3fd26e84a854acdc              # double 0.28799549521018064
	.quad	0x3fd8c0739d43617a              # double 0.3867463145993707
	.quad	0x3fe9d283f0ae1fd6              # double 0.80694767959448188
	.quad	0x3fe6acdbe6c7b311              # double 0.70860095094903575
	.quad	0x3fe690d17c14e091              # double 0.70517801508596467
	.quad	0x3fef48d6b104fe48              # double 0.97764143537637782
	.quad	0x3fe36e28c4c5b0d2              # double 0.60719717437816656
	.quad	0x3fd8d67e84347dfe              # double 0.388091687304012
	.quad	0x3fc5e0df90df09b8              # double 0.17092508863249889
	.quad	0x3fe4997ec7591057              # double 0.64373721060884292
	.quad	0x3fe313d9aee46d1e              # double 0.59617313536310568
	.quad	0x3fb7ee8290369190              # double 0.093483123977938342
	.quad	0x3fbdbdbca27348f8              # double 0.11617640462944567
	.quad	0x3fe2134b65c9f877              # double 0.56485528832105458
	.quad	0x3fde2f12ee8d9bde              # double 0.4716231660481166
	.quad	0x3fe9cb21d0387a19              # double 0.80604639690483559
	.quad	0x3fe1c610111f0355              # double 0.55542758316014817
	.quad	0x3feb6572957a53ec              # double 0.85613373942271442
	.quad	0x3fd93116c945e40c              # double 0.39362115531508901
	.quad	0x3fa5ed7194fc2140              # double 0.042827176510459086
	.quad	0x3fc2548ab24a1f34              # double 0.14320501046699408
	.quad	0x3fe37d3542e6a1f7              # double 0.60903418604453818
	.quad	0x3fd8501e8e3cbe10              # double 0.37989009752615832
	.quad	0x3fe02751736c63d4              # double 0.50479958099014732
	.quad	0x3fec15a50a12c335              # double 0.87764217345657036
	.quad	0x3fa1d72712aaf720              # double 0.034844609288013695
	.quad	0x3fedfdcfb206a55d              # double 0.93723282595344026
	.quad	0x3fd6cd1f10aa82ac              # double 0.3562696135286767
	.quad	0x3fd2b70a2124ad9c              # double 0.29242184864662035
	.quad	0x3fe48419529e1e10              # double 0.64112535606631305
	.quad	0x3fe71bee0f6dcaf4              # double 0.72215941441967724
	.quad	0x3fdf20193352d956              # double 0.48633413326333164
	.quad	0x3fcfbe23744aa9d4              # double 0.24799006632140552
	.quad	0x3fe11f333cc32143              # double 0.5350586115610344
	.quad	0x3fd1ee0b0212d7ce              # double 0.28015399172306565
	.quad	0x3fdfbca65fb9f93a              # double 0.49588927601134325
	.quad	0x3fe586e45ae0684c              # double 0.67271631001791254
	.quad	0x3fd15638971dc53c              # double 0.27088751561594271
	.quad	0x3fe55e1be48ab277              # double 0.66773790967051994
	.quad	0x3fe0570ff4289784              # double 0.5106277245256341
	.quad	0x3fedf16b382474e4              # double 0.93572007146181279
	.quad	0x3fe370193c0a1081              # double 0.60743390776089268
	.quad	0x3fa047ba1bcc5b60              # double 0.031797233479827325
	.quad	0x3fe9042dafe764ce              # double 0.78176006656863151
	.quad	0x3f9cab1b1246bee0              # double 0.027996466627597694
	.quad	0x3fc98f9ac5f08438              # double 0.19969496407523635
	.quad	0x3fe391a4e9e0d4ef              # double 0.61152883223863153
	.quad	0x3fef550c9b0d4b0c              # double 0.97913198741511697
	.quad	0x3fe73ce3dfcfc987              # double 0.72618287766663137
	.quad	0x3fed4d145ca52871              # double 0.91565912337070021
	.quad	0x3fbf0ba700ea7470              # double 0.12127155086860042
	.quad	0x3fd01653872b5f68              # double 0.2513626880659019
	.quad	0x3fef6d5c692745c0              # double 0.98209972894454011
	.quad	0x3fe606e75b4a95aa              # double 0.68834274130192807
	.quad	0x3fe86b2fea51f7e4              # double 0.7630843712392985
	.quad	0x3fe4b49a53bc5c55              # double 0.64704624514241493
	.quad	0x3fe9f69928f301e8              # double 0.81135232923412293
	.quad	0x3fe070aacedf3227              # double 0.51375332264575924
	.quad	0x3fe1afe0a24deae3              # double 0.55271941852637629
	.quad	0x3fce4348093ef850              # double 0.23642826510871595
	.quad	0x3fb2a513dce50668              # double 0.072831384114601883
	.quad	0x3fe4b96d92095795              # double 0.64763525507690878
	.quad	0x3fde688012d945b8              # double 0.47512819138236351
	.quad	0x3fdb9b9841cc60cc              # double 0.43137175012226403
	.quad	0x3fec260b8620db40              # double 0.87964416691725233
	.quad	0x3fef712a9d886412              # double 0.98256426590080737
	.quad	0x3fd68bf351ac3326              # double 0.35229189849705944
	.quad	0x3faba46a0ec26f00              # double 0.053988756467530763
	.quad	0x3fe84733bbde931e              # double 0.75869166081665518
	.quad	0x3fce2165677a681c              # double 0.23539416840213867
	.quad	0x3fe864eba80f590e              # double 0.76231940101823326
	.quad	0x3fc6310bf1a689e0              # double 0.1733717851576122
	.quad	0x3fea21234679af21              # double 0.81654514088356589
	.quad	0x3fca4951be326450              # double 0.20536252772288544
	.quad	0x3feaf846cdebeb90              # double 0.84280719965987494
	.quad	0x3feaa41ee3377a0a              # double 0.8325342595888412
	.quad	0x3fef2df1767ef75a              # double 0.97435830253355538
	.quad	0x3febaf2996faf127              # double 0.86513213623360208
	.quad	0x3fe73a56b4984c21              # double 0.7258714225048416
	.quad	0x3fe59456044a7058              # double 0.67435742223779993
	.quad	0x3fe7c6ba781b267f              # double 0.74300883730138867
	.quad	0x3fd93bbb03b29740              # double 0.39427066193671934
	.quad	0x3fed71477ff81e33              # double 0.92007803911196218
	.quad	0x3fdfa5bb7f48137c              # double 0.49449050359572033
	.quad	0x3fce9078add1e984              # double 0.23878391730597681
	.quad	0x3fd5bcd799a4fb28              # double 0.33965101246205842
	.quad	0x3fd87b6527e97126              # double 0.38253144166607667
	.quad	0x3fed93e9cc694557              # double 0.92430581974091808
	.quad	0x3fe5b6772db6021b              # double 0.67852362564014201
	.quad	0x3fe5bd94702e80a8              # double 0.67939206991652146
	.quad	0x3fd8e2b250ddb05e              # double 0.38883645913188569
	.quad	0x3fecbb241fdb0721              # double 0.89784437391083227
	.quad	0x3fe26950c6bc5504              # double 0.57535589995919212
	.quad	0x3fe9b25b9504bf0a              # double 0.80302218537505721
	.quad	0x3fe97013904d0458              # double 0.79493120368727954
	.quad	0x3fdc37740c35dd92              # double 0.44088460152075826
	.quad	0x3fe4262bb2b73f36              # double 0.6296595087569361
	.quad	0x3fd5d557fa78e5da              # double 0.34114646396809933
	.quad	0x3fe4c36458c62106              # double 0.64885156000767163
	.quad	0x3fed7e5cb8f5049c              # double 0.92167507290300276
	.quad	0x3fd28cd470cfa48e              # double 0.28984557167729796
	.quad	0x3fb1527ff9402be8              # double 0.067665098526205392
	.quad	0x3fdcca013ef257f2              # double 0.44982939860471938
	.quad	0x3fd1ed93acf6715c              # double 0.28012554064641448
	.quad	0x3fdd6d37d91ab3b4              # double 0.45979114724724046
	.quad	0x3fe7f4b2b6193faf              # double 0.74862037244928625
	.quad	0x3fe88ca1bb771265              # double 0.76716696371347537
	.quad	0x3fe3ab6f2325f302              # double 0.6146770178307579
	.quad	0x3fc96770e5456e08              # double 0.19846926875003157
	.quad	0x3fc950ef6ff4f21c              # double 0.19778244940415923
	.quad	0x3fda337812f41eac              # double 0.40939142085015123
	.quad	0x3fe4c2aef734eb86              # double 0.64876507074892298
	.quad	0x3fc6b30de00522a4              # double 0.1773393005226086
	.quad	0x3fec577641ffbfd7              # double 0.88567650690492428
	.quad	0x3fef25e8f2475b75              # double 0.97337767906252159
	.quad	0x3fea78edc94179d7              # double 0.82726182277456928
	.quad	0x3fed47efb6722993              # double 0.91503129610036849
	.quad	0x3faa3bade8896550              # double 0.051236567149951839
	.quad	0x3fde37b52ab46868              # double 0.4721501271284354
	.quad	0x3fe4c86d6da83302              # double 0.64946624200237602
	.quad	0x3fe035bc480f370a              # double 0.5065595061693966
	.quad	0x3fdfdb9ad6042468              # double 0.49777861499803189
	.quad	0x3fe048a65f74b32a              # double 0.50886839526865413
	.quad	0x3fe063876f093745              # double 0.51214954077452346
	.quad	0x3fe8ce51714b2485              # double 0.77518531921045108
	.quad	0x3fc2ff3432adb278              # double 0.14841320490394927
	.quad	0x3fe6e1ce08f1c1ac              # double 0.71506406542726131
	.quad	0x3fe3042b53cc305f              # double 0.59425894133302026
	.quad	0x3f71c5a34745d100              # double 0.004338872724805265
	.quad	0x3fc9fa61bd24c62c              # double 0.20295354590921144
	.quad	0x3fe41d3c2775f924              # double 0.62856872279352105
	.quad	0x3feeb96391102558              # double 0.96013048489218544
	.quad	0x3fda420040635de0              # double 0.41027838027863872
	.quad	0x3fe27fdc9e657dbb              # double 0.57810812889868346
	.quad	0x3fcfd85b5ff4c454              # double 0.24879018960339983
	.quad	0x3fd8ccb4e4bf7ee4              # double 0.38749430025744247
	.quad	0x3fecffdde68f8c3a              # double 0.90623374015229463
	.quad	0x3fadaa5715349c50              # double 0.057940217341006517
	.quad	0x3fec8d87f6c5f760              # double 0.8922767467299586
	.quad	0x3f802f8d6555cc80              # double 0.0079031988668474273
	.quad	0x3fd9202ac9e44228              # double 0.39258832660655907
	.quad	0x3fce57456c0cbbd0              # double 0.23703830505243539
	.quad	0x3fe773f901ae5e18              # double 0.73290682152122866
	.quad	0x3fe6174fa930ebfa              # double 0.69034560246598109
	.quad	0x3fe57f8673aeff0c              # double 0.67181704134415687
	.quad	0x3fc54e782c7313f8              # double 0.1664571969069184
	.quad	0x3f868ac77da26780              # double 0.011006887933308951
	.quad	0x3fddec6ac23824ba              # double 0.46755475012521297
	.quad	0x3fee2d394d603ec6              # double 0.94302048790447013
	.quad	0x3fc1aca530cadf0c              # double 0.13808121569103837
	.quad	0x3fec72d49bffd2de              # double 0.88901739567389959
	.quad	0x3fdf7634535aced2              # double 0.49158962383374416
	.quad	0x3fbdfd809562c1b0              # double 0.11714938780892825
	.quad	0x3fbef10bf776d330              # double 0.12086558143239468
	.quad	0x3fc84623d54a1560              # double 0.18964050211449557
	.quad	0x3fe54b40b010deec              # double 0.66543611896392241
	.quad	0x3fef685c7aa4243e              # double 0.98148940995555001
	.quad	0x3fcfa06013fa1044              # double 0.24708176589422426
	.quad	0x3fc9df00d2ce3738              # double 0.2021180180858495
	.quad	0x3fd812cbc7e16eda              # double 0.37614721793737049
	.quad	0x3fce7ef2faf8e70c              # double 0.23824918035989417
	.quad	0x3fe7d802fa72ef01              # double 0.74511860767185578
	.quad	0x3fdf0050e1447e96              # double 0.48439428328308887
	.quad	0x3fd42953799d8432              # double 0.31502234341138824
	.quad	0x3fe8a8bab166fb02              # double 0.77059683464889894
	.quad	0x3fbc35b8a88022e0              # double 0.11019472230703853
	.quad	0x3fe8c0fdd4ca5102              # double 0.77355853615384285
	.quad	0x3fad37936a74ac20              # double 0.057064635033690303
	.quad	0x3fb818882e43d580              # double 0.09412432794109371
	.quad	0x3fe4ef0c4ba52659              # double 0.65418066763340754
	.quad	0x3fbb4337b050b2d0              # double 0.10649440817423828
	.quad	0x3fb336dae76f1fc8              # double 0.075055772306881541
	.quad	0x3fb97cbccfd42fa0              # double 0.099559593905893084
	.quad	0x3fe20a3a53bb130d              # double 0.5637485156408687
	.quad	0x3fe4c428e2e9e711              # double 0.64894527739599728
	.quad	0x3fc0be9cf897e8dc              # double 0.13081705225324114
	.quad	0x3fccb3ebbf352b64              # double 0.22424074970544006
	.quad	0x3fe1f235721327f2              # double 0.56081650047531029
	.quad	0x3fe1a674165f95e6              # double 0.55156902665902119
	.quad	0x3fdc4181f639b406              # double 0.44149827046823054
	.quad	0x3fcfef4c91415ed0              # double 0.24949032871767551
	.quad	0x3fc681a251a3eb1c              # double 0.17583111749976232
	.quad	0x3fee7d9073c1b6a2              # double 0.95282766922692397
	.quad	0x3fe142a242ae51f3              # double 0.53938401244755452
	.quad	0x3fe5a9a47a60a2ff              # double 0.67695831205227808
	.quad	0x3fd39e14a0ed9046              # double 0.3065234729349452
	.quad	0x3fe75e971aa77247              # double 0.73029666143299543
	.quad	0x3feea1bdf0cf632a              # double 0.95724389107917784
	.quad	0x3fea5bc8891d855c              # double 0.82370402126631914
	.quad	0x3fc19d80a8ad980c              # double 0.13761909710154929
	.quad	0x3fef29d5d60b6253              # double 0.97385684781608927
	.quad	0x3fe23f3d7e0bd4ba              # double 0.57021975153352078
	.quad	0x3fe3c38404b5f8ea              # double 0.6176166622169863
	.quad	0x3fc728ba5609bfa4              # double 0.18093041611745975
	.quad	0x3fd885c6be960d5c              # double 0.38316506015708796
	.quad	0x3fbdaa85bdd5d8a8              # double 0.11588321575786387
	.quad	0x3fe7d0dd4007867f              # double 0.74424612527600675
	.quad	0x3fdc92d433329894              # double 0.44646172523278804
	.quad	0x3fe734ecfd07e6f7              # double 0.72521066112605481
	.quad	0x3fed7d8bb6a0aa39              # double 0.92157540959789863
	.quad	0x3fdcf2cabc56b8e4              # double 0.45231884376961617
	.quad	0x3fe2e266e93d18b3              # double 0.5901369624559919
	.quad	0x3fee6b00f830d26e              # double 0.95056198572872375
	.quad	0x3fe2f1c55d36ca5c              # double 0.592013055857318
	.quad	0x3fa174320d074010              # double 0.034089626398440598
	.quad	0x3feed325d5a8cb15              # double 0.96327487688390311
	.quad	0x3fe1bbf7b613205b              # double 0.55419526635615612
	.quad	0x3fe4c8ad94984fe5              # double 0.64949683210806752
	.quad	0x3fdd391dd7db1040              # double 0.45661111907634577
	.quad	0x3fe05cb0021ce8e3              # double 0.5113143960254799
	.quad	0x3fe90750935f0d4f              # double 0.78214291366058741
	.quad	0x3fe2a29549e9321e              # double 0.5823465770313907
	.quad	0x3fe317a350d2023a              # double 0.59663549218391343
	.quad	0x3fda5e63b4283100              # double 0.41201107591110997
	.quad	0x3fd52f947713c3c2              # double 0.33102904919274689
	.quad	0x3fe31c3852cc20d7              # double 0.59719482585299033
	.quad	0x3fbf98f6c39a62a0              # double 0.12342779422250283
	.quad	0x3fb6e8c41eb17698              # double 0.089489228719197178
	.quad	0x3fed165ae89d64b0              # double 0.90897889549809996
	.quad	0x3fe7bd2e8d6c31f8              # double 0.741843486991967
	.quad	0x3fecf708166f6866              # double 0.90515522367355739
	.quad	0x3fd030c1df688590              # double 0.25297591035094857
	.quad	0x3fe4cfe1ddf7da5e              # double 0.65037625649604158
	.quad	0x3fce3c71d58916b4              # double 0.2362196247724363
	.quad	0x3f9581fe924ee9c0              # double 0.021003701858470114
	.quad	0x3fbacab7752a04b0              # double 0.10465571032001963
	.quad	0x3fd4abdf0dfd2786              # double 0.32299019209005342
	.quad	0x3febf2c4b22f3c5e              # double 0.87338480760253012
	.quad	0x3fbbecfc4c04c590              # double 0.10908486228870218
	.quad	0x3fd94e399b60d03a              # double 0.3953994767537129
	.quad	0x3fcdcf5aee4d2254              # double 0.23289047847562705
	.quad	0x3fec7ceb7e3a092b              # double 0.89024901059773265
	.quad	0x3fd9e8788412c656              # double 0.40481388948237418
	.quad	0x3fd7a8d8211d729a              # double 0.36968043550386087
	.quad	0x3fc3245dcb226ff8              # double 0.14954731386831077
	.quad	0x3fd6f871132b81d8              # double 0.35891367790284567
	.quad	0x3fc6ffc90772cc38              # double 0.17968094695751957
	.quad	0x3fee928828eefece              # double 0.95538719172324149
	.quad	0x3fbc2463b12ca760              # double 0.10993025851771909
	.quad	0x3fe584fc3157a61c              # double 0.67248353612120892
	.quad	0x3fe419b671b18c0e              # double 0.62813875394601992
	.quad	0x3fd92cb7b52e2b46              # double 0.39335434621232357
	.quad	0x3fea188f23c43265              # double 0.81549794183372326
	.quad	0x3fd7555706fda098              # double 0.3645837372082581
	.quad	0x3fe8d9bdfaee9f4c              # double 0.7765798474328931
	.quad	0x3fea5f642e484682              # double 0.82414444961087008
	.quad	0x3fdf6c6c605fecfe              # double 0.49099263583748598
	.quad	0x3fab969bbf117880              # double 0.053883425782928818
	.quad	0x3fc0185930a04adc              # double 0.12574305414508202
	.quad	0x3fdcdf3c947ed06e              # double 0.45112528325558443
	.quad	0x3fd2775bc4bac53c              # double 0.28853506290313979
	.quad	0x3fdcb860e67cc4fc              # double 0.4487535715916946
	.quad	0x3f942a61b79d1260              # double 0.019692923385507988
	.quad	0x3fe53dbe528cd5f1              # double 0.66378704188417548
	.quad	0x3fefac682d969d53              # double 0.9897957697293499
	.quad	0x3fe3ef619be6c409              # double 0.62297134828088574
	.quad	0x3fe988b6e65ef4d5              # double 0.79793877596207585
	.quad	0x3fecdc0c0648f3cf              # double 0.90186120250256774
	.quad	0x3fcbebf653e34d94              # double 0.21813849540795316
	.quad	0x3fd37d0a21d0587a              # double 0.3045068102086429
	.quad	0x3fc8f5a01a5f57a8              # double 0.19499589240757342
	.quad	0x3fecd2a5a6227ba0              # double 0.90071375320609448
	.quad	0x3fee5aafd11a649b              # double 0.94857016411255601
	.quad	0x3fca44bce166fd68              # double 0.20522271162006267
	.quad	0x3fd7bf241527a562              # double 0.37104131761460313
	.quad	0x3fd3548288f18368              # double 0.30203307507877364
	.quad	0x3fd938bafff0a852              # double 0.39408755296847631
	.quad	0x3fdd0f08bd7e2f2a              # double 0.45404261117140499
	.quad	0x3fcac7cd85b5d4d0              # double 0.20922249821493333
	.quad	0x3fd16e00fe5b0eb8              # double 0.27233910407469919
	.quad	0x3fe32433c8eee68f              # double 0.59816922421232899
	.quad	0x3fed2cd524ac7a4d              # double 0.91172272837486334
	.quad	0x3fe04a27fd31676b              # double 0.50905227138285392
	.quad	0x3fe4b29832f8907d              # double 0.64680108981384843
	.quad	0x3fd3fcc026bec694              # double 0.31230167182648327
	.quad	0x3fd835bdc36de066              # double 0.37828010640033083
	.quad	0x3fb601a245af9f68              # double 0.085962430966558423
	.quad	0x3fecffc12185663e              # double 0.90622002169693139
	.quad	0x3fd2ed80c54b9684              # double 0.29574603335490957
	.quad	0x3fe8932c9cf943bb              # double 0.76796560915874268
	.quad	0x3fd4b1f6eab9eea4              # double 0.32336209223260881
	.quad	0x3fe2e035f3dc3e5c              # double 0.58986947659463906
	.quad	0x3fecdae5f3896153              # double 0.90172097745657209
	.quad	0x3fe0dec53a5e2d9b              # double 0.52719365501382087
	.quad	0x3fd9cae4ee52bb2c              # double 0.40300868295428205
	.quad	0x3fca4bcce6899b58              # double 0.20543824440684477
	.quad	0x3fe7c40296406985              # double 0.74267701478974912
	.quad	0x3fe4b62a4be9c112              # double 0.64723696543481624
	.quad	0x3fe73f36842e1554              # double 0.7264664250985029
	.quad	0x3fdb327b0c1c8bae              # double 0.42495609457744876
	.quad	0x3fe3c18d8f2583b2              # double 0.61737707098301642
	.quad	0x3fe0f80d346c3d5b              # double 0.53027973402815165
	.quad	0x3feba5cdb3d82057              # double 0.86398968816593935
	.quad	0x3fecde4e01116b64              # double 0.90213680466272849
	.quad	0x3fbe85f218077df8              # double 0.11923134886409759
	.quad	0x3fec6fb2d96c695c              # double 0.88863508668445545
	.quad	0x3fe6e1d0c0a9c578              # double 0.71506536130452414
	.quad	0x3fd0d0788a3d4be8              # double 0.26272405147500288
	.quad	0x3f54476d7276ca00              # double 0.0012377327746945221
	.quad	0x3fe9e48ea36e3a6b              # double 0.80915004653963984
	.quad	0x3fe27bdfd2e1b176              # double 0.57762137592139484
	.quad	0x3feda3113e1d67d0              # double 0.926155682867142
	.quad	0x3faf6540c2d8d990              # double 0.061319373879473393
	.quad	0x3fd2544231f82a46              # double 0.28639273528884635
	.quad	0x3fed14ef8922212c              # double 0.90880562576152135
	.quad	0x3fe1a093fa74b752              # double 0.55085181157276453
	.quad	0x3fe01e5badb66244              # double 0.50370582512102446
	.quad	0x3fece1e83fdd8662              # double 0.90257656549165355
	.quad	0x3fcfdffb8ca88620              # double 0.2490229069526757
	.quad	0x3fe82791e1806370              # double 0.75483030360474679
	.quad	0x3fcab1b031720a58              # double 0.2085476151879273
	.quad	0x3fb2c3647f0bb250              # double 0.073293953911794718
	.quad	0x3feb8879d879f60b              # double 0.86040966301487865
	.quad	0x3fe0693f7e884347              # double 0.51284765923819797
	.quad	0x3fd50e163a7a2224              # double 0.32898479185726814
	.quad	0x3fd7b3960c32ad68              # double 0.37033606711584932
	.quad	0x3fe4f51d7a870759              # double 0.65492128306525921
	.quad	0x3feb4073fba79176              # double 0.85161780501634499
	.quad	0x3fd440f94355d9e6              # double 0.31646567893713351
	.quad	0x3fc06512dbf6f1b4              # double 0.12808452358684763
	.quad	0x3faaeeca14e7fed0              # double 0.052603068401365527
	.quad	0x3fe4d4e1a52d01f3              # double 0.65098650227451882
	.quad	0x3f9117cc18f54bc0              # double 0.016692341826750612
	.quad	0x3fe50e358ec7c8cc              # double 0.65798452269361851
	.quad	0x3fd5d77af4fae818              # double 0.34127687381590155
	.quad	0x3f999471c14f3980              # double 0.024980332778619552
	.quad	0x3fe77ecdf6cc599d              # double 0.73422907068998067
	.quad	0x3fe029d9c7152242              # double 0.50510872729598355
	.quad	0x3fdad6f87a6afe7e              # double 0.4193707652557136
	.quad	0x3fea280f64abdbfb              # double 0.81739015257232894
	.quad	0x3fe0831c7ceaede8              # double 0.51600479505526398
	.quad	0x3fd27a56ca79b582              # double 0.28871698163023762
	.quad	0x3fe3bc06cbec4eff              # double 0.61670245960928571
	.quad	0x3feba579f7b24aec              # double 0.8639497602292443
	.quad	0x3fbdc49431095c90              # double 0.1162808055608926
	.quad	0x3fea496e3b9bbde9              # double 0.82146369592913715
	.quad	0x3fea09c0437765fe              # double 0.81369031121283775
	.quad	0x3fe58dd3220a56d4              # double 0.67356259010804331
	.quad	0x3fecbafc8fe1da7a              # double 0.89782550909042347
	.quad	0x3fcd4e8e51040888              # double 0.22895983653876706
	.quad	0x3fe6bf80e67553d0              # double 0.71087689410580346
	.quad	0x3fc4cd4ae4f5156c              # double 0.16251503161962988
	.quad	0x3fd9074e081e8250              # double 0.39107085030449174
	.quad	0x3fe1dc524700cb9e              # double 0.5581447016505654
	.quad	0x3fdcaca0ee2eaeda              # double 0.44803641567226082
	.quad	0x3fd3e61208640b54              # double 0.31091738528646329
	.quad	0x3fdf400b0d70315a              # double 0.48828388511971854
	.quad	0x3fe91858ad228155              # double 0.78422197165859109
	.quad	0x3f9ef284b6f39000              # double 0.030222009340732825
	.quad	0x3fcf4d0b1c786b34              # double 0.24453867807536656
	.quad	0x3fd357b4ee2c5012              # double 0.30222819575396997
	.quad	0x3fe5477b48d1f752              # double 0.66497577879611414
	.quad	0x3fd49d8542fe067c              # double 0.3221142915936992
	.quad	0x3fcfa0320aafccec              # double 0.24707627794086962
	.quad	0x3fe13c521f018b42              # double 0.53861337715020619
	.quad	0x3fdd41e39ac95c42              # double 0.45714655032992735
	.quad	0x3fc11f058e34d9a4              # double 0.13375920718835943
	.quad	0x3fe2dcd9fde422a4              # double 0.58945941532245572
	.quad	0x3fee7201d7d690f3              # double 0.95141689449203992
	.quad	0x3fe86f16b748c34a              # double 0.76356063649846218
	.quad	0x3fea7a587a7c5f37              # double 0.82743476794255499
	.quad	0x3f93fc29a27bcde0              # double 0.019516611616337332
	.quad	0x3febe30f99451d43              # double 0.87146739898245362
	.quad	0x3fe6787b92ecf226              # double 0.70220736214065904
	.quad	0x3fdd2e45c674ee10              # double 0.45594925289671639
	.quad	0x3fe6508165a14a40              # double 0.69732732629410776
	.quad	0x3fec07dd2782cc44              # double 0.87595994679430377
	.quad	0x3fcbe30b42b71d10              # double 0.21786633260328658
	.quad	0x3fc4a4700ae0f4f8              # double 0.16126823931873679
	.quad	0x3fd1f929a8d13922              # double 0.28083268629133518
	.quad	0x3fee6db3fa646560              # double 0.95089148430558267
	.quad	0x3fe073b47dbd1f66              # double 0.5141241508326686
	.quad	0x3fd736fb4905af68              # double 0.36273080950808501
	.quad	0x3fd09860c78b1d36              # double 0.25930041777288027
	.quad	0x3f851d1a369fd100              # double 0.010309414665222949
	.quad	0x3fe5c636704575b1              # double 0.68044588020318575
	.quad	0x3fd70fd51d4e49fe              # double 0.36034133779426714
	.quad	0x3febbe566568a430              # double 0.86698455625913162
	.quad	0x3fe54240c4829718              # double 0.66433752423174308
	.quad	0x3fd4ff6db2f8759a              # double 0.32809011914818031
	.quad	0x3fdb58e5fab6a9c0              # double 0.42730092509978235
	.quad	0x3fd56b2f6ffd93da              # double 0.33466707169128329
	.quad	0x3fdd5e84f32f2f4a              # double 0.45889400242298406
	.quad	0x3fe8c352b921f7d7              # double 0.7738431564209759
	.quad	0x3fe02345d9da73a2              # double 0.50430576848485864
	.quad	0x3fde4ab108706bc0              # double 0.47330880951056642
	.quad	0x3fe5d7f2cca3cd99              # double 0.68261089295122013
	.quad	0x3f9777950bec5820              # double 0.022917107441649986
	.quad	0x3fd56f2aa62c9e52              # double 0.33491007068594059
	.quad	0x3fecd6e11585ae8c              # double 0.90123037532380712
	.quad	0x3fe05201b25040f4              # double 0.51001057459691745
	.quad	0x3f93e1895e248280              # double 0.019415041323670668
	.quad	0x3fe1ff5f5383323c              # double 0.56242338477165488
	.quad	0x3fe7b73b8be40503              # double 0.74111726114657051
	.quad	0x3fd32697f5cdb64c              # double 0.29923056606535137
	.quad	0x3fb4b12864eca810              # double 0.080828213348155708
	.quad	0x3fe3b4710da7f858              # double 0.61577656428540717
	.quad	0x3fed10a29d9c72f0              # double 0.90828066619323344
	.quad	0x3fd19d8bd86e3448              # double 0.27524086128034186
	.quad	0x3fee2776454b4c5a              # double 0.94231713804255013
	.quad	0x3fda93a1463c7f32              # double 0.41526061877265186
	.quad	0x3fc46d2e716674ec              # double 0.1595819524490375
	.quad	0x3feb08dfe5f91c92              # double 0.84483332554454393
	.quad	0x3fa179b0b59e45e0              # double 0.034131548090168939
	.quad	0x3fd893afcdea0c82              # double 0.38401408299268536
	.quad	0x3fe6c81086054b87              # double 0.71192194152750765
	.quad	0x3fe6bb37b98ca10d              # double 0.71035372009376518
	.quad	0x3fe7d94e71429be8              # double 0.74527666207438603
	.quad	0x3fcc6bf1d4f85104              # double 0.22204420947003467
	.quad	0x3fd6c3749456cbe0              # double 0.35567965017543024
	.quad	0x3fe3db642fb23069              # double 0.62053117099413868
	.quad	0x3fe671862776676b              # double 0.70135791499636235
	.quad	0x3fef0463401ed70a              # double 0.96928560756234217
	.quad	0x3fd909e2b94087a4              # double 0.39122837153456147
	.quad	0x3fdb36974e461172              # double 0.42520697254101159
	.quad	0x3feb9fbdad81436a              # double 0.86324962508852576
	.quad	0x3fecfa90cbb5ccf0              # double 0.90558662211551955
	.quad	0x3fe9c36e15c5d492              # double 0.80510620357985574
	.quad	0x3fcc0682db6f9de8              # double 0.21894870485924334
	.quad	0x3fea8b2fe0e59f74              # double 0.82949060368717519
	.quad	0x3fcfbfcdf98e05a0              # double 0.24804091153422991
	.quad	0x3fbd4c2d2e44beb8              # double 0.11444361095049771
	.quad	0x3feeaf319ef6eb8d              # double 0.95888596580276586
	.quad	0x3fe9cab1c57e9e9c              # double 0.80599297116437496
	.quad	0x3fe03871b7c406d3              # double 0.50689016238922091
	.quad	0x3fe9638deff2f7ee              # double 0.79340264191682563
	.quad	0x3fcf34d9e07d38e4              # double 0.24380038701423878
	.quad	0x3feff3506bbde5a4              # double 0.99845143359486998
	.quad	0x3fe59620bdfd47cf              # double 0.6745761595468539
	.quad	0x3fd735b11c78c40a              # double 0.36265208988612641
	.quad	0x3fe3570f3fb033fc              # double 0.60437738837356347
	.quad	0x3fa5804071b80b30              # double 0.041994108087257564
	.quad	0x3fe39e6587f16ff3              # double 0.61308552314176123
	.quad	0x3fe1b21a81b318f4              # double 0.55299115497544316
	.quad	0x3fd8f2000f448452              # double 0.38977052203160156
	.quad	0x3fc3728f243504bc              # double 0.15193356769490218
	.quad	0x3fef9e68725d2fdb              # double 0.98808691345902432
	.quad	0x3fe38a1d6d4afd47              # double 0.6106097349765286
	.quad	0x3fe92d80bbf37532              # double 0.7868045493047815
	.quad	0x3fd4108cb8ed8d16              # double 0.31351011332863388
	.quad	0x3fcfb91cbabe2e78              # double 0.24783667677217003
	.quad	0x3fe37c8c8f6861b0              # double 0.60895374306988082
	.quad	0x3fd76f0415b4b3d8              # double 0.36615087623323239
	.quad	0x3f9d879cf0823ba0              # double 0.02883763521145577
	.quad	0x3fe0e5b8791bf860              # double 0.52804206518318253
	.quad	0x3fd59a86e730780a              # double 0.33755657746394319
	.quad	0x3fe4280d3fbb7888              # double 0.62988913009373082
	.quad	0x3f62452431d0fa00              # double 0.0022302348066027822
	.quad	0x3fd30addb67b1758              # double 0.29753821201699315
	.quad	0x3fe9684efc890057              # double 0.7939829761817333
	.quad	0x3fdfa3596ab0c09c              # double 0.49434504908550436
	.quad	0x3fee5e984a8de561              # double 0.94904722749121728
	.quad	0x3fdc5d6d033c672e              # double 0.44320226017008479
	.quad	0x3fcf02facedeafb8              # double 0.24227843380992709
	.quad	0x3fdc514e758c89be              # double 0.44246255378143562
	.quad	0x3fef20b28227b54f              # double 0.972741369446945
	.quad	0x3fe5e0421d8d8062              # double 0.68362527629870962
	.quad	0x3feac6d52a091bde              # double 0.83677156648706918
	.quad	0x3fe0ed26428126c7              # double 0.52894890774879222
	.quad	0x3fcd239448a9cc28              # double 0.22764829204570103
	.quad	0x3fdff221484a33e2              # double 0.49915344295078345
	.quad	0x3fdae9bd299c265e              # double 0.42051629126999568
	.quad	0x3fe65eb66eeb0ab0              # double 0.69906160033891318
	.quad	0x3fe3b4b310b3d5d6              # double 0.61580804121211474
	.quad	0x3fac87170ed31b40              # double 0.055718155440948269
	.quad	0x3feeb882fcac592a              # double 0.96002339697114292
	.quad	0x3fe721fd525eac74              # double 0.72289911353926906
	.quad	0x3fd7e4fc9343bb90              # double 0.37335123425776207
	.quad	0x3fc041174ee3a620              # double 0.12698642112745606
	.quad	0x3fe610aa6b5dfd12              # double 0.68953438730378225
	.quad	0x3fd5d33eff3e8ec2              # double 0.34101843763549422
	.quad	0x3fe26ccf26f6c3f2              # double 0.57578237161771839
	.quad	0x3fd4bb157058b43c              # double 0.32391868563974291
	.quad	0x3fb65eb11aa7f730              # double 0.08738238240036078
	.quad	0x3fe05262ea0f1bdb              # double 0.51005693163539989
	.quad	0x3fd35c3c575ffdb0              # double 0.30250462086402319
	.quad	0x3fe1d8fd320a198a              # double 0.55773792050676829
	.quad	0x3fbc3423746b14b0              # double 0.11017057029956123
	.quad	0x3fe7c3e518809bbd              # double 0.74266295228596102
	.quad	0x3fddcd31f28652d6              # double 0.46564911541035536
	.quad	0x3fd1dd5a50b24bd2              # double 0.27913530235781281
	.quad	0x3fce1a79b6abfe48              # double 0.2351829664184939
	.quad	0x3fbfea4de3da9ed0              # double 0.12466894924966287
	.quad	0x3fbcd6782e1a9ce0              # double 0.11264754415116185
	.quad	0x3fea17405cb5fe8e              # double 0.81533830745316194
	.quad	0x3fe6dfae6c0fa5b6              # double 0.71480485063255261
	.quad	0x3fe552e4d1e7bdf4              # double 0.6663688754760515
	.quad	0x3fc048b8579a71c0              # double 0.12721924092774195
	.quad	0x3fdc4f9f7504324e              # double 0.44235979487783517
	.quad	0x3fbee830abb5a790              # double 0.12073044006470313
	.quad	0x3fe585b193a90088              # double 0.67257002677799083
	.quad	0x3fedbbb99df8a533              # double 0.92916565755618874
	.quad	0x3fe9485aa9bb5999              # double 0.79008229399441909
	.quad	0x3fe1eeee0a97ca9f              # double 0.56041624134953227
	.quad	0x3fe556fc3e22285b              # double 0.66686832557139597
	.quad	0x3fde1a5c2edb8a4a              # double 0.47035889221129834
	.quad	0x3fb2e7cc60ad5c28              # double 0.073849462130383459
	.quad	0x3fa3a0ed81d75e40              # double 0.038337156390920502
	.quad	0x3fe166b8fbd5efae              # double 0.54378937899263291
	.quad	0x3fbf852bbd76ce78              # double 0.12312577605808339
	.quad	0x3fe2255a5c60d3c9              # double 0.56705968897460324
	.quad	0x3fe8380d008e0b19              # double 0.75684213741655804
	.quad	0x3fc784379dd18a04              # double 0.18372245031339685
	.quad	0x3fad338faefe9330              # double 0.057034006225228473
	.quad	0x3feb5a177fef0eac              # double 0.85474753367494349
	.quad	0x3fec47e054d4e132              # double 0.88377396172203349
	.quad	0x3fe7f0c2ec44995b              # double 0.74813982149207037
	.quad	0x3fe6eafda6c9153b              # double 0.71618540358819105
	.quad	0x3feb88aace7f3130              # double 0.86043300944723988
	.quad	0x3fe4f0f5927d56e4              # double 0.65441397296191584
	.quad	0x3fe441164813d264              # double 0.63294519498465407
	.quad	0x3fe94dc41c851a21              # double 0.79074292726801698
	.quad	0x3fb122141d42c738              # double 0.066926247733843591
	.quad	0x3fe197cf4154bc8b              # double 0.5497814441677219
	.quad	0x3fe219f2ec1a08d6              # double 0.56566759217846641
	.quad	0x3f798e51808cd280              # double 0.0062392409970938312
	.quad	0x3feed3a19ab5db32              # double 0.96333389489050192
	.quad	0x3fcab666591a0adc              # double 0.20869140005750964
	.quad	0x3fe47a403700995f              # double 0.63992319815296728
	.quad	0x3fd4638c19a1920c              # double 0.31857588294067862
	.quad	0x3fecbcf6a6cb9635              # double 0.89806683137130128
	.quad	0x3fe9ed4810fb3134              # double 0.81021502796787681
	.quad	0x3fd509dd11bfc758              # double 0.32872702344240201
	.quad	0x3fe05a8e73d0d1f2              # double 0.51105425472502319
	.quad	0x3fd1224d11ed7066              # double 0.26771857023937284
	.quad	0x3fe94b2fc5852fcd              # double 0.79042805269409089
	.quad	0x3fed15bca22b766c              # double 0.90890342401298829
	.quad	0x3fc624b275c2f608              # double 0.17299490690304276
	.quad	0x3fdb3f54af2e2772              # double 0.42574040515375267
	.quad	0x3fe250b75e88ae77              # double 0.57235306228308402
	.quad	0x3feced250bd7d64f              # double 0.90394832909687206
	.quad	0x3fd63608e1f6924e              # double 0.347048016230734
	.quad	0x3fc88e246316f480              # double 0.19183783377039632
	.quad	0x3fec5b1a446765e2              # double 0.88612092361580275
	.quad	0x3fb41bd52ba5e8d0              # double 0.078549693256636077
	.quad	0x3fedec630c97fe6f              # double 0.93510582408630494
	.quad	0x3fdaffc6aedb1298              # double 0.42186133456952168
	.quad	0x3fd98a3cf711f008              # double 0.39906238677917871
	.quad	0x3fe42e6be05b42f0              # double 0.63066667384745578
	.quad	0x3fa50c50ebe079a0              # double 0.041109589379846101
	.quad	0x3fd46a9c57a30c9e              # double 0.31900700147907368
	.quad	0x3fe2dcc824891f8a              # double 0.58945090423456858
	.quad	0x3fed6ea6ae17b089              # double 0.91975721361588214
	.quad	0x3fe8c325ebcf944d              # double 0.77382179314430177
	.quad	0x3fe5c371726d37cd              # double 0.6801078066725893
	.quad	0x3fe9c3f261acb660              # double 0.80516928746301275
	.quad	0x3fc63b8a2c9a3f5c              # double 0.17369200876100421
	.quad	0x3fee35b855c97985              # double 0.94405762439036833
	.quad	0x3fa64bd9d37b00d0              # double 0.043547446313370153
	.quad	0x3fe76fbb77144a19              # double 0.73238919503848188
	.quad	0x3fed36e72e2f00ab              # double 0.91295203228221078
	.quad	0x3fd9ceeb58145a1c              # double 0.40325435258401554
	.quad	0x3fc86407c8fce3b0              # double 0.19055268586978746
	.quad	0x3fe87e14903306aa              # double 0.76539066471032879
	.quad	0x3f8e7138629b5a00              # double 0.014864387997858053
	.quad	0x3febed12ebde9721              # double 0.87268968647251566
	.quad	0x3fd3f3f0e1e91f32              # double 0.31176397382340604
	.quad	0x3fedec164bbbb8df              # double 0.93506922523172509
	.quad	0x3fca11410faba6a8              # double 0.20365155472909646
	.quad	0x3fe8f38ad6c8b833              # double 0.77972928953182075
	.quad	0x3fe1bcc2a073c2b6              # double 0.55429202402418443
	.quad	0x3fc54e6a80ad680c              # double 0.16645556719851162
	.quad	0x3fe376f1da14539f              # double 0.60826962083466529
	.quad	0x3f9ad9ea6d7d3460              # double 0.026221907551463253
	.quad	0x3fca6844b80dada4              # double 0.20630702006324697
	.quad	0x3fdd75b2b832b0f6              # double 0.46030872333609751
	.quad	0x3fddfe48c463f848              # double 0.46864527872810813
	.quad	0x3fd96ba4f7d6c82a              # double 0.39719509318377055
	.quad	0x3fc537cc8428922c              # double 0.16576534703303147
	.quad	0x3fd05129d97c722c              # double 0.25495382536772371
	.quad	0x3fe9753705b0b4cf              # double 0.79555846320513435
	.quad	0x3fec14e666aa21ed              # double 0.87755127002406896
	.quad	0x3fca285e420a3500              # double 0.20435693955042922
	.quad	0x3feb8f93ec068c4b              # double 0.86127658938165419
	.quad	0x3fd350ab99beda04              # double 0.30179872526369445
	.quad	0x3fd7c7d743ac95c2              # double 0.37157231911472988
	.quad	0x3feda8eed6f914d5              # double 0.92687170016201981
	.quad	0x3fc4c1321513d200              # double 0.16214586285754251
	.quad	0x3fdd1aac14035ce2              # double 0.45475294069679084
	.quad	0x3fd40910f54101ea              # double 0.31305335951404223
	.quad	0x3fd05ff76a974860              # double 0.25585732850334431
	.quad	0x3fef10daab91b799              # double 0.97080739507304081
	.quad	0x3fbad5e0f029b3e8              # double 0.1048260294280251
	.quad	0x3fdd0bd1488d464a              # double 0.45384628377096148
	.quad	0x3fd0992d29fb6f7e              # double 0.25934914684125221
	.quad	0x3fe940a3893f269f              # double 0.78914048009865556
	.quad	0x3fe01af470273e27              # double 0.5032903852933871
	.quad	0x3fea111f5afa5e7f              # double 0.81459014672414287
	.quad	0x3fec52c84812d4cd              # double 0.88510526730410677
	.quad	0x3fd2b176689dacfa              # double 0.29208145347975256
	.quad	0x3fe7adde38ae2c96              # double 0.73997412748703328
	.quad	0x3fec9be935cf1af0              # double 0.89403210172244307
	.quad	0x3fc9c6af08b40f90              # double 0.20137584614724036
	.quad	0x3f9465591243e9e0              # double 0.019917861690354033
	.quad	0x3fd9ced1232c2fcc              # double 0.40324810442757264
	.quad	0x3fb6a21a94791350              # double 0.088411008117941891
	.quad	0x3fd97c37aadaedda              # double 0.39820663151814772
	.quad	0x3fcd65a1fa1f56ec              # double 0.22966408455857079
	.quad	0x3fd67bb2013743b8              # double 0.35129976385820383
	.quad	0x3fd3922eb09e5126              # double 0.30579726455586564
	.quad	0x3fe2631627fa7771              # double 0.57459552582052542
	.quad	0x3fee360421ae475e              # double 0.94409376695896774
	.quad	0x3fd8b9bdb890b814              # double 0.38633673690753878
	.quad	0x3fcc983ec7392560              # double 0.22339615562149628
	.quad	0x3fdaa535b378dc2e              # double 0.41633360411236964
	.quad	0x3fd85c76a496b42a              # double 0.38064352105249333
	.quad	0x3febd9c5106c91df              # double 0.87033322532493773
	.quad	0x3fd702072c1d5672              # double 0.35949878032747684
	.quad	0x3fe9fbd03d2f32e0              # double 0.81198894453117631
	.quad	0x3fcde17d430e0074              # double 0.23344388746409417
	.quad	0x3fdf10d09d23bb5c              # double 0.48540129991208913
	.quad	0x3fe4c5846539b61a              # double 0.64911098261444811
	.quad	0x3fe20d34e2d01155              # double 0.56411213206642208
	.quad	0x3fb25fd2cabe80e8              # double 0.07177464914139231
	.quad	0x3fef94f522811be5              # double 0.98693329562308618
	.quad	0x3fe16ba148f00481              # double 0.54438843007677928
	.quad	0x3fa8b7ab94112ae0              # double 0.048276292633621543
	.quad	0x3fb275c607225590              # double 0.072109581701019332
	.quad	0x3f77ce9596753900              # double 0.0058122485418847791
	.quad	0x3fe00f67548f6bd4              # double 0.50188032642051406
	.quad	0x3fd2e6647ba5bfb4              # double 0.2953120429510776
	.quad	0x3fc75fffae92ea50              # double 0.18261714958301178
	.quad	0x3fc5ff6c97b071a4              # double 0.17185742766095047
	.quad	0x3fd43de839efb9ec              # double 0.31627851159910736
	.quad	0x3fe9873d09abd2a5              # double 0.79775859726813236
	.quad	0x3fefb448e5a36e84              # double 0.99075741626025193
	.quad	0x3fe367504b4cb83f              # double 0.60636152941675181
	.quad	0x3fd503fb24a377d6              # double 0.32836798265441069
	.quad	0x3fc0cd99731e1bd4              # double 0.13127439614274172
	.quad	0x3fd0e4039c911a42              # double 0.26391687669493902
	.quad	0x3fbde36b299cf018              # double 0.11675138250296901
	.quad	0x3fdf0b7532eb5262              # double 0.48507432911472936
	.quad	0x3fef1c06e39fddff              # double 0.97217125375658486
	.quad	0x3fe3f8ab3db6b13f              # double 0.62410509160466876
	.quad	0x3fd0f4ab0e015dcc              # double 0.26493336074551332
	.quad	0x3fbab71396fe5640              # double 0.10435602604260286
	.quad	0x3fdf1897e94c6c72              # double 0.48587606223163171
	.quad	0x3fe5e13f6bcfdd31              # double 0.68374606186890763
	.quad	0x3fe019ccfdd62f2d              # double 0.50314950540039194
	.quad	0x3fd9adf6bd95d230              # double 0.40124290956672137
	.quad	0x3fe04cd064aee86c              # double 0.50937671341604362
	.quad	0x3fe64f5daf9ea023              # double 0.69718822766026667
	.quad	0x3fdd0a5c06e11aea              # double 0.45375729247864049
	.quad	0x3fe74e91da6a154f              # double 0.72834103259143912
	.quad	0x3fe5bb0128df2be4              # double 0.67907770140425017
	.quad	0x3fe90ee719f0124b              # double 0.7830691820714234
	.quad	0x3fbb44fdf40f8228              # double 0.10652148445616005
	.quad	0x3fe599aeb16d8824              # double 0.67501005796316749
	.quad	0x3fea87c5a883b14b              # double 0.8290737429902405
	.quad	0x3fda1cfda4136bfe              # double 0.40801945708307119
	.quad	0x3fe260581ae48926              # double 0.57426076176151208
	.quad	0x3feda22839b239a1              # double 0.92604457157886
	.quad	0x3fc8095271217fd0              # double 0.18778448604552844
	.quad	0x3fb4aafbb1bd3368              # double 0.08073399628956468
	.quad	0x3fe2478948f91949              # double 0.57123245480105667
	.quad	0x3fe32923593d631c              # double 0.59877173833510566
	.quad	0x3fe5ae9ab8c8e6ec              # double 0.67756401148582546
	.quad	0x3fe488a45ede5f21              # double 0.64167994050055566
	.quad	0x3fb2a3c49e238cf0              # double 0.072811401947138199
	.quad	0x3fe1bde542efb5d4              # double 0.5544306094504301
	.quad	0x3fd335854ae8bc06              # double 0.30014164271682409
	.quad	0x3fe82200363e3186              # double 0.75415049166035497
	.quad	0x3fe09d2c0649eb27              # double 0.51918603161116017
	.quad	0x3feadf1a5273fad1              # double 0.83973423103437927
	.quad	0x3fc5ad3f28eedf60              # double 0.16934957026182484
	.quad	0x3fe2330510efa1d6              # double 0.56872800166916693
	.quad	0x3fe19f13d59167f3              # double 0.55066863739489091
	.quad	0x3fc0752165bff848              # double 0.12857453792816131
	.quad	0x3fe4146cf84bb312              # double 0.62749336714986925
	.quad	0x3fb0c70e86685a00              # double 0.065537364782677798
	.quad	0x3fe6f3913ede9278              # double 0.71723234442886419
	.quad	0x3fd761d867ab5d0c              # double 0.36534700511897777
	.quad	0x3fd5141973fb0d68              # double 0.32935177160489681
	.quad	0x3fe3db5af85081d8              # double 0.62052677630350228
	.quad	0x3fc2f990d32dd134              # double 0.14824114142869294
	.quad	0x3fe66434939ff4e2              # double 0.69973210175490075
	.quad	0x3fc9644149d53fac              # double 0.19837204079749193
	.quad	0x3f8fff3d733eb980              # double 0.015623550490855065
	.quad	0x3fb819089d8e0990              # double 0.094131983247313977
	.quad	0x3feac6cdfe7f8224              # double 0.83676814753204498
	.quad	0x3fe72d68ead98627              # double 0.72429319256861369
	.quad	0x3fece45076bbb437              # double 0.90287039938050995
	.quad	0x3fd8b31506c327a0              # double 0.38593030605681555
	.quad	0x3fede0cbbf5bc6dd              # double 0.93369090437610291
	.quad	0x3fd001a2f9061d72              # double 0.25009989088763185
	.quad	0x3fd5ede3400469e0              # double 0.34264451266940732
	.quad	0x3fd0385cdfb48c60              # double 0.25344011160104252
	.quad	0x3fe7f28f0c73211a              # double 0.74835922652804077
	.quad	0x3fe808f3e54f6361              # double 0.7510928610528077
	.quad	0x3fdd8cf83cd1bd24              # double 0.46172910632499709
	.quad	0x3f96eca38d24ca40              # double 0.022387080659607372
	.quad	0x3fd99edd9dccd5e4              # double 0.40032139215631291
	.quad	0x3fdfaa21114541c8              # double 0.49475886046004947
	.quad	0x3fc543e1a82af1fc              # double 0.16613407813373715
	.quad	0x3fe2bf03829681c4              # double 0.58581710343792581
	.quad	0x3fd3b56cc9b361c4              # double 0.30794830033621801
	.quad	0x3fe8a6f618b25fcd              # double 0.77038101981724483
	.quad	0x3fd0c2ff450f4910              # double 0.26190168136703651
	.quad	0x3fd5d328da1c7f06              # double 0.34101315784390385
	.quad	0x3fb3fb7eb34bd0e8              # double 0.0780562579855687
	.quad	0x3fdb5bff264ad920              # double 0.4274900316189747
	.quad	0x3fe8087e8d3f044b              # double 0.75103690707340698
	.quad	0x3fe13d4639aaf671              # double 0.53872977507826481
	.quad	0x3fdb057864814e70              # double 0.42220887961341358
	.quad	0x3fd8f50359e581f8              # double 0.38995441225964056
	.quad	0x3fdebaf508f37278              # double 0.48016095995061603
	.quad	0x3fdc50bb629cc2a4              # double 0.44242748861419501
	.quad	0x3fecd43d78e36852              # double 0.90090821848867564
	.quad	0x3fe9f63890d65ec2              # double 0.81130626953650897
	.quad	0x3fc1a7dc83ce63ac              # double 0.13793522296762484
	.quad	0x3fe802991223a654              # double 0.75031713049720361
	.quad	0x3fe471c6e52c1b1a              # double 0.6388887859364758
	.quad	0x3fd64f0c903c6d9e              # double 0.34857477269698645
	.quad	0x3fe15c804367223a              # double 0.54254162945387141
	.quad	0x3fdfdf48008a1dca              # double 0.49800300648390972
	.quad	0x3fe427740e135c02              # double 0.62981608151574187
	.quad	0x3fe6fa371bc6628c              # double 0.71804385590356068
	.quad	0x3fd17e94b2575674              # double 0.27335088173035804
	.quad	0x3fef5d3c3dfa2ff9              # double 0.98013126473369915
	.quad	0x3fd89bbbe42dcbe6              # double 0.38450524600119562
	.quad	0x3fee818fa2db5f16              # double 0.95331556137077444
	.quad	0x3fb5fd4dce793da0              # double 0.085896361263840593
	.quad	0x3fece8a5c68ff54f              # double 0.90339936048227709
	.quad	0x3fdd98e16076b646              # double 0.46245607776913678
	.quad	0x3fbfddf44a662f78              # double 0.12448050323854243
	.quad	0x3fc6f01e01c4f76c              # double 0.17920279585262777
	.quad	0x3fa9d4c093a77330              # double 0.050451295875723168
	.quad	0x3fdc3513d2fc233e              # double 0.44073958972926508
	.quad	0x3fc711124a00a198              # double 0.18020847905542037
	.quad	0x3f63b4eb8c881900              # double 0.0024056053700888258
	.quad	0x3fe3b35f20163649              # double 0.61564594523378802
	.quad	0x3fd3830963bda718              # double 0.30487284412684934
	.quad	0x3faea92f56248100              # double 0.059884528413251203
	.quad	0x3fd5886742e3c902              # double 0.33645040065961507
	.quad	0x3fd0d19240fa8c88              # double 0.26279121728493537
	.quad	0x3fe517703ed44a34              # double 0.65911113997783
	.quad	0x3fb499e1f26b5af8              # double 0.080473062214291846
	.quad	0x3fe01ebf89eeb3ea              # double 0.50375344219139362
	.quad	0x3fe6033c8e63f0a4              # double 0.6878950863897626
	.quad	0x3fef19bc8c7d7000              # double 0.97189166488124101
	.quad	0x3fe36743ffbd08be              # double 0.60635566662701712
	.quad	0x3fe93cf634531581              # double 0.78869161815298139
	.quad	0x3fda560d14764062              # double 0.41150214193567625
	.quad	0x3fcbc96705a934e4              # double 0.21708381439604019
	.quad	0x3fe169c4993b73eb              # double 0.54416112831279173
	.quad	0x3fee330ba0049855              # double 0.94373112920289748
	.quad	0x3fdbc4383ad24376              # double 0.43385129684707324
	.quad	0x3fede2c05b666b36              # double 0.93392961360527837
	.quad	0x3fe2f41b3395ae9b              # double 0.59229812693725437
	.quad	0x3fec0e8a9ecaa04d              # double 0.87677508367506507
	.quad	0x3fc465aff385b044              # double 0.15935325041516724
	.quad	0x3fe0c5d951432d92              # double 0.52415147658887151
	.quad	0x3fa703d780fb8cf0              # double 0.044951185698460239
	.quad	0x3fd7771e04678e54              # double 0.36664534025314777
	.quad	0x3fee20a0416517a7              # double 0.94148266575279116
	.quad	0x3fd729a5728223cc              # double 0.36191688711602121
	.quad	0x3fd72fce1436543e              # double 0.36229278539514442
	.quad	0x3fe83e43383d45a0              # double 0.75760041221854024
	.quad	0x3fe3398df78a850e              # double 0.60077570293302229
	.quad	0x3fc5eb9005fe90e4              # double 0.17125129978842957
	.quad	0x3fec33b1b54cbbc0              # double 0.88131032381158292
	.quad	0x3fdcc116467f8a3e              # double 0.44928509602155831
	.quad	0x3fadd8bcbfb71060              # double 0.058294199373933209
	.quad	0x3fe66e435afe683f              # double 0.70095985195371913
	.quad	0x3fdb9077c4879392              # double 0.43069261734336195
	.quad	0x3fe7673ea99b1518              # double 0.73135312200671176
	.quad	0x3fd15bfd42b4a7d2              # double 0.27123958124377368
	.quad	0x3fca3f3632f2a15c              # double 0.20505406844791707
	.quad	0x3fe52d97ff500e19              # double 0.66181564203037901
	.quad	0x3fdab6b3261dc9b0              # double 0.41740111086178455
	.quad	0x3fe1e340b96cc16b              # double 0.5589908238962783
	.quad	0x3fe5dc16e37f2d7b              # double 0.68311638291326859
	.quad	0x3fcd3635f5414ab0              # double 0.22821688151687658
	.quad	0x3fb6167cf04da910              # double 0.086280640285313348
	.quad	0x3fefec2781ff4227              # double 0.99757743253764352
	.quad	0x3fcd83018116f844              # double 0.23056048205575241
	.quad	0x3fdf6e2fd0edd822              # double 0.4911002674410857
	.quad	0x3fc4172c77f099dc              # double 0.15695720535695912
	.quad	0x3fead8c91953068d              # double 0.83896307893901823
	.quad	0x3fdf718943e4b264              # double 0.49130469923219366
	.quad	0x3fdcf9ad75810288              # double 0.45273910975451104
	.quad	0x3fdb11af61ef8650              # double 0.42295441211726814
	.quad	0x3fc0c3d4c18058b8              # double 0.13097629020984924
	.quad	0x3fe8f8fb22df8f40              # double 0.78039318858325402
	.quad	0x3fe4688f0287db41              # double 0.63776350492739919
	.quad	0x3fef1d15118ad2bb              # double 0.97230008531786127
	.quad	0x3fcdb1ff70b85564              # double 0.23199456218632541
	.quad	0x3fe2fa6f9c84ab36              # double 0.59307079858749634
	.quad	0x3fe4c96358edce30              # double 0.6495835053341974
	.quad	0x3fe94e65ab140da1              # double 0.79081996358620554
	.quad	0x3fd08fc6c1685526              # double 0.25877541434722884
	.quad	0x3fefcc4a9e614d90              # double 0.99368792470561296
	.quad	0x3fd41be1430627a4              # double 0.31420165582005155
	.quad	0x3fcb28b84730155c              # double 0.212180170783692
	.quad	0x3fe2ed53180f4b10              # double 0.59147028636138721
	.quad	0x3fe0aef94287da69              # double 0.5213590907504343
	.quad	0x3fe92b06a95204f6              # double 0.78650219984424896
	.quad	0x3fe153365aac57bf              # double 0.541407754036065
	.quad	0x3f5ee48b8abf4600              # double 0.0018855440821322622
	.quad	0x3fe1220e7bb81363              # double 0.5354072967898954
	.quad	0x3f999b72477a05e0              # double 0.025007043469036705
	.quad	0x3fefd46dda466ba5              # double 0.99468128806926314
	.quad	0x3fe4bb5d3a1d4ecd              # double 0.64787160253987397
	.quad	0x3fbb7f79c242e578              # double 0.10741387360294208
	.quad	0x3fbe99fa0ddc49b0              # double 0.11953699911490534
	.quad	0x3fc7f46f9d3503bc              # double 0.18714709449889522
	.quad	0x3f8c1e6b70069fc0              # double 0.013729895931490321
	.quad	0x3feaadbea4e768ca              # double 0.83370907028008756
	.quad	0x3fea07d9a2a34db1              # double 0.81345826878753347
	.quad	0x3fd96d637412df38              # double 0.39730154357265546
	.quad	0x3fe9d56233c95208              # double 0.80729780306370547
	.quad	0x3febe65028ab3cec              # double 0.87186439459938247
	.quad	0x3fece5eb7de11553              # double 0.90306639276301792
	.quad	0x3fac2bca11864b30              # double 0.05502158607409624
	.quad	0x3fe78718ef68fc23              # double 0.73524138221535329
	.quad	0x3fec877a8d99bfa4              # double 0.89153793007243509
	.quad	0x3fe0a15c38b45ac2              # double 0.51969729495143491
	.quad	0x3fec7834df64abaa              # double 0.88967364913456959
	.quad	0x3feebae41ffb04b1              # double 0.96031385656546863
	.quad	0x3fdff0cac7db6816              # double 0.49907178418436737
	.quad	0x3fea39dd36763da8              # double 0.81956349026761632
	.quad	0x3fe7cefde61f9aa9              # double 0.74401755281436011
	.quad	0x3fbf0d0e8b1d12d0              # double 0.12129298111274101
	.quad	0x3fefd7ac53193342              # double 0.9950772879616141
	.quad	0x3fe55d0684455d6d              # double 0.66760564645930531
	.quad	0x3fba7d0de4bd50b0              # double 0.10347067675076249
	.quad	0x3fd2836ecdeaa906              # double 0.28927202328726798
	.quad	0x3fd58f775121b79a              # double 0.33688147471445407
	.quad	0x3fe177ec31f919fb              # double 0.54588899383890011
	.quad	0x3fef23a7624bebd6              # double 0.97310227583454423
	.quad	0x3fc99d7c99b36864              # double 0.2001186132900471
	.quad	0x3fd55673ca85c8e2              # double 0.33340163018796265
	.quad	0x3fe7c4f244846ed8              # double 0.74279130346573208
	.quad	0x3fddce6d6d465478              # double 0.46572433158264159
	.quad	0x3fdf88ad77aef9a4              # double 0.49271713912812687
	.quad	0x3fb7256024a03a80              # double 0.090414055768841095
	.quad	0x3fe6413ce0eeff21              # double 0.69546359951343473
	.quad	0x3fda11a6792b1464              # double 0.40732728798713524
	.quad	0x3fde8438244f97f4              # double 0.47682002588260208
	.quad	0x3fc2b33b836607ec              # double 0.14609474101968034
	.quad	0x3fe453a192c38616              # double 0.63520888008878518
	.quad	0x3fe56e3a1afa8bb1              # double 0.66970544118190933
	.quad	0x3fe2d7f9d4e018b8              # double 0.58886424615118127
	.quad	0x3faa83bd51993b50              # double 0.051786342821847797
	.quad	0x3fb1fa0d84a76978              # double 0.070221753011912358
	.quad	0x3fb6e1a54d04d378              # double 0.089380580237799268
	.quad	0x3fe397b8b131b19b              # double 0.61227068527437056
	.quad	0x3fd3d5f310bf38c6              # double 0.30993343959279362
	.quad	0x3f824eac74070380              # double 0.0089391205700637411
	.quad	0x3fe7b6fe7b93b44e              # double 0.74108814369322729
	.quad	0x3fc81e73c9648d80              # double 0.18842933019287145
	.quad	0x3fb14676dc039148              # double 0.067481449808444727
	.quad	0x3fecf07f884660e1              # double 0.90435768715090259
	.quad	0x3fdf52c66e5d3602              # double 0.48942719247574484
	.quad	0x3feb5d8870347b29              # double 0.85516759791412256
	.quad	0x3fdfe7d54459d14a              # double 0.498524967907788
	.quad	0x3fd3fb51fb94fffa              # double 0.31221437042768196
	.quad	0x3fe649343d6dd0f9              # double 0.69643604276509941
	.quad	0x3fe603d3fec33dcc              # double 0.68796729811031687
	.quad	0x3fab6ceb8c380a30              # double 0.053565369478765112
	.quad	0x3fd5092d48ac0dfc              # double 0.32868511292346603
	.quad	0x3fead77bbcfde708              # double 0.83880412018263062
	.quad	0x3fe121c89828b6e3              # double 0.53537397116243957
	.quad	0x3fef566289a5775b              # double 0.97929503330281464
	.quad	0x3fd2663c0a230bea              # double 0.28748990049297041
	.quad	0x3fd189c262baab30              # double 0.27403316155930479
	.quad	0x3fe603d66207eb3d              # double 0.68796843668619767
	.quad	0x3fe3c7ee17640b63              # double 0.61815552299991017
	.quad	0x3fe0be17c72852d3              # double 0.52320469758941568
	.quad	0x3f94da1fb22c0a80              # double 0.020363326310880669
	.quad	0x3fead0891f5da1ed              # double 0.83795601011393972
	.quad	0x3fc42648e3168934              # double 0.15741835678370253
	.quad	0x3fec73e24e9163d6              # double 0.88914599747942691
	.quad	0x3f8bf325a1f865c0              # double 0.013647359853211749
	.quad	0x3fe52e4a26c05b36              # double 0.66190059250479893
	.quad	0x3fb598ba4e4678c0              # double 0.084361690626312047
	.quad	0x3fde01c2402ef648              # double 0.46885734813608737
	.quad	0x3fd00fdae748c466              # double 0.25096771799423434
	.quad	0x3feeb981e46dc2d0              # double 0.96014494528761851
	.quad	0x3fdfa2a32e4a1c76              # double 0.49430160065134687
	.quad	0x3fee520b5cbaa572              # double 0.94751518355512432
	.quad	0x3fd918855e8d3a8c              # double 0.39212164147912953
	.quad	0x3fa1d1d140a43090              # double 0.034803904667655705
	.quad	0x3fef19892d0ea7fc              # double 0.97186716842884335
	.quad	0x3fbceac64a573830              # double 0.11295737566908381
	.quad	0x3fdd1c0364c56522              # double 0.45483479348111377
	.quad	0x3fc11524df732d0c              # double 0.13345776472701976
	.quad	0x3fd5c3599f8be628              # double 0.34004822331152917
	.quad	0x3fd496fbabea488e              # double 0.32171527660933286
	.quad	0x3fd19cb8afb314f4              # double 0.27519051702650121
	.quad	0x3fcad11e3ad00060              # double 0.20950677749351865
	.quad	0x3fe04a3e302aab03              # double 0.50906285674622642
	.quad	0x3fe8aa3ef627a785              # double 0.77078197552803884
	.quad	0x3febea84ef099ead              # double 0.87237784087206693
	.quad	0x3fe994ba150248cd              # double 0.79940513709359495
	.quad	0x3fe8a05ede9c180d              # double 0.76957648733582718
	.quad	0x3fc9ae524b5b3664              # double 0.20063236884600422
	.quad	0x3feeb7b95bf4d0dd              # double 0.95992725334374606
	.quad	0x3fe76a145f6b8feb              # double 0.7316991676020711
	.quad	0x3fe05a95fcd43030              # double 0.51105784779202246
	.quad	0x3fcaae946eb4837c              # double 0.20845275311969746
	.quad	0x3fd669defe8524c6              # double 0.35021185737111826
	.quad	0x3fee5d55a674dd47              # double 0.9488933802703422
	.quad	0x3fe746826c5722fb              # double 0.72735711250524504
	.quad	0x3fb7bd9ac136d040              # double 0.092736885234274702
	.quad	0x3f7929f04bef6700              # double 0.0061435114466463769
	.quad	0x3fea6be73e91430d              # double 0.82567178936196373
	.quad	0x3fe9e27de47f5ab6              # double 0.80889792087949419
	.quad	0x3fe88f6dccd23053              # double 0.76750841144667914
	.quad	0x3fb8a6c77a327608              # double 0.096294848759917895
	.quad	0x3fc084f5a1c9397c              # double 0.12905760192593252
	.quad	0x3fcf12ffb8f7c524              # double 0.24276730090745346
	.quad	0x3fea107224766882              # double 0.81450755235279382
	.quad	0x3fe4b5ca8b3995e4              # double 0.64719130699512251
	.quad	0x3fefb78db5eb334f              # double 0.99115644007688696
	.quad	0x3feb6e62d23bcaf7              # double 0.85722485600703535
	.quad	0x3feec428bcc20e9b              # double 0.96144520632556706
	.quad	0x3fef74a61f15e23d              # double 0.98298936911948653
	.quad	0x3fd97af1b0728274              # double 0.39812891226942004
	.quad	0x3fc2c0d69ff918e8              # double 0.14650996028121388
	.quad	0x3fdbc84b25853af8              # double 0.43409994758705706
	.quad	0x3fe31529cbed1f07              # double 0.59633340672823543
	.quad	0x3fea18e0c66d6dbe              # double 0.81553686862337549
	.quad	0x3fb450655925a830              # double 0.079351743950298425
	.quad	0x3fe0f3cc7677e13c              # double 0.52976058138214155
	.quad	0x3fb52515b3f31048              # double 0.082597118790603052
	.quad	0x3fcc02d2cc4d9430              # double 0.21883616424307339
	.quad	0x3fe0f0a1ed785b56              # double 0.52937408810508191
	.quad	0x3fbe572ecf49a6c0              # double 0.11851780472502593
	.quad	0x3fed2cd07fb62b2d              # double 0.91172051376029162
	.quad	0x3fe636611984580f              # double 0.69413809760840361
	.quad	0x3fef02183c23d5aa              # double 0.96900569673623704
	.quad	0x3feaf3e8d8572c98              # double 0.8422741151238311
	.quad	0x3fe358db2d09d884              # double 0.60459669872831556
	.quad	0x3fc95463f91dc0e0              # double 0.19788789428594722
	.quad	0x3fc3b5ebd867eb08              # double 0.1539892965955334
	.quad	0x3fc800ae213e6558              # double 0.18752075789670175
	.quad	0x3fe958c87318ca22              # double 0.79208776931620073
	.quad	0x3fe5f23e1498ddae              # double 0.68582061789395765
	.quad	0x3fedf08f250cec16              # double 0.93561513172551503
	.quad	0x3fec43eff88a2fae              # double 0.88329313795974485
	.quad	0x3fe201f5011e47c4              # double 0.56273889749922335
	.quad	0x3fe65d3f12472d11              # double 0.69888261384895334
	.quad	0x3fc009a403f44b28              # double 0.12529421036796262
	.quad	0x3fea91dce8bd9e68              # double 0.83030553300063747
	.quad	0x3fe4e3e1648a083e              # double 0.65281743656692703
	.quad	0x3fc9488d86321838              # double 0.19752663662456071
	.quad	0x3fe3f7930e5ace1e              # double 0.62397148898748234
	.quad	0x3fd90d75b9c9d394              # double 0.39144652503392163
	.quad	0x3fe0c26ca0d43592              # double 0.52373343860533539
	.quad	0x3fb58228743503e0              # double 0.084017303820487665
	.quad	0x3fcaeecaa93b6e60              # double 0.21041234267510145
	.quad	0x3fd6d219cbc88c42              # double 0.35657353306504913
	.quad	0x3fb337d623c820b8              # double 0.075070747123507142
	.quad	0x3fe6973f088cee48              # double 0.70596267385503442
	.quad	0x3f6f250b742f9600              # double 0.0038018439968137141
	.quad	0x3fa5c133d9745420              # double 0.042489643377997988
	.quad	0x3fdf3eca0d9330a6              # double 0.48820735288314621
	.quad	0x3fef1019a3b8ff31              # double 0.97071535088614357
	.quad	0x3fed87bda9e0f313              # double 0.9228199308341537
	.quad	0x3fe77c73f265efeb              # double 0.73394200652501007
	.quad	0x3fdea2ff2e9b849e              # double 0.47869853545678065
	.quad	0x3fae44f5b0155c50              # double 0.059119870895920301
	.quad	0x3fe336338cfaba25              # double 0.6003663781646692
	.quad	0x3fdc701f0ab489c2              # double 0.44434333844597174
	.quad	0x3fe88814edafeb76              # double 0.76661154197004922
	.quad	0x3fa79d6b81119a30              # double 0.046122893815482846
	.quad	0x3fd3b250bf547e08              # double 0.30775850948882111
	.quad	0x3fc78128b7f5d780              # double 0.18362912161290623
	.quad	0x3fef24915b492634              # double 0.97321384267087873
	.quad	0x3fc3bbdda0c3452c              # double 0.15417070722336612
	.quad	0x3fe82743aae18d2a              # double 0.75479300856787757
	.quad	0x3fd543cc10cab186              # double 0.33226300849744239
	.quad	0x3fc7998d835506d8              # double 0.18437355911924302
	.quad	0x3fcda7c98ed2d384              # double 0.23168296312146819
	.quad	0x3fe97e584d000db3              # double 0.79667296446898772
	.quad	0x3fef42c174a5046b              # double 0.97689888746402908
	.quad	0x3fea16f3238f9b10              # double 0.81530148454189266
	.quad	0x3fcfc30c7736bc8c              # double 0.24813991375910793
	.quad	0x3feb1b28a12a914f              # double 0.84706527211941729
	.quad	0x3fc8b72dd97b3fa4              # double 0.19309018248759202
	.quad	0x3fc05fb652ddd378              # double 0.12792090460029804
	.quad	0x3fb84c71d251de10              # double 0.094916452262502781
	.quad	0x3fb62fd712e1d418              # double 0.086667482480905611
	.quad	0x3fdba12c371e6736              # double 0.43171220190707815
	.quad	0x3fce570a83680a78              # double 0.23703128258064843
	.quad	0x3fb55507dd2a4bc8              # double 0.083328715796866182
	.quad	0x3fede2f1f57aef5b              # double 0.93395326562265824
	.quad	0x3fa0d08132837fb0              # double 0.032840764442652826
	.quad	0x3fd433cf6101a5ea              # double 0.31566223595890952
	.quad	0x3fcb82b3e8d69b80              # double 0.21492623204286687
	.quad	0x3fc1f5fc385eee28              # double 0.14031937363130109
	.quad	0x3fdb6eaed79171fe              # double 0.42863055278374407
	.quad	0x3fe144272fa00a1b              # double 0.53956946660793237
	.quad	0x3fd0edc2a2438122              # double 0.26451173635543246
	.quad	0x3fa68accc41c3690              # double 0.044027708949312516
	.quad	0x3fe0a880bbc00d2c              # double 0.52056919736825114
	.quad	0x3fa9e8b768c57750              # double 0.050603610553237588
	.quad	0x3fed8671c23f1d75              # double 0.92266166628625845
	.quad	0x3fd69bc84c030078              # double 0.35325820372600658
	.quad	0x3fd2a3640ccdf698              # double 0.29122258425182102
	.quad	0x3fe8293e864bdb6b              # double 0.75503469686269165
	.quad	0x3fc20a77bba3bc68              # double 0.14094444906320125
	.quad	0x3fa1c2193d390e70              # double 0.034683979724403069
	.quad	0x3feaab09b0ee5518              # double 0.83337864453156651
	.quad	0x3fc6131793be2890              # double 0.1724576445961401
	.quad	0x3fd01eb3bb9917c0              # double 0.2518739063274289
	.quad	0x3fc12676420389f0              # double 0.13398626540499903
	.quad	0x3fcedc08e870c618              # double 0.24108992910036942
	.quad	0x3fb0734a925d7fd0              # double 0.064259205564211941
	.quad	0x3fdcc2d697dcb306              # double 0.44939198332103591
	.quad	0x3fea786391e08851              # double 0.8271959160958976
	.quad	0x3fbd1d89e50b8bc0              # double 0.11373197404786506
	.quad	0x3fecd71a944d4504              # double 0.90125779118730564
	.quad	0x3fe8ebdced74b55e              # double 0.7787918699083709
	.quad	0x3fcdaec56a130d30              # double 0.23189609221854246
	.quad	0x3fe9adebbb4a7fa3              # double 0.80248056965136916
	.quad	0x3fe9c815267752c0              # double 0.80567414772902879
	.quad	0x3fce95db49230ba4              # double 0.23894826003205794
	.quad	0x3fe72f132412daba              # double 0.72449643178591505
	.quad	0x3fdc60aa73d12b5c              # double 0.44340001402149709
	.quad	0x3febfa415d4be39a              # double 0.87429874631844773
	.quad	0x3fee81cc76c64e49              # double 0.95334456632776565
	.quad	0x3fda383b2bea80de              # double 0.40968207634615605
	.quad	0x3fb6704146e55818              # double 0.087650375183642715
	.quad	0x3fe49a43803149b0              # double 0.64383101499179496
	.quad	0x3fda3769f2703bb6              # double 0.40963219333292089
	.quad	0x3fec37f061a2ac7e              # double 0.88182848996565588
	.quad	0x3fe526db9e259d29              # double 0.66099339378425725
	.quad	0x3fc51cfb6e227ffc              # double 0.16494696500467387
	.quad	0x3fd4f63aad11d9e2              # double 0.32752863789883524
	.quad	0x3fb94c8e2627e068              # double 0.098824390712140109
	.quad	0x3feb7810cff400ca              # double 0.85840645423743323
	.quad	0x3fe11edc52d3eba0              # double 0.53501716782863085
	.quad	0x3fe168d5292fd50c              # double 0.54404695553117355
	.quad	0x3fe56a831b94a26e              # double 0.66925197016560189
	.quad	0x3fe6a9e8ff34db13              # double 0.70824098439229244
	.quad	0x3feeb4f06e77a377              # double 0.95958730292942007
	.quad	0x3fe7a3c41b1119c4              # double 0.73874097143635042
	.quad	0x3fc4054f9c286ecc              # double 0.15641207814120717
	.quad	0x3fdbdc0d573f54ee              # double 0.4353059150719919
	.quad	0x3fcabe78cb7b3a2c              # double 0.20893773971188645
	.quad	0x3fbea7a28f7569b8              # double 0.11974540712745962
	.quad	0x3fe22a53654a8acd              # double 0.56766671927865675
	.quad	0x3fe13a669dff43d3              # double 0.53837900980772202
	.quad	0x3fc5893c13249f68              # double 0.16825056967467877
	.quad	0x3fd45ff019da6a82              # double 0.31835558438039169
	.quad	0x3fd7859be7e78092              # double 0.36752984663872568
	.quad	0x3fa0a5811b5b8da0              # double 0.032512697782091537
	.quad	0x3fed9a98973b8128              # double 0.92512158906541675
	.quad	0x3feaaa1a600455e5              # double 0.83326452973659271
	.quad	0x3fc276e52cf92984              # double 0.14425339408837712
	.quad	0x3fc940d4f63e7ebc              # double 0.19729101203573929
	.quad	0x3fb0962e3ee6d310              # double 0.064791574818468201
	.quad	0x3fef40cd768d6a65              # double 0.97666047243849318
	.quad	0x3fbcb88b03038038              # double 0.11219090293479972
	.quad	0x3fc60cd9c954cfcc              # double 0.17226717310552286
	.quad	0x3fe36b5a84618314              # double 0.60685468536039133
	.quad	0x3fde66968df23388              # double 0.47501148092197143
	.quad	0x3fb70efeb5244f40              # double 0.090072554802017812
	.quad	0x3fdc45822c23fa08              # double 0.4417424613056089
	.quad	0x3fe0eb620533e018              # double 0.52873326316967262
	.quad	0x3fde653faa312d8e              # double 0.47492972965547942
	.quad	0x3fef40c776a5927e              # double 0.9766576115913066
	.quad	0x3fe3d96da60fac9f              # double 0.62029154237588446
	.quad	0x3fe5f38aa68643d9              # double 0.68597919964133347
	.quad	0x3fea2dfd2f6cb936              # double 0.81811389219891484
	.quad	0x3fe6737510e5c4c7              # double 0.7015939073591192
	.quad	0x3fe6ddda86d592b4              # double 0.7145817407113868
	.quad	0x3fc54a98eff31d50              # double 0.16633903232853209
	.quad	0x3fedd975e7b6fe11              # double 0.93279547936248453
	.quad	0x3fe887669ee01d58              # double 0.7665284255062188
	.quad	0x3fcc7f33b4308410              # double 0.22263189600292366
	.quad	0x3fe529f37af99463              # double 0.66137098330058242
	.quad	0x3fda82bd05ef17b4              # double 0.41422963695037684
	.quad	0x3fe887b1c0a00ac5              # double 0.76656425115682991
	.quad	0x3fdf1aec22df4eac              # double 0.48601821332452277
	.quad	0x3fcedb374909e878              # double 0.24106494013159696
	.quad	0x3fe403dff508f4fa              # double 0.62547300203701117
	.quad	0x3f9dc87300f1b240              # double 0.029084965641617666
	.quad	0x3fe91d7bcde43435              # double 0.78484907353561673
	.quad	0x3fd55d9c30d665f4              # double 0.33383850831304973
	.quad	0x3fe78996f2ad5b61              # double 0.73554561040769439
	.quad	0x3fc7dedbf9844db4              # double 0.18648862536848088
	.quad	0x3fed8882a10de222              # double 0.92291385131744996
	.quad	0x3fc823ea5fb451a8              # double 0.18859605477395047
	.quad	0x3fdcb091786a7b06              # double 0.4482768703400527
	.quad	0x3fc50f45df070084              # double 0.16452859296805766
	.quad	0x3fe7f7629d4c4747              # double 0.74894839021929094
	.quad	0x3fe8842e18309680              # double 0.76613526081628436
	.quad	0x3fdb65876412abcc              # double 0.42807183048961117
	.quad	0x3fe8d2cabd0457ad              # double 0.77573143880248596
	.quad	0x3fe20635cf679308              # double 0.56325808056553317
	.quad	0x3fe856d37551833f              # double 0.76059887803794612
	.quad	0x3fe20d951e5e0ea3              # double 0.56415801936278276
	.quad	0x3fe0f7d770530dbe              # double 0.53025409639706544
	.quad	0x3fd372eddb72757a              # double 0.30388971739178994
	.quad	0x3fbdbb34eff3ac98              # double 0.11613779886436004
	.quad	0x3fec8e48374b631c              # double 0.89236841964438751
	.quad	0x3fe99895452da826              # double 0.79987586509128472
	.quad	0x3f87836623886700              # double 0.011481092414260541
	.quad	0x3feea6d89d8c3d3c              # double 0.95786696215683475
	.quad	0x3fbf990d610488d0              # double 0.12342914217564105
	.quad	0x3fd555b4377417ca              # double 0.33335595527057349
	.quad	0x3feb3245434370fc              # double 0.84988654267684138
	.quad	0x3fcad37d76226570              # double 0.20957916515616715
	.quad	0x3fc487a9e15e24b8              # double 0.16039012436184463
	.quad	0x3fe3b0c2ed5d39a7              # double 0.61532732353389441
	.quad	0x3fe76175bd199282              # double 0.73064696248600591
	.quad	0x3fe690eb89571752              # double 0.70519043754823429
	.quad	0x3fea8c121fa0243e              # double 0.82959848572603057
	.quad	0x3fec8ddd9437ca61              # double 0.8923175711518746
	.quad	0x3fc03ec111ca6c00              # double 0.12691510552107843
	.quad	0x3fefe96357dcb80e              # double 0.99723975334723192
	.quad	0x3feb79e44f95b40e              # double 0.85862937492277225
	.quad	0x3fe76d474afb76a8              # double 0.73208965916611124
	.quad	0x3fe9397b051c5514              # double 0.7882666683023296
	.quad	0x3fe5a1cd17c95b1c              # double 0.67600111623582704
	.quad	0x3fe7a2cfc2c1fc97              # double 0.73862445868134585
	.quad	0x3fe3edcbf4b820f0              # double 0.62277791783074399
	.quad	0x3fea0196c2f963f4              # double 0.8126939590539437
	.quad	0x3fe2fba63555865b              # double 0.59321890274822964
	.quad	0x3fcb928dc9ba4c7c              # double 0.21540996885287089
	.quad	0x3fd43ff3dcf80eea              # double 0.31640335635186878
	.quad	0x3fe318d8b18c58d8              # double 0.59678301503552245
	.quad	0x3fd0ac8203574946              # double 0.26052904440179636
	.quad	0x3fe8fbb9d56b0203              # double 0.78072826083376901
	.quad	0x3fce534914047a28              # double 0.23691667058388188
	.quad	0x3fce3ab1d2251b70              # double 0.23616621743186839
	.quad	0x3fe7d52fd2509a14              # double 0.74477377965087266
	.quad	0x3fef681cc9d06497              # double 0.9814590398483628
	.quad	0x3fccb28502a5289c              # double 0.22419798497350463
	.quad	0x3fd77eaa947a2d46              # double 0.3671060991261651
	.quad	0x3fe471d06f4579d6              # double 0.63889333470052168
	.quad	0x3fd45143477a2184              # double 0.3174598882692623
	.quad	0x3fd80d40d912eae0              # double 0.37580891798613258
	.quad	0x3fe39cce419c6f1d              # double 0.61289131941473196
	.quad	0x3fece5cc4fde98d5              # double 0.90305152511134656
	.quad	0x3fe934471b1a2f55              # double 0.78763156217017161
	.quad	0x3fe15c611e474d86              # double 0.54252677835249652
	.quad	0x3fc6176f4b630454              # double 0.17259017163272239
	.quad	0x3fe8a7e7b359cb80              # double 0.77049622563787068
	.quad	0x3feb6680c8368c38              # double 0.85626257995716681
	.quad	0x3fccf7402771c50c              # double 0.22629548955914236
	.quad	0x3fe1d0448097bda1              # double 0.55667328944939609
	.quad	0x3fe42d3d946fb098              # double 0.63052252761328287
	.quad	0x3fd460cc6138c932              # double 0.31840810293501243
	.quad	0x3fd826acda4e5760              # double 0.37736054724643076
	.quad	0x3fb2b7b34e95e2c8              # double 0.073115545926962899
	.quad	0x3fd78122aaa1012a              # double 0.36725680029850827
	.quad	0x3fc56b391dd4456c              # double 0.16733468967917575
	.quad	0x3feb636f829852e2              # double 0.85588813311423118
	.quad	0x3fd2beccec6a35fe              # double 0.29289553725615736
	.quad	0x3fc827707e04276c              # double 0.18870359566818296
	.quad	0x3feecc90973f39e6              # double 0.96247129002022969
	.quad	0x3fe053f9b4fbc7dc              # double 0.51025090549796515
	.quad	0x3fe2e084ff8ef66b              # double 0.58990716851958547
	.quad	0x3fec77ee72d04cda              # double 0.88964006828828279
	.quad	0x3fed11d36ff4bf98              # double 0.9084260164872715
	.quad	0x3fe90601d236e230              # double 0.78198329026696989
	.quad	0x3fed2fe655001ebb              # double 0.91209713555959782
	.quad	0x3fded9d7cfea5f68              # double 0.48204608253717263
	.quad	0x3fd6070071ecdf68              # double 0.34417735219493872
	.quad	0x3fd0037643dc7d30              # double 0.25021130206183084
	.quad	0x3fe741b3aaa5fe9d              # double 0.72677024202126328
	.quad	0x3fd8b430cb8fff5e              # double 0.38599796179913948
	.quad	0x3fdad1440cfbc30c              # double 0.41902257221140427
	.quad	0x3fe752e3457ad735              # double 0.72886813707621079
	.quad	0x3fe8e8fb2bfbcca2              # double 0.77844008055253178
	.quad	0x3fdf704047f8e3b6              # double 0.49122626331842001
	.quad	0x3fdaad0a6177f1fe              # double 0.41681155699168915
	.quad	0x3fe84c1b2b6ab4bf              # double 0.75929029922340152
	.quad	0x3fd747d7655d80a2              # double 0.36375985049199688
	.quad	0x3fca058b782aaf64              # double 0.20329421393887082
	.quad	0x3fe86356815dddf3              # double 0.76212620989730195
	.quad	0x3fea51c6e5c699a4              # double 0.82248253706056972
	.quad	0x3fe3303b819c1106              # double 0.59963774980909146
	.quad	0x3fdd7b985731b2e2              # double 0.46066864504864047
	.quad	0x3fed1400d6a7510a              # double 0.90869180607345013
	.quad	0x3fe01bf4be4ce84d              # double 0.50341260116625508
	.quad	0x3fc92094b62c9d64              # double 0.19630679030636167
	.quad	0x3fe38b62534481dc              # double 0.61076465857700724
	.quad	0x3fa9474b9adcf320              # double 0.049372065214333682
	.quad	0x3fe5c4067e07d804              # double 0.68017887702330926
	.quad	0x3fe5911e6104307f              # double 0.67396468113430774
	.quad	0x3fb98d1c715b2548              # double 0.099809434580625411
	.quad	0x3fae312743ff6040              # double 0.058968760538562481
	.quad	0x3fe7278498ca14b6              # double 0.72357396928477757
	.quad	0x3fa4f2b7d3621c60              # double 0.040914291909807998
	.quad	0x3fd162ff0ebea594              # double 0.27166725578225592
	.quad	0x3fe5b06e3a6372ed              # double 0.67778693584440719
	.quad	0x3fe0af750d203f9c              # double 0.52141811908403524
	.quad	0x3fe33ec3dcbe2421              # double 0.60141175378624123
	.quad	0x3fad8902cb0299d0              # double 0.057685935288919077
	.quad	0x3fe99b75a13144f3              # double 0.80022698862936037
	.quad	0x3fba563dd46b4b20              # double 0.10287844120038558
	.quad	0x3fe62fce18a9ddb9              # double 0.693335579081512
	.quad	0x3fc15eacfcfcd714              # double 0.13570177414811069
	.quad	0x3fdf321826699f56              # double 0.48743251563290835
	.quad	0x3fe3e1fa715846f5              # double 0.62133524072325363
	.quad	0x3fd28283e8ca6b30              # double 0.28921601994959456
	.quad	0x3fd3deb9d6771a88              # double 0.31046911186096127
	.quad	0x3fe458f1ff6aa83a              # double 0.6358575810056728
	.quad	0x3fe2d93ed149ef32              # double 0.58901921154708803
	.quad	0x3fe4393e07a515ff              # double 0.63198758595598281
	.quad	0x3fd37a1c56db9868              # double 0.30432804567533944
	.quad	0x3fe36c12d1fdb1bb              # double 0.60694256795755253
	.quad	0x3feba21a288498d0              # double 0.86353786386168885
	.quad	0x3fe0a27305b2fb19              # double 0.51983023751367619
	.quad	0x3fdb90d55a222ff8              # double 0.4307149296007533
	.quad	0x3fdc50aacb05d9e4              # double 0.44242353273821622
	.quad	0x3fe9abc3aa43b6bd              # double 0.80221732382570787
	.quad	0x3fe24e52b636d5b2              # double 0.57206092442236511
	.quad	0x3fca37bac62dfac8              # double 0.20482573200930276
	.quad	0x3feb4502698e45ca              # double 0.85217400184972658
	.quad	0x3f874a17773db000              # double 0.011371787382550735
	.quad	0x3fe7b338e9079c4a              # double 0.74062772287005285
	.quad	0x3fd0df78cde3a062              # double 0.26363964182247035
	.quad	0x3fd1a1df84d5283a              # double 0.27550495120943064
	.quad	0x3fdf5ac6711d6516              # double 0.48991547628755094
	.quad	0x3fe9aabf1f4bab04              # double 0.8020930873147738
	.quad	0x3fef04d12643dc58              # double 0.96933801149033183
	.quad	0x3fe5edf64ea602f8              # double 0.68529811249763295
	.quad	0x3fed6a747bac3fe6              # double 0.91924499659398573
	.quad	0x3fc451c0c8b77a50              # double 0.15874490547772035
	.quad	0x3fe8cf9e704f6edd              # double 0.77534410415270438
	.quad	0x3fd3feb893e76b78              # double 0.31242193645237348
	.quad	0x3fed160bdac772f6              # double 0.90894119959156572
	.quad	0x3fe28620f1f98577              # double 0.57887313137705021
	.quad	0x3fef5803a0d88ed5              # double 0.97949391761036486
	.quad	0x3fe39d9c9e0d9540              # double 0.61298972005594266
	.quad	0x3fd4cd25f8980b58              # double 0.32502126003980925
	.quad	0x3fed4fe768eecc2f              # double 0.9160038995236216
	.quad	0x3fef23b74f8ed808              # double 0.97310987032574391
	.quad	0x3fe32d618d81fbf4              # double 0.59928968084557122
	.quad	0x3fe230487e52d7df              # double 0.56839394257144338
	.quad	0x3fed7980790c156c              # double 0.92108176843673339
	.quad	0x3fe5b8b96e14521e              # double 0.67879935741308706
	.quad	0x3fe9a770ad8a110f              # double 0.80168947119139655
	.quad	0x3fda242e7fe3a026              # double 0.40845835198570268
	.quad	0x3fe5f08422755579              # double 0.68560988168853421
	.quad	0x3fb6b13e17203bb8              # double 0.088642006536459372
	.quad	0x3fec659dc1839d29              # double 0.8874043254444689
	.quad	0x3fe985c4f1a878ca              # double 0.79757926176878269
	.quad	0x3fdc39cd0416a05e              # double 0.44102788352257061
	.quad	0x3fbe5b0430214f90              # double 0.11857629942943348
	.quad	0x3fb5a08a704151a0              # double 0.084480907827418239
	.quad	0x3fbb5692dd1b4dc8              # double 0.10678975961791715
	.quad	0x3fee1eb3e2a77d83              # double 0.94124788540277426
	.quad	0x3fdb7c9dc05e11f4              # double 0.42948097024807841
	.quad	0x3fe28bf6e6735532              # double 0.57958550462595881
	.quad	0x3fe757de321dd365              # double 0.72947606838588952
	.quad	0x3fe2b79014ea64dc              # double 0.58490757069662491
	.quad	0x3fcb05d43727a0b4              # double 0.21111538594346302
	.quad	0x3fa1260c6f0b5cb0              # double 0.033493412547323742
	.quad	0x3f90c48eaa06d000              # double 0.016374806525803365
	.quad	0x3fee98b0a5ef0467              # double 0.95613891991537237
	.quad	0x3f93602aef9401a0              # double 0.018921538231553847
	.quad	0x3fcea26d515e8fbc              # double 0.23933187935938161
	.quad	0x3fd68678d84695cc              # double 0.35195752258945556
	.quad	0x3fded88ced217922              # double 0.4819671931962991
	.quad	0x3fa7c980831b8c80              # double 0.046459213260981791
	.quad	0x3f77a418d28d6e80              # double 0.005771729433799444
	.quad	0x3fb06345464be638              # double 0.064014749204852062
	.quad	0x3febec6c0f696237              # double 0.87261012086953016
	.quad	0x3fad5db79b74a350              # double 0.057355630613818875
	.quad	0x3f8043465ef683c0              # double 0.0079408166628257559
	.quad	0x3fe082526ec2f5e6              # double 0.5159084475814637
	.quad	0x3fe82b91c0ffd7b0              # double 0.7553185243148075
	.quad	0x3faf941e8b3cf360              # double 0.061676935669743527
	.quad	0x3fe9df38723a525b              # double 0.80849859533425261
	.quad	0x3f70e47bf21b9e80              # double 0.0041241494779807875
	.quad	0x3fe3905c084128f2              # double 0.61137200939381686
	.quad	0x3fc0fdb2a1661548              # double 0.13274224167632043
	.quad	0x3fd2d95d19ee2d9a              # double 0.2945168259836578
	.quad	0x3fe00b6b9d9fe029              # double 0.50139408861196444
	.quad	0x3fc2d684ac19b7e0              # double 0.14717157748549337
	.quad	0x3fe4925052fe5569              # double 0.64286056718507922
	.quad	0x3fe44c2785aae473              # double 0.63429618937438048
	.quad	0x3feab6b447ed8cd1              # double 0.83480276153968636
	.quad	0x3fc498bd221cf964              # double 0.1609112183159126
	.quad	0x3fe423b34492afb5              # double 0.62935794251597221
	.quad	0x3fe522f62f2106be              # double 0.66051778035053821
	.quad	0x3f5188bf65b6fc00              # double 0.0010702008356557879
	.quad	0x3fea24d95ed35ea3              # double 0.8169981815398909
	.quad	0x3fea04242453e483              # double 0.81300551505331986
	.quad	0x3fe85487f4c7d2ef              # double 0.76031873520568449
	.quad	0x3fec60ac8b5a438b              # double 0.88680102555564255
	.quad	0x3fe70583d9be814c              # double 0.71942322281032878
	.quad	0x3fe251e7ee65059a              # double 0.57249828874062136
	.quad	0x3feb0235843c0178              # double 0.84401965930014367
	.quad	0x3fef4f24de3fdd30              # double 0.9784111347970903
	.quad	0x3fe010594570d497              # double 0.50199569285054479
	.quad	0x3f6ed733c3269800              # double 0.0037647257788249178
	.quad	0x3fe05e8e98434776              # double 0.51154260386304773
	.quad	0x3fe0b913a294454b              # double 0.52259237054583119
	.quad	0x3fc110a6eb1a814c              # double 0.13332067947068038
	.quad	0x3fd53312691adb80              # double 0.33124218238975089
	.quad	0x3fe0fc59354484e5              # double 0.53080425647581519
	.quad	0x3fe4774d948f09b5              # double 0.63956336036090156
	.quad	0x3feefa8d8afad3f0              # double 0.96808507103435026
	.quad	0x3fd0fc8fb075e650              # double 0.26541511757350111
	.quad	0x3fcb0d7f77134d9c              # double 0.21134942354420339
	.quad	0x3fe22488fba9d724              # double 0.56695984986319958
	.quad	0x3fe168fc40f065cd              # double 0.54406559642227992
	.quad	0x3fc4cc4a8f7bbb40              # double 0.16248447423955703
	.quad	0x3fd988b214b259c0              # double 0.39896823903236722
	.quad	0x3fed4884ac0826b1              # double 0.91510232543915582
	.quad	0x3fa799b51d243f90              # double 0.04609456997616157
	.quad	0x3fbf85c90d99db80              # double 0.12313515264564323
	.quad	0x3faf4a52680ca2a0              # double 0.061113906098687609
	.quad	0x3fca7f8810fc7bcc              # double 0.20701695279509946
	.quad	0x3fca8effe0e09dd8              # double 0.20748899917928898
	.quad	0x3fd6757721bd9c56              # double 0.35091951651560771
	.quad	0x3fd91d164b8f5cb2              # double 0.39240033511073158
	.quad	0x3fdf2b50f6e0cde6              # double 0.48701881512826473
	.quad	0x3fa2054d5da64940              # double 0.035196702653723211
	.quad	0x3fd66742212f4a98              # double 0.35005238762566071
	.quad	0x3fc64168011ea300              # double 0.17387104086562744
	.quad	0x3fed41c16c432a5e              # double 0.91427680153840263
	.quad	0x3fec9fcf80136906              # double 0.89450812353905529
	.quad	0x3fe2ac40a20b972d              # double 0.58352691316097138
	.quad	0x3fd1afb082a106be              # double 0.27634823567141698
	.quad	0x3fee705c63587274              # double 0.95121592906396168
	.quad	0x3fae2da8515a4a00              # double 0.058942089014767163
	.quad	0x3fe315f1e6734881              # double 0.59642882356480709
	.quad	0x3fed2a78a400fdb9              # double 0.91143447906500008
	.quad	0x3f814dee1aa66540              # double 0.0084494211085252013
	.quad	0x3fc57da1ce5833e8              # double 0.16789648604790774
	.quad	0x3fcc9436f109244c              # double 0.22327315110513479
	.quad	0x3fe25d8b06a3e7e8              # double 0.57391883179593339
	.quad	0x3fce1d775438e6d4              # double 0.23527423489013322
	.quad	0x3fd77bb363404a18              # double 0.36692509357922765
	.quad	0x3fe07e9bf139dca9              # double 0.51545521845300357
	.quad	0x3fcc8f7cdebdd278              # double 0.22312889934586955
	.quad	0x3fed44c56ce1fa13              # double 0.91464492098004013
	.quad	0x3fe7af080b1e9b78              # double 0.74011614009655968
	.quad	0x3fe85f919bfe3cc9              # double 0.76166611163525844
	.quad	0x3fbfe46aaddbf118              # double 0.12457911247833342
	.quad	0x3fd59a98054bf2ee              # double 0.33756065861943696
	.quad	0x3fd301c9a6920354              # double 0.296984112421389
	.quad	0x3fefaec383e6bdcd              # double 0.99008346330622887
	.quad	0x3fe96bc356560ab9              # double 0.79440466749686955
	.quad	0x3fc87057d7e1ca40              # double 0.19092844048607738
	.quad	0x3f965c1f22636da0              # double 0.021835791086102341
	.quad	0x3fb01e91b12a4440              # double 0.062966447594832609
	.quad	0x3fd959326a6b0ad4              # double 0.3960691489448156
	.quad	0x3fe8a4c9d474ca53              # double 0.77011577124933195
	.quad	0x3fe5679fbe8fbed0              # double 0.66889941424411781
	.quad	0x3fcc4c2c280bd7a4              # double 0.22107459979423283
	.quad	0x3fec544ee0719782              # double 0.88529151760734259
	.quad	0x3fe7371a6edb8630              # double 0.72547647144182825
	.quad	0x3fe958a2f17adcad              # double 0.79206988491104868
	.quad	0x3fd086e02b85cbc6              # double 0.25823215723283643
	.quad	0x3fb5559842e61938              # double 0.083337322552414217
	.quad	0x3fe36ae47a8ce547              # double 0.60679840026492904
	.quad	0x3fc9983301956324              # double 0.19995725228616223
	.quad	0x3fcf04edc2476174              # double 0.24233791338225397
	.quad	0x3fc947baa1114ef0              # double 0.19750149597768241
	.quad	0x3fe12f2627ee1c12              # double 0.53700549887514826
	.quad	0x3fc66c0ad94228a8              # double 0.17517219169923703
	.quad	0x3fee12a3389fdc66              # double 0.93977509555305683
	.quad	0x3fc6ec340ed633b4              # double 0.17908335422944577
	.quad	0x3fe27b851cade87f              # double 0.5775781211989538
	.quad	0x3fe831d945078438              # double 0.75608504755303496
	.quad	0x3fc34483865e52e8              # double 0.15052837429961774
	.quad	0x3fd1ba071be926aa              # double 0.27697923398646174
	.quad	0x3fe0428d8df83c5f              # double 0.50812413910342602
	.quad	0x3fef62f6708e5a6c              # double 0.9808304022179306
	.quad	0x3fd1f5d762be8cf2              # double 0.28062996523858807
	.quad	0x3fd3b5f1a80bfff0              # double 0.30797997866466087
	.quad	0x3fe574da6d719f43              # double 0.67051431060551925
	.quad	0x3fc0c84d800cae18              # double 0.13111275436800507
	.quad	0x3fe42f01b1f4fa98              # double 0.63073811299530558
	.quad	0x3fe8a21f25b2918a              # double 0.76979024279403174
	.quad	0x3fcfe68a9e722280              # double 0.24922306763280133
	.quad	0x3fb9664d30b04d48              # double 0.099217247378239226
	.quad	0x3fc9583dc6ea11f0              # double 0.19800541126836846
	.quad	0x3fd01238e4e4790e              # double 0.25111219742565616
	.quad	0x3fd833e920f11d3e              # double 0.3781683751771715
	.quad	0x3fe32e39ecc0296c              # double 0.59939285507543394
	.quad	0x3fc8f2b20f3e0694              # double 0.19490648025753343
	.quad	0x3fe3eb7049a7f4f1              # double 0.62249006639436122
	.quad	0x3fe2b79161d05226              # double 0.58490819076775291
	.quad	0x3fd089345e1db9de              # double 0.25837430182482801
	.quad	0x3fe5f538a69d12e1              # double 0.68618423978531606
	.quad	0x3fa55de715060c90              # double 0.041732045475350366
	.quad	0x3fd8b7d85afcd732              # double 0.38622101674569642
	.quad	0x3fe7422069f9d03d              # double 0.7268220968094351
	.quad	0x3fc5fa78a29fcdd4              # double 0.17170627537380645
	.quad	0x3fd5d70758af4f06              # double 0.34124931011795956
	.quad	0x3fe281c54f0e8b19              # double 0.5783411544874496
	.quad	0x3fa9e2708e994ea0              # double 0.050555722624861632
	.quad	0x3fedc44c043f7f3d              # double 0.93021202878660569
	.quad	0x3fe574bd86efc58b              # double 0.67050052981191877
	.quad	0x3fee0621ddf7c59f              # double 0.93824857094857694
	.quad	0x3fe61a5c1526fb54              # double 0.69071773654273239
	.quad	0x3fcde7d8d8091a68              # double 0.23363791035281456
	.quad	0x3feea2f29c6117a8              # double 0.95739107649636867
	.quad	0x3fe082fb40d38bfb              # double 0.51598894750020408
	.quad	0x3fdb520099636534              # double 0.426880025666452
	.quad	0x3fefdccfbdae2312              # double 0.99570452734869463
	.quad	0x3fcaa9ac4201c314              # double 0.2083030054377778
	.quad	0x3fd0e833132da458              # double 0.26417233345870761
	.quad	0x3fd967c0de4ab75a              # double 0.39695760448636508
	.quad	0x3fe73b2716e0d5ac              # double 0.72597078770075063
	.quad	0x3fe1d009652a5f69              # double 0.55664510496988584
	.quad	0x3fe4aa61fbef8661              # double 0.64579867559605131
	.quad	0x3fe3b40c01c3e5f5              # double 0.61572838158389109
	.quad	0x3fba135c4e043388              # double 0.1018579187841181
	.quad	0x3fd791b3b80c6282              # double 0.36826794599031853
	.quad	0x3fe0fd7f34e52ce6              # double 0.53094444590660994
	.quad	0x3fe389171ad3a9f0              # double 0.61048465003596952
	.quad	0x3fdfff203f613e56              # double 0.49994665326537324
	.quad	0x3fd0160540f4a97e              # double 0.25134402602511574
	.quad	0x3fe6451230453715              # double 0.69593152454192142
	.quad	0x3fea7a68be949dc7              # double 0.82744252417335751
	.quad	0x3fe7d832db039724              # double 0.74514143730332139
	.quad	0x3fb4d4ba557bf530              # double 0.081370969648521862
	.quad	0x3fb4cabe43096b58              # double 0.081218615881352263
	.quad	0x3fe9e002e2ec6092              # double 0.80859512635199082
	.quad	0x3fb7a73d7f0c4710              # double 0.092395633237426944
	.quad	0x3fcefa9b95c3edf0              # double 0.24202294171105576
	.quad	0x3fe4c262e127f7c4              # double 0.64872879005246675
	.quad	0x3fb9dc827719dbb8              # double 0.10102095992793536
	.quad	0x3fe6d9d73c922681              # double 0.71409189062360678
	.quad	0x3fe0ead1691647c1              # double 0.52866430783091556
	.quad	0x3fd3334fb8037504              # double 0.30000679941242958
	.quad	0x3fec925f11025cc1              # double 0.89286759683718497
	.quad	0x3feca4cf64b97349              # double 0.89511842415559173
	.quad	0x3f9117b2171b62a0              # double 0.016691954288804767
	.quad	0x3feec9582d0bb228              # double 0.96207817838655262
	.quad	0x3feca1161df6e655              # double 0.8946638665431218
	.quad	0x3feba56190d4b74b              # double 0.86393812453545971
	.quad	0x3fe977d6dfaca148              # double 0.79587882696527235
	.quad	0x3f8b39b3f219f240              # double 0.013293653322073884
	.quad	0x3fe642382619a768              # double 0.69558341447303196
	.quad	0x3fee4e27882f39fa              # double 0.94704033468752802
	.quad	0x3fdcdd5498cc6b80              # double 0.45100893899660122
	.quad	0x3fd2b9c422b6ad06              # double 0.2925882662772924
	.quad	0x3fe0b344b7a5a58e              # double 0.52188335293355848
	.quad	0x3fbf10311868a238              # double 0.12134081693569321
	.quad	0x3fee6eecfe100003              # double 0.9510407411726195
	.quad	0x3f9a26221c9a48a0              # double 0.025536091800468896
	.quad	0x3fd6cf53f0b93e88              # double 0.35640429027714804
	.quad	0x3fd4700e2868500c              # double 0.31933931299249774
	.quad	0x3fec1ca6026bd0b0              # double 0.87849712822801074
	.quad	0x3fee56ce534fb203              # double 0.94809643050899728
	.quad	0x3fe4aba0cff45dbd              # double 0.64595070472835625
	.quad	0x3fe22b51e8396d05              # double 0.56778807979881718
	.quad	0x3fd6ee7ae4a218c6              # double 0.35830566718540202
	.quad	0x3fa197b09a08d750              # double 0.034360426714938996
	.quad	0x3fc8724d12d43cc8              # double 0.19098819178950621
	.quad	0x3fe9a097f411cb64              # double 0.80085370702577707
	.quad	0x3fe8d82c3a2286f9              # double 0.77638827661959831
	.quad	0x3fdc89849bffbbe4              # double 0.44589343294404515
	.quad	0x3fe55e0e8e025aa5              # double 0.66773154960795422
	.quad	0x3fa8bacbf9df4130              # double 0.048300146343196793
	.quad	0x3fe2367d08e9893f              # double 0.56915141812013548
	.quad	0x3fe548282c91d2af              # double 0.66505821900371653
	.quad	0x3fd77a69ba5afa52              # double 0.3668464965702799
	.quad	0x3fee05f552788ce0              # double 0.93822733028028082
	.quad	0x3fd3a9898effb7aa              # double 0.30722273792968713
	.quad	0x3fd3946d79d255a6              # double 0.30593430420534629
	.quad	0x3fe450ef17d806aa              # double 0.63487963349344523
	.quad	0x3febe6543bcc6be3              # double 0.87186633757971455
	.quad	0x3fe6b865b7e3f8e3              # double 0.71000944057575699
	.quad	0x3feefbf422817530              # double 0.96825606097596584
	.quad	0x3fed98c4c7411ba1              # double 0.92489851872311502
	.quad	0x3fee21abb37556b4              # double 0.94161019373378573
	.quad	0x3fe38570ea1c9f3e              # double 0.61003919339143642
	.quad	0x3fcc0be548ddec20              # double 0.21911302621796924
	.quad	0x3fbf4ff3598cdf90              # double 0.12231369911466872
	.quad	0x3fd330bc23e5fadc              # double 0.29984954362582328
	.quad	0x3fd694d70d35cc44              # double 0.35283447542241597
	.quad	0x3fee8da695f84403              # double 0.95479134837125945
	.quad	0x3fe6f78b7ebc87fd              # double 0.71771788361752409
	.quad	0x3fc722c2ec285a6c              # double 0.18074833422788872
	.quad	0x3fe0aa04286b959c              # double 0.5207539357622184
	.quad	0x3fd16e3db432f16a              # double 0.27235357854421827
	.quad	0x3fe928fc748fcb5c              # double 0.78625319257694625
	.quad	0x3fe948b0508c1752              # double 0.79012313587075256
	.quad	0x3fd99e2a4ab5e3e6              # double 0.40027863784740558
	.quad	0x3fed43f7b849c6d7              # double 0.9145468329790799
	.quad	0x3fdcd7cb5e68a1d0              # double 0.45067104549027892
	.quad	0x3fc496a5dd999f30              # double 0.16084740944210685
	.quad	0x3fdec87ed620cd0a              # double 0.48098727141332687
	.quad	0x3fee879ced72ec6e              # double 0.95405432106725896
	.quad	0x3fdfb9e0fe5d08f8              # double 0.49572014656236218
	.quad	0x3fc8c4bf8c8cab38              # double 0.19350427973525952
	.quad	0x3fef5b94b6751b8e              # double 0.97992931019040141
	.quad	0x3fe4ab505dfc4018              # double 0.6459123454715181
	.quad	0x3fe6be3a90055908              # double 0.71072128418998748
	.quad	0x3fc91690b3163dfc              # double 0.19600113625027393
	.quad	0x3fac251de44a6330              # double 0.054970678441526366
	.quad	0x3fe878408192c837              # double 0.76467919642732951
	.quad	0x3fe7e82dc164a453              # double 0.74709213039489908
	.quad	0x3fe8ba193832165f              # double 0.77271710372651714
	.quad	0x3fa2abf838517cd0              # double 0.036468273997110168
	.quad	0x3fb74e44649921a0              # double 0.091038012085056241
	.quad	0x3fa655e01cfc38d0              # double 0.043623927629697357
	.quad	0x3fee98e04d4ef123              # double 0.9561616430214922
	.quad	0x3fe94e860e6b9d56              # double 0.79083540741423053
	.quad	0x3fe178974b551485              # double 0.54597058022831446
	.quad	0x3fc8a012f98395d8              # double 0.19238507445622477
	.quad	0x3fd14a392fd99e3c              # double 0.27015523598535984
	.quad	0x3fd0fb0695404e60              # double 0.26532139373123265
	.quad	0x3fda26a5b7174686              # double 0.40860884551975862
	.quad	0x3fd0290abacbfee0              # double 0.25250499956017158
	.quad	0x3fe69ea489ce228f              # double 0.70686556735116024
	.quad	0x3fc9975f3e5f06c0              # double 0.19993200822323409
	.quad	0x3fe00996ecd7131a              # double 0.50117059953535947
	.quad	0x3fb5e361283d88b0              # double 0.085500786136921247
	.quad	0x3fee3e956e3e5e74              # double 0.94513961345633257
	.quad	0x3feeec8b35b880a0              # double 0.96637497417761508
	.quad	0x3fdea377355e4434              # double 0.47872715198269877
	.quad	0x3fe32385be5a6c57              # double 0.59808623484003476
	.quad	0x3feae512e71a56cf              # double 0.84046311509401928
	.quad	0x3fec65691538a5db              # double 0.88737920899182698
	.quad	0x3fb3f79e32ee8380              # double 0.077997100290771115
	.quad	0x3fd188b3cc4c4dd2              # double 0.27396864844305668
	.quad	0x3fda4ceede8fca82              # double 0.41094562277354652
	.quad	0x3fe4b8e47366c63a              # double 0.64756987132404409
	.quad	0x3fe0e60737b32b5e              # double 0.52807961348421961
	.quad	0x3fc73ac6b7aa08e4              # double 0.181481208495888
	.quad	0x3fb599c5c79e64e8              # double 0.084377633318939993
	.quad	0x3fb66cd56ed1a2d8              # double 0.08759817081012089
	.quad	0x3fbe2ca58fe786d0              # double 0.11786875499049221
	.quad	0x3fdd77e35924f1ae              # double 0.46044238763331691
	.quad	0x3fdf19edfce3fc62              # double 0.48595761963219364
	.quad	0x3feb0214740b146e              # double 0.84400389351561755
	.quad	0x3fe3e194d1e7bbf2              # double 0.62128678319083819
	.quad	0x3fe095283215c222              # double 0.51820764333939828
	.quad	0x3fd2b97eafd9ecf4              # double 0.29257170842147606
	.quad	0x3fd70cadf8bf05aa              # double 0.36014889995211752
	.quad	0x3fe683b2579bf172              # double 0.70357625113642386
	.quad	0x3fe93276b5fb1e43              # double 0.78741012137556543
	.quad	0x3fe20871e21a92c1              # double 0.56353086625002657
	.quad	0x3fdccce199eb220c              # double 0.45000495940306062
	.quad	0x3fed9e0af344b83d              # double 0.92554233086935478
	.quad	0x3fe1acf4f3885e72              # double 0.55236289563158736
	.quad	0x3fdd88e978950e8a              # double 0.46148144507990507
	.quad	0x3fd5402e188a95d8              # double 0.33204224011055095
	.quad	0x3fefa6bb1f903747              # double 0.98910289921489258
	.quad	0x3fe22d6581338087              # double 0.56804156527142957
	.quad	0x3feb404e8b33f358              # double 0.85159995258400567
	.quad	0x3febfd2a56ed798a              # double 0.87465397813848367
	.quad	0x3fe1151f20187b56              # double 0.53382831829717747
	.quad	0x3fc1425cd65270f8              # double 0.13483772721236398
	.quad	0x3fba1973443d7868              # double 0.10195084014910238
	.quad	0x3fc8f3ab577701d0              # double 0.1949361970018928
	.quad	0x3fed8bbe7fff3532              # double 0.92330861091037364
	.quad	0x3fe70694b8e633e2              # double 0.71955333817606637
	.quad	0x3fe3d0da58f475c6              # double 0.61924474119194239
	.quad	0x3fe2737caabaa849              # double 0.57659753175290362
	.quad	0x3fcccc8d492c3e60              # double 0.22499242852107937
	.quad	0x3fafc53f15b6a070              # double 0.062051745796737445
	.quad	0x3fcaadc6548549dc              # double 0.20842818381295458
	.quad	0x3fea6e45cc367901              # double 0.82596101651486731
	.quad	0x3fee94450278b599              # double 0.95559931261748254
	.quad	0x3feb3d928ee06eea              # double 0.85126617341617572
	.quad	0x3fefe90e0bff3fd2              # double 0.99719908087899456
	.quad	0x3fe671af39148526              # double 0.70137749813526251
	.quad	0x3fe2ff63666f94a4              # double 0.59367532736782325
	.quad	0x3fc9b8e4adac4964              # double 0.20095499496580793
	.quad	0x3fe8ad9faedda0f1              # double 0.77119430688347113
	.quad	0x3fecdeba1541d401              # double 0.90218834068093667
	.quad	0x3fe04b0dc07019f9              # double 0.50916183076407073
	.quad	0x3fd1141be6816bd6              # double 0.26685235510165961
	.quad	0x3fd353d98bbca52a              # double 0.30199278494054005
	.quad	0x3fed1f66a9090753              # double 0.91008313193035872
	.quad	0x3fe11be0676f26d7              # double 0.53465290262212306
	.quad	0x3fde9b564e31a730              # double 0.47823102604035039
	.quad	0x3fbeded0a36ee2d0              # double 0.12058738699023341
	.quad	0x3fd0d494bb48a560              # double 0.26297491349631308
	.quad	0x3fcb4568590ffd2c              # double 0.21305565212967659
	.quad	0x3fef876136bcbca3              # double 0.98527584734792517
	.quad	0x3fe4da80a3c221a5              # double 0.65167266830490134
	.quad	0x3fe0d079ad726f00              # double 0.52544864536636737
	.quad	0x3fe6177ee3ff2214              # double 0.69036812334622022
	.quad	0x3fea40b652297d17              # double 0.82039943740156474
	.quad	0x3fec9592cce040cd              # double 0.89325847639886435
	.quad	0x3fd269cd68cb98ec              # double 0.28770766481319643
	.quad	0x3fec25bcc6a74ac6              # double 0.87960661696919185
	.quad	0x3fe834b8e711c428              # double 0.75643582468740522
	.quad	0x3fec1d639796515c              # double 0.87858752829428565
	.quad	0x3fddc93d16e8c3ba              # double 0.46540763127546436
	.quad	0x3fb7b4d51e00c1f0              # double 0.092603034806195472
	.quad	0x3fe4c69ce977d88e              # double 0.64924474333999327
	.quad	0x3fc9148cee3fcec0              # double 0.19593965180648887
	.quad	0x3fd4cd16be93ee8e              # double 0.32501762972945236
	.quad	0x3f9d47bcfba93ae0              # double 0.02859397207276515
	.quad	0x3fbee8a99ddbbd90              # double 0.1207376490017309
	.quad	0x3fd0aebfd00da426              # double 0.26066584890083033
	.quad	0x3fec3a8ca53a6a39              # double 0.88214714308862263
	.quad	0x3fd8521283ef3864              # double 0.3800092972204594
	.quad	0x3fd8d1f2df3873e8              # double 0.38781425284270066
	.quad	0x3fd02daeaa74edae              # double 0.25278822561423453
	.quad	0x3fd10d36c8dc6e4a              # double 0.26643151870095905
	.quad	0x3feee4e6f4d16f90              # double 0.96544215980564907
	.quad	0x3fcc77c70bb0ffdc              # double 0.22240531988972989
	.quad	0x3fe94e54ffb04ade              # double 0.79081201495349851
	.quad	0x3feb3937b8b9d075              # double 0.85073457793488549
	.quad	0x3fd15263f4dfe0c8              # double 0.27065371430900287
	.quad	0x3fd6eeeba79b23b2              # double 0.3583325516488528
	.quad	0x3fc6ec15cbcc3c40              # double 0.17907974673332383
	.quad	0x3fe8dde5da6986f5              # double 0.77708714159618231
	.quad	0x3fa9921af955d0c0              # double 0.049942820488384054
	.quad	0x3fdad11dc422ae52              # double 0.41901344446043709
	.quad	0x3fc376dcefc0a1ac              # double 0.15206491190589355
	.quad	0x3fe46c2485d14c8c              # double 0.63820100914235089
	.quad	0x3fc2c0e1744daaa0              # double 0.1465112512481328
	.quad	0x3fe3c158005aeab8              # double 0.61735153264392917
	.quad	0x3fce0d796a0d2fec              # double 0.23478620222374447
	.quad	0x3fc739ebd556c5a8              # double 0.18145511547986115
	.quad	0x3fe3b85dc55c5b1b              # double 0.61625565096878476
	.quad	0x3fe23d1b04c0ea8d              # double 0.56995917252000228
	.quad	0x3fed580c5e5c1b05              # double 0.91699808530469851
	.quad	0x3fd24c14d5157bfe              # double 0.28589363869645001
	.quad	0x3fd5e9bcf8698be6              # double 0.34239124545109545
	.quad	0x3fc01e651d2d5920              # double 0.12592758106865976
	.quad	0x3fcb1773852058a8              # double 0.21165317535696215
	.quad	0x3fc432b02e1ce0b0              # double 0.15779688121415836
	.quad	0x3fd2a10feacb956a              # double 0.29108045510505198
	.quad	0x3fc9cdcdab1b0420              # double 0.20159312109720506
	.quad	0x3fe15ead496c5e39              # double 0.54280723896494643
	.quad	0x3fb27065cf885dd8              # double 0.07202755276409023
	.quad	0x3fd7a3046731489a              # double 0.36932478024858428
	.quad	0x3fe1ebd48139f18e              # double 0.56003785361785829
	.quad	0x3fa9c3dffeef8c40              # double 0.050322532529911701
	.quad	0x3fc91cf5851cef78              # double 0.19619626044902438
	.quad	0x3fd47992f648b7c2              # double 0.31992029238869801
	.quad	0x3fd858e21654d464              # double 0.38042499714658207
	.quad	0x3febdb6acdf1ac50              # double 0.87053432677692832
	.quad	0x3fdb713dfbd1ed6e              # double 0.42878675071525307
	.quad	0x3fd799fff054a1da              # double 0.36877439946922907
	.quad	0x3fe9e8e8e66159ee              # double 0.80968136783741129
	.quad	0x3fecd7ab5e13a7d5              # double 0.90132683157321003
	.quad	0x3fb2bbe711879788              # double 0.073179666309071689
	.quad	0x3fd54417233e1928              # double 0.33228090707452163
	.quad	0x3fe8cc638bba0784              # double 0.77494981088987957
	.quad	0x3fe8c9fb1e7971f0              # double 0.77465587570219263
	.quad	0x3fd31005eb8b2bc8              # double 0.29785297396000177
	.quad	0x3fe53ba44e47f8d7              # double 0.6635304955414324
	.quad	0x3fef208384152d4a              # double 0.97271896169096661
	.quad	0x3fdf9dce72218d38              # double 0.49400674005137857
	.quad	0x3fdc06e593fea2ba              # double 0.43792094662289183
	.quad	0x3fc4647fe9752060              # double 0.15931700610440469
	.quad	0x3fe2bf3251ee085b              # double 0.58583942415158263
	.quad	0x3fdbf0662cdfc9bc              # double 0.43654779798739773
	.quad	0x3fd267b63404dea2              # double 0.28758006172163608
	.quad	0x3fd48d08e690dc2c              # double 0.32110807911107275
	.quad	0x3fe22b68149a6c11              # double 0.56779865287842501
	.quad	0x3fec76a7361f3174              # double 0.8894840294902182
	.quad	0x3fd24924c1de4bba              # double 0.28571433002906199
	.quad	0x3fe25f39051d9ccf              # double 0.57412386893420286
	.quad	0x3fe8a120601ecf97              # double 0.76966875813967561
	.quad	0x3fdf5f31d7fccb3a              # double 0.4901852235081382
	.quad	0x3fe5b522948af3e2              # double 0.67836121570837471
	.quad	0x3fe1a5464d03129f              # double 0.55142512360960783
	.quad	0x3fc293cf988b1cf8              # double 0.14513583134087304
	.quad	0x3feb60ee46cdef58              # double 0.85558236912718666
	.quad	0x3feacab606f6ad03              # double 0.83724500045846673
	.quad	0x3fd472998692b328              # double 0.31949461118601841
	.quad	0x3fa3b14af3fe0ec0              # double 0.038462011608343172
	.quad	0x3fdfcacdade3fede              # double 0.4967531393194643
	.quad	0x3fe40e73a797c0ad              # double 0.62676413281407906
	.quad	0x3fedc0adb7dfa822              # double 0.92977033531974862
	.quad	0x3fe8aaf9c9348c66              # double 0.77087106035140773
	.quad	0x3fd8bf4e0c7c4472              # double 0.38667632312087286
	.quad	0x3fed8e7471c9d672              # double 0.92363950943281581
	.quad	0x3fdd124ecc1b8986              # double 0.4542424195516549
	.quad	0x3fe8fbd697ef0781              # double 0.78074197458794015
	.quad	0x3fe2a05b0b5f28ba              # double 0.58207466336286662
	.quad	0x3fb876365cb48e18              # double 0.095553777344825952
	.quad	0x3fc1142cdb92fc38              # double 0.13342819901842673
	.quad	0x3fd0870abf725af4              # double 0.25824230857817487
	.quad	0x3fe1ecd8cefdbaf5              # double 0.56016197612720353
	.quad	0x3fc99af068a04f04              # double 0.20004086598111581
	.quad	0x3fe0be3013342e64              # double 0.52321628332851988
	.quad	0x3f9ef3f0f7306540              # double 0.030227437102529509
	.quad	0x3fe5c5457fe044e9              # double 0.68033099151412302
	.quad	0x3fd5ca6f4180930c              # double 0.34048062702849857
	.quad	0x3fb8edddea034178              # double 0.097379560119639552
	.quad	0x3fe80cc28317721e              # double 0.75155759433579639
	.quad	0x3fd13b2fb5d02626              # double 0.26923744921859549
	.quad	0x3fe498cb48395d30              # double 0.64365161997094411
	.quad	0x3fed79b06762e7e4              # double 0.92110462372442869
	.quad	0x3fe493a443561e79              # double 0.64302266265526875
	.quad	0x3fe1a9b5e26257e5              # double 0.55196661201148045
	.quad	0x3fdff063b4eb8eea              # double 0.49904720943435044
	.quad	0x3fd03d9c3cc41c32              # double 0.25376039442238885
	.quad	0x3fab089f8b159e40              # double 0.05280016491707018
	.quad	0x3fca2cfe5f5350c8              # double 0.2044980969864183
	.quad	0x3fc35eecc518620c              # double 0.15133437751570999
	.quad	0x3fed1217ac1e907e              # double 0.90845855347698978
	.quad	0x3fec17a761d7c815              # double 0.87788743123951696
	.quad	0x3fc05323cb94eed8              # double 0.12753722610965812
	.quad	0x3fa4eae4799cbd40              # double 0.040854587407347598
	.quad	0x3fec902ced8a739f              # double 0.89259954828922961
	.quad	0x3fc62d39f3819eec              # double 0.17325519933660105
	.quad	0x3fe0732222d1ec79              # double 0.51405436325821008
	.quad	0x3fe2b98ffaa8eed4              # double 0.58515166241655914
	.quad	0x3fee4f4cd8811a0e              # double 0.94718019758221472
	.quad	0x3fb7125f627dd578              # double 0.090124093576226971
	.quad	0x3fec8c525108a936              # double 0.89212909533424667
	.quad	0x3fe91eb776b33d01              # double 0.78499959167120903
	.quad	0x3fbbfcc6558ce218              # double 0.10932578648215274
	.quad	0x3fc439ac28f01fa0              # double 0.15801002501416139
	.quad	0x3fd5c80c0f02d29a              # double 0.34033490625305662
	.quad	0x3fe4c272caed4c74              # double 0.64873637804193018
	.quad	0x3fd80a6c87d2aa2c              # double 0.37563622726398438
	.quad	0x3fd83c3223f89f8a              # double 0.37867406380473112
	.quad	0x3fd6fd6a0ed71b4a              # double 0.35921718072170405
	.quad	0x3feefaafd350b848              # double 0.96810141823312623
	.quad	0x3fc495973d413e6c              # double 0.16081514826736354
	.quad	0x3fd5b9b5beb6c8a6              # double 0.33945983528532009
	.quad	0x3fe1c6206b4f7673              # double 0.55543538054526065
	.quad	0x3fd77a230d8425d0              # double 0.36682964630071258
	.quad	0x3fd29880d589126c              # double 0.29055806019849828
	.quad	0x3fcf4f56c092695c              # double 0.24460873034406461
	.quad	0x3fc5d02a82995538              # double 0.17041522385503938
	.quad	0x3fd4b3b4937f7298              # double 0.32346834568105853
	.quad	0x3fe0a27c68180c59              # double 0.51983471232268663
	.quad	0x3fc912c5aac50ea0              # double 0.19588538015715518
	.quad	0x3fc5e97024a7a934              # double 0.17118646421233452
	.quad	0x3fc2b2fdc36fa3a0              # double 0.14608737986352782
	.quad	0x3fe61351d14e5390              # double 0.68985834961005033
	.quad	0x3fe82abe7bca05c1              # double 0.75521778276031892
	.quad	0x3fe4f2367cab83c7              # double 0.65456699704747556
	.quad	0x3fe3ad861f4d19a2              # double 0.61493211854467611
	.quad	0x3f6a8be0ef413500              # double 0.0032405274633108272
	.quad	0x3fc99eb5745cb4f0              # double 0.20015590841050068
	.quad	0x3fe1ae71c3511e28              # double 0.55254448077989071
	.quad	0x3fdb993d55d6abde              # double 0.43122800238296388
	.quad	0x3fe2f2c7f53dc3a9              # double 0.59213636301693839
	.quad	0x3feedc5fd7d6466a              # double 0.9644011703077926
	.quad	0x3fe2b9f965f3cb74              # double 0.58520193016589284
	.quad	0x3fda837273b39b1a              # double 0.41427289294226599
	.quad	0x3fc51b8ba44ec5d4              # double 0.1649031212123605
	.quad	0x3fc3874688a45ed0              # double 0.15256578132606657
	.quad	0x3fee33db61c0b8b7              # double 0.94383019535395973
	.quad	0x3fedc47d0c6655f4              # double 0.93023540899110779
	.quad	0x3fe4e0b2d7d2bbdd              # double 0.65242902901615774
	.quad	0x3fe254fae7363616              # double 0.57287354620501918
	.quad	0x3fe1c032ec0d574d              # double 0.55471178153923406
	.quad	0x3fde182a34b4cfb4              # double 0.47022490641688397
	.quad	0x3fe6bcc1068426be              # double 0.71054126045893162
	.quad	0x3fdf773b08bd2562              # double 0.49165225842860683
	.quad	0x3feea4fbc59a0b1f              # double 0.95763958543861694
	.quad	0x3fe8d1b8464c4ba9              # double 0.77560056428989299
	.quad	0x3fec4e37d43f7bc9              # double 0.88454810576137632
	.quad	0x3fdfcf624867c20a              # double 0.4970327097971966
	.quad	0x3fe8f7e0286c2f3c              # double 0.78025825400388937
	.quad	0x3fe44de8c495c531              # double 0.63451040645137458
	.quad	0x3fd9ee1a48a6ae62              # double 0.40515763373216462
	.quad	0x3feeccd558ea67d2              # double 0.96250407568299523
	.quad	0x3fa7ae0ca82c9cb0              # double 0.046249766854367436
	.quad	0x3fd2c5904c95504c              # double 0.29330832938035623
	.quad	0x3fd3cf49c6cd9b3c              # double 0.30952686704988586
	.quad	0x3fb0c6ed9bf8faf0              # double 0.065535402850382729
	.quad	0x3fd226a94da40f40              # double 0.28360970098605165
	.quad	0x3fe5f94399847dbc              # double 0.68667774185080743
	.quad	0x3fd51f7cb5e8d3d0              # double 0.33004682316396572
	.quad	0x3fed5fca3244aa64              # double 0.9179430944253224
	.quad	0x3fb094dd189e8600              # double 0.064771479139857036
	.quad	0x3fe20e64f6145479              # double 0.56425712644944703
	.quad	0x3fd98d176233757e              # double 0.39923653211538823
	.quad	0x3fb07940df661590              # double 0.064350180187906725
	.quad	0x3fa3b7fdb71fb3c0              # double 0.038513115505203199
	.quad	0x3fe931ae74868721              # double 0.78731463202368357
	.quad	0x3fc5fb1b514c2770              # double 0.17172566861728056
	.quad	0x3fc6b1d7f9c370d0              # double 0.17730235763054347
	.quad	0x3f856509bcd4e3c0              # double 0.010446621012862312
	.quad	0x3fac82bc8b06a860              # double 0.055684940310428699
	.quad	0x3fdeec6926b610e4              # double 0.48317936687841567
	.quad	0x3feb28a5da1cf7b0              # double 0.84871189689851256
	.quad	0x3fcf959a6188c144              # double 0.24675302278911648
	.quad	0x3fcd1f1e077c5138              # double 0.22751212468632231
	.quad	0x3fbdd795e3ab21a8              # double 0.11657082374870831
	.quad	0x3fd14a1d37addc5e              # double 0.27014856755653749
	.quad	0x3fd1d9fd2da94f1e              # double 0.27892999133222129
	.quad	0x3fd684f682376118              # double 0.3518654128688623
	.quad	0x3fb24559e89354e8              # double 0.071370715409404206
	.quad	0x3fe3cb6ea0bf94c6              # double 0.61858302494206252
	.quad	0x3fd04556ddd84810              # double 0.25423213638816922
	.quad	0x3fcd19de48d5a164              # double 0.22735193783160945
	.quad	0x3fdf84c2a711de16              # double 0.49247804942521733
	.quad	0x3fee0493f147a98b              # double 0.93805882573114852
	.quad	0x3fda63b5449d09de              # double 0.41233569813280535
	.quad	0x3feb0b114bf48441              # double 0.84510102114666819
	.quad	0x3fe924886bac5918              # double 0.7857095816605435
	.quad	0x3feb348552eea9db              # double 0.85016123006544875
	.quad	0x3fe81ce816ef628f              # double 0.75352863769065148
	.quad	0x3fdd8d2a10505b2a              # double 0.46174098580506728
	.quad	0x3fe863922e01fde6              # double 0.76215466485876671
	.quad	0x3fd0d13d42f46e02              # double 0.26277095354609525
	.quad	0x3fe8fcd3915fae19              # double 0.78086260217009162
	.quad	0x3fdbec5d2ec8d9ea              # double 0.43630151337438738
	.quad	0x3fcc365b8bf90778              # double 0.22040886244399949
	.quad	0x3fc29daa0821d7cc              # double 0.14543652913169891
	.quad	0x3fd93383bc82d69c              # double 0.39376920136724336
	.quad	0x3fd0287b125f0398              # double 0.25247074884469489
	.quad	0x3febc4d3a05cbcd1              # double 0.86777669258835932
	.quad	0x3feac27ae8af5a03              # double 0.83624024816782627
	.quad	0x3fd34d33b733da7a              # double 0.30158703699945699
	.quad	0x3fe752352dae3cf0              # double 0.72878512308116505
	.quad	0x3fb8c52cc716dff8              # double 0.096758650403785285
	.quad	0x3fed8770f7588b19              # double 0.92278335866680827
	.quad	0x3febb55ef59cb7d7              # double 0.86589000674370709
	.quad	0x3fbbe44f7bfc0620              # double 0.10895249154057085
	.quad	0x3fccbd37a34b6e00              # double 0.22452445481654593
	.quad	0x3fbf530d6564b3d0              # double 0.12236102796005288
	.quad	0x3fe3e13aedea4eba              # double 0.62124392001938777
	.quad	0x3febb560fae6dab8              # double 0.86589097027066142
	.quad	0x3fd32161a8fe2f86              # double 0.29891244414533735
	.quad	0x3fdc32aaf26bc4fc              # double 0.44059251474307337
	.quad	0x3fe2b6db73242245              # double 0.58482143867974712
	.quad	0x3feca312bd37f31c              # double 0.89490639645336811
	.quad	0x3fdc19490818b2a8              # double 0.43904329100295536
	.quad	0x3fee412a6df3001e              # double 0.94545480226952683
	.quad	0x3fe7fba5ef5f9f1e              # double 0.74946877243653254
	.quad	0x3fe50e4a005ec79b              # double 0.65799427101432018
	.quad	0x3fe8954cfe4fb3b5              # double 0.76822518987829957
	.quad	0x3feb41d5d748a517              # double 0.85178653762446543
	.quad	0x3feab96a94600b71              # double 0.83513382892156873
	.quad	0x3fdc0bab81f4524a              # double 0.43821227732522472
	.quad	0x3fd8f9be258f7fb6              # double 0.39024308841726041
	.quad	0x3fd81813814b8496              # double 0.37646949411834763
	.quad	0x3fe0f7dbd62582c0              # double 0.53025619340413499
	.quad	0x3fefc2e1992407b8              # double 0.99253921423245738
	.quad	0x3fe8f8450e02d422              # double 0.7803063653615292
	.quad	0x3fcb3dbf711528c0              # double 0.21282189389814299
	.quad	0x3fea5af8c67167b0              # double 0.82360495336910411
	.quad	0x3fa44d13b7282b20              # double 0.03965055094530201
	.quad	0x3fcf746c24de82ac              # double 0.24574043083432195
	.quad	0x3fe606999dc4030f              # double 0.68830567182166813
	.quad	0x3fd22f6310fcc10a              # double 0.28414227160375616
	.quad	0x3f86766696666e00              # double 0.010968018975112237
	.quad	0x3fc6b88db72f9f78              # double 0.17750712818746783
	.quad	0x3fee88452cc7a649              # double 0.95413454767294426
	.quad	0x3fe258742e78438c              # double 0.57329758716706314
	.quad	0x3fe055150aeaf154              # double 0.5103860104787068
	.quad	0x3fefc3afb2aa29d4              # double 0.99263749022912373
	.quad	0x3fe94ed24ab27200              # double 0.79087175931232423
	.quad	0x3fef95898423a4a6              # double 0.98700404938167163
	.quad	0x3fce546c12927104              # double 0.23695135981405013
	.quad	0x3fe18e39c8278e2e              # double 0.54861153690985076
	.quad	0x3fde47372ad6fb4e              # double 0.47309664901324744
	.quad	0x3fd2294186e528ae              # double 0.28376806424479184
	.quad	0x3fe152c9eef333fb              # double 0.54135605497287942
	.quad	0x3f81c257272a2cc0              # double 0.0086714562251216653
	.quad	0x3fdd17d1308ea7ea              # double 0.454578683299245
	.quad	0x3febc4e60d9ff689              # double 0.86778547917465787
	.quad	0x3fe93801c96a4af9              # double 0.78808678950221556
	.quad	0x3fe79da4e11f6a8a              # double 0.7379936596801866
	.quad	0x3feff28c8c0bd63d              # double 0.99835803368359388
	.quad	0x3f83d100a2d9e9c0              # double 0.0096759843538521961
	.quad	0x3fd73f24d7cbfc7a              # double 0.3632289988890488
	.quad	0x3fed850e430d2a78              # double 0.92249215217573433
	.quad	0x3fef354fca9c504a              # double 0.97525777408964953
	.quad	0x3fc6c268d0716be8              # double 0.17780790498622356
	.quad	0x3fc014ce663d8f60              # double 0.12563495628557586
	.quad	0x3fd1aafcef0e0fd4              # double 0.27606128068168556
	.quad	0x3fe1b8b1fa632e0c              # double 0.5537958040599178
	.quad	0x3fda2f665165360e              # double 0.40914304684415093
	.quad	0x3fe2331ffc154e8f              # double 0.56874083743100978
	.quad	0x3fe72d3bf902db62              # double 0.72427176127426329
	.quad	0x3fd5a849f8960648              # double 0.338396542320059
	.quad	0x3fecef626364e682              # double 0.90422171986502087
	.quad	0x3fee000a66413d8e              # double 0.93750495883607399
	.quad	0x3fef63edb2185fda              # double 0.98094830307217795
	.quad	0x3fba6ee007ed3580              # double 0.10325432008285951
	.quad	0x3fa54fdebf944d40              # double 0.041624985586305119
	.quad	0x3fe9f7f7eee81f98              # double 0.8115195909640418
	.quad	0x3fea0224c6fae1ab              # double 0.81276167739183813
	.quad	0x3fdc29bea98de400              # double 0.44004789884598949
	.quad	0x3fe7823cf524d0f7              # double 0.73464820747042736
	.quad	0x3feb38791cf03014              # double 0.85064368869780304
	.quad	0x3fcf9ea5594a2e80              # double 0.24702898845531607
	.quad	0x3febfccc447655d6              # double 0.87460912105114619
	.quad	0x3fb9753de3d95308              # double 0.099445217253855245
	.quad	0x3fb075419e6c8600              # double 0.064289189508166089
	.quad	0x3fe72cb041f97180              # double 0.72420513997671776
	.quad	0x3fc277f707bbedc4              # double 0.1442860400928635
	.quad	0x3fe7ecc314c61154              # double 0.7476516156898847
	.quad	0x3fea2ad598a42a92              # double 0.81772880375622692
	.quad	0x3fd88b868577af22              # double 0.3835159591096603
	.quad	0x3fe38089a064dd5a              # double 0.60944062544778466
	.quad	0x3fd5a6928ef43f42              # double 0.3382917781864202
	.quad	0x3fc305cb36b1b518              # double 0.1486143128453612
	.quad	0x3fc133ad6d25dc48              # double 0.1343895705174154
	.quad	0x3fedbd815ac4e5a4              # double 0.9293829701265861
	.quad	0x3fe3b9b6f5506ece              # double 0.6164202491085804
	.quad	0x3fdb1aa22890e618              # double 0.42350057565235621
	.quad	0x3fe1017f10c8da78              # double 0.53143265989531496
	.quad	0x3fba96e935b838b8              # double 0.10386521874918031
	.quad	0x3fe35b0cf1c406aa              # double 0.6048645708071565
	.quad	0x3fda7dfd03cac682              # double 0.4139397179634231
	.quad	0x3f91b2236ef411c0              # double 0.017281106612260677
	.quad	0x3fe4cb27cc202f26              # double 0.64979925030045105
	.quad	0x3fa589473cdf9820              # double 0.042062975102268974
	.quad	0x3fd6fc3ba5e3e876              # double 0.35914508056851646
	.quad	0x3fc56f9a0b4c03ac              # double 0.16746831466300927
	.quad	0x3fd478116047dbe6              # double 0.31982836153423333
	.quad	0x3fe0a0fcc60c750c              # double 0.5196517818582449
	.quad	0x3fd80c5c963e2d60              # double 0.37575449630886304
	.quad	0x3fd506667c5ce73e              # double 0.32851564545454781
	.quad	0x3fe68e0f8eef73ec              # double 0.70484140317023281
	.quad	0x3febb3ea393bd92c              # double 0.86571227243874693
	.quad	0x3fc900aa18829c68              # double 0.19533277699267448
	.quad	0x3fc3b891e99b055c              # double 0.15407012850304624
	.quad	0x3feee5136860b9f1              # double 0.96546335588737808
	.quad	0x3fec303ecebe63fa              # double 0.88088932399398279
	.quad	0x3fd6c79c30394ec4              # double 0.35593323430405754
	.quad	0x3fe75052565d1733              # double 0.72855488651177891
	.quad	0x3febddd1ecdcf5ea              # double 0.87082763922051964
	.quad	0x3fc0fac6b3520cc8              # double 0.13265308147319943
	.quad	0x3fa35a28faf72110              # double 0.037797241816919791
	.quad	0x3fd513b2bfe26ed6              # double 0.32932728518220011
	.quad	0x3fca88b91a10912c              # double 0.2072974564808957
	.quad	0x3fe6a2d267c7b469              # double 0.70737571973371616
	.quad	0x3fa20d373b9a1fa0              # double 0.03525707819522883
	.quad	0x3fe8050623fce515              # double 0.75061327961808166
	.quad	0x3fd47b37b42dc258              # double 0.32002060504513485
	.quad	0x3fd13757d676e6d8              # double 0.26900287574572479
	.quad	0x3fe845646bfc5ff9              # double 0.75847073641762031
	.quad	0x3fec15b494bfae85              # double 0.8776495843171267
	.quad	0x3fcded2c78d717ec              # double 0.23380046749497241
	.quad	0x3fec2b89af910fbd              # double 0.88031467714653611
	.quad	0x3feba6b602606979              # double 0.86410046066457291
	.quad	0x3fd9ef984139de4a              # double 0.4052487027142645
	.quad	0x3fea88bc7496c192              # double 0.82919142504947474
	.quad	0x3fb7ec47cc8c9ac8              # double 0.09344910377385951
	.quad	0x3fe8e7b714202a05              # double 0.77828554087437907
	.quad	0x3fe8b63a651dffa3              # double 0.77224464177560426
	.quad	0x3fec5c259b85949e              # double 0.88624840140677796
	.quad	0x3fed572378d4cb46              # double 0.91688703155373541
	.quad	0x3fd76219b210745a              # double 0.36536257161225694
	.quad	0x3fcfb0bab22967c4              # double 0.24758084964088145
	.quad	0x3fed0ed287d330ef              # double 0.90805937317193564
	.quad	0x3fddb3af189b270a              # double 0.46409203913627606
	.quad	0x3fd2e51ea50b8a24              # double 0.29523435704882872
	.quad	0x3fe7e01e2e83540a              # double 0.74610814175196194
	.quad	0x3fd70c5a6ec01f5a              # double 0.36012898269153981
	.quad	0x3fe1a1f86b991721              # double 0.55102177634464422
	.quad	0x3fc8d3fe03a131d8              # double 0.19396948983411622
	.quad	0x3fe2744e43e9a4cc              # double 0.57669747604554678
	.quad	0x3fece7b81a05a38a              # double 0.9032860286944111
	.quad	0x3f8daf1012bc5840              # double 0.014494062015313003
	.quad	0x3fd6d97dc8429e60              # double 0.35702461773550986
	.quad	0x3fea4bac0108407f              # double 0.82173729135139684
	.quad	0x3fbde275028549a0              # double 0.11673671065844937
	.quad	0x3fc8133d82cd8c50              # double 0.18808716666089476
	.quad	0x3fe5436fdeaba77f              # double 0.66448205461823295
	.quad	0x3fc90bd027d6b9f0              # double 0.19567300744297667
	.quad	0x3fe856137f56df54              # double 0.76050734396901953
	.quad	0x3fe787abd6e321ea              # double 0.73531143160022094
	.quad	0x3fe0c03465761188              # double 0.5234624845184479
	.quad	0x3fd75ca948924baa              # double 0.36503059470231369
	.quad	0x3fe5b7fc96e5ba1d              # double 0.67870931121962352
	.quad	0x3fe761eafb826d1c              # double 0.73070286868042755
	.quad	0x3faa4d245c8f68c0              # double 0.05136979703793676
	.quad	0x3fd8f2d6cc96de1c              # double 0.38982171992708614
	.quad	0x3fd51cccaeef754c              # double 0.32988278468640853
	.quad	0x3fee76e7cce7b51c              # double 0.95201482792404901
	.quad	0x3fe991995139139d              # double 0.79902330268724919
	.quad	0x3fd7668449680dde              # double 0.36563212555503621
	.quad	0x3fe8b6ece118a1d0              # double 0.77232974971871649
	.quad	0x3fe72f03bb68fe1d              # double 0.72448908427753944
	.quad	0x3fd3f5ba6f137ac4              # double 0.31187306258463487
	.quad	0x3fe3c4870302298b              # double 0.61774015987002551
	.quad	0x3fd4d84def84e1d0              # double 0.32570217505010834
	.quad	0x3feef5f1d2d6431e              # double 0.96752253703207081
	.quad	0x3fe595a661e198c2              # double 0.6745178138487733
	.quad	0x3febb3983b6ad644              # double 0.86567317585895198
	.quad	0x3fcbe08541aa80c4              # double 0.21778932291363706
	.quad	0x3feda646e97e0ff0              # double 0.92654748538961762
	.quad	0x3fefe477733a984b              # double 0.9966389895023523
	.quad	0x3feb21ac58850a77              # double 0.84786050118448386
	.quad	0x3fce98889032f410              # double 0.23902995148628792
	.quad	0x3fccb0780235bf70              # double 0.22413539989383535
	.quad	0x3feff84241153e03              # double 0.99905502997893369
	.quad	0x3fdc04f6a368ba30              # double 0.43780294378203433
	.quad	0x3fe867ed0c30e52e              # double 0.76268627530149558
	.quad	0x3fe20e9453e82c13              # double 0.56427971256323628
	.quad	0x3fc7eef4329aa860              # double 0.1869797942247855
	.quad	0x3fd043676567141a              # double 0.25411400702097497
	.quad	0x3fe384b90eb48c8a              # double 0.6099515235149664
	.quad	0x3fc0491480e90c74              # double 0.12723022741747381
	.quad	0x3fdfbbfad71bfd64              # double 0.49584837919970526
	.quad	0x3fc48766c8795218              # double 0.16038212574734767
	.quad	0x3fe42b06c6708e2d              # double 0.6302522540831369
	.quad	0x3fe3a531297f8959              # double 0.61391504387965334
	.quad	0x3fede7e2ddbc5667              # double 0.93455642040016762
	.quad	0x3facebc72bf4d640              # double 0.056486343494196678
	.quad	0x3fe25b6955077d1c              # double 0.57365862471843654
	.quad	0x3fdd0e4899641ac6              # double 0.45399680118172758
	.quad	0x3fd3db8fd75c5c00              # double 0.31027599364591651
	.quad	0x3fb7712a7ce14990              # double 0.091570525635040533
	.quad	0x3fea7f3bfcffaf6b              # double 0.82803153432676646
	.quad	0x3fc02dd25a913150              # double 0.12639836714005037
	.quad	0x3fe4eecfb591310f              # double 0.65415177786192824
	.quad	0x3fed74ba95879a33              # double 0.9204991264821899
	.quad	0x3fa477433101bd80              # double 0.039972400409960862
	.quad	0x3fec8d3eb4b22b6a              # double 0.89224181453878981
	.quad	0x3fcfced68fe62494              # double 0.24849969888990542
	.quad	0x3fd677e0ea3795f8              # double 0.35106680748717123
	.quad	0x3fe74cfca10de5d2              # double 0.72814780670085555
	.quad	0x3fda749a2e2e4250              # double 0.41336683759530946
	.quad	0x3fd348a4df9cdf1c              # double 0.30130884015260206
	.quad	0x3fe1ddcc715b9cab              # double 0.55832502498824021
	.quad	0x3fd8820e89ac2a08              # double 0.3829380363901298
	.quad	0x3fe6609a081c3b08              # double 0.69929219802892906
	.quad	0x3fd402e35ddb559e              # double 0.31267627874088955
	.quad	0x3fcc88d189296dc0              # double 0.22292536923747086
	.quad	0x3fdd78b4e99b0916              # double 0.460492351656414
	.quad	0x3fe482ce33a56c7a              # double 0.64096746527810855
	.quad	0x3f68ad5d89fd8e00              # double 0.0030123545583806699
	.quad	0x3fee79b261ea07b2              # double 0.95235556720603243
	.quad	0x3fc4a781a702b2a4              # double 0.16136189131556933
	.quad	0x3fd82b51217b680a              # double 0.37764385480625207
	.quad	0x3fded2b5f4c3ba0a              # double 0.48161076453007523
	.quad	0x3febf8d35cafef88              # double 0.87412422278383506
	.quad	0x3fe7ed63b026079d              # double 0.74772819904341115
	.quad	0x3fdc7d5914c06d66              # double 0.44515063311128811
	.quad	0x3feca7ddb6005a10              # double 0.89549146220343978
	.quad	0x3fe2b856037b0115              # double 0.58500195197851446
	.quad	0x3fd8e4b7336d913a              # double 0.38895969412103037
	.quad	0x3fd9234a0b97ba62              # double 0.3927788842401353
	.quad	0x3fc72b1f793b7288              # double 0.18100350780050101
	.quad	0x3fe9c1b2db643df3              # double 0.8048948559753043
	.quad	0x3fd91214495d8436              # double 0.39172846951084084
	.quad	0x3f7ec30f897c2b00              # double 0.0075102431217242138
	.quad	0x3fe1c90526768234              # double 0.55578858864107028
	.quad	0x3fe691e4234e6f2e              # double 0.70530897994783515
	.quad	0x3fc1d7dc5f095b48              # double 0.13940004959541796
	.quad	0x3fee9b8ef944585c              # double 0.95648907360988344
	.quad	0x3fee8f05360d70cc              # double 0.9549585395539224
	.quad	0x3fc0254205084830              # double 0.12613702054710663
	.quad	0x3fe98fad9d27764e              # double 0.79878884023828234
	.quad	0x3feb94b7815d5484              # double 0.86190390841024155
	.quad	0x3fe560a898e39bb0              # double 0.66804914342070809
	.quad	0x3fe62188dd80e355              # double 0.69159358274837734
	.quad	0x3fe9b560155e87be              # double 0.80339054273303367
	.quad	0x3fac71596ccb6770              # double 0.055552286654075966
	.quad	0x3fb792b272170bc8              # double 0.09208216939354863
	.quad	0x3fe801866a89a950              # double 0.75018616493370338
	.quad	0x3fe7c09a7f3aa0c9              # double 0.74226116990487256
	.quad	0x3fd15a5526888360              # double 0.27113846552861354
	.quad	0x3fee652f32f36c04              # double 0.94985160781232069
	.quad	0x3fe382d9af563c5b              # double 0.60972294087867895
	.quad	0x3fe6cfe2092f72cd              # double 0.71287633699429309
	.quad	0x3fe234fd8539d3f4              # double 0.56896854420358389
	.quad	0x3fac938a5eae3b00              # double 0.055813144738854348
	.quad	0x3fdd772a06aee0ac              # double 0.46039820339820881
	.quad	0x3fd5efec80967f6c              # double 0.34276878888521511
	.quad	0x3fe55e8f1d7b6bcf              # double 0.66779285200333927
	.quad	0x3fe3b714c39992ed              # double 0.61609876826386556
	.quad	0x3fc881cf4ef20c3c              # double 0.19146148066292479
	.quad	0x3fd2258e153a1138              # double 0.28354217598850395
	.quad	0x3fb1825eb5e4cdd8              # double 0.068395537765176484
	.quad	0x3fa64f07b9be0d60              # double 0.043571702407485757
	.quad	0x3fea23103d10f75d              # double 0.81678020407683116
	.quad	0x3f958f4ac9740840              # double 0.021054428621035237
	.quad	0x3fec03d455519b65              # double 0.87546745933364589
	.quad	0x3fd61659500c3ad6              # double 0.34511406724133786
	.quad	0x3fe60975e3b35544              # double 0.68865484688527845
	.quad	0x3fb301d0d6018540              # double 0.074246456382316417
	.quad	0x3fe4729739d530c8              # double 0.6389881257578276
	.quad	0x3fc8ba4f74cc6ed0              # double 0.19318574145369505
	.quad	0x3fcc56d31b1f9934              # double 0.22139967750917722
	.quad	0x3fe9018fd35b6a67              # double 0.78144065170938581
	.quad	0x3fd0fd8d83e0429c              # double 0.26547563437001442
	.quad	0x3fce3e2045cff194              # double 0.23627093704989177
	.quad	0x3fdf0178e552219a              # double 0.48446485895740354
	.quad	0x3fec5aaa8e739996              # double 0.88606765577860602
	.quad	0x3fce393cb847c1b4              # double 0.2361217403226995
	.quad	0x3fa9713d65bc4060              # double 0.049692076367251259
	.quad	0x3fa0f21aa8d4eca0              # double 0.033097107991545416
	.quad	0x3fe88e4c1a12a353              # double 0.76737027256340651
	.quad	0x3fad9b9d53432c00              # double 0.057827869809976562
	.quad	0x3fe0f0b5380e2f35              # double 0.52938328693696823
	.quad	0x3fbd9aab52dfc490              # double 0.11564131520551002
	.quad	0x3fc1576ab277e02c              # double 0.1354802485873291
	.quad	0x3fe7273e65b0df09              # double 0.72354049550537625
	.quad	0x3fcd23bcb8e4c748              # double 0.22765311267863297
	.quad	0x3fd7bf1536290d0a              # double 0.37103777207467259
	.quad	0x3fea7670a4b67814              # double 0.82695800943816033
	.quad	0x3fec4faf473fd772              # double 0.8847271339024998
	.quad	0x3fef29345373288d              # double 0.97377983378216159
	.quad	0x3fe08d88ce391093              # double 0.51727714803611702
	.quad	0x3fe2cfa57d8250d9              # double 0.58784746659741949
	.quad	0x3f80bd5e54b3cc00              # double 0.0081736917113399699
	.quad	0x3fe275f51e9e7f52              # double 0.57689910869883421
	.quad	0x3fcf1c27be4479d8              # double 0.2430467299499941
	.quad	0x3f97c841114981e0              # double 0.023224846534846466
	.quad	0x3fd87b79f57202f4              # double 0.38253640145562362
	.quad	0x3fd362b54e5f83de              # double 0.30289967206596013
	.quad	0x3fd6ff781cb06130              # double 0.35934260179193966
	.quad	0x3fe336d618d2a9be              # double 0.60044388626311451
	.quad	0x3fe8240fff63a19b              # double 0.75440215950679901
	.quad	0x3fe7f59b99e0510e              # double 0.74873142293884754
	.quad	0x3fe717bd11d700a9              # double 0.72164777263971758
	.quad	0x3fe2ddc82543413a              # double 0.58957297590135416
	.quad	0x3fe50b659cbc1c6a              # double 0.6576412259318094
	.quad	0x3fe8cbb1fd179e9d              # double 0.77486514503557979
	.quad	0x3fd5681375ee8820              # double 0.33447729603551757
	.quad	0x3fedc041757897e0              # double 0.92971871322219712
	.quad	0x3fe3af81984002b3              # double 0.61517410026870889
	.quad	0x3fdd82d7a8b34916              # double 0.46111098742143619
	.quad	0x3fe5092cb77bf8c3              # double 0.65736995541353627
	.quad	0x3fee516283cd8674              # double 0.94743467085591115
	.quad	0x3fd46b9cfada0e58              # double 0.31906818864101671
	.quad	0x3fd4ee1c0e8eff44              # double 0.32703305646645142
	.quad	0x3fe4ddc7dccd8132              # double 0.65207284093415852
	.quad	0x3fece085e7b4e37b              # double 0.90240760092920824
	.quad	0x3fdf3d3d7f69b072              # double 0.48811280672703738
	.quad	0x3fe4e40d8c57bac5              # double 0.65283849154169415
	.quad	0x3fb248fc9aa3ec98              # double 0.071426189187990707
	.quad	0x3fe14531aa0060d7              # double 0.53969653323567968
	.quad	0x3fc70739f03efaf4              # double 0.17990802984964882
	.quad	0x3fe4fe0ee88c936d              # double 0.65601296825171362
	.quad	0x3fe377776e0d90a1              # double 0.60833331579899064
	.quad	0x3fedcc26cd24fa9b              # double 0.93117084567332442
	.quad	0x3fd9c2bea74fdbe6              # double 0.40251127566392453
	.quad	0x3fb979e71b70b628              # double 0.099516338538443549
	.quad	0x3fe419af20d5e10f              # double 0.62813526547600584
	.quad	0x3fd4a434c3886796              # double 0.32252234549525249
	.quad	0x3fe3c658d79bd9e4              # double 0.61796228514759521
	.quad	0x3fe40e341afaa05c              # double 0.62673383015954753
	.quad	0x3fe865ac6380a1b2              # double 0.76241130289149894
	.quad	0x3fecf6d7f8a96c16              # double 0.90513228003271951
	.quad	0x3fe5cb3c3a399b9e              # double 0.68105899211956333
	.quad	0x3fde511b24622a0c              # double 0.47370031884261787
	.quad	0x3fdb13b2257bc39c              # double 0.42307714138501651
	.quad	0x3fd05ee7e0345b62              # double 0.2557925881860027
	.quad	0x3fe8face0f3b5567              # double 0.78061583495097586
	.quad	0x3fd64c7377f92ff4              # double 0.34841620174552124
	.quad	0x3fd4191ffb7c21a2              # double 0.3140335040957557
	.quad	0x3fe274999c65c5a1              # double 0.57673340364833703
	.quad	0x3fefb9d91ee86088              # double 0.9914365390459503
	.quad	0x3fc36b833e5cf45c              # double 0.15171852631638927
	.quad	0x3fd487400f7901f6              # double 0.32075501929287442
	.quad	0x3fce9d518812cacc              # double 0.23917597908219645
	.quad	0x3fe1f3e71edcba96              # double 0.56102329280641317
	.quad	0x3fd34f1180c896a8              # double 0.30170095039862099
	.quad	0x3fe6f454ada60625              # double 0.71732553401688348
	.quad	0x3fe7f52f6b6fab32              # double 0.74867983802446347
	.quad	0x3f83d70f6977d100              # double 0.0096875385342873876
	.quad	0x3fe9239aebccf35b              # double 0.78559633307268528
	.quad	0x3fe04212d95e00ca              # double 0.50806562857180748
	.quad	0x3fdc410d2de9cf0c              # double 0.44147042735788555
	.quad	0x3fd6f538db4f8e4a              # double 0.3587171689707459
	.quad	0x3f9ca89327bee6a0              # double 0.027986811924825106
	.quad	0x3fbc798596041ac8              # double 0.1112292758226473
	.quad	0x3fd177b2866466a4              # double 0.27293074726331157
	.quad	0x3fc8d0701a786300              # double 0.19386102001660532
	.quad	0x3fe0140ee5b8dc5c              # double 0.50244850986099321
	.quad	0x3fe3aae17c99331e              # double 0.61460947356826856
	.quad	0x3fc0c7b68d89546c              # double 0.13109476004561615
	.quad	0x3fba1dfe1cc4ce50              # double 0.1020201511608374
	.quad	0x3fb241e88cd61690              # double 0.071318182357652526
	.quad	0x3fea98584cc3d2d5              # double 0.83109679215575716
	.quad	0x3fb94a1d593d8040              # double 0.098787149703185584
	.quad	0x3fcb58a1989980c8              # double 0.21364231063035377
	.quad	0x3fe6a0dc35737959              # double 0.70713625373518163
	.quad	0x3fec3c41d15ea27e              # double 0.88235560314667771
	.quad	0x3fe2d92834f9662a              # double 0.58900842997099301
	.quad	0x3fed5ab0e579f8fc              # double 0.91732067889805035
	.quad	0x3fc685d182da7184              # double 0.17595881356545473
	.quad	0x3fe087ee5e24f9ea              # double 0.51659315478883383
	.quad	0x3fe297b874b30f12              # double 0.58102057259427142
	.quad	0x3fcbeb934fe043bc              # double 0.21812669182011557
	.quad	0x3fe09e890a4b81e9              # double 0.51935245524151441
	.quad	0x3fe0d1572af52611              # double 0.52555426016005147
	.quad	0x3fedd46e2bcaa390              # double 0.93218143990553592
	.quad	0x3fbee9999d5c1c20              # double 0.12075195400039762
	.quad	0x3feb921e7ce087f5              # double 0.86158680334142324
	.quad	0x3fc979408b001d64              # double 0.19901282107478402
	.quad	0x3fe80e5626f77b65              # double 0.75175006495178975
	.quad	0x3fecf1cfa9ab3193              # double 0.904517966636876
	.quad	0x3fe6a022137016ae              # double 0.70704749866918859
	.quad	0x3fe076f592963fb0              # double 0.5145213950181553
	.quad	0x3fe9bd13936cd042              # double 0.80433062356906526
	.quad	0x3fca18e7dba4c814              # double 0.20388506150044405
	.quad	0x3fd2959ded75fc6e              # double 0.29038189115084989
	.quad	0x3feba8208fc4d3c7              # double 0.86427333907942561
	.quad	0x3fcbcc42762032c4              # double 0.21717100875721063
	.quad	0x3fc852354e86c594              # double 0.19000879606532506
	.quad	0x3fef4e142894c9c4              # double 0.97828109670654628
	.quad	0x3fefb0e1786abb11              # double 0.99034188765458186
	.quad	0x3feb21766d418cfb              # double 0.84783479060243339
	.quad	0x3fde5e99cfc90d66              # double 0.47452397624529963
	.quad	0x3fd3fec26210a0d0              # double 0.31242427422195096
	.quad	0x3fd39433f5c0d1ea              # double 0.30592059134803995
	.quad	0x3f953977e6bf8400              # double 0.020727036913630315
	.quad	0x3fadfb4fb2b0e9f0              # double 0.058557978213190753
	.quad	0x3fece58a078c1052              # double 0.90301991914794599
	.quad	0x3fd097df9cae25b6              # double 0.25926962185675551
	.quad	0x3fd24afc7b64c734              # double 0.285826797963739
	.quad	0x3fdfcaba23eb00ee              # double 0.49674848086944123
	.quad	0x3fc34ce913a8bd0c              # double 0.15078462085646327
	.quad	0x3fc6db9c6994d3ac              # double 0.17857699542369454
	.quad	0x3fde80bd3be0eba8              # double 0.47660761687773823
	.quad	0x3fe770bec712746c              # double 0.73251284486071944
	.quad	0x3fee81b8be0e611b              # double 0.95333516235681104
	.quad	0x3fe4d5e890d8ba5b              # double 0.651111872581008
	.quad	0x3fb5ebf315935af0              # double 0.085631554381830232
	.quad	0x3fee8014e12cc473              # double 0.9531349561640482
	.quad	0x3feb402bdad978ce              # double 0.85158341163676154
	.quad	0x3fdd12abb048e63e              # double 0.45426456656750591
	.quad	0x3fc6bde5c20a6c74              # double 0.17767021155018237
	.quad	0x3fd9c8491fb1ce54              # double 0.40284946532412858
	.quad	0x3fe6c56b59908cd4              # double 0.71159903996558649
	.quad	0x3fe2c7ff74a5e6b2              # double 0.58691380293676887
	.quad	0x3fd51546e2247b68              # double 0.32942363819340992
	.quad	0x3fda3c4e67adc6c0              # double 0.40993080258258985
	.quad	0x3fb87ccebc50c630              # double 0.095654412246198416
	.quad	0x3fd76c490fb14ebc              # double 0.36598421604615416
	.quad	0x3febb0ccd2d74b2f              # double 0.86533204250222251
	.quad	0x3fa032088d5b2f60              # double 0.031631724601168143
	.quad	0x3fe59d78c3a525c7              # double 0.67547262393889518
	.quad	0x3fdd69322752a6d8              # double 0.45954564895747074
	.quad	0x3fe6465f41ddb586              # double 0.69609034409010984
	.quad	0x3fe9981fcdf15bd0              # double 0.79981985305027514
	.quad	0x3feeca1eb4e34b8b              # double 0.96217284516966239
	.quad	0x3fd0c5a30e345766              # double 0.2620628012385765
	.quad	0x3fe70a222bfabdec              # double 0.71998699750650763
	.quad	0x3fefe576d46071bd              # double 0.99676076392966417
	.quad	0x3fea32104cb52758              # double 0.81861128789862914
	.quad	0x3fc2ae59034207f4              # double 0.14594566973761369
	.quad	0x3fc2ed7814a35894              # double 0.1478719807407215
	.quad	0x3fcb78f7a4cf2708              # double 0.2146291308147783
	.quad	0x3fe594d1835e57e0              # double 0.67441630990901658
	.quad	0x3fca8c1f0a6d6ea8              # double 0.20740116128114505
	.quad	0x3fee7ffce03c2757              # double 0.95312351032155618
	.quad	0x3fde541a9bb6ae46              # double 0.47388329702764442
	.quad	0x3fc553f74c002398              # double 0.16662493906940479
	.quad	0x3fe6b897c81457a9              # double 0.71003331258792912
	.quad	0x3fe54149d1129799              # double 0.66421976885316092
	.quad	0x3fe15717db4c9993              # double 0.54188149291876397
	.quad	0x3fe26827d1a91bfb              # double 0.5752142996724382
	.quad	0x3fee1772847c4d33              # double 0.94036222339710773
	.quad	0x3fe9ea6895376d27              # double 0.80986432212686033
	.quad	0x3fdf491e1342d102              # double 0.48883773690182875
	.quad	0x3fcf18f24a777f60              # double 0.24294880519937134
	.quad	0x3f76a79dd5c61f00              # double 0.0055309453422365262
	.quad	0x3fc5ada5f06d5ef0              # double 0.16936182250605425
	.quad	0x3fe7cc6534f41400              # double 0.74370060293642837
	.quad	0x3fd9a52e6a28e72a              # double 0.40070686690488577
	.quad	0x3fe3e5edd43889dc              # double 0.6218175072611376
	.quad	0x3fe65e05f1364d61              # double 0.69897744285337293
	.quad	0x3fe32663c57b881f              # double 0.59843624659356809
	.quad	0x3fd6bdb6e4d47336              # double 0.35532924982708225
	.quad	0x3fe3bbc95d0aa236              # double 0.61667316600966759
	.quad	0x3fdc197ddfa76168              # double 0.43905588952249852
	.quad	0x3fdb81a69c7ebcdc              # double 0.42978825838777168
	.quad	0x3fefd52ed4d5e345              # double 0.99477330750878734
	.quad	0x3fe50e8d0a0313b4              # double 0.658026237063146
	.quad	0x3fe7ecab8927aa0f              # double 0.74764038837503388
	.quad	0x3fb57374244bfa08              # double 0.083792933331985009
	.quad	0x3fe34f2778fcf191              # double 0.60341237669449488
	.quad	0x3fec65103b089355              # double 0.88733684091549014
	.quad	0x3fdb29fc5306d6a2              # double 0.42443760021283528
	.quad	0x3f8e9a6d399c9180              # double 0.014942982979456287
	.quad	0x3fd3ca1492902036              # double 0.30920900643150462
	.quad	0x3fe6cf5f5e182087              # double 0.71281402948172079
	.quad	0x3fd366743c8ce53e              # double 0.30312829888460502
	.quad	0x3fe83567baa94333              # double 0.75651918847333943
	.quad	0x3fd406a5626d64da              # double 0.31290564167063695
	.quad	0x3feb71fd581dc8d0              # double 0.85766474924300873
	.quad	0x3fa04e2e3ed7b2a0              # double 0.031846470996105269
	.quad	0x3fedf0c4e0cdde22              # double 0.93564075381340595
	.quad	0x3fe392bc84ab5b5f              # double 0.61166215812668756
	.quad	0x3fe70581694f200c              # double 0.71942205970936035
	.quad	0x3fdf80c644219d3a              # double 0.49223477033088481
	.quad	0x3fe7faf3f7a63712              # double 0.74938391083716938
	.quad	0x3fe8a816eca4ca8d              # double 0.77051874370074958
	.quad	0x3fd09778f79e3d98              # double 0.25924514943559407
	.quad	0x3fea97e16daa8680              # double 0.83104010981715248
	.quad	0x3fe90ec72ad75083              # double 0.78305395476719786
	.quad	0x3fef0cbb4e42e7cb              # double 0.97030415807170677
	.quad	0x3fdd7382538f32c2              # double 0.46017511520475918
	.quad	0x3fb5a01ce3c9ba18              # double 0.084474378216079393
	.quad	0x3fdb8cfee027c216              # double 0.43048068895498781
	.quad	0x3feb8bfc56b63e1c              # double 0.86083809791483956
	.quad	0x3fc52bce2e748afc              # double 0.16539933460543199
	.quad	0x3fe7e0b7addf329b              # double 0.74618133506153883
	.quad	0x3fdc83cfdafcf458              # double 0.44554516206318828
	.quad	0x3fe15f28532a57d8              # double 0.5428659080814624
	.quad	0x3fd7a738d268f326              # double 0.3695814184937255
	.quad	0x3fb00203dd669b98              # double 0.062530747940952813
	.quad	0x3fd45d90413df992              # double 0.31821066256807129
	.quad	0x3feffd0c02606e16              # double 0.9996395155353095
	.quad	0x3fec51933341e224              # double 0.88495788584902301
	.quad	0x3fecffbab42767a7              # double 0.90621695696176097
	.quad	0x3fe4d35737980c0a              # double 0.65079842432203461
	.quad	0x3fcf685351326818              # double 0.24537126030628609
	.quad	0x3fd01641df835696              # double 0.25135847880788142
	.quad	0x3f620bd78b054a00              # double 0.0022029123139557516
	.quad	0x3fde48691f152c1a              # double 0.47316959414882975
	.quad	0x3fd2937769b1cd44              # double 0.29025063821537267
	.quad	0x3feba5a7a53941bd              # double 0.86397154112096752
	.quad	0x3fb75b6b6854e4e8              # double 0.0912387017932762
	.quad	0x3fcfbebafc04b4e4              # double 0.24800813012681211
	.quad	0x3fd8713daa6d3a7e              # double 0.38191167491178379
	.quad	0x3fde5a412b9c5a24              # double 0.47425870188581798
	.quad	0x3fdd3c4d1d668724              # double 0.45680549498693979
	.quad	0x3fdf484145409b00              # double 0.48878509295393258
	.quad	0x3fe5a51faeb08955              # double 0.67640670889913201
	.quad	0x3fe66224d461a0a9              # double 0.69948045235380107
	.quad	0x3fd6056f0acda510              # double 0.34408165030488735
	.quad	0x3fb8588f426b3e90              # double 0.095101312366063561
	.quad	0x3fe8793fbc6658cb              # double 0.76480089947542618
	.quad	0x3fe9a14a5420b120              # double 0.8009387629622644
	.quad	0x3fed8638facc6c05              # double 0.92263459190451214
	.quad	0x3fda3609ac5857a8              # double 0.40954820471358255
	.quad	0x3fe52056e410d65a              # double 0.66019768280120705
	.quad	0x3fea7c369b8c8a46              # double 0.82766275768910513
	.quad	0x3fc114f4f40ee744              # double 0.13345205227761359
	.quad	0x3fa8340af3141f50              # double 0.04727205483692265
	.quad	0x3fd5dee0a7a59d5e              # double 0.34172836658259154
	.quad	0x3fb3c9c45ee589b0              # double 0.07729747120678243
	.quad	0x3fe1cbaa4f8f2f51              # double 0.55611148394516807
	.quad	0x3fe31185e6bb117e              # double 0.59588904442402657
	.quad	0x3fdddf8a610ae334              # double 0.46676883198556429
	.quad	0x3faafeaa24810810              # double 0.052724186855371724
	.quad	0x3fecf211781b5b4d              # double 0.90454934557315314
	.quad	0x3febec27ccee2d45              # double 0.87257757211174491
	.quad	0x3fe4fd2a3dc156c2              # double 0.65590393125122426
	.quad	0x3fed087bec165be3              # double 0.90728565321739685
	.quad	0x3fd7c4a53a927284              # double 0.37137728424003336
	.quad	0x3fba379988d30cb8              # double 0.10241088476600424
	.quad	0x3fbc242fd4fb5920              # double 0.1099271674132507
	.quad	0x3fee814c1b9729e4              # double 0.95328336132780266
	.quad	0x3fc69b8724748740              # double 0.17662133483923448
	.quad	0x3fcd0089e0c78a20              # double 0.22657893634375714
	.quad	0x3fe049bffdef4383              # double 0.50900268169981222
	.quad	0x3fcd4e8afd72492c              # double 0.22895943999589841
	.quad	0x3fe703c033824e37              # double 0.7192078596148751
	.quad	0x3fd8c41515390c2e              # double 0.38696791718047308
	.quad	0x3f91902fbc200820              # double 0.017151590211149537
	.quad	0x3fc89a72be6e6a30              # double 0.19221338556674672
	.quad	0x3fe774d2194c518f              # double 0.7330103391746422
	.quad	0x3fabaec648747e40              # double 0.054067798943148393
	.quad	0x3fefc38710a0911a              # double 0.99261811492445706
	.quad	0x3fe56be7c3eb5556              # double 0.66942203774912445
	.quad	0x3f9c1b67cb869500              # double 0.027448293492530418
	.quad	0x3fe343c8b1dce453              # double 0.60202440966453208
	.quad	0x3fe4db715ce24ce2              # double 0.65178745404628224
	.quad	0x3fd0dc0ee26967ae              # double 0.26343128309747044
	.quad	0x3fe64fccbceba4d7              # double 0.69724118135959656
	.quad	0x3fe208929c611403              # double 0.56354647200407759
	.quad	0x3fc57eaac1c51838              # double 0.16792807065411508
	.quad	0x3feb822e1df6d8f2              # double 0.8596411309470382
	.quad	0x3fda0cf18f089adc              # double 0.40704001396299616
	.quad	0x3fb5622357436868              # double 0.083528717808265207
	.quad	0x3fd5735083ab317a              # double 0.33516323908113288
	.quad	0x3fb952ff0642b4b8              # double 0.098922671345195279
	.quad	0x3fe0588a4c6beea3              # double 0.5108081333741733
	.quad	0x3fecd5fc8eb35a66              # double 0.90112140532694407
	.quad	0x3fcc7e418e2cb72c              # double 0.22260302965281065
	.quad	0x3fe21d015d932a18              # double 0.56604069019641923
	.quad	0x3fee6c0100d64193              # double 0.95068407214607686
	.quad	0x3fe1d0baa6927387              # double 0.55672962697609385
	.quad	0x3fe042bd425e80eb              # double 0.50814688647008432
	.quad	0x3fa7759df0ab5c80              # double 0.045819221142374467
	.quad	0x3fe073a4170a9515              # double 0.51411633014928049
	.quad	0x3fead4e348a45c36              # double 0.8384872835912407
	.quad	0x3fddc220048e2c60              # double 0.46497345394954515
	.quad	0x3fe31446f364c54e              # double 0.59622523820704898
	.quad	0x3fb6f03faa9a37d0              # double 0.08960340418909074
	.quad	0x3fc0e5d1f9812d18              # double 0.1320135563167717
	.quad	0x3fd5169f8c17ba1a              # double 0.32950581246305577
	.quad	0x3fd7de0f4ace5356              # double 0.37292845063466495
	.quad	0x3fe27a7081f4fccc              # double 0.57744622595046158
	.quad	0x3fe364e9a0820cae              # double 0.60606843327732007
	.quad	0x3febc6b1535b00b4              # double 0.86800447731368146
	.quad	0x3fdfc9b160a4c574              # double 0.49668535650115264
	.quad	0x3fe63919b112730b              # double 0.69447025856388345
	.quad	0x3fdc1ba8d755e36a              # double 0.43918820408685255
	.quad	0x3fd031876c9c7eec              # double 0.25302301031659513
	.quad	0x3fa794ef1ddfe6e0              # double 0.046058151623538768
	.quad	0x3fee05ffd1ef03b6              # double 0.93823233606973733
	.quad	0x3f8cfe16dbedb0c0              # double 0.014156511866268651
	.quad	0x3fdc5a21a6fc3fa2              # double 0.44300118739283267
	.quad	0x3fdc2e0e561a1d0e              # double 0.44031103523634918
	.quad	0x3feee83cae756fd7              # double 0.96584924768421387
	.quad	0x3fefe6fb9729247b              # double 0.99694613956047761
	.quad	0x3fea8ae0a2f5aae6              # double 0.82945281818441852
	.quad	0x3febe09c857a7737              # double 0.87116838521953965
	.quad	0x3feeff89cc801567              # double 0.96869363728971513
	.quad	0x3fe604b4dfaf0077              # double 0.68807452858165064
	.quad	0x3fd2fbc9e1ae346e              # double 0.29661795653448209
	.quad	0x3feef6b493fcdcc1              # double 0.96761540321212902
	.quad	0x3fddf262cc99c534              # double 0.46791906338247036
	.quad	0x3f9650a083f21700              # double 0.021791942647289453
	.quad	0x3fe0548936463db4              # double 0.51031933403458263
	.quad	0x3fe338ea16e7221f              # double 0.6006975600549288
	.quad	0x3fe1a3889b2414a5              # double 0.55121259976353498
	.quad	0x3fec1880a137bd6d              # double 0.8779910229476805
	.quad	0x3fdf7edba8a38364              # double 0.4921178004133735
	.quad	0x3fd74b8218d447e0              # double 0.36398365425804791
	.quad	0x3fde737d682f1d26              # double 0.47579894232008468
	.quad	0x3fb4a8f3d3857840              # double 0.08070300973983624
	.quad	0x3fdd67e247e6e532              # double 0.45946557065652194
	.quad	0x3fe3e1bce12f14a5              # double 0.62130588513595753
	.quad	0x3fecb90de45ebb9f              # double 0.89758963206792319
	.quad	0x3fb2db1a73511738              # double 0.073655751374727241
	.quad	0x3fe967f73cae9ec0              # double 0.7939411339948137
	.quad	0x3fd8e9e4930e3fb6              # double 0.38927568779854071
	.quad	0x3f6057bde8a2de00              # double 0.0019949635653480069
	.quad	0x3fef96873080fd9a              # double 0.98712501023685495
	.quad	0x3fdeaa4cb5213bc4              # double 0.47914426506480035
	.quad	0x3fc30ae492711258              # double 0.14876992369149167
	.quad	0x3fdc68593fe1d3f0              # double 0.44386893499841928
	.quad	0x3feec35309944ed1              # double 0.96134330626451902
	.quad	0x3fef3d3ef8a41610              # double 0.97622631609618971
	.quad	0x3fc4725a3e182330              # double 0.15973976165721515
	.quad	0x3fe1565c9b88ea09              # double 0.54179220559973473
	.quad	0x3feacbde82e187af              # double 0.83738637507143732
	.quad	0x3fd5fd4c2d2fe960              # double 0.34358505642707904
	.quad	0x3fe8267e822b4d33              # double 0.7546989958158633
	.quad	0x3fe90923a3c9e905              # double 0.78236562719328673
	.quad	0x3fab253243ccded0              # double 0.053018160606766451
	.quad	0x3fc666a6bcc79350              # double 0.17500766961816305
	.quad	0x3fde4982f94316a8              # double 0.47323679296492083
	.quad	0x3fe0e2c47d8dac74              # double 0.5276815845694629
	.quad	0x3fed3e1aee7366c7              # double 0.91383120129031503
	.quad	0x3fd7b4ed549a4482              # double 0.37041791212056563
	.quad	0x3fefd7df3c970f19              # double 0.99510156473158695
	.quad	0x3fe012e2254db646              # double 0.50230510030605369
	.quad	0x3fe18ac39e689055              # double 0.54818898142958494
	.quad	0x3fd238eabbbac582              # double 0.28472393353430203
	.quad	0x3fdd41aaea432afe              # double 0.45713303448853526
	.quad	0x3fc8319ea92f5c48              # double 0.18901427517877978
	.quad	0x3fe207bb708623e3              # double 0.56344387032833898
	.quad	0x3f961a6dcb100e60              # double 0.021585193175282291
	.quad	0x3fba88a5189cbbe8              # double 0.10364753580937214
	.quad	0x3fc68de5ac05dafc              # double 0.17620535754732447
	.quad	0x3fe63be51b19829c              # double 0.69481139462375863
	.quad	0x3fce9d887d686c40              # double 0.23918253062660888
	.quad	0x3fe684b4144758cf              # double 0.70369914971049663
	.quad	0x3fb1bb66e64a2318              # double 0.069265776846929916
	.quad	0x3fcc452060a167cc              # double 0.22085957258496902
	.quad	0x3fe630e115764602              # double 0.69346670333669658
	.quad	0x3fd82f685e8ab474              # double 0.37789353592490404
	.quad	0x3fef37dc2b882494              # double 0.97556885244661595
	.quad	0x3fe7cf276c87a610              # double 0.7440373534893201
	.quad	0x3fcfb697c1dc3870              # double 0.2477597900946793
	.quad	0x3fe051bf6956e669              # double 0.50997896741973847
	.quad	0x3fd13f6b47ed99f2              # double 0.26949579262000534
	.quad	0x3fe36bd467fd50db              # double 0.60691280661060476
	.quad	0x3fd232c736c1bfcc              # double 0.28434925410601575
	.quad	0x3fe63e38486c1dbb              # double 0.69509519715295853
	.quad	0x3fed380acd409451              # double 0.91309108818371432
	.quad	0x3fd201025ccf589a              # double 0.28131159842940578
	.quad	0x3fe40d2d46e54f7f              # double 0.6266085037882333
	.quad	0x3fd36fe7e925ed4c              # double 0.30370519417165975
	.quad	0x3fdf28738da22628              # double 0.4868439562929745
	.quad	0x3fe4b2bfc889fc5e              # double 0.64681996505522554
	.quad	0x3fe94e523569ecec              # double 0.79081068451287483
	.quad	0x3fcc7ca25f4e1420              # double 0.22255353597225369
	.quad	0x3fb78e1d2a3b44a8              # double 0.092012236414364623
	.quad	0x3fc11f4ba1a631d4              # double 0.13376756089236486
	.quad	0x3fd35272cf1d74ee              # double 0.30190725542145358
	.quad	0x3feaafcefe70bae6              # double 0.83396100707417697
	.quad	0x3fedd0ae92428890              # double 0.93172386709581367
	.quad	0x3fc402d2c5e7aa10              # double 0.15633616126372418
	.quad	0x3fd0bcb56e9b744e              # double 0.26151786614884009
	.quad	0x3fdac0874e58ebd0              # double 0.41800100947483276
	.quad	0x3fc2e933f181f228              # double 0.14774178783763259
	.quad	0x3fe65038a2f4617c              # double 0.69729263140747788
	.quad	0x3fef03cb764a9008              # double 0.96921322921525732
	.quad	0x3fdf80572c16bf20              # double 0.4922082834773267
	.quad	0x3fdbfba21266fdf8              # double 0.43723346516705375
	.quad	0x3fe667929376bea5              # double 0.70014313508541604
	.quad	0x3fd27d3687fe2750              # double 0.28889239578767434
	.quad	0x3fefbfaffcffea98              # double 0.9921493474387999
	.quad	0x3fdffe6be968854a              # double 0.4999036578538677
	.quad	0x3fd62fed6c877e2c              # double 0.34667525862275528
	.quad	0x3fe677f2201a28bf              # double 0.7021418215747629
	.quad	0x3fe35418a13f1630              # double 0.60401565068668184
	.quad	0x3fd37d7949be36a6              # double 0.30453331185786181
	.quad	0x3fc59d3e04f12b54              # double 0.16886115304290661
	.quad	0x3fce2eb78039a2b0              # double 0.23580068360322093
	.quad	0x3fd1c4e1b54506ea              # double 0.27764170362580265
	.quad	0x3fe0cc5ff711af65              # double 0.52494810348205745
	.quad	0x3fecad521ddb3f2f              # double 0.89615732032141249
	.quad	0x3feae257a4745a4a              # double 0.8401296817781454
	.quad	0x3fedb51b92d4fd26              # double 0.9283578746616612
	.quad	0x3fe8d8ef5f38771d              # double 0.77648132894293875
	.quad	0x3fd8b82604e3d948              # double 0.3862395332102051
	.quad	0x3fe828dfae070657              # double 0.75498947133764716
	.quad	0x3fe8187ba8ebcff4              # double 0.75298865311060447
	.quad	0x3fef6b3901a511c8              # double 0.9818387062192011
	.quad	0x3fee5b89081029b5              # double 0.94867374014693573
	.quad	0x3fea7f3f0054bcda              # double 0.82803297104501472
	.quad	0x3fcc5dbd3f15c72c              # double 0.22161069469762518
	.quad	0x3fe835b11f86788a              # double 0.75655418545990583
	.quad	0x3fdbac8fbf0bdffa              # double 0.43240731865762394
	.quad	0x3fec1962fe70715b              # double 0.87809896178400082
	.quad	0x3fe9194c798fd55d              # double 0.78433822386311258
	.quad	0x3fe5e7d9b1ef9574              # double 0.68455204728222308
	.quad	0x3fddc042a05c572a              # double 0.46485963497376537
	.quad	0x3fc57f43d24f40c4              # double 0.16794631737730559
	.quad	0x3fe438d5fa7aecd5              # double 0.63193797037038257
	.quad	0x3fe41eec2275e691              # double 0.62877470713211114
	.quad	0x3feb6d2ed567f8f5              # double 0.85707799607169355
	.quad	0x3fd6c9d3fc661aae              # double 0.35606860779118221
	.quad	0x3fe50ae4b527b719              # double 0.65757975942480862
	.quad	0x3fdc40ecd9790530              # double 0.44146271932193581
	.quad	0x3fef1049ccec6b90              # double 0.97073831581234238
	.quad	0x3fa7dd85133efec0              # double 0.046611937140821791
	.quad	0x3f5ab1c690c84c00              # double 0.0016292990795860884
	.quad	0x3fe957677dc584a8              # double 0.79191946568257254
	.quad	0x3fe61aad5c1704bb              # double 0.69075649248420434
	.quad	0x3fe3ced61212cff6              # double 0.618998561191346
	.quad	0x3fd4934f79de32ee              # double 0.3214911165348856
	.quad	0x3feccbfe4772c5ba              # double 0.89990152315856808
	.quad	0x3fe23909b3670f95              # double 0.56946263351027204
	.quad	0x3fc162080cc2e048              # double 0.13580418227297941
	.quad	0x3fe70a73ce180def              # double 0.7200259232781131
	.quad	0x3fe0cbf1b7b8210b              # double 0.5248955333964046
	.quad	0x3fecfd4dbfad3db0              # double 0.90592086254939908
	.quad	0x3f9e8c5a2c4193e0              # double 0.029832276297742655
	.quad	0x3fc8cb42417acab8              # double 0.19370296666382614
	.quad	0x3fbcefcdd7a282f0              # double 0.11303411974450817
	.quad	0x3fedff2725a33438              # double 0.93739659644200568
	.quad	0x3fed9d63df1032a7              # double 0.92546266142888534
	.quad	0x3fe02cab11045175              # double 0.50545266460043925
	.quad	0x3fea7462898794c0              # double 0.82670714246037136
	.quad	0x3fcd30b017338618              # double 0.2280483353888918
	.quad	0x3fe4bd8ed0f96820              # double 0.64813938918382874
	.quad	0x3fcaa7ea20b31490              # double 0.20824934574753629
	.quad	0x3fd7972c7c5b4688              # double 0.3686019148272881
	.quad	0x3fb906513ec2cf60              # double 0.097752645323280429
	.quad	0x3fe041796b2914a8              # double 0.50799246721057489
	.quad	0x3fe5c2d6afe1850f              # double 0.6800340113806288
	.quad	0x3fca6b54c92ca7c4              # double 0.20640048811884359
	.quad	0x3fe285f6eb83fd80              # double 0.57885309218538339
	.quad	0x3fd99f96fa61cfb0              # double 0.40036558581709425
	.quad	0x3feafab1c34d0938              # double 0.8431023420783168
	.quad	0x3fe108a4cdd70859              # double 0.53230514720076905
	.quad	0x3fd0e55cca1d1e7e              # double 0.26399917352362212
	.quad	0x3fd5a94383b49b52              # double 0.3384560381113505
	.quad	0x3fe2ccbdf5c93385              # double 0.58749292378489371
	.quad	0x3fe4d5acd30faa43              # double 0.65108338568581592
	.quad	0x3febec5caa04187c              # double 0.87260277944802977
	.quad	0x3fe7192bfee28fd3              # double 0.72182273657062479
	.quad	0x3fba2863d9aaf3f8              # double 0.10217880310206329
	.quad	0x3fd052a2a8af7684              # double 0.25504366372283749
	.quad	0x3fe7b45db704fe65              # double 0.74076734300610936
	.quad	0x3fe613fe0304f716              # double 0.68994045819974548
	.quad	0x3fce112eebf5af30              # double 0.23489939233274404
	.quad	0x3fec538c35d68f9d              # double 0.88519869342097801
	.quad	0x3fd2adb7646a3904              # double 0.29185280614991904
	.quad	0x3fec964d49f90b61              # double 0.89334740112131439
	.quad	0x3fd03ea66df961be              # double 0.25382385959303722
	.quad	0x3fefac54d2ac60f3              # double 0.98978654048099057
	.quad	0x3fd6502bd62c8dde              # double 0.34864326396401946
	.quad	0x3fecaf95e835b729              # double 0.89643378594857837
	.quad	0x3fda526b43741538              # double 0.41128045642138344
	.quad	0x3fcba5dcf334483c              # double 0.21599923968511969
	.quad	0x3feb33ef95c3cdec              # double 0.85008982897710216
	.quad	0x3fe5ad03ccb03bf5              # double 0.67736997583585767
	.quad	0x3fde9ece39402aee              # double 0.47844272223362239
	.quad	0x3fe6a2384206e099              # double 0.70730221649047842
	.quad	0x3fe9a9f3ce7c65e8              # double 0.80199613885195919
	.quad	0x3fd32a9d169b99da              # double 0.29947592933458866
	.quad	0x3fdeffc2781dfcfc              # double 0.48436032991590117
	.quad	0x3fcc996d85a45ab0              # double 0.22343224549759588
	.quad	0x3feaf9f399c1578c              # double 0.84301166563339924
	.quad	0x3fe7afedf6e4cb12              # double 0.74022577496939079
	.quad	0x3fbcffc2ba681560              # double 0.11327759791318703
	.quad	0x3feb84f3b05f3ef1              # double 0.8599794811979945
	.quad	0x3fe5ff53d7bfa2cc              # double 0.68741790903467281
	.quad	0x3faeafadf569ef50              # double 0.059934078414669245
	.quad	0x3fe5dd3b8dd84e41              # double 0.68325593666163098
	.quad	0x3fd6c96dfbecd210              # double 0.35604428865488646
	.quad	0x3feedc8318d0210a              # double 0.9644179806355464
	.quad	0x3fdd12dd169302ea              # double 0.45427634434240238
	.quad	0x3f9bf08393328100              # double 0.027284675463875807
	.quad	0x3fdb99783829d18a              # double 0.43124204144194123
	.quad	0x3fe10273b5739372              # double 0.53154931487789114
	.quad	0x3fbe41e0b6630e58              # double 0.11819271519476027
	.quad	0x3f941fedf6381400              # double 0.019653051522272591
	.quad	0x3fec93e797c55e48              # double 0.89305476801650574
	.quad	0x3fe9b299b779db3d              # double 0.80305181346088939
	.quad	0x3fd39ddc97b3986c              # double 0.30651011290172536
	.quad	0x3fe609ba938dc179              # double 0.68868759936417157
	.quad	0x3feaf1e289623bce              # double 0.84202696640738295
	.quad	0x3fe006d86bf4a6d7              # double 0.50083561978427837
	.quad	0x3fe5e30eced626b4              # double 0.68396702192077052
	.quad	0x3fb4131bee5ac790              # double 0.078416581813853136
	.quad	0x3fd79295ae5c3eaa              # double 0.36832181956649868
	.quad	0x3fcb6ce18545a618              # double 0.21426028258729057
	.quad	0x3fc0799fe75c0914              # double 0.12871168896533247
	.quad	0x3fb2003d7e937310              # double 0.070316165354096904
	.quad	0x3f88f9f9ccf16800              # double 0.012195540968765073
	.quad	0x3fe35e95d3d66638              # double 0.60529605268965891
	.quad	0x3fd6ecb962518ee0              # double 0.35819849587845276
	.quad	0x3fcfdc555da311dc              # double 0.24891154358023371
	.quad	0x3fa0fc2884051300              # double 0.033173814883900477
	.quad	0x3fe49288940c20f4              # double 0.64288739123824579
	.quad	0x3fe71aa8dd0d35e5              # double 0.72200434850827533
	.quad	0x3fca73f6dcc00e80              # double 0.20666394976443669
	.quad	0x3fefafe6ffbbb1b9              # double 0.99022245357405502
	.quad	0x3fd63ab8173ea170              # double 0.34733392972932275
	.quad	0x3fcbf8411552a62c              # double 0.21851361790804569
	.quad	0x3fb62ffef52b0308              # double 0.086669859748337186
	.quad	0x3fc68c401b39e58c              # double 0.17615510301019943
	.quad	0x3fdd053d99cb9746              # double 0.45344486254758853
	.quad	0x3fb2af89d14f77e0              # double 0.072991002656152215
	.quad	0x3fedd5654028798b              # double 0.93229925661926083
	.quad	0x3feeec0f5165bbca              # double 0.96631589792183914
	.quad	0x3fd081bf2baa4340              # double 0.25791911377114118
	.quad	0x3fc1ad1ce87d2a60              # double 0.13809548713682585
	.quad	0x3fed99893f8235c2              # double 0.92499220279722061
	.quad	0x3fefc01c284824ef              # double 0.99220092647115432
	.quad	0x3fc37f314635736c              # double 0.15231910637057966
	.quad	0x3fd6eae4c79ba1a6              # double 0.35808677189791138
	.quad	0x3fd1e34c5bf8ddfc              # double 0.27949818593648934
	.quad	0x3fd6bdf5bf24beb4              # double 0.35534423509941893
	.quad	0x3fcdf373c37dd044              # double 0.23399207158547786
	.quad	0x3fe0d10df9fedc1c              # double 0.52551935984854792
	.quad	0x3fb7c01ef0c6dbe0              # double 0.092775281699558843
	.quad	0x3fda734360253948              # double 0.4132851065559362
	.quad	0x3fdf420777a42034              # double 0.48840510066702625
	.quad	0x3fe84e70aada79c8              # double 0.75957520837601411
	.quad	0x3fd4aa85ddf29888              # double 0.32290789293836797
	.quad	0x3feb11438f7f3402              # double 0.84585741068588072
	.quad	0x3fd4af5e47baba44              # double 0.3232036304933994
	.quad	0x3fdfdb661c636c18              # double 0.49776604435254646
	.quad	0x3fd3e3c61b50499a              # double 0.31077721278520587
	.quad	0x3feb1ac051b320e8              # double 0.84701553303696375
	.quad	0x3fe4bc722cb1e235              # double 0.64800366143669541
	.quad	0x3fe203f168bb6307              # double 0.56298132377114107
	.quad	0x3fcc1221ac48187c              # double 0.2193033305376878
	.quad	0x3fcff14fbc3ca800              # double 0.2495517415166546
	.quad	0x3fedf1eadae21eb3              # double 0.93578093290940101
	.quad	0x3fd29e3e3feb85ba              # double 0.29090839616955189
	.quad	0x3fef09594b7833bd              # double 0.96989121189255167
	.quad	0x3fe2cc09d55108d8              # double 0.58740703261744454
	.quad	0x3fdd401cbe74799a              # double 0.45703810309523762
	.quad	0x3fbd429fc538c740              # double 0.11429785313592067
	.quad	0x3fe6d3f60757eeb0              # double 0.71337415155672623
	.quad	0x3fedf36e651854db              # double 0.93596572632909714
	.quad	0x3fe177549d372bca              # double 0.54581671434549972
	.quad	0x3fd19e593b489d8a              # double 0.27528982915324518
	.quad	0x3fcbd2a8f5e317e8              # double 0.21736633306699038
	.quad	0x3fd2b3624b299ba6              # double 0.29219872799006408
	.quad	0x3fecf9f7c8013126              # double 0.90551365912827886
	.quad	0x3fd2daab4dbcbd1a              # double 0.29459650603799192
	.quad	0x3fb60315be8a6190              # double 0.085984572428406957
	.quad	0x3fe44508e7a4f7c3              # double 0.63342709773109396
	.quad	0x3fd8a1fbe6821b9e              # double 0.38488671789712636
	.quad	0x3fecfe47939d0043              # double 0.90603998976440214
	.quad	0x3fc48a6aafb0b940              # double 0.16047414377812608
	.quad	0x3fde6b599717b438              # double 0.47530212168823338
	.quad	0x3fe268983e00d329              # double 0.57526790723804766
	.quad	0x3fdeb037039893da              # double 0.47950530387089219
	.quad	0x3fe280730820b43b              # double 0.57817985141230765
	.quad	0x3fe25b8758b273e8              # double 0.57367293666504526
	.quad	0x3fe1c1073c3a923b              # double 0.55481302035747804
	.quad	0x3fe3f2439f0067e1              # double 0.62332325987813075
	.quad	0x3fdca0822d575622              # double 0.44729666164252724
	.quad	0x3fe5f97947ad096b              # double 0.68670333861545652
	.quad	0x3fe78e59066ae577              # double 0.73612643483572426
	.quad	0x3fb585cb0c5d1fd0              # double 0.084072771566865656
	.quad	0x3fe9f68daadae5d8              # double 0.81134684915667332
	.quad	0x3fd8a7045b1f27f0              # double 0.38519390963176559
	.quad	0x3fecf2cb274dce98              # double 0.90463788677739654
	.quad	0x3fdac8131ab2bd50              # double 0.41846158606764039
	.quad	0x3fe0c3550773c23d              # double 0.52384425597671902
	.quad	0x3fd0525e46fce474              # double 0.25502736027153294
	.quad	0x3fd21100bf9a5a6c              # double 0.28228777610039546
	.quad	0x3fd6a1bd984f6056              # double 0.35362186311750088
	.quad	0x3fe29b3cf0938aa2              # double 0.58144995677533395
	.quad	0x3fc7940dc58152a8              # double 0.1842057432537747
	.quad	0x3fe715ab6b28144c              # double 0.72139521531119888
	.quad	0x3febef9e3f3cc4ad              # double 0.87300026274728781
	.quad	0x3feaff90e09d5e1a              # double 0.84369701261579455
	.quad	0x3fea23b44be56931              # double 0.81685843299354677
	.quad	0x3fec6c7334ef329e              # double 0.88823852862113362
	.quad	0x3fedbae9d71f5983              # double 0.92906658187966717
	.quad	0x3fe7b1a269d81ed0              # double 0.74043389008235216
	.quad	0x3fefbfb06e2c275c              # double 0.99214955823957096
	.quad	0x3fe0cd53c88f23a4              # double 0.52506436511713561
	.quad	0x3fe73033fb2f2f6b              # double 0.72463416156231852
	.quad	0x3fb9f3befbaf83e0              # double 0.10137551922481647
	.quad	0x3febbe31de6ed8b8              # double 0.86696713870948994
	.quad	0x3fe50f1b2b989cbe              # double 0.65809401049491334
	.quad	0x3fe76f80cb470149              # double 0.73236121847734481
	.quad	0x3fed582e5cd10dc1              # double 0.91701429489369712
	.quad	0x3fd3eb1df14869b0              # double 0.31122540056972081
	.quad	0x3fd9184050d6dd06              # double 0.39210517782653687
	.quad	0x3fc977b096ec91a8              # double 0.19896514291134548
	.quad	0x3fd3be5f3853e7a4              # double 0.30849438191182288
	.quad	0x3fd4bfdeddb75c5c              # double 0.32421085025766216
	.quad	0x3fd687e082b14562              # double 0.35204327357231169
	.quad	0x3fe4cfde16d3245f              # double 0.65037445505107516
	.quad	0x3fb79cd46e2c5ab8              # double 0.092236782930153249
	.quad	0x3fe9a03f692f3b98              # double 0.80081148666237123
	.quad	0x3feae85a03f4ac36              # double 0.84086323521240192
	.quad	0x3fefa769c7ac7673              # double 0.98918618201032726
	.quad	0x3fa5953eb6f82500              # double 0.042154273829575928
	.quad	0x3fdd1c723c4a256a              # double 0.45486122024211417
	.quad	0x3fb2066b131a98e8              # double 0.070410434879338291
	.quad	0x3fcec31851550b00              # double 0.24032882663058075
	.quad	0x3fe38e76522d258a              # double 0.61114040422505522
	.quad	0x3fdd071e1f1f553c              # double 0.45355942763611146
	.quad	0x3fe277641d312f94              # double 0.57707410527790381
	.quad	0x3f5d36a89d875400              # double 0.0017830511697998208
	.quad	0x3fa82a3b5ab22e10              # double 0.04719720346573919
	.quad	0x3fd726a6fa53f92e              # double 0.36173414655776781
	.quad	0x3fb21f6c5872c030              # double 0.070791980356035067
	.quad	0x3fe5b370c8881a44              # double 0.67815436521852535
	.quad	0x3fee49449c11f5d8              # double 0.94644384844257967
	.quad	0x3fdbeb3fd07d3c4a              # double 0.43623347625993303
	.quad	0x3fe50f585ee06a2f              # double 0.65812319307889833
	.quad	0x3fb06e4d186d1b48              # double 0.064183062041689998
	.quad	0x3fdc9b8374337428              # double 0.44699179027321856
	.quad	0x3fcd61d833818fbc              # double 0.22954847826906455
	.quad	0x3fe65db13a447c03              # double 0.69893704777121035
	.quad	0x3fd08c60070071da              # double 0.2585678165794697
	.quad	0x3fd408ab1d1881e2              # double 0.31302907792453827
	.quad	0x3fd0bfbb67011970              # double 0.26170239504826665
	.quad	0x3fb06dd2000823c8              # double 0.06417572499061841
	.quad	0x3fd164c3ddcee3ea              # double 0.27177521382287628
	.quad	0x3fb198f5f8a63168              # double 0.068740246968621244
	.quad	0x3fd667815e470d80              # double 0.35006746489326446
	.quad	0x3fd0bc739ee947de              # double 0.26150217550923383
	.quad	0x3fe77cfc68626e6e              # double 0.73400707614514515
	.quad	0x3fc2d6c4b3b42a90              # double 0.1471792104205929
	.quad	0x3fe8cf95473ef9ba              # double 0.77533973613008489
	.quad	0x3fe1fd7dcb07759f              # double 0.56219377187851538
	.quad	0x3fe2d74c0d216d37              # double 0.58878138126912105
	.quad	0x3fe8836357173dca              # double 0.76603858003539327
	.quad	0x3fd7df42124a39d2              # double 0.37300159250380915
	.quad	0x3f240aceac810000              # double 1.5290997385086769E-4
	.quad	0x3fdf746f6ccf3abe              # double 0.49148164392401472
	.quad	0x3fcfae3172efc624              # double 0.24750345337047108
	.quad	0x3feb7bc5e0c4ad20              # double 0.85885900402118764
	.quad	0x3fcd75c0dff30d80              # double 0.23015604910879617
	.quad	0x3fdd6a314a21e67c              # double 0.45960647811407518
	.quad	0x3fc42fc0fd1cc5b0              # double 0.1577073322201108
	.quad	0x3fcb58c4eeedbaf4              # double 0.2136465231555672
	.quad	0x3fd297ecd2ed7a74              # double 0.29052277182009978
	.quad	0x3fef89105bb591ad              # double 0.98548143302882851
	.quad	0x3fdcace330a11252              # double 0.44805221318191457
	.quad	0x3feb8f52da6af0d0              # double 0.861245562169211
	.quad	0x3fe3a5615c4705dc              # double 0.61393802664695896
	.quad	0x3fe8623715e404a6              # double 0.76198915744329976
	.quad	0x3fd7367ac79c9c9c              # double 0.36270017140709299
	.quad	0x3fefe901b2b39702              # double 0.99719319250718308
	.quad	0x3fc98197b67c0014              # double 0.1992673531567567
	.quad	0x3fefc98e7480b32f              # double 0.99335406069221743
	.quad	0x3fc2712426cf170c              # double 0.14407779593437231
	.quad	0x3fea6fe3e98378c9              # double 0.82615848167531525
	.quad	0x3fc157dbfe070d50              # double 0.13549375442208111
	.quad	0x3fd45273973dd97c              # double 0.31753244180381279
	.quad	0x3f7214b578c31180              # double 0.0044142807711903265
	.quad	0x3fdd92ddc568a5cc              # double 0.46208900716973456
	.quad	0x3feaf3220e882cb4              # double 0.84217932546871177
	.quad	0x3fd41803bf98420a              # double 0.31396573744226031
	.quad	0x3fe2491f882c4de8              # double 0.57142616840650096
	.quad	0x3fea91a471705ddb              # double 0.83027860790292196
	.quad	0x3fd0def78e6c910c              # double 0.26360882671930663
	.quad	0x3faa30aa2723c8f0              # double 0.051152531888776553
	.quad	0x3fba5094f5fb50d0              # double 0.10279208188450473
	.quad	0x3fcb28acd49e36bc              # double 0.21217880613078488
	.quad	0x3fd76d9e85312b4a              # double 0.36606562621152661
	.quad	0x3fe4a589bf8e3233              # double 0.64520728505301006
	.quad	0x3fb65e185a4f47f8              # double 0.087373277710213304
	.quad	0x3fe375b923ff2ee3              # double 0.60812050848604959
	.quad	0x3feaef2320e13f85              # double 0.84169155523157768
	.quad	0x3fac483b7c458b90              # double 0.055238589210396261
	.quad	0x3feaad1add7b4f89              # double 0.83363097437039457
	.quad	0x3fc8811a55e9bb54              # double 0.19143990702601832
	.quad	0x3fe949d5c5b94be0              # double 0.79026306741650031
	.quad	0x3fd0b5678988fda2              # double 0.26107204848445964
	.quad	0x3fd3f6c218c4d7de              # double 0.311935924709699
	.quad	0x3feec94993efefe6              # double 0.96207121747965796
	.quad	0x3fefa4a99fd0992d              # double 0.98885041440806775
	.quad	0x3fc9c97a8564c6c4              # double 0.20146113885271266
	.quad	0x3fd1b7136e2c059c              # double 0.27679906615238692
	.quad	0x3fed726a4a9dd4f6              # double 0.92021669934788863
	.quad	0x3fd3d6ae595608fa              # double 0.30997809147096655
	.quad	0x3fbf7ba96c935130              # double 0.12298067951934821
	.quad	0x3fe1468aeb36232d              # double 0.53986116351834357
	.quad	0x3fc5c751f7ac4bd0              # double 0.17014526933107144
	.quad	0x3fc4cb6118761934              # double 0.16245664305115215
	.quad	0x3fe42018676a91ef              # double 0.62891788671964644
	.quad	0x3fcd3320c0020f94              # double 0.22812280059235646
	.quad	0x3feea481bf0372b3              # double 0.95758139903371953
	.quad	0x3fec72838209dc89              # double 0.88897872350834561
	.quad	0x3feef47ac2941c18              # double 0.96734369281409993
	.quad	0x3fd7a8641570e9c6              # double 0.36965276807645997
	.quad	0x3fd766d6b6d3cf3c              # double 0.36565177778469482
	.quad	0x3fe8b8087033bf09              # double 0.77246496119002572
	.quad	0x3fe780d88bbca56a              # double 0.734478257106429
	.quad	0x3fe7154d08c9c526              # double 0.72135020939291361
	.quad	0x3fe22bfacba37fb9              # double 0.56786861203362726
	.quad	0x3fdf911175213254              # double 0.49322925985760446
	.quad	0x3fa39098854b2b60              # double 0.038212553282923833
	.quad	0x3fd0a7e5b142f8e6              # double 0.26024763403610363
	.quad	0x3fd81f55cdda0c82              # double 0.37691254713735856
	.quad	0x3fc1c03ba7a02840              # double 0.13867898640484277
	.quad	0x3fb737fd2df515b0              # double 0.090698074073847889
	.quad	0x3fe6a1f593d69166              # double 0.7072704207862841
	.quad	0x3f8d898c65abc580              # double 0.014422509052993915
	.quad	0x3fecdcd728f3c95f              # double 0.90195806501860065
	.quad	0x3fc10f1fdfd180b8              # double 0.13327406338340153
	.quad	0x3fc6b7508a454960              # double 0.17746931792732834
	.quad	0x3fe6c2d8710c506b              # double 0.71128484801967085
	.quad	0x3fe327fa894858aa              # double 0.59863020718582516
	.quad	0x3fec74175e6ffc71              # double 0.88917129940808881
	.quad	0x3fdb35ee75a0aa2a              # double 0.42516671645231219
	.quad	0x3fea7326604ad7c2              # double 0.82655638510799911
	.quad	0x3fdc06c5d56109dc              # double 0.43791337812231546
	.quad	0x3feb1927da7531db              # double 0.84682076137101647
	.quad	0x3fdfd18c1f75a5d4              # double 0.49716475555632411
	.quad	0x3fe12b291fc6be13              # double 0.5365186329490278
	.quad	0x3feae94698e81cdc              # double 0.8409760462244793
	.quad	0x3fa05ac2d32b7970              # double 0.031942451741758471
	.quad	0x3fa2320c2d0d3d90              # double 0.035538082599141707
	.quad	0x3fd1f7e85fb68a22              # double 0.28075608584382128
	.quad	0x3fef50167e724dc0              # double 0.97852635094243822
	.quad	0x3fe1bcba7acec5e2              # double 0.55428813920860542
	.quad	0x3fef5f2843538304              # double 0.98036587857868129
	.quad	0x3fc4182df489963c              # double 0.15698790016465292
	.quad	0x3fe1c71a2cefb7bd              # double 0.55555447365417587
	.quad	0x3fd5c6333ad92f56              # double 0.34022217509185759
	.quad	0x3fd924082fb30ad4              # double 0.3928242173971459
	.quad	0x3fe84cf3faf26710              # double 0.75939368260444162
	.quad	0x3fb0abc37adacb88              # double 0.06512090443975016
	.quad	0x3fbf76c7961fbe90              # double 0.1229061833871532
	.quad	0x3feb7f6fa25e6133              # double 0.85930616104727731
	.quad	0x3fc47d9456daf13c              # double 0.16008238068560299
	.quad	0x3f989affe91d1520              # double 0.024028776744008273
	.quad	0x3fe41eb75ae4aa87              # double 0.62874953987677962
	.quad	0x3fd5f1121dbd1d52              # double 0.34283879188702315
	.quad	0x3fd9fbcdd29e92d6              # double 0.40599389618209381
	.quad	0x3fe6ac24a0364659              # double 0.7085135583058203
	.quad	0x3fe91665cce695f6              # double 0.78398408908532136
	.quad	0x3fe9233b430ad64b              # double 0.78555071920590913
	.quad	0x3fdb4aa08f69a9ce              # double 0.42642988209868526
	.quad	0x3fcebd3d59b35cc0              # double 0.2401501358024003
	.quad	0x3fda2cb1d3d7a282              # double 0.40897794425703904
	.quad	0x3fdc5757523a017a              # double 0.44283087758960671
	.quad	0x3fe481f779f48867              # double 0.64086507624984967
	.quad	0x3fee85fbfe700741              # double 0.95385551161619031
	.quad	0x3fdafa1e5f816242              # double 0.42151603056621323
	.quad	0x3fe83d02c99f8801              # double 0.75744761828923413
	.quad	0x3fd5e00b72014b4c              # double 0.34179960377985164
	.quad	0x3fd19000841f9eca              # double 0.27441418554961372
	.quad	0x3fd5c753e6692d2e              # double 0.34029099942263741
	.quad	0x3fee411f385bd048              # double 0.9454494572405645
	.quad	0x3fe7af1112449f9d              # double 0.74012044494610374
	.quad	0x3fe9c2f87785ca07              # double 0.80505011886845146
	.quad	0x3fd070aa519afe5c              # double 0.25687654465943921
	.quad	0x3fd2401a6b4f0834              # double 0.28516254882208902
	.quad	0x3fd6d6976ecb8138              # double 0.35684762782877355
	.quad	0x3fe3a9fa884b598a              # double 0.61449934597003275
	.quad	0x3feba770cdc503e1              # double 0.86418953122494824
	.quad	0x3fd4bdc631ecd9fa              # double 0.3240828979063789
	.quad	0x3fbb73e57e7447e0              # double 0.1072371896482589
	.quad	0x3feb192d24310ec1              # double 0.84682328289678577
	.quad	0x3fe521bb7034ff57              # double 0.66036769786294769
	.quad	0x3fcca29dc293b5e4              # double 0.22371265412168306
	.quad	0x3fe12c6361c1b117              # double 0.5366684827145346
	.quad	0x3fc3d6bdb30f14cc              # double 0.15499087565527814
	.quad	0x3fe8ab77d691dce4              # double 0.77093116672668005
	.quad	0x3fe11c561a4d6022              # double 0.53470902573736034
	.quad	0x3fae74265672cf40              # double 0.059479902317802757
	.quad	0x3fea2bd79e91a715              # double 0.81785183878420986
	.quad	0x3fb7640197cfb418              # double 0.091369723857227192
	.quad	0x3feb6e99aa101122              # double 0.85725100722678271
	.quad	0x3fe693aa40de0af8              # double 0.70552551907925842
	.quad	0x3fdaec6e38202bcc              # double 0.42068057518980306
	.quad	0x3fc4e7aedb3d6f94              # double 0.16332040505482992
	.quad	0x3fd9bdef29518b32              # double 0.4022176650525352
	.quad	0x3fc3b437071dfe20              # double 0.15393722388761066
	.quad	0x3fcfe10a88dc41f0              # double 0.24905521090160176
	.quad	0x3fb1b53513304708              # double 0.069171254334175925
	.quad	0x3fe4516e7c53a641              # double 0.63494037897653055
	.quad	0x3fe05520122e5787              # double 0.51039126921635691
	.quad	0x3fed70ac92f3bd0e              # double 0.92000416471083368
	.quad	0x3fda19217c447ba8              # double 0.40778386245249942
	.quad	0x3f37a02932f2b800              # double 3.6049848399499762E-4
	.quad	0x3fe6caada88225c1              # double 0.71224100982470173
	.quad	0x3feb6f6f1a48cc33              # double 0.85735278257050707
	.quad	0x3fde848a79e127ba              # double 0.47683965589805732
	.quad	0x3fb80b21854a5a90              # double 0.093919844667065044
	.quad	0x3fcf81d768dc77a0              # double 0.24614994640517995
	.quad	0x3fefe622c4b73452              # double 0.99684275074981543
	.quad	0x3fdc1c344ac41226              # double 0.43922145177228555
	.quad	0x3fe60047f22adba1              # double 0.68753430651019098
	.quad	0x3fe079cde36b5b55              # double 0.51486868303150379
	.quad	0x3fde1b3f50245ac2              # double 0.47041304422729635
	.quad	0x3fd0b46c687132ac              # double 0.26101217460090242
	.quad	0x3fef1bd9b1df4a7d              # double 0.97214970341367712
	.quad	0x3fd7a2d24238adac              # double 0.36931282488759609
	.quad	0x3fe4c1c79e71b735              # double 0.64865475603230627
	.quad	0x3fb1ae83ffe58838              # double 0.069069147085912941
	.quad	0x3fe4d3d4ea48bddc              # double 0.65085836180326906
	.quad	0x3fdb9e465f98acce              # double 0.43153533301911018
	.quad	0x3fee951b67f88c61              # double 0.95570154482664915
	.quad	0x3fedeb7d909c92e7              # double 0.93499639744240148
	.quad	0x3fdf5d5ea236d0c8              # double 0.49007383195136045
	.quad	0x3fbce238d0d7bdd8              # double 0.11282687281322212
	.quad	0x3fe9c76a3c16e9b7              # double 0.80559264885169213
	.quad	0x3fdfd8822dd982d4              # double 0.49758963086609964
	.quad	0x3fe035a08d8fb335              # double 0.50654628418633385
	.quad	0x3fe665293dfd23fd              # double 0.69984876734918056
	.quad	0x3f84193e1c4e5080              # double 0.009813771475627897
	.quad	0x3fa70bbd5f7fa530              # double 0.045011442096276943
	.quad	0x3fe1d0573d2d7887              # double 0.55668222378496146
	.quad	0x3fd8ef059f7a7fde              # double 0.38958874296258539
	.quad	0x3fe1e0577a4209e6              # double 0.55863546255596641
	.quad	0x3fef4d1ff59adc4f              # double 0.97816465348922487
	.quad	0x3fee3ef2c5591c90              # double 0.94518412155675158
	.quad	0x3fd45e1b4fd35db0              # double 0.31824381633256404
	.quad	0x3fe903feb27a7962              # double 0.78173766001763689
	.quad	0x3fcc69d0e9fd9970              # double 0.22197925019572606
	.quad	0x3fe56c8a62c7bd24              # double 0.66949958127034792
	.quad	0x3fe7fd34bd572b91              # double 0.74965893726890631
	.quad	0x3fe777bad393b56d              # double 0.73336545299177447
	.quad	0x3fea55febe0eccac              # double 0.82299744721094247
	.quad	0x3fe3df2c9d4faf20              # double 0.62099295353752737
	.quad	0x3fe9ace247abe451              # double 0.8023539924462374
	.quad	0x3fc1ff0783a06634              # double 0.14059537818029499
	.quad	0x3fd172853ba1b3be              # double 0.27261477301982129
	.quad	0x3fe578c05f1a7074              # double 0.67099016737803518
	.quad	0x3f962308c3a513a0              # double 0.021618020001614391
	.quad	0x3fea2f2f1b4c5d04              # double 0.81825976688097101
	.quad	0x3fe2f9c524a39108              # double 0.59298951297799452
	.quad	0x3fd2c76140adb482              # double 0.29341918293250313
	.quad	0x3f76947cc7e23200              # double 0.0055127023935139796
	.quad	0x3fcaa0d36c63a2f4              # double 0.20803301613275205
	.quad	0x3fac70632b1f7df0              # double 0.055544947637596098
	.quad	0x3fe61ae33766d45a              # double 0.69078217335357839
	.quad	0x3fe500f2a2eb1631              # double 0.65636569805128009
	.quad	0x3fc9a2e30b49bd20              # double 0.20028341342138223
	.quad	0x3fda1659c31c37f2              # double 0.40761417440160053
	.quad	0x3fe00a3aa9db2fdb              # double 0.50124867606200085
	.quad	0x3fc5cbbd5eb87dbc              # double 0.17028014302284855
	.quad	0x3fef2d05e74d7321              # double 0.97424597908284138
	.quad	0x3fec11557128f1d8              # double 0.87711593724776105
	.quad	0x3feb622d20ff555d              # double 0.85573440975955928
	.quad	0x3fd4236a7761aaf8              # double 0.3146616140208347
	.quad	0x3fe51b0d65c4da89              # double 0.65955228688001555
	.quad	0x3fe0ce0c11f69fbd              # double 0.52515223988029158
	.quad	0x3fdc9c96a9c0e88e              # double 0.44705740525717708
	.quad	0x3fdbe6f9661b7194              # double 0.43597254725843837
	.quad	0x3fe9e1849ca325b6              # double 0.80877905457707899
	.quad	0x3fe21c28596ad2c0              # double 0.56593720878898779
	.quad	0x3fbb8b02fe5a1610              # double 0.10758990010989344
	.quad	0x3fe04c0dad3d92e2              # double 0.50928386531867553
	.quad	0x3fd5f62dd6948cd0              # double 0.34315057711701247
	.quad	0x3fab8889129b0760              # double 0.053776057740391847
	.quad	0x3fddfa75da988d8c              # double 0.46841188761956043
	.quad	0x3fc167cc5e72ad30              # double 0.13598017322269973
	.quad	0x3fe6e22e4991d223              # double 0.71510996216835954
	.quad	0x3fa5f024ff789640              # double 0.042847782311849603
	.quad	0x3fca2b7f155d22d0              # double 0.20445240538744835
	.quad	0x3fde5dd6b7bce2ea              # double 0.47447746222637355
	.quad	0x3fadca6bd95baba0              # double 0.058184976847619696
	.quad	0x3fe13960fe6c9b38              # double 0.53825425808177041
	.quad	0x3fea245a80db171e              # double 0.81693768660690913
	.quad	0x3fea32b69ebd3003              # double 0.81869059566224711
	.quad	0x3fcca1545aa9b350              # double 0.22367338587664642
	.quad	0x3fce4c21c24e9524              # double 0.23669836032528579
	.quad	0x3fe742659cb08144              # double 0.72685509303486429
	.quad	0x3fc2f785000574f0              # double 0.14817869664231109
	.quad	0x3fe05880e6f53071              # double 0.51080365284862073
	.quad	0x3fec2adeaf7814fe              # double 0.88023313781073376
	.quad	0x3fea27a72e1f4390              # double 0.81734045990207171
	.quad	0x3facdbe7b7b97440              # double 0.056365243127153963
	.quad	0x3fde8386b46eb8d8              # double 0.4767777215992175
	.quad	0x3fe1774edae5d5ca              # double 0.54581396821475292
	.quad	0x3fc8983bfa47ca90              # double 0.19214582176899286
	.quad	0x3fdb22609f87cee2              # double 0.42397323207045023
	.quad	0x3fa6255f7fe3c840              # double 0.043253883706612317
	.quad	0x3fe6103cdb48ddbf              # double 0.68948214367895122
	.quad	0x3fe6849b9f0ab56d              # double 0.70368748724801622
	.quad	0x3feac81f1b65e993              # double 0.83692889548483362
	.quad	0x3faee1d4e719a8b0              # double 0.060316708765485116
	.quad	0x3fbe1f28f6bf9300              # double 0.11766296409730259
	.quad	0x3feca1e2193af429              # double 0.89476113250532763
	.quad	0x3fd3c0499bb3b000              # double 0.3086112995649728
	.quad	0x3fd7cba9b7062fc6              # double 0.37180559991315609
	.quad	0x3fe86c8479e240a3              # double 0.76324676328114938
	.quad	0x3fd431c0a2214462              # double 0.31553665001871967
	.quad	0x3fe7ef024778e73f              # double 0.74792589148930932
	.quad	0x3fef07f4d86a856e              # double 0.9697212435604976
	.quad	0x3fd29e942f409494              # double 0.2909288846443101
	.quad	0x3fee136804c1b399              # double 0.93986893586189801
	.quad	0x3fef8a50e318e581              # double 0.985634273099251
	.quad	0x3fe62937aa8c8663              # double 0.69253142652833011
	.quad	0x3fe4f842db58e509              # double 0.65530531731852293
	.quad	0x3fe79336e641575b              # double 0.73672051402784733
	.quad	0x3fc392c98730fb10              # double 0.15291709042681889
	.quad	0x3fe7c085656d3ed8              # double 0.74225110826406659
	.quad	0x3fe8242b78633c22              # double 0.75441525948724952
	.quad	0x3fe5d01da91f4062              # double 0.68165476829200267
	.quad	0x3feaefd2ed2add74              # double 0.84177538224950732
	.quad	0x3fdd21885efc5326              # double 0.4551716735452821
	.quad	0x3fe60f0c81ec5b44              # double 0.68933701873434261
	.quad	0x3fd937d46f57a884              # double 0.39403258202822422
	.quad	0x3fc0e22c6b04e040              # double 0.13190226769961733
	.quad	0x3fe2feb8ce2316f5              # double 0.59359398137232111
	.quad	0x3fe8db0afface004              # double 0.7767386430414267
	.quad	0x3fa54af4c37e6580              # double 0.04158749472044132
	.quad	0x3fcd820f8583913c              # double 0.23053163546786404
	.quad	0x3feca5b8484a1eee              # double 0.89522947424936006
	.quad	0x3f7358b3645db580              # double 0.0047232635023254366
	.quad	0x3fdcf064d09cf884              # double 0.45217247364406199
	.quad	0x3fe624741ce2c48c              # double 0.69194989816436836
	.quad	0x3f92baafbdc541e0              # double 0.018290277440714209
	.quad	0x3fe918170a7c35bc              # double 0.78419067428483613
	.quad	0x3fee79d05a7639ac              # double 0.95236985843967181
	.quad	0x3fe52671af329883              # double 0.66094288080491059
	.quad	0x3fb0dd27eee99660              # double 0.065874572590098435
	.quad	0x3fbd4686549103a0              # double 0.11435737194643858
	.quad	0x3fe988195f2ff149              # double 0.797863660729072
	.quad	0x3fed12d5932d2248              # double 0.90854910607692663
	.quad	0x3fecddd5a5394f35              # double 0.90207941313062767
	.quad	0x3fd894cb3ed51f86              # double 0.3840816606138947
	.quad	0x3fe176ca43d91a7b              # double 0.54575074435781745
	.quad	0x3fea6f14f1debc6e              # double 0.82605979194876311
	.quad	0x3fc3e998333d6934              # double 0.15556623937556824
	.quad	0x3fe2dd13343a9389              # double 0.58948669625225236
	.quad	0x3fe32c00838228dc              # double 0.59912133870355033
	.quad	0x3febbc63e273e49c              # double 0.86674684742969843
	.quad	0x3fe06db0cb859234              # double 0.51338996649116675
	.quad	0x3feb05625093d2a9              # double 0.84440723169116894
	.quad	0x3fd60cdb87b2b522              # double 0.3445347619225051
	.quad	0x3fe54882ad8dcaa9              # double 0.66510137459984719
	.quad	0x3fb3070e3c461db8              # double 0.074326410022073186
	.quad	0x3feabcef849aa8e3              # double 0.83556342982526777
	.quad	0x3fe98874008499d0              # double 0.79790687657514958
	.quad	0x3fe14e270464412c              # double 0.54079008920419858
	.quad	0x3fef0fb5957221b3              # double 0.97066764057767895
	.quad	0x3fea2d561c2218c7              # double 0.81803422446025642
	.quad	0x3fe84f6e47f4d33f              # double 0.75969614080404557
	.quad	0x3fc59319bdfecb4c              # double 0.16855165269006489
	.quad	0x3fc76a0879aa363c              # double 0.18292337361019573
	.quad	0x3fb8dcf6113072d0              # double 0.097121600338549329
	.quad	0x3fe96bb37e9b507b              # double 0.79439711311216799
	.quad	0x3fe509e0c1865344              # double 0.65745580480379617
	.quad	0x3fc36da6f465347c              # double 0.15178381856313539
	.quad	0x3fdb9a4ec3dbb9de              # double 0.43129319311893066
	.quad	0x3fec8668d8d6fe6d              # double 0.8914074168350915
	.quad	0x3fe2bf56769a2daa              # double 0.5858566585970284
	.quad	0x3fe02ea57722d757              # double 0.50569413441437916
	.quad	0x3fc0a98af3263aac              # double 0.13017403481031431
	.quad	0x3fef0d54710e9d0f              # double 0.9703771789690182
	.quad	0x3fbe3e1ec8356808              # double 0.1181353796759198
	.quad	0x3fdcadc889a5c396              # double 0.44810689394130898
	.quad	0x3fe49f669d3e535e              # double 0.64445810996640396
	.quad	0x3febe92d1146b55c              # double 0.87221387266405825
	.quad	0x3fed7814e84fc541              # double 0.92090840695724563
	.quad	0x3fd45d616c3dec82              # double 0.3181994969415386
	.quad	0x3fc0ead7b8ec3910              # double 0.13216682938986724
	.quad	0x3fea78faa7441eb6              # double 0.82726795834692868
	.quad	0x3fc720d90175f9e4              # double 0.18068993159609115
	.quad	0x3fa53429abd80380              # double 0.041413595416094573
	.quad	0x3fceb09ed8a369cc              # double 0.23976502969783409
	.quad	0x3fc561c41283b4cc              # double 0.16704607872035238
	.quad	0x3fe8726d78b5ae96              # double 0.76396821571457241
	.quad	0x3fb0104632ee8ea0              # double 0.062748324808632905
	.quad	0x3fe9df7f696a2205              # double 0.80853243435655087
	.quad	0x3fea6658174360df              # double 0.82499317687600271
	.quad	0x3fe0dd6f556b3ff8              # double 0.5270306270922438
	.quad	0x3fe946d5ade06dbe              # double 0.78989681206024165
	.quad	0x3fddb2690b2119f4              # double 0.4640143021282761
	.quad	0x3fec434513ce5abc              # double 0.88321164959309994
	.quad	0x3fe133ca24dffbd3              # double 0.53757197572837823
	.quad	0x3fdabc8c92e924ea              # double 0.41775812479734376
	.quad	0x3fd66d045909d5d6              # double 0.35040386862905615
	.quad	0x3fde2b94977b4b60              # double 0.47140993874670833
	.quad	0x3fe79cd94e3cfe27              # double 0.73789658814343262
	.quad	0x3fed74e90acae19c              # double 0.92052127941046846
	.quad	0x3fdbc965f31a208c              # double 0.43416737308917486
	.quad	0x3fe035d34b4437da              # double 0.50657047939761957
	.quad	0x3feae6c6a8a129ef              # double 0.84067089972933029
	.quad	0x3fedefc6ff828866              # double 0.93551969436908844
	.quad	0x3fe89ad1e759f03f              # double 0.76889891801648236
	.quad	0x3fd78ad6929d5848              # double 0.36784900968394085
	.quad	0x3fec309ebacf6599              # double 0.88093506323200466
	.quad	0x3fd25c31d6be7798              # double 0.28687711688132245
	.quad	0x3fa7b03021328670              # double 0.046266082813656406
	.quad	0x3fe42b824d68487d              # double 0.63031115645050273
	.quad	0x3feaf5e0fb6c4537              # double 0.84251450639764058
	.quad	0x3fe117f134520a60              # double 0.53417263239709811
	.quad	0x3fe2cccb0943919d              # double 0.58749915894854932
	.quad	0x3fe061ecf7dd826d              # double 0.51195381556688135
	.quad	0x3fe462e73c701abb              # double 0.63707315258292085
	.quad	0x3fe8e7eb0fabc377              # double 0.77831032810909917
	.quad	0x3fdeeec21b52b4ec              # double 0.48332264583844053
	.quad	0x3fbe472384044260              # double 0.11827299092352339
	.quad	0x3feba129df43b6e3              # double 0.86342328649854172
	.quad	0x3fe00ab90454a734              # double 0.50130892606578081
	.quad	0x3feca4ef619e1b39              # double 0.89513367715776504
	.quad	0x3fb2fec9a4f361e8              # double 0.074200251361055458
	.quad	0x3fe21f899edc90c1              # double 0.56634980228093224
	.quad	0x3fc9b2ea35ce4528              # double 0.20077254893525631
	.quad	0x3fdb8a43455b596c              # double 0.43031389020088429
	.quad	0x3fec1cf785084661              # double 0.87853599532008897
	.quad	0x3fd9818c79e4e43e              # double 0.39853202728005843
	.quad	0x3fd81d27c2adbd60              # double 0.37677949916447595
	.quad	0x3fd12d6a18607ac0              # double 0.2683968771033669
	.quad	0x3fe3632a849a17bd              # double 0.60585523508847638
	.quad	0x3fed1652673b924c              # double 0.90897483980786253
	.quad	0x3fd55e188d3e9ce0              # double 0.33386815827766547
	.quad	0x3fda62f6f35909ae              # double 0.41229032291826229
	.quad	0x3fdfd5be1b6c3b7a              # double 0.49742081335073574
	.quad	0x3facd3bc5b3b5fc0              # double 0.056302915703497103
	.quad	0x3fb2cd949b4d6a88              # double 0.073449409404398591
	.quad	0x3fe838993da8190d              # double 0.75690900842963205
	.quad	0x3fbcaa8692953590              # double 0.11197701529200388
	.quad	0x3fce47f105a38224              # double 0.23657048011138315
	.quad	0x3fed07e4a46d2813              # double 0.90721351732759314
	.quad	0x3fc3366bd2b625c4              # double 0.15009830273292668
	.quad	0x3fd6c2d8a82bc982              # double 0.35564247534707516
	.quad	0x3feea57b589035f7              # double 0.95770041749500379
	.quad	0x3fe2554fc722c199              # double 0.57291401761726768
	.quad	0x3fd7da22c686b93a              # double 0.37268895518618061
	.quad	0x3fe4609d57434197              # double 0.63679377597331921
	.quad	0x3fc300802215f730              # double 0.14845277466150142
	.quad	0x3fd4fae1054f7e56              # double 0.32781243818860639
	.quad	0x3fe7d7976a4faf54              # double 0.74506731761855827
	.quad	0x3feac7cb93aa63e5              # double 0.83688906517920414
	.quad	0x3fe760b2f8becb52              # double 0.73055409033836782
	.quad	0x3fef4ef1d769e5f2              # double 0.97838680336934503
	.quad	0x3feaade714875932              # double 0.83372835168373727
	.quad	0x3fea6fb0d936fe78              # double 0.82613413262147528
	.quad	0x3fb5102d4c9e24f0              # double 0.082278090672975201
	.quad	0x3fe1146ba5d08579              # double 0.53374273667957006
	.quad	0x3fddc2ff81f33ec4              # double 0.46502673807570383
	.quad	0x3fda52a5dd3fc4e0              # double 0.41129442793233117
	.quad	0x3fbd922c0e6f1fb0              # double 0.11551165916819062
	.quad	0x3fe5aefcab324e84              # double 0.67761071621721713
	.quad	0x3feffa024b419a13              # double 0.99926867197501889
	.quad	0x3fbc6cbb57565c90              # double 0.11103411562213439
	.quad	0x3fe201b4b4ba326d              # double 0.56270823763186473
	.quad	0x3f6b12528cca8100              # double 0.0033046352676394664
	.quad	0x3fdb47819eb95376              # double 0.42623939991363302
	.quad	0x3fda4901fa275406              # double 0.41070603779854797
	.quad	0x3fe03224eb88635f              # double 0.50612112047665991
	.quad	0x3f9fe69ddb3771c0              # double 0.031153170113485507
	.quad	0x3fdd3cdd1a469b92              # double 0.45683982435223769
	.quad	0x3fd24851048ba83c              # double 0.28566384738826733
	.quad	0x3fdd47bfa989b7f6              # double 0.45750419193689085
	.quad	0x3fefe186316cf51c              # double 0.99627980855408138
	.quad	0x3fe436f1262f4dd0              # double 0.6317067857548242
	.quad	0x3f7794b9e784f300              # double 0.0057570707215830463
	.quad	0x3fe2b7edd05eb7d0              # double 0.58495226571334946
	.quad	0x3fc9501eaa39c060              # double 0.19775756179615467
	.quad	0x3fe0a44c2e22e420              # double 0.52005585680956656
	.quad	0x3fe954731bb77799              # double 0.7915587941495118
	.quad	0x3fd86feaae50ac38              # double 0.38183085463487343
	.quad	0x3fd6b821973c9228              # double 0.35498847741317485
	.quad	0x3faba7c3587e24b0              # double 0.054014305641496008
	.quad	0x3fb50817a93e40e0              # double 0.082154730624327765
	.quad	0x3fca22f865de9f1c              # double 0.2041922089967948
	.quad	0x3fd2370c2303d0bc              # double 0.28460982722686956
	.quad	0x3fb6518d0f515ac8              # double 0.087181869735427076
	.quad	0x3fd7ce1b9d31cf1a              # double 0.37195482588798401
	.quad	0x3fca45f9ac09d590              # double 0.20526047611535292
	.quad	0x3fd9c4e8da0b80c4              # double 0.40264340680552047
	.quad	0x3fe12cc321336e73              # double 0.53671413883735253
	.quad	0x3fee1504ac690e4f              # double 0.9400657050504807
	.quad	0x3fbe70bfa7e959a8              # double 0.11890790795710038
	.quad	0x3fedd113e7aad0d8              # double 0.93177218673238382
	.quad	0x3fec4f27ca602b77              # double 0.88466252829071734
	.quad	0x3fb5bc206decdaa0              # double 0.084901835286340432
	.quad	0x3fd22cfe0133dfba              # double 0.28399610631413064
	.quad	0x3fd74636d6c4d114              # double 0.36366053555981748
	.quad	0x3fea0ba935362c7b              # double 0.81392345803159516
	.quad	0x3fede4b697d770dc              # double 0.93416909843974904
	.quad	0x3fe61e02c932bb66              # double 0.69116343781011547
	.quad	0x3fc491ee2cfb8f34              # double 0.16070344158571859
	.quad	0x3fea4959446fd0c2              # double 0.82145369879301477
	.quad	0x3fdc956fd6ae174c              # double 0.44662090267990062
	.quad	0x3fef45b28aed5a5c              # double 0.97725798734866087
	.quad	0x3fefe225f2410535              # double 0.99635598483306486
	.quad	0x3f8aec1fded39040              # double 0.013145684230444599
	.quad	0x3fd58ecc3e8c4af0              # double 0.3368406878300183
	.quad	0x3fe12c61aa72bf8e              # double 0.53666766443892455
	.quad	0x3fe79e4484966281              # double 0.7380697812651108
	.quad	0x3feb5ab9bd8dd21d              # double 0.85482489607108259
	.quad	0x3fcaec7ed7a6c5ec              # double 0.21034226922851873
	.quad	0x3fd75ad1b36f0a30              # double 0.3649181606562335
	.quad	0x3fd111ef1f779756              # double 0.26671960900272518
	.quad	0x3fd10a667e3944f0              # double 0.26625978781255721
	.quad	0x3fe8bf39a281f4e0              # double 0.77334291209959005
	.quad	0x3fdb5f5287595098              # double 0.42769301622070932
	.quad	0x3fe2b98bb7c3077a              # double 0.58514963046057678
	.quad	0x3fec224be37c6859              # double 0.87918657713749859
	.quad	0x3fe67d30d9f14b15              # double 0.70278208319573088
	.quad	0x3fd4cee8f99a0f1c              # double 0.3251287877576361
	.quad	0x3fd96b9533d20ca0              # double 0.3971913343486424
	.quad	0x3fcdd404d7e9d198              # double 0.23303280394214876
	.quad	0x3fde24d2de19b278              # double 0.47099754037370856
	.quad	0x3fd5cf496d759fc6              # double 0.34077678384209908
	.quad	0x3feb6a029333b0b8              # double 0.85669068098424983
	.quad	0x3fe7742cae7b74d0              # double 0.7329314620834797
	.quad	0x3fd7c6f5c741b1ea              # double 0.37151855906156916
	.quad	0x3fdcb365ab2cd576              # double 0.44844953266450405
	.quad	0x3fe6a594c0120551              # double 0.70771253122090105
	.quad	0x3fe19035b90e51b0              # double 0.54885374206292248
	.quad	0x3fe299b5f6a2493d              # double 0.58126352472962817
	.quad	0x3fab6095a8611690              # double 0.053471257022960406
	.quad	0x3fedc578126662a3              # double 0.93035510629404816
	.quad	0x3fe1d6e9923736c6              # double 0.55748442228078754
	.quad	0x3fefd8e2ff75bb27              # double 0.99522542852887319
	.quad	0x3fdd58173462a34c              # double 0.45850162616493573
	.quad	0x3fe5855dc6d8e8bc              # double 0.67253006780017399
	.quad	0x3fed1a6f4408c3bd              # double 0.90947688377320157
	.quad	0x3fe09c1225e1c2fc              # double 0.51905162237935043
	.quad	0x3fedf32aee459835              # double 0.93593355691405711
	.quad	0x3fc874334206e520              # double 0.19104614948245402
	.quad	0x3fd234911c83262c              # double 0.28445842537311949
	.quad	0x3fd5536abb01cade              # double 0.33321636450197711
	.quad	0x3fda3b8733d6e51e              # double 0.40988330900616343
	.quad	0x3febe0727fcd692e              # double 0.87114834748652981
	.quad	0x3fea339289730c76              # double 0.81879546018207239
	.quad	0x3fefdc1ff434af84              # double 0.99562070557065895
	.quad	0x3fbf26e8903d4bd0              # double 0.12168744584532409
	.quad	0x3fdee9b52a838622              # double 0.48301438476309688
	.quad	0x3fedfde366e761ff              # double 0.93724222277074876
	.quad	0x3febf715af2daabf              # double 0.87391170706299437
	.quad	0x3fea9794b964c4c1              # double 0.83100353440945451
	.quad	0x3fd7ab8c520103b0              # double 0.36984546669196572
	.quad	0x3fea719c1c2bfdc6              # double 0.82636838438332272
	.quad	0x3fec8f9f0ab7d8d3              # double 0.89253189175976855
	.quad	0x3fe50dec9da1d16c              # double 0.65794974124450567
	.quad	0x3fe629d3b68a11fc              # double 0.69260583545889132
	.quad	0x3fd86a1977bcbdb8              # double 0.381475798541
	.quad	0x3fcc6dd423788884              # double 0.22210170490240355
	.quad	0x3fd6029ed2f05d74              # double 0.34390993690018168
	.quad	0x3fd56cfcb508ca36              # double 0.33477704695829702
	.quad	0x3fe48d1467801527              # double 0.64222164359003819
	.quad	0x3fe50a2189ea2d29              # double 0.65748669563746376
	.quad	0x3fe2fefecfaaf7c2              # double 0.59362736282468398
	.quad	0x3fd65873e4243bdc              # double 0.34914872435996158
	.quad	0x3fdfe6b90515881c              # double 0.49845719810957845
	.quad	0x3fd22369ed35d730              # double 0.28341148533887672
	.quad	0x3fef03d1429e6c2b              # double 0.96921599399081992
	.quad	0x3fca0cdb19c48128              # double 0.20351732977088344
	.quad	0x3fe203e3870fe914              # double 0.5629747045452711
	.quad	0x3faf3f884d0c2840              # double 0.061031588940821724
	.quad	0x3feb9aff3949d666              # double 0.86267052830835378
	.quad	0x3fde343269d15972              # double 0.47193584760443408
	.quad	0x3fee9d2afcd3e6f7              # double 0.95668553715151361
	.quad	0x3fe5305c2afe3eb9              # double 0.66215332409952687
	.quad	0x3feb2aa6d38c2c17              # double 0.84895650213127538
	.quad	0x3feeb18e29533244              # double 0.95917423316274907
	.quad	0x3fe8d57349e3d29d              # double 0.77605595046641762
	.quad	0x3feacc3c00cc0eda              # double 0.83743095546420965
	.quad	0x3fce16751dd4d6f0              # double 0.23506034809695775
	.quad	0x3fac9a2209395290              # double 0.055863441110578838
	.quad	0x3fd15dc08bc20d96              # double 0.27134717605823633
	.quad	0x3fb35e392213b560              # double 0.075656481570793854
	.quad	0x3fe65eaf94279c5c              # double 0.69905833183737398
	.quad	0x3fce98fbaae0e438              # double 0.23904367297817131
	.quad	0x3fd1492c1b8a4c80              # double 0.27009108247256819
	.quad	0x3fca3b896dff5e88              # double 0.20494192000363776
	.quad	0x3fc166d7e9b0fe44              # double 0.13595103178703216
	.quad	0x3fcf89a66ee382e0              # double 0.24638824858177255
	.quad	0x3fe7434c399e14f2              # double 0.72696505788249355
	.quad	0x3fea5f4c89f1f919              # double 0.82413317625449445
	.quad	0x3fe73cc8332f0e9f              # double 0.7261696815189288
	.quad	0x3fe9eea5c4bbda10              # double 0.81038177895135455
	.quad	0x3fe6a412e44a91c0              # double 0.70752853954450501
	.quad	0x3feb3f88708221a0              # double 0.8515054891041025
	.quad	0x3fe2285248e6a11d              # double 0.56742204893547277
	.quad	0x3fb8993c0c93dc40              # double 0.096088173933694954
	.quad	0x3fedae6d1530da80              # double 0.92754224909624838
	.quad	0x3fe09587f15846b4              # double 0.51825329911863216
	.quad	0x3fe514086f14008a              # double 0.65869542784641166
	.quad	0x3fe8b1623fafb72b              # double 0.77165329397914684
	.quad	0x3fe84e2a84216344              # double 0.75954175764773212
	.quad	0x3fe025648a661847              # double 0.50456454306618859
	.quad	0x3fc5b7335e674a70              # double 0.16965334043068792
	.quad	0x3fe0874604ce9dbb              # double 0.51651287974248505
	.quad	0x3fc6ecce5dacf8d4              # double 0.17910174917228139
	.quad	0x3fdaf4fc69037e34              # double 0.42120275740851132
	.quad	0x3fc73e970237a3e4              # double 0.18159759147900367
	.quad	0x3fcf872619bfeeec              # double 0.24631191499053473
	.quad	0x3feb67b055a7aa0c              # double 0.85640732507209937
	.quad	0x3fd7645ba3a5214a              # double 0.36550036412201747
	.quad	0x3fee5b5f89cf4127              # double 0.94865395465788971
	.quad	0x3fd42b6942c3a824              # double 0.31514960784864088
	.quad	0x3fc078f5ed064c70              # double 0.12869142602412209
	.quad	0x3fa7900724973a20              # double 0.0460207206884784
	.quad	0x3fe305fdb032ea67              # double 0.59448131955953165
	.quad	0x3fdd5b3d9a97e2a8              # double 0.45869388672830747
	.quad	0x3feab2b56fd9b762              # double 0.83431503148834119
	.quad	0x3fa0db3e38dea710              # double 0.032922691766840484
	.quad	0x3fcfc60d0d6090d4              # double 0.24823153641876294
	.quad	0x3f90911ab321d7a0              # double 0.016178528960572813
	.quad	0x3fe9c0003451a2b3              # double 0.80468759745152452
	.quad	0x3fc5dbce1a70b948              # double 0.17077041903525925
	.quad	0x3fe3604fb0af6bcd              # double 0.60550674923740078
	.quad	0x3fd00ea4aa08a5c0              # double 0.25089375119076962
	.quad	0x3fef1e9d67862429              # double 0.97248716563729431
	.quad	0x3fa0e296883af750              # double 0.032978729371719084
	.quad	0x3fd3c3132e8f7c86              # double 0.30878142878459192
	.quad	0x3f8a19a63dd1fc00              # double 0.012744234811405519
	.quad	0x3fe4085cde33facc              # double 0.62602084540397973
	.quad	0x3fc65114bd0195f0              # double 0.17434939602678368
	.quad	0x3fc764bc339ceab4              # double 0.18276169319309121
	.quad	0x3fe26583e86a0591              # double 0.57489200013530894
	.quad	0x3fe061f63319c7c8              # double 0.51195821743589764
	.quad	0x3fd9fab39710459c              # double 0.40592660667706482
	.quad	0x3fceb2e3c45426a4              # double 0.23983428083766001
	.quad	0x3fbc2210eef3bfb0              # double 0.10989480813782282
	.quad	0x3fd18e094e387234              # double 0.27429421080322247
	.quad	0x3feb6a696de8a953              # double 0.85673972574776724
	.quad	0x3fbe34049accf210              # double 0.11798123149214512
	.quad	0x3fea87f48ab5b95e              # double 0.82909609882134894
	.quad	0x3fe39fc1bbc044fa              # double 0.6132515589726204
	.quad	0x3fdf913c477b5760              # double 0.49323946934361196
	.quad	0x3fed254c808fcbba              # double 0.91080308065135474
	.quad	0x3fe90dddb19c43b6              # double 0.78294262589962815
	.quad	0x3fda5ac0f3be2362              # double 0.41178916743279192
	.quad	0x3feb9a45d6ede96c              # double 0.86258213022601415
	.quad	0x3fcec5b3bd7c1894              # double 0.24040838958916722
	.quad	0x3fd0877139bd470a              # double 0.25826674116716275
	.quad	0x3feec6e2dd34ae17              # double 0.96177809910062961
	.quad	0x3feb773bd7b49051              # double 0.85830490236231516
	.quad	0x3fd913169ab9eda8              # double 0.3917900572775701
	.quad	0x3fd1e73fdd6a4cb4              # double 0.27973934767323816
	.quad	0x3feef4be786472f3              # double 0.96737597955833931
	.quad	0x3fe3f70db5b8542b              # double 0.62390790455049705
	.quad	0x3fdd242514eb2030              # double 0.45533110659426068
	.quad	0x3fc320a674c5eb68              # double 0.14943390561878833
	.quad	0x3fca595b2a2a25c0              # double 0.20585193213291397
	.quad	0x3fdea1136a20c446              # double 0.47858128894865037
	.quad	0x3fedb315da0eacf1              # double 0.92811100568124349
	.quad	0x3fa5023d8d6c9320              # double 0.041032718194662587
	.quad	0x3fd6dbad06cc4942              # double 0.35715795196405875
	.quad	0x3fe09d5261b1690d              # double 0.51920432167688235
	.quad	0x3fc17af87d11e5d8              # double 0.13656526667527547
	.quad	0x3fca37236e3013a0              # double 0.20480769043220182
	.quad	0x3fd1bf7a9abdd2d2              # double 0.27731194602465081
	.quad	0x3fc623c69dd42504              # double 0.17296679216841693
	.quad	0x3fa421f89372a690              # double 0.039321678160672779
	.quad	0x3fd7d570f2ae42dc              # double 0.37240241717613087
	.quad	0x3fe37484499e6c15              # double 0.60797323588065189
	.quad	0x3fd786aed2d1e8d8              # double 0.36759539211165082
	.quad	0x3fef5b43e7f5ca35              # double 0.97989077858648576
	.quad	0x3fe00c22ab26b311              # double 0.50148137500727519
	.quad	0x3fe57d1a4885b998              # double 0.67152132191204128
	.quad	0x3fdac73e505867cc              # double 0.41841085287307744
	.quad	0x3fe820123d10e5ab              # double 0.75391494681314464
	.quad	0x3fca64a92a973590              # double 0.20619692401525613
	.quad	0x3f98efd0c276b220              # double 0.024352323407287213
	.quad	0x3fec3fa1272ee2a8              # double 0.88276727345426753
	.quad	0x3fede3a116be9be2              # double 0.93403677408502639
	.quad	0x3feed2928d1c5846              # double 0.96320464668929939
	.quad	0x3fd60d8cf4db6d3c              # double 0.3445770636733021
	.quad	0x3fe826f8d9b3d6b5              # double 0.75475733299273051
	.quad	0x3fc2114c25fc1f90              # double 0.14115287642220808
	.quad	0x3fe6aec5dc557ff0              # double 0.70883458169919145
	.quad	0x3fd6fc5d64d70054              # double 0.35915312621728401
	.quad	0x3fdb4b37aa8b083a              # double 0.42646590857123423
	.quad	0x3fcc39f5b73e9988              # double 0.22051879355894877
	.quad	0x3f92d70f0e069620              # double 0.018398509245932115
	.quad	0x3fb9f84869df2a30              # double 0.10144474587210861
	.quad	0x3fe0a9ea28a2394b              # double 0.520741538393659
	.quad	0x3febd5feb5bd223e              # double 0.86987243171558482
	.quad	0x3fe9fb22a447dd4e              # double 0.81190616689756623
	.quad	0x3fe23e90b8bbb1a5              # double 0.57013736801814174
	.quad	0x3fd20fc501c0e402              # double 0.2822124974368877
	.quad	0x3fe24c211881635d              # double 0.57179312502112689
	.quad	0x3feb92c07c4ac801              # double 0.86166404987147882
	.quad	0x3fe6d194e0591ba3              # double 0.7130836850927732
	.quad	0x3fe10ca0b64da914              # double 0.53279147726178389
	.quad	0x3fd62e2877691040              # double 0.34656726514026914
	.quad	0x3fd25bf756d33b42              # double 0.28686316946998514
	.quad	0x3fa61dacc08cc820              # double 0.043195150856618847
	.quad	0x3fb6a79854666fd0              # double 0.088494797330383123
	.quad	0x3fe53e614325d941              # double 0.66386473765195586
	.quad	0x3fea80ad0eb61774              # double 0.82820752023029209
	.quad	0x3fe026cd4cfae46f              # double 0.50473656687894486
	.quad	0x3fb23b668796a588              # double 0.071218879797603774
	.quad	0x3fbd23bff54dea78              # double 0.11382674921871139
	.quad	0x3fe67cfa85954871              # double 0.70275617685753222
	.quad	0x3fe18e79f2e4342e              # double 0.54864213409167006
	.quad	0x3fc4a71712f2babc              # double 0.1613491861839601
	.quad	0x3fef9b909d05113b              # double 0.98773985546043918
	.quad	0x3fea7d27b78e091f              # double 0.82777772760917745
	.quad	0x3fee44f1dc33a94b              # double 0.94591610916294522
	.quad	0x3fe147e4e21e32c7              # double 0.54002613223709595
	.quad	0x3fea22ebe7676727              # double 0.81676287838056261
	.quad	0x3fd44cdffb634ee6              # double 0.31719207334138699
	.quad	0x3fc265354fa020c4              # double 0.14371363056148401
	.quad	0x3fbb4b6b00724d18              # double 0.10661953698063475
	.quad	0x3fe2430668a40ba9              # double 0.57068176686913319
	.quad	0x3fdba3dcdac186bc              # double 0.43187638628851821
	.quad	0x3fc27e1918c2984c              # double 0.14447320660582574
	.quad	0x3fe900b0c80e8750              # double 0.78133429597458282
	.quad	0x3fde8b55e72ac78a              # double 0.4772543675891191
	.quad	0x3fd716c06796c31e              # double 0.36076364627938229
	.quad	0x3fefd5654958d6a8              # double 0.99479927373495957
	.quad	0x3fe55a08ceadf7f2              # double 0.66724052779295406
	.quad	0x3fb77b2e08b7b988              # double 0.091723324898088987
	.quad	0x3fe0c19dcfcc7de7              # double 0.52363482080175749
	.quad	0x3fe9edb1c97542ec              # double 0.81026543948436602
	.quad	0x3fe3d6be6940c97f              # double 0.61996384198418741
	.quad	0x3fb3593f67f6f3c8              # double 0.075580561525341428
	.quad	0x3fdc625a4894152a              # double 0.44350297057856614
	.quad	0x3fe7d239aa559ec1              # double 0.7444122626156614
	.quad	0x3fe4edc390ba2fa0              # double 0.6540239168839328
	.quad	0x3fdeb1376f32ba5e              # double 0.47956643923945375
	.quad	0x3fd024c7c5d1d7d6              # double 0.25224489515619319
	.quad	0x3fe8be66e675eada              # double 0.77324242603148297
	.quad	0x3fefe9cd6e3da77a              # double 0.99729033976949144
	.quad	0x3febcaf13939d9f0              # double 0.8685232274718242
	.quad	0x3fed584977218712              # double 0.91702721851126712
	.quad	0x3fc2b13418cffb60              # double 0.14603282176536947
	.quad	0x3fe2e9990511ac6e              # double 0.59101534833952285
	.quad	0x3fec733ab4907da6              # double 0.88906607882011168
	.quad	0x3fbfee32271a3a18              # double 0.12472833113336212
	.quad	0x3fd843128d7c67d4              # double 0.37909377877224171
	.quad	0x3fe963237532bb47              # double 0.79335186853664019
	.quad	0x3fdf82d097cde04c              # double 0.492359302755635
	.quad	0x3fc28f791a090d94              # double 0.1450034501195715
	.quad	0x3fe31d411f61c775              # double 0.59732109193121963
	.quad	0x3feea3100e82720f              # double 0.95740511735817957
	.quad	0x3fd1ed64607e9ce4              # double 0.2801142637567422
	.quad	0x3fd6e5617f85fd68              # double 0.35775029614884213
	.quad	0x3fe247f068a8a8e7              # double 0.57128162804772564
	.quad	0x3fdb415ab9b9e308              # double 0.42586391579929783
	.quad	0x3fd81aed0263e822              # double 0.37664342149185093
	.quad	0x3fea2c7b06c87b73              # double 0.81792975735503004
	.quad	0x3fa39dc090f52d90              # double 0.038312928862605067
	.quad	0x3fe9336de8f3785d              # double 0.78752799509289739
	.quad	0x3fcf1d311c5312c8              # double 0.2430783642104386
	.quad	0x3fdd806f0a02bed0              # double 0.46096397378549359
	.quad	0x3fe5df83ef5716c1              # double 0.68353459116107029
	.quad	0x3fed579de7e41163              # double 0.91694541255177986
	.quad	0x3fc0aec603a7b170              # double 0.13033366373509692
	.quad	0x3fe029f5f8896655              # double 0.50512217085197142
	.quad	0x3febef710bcc48ac              # double 0.8729787092618344
	.quad	0x3fece506dcc1fbdf              # double 0.90295737377880048
	.quad	0x3fe3501ef4808a70              # double 0.60353038553541971
	.quad	0x3fed4a9a7fbb205b              # double 0.91535687396482091
	.quad	0x3fe4d750d17722a2              # double 0.65128365431981572
	.quad	0x3fcc5b42ae3271ac              # double 0.2215350485393065
	.quad	0x3fe857363a492994              # double 0.76064597495978825
	.quad	0x3fd8ed136e0ec05a              # double 0.38946996448340132
	.quad	0x3fe251f4a9a07ae5              # double 0.57250435953377787
	.quad	0x3fcc828329da7f88              # double 0.22273292106273979
	.quad	0x3fc580d82c3d6e30              # double 0.16799451980738089
	.quad	0x3fd5b7f766697ac2              # double 0.33935341836142296
	.quad	0x3fc8c568bc90cefc              # double 0.19352444846446548
	.quad	0x3fe26d7d7b90f425              # double 0.57586549886730565
	.quad	0x3feaba2e14938df3              # double 0.83522705096078054
	.quad	0x3fef2099fc4fd86e              # double 0.97272967605273464
	.quad	0x3fed44677a9b650a              # double 0.91460012385064826
	.quad	0x3fe0902ff3f4e38d              # double 0.51760099075100785
	.quad	0x3fe63b88ab5d357f              # double 0.69476731748152065
	.quad	0x3feb537875c09d24              # double 0.8539392757274169
	.quad	0x3fe3979f6f058412              # double 0.61225864108939931
	.quad	0x3fc325acb4b99338              # double 0.14958723854501854
	.quad	0x3feecc4179f3ad24              # double 0.96243356531832491
	.quad	0x3fee4ee2b1b62d8b              # double 0.94712958058646401
	.quad	0x3fdd3e49e55f0b4a              # double 0.45692679786241241
	.quad	0x3f89696818ebcf80              # double 0.012408078442127879
	.quad	0x3fc3b6138bc1e9f0              # double 0.15399402927489758
	.quad	0x3fe022886be9e726              # double 0.50421544148341435
	.quad	0x3fc2c9b749bba6e0              # double 0.1467808828377235
	.quad	0x3fe327cbae2a0177              # double 0.59860786453650305
	.quad	0x3fe2a3d048b9b305              # double 0.58249677852799719
	.quad	0x3fde1ab9f740235a              # double 0.47038125176964274
	.quad	0x3fe5a9f209210ad5              # double 0.67699529440900597
	.quad	0x3fd3810e8090b504              # double 0.30475199275208831
	.quad	0x3fe0d51badefd77b              # double 0.52601417514846049
	.quad	0x3fe7b6453dcb2515              # double 0.74099981373834345
	.quad	0x3fce270a22f7d41c              # double 0.23556639392305179
	.quad	0x3fedd314c5d1b7c8              # double 0.93201674114765698
	.quad	0x3fcf8f7e05188c74              # double 0.24656653641531856
	.quad	0x3fc9b6453d821b74              # double 0.20087495330173122
	.quad	0x3fe8f1f51cbc3dfe              # double 0.7795358239399659
	.quad	0x3f80ae8e538d9800              # double 0.0081454390762694118
	.quad	0x3fdb93a4d070f5b6              # double 0.43088646274176357
	.quad	0x3fe70fcaef00f3ad              # double 0.72067782097257338
	.quad	0x3fcbb59863cbd750              # double 0.2164793479238889
	.quad	0x3fe66be780ffde05              # double 0.70067191310130339
	.quad	0x3fdca4ad6ba45920              # double 0.44755111228859512
	.quad	0x3fcbd30606c02dec              # double 0.21737742738365229
	.quad	0x3faa8fdcfab4e810              # double 0.051878839114991249
	.quad	0x3fc72e9571f8dc30              # double 0.18110912385029243
	.quad	0x3fefabe3c86b93cb              # double 0.98973263878416994
	.quad	0x3fee79ee5074b639              # double 0.95238414491695444
	.quad	0x3fe72982c67f66c6              # double 0.72381724137377357
	.quad	0x3fe2686af81219b6              # double 0.57524631930646453
	.quad	0x3fc93f7d70247d20              # double 0.19725006080350571
	.quad	0x3fe7f8182e48ccc4              # double 0.74903496780316247
	.quad	0x3fe02a3553ec1e29              # double 0.50515238181191535
	.quad	0x3fed34daf250ac13              # double 0.91270205809758165
	.quad	0x3fe305819feb2a45              # double 0.59442216142753834
	.quad	0x3fa4688dcfd66e50              # double 0.039860183354190171
	.quad	0x3fed89366a2bb0f1              # double 0.92299957977732394
	.quad	0x3fe3a54083ae5551              # double 0.61392236441558101
	.quad	0x3fe15882d2468c35              # double 0.5420545679993497
	.quad	0x3fecf50e80451c34              # double 0.9049141412041366
	.quad	0x3fa963435aca9670              # double 0.049585442383698886
	.quad	0x3fd6fee94ef1e9b8              # double 0.35930855473966572
	.quad	0x3fd1f4614073d120              # double 0.28054076475315703
	.quad	0x3f4bac021854d800              # double 8.4447958275890578E-4
	.quad	0x3fb10467ca338ed0              # double 0.066473471513343485
	.quad	0x3fbe0484d1ac5308              # double 0.11725645178769295
	.quad	0x3fd96241ad8de5c2              # double 0.39662210415516708
	.quad	0x3fe2fbb6f11f7a70              # double 0.5932268819268085
	.quad	0x3fd2408dec360990              # double 0.28519008700836768
	.quad	0x3fc6850716d253b0              # double 0.17593468298278259
	.quad	0x3fd9bf926cebc3d2              # double 0.40231762539684468
	.quad	0x3fed7d5d77da8c64              # double 0.92155335816313455
	.quad	0x3fbc9f2cf65d5ac8              # double 0.11180382742655148
	.quad	0x3fc424ec56ed6eb4              # double 0.15737680668359177
	.quad	0x3fc684331a880930              # double 0.1759094123409084
	.quad	0x3fe11580c4a237ad              # double 0.53387487797748678
	.quad	0x3fe60808bd7d839a              # double 0.68848073015043387
	.quad	0x3fd9f9f3ea6e5206              # double 0.40588090795179743
	.quad	0x3fd08fa849f8272c              # double 0.25876815055436242
	.quad	0x3fd7fc027863422e              # double 0.37475644833196753
	.quad	0x3fcec547a9e96554              # double 0.24039550587148517
	.quad	0x3fe85e8515f5723b              # double 0.76153806961844539
	.quad	0x3fc725e373f09674              # double 0.18084376488802756
	.quad	0x3fe370bee2dbca30              # double 0.60751289661704355
	.quad	0x3fe0f0f5e5b4abe5              # double 0.52941412796405685
	.quad	0x3feae8a65e6fa1e5              # double 0.84089964336913836
	.quad	0x3fcc1832474612ec              # double 0.21948841552889264
	.quad	0x3fe450922e00ce47              # double 0.63483532891263728
	.quad	0x3fc8a98e7e3ba494              # double 0.19267445720405318
	.quad	0x3fe5b6030369f58e              # double 0.67846823374536469
	.quad	0x3f748072d8dac400              # double 0.0050053106512431
	.quad	0x3fb07c663679e408              # double 0.064398182201230836
	.quad	0x3fd41e5a8aeeec22              # double 0.31435264175132904
	.quad	0x3fe921061251faad              # double 0.78528121545953911
	.quad	0x3fe77c0bf323aa04              # double 0.73389241684100215
	.quad	0x3fd6f422a6364156              # double 0.35865083915361617
	.quad	0x3fe375f22a131a9d              # double 0.60814769952488101
	.quad	0x3fe70d01927fc8fe              # double 0.72033766377560915
	.quad	0x3fce0a3c5acbc8e4              # double 0.23468737061882117
	.quad	0x3fe0c0e5ef146cfe              # double 0.52354714103003608
	.quad	0x3fe524b82f91d33a              # double 0.66073235789244866
	.quad	0x3fd995459aa82da8              # double 0.39973583319871375
	.quad	0x3fe8cdc5df2f5b41              # double 0.77511876669709789
	.quad	0x3fd8cc659fd948da              # double 0.38747540102225531
	.quad	0x3fe5f1a4543bcbc3              # double 0.6857473035037106
	.quad	0x3fe10414404a3ae2              # double 0.53174793774254803
	.quad	0x3fcadaa487d1f774              # double 0.20979744560093716
	.quad	0x3fde3a7e75d8fd52              # double 0.47232018955761135
	.quad	0x3fe7bfe6f56d341d              # double 0.74217555937650881
	.quad	0x3fd433e1eb6e8fde              # double 0.31566665641207503
	.quad	0x3fd3d7b520b2bdf6              # double 0.31004074280914951
	.quad	0x3fd4cae51904bcea              # double 0.32488372271741517
	.quad	0x3fc8bb69d83427b8              # double 0.19321940476248556
	.quad	0x3fe88c33614d2917              # double 0.76711434368306441
	.quad	0x3fe83b2102cb5ab0              # double 0.75721788926860789
	.quad	0x3fdaf6ec5491ef82              # double 0.42132099398417477
	.quad	0x3fd3cbecc9f28510              # double 0.30932159158153727
	.quad	0x3fea82afd4cc70f1              # double 0.82845298349596252
	.quad	0x3fc9042c02d4ef80              # double 0.19543981683989031
	.quad	0x3febc64e73ef0cb2              # double 0.8679573311168467
	.quad	0x3fddc24de45f3308              # double 0.46498439123097102
	.quad	0x3fea0316ce4e930d              # double 0.81287708563158534
	.quad	0x3feaa7559d58e5dd              # double 0.83292656642805307
	.quad	0x3fe309f9f636de4b              # double 0.59496782387481895
	.quad	0x3fd91296f4b20498              # double 0.39175962348969895
	.quad	0x3fe9288ccdd44653              # double 0.78619995308890578
	.quad	0x3feb9654de15ee8c              # double 0.86210101486308721
	.quad	0x3fdd6f350ff91256              # double 0.45991255340439829
	.quad	0x3feed1d085b03cd2              # double 0.96311212645550826
	.quad	0x3fe69c59550cb64b              # double 0.70658556567441033
	.quad	0x3fe1275e65df5162              # double 0.53605575463238275
	.quad	0x3fabcad065691150              # double 0.05428172338409587
	.quad	0x3fe58516d1f1875f              # double 0.67249623303016992
	.quad	0x3fef6546f86ee14f              # double 0.98111294290633022
	.quad	0x3f89d08cf6723340              # double 0.012604810019433921
	.quad	0x3fb3dd377718ec90              # double 0.077594248367790052
	.quad	0x3fcebec632544dc8              # double 0.2401969667194932
	.quad	0x3fe9b4e08dcf0803              # double 0.80332973191275447
	.quad	0x3fe935d9da86984a              # double 0.78782360726177925
	.quad	0x3fe8248a6e6c3944              # double 0.75446054045622945
	.quad	0x3fc2e96f92c4fd40              # double 0.14774889627913446
	.quad	0x3febcb73e2347772              # double 0.86858553105024172
	.quad	0x3fe2b57b46d1b642              # double 0.58465350944397465
	.quad	0x3fedd8897ceff5b7              # double 0.93268274690460984
	.quad	0x3fe37e1dc3fa9eec              # double 0.60914505269189823
	.quad	0x3fcc1678292a5e54              # double 0.21943571100267667
	.quad	0x3febe08669d20cd0              # double 0.87115784328525514
	.quad	0x3fadc94a60e99b10              # double 0.058176349954740414
	.quad	0x3fe4fd504b80c878              # double 0.65592207667056268
	.quad	0x3fd6e25f65ec2a04              # double 0.35756669000025476
	.quad	0x3faf9b62e3285eb0              # double 0.061732378224573892
	.quad	0x3fe3f938c3f4ce10              # double 0.62417257569035378
	.quad	0x3fe7d96ecad34250              # double 0.74529208769133426
	.quad	0x3fde09b3fcbc7a0c              # double 0.46934222871087239
	.quad	0x3fe3325c60c0a235              # double 0.59989756485908308
	.quad	0x3fd4fe4dc8ad1128              # double 0.32802147481221988
	.quad	0x3fe1825f5c394dee              # double 0.54716461193532751
	.quad	0x3fba9c554cd36e18              # double 0.10394795537597934
	.quad	0x3fe6eb39fa097b25              # double 0.71621416888578848
	.quad	0x3f977a21a857ed20              # double 0.0229268321036048
	.quad	0x3fc9b84d2449fd54              # double 0.20093693038868798
	.quad	0x3fd9d17bcced126c              # double 0.40341086399374748
	.quad	0x3fe45cc371d19406              # double 0.63632366399963369
	.quad	0x3fc9b947465f50f0              # double 0.20096674858235231
	.quad	0x3fd4accc826aceb2              # double 0.32304680572563449
	.quad	0x3fe48933fdd55f3d              # double 0.64174842430927692
	.quad	0x3fe2cf94349bd567              # double 0.58783922457830051
	.quad	0x3fa439646e3c7ec0              # double 0.039500368553715415
	.quad	0x3fd1d0caa2f6a2be              # double 0.2783686248244911
	.quad	0x3fcca36d434ccd38              # double 0.22373739038594365
	.quad	0x3fe531f95b115ab6              # double 0.6623503473918706
	.quad	0x3fe24bb87d09e97a              # double 0.57174324437737245
	.quad	0x3fef1571582ffee8              # double 0.97136752342336496
	.quad	0x3fe0011ea249deff              # double 0.50013667771324311
	.quad	0x3faaf2fd44260fe0              # double 0.05263511139767707
	.quad	0x3feac0133048d3e1              # double 0.83594664984286393
	.quad	0x3fd8e152cde44422              # double 0.38875265223129152
	.quad	0x3fe61ee912ac9d31              # double 0.69127324721640637
	.quad	0x3fc3b6779eff0ee8              # double 0.15400595916263815
	.quad	0x3fd754ac30e5a856              # double 0.36454300665957839
	.quad	0x3fe4f55aeff106bb              # double 0.65495058883262602
	.quad	0x3fecc094956a6e0f              # double 0.89850835020792086
	.quad	0x3fe200709e48dd25              # double 0.56255370058980658
	.quad	0x3fedcda7085b92b4              # double 0.93135406143536281
	.quad	0x3fd3e4cd9466942a              # double 0.31084002964263624
	.quad	0x3fcfed1a14902d6c              # double 0.24942327503263628
	.quad	0x3fd86fe97fc52e14              # double 0.38183057286798427
	.quad	0x3fe9a475861675c2              # double 0.80132557095537771
	.quad	0x3fc68175139e596c              # double 0.17582572420060261
	.quad	0x3fe70acf223210be              # double 0.72006947211095684
	.quad	0x3f80269f671fc900              # double 0.0078861668916698768
	.quad	0x3feb42a74c7ffd6c              # double 0.85188641492270056
	.quad	0x3fe65a5e8d6234f5              # double 0.69853141416538611
	.quad	0x3fea7c00bc6188ad              # double 0.8276370696369405
	.quad	0x3fb8ca4c7afe5140              # double 0.096836833980266768
	.quad	0x3fca1af3d05b7074              # double 0.20394752191248566
	.quad	0x3fd4d5fc6d8ce0ea              # double 0.32556067178985748
	.quad	0x3fd44da677419be4              # double 0.3172393955814512
	.quad	0x3fb28c8a55ad3e50              # double 0.072456975857897676
	.quad	0x3feaebeb12ed4646              # double 0.84129861542368967
	.quad	0x3fea29d926415415              # double 0.81760842773167275
	.quad	0x3febac37df205740              # double 0.86477273539887989
	.quad	0x3facbe58960858a0              # double 0.0561397250314013
	.quad	0x3fc60e1752b2f6c4              # double 0.17230502641716872
	.quad	0x3fe747201b3ed492              # double 0.72743230172513251
	.quad	0x3fe696fc04fbe9b0              # double 0.70593071912235494
	.quad	0x3fb1f5d6b2a9d470              # double 0.070157450312608338
	.quad	0x3fe0c3b8ebbb278b              # double 0.5238918880579474
	.quad	0x3fe0131b3d931668              # double 0.50233232523232818
	.quad	0x3fd0aa1462d7075e              # double 0.26038083698596448
	.quad	0x3fe25915fa43ab33              # double 0.57337473754646451
	.quad	0x3fe545a0998ab996              # double 0.66474943150187715
	.quad	0x3fe938460eeb451e              # double 0.78811934388992078
	.quad	0x3fe3677859f7d606              # double 0.6063806302251471
	.quad	0x3fe0c694db49c756              # double 0.52424090223051212
	.quad	0x3fda6ab02e4c4ac0              # double 0.41276173135080896
	.quad	0x3fbbf2ca7f9cf010              # double 0.10917344680359542
	.quad	0x3fe9b982542a2b99              # double 0.80389515341208828
	.quad	0x3fe9b1200b1b66cc              # double 0.80287172479003166
	.quad	0x3fbc748373c79aa8              # double 0.11115285469677849
	.quad	0x3fb264bb4010bfe0              # double 0.071849539891217784
	.quad	0x3fde16c7b6ad90ec              # double 0.47014038886687959
	.quad	0x3fe1b5be48895139              # double 0.55343546073212402
	.quad	0x3fe0bbfa984ab607              # double 0.52294664139270786
	.quad	0x3fc2cc01b45ea9a4              # double 0.14685078913801164
	.quad	0x3fd0b61ae26476ae              # double 0.26111480816494292
	.quad	0x3fde6f6bc3cb56ec              # double 0.47555059547936085
	.quad	0x3fce2d7fd76eb1c8              # double 0.23576353091392677
	.quad	0x3feb254a9c22598a              # double 0.84830217833477772
	.quad	0x3feec2ff1134d325              # double 0.96130326614966021
	.quad	0x3fe37aae11657a97              # double 0.60872558019385081
	.quad	0x3fe3003f4e0c829f              # double 0.5937801861183124
	.quad	0x3feed69775484733              # double 0.96369526774126368
	.quad	0x3fec04e7e23f9fa6              # double 0.87559885205427146
	.quad	0x3fd91fcb624a7e12              # double 0.39256558035592193
	.quad	0x3fecf7e1a3c37265              # double 0.90525896058131805
	.quad	0x3fea6d6b6d094e2c              # double 0.82585688873445439
	.quad	0x3fe40102fbf0c7e9              # double 0.62512349326266048
	.quad	0x3fb7947c5edc6ce0              # double 0.092109463843758288
	.quad	0x3fec9495c3a0a4cc              # double 0.89313781937121339
	.quad	0x3fc5f5571a67ceb8              # double 0.17154969014483412
	.quad	0x3fe8c6e1895d516f              # double 0.77427746609695969
	.quad	0x3fef2acb19dfb973              # double 0.97397379926205329
	.quad	0x3fee5400b5c28d6d              # double 0.94775424480432735
	.quad	0x3f921cb321f79e60              # double 0.017687605808445972
	.quad	0x3fe48440e0a904fd              # double 0.64114421729041704
	.quad	0x3fea2a5dbf4bb47b              # double 0.81767165529676278
	.quad	0x3fc342a50112a194              # double 0.15047133018857706
	.quad	0x3fb9a96fbffbe908              # double 0.10024164616689657
	.quad	0x3fef2a683b56e2da              # double 0.97392665471769679
	.quad	0x3fd5f94a2e16375c              # double 0.34334043980276419
	.quad	0x3feebe4850a22bd6              # double 0.96072784184195359
	.quad	0x3faa19fe3fb76090              # double 0.050979562070723294
	.quad	0x3fde2d133401c876              # double 0.47150116041951351
	.quad	0x3fe3537b47d49ac1              # double 0.60394062070266596
	.quad	0x3fe7932f51b56492              # double 0.73671689947799934
	.quad	0x3fc89b0e9e1f07b8              # double 0.19223196717035562
	.quad	0x3fef02e32106e457              # double 0.96910244417734758
	.quad	0x3fb7d3cef873bc68              # double 0.093075690896272101
	.quad	0x3fec43d2f1c32505              # double 0.88327929705806751
	.quad	0x3fc2566e88c39938              # double 0.14326268842632728
	.quad	0x3fe374afd1ac146d              # double 0.60799399329756698
	.quad	0x3fb5c1a3fd8c3a20              # double 0.084985970879849493
	.quad	0x3fee70af7482c79c              # double 0.95125553852107058
	.quad	0x3fe7569fbe1583ee              # double 0.72932421804227743
	.quad	0x3fe6366cb62c4129              # double 0.6941436346114972
	.quad	0x3fe8a05c1a53f968              # double 0.7695751680583216
	.quad	0x3fde1dbc35076676              # double 0.47056489161113946
	.quad	0x3fd72ab66b6b2f50              # double 0.36198196878534805
	.quad	0x3fe92e3898911053              # double 0.78689222143339987
	.quad	0x3fd88905d640dc78              # double 0.38336320803814017
	.quad	0x3feac1494eee855b              # double 0.83609452644683857
	.quad	0x3fdeb72e5feadd8e              # double 0.47993049017846878
	.quad	0x3fc66bb08d0fe770              # double 0.17516142738150675
	.quad	0x3fb34abc2a635f30              # double 0.075359115933107956
	.quad	0x3fe424685500e0f8              # double 0.62944428064568481
	.quad	0x3feed4ae4c4c63a7              # double 0.96346201803236375
	.quad	0x3fbf24a42e465948              # double 0.12165285234218459
	.quad	0x3fefb76e54967d55              # double 0.99114147683205067
	.quad	0x3fe12e0f48a070f1              # double 0.536872522210187
	.quad	0x3fef23d5496a4155              # double 0.97312416399840151
	.quad	0x3fe34f6a20053404              # double 0.60344415906877247
	.quad	0x3fe86a20628b9a94              # double 0.7629548954690386
	.quad	0x3fdd0cfb5d39cba4              # double 0.45391735176161263
	.quad	0x3fcaec195afe5e60              # double 0.21033017104194851
	.quad	0x3fe4543de60f1f8b              # double 0.63528342183507058
	.quad	0x3fd48144777a3428              # double 0.32038985889158988
	.quad	0x3fdaf2e28b2f1a8c              # double 0.42107452003657708
	.quad	0x3fe7854516574d80              # double 0.73501829493982029
	.quad	0x3fd04d1a0e674274              # double 0.25470591932847886
	.quad	0x3fee46fabfb466ae              # double 0.94616448824236499
	.quad	0x3fd38696016ddf54              # double 0.30508947505540118
	.quad	0x3fd83ed87e55053a              # double 0.37883579575653281
	.quad	0x3fcd52950b6d3fa0              # double 0.22908270891138915
	.quad	0x3f91380f54f79fe0              # double 0.01681541401003972
	.quad	0x3f8b28e19617f7c0              # double 0.013261568444246197
	.quad	0x3fd7cb73a99cd7d0              # double 0.37179271281945336
	.quad	0x3fe9833289771851              # double 0.79726530884432567
	.quad	0x3fb6b458958a41f8              # double 0.088689362057500776
	.quad	0x3fe76ecf79a7c7fe              # double 0.73227666626758015
	.quad	0x3fc54a3e6e6a6908              # double 0.16632824317350292
	.quad	0x3fe73e73556bf2a2              # double 0.72637335475845455
	.quad	0x3fe3313793f47fc5              # double 0.5997579469440032
	.quad	0x3fb5db104d7882f8              # double 0.085373896516568126
	.quad	0x3fe8a977ed3578c0              # double 0.77068706827028421
	.quad	0x3fd5a2a1fe1e1f7a              # double 0.33805131736925598
	.quad	0x3fe42b79c43c0903              # double 0.63030708624890541
	.quad	0x3fd62195512b914c              # double 0.34579976012016256
	.quad	0x3fe2d3d88a75d15e              # double 0.58836009066594008
	.quad	0x3fb3d9d6f234a330              # double 0.07754271901343368
	.quad	0x3fd668a618295d2a              # double 0.35013725623635372
	.quad	0x3fb7d2f0f2b42c98              # double 0.093062457326754333
	.quad	0x3feb4803ac7ce28d              # double 0.85254081429509798
	.quad	0x3f980cb9f1fad440              # double 0.023486047167086577
	.quad	0x3fd594e14551494c              # double 0.33721191186227339
	.quad	0x3fe506ad2418691b              # double 0.65706498193620477
	.quad	0x3fc922c418d0f538              # double 0.19637347423296503
	.quad	0x3fe98779ffd38bbe              # double 0.7977876659973544
	.quad	0x3fd5b5c48cf31034              # double 0.33921922459217346
	.quad	0x3fd8a9abdde4df90              # double 0.38535591763820154
	.quad	0x3fea3977ab436613              # double 0.81951507043703697
	.quad	0x3fe46331a5a67b17              # double 0.63710863450600896
	.quad	0x3fef93717d4dc997              # double 0.98674845193299887
	.quad	0x3fdb672d2640ab6a              # double 0.42817238555533399
	.quad	0x3fd544bd009e4ace              # double 0.33232045231231389
	.quad	0x3fe6bb5dd116f67b              # double 0.71037188375312554
	.quad	0x3feb249c78372967              # double 0.84821914176545199
	.quad	0x3fe117b5f9be38d9              # double 0.53414438989582458
	.quad	0x3fc8daa5c1aa9b80              # double 0.19417259174698742
	.quad	0x3fc967ab30c9c114              # double 0.19847621805411875
	.quad	0x3fcc68e1a4834e6c              # double 0.22195072682244488
	.quad	0x3fc517658ffd39dc              # double 0.16477651148529915
	.quad	0x3fd6a0e976ba9d32              # double 0.35357128710389241
	.quad	0x3fb851a0776e6ce0              # double 0.094995526464504376
	.quad	0x3fed558c35e50e7c              # double 0.91669283415144731
	.quad	0x3f8d1db67fd12040              # double 0.014216829085981542
	.quad	0x3fece44c4ac61e26              # double 0.90286841015126096
	.quad	0x3fe32d023a03d8e0              # double 0.59924422579822689
	.quad	0x3fee4806d329fd94              # double 0.94629231684659709
	.quad	0x3fe0fab3c057d4b0              # double 0.53060329024324027
	.quad	0x3fedb7dad86ea5cc              # double 0.92869322082440808
	.quad	0x3fdd8253c52f978c              # double 0.46107954269825124
	.quad	0x3fa996bdfe8abf00              # double 0.049978196451204937
	.quad	0x3faece40eecf4820              # double 0.060167340423177729
	.quad	0x3fd26ec15b36a0d0              # double 0.28800996692235703
	.quad	0x3fb4603116ccaed0              # double 0.079592769686026132
	.quad	0x3fe9bd18f7050eb2              # double 0.80433319326444619
	.quad	0x3fddc62eaedc4afc              # double 0.46522109104368758
	.quad	0x3fee7a56d863362b              # double 0.95243398917381705
	.quad	0x3fe779d02d48377a              # double 0.73361977428588365
	.quad	0x3fc17cce5e42a974              # double 0.13662128069456581
	.quad	0x3fd8803141973570              # double 0.38282424359643752
	.quad	0x3fe98f210a20e7f5              # double 0.79872180917959545
	.quad	0x3fdc17358606b2ac              # double 0.43891656960003433
	.quad	0x3fe61cc3ef730a99              # double 0.6910113980050766
	.quad	0x3fddc3e6735c01ba              # double 0.46508179917875803
	.quad	0x3fd2d3619b62a1d2              # double 0.29415168928474345
	.quad	0x3fca3adc2ba3e078              # double 0.20492126589647675
	.quad	0x3fe1de080da275ee              # double 0.55835344946870946
	.quad	0x3fe78cc8e68dd015              # double 0.73593564062184902
	.quad	0x3fe847bcb317b6aa              # double 0.75875697115926255
	.quad	0x3fe3b844a40cdcad              # double 0.61624366799414576
	.quad	0x3fda5d69641b5ec6              # double 0.41195139671388536
	.quad	0x3fd471ea60f07f7a              # double 0.31945285288565339
	.quad	0x3fc1e680e9b69a74              # double 0.13984691058904597
	.quad	0x3feaafe15ab2ac2c              # double 0.833969761986173
	.quad	0x3fe3372da36dd6be              # double 0.60048562926996119
	.quad	0x3fc40313535d8204              # double 0.15634385653085314
	.quad	0x3fe76f5699a82bea              # double 0.73234109889142229
	.quad	0x3fea3f13abb01466              # double 0.82019980938697468
	.quad	0x3fe036d34d71ba6f              # double 0.50669255376653932
	.quad	0x3fe6b21f8a2308e6              # double 0.70924355487684632
	.quad	0x3fef22ce094ee38e              # double 0.97299863641738837
	.quad	0x3fee67a323c26fbf              # double 0.95015103325157912
	.quad	0x3febcf602ccbc8b0              # double 0.86906441449379734
	.quad	0x3fea7f797936c4d3              # double 0.82806085276220143
	.quad	0x3fde570b39432d62              # double 0.47406273452789638
	.quad	0x3fbca7f8b6a16008              # double 0.11193804224728876
	.quad	0x3fecebaa1198a696              # double 0.90376761853004228
	.quad	0x3fde3ce50b770388              # double 0.47246671790713224
	.quad	0x3fe14ca9bc14fec6              # double 0.54060827955978463
	.quad	0x3fea664bd44a5ccb              # double 0.82498733008369507
	.quad	0x3fe8b174c15597ea              # double 0.77166211853613942
	.quad	0x3fe7a7eb126a6730              # double 0.73924783322147469
	.quad	0x3fdecdcdde893456              # double 0.48131129009272422
	.quad	0x3fe34942dc787fac              # double 0.6026930147236178
	.quad	0x3fe805314d9b0180              # double 0.75063386113474451
	.quad	0x3fd252c2183cf108              # double 0.28630115859029148
	.quad	0x3fd6a1ff8105d248              # double 0.35363757705571119
	.quad	0x3fe22fa970bcfd46              # double 0.56831810015857154
	.quad	0x3fb9f9afb3222fe0              # double 0.10146616099717631
	.quad	0x3fb7ad317b8238e8              # double 0.092486469892012146
	.quad	0x3fd4aba64a26758c              # double 0.32297665826066502
	.quad	0x3fe6fc665ff92b92              # double 0.71831053490437768
	.quad	0x3fee5e02f0e3b736              # double 0.94897601174100177
	.quad	0x3fdc29096704586c              # double 0.44000468311549557
	.quad	0x3fd363fadf460100              # double 0.30297729305313226
	.quad	0x3fd72c8819251118              # double 0.36209299521967031
	.quad	0x3fd298b2ebf3f806              # double 0.29057000200543859
	.quad	0x3fee2aeefc35668f              # double 0.94274091014377059
	.quad	0x3fa95860b9360670              # double 0.049502394303101549
	.quad	0x3fdbb4676c26bae6              # double 0.4328859859623847
	.quad	0x3fee6eaea6f226fc              # double 0.95101101500151186
	.quad	0x3fe50cc507aa5a47              # double 0.65780879494816069
	.quad	0x3fd31334c187f2b0              # double 0.29804724597469612
	.quad	0x3f87627625c0c1c0              # double 0.011418269183281704
	.quad	0x3feaed9319deb67f              # double 0.84150080731133403
	.quad	0x3fe5b7158ed156e3              # double 0.67859914678657807
	.quad	0x3fdc1d5cd3651e30              # double 0.43929215091745544
	.quad	0x3fe7dc43b9b47ac2              # double 0.74563776274211357
	.quad	0x3f9fb7d27615e900              # double 0.030974663216945864
	.quad	0x3fe49f138dfc236c              # double 0.64441850406101997
	.quad	0x3fd7ebb716cdc242              # double 0.37376191355636845
	.quad	0x3fd194cd1e551f1a              # double 0.27470710718306324
	.quad	0x3fd66339e4e9ebc2              # double 0.34980628352030518
	.quad	0x3fc1e54e29cd6b80              # double 0.1398103431809794
	.quad	0x3fb88fc04a1d6820              # double 0.095943468183947278
	.quad	0x3fc7b83c80081340              # double 0.18530994655170652
	.quad	0x3fc60f58d19bb1a4              # double 0.17234335169577009
	.quad	0x3fe640f915dc199e              # double 0.69543127316937947
	.quad	0x3fe70b4e2aaffcd1              # double 0.72013004624741417
	.quad	0x3fe9fb785d625780              # double 0.811947042838014
	.quad	0x3fd7dd84e54609a8              # double 0.37289545431135673
	.quad	0x3fdbc1ef41ee5db2              # double 0.43371182859979307
	.quad	0x3fe2da61b7b72469              # double 0.58915792352594309
	.quad	0x3fd8c0f9296d3d2c              # double 0.38677815480783084
	.quad	0x3fe0b95d9065a2c0              # double 0.52262762262861173
	.quad	0x3fc379316e105614              # double 0.15213601946077004
	.quad	0x3fecd0bb0694769e              # double 0.90047980580466791
	.quad	0x3fe7ced00ca9c690              # double 0.74399569009092836
	.quad	0x3fcf043b4b2f3f3c              # double 0.24231663867112185
	.quad	0x3fe583371cb922a1              # double 0.67226749048230172
	.quad	0x3fe4ae2a26e534d4              # double 0.64626033398385596
	.quad	0x3fe34bb981d03901              # double 0.60299373010801116
	.quad	0x3fd00dfc588f00cc              # double 0.25085362098981245
	.quad	0x3fc5235a5d017908              # double 0.16514138737961326
	.quad	0x3fb4460b76fe0e98              # double 0.079193798590546982
	.quad	0x3fe7c9a492130f63              # double 0.74336460619131761
	.quad	0x3fe6684f9536b4d5              # double 0.70023326056766655
	.quad	0x3f8defe7a1773500              # double 0.014617738356629051
	.quad	0x3f94ce8248e52720              # double 0.020319019030728858
	.quad	0x3fe1ae986cdd6e2c              # double 0.5525629163998409
	.quad	0x3fcac68ed522bafc              # double 0.20918450743689465
	.quad	0x3fc3e86bcdfd7d44              # double 0.15553042944064022
	.quad	0x3fe2babb81d1a6e3              # double 0.58529448848022658
	.quad	0x3fef322059cb7bdf              # double 0.9748689416700208
	.quad	0x3fd9b02541e4728c              # double 0.40137607035448108
	.quad	0x3fe1eca65619bb5f              # double 0.5601379090929689
	.quad	0x3fe2f436d836f1a9              # double 0.59231130818766531
	.quad	0x3fb1b738f187e5c8              # double 0.069202002494328174
	.quad	0x3fe1cc2ac3e49213              # double 0.55617273578951865
	.quad	0x3fd490e7ce8e3c8c              # double 0.32134432956167625
	.quad	0x3fe774da4c99ed8d              # double 0.73301424943149274
	.quad	0x3feee6b2f9b92a23              # double 0.96566151403505207
	.quad	0x3fe5db388afe8616              # double 0.68301036021529415
	.quad	0x3fc76379160e6cc4              # double 0.18272317482919764
	.quad	0x3fe2d78415e2521d              # double 0.58880810045463117
	.quad	0x3fecde0f49d86422              # double 0.90210689947992173
	.quad	0x3fd2b20410f81204              # double 0.29211522729045236
	.quad	0x3fa5b546bc64f440              # double 0.042398653504712502
	.quad	0x3f7597e8d1b6eb00              # double 0.0052718252658745524
	.quad	0x3fc332d19c6a3b7c              # double 0.14998836648416247
	.quad	0x3fe94e9366e2a7e1              # double 0.79084177107619891
	.quad	0x3fe67c16f11189d4              # double 0.70264765819257002
	.quad	0x3f832dbb0b081ec0              # double 0.0093645680181134727
	.quad	0x3fe536245dfd047e              # double 0.66285913807963914
	.quad	0x3fe818616a0c4bec              # double 0.75297613823420084
	.quad	0x3fcaa2c835e25308              # double 0.20809271460588996
	.quad	0x3fb63c2d72eeba88              # double 0.0868557363125807
	.quad	0x3fb3c1118428d710              # double 0.077164740338812487
	.quad	0x3feb95076cf7cd3c              # double 0.86194201739127818
	.quad	0x3fc9a203cd254380              # double 0.20025680081246477
	.quad	0x3fb5269a54a14ed0              # double 0.082620282804153122
	.quad	0x3fd5a072515cfd7c              # double 0.3379178804934424
	.quad	0x3fe7d707f87629d7              # double 0.74499891784335659
	.quad	0x3fe20be999912f21              # double 0.5639541625364225
	.quad	0x3fdf596765eb8c0e              # double 0.48983178094039281
	.quad	0x3fec008236ff1926              # double 0.87506209126948842
	.quad	0x3fd006c07fadb53a              # double 0.25041210621460019
	.quad	0x3fc63cacff7544f8              # double 0.17372667764224281
	.quad	0x3fe7c3547653aa99              # double 0.74259398565966983
	.quad	0x3fd0c8ebf9214b78              # double 0.26226329163653572
	.quad	0x3fc8b6ab60239d7c              # double 0.19307462877553039
	.quad	0x3feec43925a5b99d              # double 0.96145303109169655
	.quad	0x3fec5a91bee59c91              # double 0.88605582508616199
	.quad	0x3fe70a74042a52b8              # double 0.72002602399387339
	.quad	0x3fe360abbe441ddf              # double 0.60555064355224519
	.quad	0x3fe881ab1513277b              # double 0.76582864872146617
	.quad	0x3fe6c0fb3858b597              # double 0.71105729108028271
	.quad	0x3fb4df9c3f7568d0              # double 0.08153702306063626
	.quad	0x3fe1264c7a6b5fad              # double 0.53592513952297838
	.quad	0x3fe824ddc202079c              # double 0.75450027362989002
	.quad	0x3fe60a0428ba0e9f              # double 0.68872268633318245
	.quad	0x3fe219e597a5bdb0              # double 0.5656612359870703
	.quad	0x3fd44364d1a5d314              # double 0.31661339257634435
	.quad	0x3fed8434ba84a650              # double 0.92238842419937761
	.quad	0x3fe0dfb59401f4fd              # double 0.5273082628988558
	.quad	0x3fe71115d0d4fa7a              # double 0.72083559787263529
	.quad	0x3fe356377b5486c9              # double 0.60427450263906579
	.quad	0x3fe9cc5bd28046ef              # double 0.80619612802021645
	.quad	0x3fef26315ecfa5f0              # double 0.97341221349523543
	.quad	0x3fdb0878053faf82              # double 0.42239189636779184
	.quad	0x3fd98ad72b28466a              # double 0.39909915175039734
	.quad	0x3fe87f8410611b5d              # double 0.7655659027012508
	.quad	0x3fe5706d5d1d0162              # double 0.66997402368728509
	.quad	0x3fd74a5428a2c5e4              # double 0.36391166656821228
	.quad	0x3fa9795a08acb2d0              # double 0.049753964957152896
	.quad	0x3f7dea5d79e51f80              # double 0.0073035861408426994
	.quad	0x3fee9d0af3b79096              # double 0.95667026139246292
	.quad	0x3feaed557d724e43              # double 0.84147142888327442
	.quad	0x3fe8845260b130ad              # double 0.76615256200013493
	.quad	0x3fe6146e12fac096              # double 0.68999389368947806
	.quad	0x3fcc6582d836b13c              # double 0.22184787328058941
	.quad	0x3fe1bc91fcb583f8              # double 0.55426883084521616
	.quad	0x3fe07637731bcfa4              # double 0.51443073732524569
	.quad	0x3fc01b19213b41fc              # double 0.12582697031622547
	.quad	0x3fcba927a7c586e4              # double 0.21609969799015183
	.quad	0x3fee18a65173c82b              # double 0.94050899418494305
	.quad	0x3fe1a0def11ecaf0              # double 0.55088755697064862
	.quad	0x3fd087656457439e              # double 0.25826391981996177
	.quad	0x3fd21c737039d0d6              # double 0.28298650703005757
	.quad	0x3fde46a80c11fab2              # double 0.47306252650006819
	.quad	0x3fdc0068216d3cfe              # double 0.43752482666327797
	.quad	0x3fe3e8255d397cd8              # double 0.62208812911913025
	.quad	0x3fbb1d1fee1b2be8              # double 0.10591315806520607
	.quad	0x3faf6a2b7ce67870              # double 0.061356886860480908
	.quad	0x3fc33709fc1cabc4              # double 0.15011715707927753
	.quad	0x3fe745ae56f1b523              # double 0.72725598317416418
	.quad	0x3fab039ce736c9b0              # double 0.052761939262740198
	.quad	0x3fe3415b575d389c              # double 0.60172812522229746
	.quad	0x3fe1e3adf4eccc1f              # double 0.55904290997421302
	.quad	0x3fc8865438523914              # double 0.19159939527566705
	.quad	0x3fec1af7f8fc52be              # double 0.87829207067496617
	.quad	0x3fddb9aea0778fce              # double 0.46445813818558868
	.quad	0x3fd7deb9c39debf0              # double 0.37296909430705139
	.quad	0x3fdfb9ddc39b566a              # double 0.49571937658524823
	.quad	0x3fe06ab87a85c7ec              # double 0.51302741937820207
	.quad	0x3fc74d1ad77aa404              # double 0.1820405532974122
	.quad	0x3fed1f21f9878ec7              # double 0.91005038009867512
	.quad	0x3fbc88b9ac15fd88              # double 0.11146126223865427
	.quad	0x3fe2327440ac131a              # double 0.56865894919664872
	.quad	0x3fe586f9ed90a9b9              # double 0.67272659682685465
	.quad	0x3fd8dbaadeaeddce              # double 0.38840743776696918
	.quad	0x3fee21cc9d04e8ab              # double 0.94162588756377852
	.quad	0x3fe742db02e309fb              # double 0.72691107333986282
	.quad	0x3fbfcfa5bb9e5e20              # double 0.12426219778569036
	.quad	0x3fe4f0a1e902b232              # double 0.654374079798407
	.quad	0x3fce08bc86ef7f0c              # double 0.23464161480568924
	.quad	0x3fdb605ce78fb0cc              # double 0.42775652516753548
	.quad	0x3fc77cf09f1e2624              # double 0.18350036401197756
	.quad	0x3fbf72f27d2fc668              # double 0.12284770542444223
	.quad	0x3fb1c01c4c04e540              # double 0.069337624129635067
	.quad	0x3fc1ba4d05119038              # double 0.1384979510067994
	.quad	0x3fe1d162ad63e950              # double 0.55680974831856567
	.quad	0x3fe99ea32b9bd553              # double 0.800614915059365
	.quad	0x3fe6926a2b19e72a              # double 0.70537289064597997
	.quad	0x3fdad7cfaa1ee86e              # double 0.4194220696769041
	.quad	0x3fe51865eed0b405              # double 0.65922829288103968
	.quad	0x3fe61bfe8a2fbbcb              # double 0.69091727246802159
	.quad	0x3fec4a49802ce93a              # double 0.88406825098289876
	.quad	0x3f746702efe20c00              # double 0.0049810518959274575
	.quad	0x3fd52efef2508274              # double 0.33099340117954701
	.quad	0x3fd2ca56b911b518              # double 0.29359977791939817
	.quad	0x3faa7fd8a6330730              # double 0.051756639755252798
	.quad	0x3fc0269c9a424968              # double 0.12617833645033305
	.quad	0x3fefc5d813069b9c              # double 0.99290088382700814
	.quad	0x3fe0bbb208ca2ed2              # double 0.5229120418238955
	.quad	0x3feff18d73671e30              # double 0.99823639430628042
	.quad	0x3fa574114fc34950              # double 0.041901150690721978
	.quad	0x3fe60bc7cdebaaec              # double 0.68893804758894595
	.quad	0x3fefe8c161ed25bb              # double 0.99716252447358699
	.quad	0x3fe3dca782d482e6              # double 0.62068534424551269
	.quad	0x3fef9b2bbe9333a0              # double 0.98769175740891412
	.quad	0x3fe6678083edad0f              # double 0.70013452307958512
	.quad	0x3fdac4dc333dba06              # double 0.41826539043441391
	.quad	0x3fe55b07435e4543              # double 0.66736186178074097
	.quad	0x3febb12d86f96246              # double 0.86537815439357568
	.quad	0x3fc981c2902759ec              # double 0.19927246130710274
	.quad	0x3feac4d5f51445ff              # double 0.83652780406026739
	.quad	0x3fe83fb07ea47159              # double 0.75777458891711114
	.quad	0x3fd5f152d85fa22c              # double 0.34285422449332503
	.quad	0x3fe465aa29876acf              # double 0.63741024123313561
	.quad	0x3fe488924f82a278              # double 0.64167132882455657
	.quad	0x3fd9e74d11d8ae86              # double 0.40474249594510814
	.quad	0x3f9a7239975e5e60              # double 0.025826358665283045
	.quad	0x3fc316d869c04f90              # double 0.14913468516953943
	.quad	0x3f6d75b306e98700              # double 0.00359616247378447
	.quad	0x3fce0d360520f268              # double 0.23477816820549724
	.quad	0x3fb3a29c9aa8d4a0              # double 0.076700008162179589
	.quad	0x3fc782ae150d0b08              # double 0.18367553737524411
	.quad	0x3fce3a93262e71c8              # double 0.23616256107642486
	.quad	0x3fb20a99403ed560              # double 0.07047422235958356
	.quad	0x3fdc20bec0c76c70              # double 0.4394986040694624
	.quad	0x3fc896b9b0500948              # double 0.19209977253928856
	.quad	0x3fe3d28aeeb209d0              # double 0.61945101375777689
	.quad	0x3fe6a70c1526b809              # double 0.70789150363066355
	.quad	0x3fea235486f3be30              # double 0.81681276662670221
	.quad	0x3fea3ccf30795645              # double 0.81992301433155801
	.quad	0x3fe9096f4215995e              # double 0.78240168482879446
	.quad	0x3fc26f085497bd34              # double 0.14401344423775131
	.quad	0x3fe9158978d25187              # double 0.78387902830085998
	.quad	0x3fd761abcbc7bb38              # double 0.36533636951837734
	.quad	0x3fe045cdb959f335              # double 0.50852094842375684
	.quad	0x3feea42207c0f982              # double 0.95753575815597025
	.quad	0x3f9b0b4d010ea2a0              # double 0.026410296620869134
	.quad	0x3fed4c2fe8101736              # double 0.91555018734718518
	.quad	0x3fd890a880f2d4e0              # double 0.38382923691399462
	.quad	0x3f57d79bf1f7ca00              # double 0.0014552138235300882
	.quad	0x3fea25b80f463b60              # double 0.81710436805029118
	.quad	0x3f7d025c8cc45f80              # double 0.0070823302487709183
	.quad	0x3fe2bca62d12df7d              # double 0.58552845767461259
	.quad	0x3fc8e78e32720460              # double 0.19456651175645145
	.quad	0x3fe1d8938dbe13a6              # double 0.55768754657821229
	.quad	0x3fdae38be89165a6              # double 0.42013833724703387
	.quad	0x3fe440c9f64964e1              # double 0.6329088030135176
	.quad	0x3feb926b87a39d06              # double 0.86162353984846685
	.quad	0x3fd2af179910e226              # double 0.29193677852484468
	.quad	0x3fdc3da6d5fc3524              # double 0.44126292130461509
	.quad	0x3fd236f2b991ce1a              # double 0.28460376855875469
	.quad	0x3fde379cbacd2b22              # double 0.47214430086448733
	.quad	0x3fdfdb363e72f2de              # double 0.49775463198220204
	.quad	0x3f5691ab2a472800              # double 0.0013775035414362868
	.quad	0x3fec3bbf1123b589              # double 0.88229325625950239
	.quad	0x3fa1f33a939a3f20              # double 0.035058813588987769
	.quad	0x3fe8aaf7c6095659              # double 0.77087010077475349
	.quad	0x3feae7f846bbd4f5              # double 0.8408166295545515
	.quad	0x3fe1f6049b589200              # double 0.56128149357806478
	.quad	0x3fb4f08ecc489380              # double 0.081795620798017054
	.quad	0x3fcd27431fe26368              # double 0.22776068741657274
	.quad	0x3f970a98df66c520              # double 0.022501362452833296
	.quad	0x3fddccfb3a6ec716              # double 0.46563606935807067
	.quad	0x3fe1d3c833ab3a5f              # double 0.55710229960989099
	.quad	0x3fea00308487540d              # double 0.81252313503739659
	.quad	0x3fc293577e1b9288              # double 0.145121513916042
	.quad	0x3fdef06969dc7cf6              # double 0.48342357004180714
	.quad	0x3fe367515ba8c29a              # double 0.60636203672591482
	.quad	0x3fe84b89f3e9a4bf              # double 0.75922105445092558
	.quad	0x3fc0aa3fdd19707c              # double 0.13019560142391018
	.quad	0x3fe361971234ddfd              # double 0.60566285663566044
	.quad	0x3fcfd4545d6c8d0c              # double 0.24866728364677504
	.quad	0x3fd4205a9a23f828              # double 0.3144747262266514
	.quad	0x3fdccb9bc400ed38              # double 0.44992727414110645
	.quad	0x3fe8abd5f6ae07c9              # double 0.77097604922914187
	.quad	0x3fa13039212c3a10              # double 0.033571038531693742
	.quad	0x3fe6e87195b14547              # double 0.71587447392281767
	.quad	0x3feb7551496d14a1              # double 0.85807098713907604
	.quad	0x3fe8197a830956d0              # double 0.75311017602026631
	.quad	0x3fd82f7279bc1a02              # double 0.37789594543610872
	.quad	0x3febd67b4b87977c              # double 0.86993183853040489
	.quad	0x3fe3032171b1efe4              # double 0.59413215833728517
	.quad	0x3fee3ce4be24ee69              # double 0.94493329179335916
	.quad	0x3fd384a0846357e4              # double 0.304969910893645
	.quad	0x3fdcb169c92dc8de              # double 0.4483284439694567
	.quad	0x3fd5d0da22b67ce2              # double 0.34087232007909851
	.quad	0x3fe2d891a909c422              # double 0.58893664374602772
	.quad	0x3fac486706ac63a0              # double 0.055239886822341377
	.quad	0x3fefe0c5f17b8207              # double 0.99618813671628536
	.quad	0x3fefc35c1337ae3a              # double 0.99259761575144201
	.quad	0x3fedcc68a8f6a558              # double 0.93120224953342312
	.quad	0x3fd00e05b1920c90              # double 0.25085584965581464
	.quad	0x3fe0580d4525e5db              # double 0.51074851518131525
	.quad	0x3fc78e683514f66c              # double 0.18403341857804223
	.quad	0x3fe77b72891dd406              # double 0.73381926327294944
	.quad	0x3feb517c39c73b51              # double 0.85369693074049213
	.quad	0x3fe288365f495ee2              # double 0.57912748919167378
	.quad	0x3fe71ca9fd3e4bb7              # double 0.7222490259322204
	.quad	0x3fd1e04dd9b567ca              # double 0.27931543598753861
	.quad	0x3fdbf3b6ed683f3e              # double 0.43675015625284519
	.quad	0x3fb840f68442e540              # double 0.094741256037100818
	.quad	0x3feeb717c08f2263              # double 0.95985019311144659
	.quad	0x3fec6c059e0b97b3              # double 0.88818627231807168
	.quad	0x3fe1b7ab3070ca11              # double 0.55367049656917022
	.quad	0x3fe7fa135f3fb20e              # double 0.74927681544574098
	.quad	0x3fdd16eb0695f65e              # double 0.45452380793708425
	.quad	0x3fdeadbe70ecd37c              # double 0.47935448673097603
	.quad	0x3fcfadb596f8c9ec              # double 0.2474886881987709
	.quad	0x3fa336100c7b3210              # double 0.037521840594852418
	.quad	0x3fd1076dff48c13c              # double 0.2660784714708091
	.quad	0x3fe1067e84cb6b21              # double 0.53204275070615747
	.quad	0x3fd8d22442563f5c              # double 0.38782602766240415
	.quad	0x3fc2de18b6e53524              # double 0.14740284853397967
	.quad	0x3fee15a3fd036999              # double 0.940141672293339
	.quad	0x3fd7bf19e1336e56              # double 0.37103888504291171
	.quad	0x3feb6cbb4bb627f1              # double 0.85702290332232967
	.quad	0x3feb84d2b3446fb7              # double 0.85996375096464461
	.quad	0x3fc17890f9115e44              # double 0.13649189149394847
	.quad	0x3fee61b8b32bf163              # double 0.94942889208281789
	.quad	0x3fd9e7ecdb321db2              # double 0.40478059202038275
	.quad	0x3fe36f6c05cb0989              # double 0.60735131389110208
	.quad	0x3fbb41688106b7b8              # double 0.10646680021338184
	.quad	0x3fef3710576351fb              # double 0.97547165935480906
	.quad	0x3fed0773ae3b028a              # double 0.90715965299030299
	.quad	0x3fda63517e0943d0              # double 0.41231190975400711
	.quad	0x3fc1cfffb5ae0db0              # double 0.13916012164200486
	.quad	0x3fe2e399b18725ef              # double 0.59028324769422891
	.quad	0x3fd9755b8f0b4bde              # double 0.39778794259217232
	.quad	0x3fdb5a8ee3e10096              # double 0.42740223172951042
	.quad	0x3fdf2647911fb336              # double 0.48671139881371361
	.quad	0x3fecb5df45481cb7              # double 0.89720119029597967
	.quad	0x3fe9057d9394bd36              # double 0.78192023109833175
	.quad	0x3fe4e7c32af0417e              # double 0.6532913054125371
	.quad	0x3febe2f3b4e07049              # double 0.87145409896357606
	.quad	0x3fd711e8a5edd718              # double 0.36046806530008402
	.quad	0x3fe2e5f39978efa4              # double 0.5905702588565771
	.quad	0x3fae22ed5e1f1250              # double 0.058860223521638333
	.quad	0x3fec75c87135fd73              # double 0.8893778048658717
	.quad	0x3fa223e75c8244f0              # double 0.035430173914514529
	.quad	0x3fcbb7dd4e0f8958              # double 0.21654859839970686
	.quad	0x3fdc08ede6193e10              # double 0.43804500074927066
	.quad	0x3fedfcfdd3a95deb              # double 0.93713275280145802
	.quad	0x3fe0f3b41e8df1e6              # double 0.52974897353811623
	.quad	0x3fe2740878b8601c              # double 0.57666419580619133
	.quad	0x3fc8bbabb4386ea0              # double 0.19322725581956934
	.quad	0x3fced1107c829b24              # double 0.2407551391563284
	.quad	0x3fed5fb26e7086c8              # double 0.91793176241136454
	.quad	0x3feaf8b2178490c5              # double 0.84285835831953959
	.quad	0x3fca0900e7a4009c              # double 0.20339976606920096
	.quad	0x3fae078debb547b0              # double 0.058651385329212657
	.quad	0x3f8b03a81cd945c0              # double 0.013190568333046992
	.quad	0x3fcabf3d4792746c              # double 0.20896116251688868
	.quad	0x3fbae51f5e2f36d8              # double 0.10505863236832214
	.quad	0x3fcd336004970958              # double 0.22813034271355082
	.quad	0x3fd96de776f2b642              # double 0.39733301750206718
	.quad	0x3fa2696d47bc47f0              # double 0.035960593230029647
	.quad	0x3fdd88314b82bf3e              # double 0.46143753408522403
	.quad	0x3fd4dbc5efdee2a8              # double 0.32591389107578062
	.quad	0x3fdb66f5f7e7db40              # double 0.42815922936954465
	.quad	0x3fc454d8bca7b5e8              # double 0.15883931361842873
	.quad	0x3febd51db5650dd2              # double 0.86976514271412442
	.quad	0x3feb2c044ff7bfc9              # double 0.84912315005021199
	.quad	0x3fc409f047204604              # double 0.15655330155327374
	.quad	0x3fe250f457029d9b              # double 0.57238213533576088
	.quad	0x3fd739ebbc6aa116              # double 0.36291020774889782
	.quad	0x3fc54f4110906f68              # double 0.16648114498900246
	.quad	0x3fe2d76ee8994234              # double 0.58879800252368009
	.quad	0x3fcd6049e75334c8              # double 0.22950099749724573
	.quad	0x3fefd3c942bf59db              # double 0.99460280453314042
	.quad	0x3fe6155aac0bad03              # double 0.69010671236665677
	.quad	0x3fe462c11c797db3              # double 0.63705497323456084
	.quad	0x3fe2f6e0eeadb5a1              # double 0.59263655297188589
	.quad	0x3feccff0df460d02              # double 0.90038341148502377
	.quad	0x3fe7a7eeae870830              # double 0.73924955451389529
	.quad	0x3fe97591bd54134c              # double 0.79560172060210154
	.quad	0x3fa5fb152795a1c0              # double 0.042931233484356124
	.quad	0x3fda4c0ebd090a72              # double 0.41089218578796427
	.quad	0x3fe581fa84e0938a              # double 0.6721165271052183
	.quad	0x3fcde0537e9a7cac              # double 0.23340839082536513
	.quad	0x3fb57fca3d25b370              # double 0.083981170586140185
	.quad	0x3fe84d38023f56ef              # double 0.7594261211295058
	.quad	0x3fc3a2e2a573c7b0              # double 0.15340836600040353
	.quad	0x3fda9d5a17fd6c9a              # double 0.41585399954574032
	.quad	0x3fdefbfc9d60a1a6              # double 0.48413005226987094
	.quad	0x3fa290c6cd9ebc80              # double 0.036260807609658663
	.quad	0x3fef065bb7b680a2              # double 0.96952615624833904
	.quad	0x3fee0bef1d48cb93              # double 0.93895679206467475
	.quad	0x3fed561a1ab60854              # double 0.91676049439434814
	.quad	0x3fc854b93d2a468c              # double 0.19008555876330424
	.quad	0x3fecf5e4b0eba841              # double 0.90501627497474868
	.quad	0x3faa7d7d86a1afb0              # double 0.051738665279884244
	.quad	0x3febd2c8de5bc2c6              # double 0.86948054723151169
	.quad	0x3f528a7fac8aba00              # double 0.0011316534820867696
	.quad	0x3fe4382cd39b8c38              # double 0.63185731248484611
	.quad	0x3fcfd3322ed746fc              # double 0.24863269126085885
	.quad	0x3fe4a9ac8764e612              # double 0.64571215099494084
	.quad	0x3fe1f786dfeff97a              # double 0.56146568048261192
	.quad	0x3fef2625914fdc11              # double 0.97340658551445546
	.quad	0x3fe763fab411f2d1              # double 0.73095450563377018
	.quad	0x3fe2126151e65fc4              # double 0.56474367137979486
	.quad	0x3fe5395fe5f7ee0e              # double 0.66325373569219592
	.quad	0x3fe706d3b5b77319              # double 0.71958337298892439
	.quad	0x3fed973bcc628bd1              # double 0.92471113127646209
	.quad	0x3fef805e83e3e3ab              # double 0.98442006835749873
	.quad	0x3fdd9dacdaf02e4a              # double 0.46274873142894946
	.quad	0x3fbfb14379ffac18              # double 0.12379857758030288
	.quad	0x3fa63928e330ba40              # double 0.043404844029613532
	.quad	0x3fe73fe8f376d4aa              # double 0.72655150939558166
	.quad	0x3fcc30e4064ee9f0              # double 0.2202420264055287
	.quad	0x3fc5d8c783a64a84              # double 0.17067808082773095
	.quad	0x3fe72216615487da              # double 0.72291106233410152
	.quad	0x3fad104c176b0720              # double 0.05676496301522449
	.quad	0x3fe06348189af32c              # double 0.51211933904378304
	.quad	0x3f93f975bd25eee0              # double 0.019506301564873207
	.quad	0x3fafc28825d77da0              # double 0.062031035060267969
	.quad	0x3fe9d134873c2422              # double 0.80678774273940612
	.quad	0x3fe0800846aafe1a              # double 0.51562894632656087
	.quad	0x3fc72e05ad70761c              # double 0.18109198540416649
	.quad	0x3fe153145aa308ec              # double 0.54139154150496216
	.quad	0x3fd39ddc2fa4fed0              # double 0.30651001599106298
	.quad	0x3fdce8d48e4d46de              # double 0.45171083351770658
	.quad	0x3fe96ca991bef4c0              # double 0.79451445070267113
	.quad	0x3fee09ecbadb3bbe              # double 0.93871151442896639
	.quad	0x3fe50e39e74b3635              # double 0.65798659491128453
	.quad	0x3fcfee05ae96f004              # double 0.24945136093981557
	.quad	0x3f9b092a173e4d00              # double 0.026402146977102525
	.quad	0x3fd41cf893cb11d0              # double 0.31426824982579848
	.quad	0x3fc19efc49ae379c              # double 0.13766435239489005
	.quad	0x3fb497bad5c51f90              # double 0.080440213384575409
	.quad	0x3fcace58defab498              # double 0.2094222153440668
	.quad	0x3fdeda0b9574c6dc              # double 0.48205842585876524
	.quad	0x3fe1044a8004e39c              # double 0.53177380565385901
	.quad	0x3fed87211d704cc2              # double 0.92274528264751887
	.quad	0x3fcb4f6f0f91f1d8              # double 0.21336162815340631
	.quad	0x3fdfec09ab2bc142              # double 0.49878160205755162
	.quad	0x3fe0d8793894404c              # double 0.52642499018294009
	.quad	0x3fe144d1a39adc6d              # double 0.53965074495398613
	.quad	0x3fa479d2e6e842b0              # double 0.039991942107126532
	.quad	0x3faeb1d6d36607a0              # double 0.059950555139052897
	.quad	0x3fee119ced8925dd              # double 0.93965002435396239
	.quad	0x3fd57e2d1aaaded4              # double 0.33582618335956949
	.quad	0x3fd0de91b66a0d26              # double 0.26358454526799091
	.quad	0x3fee1396cc3a4715              # double 0.93989124191486673
	.quad	0x3fd37db93e01b902              # double 0.30454855971665051
	.quad	0x3fe253f12119515d              # double 0.5727468153441283
	.quad	0x3fd131f252e9c9ea              # double 0.26867349717136213
	.quad	0x3fe4acf94f60c976              # double 0.64611497405557716
	.quad	0x3feccb383461584c              # double 0.89980707388418457
	.quad	0x3fe990efdfa93236              # double 0.79894250568174274
	.quad	0x3fe70b1832feef45              # double 0.72010431251644802
	.quad	0x3fd07d5d8198d5e6              # double 0.25765168815573103
	.quad	0x3fc72eeae2c5bc3c              # double 0.18111930916663421
	.quad	0x3fd2f703ebaff8c0              # double 0.29632661835047358
	.quad	0x3fe9967ea1637fa4              # double 0.79962092896675018
	.quad	0x3fe80b3d47364a51              # double 0.7513719931469699
	.quad	0x3fee4a0b850f5281              # double 0.94653869617702935
	.quad	0x3fd7442d98f8e192              # double 0.3635362619275152
	.quad	0x3fb9c505bbf33ba0              # double 0.10066257322908578
	.quad	0x3fe60d07fab98ca7              # double 0.68909071893394447
	.quad	0x3fecbd9a3e86d201              # double 0.89814483844980952
	.quad	0x3fe8613c26aa0017              # double 0.76186950255942321
	.quad	0x3fe3efb10cf025e7              # double 0.62300922896355082
	.quad	0x3fd42235219f5dfe              # double 0.31458786281061168
	.quad	0x3f876b0d66852640              # double 0.01143465489498674
	.quad	0x3fd05432d7ae36c6              # double 0.25513907492209531
	.quad	0x3fe028c5e8ffcbb5              # double 0.50497718341499953
	.quad	0x3fe6044d93f10f28              # double 0.68802527327395513
	.quad	0x3fd0789a1e511a96              # double 0.25736096344591297
	.quad	0x3fdc3e70e1d346aa              # double 0.44131109288455639
	.quad	0x3fc4ccb47011b39c              # double 0.16249709579588234
	.quad	0x3fe0cb33bc6dfe1f              # double 0.52480494311015835
	.quad	0x3fed49adf37cc5f4              # double 0.91524407917148531
	.quad	0x3fbd2ea0b0d08790              # double 0.11399273220788886
	.quad	0x3fd528ef73ff5d70              # double 0.33062349632151378
	.quad	0x3feca8b64f3e2de1              # double 0.89559474446417309
	.quad	0x3fd3d63cb24975bc              # double 0.30995099459490993
	.quad	0x3fd4c87745763b3a              # double 0.32473546775229389
	.quad	0x3fe01d935f6574cb              # double 0.50361031181423621
	.quad	0x3fa660a4cca77220              # double 0.043706083280742769
	.quad	0x3fe75784f5f4f761              # double 0.72943351782280896
	.quad	0x3feb58a5d87e6143              # double 0.85457126888199075
	.quad	0x3fe25958f3b66eb6              # double 0.57340667343256402
	.quad	0x3fe9cd40f26cdd45              # double 0.80630538319284339
	.quad	0x3fd6f0900101b794              # double 0.35843277071295998
	.quad	0x3fda4f77f97cf992              # double 0.41110038150864014
	.quad	0x3fb62bd50f223228              # double 0.086606327242585324
	.quad	0x3fced2de139d4a48              # double 0.24081016500220387
	.quad	0x3fec2dda0d9fc4a5              # double 0.88059713993984146
	.quad	0x3fc48316eaa61b24              # double 0.16025053460563143
	.quad	0x3fe678f8f4606134              # double 0.7022671483019054
	.quad	0x3fe5955bdbb059f8              # double 0.67448227794630977
	.quad	0x3fd45be95a497190              # double 0.31810983483389865
	.quad	0x3fa456ca86460f40              # double 0.039724663630322343
	.quad	0x3fed710913224c87              # double 0.92004827248673926
	.quad	0x3fa9c1bf7ffbbdb0              # double 0.05030630528733171
	.quad	0x3fea4c26fe205764              # double 0.82179593690919405
	.quad	0x3fdad158537a3bce              # double 0.41902740623566792
	.quad	0x3fe87505f90ad822              # double 0.76428507462583561
	.quad	0x3fb9d4e3ce1f8f98              # double 0.10090469152743109
	.quad	0x3fe454717ba28c94              # double 0.63530801913693091
	.quad	0x3fd07589a02820e2              # double 0.2571739257841853
	.quad	0x3fe1a128cd9cd648              # double 0.55092277678222334
	.quad	0x3fd4bd8362735088              # double 0.3240669690542366
	.quad	0x3fd60dbbc3a4b28e              # double 0.34458822351260998
	.quad	0x3fe90a8bfc3b1922              # double 0.78253745330656366
	.quad	0x3fb9716d2eb2b728              # double 0.099387000943093384
	.quad	0x3fbb11500c87e630              # double 0.10573292070321183
	.quad	0x3fb328c34af29150              # double 0.074840741918312803
	.quad	0x3f8b837c5d36b140              # double 0.013434383005766493
	.quad	0x3fce6eb9a8fe8760              # double 0.23775406600639837
	.quad	0x3fc7844b6e525e90              # double 0.18372481238178695
	.quad	0x3fb3392c4ff2b888              # double 0.07509114219530677
	.quad	0x3fef61d9484c906c              # double 0.98069442864335831
	.quad	0x3fc41be919794df4              # double 0.15710176223602412
	.quad	0x3fe1eae5ecba9234              # double 0.55992408977596719
	.quad	0x3fe270cb6d1ac1c0              # double 0.5762688761661181
	.quad	0x3fea6d666ed38f1f              # double 0.82585450788289794
	.quad	0x3fb115deabc7a590              # double 0.066739956797070343
	.quad	0x3fb850101995aae8              # double 0.094971662756204389
	.quad	0x3febe5324a726db7              # double 0.87172808208872865
	.quad	0x3fe9b9144c9d9cb7              # double 0.80384268726347485
	.quad	0x3fe8d43febb13db5              # double 0.77590938600217518
	.quad	0x3fcb45f0aa35615c              # double 0.21307190237963425
	.quad	0x3fdc686b58264992              # double 0.44387324913363913
	.quad	0x3fe04b0d35d8d797              # double 0.50916157261848383
	.quad	0x3fe701b89d674609              # double 0.71896010153631196
	.quad	0x3fe3b016c8ce0179              # double 0.61524523944539944
	.quad	0x3fdc29c72459f51e              # double 0.44004992055836734
	.quad	0x3fec057c1e088bbb              # double 0.8756695353116507
	.quad	0x3fe2c58b96bfcf49              # double 0.58661441271986192
	.quad	0x3fea63203ad13ea1              # double 0.82460032928243632
	.quad	0x3fe1e043dfd8c4e4              # double 0.5586261150366707
	.quad	0x3fc2afce0318d9c4              # double 0.14599013472770939
	.quad	0x3fed648ac1895599              # double 0.91852319526758486
	.quad	0x3fd5f06985edfb52              # double 0.34279859618248054
	.quad	0x3febf402a321c293              # double 0.87353641378111246
	.quad	0x3fea8299e0c0af29              # double 0.82844251534468072
	.quad	0x3fb4cb52663d64a8              # double 0.081227445565121514
	.quad	0x3fd32b59fa77df9a              # double 0.29952096423903074
	.quad	0x3feeb42b9ed56a3c              # double 0.95949345609853464
	.quad	0x3fd6eb229f918dbe              # double 0.35810151656025002
	.quad	0x3fd7a52f82653fee              # double 0.36945712789474683
	.quad	0x3fdfdcb089d6907e              # double 0.49784482441669542
	.quad	0x3fed77f82c125a15              # double 0.92089470489264846
	.quad	0x3fe61e3b6b99789b              # double 0.69119044318701428
	.quad	0x3fe2f2a652a9bef8              # double 0.59212032456522845
	.quad	0x3fe2be314b4a7be7              # double 0.58571686463608053
	.quad	0x3fe7ed1f5d764e3f              # double 0.74769562010119006
	.quad	0x3fcbc61f73710c6c              # double 0.21698372971340818
	.quad	0x3fb8db238128c028              # double 0.097093791039470134
	.quad	0x3fe9a38204e50e88              # double 0.8012094588852543
	.quad	0x3fd6ea2972398ff6              # double 0.35804210810442727
	.quad	0x3fc978a59e1db6cc              # double 0.19899435253630882
	.quad	0x3fe2bfc831db578d              # double 0.585910889984676
	.quad	0x3fb068e431a83b30              # double 0.064100515483215714
	.quad	0x3fd3ce0881539bd2              # double 0.30945026998091152
	.quad	0x3fc5b35406132544              # double 0.16953516289349058
	.quad	0x3fc8c1d20fb09edc              # double 0.19341493383512087
	.quad	0x3fe04a7f2ca32fc8              # double 0.50909384458781748
	.quad	0x3fe29e1f562d6f5c              # double 0.58180205184497025
	.quad	0x3fc7dec389858154              # double 0.18648571219365329
	.quad	0x3fe21d9fab3afddf              # double 0.56611617511219581
	.quad	0x3fe362c053a93c0e              # double 0.60580459919026608
	.quad	0x3fe9efae0f8aa292              # double 0.81050780330140726
	.quad	0x3fb2eb9c27721b68              # double 0.073907622938447326
	.quad	0x3fd85391e0e5e1b0              # double 0.3801006981152808
	.quad	0x3fb3c981412574e8              # double 0.077293470768797001
	.quad	0x3fda07cb84d8e33e              # double 0.40672576878892019
	.quad	0x3fd27b56ee3ee01e              # double 0.28877805010006508
	.quad	0x3fe4233ad7083cbe              # double 0.62930051802131692
	.quad	0x3fd3c18f3fc5b10a              # double 0.30868893840558143
	.quad	0x3fe244aa00582abf              # double 0.57088184420839372
	.quad	0x3fe164179fb8fc03              # double 0.5434682960111562
	.quad	0x3fe4c09afce7ae7a              # double 0.64851140399464602
	.quad	0x3fa14f884e0a5a60              # double 0.033809909368916591
	.quad	0x3fefb9096534abcf              # double 0.99133748785731679
	.quad	0x3fe249cbf540c268              # double 0.57150838757486344
	.quad	0x3fddffd18c46b380              # double 0.46873892496915204
	.quad	0x3fb462d9371cd448              # double 0.079633308367946687
	.quad	0x3fcba93c9c2d8fb0              # double 0.21610219598653435
	.quad	0x3f9297f151b60b80              # double 0.018157740223169849
	.quad	0x3fe3e832e5cd06e0              # double 0.62209458239541604
	.quad	0x3fe5468e52b3baec              # double 0.66486278679607613
	.quad	0x3fee3b9ec31663cd              # double 0.94477785208720777
	.quad	0x3fb05adf7624c288              # double 0.063886610358858786
	.quad	0x3fe0d38239d42fb6              # double 0.52581893248269895
	.quad	0x3fd452b24424cd50              # double 0.31754738478340006
	.quad	0x3f9f5681984bef20              # double 0.030603432579467627
	.quad	0x3fe4123ad5fd4a34              # double 0.62722532076651882
	.quad	0x3fe534e332feb4f7              # double 0.66270599327040614
	.quad	0x3fd32d2d08e75826              # double 0.29963231915951594
	.quad	0x3feb3e2033e0b453              # double 0.85133371479390474
	.quad	0x3fece86e47270f30              # double 0.90337289711940194
	.quad	0x3fd1e940a436cf86              # double 0.27986160313161468
	.quad	0x3fe27e7061fb2014              # double 0.5779344476404753
	.quad	0x3fec96cf0f860583              # double 0.89340928108156026
	.quad	0x3febd8f9a55ac2b1              # double 0.87023622794921185
	.quad	0x3fec934ad08d6211              # double 0.89298001034609531
	.quad	0x3febfdb15964d36f              # double 0.8747183557485253
	.quad	0x3fee4f6bff3fae74              # double 0.94719505170128437
	.quad	0x3faf39b4cbb07b10              # double 0.060987138618875503
	.quad	0x3fe3802c86d41d57              # double 0.60939623197274784
	.quad	0x3feea630ad26efaa              # double 0.95778688257950262
	.quad	0x3f5ca329edc6f800              # double 0.0017478856526476072
	.quad	0x3fe2f97e637585ce              # double 0.59295577455139337
	.quad	0x3fe07c6c2983196b              # double 0.51518829448540993
	.quad	0x3fbe7571076f3960              # double 0.11897951537614437
	.quad	0x3feeb969f6ae4114              # double 0.96013353519268429
	.quad	0x3fe7f41bac16d0df              # double 0.74854835139424469
	.quad	0x3fcabd529ae2a360              # double 0.20890266955145886
	.quad	0x3fe6c98402ef9d86              # double 0.71209908078610407
	.quad	0x3fb0b3d661971748              # double 0.06524410135815828
	.quad	0x3fe812860e3b45b5              # double 0.752261188312494
	.quad	0x3fb4b582e39f9c70              # double 0.080894642421854845
	.quad	0x3fe180b93627d708              # double 0.54696331574697954
	.quad	0x3fd0b160ddbb387c              # double 0.26082631734323747
	.quad	0x3fe86cd4537baddb              # double 0.7632848387269705
	.quad	0x3fdbd9977635f3b6              # double 0.43515574020403436
	.quad	0x3fd029169c91a628              # double 0.25250783243118002
	.quad	0x3fc23bd1ded88244              # double 0.1424505556215242
	.quad	0x3fd0daa2cae52f54              # double 0.26334447683324425
	.quad	0x3feb655ae8a94ddb              # double 0.85612245027226253
	.quad	0x3fecca27b891f993              # double 0.89967714356298456
	.quad	0x3fe88eba992c291c              # double 0.76742296139244414
	.quad	0x3fc4db93de4c4210              # double 0.16295097689045734
	.quad	0x3fe3aebe538accb7              # double 0.61508098904450648
	.quad	0x3fede6d73f7b6870              # double 0.93442881010856915
	.quad	0x3fea8dad26153e37              # double 0.82979447782594817
	.quad	0x3fd7983b1ba5c514              # double 0.36866643619494366
	.quad	0x3fc1c23aae24c42c              # double 0.13873990538698544
	.quad	0x3fe5290200022b7c              # double 0.66125583650260422
	.quad	0x3fe9f2516fce0d14              # double 0.81082984768764498
	.quad	0x3fe3d632284e481d              # double 0.6198969638082904
	.quad	0x3fb6551c3409fad8              # double 0.087236178116636309
	.quad	0x3fd58ec26e98e38c              # double 0.33683834839353533
	.quad	0x3fc3eec7f612a3ec              # double 0.15572452082895383
	.quad	0x3fec405d0bc8e30a              # double 0.88285686780645389
	.quad	0x3fe4c418a86bf02f              # double 0.64893753905153584
	.quad	0x3fcff8972afe20fc              # double 0.24977387999775391
	.quad	0x3fec50521abb027d              # double 0.88480477543642133
	.quad	0x3fe1449e5e75b029              # double 0.53962629746593394
	.quad	0x3fd517eac2a67062              # double 0.32958477982334078
	.quad	0x3feeaf3de8c2fafd              # double 0.9588918253064943
	.quad	0x3fe3f28f9f78887a              # double 0.62335950037619559
	.quad	0x3fe3b62cd595db32              # double 0.61598817554372531
	.quad	0x3fec8c00cd719b22              # double 0.89209022641884794
	.quad	0x3fe1aea30529331c              # double 0.55256796844477973
	.quad	0x3fe8b0520b9851b5              # double 0.77152349724433711
	.quad	0x3fb10bea84e75368              # double 0.066588075110599498
	.quad	0x3fd9efa44e6274c8              # double 0.40525157599206496
	.quad	0x3fc1b89ae7889e70              # double 0.13844620042185651
	.quad	0x3fdb24086bad696a              # double 0.42407427325601665
	.quad	0x3fdb2c0494b9c938              # double 0.42456163906094302
	.quad	0x3fe626fc5b1f0377              # double 0.69225900456522893
	.quad	0x3fcba0916d5df164              # double 0.21583764877494638
	.quad	0x3fdc96cb2df6cf3e              # double 0.44670371521646135
	.quad	0x3fd6a7d7a7b2d22e              # double 0.35399428726967386
	.quad	0x3fe28cb098793e13              # double 0.57967405109406156
	.quad	0x3fcaf436473885cc              # double 0.21057775952890123
	.quad	0x3f81200aea885340              # double 0.0083618977378506764
	.quad	0x3fe56d0d1cc67e1d              # double 0.66956191654384478
	.quad	0x3fe844576bf37edd              # double 0.75834246715745801
	.quad	0x3fc2082bf34c0674              # double 0.14087437991843255
	.quad	0x3fe93fa8a54b285d              # double 0.78902084621337176
	.quad	0x3fe8d68b2c553353              # double 0.77618940981629192
	.quad	0x3fe19abf6ca5b1cd              # double 0.55014010639347932
	.quad	0x3fefa568bffe8fb2              # double 0.98894155024435393
	.quad	0x3fbe2c9462beaa80              # double 0.11786773119698957
	.quad	0x3fd13e139134e98c              # double 0.26941384487477005
	.quad	0x3fbf64eb0c347098              # double 0.12263363883943368
	.quad	0x3fcfe7c403c67fa8              # double 0.24926042732567777
	.quad	0x3fe54d3747fc82b9              # double 0.66567577419126345
	.quad	0x3fda4367a542ceb6              # double 0.41036406649366641
	.quad	0x3fb51b53191613f0              # double 0.082448190331049664
	.quad	0x3febdfded07d0c64              # double 0.87107792587665899
	.quad	0x3feb1246be5aba33              # double 0.84598099878878086
	.quad	0x3fad20bf9d58f2c0              # double 0.056890476186230554
	.quad	0x3fe457fb57412c60              # double 0.63573996583853543
	.quad	0x3fdb682b2df45c9e              # double 0.42823295104740022
	.quad	0x3fd2f534bbefc8ee              # double 0.29621618607701705
	.quad	0x3fd1664adff9379c              # double 0.27186843750393463
	.quad	0x3fdac98f8a95322e              # double 0.41855228932834876
	.quad	0x3fe23ce0f9c4bdd8              # double 0.56993149550356303
	.quad	0x3f8eccb077104440              # double 0.015038851388483931
	.quad	0x3fb482b5fcff6730              # double 0.080119489924439291
	.quad	0x3feaaf568e0b1205              # double 0.83390357725926434
	.quad	0x3fe3598cef2e6fc4              # double 0.60468146052470972
	.quad	0x3fe0b2e68b676077              # double 0.52183844783122779
	.quad	0x3fe635be9a51971a              # double 0.69406061306355871
	.quad	0x3feb2e50044b30ac              # double 0.849403389345317
	.quad	0x3fb0b08bbda625d0              # double 0.065193876076725887
	.quad	0x3fe9a81d3b4e6310              # double 0.80177175124399191
	.quad	0x3fe504ed6bc6aebc              # double 0.65685149240513097
	.quad	0x3fc734e53a5bb594              # double 0.18130174016498002
	.quad	0x3fd0b9752037559e              # double 0.2613194288836328
	.quad	0x3fe436617b0b60c3              # double 0.63163827926748473
	.quad	0x3fe698cef07f7c10              # double 0.70615336391699834
	.quad	0x3fcb71b784e5ba68              # double 0.21440786351327579
	.quad	0x3fee40321096b9d3              # double 0.94533637275690763
	.quad	0x3fd8d530df04f4d0              # double 0.38801214007601192
	.quad	0x3fe168e973e650b6              # double 0.54405663143781768
	.quad	0x3feb11c0f973474b              # double 0.84591721268427855
	.quad	0x3fc8d5f96f17c670              # double 0.19402997898537278
	.quad	0x3fe4d52baf47c4bd              # double 0.65102180704538848
	.quad	0x3fe035c8785d8e36              # double 0.50656531819226447
	.quad	0x3fc3526812eb1ec8              # double 0.15095234798194768
	.quad	0x3fc5aafd63850e24              # double 0.16928069457399986
	.quad	0x3f9e3ba0a5750520              # double 0.029524335955334213
	.quad	0x3fd1acc3ddfe6038              # double 0.27616974524562776
	.quad	0x3fe6c884293db666              # double 0.71197708182235142
	.quad	0x3feb660a3fd497a4              # double 0.85620605914003933
	.quad	0x3fdadf474ceb73a0              # double 0.41987783919995003
	.quad	0x3fe5094614b1ba37              # double 0.65738204995961425
	.quad	0x3fe4970a882be5e2              # double 0.64343763919822217
	.quad	0x3fdd1b67929f1294              # double 0.454797642884196
	.quad	0x3fd50fced3b030f4              # double 0.3290898387210881
	.quad	0x3fb139d3c132c518              # double 0.067288622539099285
	.quad	0x3fef28447ff33d6b              # double 0.97366547575249506
	.quad	0x3fec86bdbeaa9e1a              # double 0.89144789924188506
	.quad	0x3fe1f40d7915a286              # double 0.561041580670534
	.quad	0x3febd77384927051              # double 0.87005020039533509
	.quad	0x3fcadf82770d020c              # double 0.2099459725668712
	.quad	0x3fddad9ea458fe88              # double 0.46372190522740953
	.quad	0x3fdfa2de909cf666              # double 0.49431575891853752
	.quad	0x3fe22d5e71687be9              # double 0.56803819799449429
	.quad	0x3fe366006b121868              # double 0.60620137130969187
	.quad	0x3fe27300cb03d0e5              # double 0.57653846408223031
	.quad	0x3fd69bc4b7a0ad70              # double 0.35325735027682637
	.quad	0x3fea82a4c16f4ad1              # double 0.82844770221921682
	.quad	0x3fae710e53c0b660              # double 0.059456298564651844
	.quad	0x3fcda917e5a57794              # double 0.23172281945420237
	.quad	0x3fde7387ea6aa1fa              # double 0.47580144779433875
	.quad	0x3fe335dbf6f0637c              # double 0.60032461385991054
	.quad	0x3fd56b87cff9ed40              # double 0.3346881419199299
	.quad	0x3fe7fdacc07af223              # double 0.74971616357612836
	.quad	0x3feb5f275900333c              # double 0.85536544211354437
	.quad	0x3fee79a7078a0ad3              # double 0.95235015366082576
	.quad	0x3f871c41462ef700              # double 0.011284360842064967
	.quad	0x3fdcd8b4e518a704              # double 0.45072672245679279
	.quad	0x3fef1a64b9ada328              # double 0.97197185769355076
	.quad	0x3fe8ef18bf81fbff              # double 0.77918660549028107
	.quad	0x3fe44845b0b28734              # double 0.63382229338842544
	.quad	0x3f74332ff288f280              # double 0.0049316285081287825
	.quad	0x3fe5657157bcc312              # double 0.6686331475849292
	.quad	0x3fed5518e12a19e8              # double 0.91663784005578197
	.quad	0x3fd148954031ded8              # double 0.27005511540435867
	.quad	0x3fc2dc470d38fc04              # double 0.14734733720430893
	.quad	0x3fe7fabc8c49e77b              # double 0.74935748481878706
	.quad	0x3fee54fe0a0216bd              # double 0.94787504152983326
	.quad	0x3fd9b92351df8534              # double 0.4019249248068093
	.quad	0x3fc4e34549882238              # double 0.16318574991625368
	.quad	0x3fbdaaed1affdaa0              # double 0.11588937672773136
	.quad	0x3fcf4e4ec85f287c              # double 0.24457726272368407
	.quad	0x3fb7fee6ef2b3748              # double 0.093733247176001844
	.quad	0x3fdbeece326925b4              # double 0.43645052836344722
	.quad	0x3f624e9afdaeda00              # double 0.002234747616479682
	.quad	0x3fe6ceef832a29a0              # double 0.71276069276909837
	.quad	0x3fe88c4b3a65843f              # double 0.76712571530891427
	.quad	0x3fd7c098951fc8b4              # double 0.37113012850671656
	.quad	0x3fe36acc53e4689f              # double 0.60678688416671267
	.quad	0x3fd044bda725cd54              # double 0.25419560740484326
	.quad	0x3fee6957c9d7f1f7              # double 0.95035924360814661
	.quad	0x3fe6ea5d5bef9d32              # double 0.7161089702248431
	.quad	0x3fcc1bd640413968              # double 0.21959951531830346
	.quad	0x3fd1883bb4c187b0              # double 0.27394001628828857
	.quad	0x3fdc8f25e24f57d4              # double 0.44623705959872706
	.quad	0x3fe41bd8a8b6e4a6              # double 0.62839920951877981
	.quad	0x3fda9fa294531720              # double 0.41599335179158636
	.quad	0x3fd63ea5a2a46e86              # double 0.347573670225508
	.quad	0x3fdb26788d46f0f2              # double 0.42422307774155776
	.quad	0x3f95d0d5dec4fd40              # double 0.021304456445475184
	.quad	0x3fe03c5a5ee1e3ed              # double 0.50736731082645081
	.quad	0x3fde94325d0c8db8              # double 0.47779521071262421
	.quad	0x3fdd3e34d01ba95a              # double 0.45692177126934086
	.quad	0x3fe2da63cbb05586              # double 0.58915891440362667
	.quad	0x3fd19923e2f804a4              # double 0.27497193493770511
	.quad	0x3fa64b0ca084b930              # double 0.043541330904519504
	.quad	0x3fe2de4fd76971ff              # double 0.58963768074642064
	.quad	0x3fdec2e8493df76c              # double 0.48064620163483229
	.quad	0x3feb141c52dc33c5              # double 0.84620491202951398
	.quad	0x3fe3f19900f46b74              # double 0.62324190317609274
	.quad	0x3fed51d27346feb2              # double 0.91623804583647073
	.quad	0x3fec02abbc382894              # double 0.87532603036494771
	.quad	0x3fe043a4ae1346b1              # double 0.50825723647195364
	.quad	0x3fe3aed7b2ad869e              # double 0.61509308717741695
	.quad	0x3feb197e6f443b30              # double 0.84686204654449249
	.quad	0x3fedae41d97f4953              # double 0.9275216339104112
	.quad	0x3fd7b8ad4ad3221a              # double 0.37064678485015323
	.quad	0x3feabb53a79da20c              # double 0.83536703813030177
	.quad	0x3fe76f258c30f5e9              # double 0.73231770878890956
	.quad	0x3fd026f4172bc2f4              # double 0.25237753165042354
	.quad	0x3fe4e4cbff622055              # double 0.65292930488159107
	.quad	0x3f8af6f1d29a1c40              # double 0.013166321982920448
	.quad	0x3feab73d3fe9d0f9              # double 0.83486807330203228
	.quad	0x3fd9f0f6a6e35824              # double 0.40533224389708011
	.quad	0x3feeb6b82e0cb2b1              # double 0.95980462068617644
	.quad	0x3fd606a20bacf498              # double 0.34415484562107101
	.quad	0x3fe2ec84e1bdd09a              # double 0.59137195673112619
	.quad	0x3fd1e52a6363ff30              # double 0.27961215692629349
	.quad	0x3fe8197b83289741              # double 0.75311065308481073
	.quad	0x3fb7ed1eafd17550              # double 0.093461912083019571
	.quad	0x3fe3aa9623efb8c3              # double 0.61457354563551581
	.quad	0x3fc718bb80871008              # double 0.18044227386246825
	.quad	0x3fdc258f8a5ef47a              # double 0.43979252350602105
	.quad	0x3fe0156a844d783f              # double 0.50261426773409557
	.quad	0x3fae6a5c30b0bab0              # double 0.059405213302274773
	.quad	0x3fed7c5123060fe3              # double 0.92142540779650195
	.quad	0x3fc2280ea48342a0              # double 0.14184744866226584
	.quad	0x3fdff04d32fff514              # double 0.49904184322788692
	.quad	0x3feb137d4401a113              # double 0.8461290672539995
	.quad	0x3fdc7047de2a9ede              # double 0.44435307212778052
	.quad	0x3feb53ad2fbf6112              # double 0.85396441770265796
	.quad	0x3fef771b36770019              # double 0.98328934323945127
	.quad	0x3fe27a39d547ccf0              # double 0.57742015510885203
	.quad	0x3feb02a114c3e756              # double 0.84407095008576039
	.quad	0x3fb6fe2a9496f7a0              # double 0.089815770413194773
	.quad	0x3feda1ffb02d1a78              # double 0.92602524194155844
	.quad	0x3feb528052eb501a              # double 0.8538209552302789
	.quad	0x3fe0411c033d9731              # double 0.50794792778899567
	.quad	0x3fed091d7937ee03              # double 0.90736268687709332
	.quad	0x3fbd6bb00c6734d0              # double 0.11492443373500127
	.quad	0x3fe6c76d50c904e0              # double 0.71184411791196212
	.quad	0x3fb567dc9c1d7030              # double 0.083616054643642412
	.quad	0x3fc5b178754e1fc8              # double 0.1694784710673487
	.quad	0x3fe8d8b355591c9c              # double 0.77645270032452939
	.quad	0x3fd94a3ad35a3c52              # double 0.39515562667742643
	.quad	0x3feabee122f86bf2              # double 0.83580071287303626
	.quad	0x3f8e801e80a2b800              # double 0.014892805386207186
	.quad	0x3fecb0ecc75eeb2f              # double 0.89659727992634497
	.quad	0x3fc985fd8cd05cb8              # double 0.19940156341247017
	.quad	0x3fe71a14d4bf6e07              # double 0.72193376114177077
	.quad	0x3fd03a84099f078e              # double 0.25357151927539057
	.quad	0x3fd641be04fb8204              # double 0.34776258932654991
	.quad	0x3fe8891df7ffcebc              # double 0.76673792302468468
	.quad	0x3fa3f890266010b0              # double 0.039005760845641446
	.quad	0x3fde898ee3687f2e              # double 0.47714588363486399
	.quad	0x3fc2b79f2e18a95c              # double 0.14622869253919191
	.quad	0x3fed2042930d005c              # double 0.910187995155876
	.quad	0x3fe0fc5c022d11e9              # double 0.53080559182177212
	.quad	0x3fecbea2caa51b74              # double 0.89827098445026232
	.quad	0x3fe4d991d2b8cdee              # double 0.65155879170054987
	.quad	0x3fc3feefa6d1a23c              # double 0.15621753354504786
	.quad	0x3fefc185ca8cbf7b              # double 0.99237336693293742
	.quad	0x3fe3be33d2a31903              # double 0.61696807041224166
	.quad	0x3fe707cf98d3f3ea              # double 0.71970348214347024
	.quad	0x3fed403683a3465c              # double 0.91408849440103834
	.quad	0x3fe26be7ca4a434d              # double 0.57567204961569873
	.quad	0x3fea839b17260489              # double 0.8285651638144752
	.quad	0x3feb0b88fce07762              # double 0.8451580943108008
	.quad	0x3fe487e4c347aa6c              # double 0.64158857479681108
	.quad	0x3fed9f3063b622c9              # double 0.92568225359817646
	.quad	0x3fa47d10a27ae1b0              # double 0.040016670068726667
	.quad	0x3fa1790f5a30cf60              # double 0.034126739272692275
	.quad	0x3fe1560780fe74e7              # double 0.54175162500510232
	.quad	0x3fefe92f8fe46e8a              # double 0.99721506217925193
	.quad	0x3fe3d9a9d6f54e7a              # double 0.62032024368313832
	.quad	0x3fe63c07bf368500              # double 0.69482791277201272
	.quad	0x3fd1d57d18e1f30c              # double 0.27865531377737862
	.quad	0x3fd7189a1a0ba532              # double 0.36087658446793391
	.quad	0x3fe8bd5ff44cff6e              # double 0.77311704363817824
	.quad	0x3fd1a8c53f1c17cc              # double 0.27592593348560679
	.quad	0x3fd801e98c6f1ab4              # double 0.37511671747453623
	.quad	0x3fd363d6cf2ac5e4              # double 0.30296869498405798
	.quad	0x3fece061fb1e4ddf              # double 0.90239047094877012
	.quad	0x3fd0411b8be1d85c              # double 0.2539738527333435
	.quad	0x3fd0d37ba1c42602              # double 0.26290789411049797
	.quad	0x3fc6c5d8b014baac              # double 0.17791279409126071
	.quad	0x3fcc64152f9d5798              # double 0.2218042833798648
	.quad	0x3fda8fec45037a24              # double 0.41503435840232528
	.quad	0x3fa8ab97a23230c0              # double 0.048184145497630393
	.quad	0x3fc7c9a8ec4c387c              # double 0.18584167039847788
	.quad	0x3fb58e568a30d3e0              # double 0.084203156221362985
	.quad	0x3fb880542f236df0              # double 0.095708142765424275
	.quad	0x3fef0b4d1425639c              # double 0.97012952742362612
	.quad	0x3fea7ad06887510c              # double 0.82749195495355953
	.quad	0x3fd1a485d1ff202a              # double 0.27566667087058028
	.quad	0x3fe0afef27ddbf95              # double 0.52147634302490309
	.quad	0x3fe4411d46487e02              # double 0.63294852950269864
	.quad	0x3fdd4216b07dd896              # double 0.45715872989183859
	.quad	0x3fe1974bfb037375              # double 0.54971884752340705
	.quad	0x3fc5667010533a74              # double 0.16718865201115174
	.quad	0x3fd37dcc89434022              # double 0.3045531597572354
	.quad	0x3fef706f2a5de25d              # double 0.9824748828387545
	.quad	0x3fd7e9acd7e8ecec              # double 0.37363740048358696
	.quad	0x3fea795e0b031a07              # double 0.82731535101703535
	.quad	0x3fb49bd41596c358              # double 0.080502753515941605
	.quad	0x3fe5a7d7d32543cb              # double 0.67673865546577738
	.quad	0x3fd57eedf5b1133a              # double 0.33587216370897333
	.quad	0x3f98ece11dd7cca0              # double 0.024341123053045366
	.quad	0x3fd8da1afdd109c8              # double 0.38831209933064459
	.quad	0x3fe851744981e6c5              # double 0.75994314534110485
	.quad	0x3faa54df1dff3470              # double 0.051428768550615511
	.quad	0x3fc4d42cc9319110              # double 0.1627250654593202
	.quad	0x3fe68f5ce885786d              # double 0.70500035681085438
	.quad	0x3fcdc85cae6981d0              # double 0.23267706409661892
	.quad	0x3fe3d0a55ee5362e              # double 0.61921947988748172
	.quad	0x3fec98bbeff7533e              # double 0.89364430302030207
	.quad	0x3fe71829c9868936              # double 0.72169961319403941
	.quad	0x3fe67b3f1ccce5e5              # double 0.70254474282336032
	.quad	0x3fed0f59cdd5d3cc              # double 0.90812387659263427
	.quad	0x3fe5dc421aea4536              # double 0.68313699013575646
	.quad	0x3fce3c9125da4a88              # double 0.23622335766102176
	.quad	0x3fe74d5302cbe331              # double 0.72818899675539772
	.quad	0x3feb9ac3d72a1429              # double 0.8626422121457199
	.quad	0x3fdeba19f6a3bb1c              # double 0.48010872922798042
	.quad	0x3fdc332be8ada40a              # double 0.44062326166619015
	.quad	0x3fe59a207f68ee6c              # double 0.6750643242334724
	.quad	0x3fe93ad7cea7d786              # double 0.78843298304012488
	.quad	0x3fce71f06a9168d0              # double 0.23785214618221184
	.quad	0x3fea305fdad41751              # double 0.81840508212983754
	.quad	0x3fe760544dcc6899              # double 0.73050894923223375
	.quad	0x3fe148fa889956e0              # double 0.54015852622498173
	.quad	0x3fe103cabbea7cfe              # double 0.53171288206422651
	.quad	0x3fc0c7477dfc82dc              # double 0.13108152057340916
	.quad	0x3fe4a2d5146fbb7e              # double 0.64487699500556039
	.quad	0x3f78d8b47cbb4280              # double 0.0060660410196794468
	.quad	0x3fde2821d8363f5a              # double 0.4711994754261376
	.quad	0x3fbc9a7ef5a66680              # double 0.11173242089571467
	.quad	0x3fe9c5abfa63e9ca              # double 0.80537985710480453
	.quad	0x3fe1b448d802b0fb              # double 0.55325739087632486
	.quad	0x3febe79c39ac190c              # double 0.87202273620712977
	.quad	0x3fc7692e67c0b860              # double 0.18289737764411296
	.quad	0x3fe5926dbf39ec5e              # double 0.67412459706191519
	.quad	0x3fe4e86988672c57              # double 0.65337063447203547
	.quad	0x3fd70113e9541e12              # double 0.35944078241343036
	.quad	0x3fef1ce35225fbb3              # double 0.9722763637981785
	.quad	0x3fc04c8c39ba6704              # double 0.12733605211979449
	.quad	0x3feb5ab652636255              # double 0.85482326594780977
	.quad	0x3fe628a490873094              # double 0.69246128299848175
	.quad	0x3fe8f6e47a5c6fcb              # double 0.78013824366234397
	.quad	0x3fdbc36d8c29066a              # double 0.4338029736282808
	.quad	0x3fea11b1dedfc431              # double 0.81466001062483973
	.quad	0x3fe1af8973a9376f              # double 0.55267784681357834
	.quad	0x3fe4b1dc0cc86c24              # double 0.64671137329731154
	.quad	0x3fd12c337adc7938              # double 0.26832282064596624
	.quad	0x3fef0f0e87c90c18              # double 0.97058798332762119
	.quad	0x3fe701acf0915e73              # double 0.71895453439624502
	.quad	0x3fe98f8092c6cb2b              # double 0.79876736323635578
	.quad	0x3fead8abe1df2ef1              # double 0.83894914737308401
	.quad	0x3fd7782a73b0bfa6              # double 0.3667093400754261
	.quad	0x3fe72339e6f4f5fe              # double 0.72305007084622708
	.quad	0x3fe6da73a0908169              # double 0.71416646347283319
	.quad	0x3fe332e5e2c37d4a              # double 0.59996313371440491
	.quad	0x3fc550e181a0bbc0              # double 0.16653078870282734
	.quad	0x3feafffe78bf8f39              # double 0.84374927123688004
	.quad	0x3fad27da43c1afb0              # double 0.056944676180904152
	.quad	0x3fdcda7f0bf2cebe              # double 0.45083595434992307
	.quad	0x3fed2008a52b9f43              # double 0.91016037235110792
	.quad	0x3fde2dc93a95941e              # double 0.47154455872652246
	.quad	0x3fc0feaa3e96d050              # double 0.13277175956830201
	.quad	0x3fd58a5eb2d582ac              # double 0.33657042946110027
	.quad	0x3fe2a78d9d721289              # double 0.58295326949208104
	.quad	0x3f8bd7f6d630c500              # double 0.013595512782645702
	.quad	0x3fe0848ffd926e1b              # double 0.516181941278265
	.quad	0x3fdad2afdaf9e46c              # double 0.41910931000126683
	.quad	0x3fed938e4f6f834e              # double 0.92426219477429483
	.quad	0x3fdad57de512013e              # double 0.41928050394200855
	.quad	0x3fe6c46d8d320e05              # double 0.71147801949740652
	.quad	0x3fec73f80090b26e              # double 0.88915634260554355
	.quad	0x3fdb4a1f7734b086              # double 0.42639910355752197
	.quad	0x3fc627223ba5db34              # double 0.17306926643842646
	.quad	0x3fe1307348248562              # double 0.53716434564936955
	.quad	0x3f92d6dfc7a08ac0              # double 0.018397804793617523
	.quad	0x3fd8dd4b8e51a812              # double 0.38850678346955292
	.quad	0x3fe03778a8b786c9              # double 0.50677140190620051
	.quad	0x3feb576284a95960              # double 0.85441709433034063
	.quad	0x3fef9e1cbb431da9              # double 0.98805080961840474
	.quad	0x3fd5520b9bca1920              # double 0.33313265050709795
	.quad	0x3fcf37a770b603e0              # double 0.24388592723337776
	.quad	0x3fd27144d32f9dac              # double 0.28816338180191781
	.quad	0x3fc39aad03d22bfc              # double 0.15315783201762645
	.quad	0x3fe92a8280267dd7              # double 0.78643918065420848
	.quad	0x3fd0e3bf893f303e              # double 0.26390064623842935
	.quad	0x3fcadd87d2306efc              # double 0.20988557589668477
	.quad	0x3fd15ec10cd3bd3a              # double 0.2714083314194401
	.quad	0x3fd3cdc5bea18c6c              # double 0.30943435303033229
	.quad	0x3fe4ef0b1ea86f80              # double 0.65418010700112461
	.quad	0x3fdedf897999f716              # double 0.4823936164392405
	.quad	0x3fe8122d92c07f1d              # double 0.75221899664390757
	.quad	0x3fd83e3cab2d66aa              # double 0.37879864422357434
	.quad	0x3fc2ea7309be3958              # double 0.14777982688651536
	.quad	0x3fc208aac22c7edc              # double 0.14088949662345029
	.quad	0x3fe7c345a99beb00              # double 0.74258692862289877
	.quad	0x3fe082b8a61d66b5              # double 0.51595718807512603
	.quad	0x3fefce524cfc645c              # double 0.9939357284193977
	.quad	0x3fdd10d76d46842e              # double 0.45415292426520437
	.quad	0x3fe743190bbbd8e4              # double 0.7269406537223202
	.quad	0x3fc35ae01341f5dc              # double 0.15121079387965508
	.quad	0x3fc6a5b3b30f307c              # double 0.17693182223445436
	.quad	0x3fa29f25b0399890              # double 0.036370446931685341
	.quad	0x3fe22afde11f0a4c              # double 0.56774801224703131
	.quad	0x3fd5853b551ae918              # double 0.33625682173773574
	.quad	0x3fb14dbead592d98              # double 0.067592542001128186
	.quad	0x3fc56a376f54dde8              # double 0.16730397163495003
	.quad	0x3fb4addf7001dee0              # double 0.080778088422330807
	.quad	0x3fe9e890ad9d0859              # double 0.80963930043095467
	.quad	0x3fe83a78c3e08509              # double 0.75713766343338407
	.quad	0x3fd74ae676c07a9a              # double 0.36394654843199137
	.quad	0x3fe9336745315bd2              # double 0.78752482904644183
	.quad	0x3fb5f79406dc6ba0              # double 0.085808993983319315
	.quad	0x3fe8b59295bffb78              # double 0.77216462371857997
	.quad	0x3fe284469e13ff2c              # double 0.57864695429450341
	.quad	0x3fe1b2b2ceb55701              # double 0.55306377766348203
	.quad	0x3fd42f58c5784a44              # double 0.31538981708687097
	.quad	0x3fe62802037b50cc              # double 0.69238377265949103
	.quad	0x3fcc583d98bb3bac              # double 0.22144288976275328
	.quad	0x3fefa353ee7018c7              # double 0.98868748254678784
	.quad	0x3fbb632419306a08              # double 0.10698152174919795
	.quad	0x3f69db8a6062da00              # double 0.0031564428964785396
	.quad	0x3fd6d6be72bfd006              # double 0.35685692983611295
	.quad	0x3f92b2a8bd3aafa0              # double 0.018259655522953389
	.quad	0x3feb6927c7a98be8              # double 0.85658635136166783
	.quad	0x3fa4b3ad5c346b10              # double 0.040433328156913473
	.quad	0x3fd6e5e6d5edae1a              # double 0.35778208629082686
	.quad	0x3fd46cbffea6d23e              # double 0.31913757198643455
	.quad	0x3f71e7a9d3840180              # double 0.0043713220441080614
	.quad	0x3fb920c335f86160              # double 0.098156166721655946
	.quad	0x3fd8f926ab397dea              # double 0.39020697327757026
	.quad	0x3fe1048265b81d63              # double 0.5318004595473379
	.quad	0x3fef2dd56ca6e1b7              # double 0.97434493275709754
	.quad	0x3fe7ee0f69674e25              # double 0.74781008326175835
	.quad	0x3fe55559bfa1baad              # double 0.6666687720115384
	.quad	0x3fe68f71bf28201f              # double 0.7050102933435517
	.quad	0x3fd54fac66925244              # double 0.33298788086657205
	.quad	0x3fd58ee810aefa0e              # double 0.33684732083557456
	.quad	0x3fedcee7753d5741              # double 0.9315068521343407
	.quad	0x3fbfaa193ef19d20              # double 0.12368924891199073
	.quad	0x3fdf602d5da88fb0              # double 0.49024519106228137
	.quad	0x3fe76227d8761b2b              # double 0.73073189046485731
	.quad	0x3fe90a34f11baded              # double 0.78249594775610165
	.quad	0x3fec5c9a97de1af3              # double 0.88630418454780935
	.quad	0x3fc9ae4532361204              # double 0.20063080741614681
	.quad	0x3fd78a3072e82b34              # double 0.36780940266969542
	.quad	0x3fe8e41fb073ceba              # double 0.77784714187006121
	.quad	0x3fee3346a4d8aad5              # double 0.94375927158884088
	.quad	0x3fd6280ff6c57358              # double 0.34619521235236084
	.quad	0x3fb9789802ff4678              # double 0.099496365291338651
	.quad	0x3fe59316ab3fb1d9              # double 0.67420514533074105
	.quad	0x3fa4e2dd9df29ec0              # double 0.040793347864846563
	.quad	0x3fedd3d085bb7f1b              # double 0.93210626716242773
	.quad	0x3fef5262bbef1c53              # double 0.9788068457209057
	.quad	0x3fd60c026965fc14              # double 0.34448299687204664
	.quad	0x3f9658e88a5433a0              # double 0.02182353348057442
	.quad	0x3fe5bfdcf90056d2              # double 0.67967079766341443
	.quad	0x3fdee7def258334e              # double 0.48290227571924482
	.quad	0x3fe15c2d94bfe27c              # double 0.5425022034897462
	.quad	0x3feefd6378a1ceb0              # double 0.96843122063588361
	.quad	0x3fd6bd3b57815ab8              # double 0.35529979272306944
	.quad	0x3fd91c56e3d474ac              # double 0.39235470055593669
	.quad	0x3feca0f12cb419d5              # double 0.89464625102192008
	.quad	0x3feddefe407bcf84              # double 0.93347084612331387
	.quad	0x3fecd92e5b1b4fe5              # double 0.90151136202120752
	.quad	0x3fe8766ee0f9535b              # double 0.76445716800899832
	.quad	0x3fadf9e1c332a8e0              # double 0.058547072484843588
	.quad	0x3fec3a44db9ab906              # double 0.88211291209680165
	.quad	0x3fe4b2ef1ff82f42              # double 0.64684253925359081
	.quad	0x3fec16945e5ab76c              # double 0.87775629452310743
	.quad	0x3feca2f7f6a40bdb              # double 0.89489362880737688
	.quad	0x3fe13e032e628676              # double 0.53881987628501693
	.quad	0x3fa21296d0ad4ac0              # double 0.035298073743111669
	.quad	0x3fe2ecaada48a8a4              # double 0.59139006265219907
	.quad	0x3fcedd3e0de46850              # double 0.24112678221064465
	.quad	0x3fe5225ec4141794              # double 0.66044557854250963
	.quad	0x3fedda1782cb17cb              # double 0.9328725390012037
	.quad	0x3fea5b01b9c48916              # double 0.82360922129399472
	.quad	0x3fe87350fc749c83              # double 0.76407670314519327
	.quad	0x3fe74ca5211371b3              # double 0.72810608348986816
	.quad	0x3fe0f8a464e57e5c              # double 0.53035182672824588
	.quad	0x3fe0aa09ec656dbe              # double 0.52075668498166983
	.quad	0x3fcfbd9f910ab664              # double 0.24797434408303609
	.quad	0x3fd86fe444765c0c              # double 0.38182932554030979
	.quad	0x3fef0ec6071b1aab              # double 0.97055341136804906
	.quad	0x3febbe7aae5c708c              # double 0.86700185828114362
	.quad	0x3fdf30f7c2ba32c2              # double 0.48736375824300293
	.quad	0x3f91ac60e7aaafa0              # double 0.017259134425941292
	.quad	0x3fe0a4e1a6a8219a              # double 0.52012713003300637
	.quad	0x3fc7d7501b8193d8              # double 0.18625832884859395
	.quad	0x3fe72beef626b065              # double 0.72411296917335888
	.quad	0x3feab2df8a9041df              # double 0.83433510840591996
	.quad	0x3fe0e5b813557219              # double 0.52804187561156646
	.quad	0x3fed2b44e29fb5fe              # double 0.91153187048411133
	.quad	0x3fcc5e0f15b02904              # double 0.22162045058241386
	.quad	0x3fccdec49d2fc6c4              # double 0.22554834056022888
	.quad	0x3fead470e4764ecd              # double 0.83843273755561543
	.quad	0x3fd0b447b604ece2              # double 0.26100342536274301
	.quad	0x3febd0adb3463bba              # double 0.86922345175286542
	.quad	0x3fd5e1a582377ac6              # double 0.34189737049557001
	.quad	0x3fecddd8f7bcb864              # double 0.90208099733514446
	.quad	0x3f8c779c9e17be80              # double 0.013900016378982416
	.quad	0x3fe2e09d185ea49e              # double 0.58991865882594019
	.quad	0x3fdbcd2cf281da40              # double 0.43439792330119431
	.quad	0x3fea2fad344b5a9b              # double 0.81831989492168888
	.quad	0x3fa350d07f433a00              # double 0.037725940260873614
	.quad	0x3fc635652f2a639c              # double 0.17350449374205545
	.quad	0x3fe00870aa6cea97              # double 0.50103028570386499
	.quad	0x3fd851a6820d6ddc              # double 0.37998354626117048
	.quad	0x3fe6bdf2ebe17af3              # double 0.71068712301698012
	.quad	0x3fe897608b6be446              # double 0.76847865324737863
	.quad	0x3fe937735e43bc41              # double 0.78801887904217705
	.quad	0x3fef595972097a0d              # double 0.9796569087300796
	.quad	0x3fe47873cae5d528              # double 0.63970365169976606
	.quad	0x3fcd66b702e716a0              # double 0.22969710962040768
	.quad	0x3fc8332288644820              # double 0.18906051311256622
	.quad	0x3fd3f9c365974b0e              # double 0.31211934014315623
	.quad	0x3fcd1cd604645d20              # double 0.22744250502066965
	.quad	0x3fe55a9c03da0fae              # double 0.66731072189621954
	.quad	0x3fd461da9db5333c              # double 0.3184725322833406
	.quad	0x3fec3936bcf84aca              # double 0.88198410900289415
	.quad	0x3fd3ae129f882a50              # double 0.30749955729757961
	.quad	0x3feb6eb15e81bafe              # double 0.85726231058455915
	.quad	0x3fe4349c52cec567              # double 0.63142219708803971
	.quad	0x3fe7e815c4fd9f68              # double 0.74708069300411939
	.quad	0x3fd6fe9a923107f0              # double 0.35928978230015129
	.quad	0x3fec2b93e895770d              # double 0.88031955172093179
	.quad	0x3fe2cf378287a0a6              # double 0.58779502386189075
	.quad	0x3fe8d27b84414428              # double 0.77569366293949304
	.quad	0x3fb33da7e4ebb310              # double 0.075159543408244156
	.quad	0x3fdf957d3b136004              # double 0.49349909562215566
	.quad	0x3f71134a12077800              # double 0.0041687863708528283
	.quad	0x3fd74d1389d5e3bc              # double 0.36407936535357144
	.quad	0x3fcd63e74d90b2fc              # double 0.22961131369938659
	.quad	0x3fedcb16c930d8ba              # double 0.93104113860206117
	.quad	0x3fc115b685c72234              # double 0.13347512752649637
	.quad	0x3fe048aa75de2997              # double 0.50887034436282164
	.quad	0x3fd2e34af09cdf48              # double 0.29512284753171913
	.quad	0x3fb6594187ec0db0              # double 0.087299438175299171
	.quad	0x3fb9b316aaf5a648              # double 0.10038892434899893
	.quad	0x3fdbd2ce3a8b3fe2              # double 0.43474155156309113
	.quad	0x3fd7ffcdceccbd78              # double 0.37498803324975638
	.quad	0x3fc65112d5e3db3c              # double 0.17434916919565946
	.quad	0x3fdd59a1c16c24aa              # double 0.45859569443616499
	.quad	0x3fe3701a632fad62              # double 0.6074344575148809
	.quad	0x3febf592dfb482f1              # double 0.87372726147085988
	.quad	0x3fef14bcd8ce4c51              # double 0.97128145546811073
	.quad	0x3f8b4837cd675580              # double 0.013321338611528288
	.quad	0x3fd173f3417b99f0              # double 0.27270203966909801
	.quad	0x3fe2e3aabbef6f8a              # double 0.59029137331116144
	.quad	0x3fec27b41643079b              # double 0.87984661434187517
	.quad	0x3fcc1535d1d876e8              # double 0.21939728494992683
	.quad	0x3fe996d398a1b4fc              # double 0.7996614438140166
	.quad	0x3fcd18bedc095318              # double 0.22731767410245918
	.quad	0x3fead2a4d589c936              # double 0.83821336466488705
	.quad	0x3fc283febbdb99f8              # double 0.14465316937203432
	.quad	0x3fe135d162772620              # double 0.53781956893471161
	.quad	0x3fbf3bc02f7521d8              # double 0.12200547369605574
	.quad	0x3fea803d9da81805              # double 0.82815438072498238
	.quad	0x3fbab840cd26ae10              # double 0.10437397965022677
	.quad	0x3fbe708d4b569ca0              # double 0.11890490617098459
	.quad	0x3fe0764b6d0567b9              # double 0.51444026272951426
	.quad	0x3fe36e43907e1dd5              # double 0.60720995160311964
	.quad	0x3fdf3a7d0ce75cbe              # double 0.48794485340244964
	.quad	0x3fe04533486aa694              # double 0.50844730514400505
	.quad	0x3fe1b88317a8811b              # double 0.55377344723459332
	.quad	0x3fde08c3a3d5cb4a              # double 0.46928492545628286
	.quad	0x3fee5cbc153c01e1              # double 0.94882015368790118
	.quad	0x3fe505514559d049              # double 0.6568991045483098
	.quad	0x3fd2d4659793171a              # double 0.2942136745663092
	.quad	0x3fee333e5dca4bd2              # double 0.94375532453920585
	.quad	0x3fd6b52f8a6d2a18              # double 0.35480869787412095
	.quad	0x3faef02f75d8e9c0              # double 0.060426219115885527
	.quad	0x3feec52e86b4d0cb              # double 0.96157003698183396
	.quad	0x3fd57fe0387b1c8e              # double 0.33592992320741011
	.quad	0x3fe27f6f43ea2bef              # double 0.57805598511310829
	.quad	0x3fb9a57e8c8d6450              # double 0.10018149310543945
	.quad	0x3fe02c679638a6fe              # double 0.50542048778626714
	.quad	0x3fd51711dfb58234              # double 0.32953307005485333
	.quad	0x3fc160efd2a810c4              # double 0.13577077661478232
	.quad	0x3fc8dd02d609d9b4              # double 0.19424472285363736
	.quad	0x3fd3e95cf407f8de              # double 0.31111835318723802
	.quad	0x3fd1d8cc18b6e04a              # double 0.27885725415717799
	.quad	0x3fea7d08948edc32              # double 0.82776288047069202
	.quad	0x3feb4ecf8e049333              # double 0.85337045419564672
	.quad	0x3fe54bcab5c3e28b              # double 0.66550193310747952
	.quad	0x3feed5b9a8a093a5              # double 0.96358950552950217
	.quad	0x3fe6abbd770fff70              # double 0.70846436743157248
	.quad	0x3fe2fb99b9634b36              # double 0.59321294983451511
	.quad	0x3fe2ef7745da1e12              # double 0.59173167841885488
	.quad	0x3feeb597abcc8037              # double 0.95966704897364862
	.quad	0x3fe781b57cc1a195              # double 0.73458361021498553
	.quad	0x3fd888865f956452              # double 0.38333281835872868
	.quad	0x3fe67242d47bc3d1              # double 0.70144788265872127
	.quad	0x3fe242d407196f69              # double 0.57065774332612051
	.quad	0x3f768725b698ee00              # double 0.0054999802755975047
	.quad	0x3fd425d3842903a4              # double 0.31480873018522915
	.quad	0x3fed4f31a64aeca5              # double 0.91591722945249343
	.quad	0x3feb38aa58732359              # double 0.85066716456740743
	.quad	0x3fc474be2002bda0              # double 0.15981270373366119
	.quad	0x3feeca1036382a28              # double 0.96216593351102108
	.quad	0x3fd7bcdb84bbf328              # double 0.37090194666216059
	.quad	0x3fe5d45610c84f17              # double 0.68216994550536725
	.quad	0x3fd860cdb00b1d72              # double 0.38090841476192516
	.quad	0x3fdd9ebc0ec77c78              # double 0.46281339114461373
	.quad	0x3fed0437ff403cd0              # double 0.90676498273560391
	.quad	0x3fe4b42e9c279400              # double 0.64699488161988938
	.quad	0x3fe4e1806c37b921              # double 0.65252705703986547
	.quad	0x3fe109f381f44c8f              # double 0.53246474630067719
	.quad	0x3fb14b78c54bc310              # double 0.067557857673602451
	.quad	0x3fe7c41b70453382              # double 0.74268886497303321
	.quad	0x3fdc4f3c583332b6              # double 0.44233616460114022
	.quad	0x3fefde619681a11a              # double 0.9958961429192954
	.quad	0x3fed769e87fc7e56              # double 0.92072989044022324
	.quad	0x3fe86b5ba4e00cb3              # double 0.7631052227228764
	.quad	0x3fd680008491df7e              # double 0.35156262346526279
	.quad	0x3fe5a40d534b77a0              # double 0.67627588528170079
	.quad	0x3fed9ad586e9f7cd              # double 0.92515064573648831
	.quad	0x3fdca936aeb57dce              # double 0.44782797871991142
	.quad	0x3fd58b75566bb80a              # double 0.33663686217812538
	.quad	0x3fe61b6f42d90128              # double 0.69084895187555606
	.quad	0x3fe6db1cdce0a800              # double 0.71424716129445187
	.quad	0x3fe4496099b999b9              # double 0.63395719551481655
	.quad	0x3fdddf6427b37250              # double 0.46675971867606325
	.quad	0x3fd8df5737626690              # double 0.38863163384085286
	.quad	0x3fc97fe0e57fc264              # double 0.19921504217156205
	.quad	0x3fd6a7a6adb37f0a              # double 0.35398261034968981
	.quad	0x3fd321f0c63e178a              # double 0.29894656524299335
	.quad	0x3fd8608921700938              # double 0.38089206948656651
	.quad	0x3fe84bbd087f6483              # double 0.75924541148846492
	.quad	0x3f8cefdc93bcf7c0              # double 0.014129374750719736
	.quad	0x3fe2714b277666ff              # double 0.57632978160401638
	.quad	0x3fe47db6e9eda32d              # double 0.64034600915065243
	.quad	0x3fcc055944f8ad30              # double 0.2189132296347025
	.quad	0x3fd7ed8e8c3f7896              # double 0.37387431808554916
	.quad	0x3fedbf919e2f4d42              # double 0.92963486571753884
	.quad	0x3fd9f5b3afce8b7c              # double 0.40562145393976556
	.quad	0x3fe2b70d8d1e2098              # double 0.58484532892272778
	.quad	0x3fe72160d629ceda              # double 0.72282449558994277
	.quad	0x3fe3bc402be9bb03              # double 0.61672981812247973
	.quad	0x3fef4e0754e3416b              # double 0.97827498035080162
	.quad	0x3fa5342eeb5f62c0              # double 0.041413751823431877
	.quad	0x3fda04badad71e1a              # double 0.40653869029162737
	.quad	0x3f88333e6ff67a80              # double 0.01181648997481699
	.quad	0x3fe1305da4ebdd47              # double 0.53715402804565648
	.quad	0x3fe57da6bf9a74ce              # double 0.67158830091980248
	.quad	0x3fbf882b03f61018              # double 0.12317150923451015
	.quad	0x3fe3ad2e210d752f              # double 0.61489016013698528
	.quad	0x3fc1356af36cd98c              # double 0.13444268117900682
	.quad	0x3fcdb98b2c8040b4              # double 0.23222484276675959
	.quad	0x3fec95c4e14b06d6              # double 0.8932823562865575
	.quad	0x3fc01b99a14895b4              # double 0.12584228873417447
	.quad	0x3fcef9583f5f0480              # double 0.24198439688010254
	.quad	0x3fe919f5e43c7297              # double 0.78441900803916809
	.quad	0x3fe29213c0789e34              # double 0.58033168403648583
	.quad	0x3fe8249ec9b5d0a2              # double 0.75447024723554912
	.quad	0x3fd48dae6af122ea              # double 0.32114754146145563
	.quad	0x3fe8e91bf3f3a32c              # double 0.77845571181123807
	.quad	0x3fe42171a339f4f7              # double 0.62908250694422818
	.quad	0x3fd3f1295c343e82              # double 0.31159433368973322
	.quad	0x3fd107262fca27ec              # double 0.26606135050735591
	.quad	0x3fdd277027b85b56              # double 0.45553211096687585
	.quad	0x3fef8eef8d6a3cac              # double 0.98619821186175249
	.quad	0x3fc4f1b1b43c7df0              # double 0.16362592030144141
	.quad	0x3fd7ca541768e83a              # double 0.37172415052521368
	.quad	0x3fe16c9fd0681962              # double 0.54450979904576635
	.quad	0x3fe0e58c989fbdcc              # double 0.52802114304898273
	.quad	0x3fef79ce8b833a9b              # double 0.9836189961295817
	.quad	0x3fcb70d4f76dbd3c              # double 0.21438085633733717
	.quad	0x3fd841b7b1dd7c02              # double 0.37901108140607687
	.quad	0x3fe9ceeae5d2285e              # double 0.80650849234485711
	.quad	0x3fe97e7b4db105d6              # double 0.79668965505714584
	.quad	0x3fde95c9006e90ca              # double 0.47789216081788466
	.quad	0x3fc6c6b9c8bd4068              # double 0.17793962766382099
	.quad	0x3fd8b2f546dd6454              # double 0.38592273636237917
	.quad	0x3febc33401da2dba              # double 0.8675785099198301
	.quad	0x3fea9c292430959a              # double 0.8315625864822096
	.quad	0x3f8b0981f3de64c0              # double 0.013201728110106337
	.quad	0x3feaeee4145af400              # double 0.84166149116174438
	.quad	0x3fc88178bb2626dc              # double 0.19145115984092953
	.quad	0x3feecd88b47afa32              # double 0.96258960008692029
	.quad	0x3fbdeccfcc091620              # double 0.11689470988593387
	.quad	0x3fe0e36062e575bc              # double 0.52775592151345263
	.quad	0x3fe93fca9135d7b9              # double 0.78903702126876063
	.quad	0x3fd980e773132e5c              # double 0.39849268186364895
	.quad	0x3fd091cabc0a7e26              # double 0.25889843333604501
	.quad	0x3fd917baef3bd5d2              # double 0.39207337725323754
	.quad	0x3fcd64dcfe7300a8              # double 0.22964060234335659
	.quad	0x3fdf16010e80c122              # double 0.48571802536300102
	.quad	0x3fd5845376a6f94e              # double 0.33620153987057655
	.quad	0x3fbb2ac4bc88aa88              # double 0.10612134554745911
	.quad	0x3fb41fdb87271f20              # double 0.078611107345861075
	.quad	0x3fc10c834177a0e0              # double 0.13319435784001765
	.quad	0x3fe543456c67184d              # double 0.66446181461720644
	.quad	0x3fd5fa972c762a54              # double 0.34341983167602064
	.quad	0x3fdf1b233648fe20              # double 0.48603134442598339
	.quad	0x3fe045855e25bb93              # double 0.50848644626772666
	.quad	0x3fb801f8c4d12448              # double 0.093780086565986243
	.quad	0x3fb5912641bf8f70              # double 0.084246054698778882
	.quad	0x3fea0b4760caf8db              # double 0.81387680916648308
	.quad	0x3fecfdbbe9c99dfa              # double 0.9059733930743612
	.quad	0x3fe5d65f535bb630              # double 0.68241850167186691
	.quad	0x3fbbea873e8b8420              # double 0.10904736783005875
	.quad	0x3fe49c9929882470              # double 0.64411600219422205
	.quad	0x3fe2732bc1c15d1d              # double 0.57655895083272279
	.quad	0x3fe1451c62d9028a              # double 0.53968638712110928
	.quad	0x3fd00bcb2e55ef4e              # double 0.25071982884377497
	.quad	0x3fecf202702db1f3              # double 0.90454217824804883
	.quad	0x3fef067ced906250              # double 0.96954199218004966
	.quad	0x3fbcf2fa872bfbb0              # double 0.11308255958645819
	.quad	0x3fe1313036379c1f              # double 0.53725443448354671
	.quad	0x3fbbf7df4d333fc0              # double 0.10925098070879269
	.quad	0x3fa864dfd2460ba0              # double 0.047644609850088004
	.quad	0x3fe126da2cd0ad77              # double 0.5359927058502042
	.quad	0x3fec7e91a2ef8b8b              # double 0.89045030425437355
	.quad	0x3f9f3327e351f3e0              # double 0.030468581437606335
	.quad	0x3fdc843d5d635628              # double 0.44557127113270889
	.quad	0x3fe1791e438c5768              # double 0.54603493874558939
	.quad	0x3fe5f0fcf5e1410e              # double 0.68566749595086818
	.quad	0x3febc65c843478a2              # double 0.86796403714449277
	.quad	0x3fec841108ef1858              # double 0.89112140412249641
	.quad	0x3fd74fcae8547d72              # double 0.36424515427093873
	.quad	0x3fe4393e78034cf5              # double 0.63198779525774162
	.quad	0x3fd28dfaf7b56466              # double 0.28991579237260223
	.quad	0x3fbcd56b23c4a3b0              # double 0.11263150809521849
	.quad	0x3fee72712fc226b8              # double 0.95146998718083519
	.quad	0x3fe2c549600c7950              # double 0.58658283957974255
	.quad	0x3fe818646e4554ee              # double 0.75297757661124165
	.quad	0x3fd9c40be9694f06              # double 0.40259073061064077
	.quad	0x3fe785b95531b0b1              # double 0.73507372512314906
	.quad	0x3fed2f1ec789c01a              # double 0.91200198147089684
	.quad	0x3fed935f29e285f5              # double 0.92423971348415412
	.quad	0x3fc57d1df62765a4              # double 0.16788076895936144
	.quad	0x3fc55a428f1c158c              # double 0.16681701648500924
	.quad	0x3fc696831e172324              # double 0.17646826714760622
	.quad	0x3fe096c07cf93d3f              # double 0.51840233239082767
	.quad	0x3fe97b4149d8d558              # double 0.79629578040354954
	.quad	0x3fe4be88c106bc2e              # double 0.64825856876803356
	.quad	0x3fe2677cd6258839              # double 0.57513276887426124
	.quad	0x3fda8e0a5d31cac6              # double 0.414919463167433
	.quad	0x3fdc2b8f7205007c              # double 0.44015871176453181
	.quad	0x3fe5c3b7ea3421b9              # double 0.68014140837572434
	.quad	0x3fe8aad8eea00e9b              # double 0.77085539442528572
	.quad	0x3fdb710c7c5efff6              # double 0.4287749495088059
	.quad	0x3fe5ea304c9b663e              # double 0.68483748400030442
	.quad	0x3f84f850c30d89c0              # double 0.010239249184171295
	.quad	0x3fdd29be7ad1659a              # double 0.45567285531941482
	.quad	0x3fe191758b82b14b              # double 0.54900624511859897
	.quad	0x3fd94607327f1ef6              # double 0.39489917689614573
	.quad	0x3fb1d5fdef3f72a8              # double 0.069671507749670014
	.quad	0x3fd57e4f5c04d29e              # double 0.33583435045447085
	.quad	0x3fdcd7964047e2d4              # double 0.45065838124677993
	.quad	0x3fc7ee078012eaac              # double 0.18695157769783088
	.quad	0x3fe2ac7a2b032dbf              # double 0.58355434800017025
	.quad	0x3fe9e3d962c65d28              # double 0.80906361858334197
	.quad	0x3fe60a510f3d8d71              # double 0.68875935532234511
	.quad	0x3fe007acaadd9cd1              # double 0.50093682644082993
	.quad	0x3fd77199ab9b8c22              # double 0.36630861052089092
	.quad	0x3fec38c06215c6ec              # double 0.88192767293204843
	.quad	0x3feab314620ebd95              # double 0.83436030532714034
	.quad	0x3fcd719dbb07cd44              # double 0.23002978927943663
	.quad	0x3fe59f577ee54203              # double 0.67570090088162293
	.quad	0x3fd7744e1dc2e4ac              # double 0.3664737024915421
	.quad	0x3fd98149c2958e2e              # double 0.39851612093318323
	.quad	0x3feef25ac8f2a374              # double 0.96708430526369548
	.quad	0x3fac4c7889a77530              # double 0.055270926288111588
	.quad	0x3fb379d1edb2dd70              # double 0.076077576190859863
	.quad	0x3fe57a6b9eb5cc29              # double 0.67119389532161222
	.quad	0x3fd908112c0390ec              # double 0.39111737535701141
	.quad	0x3fdc8c5f8e82c9d8              # double 0.44606770436362586
	.quad	0x3fe7c07cd062be8c              # double 0.74224701595626774
	.quad	0x3fd379ba47f935d4              # double 0.30430466679248735
	.quad	0x3feec423f6aa4463              # double 0.96144293000010028
	.quad	0x3fc3dc922c0b99d8              # double 0.15516879225397306
	.quad	0x3fd3728cb44dbd16              # double 0.30386655433444909
	.quad	0x3fd9aea550d65a46              # double 0.40128453153866805
	.quad	0x3fc13e6495a49758              # double 0.13471658045562651
	.quad	0x3fd28407142decfc              # double 0.289308328348582
	.quad	0x3fb826b6c81507c8              # double 0.094340728614979885
	.quad	0x3fc94fa528ad47e0              # double 0.19774307714629824
	.quad	0x3fe3914655a92763              # double 0.61148373346916818
	.quad	0x3fc169a45d9ef4c0              # double 0.13603643962225043
	.quad	0x3fd9242664d5ede0              # double 0.39283141944153321
	.quad	0x3fe68dddec1ce960              # double 0.70481773486907784
	.quad	0x3fc551fe3ea080a4              # double 0.16656473215062306
	.quad	0x3fdb4a79a15ccd06              # double 0.42642060049111341
	.quad	0x3fed440a088ea889              # double 0.91455556556071926
	.quad	0x3fd8ab099269a808              # double 0.38543929384343345
	.quad	0x3fe9570eac08ef5c              # double 0.79187711334769117
	.quad	0x3febc75c0d851a3d              # double 0.86808588638888973
	.quad	0x3fe76bf328f19f60              # double 0.73192747113078482
	.quad	0x3fc3431d9e362694              # double 0.15048570847675491
	.quad	0x3faa76c6e10e84c0              # double 0.051687445614569949
	.quad	0x3fcb7ba8356a23c4              # double 0.21471121414313477
	.quad	0x3fde2c316c1c2a84              # double 0.47144733007068163
	.quad	0x3fe08bd11959b737              # double 0.51706747962246069
	.quad	0x3fbf5bae8df5f588              # double 0.12249270406569768
	.quad	0x3fe33a592b9c2215              # double 0.60087259786183955
	.quad	0x3fd1efd77673d1ea              # double 0.28026377265567126
	.quad	0x3fe80ab35777526a              # double 0.75130621989462765
	.quad	0x3fe31f4bfd8919ea              # double 0.5975704147211307
	.quad	0x3faeb3e946023b00              # double 0.059966363712296911
	.quad	0x3fcdccb364b3947c              # double 0.23280947129311247
	.quad	0x3fd2bd464cb035ba              # double 0.29280240525335055
	.quad	0x3fe1eab16b8ffd35              # double 0.55989905365269144
	.quad	0x3fc1c134346cde78              # double 0.13870861587360017
	.quad	0x3fed8f6f7d9ca9fc              # double 0.92375921758258483
	.quad	0x3fe57041786ec59a              # double 0.66995309373867262
	.quad	0x3fdc88d4a60219ca              # double 0.44585148059595936
	.quad	0x3fede5c4cce8a214              # double 0.93429794331774695
	.quad	0x3fe29c886fda34bd              # double 0.58160802694478486
	.quad	0x3fd4bb8ef3428a18              # double 0.32394765621043708
	.quad	0x3fea289616628ff2              # double 0.81745437976905877
	.quad	0x3fc3c0b1ade49d3c              # double 0.15431805601949999
	.quad	0x3fcc7f745e8d96ec              # double 0.22263960472917377
	.quad	0x3fe2d69dda319951              # double 0.58869831672635986
	.quad	0x3fe518eafec4fb35              # double 0.65929174194011486
	.quad	0x3fec36e0ee4f3efd              # double 0.8816990522845739
	.quad	0x3fc0428063ef86d4              # double 0.12702946548147642
	.quad	0x3fb97085f52f8ce0              # double 0.099373218879509561
	.quad	0x3fc1d947f19430d0              # double 0.13944339080661061
	.quad	0x3fd1d73ae7ed3120              # double 0.27876160286975171
	.quad	0x3fdd9e1bd915a002              # double 0.46277519416480584
	.quad	0x3fc3583c1a38f684              # double 0.15113021164318152
	.quad	0x3fe5e38444060cbe              # double 0.68402303014627086
	.quad	0x3fe6046943dbc8f4              # double 0.68803847554798248
	.quad	0x3fd7f0c297acf55e              # double 0.3740698319632737
	.quad	0x3fbb58666bb9a6a0              # double 0.10681762819299445
	.quad	0x3fc903e7946950d0              # double 0.19543165918969985
	.quad	0x3fe5c1d121d18663              # double 0.67990929227034902
	.quad	0x3fe0bb44bf191e2a              # double 0.52285992931223757
	.quad	0x3feae1c559e8b543              # double 0.84005992470125823
	.quad	0x3fe19c680dbf2982              # double 0.55034258541972769
	.quad	0x3fc240c6629739c8              # double 0.14260177434921517
	.quad	0x3fe6b4dd7e1a9906              # double 0.70957827214877578
	.quad	0x3fed694d33b3e8a5              # double 0.91910419557759282
	.quad	0x3fd8a86dac0fd0f8              # double 0.38528005412014421
	.quad	0x3fd08c50c94e2504              # double 0.25856418284145399
	.quad	0x3fadf3f868c8b930              # double 0.058501971045517798
	.quad	0x3fe9c93ba880ac03              # double 0.8058145800654305
	.quad	0x3fd7cf7140f7dbca              # double 0.37203627914953741
	.quad	0x3fefd05325fc0614              # double 0.99418027323571545
	.quad	0x3fe9eabb9dae25e5              # double 0.80990391537596607
	.quad	0x3fe14b5ff4f6b649              # double 0.54045102924801214
	.quad	0x3fcd554830cd6fc0              # double 0.22916509993490131
	.quad	0x3feba3891c356b42              # double 0.86371284017091221
	.quad	0x3f994706d56bd180              # double 0.024685007835573369
	.quad	0x3faada812f7140d0              # double 0.052448308030422219
	.quad	0x3fe7d678bc259b41              # double 0.74493061778489544
	.quad	0x3fd583758427d4fe              # double 0.33614862352199271
	.quad	0x3fc7c62404943118              # double 0.18573427413537824
	.quad	0x3fe2ea1c928b239e              # double 0.59107807752399188
	.quad	0x3fea3d822b01ca9a              # double 0.82000835799984206
	.quad	0x3fec893eb2f100f2              # double 0.89175353002067781
	.quad	0x3fe28a20a6c72c40              # double 0.5793612725623305
	.quad	0x3fe486fedbbe2bad              # double 0.64147894781614456
	.quad	0x3fd35a4fe8a7ce74              # double 0.30238721580756267
	.quad	0x3fec5483d3831ec5              # double 0.88531676588987607
	.quad	0x3feac43cd850fe83              # double 0.83645479440015469
	.quad	0x3fee8ac0fc80e7a9              # double 0.95443772618385936
	.quad	0x3fe5e42d1b876bea              # double 0.68410354019885955
	.quad	0x3fead6d49cc97837              # double 0.83872442839106653
	.quad	0x3fd9817e7511ed70              # double 0.39852868492717786
	.quad	0x3fb3974607375f30              # double 0.076527001153746665
	.quad	0x3fdb6e279574e37a              # double 0.42859830470438676
	.quad	0x3fe3b276496854ab              # double 0.61553491914186986
	.quad	0x3fc78a0d59a58208              # double 0.18390051724692591
	.quad	0x3fd254a004bfc006              # double 0.28641510452052932
	.quad	0x3faa2bdc4af57940              # double 0.051115879202131342
	.quad	0x3fa2ea3adf6c0ef0              # double 0.036943282864767002
	.quad	0x3fcdefb1df049874              # double 0.23387740506695176
	.quad	0x3fe859058f9bf55b              # double 0.76086690949129421
	.quad	0x3fef570d8b0da42d              # double 0.97937657507748598
	.quad	0x3fe5a69299797b6d              # double 0.67658357596870433
	.size	.L__constant_100x100xf64, 80000

	.section	".note.GNU-stack","",@progbits
