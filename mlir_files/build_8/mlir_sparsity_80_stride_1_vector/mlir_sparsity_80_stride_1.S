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
	addi	sp, sp, -96
	.cfi_def_cfa_offset 96
	sd	s0, 88(sp)                      # 8-byte Folded Spill
	sd	s1, 80(sp)                      # 8-byte Folded Spill
	sd	s2, 72(sp)                      # 8-byte Folded Spill
	sd	s3, 64(sp)                      # 8-byte Folded Spill
	sd	s4, 56(sp)                      # 8-byte Folded Spill
	sd	s5, 48(sp)                      # 8-byte Folded Spill
	sd	s6, 40(sp)                      # 8-byte Folded Spill
	sd	s7, 32(sp)                      # 8-byte Folded Spill
	sd	s8, 24(sp)                      # 8-byte Folded Spill
	sd	s9, 16(sp)                      # 8-byte Folded Spill
	sd	s10, 8(sp)                      # 8-byte Folded Spill
	.cfi_offset s0, -8
	.cfi_offset s1, -16
	.cfi_offset s2, -24
	.cfi_offset s3, -32
	.cfi_offset s4, -40
	.cfi_offset s5, -48
	.cfi_offset s6, -56
	.cfi_offset s7, -64
	.cfi_offset s8, -72
	.cfi_offset s9, -80
	.cfi_offset s10, -88
	li	t6, 0
	li	t5, 0
	ld	s7, 208(sp)
	ld	a6, 304(sp)
	ld	t0, 296(sp)
	ld	t1, 288(sp)
	ld	t2, 280(sp)
	ld	t3, 272(sp)
	ld	s8, 264(sp)
	ld	t4, 256(sp)
	ld	s3, 128(sp)
	csrr	s10, vlenb
	li	s6, 99
	slli	s9, s10, 3
	li	s2, 800
	vsetvli	a1, zero, e32, m4, ta, ma
	vid.v	v4
	vsetvli	zero, zero, e64, m8, ta, ma
	vmv.v.i	v8, 0
	j	.LBB0_2
.LBB0_1:                                #   in Loop: Header=BB0_2 Depth=1
	addi	t5, t5, 1
	addi	t6, t6, 800
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #       Child Loop BB0_8 Depth 3
	blt	s6, t5, .LBB0_11
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	slli	a1, t5, 3
	add	a1, a1, a2
	lwu	a3, 4(a1)
	lwu	a4, 0(a1)
	lwu	a5, 12(a1)
	lwu	a1, 8(a1)
	slli	a3, a3, 32
	or	s5, a3, a4
	slli	a5, a5, 32
	or	s4, a5, a1
	j	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=2
	addi	s5, s5, 1
.LBB0_5:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_8 Depth 3
	bge	s5, s4, .LBB0_1
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=2
	li	a4, 0
	slli	a1, s5, 3
	add	a3, a7, a1
	lwu	a5, 4(a3)
	lwu	a3, 0(a3)
	add	a1, a1, s3
	fld	fa5, 0(a1)
	slli	a5, a5, 32
	or	a3, a3, a5
	mul	a1, a3, s2
	li	a3, 100
	mv	s1, t6
	j	.LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=3
	vsetvli	zero, zero, e32, m4, ta, ma
	vmslt.vx	v0, v4, a5
	add	a5, s8, a1
	vmv8r.v	v24, v8
	add	s0, s7, s1
	vmv8r.v	v16, v8
	vsetvli	zero, zero, e64, m8, ta, mu
	vle64.v	v24, (a5), v0.t
	vle64.v	v16, (s0), v0.t
	add	a4, a4, s10
	add	a1, a1, s9
	add	s1, s1, s9
	vfmul.vf	v16, v16, fa5
	vfadd.vv	v16, v24, v16
	vse64.v	v16, (a5), v0.t
	sub	a3, a3, s10
.LBB0_8:                                #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	blt	s6, a4, .LBB0_4
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=3
	mv	a5, a3
	blt	a3, s10, .LBB0_7
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=3
	mv	a5, s10
	j	.LBB0_7
.LBB0_11:
	sd	t4, 0(a0)
	sd	s8, 8(a0)
	sd	t3, 16(a0)
	sd	t2, 24(a0)
	sd	t1, 32(a0)
	sd	t0, 40(a0)
	sd	a6, 48(a0)
	ld	s0, 88(sp)                      # 8-byte Folded Reload
	ld	s1, 80(sp)                      # 8-byte Folded Reload
	ld	s2, 72(sp)                      # 8-byte Folded Reload
	ld	s3, 64(sp)                      # 8-byte Folded Reload
	ld	s4, 56(sp)                      # 8-byte Folded Reload
	ld	s5, 48(sp)                      # 8-byte Folded Reload
	ld	s6, 40(sp)                      # 8-byte Folded Reload
	ld	s7, 32(sp)                      # 8-byte Folded Reload
	ld	s8, 24(sp)                      # 8-byte Folded Reload
	ld	s9, 16(sp)                      # 8-byte Folded Reload
	ld	s10, 8(sp)                      # 8-byte Folded Reload
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
	addi	sp, sp, 96
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
	.quad	1999                            # 0x7cf
	.quad	1                               # 0x1
	.quad	100                             # 0x64
.LCPI2_1:
	.quad	0                               # 0x0
	.quad	1999                            # 0x7cf
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
	lui	a7, %hi(.L__constant_1999xindex)
	addi	a7, a7, %lo(.L__constant_1999xindex)
	lui	t0, %hi(.L__constant_1999xf64)
	addi	t0, t0, %lo(.L__constant_1999xf64)
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
	.quad	19                              # 0x13
	.quad	46                              # 0x2e
	.quad	66                              # 0x42
	.quad	85                              # 0x55
	.quad	101                             # 0x65
	.quad	115                             # 0x73
	.quad	135                             # 0x87
	.quad	159                             # 0x9f
	.quad	172                             # 0xac
	.quad	184                             # 0xb8
	.quad	204                             # 0xcc
	.quad	228                             # 0xe4
	.quad	250                             # 0xfa
	.quad	264                             # 0x108
	.quad	284                             # 0x11c
	.quad	307                             # 0x133
	.quad	328                             # 0x148
	.quad	344                             # 0x158
	.quad	363                             # 0x16b
	.quad	379                             # 0x17b
	.quad	395                             # 0x18b
	.quad	417                             # 0x1a1
	.quad	438                             # 0x1b6
	.quad	457                             # 0x1c9
	.quad	484                             # 0x1e4
	.quad	504                             # 0x1f8
	.quad	532                             # 0x214
	.quad	551                             # 0x227
	.quad	570                             # 0x23a
	.quad	592                             # 0x250
	.quad	608                             # 0x260
	.quad	626                             # 0x272
	.quad	648                             # 0x288
	.quad	667                             # 0x29b
	.quad	685                             # 0x2ad
	.quad	706                             # 0x2c2
	.quad	725                             # 0x2d5
	.quad	747                             # 0x2eb
	.quad	767                             # 0x2ff
	.quad	786                             # 0x312
	.quad	807                             # 0x327
	.quad	833                             # 0x341
	.quad	856                             # 0x358
	.quad	879                             # 0x36f
	.quad	898                             # 0x382
	.quad	914                             # 0x392
	.quad	935                             # 0x3a7
	.quad	956                             # 0x3bc
	.quad	969                             # 0x3c9
	.quad	985                             # 0x3d9
	.quad	1004                            # 0x3ec
	.quad	1024                            # 0x400
	.quad	1052                            # 0x41c
	.quad	1071                            # 0x42f
	.quad	1091                            # 0x443
	.quad	1111                            # 0x457
	.quad	1130                            # 0x46a
	.quad	1160                            # 0x488
	.quad	1181                            # 0x49d
	.quad	1197                            # 0x4ad
	.quad	1215                            # 0x4bf
	.quad	1234                            # 0x4d2
	.quad	1254                            # 0x4e6
	.quad	1273                            # 0x4f9
	.quad	1299                            # 0x513
	.quad	1324                            # 0x52c
	.quad	1345                            # 0x541
	.quad	1365                            # 0x555
	.quad	1382                            # 0x566
	.quad	1399                            # 0x577
	.quad	1422                            # 0x58e
	.quad	1440                            # 0x5a0
	.quad	1458                            # 0x5b2
	.quad	1478                            # 0x5c6
	.quad	1501                            # 0x5dd
	.quad	1521                            # 0x5f1
	.quad	1544                            # 0x608
	.quad	1558                            # 0x616
	.quad	1577                            # 0x629
	.quad	1599                            # 0x63f
	.quad	1617                            # 0x651
	.quad	1638                            # 0x666
	.quad	1661                            # 0x67d
	.quad	1674                            # 0x68a
	.quad	1689                            # 0x699
	.quad	1713                            # 0x6b1
	.quad	1734                            # 0x6c6
	.quad	1755                            # 0x6db
	.quad	1772                            # 0x6ec
	.quad	1793                            # 0x701
	.quad	1818                            # 0x71a
	.quad	1836                            # 0x72c
	.quad	1860                            # 0x744
	.quad	1874                            # 0x752
	.quad	1893                            # 0x765
	.quad	1911                            # 0x777
	.quad	1933                            # 0x78d
	.quad	1954                            # 0x7a2
	.quad	1979                            # 0x7bb
	.quad	1999                            # 0x7cf
	.size	.L__constant_101xindex, 808

	.type	.L__constant_1999xindex,@object # @__constant_1999xindex
	.p2align	6, 0x0
.L__constant_1999xindex:
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	13                              # 0xd
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	77                              # 0x4d
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	24                              # 0x18
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	58                              # 0x3a
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	18                              # 0x12
	.quad	26                              # 0x1a
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	32                              # 0x20
	.quad	43                              # 0x2b
	.quad	57                              # 0x39
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	5                               # 0x5
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	70                              # 0x46
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	30                              # 0x1e
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	29                              # 0x1d
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	5                               # 0x5
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	17                              # 0x11
	.quad	27                              # 0x1b
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	35                              # 0x23
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	82                              # 0x52
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	73                              # 0x49
	.quad	82                              # 0x52
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	35                              # 0x23
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	61                              # 0x3d
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	71                              # 0x47
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	46                              # 0x2e
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	88                              # 0x58
	.quad	95                              # 0x5f
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	42                              # 0x2a
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	93                              # 0x5d
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	66                              # 0x42
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	73                              # 0x49
	.quad	89                              # 0x59
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	62                              # 0x3e
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	3                               # 0x3
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	67                              # 0x43
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	6                               # 0x6
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	81                              # 0x51
	.quad	90                              # 0x5a
	.quad	5                               # 0x5
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	84                              # 0x54
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	22                              # 0x16
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	50                              # 0x32
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	61                              # 0x3d
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	96                              # 0x60
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	20                              # 0x14
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	52                              # 0x34
	.quad	62                              # 0x3e
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	47                              # 0x2f
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	2                               # 0x2
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	75                              # 0x4b
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	32                              # 0x20
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	86                              # 0x56
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	56                              # 0x38
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	26                              # 0x1a
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	34                              # 0x22
	.quad	43                              # 0x2b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	24                              # 0x18
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	61                              # 0x3d
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	76                              # 0x4c
	.quad	90                              # 0x5a
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	80                              # 0x50
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	71                              # 0x47
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	21                              # 0x15
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	80                              # 0x50
	.quad	91                              # 0x5b
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	39                              # 0x27
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	64                              # 0x40
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	76                              # 0x4c
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	96                              # 0x60
	.quad	7                               # 0x7
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	48                              # 0x30
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	90                              # 0x5a
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	23                              # 0x17
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	58                              # 0x3a
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	95                              # 0x5f
	.quad	5                               # 0x5
	.quad	19                              # 0x13
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	64                              # 0x40
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	92                              # 0x5c
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	7                               # 0x7
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	64                              # 0x40
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	25                              # 0x19
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	11                              # 0xb
	.quad	26                              # 0x1a
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	90                              # 0x5a
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	97                              # 0x61
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	45                              # 0x2d
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	31                              # 0x1f
	.quad	46                              # 0x2e
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	89                              # 0x59
	.quad	98                              # 0x62
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	26                              # 0x1a
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	94                              # 0x5e
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	60                              # 0x3c
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	9                               # 0x9
	.quad	27                              # 0x1b
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	33                              # 0x21
	.quad	47                              # 0x2f
	.quad	61                              # 0x3d
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	56                              # 0x38
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	94                              # 0x5e
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	69                              # 0x45
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	70                              # 0x46
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.size	.L__constant_1999xindex, 15992

	.type	.L__constant_1999xf64,@object   # @__constant_1999xf64
	.p2align	6, 0x0
.L__constant_1999xf64:
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.size	.L__constant_1999xf64, 15992

	.type	.L__constant_100x100xf64,@object # @__constant_100x100xf64
	.p2align	6, 0x0
.L__constant_100x100xf64:
	.quad	0x3fd78e9da74dd302              # double 0.36807957971841188
	.quad	0x3fe8c3d775edab8d              # double 0.77390645058527385
	.quad	0x3fc1c9c060638b50              # double 0.13896946627127216
	.quad	0x3feae76a9379bef1              # double 0.84074906162092422
	.quad	0x3fe678503bdd8993              # double 0.70218669598061678
	.quad	0x3fc7c6882a4a2a4c              # double 0.18574621262480873
	.quad	0x3fe2be7ce4bbd495              # double 0.58575291323235723
	.quad	0x3fd4757d2b8fb95e              # double 0.3196709561733736
	.quad	0x3fdb36b3f1f10670              # double 0.42521380068874404
	.quad	0x3fe69a97f655ff79              # double 0.70637128937231275
	.quad	0x3fe026d1ce6d7d5b              # double 0.50473871534260739
	.quad	0x3fd7bbb2f4c1c2fa              # double 0.37083124067343898
	.quad	0x3fed8767c4cc73b9              # double 0.92277897298082856
	.quad	0x3fd8d2c0239431d2              # double 0.38786319231510646
	.quad	0x3fc76ac31869bb30              # double 0.18294562046090723
	.quad	0x3fe32d8fce3bd3b4              # double 0.59931173591632225
	.quad	0x3fe0b7f3b7c0f7d5              # double 0.52245508088503334
	.quad	0x3fcf672ba91da570              # double 0.24533601529700944
	.quad	0x3fb307cf0e4609c0              # double 0.074337903008234285
	.quad	0x3fd9eaceef1658de              # double 0.40495656345718867
	.quad	0x3fca8a860959a83c              # double 0.20735240418008682
	.quad	0x3fe8da03a3d3cdff              # double 0.77661306378871575
	.quad	0x3fee7823f391de5b              # double 0.95216558048464195
	.quad	0x3fe0db9fd08bca26              # double 0.52680960399294885
	.quad	0x3fccb1cbda2df910              # double 0.22417591241168866
	.quad	0x3fcbe407560cc14c              # double 0.21789638234759889
	.quad	0x3fa1d52e1bd8ec10              # double 0.034829560183844532
	.quad	0x3fc973eab084a73c              # double 0.19884999865581132
	.quad	0x3fec9be1cef1dee2              # double 0.89402857226283694
	.quad	0x3fe9fda12b6bae45              # double 0.81221064072219262
	.quad	0x3fa4d44330212f70              # double 0.040681933999251352
	.quad	0x3fe6c995b3341ce7              # double 0.71210751534172523
	.quad	0x3fe1a7d96b759c91              # double 0.55173941600959797
	.quad	0x3fe99451e46ec88f              # double 0.79935545554896403
	.quad	0x3fd0e5862e69b9d0              # double 0.26400904209631637
	.quad	0x3fe43a082e49c7d8              # double 0.6320839790407673
	.quad	0x3fe297132b178f27              # double 0.58094175735866294
	.quad	0x3fefef66e9bbcc08              # double 0.99797387744035948
	.quad	0x3fe481c5fed0a992              # double 0.64084148186275258
	.quad	0x3feee46a5a703562              # double 0.96538274444325745
	.quad	0x3fee8dbd1ac37e35              # double 0.95480208613657302
	.quad	0x3fe6db0f59fe9d7d              # double 0.71424071862286065
	.quad	0x3fea0d02f1e32d30              # double 0.81408831828722406
	.quad	0x3fb999179a069f20              # double 0.09999225149533375
	.quad	0x3fd39bebc7b27d1a              # double 0.30639166356736924
	.quad	0x3fe30cda7b2b009e              # double 0.59531902366872536
	.quad	0x3fd07557715e7a0c              # double 0.25716196128078717
	.quad	0x3fe6540a2da708f9              # double 0.69775875965595369
	.quad	0x3fec22b910dc4f0b              # double 0.87923863690454718
	.quad	0x3fddc1e964ec1558              # double 0.46496043067630444
	.quad	0x3fe570edfc57f457              # double 0.67003535543302462
	.quad	0x3fef5fc2c6b14604              # double 0.98043955618976541
	.quad	0x3fda15fdfb286c10              # double 0.40759229209078374
	.quad	0x3fbf2bfa532d2cb0              # double 0.12176479845691079
	.quad	0x3fd161ab66b526ac              # double 0.2715862753872027
	.quad	0x3fc5c0c591a3cdd0              # double 0.16994542704888582
	.quad	0x3fbdda82b93e3470              # double 0.11661545774968984
	.quad	0x3fbca109af843ec0              # double 0.11183224234650435
	.quad	0x3fd8a568277b170e              # double 0.38509563308285599
	.quad	0x3fe62968be0977fa              # double 0.69255482784842504
	.quad	0x3fb609fd61f6c198              # double 0.086089931885686588
	.quad	0x3fdeb88f505f72bc              # double 0.48001463745985595
	.quad	0x3fd4a0bce3a7a9c4              # double 0.32231065971305051
	.quad	0x3fef2ce19efb5132              # double 0.97422867823710235
	.quad	0x3fe98139103f0afb              # double 0.79702428029153738
	.quad	0x3fb6bc6339021328              # double 0.088812066476816498
	.quad	0x3fbc7c1219fd68f8              # double 0.11126816877859713
	.quad	0x3fc7119ead8974e8              # double 0.18022521470530894
	.quad	0x3fe880c30867c56c              # double 0.7657179989020455
	.quad	0x3fe942e687960680              # double 0.78941656572006025
	.quad	0x3fd99dc7799f5196              # double 0.40025507809812078
	.quad	0x3fe9a1a20be090c0              # double 0.8009805900551541
	.quad	0x3fd4a69a81c17efa              # double 0.32266867324322812
	.quad	0x3fead6d0642e7f65              # double 0.83872241560673599
	.quad	0x3fed17ac5f734dc9              # double 0.90913981096894603
	.quad	0x3fe6573fdebae712              # double 0.69815057279558546
	.quad	0x3fe0de11a9b6a6f2              # double 0.52710803172268883
	.quad	0x3fd76e114ce025bc              # double 0.36609299189930389
	.quad	0x3fcf48e6e986e574              # double 0.24441229250605156
	.quad	0x3fe4b79e3c7634bb              # double 0.64741432007726674
	.quad	0x3fe5d7c1e0232a98              # double 0.68258756424741573
	.quad	0x3fd4a8da33aebc9e              # double 0.32280592963338417
	.quad	0x3fd594e45bcc07f2              # double 0.33721264805365003
	.quad	0x3f864c2e259d35c0              # double 0.010887489817515639
	.quad	0x3fd4c12bd2f37180              # double 0.32429023361853382
	.quad	0x3fe998bba4431164              # double 0.79989416201037188
	.quad	0x3fe9c2f8e9c7f58e              # double 0.8050503316914488
	.quad	0x3f8b84bec9d77680              # double 0.013436785254209882
	.quad	0x3fedc252d17e7d17              # double 0.92997113148513477
	.quad	0x3fe7fb73b7f8a6a2              # double 0.74944482738392915
	.quad	0x3fa6e4a231b2de90              # double 0.044713085715042955
	.quad	0x3fea1d299ecb9546              # double 0.81605988516518191
	.quad	0x3fb1ca2322e060d8              # double 0.069490619673504894
	.quad	0x3f9a62c141889180              # double 0.025767345070691672
	.quad	0x3fe9fc9732d23402              # double 0.81208381582257538
	.quad	0x3fef065b18c3427f              # double 0.96952586018058173
	.quad	0x3fe520b40ed0ebc8              # double 0.66024210828560914
	.quad	0x3fe05fa372901a52              # double 0.51167461753432009
	.quad	0x3fb9fb1aa1193ef8              # double 0.10148779328414637
	.quad	0x3fc384ca42e7da24              # double 0.15248993174437075
	.quad	0x3fe939462e9cfe40              # double 0.78824147323752669
	.quad	0x3fe46256c87bf9b4              # double 0.63700427205167509
	.quad	0x3fcbc8322db8126c              # double 0.21704699737906041
	.quad	0x3fcad6b0fc644064              # double 0.2096768600827118
	.quad	0x3fdb85e966aa419c              # double 0.43004832292447204
	.quad	0x3feeac2b795cb8ce              # double 0.95851682380250636
	.quad	0x3fea99a28e302635              # double 0.83125427027807197
	.quad	0x3fe35514b72890cf              # double 0.60413585446488038
	.quad	0x3fd551494edbf266              # double 0.33308632565584728
	.quad	0x3fd3b02bc3c0d396              # double 0.30762762180830217
	.quad	0x3fdfc28aef15a118              # double 0.49624894474119818
	.quad	0x3fd097750a10a59e              # double 0.25924421294129185
	.quad	0x3fdafb6549fa7488              # double 0.42159397339293792
	.quad	0x3fe644af1d115187              # double 0.6958842818954033
	.quad	0x3fd4e43f6d4a8d76              # double 0.32643113778086474
	.quad	0x3fe6cd4d8b3cdc70              # double 0.71256138987418005
	.quad	0x3fbb9143544eebf8              # double 0.10768528755481543
	.quad	0x3fd89b5fe2ff37f0              # double 0.38448331039114603
	.quad	0x3fe22955636f351a              # double 0.56754559918195757
	.quad	0x3fea369a497510ad              # double 0.81916536662222017
	.quad	0x3fbbe5888c515f50              # double 0.10897115159729975
	.quad	0x3fe6ea1ecf93c3ff              # double 0.7160791448824283
	.quad	0x3fb397e0b6696558              # double 0.076536221059901322
	.quad	0x3fde8fb062c699c2              # double 0.47752008100578902
	.quad	0x3fec8dd174572657              # double 0.89231178972949976
	.quad	0x3feab6304c014700              # double 0.83473982662891899
	.quad	0x3fdb166ab43cf198              # double 0.42324321366666018
	.quad	0x3fb74510e4185b38              # double 0.090897613227167606
	.quad	0x3fd2fe97914b2bde              # double 0.29678906620818946
	.quad	0x3fc9b33d9474e5f8              # double 0.20078248738154492
	.quad	0x3fe7c259d4ccc16e              # double 0.74247447550264467
	.quad	0x3fc3140295234a8c              # double 0.14904815942880523
	.quad	0x3fe03d99e75933b9              # double 0.50751967606776482
	.quad	0x3fc662dc20860b04              # double 0.17489196384493522
	.quad	0x3fb9ab62889016b0              # double 0.10027137598089086
	.quad	0x3f9f97efa7f767e0              # double 0.030853027941567635
	.quad	0x3fe94dd27765f715              # double 0.79074977226238963
	.quad	0x3fd7d425e0833f8c              # double 0.37232348370616175
	.quad	0x3fa8ea70cf50c990              # double 0.048663640315129375
	.quad	0x3fd3a4de32533622              # double 0.30693774141841079
	.quad	0x3fc7b0d9a9cfdac8              # double 0.18508454124067542
	.quad	0x3fdf57265ac2a8b4              # double 0.48969420302695288
	.quad	0x3fe35ac833adefcf              # double 0.60483179181709967
	.quad	0x3fe6ed2d7e02f7e6              # double 0.71645235644950556
	.quad	0x3fc08ee69e7ddaf4              # double 0.12936098803375951
	.quad	0x3fd9340895391b9c              # double 0.39380087444845358
	.quad	0x3fe4db9a219d2bd3              # double 0.65180689397072411
	.quad	0x3fc60aeb67e1ecec              # double 0.17220823833836307
	.quad	0x3fd22bb96e1efe2c              # double 0.28391872171411836
	.quad	0x3fefec33ed302dbe              # double 0.99758335424251476
	.quad	0x3fd1da8e144d4f94              # double 0.27896453840843916
	.quad	0x3fd34c516ac330da              # double 0.30153308321020023
	.quad	0x3fb233446eea2c18              # double 0.071094777182381441
	.quad	0x3fe1aa50641e92bf              # double 0.55204028658462068
	.quad	0x3fdb6b30c930b32a              # double 0.42841739318355343
	.quad	0x3fe158f7df3144ab              # double 0.54211038200641803
	.quad	0x3fc2d044e062405c              # double 0.14698086696853607
	.quad	0x3fdc48733fa13654              # double 0.44192200864640552
	.quad	0x3fe4eefb120782f0              # double 0.65417245408397484
	.quad	0x3fee70ba0029bec7              # double 0.95126056701516226
	.quad	0x3fdd41ad2bd631c4              # double 0.45713357239653996
	.quad	0x3fddf261efd1122a              # double 0.46791885776136388
	.quad	0x3fedf48e7ad5fbf9              # double 0.93610309592611352
	.quad	0x3fd691b1bb348428              # double 0.35264247209312538
	.quad	0x3fe58f2a22d84419              # double 0.6737261467516219
	.quad	0x3fe3b04dda2301f2              # double 0.61527149777253798
	.quad	0x3fdbbe562727dda8              # double 0.43349222015191424
	.quad	0x3fe7f0c6b3d83434              # double 0.74814162374389648
	.quad	0x3fed49e10bbb5083              # double 0.9152684430250847
	.quad	0x3fe5f5115e35478f              # double 0.68616550827049305
	.quad	0x3fea03e3b88172f0              # double 0.81297479664098482
	.quad	0x3fe9ad13aaf01a8a              # double 0.80237754236516534
	.quad	0x3fc217cebba812b0              # double 0.14135154879490619
	.quad	0x3fac079516ce2c10              # double 0.054745348962647822
	.quad	0x3febc4005d3c2195              # double 0.86767595491351079
	.quad	0x3fe4e7a21503c774              # double 0.65327552895017371
	.quad	0x3fe67589600e8568              # double 0.70184773217276319
	.quad	0x3fefddefc0ff9e76              # double 0.99584186263105212
	.quad	0x3fe6a591de6f24f8              # double 0.70771115726634459
	.quad	0x3fefe5049e9d13ba              # double 0.9967063043519524
	.quad	0x3feba987366ce47d              # double 0.86444435720399293
	.quad	0x3fe9507b7096a5f3              # double 0.7910744856828259
	.quad	0x3f89bc893cdc0540              # double 0.012566635293753792
	.quad	0x3fc8f8ed8c32cc40              # double 0.19509667726160451
	.quad	0x3fecfb5768a76576              # double 0.90568132820332781
	.quad	0x3fec4537a685dfe6              # double 0.88344938777936188
	.quad	0x3fc414a2e4329d54              # double 0.15687976973024809
	.quad	0x3fee3b54de71cc74              # double 0.9447426170940063
	.quad	0x3fcb9c5088e17e98              # double 0.21570784267077125
	.quad	0x3fa3a6c0a9a7eca0              # double 0.038381596288638464
	.quad	0x3fac7bf21b0f3480              # double 0.055633130839489731
	.quad	0x3fa4b8fd11fb46d0              # double 0.040473850674641931
	.quad	0x3fbce07f21c246d8              # double 0.11280054639999137
	.quad	0x3fef597f3f7ba188              # double 0.97967493437776997
	.quad	0x3fdaf6620cb31240              # double 0.4212880252855804
	.quad	0x3fcc655b38809b14              # double 0.22184314974693875
	.quad	0x3fe6184ba5706174              # double 0.69046575844099189
	.quad	0x3fd90a98f0973dd6              # double 0.39127181525415489
	.quad	0x3fa0933514e21560              # double 0.032373102950297605
	.quad	0x3f97e3d0732896e0              # double 0.023329979923935151
	.quad	0x3fb252f192e32cf0              # double 0.07157811962240479
	.quad	0x3fd9aeb68cfd8234              # double 0.40128864067631587
	.quad	0x3fd07939b1de2c16              # double 0.25739900941761229
	.quad	0x3fe321c1576a2c3f              # double 0.59787051270667024
	.quad	0x3fc1176c46b4a308              # double 0.1335273118250131
	.quad	0x3fe3b71050923dea              # double 0.6160966466576927
	.quad	0x3fe78ba1bcf1f0c9              # double 0.73579489615760807
	.quad	0x3fe44d917f976cc4              # double 0.63446879310813431
	.quad	0x3fe3c650436511d3              # double 0.61795819438025956
	.quad	0x3fc10e629cffc218              # double 0.13325150171250821
	.quad	0x3fd829f0a629ffe0              # double 0.37755981661757509
	.quad	0x3fe19c7a24605c91              # double 0.55035121063964898
	.quad	0x3fdcfd2f2492fcbc              # double 0.45295313426681694
	.quad	0x3feec8473d8c4bc9              # double 0.96194803258037453
	.quad	0x3fefc18db1833eb2              # double 0.99237713499493041
	.quad	0x3fd2ac3ae3d86366              # double 0.29176208735002829
	.quad	0x3fea728cfac37901              # double 0.82648323991068662
	.quad	0x3fcc28b455d5c174              # double 0.21999220076714787
	.quad	0x3fe427a300d7f39d              # double 0.6298384682155419
	.quad	0x3fe4cbf140db6a17              # double 0.64989531199836648
	.quad	0x3feee9549e509fe2              # double 0.96598273201834339
	.quad	0x3fce8650a6cd3b9c              # double 0.23847396988500413
	.quad	0x3fcbe63643006408              # double 0.21796301147040276
	.quad	0x3fa7772463a9cf90              # double 0.045830857435162575
	.quad	0x3fe62e775c9e8cbd              # double 0.69317215051378123
	.quad	0x3fe002e77e9e0d93              # double 0.50035452585182083
	.quad	0x3fec087971da4c24              # double 0.87603447186336724
	.quad	0x3fb734d8c22677a8              # double 0.090650126838652256
	.quad	0x3fd0f0f7099b843a              # double 0.26470733583670703
	.quad	0x3fee54b283294c98              # double 0.94783902757116589
	.quad	0x3f94e1034fe34fa0              # double 0.020389606238338964
	.quad	0x3fc62d9bf41940c0              # double 0.17326688212279429
	.quad	0x3feadb979edb6073              # double 0.83930569674249822
	.quad	0x3fd25838008d0228              # double 0.28663444570341534
	.quad	0x3fc78fe7c586d90c              # double 0.18407914299832162
	.quad	0x3fed48e6c95085e4              # double 0.91514911002394372
	.quad	0x3fddd60799eeeef4              # double 0.46618833572914231
	.quad	0x3fedf8ec32f29636              # double 0.93663606596664439
	.quad	0x3febff137cf344e8              # double 0.8748872223315205
	.quad	0x3fd367a747a0d762              # double 0.30320150370550014
	.quad	0x3fe44fec420b7cf9              # double 0.63475621127500326
	.quad	0x3fd9cc6b23aa70ce              # double 0.40310171587931343
	.quad	0x3fed8a1758a5df4d              # double 0.9231068354992914
	.quad	0x3f9cb5c79e878920              # double 0.028037184763783363
	.quad	0x3fd69f49d389fc76              # double 0.35347219141107844
	.quad	0x3fea8d2b4cc9af5f              # double 0.8297325610887859
	.quad	0x3fe53c628b33377b              # double 0.66362120807183034
	.quad	0x3fe12996cd068bca              # double 0.53632679027611485
	.quad	0x3fef6e3a6615f3a0              # double 0.98220558107970035
	.quad	0x3fda8937e62f6b76              # double 0.41462514380480486
	.quad	0x3fb4bb4516432d50              # double 0.080982511458548289
	.quad	0x3fef39bda37c29d0              # double 0.97579843454996684
	.quad	0x3fb5f248cb34b378              # double 0.085728215800100815
	.quad	0x3fdec7d0ab13c13e              # double 0.48094574648623112
	.quad	0x3fef456da3d30e0a              # double 0.97722513195952954
	.quad	0x3fdfdc6437628db0              # double 0.49782662781418718
	.quad	0x3fe82811b73bee23              # double 0.75489126003180151
	.quad	0x3f5cfdb6d4337a00              # double 0.0017694745482043084
	.quad	0x3fef071a590d8081              # double 0.96961705582727131
	.quad	0x3fefaff00a786916              # double 0.99022676510802188
	.quad	0x3fd0c2252cc54874              # double 0.26184968349583149
	.quad	0x3fc0256415264614              # double 0.12614108116808664
	.quad	0x3fcba5bfc16dd854              # double 0.2159957594373646
	.quad	0x3fe212fb6e7a7da1              # double 0.56481715753391282
	.quad	0x3fe71d75843bee0d              # double 0.72234607531521677
	.quad	0x3fedd9ea13a636ed              # double 0.93285087430714742
	.quad	0x3fb24cd32c961698              # double 0.071484754929850403
	.quad	0x3fd5f80d2036666a              # double 0.34326484819175695
	.quad	0x3fe3437d7c911fe6              # double 0.60198854760619436
	.quad	0x3fe82ff166320b43              # double 0.75585241279655013
	.quad	0x3fe9ec3a8b291ccd              # double 0.81008650951198435
	.quad	0x3fcacea9f2a58344              # double 0.20943188045478156
	.quad	0x3fe99f81a77f8c6c              # double 0.80072100367068577
	.quad	0x3fe7447e93c5acb6              # double 0.72711113797904292
	.quad	0x3fe33cf1e9e86d85              # double 0.60118957219258162
	.quad	0x3fdd511d1c9fe858              # double 0.45807578845381647
	.quad	0x3fe5566e03489dce              # double 0.66680050507869182
	.quad	0x3fecb5a76e44c9fc              # double 0.89717456375939219
	.quad	0x3fb498e1fbe4c860              # double 0.080457805631142687
	.quad	0x3fb33be4be399020              # double 0.075132652703871816
	.quad	0x3fdb395e7b4ed0e4              # double 0.42537653009209309
	.quad	0x3fc3356c27091ffc              # double 0.15006782442128486
	.quad	0x3fddec458447d886              # double 0.46754587095291134
	.quad	0x3fd20b218f4e93dc              # double 0.28192938799685208
	.quad	0x3fe499ece4b76d68              # double 0.64378971739953972
	.quad	0x3fe95c089693a1cd              # double 0.79248456391820243
	.quad	0x3fc7e4dd5863011c              # double 0.18667189422377184
	.quad	0x3fcc558a64253dec              # double 0.22136049165645433
	.quad	0x3faacc56f0d02930              # double 0.052340237518438193
	.quad	0x3fd47ee7c2899480              # double 0.32024568555636534
	.quad	0x3fc49c00eed826e4              # double 0.16101085340806442
	.quad	0x3fef8fe9f9850c41              # double 0.98631762251205412
	.quad	0x3fe7ec845059b85b              # double 0.74762168591929468
	.quad	0x3fd13e11768441b4              # double 0.26941334318055543
	.quad	0x3fcac4daf9e21328              # double 0.20913254929851033
	.quad	0x3fb8d8b132f0f188              # double 0.097056460320294247
	.quad	0x3fe1a3f9ea293152              # double 0.55126662954857353
	.quad	0x3fd4e2c505d6ae56              # double 0.32634091921020081
	.quad	0x3feb6ebacd180083              # double 0.8572668081033189
	.quad	0x3fc91d32e3aa5700              # double 0.19620357624506113
	.quad	0x3fed902cc2ebf9c2              # double 0.92384946890506847
	.quad	0x3fe2a9e868efe358              # double 0.58324070449371401
	.quad	0x3fcf5c11c6889c78              # double 0.24499723619485159
	.quad	0x3fe3eef51a0155c5              # double 0.62291960791724732
	.quad	0x3fce5023f8452620              # double 0.23682069418491469
	.quad	0x3fefab5ae4704a0f              # double 0.98966736428184443
	.quad	0x3fdfc103de8f93d0              # double 0.49615570768793038
	.quad	0x3feb18c29273b516              # double 0.84677246669676509
	.quad	0x3fe5300b3ca6766e              # double 0.66211473317862413
	.quad	0x3fe07fcd20636124              # double 0.51560074163265712
	.quad	0x3fedd0ac988744b6              # double 0.93172292509748078
	.quad	0x3fe31ca367990c92              # double 0.59724588617281626
	.quad	0x3fe942b1c79c3281              # double 0.78939141260487145
	.quad	0x3fec8662c819b471              # double 0.89140452463256115
	.quad	0x3fd31302b001ceb8              # double 0.29803530872525696
	.quad	0x3fb940f73bac2578              # double 0.098647548740833702
	.quad	0x3feba5a5ceffdf8f              # double 0.86397066526022737
	.quad	0x3fdd9145cec5ee3e              # double 0.46199174111072583
	.quad	0x3fe893ac2d895de0              # double 0.76802643674721693
	.quad	0x3fd2839a9a8fcb2a              # double 0.28928246587672624
	.quad	0x3fdefeff81e0de00              # double 0.48431384738384509
	.quad	0x3fe783ac68aa7095              # double 0.73482342188391903
	.quad	0x3fd9f80e8424acf0              # double 0.4057651796781121
	.quad	0x3fe6f5cffc23d39a              # double 0.71750640150149825
	.quad	0x3fe58d4ddd9715d9              # double 0.67349904326755017
	.quad	0x3fc85890744dc374              # double 0.1902027671708556
	.quad	0x3fde466553cd79fc              # double 0.47304661926128211
	.quad	0x3fd23e1be3684534              # double 0.28504082877869341
	.quad	0x3fe3c79f48d28cd2              # double 0.61811794493805849
	.quad	0x3fe5947d0fdf77ee              # double 0.67437604046039978
	.quad	0x3fdc8c295a4067ac              # double 0.44605478109007879
	.quad	0x3fbda5e2b56fa750              # double 0.11581246308892656
	.quad	0x3fec37918ec24d96              # double 0.88178327448479155
	.quad	0x3fe539b9fe05e684              # double 0.66329669584156692
	.quad	0x3fd0e7d2f936b3a0              # double 0.26414942109368589
	.quad	0x3fdd341be615be2e              # double 0.45630547970992807
	.quad	0x3fdd8a4d4684090c              # double 0.46156627546601281
	.quad	0x3fee34c7451efe92              # double 0.94394267559251177
	.quad	0x3f75243e43e75400              # double 0.0051615173565169314
	.quad	0x3fe5d9bbfa7cdb3e              # double 0.68282889293082127
	.quad	0x3fd28d2870037de8              # double 0.28986559809524559
	.quad	0x3fd634c27df95cba              # double 0.34697019865184198
	.quad	0x3fe25d4d2be2dbcf              # double 0.57388933726803681
	.quad	0x3fd0281458c86094              # double 0.25244625730693682
	.quad	0x3fd06b52623de2ba              # double 0.25655040353698733
	.quad	0x3fe3e973a2e6265d              # double 0.62224752250876814
	.quad	0x3fdf257584688aa4              # double 0.48666131906990473
	.quad	0x3fe6cb4aa080f2be              # double 0.71231585834865263
	.quad	0x3fe4a84be44c4636              # double 0.64554400052492755
	.quad	0x3fd12cac47d7d118              # double 0.26835162177964511
	.quad	0x3fef3c8aefa756db              # double 0.97614046866757619
	.quad	0x3feb3189c38437fc              # double 0.8497971361809955
	.quad	0x3feaa1d51705e473              # double 0.8322549295109084
	.quad	0x3fe166abe272c7b3              # double 0.54378313282199142
	.quad	0x3fe76e771fa86aab              # double 0.73223453696421836
	.quad	0x3fe2961b780eb57e              # double 0.58082364510271112
	.quad	0x3fc308ff139d6740              # double 0.14871204812771488
	.quad	0x3feaf617f13a8327              # double 0.84254071345285275
	.quad	0x3fc9444d92a1a2a0              # double 0.19739694270835617
	.quad	0x3fd9370120f1c680              # double 0.39398220269422524
	.quad	0x3fe4dd69d6c0d553              # double 0.65202800697322016
	.quad	0x3fde06dc84d15946              # double 0.46916878672108842
	.quad	0x3fe19f495494eca3              # double 0.55069414634580871
	.quad	0x3fd229a4468a3efa              # double 0.28379160774873891
	.quad	0x3fc7f07ad6250a50              # double 0.18702636200221656
	.quad	0x3feaea8be878a771              # double 0.84113116650153874
	.quad	0x3fe591fbc6ac745a              # double 0.67407025149772015
	.quad	0x3fdcf9f7d8e09b1e              # double 0.4527568452780758
	.quad	0x3f93b3cf318b1ac0              # double 0.019240605734718086
	.quad	0x3fed8d655e0ade70              # double 0.92351024978320417
	.quad	0x3fe80f43c97a8fa1              # double 0.75186337806052361
	.quad	0x3fe3325317c5fc55              # double 0.59989313739050465
	.quad	0x3fd81b10bf35b77a              # double 0.37665194199404761
	.quad	0x3fca369eed4f18ac              # double 0.20479189479209958
	.quad	0x3fd379f34f445dde              # double 0.30431826344417157
	.quad	0x3fec2042081e0c6b              # double 0.87893773637223427
	.quad	0x3fc5cdccd2d32368              # double 0.17034302038362203
	.quad	0x3fe4e5f67d0227f1              # double 0.65307163634974874
	.quad	0x3fe341190447e041              # double 0.60169649921500235
	.quad	0x3fe125a6d45272df              # double 0.53584615201142671
	.quad	0x3fcdc8d61a44b834              # double 0.23269153864515746
	.quad	0x3fd74d9bd671ddac              # double 0.36411186162828346
	.quad	0x3fc2bcf3b7132870              # double 0.14639135779572454
	.quad	0x3fe6517e255c0044              # double 0.69744784638169977
	.quad	0x3fdb3a2a9bec2f5a              # double 0.42542519785705724
	.quad	0x3fee3bcedb242980              # double 0.9448007850744915
	.quad	0x3feb69d98907071d              # double 0.8566711117093494
	.quad	0x3fec13e9c2667705              # double 0.87743080109405069
	.quad	0x3fdf73ba85f25c70              # double 0.4914385135720698
	.quad	0x3fdd5c23e1741d44              # double 0.45874878899526927
	.quad	0x3f915be9a7fd5640              # double 0.016952181700011559
	.quad	0x3fd8e0ecb2e35766              # double 0.38872830838714945
	.quad	0x3fe03f64db409a9a              # double 0.50773852179266332
	.quad	0x3fe99d29bc394678              # double 0.80043493998000681
	.quad	0x3fae4ce2271cd260              # double 0.059180323862538797
	.quad	0x3fe7242ee98480bd              # double 0.72316690071968248
	.quad	0x3fe6d7732367ca85              # double 0.71380001940845317
	.quad	0x3fe72c3f14f2796e              # double 0.72415117350810276
	.quad	0x3fe39b2cae0a9a27              # double 0.61269220344985775
	.quad	0x3fb9e2cff1f78a18              # double 0.10111713082691443
	.quad	0x3fe724777631c496              # double 0.72320149502606301
	.quad	0x3fd6d9d6c393fb6a              # double 0.35704583262843548
	.quad	0x3fd7259fe75780c2              # double 0.3616714247891758
	.quad	0x3fba9c80e51172d8              # double 0.10395055382236806
	.quad	0x3fe090f630c3c633              # double 0.51769551777233003
	.quad	0x3febfcfd4e1ed5c2              # double 0.87463250406170112
	.quad	0x3fe1b3865d0adf4f              # double 0.55316465542180449
	.quad	0x3fbc3bc5cb37f6f0              # double 0.11028705798522842
	.quad	0x3fddf5c3af1f22d6              # double 0.46812526799889775
	.quad	0x3f6aadd920058600              # double 0.0032567253803541529
	.quad	0x3fefcc385ab4d251              # double 0.99367921558457272
	.quad	0x3fe1dd89c93d1258              # double 0.5582932405892036
	.quad	0x3fc300c81366c0e0              # double 0.14846135089238199
	.quad	0x3fdada1452e158b2              # double 0.41956050962233882
	.quad	0x3fe20efe7303eb07              # double 0.56433031524588351
	.quad	0x3f5812c038069c00              # double 0.0014693143021788924
	.quad	0x3fe942ba8ef3b8c9              # double 0.78939559860534658
	.quad	0x3fede8ed907d416f              # double 0.93468359203875007
	.quad	0x3f9db2b64997e600              # double 0.029002044908315483
	.quad	0x3fe51941dbfce5e8              # double 0.65933316198714653
	.quad	0x3fac2912831ae080              # double 0.055000856880213611
	.quad	0x3fd73062b55a1576              # double 0.36232822141786103
	.quad	0x3fd4dc857868fbaa              # double 0.32595955618665562
	.quad	0x3fc29cdb30ff63e0              # double 0.14541187183820536
	.quad	0x3fe18755ae9ca549              # double 0.54777034858595031
	.quad	0x3fb3441ca256f788              # double 0.075258054383963935
	.quad	0x3fee37a9d3139938              # double 0.94429484582796074
	.quad	0x3fc641864e6f5cb4              # double 0.17387465314707173
	.quad	0x3fcb678e70776234              # double 0.2140977906372129
	.quad	0x3fd1c04a32b70f54              # double 0.27736144020695019
	.quad	0x3fe5dad24c1ea9d5              # double 0.68296160571235964
	.quad	0x3fed4a9b9e4816ad              # double 0.9153574077069685
	.quad	0x3fa94425475feae0              # double 0.049348034823159415
	.quad	0x3fe880fcef8f20ea              # double 0.76574560917745527
	.quad	0x3fd36b61878d0bf6              # double 0.30342901456259541
	.quad	0x3fb27ba06cb117c8              # double 0.072198893104626127
	.quad	0x3fe1452ea83a50ea              # double 0.53969509942046767
	.quad	0x3fe196a0ca1760e1              # double 0.54963721724473313
	.quad	0x3fef3ce9bc2d2f31              # double 0.97618567231390873
	.quad	0x3fb3f2c7ee3ba908              # double 0.077923293745389199
	.quad	0x3fed3646c99b988b              # double 0.91287555099985818
	.quad	0x3fe7bf6b24e303bb              # double 0.74211651997040151
	.quad	0x3feaed4ecc412872              # double 0.84146823781453706
	.quad	0x3fe44eef164be2fb              # double 0.63463548998615182
	.quad	0x3fd8bcccc3fdfada              # double 0.38652342929701222
	.quad	0x3fd1aea74b64c024              # double 0.27628500330593142
	.quad	0x3fee639b5b851085              # double 0.94965904116590194
	.quad	0x3fe44eb8c9975a38              # double 0.63460959790501814
	.quad	0x3fc186700bfcadd0              # double 0.13691521249107419
	.quad	0x3fe9b0541ce36c4e              # double 0.80277448313007382
	.quad	0x3facc0647729c300              # double 0.056155337854653098
	.quad	0x3f69627562862000              # double 0.0030987065003422742
	.quad	0x3fe1b84126006afa              # double 0.55374200269883933
	.quad	0x3fca90a036b92f7c              # double 0.20753863021888808
	.quad	0x3fe5fcf9ee09bad4              # double 0.68713089458273169
	.quad	0x3fb9763b17823bb8              # double 0.099460309256968027
	.quad	0x3fe6b9dffa0a2c97              # double 0.7101898082340935
	.quad	0x3fd555e71fa29f06              # double 0.3333680924356347
	.quad	0x3fe4adb5bf72139a              # double 0.64620482818337455
	.quad	0x3f662e94dc5bef00              # double 0.0027077586590830149
	.quad	0x3fe6f2a5290eea42              # double 0.71711977023307605
	.quad	0x3fe1b2c3f2427fd9              # double 0.55307195011482257
	.quad	0x3fd817e45aa4af98              # double 0.37645825244794073
	.quad	0x3fe561edac1a1884              # double 0.66820415128383148
	.quad	0x3fcd973ab8f9036c              # double 0.23117765457029849
	.quad	0x3fb0664d3f96df40              # double 0.064061000847570604
	.quad	0x3fb6dc235d4e6d88              # double 0.089296541480896718
	.quad	0x3fda5c3f2dcd7fa2              # double 0.41188029740259868
	.quad	0x3febb148a6b9f0c7              # double 0.86539108813988086
	.quad	0x3fb72e611df936a0              # double 0.090551442926165127
	.quad	0x3feb51dc59b9d56a              # double 0.85374276661484072
	.quad	0x3fd1fb64b5f48ca6              # double 0.28096883553571173
	.quad	0x3fee057ae8eb64fe              # double 0.93816895954219581
	.quad	0x3fe74809aef2d2c5              # double 0.72754367990145197
	.quad	0x3fdd28250cfca8f4              # double 0.45557523983246928
	.quad	0x3fd06ca27142995c              # double 0.25663052616655135
	.quad	0x3fdcf28a45062f3e              # double 0.45230347386017289
	.quad	0x3fe0421d31194f4e              # double 0.50807056035635312
	.quad	0x3f9e1de94184bd80              # double 0.029410977004940886
	.quad	0x3fdf839550d0aafe              # double 0.49240620510197164
	.quad	0x3fec8e0bbc386b46              # double 0.89233958017153081
	.quad	0x3fa9f75e1877bed0              # double 0.050715389715944803
	.quad	0x3fc402ac0ec768cc              # double 0.15633154603603427
	.quad	0x3fb6e96a43109f78              # double 0.089499131558680278
	.quad	0x3fe1c99c7843db2e              # double 0.55586074342031622
	.quad	0x3fe8fd6979b8f00d              # double 0.78093408368977324
	.quad	0x3fdda04255fb787e              # double 0.46290644070348452
	.quad	0x3fed0e9bded40266              # double 0.9080333091843158
	.quad	0x3fe4af0799416807              # double 0.64636592800820913
	.quad	0x3fefa96485c61d9a              # double 0.98942781570160609
	.quad	0x3fdbbd6cd20378da              # double 0.43343658932816498
	.quad	0x3fe09804e0041807              # double 0.51855701211093297
	.quad	0x3fec22da005e3e31              # double 0.87925434181119588
	.quad	0x3fdade54e3f006ee              # double 0.41982004413158236
	.quad	0x3fe4adf2d24c80ee              # double 0.64623395036690368
	.quad	0x3fdbee3eb55c7ae4              # double 0.43641631804523073
	.quad	0x3fbcbf4621439490              # double 0.11229360878094696
	.quad	0x3fe7877665b16622              # double 0.73528594839007533
	.quad	0x3fe7c18e83ccfb39              # double 0.74237752668691492
	.quad	0x3fec0740cd463634              # double 0.87588539211873817
	.quad	0x3fe28427ddb3cbc1              # double 0.57863229085193535
	.quad	0x3fda8b577468e7fe              # double 0.41475473755019709
	.quad	0x3fe0b62e17073db6              # double 0.52223877427780141
	.quad	0x3fe692be77f3fc27              # double 0.70541308811505565
	.quad	0x3fe277a5b2d11853              # double 0.57710537839080656
	.quad	0x3fd09cab41ea3f80              # double 0.25956231534018315
	.quad	0x3fe47599be1dac5a              # double 0.63935553676618473
	.quad	0x3fe35fda760037ea              # double 0.60545084998170506
	.quad	0x3fe356773823694b              # double 0.60430489506260565
	.quad	0x3fcd5c7b90a568b8              # double 0.22938484728621744
	.quad	0x3fe16d791a7bc3d8              # double 0.54461341068792546
	.quad	0x3fd5f8bfedeaeb96              # double 0.3433074782766935
	.quad	0x3fd48e833c791676              # double 0.32119828134123141
	.quad	0x3fdd0d038fd2f068              # double 0.4539193062335074
	.quad	0x3fe7e762ebf676a5              # double 0.74699541174387163
	.quad	0x3f94b9a1ef3a1940              # double 0.020239382005933892
	.quad	0x3fd2e78f22fc7b74              # double 0.29538324753405409
	.quad	0x3fd59c5f7af6817e              # double 0.33766924865815173
	.quad	0x3fbe88c477751b60              # double 0.11927440563623071
	.quad	0x3fd4570940367f90              # double 0.31781226416387032
	.quad	0x3fcdb8e026d3fd74              # double 0.23220445533659595
	.quad	0x3fbb9e63d8005c40              # double 0.10788558982345453
	.quad	0x3f985823a422d200              # double 0.023773724453990397
	.quad	0x3fd1f2fabaa55c00              # double 0.28045528628484817
	.quad	0x3fd90a3bb56083c8              # double 0.39124958717917169
	.quad	0x3fe9b08348c37134              # double 0.80279697620020451
	.quad	0x3fe9dbd8fccd6d48              # double 0.80808686614492675
	.quad	0x3fce781d64ea9a18              # double 0.23804061343726413
	.quad	0x3fe320ff36eea838              # double 0.59777794579463883
	.quad	0x3fe04f25e57e29e0              # double 0.50966162512605351
	.quad	0x3fe5ad4873bde8b5              # double 0.67740271192385271
	.quad	0x3fd627c58da76386              # double 0.3461774714792728
	.quad	0x3fcdf9b2a3e72580              # double 0.23418267252990788
	.quad	0x3feee06c1e28d050              # double 0.96489530458939932
	.quad	0x3fed8029bd0a6145              # double 0.92189490243894368
	.quad	0x3fe2fdca54205f93              # double 0.59348026686619659
	.quad	0x3fe0c559057f3562              # double 0.52409030030836967
	.quad	0x3fe53fba3cf077b2              # double 0.66402923490726651
	.quad	0x3fdc41865b5fe062              # double 0.44149931834500056
	.quad	0x3fd244fad18823c0              # double 0.28546019041146664
	.quad	0x3f975a2f7a869900              # double 0.022804967740420956
	.quad	0x3fcd71511112f710              # double 0.23002065023131779
	.quad	0x3fe802c8f7a005c0              # double 0.75033996929430913
	.quad	0x3fef263fe7ea4e4b              # double 0.97341914459179557
	.quad	0x3fea4b1b9b363273              # double 0.82166843714510518
	.quad	0x3febe8e712f17cf0              # double 0.87218049716821433
	.quad	0x3fefc3ad91111287              # double 0.99263647397363363
	.quad	0x3fe2b2f79d55f3b1              # double 0.58434658746374712
	.quad	0x3fea287d44532391              # double 0.81744254440956088
	.quad	0x3febc3b78418d3c7              # double 0.86764121818725293
	.quad	0x3fe2a442436c2a71              # double 0.58255112808667608
	.quad	0x3fdffbf397f9174e              # double 0.49975290146936835
	.quad	0x3fcd00d11bdc593c              # double 0.22658742771518259
	.quad	0x3fca0243eb58e158              # double 0.20319413177072465
	.quad	0x3fea7d74e490f73f              # double 0.82781452791071064
	.quad	0x3fd1e644dad165ea              # double 0.27967950219098603
	.quad	0x3fce8869a2d19b44              # double 0.23853798341880339
	.quad	0x3febbebd13451df5              # double 0.86703351749105073
	.quad	0x3fed91fbb758a37d              # double 0.92407022294820218
	.quad	0x3fe9b3a82c15f6e1              # double 0.80318077669627652
	.quad	0x3fdcd1f11acc817c              # double 0.45031383149218818
	.quad	0x3fca2dbe2ba8d6ac              # double 0.20452096111119056
	.quad	0x3fdcb5d11b0c1f7c              # double 0.44859721795409491
	.quad	0x3fe8853412d889ce              # double 0.76626018219786274
	.quad	0x3fe86c55068b1ab5              # double 0.76322413709643533
	.quad	0x3feca28339a7b0a2              # double 0.89483796368360324
	.quad	0x3fe567fbecefef13              # double 0.66894336964421297
	.quad	0x3fedd20b06bc1321              # double 0.93189002337803484
	.quad	0x3fe21e2793260b07              # double 0.56618098010980666
	.quad	0x3fe807cd552b6219              # double 0.75095240244542361
	.quad	0x3fe2109c82b61721              # double 0.56452775506543074
	.quad	0x3fc065f4e8d81fd4              # double 0.12811147088382191
	.quad	0x3fe9bcca53abcbcb              # double 0.80429569570548531
	.quad	0x3fc6265ba97365c0              # double 0.17304559492076343
	.quad	0x3fcf23c753472bb0              # double 0.24327937666234112
	.quad	0x3fe6c6e5b24472e1              # double 0.71177944963309525
	.quad	0x3fe496f85a2cf1b1              # double 0.64342897045530922
	.quad	0x3fe205b137fb1ec9              # double 0.56319485601212549
	.quad	0x3fe91ae19add03e2              # double 0.78453140494104567
	.quad	0x3fec38d0e991da90              # double 0.88193555468645179
	.quad	0x3fd704984bc143c6              # double 0.35965545080130956
	.quad	0x3fecdf27e500dfd2              # double 0.90224070288877045
	.quad	0x3fe4dd79e5c5041b              # double 0.65203566433786209
	.quad	0x3fcd414161f74388              # double 0.22855393680086089
	.quad	0x3fd10af6cd8eac98              # double 0.26629419397313248
	.quad	0x3fedf32eacfac223              # double 0.93593534264625011
	.quad	0x3fe48f5a7fbfe092              # double 0.64249920798376281
	.quad	0x3fed7452739068d3              # double 0.920449472151882
	.quad	0x3fe08a7fcdd5b017              # double 0.51690664484113114
	.quad	0x3fe3890a6c1c769c              # double 0.61047860255685604
	.quad	0x3fe135794686cff5              # double 0.53777755522469184
	.quad	0x3fc90e189e6d0c64              # double 0.1957426808895405
	.quad	0x3fefea0a685efd4f              # double 0.99731941590281703
	.quad	0x3fdfb1c5dceaca7e              # double 0.49522539686146405
	.quad	0x3fee03b7fc581868              # double 0.93795394216500671
	.quad	0x3fda64a923d5a778              # double 0.41239384173842764
	.quad	0x3fb31767c0c2f020              # double 0.074575886307628014
	.quad	0x3fd0bbb71b4c8396              # double 0.26145723024279144
	.quad	0x3fb5a3cf4f7144b0              # double 0.084530789275293782
	.quad	0x3fdf5a014aa3bf42              # double 0.48986847199465811
	.quad	0x3feea6b0f7f9b90d              # double 0.95784805710516851
	.quad	0x3fd58f3d9624d22e              # double 0.33686771070941546
	.quad	0x3fea49484bad5d63              # double 0.82144560604767169
	.quad	0x3fe5e5c5a2d2188b              # double 0.68429834175982884
	.quad	0x3fe1c17413107f51              # double 0.55486491893314327
	.quad	0x3fe874b9be8b20f2              # double 0.7642487260391404
	.quad	0x3fef9a4f339a9eec              # double 0.98758659438041496
	.quad	0x3fdc65e592040c40              # double 0.44371928462368615
	.quad	0x3fd9f27814cec2d2              # double 0.40542413742063588
	.quad	0x3feef9b13db4221c              # double 0.96798002292149787
	.quad	0x3faab3d0ca1ac9d0              # double 0.052153134032227322
	.quad	0x3fe01ddb2a033531              # double 0.50364454465458242
	.quad	0x3fe2e3013f884646              # double 0.59021055611283013
	.quad	0x3fb56eed0f1419c0              # double 0.083723846608427799
	.quad	0x3fe886d497aec838              # double 0.76645879388366378
	.quad	0x3fbdb5fa2da89578              # double 0.11605800261221144
	.quad	0x3fecc465023e0e41              # double 0.89897394597978331
	.quad	0x3fda5cdee23ccf64              # double 0.41191837399968834
	.quad	0x3fe2cd25fd8fb266              # double 0.5875425293321086
	.quad	0x3fb6df9f33039740              # double 0.089349698977085446
	.quad	0x3fea04ec7a74f56b              # double 0.81310104291303043
	.quad	0x3fc49fd9ee879828              # double 0.1611282744117386
	.quad	0x3fef0951933f1043              # double 0.9698875308899989
	.quad	0x3fe6c6f355d5d810              # double 0.71178595318520088
	.quad	0x3fd79b38b7cf1616              # double 0.36884897184458632
	.quad	0x3fe539eba975f94c              # double 0.66332038019008044
	.quad	0x3fded29536ede92c              # double 0.48160295833771971
	.quad	0x3fb680b48676da30              # double 0.087901385143461352
	.quad	0x3fd757a7da170808              # double 0.36472507760856887
	.quad	0x3fedb70ddc300997              # double 0.928595476202008
	.quad	0x3fdcc13d7c60bdf4              # double 0.44929444452551981
	.quad	0x3fd64a3cb041dfe8              # double 0.34828107082966975
	.quad	0x3feaa1e9ef49725e              # double 0.83226486907694741
	.quad	0x3fd79f5dda83f236              # double 0.36910196627994496
	.quad	0x3f9929dd3409d340              # double 0.024573761273546824
	.quad	0x3fbf388f1579cf98              # double 0.12195677065193278
	.quad	0x3fc51d5b1b723808              # double 0.1649583705915918
	.quad	0x3fb9524d0f124900              # double 0.098912063769862612
	.quad	0x3feb5d0b23b92654              # double 0.85510785081096196
	.quad	0x3fc9a3b706983f14              # double 0.2003086836052651
	.quad	0x3fc799ac6d211b0c              # double 0.18437724426822688
	.quad	0x3fe70d494f5d032d              # double 0.72037187100076994
	.quad	0x3fddfc028a93aa68              # double 0.468506465271878
	.quad	0x3fc5f19065290224              # double 0.17143444957220411
	.quad	0x3fe2fa1ec4d4d268              # double 0.59303224986667846
	.quad	0x3fd3597edcb1eb96              # double 0.30233737518545334
	.quad	0x3fdb1b31ef4e4c30              # double 0.42353485460006635
	.quad	0x3fc20ab2c72a92a0              # double 0.1409514877788256
	.quad	0x3fe397941d60ea1d              # double 0.61225324380876922
	.quad	0x3fe92d0ac23281c9              # double 0.78674829415472758
	.quad	0x3fe441ced4e7c8d8              # double 0.63303319533431601
	.quad	0x3fbfe25cbe2f0688              # double 0.12454776423603608
	.quad	0x3fd55b665fa8bf72              # double 0.33370360700336399
	.quad	0x3fe9d0095533485a              # double 0.80664507523239171
	.quad	0x3fe38b58507590bf              # double 0.61075988497443479
	.quad	0x3fe8f1ab5323ba55              # double 0.77950063932605451
	.quad	0x3fc8b44c3c9d8ca8              # double 0.19300225219476386
	.quad	0x3feefd7a2864d59f              # double 0.96844203843527398
	.quad	0x3fd4bca900f4a98a              # double 0.32401490300494429
	.quad	0x3fc563fb0e9746a8              # double 0.16711366856047971
	.quad	0x3fe4ff453ae88faa              # double 0.65616094117694002
	.quad	0x3fe665adefedb582              # double 0.69991204129262052
	.quad	0x3fc0969109f5f5c0              # double 0.12959492670408501
	.quad	0x3feee810d519e856              # double 0.96582833882645036
	.quad	0x3fcaea18b595f090              # double 0.21026905886163094
	.quad	0x3fc3ffdf83741438              # double 0.1562461273062199
	.quad	0x3fefdc44640b74f0              # double 0.99563808002463183
	.quad	0x3fe94ada3455c350              # double 0.79038725110704355
	.quad	0x3fe8b145c18cc99a              # double 0.77163970759129374
	.quad	0x3fbed5001a4b3cc0              # double 0.12043762819233716
	.quad	0x3feb066d822ff2f8              # double 0.84453463961798914
	.quad	0x3fd03321e28bd108              # double 0.25312087176941178
	.quad	0x3fe1e3882eac6b3a              # double 0.55902489772720476
	.quad	0x3fe7ae1b21d82d02              # double 0.74000317201844745
	.quad	0x3fe695b88dd2b583              # double 0.70577647876568539
	.quad	0x3fd0068574ced720              # double 0.25039802939441991
	.quad	0x3fef151bcb28e99c              # double 0.97132672958041466
	.quad	0x3fb778c28ae25850              # double 0.091686400325074801
	.quad	0x3fc90d934ae638ec              # double 0.19572678715889624
	.quad	0x3fc18cca53f00ba8              # double 0.13710908030051638
	.quad	0x3fea2c8d93c062a9              # double 0.81793860299793153
	.quad	0x3fee1005896f37e1              # double 0.93945576517739593
	.quad	0x3fd1065b77157fee              # double 0.26601301793380017
	.quad	0x3fe645f288090c10              # double 0.69603849954035191
	.quad	0x3fd442a035f66338              # double 0.31656651754160547
	.quad	0x3fe76710df9aae8d              # double 0.73133128807735803
	.quad	0x3feb5792eab6754f              # double 0.85444017259912097
	.quad	0x3fa344c7ce793890              # double 0.037634128526961352
	.quad	0x3fe51b4079805fe1              # double 0.65957664232973567
	.quad	0x3fd99e90f325c564              # double 0.40030311341168656
	.quad	0x3fc4af4d5ca9a0c0              # double 0.16159979843656025
	.quad	0x3fbe0e3647b3a010              # double 0.11740435839203678
	.quad	0x3fdca2c012aebdb0              # double 0.44743348907919778
	.quad	0x3f9709f9e0485e80              # double 0.022498993219498775
	.quad	0x3fd4302da2ebd4dc              # double 0.31544056806826659
	.quad	0x3fe6dbdb5368a433              # double 0.71433798113606028
	.quad	0x3fc6180d41396a40              # double 0.17260900196818518
	.quad	0x3fec0526d8227114              # double 0.87562887395646038
	.quad	0x3fcb289ad3985024              # double 0.21217665988717826
	.quad	0x3fe6711d960fccb1              # double 0.70130805310181732
	.quad	0x3fd7d32e59364940              # double 0.37226446830858961
	.quad	0x3fd8ce1d4326773e              # double 0.38758021886484417
	.quad	0x3fb8b4e42b1f8d50              # double 0.096510181930672844
	.quad	0x3fd9dd59cd8124fc              # double 0.40413518017574268
	.quad	0x3fbd6c9fff9b0bb0              # double 0.11493873587009662
	.quad	0x3fdfcd64c237c528              # double 0.49691122976863022
	.quad	0x3fe0efb92d494752              # double 0.52926310391397124
	.quad	0x3fce21e20f28568c              # double 0.23540902843585731
	.quad	0x3fddb17473491bb6              # double 0.46395598657948811
	.quad	0x3febf902ae4ccb5c              # double 0.87414678614582497
	.quad	0x3feb272cf3f3274f              # double 0.84853217741440712
	.quad	0x3fc64cf7c30fa540              # double 0.17422387146442908
	.quad	0x3fe73156cfacb74a              # double 0.72477284013232546
	.quad	0x3fe4c5fd314372ca              # double 0.64916858312388936
	.quad	0x3fddeb2c14a0dca2              # double 0.46747877134789395
	.quad	0x3fa0810b4f91d370              # double 0.032234528983201893
	.quad	0x3fe85f2bc9c12ec1              # double 0.76161755948256638
	.quad	0x3fcae50303ee8c10              # double 0.2101138848493922
	.quad	0x3fc09bd69bbebd34              # double 0.12975580792179076
	.quad	0x3fcf6dcfc7ca8a14              # double 0.24553868537357515
	.quad	0x3fe36a9682960c23              # double 0.60676122193433846
	.quad	0x3fa77adef15124d0              # double 0.045859305341375056
	.quad	0x3fe4c7adf91f133b              # double 0.64937494904061255
	.quad	0x3fb93850fd80ee08              # double 0.098515569582495854
	.quad	0x3fc7f559343208c8              # double 0.18717494057279382
	.quad	0x3fe7bbedd1aebae0              # double 0.74169054940815826
	.quad	0x3fe6343105d03241              # double 0.69387103209880518
	.quad	0x3fe46311389c95d9              # double 0.63709317261662612
	.quad	0x3fc9c0498bd54f94              # double 0.20118064239306632
	.quad	0x3fd8eda3b6638c80              # double 0.38950436412250866
	.quad	0x3fe85bc9fc0192ec              # double 0.76120471210432816
	.quad	0x3fd44c47e2418b6c              # double 0.317155810311468
	.quad	0x3fe5d5fed5a5fb9f              # double 0.68237249115178489
	.quad	0x3feba81893383832              # double 0.86426953080968461
	.quad	0x3fd0c9f6df629e2e              # double 0.26232692542041292
	.quad	0x3fe964b83d3188af              # double 0.79354488326887018
	.quad	0x3fee677970606544              # double 0.95013114880126936
	.quad	0x3fd5cf443cc20c1e              # double 0.34077554639242347
	.quad	0x3fe1512b30c69507              # double 0.54115829016214512
	.quad	0x3fde8065a8c5eda6              # double 0.47658673745874081
	.quad	0x3fe5c71e81645d7a              # double 0.68055653831372287
	.quad	0x3fd35ea16165bc7c              # double 0.30265078078713947
	.quad	0x3fc907ef15bf3098              # double 0.19555462419373693
	.quad	0x3fcda96bbfd7b6ac              # double 0.23173281543079349
	.quad	0x3fd1d8d0fd06b1d0              # double 0.27885842046341924
	.quad	0x3fe30023987ff7ad              # double 0.59376697335368578
	.quad	0x3fe53f0599bc6d83              # double 0.66394310022899139
	.quad	0x3fe6eb12854b91a7              # double 0.71619535478798901
	.quad	0x3fe8c8febc03b6dd              # double 0.77453552934249681
	.quad	0x3fd928fcaf414afe              # double 0.39312665095091848
	.quad	0x3feb5371393626a7              # double 0.85393582510115074
	.quad	0x3fdfbecdbb4d12d4              # double 0.49602072993392921
	.quad	0x3fedde1b065bf4e6              # double 0.93336249582321495
	.quad	0x3feb8c0da8cd884a              # double 0.86084635705288659
	.quad	0x3fe443aa3b587c94              # double 0.63325988379428333
	.quad	0x3fe80a72c7b9bbd1              # double 0.75127543457881008
	.quad	0x3fe5eadb99799569              # double 0.68491916633199168
	.quad	0x3fe5a511daccaa22              # double 0.6764001153399628
	.quad	0x3fe1e3e121c61f8f              # double 0.55906731220692218
	.quad	0x3fd92a600a191bcc              # double 0.39321137415066398
	.quad	0x3fc270fcd8fd2b2c              # double 0.14407311053431593
	.quad	0x3fe96478ec2cd817              # double 0.79351469161952337
	.quad	0x3fd62d9dc77d859a              # double 0.34653419953800724
	.quad	0x3fbd0841e17475a8              # double 0.11340724710722461
	.quad	0x3fdb1a500a4ffb96              # double 0.42348099715302945
	.quad	0x3fef02443a92420d              # double 0.96902667464934355
	.quad	0x3fe2d6bb292dfb43              # double 0.58871229212659448
	.quad	0x3fe218793045f680              # double 0.56548747471215677
	.quad	0x3feef5b97d6203d7              # double 0.96749567498056421
	.quad	0x3fe9e2a4569a395d              # double 0.80891625322855598
	.quad	0x3fdf534ca3e45a4c              # double 0.48945919041708374
	.quad	0x3fd642c0731ed696              # double 0.34782420389397239
	.quad	0x3fe614296bf3ff91              # double 0.68996115765183863
	.quad	0x3fd141512551b5bc              # double 0.26961163181735137
	.quad	0x3fdde5f79800f560              # double 0.46716108173480642
	.quad	0x3fc0e5a5c93515ac              # double 0.13200828861788005
	.quad	0x3fce6d1df9da8f10              # double 0.23770498943223872
	.quad	0x3fe6aa5f4f0d2758              # double 0.70829739989970175
	.quad	0x3fa492f75eb20580              # double 0.040183763799187311
	.quad	0x3fdf9c644a17d90c              # double 0.49392039523753861
	.quad	0x3fe17c216f11d3d4              # double 0.54640266125954406
	.quad	0x3fd50538ddb3e20e              # double 0.32844373369837931
	.quad	0x3fdc8169cda68b9e              # double 0.44539876063407202
	.quad	0x3fe5054b8fbd3c56              # double 0.65689638208449241
	.quad	0x3fed99ab53a70380              # double 0.92500845278128452
	.quad	0x3fe79312a154fd4a              # double 0.73670321951059603
	.quad	0x3fe0d0e490a0ef62              # double 0.52549961326392869
	.quad	0x3fee620c2641fd6a              # double 0.94946868393155381
	.quad	0x3fd8548bc9bbe84a              # double 0.38016028118693568
	.quad	0x3fef83e716a11fae              # double 0.98485140247156777
	.quad	0x3fec93b7099f572f              # double 0.89303161506061268
	.quad	0x3fe44a4572b217fd              # double 0.63406631852626527
	.quad	0x3fe7535ccde23973              # double 0.72892608844430951
	.quad	0x3fe401f18158df97              # double 0.62523722899549028
	.quad	0x3fd7ce14d598611c              # double 0.37195320948514321
	.quad	0x3fc9e27280e522a8              # double 0.20222312253669839
	.quad	0x3feb005a089a2fd7              # double 0.84379293136725664
	.quad	0x3fe2753d103293c4              # double 0.57681134379947041
	.quad	0x3fdeabbafee21ea6              # double 0.47923159495301559
	.quad	0x3fe2fc8113b1e7c6              # double 0.59332326742809793
	.quad	0x3fb2c7f34e88cb10              # double 0.073363501237320827
	.quad	0x3fe0b0288363af49              # double 0.52150369321814438
	.quad	0x3fd19b767da032c0              # double 0.27511369960920362
	.quad	0x3feafbf88825fb5f              # double 0.8432581576488295
	.quad	0x3fcb454d345e9d58              # double 0.21305241639241035
	.quad	0x3fc13545fc6fba74              # double 0.13443827463148106
	.quad	0x3fdd8673666b1382              # double 0.46133122445854025
	.quad	0x3fcca0ea2d485870              # double 0.22366072856010843
	.quad	0x3fda248c5b71805a              # double 0.4084807293893441
	.quad	0x3fdd649cf3669d96              # double 0.45926593560803874
	.quad	0x3feb6ac2574b9876              # double 0.85678212213384941
	.quad	0x3fe185baa801cf37              # double 0.54757435621147621
	.quad	0x3fb289d08f506508              # double 0.072415385235576335
	.quad	0x3fd19dd6d66b5c86              # double 0.27525874080078727
	.quad	0x3fd0d78fdc0ff3b6              # double 0.26315685739956096
	.quad	0x3fe3608fccecd456              # double 0.60553731941639444
	.quad	0x3fbeb2c22df06fc0              # double 0.11991513845026613
	.quad	0x3fe9ef256d382126              # double 0.81044265109907054
	.quad	0x3fe9f716e36a8a80              # double 0.81141228120061726
	.quad	0x3fe0b72ba19e591a              # double 0.52235967222330548
	.quad	0x3fe9d21cf92d4302              # double 0.80689858119339442
	.quad	0x3fdf33ed94386f68              # double 0.4875444362130481
	.quad	0x3fda6623ea400524              # double 0.41248414875015471
	.quad	0x3fe714e64a05c2c5              # double 0.72130121667404323
	.quad	0x3fe81ef9e4db2ea0              # double 0.75378126810524648
	.quad	0x3fd80a4d523b3620              # double 0.37562878637695185
	.quad	0x3fed809cb98ef1c0              # double 0.92194973222608922
	.quad	0x3fa16d9d9a0f9b50              # double 0.03403942590357778
	.quad	0x3fdc25660d211010              # double 0.43978263170379339
	.quad	0x3fcdd758c1b2fa98              # double 0.23313435991254461
	.quad	0x3fe6a80ac75ace8e              # double 0.70801295219867355
	.quad	0x3fdf736e2cba9490              # double 0.49142031066941971
	.quad	0x3fd8447589a21890              # double 0.37917841377964923
	.quad	0x3fcbc915df4c9d70              # double 0.21707414058003449
	.quad	0x3fec824359028b02              # double 0.89090125450852065
	.quad	0x3fdd4cb3366fd578              # double 0.45780639949892743
	.quad	0x3f9f53df4af48700              # double 0.030593384694959092
	.quad	0x3fda28ba078f39f8              # double 0.40873575914602567
	.quad	0x3fcd5a6e705db26c              # double 0.22932224737759854
	.quad	0x3f6b6f5a43805c00              # double 0.0033489954912613307
	.quad	0x3fd0fedb61f46c80              # double 0.26555523458382169
	.quad	0x3fe2109d1b2125f5              # double 0.56452803896644232
	.quad	0x3fdcb4c47271e000              # double 0.44853316475155225
	.quad	0x3fea5ec3179e46fc              # double 0.82406763661330684
	.quad	0x3fea66e79768ebee              # double 0.82506160328136757
	.quad	0x3fe59016d48d4609              # double 0.67383901132615265
	.quad	0x3fe3790b6f32c1f8              # double 0.6085259601441626
	.quad	0x3fee23e30c5cd89a              # double 0.94188072599969819
	.quad	0x3fe2453b3f7d2e25              # double 0.57095110321228459
	.quad	0x3fdecf27cf69c434              # double 0.4813937688368839
	.quad	0x3feaaa1683da6141              # double 0.8332626891379179
	.quad	0x3fb4d78ef6647d68              # double 0.081414160875728947
	.quad	0x3fd73f943f45b704              # double 0.36325555972040058
	.quad	0x3fe4b76e04833a86              # double 0.64739132768029672
	.quad	0x3fd124c827aaef30              # double 0.26786998628425618
	.quad	0x3fb20d6fec1a4be0              # double 0.070517535345330895
	.quad	0x3fe0ede13f5bf73e              # double 0.52903807043887929
	.quad	0x3fdb8296da79856e              # double 0.42984553656977809
	.quad	0x3fe07d0bd6736d00              # double 0.51526443371713526
	.quad	0x3fd96fcd7d814968              # double 0.39744889503813008
	.quad	0x3fe86bc9455a2bd4              # double 0.76315749688489598
	.quad	0x3fd172c04e94e25e              # double 0.27262885736448605
	.quad	0x3fa460605ba41d10              # double 0.039797793566373696
	.quad	0x3fdeb3b9312015c8              # double 0.4797194461574148
	.quad	0x3febacabf8fabd5c              # double 0.86482809666442106
	.quad	0x3feb0a35d0bf5140              # double 0.84499636431659297
	.quad	0x3fe917db145c08aa              # double 0.78416208244768382
	.quad	0x3fea359fe8affcf5              # double 0.81904597708481097
	.quad	0x3fedfc92204eec55              # double 0.93708139715398409
	.quad	0x3fd6a4705f725e78              # double 0.35378655739757603
	.quad	0x3fe606e40346e8b1              # double 0.68834114685093628
	.quad	0x3fe9ffc0746e94e4              # double 0.81246969929329937
	.quad	0x3fc618ce75d09438              # double 0.17263203385042103
	.quad	0x3fe8869d7de6fa9b              # double 0.76643251982007443
	.quad	0x3fd8c036dcc3badc              # double 0.3867318302062992
	.quad	0x3fe03da414de04f3              # double 0.50752452922475155
	.quad	0x3fb54bb7269dcbe0              # double 0.083186575820760833
	.quad	0x3fcf16c4f6bad02c              # double 0.24288236663198981
	.quad	0x3fedc6e86381bd4d              # double 0.93053073344155168
	.quad	0x3fe439294063a9ef              # double 0.63197767807042549
	.quad	0x3fde6a06366d8970              # double 0.47522120776388643
	.quad	0x3fde12702cb2ca7c              # double 0.46987537732199036
	.quad	0x3fc9bf29552727d0              # double 0.20114628465517947
	.quad	0x3fe625330eb1593a              # double 0.69204094762498092
	.quad	0x3fef117da48e1281              # double 0.97088510646479175
	.quad	0x3fe64c0b6a75eba1              # double 0.69678278725711007
	.quad	0x3f8fcaaf1bd6d380              # double 0.015523307835658917
	.quad	0x3fd820b8dbf42d02              # double 0.37699719886650496
	.quad	0x3fdfd9120ea63e40              # double 0.49762393408397898
	.quad	0x3fe74f67f58e757c              # double 0.72844312629938157
	.quad	0x3fe235431c0b50d6              # double 0.56900172688849682
	.quad	0x3fc82b80b041abb8              # double 0.18882759672427851
	.quad	0x3fef85dc8425c4ac              # double 0.98509050188126456
	.quad	0x3fe25e62d10463ba              # double 0.57402172874127833
	.quad	0x3fe86e913b0abee0              # double 0.76349698573718782
	.quad	0x3fcb81e9d05f3760              # double 0.21490214037333555
	.quad	0x3fc06d90f650f19c              # double 0.12834369685323288
	.quad	0x3feb87e15ab89caa              # double 0.860336949529388
	.quad	0x3fd84fe52e998a94              # double 0.37987641859778276
	.quad	0x3feb71a05eb84274              # double 0.85762041568712144
	.quad	0x3fda8a4e03f1a200              # double 0.4146914518846927
	.quad	0x3fdfdf95d3a3475c              # double 0.498021561315104
	.quad	0x3fe262b07a759d4a              # double 0.57454704206330942
	.quad	0x3fc63e724fd897c0              # double 0.17378071688398045
	.quad	0x3feff249d8ac51a3              # double 0.99832622832268602
	.quad	0x3fefe3eb75004ed1              # double 0.99657223560140029
	.quad	0x3f95e8879e6f9ea0              # double 0.021394843144575959
	.quad	0x3f734c90215a8a00              # double 0.0047116880502096059
	.quad	0x3fe4317d65c7a9c8              # double 0.6310412395371765
	.quad	0x3faaf58d7ebdb820              # double 0.052654668542217786
	.quad	0x3fd1549d3a6ec1fc              # double 0.27078943926156263
	.quad	0x3fe8ad0c0ab29728              # double 0.7711239060342665
	.quad	0x3fdc32b5730b2704              # double 0.44059501871798568
	.quad	0x3fd2f17cff427614              # double 0.29598927428909971
	.quad	0x3fc8579428dff548              # double 0.19017269130555747
	.quad	0x3fd1775dd4c83cd0              # double 0.27291055469045222
	.quad	0x3fec373dfb359d72              # double 0.88174342216818347
	.quad	0x3fe98079b98b05d0              # double 0.7969330428970185
	.quad	0x3fc31d063df175dc              # double 0.14932325386591472
	.quad	0x3fe478aadffabd6e              # double 0.63972991701113613
	.quad	0x3fe993a9e67a581b              # double 0.79927535071579159
	.quad	0x3fdbdef5c6386d30              # double 0.43548340184652812
	.quad	0x3fdcd04f876ecc2a              # double 0.45021427369937561
	.quad	0x3fdb7a84471836b2              # double 0.42935282652693296
	.quad	0x3fe992b4e8ee99a2              # double 0.7991585301831956
	.quad	0x3fdb87ec93fce1ea              # double 0.43017115070281753
	.quad	0x3fbbbf3fa7b159c8              # double 0.10838697284757537
	.quad	0x3fe9a3e2801b9f9a              # double 0.80125546475482001
	.quad	0x3fce7d66d58598ac              # double 0.23820195604202377
	.quad	0x3fd4155f679a5486              # double 0.31380448453393972
	.quad	0x3fe35870f5f07cee              # double 0.60454605135956085
	.quad	0x3fdfedf6a594ed3e              # double 0.49889913721172607
	.quad	0x3fde0496928bb122              # double 0.46903003989315739
	.quad	0x3fd89a9ad635736c              # double 0.38443633002116573
	.quad	0x3fda5a52119fbe38              # double 0.4117627307996119
	.quad	0x3fdfef9fed363db8              # double 0.49900053181860526
	.quad	0x3fd4384921c839a2              # double 0.31593540476833415
	.quad	0x3fec00f779ff0713              # double 0.87511800601370948
	.quad	0x3fcc5fe15f887f74              # double 0.22167603649813439
	.quad	0x3fe402fc6740128f              # double 0.62536449590750631
	.quad	0x3fd83c654b16ca7e              # double 0.37868625958359547
	.quad	0x3fe20010ac3bd9ab              # double 0.56250795020496491
	.quad	0x3fb6f685e3e4f9f0              # double 0.089699142587938984
	.quad	0x3fe36afd79e61c03              # double 0.60681031998035484
	.quad	0x3fccb5aa83b58d04              # double 0.22429400855171633
	.quad	0x3fd9e06efbbcaece              # double 0.40432333549209154
	.quad	0x3fd8d5816f10e354              # double 0.38803134771619807
	.quad	0x3fd7da008e8894a6              # double 0.37268079680718313
	.quad	0x3fdf621804884c02              # double 0.49036217157953399
	.quad	0x3fc0b35d5d49fb98              # double 0.13047377638937685
	.quad	0x3feae9a63482a5ed              # double 0.84102163558889986
	.quad	0x3fe790369188ff4d              # double 0.73635414528687593
	.quad	0x3fc15ffcc63a89cc              # double 0.13574180297025717
	.quad	0x3fec4bce17aee335              # double 0.88425354600540251
	.quad	0x3fe328f4ba88d627              # double 0.59874950821421613
	.quad	0x3fe91cf05b15dc85              # double 0.78478257932773998
	.quad	0x3fe8409911e5ef2d              # double 0.75788548942316469
	.quad	0x3fea1368a8d17d9f              # double 0.8148692414505837
	.quad	0x3fcf5c00034e4024              # double 0.24499511872682078
	.quad	0x3fe0858737bb5d50              # double 0.5162998283875968
	.quad	0x3fee115297b4b3a0              # double 0.93961457853366781
	.quad	0x3fe5ee6fa3b98cd0              # double 0.68535596826077416
	.quad	0x3fda3f950f16e1ae              # double 0.41013075326511739
	.quad	0x3fdf0254f6aa1c78              # double 0.48451732719735885
	.quad	0x3fce55e1a4f90c1c              # double 0.23699589305223945
	.quad	0x3fca5dd4e10d1a10              # double 0.20598851193263146
	.quad	0x3fc791e438df042c              # double 0.18413975502883895
	.quad	0x3fe6e814c7346d92              # double 0.71583022029101273
	.quad	0x3fe0bc72d637a118              # double 0.52300397719685332
	.quad	0x3fe88e30f19e1d02              # double 0.76735732260650047
	.quad	0x3fdd56267d27bcde              # double 0.45838319990339282
	.quad	0x3fe30dafbbe41e61              # double 0.59542071053961021
	.quad	0x3fea0776138a5c26              # double 0.81341079536912697
	.quad	0x3fefc1ef374a5bbe              # double 0.99242363737982209
	.quad	0x3fe2839b2038205f              # double 0.57856518071003993
	.quad	0x3fe3d7d0f7225068              # double 0.62009475963942595
	.quad	0x3fef1f117bab848c              # double 0.97254251627249876
	.quad	0x3fdd3e04aedbcd2e              # double 0.45691029621157753
	.quad	0x3fee355e694b4e53              # double 0.94401474538103469
	.quad	0x3fa2008ba0f96e60              # double 0.035160411262691538
	.quad	0x3fc8aa10f3ebb2ac              # double 0.19269000921430768
	.quad	0x3fdb5504216deee2              # double 0.42706397308914579
	.quad	0x3fe41193c1729b8a              # double 0.62714565069914952
	.quad	0x3fe1d489a80d2f15              # double 0.5571945459609845
	.quad	0x3feab949595589a9              # double 0.83511798332283604
	.quad	0x3fe205db20f21fb2              # double 0.56321484026647384
	.quad	0x3fccd930f1a908fc              # double 0.22537814903086673
	.quad	0x3f99d0556596cc60              # double 0.025208792043212802
	.quad	0x3fd9853e8cfdbe02              # double 0.39875758904142355
	.quad	0x3fd9ad47863ce9ba              # double 0.40120113476919139
	.quad	0x3fd408b8531ebb62              # double 0.31303222768013061
	.quad	0x3fc4c1f67a679998              # double 0.1621692750624788
	.quad	0x3fda2175b158746c              # double 0.40829222029589718
	.quad	0x3fd5a71bd720422e              # double 0.33832450874709508
	.quad	0x3fde341179be41d8              # double 0.47192799462302792
	.quad	0x3fdad288a273983e              # double 0.41909995903404595
	.quad	0x3feb0d4fe1971f46              # double 0.84537500439271507
	.quad	0x3fd0f6226ef0d0cc              # double 0.26502285799075476
	.quad	0x3fe8347ea1641454              # double 0.75640803834597614
	.quad	0x3fee67ae1dccfc11              # double 0.95015626736119618
	.quad	0x3fccb01f1e0a20b4              # double 0.22412480322623696
	.quad	0x3fee7a32318548fb              # double 0.95241651222229906
	.quad	0x3fe5efbd841e4577              # double 0.68551517299981313
	.quad	0x3fef14ef54374df6              # double 0.97130552719539653
	.quad	0x3fe359f75f8b8eff              # double 0.60473221455728765
	.quad	0x3fe844148e685a11              # double 0.75831058324803469
	.quad	0x3fede1682385e470              # double 0.9337654775437283
	.quad	0x3fe5ab4e8c9527f7              # double 0.67716147859141429
	.quad	0x3fec0dc11469a1a8              # double 0.87667898165550628
	.quad	0x3fe614a61a9ee652              # double 0.690020610803183
	.quad	0x3fde27ae50d41a5e              # double 0.47117193120394585
	.quad	0x3fed4eb793e17061              # double 0.91585902102407257
	.quad	0x3fc690cca0e36744              # double 0.17629392486451867
	.quad	0x3fdc9a8c0c26243c              # double 0.44693280397820323
	.quad	0x3fe14f89e199e008              # double 0.54095930159292127
	.quad	0x3fd5dcbeb4f54e24              # double 0.34159820243550798
	.quad	0x3fe0b436bbc8ff53              # double 0.52199875523363415
	.quad	0x3fc7b567fa273a00              # double 0.18522357668412326
	.quad	0x3fe7b34f22033781              # double 0.74063831942633851
	.quad	0x3fd722fc7a5521c0              # double 0.36151039072549551
	.quad	0x3fe7456fe58e9795              # double 0.72722620807029392
	.quad	0x3fd198a16d3118b2              # double 0.27494083083400789
	.quad	0x3fd7b46694a350f2              # double 0.37038578524995025
	.quad	0x3fd6a4c52d3d1ea0              # double 0.35380677621695078
	.quad	0x3fea9445201e2ad5              # double 0.83059936783805688
	.quad	0x3fddd55ceb82577c              # double 0.46614764212551285
	.quad	0x3fe6e1f42445f8fe              # double 0.71508223614344479
	.quad	0x3fe084778efd9946              # double 0.51617029121261093
	.quad	0x3feb36ce6092dcde              # double 0.8504402052120914
	.quad	0x3fb460df62d16b30              # double 0.079603158593653189
	.quad	0x3fc7246937a59f50              # double 0.18079867570053887
	.quad	0x3fd7fa8466fa35fe              # double 0.37466535622010599
	.quad	0x3fe97f2faadffdc6              # double 0.79677565931336214
	.quad	0x3fdebcbf99daa1a2              # double 0.48027029061133863
	.quad	0x3febe146b0655062              # double 0.87124952747627682
	.quad	0x3fa9109a2cbe79d0              # double 0.048954790079040245
	.quad	0x3fcdfa19c346a2a0              # double 0.23419496569592457
	.quad	0x3fcc6b2e5556d430              # double 0.22202090422584453
	.quad	0x3fe282903246ce74              # double 0.5784378988232235
	.quad	0x3f5a3e78157ff400              # double 0.001601807851329129
	.quad	0x3fd85367efd10afa              # double 0.38009069842898635
	.quad	0x3febf4cd10f53a8f              # double 0.87363293945402798
	.quad	0x3feca8162017de74              # double 0.89551836269579476
	.quad	0x3fde4c1b4c2feff8              # double 0.47339518013154658
	.quad	0x3fe996ba8267407d              # double 0.79964948148155168
	.quad	0x3fe03064bff90bde              # double 0.50590741629309455
	.quad	0x3fee989c65e71764              # double 0.95612926390525077
	.quad	0x3fd7aeeeead618d0              # double 0.3700520795176887
	.quad	0x3faf54441ddb2ce0              # double 0.06118977417426108
	.quad	0x3fe6279d32bf9f38              # double 0.69233570014782853
	.quad	0x3fdfcf06acd9a242              # double 0.49701086883445467
	.quad	0x3feb621b3fc1982b              # double 0.85572588398350058
	.quad	0x3fec0433073dea0c              # double 0.87551261343406983
	.quad	0x3fe56bb1e1f999ce              # double 0.66939634452574537
	.quad	0x3fa0daeeae8febd0              # double 0.032920321282254528
	.quad	0x3fe74d0e81c71c75              # double 0.72815633151266346
	.quad	0x3feca3449d11b1c1              # double 0.89493017842828959
	.quad	0x3fea7485394da245              # double 0.82672368232767524
	.quad	0x3fc8ab879a0a97a8              # double 0.19273467084457008
	.quad	0x3fe8264cee2b7796              # double 0.75467535512483397
	.quad	0x3fd4d7b847dbaa52              # double 0.32566649453534524
	.quad	0x3fdeac28206f8176              # double 0.47925761382614185
	.quad	0x3fe2223136414a8f              # double 0.56667385670364634
	.quad	0x3fed76f1ff82db72              # double 0.92076969055675151
	.quad	0x3fef1b994f7ebe55              # double 0.97211900259385208
	.quad	0x3fec809dbc07f8e0              # double 0.8907002136691311
	.quad	0x3fc3c6fefe5057a8              # double 0.15451037805240486
	.quad	0x3fd734c8e120248e              # double 0.3625967215053344
	.quad	0x3fa77d58563e5110              # double 0.045878181960832376
	.quad	0x3fec71336940f131              # double 0.88881846005782539
	.quad	0x3fc43b222ff7f124              # double 0.15805461256230402
	.quad	0x3fd8c22c965218a2              # double 0.38685145072703098
	.quad	0x3fe8d60264d3bd5e              # double 0.77612418835444053
	.quad	0x3fe1982141901736              # double 0.54982054524655299
	.quad	0x3fad5d6857c267a0              # double 0.05735326834947263
	.quad	0x3fd5882b7a009258              # double 0.33643614687233514
	.quad	0x3feb30554c15d31b              # double 0.8496500478782737
	.quad	0x3fe77fe1aacee89d              # double 0.73436053620322961
	.quad	0x3fc6c5ca178cef04              # double 0.17791105413368069
	.quad	0x3fe63b33e3dd0bc1              # double 0.69472689156133793
	.quad	0x3fef6550dbfe3d84              # double 0.98111765830428554
	.quad	0x3fd77f91fcd95290              # double 0.36716127102162321
	.quad	0x3fd2278952d08b70              # double 0.28366311156621915
	.quad	0x3fb09c34d413d660              # double 0.064883519913416787
	.quad	0x3fdcde84c142aada              # double 0.45108145592773286
	.quad	0x3fa7cd157c3bbb40              # double 0.046486541190339015
	.quad	0x3fd4a86abe905d56              # double 0.32277935609586927
	.quad	0x3fd4495c51b05152              # double 0.31697757699409579
	.quad	0x3fe4ecd7d17cc104              # double 0.65391150393955444
	.quad	0x3fe7af1991b402ba              # double 0.74012449700975158
	.quad	0x3fea7d459f3f1fd9              # double 0.82779198744628524
	.quad	0x3fe83a8a667cd4e7              # double 0.75714607255090705
	.quad	0x3fdc2237e9a1b964              # double 0.43958852592085962
	.quad	0x3fec80ee58273dac              # double 0.89073865144194064
	.quad	0x3fe0cce8fa584bf3              # double 0.52501343627443331
	.quad	0x3fa3babfc5906690              # double 0.038534157625872756
	.quad	0x3fec2636ae7758e3              # double 0.8796647460501642
	.quad	0x3fd1d80afa7c7a96              # double 0.27881121121928609
	.quad	0x3fe0bcf6e91f06fe              # double 0.52306695491299116
	.quad	0x3fc7a52fe4041ecc              # double 0.18472860940550218
	.quad	0x3fd0d78ed26ede60              # double 0.2631566100130609
	.quad	0x3fea20bcf3e9fd02              # double 0.81649634971100249
	.quad	0x3fead75cda0c151e              # double 0.8387893923506089
	.quad	0x3fe17c5a6c028696              # double 0.54642983527829148
	.quad	0x3fc6f3d9af32d094              # double 0.17931672148336431
	.quad	0x3fe48a90a1f78c04              # double 0.64191466936279129
	.quad	0x3fe35bfa71e09527              # double 0.60497781984000631
	.quad	0x3fd77a8dae234046              # double 0.36685506826052394
	.quad	0x3fa7401eaf3e7320              # double 0.045411070720751789
	.quad	0x3fe5ba57f052159a              # double 0.67899701058984197
	.quad	0x3fefac4e49f19331              # double 0.98978342477912495
	.quad	0x3fe7279dac120adc              # double 0.72358592612757944
	.quad	0x3fe5e132eae189f6              # double 0.68374009967038663
	.quad	0x3fe404206849b727              # double 0.62550373429050843
	.quad	0x3fce5d5bea7b6144              # double 0.23722409200014216
	.quad	0x3fea24833122c339              # double 0.81695708844026804
	.quad	0x3fef4c379d4dbdb0              # double 0.97805386279462958
	.quad	0x3fc3bfc6eb7be5c0              # double 0.15429007051697674
	.quad	0x3fbc18312b77ed40              # double 0.10974414168588442
	.quad	0x3fe07f54e1e37014              # double 0.51554340475877547
	.quad	0x3fe6b8dd8465e11e              # double 0.71006656512239252
	.quad	0x3fee35c908976f9e              # double 0.94406558683430197
	.quad	0x3fee6adf2a790087              # double 0.95054586692278142
	.quad	0x3fec7a18707c82c8              # double 0.88990423173898936
	.quad	0x3fe1bd83265fc04b              # double 0.55438382620742155
	.quad	0x3fdd4c629ccd70de              # double 0.45778718292946319
	.quad	0x3fd9e8e575e4301a              # double 0.40483986389949822
	.quad	0x3fe1b0f0319ac54a              # double 0.55284890831368583
	.quad	0x3fdc923b06435568              # double 0.44642520534156072
	.quad	0x3fd45a41a62d985a              # double 0.31800881603556308
	.quad	0x3fdd0913bc23d4be              # double 0.45367902157824946
	.quad	0x3fe56f7f80139c81              # double 0.6698606015678622
	.quad	0x3fc722c94688185c              # double 0.18074909156729546
	.quad	0x3fefd5e7cbceb9d9              # double 0.99486150556713959
	.quad	0x3feb9c33a6a493f4              # double 0.86281759784162526
	.quad	0x3feadc6541b66b64              # double 0.83940375170218972
	.quad	0x3fe45ad512cc4cf0              # double 0.636087929453792
	.quad	0x3fe7533916af9db0              # double 0.72890905791148519
	.quad	0x3fa7f28e2ee046f0              # double 0.046772425863435774
	.quad	0x3fdd63617db57496              # double 0.45919072414637563
	.quad	0x3fb472be0fe1d4b8              # double 0.079875830533484016
	.quad	0x3fb503dc7359ded8              # double 0.082090166246298835
	.quad	0x3fd290f883b2cc8c              # double 0.29009831296134148
	.quad	0x3fde2ed8340d1132              # double 0.4716091640768979
	.quad	0x3fd5ff8f7c377902              # double 0.34372317438636923
	.quad	0x3fe21a54353d5067              # double 0.56571398161260056
	.quad	0x3fe55f3d6e96df96              # double 0.66787597274286514
	.quad	0x3fdf7361d9685d5e              # double 0.49141737204759817
	.quad	0x3fd9bab296ff7fe6              # double 0.40202011819746841
	.quad	0x3fe943beb61c4246              # double 0.78951964920458617
	.quad	0x3fd7def1e0a67038              # double 0.3729824727868194
	.quad	0x3fe4400141a6f6b3              # double 0.63281309912391348
	.quad	0x3fe0cdb8e10496cb              # double 0.52511257122815758
	.quad	0x3fe6237ab882ad51              # double 0.69183097874830868
	.quad	0x3fe58241c85666e2              # double 0.67215050819796951
	.quad	0x3fede9b6bbee0fe9              # double 0.93477951722206598
	.quad	0x3fe4f948698686d1              # double 0.65543003664444133
	.quad	0x3fda367f5c152a6c              # double 0.40957626335572317
	.quad	0x3fc9a247c0a43688              # double 0.200264901221477
	.quad	0x3fe5da6b41d4f6c0              # double 0.68291247232237851
	.quad	0x3fbaaf136ba414d8              # double 0.10423394563629829
	.quad	0x3fe4b9ff6569f80c              # double 0.64770479018602733
	.quad	0x3fe21026b25661c2              # double 0.56447157699135908
	.quad	0x3fea746fe044b699              # double 0.82671350290702883
	.quad	0x3fedfc82273e23d6              # double 0.93707378067585512
	.quad	0x3fcb84efcc303b1c              # double 0.21499440641533674
	.quad	0x3fd9c97b4e90c2e8              # double 0.40292246506127904
	.quad	0x3fc54392b5710fc0              # double 0.16612466678100013
	.quad	0x3fd78ddbfe04ea90              # double 0.36803340727389244
	.quad	0x3fec15577d96d4a9              # double 0.87760519532334513
	.quad	0x3fe4901353e71644              # double 0.64258734118693228
	.quad	0x3fe23ef20c18089d              # double 0.57018377649389473
	.quad	0x3fef76dc9aed1b02              # double 0.98325948962232723
	.quad	0x3fe25b359b308b4d              # double 0.57363395987008803
	.quad	0x3fc5ad1e0412dcbc              # double 0.16934561919126689
	.quad	0x3fdaf4a5990ea0a0              # double 0.42118205973612
	.quad	0x3fe97c66bde86a4a              # double 0.79643570987111301
	.quad	0x3fe6f5a9aeb319fe              # double 0.71748813744562745
	.quad	0x3fcb78662c23e1d0              # double 0.21461178927689994
	.quad	0x3fdefd363a89c546              # double 0.48420482365243733
	.quad	0x3fd9edd9c1304bb4              # double 0.40514224878387073
	.quad	0x3fdd0baaa0819844              # double 0.45383706736027229
	.quad	0x3fe6564ad1a8a593              # double 0.69803372334461
	.quad	0x3fe20a6cd2108be1              # double 0.5637725928139582
	.quad	0x3fec410ad3287721              # double 0.88293973199663267
	.quad	0x3fc7a52ef2aaef58              # double 0.1847284970189047
	.quad	0x3f9caaa5fec4a900              # double 0.027994722056214449
	.quad	0x3fb18409ed6f17b0              # double 0.068421001879953591
	.quad	0x3fd1ede61df4cdce              # double 0.28014519620338951
	.quad	0x3fe652da6d76e398              # double 0.69761392001884115
	.quad	0x3fdb15b3009682fe              # double 0.42319941575446751
	.quad	0x3fdc7fa011f78376              # double 0.44528962854933896
	.quad	0x3fd2e3fedcd7739e              # double 0.29516574446261667
	.quad	0x3fdd0c184d487522              # double 0.45386321589633571
	.quad	0x3fed608210d615e9              # double 0.91803077019056645
	.quad	0x3fdcba0cc61b3d50              # double 0.44885558458641572
	.quad	0x3fd5e3052e323dd8              # double 0.34198121558526173
	.quad	0x3fe112b2565b3f84              # double 0.53353230349056036
	.quad	0x3fd346d7767a0d96              # double 0.30119883127209712
	.quad	0x3fe7364b9145cfe5              # double 0.72537783025336167
	.quad	0x3fe253c11c0c09d4              # double 0.57272391775068821
	.quad	0x3fb5722d1628b038              # double 0.083773439321419896
	.quad	0x3fd7f030ff20bf86              # double 0.37403511919819044
	.quad	0x3fe9a2a07e7148ff              # double 0.80110192008785919
	.quad	0x3fcd3c015abf30c4              # double 0.22839371615407889
	.quad	0x3fe0ef1021b84716              # double 0.52918249689011776
	.quad	0x3fdf5f0bad2b4d82              # double 0.49017612372446007
	.quad	0x3fea8e2d4031a945              # double 0.82985556161774154
	.quad	0x3fe6cf0f2f50f60f              # double 0.71277579537826508
	.quad	0x3fec126cd834f5c4              # double 0.87724916675477304
	.quad	0x3fe3d30df46d9159              # double 0.61951349010318346
	.quad	0x3fd062c394b8c69a              # double 0.25602807544337625
	.quad	0x3fd7ec7db1e40c5c              # double 0.37380926487111821
	.quad	0x3feb5eec2083e2d0              # double 0.85533720350857756
	.quad	0x3fcae20a684ea34c              # double 0.21002321332096086
	.quad	0x3f581d8e953c9e00              # double 0.001471890679519805
	.quad	0x3fe912cdaa8fc1d9              # double 0.78354533493807843
	.quad	0x3fd671a358db4bbc              # double 0.35068591763882373
	.quad	0x3fceeb4fc222b45c              # double 0.24155613879466642
	.quad	0x3fe764c4252d928b              # double 0.73105056058246143
	.quad	0x3fe710b56a93485c              # double 0.72078963103764293
	.quad	0x3fe8c452cca19ea7              # double 0.77396526305252145
	.quad	0x3fd65ffcd4870060              # double 0.34960861925720188
	.quad	0x3fe8ac836c145e03              # double 0.77105876073159185
	.quad	0x3fd6702b4a5985ac              # double 0.35059625874245159
	.quad	0x3fedce7ea0344701              # double 0.93145686426052532
	.quad	0x3fe94fb54ddc3575              # double 0.79098000723904127
	.quad	0x3fc0ed6baad7a340              # double 0.13224550096426846
	.quad	0x3fddefb3b98d377e              # double 0.46775525207782909
	.quad	0x3fe3853799b158cf              # double 0.61001186388127759
	.quad	0x3fc3937674241df0              # double 0.15293770476294766
	.quad	0x3fda6fcb4cd6b3f6              # double 0.41307337287690815
	.quad	0x3fc9981a01153818              # double 0.19995427182078696
	.quad	0x3fc10d4444816728              # double 0.13321736664766459
	.quad	0x3fe9478b8e72512e              # double 0.78998353787986786
	.quad	0x3fbc9fb32bc60080              # double 0.1118118268841517
	.quad	0x3fe2c1c1bc88315a              # double 0.58615195105225415
	.quad	0x3fe0480f0c978379              # double 0.50879623851152112
	.quad	0x3fd113ff8fb1db60              # double 0.26684559853258882
	.quad	0x3fa1eea8db95f5f0              # double 0.035023953251748341
	.quad	0x3fe3fcba05725901              # double 0.62460042060664034
	.quad	0x3fe78f19d3f47a28              # double 0.73621837041338711
	.quad	0x3fdab307a9762ab2              # double 0.41717711972220706
	.quad	0x3fee58d64b43f151              # double 0.94834437084458945
	.quad	0x3fd2f5d81ca30270              # double 0.29625513836439321
	.quad	0x3fdccdcfb0df88b4              # double 0.4500617244031091
	.quad	0x3fc9956f097a0048              # double 0.19987285578463543
	.quad	0x3feb7909cce6a054              # double 0.85852518100456132
	.quad	0x3fe0b7d64f869d0f              # double 0.52244105846776445
	.quad	0x3fd220e3123c2514              # double 0.28325726300006804
	.quad	0x3fe1c72ac18eda1c              # double 0.55556237987804336
	.quad	0x3f998ea3bb3017a0              # double 0.024958189296760858
	.quad	0x3fc374752e4625c8              # double 0.15199150809739437
	.quad	0x3fe57020b40fc72c              # double 0.66993746917998953
	.quad	0x3fdbcfdf6e26c5f0              # double 0.43456254727342891
	.quad	0x3fe9873603ecb0cd              # double 0.79775524870412939
	.quad	0x3fe0248759ef6100              # double 0.50445907178348648
	.quad	0x3feabbc4ad84624d              # double 0.83542093172133891
	.quad	0x3fe4d7819cb35435              # double 0.6513069210583412
	.quad	0x3fe89b73e56af582              # double 0.76897616203466179
	.quad	0x3fd6347c1b473f12              # double 0.34695341743371089
	.quad	0x3fea5aef6c5941a0              # double 0.82360049402091206
	.quad	0x3fe004bed38c2d7a              # double 0.50057927434811167
	.quad	0x3fe399a042255ecc              # double 0.61250317496429707
	.quad	0x3fe4a7ed8fbcdf15              # double 0.64549902032647088
	.quad	0x3fe977c9494e528c              # double 0.79587234799926553
	.quad	0x3fc92f139ed33d30              # double 0.19674916510710139
	.quad	0x3fb385f5f57f3448              # double 0.076262829242481733
	.quad	0x3fa70063bd745490              # double 0.044924847485313113
	.quad	0x3fc8af32a3223fcc              # double 0.19284661260144131
	.quad	0x3fe032bbeeeec3a1              # double 0.50619312922036752
	.quad	0x3fe9efb40eb164b2              # double 0.81051066274371508
	.quad	0x3fd1295082c02042              # double 0.26814663666346317
	.quad	0x3febac94a44b1309              # double 0.86481697166945637
	.quad	0x3fb548e652fc8c98              # double 0.083143611202603274
	.quad	0x3fe4e7be3c49df29              # double 0.65328895354375505
	.quad	0x3fe33d7d7183d5a3              # double 0.60125610514539962
	.quad	0x3fe3df786d8c99a8              # double 0.62102910419780688
	.quad	0x3fe1f249bd139b6d              # double 0.56082617692014269
	.quad	0x3feebf176e1425ef              # double 0.96082660197970237
	.quad	0x3fe18cfe2af1843c              # double 0.54846104037654397
	.quad	0x3fd934f503167078              # double 0.39385724355248142
	.quad	0x3fdbed1a09436c2e              # double 0.43634653954149172
	.quad	0x3fe583a741836a70              # double 0.67232096477103021
	.quad	0x3fe31914abfca485              # double 0.59681161490620183
	.quad	0x3fc312eb06fde9b0              # double 0.14901483384512693
	.quad	0x3fee81d8bc418f67              # double 0.95335041779297292
	.quad	0x3fd6ec4edc45a630              # double 0.35817309866851854
	.quad	0x3fe2a766d8200cf0              # double 0.5829347821421873
	.quad	0x3fcf8edff829c284              # double 0.24654769532527976
	.quad	0x3feee0160441640e              # double 0.96485424834384204
	.quad	0x3fe51ba370fbdd97              # double 0.65962383334310715
	.quad	0x3fe00c06c198e23a              # double 0.50146806537583832
	.quad	0x3fd2577f1dfca834              # double 0.28659036568081153
	.quad	0x3fc345265ce997ec              # double 0.15054778610937036
	.quad	0x3fe39a0bbf7c9f2b              # double 0.61255443000570631
	.quad	0x3fc6a101062eb41c              # double 0.17678845216633554
	.quad	0x3fc8feb04953f180              # double 0.19527247982467699
	.quad	0x3fd4e94a98cc34f4              # double 0.32673897668503504
	.quad	0x3f991c392e9ac1a0              # double 0.024521726102365471
	.quad	0x3fb882d06d0f8580              # double 0.095746065736895147
	.quad	0x3fd6a68fb2c8b5aa              # double 0.35391609629990717
	.quad	0x3fe27ae5be510777              # double 0.5775021283263716
	.quad	0x3feade0605bb778d              # double 0.83960248107517688
	.quad	0x3fb230b9fcaa0a10              # double 0.071056007562255497
	.quad	0x3fddc461dc5cc59a              # double 0.4651112224556414
	.quad	0x3fef579697a652ed              # double 0.97944192523081385
	.quad	0x3fe5a41c4386a9de              # double 0.67628300846746092
	.quad	0x3fd94dd8faa50e98              # double 0.39537643887545348
	.quad	0x3febeeecef2ea232              # double 0.87291571345583052
	.quad	0x3fe761f0af8c1408              # double 0.73070558821257325
	.quad	0x3fd15860203fbb5c              # double 0.27101901196777134
	.quad	0x3fb9dcc2666f3e30              # double 0.10102477074473692
	.quad	0x3fed4cfc3e06a99f              # double 0.91564762224634311
	.quad	0x3fb584fa724bcb68              # double 0.084060337929071971
	.quad	0x3fe4c3c465c22b8c              # double 0.64889736056044134
	.quad	0x3fdbe79a585c54aa              # double 0.43601091984721541
	.quad	0x3fe7abf156d67176              # double 0.73973910294038947
	.quad	0x3faaa7177c83fed0              # double 0.052056058835658114
	.quad	0x3fc07a06f00b6040              # double 0.12872397156638904
	.quad	0x3fe1fcaf995d77e0              # double 0.56209545091746449
	.quad	0x3fdef138bf449b0a              # double 0.48347300222887724
	.quad	0x3fc2dd32ffa1f770              # double 0.14737546426834625
	.quad	0x3febb033ca2da28d              # double 0.86525907028142657
	.quad	0x3fefd96114367fc9              # double 0.99528554866628227
	.quad	0x3fc0503eadc76510              # double 0.12744887814805184
	.quad	0x3fdbe4b7f923b4c8              # double 0.43583487825419498
	.quad	0x3fd525466f22c730              # double 0.3304000935851148
	.quad	0x3fea12a3a3a2efcb              # double 0.81477529487846689
	.quad	0x3fe8838b4dc81215              # double 0.76605763618187217
	.quad	0x3fda3ee65f90b20c              # double 0.41008910496273709
	.quad	0x3fe4692d8e01f955              # double 0.63783910499459273
	.quad	0x3f83e939c8ee5e00              # double 0.0097221865124046402
	.quad	0x3fd4c22da8130772              # double 0.32435170567997951
	.quad	0x3fe4fd54edb298e1              # double 0.65592428613015497
	.quad	0x3febc78251def37a              # double 0.8681041335145061
	.quad	0x3fe1fc8a0be652ef              # double 0.56207754444275604
	.quad	0x3fcc9ab596012a88              # double 0.22347135376397298
	.quad	0x3fd8583dc436e2ee              # double 0.38038582002222554
	.quad	0x3fd49f7f40e9ff20              # double 0.32223492945921528
	.quad	0x3fe7ddba2c8e4289              # double 0.74581631376538937
	.quad	0x3fc97ace8230b1e4              # double 0.19906026226944029
	.quad	0x3feeb28de8a102ba              # double 0.95929618296948793
	.quad	0x3fb1136c19a4f988              # double 0.066702610264632978
	.quad	0x3fdbaae7c5fc0d6a              # double 0.43230623564178094
	.quad	0x3fe65bb21ba7cb98              # double 0.69869332696395059
	.quad	0x3fb1d69b8ec232e8              # double 0.069680902817889412
	.quad	0x3feab7c29d8b34c7              # double 0.83493166704433797
	.quad	0x3fe8fefb44a26d0b              # double 0.78112567334338345
	.quad	0x3fe82089100901f9              # double 0.7539716065585359
	.quad	0x3feef52771d5bd80              # double 0.96742603524573667
	.quad	0x3fe723254767e58a              # double 0.72304023691610664
	.quad	0x3fdb96ea8cd7313c              # double 0.43108619455303532
	.quad	0x3fef2675b43ba155              # double 0.97344479753250345
	.quad	0x3fdf525a85a5c56c              # double 0.4894014649535936
	.quad	0x3fcbe923c31abb6c              # double 0.21805235888083574
	.quad	0x3fecfc19a3e0a619              # double 0.90577394492464969
	.quad	0x3fd5b9383bbe700e              # double 0.33942991098751996
	.quad	0x3f8737e72c1f2ac0              # double 0.011337095293034394
	.quad	0x3faf6ad16196afb0              # double 0.061361830866501932
	.quad	0x3f9bde5908e65f20              # double 0.027215377014356723
	.quad	0x3fd8161e2c99476a              # double 0.37634996753069194
	.quad	0x3fc10d30a24e77c0              # double 0.13321502614138403
	.quad	0x3fe0d009952b392a              # double 0.52539519438304194
	.quad	0x3fe7e385ad286fb6              # double 0.74652370281136515
	.quad	0x3fcd837fd06df298              # double 0.23057553937168929
	.quad	0x3fe0563b246d17d0              # double 0.51052624811631553
	.quad	0x3fe138c1b94b2b92              # double 0.53817831220782097
	.quad	0x3fd17af4ec278e26              # double 0.27312968313182961
	.quad	0x3feef882c37f5094              # double 0.96783579047270729
	.quad	0x3fd49e87f9e2a46c              # double 0.32217597391951958
	.quad	0x3fe082658eef4803              # double 0.51591756741459027
	.quad	0x3fdd235e6797af0a              # double 0.45528373829323299
	.quad	0x3fc8b316f5fc8ae4              # double 0.19296538363513271
	.quad	0x3fa0bd932d5bc260              # double 0.032696341788214012
	.quad	0x3feaa21a78e8be5b              # double 0.83228801360196358
	.quad	0x3fc54ba629d1885c              # double 0.16637112657469089
	.quad	0x3fd78ba3bca87b76              # double 0.36789792464872251
	.quad	0x3feed9a742a5bf82              # double 0.96406901375847576
	.quad	0x3fd6703656c6cc52              # double 0.35059889292023627
	.quad	0x3fdcb3252ee26adc              # double 0.44843415812071696
	.quad	0x3fec8deabf50b0d0              # double 0.89232385030984496
	.quad	0x3fecd8b1216a042d              # double 0.90145164991566207
	.quad	0x3fe2964fc50dbc3b              # double 0.58084858405152973
	.quad	0x3fe91e5496274667              # double 0.78495244337882475
	.quad	0x3fec518414eced1f              # double 0.88495067679415118
	.quad	0x3fd7adee027c60aa              # double 0.36999082796820437
	.quad	0x3fe8e077cb0fc130              # double 0.77740087185342155
	.quad	0x3fec036eec41dc83              # double 0.87541910308836213
	.quad	0x3fe7eab02a8a516a              # double 0.7473984557023361
	.quad	0x3fc17371e306e488              # double 0.13633559785174421
	.quad	0x3fe5aa2e7204cf18              # double 0.67702410001081414
	.quad	0x3fc9c12c748e398c              # double 0.20120769206227995
	.quad	0x3fe1a42bdfd4b962              # double 0.55129045216544292
	.quad	0x3fe3e95351ead74e              # double 0.62223211287958136
	.quad	0x3feae761f505a316              # double 0.84074495178092223
	.quad	0x3fe2e94ff8dd0537              # double 0.5909805164921299
	.quad	0x3fe780b47e2da2f9              # double 0.73446106571381542
	.quad	0x3febb37a72ca9c06              # double 0.86565897388652568
	.quad	0x3fe846ffeb6013d0              # double 0.7586669537710069
	.quad	0x3fdc20fe9c6657d6              # double 0.4395138289777355
	.quad	0x3fd29f3d23520800              # double 0.29096916627179326
	.quad	0x3fd64b6bc409c120              # double 0.34835333008142477
	.quad	0x3fdcb6d1ab7a8d94              # double 0.44865838762253785
	.quad	0x3feebd5c4e3bfcdb              # double 0.96061530380384441
	.quad	0x3fe4410bc8e055bf              # double 0.63294018968252164
	.quad	0x3fe23a54c60d1f53              # double 0.56962050134550635
	.quad	0x3fb8f6b969f4e1a0              # double 0.097514713638594319
	.quad	0x3fe45384db7aa6a7              # double 0.63519518725407387
	.quad	0x3fee5edba20338fe              # double 0.94907933848460835
	.quad	0x3fd5d860ccc2f5a4              # double 0.34133167263265762
	.quad	0x3fd6a2ce72ff63c2              # double 0.35368691663967067
	.quad	0x3fda86f35ff0d3e2              # double 0.41448673600399222
	.quad	0x3fd5d5f2db8d6858              # double 0.34118339005147424
	.quad	0x3fe3357fc97cb74f              # double 0.60028066018069548
	.quad	0x3fe448c224663b6d              # double 0.63388163670775344
	.quad	0x3fda8e3350ffa282              # double 0.41492922697083412
	.quad	0x3fe6a4b6702de361              # double 0.70760652456293027
	.quad	0x3fe13fa8a1f54780              # double 0.53902084000058892
	.quad	0x3fd262f09a42ffbe              # double 0.28728880943890178
	.quad	0x3fa742376c1564c0              # double 0.045427066749377243
	.quad	0x3fe76acd90e5405b              # double 0.73178747463135652
	.quad	0x3fef46030ed37540              # double 0.9772963800020662
	.quad	0x3fe0e93897c365a5              # double 0.52846936837447755
	.quad	0x3fe113aa06d9b972              # double 0.5336504110144189
	.quad	0x3fe3cf81caa345eb              # double 0.61908044412319663
	.quad	0x3fbe1d8911e18df8              # double 0.11763817488240835
	.quad	0x3fe73ba654cf342c              # double 0.72603146137556029
	.quad	0x3fed4bfcad737c2d              # double 0.91552575947924242
	.quad	0x3fe62449c9447603              # double 0.69192971525234304
	.quad	0x3fe417e728b3c196              # double 0.62791784238474935
	.quad	0x3f899e20859e4d40              # double 0.012508634641369754
	.quad	0x3fe7c228140bccdf              # double 0.74245075145008943
	.quad	0x3f932788c367bea0              # double 0.018705498625364414
	.quad	0x3fccd3903d498188              # double 0.22520640366111544
	.quad	0x3fc46253273467d4              # double 0.15925063528339811
	.quad	0x3feece3e7feacb94              # double 0.96267628654310266
	.quad	0x3fe0d1e5dc37937a              # double 0.52562230120803055
	.quad	0x3fea88fd68d68ac2              # double 0.82922239757711957
	.quad	0x3fd9f992a45fb5f0              # double 0.40585771610389454
	.quad	0x3fca54c907655acc              # double 0.2057124410736918
	.quad	0x3fe9224a24f8f298              # double 0.78543574544126482
	.quad	0x3fc609d6c0d69b3c              # double 0.17217525878842277
	.quad	0x3fe8dc6991d4c38c              # double 0.77690580828321875
	.quad	0x3f9708fe93f9c820              # double 0.022495248586388183
	.quad	0x3fe729eb5dccafa9              # double 0.72386711425996453
	.quad	0x3fc2042d025109d0              # double 0.14075243580926022
	.quad	0x3feadb6adb67ec80              # double 0.83928435185170258
	.quad	0x3fed715195740703              # double 0.92008284750065206
	.quad	0x3fcdd72faf778940              # double 0.23312946384164412
	.quad	0x3fe10a0f205fa633              # double 0.53247791598295746
	.quad	0x3feb36f4344edbce              # double 0.85045824257292124
	.quad	0x3faccdef7bc69480              # double 0.056258663043345258
	.quad	0x3fc29d217850c074              # double 0.14542024969842127
	.quad	0x3fe97bebfcd203af              # double 0.79637717608431113
	.quad	0x3febbbbaf8ed9af7              # double 0.86666630381372911
	.quad	0x3fd1a2d07bef12ae              # double 0.27556240179937219
	.quad	0x3fdef3f917dacef4              # double 0.48364093141138587
	.quad	0x3fc2ccae11c5876c              # double 0.14687133662942686
	.quad	0x3fd9aec456e115c0              # double 0.40129192814159964
	.quad	0x3fdf550e01ca1bae              # double 0.48956632780794507
	.quad	0x3febb5745382a82c              # double 0.86590019522305317
	.quad	0x3fdd4a5e579f1d04              # double 0.45766409451285051
	.quad	0x3fda65eda68888aa              # double 0.41247121108075169
	.quad	0x3fa7735443d4a7f0              # double 0.045801766662705634
	.quad	0x3fed3c800b8144e8              # double 0.91363527533590361
	.quad	0x3fbdbe54a4ef1510              # double 0.11618546511370575
	.quad	0x3fdcfd296266857e              # double 0.45295176133557635
	.quad	0x3fdd6525c1169e24              # double 0.45929855209621651
	.quad	0x3fdccc620423bf08              # double 0.44997454075108623
	.quad	0x3fdce7c521cb695a              # double 0.4516461210274848
	.quad	0x3fb0a1475193fe38              # double 0.064960915962722576
	.quad	0x3f983703685d4340              # double 0.023647359127895173
	.quad	0x3fd27478f2228d96              # double 0.28835891386025858
	.quad	0x3fdddd7437131422              # double 0.46664147737857509
	.quad	0x3fd475c357582514              # double 0.31968768624990784
	.quad	0x3fbc5b01902fb6b8              # double 0.11076364298034036
	.quad	0x3fdd494f5474d638              # double 0.45759948013014506
	.quad	0x3fd30e2d71218750              # double 0.29774032638498671
	.quad	0x3fd2d40ecc07556a              # double 0.2941929810015923
	.quad	0x3feb1a910f1d6839              # double 0.84699299766658165
	.quad	0x3fe123a1dfb7bbb6              # double 0.53559964842667429
	.quad	0x3fee96d44a9f0ff3              # double 0.95591177534561067
	.quad	0x3fd34f4080144df4              # double 0.30171215541596941
	.quad	0x3fb886120a633820              # double 0.095795753036526765
	.quad	0x3fdd6c68f934aa1a              # double 0.45974182449813983
	.quad	0x3fe6c52fa2e63ee7              # double 0.71157056633270777
	.quad	0x3fe20c91e278ec2f              # double 0.56403440697557083
	.quad	0x3fe6e273daede635              # double 0.71514313468578072
	.quad	0x3fe0e4e84fdc964d              # double 0.52794280622465239
	.quad	0x3fd1ec726b058634              # double 0.2800565762646301
	.quad	0x3fc2c29843e7a7bc              # double 0.14656356158894635
	.quad	0x3f8900a3991af740              # double 0.012208250150589017
	.quad	0x3fccdcf2f0a9d6fc              # double 0.22549282790321701
	.quad	0x3fcfaf749846d3d8              # double 0.24754197535881306
	.quad	0x3fedf2c5e22b1e05              # double 0.93588537381668913
	.quad	0x3fe7f13e6b0e69b6              # double 0.74819870862420745
	.quad	0x3fedda475eb9dcc5              # double 0.93289536000420326
	.quad	0x3fdfa465bd0f9d1c              # double 0.4944090219782582
	.quad	0x3fdf7cde484db04c              # double 0.49199635563741562
	.quad	0x3fc19710ffc83bec              # double 0.13742268075335973
	.quad	0x3fe41ad19bdb51f6              # double 0.62827377739682677
	.quad	0x3fe6e0ae90ab1c5e              # double 0.71492698913142383
	.quad	0x3fd91bb6fd5f3286              # double 0.39231657737108383
	.quad	0x3fb4941666f03678              # double 0.080384636050632952
	.quad	0x3fc4e6b97f89cbb4              # double 0.16329115607694933
	.quad	0x3fe58e2b5a8ac7f8              # double 0.67360465702063177
	.quad	0x3fe3a2f2f09d1852              # double 0.61364123339513754
	.quad	0x3fe383a5c129f3d7              # double 0.60982024886436192
	.quad	0x3fc28677f4bae3e0              # double 0.14472865533551182
	.quad	0x3fec3bba9189a2c5              # double 0.8822911112339048
	.quad	0x3fcbd26d369c82cc              # double 0.21735921064921226
	.quad	0x3fea5b6ed26017b3              # double 0.82366124237954919
	.quad	0x3fe2e5708b830194              # double 0.59050776718508979
	.quad	0x3fda326bca6ae4aa              # double 0.4093274571164992
	.quad	0x3fb10df77aa35060              # double 0.066619365158943733
	.quad	0x3fe34e9291d8d899              # double 0.60334137426140722
	.quad	0x3fd34ddc7f492428              # double 0.30162727766270558
	.quad	0x3fc7104de90ad484              # double 0.18018506888407526
	.quad	0x3fa45f0e24b0ac20              # double 0.039787713984275053
	.quad	0x3fcfa89c6a41c000              # double 0.24733309925386493
	.quad	0x3fd699697beeb08a              # double 0.35311352827808007
	.quad	0x3fef570a3746a5ca              # double 0.97937498851859428
	.quad	0x3fef7394dff53f96              # double 0.98285907499119918
	.quad	0x3fdb742fd7c4f130              # double 0.42896648474904264
	.quad	0x3fed4f1f70566e5a              # double 0.91590854588452975
	.quad	0x3fb59e3df3057de8              # double 0.084445831138047489
	.quad	0x3fef43d459ebb591              # double 0.97702996790546781
	.quad	0x3fe39d5821031752              # double 0.61295706222220248
	.quad	0x3fee06c4bdf83af6              # double 0.93832623580405428
	.quad	0x3fd2fa1aa4804e00              # double 0.29651514114922861
	.quad	0x3fe1e78eb7fa5b0d              # double 0.55951629574960438
	.quad	0x3fc9f9721619132c              # double 0.20292497710229307
	.quad	0x3fef160ed223fea0              # double 0.97144261401259157
	.quad	0x3feb7dacabe9b247              # double 0.85909112526639653
	.quad	0x3fd356a09b1fb9b4              # double 0.30216231488057166
	.quad	0x3fee0429c1838869              # double 0.93800819202102759
	.quad	0x3f8127cf62a1be80              # double 0.0083767129874268154
	.quad	0x3fe9523c41b9b841              # double 0.79128849827771586
	.quad	0x3fdf8a7b54a19c1c              # double 0.4928272558667588
	.quad	0x3fe7684bcacd65f7              # double 0.73148145303565471
	.quad	0x3fdf31fb7c3bae2c              # double 0.48742568142071963
	.quad	0x3fc9b5a19a07d818              # double 0.20085544606234929
	.quad	0x3fd4292d068e97e6              # double 0.31501317634899662
	.quad	0x3fe1789f705b4a17              # double 0.54597446388862891
	.quad	0x3fed648df865a18e              # double 0.91852472796476703
	.quad	0x3fcc086f005623cc              # double 0.21900737301282758
	.quad	0x3fd85d7d4a65a72a              # double 0.38070614114131962
	.quad	0x3fedca5dbcdb4e43              # double 0.93095290075366
	.quad	0x3fd077dce7dd425c              # double 0.25731585162160342
	.quad	0x3fec6b61eddacdf0              # double 0.88810821968075793
	.quad	0x3fe93ffc31a3f138              # double 0.78906068511381644
	.quad	0x3fe39ec38b0f4dc9              # double 0.6131303516398755
	.quad	0x3fdb879e197aea34              # double 0.43015243995947405
	.quad	0x3fc365dd7feb2024              # double 0.15154618021029009
	.quad	0x3fb206a9edb2da00              # double 0.070414181262869135
	.quad	0x3fe279839d20dc2e              # double 0.57733326615460157
	.quad	0x3fc24aa54d28a76c              # double 0.14290300624389418
	.quad	0x3fe1cdffc62361ac              # double 0.55639637659901586
	.quad	0x3fde0ad871e5c500              # double 0.46941195605093355
	.quad	0x3fef04ae67fda2ad              # double 0.96932144461341851
	.quad	0x3fecdb5bfa1aa9a5              # double 0.90177725647418028
	.quad	0x3fc7e189470b3350              # double 0.18657031983311834
	.quad	0x3fa26114db9b1270              # double 0.035896922881453075
	.quad	0x3feb0ebc1fa19528              # double 0.84554868867841027
	.quad	0x3fed420e9cbd9147              # double 0.91431360829714314
	.quad	0x3fe81bf4ec7a00e6              # double 0.75341268717604915
	.quad	0x3fdc9be876f99b98              # double 0.44701587313323321
	.quad	0x3fc5ee158d9650b0              # double 0.17132825292049381
	.quad	0x3fed9bb41b246b54              # double 0.92525677968238051
	.quad	0x3fdda77a51e476b4              # double 0.46334703442867498
	.quad	0x3fe9ea6c80d569a9              # double 0.80986619150944705
	.quad	0x3fdaa7229bb31f1e              # double 0.41645112233207893
	.quad	0x3fea7647adec7f4c              # double 0.82693847627158723
	.quad	0x3feb22dccc404e7e              # double 0.8480056752473073
	.quad	0x3fd67f664b5d6322              # double 0.35152585372775225
	.quad	0x3fe66e33dbf595cb              # double 0.70095246277622303
	.quad	0x3fa72453c06e8040              # double 0.045199029197874996
	.quad	0x3fea34f217646ec7              # double 0.81896309441386783
	.quad	0x3fdd2af7cc5f86a4              # double 0.45574755628886465
	.quad	0x3fe6b0cef1162374              # double 0.70908305251314951
	.quad	0x3fe736506028f45a              # double 0.72538012295957377
	.quad	0x3fe0338f4dca78a2              # double 0.50629391854797157
	.quad	0x3fd268704ecaf174              # double 0.28762443251232317
	.quad	0x3fec1f7acb62b3c4              # double 0.87884273265591916
	.quad	0x3fe4e66b9b6c085d              # double 0.65312748294696699
	.quad	0x3fef2838a73da408              # double 0.97365982689109475
	.quad	0x3fc4bdd7cbed9ad8              # double 0.16204354722432046
	.quad	0x3fde7ef6d1952916              # double 0.47649927584701979
	.quad	0x3fd97b1669dc9f70              # double 0.39813766801898165
	.quad	0x3fea07e5b173a155              # double 0.81346401842624039
	.quad	0x3fe9ef0bd01689ff              # double 0.81043043749042443
	.quad	0x3fc3882d465456a8              # double 0.15259328779273074
	.quad	0x3fc45d8840a3ad14              # double 0.15910437732905136
	.quad	0x3fe764f1ef0a4492              # double 0.73107239425202608
	.quad	0x3facfd75106aedd0              # double 0.056621225599396419
	.quad	0x3fe18dab2d1a8dec              # double 0.54854353722879301
	.quad	0x3f91d0dd7021b460              # double 0.017398319214795399
	.quad	0x3fc25f372df948a0              # double 0.14353074784100261
	.quad	0x3fd18e35306aa4d6              # double 0.27430467346364418
	.quad	0x3fc88c90d3848850              # double 0.19178972557080209
	.quad	0x3fe7581873d736d0              # double 0.72950384736187779
	.quad	0x3fc575df7c2b7574              # double 0.16765969813324555
	.quad	0x3fdae3463284c730              # double 0.42012171681845967
	.quad	0x3fe6583e82ca5c79              # double 0.69827199502004966
	.quad	0x3fcfb0b37e2b54e0              # double 0.24757999096497141
	.quad	0x3fe0e385d28f9bad              # double 0.52777377247990886
	.quad	0x3fecec46d945f29c              # double 0.90384237705400805
	.quad	0x3fd950423532dc92              # double 0.39552359767135059
	.quad	0x3fd6526a927123ae              # double 0.3487802915665793
	.quad	0x3fc600ed53edd2d4              # double 0.17190329168410889
	.quad	0x3fcf0191ed0eb374              # double 0.2422354133135759
	.quad	0x3fdc45d716ab2bf6              # double 0.44176270688757258
	.quad	0x3fe1dba62b832082              # double 0.55806263445357751
	.quad	0x3fc0583276fd7dc4              # double 0.12769156274860738
	.quad	0x3fb2e8a024351058              # double 0.073862084235828518
	.quad	0x3fe5cb0ae533e4c6              # double 0.68103546873239718
	.quad	0x3fbb2e786ac77240              # double 0.10617783171569162
	.quad	0x3febf50f1e0cd934              # double 0.87366443509271229
	.quad	0x3fe4f47f7d4413d1              # double 0.65484594789506378
	.quad	0x3fc10fe4da1001cc              # double 0.13329754493316981
	.quad	0x3fde8ba424163306              # double 0.47727302097409596
	.quad	0x3fea495150a69150              # double 0.82144990684586539
	.quad	0x3fad1f05a5271fa0              # double 0.056877304468400114
	.quad	0x3fe4043b5c52ae4c              # double 0.62551658660727005
	.quad	0x3fa5c2b646be6af0              # double 0.042501159797401544
	.quad	0x3fbb1e5792f355a0              # double 0.10593173349055585
	.quad	0x3fe4246cd0a0e1c8              # double 0.62944641826384728
	.quad	0x3fefa236595ee2f0              # double 0.98855130629735122
	.quad	0x3fdd18dd9966cc88              # double 0.45464267712231576
	.quad	0x3fc1f6429b27138c              # double 0.14032776428043936
	.quad	0x3fb67441ee48d3e8              # double 0.087711449313090051
	.quad	0x3fee7361c01de439              # double 0.9515846969872036
	.quad	0x3fc343da3e4231d4              # double 0.15050819435090423
	.quad	0x3fe8efe4166e78a1              # double 0.77928356534154741
	.quad	0x3fd75fcf2fe22556              # double 0.36522273708449882
	.quad	0x3fdab6ba34feaee2              # double 0.41740279364851862
	.quad	0x3fb9b5c65915be00              # double 0.10042991328167972
	.quad	0x3f7938c1d1175880              # double 0.0061576434104236855
	.quad	0x3fd0b0285752287e              # double 0.26075180556711774
	.quad	0x3fbf72e6c23b2488              # double 0.12284700624435818
	.quad	0x3fef7f2f98b386a1              # double 0.98427562546222102
	.quad	0x3fe8c814fcdede6d              # double 0.77442407025132598
	.quad	0x3fc19b8e01a2c758              # double 0.1375596530902452
	.quad	0x3fe0c441e787548a              # double 0.5239572069209697
	.quad	0x3fc4d8ca4a1c1830              # double 0.16286591166152808
	.quad	0x3fe1101636f798d7              # double 0.53321371780182403
	.quad	0x3fe61b4cc38cc8fe              # double 0.69083250230167415
	.quad	0x3fe1042f588355da              # double 0.53176085746479917
	.quad	0x3fee9f16ee74a20f              # double 0.95692011426314305
	.quad	0x3fb914d20a40ab88              # double 0.097973945143776331
	.quad	0x3fd8917ba40fa8fe              # double 0.38387957593535293
	.quad	0x3fd75ce71018129a              # double 0.36504532405550949
	.quad	0x3feaab62aab04a2a              # double 0.83342107141135569
	.quad	0x3feafcdd728f2169              # double 0.84336731314492142
	.quad	0x3fecb8d75b42fac7              # double 0.89756362747706298
	.quad	0x3fb23390246453c8              # double 0.071099289784185449
	.quad	0x3fea4aefd74dbc2a              # double 0.82164756824011431
	.quad	0x3fe1e8d45ce84c2e              # double 0.55967157503108012
	.quad	0x3fe34090feb0f16c              # double 0.60163163895007932
	.quad	0x3fd7702ec3f8f872              # double 0.36622208726829009
	.quad	0x3fb9aed72b30eb40              # double 0.10032410435171091
	.quad	0x3fd58c24bb44c092              # double 0.33667867935128826
	.quad	0x3fd38d3f03c55ce6              # double 0.30549598091370311
	.quad	0x3fe1e2a5e6d88669              # double 0.55891699873991485
	.quad	0x3fd299a851dc807e              # double 0.29062850946684893
	.quad	0x3fa7041aa02aa2d0              # double 0.044953186084347174
	.quad	0x3fc729dd1c172c0c              # double 0.1809650790367815
	.quad	0x3fe74340668e5dfb              # double 0.72695941954128729
	.quad	0x3fd0feb52ea06310              # double 0.26554612687464019
	.quad	0x3fc46ce95e88b48c              # double 0.15957371822279176
	.quad	0x3fb183a5acd90e68              # double 0.068415026377857679
	.quad	0x3feb63855ea3b2f0              # double 0.85589855655925184
	.quad	0x3fdb7b524e6471f6              # double 0.42940194755081451
	.quad	0x3fe8f3ee74916d20              # double 0.77977679030610502
	.quad	0x3fbcd896f3bcf8e0              # double 0.1126798958839319
	.quad	0x3fc62ade2214ba04              # double 0.17318321861371555
	.quad	0x3fe6501d783286f4              # double 0.69727967716263928
	.quad	0x3fe1210dd3f26f79              # double 0.53528491397763311
	.quad	0x3fc9b3f90c76d824              # double 0.20080483540158511
	.quad	0x3fb17349920c2408              # double 0.068165395885572022
	.quad	0x3fefb50968fc8dcc              # double 0.99084921364959077
	.quad	0x3fe773b049e2362a              # double 0.7328721468963455
	.quad	0x3fe14f1b7d16a978              # double 0.5409066622863028
	.quad	0x3f99b25a1f2a1240              # double 0.025094421531792088
	.quad	0x3fe6378bfb828df5              # double 0.69428061602633184
	.quad	0x3fe29c7183c08d1e              # double 0.58159709675638616
	.quad	0x3feacfbf35f0ae02              # double 0.83785973105608513
	.quad	0x3fde55491ed8ec46              # double 0.47395542156636272
	.quad	0x3fef296fb3a0bd8f              # double 0.97380814632008305
	.quad	0x3fdd912a420808aa              # double 0.46198517273308914
	.quad	0x3fe7369c321c80c2              # double 0.72541627681132348
	.quad	0x3fd5a27401474494              # double 0.3380403530582694
	.quad	0x3fde0a575075a54c              # double 0.46938116891268034
	.quad	0x3fed2ebfbb108340              # double 0.91195665870700537
	.quad	0x3fef4114b76bdfdf              # double 0.97669444870461663
	.quad	0x3fecf7ed3ffae710              # double 0.90526449676619514
	.quad	0x3fe11160d2c5edf1              # double 0.53337136427529519
	.quad	0x3fb18931feac3dc0              # double 0.068499684024792451
	.quad	0x3fe2095b762033d8              # double 0.56364224502032823
	.quad	0x3fe7c58812f67960              # double 0.74286273673696356
	.quad	0x3fdcb1e8c58da98e              # double 0.44835871975251329
	.quad	0x3fccbf1766936e60              # double 0.22458164700116168
	.quad	0x3feaee38f78a97ea              # double 0.84157989833761104
	.quad	0x3fe9f3aa12970e4f              # double 0.81099418288108349
	.quad	0x3fd9d3ff5736cc86              # double 0.4035642959308422
	.quad	0x3fc7b8fd304bcbec              # double 0.1853329168148713
	.quad	0x3fc4069d08c925f8              # double 0.15645182541838643
	.quad	0x3feb8e95ddde96ac              # double 0.86115544637569518
	.quad	0x3fd1077e00c7fb1e              # double 0.26608228756224317
	.quad	0x3fe66c561033b28e              # double 0.70072463192407652
	.quad	0x3fe32f22f3390acb              # double 0.59950397018868651
	.quad	0x3fec65560757b54b              # double 0.88737012323478248
	.quad	0x3fcdab8dac57e41c              # double 0.23179789462281597
	.quad	0x3fd3d5defdf5ecfc              # double 0.30992865372509448
	.quad	0x3fcb25862482679c              # double 0.21208264143643596
	.quad	0x3f9a59a0fede09a0              # double 0.025732532077663017
	.quad	0x3fedfc64188e6284              # double 0.93705944820528985
	.quad	0x3fef5abbf0fcda75              # double 0.97982594554817004
	.quad	0x3fe4c3e2399e0f61              # double 0.64891158345606581
	.quad	0x3fd1204b38e0970e              # double 0.26759605936455066
	.quad	0x3faa761f20e830e0              # double 0.051682446257560022
	.quad	0x3fe5b4be0e5779d8              # double 0.678313282023562
	.quad	0x3fbca4124e932f40              # double 0.11187853258450975
	.quad	0x3feafdf37615cbaa              # double 0.84349988044265456
	.quad	0x3fefbe4347b9a2ff              # double 0.99197544106308999
	.quad	0x3fea89ac163e5a54              # double 0.82930569023558087
	.quad	0x3fe354269af6f5e4              # double 0.60402231470623891
	.quad	0x3fd493661e896358              # double 0.32149651510331045
	.quad	0x3fca05f3df7257b8              # double 0.20330665979844098
	.quad	0x3fb22e8c1233a8c8              # double 0.071022753185079002
	.quad	0x3f6380ab3bb5d500              # double 0.0023806900405199949
	.quad	0x3fe3ffa581c23769              # double 0.62495684951293839
	.quad	0x3fe1d87847d7b01b              # double 0.55767454177612608
	.quad	0x3fd51d35c3112742              # double 0.32990783738624796
	.quad	0x3fe56da9bdd34fbe              # double 0.669636603119663
	.quad	0x3fe4da9a569b4fb3              # double 0.65168492236488473
	.quad	0x3fe3531d3c02fb92              # double 0.60389577599549882
	.quad	0x3f72f902b851ab00              # double 0.0046320062875604417
	.quad	0x3fe29410d5a4a036              # double 0.58057443358575855
	.quad	0x3feca66465628267              # double 0.89531154443473049
	.quad	0x3fb2b3b3a8394928              # double 0.07305453164125153
	.quad	0x3fbdb39828bc2f20              # double 0.11602164263257153
	.quad	0x3fdd372473c305c0              # double 0.45649062447418132
	.quad	0x3fe83239dbe0d7ba              # double 0.75613110489825108
	.quad	0x3fedda61d87c65cf              # double 0.93290798456581026
	.quad	0x3fe2e86a038b0f3d              # double 0.59087086383849619
	.quad	0x3fd9095827838eb2              # double 0.39119533404139439
	.quad	0x3fe82827e7cf9b91              # double 0.75490184093074408
	.quad	0x3fe705ee8f2828f9              # double 0.7194741054566115
	.quad	0x3fe14b80e91b1a01              # double 0.5404667427872597
	.quad	0x3fe03b372ff3d452              # double 0.50722846379961539
	.quad	0x3febe25e0c4b5367              # double 0.87138273621768014
	.quad	0x3fdc31fa6ca5d0b4              # double 0.4405504284870958
	.quad	0x3fe456c02ad85e70              # double 0.63558967941476219
	.quad	0x3feff3a4e9e731ca              # double 0.99849172290992638
	.quad	0x3fe050a7606ed9d1              # double 0.5098454364259003
	.quad	0x3fc7b2473e5767ec              # double 0.18512812179579841
	.quad	0x3fe7468cff8875b8              # double 0.7273621550445375
	.quad	0x3fe2b586a809acb0              # double 0.58465893573647598
	.quad	0x3fc83b5e93236d70              # double 0.18931181129924424
	.quad	0x3fdee1074d78d8f4              # double 0.4824846512377825
	.quad	0x3fd603b84325706e              # double 0.34397703702212012
	.quad	0x3fe481d471a811b6              # double 0.64084837149180518
	.quad	0x3fe04565b0b3c507              # double 0.50847134124902105
	.quad	0x3fd21ecfa6b87242              # double 0.28313056260393321
	.quad	0x3fe3cac26587c396              # double 0.61850089864866464
	.quad	0x3fdd649f08bde4b4              # double 0.45926643232048581
	.quad	0x3fa50ea2302dd0a0              # double 0.041127270108433978
	.quad	0x3fea9eb0a71ca6ad              # double 0.8318713439850477
	.quad	0x3feb247ca7e7c322              # double 0.84820397180564933
	.quad	0x3fe44958a21fe718              # double 0.63395339646305882
	.quad	0x3fe3689b58d65b2c              # double 0.60651938773194081
	.quad	0x3fe634810b1f0b6e              # double 0.69390918895838438
	.quad	0x3fc2439b88234ee0              # double 0.14268821856841551
	.quad	0x3fc264b4b81b643c              # double 0.14369830121612093
	.quad	0x3fdf37953d1e2e9a              # double 0.4877675148825148
	.quad	0x3fe35ac0115bf253              # double 0.60482791319334195
	.quad	0x3fdbd8dc1a2d9d18              # double 0.43511107021773077
	.quad	0x3fd81d688dd19aee              # double 0.37679494714249884
	.quad	0x3fe22e0d03d5029f              # double 0.56812144039584556
	.quad	0x3fef2cdf75c601e0              # double 0.97422764780645465
	.quad	0x3f771a406d7c6880              # double 0.0056402699190362116
	.quad	0x3fe31350345f89a3              # double 0.59610758046283185
	.quad	0x3febe3e2b2df93a7              # double 0.87156805931282555
	.quad	0x3fc1fc65e7c57540              # double 0.14051507775267602
	.quad	0x3fec9a0280ca067d              # double 0.89380002168782335
	.quad	0x3fe11fb540201f98              # double 0.53512060665615291
	.quad	0x3fcdbf0e1d689c5c              # double 0.23239304004639194
	.quad	0x3fedf6ab906d13de              # double 0.93636110504359826
	.quad	0x3fac473523b15770              # double 0.055230770689987163
	.quad	0x3fe137ae6f2e2f02              # double 0.538047043942669
	.quad	0x3fee1230f8bf6929              # double 0.93972061713728749
	.quad	0x3fed43dacbf456c1              # double 0.91453304133275293
	.quad	0x3fc1b44774cf14a0              # double 0.13831418231544479
	.quad	0x3feeea16683e7573              # double 0.96607513771202346
	.quad	0x3fef2a023ebbccb0              # double 0.9738780236497373
	.quad	0x3fd8514dd2d22964              # double 0.37996240222914524
	.quad	0x3fb757a9c8542e70              # double 0.091181384476095805
	.quad	0x3fe234e6c969174c              # double 0.5689577039526994
	.quad	0x3fe8f0df54124704              # double 0.77940336628145745
	.quad	0x3feb94cb5ced8074              # double 0.86191337728452177
	.quad	0x3fed8058fd81d12a              # double 0.92191743386368796
	.quad	0x3fa6b143e68fd860              # double 0.044321176428568476
	.quad	0x3fd16ef07c7913ca              # double 0.27239620357096028
	.quad	0x3fd3f8cc54e7754a              # double 0.31206043521327287
	.quad	0x3fc65e8a09046714              # double 0.17476010742466797
	.quad	0x3fc40384a4838e2c              # double 0.15635736496834463
	.quad	0x3fe36c5383d3c75b              # double 0.60697341678153849
	.quad	0x3fef9412f9cb07f1              # double 0.98682545459473491
	.quad	0x3fcf04489f6ba9ac              # double 0.2423182276173298
	.quad	0x3fdd75310aa07562              # double 0.46027780568859644
	.quad	0x3fee352ed213f6c1              # double 0.94399205237251504
	.quad	0x3fc9956a01fecb48              # double 0.19987225625444638
	.quad	0x3fec160e8e97e8fe              # double 0.87769248819611767
	.quad	0x3fed92826474f1f9              # double 0.92413444157096969
	.quad	0x3fefd827326fb5a0              # double 0.99513587809422077
	.quad	0x3fdd71f0708812d6              # double 0.46007929791839552
	.quad	0x3fa081540060f650              # double 0.032236695333705101
	.quad	0x3fc93b03a8068304              # double 0.19711347298018478
	.quad	0x3fd17aa97078c5ce              # double 0.27311168654986495
	.quad	0x3fe8cf9348f321e1              # double 0.7753387856292272
	.quad	0x3fe43a7357eb4be4              # double 0.63213507816032832
	.quad	0x3fe374b18f852767              # double 0.60799482375408054
	.quad	0x3faf58fd4a596a80              # double 0.061225810361709598
	.quad	0x3fec3664d45bf31e              # double 0.8816398761406139
	.quad	0x3fd85cc7219b7ae6              # double 0.38066271097151938
	.quad	0x3fedeb600f6c448c              # double 0.93498232853211638
	.quad	0x3fe66b1fb375b22e              # double 0.70057663965923722
	.quad	0x3fc180d8f232dc84              # double 0.13674461198909083
	.quad	0x3feb6c6db582f9c4              # double 0.8569859070919894
	.quad	0x3fef08be3264a4e0              # double 0.96981725542459784
	.quad	0x3fd0d9be8636f2cc              # double 0.2632900534334055
	.quad	0x3fe9b5ff08ed7653              # double 0.80346633666676792
	.quad	0x3fe7bfce532c269b              # double 0.7421638130628766
	.quad	0x3febe2da12ebc9eb              # double 0.87144187636868986
	.quad	0x3fda03da4c65a194              # double 0.40648515186924183
	.quad	0x3fcdad86b3f54694              # double 0.23185809885994912
	.quad	0x3fd343ed39842d3c              # double 0.30102091423823985
	.quad	0x3fcf536b694d42f4              # double 0.24473326341333002
	.quad	0x3fe7df2ac3863eaf              # double 0.74599207104070853
	.quad	0x3fe18ac51c25a16c              # double 0.54818969247302851
	.quad	0x3fd0462d4a8239e8              # double 0.25428325916519023
	.quad	0x3fd2a90680d86f56              # double 0.29156649191439976
	.quad	0x3fef047cbc0db3e7              # double 0.96929775933460582
	.quad	0x3fecfee9f2eeb047              # double 0.90611741492967546
	.quad	0x3fdfb477b8f6f636              # double 0.49538987219770847
	.quad	0x3fb799bd495fd330              # double 0.09218962708821432
	.quad	0x3fc9a11821c5160c              # double 0.20022870682639426
	.quad	0x3fdc9871601420dc              # double 0.44680437452963218
	.quad	0x3fe8798a01694b11              # double 0.76483631396908625
	.quad	0x3fed7c9f99ef9199              # double 0.92146282258595413
	.quad	0x3fd6d3f94dea1224              # double 0.35668785675832937
	.quad	0x3fd49f0f6431ce0a              # double 0.32220825943588294
	.quad	0x3fecf225f7d3234c              # double 0.90455912020943562
	.quad	0x3fe8077fa52b9131              # double 0.75091535816003419
	.quad	0x3fd44d021a76e02e              # double 0.31720020851526243
	.quad	0x3fefc6c57d2e8215              # double 0.99301409196420087
	.quad	0x3fed9588a1fd7e00              # double 0.92450362814628306
	.quad	0x3fd5fd3df8a2069c              # double 0.34358166962202019
	.quad	0x3f8a4348cbac7600              # double 0.012823647227885537
	.quad	0x3fe8a769b68f5c95              # double 0.77043615013362177
	.quad	0x3fd9108f22ccf14a              # double 0.39163568876735566
	.quad	0x3fefafa61bd79172              # double 0.99019151151564544
	.quad	0x3fe9481bf141af86              # double 0.79005238647867837
	.quad	0x3fd1c23154300dda              # double 0.27747758122879207
	.quad	0x3fec9f2fc187e4d8              # double 0.89443195151320776
	.quad	0x3fd6b4cc3798d844              # double 0.35478501729392442
	.quad	0x3fe4976f292f9b8b              # double 0.64348562282690247
	.quad	0x3fee73d38127b96f              # double 0.9516389391481378
	.quad	0x3fcfc008b4b51a88              # double 0.24804791282277372
	.quad	0x3fc76b47a70649b0              # double 0.1829614224958056
	.quad	0x3fd6fd0bef23233a              # double 0.35919473984954531
	.quad	0x3fdc04b434f8e21a              # double 0.437787105303444
	.quad	0x3fd9af0dd205247c              # double 0.40130944738172736
	.quad	0x3fe2a5008eb1f03f              # double 0.58264186735278389
	.quad	0x3fd6a625847225b6              # double 0.3538907807747721
	.quad	0x3fdefb5158cf8dac              # double 0.48408921883511868
	.quad	0x3fb66188905c50d0              # double 0.087425742382325255
	.quad	0x3fc813e1dafc1760              # double 0.18810675804723598
	.quad	0x3fe7e082064ce496              # double 0.74615575056590688
	.quad	0x3fcc87a153791bcc              # double 0.22288910461267475
	.quad	0x3fcd9b3e1b53fb70              # double 0.2313001283109446
	.quad	0x3fe95840ec3a8df1              # double 0.79202314508841998
	.quad	0x3fe88e453d03b9b3              # double 0.76736699978737588
	.quad	0x3fb3b0715cc6d480              # double 0.076911053801113737
	.quad	0x3fe9c02a817ec953              # double 0.80470776836436142
	.quad	0x3fef0f59f67b3441              # double 0.97062395230171472
	.quad	0x3fdc1eb22bb8e7e2              # double 0.43937353391413414
	.quad	0x3fd4d875fdf0529a              # double 0.32571172522265501
	.quad	0x3fe0a1d4b83fc4d1              # double 0.51975475298072571
	.quad	0x3fd59836cdf272ae              # double 0.33741541015641985
	.quad	0x3fde043de51cea68              # double 0.4690088975363893
	.quad	0x3fe725bbe116d545              # double 0.72335618937237511
	.quad	0x3fe8b8d60c9b1dd1              # double 0.77256300413221812
	.quad	0x3fd472186785fbb2              # double 0.31946382627205161
	.quad	0x3fe2ebd9772c526b              # double 0.59129021907808743
	.quad	0x3f971ce31f873c80              # double 0.022571133422215173
	.quad	0x3fa7d5ac2b94afd0              # double 0.046552067108080686
	.quad	0x3feee973e4082949              # double 0.96599764382816843
	.quad	0x3fe539837b89be91              # double 0.66327070358780038
	.quad	0x3fb65205a4fb5ed8              # double 0.087189057139194559
	.quad	0x3fdc7e3e10aca78c              # double 0.44520522716867883
	.quad	0x3fda7f433117974c              # double 0.41401748460917953
	.quad	0x3fac857253d6b9e0              # double 0.055705616697526272
	.quad	0x3fe4e95dd3a113b7              # double 0.65348712285832888
	.quad	0x3fdd150a877229fa              # double 0.4544092486109147
	.quad	0x3fe9f45bf9662b07              # double 0.81107901297340923
	.quad	0x3fc1816245cbc464              # double 0.13676098258978009
	.quad	0x3fec0a9ffb8d5631              # double 0.87629698878544648
	.quad	0x3fdcd88d02275fe4              # double 0.45071721277554233
	.quad	0x3fe86ddeeb1d8e0c              # double 0.76341195984827114
	.quad	0x3fd59a61eefbff5a              # double 0.33754776323620705
	.quad	0x3fba8d5ba8e06608              # double 0.1037194526001245
	.quad	0x3fcff8eabd7af248              # double 0.2497838425823764
	.quad	0x3fe9e3ab0085c042              # double 0.80904150106471939
	.quad	0x3fd5074da1dd9a86              # double 0.32857075507346456
	.quad	0x3fe4a33b3b429189              # double 0.64492570471024735
	.quad	0x3fda54120c5ce21a              # double 0.41138125617320187
	.quad	0x3feffccd8b1b88cf              # double 0.99960972947544657
	.quad	0x3fd9aa303f1a7888              # double 0.40101247942391938
	.quad	0x3fcd3b68faa36344              # double 0.22837555158801071
	.quad	0x3feddccf126ac364              # double 0.93320420834616557
	.quad	0x3fd6e9ffbe80f874              # double 0.35803216556440209
	.quad	0x3fb2b1bf67f9ec48              # double 0.073024714360074516
	.quad	0x3fec09b00a78727a              # double 0.87618257565516378
	.quad	0x3fe722b8bad43e19              # double 0.72298847665837507
	.quad	0x3fd759b37b4d3b08              # double 0.36484992066554911
	.quad	0x3fe68e0ec2a39043              # double 0.70484102263845505
	.quad	0x3fe764e40f946df2              # double 0.73106577914171411
	.quad	0x3fef1aa7e730b7de              # double 0.97200389055592118
	.quad	0x3fecf6a24dbfec7d              # double 0.9051066893147347
	.quad	0x3fddfa0bd388840a              # double 0.46838660867257487
	.quad	0x3fe1196455d593df              # double 0.53434960140713972
	.quad	0x3fdf52d2cd6cd8c0              # double 0.48943014203122104
	.quad	0x3fb1e4367e126de8              # double 0.069888501910490342
	.quad	0x3fdcdb8674ab6492              # double 0.45089875596529183
	.quad	0x3fd7059e4e29a60c              # double 0.35971791871142567
	.quad	0x3fe83622a81c1df5              # double 0.75660832246734222
	.quad	0x3feb35fdb2559dcd              # double 0.85034069853730332
	.quad	0x3fe59cab6a35dc01              # double 0.67537470573631719
	.quad	0x3fd6d7b1ca7d0e88              # double 0.3569149472643649
	.quad	0x3fe3a804bc90feb9              # double 0.61426007108089842
	.quad	0x3fe6dafbafd11b9f              # double 0.71423134173607028
	.quad	0x3fe8c5b3467b450d              # double 0.77413333669588413
	.quad	0x3fd58cde32d20864              # double 0.33672289812978407
	.quad	0x3fd7e8d427d1ce48              # double 0.37358573807361894
	.quad	0x3fe52471c720dcaa              # double 0.66069878475436394
	.quad	0x3fd05cf075d1d6aa              # double 0.25567256456211374
	.quad	0x3fe17293f666cd7a              # double 0.54523656964595024
	.quad	0x3fe6ebbc690b8309              # double 0.71627636448474263
	.quad	0x3fe0b5ab93b85e37              # double 0.52217654086684362
	.quad	0x3febd7da3aff423f              # double 0.87009917757865896
	.quad	0x3fe6b2105df9bb81              # double 0.70923632006257276
	.quad	0x3fc6c82fb4265814              # double 0.17798420235038803
	.quad	0x3fe01d1f9f6bfea0              # double 0.50355511796074737
	.quad	0x3fe2200cac09bff9              # double 0.56641229249180391
	.quad	0x3fdea1dde987215a              # double 0.47862956815199242
	.quad	0x3fd96f85140e3c74              # double 0.39743163069301279
	.quad	0x3fe3afd6492cb6ed              # double 0.61521448413779256
	.quad	0x3fe2784bc5302428              # double 0.57718456757823322
	.quad	0x3fec9c030464eec5              # double 0.89404440744643721
	.quad	0x3fe85767702cbc10              # double 0.76066944035653883
	.quad	0x3fed2a9fd87f4f9a              # double 0.91145317349081556
	.quad	0x3fdf9be83afecb0c              # double 0.49389081727274298
	.quad	0x3fe5dd76f11f0582              # double 0.68328425497036016
	.quad	0x3fe671eaeafa177d              # double 0.70140596288614143
	.quad	0x3fd4b9fbf406380e              # double 0.32385157423493716
	.quad	0x3fa436ae0ab2dac0              # double 0.039479674154269784
	.quad	0x3fae3447167b7480              # double 0.058992597097792476
	.quad	0x3fcaac6e56cd6f74              # double 0.20838717687990604
	.quad	0x3fe72d2f8fa697ef              # double 0.72426584297931906
	.quad	0x3fe19670bf7c4475              # double 0.54961430930610666
	.quad	0x3fd6b3e8b813c396              # double 0.35473077751435633
	.quad	0x3fe657cb17388d62              # double 0.69821695838292563
	.quad	0x3fefb8a3cdf3ea13              # double 0.99128904557375319
	.quad	0x3fdcf0ab3210ee3a              # double 0.45218925370474816
	.quad	0x3fd3490c8e258216              # double 0.30133355981345866
	.quad	0x3fcbc6ee5463781c              # double 0.2170083915761446
	.quad	0x3f85d1d1474a2c00              # double 0.010654101360406898
	.quad	0x3fc1d1c6475c768c              # double 0.1392143104975968
	.quad	0x3fe5c18fae8e0640              # double 0.67987808315974263
	.quad	0x3fef6a6ce9dc5734              # double 0.98174138713759484
	.quad	0x3fdabd5ceb6eb698              # double 0.41780779830410486
	.quad	0x3fae2da7bb78f5d0              # double 0.05894207156641651
	.quad	0x3feaebc6309b8e05              # double 0.84128102773360125
	.quad	0x3fea1994f44d9bc3              # double 0.81562278476200623
	.quad	0x3fea2153a6f0a178              # double 0.81656820874654468
	.quad	0x3fe624b2793a6fe2              # double 0.69197963406940866
	.quad	0x3fd9c5b29d6da26c              # double 0.40269151090482214
	.quad	0x3fef065e58253d1f              # double 0.96952740875159182
	.quad	0x3fc46e7c86126674              # double 0.15962177797773658
	.quad	0x3fda813c96b53e64              # double 0.41413798062874307
	.quad	0x3fac70415f3576e0              # double 0.055543940422223548
	.quad	0x3f85e9da63c28100              # double 0.010699945611407191
	.quad	0x3fe2a8a75738f5be              # double 0.58308760676998594
	.quad	0x3fed3a000313ba17              # double 0.91333008385646763
	.quad	0x3fccf23b8cb26438              # double 0.22614235277140593
	.quad	0x3fe5ba6fcce3d254              # double 0.67900838868679125
	.quad	0x3fe5d7a3bda3b3b4              # double 0.68257319487530888
	.quad	0x3fe8702e34e9dcbb              # double 0.76369390806839677
	.quad	0x3f89c75a070cab80              # double 0.012587264385350627
	.quad	0x3fd297f0073daf08              # double 0.29052353579639645
	.quad	0x3fead3621e2d6833              # double 0.838303622188738
	.quad	0x3feb90c8b2a2bf92              # double 0.86142382516662708
	.quad	0x3fe6cde560eb9d85              # double 0.71263379029998986
	.quad	0x3f8bb5601c9d2780              # double 0.013529539941049995
	.quad	0x3fe7f521519730d7              # double 0.7486731141630355
	.quad	0x3fe94be4c034b7b2              # double 0.7905143503210097
	.quad	0x3fed98fe908ee8f0              # double 0.92492607339889155
	.quad	0x3fd950f74a7dd76a              # double 0.39556677126471718
	.quad	0x3fd47dff4775bdc8              # double 0.32019025782116417
	.quad	0x3fd0513baceb2f3c              # double 0.25495807539549609
	.quad	0x3fea2d0f0eef08b8              # double 0.81800034443610681
	.quad	0x3f71bdf77d9dd580              # double 0.0043315570454657282
	.quad	0x3fe87605d985ac41              # double 0.76440708622738651
	.quad	0x3fa5645dde974bd0              # double 0.041781361982110021
	.quad	0x3fe41788b465c774              # double 0.627872803057683
	.quad	0x3fef425c26ec11c4              # double 0.97685058214170128
	.quad	0x3fd64a08bc7f3f8a              # double 0.34826868446270309
	.quad	0x3fe87b7e73570924              # double 0.76507494475689385
	.quad	0x3fbb9fe31c023548              # double 0.10790843423656782
	.quad	0x3fb3da2dd13301b8              # double 0.077547896932634752
	.quad	0x3fcf60c76e3e69d4              # double 0.24514096148489151
	.quad	0x3fc6df6203a39274              # double 0.17869210412677072
	.quad	0x3fd17f92f1d08100              # double 0.2734114991635721
	.quad	0x3fe9a9874ea86619              # double 0.80194440234044173
	.quad	0x3f85db2f56549f40              # double 0.010671968290423828
	.quad	0x3fe46d41dad691ce              # double 0.63833706609562468
	.quad	0x3fef841ee0085ae9              # double 0.984878003658051
	.quad	0x3fee542551d72510              # double 0.94777170166449487
	.quad	0x3fef6e6686f18a4c              # double 0.98222662311702313
	.quad	0x3fd1530494c039ba              # double 0.27069201017811972
	.quad	0x3fee61e241eb4ae8              # double 0.9494487082941676
	.quad	0x3fdeb8a5852732a2              # double 0.48001993182405489
	.quad	0x3fd5390319738bf8              # double 0.33160474286540831
	.quad	0x3fc0cde12af49540              # double 0.13128294560844189
	.quad	0x3fd0a72b5f838d8c              # double 0.26020321204688268
	.quad	0x3fe2615fc8665f7c              # double 0.57438649311642065
	.quad	0x3fe42abaee86cfb7              # double 0.63021608912685323
	.quad	0x3fc3e9fac4ee0154              # double 0.15557798972805392
	.quad	0x3fe1851dcfbfd412              # double 0.54749956680336909
	.quad	0x3fcf9bc48536140c              # double 0.24694115166144603
	.quad	0x3fbd48dccc706688              # double 0.11439304343402956
	.quad	0x3fb499ca34524ce8              # double 0.08047164704685239
	.quad	0x3fe0d511b598f27b              # double 0.52600942104579873
	.quad	0x3fd004fb09998690              # double 0.25030399262878067
	.quad	0x3fea90a0d81469a6              # double 0.8301548214251866
	.quad	0x3fe26b70889738a0              # double 0.57561518361923802
	.quad	0x3fe0525fa8f4636f              # double 0.5100553798575741
	.quad	0x3fd1a8cf8d625a8c              # double 0.27592839057016572
	.quad	0x3fdcc093e409ea28              # double 0.44925400990874431
	.quad	0x3fd5c317c61eac0c              # double 0.34003252360952341
	.quad	0x3fe5537d253a0f64              # double 0.66644150992258888
	.quad	0x3fe572b5b9a0ee53              # double 0.67025266891091417
	.quad	0x3fd55b945e4a48b0              # double 0.33371457298302243
	.quad	0x3fd7dc5503935050              # double 0.37282300328411555
	.quad	0x3fbf1d9a87c48dd8              # double 0.1215454656090097
	.quad	0x3febee3a2ac331a0              # double 0.87283047058149421
	.quad	0x3fbbc909f060b780              # double 0.10853635901068337
	.quad	0x3fd4d7629347917c              # double 0.32564606077928437
	.quad	0x3fdd310dd721047e              # double 0.456119022452249
	.quad	0x3fd280880dd8d0fc              # double 0.28909493782272455
	.quad	0x3fdd481267fa2ede              # double 0.45752391962080974
	.quad	0x3feb46e5feff30e3              # double 0.85240459255285506
	.quad	0x3fec44a45ce47a15              # double 0.88337915556968716
	.quad	0x3fd9a53727057e12              # double 0.40070895014466246
	.quad	0x3fdb8d4dd8f76d9a              # double 0.43049951732765523
	.quad	0x3fcce22b1320fff0              # double 0.22565210756329135
	.quad	0x3fe4c5c18fd55494              # double 0.64914014904447237
	.quad	0x3fee228d81dc45d1              # double 0.94171786654822587
	.quad	0x3fde4ca9afc5bf9e              # double 0.47342912831572359
	.quad	0x3fe7e3500c6b631a              # double 0.74649813104324214
	.quad	0x3fe8dcd4c4f3caed              # double 0.77695692507981351
	.quad	0x3fd93d8486cdb41c              # double 0.39437974132926157
	.quad	0x3fea4d1f368ce700              # double 0.82191429762244184
	.quad	0x3fcfd5a44c3cb624              # double 0.24870732996480271
	.quad	0x3fbffbbd508ecb80              # double 0.12493499008887277
	.quad	0x3fecbe322764e4ef              # double 0.89821727461017342
	.quad	0x3fd85d9c4f4f92a2              # double 0.38071353669355734
	.quad	0x3feaedeea19eb46b              # double 0.84154445234675046
	.quad	0x3feee91e0878cf8a              # double 0.96595670370742082
	.quad	0x3fdf7c3108e17706              # double 0.49195505015619323
	.quad	0x3fc58ea4a4b4a4d0              # double 0.1684156231142766
	.quad	0x3fea0d4bdfb2d9d8              # double 0.81412309352054546
	.quad	0x3fe15e5142bea32b              # double 0.54276335750646376
	.quad	0x3fc3c74c8f328f9c              # double 0.15451962463441482
	.quad	0x3fdac6860c6f66be              # double 0.41836692060824621
	.quad	0x3fd7444c5971b08e              # double 0.36354359373832146
	.quad	0x3fe51f9034ef250d              # double 0.66010294283583593
	.quad	0x3fd6bafd5efd99b4              # double 0.3551629474299276
	.quad	0x3fc7bc4810ce811c              # double 0.18543339558255745
	.quad	0x3f7132900d0a4b80              # double 0.0041986109723833875
	.quad	0x3fe5f24686dcad2f              # double 0.68582464542615706
	.quad	0x3fe43d39136a35dd              # double 0.63247350494355781
	.quad	0x3fcd341c75159c9c              # double 0.22815280644428959
	.quad	0x3fed11d52669851b              # double 0.90842683317547157
	.quad	0x3fcb1516e02758f0              # double 0.211581096124696
	.quad	0x3fdd4b673dd600b2              # double 0.45772725142161186
	.quad	0x3fe76b2aa41b2a89              # double 0.73183185626960878
	.quad	0x3fdb44c196bc239c              # double 0.42607154579359885
	.quad	0x3fedcdb7fdbc27f6              # double 0.93136214788068972
	.quad	0x3fee0591b6b96f86              # double 0.93817983330107846
	.quad	0x3fecc869cd32ae2e              # double 0.89946451261261529
	.quad	0x3fda5287eb1ed2e4              # double 0.41128728829362005
	.quad	0x3fd1964d3f4e6de2              # double 0.2747986906267369
	.quad	0x3fea1124a3c26d64              # double 0.81459266647599948
	.quad	0x3feef2d9715cc9d2              # double 0.96714470044235612
	.quad	0x3fb406720cace420              # double 0.07822335061509067
	.quad	0x3fe8bac038f2779f              # double 0.77279673693168494
	.quad	0x3fd76a978f8dfe20              # double 0.36588086146363885
	.quad	0x3fd5037be997da6e              # double 0.32833764850457825
	.quad	0x3fc7e43e262016d8              # double 0.18665291654195104
	.quad	0x3fbc298c69183c90              # double 0.11000897947109167
	.quad	0x3fe38d006114acd8              # double 0.61096209488951114
	.quad	0x3fdf3295d0b6ae54              # double 0.48746247656047115
	.quad	0x3feb2083781575a1              # double 0.84771893934128084
	.quad	0x3fe3106b60402187              # double 0.59575432585647625
	.quad	0x3fe90895df22a782              # double 0.78229802685858396
	.quad	0x3fbfa300914818c8              # double 0.12358096644320249
	.quad	0x3fed0f09454fa973              # double 0.90808547532405581
	.quad	0x3fe1bd1861f33a67              # double 0.55433291560059395
	.quad	0x3fea9b1b2f1e44db              # double 0.83143386080532922
	.quad	0x3fd4733f7ab5ca44              # double 0.31953417762193603
	.quad	0x3fca5a25fc7ad814              # double 0.20587611034505982
	.quad	0x3fda2fd37e9e8146              # double 0.40916907658722257
	.quad	0x3fdeaac50c85f542              # double 0.47917295668579041
	.quad	0x3fdc366f41537bd6              # double 0.44082242373945968
	.quad	0x3fd5a067b2a250e0              # double 0.33791534847956761
	.quad	0x3fd4e0b8cb6bb4bc              # double 0.32621593346886946
	.quad	0x3fd2cde9b8b341c0              # double 0.29381793057566696
	.quad	0x3fe8031bd2b7c5ca              # double 0.75037947803337457
	.quad	0x3fdcbf8ead14976c              # double 0.44919173147569924
	.quad	0x3fdc22e15a9771d0              # double 0.43962892386278174
	.quad	0x3fecb516fa216cda              # double 0.89710568288446813
	.quad	0x3fc47c068a6034b4              # double 0.16003495937949241
	.quad	0x3fe6f382c64e9c7f              # double 0.71722544414377853
	.quad	0x3fb17a182526b0e8              # double 0.06826926142702272
	.quad	0x3fec41f3027bf2b6              # double 0.8830504463690747
	.quad	0x3fdbfc39ddec09f8              # double 0.43726965591500244
	.quad	0x3fcc138e6b80dfb8              # double 0.21934681176366921
	.quad	0x3fe012c8cd8d2329              # double 0.50229301592580555
	.quad	0x3fcfbe84ef61d570              # double 0.24800168694097691
	.quad	0x3fe74bdaf7ec0af7              # double 0.72800968572877778
	.quad	0x3fc0f94ccee4bb90              # double 0.13260803320141834
	.quad	0x3faed10d98d35a70              # double 0.060188698678463548
	.quad	0x3fd0890fb29dd76c              # double 0.25836555903457881
	.quad	0x3fe504729ed0d552              # double 0.65679293650343085
	.quad	0x3feabb0185abd7b8              # double 0.8353278742567829
	.quad	0x3fd41e60f5c68bd0              # double 0.31435417176743119
	.quad	0x3fe1ab3c3f80b242              # double 0.55215275195002556
	.quad	0x3fd895236a747668              # double 0.38410268207539966
	.quad	0x3fd9d5ef0982b2f4              # double 0.40368247917903877
	.quad	0x3fe123b3687ed002              # double 0.53560800942659648
	.quad	0x3fd703303816508c              # double 0.35956960179579123
	.quad	0x3fdf963fe689169a              # double 0.49354550851089984
	.quad	0x3fd04ba052b5c5e2              # double 0.25461586072114362
	.quad	0x3fe2a8cfe4e86a83              # double 0.58310694416589148
	.quad	0x3fd00412aeb3bb66              # double 0.25024859486341311
	.quad	0x3fd3d9d94b54984c              # double 0.31017143589486262
	.quad	0x3fe6ffd88b272aa2              # double 0.71873118570632166
	.quad	0x3fd7f078f736a486              # double 0.37405227796495699
	.quad	0x3fc4f2c530f8760c              # double 0.16365876093998144
	.quad	0x3fc1ab8eb59c4b88              # double 0.13804801814748324
	.quad	0x3fe063a64a95f8b8              # double 0.51216425483268946
	.quad	0x3fcc79bde68c8cfc              # double 0.22246526486660645
	.quad	0x3fa28a6150f9eb00              # double 0.036212006697459387
	.quad	0x3fd35346bbccda58              # double 0.30195778217185909
	.quad	0x3fc7c1a16e7f56fc              # double 0.185596636728114
	.quad	0x3feb73a2a23e9e1d              # double 0.8578656357612463
	.quad	0x3fd941a4740068e4              # double 0.3946314938381319
	.quad	0x3fbdc7d4e5b5f138              # double 0.1163304386918228
	.quad	0x3febe4c9bfeeded8              # double 0.87167823302203384
	.quad	0x3fe6a9afc232373b              # double 0.70821369103371212
	.quad	0x3fda2bd41896b8e2              # double 0.40892507935758549
	.quad	0x3fb67d0e873bdfd8              # double 0.087845714584431689
	.quad	0x3fdaeaaf18b5a1da              # double 0.42057397282635878
	.quad	0x3fbd99ea81007a00              # double 0.1156298222490264
	.quad	0x3fe3c677d38c6df1              # double 0.61797705953671145
	.quad	0x3fef13b863a1752c              # double 0.97115725955123854
	.quad	0x3fa1eb52615fd020              # double 0.034998487841136461
	.quad	0x3feeacc2323be684              # double 0.95858869372678201
	.quad	0x3fce03605065fae0              # double 0.23447803426457536
	.quad	0x3f964719f6709160              # double 0.021755605379568776
	.quad	0x3fe986ac3722e376              # double 0.79768954056554153
	.quad	0x3f863056e5fc4980              # double 0.010834387677765234
	.quad	0x3fe1b2199377e021              # double 0.5529907112350011
	.quad	0x3fda7e6052ddba86              # double 0.41396339504618884
	.quad	0x3fd718d96ed528b8              # double 0.36089168380261638
	.quad	0x3fe6e3728b1af3d5              # double 0.71526457947731592
	.quad	0x3feb8063fb89bc23              # double 0.85942267540474793
	.quad	0x3fb26b729e90e0c0              # double 0.071952022278199301
	.quad	0x3fe8c54234236414              # double 0.77407941992999207
	.quad	0x3fec9227d0db1e75              # double 0.89284125129866132
	.quad	0x3fee701954db76b9              # double 0.95118395398795663
	.quad	0x3feff002b445bb38              # double 0.99804816445780542
	.quad	0x3fe20c039f23c018              # double 0.56396657068217149
	.quad	0x3fd3e298d6e8b554              # double 0.31070538508614232
	.quad	0x3fcad9122f4c4744              # double 0.20974948224516698
	.quad	0x3fe81f46dad7c039              # double 0.75381796591501093
	.quad	0x3fe4be7b2b693124              # double 0.64825209120457261
	.quad	0x3fdbf3474bbcc46e              # double 0.43672354122379076
	.quad	0x3fcd1809ceb180ac              # double 0.22729609100770654
	.quad	0x3fe4ee298932b782              # double 0.65407254024988526
	.quad	0x3fd57381e80491be              # double 0.33517501504891445
	.quad	0x3fe8b5aed0480432              # double 0.77217808418220657
	.quad	0x3fd80475d464ec7c              # double 0.37527223340629923
	.quad	0x3fb5bafa859f1018              # double 0.084884317037961288
	.quad	0x3fe15fdcd348b749              # double 0.5429519774095094
	.quad	0x3fe12cdb98d3df21              # double 0.53672580575127793
	.quad	0x3fe0722769cb6484              # double 0.51393480933178681
	.quad	0x3fe159b3223acb4d              # double 0.54219967542153713
	.quad	0x3feff6c510659e83              # double 0.99887326433686529
	.quad	0x3fdfb522911845d0              # double 0.49543060464301636
	.quad	0x3fbd122fbb75c298              # double 0.11355875326786202
	.quad	0x3fea133965f22bfa              # double 0.81484670554470928
	.quad	0x3fe92bf6639326a0              # double 0.7866165108509513
	.quad	0x3fcd8738410f38b0              # double 0.23068907906276115
	.quad	0x3fc00507541a59e4              # double 0.12515346151913243
	.quad	0x3fc048d252160bf8              # double 0.12722233780013403
	.quad	0x3febc27ad100e806              # double 0.86749020405773147
	.quad	0x3fe268e94fb96134              # double 0.57530656405564295
	.quad	0x3f9929dfcad209c0              # double 0.024573799852541489
	.quad	0x3fd84eb976cb2376              # double 0.37980496025971122
	.quad	0x3fd3f78242ae5e88              # double 0.31198174011067481
	.quad	0x3fe2a3a92499ae4a              # double 0.58247811459063681
	.quad	0x3fc08b52a5e805c0              # double 0.12925179577727697
	.quad	0x3fe22258e9201f98              # double 0.56669278652497024
	.quad	0x3fe94792c0804af3              # double 0.78998696897391907
	.quad	0x3fb9580fecbca480              # double 0.098999972626772958
	.quad	0x3fb624e10dc27ad8              # double 0.086500230655001231
	.quad	0x3fd40aee05edaad2              # double 0.31316710070556752
	.quad	0x3fec65dbdba19839              # double 0.88743393799518977
	.quad	0x3f7e1dbf779e2700              # double 0.0073525885762906196
	.quad	0x3fd28fac51eec1d6              # double 0.29001911164507754
	.quad	0x3fee3ebf7e584654              # double 0.94515967060778871
	.quad	0x3fd60387c5a6484c              # double 0.34396547605240779
	.quad	0x3fd303a0f4138fb0              # double 0.29709647975527798
	.quad	0x3fdd65070c8ed090              # double 0.45929123140673145
	.quad	0x3fe580417ce53e77              # double 0.67190622705125136
	.quad	0x3fe81556bf14fb2e              # double 0.75260484047598708
	.quad	0x3fee6bf66280d2d8              # double 0.9506790088549577
	.quad	0x3fe68919459387a8              # double 0.70423568333739173
	.quad	0x3fd87c31de03ea0a              # double 0.38258024865322737
	.quad	0x3fd2a7c1142c4350              # double 0.29148890466699573
	.quad	0x3fa8204cefc61a80              # double 0.04712143351485043
	.quad	0x3fb0d3048bdc68f0              # double 0.065719875474687717
	.quad	0x3fe53e2039412433              # double 0.66383372480880209
	.quad	0x3fde744d4517b62e              # double 0.47584850070311091
	.quad	0x3fef01799d0b0817              # double 0.96893006012419646
	.quad	0x3fe4a0aea3aa950c              # double 0.64461452451783563
	.quad	0x3fe339ba342beb5d              # double 0.60079679670102915
	.quad	0x3fe36a1505057430              # double 0.60669947605823005
	.quad	0x3fb441ec6e766468              # double 0.079130913704277384
	.quad	0x3fee4693d529c2e6              # double 0.94611541398452625
	.quad	0x3fd07f2eb8cdd260              # double 0.25776260421051767
	.quad	0x3fed023bcd86349c              # double 0.90652265683606314
	.quad	0x3f8900368979b880              # double 0.012207437582415048
	.quad	0x3f9223360c2ca480              # double 0.017712444775643821
	.quad	0x3fdb8accdaba85b6              # double 0.43034669265952219
	.quad	0x3fb2ef00b19af6e0              # double 0.073959391937900687
	.quad	0x3fde40bbc0d94ee8              # double 0.47270101387878904
	.quad	0x3fe210b13a303e08              # double 0.56453763356142961
	.quad	0x3fc97c35d74fab00              # double 0.19910309804193815
	.quad	0x3fd71f8dfc161436              # double 0.36130094163701487
	.quad	0x3fe0ad7a1c6c11e0              # double 0.52117639113617642
	.quad	0x3fcebcf01923ee60              # double 0.24014092662388276
	.quad	0x3fe1f0e2e76d5de0              # double 0.56065507126453085
	.quad	0x3feac5f960145f06              # double 0.83666676297704679
	.quad	0x3fd1319a7d452102              # double 0.26865255578424307
	.quad	0x3fdb95e2556a2afe              # double 0.4310232004287825
	.quad	0x3fe4b347fa9e22bf              # double 0.64688490818760858
	.quad	0x3fedd4ef54e737e3              # double 0.93224302847533769
	.quad	0x3fe1d574c2d4f4b4              # double 0.55730665257546841
	.quad	0x3fb5b9082facd580              # double 0.084854613913952547
	.quad	0x3fc8a96c25cfbe18              # double 0.19267036291374562
	.quad	0x3feb348477653845              # double 0.85016082114612657
	.quad	0x3fec1cd5d52bdc83              # double 0.87851993212724755
	.quad	0x3fe744389cd4eb74              # double 0.72707777625269765
	.quad	0x3fe90260e2a7c3c8              # double 0.78154033917064059
	.quad	0x3fd429210c424954              # double 0.3150103206363799
	.quad	0x3fe491ead73c99ac              # double 0.64281217611715169
	.quad	0x3feaed002d04a2cf              # double 0.84143074791526284
	.quad	0x3fec1d7904ce5d1f              # double 0.8785977453107171
	.quad	0x3fe1a78a738c7014              # double 0.55170176094134371
	.quad	0x3fe59af58c67b509              # double 0.67516591475364962
	.quad	0x3feb1c52f0d2eaae              # double 0.84720751796642957
	.quad	0x3fec162638d9e30e              # double 0.87770377258047616
	.quad	0x3fd893d1f1634de4              # double 0.3840222222617895
	.quad	0x3fd01d1e6258c84a              # double 0.25177726368122377
	.quad	0x3fcca1f618373f54              # double 0.22369266683971978
	.quad	0x3fd3d260b4285b1e              # double 0.30971543878097119
	.quad	0x3fd637df59177618              # double 0.34716018390995051
	.quad	0x3fe2208805e1a2b6              # double 0.56647111080845636
	.quad	0x3fe6d4163a5a0423              # double 0.71338950535585288
	.quad	0x3faa440bc53fd480              # double 0.051300399616516223
	.quad	0x3fd165ae385b4810              # double 0.27183108810015799
	.quad	0x3feec3df8b140d2a              # double 0.96141030467734834
	.quad	0x3fe6448c8833f082              # double 0.69586779214979821
	.quad	0x3fe8b787b7575e43              # double 0.77240358170360712
	.quad	0x3f3eabc02c89d800              # double 4.6800081012265959E-4
	.quad	0x3fe612f73650efc1              # double 0.68981514557480506
	.quad	0x3fe5d55818ca6945              # double 0.68229298440864083
	.quad	0x3fa9512a04306600              # double 0.049447358142241882
	.quad	0x3fdc67ee71cbf106              # double 0.44384347069696195
	.quad	0x3fd81bc65e7c481c              # double 0.37669524409386823
	.quad	0x3fe2f667e8f25cac              # double 0.59257884499938518
	.quad	0x3fdec67e3f4f61e8              # double 0.48086506064058065
	.quad	0x3fe2277d9bf79a16              # double 0.56732063734381444
	.quad	0x3fe02c91739d373d              # double 0.50544045048602693
	.quad	0x3fd82a4a28eca7e2              # double 0.37758115765120526
	.quad	0x3feff9e9994e94e3              # double 0.99925689642682546
	.quad	0x3fefcd7a504f9b9f              # double 0.99383273778663638
	.quad	0x3faf1d7a5b67f4e0              # double 0.060771773965805798
	.quad	0x3fec9b33ed731c9b              # double 0.89394565941701687
	.quad	0x3fe5d675106b38be              # double 0.68242886740497233
	.quad	0x3fcc427c7c439024              # double 0.22077899997305039
	.quad	0x3fc1b08cf2a78ab4              # double 0.13820039604532541
	.quad	0x3fea9eb27d17f9a4              # double 0.83187221939424604
	.quad	0x3fe22879cbe032ac              # double 0.56744088954436256
	.quad	0x3fe2b9de77bb127b              # double 0.58518908867752317
	.quad	0x3fd5c39b4871a762              # double 0.34006387781720637
	.quad	0x3fd02d1541c50d40              # double 0.2527516500742486
	.quad	0x3fd5da074d99028a              # double 0.3414324052610388
	.quad	0x3fe3f50675809e24              # double 0.62366030645074888
	.quad	0x3fe33d7ddd26620f              # double 0.60125630563112675
	.quad	0x3fe2244c01834178              # double 0.56693077369167977
	.quad	0x3fccda64d2552f6c              # double 0.22541485090402646
	.quad	0x3fe7876399489d37              # double 0.7352769845792072
	.quad	0x3fe3a02e4aa96d64              # double 0.61330332357776429
	.quad	0x3fed1ce019c0e605              # double 0.90977482824308764
	.quad	0x3fde03a91cbc4278              # double 0.46897342497053485
	.quad	0x3fea0b2d22261893              # double 0.81386429471673905
	.quad	0x3fbe0c65faf6cf18              # double 0.11737668397000467
	.quad	0x3fe7398804cc5f6a              # double 0.72577286660360341
	.quad	0x3fe68f4c1eb9c91e              # double 0.70499235154264617
	.quad	0x3fe0492061aec0df              # double 0.50892657354964033
	.quad	0x3fd92462d8cb9280              # double 0.39284583255201966
	.quad	0x3fb7992b7c5a36e8              # double 0.092180936679337244
	.quad	0x3fe7f1a2ad56f1f8              # double 0.74824651580234924
	.quad	0x3fd3cc51aa2d7a18              # double 0.30934564227018901
	.quad	0x3fe312774a3b9bd0              # double 0.59600414751627717
	.quad	0x3fee5d2f3f5b0140              # double 0.94887506841772761
	.quad	0x3fe407e95d0b6a55              # double 0.62596576855441788
	.quad	0x3fdc06fe33f8f8ac              # double 0.43792681765979569
	.quad	0x3fee7179c78c4d99              # double 0.9513520142958668
	.quad	0x3fd721933552f2c0              # double 0.36142425734923833
	.quad	0x3fe16baebc2961b4              # double 0.54439484358140655
	.quad	0x3fd8e00f9d254e02              # double 0.38867559763204451
	.quad	0x3fe94c40a5be3eae              # double 0.79055817004878803
	.quad	0x3fe07db2a5386707              # double 0.51534397382349162
	.quad	0x3fee8708229f3f3a              # double 0.95398337137337497
	.quad	0x3f9c77e797ff62a0              # double 0.027801149990269836
	.quad	0x3f99c6a4a1dca300              # double 0.02517182577062993
	.quad	0x3fe5994be12282c7              # double 0.67496293994562329
	.quad	0x3fee799db2319d09              # double 0.95234570315815958
	.quad	0x3fd87253428aa26c              # double 0.38197785852620458
	.quad	0x3fe430b6c4d8f334              # double 0.63094652601976131
	.quad	0x3fda657ed2b1978e              # double 0.41244478774603344
	.quad	0x3fef674e4a468f44              # double 0.98136057383496977
	.quad	0x3fcdcc998bdb1e30              # double 0.23280639008429338
	.quad	0x3fe9fb29a266d03b              # double 0.81190950125756645
	.quad	0x3fe295d11a13717b              # double 0.58078818409880684
	.quad	0x3fe6e91bc71f91f5              # double 0.71595562831185922
	.quad	0x3fe07e8112ad61f0              # double 0.51544240615754511
	.quad	0x3fed8f0545b6cc7c              # double 0.92370856872584239
	.quad	0x3fe202a751f9fbf2              # double 0.56282392512355117
	.quad	0x3fef912bda9ea57c              # double 0.98647110652124991
	.quad	0x3fa4e4ffe8d24f60              # double 0.040809628649326468
	.quad	0x3fe14e5f1c90bb2c              # double 0.54081683711215112
	.quad	0x3fefd460470c0413              # double 0.99467481495242038
	.quad	0x3fdb0ba28e9d1e12              # double 0.42258514334796005
	.quad	0x3fcf09653460b34c              # double 0.24247422273165353
	.quad	0x3fe6e8993eb02cee              # double 0.71589338535104985
	.quad	0x3fddb7f1019b6990              # double 0.4643518939680229
	.quad	0x3fc65181515055d4              # double 0.17436233969117032
	.quad	0x3fd70c891847aeaa              # double 0.36014010783285733
	.quad	0x3fe9f9f764703035              # double 0.81176347367136847
	.quad	0x3fe3bf173f840d9c              # double 0.61707651524959628
	.quad	0x3fed55ab75a33737              # double 0.91670773483358559
	.quad	0x3feb25f72f52eee9              # double 0.84838446848831695
	.quad	0x3fcdff6e971bcdbc              # double 0.23435766580915451
	.quad	0x3fed66fbd9543be1              # double 0.91882126280858867
	.quad	0x3f8fb32a75cb4140              # double 0.015478450507914077
	.quad	0x3fd720f6f331e902              # double 0.36138700246341682
	.quad	0x3fed21ba54b4480d              # double 0.91036716979783849
	.quad	0x3febcaa740f9b954              # double 0.86848795595669026
	.quad	0x3fd6184aa47bb128              # double 0.34523263991174469
	.quad	0x3fd3c9cb7a751f34              # double 0.30919157942524866
	.quad	0x3fcb094693b77de0              # double 0.21122057163937225
	.quad	0x3f85460e4a451880              # double 0.010387527123963958
	.quad	0x3fcb6c023b1f8a2c              # double 0.21423366438746549
	.quad	0x3fe47d8627fd8f63              # double 0.64032275972975261
	.quad	0x3fec335562efa5d9              # double 0.88126630137883943
	.quad	0x3fe4b8c04aafe915              # double 0.64755262935003322
	.quad	0x3fb5712aaa65bfb8              # double 0.083758036232892574
	.quad	0x3fe8d79b294e4d27              # double 0.7763191038851901
	.quad	0x3fecde3642fff7ec              # double 0.90212548337853837
	.quad	0x3fc65e8cac7feab8              # double 0.17476042197070796
	.quad	0x3fe7b23923f5ac13              # double 0.74050576232309806
	.quad	0x3fc499c8ddd812f8              # double 0.16094313461521614
	.quad	0x3fc3926ca04382f8              # double 0.15290601563813033
	.quad	0x3fed67aa18ef3ddf              # double 0.91890435094859046
	.quad	0x3fe08201cb7970d4              # double 0.51586999646272114
	.quad	0x3fe0c72fc37bc0a7              # double 0.52431476765015794
	.quad	0x3fe009fa0582852c              # double 0.50121785236493599
	.quad	0x3fe36a5cae879a6f              # double 0.6067336472304542
	.quad	0x3feb831ad1810e27              # double 0.85975399893545024
	.quad	0x3fd9ced13aa7f898              # double 0.40324812629831674
	.quad	0x3fe6b8df9acf2ff1              # double 0.71006756054111808
	.quad	0x3fed3438d47b309d              # double 0.91262475490795547
	.quad	0x3fec1f4dc667e5d3              # double 0.87882126570837682
	.quad	0x3fe7c5e7c541f45c              # double 0.74290836836702168
	.quad	0x3fe6a46d691c02aa              # double 0.70757170228178734
	.quad	0x3fdb5f533a4cc580              # double 0.42769318288181779
	.quad	0x3fd68eb4c449ca3e              # double 0.35246009033940939
	.quad	0x3fe9b7ef897a51ad              # double 0.80370308734068419
	.quad	0x3fe9323721eb4dee              # double 0.78737980484805603
	.quad	0x3fefbd5d5d2855c7              # double 0.99186580843768801
	.quad	0x3fdac0eccef71530              # double 0.4180252095360002
	.quad	0x3fec0c0d95583f19              # double 0.87647132080926149
	.quad	0x3fc9d4e377de6730              # double 0.20180934288947006
	.quad	0x3fd567dbff39621e              # double 0.33446407245858889
	.quad	0x3fdbccf125a735fa              # double 0.43438366581980825
	.quad	0x3fe5607ac972a361              # double 0.66802729935907845
	.quad	0x3fb2060a5d60dc80              # double 0.070404670522167478
	.quad	0x3fd4fecd1a2f9314              # double 0.32805182988367787
	.quad	0x3fe7e196242fbc99              # double 0.74628741328878612
	.quad	0x3fdccff74d1fd468              # double 0.45019323856042215
	.quad	0x3fc9dda76d3e0908              # double 0.20207684358690181
	.quad	0x3fe39e602f00d3fa              # double 0.61308297329253425
	.quad	0x3fe702388051391a              # double 0.71902108251541397
	.quad	0x3fd496ee16ac9c98              # double 0.3217120381763805
	.quad	0x3fd23cbd541afb2c              # double 0.28495724881570328
	.quad	0x3fe27956d3e5c60c              # double 0.57731191049805508
	.quad	0x3fed75bdcfa442e3              # double 0.92062273554810437
	.quad	0x3fe79734b03a3fc3              # double 0.73720774096909059
	.quad	0x3fc902c54730aa84              # double 0.19539705253676598
	.quad	0x3fec58fa5c6ac9cf              # double 0.88586156892989176
	.quad	0x3fe3a546704563f7              # double 0.61392518928471318
	.quad	0x3f9ef3eb3ad07a40              # double 0.030227351631874066
	.quad	0x3fecd50c32bf1cfe              # double 0.90100679313118781
	.quad	0x3fe9f659a72f1304              # double 0.81132204678633046
	.quad	0x3fe7aa6b1ed21f46              # double 0.73955303210912215
	.quad	0x3fc681a28a9f92cc              # double 0.17583114403455224
	.quad	0x3fe6238a02ce587e              # double 0.6918382696919847
	.quad	0x3fc8ea2e8fc64328              # double 0.1946466638587705
	.quad	0x3fd182be294fb7ea              # double 0.27360490831676876
	.quad	0x3fd5058f830a0234              # double 0.32846439167772989
	.quad	0x3fd99608d55e16ea              # double 0.39978237950013684
	.quad	0x3fc9f4b4ff5b0208              # double 0.20278036564378987
	.quad	0x3fdddf09c6b13430              # double 0.46673817065749557
	.quad	0x3fc122eee9794ccc              # double 0.13387857818688642
	.quad	0x3fee2b8259fd7465              # double 0.9428111798876101
	.quad	0x3fe6187d77bd3a4e              # double 0.69048951517636126
	.quad	0x3fb48ad6a1590ef0              # double 0.080243505851338658
	.quad	0x3febf769f542c954              # double 0.87395189192310818
	.quad	0x3fd82def296c89c6              # double 0.37780360265074042
	.quad	0x3fec8426c2371b09              # double 0.89113176281611672
	.quad	0x3fc6f43853eeae8c              # double 0.1793280038667614
	.quad	0x3fef9ccceb30f369              # double 0.9878906816080476
	.quad	0x3fedde44dc37b870              # double 0.93338244448911034
	.quad	0x3fe60de936dbcb23              # double 0.6891981193024076
	.quad	0x3fdc6044ba8c907e              # double 0.44337576120074818
	.quad	0x3f9f5f7dae42eb60              # double 0.030637706528732322
	.quad	0x3fe0623201f31084              # double 0.51198673611408241
	.quad	0x3fd602ee138b870c              # double 0.34392883213705328
	.quad	0x3fe2faa9a04cee33              # double 0.59309846218770301
	.quad	0x3fe21555f038cc4d              # double 0.56510445516904328
	.quad	0x3fd46606ba177a24              # double 0.31872718976038272
	.quad	0x3fea9e922b5e5ca7              # double 0.83185680838041243
	.quad	0x3fc37a8440fb0dec              # double 0.15217641041645835
	.quad	0x3fe87a6eb37ffab4              # double 0.76494536455705608
	.quad	0x3fedcd86eb125064              # double 0.93133874809656136
	.quad	0x3fe7cc9dcbff2e8b              # double 0.74372758715749521
	.quad	0x3fe9fbf4ad1810c5              # double 0.81200631911681198
	.quad	0x3fd48d3b4eeee816              # double 0.32112009723971491
	.quad	0x3fe979ad24108e36              # double 0.79610306781655171
	.quad	0x3fd3db63eb6fce1e              # double 0.31026552192563084
	.quad	0x3fb62403ce6a7970              # double 0.086487043280134789
	.quad	0x3fab00de363b1bd0              # double 0.052740997428876946
	.quad	0x3fefb77347b4ac8b              # double 0.99114383702307529
	.quad	0x3fe0964ff2235a10              # double 0.51834866802784241
	.quad	0x3fb8fef8095ee7f8              # double 0.09764051655557171
	.quad	0x3fd893757eec6bd4              # double 0.38400018114924461
	.quad	0x3fa2530d05b29400              # double 0.035789877839569328
	.quad	0x3f84158acb711240              # double 0.0098067134223437379
	.quad	0x3fe2fcf2869d115f              # double 0.59337736407955421
	.quad	0x3fc7228d47daa6d8              # double 0.18074193962575325
	.quad	0x3fd1ec6b7e50b2c0              # double 0.28005492530318676
	.quad	0x3fcde4bd4b560c2c              # double 0.23354307344934122
	.quad	0x3fe79521938ab0de              # double 0.73695448700666666
	.quad	0x3fe2c337e45ae59e              # double 0.58633036232565749
	.quad	0x3fc7f21c79a20524              # double 0.187076148406086
	.quad	0x3fdf1781dc5212b2              # double 0.48580976978000046
	.quad	0x3fb528e2d9632e78              # double 0.082655122826673977
	.quad	0x3fd8b4c4d704a58c              # double 0.38603325841776193
	.quad	0x3fea6a8c26fd17a3              # double 0.82550628294915318
	.quad	0x3fe948b41d457230              # double 0.79012494771047237
	.quad	0x3fe26a30fab636d8              # double 0.5754628082956641
	.quad	0x3fda8667682f83a8              # double 0.41445336508155117
	.quad	0x3fec6f8813c7729a              # double 0.8886146913824462
	.quad	0x3fe299f03921a3f1              # double 0.58129130514600835
	.quad	0x3fea2d9c3e53f837              # double 0.81806766675413811
	.quad	0x3fd0bf8337afe7dc              # double 0.26168899954029512
	.quad	0x3fe408ea4e386155              # double 0.62608828809156114
	.quad	0x3fcfe9dac668a5f0              # double 0.24932417571953591
	.quad	0x3fd08bb162929e74              # double 0.25852617861025995
	.quad	0x3fe563b1400a2bad              # double 0.66841948039779242
	.quad	0x3fde7f8c405bab36              # double 0.47653490338295812
	.quad	0x3fef0c9d55d6ed62              # double 0.97028986707247733
	.quad	0x3fe472eeb9d6876b              # double 0.63902984901890869
	.quad	0x3fe2355921041913              # double 0.56901222656668649
	.quad	0x3fe749141751f316              # double 0.72767071299276398
	.quad	0x3fd7a0f8d077802a              # double 0.36919994695745351
	.quad	0x3fee7fab58d3a2b9              # double 0.95308463429417778
	.quad	0x3fdc6937bc4d9f98              # double 0.44392197979913695
	.quad	0x3fe551afbe3d4ba8              # double 0.6662214961637476
	.quad	0x3fe7ed674f4368cd              # double 0.74772992592922949
	.quad	0x3feb9bce17993907              # double 0.86276917084777061
	.quad	0x3fe625508eefed03              # double 0.69205501477645759
	.quad	0x3fc58f7aeaf03638              # double 0.16844116660688413
	.quad	0x3fcd9997259e656c              # double 0.23124970757343577
	.quad	0x3feea051bff7de54              # double 0.95707023137851843
	.quad	0x3fe394dfa1213e0d              # double 0.61192304106401851
	.quad	0x3fd86ffcd4e49f7e              # double 0.3818351820977951
	.quad	0x3fdc8980ab1a4e28              # double 0.44589249333623338
	.quad	0x3fe2d3345dc88fe9              # double 0.58828180615500714
	.quad	0x3fe6087a76afd442              # double 0.6885349577047537
	.quad	0x3fddf8fdba689ab2              # double 0.46832221225705972
	.quad	0x3fe01fc874122df2              # double 0.50387976331825102
	.quad	0x3fa2749a3a57d6d0              # double 0.036045856115305974
	.quad	0x3fbfe12db742c788              # double 0.12452970241682071
	.quad	0x3fca71c56a7c87b0              # double 0.20659702014478176
	.quad	0x3fadf1acd4dd0c20              # double 0.058484459862050864
	.quad	0x3fef1531780d526d              # double 0.97133706519759999
	.quad	0x3fe0ecb0b43cc29f              # double 0.52889285280805953
	.quad	0x3fb73c179d178088              # double 0.090760684826365901
	.quad	0x3fdb53593739f834              # double 0.42696218865592361
	.quad	0x3fe2b7a037bba130              # double 0.58491526494348101
	.quad	0x3fe73f1dd75b0b9d              # double 0.72645465909623719
	.quad	0x3faca5c86c5d2780              # double 0.055952323177350216
	.quad	0x3fd575f698b8c5ac              # double 0.33532490648493751
	.quad	0x3fe68ceecd304acb              # double 0.70470371318727965
	.quad	0x3fe452f98ad0d678              # double 0.63512875664191792
	.quad	0x3fe0d52a93f11d8d              # double 0.52602127928632714
	.quad	0x3fece05d1df72e29              # double 0.9023881516708957
	.quad	0x3fe57309427d6b51              # double 0.67029250131904849
	.quad	0x3fe52c051e458ea5              # double 0.66162353432124077
	.quad	0x3fe8b5d194b8cb40              # double 0.77219466254459945
	.quad	0x3fdbdc0cfc6b52ce              # double 0.43530583048167848
	.quad	0x3fd34e02c62c81cc              # double 0.30163640358844357
	.quad	0x3fe00c3c943d1e00              # double 0.50149373009566034
	.quad	0x3fd11c63bb878fea              # double 0.26735776246482479
	.quad	0x3fb03a84b6c4ebf0              # double 0.063392920133011676
	.quad	0x3fd41e8c6db8c22c              # double 0.3143645354748823
	.quad	0x3fe1d00eb38f53c3              # double 0.55664763517653915
	.quad	0x3feff6293d605416              # double 0.99879896152072223
	.quad	0x3fe7d8cabe330a1b              # double 0.74521386287989644
	.quad	0x3fc7afac9c5f1580              # double 0.18504865298579531
	.quad	0x3fad5a4150943b40              # double 0.057329217039401303
	.quad	0x3fd2a31b9d22e366              # double 0.29120531411495276
	.quad	0x3fd03fd9eccd949a              # double 0.25389717221544006
	.quad	0x3fe207d80ecd184f              # double 0.56345751658296617
	.quad	0x3fee9368799a91fd              # double 0.95549415350666289
	.quad	0x3fdbf2e8e165e3b6              # double 0.43670103084110268
	.quad	0x3fdc410639395c1a              # double 0.441468768961785
	.quad	0x3fb2cde2ede638d8              # double 0.073454077797780015
	.quad	0x3fef7b6f1e414fd4              # double 0.98381763371662112
	.quad	0x3fdefd11bf1997da              # double 0.48419612562281389
	.quad	0x3fd103d3ac2aa960              # double 0.26585857213162534
	.quad	0x3fef29a714ff1a8a              # double 0.97383455372694638
	.quad	0x3feb8aa79f9275bb              # double 0.86067563215663456
	.quad	0x3feb860926e9d4a6              # double 0.86011178589128146
	.quad	0x3fd60564f2ec3ac6              # double 0.34407924387862143
	.quad	0x3fa2e21616fa16c0              # double 0.036881151490019359
	.quad	0x3fd88be4a6578542              # double 0.38353840107273041
	.quad	0x3fe49f388fed752f              # double 0.64443615065434823
	.quad	0x3fdaf111a965a62a              # double 0.42096368353540703
	.quad	0x3fe6e2eb8cfe7dff              # double 0.71520020997917289
	.quad	0x3fe0743bb69835b1              # double 0.5141886297512227
	.quad	0x3fa87f7585e7a080              # double 0.047847435565757657
	.quad	0x3fdedf9a709dc86e              # double 0.48239766118707095
	.quad	0x3fea21c4ce5dfd86              # double 0.81662216478427818
	.quad	0x3fea061f5cb7adc5              # double 0.8132473765266971
	.quad	0x3fec9db1b78c7229              # double 0.89424978112544296
	.quad	0x3fe2571343dd85fd              # double 0.57312930350252567
	.quad	0x3fd32a86737cd424              # double 0.29947053220831976
	.quad	0x3fe2e7c676f9e35b              # double 0.59079287755512711
	.quad	0x3fe1ec0bea8a03a1              # double 0.56006427582189044
	.quad	0x3fd7ec16b4180528              # double 0.37378470980918843
	.quad	0x3fd6e97ab320fe6a              # double 0.35800044529967201
	.quad	0x3fe5b64e494d3ce5              # double 0.6785041267084152
	.quad	0x3fd96b09b1504284              # double 0.39715807262204117
	.quad	0x3fcd5bddf7ae0978              # double 0.22936606019727512
	.quad	0x3fe0645e87eb7ae2              # double 0.51225210711330882
	.quad	0x3fcad69c17521548              # double 0.20967436922743787
	.quad	0x3f95328f52f66e20              # double 0.0207006830583919
	.quad	0x3fd6854377f445b0              # double 0.35188376154209333
	.quad	0x3fa71861e64cdb00              # double 0.045107898104495447
	.quad	0x3fe172c80026ab0a              # double 0.54526138333798824
	.quad	0x3fd39d1f1b882e2c              # double 0.30646493614833292
	.quad	0x3fc98e04f9165300              # double 0.19964658892117626
	.quad	0x3fa4df8b4c0d6730              # double 0.040768006356940112
	.quad	0x3fe2f0bdfd62f7ae              # double 0.59188746919220647
	.quad	0x3fd290f57619fec4              # double 0.29009758504251359
	.quad	0x3fd0585923ee891a              # double 0.25539234646761744
	.quad	0x3fc94b5d0e70f154              # double 0.1976124115480028
	.quad	0x3fd060b613ebe9c6              # double 0.25590278573477254
	.quad	0x3fd3cda4cd971998              # double 0.30942649914904896
	.quad	0x3feec3862845da4d              # double 0.96136768213075074
	.quad	0x3fe7a74ad21c5d8f              # double 0.73917141949907428
	.quad	0x3fcd8fa410255dc8              # double 0.23094607151391089
	.quad	0x3fe3cc001c239a23              # double 0.61865239616310352
	.quad	0x3fe1b2bf3a621fa1              # double 0.55306970026957825
	.quad	0x3fed32ecf4ac1f06              # double 0.9124665049320988
	.quad	0x3fec7fc611630ced              # double 0.89059737583047893
	.quad	0x3fe13faee7627238              # double 0.53902383034034695
	.quad	0x3fe447ef8b13eec1              # double 0.63378121532101528
	.quad	0x3fe856e786390aa6              # double 0.76060844626802715
	.quad	0x3fbcf20594f3ff08              # double 0.1130679596571974
	.quad	0x3fd15cfb03fd16b4              # double 0.27130008115305349
	.quad	0x3feecd79565148a8              # double 0.96258227213754299
	.quad	0x3fea66c2f759928a              # double 0.82504413900876838
	.quad	0x3fda0baca18411f6              # double 0.40696254513775842
	.quad	0x3fe6c4d8d83de3e7              # double 0.7115291808578349
	.quad	0x3faf296c3d1df380              # double 0.060862905941553969
	.quad	0x3fd745919bf8f3ac              # double 0.36362114173590032
	.quad	0x3fe1753d03ae7936              # double 0.54556132048654749
	.quad	0x3f860c71d8821340              # double 0.010765923900416419
	.quad	0x3fdba7b998b0a2be              # double 0.43211212073451211
	.quad	0x3fe24ebcdf531a2d              # double 0.57211154573525891
	.quad	0x3fdb91f0e997b252              # double 0.43078253566526314
	.quad	0x3fe003cbe39d87e9              # double 0.50046343284725225
	.quad	0x3fea618e9a2a1316              # double 0.8244088183424505
	.quad	0x3fe467f94ff79813              # double 0.63769212359034311
	.quad	0x3fd30534ab6b4a5e              # double 0.29719273319384409
	.quad	0x3fb5f45a16e52638              # double 0.085759764279964013
	.quad	0x3fef25740e4ce7e3              # double 0.97332194130944704
	.quad	0x3fd38bc472e4960c              # double 0.30540572376261887
	.quad	0x3fdde506148c35e4              # double 0.46710350042925897
	.quad	0x3fd63a8b6e269a50              # double 0.34732328183091443
	.quad	0x3fcd4dc550f1b880              # double 0.22893587543825689
	.quad	0x3fef8ef1e8c939d6              # double 0.98619933572791285
	.quad	0x3feab5a8c8bf9e70              # double 0.83467520912831894
	.quad	0x3fd272304fe6fe16              # double 0.28821952631912617
	.quad	0x3f8518ebd22dcc40              # double 0.010301439620638786
	.quad	0x3fef054b69619f0c              # double 0.96939631063739417
	.quad	0x3fe17fee3c1a31a3              # double 0.54686652888044696
	.quad	0x3fcd73bb3d29b278              # double 0.23009434210270618
	.quad	0x3fed33bf8c4b16ba              # double 0.91256692315138044
	.quad	0x3fe68c0ad6ce3281              # double 0.70459501222792664
	.quad	0x3fc17f3d6ee881d8              # double 0.13669555583420734
	.quad	0x3fd7d4dac6aa569e              # double 0.37236661339680122
	.quad	0x3f8e3c2a5cf85c80              # double 0.014763194048141637
	.quad	0x3fdeb267ab5a51be              # double 0.47963897451088744
	.quad	0x3fd9d04411a78a76              # double 0.40333654140537278
	.quad	0x3fe0f67fef7ec5cd              # double 0.53009030128867496
	.quad	0x3fe75f518d773140              # double 0.73038556699751922
	.quad	0x3fe792fe0ad5906d              # double 0.73669340244351889
	.quad	0x3fd73e429aecbf82              # double 0.36317505959868168
	.quad	0x3fedcf2091d82503              # double 0.93153408513276792
	.quad	0x3fe5834b5286d63b              # double 0.67227712744233459
	.quad	0x3fe4b7f132cb5343              # double 0.64745387955427025
	.quad	0x3fdd617c37ee405c              # double 0.45907502614955376
	.quad	0x3fd4fdd78d3a505c              # double 0.3279932860543846
	.quad	0x3fe4930bcdacf193              # double 0.64294996424682649
	.quad	0x3fdab1718bb8adf0              # double 0.41708029408138625
	.quad	0x3feb27b91bc51048              # double 0.848599008787013
	.quad	0x3fdb5786ede7c18c              # double 0.42721722824992336
	.quad	0x3fe3cf1115131987              # double 0.61902670017370631
	.quad	0x3fd81d2a4a99ec6a              # double 0.37678010258941319
	.quad	0x3feeb7f7798d2c76              # double 0.95995687237281291
	.quad	0x3fe2632e3ad9b495              # double 0.57460700506421125
	.quad	0x3fe9f04aba909140              # double 0.81058250845357094
	.quad	0x3fead20b494509a9              # double 0.83814014730915176
	.quad	0x3fe5968eac414e04              # double 0.67462857860158509
	.quad	0x3fe6bb2f9f50b046              # double 0.71034985653160088
	.quad	0x3fc83db9dc974930              # double 0.18938372870486253
	.quad	0x3fdf15337ea57ab8              # double 0.48566901557743902
	.quad	0x3fdc15653cd23da6              # double 0.43880587520194536
	.quad	0x3fed5a5142fdc65a              # double 0.91727507671584907
	.quad	0x3fdee6951b4a323e              # double 0.48282363572142006
	.quad	0x3fef969f4521561a              # double 0.98713649274822335
	.quad	0x3fdec789654c7bb2              # double 0.48092875378091116
	.quad	0x3fe0b43e945286ad              # double 0.52200249642574692
	.quad	0x3f9f0882fccb5080              # double 0.030305906943639105
	.quad	0x3fe4dfb45eac387a              # double 0.65230768671769046
	.quad	0x3fee723c807f68b8              # double 0.95144486520009419
	.quad	0x3fecaff71caf732b              # double 0.8964801368962062
	.quad	0x3f6648904df7a600              # double 0.0027201479385794425
	.quad	0x3fa57238d8f87ad0              # double 0.041887070165321227
	.quad	0x3fc60bbf0116d690              # double 0.17223346284088281
	.quad	0x3feb13f3254803af              # double 0.84618527680878752
	.quad	0x3fdcc950b3996ff2              # double 0.44978730715752058
	.quad	0x3fe57c80c462e6ad              # double 0.6714481197042993
	.quad	0x3fd5763f46e000ca              # double 0.33534223481548209
	.quad	0x3fe0c5288687fb52              # double 0.52406717563267535
	.quad	0x3fe3d431a20fd82d              # double 0.61965257313454958
	.quad	0x3fda14e5dbd7a89e              # double 0.40752550572381974
	.quad	0x3fe5d83a47ff9222              # double 0.68264497816250391
	.quad	0x3fb76bba4a721950              # double 0.091487544226855677
	.quad	0x3feefaf796e48c0d              # double 0.96813563796274737
	.quad	0x3fe0d72a7d7abfde              # double 0.52626537807190821
	.quad	0x3fc4cdf634181fc4              # double 0.16253545325912289
	.quad	0x3fedfb2970f067ec              # double 0.9369094091264265
	.quad	0x3fe7000e83d7f0f7              # double 0.71875692129790891
	.quad	0x3fe06f435691a480              # double 0.51358191402427167
	.quad	0x3fe4f4ed47a37e59              # double 0.65489830009387184
	.quad	0x3fe015d00a45c1c4              # double 0.50266267782540597
	.quad	0x3fe6ff788336f1eb              # double 0.71868539455277636
	.quad	0x3fa2e3a5f2b51b20              # double 0.036893068196653056
	.quad	0x3fd28dcab0c05ac8              # double 0.28990428219678366
	.quad	0x3fdeb5e6cb281776              # double 0.47985238875877856
	.quad	0x3fe02b1c2156b7b3              # double 0.50526243697617301
	.quad	0x3fe4faa4b9a2a083              # double 0.65559612519156507
	.quad	0x3feb123829e58fe0              # double 0.84597404654459396
	.quad	0x3fd26de4ec8b70b8              # double 0.28795741176669365
	.quad	0x3fd6c748c67ab628              # double 0.3559133470797371
	.quad	0x3fd9d12c7a119d38              # double 0.40339195175916442
	.quad	0x3fef96aa2e99edaf              # double 0.98714169599354828
	.quad	0x3fc4b3f5d0adbf5c              # double 0.16174194993390756
	.quad	0x3fe91cb92f05313b              # double 0.78475627120636859
	.quad	0x3fe54ef7987eab2a              # double 0.66588954719677429
	.quad	0x3fd3c71a6455c842              # double 0.30902728842113814
	.quad	0x3f93a5a900873820              # double 0.01918663087581518
	.quad	0x3fe367485db5bfba              # double 0.60635774901128703
	.quad	0x3fe37015c68d2b36              # double 0.60743225841119997
	.quad	0x3fe98da06588b3e4              # double 0.7985383971296156
	.quad	0x3fe88c9a1549338e              # double 0.76716331632052159
	.quad	0x3fca0d18349a3ee4              # double 0.20352461403353239
	.quad	0x3fd5cd232a2b5a1a              # double 0.3406455909547802
	.quad	0x3fe845009b3d33fc              # double 0.75842314071780903
	.quad	0x3fe6cd71221c7538              # double 0.7125783601983704
	.quad	0x3fca4498e74cb8e8              # double 0.20521842283182612
	.quad	0x3fdf882b895b213c              # double 0.49268616117162245
	.quad	0x3f90b06741c31ae0              # double 0.016297925366212662
	.quad	0x3fe5249c733888ab              # double 0.66071913246220981
	.quad	0x3feb4236a539e5f8              # double 0.85183269758925828
	.quad	0x3fdfbc2898ded858              # double 0.49585928848990113
	.quad	0x3fe0c3ffaa585b60              # double 0.52392562170539847
	.quad	0x3fe07264a85525b7              # double 0.5139640128847337
	.quad	0x3faf9c6690aad2f0              # double 0.061740117225246638
	.quad	0x3feb5954f3fedfc0              # double 0.85465476661101292
	.quad	0x3fd03edf5373193c              # double 0.25383742474913951
	.quad	0x3fcdd6b7686957dc              # double 0.23311512563912984
	.quad	0x3fe0dcc23e28790c              # double 0.52694809093716932
	.quad	0x3fe7a5eb2d8e3500              # double 0.73900374314840178
	.quad	0x3fd07e2bfa049624              # double 0.25770091453373056
	.quad	0x3feb144ac3fb2078              # double 0.84622705724269931
	.quad	0x3fed0cde93e92a2b              # double 0.90782097710445464
	.quad	0x3fd1e48f1a2efcd4              # double 0.27957513386713839
	.quad	0x3fa9cdada57ff5d0              # double 0.050397325947396987
	.quad	0x3fe27ca9815a397b              # double 0.57771754516743046
	.quad	0x3fce713503fe3e78              # double 0.23782980627992223
	.quad	0x3fd5d4ee43aec074              # double 0.34112125978118191
	.quad	0x3fe423be0f34e1f3              # double 0.62936308832200749
	.quad	0x3fdc71f711287158              # double 0.44445587802490172
	.quad	0x3fe657fea9b7a483              # double 0.69824154994888976
	.quad	0x3fe8701b5afad2ce              # double 0.76368491906631575
	.quad	0x3fe7775d823c952a              # double 0.73332095562787925
	.quad	0x3fe1f083a6fc3ea8              # double 0.5606096517021415
	.quad	0x3fe0a4464fe6e6ec              # double 0.52005305868007445
	.quad	0x3fdea1fa42bcb240              # double 0.47863632695478842
	.quad	0x3fd6f9946bdb3412              # double 0.35898314030492984
	.quad	0x3fd204cd3e70b618              # double 0.28154307458575678
	.quad	0x3feea9f4f9c63d20              # double 0.9582466963201206
	.quad	0x3fceb1df54216ed4              # double 0.23980323417605709
	.quad	0x3fdffcb35d5e8c4a              # double 0.49979862325762225
	.quad	0x3fef6ca6fe3f34e6              # double 0.98201322229001842
	.quad	0x3fec6792f895d2ed              # double 0.88764332343870722
	.quad	0x3fd77aa902609c2e              # double 0.36686158401647873
	.quad	0x3fe97fae8ed986a5              # double 0.79683616543134816
	.quad	0x3fd3171fc61f4812              # double 0.29828638408537345
	.quad	0x3febb08547031ab7              # double 0.86529792661243377
	.quad	0x3fedafc0faf99ad0              # double 0.92770432489927579
	.quad	0x3fc0d50de0afd9ac              # double 0.13150189848938731
	.quad	0x3fede6e53486d3da              # double 0.93443546542277578
	.quad	0x3fabd1c2229bf130              # double 0.054334704136609679
	.quad	0x3fea3d61cb87524f              # double 0.81999292136840463
	.quad	0x3fa086217b2e4c30              # double 0.032273336683964593
	.quad	0x3fc596ef619bd620              # double 0.16866867319156231
	.quad	0x3fd9e5d87a7bcff2              # double 0.40465366326611651
	.quad	0x3fdd637c04828282              # double 0.45919704857264076
	.quad	0x3fd7de72a8f32524              # double 0.37295214175226676
	.quad	0x3fd1f9d101727b6a              # double 0.2808725847370882
	.quad	0x3fc782c48c9e57d0              # double 0.18367821565760645
	.quad	0x3fcfe2ff90e9a714              # double 0.24911493850532251
	.quad	0x3fe32faa16c62d2e              # double 0.59956840942451151
	.quad	0x3fde53dc8c916546              # double 0.4738685009702589
	.quad	0x3fdcae5e627a0502              # double 0.44814262024745244
	.quad	0x3fe88c117993e1a5              # double 0.76709817643773148
	.quad	0x3fcbef92c676d4d0              # double 0.21824869814523717
	.quad	0x3fdb819a51a75430              # double 0.42978532766329902
	.quad	0x3fcf0989dd7d106c              # double 0.24247859301442831
	.quad	0x3fea617746962f61              # double 0.82439769541222685
	.quad	0x3fc7f3c28dda7d54              # double 0.18712646414221956
	.quad	0x3feeb39ce7cc53da              # double 0.95942540429188772
	.quad	0x3fde204394b82562              # double 0.47071923755046019
	.quad	0x3fc8ebb0ce5bcf44              # double 0.19469270778756187
	.quad	0x3fde8d55166ada16              # double 0.47737624348829522
	.quad	0x3f855164ab797440              # double 0.010409151537880246
	.quad	0x3fe8365bd0141971              # double 0.75663557663282976
	.quad	0x3fcdce569a22a7d4              # double 0.23285944486752774
	.quad	0x3fe796716e6e46c5              # double 0.7371146351672101
	.quad	0x3fd4c0cd787ffb3a              # double 0.32426773803301823
	.quad	0x3fded9e23c2c8266              # double 0.48204856754640557
	.quad	0x3fdfc4fd40a323b4              # double 0.49639827072365539
	.quad	0x3fad6e6ad0ab67c0              # double 0.05748304173694363
	.quad	0x3fe3379fbaaf18df              # double 0.60054003202165152
	.quad	0x3fe5518a1adfe3e0              # double 0.66620354889812106
	.quad	0x3fbd0e41511020e0              # double 0.11349876622273625
	.quad	0x3fef193d498ce130              # double 0.97183098187728056
	.quad	0x3fcbedd69637b0e8              # double 0.21819574675408338
	.quad	0x3febf57dc7c94dd7              # double 0.87371720333833991
	.quad	0x3fe301be9ece953a              # double 0.59396296517358071
	.quad	0x3fd6775a0b7611e2              # double 0.35103465193995309
	.quad	0x3fecca01679e446d              # double 0.89965887296615465
	.quad	0x3fd2beca2815e556              # double 0.29289487757303811
	.quad	0x3fead865a2102538              # double 0.83891564991896583
	.quad	0x3fedf6b85134098e              # double 0.93636718616498782
	.quad	0x3fe2a2a8572a70c8              # double 0.58235566162650176
	.quad	0x3fcd5baab1d2d914              # double 0.22935994799417669
	.quad	0x3fdddf85efb83156              # double 0.46676777277095505
	.quad	0x3fedd9eb1215faff              # double 0.93285134823221927
	.quad	0x3fe7bcc4a18faf1e              # double 0.74179297976431591
	.quad	0x3fea29cba5dbafcf              # double 0.81760198969049636
	.quad	0x3fee9122dc0d5554              # double 0.95521681765482435
	.quad	0x3fd490ea2daa2972              # double 0.32134489497607099
	.quad	0x3fc6a8fecdd17d3c              # double 0.17703232812616843
	.quad	0x3fb5586455be6308              # double 0.083380003865738073
	.quad	0x3fbf1ce539474f60              # double 0.12153465889360637
	.quad	0x3fe4ded3bfc7bdfe              # double 0.65220057923391983
	.quad	0x3fe1e72125f73782              # double 0.55946404853033038
	.quad	0x3fbf2c49ee9c2b38              # double 0.12176954341354651
	.quad	0x3fd753762f7cbba6              # double 0.36446909558702101
	.quad	0x3fe46a02f07233e2              # double 0.63794085466508599
	.quad	0x3fe34ca776db55c0              # double 0.60310719694341941
	.quad	0x3fe801740f971300              # double 0.75017741246173841
	.quad	0x3f8a4332c2031300              # double 0.012823483033920891
	.quad	0x3fdbb69bbc6618f2              # double 0.4330205287773331
	.quad	0x3fdcc484afb7daee              # double 0.44949452552775326
	.quad	0x3fe1714282e4fe72              # double 0.54507566037496091
	.quad	0x3fd34a8d49676db2              # double 0.30142528694497195
	.quad	0x3fcb670a124d92f8              # double 0.21408201116278014
	.quad	0x3fe1d5ed1b0b4ba8              # double 0.55736403734259898
	.quad	0x3fe69558e10fc709              # double 0.70573085744237674
	.quad	0x3fe30f573c7e1495              # double 0.59562265219632826
	.quad	0x3fe0fe83aaeeca09              # double 0.53106864342982008
	.quad	0x3fb96d01de07c5e8              # double 0.099319569307929734
	.quad	0x3fe56184a7385637              # double 0.66815407428902673
	.quad	0x3fe0aecc79629311              # double 0.52133773525256022
	.quad	0x3fcc6c1930554a24              # double 0.22204890117662146
	.quad	0x3fe51bd673ca02cd              # double 0.65964815726337067
	.quad	0x3fd63dabcdb9bec6              # double 0.3475141057051413
	.quad	0x3fd1a05e053ed83e              # double 0.27541304123167609
	.quad	0x3fd347c961045b74              # double 0.30125650858229069
	.quad	0x3fe6d1140f123de5              # double 0.71302226012806769
	.quad	0x3feb9f2b8da8614c              # double 0.86317994754339499
	.quad	0x3fee7f0e3c509c76              # double 0.95300971775294729
	.quad	0x3fa71431d53b6e30              # double 0.045075948027911372
	.quad	0x3fe2c2ee30b81eb6              # double 0.58629521861526857
	.quad	0x3fd7f43cf5b1638e              # double 0.37428211205911388
	.quad	0x3fdebe7cb23ee728              # double 0.48037640959556649
	.quad	0x3fe5ff7acb378227              # double 0.6874364823416429
	.quad	0x3fd9937a834583b2              # double 0.39962637729154971
	.quad	0x3fda6eeb3c9341b4              # double 0.41301995196865993
	.quad	0x3fba0d44bdde6f80              # double 0.10176496158095283
	.quad	0x3fcb583874b19f50              # double 0.21362977693501728
	.quad	0x3fed36fcb215b891              # double 0.91296229154774455
	.quad	0x3fed702ae71c3e54              # double 0.91994233263717228
	.quad	0x3fe3c4e21d8c8f80              # double 0.61778360148717582
	.quad	0x3fd29679e5070642              # double 0.29043433538399566
	.quad	0x3fe23f7c627fbf3b              # double 0.57024974096382353
	.quad	0x3fea3a5773a3b669              # double 0.81962177835312133
	.quad	0x3fe41d21fe0c2d00              # double 0.62855624788917908
	.quad	0x3feeebacf1943b79              # double 0.96626898940472394
	.quad	0x3fe32d18aad11181              # double 0.59925492632514488
	.quad	0x3f9b8e211e6d8f40              # double 0.026909368021178937
	.quad	0x3fca33c5776a0f44              # double 0.20470493632103104
	.quad	0x3fd8724c5a2c344c              # double 0.38197621160435768
	.quad	0x3fe5f380d6e858e9              # double 0.68597452139036108
	.quad	0x3fc47fc18713d5a8              # double 0.160148802715111
	.quad	0x3fd963016119abda              # double 0.39666780931901047
	.quad	0x3f842da12ef9ae80              # double 0.0098526565991143844
	.quad	0x3fe397546284c027              # double 0.61222285501390139
	.quad	0x3fcd22a40882d6b0              # double 0.2276196519430207
	.quad	0x3fea646e9c439826              # double 0.8247597744018591
	.quad	0x3fc57a6561c389d0              # double 0.16779773019432165
	.quad	0x3fed190e6e8377c2              # double 0.90930863938023543
	.quad	0x3fcf831cfdc4cd54              # double 0.24618875876476898
	.quad	0x3fecd44fde1b66f2              # double 0.90091699009209791
	.quad	0x3fc92c0ca9ce144c              # double 0.1966567830205882
	.quad	0x3fc60ca19e1b6818              # double 0.17226047725745341
	.quad	0x3fdf3e410e09172a              # double 0.48817468996672864
	.quad	0x3feb98d9b6ed0ff4              # double 0.8624085018896026
	.quad	0x3fe51a10c327bc85              # double 0.65943182102445574
	.quad	0x3fceef11176b9438              # double 0.241670738635692
	.quad	0x3fe92edc00f0059a              # double 0.78697014029619372
	.quad	0x3fdc1f522d4af5f8              # double 0.43941168234945804
	.quad	0x3fdc3bdef32a1e9c              # double 0.44115422960792627
	.quad	0x3fe210c44cfc830b              # double 0.56454672848130494
	.quad	0x3fe9a868d5c0f558              # double 0.80180780171182686
	.quad	0x3fe713ea8eb483e8              # double 0.72118118164155209
	.quad	0x3fee31f53ad03c44              # double 0.94359837996479045
	.quad	0x3fd92eda69a77af2              # double 0.39348469083590409
	.quad	0x3fe276b0957a1399              # double 0.57698849863719481
	.quad	0x3fe477e6131f278d              # double 0.63963607535082334
	.quad	0x3fefd5a59e7bf762              # double 0.99482994989351092
	.quad	0x3fb955e5bd7f69b8              # double 0.098966940654839131
	.quad	0x3fd43f77b22e8110              # double 0.31637375259926248
	.quad	0x3fe3599106e3dc49              # double 0.60468341203421361
	.quad	0x3fc3638219d54d40              # double 0.15147424947154242
	.quad	0x3fdc4f512fd3c67a              # double 0.44234113379125228
	.quad	0x3fc399995633cbe0              # double 0.15312496861551406
	.quad	0x3fdac9a67f3c8f1e              # double 0.41855776238866038
	.quad	0x3fe8835e4ed46465              # double 0.76603618046204913
	.quad	0x3fda251eaa6379cc              # double 0.40851561202535147
	.quad	0x3fef4746d24b215a              # double 0.97745076249070029
	.quad	0x3fec70dcd0ca0c8f              # double 0.8887771680750961
	.quad	0x3fd456a1a4206cb6              # double 0.31778756168359779
	.quad	0x3fd5cf163eb80622              # double 0.34076458096396511
	.quad	0x3fcdd1574e086aa4              # double 0.23295108137320597
	.quad	0x3fe08beda218c047              # double 0.51708108577259615
	.quad	0x3fe164ddb572b32b              # double 0.54356275023528633
	.quad	0x3fe7fff55d161bd5              # double 0.74999492817812075
	.quad	0x3fd384d82965d3a8              # double 0.30498317759275517
	.quad	0x3fe1a2752934448c              # double 0.5510812573212589
	.quad	0x3fe2674b64d6cc17              # double 0.57510919280173567
	.quad	0x3fea52a4c0fbd4fb              # double 0.8225883263791326
	.quad	0x3fee09f470b0ddaf              # double 0.93871519098222744
	.quad	0x3fe112973301d89f              # double 0.53351936304422398
	.quad	0x3fdd79c4e3725ae4              # double 0.46055719577399956
	.quad	0x3fcc7ac07be61448              # double 0.22249609040969376
	.quad	0x3fc85499b20c9d3c              # double 0.1900817984944555
	.quad	0x3fd465cd895fee86              # double 0.31871355453015615
	.quad	0x3fd56063ff022634              # double 0.33400821593440644
	.quad	0x3fd150a2f7243d44              # double 0.27054666647832826
	.quad	0x3fe5e5daa76dfab4              # double 0.68430836392493299
	.quad	0x3fe9bd7d8f916df2              # double 0.80438116112367042
	.quad	0x3fee9f960b3184bf              # double 0.9569807261106219
	.quad	0x3fe66a78c5121e8b              # double 0.70049704065691409
	.quad	0x3fc0ab993d2c1eb0              # double 0.13023677336626838
	.quad	0x3fbd155d54b19538              # double 0.11360724752156137
	.quad	0x3fb5eed9838ae9d0              # double 0.085675806631946516
	.quad	0x3fddd00b42d16432              # double 0.46582299733342147
	.quad	0x3fe93229c2b7e030              # double 0.78737342863951731
	.quad	0x3fedf2923479d986              # double 0.93586073159421868
	.quad	0x3fe20f9c350db964              # double 0.56440554010422916
	.quad	0x3fcbaa748a6f1058              # double 0.21613938102211949
	.quad	0x3fd04e88667bc27e              # double 0.25479326255939572
	.quad	0x3fe3418202c58c1a              # double 0.60174656430570228
	.quad	0x3fe18b4a751b58ac              # double 0.54825327751566055
	.quad	0x3fca9b13f8df5648              # double 0.20785760547612342
	.quad	0x3fd385d8acd4ce04              # double 0.30504433515599794
	.quad	0x3fde707de71e307c              # double 0.4756159550677308
	.quad	0x3fef32795903b8be              # double 0.97491137872363942
	.quad	0x3fe39a79abcaacbf              # double 0.61260684540811627
	.quad	0x3fee40645efb93cb              # double 0.94536036063493023
	.quad	0x3fcb67546295ed88              # double 0.2140908700347206
	.quad	0x3fc95e4df15b6338              # double 0.19819044384964868
	.quad	0x3fb540e653f1a1a8              # double 0.083021541113004305
	.quad	0x3fda2f99cdc152cc              # double 0.40915532201078686
	.quad	0x3fd1486775edd90a              # double 0.27004419819367398
	.quad	0x3feecbb39fe5934f              # double 0.96236592511977814
	.quad	0x3fdbe264b9212354              # double 0.4356929595856418
	.quad	0x3fe4fba35c1e29e0              # double 0.65571754447710973
	.quad	0x3fd11a4d3251ab74              # double 0.26723031915633233
	.quad	0x3fe26c60860f4a18              # double 0.57572961982288273
	.quad	0x3fdd7c183ca7bbbc              # double 0.46069913791046324
	.quad	0x3fd73ab7da81407c              # double 0.3629588731610125
	.quad	0x3f7217f76c88d380              # double 0.0044173874853655759
	.quad	0x3fdf19fa461042b4              # double 0.48596054880276118
	.quad	0x3fd4da74887784a4              # double 0.32583344771235034
	.quad	0x3fb976791d116af0              # double 0.099464006039322816
	.quad	0x3fe642dda6247172              # double 0.69566233110121645
	.quad	0x3feea6775dc1fac7              # double 0.95782059013421239
	.quad	0x3f92a77007d5c8e0              # double 0.018216848829475718
	.quad	0x3fe337ce6105f435              # double 0.60056227636198989
	.quad	0x3fe31f87ec2499aa              # double 0.59759899255441451
	.quad	0x3fefd12564946dc8              # double 0.99428052563183033
	.quad	0x3fc850a44f965ad0              # double 0.1899609936342217
	.quad	0x3fefbbda9897d39f              # double 0.99168138316473519
	.quad	0x3fec05ad8a065a18              # double 0.8756931014821161
	.quad	0x3fd38f906acbe1f0              # double 0.305637459081054
	.quad	0x3fdd0d9e325e596a              # double 0.45395617407611744
	.quad	0x3fee2fcf9a7b76ae              # double 0.94333629772491689
	.quad	0x3fcd4ae8827446dc              # double 0.22884851808389939
	.quad	0x3fe55eda01de980f              # double 0.66782856335771779
	.quad	0x3fadf71bc4b7eb10              # double 0.058525913012962616
	.quad	0x3feef83bf01f050a              # double 0.9678020181528677
	.quad	0x3fde424485ac13c8              # double 0.47279465726779479
	.quad	0x3fb4821556cb25f0              # double 0.080109914483862842
	.quad	0x3fecde158a94a7c0              # double 0.90210988108196233
	.quad	0x3fef2b07b497f81a              # double 0.97400269767945535
	.quad	0x3fbe68fd8eb55f20              # double 0.11878952726453607
	.quad	0x3fad74674ca2d7d0              # double 0.057528713326447822
	.quad	0x3fe502764b35fc58              # double 0.65655054750085196
	.quad	0x3fd1539dc1bf10c2              # double 0.27072853012601794
	.quad	0x3fa56ba24d501a80              # double 0.041836807191477199
	.quad	0x3fd81bc6220027c6              # double 0.37669518776294486
	.quad	0x3fdf69e9e8b498de              # double 0.49083945965902653
	.quad	0x3fee7ea03fc3bb2a              # double 0.95295727209108816
	.quad	0x3fe275d295b04c8e              # double 0.57688264118259425
	.quad	0x3fe18dfa5b6374da              # double 0.54858129357640029
	.quad	0x3fd6ffa042f4244c              # double 0.35935217417187881
	.quad	0x3fd5e95dee281476              # double 0.34236858613468912
	.quad	0x3fdd85bf85572560              # double 0.46128833791279611
	.quad	0x3fe5afbb942d87cf              # double 0.67770174923884408
	.quad	0x3fce93ddc0558a08              # double 0.23888751879992776
	.quad	0x3fbd7db07e0b1158              # double 0.11519911839702013
	.quad	0x3fddf16658ce74c0              # double 0.46785887405878768
	.quad	0x3fae83734592f3e0              # double 0.059596636050151863
	.quad	0x3fe4a642e9daf32a              # double 0.64529557871683108
	.quad	0x3fb50c35c7e00a00              # double 0.082217561051983523
	.quad	0x3fd2f3cbf031fc32              # double 0.2961301656395704
	.quad	0x3fd265a3e397a894              # double 0.28745362497159843
	.quad	0x3fda470e4a3a33c4              # double 0.41058690308346635
	.quad	0x3feee1faa13c3a59              # double 0.9650853299261356
	.quad	0x3fe25b174eab49fd              # double 0.57361951222475194
	.quad	0x3f933f2bae4759e0              # double 0.018795664322022065
	.quad	0x3fe46e1534a40510              # double 0.63843784600627096
	.quad	0x3fe3c8b21f3a8056              # double 0.61824899768181285
	.quad	0x3feea8b33bdcf56b              # double 0.95809327785506803
	.quad	0x3fdec4f9b011f866              # double 0.48077242082934502
	.quad	0x3fe41c447d291c2f              # double 0.62845062680651675
	.quad	0x3feb918b96d653e8              # double 0.86151675663370231
	.quad	0x3fd6c4f1d82e6364              # double 0.35577055083699904
	.quad	0x3fc253ca5f77d2e4              # double 0.14318208371664476
	.quad	0x3fd84e17e11b9fa4              # double 0.37976643546289268
	.quad	0x3fde3c247c22e0e8              # double 0.4724208080547343
	.quad	0x3fd4bde924a15d5e              # double 0.32409123017483477
	.quad	0x3fe6b7e6d71ac188              # double 0.70994894039726919
	.quad	0x3fea69d20b4c6c2a              # double 0.82541753966086628
	.quad	0x3fd184d85cd59ca6              # double 0.2737332254968784
	.quad	0x3fece7dbe2ce81d7              # double 0.90330309198548775
	.quad	0x3fe1447c8694f633              # double 0.53961015973590631
	.quad	0x3fd8a87b3acb3f3c              # double 0.38528328649134713
	.quad	0x3fc2acd36ae64db4              # double 0.14589922637661135
	.quad	0x3fd3520303818eda              # double 0.30188060133353434
	.quad	0x3fe67e0dd84cb24c              # double 0.70288746114744916
	.quad	0x3fe96bc21cb2a05c              # double 0.79440408329993372
	.quad	0x3fe6a86053aaeba7              # double 0.70805374471034532
	.quad	0x3fbec5ba9242f6b0              # double 0.12020460196341776
	.quad	0x3fd572c0ced1e2d2              # double 0.33512897679569875
	.quad	0x3febeb03ffef764b              # double 0.87243843066580362
	.quad	0x3fdd6cffaddd6d80              # double 0.45977775553702571
	.quad	0x3fd985b2675461c4              # double 0.39878521052153482
	.quad	0x3fe7208963a13834              # double 0.72272176226557017
	.quad	0x3fb8f854c9500010              # double 0.097539233349380305
	.quad	0x3fe89898a569d218              # double 0.76862747485444327
	.quad	0x3fe0592cd3928862              # double 0.51088563273175347
	.quad	0x3fdf2fe4a6222e88              # double 0.48729816650368507
	.quad	0x3fe6d83b04099120              # double 0.7138953284125229
	.quad	0x3fe2575c31a71f47              # double 0.57316407869164088
	.quad	0x3fc58ce9bdd7b124              # double 0.16836282510429001
	.quad	0x3fe74e6dc4726b92              # double 0.72832382553620989
	.quad	0x3fe711860be618ef              # double 0.72088911365497477
	.quad	0x3fd21bb7c87e2b80              # double 0.28294176654224401
	.quad	0x3fc3408248262464              # double 0.15040615580463446
	.quad	0x3fe90c2efc645652              # double 0.78273724837590408
	.quad	0x3fee959bfb2c6d93              # double 0.95576285416921036
	.quad	0x3fe2c73ed45aa18a              # double 0.58682195163150763
	.quad	0x3fe283ecb6080bc8              # double 0.5786040835667956
	.quad	0x3fe65d0f8e0336ee              # double 0.69885995613887331
	.quad	0x3fe47c4a6f0897bb              # double 0.6401722115158387
	.quad	0x3fec0ac2e58e5815              # double 0.87631363711512
	.quad	0x3fd6db095a55fd1e              # double 0.35711892911781884
	.quad	0x3fc1d4aa906c3218              # double 0.1393025593937558
	.quad	0x3fdde04aca401bbe              # double 0.46681470633523847
	.quad	0x3fecff654e77f997              # double 0.90617623639973288
	.quad	0x3fea81b7959d1dfe              # double 0.82833461018975618
	.quad	0x3faef824e73c5620              # double 0.060486939646733129
	.quad	0x3fee3b718556b30a              # double 0.94475627939900275
	.quad	0x3fefb00c730e5d91              # double 0.99024031135461332
	.quad	0x3fe4657420580b7b              # double 0.6373844749181069
	.quad	0x3fe7321ddede04ad              # double 0.7248677590252065
	.quad	0x3fe2e50b7bdede90              # double 0.59045957749818179
	.quad	0x3fe45fb177a58b8c              # double 0.63668130272377388
	.quad	0x3fc37232a09e17d8              # double 0.15192253916410325
	.quad	0x3f93f4f0790d92a0              # double 0.019489056957712081
	.quad	0x3fe29a3882363cd3              # double 0.58132577354435921
	.quad	0x3fe672c1f8aec14e              # double 0.70150850840404089
	.quad	0x3fe21f0a34a9d104              # double 0.56628904615220721
	.quad	0x3fde2180fb7282b8              # double 0.47079491191292844
	.quad	0x3fbbc0fb506f2b90              # double 0.10841341699339879
	.quad	0x3fdc99a44b598634              # double 0.44687754972810301
	.quad	0x3fa39ed9d12336b0              # double 0.038321310786711194
	.quad	0x3fddb4ea0bbe55c6              # double 0.46416712900949297
	.quad	0x3fc307644c86908c              # double 0.14866307961085956
	.quad	0x3fdce91ff5869300              # double 0.45172881104581109
	.quad	0x3fd5d2e494f916b6              # double 0.34099688099045566
	.quad	0x3fe182595d6c5f80              # double 0.54716175314659665
	.quad	0x3fe2d59c7a4712a2              # double 0.58857559091901046
	.quad	0x3fe79f1def032c39              # double 0.73817345316036331
	.quad	0x3fd232dfc5f0a3b0              # double 0.2843551095016279
	.quad	0x3fe2f6df41f1ea76              # double 0.59263575439338356
	.quad	0x3fdfa5f3a427a514              # double 0.49450388937710099
	.quad	0x3fea3a9d66ea621e              # double 0.81965513325400585
	.quad	0x3fd29f832a83311e              # double 0.29098586227043366
	.quad	0x3fd618e20fe97dde              # double 0.34526874116815331
	.quad	0x3fe3f47982bac8ae              # double 0.62359309704904375
	.quad	0x3fe76240a0bb0723              # double 0.73074370758715579
	.quad	0x3febcd8c57119abf              # double 0.86884133344286585
	.quad	0x3fed6b5cdbd9f7b5              # double 0.91935580196126543
	.quad	0x3fb8115b59eb30a8              # double 0.094014844372568462
	.quad	0x3fecf499e1428de8              # double 0.90485853191461008
	.quad	0x3fdd25a11b290e2c              # double 0.45542171146755339
	.quad	0x3fe542650b113d9f              # double 0.66435482179251781
	.quad	0x3fb44fb9a00f8a80              # double 0.079341508462258403
	.quad	0x3fe1e36b9b0d2918              # double 0.55901127131918127
	.quad	0x3fa51e4a2c9cb6e0              # double 0.041246717401333788
	.quad	0x3fe20da32908cff3              # double 0.56416471495185616
	.quad	0x3feef07e03ffde06              # double 0.96685696393154852
	.quad	0x3fe178cfaaa7bd9c              # double 0.54599746066189736
	.quad	0x3fda9cdcf4ac7152              # double 0.41582416433245328
	.quad	0x3feeb5168bb9a69f              # double 0.95960547723844402
	.quad	0x3fe62111456babc0              # double 0.69153655585011364
	.quad	0x3fe97692b68fc1fd              # double 0.79572425514749023
	.quad	0x3fe592fcbdeb741b              # double 0.67419278234195035
	.quad	0x3fd401c177186958              # double 0.3126071608582115
	.quad	0x3fe668422fbdc323              # double 0.70022687267746553
	.quad	0x3fe2cac6fd7ed9d0              # double 0.58725308905450824
	.quad	0x3fb1d78a92fe7600              # double 0.069695149314121352
	.quad	0x3fee0fc81ab3d529              # double 0.93942647185636929
	.quad	0x3fdcfa8c3796cf7c              # double 0.45279221943496117
	.quad	0x3fe8b6a14f80a3cc              # double 0.77229371574241545
	.quad	0x3fdedcd97e0192f8              # double 0.48222958855903597
	.quad	0x3fea8afea0db6813              # double 0.82946711938280016
	.quad	0x3fc44d08af0283d4              # double 0.15860088868524136
	.quad	0x3fa8bd2b91e7ed80              # double 0.048318254051959109
	.quad	0x3fef41919435d67d              # double 0.97675398776364341
	.quad	0x3fdbdfadf63d0da8              # double 0.4355273155853987
	.quad	0x3fb9f453091f1e10              # double 0.10138434384054329
	.quad	0x3fed3755b7e63d4a              # double 0.91300474088522177
	.quad	0x3fe951986a0b992a              # double 0.79121037208532141
	.quad	0x3fe622772d27d96d              # double 0.69170721835579985
	.quad	0x3fb4f8258975aee8              # double 0.081911417064187142
	.quad	0x3fe716983b4848ba              # double 0.72150813654504664
	.quad	0x3fd251c870b40a60              # double 0.28624163633518229
	.quad	0x3fec141f537fccb6              # double 0.87745634373131653
	.quad	0x3feb8a8a39e3048f              # double 0.86066161447537748
	.quad	0x3fd92681d8b96ed0              # double 0.39297529377448104
	.quad	0x3fc3445adfa77df8              # double 0.15052352829569293
	.quad	0x3fcfc68f07d92f38              # double 0.24824703105184098
	.quad	0x3fc228ee2d5e5d54              # double 0.14187409606231915
	.quad	0x3fe3ace3771bdcbe              # double 0.61485455764240959
	.quad	0x3fb25ef93b46df98              # double 0.071761681529891042
	.quad	0x3fdf2fec8d0e47e4              # double 0.48730005049685432
	.quad	0x3fb9fdb4fb28ba28              # double 0.10152751094640478
	.quad	0x3faa5cf7a1ea8cf0              # double 0.05149053432003281
	.quad	0x3f9f38a6669d1100              # double 0.030489540112527358
	.quad	0x3febd8e12ee94c3a              # double 0.87022456323973718
	.quad	0x3fcb07590df1a83c              # double 0.21116173916681358
	.quad	0x3fd70f933b4a1192              # double 0.36032563009236995
	.quad	0x3fe6e6c9ffc102af              # double 0.71567249252264797
	.quad	0x3fe69c69069c5530              # double 0.70659304896495279
	.quad	0x3fd8387a456f94a6              # double 0.37844712048383611
	.quad	0x3fc5c653e39ee30c              # double 0.17011498083390852
	.quad	0x3fe5a6c2ebf9ab2d              # double 0.67660661782188003
	.quad	0x3f90807446cc0840              # double 0.016115013905626308
	.quad	0x3fd0376fcca5c1fc              # double 0.25338358864885868
	.quad	0x3fe63601143ba944              # double 0.69409231139915351
	.quad	0x3fe735689ad48499              # double 0.72526960602057777
	.quad	0x3fd879ae424d7506              # double 0.38242680048809097
	.quad	0x3fc2d88f4d3a4554              # double 0.14723387976531888
	.quad	0x3fc3b12baf9ee128              # double 0.15384431910730112
	.quad	0x3fc9c41125c56a88              # double 0.20129598945898786
	.quad	0x3fc99b3c3cc42d94              # double 0.20004990546327106
	.quad	0x3fd74e168ba085e8              # double 0.36414111743405764
	.quad	0x3fee67cd7390b915              # double 0.95017120906212205
	.quad	0x3febfc0d773cf35a              # double 0.87451813973130332
	.quad	0x3fcf9905dbf1a88c              # double 0.24685738791896872
	.quad	0x3fbd89b20aa45f78              # double 0.11538231620613526
	.quad	0x3fc067b807561e08              # double 0.12816524847242783
	.quad	0x3fd11fbf11d2b358              # double 0.26756264439136634
	.quad	0x3fd034348ed3c772              # double 0.25318635890936669
	.quad	0x3fd94631411bf394              # double 0.39490920408553021
	.quad	0x3fbcedb9d0ae60d8              # double 0.11300240845446596
	.quad	0x3fefe7fb7cd31e75              # double 0.99706816081830018
	.quad	0x3fe4c8f247eaf9af              # double 0.64952959104976127
	.quad	0x3fd0d48cffba153e              # double 0.26297306989029667
	.quad	0x3fdc607efec2961e              # double 0.44338965300480193
	.quad	0x3fcd0a5596cf2974              # double 0.22687787879688026
	.quad	0x3fddda7aa3bae854              # double 0.46645990361469569
	.quad	0x3f912b6d7aea6160              # double 0.016767225863618562
	.quad	0x3feff775820a59c8              # double 0.99895739935419047
	.quad	0x3fed4a579e2cd708              # double 0.91532498258195094
	.quad	0x3fef2dd7b9f8e1ca              # double 0.97434603045172108
	.quad	0x3fecced2185c9971              # double 0.90024666555545541
	.quad	0x3fe103b9bd78208d              # double 0.53170477872574085
	.quad	0x3feacc4bb24b769e              # double 0.83743843863676992
	.quad	0x3fedd70cf659e4b8              # double 0.93250129809816595
	.quad	0x3fe9484aed8db6b3              # double 0.79007479092771005
	.quad	0x3fd06d6ea7e96748              # double 0.25667921445493791
	.quad	0x3fdd887fe97c8fba              # double 0.46145627786085763
	.quad	0x3fe816ba43822fce              # double 0.75277436433088396
	.quad	0x3fcd8174af4c5a20              # double 0.23051317748532174
	.quad	0x3fe4f1eb01960531              # double 0.65453100499886407
	.quad	0x3feaaddf67a0f3bf              # double 0.83372469177231057
	.quad	0x3fd914a92e85a158              # double 0.39188603919185061
	.quad	0x3f93c09bcdaf3a20              # double 0.019289431027397552
	.quad	0x3fc2870adeecb8d0              # double 0.14474616894717096
	.quad	0x3fefe5f170eccb9c              # double 0.99681922965679659
	.quad	0x3feec00809aa0f97              # double 0.96094133269842785
	.quad	0x3fbd2fd61f955df8              # double 0.11401117583351794
	.quad	0x3fa0edbdb9c720c0              # double 0.033063820770224961
	.quad	0x3fe1e4794d24f1e0              # double 0.55913987223862804
	.quad	0x3fed04621086988f              # double 0.90678504207314059
	.quad	0x3fd590f294111298              # double 0.33697189769399349
	.quad	0x3fae30aa55f110c0              # double 0.058965037337232129
	.quad	0x3fd588155aca101a              # double 0.33643087259429338
	.quad	0x3fe58d10d32bf0f8              # double 0.67346993679487266
	.quad	0x3f955b21b9505860              # double 0.020855452476176928
	.quad	0x3fc47c79329a8984              # double 0.16004862757570149
	.quad	0x3fe86bc09a367dea              # double 0.76315336341570839
	.quad	0x3fe83bf7898e17c7              # double 0.75732018343182339
	.quad	0x3fc8eea7e1b62ea4              # double 0.1947831966502821
	.quad	0x3fef6d5962156735              # double 0.98209828526453313
	.quad	0x3fe0ce557d30c333              # double 0.52518724871888478
	.quad	0x3fe925834ac3cf24              # double 0.78582920649066467
	.quad	0x3fdf174646ebde64              # double 0.48579556394495271
	.quad	0x3fead761d655bb2d              # double 0.83879176962168389
	.quad	0x3fddd1cdd7cc9c32              # double 0.46593042444368671
	.quad	0x3feae8575a0fd19a              # double 0.8408619650859237
	.quad	0x3fcda7788a122f44              # double 0.23167330495595639
	.quad	0x3fd9286e9715e7c6              # double 0.39309277300310119
	.quad	0x3feb6b090cb2c676              # double 0.85681583862442667
	.quad	0x3fde18f05f76549a              # double 0.47027215311511272
	.quad	0x3f848b144f6ebf00              # double 0.010030897783365855
	.quad	0x3fc7a4c129820d68              # double 0.18471540953405996
	.quad	0x3fd8cf052f54472c              # double 0.38763551351540815
	.quad	0x3fe5a6215fc82ef2              # double 0.67652958590903567
	.quad	0x3fe749204f38ddaf              # double 0.72767653916428354
	.quad	0x3feccd30ccdfda5d              # double 0.900047683854449
	.quad	0x3feda4b8bea9a888              # double 0.92635762442411451
	.quad	0x3fbca777984bdd00              # double 0.11193034618542086
	.quad	0x3fb1471e15947458              # double 0.06749141718724283
	.quad	0x3fbde980c9a34570              # double 0.11684422419354745
	.quad	0x3fe5937111580265              # double 0.67424825084169682
	.quad	0x3fda51dc4e38ce5e              # double 0.41124637259347263
	.quad	0x3fe2d26b7ec1c24e              # double 0.58818602330399883
	.quad	0x3fe406b1b86308e2              # double 0.62581716549928168
	.quad	0x3fe0ec35780317e5              # double 0.52883408965930967
	.quad	0x3fe51e97534ede81              # double 0.65998426695928469
	.quad	0x3fe05336b041f509              # double 0.5101579134494908
	.quad	0x3fe2223d3334d45c              # double 0.56667957307093841
	.quad	0x3fc1f9f9657256ac              # double 0.1404411073059938
	.quad	0x3fc53ef4eaee696c              # double 0.16598378630881017
	.quad	0x3fe73547399c0b3e              # double 0.72525368930687484
	.quad	0x3fe6819082add151              # double 0.70331597827184045
	.quad	0x3fc8d72f8c42735c              # double 0.19406694744693709
	.quad	0x3f68ce170df7bd00              # double 0.0030279588970568705
	.quad	0x3fe8605e0fb201b6              # double 0.76176360192771742
	.quad	0x3fd1632a6bc2b824              # double 0.27167759440897243
	.quad	0x3fce07b9608359ac              # double 0.23461072170785024
	.quad	0x3fea4edeef78428f              # double 0.82212778827131838
	.quad	0x3feef54ead352a07              # double 0.9674447424852709
	.quad	0x3feb6fd63eacadab              # double 0.85740196457975537
	.quad	0x3fea43794a766b83              # double 0.82073654693100229
	.quad	0x3fbcf36cab7715b0              # double 0.11308936296617023
	.quad	0x3feae10da25910d2              # double 0.83997232159210911
	.quad	0x3fe94cdb0a2b7a38              # double 0.79063179003043782
	.quad	0x3fcee848aec61a34              # double 0.24146374257925773
	.quad	0x3fb4a4ffaf241fd8              # double 0.080642681368885305
	.quad	0x3fee743fff0c63e8              # double 0.95169067205563084
	.quad	0x3fb6a82397f62728              # double 0.088503098106369138
	.quad	0x3fe3049e8fb5ba4e              # double 0.59431388920149586
	.quad	0x3feb62168814adeb              # double 0.85572363451268296
	.quad	0x3fe302728fe6ec76              # double 0.59404876809948237
	.quad	0x3fedf2f200ded49c              # double 0.93590641183859046
	.quad	0x3fe32347a56fca81              # double 0.59805662452556885
	.quad	0x3fec9a81a236e82a              # double 0.89386064226642259
	.quad	0x3fc64b2157633abc              # double 0.17416779295895946
	.quad	0x3fe7cf2c6a3a7669              # double 0.74403973338821772
	.quad	0x3fe17e736319b530              # double 0.54668588023711173
	.quad	0x3feef194ab56582a              # double 0.96698983635247271
	.quad	0x3fdd6124b2508a58              # double 0.45905415929352023
	.quad	0x3fe5d89b1c8ec3e3              # double 0.68269115045233908
	.quad	0x3fea26c775a9bfa1              # double 0.81723378163404814
	.quad	0x3fdf76d7118a7aca              # double 0.49162842476827662
	.quad	0x3fe03123545fc011              # double 0.50599829177190447
	.quad	0x3fe5944a07748177              # double 0.67435170608591377
	.quad	0x3fe3372da31a96f6              # double 0.60048562866424393
	.quad	0x3fbc374d6dc3b3a0              # double 0.11021884851261499
	.quad	0x3fef8f1eb6b742c4              # double 0.98622070013706109
	.quad	0x3fc0fc3a4a41fb1c              # double 0.13269737840524776
	.quad	0x3fe2d0d98f4844ca              # double 0.58799436554741047
	.quad	0x3fe5333a912a1e30              # double 0.66250351288267062
	.quad	0x3fe8d58d01d34ea4              # double 0.77606821400191394
	.quad	0x3fca0177feee34e4              # double 0.20316982219484381
	.quad	0x3fec096846392b9b              # double 0.8761483546780825
	.quad	0x3fd90c3dfd00f33c              # double 0.39137220103639314
	.quad	0x3fa317be98dfa690              # double 0.037290531312305863
	.quad	0x3fab21bb5ac56090              # double 0.052991728620953471
	.quad	0x3fd3aa8ee9ce21c2              # double 0.30728504974879567
	.quad	0x3fe414da2e7dc055              # double 0.62754544334712625
	.quad	0x3fd82f12bf2fe1f2              # double 0.37787312193498146
	.quad	0x3fc508ede81818cc              # double 0.16433500130387413
	.quad	0x3fb7f5192913a028              # double 0.093583653000337663
	.quad	0x3fdeb5d8d3bc6a64              # double 0.4798490588888511
	.quad	0x3fef825d6ef8a641              # double 0.98466369318084201
	.quad	0x3fb0ddb5c27c83f8              # double 0.065883026105907905
	.quad	0x3fb37f67593a3910              # double 0.076162776264230069
	.quad	0x3fb03598a658b478              # double 0.063317814456881893
	.quad	0x3fe874bb701abf55              # double 0.76424953360945358
	.quad	0x3fedec8cee2114ef              # double 0.93512579450239552
	.quad	0x3fc96515176aa5fc              # double 0.19839728968990744
	.quad	0x3fdd95b1d8b8ef74              # double 0.46226164020821803
	.quad	0x3fd01d3db514f66e              # double 0.25178473171022275
	.quad	0x3fd9931334d22364              # double 0.39960174711500529
	.quad	0x3fe6b5c101502312              # double 0.70968675857975172
	.quad	0x3fd033437e174738              # double 0.2531288844448798
	.quad	0x3fe26496fd9699f9              # double 0.57477902916872303
	.quad	0x3fe9f831f0221db7              # double 0.81154724980381487
	.quad	0x3fe615996fa9ed78              # double 0.69013664063770275
	.quad	0x3fdf15be1fe80dca              # double 0.48570206752648615
	.quad	0x3fedd92986c02405              # double 0.93275905912844392
	.quad	0x3fe67b3dbed0cce3              # double 0.70254409092595116
	.quad	0x3fb30b4ef269d1f8              # double 0.074391302283238647
	.quad	0x3fcaa36ff053527c              # double 0.2081127093757863
	.quad	0x3fe2e872dc88ad97              # double 0.59087508271243194
	.quad	0x3fe3bacd6154ef63              # double 0.61655301103699534
	.quad	0x3feac4e33794616a              # double 0.83653412681000572
	.quad	0x3fe36ad305349da3              # double 0.60679007546143671
	.quad	0x3fea4da174fe1eef              # double 0.82197640276078043
	.quad	0x3fdf55d148c9b0e6              # double 0.48961288555325522
	.quad	0x3fe146622e24a877              # double 0.5398417378649033
	.quad	0x3fe76a785b4e6127              # double 0.73174684365497888
	.quad	0x3fe17c4262ea5989              # double 0.54641837424678485
	.quad	0x3fe14986b7c6c887              # double 0.54022537130210047
	.quad	0x3fa6c09a1f466ac0              # double 0.044438186948544622
	.quad	0x3fccebd0f2bfebc4              # double 0.22594653943073528
	.quad	0x3fe05f4c1033c5f5              # double 0.51163294949054594
	.quad	0x3fd6ebbb7191204a              # double 0.35813795176045871
	.quad	0x3feb56274b346890              # double 0.85426678360387776
	.quad	0x3feb15cd7c2b75f0              # double 0.84641145946414831
	.quad	0x3feb5f95d2548bee              # double 0.85541812019471108
	.quad	0x3fe4e16b262e7230              # double 0.65251691300688286
	.quad	0x3fe5e72c9b1084f4              # double 0.68446951185265315
	.quad	0x3fef66e24fe1ff08              # double 0.98130908586605958
	.quad	0x3f99e622eb6b84e0              # double 0.025291963213821655
	.quad	0x3fa6508122e45040              # double 0.043582950124033903
	.quad	0x3fe39c0eb5ce8e76              # double 0.61279998311188311
	.quad	0x3feb49b553e226c0              # double 0.85274759658314991
	.quad	0x3fded664864c25be              # double 0.48183549036965789
	.quad	0x3fe8ee919ece164a              # double 0.77912217156035379
	.quad	0x3fd93943612f42ec              # double 0.39412006846127556
	.quad	0x3fe4bc5b29d30bf2              # double 0.64799268883541417
	.quad	0x3fc9a8c25de8f248              # double 0.20046262345739962
	.quad	0x3fe77d6866cc8e66              # double 0.73405857160510091
	.quad	0x3fe55943291d627a              # double 0.66714628248435237
	.quad	0x3f9c0b5a55152220              # double 0.027387057726885655
	.quad	0x3f707a37ac8b3080              # double 0.0040228056684094016
	.quad	0x3fd27c753f16bea2              # double 0.28884631310482167
	.quad	0x3fd85635935c5fae              # double 0.38026179686266459
	.quad	0x3fe616e3aec73aed              # double 0.69029411445975841
	.quad	0x3feb18dd9b2cfbcb              # double 0.84678535754925954
	.quad	0x3fda6d2102d748d0              # double 0.41291070249020567
	.quad	0x3fe397330a1811ef              # double 0.61220695468415254
	.quad	0x3fcfa0d4ef4a6d74              # double 0.24709569629781536
	.quad	0x3fdc591ad019b5c6              # double 0.44293852159793479
	.quad	0x3f9a33700300b460              # double 0.025586843665383774
	.quad	0x3fd50c18901017b6              # double 0.3288632780898938
	.quad	0x3fe827d3c6bd045d              # double 0.75486172500690041
	.quad	0x3fd418ce11cb12ae              # double 0.31401397454855384
	.quad	0x3fe738f5bb313e1b              # double 0.72570311127668974
	.quad	0x3fd109911b96bee4              # double 0.26620891279433878
	.quad	0x3fd632cf28aea5d6              # double 0.34685114834664199
	.quad	0x3fe0e27fc6b9c4db              # double 0.52764881909947847
	.quad	0x3fd5c62e3007ed1a              # double 0.34022097292445752
	.quad	0x3fe4c2281e1d8de4              # double 0.64870077020571815
	.quad	0x3fcc544b111d6628              # double 0.22132242522893475
	.quad	0x3fb2059033c32320              # double 0.070397389065999239
	.quad	0x3fb6363dc3bffee0              # double 0.086765156069300797
	.quad	0x3fe563f54d3ceb85              # double 0.66845192990818758
	.quad	0x3fe5bf405d4e4fdd              # double 0.67959612106141842
	.quad	0x3fedfaf018793688              # double 0.93688206462839307
	.quad	0x3fe7c2342c269502              # double 0.74245651839433457
	.quad	0x3fe8b4ef71b06b9d              # double 0.7720868320933395
	.quad	0x3fe318cf99303eef              # double 0.59677867812749053
	.quad	0x3fe2a2b3f3217565              # double 0.58236119734253278
	.quad	0x3fc35fc5738c0e50              # double 0.15136020795772476
	.quad	0x3fee82ed10c37cce              # double 0.95348218225617543
	.quad	0x3fe7cea15a3b2096              # double 0.74397342322574178
	.quad	0x3fe41fcab1aed322              # double 0.62888083175366583
	.quad	0x3fc564c4bc09cc84              # double 0.16713771039539804
	.quad	0x3fdfd59238cb76f8              # double 0.49741035028806335
	.quad	0x3fd19d0896cb6c86              # double 0.27520956731832091
	.quad	0x3fd0d877013a26a4              # double 0.26321196670378755
	.quad	0x3fd227465d8c6c62              # double 0.28364714751814379
	.quad	0x3f88e21a6a3acf40              # double 0.012150007597803048
	.quad	0x3fd9d1c56867eb28              # double 0.40342841335193436
	.quad	0x3fe321a2473e44a1              # double 0.59785570063299442
	.quad	0x3fd77705ce509538              # double 0.36663956783225471
	.quad	0x3fddfc5e3d72d972              # double 0.46852832794993227
	.quad	0x3fe76ecddeb93d49              # double 0.73227590084744876
	.quad	0x3fe779be08060d06              # double 0.73361112181774568
	.quad	0x3fe8fcdc157f9a6f              # double 0.78086666296878871
	.quad	0x3fc26ac38f20dfe8              # double 0.1438831757420751
	.quad	0x3fc2a151b3770c50              # double 0.14554806960049627
	.quad	0x3fca054182e538cc              # double 0.20328539744736529
	.quad	0x3fea6e302ad05889              # double 0.82595070230560552
	.quad	0x3fd0fca515583986              # double 0.26542021831928542
	.quad	0x3fcf1b32e4ca2e70              # double 0.24301754161239186
	.quad	0x3fee4d2bc83fa925              # double 0.94692029105252529
	.quad	0x3fd5ff341fdfdf42              # double 0.34370139229530505
	.quad	0x3fd785f61e88384e              # double 0.36755135518695148
	.quad	0x3fb3fdf0b8e29798              # double 0.078093571794481398
	.quad	0x3feb1d648e72e451              # double 0.84733798810987981
	.quad	0x3fdb9185508822a4              # double 0.43075688232833387
	.quad	0x3fc41b37b1382128              # double 0.15708061364444714
	.quad	0x3fea6215caee9efb              # double 0.82447328219583882
	.quad	0x3febe12525a99bca              # double 0.87123353343928867
	.quad	0x3fe629621f37b955              # double 0.69255167100144865
	.quad	0x3fdb94c2b4e04042              # double 0.43095462478322955
	.quad	0x3fe1ca031a9dc642              # double 0.55590968321320866
	.quad	0x3fbbeafa74975a60              # double 0.10905423494782829
	.quad	0x3fe77abcebbf7c75              # double 0.73373266262559744
	.quad	0x3fe83779dc6918e8              # double 0.75677197503025884
	.quad	0x3fdc72e5fa4708b4              # double 0.44451283875617809
	.quad	0x3fe9c250f4d34be4              # double 0.80497024362045666
	.quad	0x3fd8857d682ac66c              # double 0.38314757511680031
	.quad	0x3fd542f9f6d9c56c              # double 0.33221291643629658
	.quad	0x3fe2a60b9675b9b7              # double 0.58276919733707799
	.quad	0x3fe72aa79b396af5              # double 0.72395687405818754
	.quad	0x3fefd0a2d2f426b3              # double 0.9942182655515438
	.quad	0x3fab7e1e2a7b5290              # double 0.053696577726133232
	.quad	0x3fc0eede9d5cb688              # double 0.13228972133349637
	.quad	0x3fe390e23cef83ba              # double 0.61143600369916062
	.quad	0x3fbbd0ca06893588              # double 0.10865461978501945
	.quad	0x3fe2a5133399dc94              # double 0.58265075758289919
	.quad	0x3fd005cb1f2a210a              # double 0.25035360377707205
	.quad	0x3fe643adfc60cc45              # double 0.69576167385674437
	.quad	0x3fee73b14a518926              # double 0.95162262454349356
	.quad	0x3fd103f0cbbab3d4              # double 0.26586551566543659
	.quad	0x3fb88bf3d60ba360              # double 0.095885505444710528
	.quad	0x3fdfd43c74a6d314              # double 0.49732886688006883
	.quad	0x3fd244590c025774              # double 0.28542162106292968
	.quad	0x3fc20e71650918b8              # double 0.1410657637918058
	.quad	0x3fe7f30d0d288a80              # double 0.74841930932991829
	.quad	0x3fd69cdd06731286              # double 0.35332418088754769
	.quad	0x3fd0a4f8ae385d24              # double 0.26006905568779559
	.quad	0x3fb2807a631bf660              # double 0.072272919842327976
	.quad	0x3fd29bf40ebac6c2              # double 0.2907686370700554
	.quad	0x3fd0097f68404230              # double 0.25057969265711488
	.quad	0x3fdad577a9d154d0              # double 0.41927901824722102
	.quad	0x3fef7a71827122ac              # double 0.98369670369091499
	.quad	0x3fd3f2a3ed3bdf4a              # double 0.31168459098215762
	.quad	0x3fd13d7f7d0ddbfe              # double 0.26937854015653773
	.quad	0x3fe338311147bdd6              # double 0.60060933470770794
	.quad	0x3fe091f9d54c3822              # double 0.51781932506287753
	.quad	0x3fd08934bd4784be              # double 0.25837439045251276
	.quad	0x3fd97b4bfe15613e              # double 0.39815044224589602
	.quad	0x3fd99921d90e287c              # double 0.39997144886786606
	.quad	0x3fd0036d449a2230              # double 0.25020915698454171
	.quad	0x3fdd64ce5d0d0f0c              # double 0.45927771651280191
	.quad	0x3fe2678e0dbb4fd2              # double 0.57514097864122449
	.quad	0x3fee36f81ac8a989              # double 0.94421010237901826
	.quad	0x3f92d883568bea40              # double 0.018404056699163229
	.quad	0x3fef6c1b7c6b347f              # double 0.98194670010128948
	.quad	0x3fd99bf6ef46d69a              # double 0.40014432303301251
	.quad	0x3fc94ff21a231a9c              # double 0.19775224949099346
	.quad	0x3fed0ab181a69032              # double 0.90755534479513345
	.quad	0x3fe63a44393d6c6f              # double 0.6946126096694466
	.quad	0x3fecc63d0d1bfa4a              # double 0.89919903335960183
	.quad	0x3fe8a889c6fe2d03              # double 0.77057350984378592
	.quad	0x3fcfddb6a03c2e40              # double 0.2489536554715972
	.quad	0x3fdaaab853ea0208              # double 0.41666992373214429
	.quad	0x3fda1f87aa7030cc              # double 0.40817443508491347
	.quad	0x3fd7561bb42e3e2e              # double 0.36463062854542982
	.quad	0x3fc0e5c146cbfaa0              # double 0.13201156575083406
	.quad	0x3fc724a50ff36e68              # double 0.1808058097729941
	.quad	0x3fd9fa65f249b21a              # double 0.40590809498715574
	.quad	0x3fec867a537f74a4              # double 0.89141575153520991
	.quad	0x3f90ea831d840700              # double 0.016519592930314353
	.quad	0x3fcfad99539cdaf8              # double 0.24748531897213133
	.quad	0x3f872c5b8574a180              # double 0.011315073976746914
	.quad	0x3fedbbde2f4f4089              # double 0.92918309440757796
	.quad	0x3fe0e1920b488dc2              # double 0.52753545955459225
	.quad	0x3fb756251a5e07f0              # double 0.091158217370349126
	.quad	0x3fef2f8beb63119c              # double 0.97455402349492059
	.quad	0x3fc8a4dacda3b27c              # double 0.19253096619594945
	.quad	0x3f94731c20a65160              # double 0.019970359318521758
	.quad	0x3fa4a696932e7f10              # double 0.040333466974742049
	.quad	0x3feb9fd896766fff              # double 0.86326245677219038
	.quad	0x3fb87dcf4a109440              # double 0.095669704038827241
	.quad	0x3f9542566678df80              # double 0.020760869984058683
	.quad	0x3fb05675789f1dc8              # double 0.063819257687206421
	.quad	0x3febc3dd238f2f4f              # double 0.86765915818384964
	.quad	0x3fdea582b67fabbe              # double 0.47885196516170569
	.quad	0x3fd9546c4e05c15a              # double 0.39577777499564137
	.quad	0x3fe1ad4364806738              # double 0.55240029935087076
	.quad	0x3f9056f126ab7d40              # double 0.015956657395574725
	.quad	0x3fdada111c468bb6              # double 0.41955974351202074
	.quad	0x3fe4d8c288f99c0e              # double 0.65145994904458049
	.quad	0x3fe7ae6752080fe4              # double 0.74003950139785646
	.quad	0x3fe6ec652f1299c7              # double 0.71635684198263838
	.quad	0x3feebebdddde97ae              # double 0.96078389486205196
	.quad	0x3fe52f43962ca1d1              # double 0.66201953249861323
	.quad	0x3fe070d14818269a              # double 0.5137716682522353
	.quad	0x3fe1da89e68ce251              # double 0.55792708424912452
	.quad	0x3fd63290ece04972              # double 0.34683631069596921
	.quad	0x3fc36ac04a8ce2a0              # double 0.15169528618004779
	.quad	0x3fe4439701435073              # double 0.63325071570080949
	.quad	0x3fe7ef7fb8573f93              # double 0.74798570636811446
	.quad	0x3fdb8481c41d10c4              # double 0.42996257926666837
	.quad	0x3fedd3a05b92cf15              # double 0.93208330045169652
	.quad	0x3fbbd112b8948c60              # double 0.10865895277361082
	.quad	0x3feb1b89383d228b              # double 0.84711132988111737
	.quad	0x3fe533d6028d39f5              # double 0.66257763384220303
	.quad	0x3fd6211b1d2438f2              # double 0.34577062459801688
	.quad	0x3fc79688907d4ed8              # double 0.18428141646528817
	.quad	0x3fe2b9835056d5a6              # double 0.58514562312364116
	.quad	0x3fe158a334dedae3              # double 0.54207001043581859
	.quad	0x3fda639b5f9c89b8              # double 0.41232952439363713
	.quad	0x3fdd2c66484ab67a              # double 0.45583493289709731
	.quad	0x3fd7a29f4126b8ee              # double 0.3693006645434157
	.quad	0x3fc6bfcdd1f7bf8c              # double 0.17772839310009336
	.quad	0x3fef676e94076216              # double 0.9813759700001039
	.quad	0x3fc60a2e3f226bcc              # double 0.17218568880784202
	.quad	0x3fe08d1236703397              # double 0.51722059853055924
	.quad	0x3fe9ea0b371c13b8              # double 0.8098198009835107
	.quad	0x3fef8053d458c471              # double 0.98441497301076996
	.quad	0x3fc80a2f234a4b5c              # double 0.18781079505114462
	.quad	0x3feae5768f154b0f              # double 0.84051063486035271
	.quad	0x3fc50d691267e2d8              # double 0.16447175406189873
	.quad	0x3fcf626763a81090              # double 0.24519054761924908
	.quad	0x3fefd8a69be9585e              # double 0.99519663287606952
	.quad	0x3fe984cced0cb487              # double 0.79746099756961619
	.quad	0x3feac410eee7d9eb              # double 0.83643385564101658
	.quad	0x3fe2a46634be580e              # double 0.58256826688261909
	.quad	0x3fecd10e3ea331d9              # double 0.90051948770411194
	.quad	0x3fef1dea61220a41              # double 0.97240179988177299
	.quad	0x3fdc4aa4d036a6a8              # double 0.44205589612338736
	.quad	0x3fd17b072206e858              # double 0.27313402483890092
	.quad	0x3fdcd90dfff1d734              # double 0.45074796671484596
	.quad	0x3fb846deb8619880              # double 0.094831390395116343
	.quad	0x3fd3a1b544745834              # double 0.30674487767226144
	.quad	0x3fe6713304b40e43              # double 0.70131827276822667
	.quad	0x3fe13cdcb95b9a87              # double 0.53867946818066137
	.quad	0x3fe93aa32e44cc54              # double 0.78840788876403644
	.quad	0x3fc4266d71dc8fe4              # double 0.15742271480223657
	.quad	0x3f90105a67f1eb40              # double 0.01568738231115252
	.quad	0x3fab50cd1dba76b0              # double 0.053350839499427649
	.quad	0x3fd9c85926992450              # double 0.40285328645092466
	.quad	0x3fef862cc5d41de5              # double 0.985128771194408
	.quad	0x3fe6c5f9fad5fcab              # double 0.71166705123314011
	.quad	0x3fd8f7845e9333d8              # double 0.39010724292603305
	.quad	0x3fe3b3be98d89948              # double 0.61569146969558464
	.quad	0x3f8b70bc94d55200              # double 0.013398621837645841
	.quad	0x3fc2e098d21a7668              # double 0.1474791551490171
	.quad	0x3fe04d79cffb6d7c              # double 0.50945749875556556
	.quad	0x3fe3652adc671b1f              # double 0.60609953925527182
	.quad	0x3fc911acc4be4b04              # double 0.19585189444168105
	.quad	0x3fe25e027eadc926              # double 0.57397579900706286
	.quad	0x3fefa22c37309cfb              # double 0.98854647425915176
	.quad	0x3fe4e5fe60589a81              # double 0.65307539765929346
	.quad	0x3fe1a937b960b838              # double 0.55190645414928152
	.quad	0x3fd7f72226ca5b9e              # double 0.37445882595187097
	.quad	0x3fd9cd1f9963285e              # double 0.40314474086028962
	.quad	0x3fd26ec57bcfd596              # double 0.28801095095635654
	.quad	0x3fdafcbb131f9c20              # double 0.42167546145941692
	.quad	0x3fe499c306092e5e              # double 0.64376975230102196
	.quad	0x3fef500129614590              # double 0.9785161789133543
	.quad	0x3fc0bf9b1ce7f688              # double 0.13084734832220968
	.quad	0x3fed575f797d23be              # double 0.91691564300810291
	.quad	0x3fd80ac38a48ab2e              # double 0.37565697197230719
	.quad	0x3f968540e35eb2a0              # double 0.021992696645315335
	.quad	0x3fdd0c458e82f65a              # double 0.45387400548120171
	.quad	0x3fc0d2b443fb3940              # double 0.13143018073464852
	.quad	0x3fce021ddc27d388              # double 0.23443959474357379
	.quad	0x3fcfc6362df9afa4              # double 0.24823643917932003
	.quad	0x3fc475b0c3446780              # double 0.15984162840396365
	.quad	0x3fea240f67b396fa              # double 0.81690187696651084
	.quad	0x3fe091029cdb3ee1              # double 0.51770144115468153
	.quad	0x3fe566e4f296f0ff              # double 0.66881034260543959
	.quad	0x3fdfea6b5b96385c              # double 0.49868282264731589
	.quad	0x3f978e2b464ebbe0              # double 0.023003269354088363
	.quad	0x3fd2500b15fc08a0              # double 0.28613545557903741
	.quad	0x3fc6bf249b1168bc              # double 0.17770822116546536
	.quad	0x3fc8bc6a5eff26cc              # double 0.19324998510847136
	.quad	0x3fca72f9c36e28dc              # double 0.20663377802367833
	.quad	0x3fe294b49fd099cb              # double 0.58065253461682553
	.quad	0x3fe1c4ead941bf7e              # double 0.55528776581739669
	.quad	0x3fed5916844e340f              # double 0.91712499466814446
	.quad	0x3fcaf044740961e8              # double 0.21045737901546535
	.quad	0x3fdb2c13245f1540              # double 0.42456511070152558
	.quad	0x3fefcd5644cd95df              # double 0.99381555021380652
	.quad	0x3fdec8f6f45288b4              # double 0.48101590976342412
	.quad	0x3fe9dde3585a23d4              # double 0.80833594566603972
	.quad	0x3fe34132f0dbcc3b              # double 0.60170886080448527
	.quad	0x3fd51f0c148df1e0              # double 0.33001997000954297
	.quad	0x3fef1d437aff1549              # double 0.97232221625078196
	.quad	0x3fca238f2f32c740              # double 0.20421018414122649
	.quad	0x3f72b422c1227a00              # double 0.0045663220973026775
	.quad	0x3fe87763d5a1fad7              # double 0.76457397198813737
	.quad	0x3fe9f87b3c3751b4              # double 0.81158220063166774
	.quad	0x3f7251a617680900              # double 0.0044723976084262151
	.quad	0x3fe1ca30113bc870              # double 0.55593112340853956
	.quad	0x3fe39b714e19a3d4              # double 0.61272492650925381
	.quad	0x3fda495841b00702              # double 0.41072660841756214
	.quad	0x3f8348ed64a97280              # double 0.0094164415688109404
	.quad	0x3fd282b9f1b87d3e              # double 0.28922890286954217
	.quad	0x3fd167fbc54d8f8e              # double 0.27197164790981609
	.quad	0x3fc94d3dc87ed434              # double 0.19766971864524552
	.quad	0x3fef28fc15ab7a5e              # double 0.97375301582708196
	.quad	0x3fe1b41ebac16e3b              # double 0.55323730922413661
	.quad	0x3fe9230bc9909fa3              # double 0.78552808159019027
	.quad	0x3fe0c077ccbf255a              # double 0.52349462499220611
	.quad	0x3fd7b44e127b83c6              # double 0.37037994198732027
	.quad	0x3fa3cb2c61faf850              # double 0.038659464798442955
	.quad	0x3fe6e6e4f5dd02a0              # double 0.71568534870319311
	.quad	0x3fd818fb3c91b6d2              # double 0.37652474322281393
	.quad	0x3fe806e4c1112175              # double 0.7508415003622263
	.quad	0x3fe5881151022e89              # double 0.67285981962182106
	.quad	0x3fe131ea012e8b8c              # double 0.53734302740882489
	.quad	0x3fbe87018813b4f0              # double 0.11924752781097303
	.quad	0x3f9948a776d3ed80              # double 0.024691216113735148
	.quad	0x3fdd80b14e6f12da              # double 0.46097977313574534
	.quad	0x3fe8902f3598964e              # double 0.76760063617684593
	.quad	0x3fd15032ec35d354              # double 0.27051995341689872
	.quad	0x3fdd15a6a6fa4f90              # double 0.4544464712755536
	.quad	0x3fe0e2b4388f7920              # double 0.52767382666550944
	.quad	0x3fa36b52432f6270              # double 0.037928171826654089
	.quad	0x3fdba054bd394004              # double 0.43166082838888564
	.quad	0x3fe40e8146e6bcdc              # double 0.62677062843240661
	.quad	0x3fe85547c7a623f8              # double 0.76041020387594838
	.quad	0x3fe14bcb869e0e12              # double 0.54050232212506644
	.quad	0x3fe1185854cffbe4              # double 0.5342218071453968
	.quad	0x3fd4597cfc2e0618              # double 0.31796192767078102
	.quad	0x3fd5b5863532a7c0              # double 0.33920436091522888
	.quad	0x3fde83a1c2435f40              # double 0.47678417178166299
	.quad	0x3fe371b2aba9815b              # double 0.60762914207229402
	.quad	0x3fd0fcb9fd2d4130              # double 0.26542520260138058
	.quad	0x3fee47cd7b04f062              # double 0.94626497294622092
	.quad	0x3fd21d462a9fac9a              # double 0.28303674852822669
	.quad	0x3f9d4f0c5c519ea0              # double 0.02862185777158166
	.quad	0x3fe2e8699d65768f              # double 0.59087067357514111
	.quad	0x3fe0be6a011f0b3b              # double 0.52324390620228856
	.quad	0x3fd25ca40ec60490              # double 0.28690434878087334
	.quad	0x3fe5ed0742ddf6c5              # double 0.68518412647218752
	.quad	0x3fd32fa97da56076              # double 0.29978406210057729
	.quad	0x3fd10385c6c67f3a              # double 0.26584000026376808
	.quad	0x3fe3025f1eb9630c              # double 0.59403949738325101
	.quad	0x3fc7d8d09cd3f9e4              # double 0.18630416543596973
	.quad	0x3fe117c589d008ed              # double 0.53415181080370433
	.quad	0x3fe7290047c75bb2              # double 0.7237550165108273
	.quad	0x3fb888659026d3b0              # double 0.095831248944547864
	.quad	0x3fe781b35b6f6933              # double 0.73458259447514818
	.quad	0x3fe2ed0df3ee5490              # double 0.59143731730240923
	.quad	0x3fd80091a29b04cc              # double 0.3750347221321817
	.quad	0x3fded3f11214d966              # double 0.48168589368596881
	.quad	0x3fe2f4c698a69021              # double 0.59237985434129226
	.quad	0x3fab3b5f6b92ff50              # double 0.053187353021256656
	.quad	0x3fe0e051165424e8              # double 0.52738241540023711
	.quad	0x3fc1598de8c6d170              # double 0.13554548135801836
	.quad	0x3fc0d78dcabb3a88              # double 0.1315781822108486
	.quad	0x3fd5b7f24e811f5c              # double 0.33935220400279831
	.quad	0x3fd91f9068e577d6              # double 0.3925515198114885
	.quad	0x3fdd7adb23852912              # double 0.46062353581204818
	.quad	0x3fefbf1f39c04808              # double 0.99208031920920891
	.quad	0x3fe56adcdc4e0d1c              # double 0.6692947676496348
	.quad	0x3fe20472a10e5336              # double 0.56304294067613259
	.quad	0x3fd19b9b7fa96344              # double 0.27512252299270679
	.quad	0x3fc763f1af7d211c              # double 0.18273755139149095
	.quad	0x3fe3c5740358c35e              # double 0.61785317090662395
	.quad	0x3fd5b91393b3bba8              # double 0.33942117141753636
	.quad	0x3fd75d5aa30a2af4              # double 0.36507287904593899
	.quad	0x3fd6d4042225c9c0              # double 0.3566904386017562
	.quad	0x3fe467b5f2211168              # double 0.6376600007138622
	.quad	0x3fdd7957125e83f0              # double 0.46053101343028313
	.quad	0x3fe1cab1d929af4c              # double 0.55599300779929584
	.quad	0x3fe2c4439900d1d7              # double 0.58645801433027145
	.quad	0x3fc1501896d7886c              # double 0.13525683751419437
	.quad	0x3fd43309a5828206              # double 0.31561509287897171
	.quad	0x3fce1882b64be5f8              # double 0.23512300397105412
	.quad	0x3fe5e9be8c16ee7f              # double 0.68478324280972902
	.quad	0x3febd47c5afbf589              # double 0.86968820352892451
	.quad	0x3fe69e165c2de54a              # double 0.70679777148976908
	.quad	0x3fcd56f22cf60b28              # double 0.22921588130346859
	.quad	0x3fec45d314f27662              # double 0.88352350321993023
	.quad	0x3fc97b7e429b83c8              # double 0.19908121349638308
	.quad	0x3fee5a71780c17e3              # double 0.94854043432928525
	.quad	0x3fe38e68d6913f78              # double 0.6111339751023328
	.quad	0x3fdb601763b86a90              # double 0.42773995149915667
	.quad	0x3fe5e95b6555991b              # double 0.68473596374386447
	.quad	0x3fe4789b3d53f7fb              # double 0.6397224614918281
	.quad	0x3fd51cf729ba12e4              # double 0.32989291262519616
	.quad	0x3fedce59b3428cc8              # double 0.93143925677977624
	.quad	0x3fda86ee2cbe8050              # double 0.41448549623055886
	.quad	0x3fe2052f99b6e553              # double 0.56313304922438545
	.quad	0x3fe871eea84a534d              # double 0.76390774602132583
	.quad	0x3fe08ee1f8a91cb7              # double 0.51744173590204567
	.quad	0x3fe0e8977ab62862              # double 0.52839254347896891
	.quad	0x3fd83f1a4cc611fa              # double 0.37885148522789758
	.quad	0x3fec3273cde597b0              # double 0.88115873541095446
	.quad	0x3fbe8431c17ba648              # double 0.11920462583261682
	.quad	0x3fd7a05a1bb77ea6              # double 0.36916210848537856
	.quad	0x3fee38806d38b429              # double 0.94439717609714535
	.quad	0x3fb8b302f22b7088              # double 0.096481498836000879
	.quad	0x3fe1b70df0ddedc0              # double 0.55359551472013635
	.quad	0x3fe4f8d0ee884de0              # double 0.65537306393019534
	.quad	0x3fe54bfaa7960e2e              # double 0.66552479488058736
	.quad	0x3fd66ddf03584eee              # double 0.35045600248962117
	.quad	0x3fb98a11ecb94198              # double 0.09976303128610764
	.quad	0x3fcd7af6610d5068              # double 0.23031501520984254
	.quad	0x3fe7f2eba3a9d482              # double 0.74840337720401373
	.quad	0x3fda8e91f3b8ea40              # double 0.41495178986557235
	.quad	0x3fd23b72ae652008              # double 0.28487841635478661
	.quad	0x3fedbda546c803e2              # double 0.92940009903406584
	.quad	0x3fe3c48a8c34bd15              # double 0.61774184593187675
	.quad	0x3feebb97f6538b95              # double 0.96039960966696702
	.quad	0x3fd7a8149f3d8ef6              # double 0.3696338229258197
	.quad	0x3fc8da514b5c2c84              # double 0.19416252307596349
	.quad	0x3fc10aa60b777c08              # double 0.13313746986293062
	.quad	0x3fe419791477560b              # double 0.62810949322983001
	.quad	0x3fba827934ddc400              # double 0.10355336704903095
	.quad	0x3fde91bd9c7e89dc              # double 0.47764530451436626
	.quad	0x3fea7a9417206f5a              # double 0.82746319310124794
	.quad	0x3fd5a812be0c7570              # double 0.33838337478103764
	.quad	0x3fd6929c1ba6eb14              # double 0.3526983518637945
	.quad	0x3fe3ebc3f6793899              # double 0.62252996577605579
	.quad	0x3fea61d0d26a3642              # double 0.8244403943696812
	.quad	0x3fb603ae8053bae0              # double 0.085993677453852779
	.quad	0x3f979503109cca80              # double 0.023029373063034431
	.quad	0x3fe38fd1004063e2              # double 0.61130571412206458
	.quad	0x3fef2535cccc654d              # double 0.9732922553986697
	.quad	0x3febeb01e4e4bf47              # double 0.87243742662210699
	.quad	0x3fd21e7e0711b73e              # double 0.28311110201217449
	.quad	0x3fd35ea93260f1f6              # double 0.30265264434618133
	.quad	0x3fe7124e7697fdd0              # double 0.72098467982135084
	.quad	0x3fc896df6a469530              # double 0.19210426987880558
	.quad	0x3fec3dbed1c9a8ed              # double 0.88253727888266342
	.quad	0x3fe7d37a70774b46              # double 0.74456521955503585
	.quad	0x3fefbbf6078cbc28              # double 0.9916944644409158
	.quad	0x3fccc10d1e54de08              # double 0.22464145642310052
	.quad	0x3fd28e013edf4b2a              # double 0.28991728916041615
	.quad	0x3fe3bf5bb692377e              # double 0.61710916193418064
	.quad	0x3fdf34eaca0f14c0              # double 0.4876048062545344
	.quad	0x3fb37f1e33a0b4c8              # double 0.076158416370805004
	.quad	0x3fdc4626351956e2              # double 0.44178157029578646
	.quad	0x3fd22785a4b22d52              # double 0.28366223414987701
	.quad	0x3fde69270fbd8bcc              # double 0.47516800439023821
	.quad	0x3fd8c87fcf8e6664              # double 0.38723750371136689
	.quad	0x3f9e0039f107c3c0              # double 0.029297738395999806
	.quad	0x3fe4e4628e5ec619              # double 0.65287902647668539
	.quad	0x3fd2627351497afe              # double 0.2872589391535455
	.quad	0x3fe833793b16b044              # double 0.75628339329478722
	.quad	0x3fef37ab3dfea2cf              # double 0.97554552181562737
	.quad	0x3fd0c2be3f82d7f0              # double 0.2618861789918574
	.quad	0x3fec1611a24cd779              # double 0.87769395541430051
	.quad	0x3fbe4e1b1644d900              # double 0.11837930005717467
	.quad	0x3fef5f0b2e3112b7              # double 0.98035201093497092
	.quad	0x3feab480486307a4              # double 0.8345338262372377
	.quad	0x3fe01c41db1b1aee              # double 0.50344937128178713
	.quad	0x3fd817c03268dc74              # double 0.37644963190854885
	.quad	0x3fe6c3846f8370e0              # double 0.71136686115235293
	.quad	0x3fe41111e35e05ff              # double 0.62708372504874876
	.quad	0x3fd4dc7dd7ade344              # double 0.32595773756434121
	.quad	0x3fee0f5af23097b1              # double 0.93937442114542169
	.quad	0x3fe01ee2fbbf819d              # double 0.5037703434900781
	.quad	0x3fd9f9e63d6057cc              # double 0.40587764734061405
	.quad	0x3fcc43a16d3c5f28              # double 0.22081392129688848
	.quad	0x3fe1b54756720319              # double 0.55337874301776246
	.quad	0x3fbe7ed1c8467330              # double 0.11912261142283564
	.quad	0x3fde81372d383afa              # double 0.47663669029218136
	.quad	0x3fdc08c49818f674              # double 0.43803515294334905
	.quad	0x3fea922fe126b660              # double 0.83034509634826392
	.quad	0x3fdd0413596b61d2              # double 0.45337375385636591
	.quad	0x3fd7778c0a8aaa70              # double 0.3666715720125131
	.quad	0x3febffc6ddeb04b3              # double 0.8749727567993858
	.quad	0x3fecc9c6764aa2d3              # double 0.89963076690500043
	.quad	0x3fe18f3e4890aaa2              # double 0.54873575375434691
	.quad	0x3fe15b311fac87da              # double 0.54238182245557742
	.quad	0x3fbba50e7ac33660              # double 0.10798731324322253
	.quad	0x3febade123da8334              # double 0.8649755192055637
	.quad	0x3fc76a8587d15f50              # double 0.18293828136188006
	.quad	0x3fc7d4b8bf8ab6ec              # double 0.1861792502654035
	.quad	0x3fe4f748d6c9c96b              # double 0.65518609953714468
	.quad	0x3fc2c7683e56e4dc              # double 0.14671042484204733
	.quad	0x3fc4965b9712de98              # double 0.16083855511327694
	.quad	0x3fd1791f5601df7a              # double 0.27301772498275734
	.quad	0x3fd8b2550a03aa98              # double 0.3858845327182876
	.quad	0x3fe92f2b52b7d143              # double 0.78700796275965279
	.quad	0x3fbada0bfde93ec8              # double 0.10488963078500568
	.quad	0x3fc673aa9df3cff0              # double 0.17540486061591265
	.quad	0x3fde15e7944c1eca              # double 0.47008695108568743
	.quad	0x3fc58065cfef09c0              # double 0.16798088696493885
	.quad	0x3fd08f7c6bbf5c3c              # double 0.25875769159523876
	.quad	0x3fe9ecebe64b3b9a              # double 0.81017107943795286
	.quad	0x3fcebb9f3ad3a2e4              # double 0.24010076877973241
	.quad	0x3fe3c19bdb6e3025              # double 0.61738388879303285
	.quad	0x3fd007c12c10123e              # double 0.25047330191617678
	.quad	0x3fd3fd12c3c4a648              # double 0.31232136838898272
	.quad	0x3fedbc8506c7ab77              # double 0.9292626507207008
	.quad	0x3fef99d1c0639960              # double 0.98752677513111208
	.quad	0x3fe9c9c07c0ad090              # double 0.80587791659356078
	.quad	0x3fce75abc9abeee0              # double 0.23796603533980143
	.quad	0x3fe00af53a03b254              # double 0.50133763628907468
	.quad	0x3fe4fc56ad3026b7              # double 0.65580304933356259
	.quad	0x3fc9b657164f9c30              # double 0.20087708081629918
	.quad	0x3fd4bc33c993de3c              # double 0.3239869564563127
	.quad	0x3feb9d281e1f99dd              # double 0.86293416865811035
	.quad	0x3fe5cde3cfc9733c              # double 0.68138304313070064
	.quad	0x3fdee15e311a637e              # double 0.48250536723349302
	.quad	0x3fa9ba9f629d6ed0              # double 0.050251942432365859
	.quad	0x3fec76d225dc11f2              # double 0.88950450319731389
	.quad	0x3fe10932b604fc2e              # double 0.53237281370809852
	.quad	0x3fe1dddee95ebb3e              # double 0.55833383159720262
	.quad	0x3fdb927d9f9a36e2              # double 0.43081608377620573
	.quad	0x3fe1e7073d0b7058              # double 0.55945169375219006
	.quad	0x3fec40127bab70cc              # double 0.88282131342159564
	.quad	0x3fe07dc95915d97d              # double 0.51535479926569361
	.quad	0x3fe620af0640ec57              # double 0.69148970815093491
	.quad	0x3fdca2510b2c67da              # double 0.44740701762350243
	.quad	0x3fd1c7963e7e6788              # double 0.27780681708247146
	.quad	0x3fda8ab307c823d2              # double 0.414715535735522
	.quad	0x3fea5824dc227fc3              # double 0.82325976367064191
	.quad	0x3fd1cf7382867de4              # double 0.27828681704155955
	.quad	0x3fe36b1f1c960c72              # double 0.60682635863521583
	.quad	0x3fc595e848a89fe0              # double 0.16863730953013967
	.quad	0x3fedb29a0bd383b5              # double 0.92805197057543032
	.quad	0x3fd0ba070d204464              # double 0.26135422021713439
	.quad	0x3fc94add836e039c              # double 0.19759720723598384
	.quad	0x3f926b13983d53e0              # double 0.017986589590993307
	.quad	0x3fe4b39fd657c878              # double 0.64692680229042221
	.quad	0x3fd6707f206c0b50              # double 0.35061624685493076
	.quad	0x3fe21b7cf617cde6              # double 0.56585548462902291
	.quad	0x3fd488efabed6078              # double 0.32085792341013741
	.quad	0x3fe8aa9feef24323              # double 0.7708282153053897
	.quad	0x3fe182632b5842a9              # double 0.54716642823958239
	.quad	0x3fdf59d48cf5c618              # double 0.48985780492429987
	.quad	0x3fa6993df3a62c70              # double 0.0441378936694371
	.quad	0x3fe968d77c6b09e7              # double 0.79404806423582108
	.quad	0x3fd0bea5bb2c7f4c              # double 0.26163619307225328
	.quad	0x3fd4d0dd3a68d144              # double 0.32524805740401441
	.quad	0x3fe3ec66a5ed2814              # double 0.62260754020212739
	.quad	0x3fddfd41678d7b28              # double 0.46858248817982195
	.quad	0x3fe6db5148877229              # double 0.7142721573432641
	.quad	0x3fb4f9adb76c0f88              # double 0.081934792786397037
	.quad	0x3fd1031bcf224a0e              # double 0.26581473567890235
	.quad	0x3fdc9c31511e5406              # double 0.44703324243283793
	.quad	0x3fcd17760dcf6644              # double 0.22727847742389617
	.quad	0x3fd45ac1a085a2b4              # double 0.31803932834604187
	.quad	0x3fe612ba28bc0a7a              # double 0.68978603321040954
	.quad	0x3fa59196bb8e2ab0              # double 0.042126379389704538
	.quad	0x3fc3a1778c7e465c              # double 0.15336508140585436
	.quad	0x3fed5d43b1859bcc              # double 0.91763481781242139
	.quad	0x3fde1facd4d2aaee              # double 0.47068329604614589
	.quad	0x3fab90116f0cc1b0              # double 0.05383352737988234
	.quad	0x3fe086a55ab7377b              # double 0.51643626897724404
	.quad	0x3fe30876fb7fd28f              # double 0.59478329773863148
	.quad	0x3fe5766d518b5e98              # double 0.67070642401354785
	.quad	0x3f80e205f9b00140              # double 0.0082436053107818318
	.quad	0x3fecafc84743f2b8              # double 0.89645780486133386
	.quad	0x3fcec9753c7f988c              # double 0.24052300886177524
	.quad	0x3fcbdb69e15f9d6c              # double 0.21763347153249002
	.quad	0x3fe5e332b0db944e              # double 0.68398413221860621
	.quad	0x3fd6c351c2574cf4              # double 0.35567134836783443
	.quad	0x3feef7611a6672a5              # double 0.96769766956602565
	.quad	0x3fe29b467be6f6f4              # double 0.58145450782441666
	.quad	0x3fe4f97aef4be4ac              # double 0.65545412767018751
	.quad	0x3fb117dba5eddfa8              # double 0.066770294199044344
	.quad	0x3fb19a5b09975c40              # double 0.068761529771436791
	.quad	0x3fea9aa6cbd63f2f              # double 0.83137836276907773
	.quad	0x3fe33836d1ed5f9d              # double 0.60061207772649861
	.quad	0x3fd16d8bfae4021a              # double 0.2723112058738778
	.quad	0x3fdf6bbc8913e050              # double 0.49095071207512309
	.quad	0x3fe70294e56ce8c2              # double 0.71906513986257203
	.quad	0x3fd9a7e84d348182              # double 0.40087325610695512
	.quad	0x3fd08688f1c31e98              # double 0.25821136102283893
	.quad	0x3fe9b8f8b6fa0fea              # double 0.80382953393609324
	.quad	0x3fe7403bb8602efb              # double 0.72659097681886864
	.quad	0x3fd2e43fc148620a              # double 0.29518121600406799
	.quad	0x3fe2c619eab62bb3              # double 0.58668227998838629
	.quad	0x3fe1ec4d1208c469              # double 0.5600953438025843
	.quad	0x3fe2ad01d7f637ba              # double 0.58361904315983471
	.quad	0x3fddd6a70ea1448e              # double 0.46622635296541481
	.quad	0x3fd2621877e01f80              # double 0.28723727900113971
	.quad	0x3fe9ad3ff8b8b7b0              # double 0.80239866808346072
	.quad	0x3fee208516fae4f4              # double 0.94146971214573094
	.quad	0x3fb360c759179088              # double 0.075695475817669444
	.quad	0x3fecf2ce08b09543              # double 0.90463926026556185
	.quad	0x3fe38b4f6036fc2f              # double 0.61075562278700157
	.quad	0x3fe96d6b68396a89              # double 0.79460687977128075
	.quad	0x3fd0638b95f8a5a8              # double 0.2560757603228816
	.quad	0x3feb9a270fcf6585              # double 0.86256745422285575
	.quad	0x3feaab806712cc40              # double 0.83343525058297274
	.quad	0x3fec04b51c1b691b              # double 0.87557464112913708
	.quad	0x3fef33eeaca3d392              # double 0.97508939474811229
	.quad	0x3fb1e20ec102b218              # double 0.069855615731917786
	.quad	0x3fbbad409313d9a8              # double 0.10811236944923641
	.quad	0x3fe428c20e92a80e              # double 0.62997534605278971
	.quad	0x3fec54e78f8bd791              # double 0.88536432300928614
	.quad	0x3fec3b33f8ccaa3f              # double 0.88222693055769941
	.quad	0x3fd857268e8731f0              # double 0.38031925123939825
	.quad	0x3fed57d6e7c771cf              # double 0.91697259206153514
	.quad	0x3fec98f2a93bfde3              # double 0.89367039731581277
	.quad	0x3fec0fd484c17566              # double 0.87693239144179524
	.quad	0x3fb61ac4f64f4148              # double 0.086345968374421322
	.quad	0x3fb5b64108667d30              # double 0.084812225867143764
	.quad	0x3fe0ad60eb7a6ef8              # double 0.52116437904211832
	.quad	0x3fc6c4487d04c3f0              # double 0.17786508659767675
	.quad	0x3fe50005a98ad91d              # double 0.65625269998307412
	.quad	0x3fc8b4836baf62f8              # double 0.19300883062421526
	.quad	0x3fe237fe527c7a39              # double 0.56933513746827835
	.quad	0x3fd6c3abe77fbe06              # double 0.35569284064601481
	.quad	0x3fc514ed102bee7c              # double 0.16470111169461521
	.quad	0x3fe99b2380e82c7d              # double 0.80018782784590281
	.quad	0x3fe2ae2cba3e655f              # double 0.58376156211594921
	.quad	0x3fe79d360404b379              # double 0.73794079575382832
	.quad	0x3fd3e1e50dd86cd2              # double 0.31066252090540758
	.quad	0x3fe82d0ef64251fa              # double 0.75550029847596467
	.quad	0x3feae64b69827257              # double 0.84061213118873013
	.quad	0x3fe67120c5836401              # double 0.70130957199864963
	.quad	0x3fe8f50fc307cf06              # double 0.77991474239249281
	.quad	0x3fd70f35364097a2              # double 0.36030321405484689
	.quad	0x3fd316c5aff249f4              # double 0.29826490576047537
	.quad	0x3fd05c99c1b892b4              # double 0.25565189283433232
	.quad	0x3fe33762548e8f8b              # double 0.60051075472846216
	.quad	0x3fe6afa9f2ef1689              # double 0.7089433426669568
	.quad	0x3fe6ead042b6bfd3              # double 0.71616375951816236
	.quad	0x3fde047f200c7522              # double 0.46902444963218859
	.quad	0x3fedb65eb2b637dc              # double 0.92851195244451956
	.quad	0x3fe9a0af46fc77ee              # double 0.80086482872479592
	.quad	0x3f9e88fb602a4d60              # double 0.029819419617138521
	.quad	0x3fd714186ef6c99e              # double 0.36060152851418958
	.quad	0x3fc65ef3f3b0bdcc              # double 0.17477273367829438
	.quad	0x3fcc61bb591b4684              # double 0.22173253870873932
	.quad	0x3fc473943286b684              # double 0.15977718798733431
	.quad	0x3fe514947024a195              # double 0.65876218703219769
	.quad	0x3f94e38fff414820              # double 0.020399332003144477
	.quad	0x3fc20a742be65264              # double 0.14094402450122623
	.quad	0x3fe99488a34c3f6a              # double 0.79938156026945006
	.quad	0x3f963f309b79db20              # double 0.021725425233365958
	.quad	0x3fda3b4fada3002e              # double 0.40987007099829753
	.quad	0x3fdb530aa3c5fc86              # double 0.42694345468039108
	.quad	0x3fd1fb36347fb98a              # double 0.28095774771545534
	.quad	0x3fec208335fc27fc              # double 0.87896881622259526
	.quad	0x3fc0e2c8a4061ab0              # double 0.13192089089371484
	.quad	0x3fe32696abe29a4f              # double 0.59846051760980312
	.quad	0x3fe86fe4bff900ec              # double 0.76365888113653346
	.quad	0x3febb9446bcd3ca8              # double 0.86636563353558405
	.quad	0x3feaebc4d4104d79              # double 0.84128037851989668
	.quad	0x3fe447522f3af254              # double 0.63370618080768759
	.quad	0x3fc3394b74ecaf50              # double 0.15018599709707781
	.quad	0x3fefaf9338b84c28              # double 0.9901825053988249
	.quad	0x3fdb288fe0dcbaaa              # double 0.42435070952607623
	.quad	0x3fe2abc084dde245              # double 0.5834658236554523
	.quad	0x3fdd0bdb400cc112              # double 0.45384866003861746
	.quad	0x3fd0b7b65fa3b560              # double 0.26121291484635911
	.quad	0x3fcc1aeac0b5ad9c              # double 0.2195714417424427
	.quad	0x3fe0fdf21b89bf6a              # double 0.53099923494845069
	.quad	0x3fd456c0bd2c52aa              # double 0.3177949759858999
	.quad	0x3fbc401ba1ef2fa8              # double 0.11035320952868111
	.quad	0x3fc4deffefae03d4              # double 0.16305541232216447
	.quad	0x3fe5eaa74e72bc2e              # double 0.68489423105154912
	.quad	0x3fc5beadf41b1130              # double 0.16988157672143123
	.quad	0x3fcad71eeeefd8a4              # double 0.20968996683922569
	.quad	0x3feb8eb087d63a86              # double 0.86116816073065716
	.quad	0x3fc0eb326d48bd28              # double 0.13217764221324413
	.quad	0x3fd077d3f06c8d2e              # double 0.25731371382626633
	.quad	0x3fdd92235d0fe67c              # double 0.46204456413361306
	.quad	0x3fd8099bcb797a88              # double 0.3755864607864301
	.quad	0x3fcf097f08c96558              # double 0.24247730187452521
	.quad	0x3fc76bd8649c57b4              # double 0.18297867691643221
	.quad	0x3fefb1f053091940              # double 0.9904710408962174
	.quad	0x3fbc1c7a56584ef8              # double 0.10980953796416404
	.quad	0x3fdcc3abbfdd6e2a              # double 0.44944280373394696
	.quad	0x3fca50e52eff9314              # double 0.2055937270626137
	.quad	0x3fe7a4bf60770a37              # double 0.7388607868272804
	.quad	0x3fd3f92ace5bfee2              # double 0.31208295967370081
	.quad	0x3fee6f72d497894b              # double 0.95110456010687849
	.quad	0x3fe8e5777b229127              # double 0.77801107454118756
	.quad	0x3fe48ab794e3a08a              # double 0.64193324165263843
	.quad	0x3fe7939774a88337              # double 0.73676655564131621
	.quad	0x3fe670e68c4330a5              # double 0.70128180880557933
	.quad	0x3fdf64e593c2dce2              # double 0.49053325109293955
	.quad	0x3fb5474e5fb15610              # double 0.083119295465927445
	.quad	0x3fed22f50236377e              # double 0.91051721984852896
	.quad	0x3feda9ad590571a8              # double 0.92696254145589752
	.quad	0x3fea117ee49e8d36              # double 0.81463570263114238
	.quad	0x3fd5d8b96ca6b0d4              # double 0.34135280237638921
	.quad	0x3fe665b7ba594a2e              # double 0.69991670986411747
	.quad	0x3fe8d16ed48f9609              # double 0.77556554332540018
	.quad	0x3fea96427692546e              # double 0.83084223898425846
	.quad	0x3fb31c9f233bca48              # double 0.07465548143572065
	.quad	0x3fe31dc860d20515              # double 0.59738558683617049
	.quad	0x3fcce217c9a8eda4              # double 0.22564980837510717
	.quad	0x3fece7bea49048f5              # double 0.90328914777117453
	.quad	0x3fe60f8d01b81d58              # double 0.68939829192906199
	.quad	0x3fdd5b9f7e6fe74a              # double 0.45871722552657401
	.quad	0x3fda70eab8e79cd2              # double 0.41314189965346515
	.quad	0x3fea2ae59a1c698d              # double 0.81773643588830824
	.quad	0x3fe3f2420587d018              # double 0.62332249717883581
	.quad	0x3fc93f1651a2e748              # double 0.19723776804112902
	.quad	0x3fe0814b869ee704              # double 0.51578308384998239
	.quad	0x3fdad9e882611c92              # double 0.41955006344182622
	.quad	0x3fe22fe5368f8d3b              # double 0.56834660202404252
	.quad	0x3fe676e3dc8d1163              # double 0.70201294971824912
	.quad	0x3feb489c9550c82f              # double 0.85261372721857309
	.quad	0x3fea57f5d36e7739              # double 0.8232373361131301
	.quad	0x3fed7dc95f08bd92              # double 0.92160481034618358
	.quad	0x3fdc0b0c457d82be              # double 0.43817431245956218
	.quad	0x3fe22d94b9c28b89              # double 0.56806408196676828
	.quad	0x3fdfafec7dc38272              # double 0.4951125362549994
	.quad	0x3fedf957998424e8              # double 0.93668727859144684
	.quad	0x3fe4d439125d45c7              # double 0.65090612017427751
	.quad	0x3fe00edc684ac2f4              # double 0.50181408280886197
	.quad	0x3fe79c2c214770d9              # double 0.73781401157205118
	.quad	0x3fc7da5a00bf1c90              # double 0.1863510612149395
	.quad	0x3fd81a5c80807392              # double 0.37660896824837053
	.quad	0x3fd9e654d1b5e372              # double 0.40468330840626898
	.quad	0x3fd8e1a4e81c0010              # double 0.38877222697192426
	.quad	0x3febff1ef5f4fac0              # double 0.87489269293276806
	.quad	0x3fbf6e24629cbaa0              # double 0.12277438552403419
	.quad	0x3f9871b5654c8680              # double 0.023871263797565323
	.quad	0x3fe57c3b2d46512f              # double 0.67141493647299011
	.quad	0x3fc0263a1e4ab400              # double 0.12616659621326676
	.quad	0x3fee8cd25647b610              # double 0.95469014026247301
	.quad	0x3f9fa3b993c59280              # double 0.030897998470566623
	.quad	0x3fe681aa2a9bc998              # double 0.70332821199399387
	.quad	0x3fea706f609e28f4              # double 0.82622498388926013
	.quad	0x3fdda1b3581810e2              # double 0.46299441912584716
	.quad	0x3fd2a31fe9f40094              # double 0.29120633933053708
	.quad	0x3fe1a990a7454b46              # double 0.55194885892920165
	.quad	0x3fea2b47bd847558              # double 0.81778323187942714
	.quad	0x3fae5642ab7a6bd0              # double 0.059251864845655811
	.quad	0x3fc76357e2a5c2cc              # double 0.18271921698353422
	.quad	0x3fecb254b355a5e7              # double 0.8967689039829424
	.quad	0x3feb40be59681523              # double 0.85165326559277721
	.quad	0x3fe2260bc3e6fd0b              # double 0.5671442819802065
	.quad	0x3fe1110f4ee153b9              # double 0.53333249479566469
	.quad	0x3fef5eeabc606cb1              # double 0.98033654014888871
	.quad	0x3fced128f55ac0ec              # double 0.24075805645180226
	.quad	0x3fe607f4912a3cf1              # double 0.68847111084497048
	.quad	0x3f851f1a22a824c0              # double 0.010313228781358652
	.quad	0x3fedd9d787d6d6c0              # double 0.9328420308217673
	.quad	0x3fdf8d3e4369092a              # double 0.4929958017638848
	.quad	0x3f972b5525ee30a0              # double 0.022626238288964928
	.quad	0x3fedb4fbaa717c16              # double 0.9283426598520943
	.quad	0x3fda6fa9a2130132              # double 0.41306534602701384
	.quad	0x3fdbe42a36bff1dc              # double 0.43580108019503228
	.quad	0x3fe97842140521db              # double 0.79592994604268641
	.quad	0x3fed05795ffd47fc              # double 0.90691822765279495
	.quad	0x3fdbfbb898f6fc2a              # double 0.43723883569686228
	.quad	0x3fd697e6d13934a2              # double 0.3530213397214742
	.quad	0x3fe3be6ea244503c              # double 0.61699611370796204
	.quad	0x3fc4913ea4d45af4              # double 0.16068251655880028
	.quad	0x3fed27fc15cc4c8d              # double 0.91113094575338638
	.quad	0x3fe09c9f7ff0ca4a              # double 0.51911902416606748
	.quad	0x3fd9142185901df2              # double 0.39185369532830727
	.quad	0x3febd9cbbe40aed8              # double 0.87033641012882423
	.quad	0x3febd9dcc45824c8              # double 0.87034452770708359
	.quad	0x3fe3ac4794a9c104              # double 0.61478022609483718
	.quad	0x3fdb4868acb59532              # double 0.42629448763030375
	.quad	0x3fed1ef2c3e4d369              # double 0.91002786884801623
	.quad	0x3fe6f1fdf43c6b25              # double 0.71704004003854449
	.quad	0x3fe863b01e4fef6f              # double 0.76216894073830399
	.quad	0x3fc50e76128de5b8              # double 0.16450382142992992
	.quad	0x3fec0e575fa80add              # double 0.87675064738172248
	.quad	0x3feb531b89d7b378              # double 0.85389496729258862
	.quad	0x3fe104d3ed1da679              # double 0.53183933555301544
	.quad	0x3fd5059200563460              # double 0.3284649852074093
	.quad	0x3f9370fc4230ae80              # double 0.018985692539145393
	.quad	0x3fdb835e86198456              # double 0.42989314170524062
	.quad	0x3fed2c8dbf4d6129              # double 0.91168868411754034
	.quad	0x3fe73a3d0764e440              # double 0.72585917896424945
	.quad	0x3fb789af129a3960              # double 0.0919446392456158
	.quad	0x3fe04d75f70d9906              # double 0.50945566418229826
	.quad	0x3fe6b1d1dcab7dac              # double 0.70920651530825785
	.quad	0x3fe719b7c248a3c9              # double 0.72188938089413413
	.quad	0x3feed7aa496cfc10              # double 0.96382631627045789
	.quad	0x3fbe9902413f2080              # double 0.11952222912725752
	.quad	0x3fa7059f018cf4f0              # double 0.044964760722430941
	.quad	0x3fa446e862964740              # double 0.039603483233021652
	.quad	0x3feb7ab1bdd64fd9              # double 0.85872733190125949
	.quad	0x3fee2a98a3d95a1b              # double 0.94269973756564995
	.quad	0x3fc6baef05591274              # double 0.17757976304178025
	.quad	0x3feca51587664efe              # double 0.89515186734431018
	.quad	0x3fe2a5d833e38346              # double 0.58274469503894788
	.quad	0x3fb473e2729dc058              # double 0.079893258078074125
	.quad	0x3fd43751b36c1128              # double 0.3158764125985436
	.quad	0x3fb60bab05f756c8              # double 0.08611554046305081
	.quad	0x3fc92f4fd9dea5a0              # double 0.19675634515924134
	.quad	0x3fec39a113b778c3              # double 0.88203481532016104
	.quad	0x3fecc5ab15f96c7c              # double 0.89912943164689762
	.quad	0x3f8977ddf74a0580              # double 0.012435659512677999
	.quad	0x3fd4113e711b1008              # double 0.31355248494605847
	.quad	0x3fd911a7daace274              # double 0.39170261721623167
	.quad	0x3fe10ea18381c127              # double 0.5330360001080735
	.quad	0x3fe26936389ba995              # double 0.57534323745976457
	.quad	0x3fd763b087d3c33e              # double 0.36545956863760753
	.quad	0x3fda2f610870d7a8              # double 0.40914178680702173
	.quad	0x3f8915ffa0414b80              # double 0.012248990133377324
	.quad	0x3fe905404d8732fc              # double 0.78189101354800483
	.quad	0x3fd408632cca5762              # double 0.31301192640363784
	.quad	0x3fd3410464dedb00              # double 0.30084333277356734
	.quad	0x3fe4e998c017039f              # double 0.65351521985586547
	.quad	0x3fc8d885d34b5db4              # double 0.19410775010213188
	.quad	0x3fe7f9956aae8b91              # double 0.74921675525944142
	.quad	0x3fde8086c4c51f9c              # double 0.47659463134595526
	.quad	0x3fb2504b7cdac180              # double 0.071537702543315262
	.quad	0x3fe1e533b81a4b18              # double 0.55922876317558501
	.quad	0x3fe3fbc129c086f6              # double 0.624481755778304
	.quad	0x3fded307f8cd19f8              # double 0.48163031861295691
	.quad	0x3fe718d565bc3b1e              # double 0.72178144331141758
	.quad	0x3fd3be9dc8b53718              # double 0.30850929832819096
	.quad	0x3f70cfc17b6b5e80              # double 0.004104381360512499
	.quad	0x3fe23f4264be9f99              # double 0.57022208859142431
	.quad	0x3feb3f5c29e047b7              # double 0.85148437670635857
	.quad	0x3fe856f5d2d56ae3              # double 0.76061526468705798
	.quad	0x3fe524ea2da37416              # double 0.6607561961533317
	.quad	0x3fe3785b4e1164e5              # double 0.608441975094277
	.quad	0x3fcd73770dafbbfc              # double 0.23008621376308713
	.quad	0x3fe39f59fecae84e              # double 0.61320209278279392
	.quad	0x3fef90a69f62c936              # double 0.98640757684760305
	.quad	0x3fce23099abe37b0              # double 0.23544426017582287
	.quad	0x3fef0e1509432820              # double 0.97046901520775818
	.quad	0x3fe65bcb0522eccd              # double 0.69870520594795382
	.quad	0x3fe2c6ab647842f4              # double 0.58675164816858549
	.quad	0x3fa17be7ef4ece30              # double 0.03414845272291378
	.quad	0x3fe18da919ae5dd6              # double 0.54854254737704866
	.quad	0x3fe7625709615d83              # double 0.73075439292999567
	.quad	0x3fed923acf65e479              # double 0.92410030848908697
	.quad	0x3fdb6faa24cf9f24              # double 0.42869046778513309
	.quad	0x3fe4b1b9c22c3041              # double 0.64669502186144012
	.quad	0x3fd06b6e9abdfa70              # double 0.25655713187726459
	.quad	0x3fdb89dbff529526              # double 0.43028926786276356
	.quad	0x3fdabc76807427a4              # double 0.4177528623991924
	.quad	0x3fb4f61e8cce5100              # double 0.081880483032652052
	.quad	0x3fe77e15dfacda78              # double 0.73414128958286451
	.quad	0x3fec54b0edf21eb1              # double 0.88533827279839816
	.quad	0x3fe45ebb018fcbd7              # double 0.63656378083248455
	.quad	0x3fdcc237e7646922              # double 0.44935414883515723
	.quad	0x3fdb67dee60485ce              # double 0.4282147642389561
	.quad	0x3fec9eff1dc76c18              # double 0.8944087583180389
	.quad	0x3fefa7ad58ddea27              # double 0.98921840054328391
	.quad	0x3feeb8a33434bf43              # double 0.96003875919812065
	.quad	0x3fe94b8dd828c81f              # double 0.79047291010488496
	.quad	0x3fe2904f5b58c620              # double 0.58011596528212195
	.quad	0x3fb4f9aa125bfbb0              # double 0.081934575540784093
	.quad	0x3fdfc381ba63c406              # double 0.49630778505439854
	.quad	0x3fb7203e76e8eb60              # double 0.090335754423831016
	.quad	0x3fee2527740cc1dc              # double 0.94203541437132853
	.quad	0x3fd49002e24e5e6a              # double 0.32128975010116412
	.quad	0x3fa29e5d29d40bb0              # double 0.03636447082137495
	.quad	0x3fe1040c30f69f92              # double 0.53174409449728643
	.quad	0x3f857a14118b1c40              # double 0.010486752305395197
	.quad	0x3fdd4746ba3ec966              # double 0.45747535884870272
	.quad	0x3fd80e966d4fa3ea              # double 0.37589035677825555
	.quad	0x3fe7cd9546fee8b8              # double 0.74384559503894021
	.quad	0x3fe14ed6270fa361              # double 0.54087360028379916
	.quad	0x3fd3f6cb33e92c6a              # double 0.31193809575478915
	.quad	0x3feb75a89037c81d              # double 0.85811260383184484
	.quad	0x3fee993a6f1ee012              # double 0.95620462134593454
	.quad	0x3feddac5c8d6e05e              # double 0.93295563913762769
	.quad	0x3fec76d4c9b03ab2              # double 0.88950576202645082
	.quad	0x3fec842176980eaf              # double 0.8911292377747112
	.quad	0x3fe6cb8f5ab50544              # double 0.71234863010628446
	.quad	0x3fee5b17032bef07              # double 0.94861937159973386
	.quad	0x3fd10e4aa6807d9e              # double 0.26649729022934732
	.quad	0x3febed3c35c93238              # double 0.87270937447607988
	.quad	0x3fe60bd198c0aa6f              # double 0.68894271692745501
	.quad	0x3f86db91314fba40              # double 0.011160978619924156
	.quad	0x3fec519a012fac74              # double 0.88496113044437985
	.quad	0x3fc79d68b4134024              # double 0.18449124138578654
	.quad	0x3fc8882d7d5166cc              # double 0.19165581339875926
	.quad	0x3fea993f5ef369f0              # double 0.83120697541317945
	.quad	0x3fd8027b5d4843fa              # double 0.37515148267362941
	.quad	0x3fe6559e43925cb1              # double 0.69795144269564535
	.quad	0x3fbb25123fc94998              # double 0.1060344129303189
	.quad	0x3fe7d176a76ab76e              # double 0.74431927393537278
	.quad	0x3fe3e1681b04cc97              # double 0.62126546170329078
	.quad	0x3fd88c728eb8cbe2              # double 0.38357223451310862
	.quad	0x3fed00393f965a35              # double 0.90627729815861946
	.quad	0x3fc93d3e4a82576c              # double 0.1971814979376022
	.quad	0x3feee69ecfeac0eb              # double 0.96565189942159912
	.quad	0x3fe6cf8dc76eee80              # double 0.71283616020032525
	.quad	0x3fea47755abf7a82              # double 0.82122295116626298
	.quad	0x3fef8988755c34bb              # double 0.98553870126638487
	.quad	0x3fe9f0939b5c375e              # double 0.81061725944321572
	.quad	0x3fd5266b078263e6              # double 0.33046985371907878
	.quad	0x3fed135c997af876              # double 0.90861349083549103
	.quad	0x3fd373daee244ade              # double 0.30394624000579806
	.quad	0x3fe96ccb290da73b              # double 0.79453046816090678
	.quad	0x3fc7931b1cd39b20              # double 0.18417681605861791
	.quad	0x3fd667ae32cef330              # double 0.35007815324552194
	.quad	0x3feaf48ad0757926              # double 0.84235134806275336
	.quad	0x3fd3b1e7854f1882              # double 0.30773342150167349
	.quad	0x3fdf8e1cd805d0fe              # double 0.49304886909455081
	.quad	0x3fe6135b89265b52              # double 0.6898629835803638
	.quad	0x3fd7a92b46ce8d1a              # double 0.3697002593491604
	.quad	0x3fd148cbce1a1ce6              # double 0.27006812216900611
	.quad	0x3fd12448bd0a18a0              # double 0.26783960781939165
	.quad	0x3fce20be10e92a54              # double 0.23537422013972054
	.quad	0x3fd3dec2700ee34c              # double 0.31047116225413585
	.quad	0x3fc733e369bb2964              # double 0.18127100622798331
	.quad	0x3fc4ddb2466f5fe0              # double 0.16301563681804421
	.quad	0x3fe4815ee5d3e166              # double 0.64079232109274353
	.quad	0x3fe5a711802db8e5              # double 0.67664408717044167
	.quad	0x3fde99975cf2be3e              # double 0.47812446667646558
	.quad	0x3fceb269d33cc350              # double 0.2398197442467116
	.quad	0x3fd4ffadfa20e15c              # double 0.3281054442081961
	.quad	0x3feaa3901d0cc39f              # double 0.83246617959786195
	.quad	0x3fcb0635abdb8b14              # double 0.21112700358852321
	.quad	0x3fe021af01e78426              # double 0.50411177036233279
	.quad	0x3fdce8bbbbd34392              # double 0.45170491545018721
	.quad	0x3fea42d8344d903e              # double 0.82065973487306798
	.quad	0x3fbda3b58eff9878              # double 0.11577925435230607
	.quad	0x3fab0de67e6f0040              # double 0.05284042638186337
	.quad	0x3fe063681ac00ff7              # double 0.51213460182816462
	.quad	0x3fd53edddeb2dba4              # double 0.33196207759777452
	.quad	0x3fe5646a3d926505              # double 0.66850769067528459
	.quad	0x3fe90189220929d8              # double 0.78143746039978179
	.quad	0x3fde25183b886130              # double 0.47101407827132658
	.quad	0x3fd20d13978d640e              # double 0.28204812812833857
	.quad	0x3fe969860146984e              # double 0.79413128136799016
	.quad	0x3fe25cf9b5bc17fd              # double 0.57384953970972641
	.quad	0x3fe500068b87959d              # double 0.6562531209171315
	.quad	0x3fe15cc57aa284fd              # double 0.54257463409535911
	.quad	0x3faaeca7f5652c80              # double 0.052586792664976123
	.quad	0x3fc782e0534775d4              # double 0.18368152681698169
	.quad	0x3fe54c82110c8a62              # double 0.66558936433677851
	.quad	0x3fcbb8f9ae6c9b54              # double 0.21658249871071666
	.quad	0x3fde12ae7f2ca714              # double 0.46989023608567604
	.quad	0x3fd16de7b29bcd90              # double 0.27233307306524868
	.quad	0x3fea2cb42feb87ba              # double 0.8179570136965062
	.quad	0x3fec6158466dbc93              # double 0.8868829131660213
	.quad	0x3fdee2b34831fd84              # double 0.48258668947524819
	.quad	0x3fcf5a166e53aae4              # double 0.24493675601055209
	.quad	0x3feb23495c20b792              # double 0.84805744165145058
	.quad	0x3fee9422c53fcd93              # double 0.95558298611870141
	.quad	0x3fe7fdf00d90a24e              # double 0.74974825524720656
	.quad	0x3fd48cfe25ad7c12              # double 0.32110551528416054
	.quad	0x3fe9a301e5a1b970              # double 0.801148365497097
	.quad	0x3fdbcb62ae92a686              # double 0.43428866432314128
	.quad	0x3fe0161dcd6f67a1              # double 0.50269975780542009
	.quad	0x3fe250695c15a617              # double 0.57231586442248072
	.quad	0x3fed401cbc99794b              # double 0.91407620273438661
	.quad	0x3fed827f49f23797              # double 0.92217983667954939
	.quad	0x3fe7518002dba200              # double 0.72869873579207933
	.quad	0x3fb292edecc63490              # double 0.07255446463223536
	.quad	0x3fe042ff1bdb141e              # double 0.50817828598576731
	.quad	0x3fd549d77e15fc34              # double 0.33263194382738281
	.quad	0x3fc448ccc1ac12e8              # double 0.15847167450569732
	.quad	0x3fefff7e8472ed17              # double 0.99993825787479095
	.quad	0x3fce76750a0df820              # double 0.23799002638765021
	.quad	0x3fe1011856a07d8b              # double 0.53138367575950107
	.quad	0x3fcdae6daa755a08              # double 0.23188563178219135
	.quad	0x3feed9267c84d8a3              # double 0.96400760955909381
	.quad	0x3fed85a5e668fc2d              # double 0.9225644588658547
	.quad	0x3fe70da5499ef54f              # double 0.7204157293232728
	.quad	0x3fad59a10bec9cf0              # double 0.057324440675353361
	.quad	0x3fc33501fb94d018              # double 0.15005516800158669
	.quad	0x3fe2b25ee16324ad              # double 0.58427375813439186
	.quad	0x3fe175a3651cf323              # double 0.54561013935708436
	.quad	0x3fee85bdb0e9263a              # double 0.95382580330733124
	.quad	0x3fd83768fbff88d2              # double 0.37838196381757172
	.quad	0x3fec1620f3d8e1e4              # double 0.8777012598648608
	.quad	0x3fe06c923a58b0bc              # double 0.51325332065382367
	.quad	0x3fe91487aa654d47              # double 0.78375609665310086
	.quad	0x3fbc0936f9409738              # double 0.10951560578595554
	.quad	0x3feb883a508acc35              # double 0.86037936907667378
	.quad	0x3fed3d2885affb24              # double 0.9137156115610634
	.quad	0x3fe9e6fa9809c244              # double 0.80944566435761844
	.quad	0x3fd8e96dbf908da8              # double 0.38924735743986583
	.quad	0x3fe2fde7c5a1de20              # double 0.59349430656488167
	.quad	0x3fbd1bb918a64348              # double 0.11370426990312155
	.quad	0x3fe9ac9a77488b01              # double 0.80231974885495572
	.quad	0x3fecb3d07f39cba1              # double 0.89695000504285727
	.quad	0x3fe963ded5b0f448              # double 0.79344121681754931
	.quad	0x3fe47ac3247b190b              # double 0.63998562932172953
	.quad	0x3fe1614f5612a741              # double 0.54312865077120176
	.quad	0x3fc486fd77774a14              # double 0.16036957104968563
	.quad	0x3fb6f5e2ad1fbe38              # double 0.089689414278603219
	.quad	0x3fef575344a5436a              # double 0.97940982253395004
	.quad	0x3fcd4f34ab645084              # double 0.22897966736548281
	.quad	0x3fee88ed489c196e              # double 0.95421470815271703
	.quad	0x3fcd0e3c622db778              # double 0.22699694436908735
	.quad	0x3feda44881bafc0c              # double 0.92630410516710659
	.quad	0x3fe4503fb3558806              # double 0.63479599977677093
	.quad	0x3fd2cffe35d3bb1e              # double 0.29394488579321087
	.quad	0x3fc557ac5a339cb4              # double 0.16673807529807549
	.quad	0x3fd1e7186a144088              # double 0.27972994193351797
	.quad	0x3fe0d71ce1d4cf54              # double 0.5262588892714839
	.quad	0x3fe11eda80a73f5d              # double 0.5350162995109532
	.quad	0x3fed43e3164e3ebe              # double 0.91453699451991333
	.quad	0x3fede787ae32e636              # double 0.93451293967445426
	.quad	0x3fe79193e8612a4a              # double 0.7365207232154003
	.quad	0x3fb5b99ff103c630              # double 0.084863659230699495
	.quad	0x3fe85ee07724c126              # double 0.76158164282063434
	.quad	0x3f7cc423198e3b80              # double 0.007022988423058929
	.quad	0x3fd65474e2b8e144              # double 0.34890482083166696
	.quad	0x3fc8463018bf1f4c              # double 0.18964196403816869
	.quad	0x3fe0d0f3bffb0a44              # double 0.52550685402122399
	.quad	0x3fd8be267cdb5f58              # double 0.38660585587557739
	.quad	0x3fc78b3430594b9c              # double 0.18393566475660073
	.quad	0x3fca32ce49017e14              # double 0.20467547001588626
	.quad	0x3fd08bd7b9739554              # double 0.25853531942842278
	.quad	0x3fe70663956b025b              # double 0.71952990706638376
	.quad	0x3fe94349acc46275              # double 0.78946384185390051
	.quad	0x3fe91f77c5ba562f              # double 0.78509129160619817
	.quad	0x3fd3599374284daa              # double 0.30234228461741941
	.quad	0x3fe6ec9534767dfc              # double 0.71637974020626372
	.quad	0x3fd2bbfc74d8793a              # double 0.2927237645216284
	.quad	0x3fe625946bf41f21              # double 0.69208737454116342
	.quad	0x3fed094b60f559ab              # double 0.90738457619845769
	.quad	0x3fe1cbc4402ce2f5              # double 0.55612385305639001
	.quad	0x3f411baea67ff000              # double 5.2209880686815424E-4
	.quad	0x3fd81887c605bcaa              # double 0.37649721468091946
	.quad	0x3fe98331581ad0ac              # double 0.79726474006613079
	.quad	0x3fe26b7e27d487ca              # double 0.57562167910895679
	.quad	0x3fc7ddb31ab89614              # double 0.18645323567140848
	.quad	0x3f59992a9f2ea600              # double 0.0015623966435022174
	.quad	0x3fe278bb4dbc205d              # double 0.57723775084106033
	.quad	0x3fd61edb0d48bb50              # double 0.34563328072811306
	.quad	0x3fbe6c35fdd84a98              # double 0.11883866736779181
	.quad	0x3fcb583fd9f2cf90              # double 0.2136306585504113
	.quad	0x3fdd04421d549b30              # double 0.45338490356737093
	.quad	0x3fcb106bdafc876c              # double 0.21143863861749013
	.quad	0x3fddd62d3e7280aa              # double 0.46619731043211721
	.quad	0x3fc5c3da8e1803a8              # double 0.17003948152708159
	.quad	0x3fd4b8446a355ce8              # double 0.32374678012770497
	.quad	0x3fef6b3321719d1f              # double 0.98183590442650714
	.quad	0x3fe57d5c652ba354              # double 0.671552846525723
	.quad	0x3fca5ac92b0a6dec              # double 0.205895563140856
	.quad	0x3fe5f9d7dacf9a94              # double 0.6867484353686728
	.quad	0x3fe34f106eafb8f7              # double 0.60340139025154726
	.quad	0x3fe84c5726490139              # double 0.759318899894459
	.quad	0x3fce9fb551afc1ac              # double 0.23924890984154723
	.quad	0x3fddaa82a69618d4              # double 0.46353212612338024
	.quad	0x3fda4dd7472a0d66              # double 0.41100103330264515
	.quad	0x3fde6834be6e2722              # double 0.47511023136813624
	.quad	0x3fe558271811bf64              # double 0.66701082898178443
	.quad	0x3fe89dd23623093a              # double 0.76926527570348147
	.quad	0x3fee5cdf72eafde9              # double 0.94883701748761695
	.quad	0x3fd6d3e43827ca30              # double 0.35668282970360377
	.quad	0x3fca67f3525773f8              # double 0.20629731674753748
	.quad	0x3fe462a29aeea8fe              # double 0.63704042682846285
	.quad	0x3fea89d6320ff0cc              # double 0.82932576921259615
	.quad	0x3feffd169cb2dfdb              # double 0.99964457135410655
	.quad	0x3fb2e86cdc63bc68              # double 0.073859027677586675
	.quad	0x3fad89a198ac89c0              # double 0.057690667998275824
	.quad	0x3fc8bee3586ffbc8              # double 0.19332544153436815
	.quad	0x3fe787129bb2687f              # double 0.7352383652644362
	.quad	0x3fb35b1aae65ca70              # double 0.075608890130561823
	.quad	0x3fea5aa32dd2e960              # double 0.82356413793540284
	.quad	0x3fec95371e898308              # double 0.89321475948608597
	.quad	0x3f8808689c26c440              # double 0.011734788194049384
	.quad	0x3fe5f3ee2c02f236              # double 0.68602665515897487
	.quad	0x3fdea4113bc76c72              # double 0.47876387441437551
	.quad	0x3fcebee5cb08f658              # double 0.24020073331660075
	.quad	0x3fe82be82a21d01f              # double 0.75535972813532115
	.quad	0x3fc81988209f8088              # double 0.18827916710779768
	.quad	0x3fb2e642546364b0              # double 0.073825975039101932
	.quad	0x3fe8d32a9ec3e0e3              # double 0.77577715882128151
	.quad	0x3fe1de82885e0f6b              # double 0.55841185220968492
	.quad	0x3fc2d94ad68ed1dc              # double 0.14725623585185488
	.quad	0x3fe9bb50f646ca52              # double 0.80411575413593028
	.quad	0x3fe447778cf0fb2b              # double 0.63372399833301551
	.quad	0x3fd75aadad757214              # double 0.36490957202275465
	.quad	0x3fed7a88890a74ec              # double 0.92120768323698376
	.quad	0x3feb8a53687df4b4              # double 0.86063547524067596
	.quad	0x3fb10410c1a1bd40              # double 0.066468283913981629
	.quad	0x3fb0d40fe32f4a70              # double 0.065735810246488446
	.quad	0x3fd07c8e9e497a24              # double 0.25760236222950739
	.quad	0x3fe4fd172c3eff4e              # double 0.65589483873189081
	.quad	0x3fe4241102a09fe7              # double 0.62940264237567767
	.quad	0x3fd73298cede6154              # double 0.36246319009798822
	.quad	0x3fbcb89825065410              # double 0.11219168571399529
	.quad	0x3fbec7cedb271e08              # double 0.12023632860574918
	.quad	0x3fe665c2652ecd92              # double 0.69992179643888819
	.quad	0x3fec7d4c37600d55              # double 0.8902951318308775
	.quad	0x3fe2b3d58c588104              # double 0.58445241366646927
	.quad	0x3feca6be9808a08f              # double 0.89535455411989229
	.quad	0x3feffdbf6018cc40              # double 0.99972504395407923
	.quad	0x3fcae9422ae36138              # double 0.21024348348761079
	.quad	0x3fe434e62176cc9e              # double 0.63145739112805521
	.quad	0x3fed94852703e60d              # double 0.92437989826356814
	.quad	0x3fd2716437318d62              # double 0.28817086591717189
	.quad	0x3fe520bf21075d3a              # double 0.66024738741808808
	.quad	0x3feaafe6d114dc53              # double 0.83397236667850405
	.quad	0x3fe2edd551019641              # double 0.59153238126300078
	.quad	0x3f9b0af9dfbf1a80              # double 0.026409057885553811
	.quad	0x3fddf629acf5c06c              # double 0.46814958468076528
	.quad	0x3fef350ef1e9a415              # double 0.97522685288015742
	.quad	0x3fdaaa8c581074e0              # double 0.41665943717982934
	.quad	0x3fd3f530c8790e66              # double 0.31184024407796185
	.quad	0x3fe39e678f15942a              # double 0.61308649011755745
	.quad	0x3fee4a719f888937              # double 0.9465873828778858
	.quad	0x3fe39b2877e4002e              # double 0.61269019523752433
	.quad	0x3fec2c8ab2bd189f              # double 0.88043723020452436
	.quad	0x3fd35501c53d71ba              # double 0.30206341039390916
	.quad	0x3fec2cfed6d04c29              # double 0.88049261050980931
	.quad	0x3f9eafdf6eb58680              # double 0.029967776424547399
	.quad	0x3fed93dc9b75c310              # double 0.92429952967913387
	.quad	0x3fe9b6ed9dd54590              # double 0.80358010126853863
	.quad	0x3fe8bacd20c7133a              # double 0.77280289079553843
	.quad	0x3fd71536fe965f08              # double 0.36066984998750273
	.quad	0x3fe50aea571e31a2              # double 0.65758244528983689
	.quad	0x3fe2c47f70d50261              # double 0.5864865497351951
	.quad	0x3fe6046648f74f91              # double 0.68803705455001041
	.quad	0x3fc12321dc6cb9c8              # double 0.13388465178418429
	.quad	0x3fe43676ca345028              # double 0.63164844029461609
	.quad	0x3fd1284576812d88              # double 0.26808296749796812
	.quad	0x3fb9401457981dd8              # double 0.098634024987510727
	.quad	0x3fe5c99824323a2d              # double 0.68085867948122358
	.quad	0x3fd0faa9f6077b6e              # double 0.26529931093494141
	.quad	0x3fb401c4d848b2e8              # double 0.078151991656976727
	.quad	0x3fef088ba532ae9a              # double 0.96979315057020021
	.quad	0x3fd12cd7cca2e15a              # double 0.26836199745186706
	.quad	0x3fdf639b7b804f2e              # double 0.49045455036797392
	.quad	0x3fdfce7b14530b78              # double 0.49697758660129621
	.quad	0x3feffa26bee1d978              # double 0.99928605348286136
	.quad	0x3feaf130f926ea15              # double 0.84194229757787531
	.quad	0x3fe5d98558fd7f32              # double 0.68280284291174653
	.quad	0x3fe5296b7072ea92              # double 0.66130611384081051
	.quad	0x3fe18f9e3336d0d9              # double 0.54878149035223622
	.quad	0x3fbf847df478bd80              # double 0.12311541765733658
	.quad	0x3fe43ea2e845b83c              # double 0.63264603963558086
	.quad	0x3fef38273408381f              # double 0.9756046310665204
	.quad	0x3fe2852646860fe3              # double 0.57875360273510201
	.quad	0x3fd4d7ffa843d68e              # double 0.32568351204040702
	.quad	0x3fe25ec96e74bf94              # double 0.5740706593842213
	.quad	0x3feb5af0b6a0a95e              # double 0.85485110921335283
	.quad	0x3fc0ddab5ca96cbc              # double 0.13176481270315843
	.quad	0x3fd6128997d4aaf6              # double 0.34488143756122669
	.quad	0x3fe2aad704979c03              # double 0.58335448166769799
	.quad	0x3fe7da405c02d3d3              # double 0.74539201708705105
	.quad	0x3fe2b70d736b8c78              # double 0.58484528105726863
	.quad	0x3fd4f653ee62193e              # double 0.32753465919121882
	.quad	0x3fe6dfaff5415ea7              # double 0.71480558301387453
	.quad	0x3fe095d4c3febfc5              # double 0.51828993110938681
	.quad	0x3fe551162af16734              # double 0.66614826571751573
	.quad	0x3fcacb56a1222c80              # double 0.20933039539190545
	.quad	0x3fedfe0a335bf8c6              # double 0.93726072341066735
	.quad	0x3fc408d735bab1e8              # double 0.15651979564189777
	.quad	0x3fcda3591070b384              # double 0.23154748251672796
	.quad	0x3fe193870db3c74f              # double 0.54925873447630547
	.quad	0x3fe38511fad8e617              # double 0.60999392503362315
	.quad	0x3fcb2da1372adf8c              # double 0.21233000940059943
	.quad	0x3fd062368c7f5e5c              # double 0.25599445076429617
	.quad	0x3fee6b42a5ecff51              # double 0.95059330375077356
	.quad	0x3fef1baa69107c8f              # double 0.97212715645209069
	.quad	0x3fc9a5726d545b70              # double 0.20036154116015892
	.quad	0x3fefc38a9bd446b5              # double 0.99261980471984279
	.quad	0x3fea12daf963c190              # double 0.81480168064995162
	.quad	0x3fe35953616c0171              # double 0.60465401675905472
	.quad	0x3fe7881b9fcbceb1              # double 0.73536473474674413
	.quad	0x3fd9ce872e5f83de              # double 0.40323047188399908
	.quad	0x3fda5b40bb6f529c              # double 0.41181963257012355
	.quad	0x3fee67162c402e9c              # double 0.95008381502835304
	.quad	0x3fc07828776d408c              # double 0.1286669333590037
	.quad	0x3fdd87f08c401eea              # double 0.46142209717116478
	.quad	0x3fd61fe44c82849e              # double 0.34569652053512268
	.quad	0x3fe83fb01fb5b55a              # double 0.75777441209144603
	.quad	0x3fd97b60585d95f4              # double 0.39815529469919331
	.quad	0x3fe401fac8824c8d              # double 0.62524165307913082
	.quad	0x3fe251d10203464b              # double 0.57248735802768047
	.quad	0x3fe72638b89fd46e              # double 0.72341571864548171
	.quad	0x3fc60c4a10cc61ac              # double 0.17225004024727519
	.quad	0x3fede2adf61b83cc              # double 0.93392084186427259
	.quad	0x3f92610da59eb440              # double 0.017948353990210331
	.quad	0x3fcf0dfbce5fbb08              # double 0.24261424614766036
	.quad	0x3fe0234e90e1d279              # double 0.50430992409981379
	.quad	0x3febcd9589e00620              # double 0.86884571961144629
	.quad	0x3fe9958b095dae29              # double 0.79950477437291056
	.quad	0x3fdde635907b269e              # double 0.4671758566806633
	.quad	0x3fc54c8ca6fecea0              # double 0.16639860300130227
	.quad	0x3fdb9437dc12e5c4              # double 0.43092152110656579
	.quad	0x3f7317a63f05eb80              # double 0.0046612256995740564
	.quad	0x3fedcfb604b8decc              # double 0.93160534784598203
	.quad	0x3fe7f77e13f5a631              # double 0.74896148584702449
	.quad	0x3fe7d0cee71b77c0              # double 0.74423928392547367
	.quad	0x3fe16feb9cc943ab              # double 0.54491215345671173
	.quad	0x3fe0f17e077b64c8              # double 0.5294790407307568
	.quad	0x3fdbf847cc02d382              # double 0.4370288364692031
	.quad	0x3fe57bd962c2bbd1              # double 0.67136830605692854
	.quad	0x3fe593b9d3bc0949              # double 0.674282945198038
	.quad	0x3fdca288cd26e8d0              # double 0.44742031130193727
	.quad	0x3fea5c2fda0bd8de              # double 0.82375328623927735
	.quad	0x3fcaf2828f2ff2f8              # double 0.21052581779067459
	.quad	0x3fe71c717141ad89              # double 0.72222206230564823
	.quad	0x3fef80e15958677b              # double 0.98448245477923934
	.quad	0x3fd29007efff6884              # double 0.2900409549453189
	.quad	0x3fe0e2b269dfef90              # double 0.52767296484624815
	.quad	0x3fd899493be503fa              # double 0.38435583924370997
	.quad	0x3fee12c35ceea72a              # double 0.93979042197063234
	.quad	0x3feecfa0394bde76              # double 0.96284495535560555
	.quad	0x3fddcaf6bd6fbd68              # double 0.46551292895943286
	.quad	0x3fe77fbfeafcf3d6              # double 0.73434444328415327
	.quad	0x3fd608b788f49efe              # double 0.34428203939977198
	.quad	0x3fe03190742afcc3              # double 0.5060503262428927
	.quad	0x3fdefc1bb54222d0              # double 0.48413746548662306
	.quad	0x3fe2f334ed7a8121              # double 0.59218832380796382
	.quad	0x3fe483150831abf3              # double 0.64100123978039247
	.quad	0x3fbb2d9d2b0d07c0              # double 0.10616476346061088
	.quad	0x3fdc31e4d63e67a2              # double 0.44054528162234352
	.quad	0x3fc94f973636e3c8              # double 0.19774141452015059
	.quad	0x3fe547a0fb4e0584              # double 0.66499375422442641
	.quad	0x3fdcfcba119576b4              # double 0.45292522160694237
	.quad	0x3fe961ae73bf16c4              # double 0.79317400557257444
	.quad	0x3fb4b1b0e043f830              # double 0.080836348297425031
	.quad	0x3fefd67d35f77f66              # double 0.99493275204075071
	.quad	0x3fce648e20acb534              # double 0.23744370074693111
	.quad	0x3fb6ae7e383f6018              # double 0.088600052578272304
	.quad	0x3fd3e96dbd56d4ca              # double 0.31112235536722876
	.quad	0x3fe8d0ee5cedbd2f              # double 0.77550428533678495
	.quad	0x3fe127c881ffb129              # double 0.53610635176076926
	.quad	0x3fe5581753c66b52              # double 0.66700331079787589
	.quad	0x3fe4d874c4c9994d              # double 0.65142286715562536
	.quad	0x3febfa14349835b0              # double 0.87427721283318327
	.quad	0x3fc167f421079fe8              # double 0.135984912994217
	.quad	0x3f8e17288228cbc0              # double 0.014692608329914481
	.quad	0x3fe6366e30649fea              # double 0.6941443391015103
	.quad	0x3fe31f01f2e5f50d              # double 0.59753510895794337
	.quad	0x3fc0f19b400bcf34              # double 0.13237324359180891
	.quad	0x3fbe90d99430aa00              # double 0.11939773433611123
	.quad	0x3fdf99ac4e47d894              # double 0.49375445980639054
	.quad	0x3fddff9f6982e938              # double 0.46872697166294897
	.quad	0x3fd2320358aea6fe              # double 0.28430255566000528
	.quad	0x3fec959ec42d71ce              # double 0.89326418224259796
	.quad	0x3fe69a27ee4fd30c              # double 0.7063178686645144
	.quad	0x3f8a53886ca880c0              # double 0.012854638877854874
	.quad	0x3fd1f55f96c04f42              # double 0.28060140344426909
	.quad	0x3fbc0308b063bb10              # double 0.10942129427324354
	.quad	0x3fee1eaa9b130091              # double 0.94124346054015195
	.quad	0x3fdeac96141682b2              # double 0.47928382837020955
	.quad	0x3fd840cb1e526c3e              # double 0.37895467721108733
	.quad	0x3fe09003be335a62              # double 0.51757990978769564
	.quad	0x3fd2c4d7dc507ae4              # double 0.29326435580325794
	.quad	0x3faac4518d5521a0              # double 0.052279041769512036
	.quad	0x3feb348207db49a9              # double 0.85015965971461072
	.quad	0x3fe05bb775d3f40f              # double 0.51119587910909725
	.quad	0x3fd468e4d4ac5e6a              # double 0.31890221375349503
	.quad	0x3fd91ab8adbb08ea              # double 0.39225594488028881
	.quad	0x3fe23e7d7af4c46d              # double 0.57012819304340001
	.quad	0x3fca411280159158              # double 0.2051108479892132
	.quad	0x3fb036b57d6efa18              # double 0.063334792254842731
	.quad	0x3fdb9fad8868f854              # double 0.43162096329968347
	.quad	0x3fea05d818a4337a              # double 0.81321339428687556
	.quad	0x3fa631e0b76d4330              # double 0.043349287405936798
	.quad	0x3feeef98d00eeee9              # double 0.96674767147439155
	.quad	0x3fedcaa6ae8eb390              # double 0.93098768323180714
	.quad	0x3fd5f1a75bd46352              # double 0.34287437408197718
	.quad	0x3fe37f3aad80c2e5              # double 0.60928090941714841
	.quad	0x3fe9e31ec026c3f4              # double 0.80897462396217045
	.quad	0x3fd4c5ac46b911b0              # double 0.32456499964271313
	.quad	0x3fe41323c536d429              # double 0.62733639257806317
	.quad	0x3fd4c4bc8919bdfa              # double 0.32450784100271302
	.quad	0x3fd9449823aff080              # double 0.39481166348537755
	.quad	0x3f9f34341b97ee20              # double 0.030472578224346347
	.quad	0x3fe46881e18f1ac7              # double 0.63775724462978978
	.quad	0x3fb190ebda062ac0              # double 0.06861757347921138
	.quad	0x3fe561f466aed5a3              # double 0.66820735984099533
	.quad	0x3fd6a7b57566a3be              # double 0.35398613419470937
	.quad	0x3fed0aad9001c4a5              # double 0.90755346418713556
	.quad	0x3fd0aee6b822ef92              # double 0.26067512495114287
	.quad	0x3feb102d0b3e2b42              # double 0.84572460361355462
	.quad	0x3fd45fba241df1ee              # double 0.31834271933601499
	.quad	0x3fe957c511e2a4c6              # double 0.79196408742168312
	.quad	0x3fea0eed42c656b0              # double 0.8143221191591774
	.quad	0x3fa03ce9798422a0              # double 0.031714721759333431
	.quad	0x3fe54dbce8830302              # double 0.66573949253515274
	.quad	0x3febc65346190516              # double 0.8679596299263348
	.quad	0x3fc6613500d46df0              # double 0.1748415235568781
	.quad	0x3feac703cc02d8db              # double 0.83679380269930037
	.quad	0x3fe33f5a0f7aeaa4              # double 0.60148337386575124
	.quad	0x3fd78213214a9636              # double 0.36731413127049295
	.quad	0x3fcbd641e6ec271c              # double 0.21747611785422627
	.quad	0x3fe69bf75f9c1839              # double 0.70653885530260319
	.quad	0x3fe827b9ca84142a              # double 0.75484933427708722
	.quad	0x3fdd755c5620a8d0              # double 0.46028812800308305
	.quad	0x3fb60adfb07f5bb0              # double 0.086103420820434761
	.quad	0x3feb97200a88c089              # double 0.86219789559801641
	.quad	0x3fadb58a96eeb980              # double 0.05802567570150341
	.quad	0x3feda22cbb16d8ee              # double 0.92604671994084042
	.quad	0x3fc5f097fe647b0c              # double 0.17140483781346239
	.quad	0x3fec06b737ab56e8              # double 0.87581978676709316
	.quad	0x3fc823f53bb1a09c              # double 0.18859734930743322
	.quad	0x3fe02d85387b22d1              # double 0.5055566886086017
	.quad	0x3fd533fc2e9f32ec              # double 0.3312979178706843
	.quad	0x3f9dbba32c85dd20              # double 0.02903609236952065
	.quad	0x3fbd353da3c7cd38              # double 0.11409363983675724
	.quad	0x3fd4da2e9bb5331c              # double 0.32581677633133821
	.quad	0x3fd7a1fc4b3b3502              # double 0.36926181170277073
	.quad	0x3fe8d07b61787c66              # double 0.77544945752368899
	.quad	0x3fe92f34f62d0f1b              # double 0.78701255875828069
	.quad	0x3fe900e761b29f90              # double 0.78136033135977989
	.quad	0x3fd5b2ca07059092              # double 0.3390374249049809
	.quad	0x3fde286f78aa52f2              # double 0.47121798309062435
	.quad	0x3feac068232ba5c6              # double 0.83598715657461109
	.quad	0x3fd012969789e13c              # double 0.25113453673067787
	.quad	0x3fe577635d44afc8              # double 0.67082374779192211
	.quad	0x3fe0f6ae5feec7ba              # double 0.530112445229171
	.quad	0x3fec7a4c59ffbb43              # double 0.88992898538513321
	.quad	0x3fee6213cedf413d              # double 0.94947233586029933
	.quad	0x3feca82b352025ca              # double 0.89552841545190032
	.quad	0x3fc32db54e7ef84c              # double 0.14983240444957102
	.quad	0x3fb03ef3b8f11790              # double 0.063460571910665786
	.quad	0x3fc92881091d61bc              # double 0.19654858536774877
	.quad	0x3fddf3586b6cfefe              # double 0.46797762385175179
	.quad	0x3fb001cc57919f18              # double 0.062527438525304624
	.quad	0x3feabf99935a7a1d              # double 0.83588866023984887
	.quad	0x3fe65c93958384cd              # double 0.69880084230330797
	.quad	0x3fe41198d705d1f3              # double 0.62714807507160086
	.quad	0x3fe8f2d5822dca5a              # double 0.77964282441673594
	.quad	0x3fbc6bc98acc23e0              # double 0.11101970327958055
	.quad	0x3f5c0aeb1fee2600              # double 0.0017115875377576861
	.quad	0x3fe7130c599be472              # double 0.72107522489308296
	.quad	0x3fe1a4d9c63bc327              # double 0.55137337415189769
	.quad	0x3fd387959ba18bc8              # double 0.3051504154047362
	.quad	0x3fc0806e0a224374              # double 0.12891936774078838
	.quad	0x3fea4c888fecc053              # double 0.82184246168436415
	.quad	0x3fe9f81b6b362c31              # double 0.81153651180046016
	.quad	0x3fe6b8a4cd4598a1              # double 0.71003952114257995
	.quad	0x3fe8be782b145b06              # double 0.77325066007583199
	.quad	0x3fe7dcab797b9e94              # double 0.74568723418356564
	.quad	0x3fea0178d523fff7              # double 0.81267968777683464
	.quad	0x3fd1fcbaef518e88              # double 0.28105042811351
	.quad	0x3feaf5df2a05a811              # double 0.84251363952103209
	.quad	0x3f9d78dbd3f109e0              # double 0.028781351862798732
	.quad	0x3fe47988158dafb8              # double 0.63983539781246801
	.quad	0x3fec8929f65bf5b5              # double 0.8917436420157886
	.quad	0x3fe8d895e7110ef4              # double 0.77643866663171801
	.quad	0x3fdc451007a9f11c              # double 0.44171524761601844
	.quad	0x3fdca3f23ed75c92              # double 0.44750648629037315
	.quad	0x3fc87cd7e955ea84              # double 0.19130991834011379
	.quad	0x3fe66a497590ebe6              # double 0.70047448122147382
	.quad	0x3fcff41e477eaf08              # double 0.24963739863357426
	.quad	0x3fea8369915fbe2c              # double 0.82854154961927894
	.quad	0x3fe2e6667615898d              # double 0.59062502921396887
	.quad	0x3fe2e43ad6a18464              # double 0.59036008758642966
	.quad	0x3feb7680b9b1a858              # double 0.85821567791323172
	.quad	0x3fec8a60a91e6e30              # double 0.89189179450062817
	.quad	0x3fef39fbe86bdc87              # double 0.97582812685767883
	.quad	0x3fde92c0c58b5756              # double 0.47770709315715487
	.quad	0x3fe1b425207036fd              # double 0.5532403596459684
	.quad	0x3fd4eec9e3b919e4              # double 0.32707450140551786
	.quad	0x3fd85da3fc7c65b8              # double 0.38071536690548724
	.quad	0x3fd856360624e4e2              # double 0.38026190376292679
	.quad	0x3fedc4d46cff4df5              # double 0.93027707375080004
	.quad	0x3fdfeb8f627c36cc              # double 0.49875244729706192
	.quad	0x3fd86a3d64423eee              # double 0.38148436346908354
	.quad	0x3fee8057ae1d5afe              # double 0.95316680914660856
	.quad	0x3fe94a74aac429ef              # double 0.79033883431230645
	.quad	0x3fe5202870680a49              # double 0.66017553285957675
	.quad	0x3fd8d6ed697dcb14              # double 0.38811812688725067
	.quad	0x3fe9af9d36077dbb              # double 0.80268726875868113
	.quad	0x3fd63a5d32531312              # double 0.34731225885870842
	.quad	0x3fee94d42075d536              # double 0.9556675561895307
	.quad	0x3feaea35ae62a249              # double 0.841090050312297
	.quad	0x3fd738dd9acefb12              # double 0.36284580343264949
	.quad	0x3fe42baa1cecb3ad              # double 0.6303301396306914
	.quad	0x3fe3ad2f0bc0cf1a              # double 0.61489059730090223
	.quad	0x3fdbca2b930789fc              # double 0.43421449049324656
	.quad	0x3feb132f671af577              # double 0.84609193933253735
	.quad	0x3feb46cb17720df0              # double 0.85239176348880896
	.quad	0x3fe950db2c4bb198              # double 0.79112013484477739
	.quad	0x3fea13838dd6bcad              # double 0.81488206580060807
	.quad	0x3fafb84130dd8750              # double 0.061952626433380176
	.quad	0x3fbce4d237229e10              # double 0.1128665337188226
	.quad	0x3fe2a606b6a5aba9              # double 0.58276687310477826
	.quad	0x3fd98567d0aff2ae              # double 0.39876742725008796
	.quad	0x3fc4bbca7124ab20              # double 0.16198092007228926
	.quad	0x3fccf8e56c814ff8              # double 0.226345708828944
	.quad	0x3fe3fb2e071734f5              # double 0.62441159615414554
	.quad	0x3fde7ded87961914              # double 0.47643602600909785
	.quad	0x3fdbc509a37abab6              # double 0.43390122380052831
	.quad	0x3fe632f0cfdeabc4              # double 0.6937183437306591
	.quad	0x3fe38d885d2dad3c              # double 0.61102693747435621
	.quad	0x3fe652fd1ab1aea0              # double 0.69763045514760691
	.quad	0x3fe353ac350190ad              # double 0.60396395066029174
	.quad	0x3fc1a20a1373854c              # double 0.13775754880684088
	.quad	0x3fdd5c2e9d80d46c              # double 0.45875134831596287
	.quad	0x3f5f024084e6bc00              # double 0.0018926267690451137
	.quad	0x3fc5c50f0921ffd4              # double 0.17007625528276427
	.quad	0x3fd039dceb92816a              # double 0.25353167538744137
	.quad	0x3fd8bb5f443dafaa              # double 0.38643628753811277
	.quad	0x3fddf31e49a6e1ec              # double 0.46796376411978602
	.quad	0x3fe62360a5db5313              # double 0.69181854623693295
	.quad	0x3fb631ee771a9990              # double 0.086699394300558063
	.quad	0x3fe5460f37802c87              # double 0.66480217781044437
	.quad	0x3fc1261e3d17a2f8              # double 0.13397577269576977
	.quad	0x3fe73ade38a91351              # double 0.72593604151243529
	.quad	0x3fb4aefcebb84110              # double 0.08079510455013783
	.quad	0x3fc1a6b7634bc0dc              # double 0.13790027950699979
	.quad	0x3fe9d03ed8d3e8db              # double 0.80667059277700603
	.quad	0x3fd00db4e45a8f02              # double 0.25083658504648565
	.quad	0x3fd9709a212e057e              # double 0.39749768486225168
	.quad	0x3fda5f511fae8004              # double 0.41206768125448456
	.quad	0x3fe273b8f4d02300              # double 0.57662627997441973
	.quad	0x3fe231837dc1242a              # double 0.56854414521615593
	.quad	0x3fe23ce7ad2fdfe3              # double 0.56993469071948899
	.quad	0x3fe4b86c7c229c64              # double 0.64751266713291189
	.quad	0x3fe786357f278359              # double 0.73513293108781419
	.quad	0x3fe470e9273b1942              # double 0.63878305113102152
	.quad	0x3fe16c93b4b924d1              # double 0.54450402543548126
	.quad	0x3feb1f3bda7fbda4              # double 0.84756272006591304
	.quad	0x3fe2daa25b3fefd7              # double 0.58918874571053947
	.quad	0x3fec8080776dbadd              # double 0.89068625760941311
	.quad	0x3fa1151807c1e600              # double 0.033364058443975608
	.quad	0x3fec81f090ab0282              # double 0.89086178069563027
	.quad	0x3fd936cf7428ddc6              # double 0.39397035926546342
	.quad	0x3fd4da9b47db358e              # double 0.32584268586364196
	.quad	0x3fee04960396b5c0              # double 0.9380598135082252
	.quad	0x3fd380e15ba3d9fe              # double 0.30474122952674054
	.quad	0x3fc23e8d0c580a90              # double 0.14253390410165823
	.quad	0x3fe390bdf9d5860f              # double 0.6114187125751317
	.quad	0x3fef0034a9ffa8cf              # double 0.9687751121794238
	.quad	0x3fea7ec5a5bb532d              # double 0.82797510499458371
	.quad	0x3fb1883da7d53448              # double 0.068485120272456901
	.quad	0x3fee978a6fe5ca0c              # double 0.9559986291408804
	.quad	0x3fe94b1e6816818b              # double 0.79041977243109451
	.quad	0x3fc96dae9a1e3b6c              # double 0.19865973019883698
	.quad	0x3fe6b10f0052ea9b              # double 0.70911359847316946
	.quad	0x3fe9a6b2e328338a              # double 0.80159897200211216
	.quad	0x3fe1070f97116c34              # double 0.53211192613105718
	.quad	0x3fe212d165041ce6              # double 0.5647971127481497
	.quad	0x3fe35f3387961850              # double 0.60537125093174815
	.quad	0x3fe1890797311285              # double 0.54797725228907324
	.quad	0x3fe95734f4c3be91              # double 0.79189536862937093
	.quad	0x3fd2868a0fa345ee              # double 0.28946162726523894
	.quad	0x3fde2de7d4e57bb6              # double 0.47155185499826346
	.quad	0x3fdf3fc5b735c7ee              # double 0.48826735393151821
	.quad	0x3fe3e994e60a8085              # double 0.62226338319671071
	.quad	0x3feb537a4e0f7775              # double 0.85394015546965696
	.quad	0x3fe94ef13b512b81              # double 0.79088651261677978
	.quad	0x3fdf068f4edb8c24              # double 0.48477537823618122
	.quad	0x3fe29e8a6145efe6              # double 0.58185309408827091
	.quad	0x3fa76a5394046cf0              # double 0.04573308164455081
	.quad	0x3fe2c20741f147b9              # double 0.58618510131258639
	.quad	0x3febff4f7244a3a4              # double 0.87491581266396112
	.quad	0x3fe7ad25be10f7d2              # double 0.73988616106339067
	.quad	0x3fe0cb1d2cf2696a              # double 0.52479418543525225
	.quad	0x3fdd327489a8f6ee              # double 0.45620454257355803
	.quad	0x3fbe98a338d70588              # double 0.11951656472867545
	.quad	0x3fe73352cd0ecd5a              # double 0.7250150685344281
	.quad	0x3fead2dd90eb7ed3              # double 0.83824041657131898
	.quad	0x3fdefb4d21057b5a              # double 0.48408821320292861
	.quad	0x3feb941f1fd10e14              # double 0.86183124746497918
	.quad	0x3fe6b8271f31ad71              # double 0.70997959225262097
	.quad	0x3fe6e59041684566              # double 0.71552288794388796
	.quad	0x3fe0f896e3d6812f              # double 0.53034538745490589
	.quad	0x3fed3fcce9e5b4f7              # double 0.91403814013543083
	.quad	0x3fd518e2dc3a5c5c              # double 0.32964393145215865
	.quad	0x3fbb3c873273b968              # double 0.10639233571757745
	.quad	0x3fe2f9a044c4fffa              # double 0.59297192985104563
	.quad	0x3fec5aa30793be7c              # double 0.88606406669528281
	.quad	0x3fd6d18e5e90d28e              # double 0.35654029116566555
	.quad	0x3fe3a882295e89fb              # double 0.61431987838687918
	.quad	0x3fe805ec032b882b              # double 0.75072289103650769
	.quad	0x3fbe45ccf332bc30              # double 0.1182525724168364
	.quad	0x3fee08369b027135              # double 0.93850260043431055
	.quad	0x3fefd12af72656c6              # double 0.99428318282544903
	.quad	0x3fe69e4557a3e1b7              # double 0.70682017438144029
	.quad	0x3fe07bfc4fb6b24d              # double 0.51513495987962588
	.quad	0x3fae499b71059b50              # double 0.059155328318232336
	.quad	0x3fd98ae6eb4fe4dc              # double 0.39910290698715101
	.quad	0x3fd999aff20163e8              # double 0.40000532754271356
	.quad	0x3fd418622bda5f60              # double 0.3139882496120574
	.quad	0x3fedabe65500beed              # double 0.92723385431415084
	.quad	0x3fc44e3e557235d4              # double 0.15863780185865883
	.quad	0x3fc5657768626710              # double 0.16715900990384869
	.quad	0x3febc94042d46f1e              # double 0.868316774870866
	.quad	0x3fc6831ae3ca6350              # double 0.17587600824915706
	.quad	0x3fae595b737cecc0              # double 0.059275491569189764
	.quad	0x3fe84dd9e21cdd0b              # double 0.75950330889364304
	.quad	0x3fe9b3ea46ab3147              # double 0.80321229746326928
	.quad	0x3fc6d09c1f5cfff0              # double 0.1782412675038354
	.quad	0x3f7c8885ae5c7c00              # double 0.0069661352079313232
	.quad	0x3fc7d38698077198              # double 0.18614275382323053
	.quad	0x3fde4809562c02f8              # double 0.47314675727106659
	.quad	0x3fecbbe8c1a11bf3              # double 0.89793813532094047
	.quad	0x3fd24911891c4f88              # double 0.28570974721628106
	.quad	0x3fd72a6b7ee868ec              # double 0.36196410554261038
	.quad	0x3fedc591ec7a99a7              # double 0.93036743342672856
	.quad	0x3fedd35596f49be4              # double 0.93204764827248398
	.quad	0x3fec1f7fa595eb56              # double 0.87884504643384775
	.quad	0x3fa70d1e0c7f62a0              # double 0.04502195265348985
	.quad	0x3fe77f1b73a450e7              # double 0.73426601969052008
	.quad	0x3fec71cd6f2125be              # double 0.8888919039247225
	.quad	0x3fcd971d621ef2b4              # double 0.23117415705737232
	.quad	0x3fe0f53c291e745f              # double 0.5299359133820295
	.quad	0x3fe11dd8e1b5cf59              # double 0.53489345630667195
	.quad	0x3fe8d958fea9dcbc              # double 0.77653169383020026
	.quad	0x3fe32d2a6f35625a              # double 0.59926339836517717
	.quad	0x3fcfb65a0707efdc              # double 0.24775243132887581
	.quad	0x3fef7650418c7c74              # double 0.98319256594176218
	.quad	0x3fe5ddea084a66bd              # double 0.68333913440002159
	.quad	0x3fca79bed01191d0              # double 0.20684037360764629
	.quad	0x3fd718b4ede0283c              # double 0.36088298063316748
	.quad	0x3fe99aafac33e83d              # double 0.80013259538032566
	.quad	0x3fd1ec4c27cbe2ce              # double 0.28004745375032492
	.quad	0x3fbb2154739ae078              # double 0.10597732374560731
	.quad	0x3fe26f3552e448cf              # double 0.57607523145477468
	.quad	0x3fd55c0d8fdc769c              # double 0.33374346779769737
	.quad	0x3fbc1cb95b3ccdf8              # double 0.10981329419592345
	.quad	0x3fd0c03a89c02fa2              # double 0.26173270656794945
	.quad	0x3fc3d20a18978cb4              # double 0.15484739495068356
	.quad	0x3fe5041478f88a55              # double 0.65674804331895109
	.quad	0x3fcd78e35160bb74              # double 0.23025170777824722
	.quad	0x3fe9d494b97cc0af              # double 0.80719982364646181
	.quad	0x3feea448d580f6ce              # double 0.9575542612071446
	.quad	0x3fd3721680dd382a              # double 0.30383837303532124
	.quad	0x3feabd2335d7084f              # double 0.83558807864779705
	.quad	0x3fe9bf90f2491764              # double 0.80463454553021707
	.quad	0x3fef023f43a600c2              # double 0.9690243073710223
	.quad	0x3f9c7fcbdcfa1880              # double 0.027831254351007306
	.quad	0x3fd86343e77966fc              # double 0.38105867009072347
	.quad	0x3fd4dbe86a2f5dce              # double 0.32592211122161252
	.quad	0x3fedd79f7bef1607              # double 0.93257116514058758
	.quad	0x3fc54afa0b3cc1e0              # double 0.16635060833642878
	.quad	0x3feec344f575529d              # double 0.96133659306595442
	.quad	0x3fed3ba2ec678249              # double 0.91352983639451069
	.quad	0x3fdf1a16e801926e              # double 0.48596737534379641
	.quad	0x3fe2400b6c01a9f6              # double 0.57031794638652289
	.quad	0x3fdb968f98e48762              # double 0.43106450968672594
	.quad	0x3fd2e5ae4ab1a4cc              # double 0.29526860517814835
	.quad	0x3fec4a285260164b              # double 0.8840524300473559
	.quad	0x3fe7dc88c17a8a47              # double 0.74567067898562633
	.quad	0x3fd1124e4b7932a0              # double 0.26674229975177788
	.quad	0x3feab49a18dc5861              # double 0.83454613547906942
	.quad	0x3fcead12e955df04              # double 0.23965679543811558
	.quad	0x3fe826bd06939478              # double 0.75472880634755679
	.quad	0x3feeeb2c2f1e2e37              # double 0.96620759203637518
	.quad	0x3fd3f82472ac4be8              # double 0.31202040861643221
	.quad	0x3fcb06ccce389ef4              # double 0.21114502019303638
	.quad	0x3fea7830e9a3bc34              # double 0.82717176087124366
	.quad	0x3fd5df8d963a19f8              # double 0.34176959677316132
	.quad	0x3fd642e1ae5e0cc0              # double 0.34783212688507703
	.quad	0x3fbdf01bfee7e718              # double 0.11694502805030671
	.quad	0x3fbcf743fcc9cea8              # double 0.11314797326650228
	.quad	0x3fe775f7c9c3cd2d              # double 0.73315038115689435
	.quad	0x3fe6de5710e2c75b              # double 0.7146411256601185
	.quad	0x3fe00dc8015e2b41              # double 0.50168228404195514
	.quad	0x3fe888edf1f71a05              # double 0.76671502360187616
	.quad	0x3fcb44b4196b6814              # double 0.21303416482152271
	.quad	0x3fd01095a2a37af2              # double 0.25101223833728092
	.quad	0x3fd4a946e0d08c0a              # double 0.32283184008173349
	.quad	0x3fb0825ad3a016e8              # double 0.064489056269021128
	.quad	0x3fe0848299e4f3de              # double 0.5161755567311237
	.quad	0x3fefe77de8fb9cb0              # double 0.9970082807966687
	.quad	0x3fe412dabc62a36e              # double 0.62730156702046513
	.quad	0x3fdb97c4a2ec938e              # double 0.43113819037017087
	.quad	0x3fa200d275f1fda0              # double 0.03516252221833871
	.quad	0x3fd181c006622fa8              # double 0.27354431746857211
	.quad	0x3feaf60ba61bd6c9              # double 0.84253485148539042
	.quad	0x3feda85e897f5444              # double 0.92680289130169812
	.quad	0x3fec001c4e2b85d8              # double 0.87501349704342157
	.quad	0x3fe807641976a517              # double 0.75090222333270418
	.quad	0x3fcd65d8dfc1d880              # double 0.22967062879223832
	.quad	0x3fc3046428eb3804              # double 0.1485715102957671
	.quad	0x3fc803c913be61c0              # double 0.18761552299544171
	.quad	0x3fea71d134260225              # double 0.82639370141265955
	.quad	0x3fe58e3cd497184e              # double 0.6736129905846242
	.quad	0x3fe33516dfd0f4dc              # double 0.60023063387020725
	.quad	0x3fc2e8bf6dba4adc              # double 0.14772789819524845
	.quad	0x3fabb4551d2adc10              # double 0.054110202608562585
	.quad	0x3fdaaf453a1bc858              # double 0.41694765734348982
	.quad	0x3fc56b7c7471aa98              # double 0.16734271703474657
	.quad	0x3fe43c56b32df6be              # double 0.63236556049351811
	.quad	0x3fe3cb8474a5012d              # double 0.61859343320978655
	.quad	0x3fdb4535ee90c4ae              # double 0.42609928414737908
	.quad	0x3fd6abd96f1f23b0              # double 0.35423885204050531
	.quad	0x3fef7456e4c861ee              # double 0.98295159038667435
	.quad	0x3fc3e8cd9a7f29c0              # double 0.15554208797250446
	.quad	0x3fca215929a86c0c              # double 0.20414270910336574
	.quad	0x3fd0da2888c2878a              # double 0.26331532817322822
	.quad	0x3fa9e7b05244ece0              # double 0.050595769922858969
	.quad	0x3fdfe724f3904de6              # double 0.49848293099895924
	.quad	0x3fec6b406906bade              # double 0.8880922366423325
	.quad	0x3fb41d861110c558              # double 0.078575495878586366
	.quad	0x3fea59f0169955dc              # double 0.82347874082432381
	.quad	0x3fd919bdd621bc56              # double 0.39219613944346088
	.quad	0x3fcf4b9c2781e574              # double 0.24449493340561512
	.quad	0x3fc146932556eac4              # double 0.13496627162188279
	.quad	0x3fe18ee0a50da132              # double 0.54869110333405602
	.quad	0x3feb8cc458524641              # double 0.86093346834440621
	.quad	0x3fe8e5ad02ab90f6              # double 0.77803659936446823
	.quad	0x3fc8878bd220d6d4              # double 0.191636540986727
	.quad	0x3fca42a5407eb2a4              # double 0.20515885972181025
	.quad	0x3feba41c475d4775              # double 0.86378301561693027
	.quad	0x3fc836273b3741e4              # double 0.18915262595557103
	.quad	0x3fe3e6da3c3f0ac3              # double 0.62193023459288843
	.quad	0x3fec6724ded4f355              # double 0.88759082338183737
	.quad	0x3fdc8b2ce637cf20              # double 0.44599459154345489
	.quad	0x3fd100e7fdf65780              # double 0.26568031121257007
	.quad	0x3fec2d409c3e1efd              # double 0.88052397266525839
	.quad	0x3fc705a476937270              # double 0.1798596934303478
	.quad	0x3fea4348c5dc7112              # double 0.82071341175790935
	.quad	0x3fdc6b5b6c291d22              # double 0.44405255854185743
	.quad	0x3fe9615b799fafdb              # double 0.79313443903583492
	.quad	0x3feffb3b064fd794              # double 0.99941779358663263
	.quad	0x3faadde610e844c0              # double 0.052474202693824079
	.quad	0x3fda47ac0adec3ea              # double 0.41062451421299662
	.quad	0x3fef971fec89d8fc              # double 0.98719783972663277
	.quad	0x3fe314a6b689a451              # double 0.59627090122115523
	.quad	0x3fe0fc49f0d6b2e5              # double 0.53079697645952406
	.quad	0x3fd90eb29111f36e              # double 0.39152206580165838
	.quad	0x3fef2cff18119267              # double 0.97424273205667766
	.quad	0x3fce191b577eb218              # double 0.23514119884693296
	.quad	0x3fee1454892d7b4c              # double 0.9399817160845969
	.quad	0x3fe255a8c175055f              # double 0.57295644554703162
	.quad	0x3fcd1dcd1fdf4924              # double 0.22747196251163715
	.quad	0x3fcef59ea3e1bac4              # double 0.24187071802176352
	.quad	0x3fda84fbf0402796              # double 0.41436670743916559
	.quad	0x3fe48e8c951dbbbf              # double 0.64240101932761451
	.quad	0x3fc2ece4375b41ec              # double 0.14785435393288482
	.quad	0x3fc4f2af26ed1ed0              # double 0.16365613365836973
	.quad	0x3fdda7dab2108b6a              # double 0.46337001217960128
	.quad	0x3fe2c389dc6439fe              # double 0.58636944813935066
	.quad	0x3fec986d3a876daa              # double 0.89360677176903391
	.quad	0x3f9fa3fd5ca139a0              # double 0.030899008539842066
	.quad	0x3fe6d64f0d8c77d1              # double 0.71366074224692444
	.quad	0x3fe5d13ab8cca059              # double 0.68179069608323595
	.quad	0x3fe3807ae35b97a0              # double 0.60943359762017124
	.quad	0x3fc4393d0ae13a40              # double 0.15799677878608698
	.quad	0x3fdd0b6179b4499e              # double 0.45381962666683673
	.quad	0x3fc22fbbce5a2d48              # double 0.14208171439927697
	.quad	0x3feba1fa1ca5ff40              # double 0.86352258296390261
	.quad	0x3fb56f1c7e45f808              # double 0.08372667391628863
	.quad	0x3fe8ee36c44fe660              # double 0.77907884924134052
	.quad	0x3fe6b570c07a4b35              # double 0.70964849084189174
	.quad	0x3fed10dd184a9b12              # double 0.9083085512582747
	.quad	0x3fdc635ba7552a44              # double 0.44356433240014703
	.quad	0x3fe712fde57eff37              # double 0.72106833289578887
	.quad	0x3fd53bd0c9d8701c              # double 0.33177585326643722
	.quad	0x3fdfafb98ed6880e              # double 0.4951003928091503
	.quad	0x3fec5310b2247976              # double 0.88513979714825441
	.quad	0x3fe5c08013ca6a15              # double 0.67974857201926631
	.quad	0x3f865bbde0cbdd80              # double 0.010917170927753572
	.quad	0x3fdd74d4e11f2788              # double 0.46025583252468794
	.quad	0x3fe2e7d093476e21              # double 0.59079769864496623
	.quad	0x3fd0d72b195005a2              # double 0.26313283416683408
	.quad	0x3fd1fb45c8403ac8              # double 0.28096146159888891
	.quad	0x3fd0b671e11a8e68              # double 0.26113554938112893
	.quad	0x3feeef9b73740792              # double 0.96674892949543989
	.quad	0x3fe6d8e0af30c709              # double 0.7139743253412415
	.quad	0x3fef79d0992c38ba              # double 0.98361997524786848
	.quad	0x3fdad342c30130c2              # double 0.41914433520720362
	.quad	0x3f88600aaea1b140              # double 0.011901935057004764
	.quad	0x3fcbaa9c2976b914              # double 0.21614410423848851
	.quad	0x3fe00ee4526c879e              # double 0.50181785677363044
	.quad	0x3fe36471ab838216              # double 0.60601123331804518
	.quad	0x3fe181d297f157d3              # double 0.54709748913114209
	.quad	0x3fe85b4761598bb7              # double 0.76114243520384306
	.quad	0x3fe902915742ea68              # double 0.78156344454994287
	.quad	0x3fd3c29d1c7507d6              # double 0.30875327853220591
	.quad	0x3fd89d327794c29c              # double 0.38459455182877789
	.quad	0x3fbd11ad5434ed60              # double 0.11355098062351976
	.quad	0x3fe1869a2df20835              # double 0.54768094037741
	.quad	0x3fdaa72086057dd2              # double 0.41645062530548416
	.quad	0x3fc14f755951a870              # double 0.13523737775114197
	.quad	0x3fe3b563564afc68              # double 0.61589209417423962
	.quad	0x3fe1f90d062f6eaf              # double 0.56165171821654336
	.quad	0x3fd8fada59411a40              # double 0.39031084743729494
	.quad	0x3fd684d52533b0aa              # double 0.35185745842933136
	.quad	0x3faabc74f213f5d0              # double 0.052219061422856705
	.quad	0x3fe1d3db261192c0              # double 0.55711133418352432
	.quad	0x3fd7855eeeab1106              # double 0.3675153094047946
	.quad	0x3fdc9963816122ba              # double 0.44686210283957062
	.quad	0x3fa62b737239ca70              # double 0.043300254529545223
	.quad	0x3fe07b067fc80474              # double 0.51501774747170126
	.quad	0x3fe808a13b2b6332              # double 0.75105344349421999
	.quad	0x3feee3a889369cf0              # double 0.96529032515982571
	.quad	0x3fe81df662ff6aab              # double 0.75365752540104347
	.quad	0x3fd8fafd12566368              # double 0.39031912604109786
	.quad	0x3fefd326ec94b8bc              # double 0.99452539641585913
	.quad	0x3f68c4d668b6dd00              # double 0.0030235469509666268
	.quad	0x3feb941abb222193              # double 0.86182915257909298
	.quad	0x3fc57901dfb647e4              # double 0.16775535033644851
	.quad	0x3fe0071d790f9855              # double 0.50086854595861985
	.quad	0x3fe25e2d0407b048              # double 0.57399607455364166
	.quad	0x3fdbe205b3813d3a              # double 0.43567030458230571
	.quad	0x3fc45437874aa2b8              # double 0.15882009607346048
	.quad	0x3fc7581a31c63f48              # double 0.18237616949454094
	.quad	0x3fd5d72fbb495d90              # double 0.34125893869119128
	.quad	0x3fb748cd854fb768              # double 0.090954632803656232
	.quad	0x3fe40e2403d82300              # double 0.62672615767323236
	.quad	0x3fe12810077ff625              # double 0.53614045586408976
	.quad	0x3feaa34f9ee0db5a              # double 0.83243542700698048
	.quad	0x3fef3b397731105a              # double 0.975979550167277
	.quad	0x3fe2229a8f1b3d6c              # double 0.56672409010381619
	.quad	0x3fe33f4741047721              # double 0.6014744062301568
	.quad	0x3fe5461834a5590c              # double 0.66480646402740851
	.quad	0x3feab89b1470c018              # double 0.83503488533279135
	.quad	0x3fddb026c5505eb6              # double 0.46387643116893729
	.quad	0x3feb271c2f80036a              # double 0.84852418210367131
	.quad	0x3fd7b072e766b650              # double 0.37014458272719697
	.quad	0x3fb3e8534c1607a8              # double 0.077763753963181359
	.quad	0x3fd55e9f7d29c68e              # double 0.33390032980887774
	.quad	0x3fe7016eefa1ebae              # double 0.71892496875022061
	.quad	0x3fedf14e305829eb              # double 0.93570622865928266
	.quad	0x3fd59e5f4b369be6              # double 0.33779127450037405
	.quad	0x3f9ee5e9d92aed20              # double 0.030173925285209013
	.quad	0x3fd6c92138c5a26c              # double 0.35602598709241451
	.quad	0x3fe6ef6989e06e29              # double 0.71672512940444222
	.quad	0x3fe9dfb221ec22ef              # double 0.80855661988706895
	.quad	0x3fca14a00492869c              # double 0.20375442717800218
	.quad	0x3fda77feabdc090a              # double 0.41357390196948585
	.quad	0x3fd73e12d6b67d78              # double 0.36316367118884996
	.quad	0x3fdaa1864151d0ee              # double 0.41610866907946231
	.quad	0x3fcfcb60a9829dec              # double 0.24839409138552015
	.quad	0x3fcbe1872771f510              # double 0.21782006670029164
	.quad	0x3fda1bd9c5bcf4a2              # double 0.4079498702083787
	.quad	0x3fe7d41aa9192f71              # double 0.74464161898639081
	.quad	0x3fdf09612fc0e17e              # double 0.48494748748228023
	.quad	0x3fac1caa79d05860              # double 0.054906203622679284
	.quad	0x3fed9af3c0f4574a              # double 0.92516505896012657
	.quad	0x3fe19e2b67826f33              # double 0.55055780617428807
	.quad	0x3f95c3e9f6693000              # double 0.021255164780356495
	.quad	0x3fcfc1cd8dc067a8              # double 0.24810189649070691
	.quad	0x3fc4f412b31bf718              # double 0.16369851823395076
	.quad	0x3fdcf8492bbb2bf0              # double 0.45265416403407155
	.quad	0x3fe78e48714d8856              # double 0.73611852769341612
	.quad	0x3fd1d0b6acb27686              # double 0.27836386551812387
	.quad	0x3fea3b943502ed5a              # double 0.81977281907840482
	.quad	0x3fdf3dfbded66762              # double 0.48815819512821268
	.quad	0x3fd43973e284ee4c              # double 0.31600663300534815
	.quad	0x3fcb5d9ba8ec423c              # double 0.21379419086635376
	.quad	0x3fec02ba848b2256              # double 0.87533307921791947
	.quad	0x3fe352cebfa643ce              # double 0.60385835105454944
	.quad	0x3fd036d13f006de4              # double 0.25334578659541607
	.quad	0x3fe161ea9430e1e2              # double 0.54320267623466756
	.quad	0x3fe12d3be42d0e7d              # double 0.53677172246575788
	.quad	0x3fe90cc96d77edbb              # double 0.78281089191971576
	.quad	0x3f974d4597633460              # double 0.022755706181488811
	.quad	0x3fd40aa66ab1c8c4              # double 0.31315002841359907
	.quad	0x3feea9890de3ef63              # double 0.95819523537600692
	.quad	0x3fef827e78a92688              # double 0.98467944685508346
	.quad	0x3fcf27f1fafa5008              # double 0.24340653185629457
	.quad	0x3fcb0cdd5256bfdc              # double 0.21133009453251261
	.quad	0x3fe5e641f174dcc2              # double 0.68435761603804957
	.quad	0x3fd837538de8d2d6              # double 0.37837685449930569
	.quad	0x3feaf0270052b179              # double 0.84181547225084252
	.quad	0x3fe8abc4c63b5804              # double 0.77096785275603041
	.quad	0x3fc3d1c907bd1de0              # double 0.15483963849895499
	.quad	0x3fb6d08b3b5be708              # double 0.089119626991216561
	.quad	0x3fed6c8ad23c6feb              # double 0.91949978887305173
	.quad	0x3fece661d2a04e6d              # double 0.90312281740120925
	.quad	0x3fc216d77aff0db8              # double 0.14132207399062024
	.quad	0x3fef62cef572bf03              # double 0.98081157626253945
	.quad	0x3fe2cb5ac0d287a2              # double 0.58732354794141295
	.quad	0x3fd01b2feac27e42              # double 0.25165937352901235
	.quad	0x3f602977b6843400              # double 0.0019728983062408112
	.quad	0x3fc2e9b554e2815c              # double 0.14775721211209258
	.quad	0x3fd230308d4ef98a              # double 0.28419126319558841
	.quad	0x3fe93ca06e437968              # double 0.78865071807721865
	.quad	0x3fcaa5f421a7cd1c              # double 0.20818950312932649
	.quad	0x3fed1aa76f992e8d              # double 0.90950366779857605
	.quad	0x3fe081bd5c384f22              # double 0.51583736430845684
	.quad	0x3fb734dc9f5ab3f8              # double 0.090650357155666828
	.quad	0x3fe9dc1d380e04d9              # double 0.80811940143771743
	.quad	0x3fef4dbe172acd17              # double 0.97824005627481624
	.quad	0x3fecf04d307bda80              # double 0.90433368176930173
	.quad	0x3fe8bdae81248cc9              # double 0.77315449927518742
	.quad	0x3fdcba7954b1f33c              # double 0.44888146658904637
	.quad	0x3fe79c5e3e8b71e3              # double 0.73783790794146531
	.quad	0x3fc0ab13440065fc              # double 0.13022080250156864
	.quad	0x3f76bffee5ae1600              # double 0.0055541951104536302
	.quad	0x3fd30bf5e101fd0e              # double 0.29760500882544327
	.quad	0x3fd6ada7e09d93e0              # double 0.35434910712348078
	.quad	0x3fcd524c101c2e64              # double 0.22907400881409778
	.quad	0x3fe737c5e21e63ce              # double 0.72555822528658509
	.quad	0x3fc747af5f45cc5c              # double 0.18187515403733101
	.quad	0x3fd759036ef2d59a              # double 0.36480794749089684
	.quad	0x3fe349fac63a137e              # double 0.60278071132834987
	.quad	0x3fb798be92c70630              # double 0.092174444994292725
	.quad	0x3fd3a45d589895c6              # double 0.3069070210643442
	.quad	0x3fa8870b81d7f540              # double 0.047905311203047862
	.quad	0x3fe7c4698577bc65              # double 0.74272609775460963
	.quad	0x3fd9d9cc3f70e744              # double 0.40391832538044903
	.quad	0x3fce85e184262468              # double 0.23846072151744413
	.quad	0x3fe7cbb64f659868              # double 0.74361720568846312
	.quad	0x3fd5d265426c4e9e              # double 0.34096652495029811
	.quad	0x3fe504e12127b0ec              # double 0.6568456313666764
	.quad	0x3fbc46efef6c5728              # double 0.11045741648953522
	.quad	0x3fe6d3055b49ce0c              # double 0.71325939016100071
	.quad	0x3faad4521bdda330              # double 0.052401128675063524
	.quad	0x3fd22bbcab5f8e7a              # double 0.28391949401541405
	.quad	0x3fd04112eaa6c526              # double 0.25397179522686242
	.quad	0x3fa91b597ccdde50              # double 0.049036785588154275
	.quad	0x3fd2dcaaca613c48              # double 0.29471845401434793
	.quad	0x3fe870b398fa1f84              # double 0.76375751379326617
	.quad	0x3fec2939f5effb8e              # double 0.88003252062468262
	.quad	0x3fa3cefd3b3fe690              # double 0.038688577158564219
	.quad	0x3fef4bb190324920              # double 0.97798994220127966
	.quad	0x3fc4dfdfefe45510              # double 0.16308211530182648
	.quad	0x3fcb42a21fd6c834              # double 0.21297098688734339
	.quad	0x3fe9f1e9fda51238              # double 0.8107805208206349
	.quad	0x3fe081f053496c2e              # double 0.51586166636423569
	.quad	0x3fc46dff28cc4b20              # double 0.15960683338251958
	.quad	0x3fec0b65d4837501              # double 0.87639132982772605
	.quad	0x3fdcb795db7ae252              # double 0.44870516236872959
	.quad	0x3fe4af5458bf0445              # double 0.64640252431139145
	.quad	0x3fe34875342d4d26              # double 0.60259494963466831
	.quad	0x3fcb2642f3b46c04              # double 0.21210514926573876
	.quad	0x3fef45e60b52374a              # double 0.97728254519618329
	.quad	0x3fec1caeb2e63a93              # double 0.87850127164149894
	.quad	0x3fd457b398a84b12              # double 0.31785287769268777
	.quad	0x3fd5065003133d1e              # double 0.32851028728778597
	.quad	0x3fca0e70aa03dbbc              # double 0.2035656767036168
	.quad	0x3fea0410bcef77af              # double 0.81299626256417479
	.quad	0x3fdf00c83d7963fe              # double 0.48442274096811377
	.quad	0x3fec7473d22180af              # double 0.88921538392243871
	.quad	0x3fbb2a8410724930              # double 0.10611749078296806
	.quad	0x3fdfcc419f80b646              # double 0.49684181763118251
	.quad	0x3fdbffdc746429be              # double 0.43749152532896207
	.quad	0x3fed23b4240db498              # double 0.91060835878092217
	.quad	0x3fd4a62790ecf0e8              # double 0.32264126923452219
	.quad	0x3feada131a83eee9              # double 0.83912043741972042
	.quad	0x3fe820022442a172              # double 0.75390727121434353
	.quad	0x3fe5c4cd0607a258              # double 0.68027354409884833
	.quad	0x3fd8a3795dda4e3a              # double 0.38497766652401177
	.quad	0x3fe441be6c80c1de              # double 0.63302537147506732
	.quad	0x3fe2899ed9af2e8d              # double 0.57929937855210911
	.quad	0x3fe33c85b3b7aeb8              # double 0.60113797284198878
	.quad	0x3fcfd282db895418              # double 0.24861179084351259
	.quad	0x3fd68865fdc2cc8e              # double 0.35207509785977542
	.quad	0x3fe416774c3112f8              # double 0.62774243241491856
	.quad	0x3fbab37c7d1167c8              # double 0.10430124333780022
	.quad	0x3fdc7e192de3b03c              # double 0.44519643288981903
	.quad	0x3fe8ea51d6bdfdc0              # double 0.77860347692324439
	.quad	0x3fe7e11ef8f79f44              # double 0.74623058916493124
	.quad	0x3fec59ddfbd9adef              # double 0.88597010793222164
	.quad	0x3f9e08aa9d9bed00              # double 0.029329934949584135
	.quad	0x3fd820b3c13a0c32              # double 0.37699598188209216
	.quad	0x3fee8d3b2a41835d              # double 0.95474012616260107
	.quad	0x3fd5f3b972b2dfdc              # double 0.34300075722739876
	.quad	0x3f8d6b52d121e900              # double 0.014364859587875589
	.quad	0x3feb5f375289e543              # double 0.85537305947142561
	.quad	0x3fdf8e64914c3a4a              # double 0.4930659693644982
	.quad	0x3fe13d94142febce              # double 0.53876689856348903
	.quad	0x3fd6196931bab782              # double 0.34530095917113368
	.quad	0x3fdca17cb2c74b24              # double 0.44735639056050247
	.quad	0x3fd1be8ae8ae783c              # double 0.27725479815297027
	.quad	0x3fe167eab3e32890              # double 0.54393515714879648
	.quad	0x3fc9fd7b8530e220              # double 0.20304817203010916
	.quad	0x3fc30ce1db651108              # double 0.14883063519130979
	.quad	0x3fe3a33701e84b2f              # double 0.61367369053400533
	.quad	0x3fe851380c77a2bd              # double 0.75991442141556542
	.quad	0x3fa0387f011522a0              # double 0.03168103111471976
	.quad	0x3febad59e2543a3d              # double 0.86491102414021948
	.quad	0x3fd06662d24cd670              # double 0.25624914681552635
	.quad	0x3fe8fa46ac7f765c              # double 0.78055127802845047
	.quad	0x3fe62701b7653bcf              # double 0.69226156062529209
	.quad	0x3fc770fbe110cfdc              # double 0.18313549508604765
	.quad	0x3fed533f1579d867              # double 0.91641191668055633
	.quad	0x3fe92665f7d37ca4              # double 0.78593729404009993
	.quad	0x3fe6bf81eb4db2d7              # double 0.71087737996784994
	.quad	0x3fe15a0e1aa3f119              # double 0.54224305346682222
	.quad	0x3fc6fe5a5a091fb4              # double 0.1796372356059216
	.quad	0x3feab97c8160ff21              # double 0.83514237660708457
	.quad	0x3fe33b0ddf56a667              # double 0.60095876332088671
	.quad	0x3fe874f9ee01f565              # double 0.76427933202618858
	.quad	0x3fd0c501291eed9c              # double 0.26202420249657066
	.quad	0x3fd2cb268768656e              # double 0.29364932273309463
	.quad	0x3fe7e827d84be2e9              # double 0.74708931203266815
	.quad	0x3fdf135b2e701c32              # double 0.48555640730814098
	.quad	0x3fc7df5d25920638              # double 0.18650402388088749
	.quad	0x3fcdc54940a965f0              # double 0.23258319527921811
	.quad	0x3fe037806ca92e16              # double 0.50677510474037279
	.quad	0x3feeb21021470496              # double 0.95923620700354451
	.quad	0x3fe2b3c64481df54              # double 0.58444512729964027
	.quad	0x3fc2cf03d66821f8              # double 0.1469425961406754
	.quad	0x3fecd42822511693              # double 0.90089804365625736
	.quad	0x3fba812cbcff37e8              # double 0.10353355039771339
	.quad	0x3fe907a307c3253a              # double 0.78218223110267293
	.quad	0x3fea22d7c29bac87              # double 0.81675327309984957
	.quad	0x3fd12d3dd86f2a6a              # double 0.2683863271346697
	.quad	0x3fe42d69c847b999              # double 0.63054360501500917
	.quad	0x3fefa4bffd7d84ac              # double 0.98886107930970501
	.quad	0x3febf27df5934ce3              # double 0.87335107768958797
	.quad	0x3fe7bf11a0c7ba5c              # double 0.74207383539562555
	.quad	0x3fc62d55e8f3852c              # double 0.17325853228161614
	.quad	0x3fd1bc2b95f53462              # double 0.2771100010330142
	.quad	0x3fe432f68a6334bc              # double 0.63122107533276717
	.quad	0x3fe1af445f1005ba              # double 0.55264490668212507
	.quad	0x3fc4f3c8941479ec              # double 0.16368968229740177
	.quad	0x3feea3f7fdef310d              # double 0.9575157127051469
	.quad	0x3fe3510ae2b987ee              # double 0.60364288599180127
	.quad	0x3fb3d22475223c80              # double 0.07742526874265998
	.quad	0x3f882dbfa56c2f00              # double 0.011806008563801651
	.quad	0x3fc0108ec48f08fc              # double 0.12550530049890785
	.quad	0x3febffd3fb4a8dfc              # double 0.87497901039426961
	.quad	0x3fe0a25550b19fc7              # double 0.51981607208744485
	.quad	0x3f8d103d07e2c2c0              # double 0.014191128543047937
	.quad	0x3fe61f1cba269c71              # double 0.69129787786086017
	.quad	0x3fc095fd6e9ac638              # double 0.12957733059515575
	.quad	0x3fe5f91391a9c77e              # double 0.68665483903735924
	.quad	0x3fd9b08b574931ce              # double 0.40140040897383933
	.quad	0x3fc0862e70e9f374              # double 0.12909489167568788
	.quad	0x3feffdd01d7c1f13              # double 0.9997330261112175
	.quad	0x3fe4113f26bbf672              # double 0.62710530820159094
	.quad	0x3fe04bd48288b010              # double 0.5092566060534427
	.quad	0x3feeb416b301ff7e              # double 0.95948348009549966
	.quad	0x3fc98e9b515a09f8              # double 0.19966451141597452
	.quad	0x3fdbffdee33aaf22              # double 0.43749210539202654
	.quad	0x3fe209bf4e21fef7              # double 0.56368985424339157
	.quad	0x3fdc6990d55a34aa              # double 0.44394322238151551
	.quad	0x3fd676eec6483d9e              # double 0.35100907672400605
	.quad	0x3fe0605d62b4ba3f              # double 0.51176327970990332
	.quad	0x3feb6aa10ab99adf              # double 0.85676624388437606
	.quad	0x3fd223333e5778b6              # double 0.28339844787650337
	.quad	0x3fe49c11ef5c39e5              # double 0.64405152082491368
	.quad	0x3fe2cfad974dad28              # double 0.58785132934045681
	.quad	0x3fe9b0bf505ec8f8              # double 0.80282560059848063
	.quad	0x3fe2ba60616d2555              # double 0.5852510359629074
	.quad	0x3fdee6e1b4c12c18              # double 0.4828418984586178
	.quad	0x3febfda5c60d9d94              # double 0.87471283609640915
	.quad	0x3fe481ef33af781f              # double 0.64086113066491979
	.quad	0x3febd73100f30309              # double 0.87001848397639592
	.quad	0x3fea76063e7ccdf6              # double 0.82690727429002098
	.quad	0x3fe6b5b47040dba6              # double 0.70968076633913735
	.quad	0x3fd80a77edce6824              # double 0.37563894484776683
	.quad	0x3fe4d41429580446              # double 0.65088852000202091
	.quad	0x3fc5cd4f63cbf9f4              # double 0.17032806752099783
	.quad	0x3fed0f41571fabe2              # double 0.90811221138335108
	.quad	0x3fe4a58ac5a28872              # double 0.64520777321400957
	.quad	0x3feef45db45921bd              # double 0.96732983803035887
	.quad	0x3fe346c03089a602              # double 0.60238656501786658
	.quad	0x3fd378b33ab0ce18              # double 0.30424195033558155
	.quad	0x3fd520e1a5daa982              # double 0.33013192364401089
	.quad	0x3fdb141a4397a9ba              # double 0.4231019649584159
	.quad	0x3fd810c7759d6394              # double 0.3760241173345602
	.quad	0x3fd4fa99ad686558              # double 0.32779542860369792
	.quad	0x3fd210a14e5fb63c              # double 0.28226502088259386
	.quad	0x3fb8aab837ff3d38              # double 0.096354974433087714
	.quad	0x3fcd9413c724d3e0              # double 0.23108145927258672
	.quad	0x3fe9a2da9759e605              # double 0.80112962303900359
	.quad	0x3fe75e9632ebde6b              # double 0.73029622979715947
	.quad	0x3fb85668235af658              # double 0.09506846297423388
	.quad	0x3fefa8f7faa85c1c              # double 0.98937605816434226
	.quad	0x3fe62737cd9b672e              # double 0.69228735120416274
	.quad	0x3fb383a449054358              # double 0.076227443530354377
	.quad	0x3fd717ab87df4120              # double 0.3608197047115187
	.quad	0x3fdfefc14e95926c              # double 0.49900849031681704
	.quad	0x3fcfaa703ca7d6a0              # double 0.24738886796665316
	.quad	0x3f90d8c40b2d9b00              # double 0.016451895887622747
	.quad	0x3fc2039b5463e00c              # double 0.1407350694714754
	.quad	0x3f95932424bac3e0              # double 0.021069111577791122
	.quad	0x3fe336ff3cf49886              # double 0.60046350388871939
	.quad	0x3fbafa7eeb4e8660              # double 0.10538476223748594
	.quad	0x3fd290c4db8c5caa              # double 0.29008599701178162
	.quad	0x3fd59dec9760f08e              # double 0.33776392729829119
	.quad	0x3fe2c35e9b6383dc              # double 0.5863488230644367
	.quad	0x3f8f862adc2c0300              # double 0.015392622799028199
	.quad	0x3fbeb264761b8e90              # double 0.11990955241668133
	.quad	0x3fe4d6c2e678da72              # double 0.65121598257139923
	.quad	0x3fd07bee8179f960              # double 0.25756418842492756
	.quad	0x3fb8df327de58708              # double 0.09715571950576074
	.quad	0x3fed7a2216b9c556              # double 0.92115883291823297
	.quad	0x3fe0db838f4c3695              # double 0.52679613101800504
	.quad	0x3f9fd35dbc465dc0              # double 0.031079735390077579
	.quad	0x3fea385b99e86e4b              # double 0.8193796163572612
	.quad	0x3fc0d4b42de2b28c              # double 0.13149120560173733
	.quad	0x3fea27c47a047fdd              # double 0.81735442954595394
	.quad	0x3fb8d74aef98ed58              # double 0.097035106177761121
	.quad	0x3fe727f89cf12547              # double 0.72362929012994293
	.quad	0x3fd67c8ce671a91c              # double 0.35135195259376117
	.quad	0x3fc4642e3ef2f088              # double 0.15930727075272366
	.quad	0x3feeceb85a79656f              # double 0.96273439093344659
	.quad	0x3fe7133bc45a810f              # double 0.72109783506678748
	.quad	0x3fe7d08bdce7b372              # double 0.74420731683276942
	.quad	0x3fd604f2f36aadf6              # double 0.3440520646206261
	.quad	0x3fd2bda1a140ed76              # double 0.29282418010162503
	.quad	0x3fed46adba4b06c1              # double 0.91487776170125568
	.quad	0x3fd55b0514278458              # double 0.33368041008185889
	.quad	0x3fed2576101ecac0              # double 0.91082289837353159
	.quad	0x3fe3dbbd67e0a868              # double 0.62057371414745166
	.quad	0x3fd93256b4780d60              # double 0.39369742988511369
	.quad	0x3fd76e72f1fd2324              # double 0.36611627227516608
	.quad	0x3fcceea8a8f4e370              # double 0.22603328943094025
	.quad	0x3fd43c2d5e51b63c              # double 0.31617292605264757
	.quad	0x3fee4f09a40ad7b8              # double 0.94714815177461897
	.quad	0x3fd014792119e342              # double 0.25124958260089525
	.quad	0x3fd4f0309e2a8476              # double 0.32716002889544116
	.quad	0x3fe925d837c5ecf2              # double 0.78586970227425312
	.quad	0x3fe042b514f064dd              # double 0.50814298715263428
	.quad	0x3fe823d7c0ba6389              # double 0.7543753399105394
	.quad	0x3fe5e4190a6bee46              # double 0.68409397159070617
	.quad	0x3fe3df0d7524b8b4              # double 0.62097809676722315
	.quad	0x3fe90787f2beaf65              # double 0.78216931735140049
	.quad	0x3fcb94ea082ef140              # double 0.21548200034693288
	.quad	0x3fe9a1aca0aeea94              # double 0.80098563559961855
	.quad	0x3f9e36558688aa80              # double 0.029504143081946044
	.quad	0x3fdf2b37713ae98e              # double 0.4870127301943733
	.quad	0x3fdfe5393018aa60              # double 0.49836568543347504
	.quad	0x3fefead462eb9055              # double 0.99741572685571588
	.quad	0x3fe6a17beb7caf6f              # double 0.70721240991177392
	.quad	0x3fe9d0e51e99a2c5              # double 0.8067498777064307
	.quad	0x3fd7cd99b92c6eda              # double 0.37192385753017521
	.quad	0x3fea9a5c7cf7cc1c              # double 0.83134292991451586
	.quad	0x3fd3c5714a6bf8ba              # double 0.30892593639135735
	.quad	0x3fe2de0983e98bf6              # double 0.58960414661521443
	.quad	0x3fec67f859a1dac5              # double 0.88769166475579964
	.quad	0x3fd7d65849f681ec              # double 0.37245757315579797
	.quad	0x3febcc637c6404c0              # double 0.86869978232439138
	.quad	0x3fe5f96a717bfafd              # double 0.6866962639322477
	.quad	0x3fea4fd6cf5cdc84              # double 0.82224598408255689
	.quad	0x3feb253cb234a2b5              # double 0.84829554372580296
	.quad	0x3fd81f652ab96ed2              # double 0.37691620991038832
	.quad	0x3fd33c7bc1866cfc              # double 0.30056661509452431
	.quad	0x3fdb2177db921e0c              # double 0.42391773645837882
	.quad	0x3fb1e1409a485b90              # double 0.069843328158056162
	.quad	0x3fe36e5a9da26a23              # double 0.60722094333624843
	.quad	0x3fb52911161609a0              # double 0.08265787877284092
	.quad	0x3fe0f1ba6773365d              # double 0.52950782971465638
	.quad	0x3fe2d1bbe1810276              # double 0.58810228389491104
	.quad	0x3fe502a4769f2497              # double 0.65657256286899013
	.quad	0x3fe382fc24d56d73              # double 0.60973937219698227
	.quad	0x3fb825f459940548              # double 0.094329139585188959
	.quad	0x3fe3aa11a7272b47              # double 0.61451037070342174
	.quad	0x3fdb5542d026df14              # double 0.42707891776397955
	.quad	0x3fef52716ee07c22              # double 0.97881385474818594
	.quad	0x3fc060e5384bce58              # double 0.12795701264222958
	.quad	0x3fe12f7048464e69              # double 0.53704084507121508
	.quad	0x3feaa335c2a2b0b4              # double 0.83242309584377105
	.quad	0x3fc655f30ac05b48              # double 0.17449796700449327
	.quad	0x3fea2ac074ee4621              # double 0.81771872365988341
	.quad	0x3fe446d03173e233              # double 0.63364419611668266
	.quad	0x3fb556546aebb798              # double 0.083348537543967871
	.quad	0x3fafad86e8dac5a0              # double 0.06187078087294684
	.quad	0x3fca26ff8713fefc              # double 0.20431512923823181
	.quad	0x3fd529b8f26e4e86              # double 0.3306715362061613
	.quad	0x3fe6a3c4a85cd8cf              # double 0.70749123462044305
	.quad	0x3fca4ee94c678764              # double 0.20553318243679108
	.quad	0x3fcc7870621d6f40              # double 0.22242550650377702
	.quad	0x3fbf298f0b4e6ac0              # double 0.1217278864482223
	.quad	0x3fecee299a2ce78b              # double 0.90407257187256229
	.quad	0x3fdcac82eec8fa9c              # double 0.4480292636762131
	.quad	0x3fe462e49bc30da2              # double 0.63707189962626765
	.quad	0x3fd36805f9d5b296              # double 0.30322408101964393
	.quad	0x3fcb8041e58345ec              # double 0.21485160547904003
	.quad	0x3fe77c321d67c1bf              # double 0.73391061537954971
	.quad	0x3f9ea5fad8a08ee0              # double 0.029930037948488031
	.quad	0x3fb9329aca865e40              # double 0.098428415722417562
	.quad	0x3fd79f4d58f56bf8              # double 0.36909803092356652
	.quad	0x3fe8a9645edb9a00              # double 0.770677743214776
	.quad	0x3feb31959e919873              # double 0.84980278940635257
	.quad	0x3fe2903e61a0b5d9              # double 0.58010787074970971
	.quad	0x3fd6577d18e3b18e              # double 0.34908988409622388
	.quad	0x3f9b333dc27852e0              # double 0.026562657351024366
	.quad	0x3feba88b3e498932              # double 0.86432420888403372
	.quad	0x3feb80578d42cc01              # double 0.85941674795174106
	.quad	0x3fd4d90b8d6feaac              # double 0.32574738323425367
	.quad	0x3fe479b5975e2080              # double 0.63985709728241602
	.quad	0x3feaf1a470eb307f              # double 0.84199735693393041
	.quad	0x3fc4c5e9b6ebe158              # double 0.1622898238345083
	.quad	0x3fbf618ea9226550              # double 0.12258235577828214
	.quad	0x3fd60784b75068f0              # double 0.34420888807075212
	.quad	0x3fef1abde785b21d              # double 0.9720143815916945
	.quad	0x3fe0596b7a912d3f              # double 0.51091550768743577
	.quad	0x3fde9ed3124a39be              # double 0.47844387804152777
	.quad	0x3fe72ea03b420bd4              # double 0.72444163869692568
	.quad	0x3fc31a96202524d8              # double 0.14924885339340821
	.quad	0x3fe2254fdda91f7c              # double 0.5670546845731077
	.quad	0x3fd9555cf857c8cc              # double 0.3958351540778835
	.quad	0x3fe90fdb0ad9dbc0              # double 0.78318550223672645
	.quad	0x3fd6943b4c419406              # double 0.35279734084025482
	.quad	0x3fd02d70b0be04b6              # double 0.25277344951616543
	.quad	0x3fc85c380cefe944              # double 0.19031429893204621
	.quad	0x3fd497b4fd88bcd2              # double 0.32175946006004807
	.quad	0x3fd7299a659eeb68              # double 0.36191425250915765
	.quad	0x3fc942ced695a2a0              # double 0.19735131719359789
	.quad	0x3fe8c76ba35d2f32              # double 0.77434331805259249
	.quad	0x3fe105ae39291c6d              # double 0.53194342769792302
	.quad	0x3fedc2fec06e912b              # double 0.93005311569553351
	.quad	0x3fd78691b2dc67ea              # double 0.36758844820872005
	.quad	0x3fccc1feec633250              # double 0.22467028181417215
	.quad	0x3fd3afe69d3fce9c              # double 0.30761113506671633
	.quad	0x3fec2b95da66c0bb              # double 0.8803204789783402
	.quad	0x3feb71180f4c68f3              # double 0.85755541789992973
	.quad	0x3fe7d918f87843ab              # double 0.74525116471533204
	.quad	0x3fd859dc56335cbe              # double 0.38048466127424863
	.quad	0x3fefc559fc600860              # double 0.99284076015488764
	.quad	0x3fcfee1695f51760              # double 0.24945337602747042
	.quad	0x3fc26d2c5f033c48              # double 0.14395670546807282
	.quad	0x3fe9ff47b2843276              # double 0.81241211763842958
	.quad	0x3fc106d52358e088              # double 0.13302101350723583
	.quad	0x3fe2b779cc895c2b              # double 0.58489694546267879
	.quad	0x3fe46214a77a3903              # double 0.63697273931919118
	.quad	0x3fef39c0324a90d0              # double 0.97579965422166914
	.quad	0x3fceae0525d6c72c              # double 0.23968567226034432
	.quad	0x3fe5f734cc415efa              # double 0.68642654317497365
	.quad	0x3fe76357d2718621              # double 0.73087683775174039
	.quad	0x3fda24f9f8af0424              # double 0.40850686345589993
	.quad	0x3fc3a2a6aaec8370              # double 0.15340121599094969
	.quad	0x3fb299d4cee3b658              # double 0.072659779081470588
	.quad	0x3fec33bc60f5c0a7              # double 0.88131541192526164
	.quad	0x3fe0a256918ba66d              # double 0.51981666972024032
	.quad	0x3fdd31a4a9b3f10e              # double 0.45615498135136157
	.quad	0x3fca948cbc2c5fc0              # double 0.207658378488075
	.quad	0x3faa61e235274980              # double 0.051528042782268635
	.quad	0x3fe8f3b2c4d126fb              # double 0.77974832955189244
	.quad	0x3fd88a0345b8da94              # double 0.38342363175198924
	.quad	0x3fd3590dd13303b2              # double 0.30231042317978585
	.quad	0x3f5a273b5afd8a00              # double 0.0015962676661379627
	.quad	0x3feb67bb0c4973da              # double 0.85641243362226338
	.quad	0x3fda107cf6264198              # double 0.40725635564833729
	.quad	0x3fe7e8f7bb124553              # double 0.74718843972565663
	.quad	0x3fea403ec60750a0              # double 0.82034243276077134
	.quad	0x3fd4f143292e59e0              # double 0.32722548505389959
	.quad	0x3fc798675c190784              # double 0.1843384933181903
	.quad	0x3fd1f5f120dd3836              # double 0.28063610276592799
	.quad	0x3fd7a31c1d3547fa              # double 0.36933043339115523
	.quad	0x3fea17682f3d6278              # double 0.8153572962429072
	.quad	0x3fe339e4dfb0dffc              # double 0.60081714334137315
	.quad	0x3fddc7ed5dea8c9c              # double 0.46532758876328173
	.quad	0x3fe584067c824985              # double 0.67236637418891176
	.quad	0x3fe9c9f38ed0dd97              # double 0.8059022702572517
	.quad	0x3fb11630b9228a20              # double 0.066744847487406833
	.quad	0x3fc0f4e88a49d180              # double 0.13247401001320824
	.quad	0x3fd06899042b8f94              # double 0.25638413817636629
	.quad	0x3fe79446e8bf3982              # double 0.73685021837609121
	.quad	0x3fb7e7e4f881de40              # double 0.093382177992560322
	.quad	0x3fec2a004eff66ec              # double 0.88012710026961604
	.quad	0x3fe86035049e2161              # double 0.76174403097051535
	.quad	0x3fed72b78f815dde              # double 0.92025354412447391
	.quad	0x3fe61f8518dd7d73              # double 0.69134764534457671
	.quad	0x3fd32e49138ebcbe              # double 0.29970003995817851
	.quad	0x3fbcd09296202598              # double 0.11255756535697115
	.quad	0x3fe511aadca7413b              # double 0.65840666862826625
	.quad	0x3fdb7e87a345eda4              # double 0.42959776825565599
	.quad	0x3fd6463468494bf2              # double 0.34803495582781274
	.quad	0x3fe2bb2fa695644f              # double 0.58534987006999895
	.quad	0x3facf49fc92f7d10              # double 0.056553834255959612
	.quad	0x3fb8f4799c312410              # double 0.097480393059541592
	.quad	0x3fe1ba8961261a41              # double 0.55402058576948587
	.quad	0x3fc9ec0ddf7c8f44              # double 0.20251630222730388
	.quad	0x3fea077b31d0baaf              # double 0.81341323594627635
	.quad	0x3fc5b173e2218684              # double 0.16947792569685671
	.quad	0x3fdb90f9c1eec8a8              # double 0.43072360934014364
	.quad	0x3fd470ddd275da48              # double 0.3193888240124676
	.quad	0x3fa4ff29a63d0fd0              # double 0.041009236853397746
	.quad	0x3f91717e08286b60              # double 0.017034501312177652
	.quad	0x3fc7082d02c9868c              # double 0.17993700634092524
	.quad	0x3fc2b882b2a992b4              # double 0.14625581477880234
	.quad	0x3f852dc14c42d9c0              # double 0.010341177120022915
	.quad	0x3fe8b53e71ac7186              # double 0.7721245021999017
	.quad	0x3fec74d136273a85              # double 0.88925991608432808
	.quad	0x3fe1bc56b99ddd7c              # double 0.55424057248357839
	.quad	0x3fee53e4126bd455              # double 0.9477405891217453
	.quad	0x3fe2f5bf38065a5a              # double 0.59249840681406885
	.quad	0x3fe0389629d3d827              # double 0.50690754098355206
	.quad	0x3fd5ec9dd2c83148              # double 0.3425669248979557
	.quad	0x3fee042015dde5eb              # double 0.93800358076913193
	.quad	0x3fd6d9ba97912cc4              # double 0.35703911591981474
	.quad	0x3fcbaf387a8cf71c              # double 0.21628480895918123
	.quad	0x3fa2c469d924ef70              # double 0.036654765850896776
	.quad	0x3fd277b5d42a0a62              # double 0.28855653494989586
	.quad	0x3fd717552ecca1e6              # double 0.36079911775826046
	.quad	0x3feb97c75782c775              # double 0.8622776707836538
	.quad	0x3fe7309cd0ff1ad5              # double 0.72468415088300253
	.quad	0x3fd5b6fd44ef3328              # double 0.33929378253815168
	.quad	0x3fd765e0fb0ce7ae              # double 0.36559319035188309
	.quad	0x3fcfc047bcc32e58              # double 0.24805542675891235
	.quad	0x3fe6d9766fce2a84              # double 0.71404573285083517
	.quad	0x3fab7bf7acd53ce0              # double 0.053680171821378186
	.quad	0x3fe4d177bc11861a              # double 0.6505697892391169
	.quad	0x3fd07e14bf572f0c              # double 0.25769537625886652
	.quad	0x3fc1219809e651bc              # double 0.13383770450003662
	.quad	0x3fe7fb41fa594d5f              # double 0.74942110916382976
	.quad	0x3fd9dbe526ca9d12              # double 0.40404633320072592
	.quad	0x3fd90fc5fafc009e              # double 0.39158772955125609
	.quad	0x3fe274ed10d85074              # double 0.57677319803270999
	.quad	0x3fe75cab9856d504              # double 0.73006229165790204
	.quad	0x3fe2c92ea5edced4              # double 0.58705837638850733
	.quad	0x3fdd0327c06c465a              # double 0.45331758300117075
	.quad	0x3fdc79b9b69305da              # double 0.44492953137895841
	.quad	0x3fe86191eec7069f              # double 0.76191040645808872
	.quad	0x3fefda76c2973903              # double 0.99541795736311688
	.quad	0x3fb3d79f3980ad00              # double 0.077508880175333417
	.quad	0x3fe55f81c8060105              # double 0.66790856425362277
	.quad	0x3fe4b3f5f44adc8e              # double 0.64696786607136558
	.quad	0x3fe746e5ef6c8b1f              # double 0.72740456354617666
	.quad	0x3fef622ecb6148a3              # double 0.98073520395907498
	.quad	0x3fed45a661314309              # double 0.91475218756576837
	.quad	0x3fe377ff9c47e080              # double 0.60839825175845874
	.quad	0x3fee686a0dbd60e7              # double 0.95024588283106659
	.quad	0x3fe056378f7dc271              # double 0.51052454019197857
	.quad	0x3feb299ba9188f5e              # double 0.84882910753774943
	.quad	0x3fd80d07d7e416ac              # double 0.37579532702543861
	.quad	0x3fe245e8401c5a93              # double 0.57103359719879376
	.quad	0x3fca320d96bd9e48              # double 0.20465249882112091
	.quad	0x3fe79406f4c2edbb              # double 0.73681972317665811
	.quad	0x3fdaf798b633e156              # double 0.42136209290722115
	.quad	0x3fe691d98b2f6520              # double 0.70530392822834997
	.quad	0x3fe87834d26caaed              # double 0.76467362497836933
	.quad	0x3fd70972f2a6255e              # double 0.35995172210876614
	.quad	0x3fe0b7ee42d04d04              # double 0.52245247888132029
	.quad	0x3f7686b5a00b7780              # double 0.0054995627149007076
	.quad	0x3fcb2a3c421189e4              # double 0.2122264216041706
	.quad	0x3fdfda7235d2aa94              # double 0.49770789390701364
	.quad	0x3fdb2f0be9ff35e0              # double 0.42474649287473021
	.quad	0x3fd53c1c3666baa2              # double 0.33179383576035992
	.quad	0x3fec9a230ee207a9              # double 0.89381554514715333
	.quad	0x3febd8b6e11aa33c              # double 0.87020439115176584
	.quad	0x3fa3909b78bd9910              # double 0.038212641228527855
	.quad	0x3fd45b4071b49862              # double 0.31806956390426511
	.quad	0x3fe6f3e13bf05ab5              # double 0.71727048594296738
	.quad	0x3fd155de8720065c              # double 0.27086604305086381
	.quad	0x3fc815f3db362d40              # double 0.18816993907635471
	.quad	0x3fb714584f70ac80              # double 0.090154189486087332
	.quad	0x3f90634fa95f1bc0              # double 0.016003842079751029
	.quad	0x3fd75c20179ef250              # double 0.36499788576819459
	.quad	0x3fe9d4b9bfaadec4              # double 0.80721747813273525
	.quad	0x3fe9e6936e683084              # double 0.80939647258630076
	.quad	0x3feb818094545e60              # double 0.85955838175409482
	.quad	0x3fe805a0bf2dc387              # double 0.75068700160601132
	.quad	0x3fee8ac48825c767              # double 0.9544394168026259
	.quad	0x3fda7e54d819db0a              # double 0.41396065810788285
	.quad	0x3fce4e421bc81228              # double 0.236763251843642
	.quad	0x3fe9336dd8631828              # double 0.78752796424010274
	.quad	0x3fdda1b49e1e32e0              # double 0.46299472275931741
	.quad	0x3fc99fd57ec4fb08              # double 0.20019024553217712
	.quad	0x3fe6849dd70c6074              # double 0.70368854524259783
	.quad	0x3fceebf46c91a7ec              # double 0.24157576848239104
	.quad	0x3fd601a0d8278e4c              # double 0.3438493834384857
	.quad	0x3fcd140ec6ecd8b8              # double 0.22717461312430998
	.quad	0x3fd4fa36e324a988              # double 0.32777187520937234
	.quad	0x3fe24526ed868467              # double 0.57094141380015351
	.quad	0x3fe937e4210b852a              # double 0.78807264761068052
	.quad	0x3fe5e0d110164ba4              # double 0.68369343893060774
	.quad	0x3fe4651f2a4f6bbd              # double 0.63734396232336332
	.quad	0x3fedb1a9d8daa1eb              # double 0.92793743471434931
	.quad	0x3fe7a3b3fcdcbfc1              # double 0.73873328578155661
	.quad	0x3fe566aef44936bb              # double 0.6687845965586442
	.quad	0x3fccb85e516ad214              # double 0.22437647796108762
	.quad	0x3fd2433a1a1c034c              # double 0.28535320806263509
	.quad	0x3fc073b521bab178              # double 0.12853111407219919
	.quad	0x3f9d462345a7fb20              # double 0.028587866903758585
	.quad	0x3fd7b0db06caef6c              # double 0.3701694074950328
	.quad	0x3fc346a385475a6c              # double 0.15059322364568872
	.quad	0x3fd5747970c1d3d2              # double 0.3352340317863397
	.quad	0x3fed239e5cc8661e              # double 0.91059797402994369
	.quad	0x3fda80115bf04f38              # double 0.4140666387404397
	.quad	0x3fdd87f9c18018c0              # double 0.4614242925312162
	.quad	0x3fe6be95f64dc81d              # double 0.71076486688821527
	.quad	0x3fef98394d21ff2e              # double 0.98733201088905331
	.quad	0x3feda431ee8ca225              # double 0.92629334060353996
	.quad	0x3fe1fd3bbf701aa3              # double 0.5621622790357218
	.quad	0x3fe8802bb9d484d6              # double 0.76564585013343378
	.quad	0x3fc70d9025586ec8              # double 0.18010141204364616
	.quad	0x3fc1ae58b3096208              # double 0.13813313238166836
	.quad	0x3fe5dbcf47fc1c79              # double 0.6830822378114042
	.quad	0x3fef3f9d0b04292d              # double 0.97651531364070864
	.quad	0x3fd1fba9da96a658              # double 0.28098532053500014
	.quad	0x3fc9f65c65d66864              # double 0.20283083889518416
	.quad	0x3fd664e542ea655a              # double 0.34990817579963152
	.quad	0x3fe1409737263730              # double 0.53913460513442679
	.quad	0x3fd6a125fc5b075e              # double 0.35358571666812633
	.quad	0x3fdd4be2395f8a36              # double 0.45775657275058579
	.quad	0x3fd9cf5376ac7ae4              # double 0.40327917660935797
	.quad	0x3fa38be53e6d6920              # double 0.038176692839174686
	.quad	0x3fde527f71f185a2              # double 0.47378526809014876
	.quad	0x3fdfd0025332afc4              # double 0.49707086682132862
	.quad	0x3fd270a2147db240              # double 0.28812458039354638
	.quad	0x3fe58dda3e16434f              # double 0.67356598020897163
	.quad	0x3fc7ce760800bd24              # double 0.18598819151655122
	.quad	0x3fb598572da7c5f8              # double 0.084355782171563365
	.quad	0x3fc44a4cdd166168              # double 0.15851746363911023
	.quad	0x3fd4fffea3444d44              # double 0.32812467521690203
	.quad	0x3fdfbc433d66bd28              # double 0.49586564060423877
	.quad	0x3febd05af72fa8fe              # double 0.8691840007643632
	.quad	0x3fe393e757500ac4              # double 0.61180464795355549
	.quad	0x3fc444768c98ab20              # double 0.15833932747894952
	.quad	0x3fd032a915891b96              # double 0.25309207060893735
	.quad	0x3fdaf63e87a46f70              # double 0.42127955671616402
	.quad	0x3fc789941175ea98              # double 0.18388605930870905
	.quad	0x3fe9acaa6e012092              # double 0.80232736096606261
	.quad	0x3fc5897782e1e1dc              # double 0.16825765505542634
	.quad	0x3fe4e1e770ef08d2              # double 0.65257618005150619
	.quad	0x3fd214cfe7c87bae              # double 0.28252027163574212
	.quad	0x3fdf683e9baeb5c6              # double 0.49073758319249483
	.quad	0x3feb336b6fe44600              # double 0.85002681592794715
	.quad	0x3fd3f876dabf2fda              # double 0.31204005586618921
	.quad	0x3fe3ea8e1b4ff8c0              # double 0.62238221487475442
	.quad	0x3fe4af64c42800bc              # double 0.64641035377282874
	.quad	0x3fd5e22933736344              # double 0.34192876839147268
	.quad	0x3fc1d2265b2ff6a8              # double 0.13922576382167517
	.quad	0x3fdc1b157c161c52              # double 0.43915307157334837
	.quad	0x3fdcc698cb3ffe84              # double 0.44962138985281563
	.quad	0x3f8b91927af44280              # double 0.013461250664961399
	.quad	0x3f9461100c2a2d60              # double 0.019901514761426653
	.quad	0x3fe85553c05f1b2f              # double 0.76041591236648809
	.quad	0x3fef53e949ac4843              # double 0.97899307622197573
	.quad	0x3fec7c16ae79ffa8              # double 0.89014753415539349
	.quad	0x3fecd2fe2713ef83              # double 0.90075595505139494
	.quad	0x3fd4396977eb44d0              # double 0.31600414954034495
	.quad	0x3fd08368e5def524              # double 0.2580206150849611
	.quad	0x3fcc2bed11cbd1c8              # double 0.22009051674798585
	.quad	0x3fecc734401a9ae8              # double 0.89931690712259371
	.quad	0x3fc408a1a2f53054              # double 0.15651340920374202
	.quad	0x3fef5ff2935176df              # double 0.98046234868135317
	.quad	0x3fee65d60062befd              # double 0.94993114543282753
	.quad	0x3fec40410806a2b5              # double 0.88284350936472455
	.quad	0x3fbf8718e0454df0              # double 0.12315516925200831
	.quad	0x3fe3f77620021be7              # double 0.62395769359215769
	.quad	0x3fd1244568cfd12a              # double 0.26783881412053978
	.quad	0x3fefa5ad14dbcc55              # double 0.9889741332430143
	.quad	0x3fef1cf376cb4ade              # double 0.97228406145071822
	.quad	0x3fd0173444691c50              # double 0.25141627007218847
	.quad	0x3fe5763181c07c56              # double 0.67067790357749391
	.quad	0x3fee4538a45dc1b7              # double 0.94594986059933361
	.quad	0x3fe4cc4196ef735f              # double 0.6499336193042885
	.quad	0x3fe828cb40b74bd4              # double 0.75497973098606019
	.quad	0x3fd0d2a5596f9260              # double 0.26285680517165666
	.quad	0x3fe84208c6ad1f14              # double 0.75806082538562913
	.quad	0x3fcfc88f9492d660              # double 0.24830813173837196
	.quad	0x3fdb6fdaaa3d48cc              # double 0.42870203614178304
	.quad	0x3faeb16dac63cae0              # double 0.059947421353987229
	.quad	0x3fbed6c00b9b47b0              # double 0.12046432765353532
	.quad	0x3fe838087f89687e              # double 0.75683998975297562
	.quad	0x3fced5e2a52ee7c4              # double 0.24090226235949619
	.quad	0x3fde27d18b179342              # double 0.47118033011638627
	.quad	0x3fea56b69bae1b1c              # double 0.82308512121457821
	.quad	0x3fc565ec2bd42930              # double 0.16717292919231275
	.quad	0x3fe98f32b17bbda0              # double 0.79873022713393382
	.quad	0x3fd3e0611a5d49ca              # double 0.31057002615594043
	.quad	0x3fe8e10cb7571a06              # double 0.77747188385620869
	.quad	0x3fd80a5809f3c114              # double 0.37563134166613676
	.quad	0x3fe01b90218700c4              # double 0.50336462543784721
	.quad	0x3fd10deef74ce374              # double 0.26647543096947079
	.quad	0x3feaea1e66202b0b              # double 0.84107894846360531
	.quad	0x3fe88a872bd954f0              # double 0.76691015781639571
	.quad	0x3fd03a5ec49efd68              # double 0.25356263352656194
	.quad	0x3fd881e0e4b82f72              # double 0.3829271539295781
	.quad	0x3fe60f6a61391ff3              # double 0.68938178051848664
	.quad	0x3fd977c97708ec8c              # double 0.39793621658800116
	.quad	0x3fd842249bac64cc              # double 0.37903704836351149
	.quad	0x3fde575b312f7d42              # double 0.47408180049201942
	.quad	0x3fefa88278bb32b7              # double 0.98932002621002979
	.quad	0x3fe749a4c0f835d2              # double 0.72773969354028112
	.quad	0x3fec35d26e1cafbd              # double 0.88157006746541067
	.quad	0x3fca77da424317cc              # double 0.20678261027768341
	.quad	0x3fea499ddf335106              # double 0.82148641198958283
	.quad	0x3fe8d8b8c865a150              # double 0.77645529880559572
	.quad	0x3fab173d092ac5c0              # double 0.052911670083072959
	.quad	0x3fb97bef1a021038              # double 0.099547332620262163
	.quad	0x3fc83c42a4c42610              # double 0.18933899922585384
	.quad	0x3fef0df10f6c8cfe              # double 0.97045186054711485
	.quad	0x3fd9060bdad2827a              # double 0.39099403733602112
	.quad	0x3fb48f0aa28a4c18              # double 0.080307640726730134
	.quad	0x3fb83704a3bc7d20              # double 0.094589509939841054
	.quad	0x3fc61f613db5c97c              # double 0.17283263695896867
	.quad	0x3fee622cf7554ad4              # double 0.94948433215389593
	.quad	0x3fe4fd8c78c94189              # double 0.65595077124639645
	.quad	0x3fe99b4eaaef46fa              # double 0.80020841012648636
	.quad	0x3fe11cf8a9566979              # double 0.53478653978099466
	.quad	0x3fafebd1fd0317d0              # double 0.062346040854705742
	.quad	0x3fe788f58a452ec0              # double 0.73546864515216015
	.quad	0x3fe6a470a5973311              # double 0.70757324544828937
	.quad	0x3f9fd3ec07cd1aa0              # double 0.031081855751177501
	.quad	0x3fdb51312835d980              # double 0.4268305676154327
	.quad	0x3febf5330316cd85              # double 0.87368155101141609
	.quad	0x3fdacd952dea2fa8              # double 0.41879777416101627
	.quad	0x3fe53810914002bf              # double 0.66309383744381722
	.quad	0x3fe4afeb4dca4cbc              # double 0.64647450631527859
	.quad	0x3fd69c53fb0acd90              # double 0.35329150691833267
	.quad	0x3fddb0d1767fb74e              # double 0.46391712734372426
	.quad	0x3fbd208908e0f668              # double 0.1137776991535816
	.quad	0x3fee29a74af15b46              # double 0.9425846542097609
	.quad	0x3fea9393455dd279              # double 0.83051456020491721
	.quad	0x3fdda1e569da88b2              # double 0.46300635659475653
	.quad	0x3fdebe3511cba5ee              # double 0.48035933244554385
	.quad	0x3fe628888e113ad8              # double 0.69244792697449054
	.quad	0x3fe1f77b30f4f43d              # double 0.56146010934720147
	.quad	0x3fe723e6e953652e              # double 0.72313256808698667
	.quad	0x3fe1a04a337e2503              # double 0.55081663186243224
	.quad	0x3fe11e1d3480ed58              # double 0.53492603544820394
	.quad	0x3fd7c8cc47ed3624              # double 0.37163073562700988
	.quad	0x3fe07160474000d4              # double 0.51383985439317792
	.quad	0x3fd0ab326eb2dbc4              # double 0.26044903574387157
	.quad	0x3fe8d2c5e131864f              # double 0.7757291220006638
	.quad	0x3fd21a862ea2fd1a              # double 0.2828689055858874
	.quad	0x3fe9d715abaa113c              # double 0.8075054505175454
	.quad	0x3fe368df0fc38084              # double 0.6065516765484209
	.quad	0x3fd01ab03478fdcc              # double 0.25162892460135988
	.quad	0x3fc80cbfe06df6e8              # double 0.18788908441995678
	.quad	0x3fe678a90b21671d              # double 0.70222904371187023
	.quad	0x3fdf550dd9aa8aee              # double 0.48956629044020772
	.quad	0x3fc3a59bee16b844              # double 0.1534914886992188
	.quad	0x3fdd1f9b62abd7fe              # double 0.45505413661828686
	.quad	0x3fed8ae27dd80647              # double 0.92320370272518282
	.quad	0x3fb13c14ef65df00              # double 0.067323025175820561
	.quad	0x3fe1487ef061d2ee              # double 0.54009959172853228
	.quad	0x3fd3c5e180ff89b4              # double 0.30895269010047888
	.quad	0x3fc52db16c5d1e18              # double 0.16545694152067436
	.quad	0x3fe6c837c0d27f6e              # double 0.71194064770314269
	.quad	0x3fe624f99d7d7a17              # double 0.69201355705064571
	.quad	0x3feefbace0a73981              # double 0.96822208287794364
	.quad	0x3fe7ce89db036539              # double 0.7439622190096663
	.quad	0x3fe1863974ebb425              # double 0.54763481937482494
	.quad	0x3fc6e2a2e6255c68              # double 0.1787913917312125
	.quad	0x3fd5467a7e8ccf46              # double 0.33242666586305736
	.quad	0x3fe44a471cb64655              # double 0.63406711204351984
	.quad	0x3fe05c5fe7a94000              # double 0.5112761997825146
	.quad	0x3fe80f753501a4f5              # double 0.75188694336716699
	.quad	0x3fcd271d0d76c440              # double 0.2277561488859039
	.quad	0x3fef7d71d14f2fe4              # double 0.98406306153037492
	.quad	0x3fdd5c47e0ce9e8e              # double 0.45875737146204976
	.quad	0x3fbadb6a0651c958              # double 0.10491049436840194
	.quad	0x3fd345d02cf6c8b0              # double 0.30113605872169114
	.quad	0x3fe95dcbcb40d1e2              # double 0.79269971559420704
	.quad	0x3fe54780a1dff813              # double 0.66497832885920827
	.quad	0x3fe7bb6795b5b460              # double 0.74162654152099705
	.quad	0x3fcd4f9b20555990              # double 0.22899188116816704
	.quad	0x3fcaad76883df0f8              # double 0.20841867115439761
	.quad	0x3fe830e3310b5ffa              # double 0.75596770838728777
	.quad	0x3fe724854362e222              # double 0.72320807610873694
	.quad	0x3fe60aed6ba49ac7              # double 0.68883391403218119
	.quad	0x3fd06fc0a49a59ce              # double 0.25682083200936467
	.quad	0x3fefba3f38362730              # double 0.99148522356811064
	.quad	0x3fe560a43a403eee              # double 0.66804705979481382
	.quad	0x3fe8e215d0354954              # double 0.77759829202322316
	.quad	0x3fccfdeb19c41164              # double 0.22649897344684711
	.quad	0x3fdad6da1a8b1f92              # double 0.41936352340825878
	.quad	0x3fc5084c42c7d8ec              # double 0.16431573162817104
	.quad	0x3feb27e5b86a4184              # double 0.84862028139654954
	.quad	0x3fd27df7c7bf7bc8              # double 0.28893846995009342
	.quad	0x3fca7b7993d7f06c              # double 0.2068931552784109
	.quad	0x3fe80736c475d384              # double 0.75088060732979089
	.quad	0x3fece79aa2a7d868              # double 0.90327197807961301
	.quad	0x3fe8058229037dce              # double 0.75067241678692098
	.quad	0x3fdd7e1fbc68ae84              # double 0.46082299613292599
	.quad	0x3fdb2bd500e2e08e              # double 0.42455029570147296
	.quad	0x3fe69405c055076b              # double 0.7055691486823269
	.quad	0x3fd045a3b21205ca              # double 0.25425045385062772
	.quad	0x3fe5709956d0edab              # double 0.66999499279284203
	.quad	0x3fe583e728fe1399              # double 0.67235143667550112
	.quad	0x3fd09a1a40696b32              # double 0.25940567293371253
	.quad	0x3f9b2fd8137e5ce0              # double 0.026549698056979376
	.quad	0x3fcd41aa9ece3140              # double 0.22856648210689379
	.quad	0x3fd501a8edcb094c              # double 0.32822631093963106
	.quad	0x3fdbedce23c453a0              # double 0.43638947956906726
	.quad	0x3f622957f90b6100              # double 0.0022169798106511651
	.quad	0x3fe1f3034385f0c6              # double 0.56091464222074516
	.quad	0x3fe52ee9ac265a36              # double 0.66197665808687733
	.quad	0x3fec8c2f88ea5ef6              # double 0.89211251012144888
	.quad	0x3fdcee360bebe85c              # double 0.45203925289354685
	.quad	0x3fd7bffd2c7371d2              # double 0.37109307614244103
	.quad	0x3fe38befcc994fda              # double 0.61083211861341202
	.quad	0x3feecc16bb26ed19              # double 0.96241318276534848
	.quad	0x3fd3793fa2059a72              # double 0.30427542517137518
	.quad	0x3fd0870c3f3e3758              # double 0.25824266601636259
	.quad	0x3fe3deba9aa54033              # double 0.62093858913613642
	.quad	0x3fc6b492cee590d8              # double 0.17738566496257735
	.quad	0x3fd325116982a1d4              # double 0.29913745216120202
	.quad	0x3f572f1870410c00              # double 0.0014150370270875623
	.quad	0x3fe684c467b124d5              # double 0.70370693447434951
	.quad	0x3fec245b6e89cd33              # double 0.87943812932500121
	.quad	0x3fea3e8074657a23              # double 0.82012961133643036
	.quad	0x3fe8b19c593e90f7              # double 0.77168099813982749
	.quad	0x3feb50ca2e8e5d73              # double 0.85361203282347586
	.quad	0x3f7255f8a3140480              # double 0.0044765198119885996
	.quad	0x3fb1599f49859aa0              # double 0.067773776483230908
	.quad	0x3fb94304587b6e10              # double 0.098678847887122111
	.quad	0x3fee721e9e9645a8              # double 0.95143061613105306
	.quad	0x3fed4548a6ef9fca              # double 0.91470749478048075
	.quad	0x3fce61bf22de0770              # double 0.23735799028878146
	.quad	0x3fe5e2ce40c05ac6              # double 0.68393623968844319
	.quad	0x3fd599ddd4a52878              # double 0.33751626745345886
	.quad	0x3fed0c6aac417235              # double 0.9077657093399184
	.quad	0x3fd3b889d498285e              # double 0.30813833008926916
	.quad	0x3fcd72993fc00bb8              # double 0.2300597726135416
	.quad	0x3fc2ff66439fb3a0              # double 0.14841917325921106
	.quad	0x3fea8bc2a89f365e              # double 0.82956059392899895
	.quad	0x3feb37b33f3c2d1a              # double 0.85054933882330208
	.quad	0x3fef24f4219faa0f              # double 0.9732609421456021
	.quad	0x3fdcc48125b962c0              # double 0.44949368175506876
	.quad	0x3fe9d5daf74aad1b              # double 0.80735538767968096
	.quad	0x3fe4d377e11edb40              # double 0.65081399887899494
	.quad	0x3fd03bf21d8dfa6a              # double 0.25365879903976085
	.quad	0x3fe0a26ed0b7fb88              # double 0.51982823148124258
	.quad	0x3fefcbefd963b6a9              # double 0.99364464243781924
	.quad	0x3fda4644f9fa7e74              # double 0.41053890621149169
	.quad	0x3fecf308dc4cfbf0              # double 0.90466731097683173
	.quad	0x3fea6b2cd874cee1              # double 0.82558290745370411
	.quad	0x3feca9404930acee              # double 0.89566053671788182
	.quad	0x3fb1a9d61532f410              # double 0.06899774568132977
	.quad	0x3fe8f99bfc9b089b              # double 0.7804698880866171
	.quad	0x3fc41fee8d0e1ca4              # double 0.15722448241669895
	.quad	0x3fd286bb68a0f530              # double 0.28947339265490069
	.quad	0x3fee2fd44524a469              # double 0.94333852295416165
	.quad	0x3fa0ff30b3a330b0              # double 0.033196947029496271
	.quad	0x3fe1820005894c76              # double 0.54711915093720509
	.quad	0x3fef1f177116e9fe              # double 0.97254535758776206
	.quad	0x3fda28a3558641b2              # double 0.40873034812923514
	.quad	0x3fec92a8e55e311f              # double 0.89290280149865342
	.quad	0x3fdd4a128a0efc06              # double 0.4576460216739523
	.quad	0x3fd9e5b341273698              # double 0.40464478838553353
	.quad	0x3fca31bf231c94e8              # double 0.204643146652564
	.quad	0x3fe9b689ff4143d8              # double 0.80353259901505236
	.quad	0x3fd0d71319cfb482              # double 0.26312711258544408
	.quad	0x3fd69dd66373201e              # double 0.3533836337269366
	.quad	0x3fb0b85a2f828878              # double 0.065312992667289183
	.quad	0x3fd3e4955a89786c              # double 0.31082662431243224
	.quad	0x3fc69e6dcf88f028              # double 0.17670986779728648
	.quad	0x3fdc9ee99b86f1fe              # double 0.44719925106235781
	.quad	0x3fbcb469cde9ca38              # double 0.11212788846186406
	.quad	0x3fe9ebf621504627              # double 0.81005388742977835
	.quad	0x3f945d094e57e0c0              # double 0.019886155516332549
	.quad	0x3fe3e1b7d1fb0941              # double 0.62130347263181573
	.quad	0x3fe99eddc3532c50              # double 0.80064285420793091
	.quad	0x3fe0072036502d7d              # double 0.50086985214277002
	.quad	0x3fd18c6fcd5f73ec              # double 0.27419657760566341
	.quad	0x3fe0b1230e44c9fc              # double 0.52162316119057506
	.quad	0x3fe40ca190e4886c              # double 0.62654188441616787
	.quad	0x3fe9a0ab047f0192              # double 0.80086279752872458
	.quad	0x3fef3a4ccdde9b60              # double 0.97586670121095764
	.quad	0x3fe9debba451e008              # double 0.80843908399310838
	.quad	0x3fe1c015ea0ac414              # double 0.55469794951761964
	.quad	0x3fea7ed984dbfb40              # double 0.82798458050806545
	.quad	0x3febbcb7777761e9              # double 0.86678670247334566
	.quad	0x3fbfb0ac35281858              # double 0.12378956125039176
	.quad	0x3fee6b85c5a1524e              # double 0.95062531089440383
	.quad	0x3fe9cb3e9f01419c              # double 0.806060133511028
	.quad	0x3fe25fb8bdaddae6              # double 0.57418477102950471
	.quad	0x3fe1b3ae8baae5f1              # double 0.55318381575415121
	.quad	0x3fdde596377d2e2c              # double 0.46713786524626033
	.quad	0x3fe05837a1d3ca83              # double 0.51076871497055298
	.quad	0x3fca9c4119769e88              # double 0.20789350264862017
	.quad	0x3fc77f0893bdfda4              # double 0.18356425489399186
	.quad	0x3faa9146440f7000              # double 0.051889606292860435
	.quad	0x3fc8c7402d27e318              # double 0.19358064846871836
	.quad	0x3fc22f1b59229cc8              # double 0.14206258632950708
	.quad	0x3fe4d4d36cbf3363              # double 0.65097972144722538
	.quad	0x3f87a7a3e27b3c00              # double 0.011550217007792796
	.quad	0x3fd53eec4234f17e              # double 0.3319655081320646
	.quad	0x3fe6b52006a72795              # double 0.70960999774364331
	.quad	0x3fe60f24da5565f7              # double 0.68934862750319226
	.quad	0x3fd5094b2c8460d8              # double 0.32869223925946534
	.quad	0x3fe3ccb1b2e49b1a              # double 0.6187370771411651
	.quad	0x3fb189e1a03b3f78              # double 0.068510152453425621
	.quad	0x3fea32d032c7f20d              # double 0.81870279234095877
	.quad	0x3fbac935cfb8c0a0              # double 0.1046327240117102
	.quad	0x3fd0bdd1bfe341f6              # double 0.26158565272365253
	.quad	0x3fe9e007c5868976              # double 0.80859745578008702
	.quad	0x3feaca81dd2f2720              # double 0.83722012710606819
	.quad	0x3fdf3a1ed47063ae              # double 0.48792238946912903
	.quad	0x3fe038f6f6bd9f30              # double 0.50695369903130505
	.quad	0x3fc0acbec980f43c              # double 0.13027176703499943
	.quad	0x3fc308401050b130              # double 0.14868927761688999
	.quad	0x3fd4ffaf114e7060              # double 0.32810570421293583
	.quad	0x3f910f0539979f80              # double 0.016658860817102106
	.quad	0x3fd02a55a7a646fa              # double 0.25258389827750671
	.quad	0x3fb09d8669059e68              # double 0.064903641357540232
	.quad	0x3fdde94dbb0580b0              # double 0.46736472381418093
	.quad	0x3feb518577a3d3d3              # double 0.85370133750131527
	.quad	0x3fbd4694727a32d8              # double 0.11435821337563412
	.quad	0x3fe1ab4ee1520e92              # double 0.55216163642804106
	.quad	0x3fe391898fbb9e05              # double 0.61151578972652543
	.quad	0x3fe548757fa06222              # double 0.66509509017038604
	.quad	0x3fc52aa5001c6f28              # double 0.16536390786574739
	.quad	0x3fe00d461679e26d              # double 0.50162033452859378
	.quad	0x3fec35fe834aafc0              # double 0.88159108775061412
	.quad	0x3fe19a90603fc573              # double 0.55011767195371275
	.quad	0x3fe37685ae57c639              # double 0.60821804095593912
	.quad	0x3fefbe59d09bf1f4              # double 0.99198618644692126
	.quad	0x3fa323f96ad22740              # double 0.037383837022459065
	.quad	0x3fd7675ffe8135ba              # double 0.36568450788476137
	.quad	0x3f6fbe8d1deee200              # double 0.003875041598316864
	.quad	0x3fe2091b44f5e209              # double 0.56361163586467555
	.quad	0x3fd0091150270a6c              # double 0.25055344416992997
	.quad	0x3fea9aad81fb6476              # double 0.83138156306371402
	.quad	0x3fef53e98919a549              # double 0.97899319436434339
	.quad	0x3fe3841a1c6646ff              # double 0.60987573191434297
	.quad	0x3fe00bc6ae2aa333              # double 0.50143751160530881
	.quad	0x3feedecc6cb1dc10              # double 0.9646970866150486
	.quad	0x3fef27ee19bf74cb              # double 0.97362427739030843
	.quad	0x3fed742dc662189e              # double 0.9204319834396022
	.quad	0x3fe62c91b63d9147              # double 0.69294057458731906
	.quad	0x3fc71703013839f8              # double 0.18038976249268024
	.quad	0x3fef2ced55a5eaf9              # double 0.97423426368854315
	.quad	0x3fe1439534615391              # double 0.53949985723976301
	.quad	0x3fca2c44ce8584f0              # double 0.20447597583828481
	.quad	0x3fe7d69cac8f5c18              # double 0.74494775488972476
	.quad	0x3fd129a4ac63cbe0              # double 0.26816670260376263
	.quad	0x3febdeb819f6458f              # double 0.87093739577010065
	.quad	0x3fd351dd898bb724              # double 0.30187166626170581
	.quad	0x3fe0614103cd0c3e              # double 0.51187182180763791
	.quad	0x3fdc646ddd85ab06              # double 0.44362970955869263
	.quad	0x3fdf1b27c34aacdc              # double 0.48603242942290392
	.quad	0x3fe09134a81890c8              # double 0.51772530394784955
	.quad	0x3fe6612dcd89dee2              # double 0.69936266083001564
	.quad	0x3fdb81c40ead69f6              # double 0.42979527886714608
	.quad	0x3fee9048cdcac6bf              # double 0.95511284059303836
	.quad	0x3fe4b338424fd4b9              # double 0.64687741233378582
	.quad	0x3fe734d48f08bf9e              # double 0.72519901214944915
	.quad	0x3fe067135e9df51d              # double 0.51258247833144177
	.quad	0x3fae0b4ff7b4d5c0              # double 0.058680056560131089
	.quad	0x3f7cd350b30b4080              # double 0.0070374634094180211
	.quad	0x3fe191b866d40133              # double 0.54903812488195169
	.quad	0x3faa2b8123337d10              # double 0.051113162562382297
	.quad	0x3fd63986fb434270              # double 0.34726118600250455
	.quad	0x3f878e06f099b8c0              # double 0.011501363961738398
	.quad	0x3fd640b5f87409fe              # double 0.34769963515296343
	.quad	0x3fd0ae3173023ba2              # double 0.26063190680809545
	.quad	0x3fdcd852e9cea760              # double 0.45070336182344839
	.quad	0x3fe8cd0b1931671f              # double 0.77502970619682177
	.quad	0x3fdc3f68692c2834              # double 0.44137010832548929
	.quad	0x3fa695600ec4ede0              # double 0.044108392527473006
	.quad	0x3fed3c3090278435              # double 0.91359737544201514
	.quad	0x3fe8d3acb837401f              # double 0.7758391950574185
	.quad	0x3fe6fcae1b4aee7f              # double 0.7183447392521457
	.quad	0x3fdb8f542cb1d6f2              # double 0.43062309612956462
	.quad	0x3fef7f8b328ec1e7              # double 0.98431930422344471
	.quad	0x3fc76da968ae472c              # double 0.18303411113134282
	.quad	0x3fe21e6d74e4b9cb              # double 0.56621430235628034
	.quad	0x3fb8905388a62488              # double 0.0959522446265898
	.quad	0x3fd6a263c612e73a              # double 0.35366148322247037
	.quad	0x3fed0312c69b4480              # double 0.90662516393980752
	.quad	0x3fc3cbebc657483c              # double 0.15466067490211965
	.quad	0x3fc8f709d08c64a4              # double 0.19503901179340233
	.quad	0x3fc3b3c03d00de7c              # double 0.15392306307488812
	.quad	0x3fec30c27e24acd3              # double 0.88095211636882664
	.quad	0x3fd306d95d667690              # double 0.29729303475492319
	.quad	0x3fdf16e8263049fe              # double 0.48577312211378387
	.quad	0x3fdacfcfbca63268              # double 0.41893380568288885
	.quad	0x3fe99a58d8e6ad7f              # double 0.80009119380467542
	.quad	0x3fd78f87be4e285e              # double 0.36813539108755389
	.quad	0x3fda4bd2b7a6eb40              # double 0.41087787565964007
	.quad	0x3fcc71d92fbf6988              # double 0.22222437697821484
	.quad	0x3fc6531732cf64dc              # double 0.17441072445834649
	.quad	0x3feb11a94a18c996              # double 0.84590591880832977
	.quad	0x3fdecd45b2358ca8              # double 0.48127882388343801
	.quad	0x3fc7f09553a9f5a4              # double 0.1870295198931845
	.quad	0x3fe66353c64d616d              # double 0.69962490778838815
	.quad	0x3fc20557163fa094              # double 0.14078796945910155
	.quad	0x3fcd4e3ac1b984b0              # double 0.22894987544262824
	.quad	0x3fd8df12a6bf18b4              # double 0.38861528667292622
	.quad	0x3fdfa0caa31616d2              # double 0.49418893743891801
	.quad	0x3fe6683803dd0ec4              # double 0.70022202257720112
	.quad	0x3fd4f317c66c1dd0              # double 0.32733721139126448
	.quad	0x3fa81313b1367920              # double 0.047020545370502598
	.quad	0x3fb0b4a9f2b2e548              # double 0.065256711723937433
	.quad	0x3fd8f3096fcd6c94              # double 0.38983379286009634
	.quad	0x3fa7b54488dfca60              # double 0.046304837902330531
	.quad	0x3f98e1d7773b0740              # double 0.024299017574555437
	.quad	0x3fe5e7f22b88a7b3              # double 0.68456371786782311
	.quad	0x3fdbd419084c237a              # double 0.43482042131704868
	.quad	0x3fe0b60e58d9c4d3              # double 0.52222363809246486
	.quad	0x3fe263eadde6bf44              # double 0.57469695415600386
	.quad	0x3fedf27276bcf292              # double 0.93584559622793706
	.quad	0x3fd2a4dad06a6850              # double 0.29131193497744778
	.quad	0x3fb79bf58acb5b70              # double 0.09222349775823857
	.quad	0x3fdc733ba252f39e              # double 0.44453326084095035
	.quad	0x3fe752d928edff27              # double 0.72886331552578987
	.quad	0x3fdd836b96f8ea1a              # double 0.46114625686064559
	.quad	0x3fe210cc8445cc1e              # double 0.56455064615727557
	.quad	0x3fc296035d19cdd0              # double 0.14520303770005549
	.quad	0x3feef9333be34f98              # double 0.96791993805753673
	.quad	0x3feec9bdd4c19e69              # double 0.96212665132493413
	.quad	0x3fe4bb3fc61ad296              # double 0.64785755817736645
	.quad	0x3fede48ccbffab0c              # double 0.93414916842934436
	.quad	0x3fb64586691c90d8              # double 0.086998367940910426
	.quad	0x3fb1942ffa0f09a8              # double 0.068667410420892083
	.quad	0x3fe3bb6aa956abf4              # double 0.61662800859391931
	.quad	0x3fde9c45b57a6bb8              # double 0.4782881042717082
	.quad	0x3fcaae09f4dc0eec              # double 0.20843624549899376
	.quad	0x3fb06ead9cbceaf8              # double 0.064188814893821333
	.quad	0x3fc812698fe1a964              # double 0.18806190038169313
	.quad	0x3fefdda1e51491be              # double 0.99580473654037127
	.quad	0x3fe8e1150b90f7f5              # double 0.77747585543670417
	.quad	0x3fe6e48efdbedadc              # double 0.7154002147643399
	.quad	0x3fe5321706df041f              # double 0.66236449567816524
	.quad	0x3fd927ffc2202a7a              # double 0.39306634862501932
	.quad	0x3fc5ce7edd7896b4              # double 0.17036424459472743
	.quad	0x3fef140bf5816bd4              # double 0.97119710874846498
	.quad	0x3fe2684639d4d2e5              # double 0.57522879882034472
	.quad	0x3fed2e55a84b0138              # double 0.9119060790035638
	.quad	0x3fc9f8e1a3e18898              # double 0.20290775777818193
	.quad	0x3feb37d24b7a9668              # double 0.85056414358105048
	.quad	0x3fed173f487eb174              # double 0.90908779296073172
	.quad	0x3fbf968130d9f800              # double 0.12339026873266334
	.quad	0x3fb8bc2ee11d8e30              # double 0.096621446571184987
	.quad	0x3fdd8515789ca36c              # double 0.46124779489996715
	.quad	0x3fcb3d3373961638              # double 0.21280520576344641
	.quad	0x3fb8857c87288c98              # double 0.095786841390280819
	.quad	0x3f93f071734f0920              # double 0.019471905386816535
	.quad	0x3fd25356166ff798              # double 0.28633644286298354
	.quad	0x3fe1ee69c8d92491              # double 0.56035317638556326
	.quad	0x3fa7c3eb75650390              # double 0.046416624145883323
	.quad	0x3fe32ad6df087a64              # double 0.59897941170840996
	.quad	0x3fd49c7ec9fabbce              # double 0.32205171322396786
	.quad	0x3fbacb71f9762648              # double 0.10466682758683377
	.quad	0x3fe35bf7e309b45e              # double 0.60497660010663501
	.quad	0x3fdc133189655898              # double 0.43867147843901355
	.quad	0x3feaec52b2d88c17              # double 0.84134802752339766
	.quad	0x3fc3b24043847d8c              # double 0.15387728974108617
	.quad	0x3fe9e559550cb026              # double 0.80924669848673569
	.quad	0x3fe18f1f790b582b              # double 0.54872106210200877
	.quad	0x3feee39980fa8c11              # double 0.9652831572642545
	.quad	0x3fe435dc617c6f4d              # double 0.63157481231926627
	.quad	0x3fe8e42f400c548b              # double 0.77785456189543944
	.quad	0x3fd171a89cc2ea98              # double 0.27256217297296237
	.quad	0x3fda67434d2a2912              # double 0.4125526670037668
	.quad	0x3fd6f5f098842140              # double 0.35876097578195143
	.quad	0x3fe3526c4d0cf92d              # double 0.60381140755615592
	.quad	0x3fda9233184dd686              # double 0.4151733147949489
	.quad	0x3fed0c6debda6cbf              # double 0.90776725831110372
	.quad	0x3fed7d4a2671ec64              # double 0.92154414662162453
	.quad	0x3fba12ec00d881f8              # double 0.10185122509620459
	.quad	0x3fd041f57c2292e6              # double 0.25402581331790797
	.quad	0x3fdb34217bfcd384              # double 0.42505681141056351
	.quad	0x3fb15fa5f549c328              # double 0.067865726837919582
	.quad	0x3fe3f0f03613974c              # double 0.62316141664335012
	.quad	0x3fd93e776cb63fba              # double 0.3944376527442689
	.quad	0x3fc654ddcc04674c              # double 0.17446491681840326
	.quad	0x3fe32493a23a6771              # double 0.59821492848571556
	.quad	0x3fea426884a6d4ff              # double 0.8206064787724755
	.quad	0x3fe87fc0d20bb30e              # double 0.76559487366248091
	.quad	0x3fe78fd7e7adf070              # double 0.73630900621311746
	.quad	0x3fe9715b23093232              # double 0.79508740275338696
	.quad	0x3fefea671c0121a5              # double 0.99736361951459129
	.quad	0x3fedf52e9f1707f1              # double 0.9361794573999288
	.quad	0x3fdf84a80fb46cac              # double 0.49247170957250819
	.quad	0x3fe737a5530648e4              # double 0.72554269996387832
	.quad	0x3fd3cd9a6d99813c              # double 0.30942402556503956
	.quad	0x3fbcd9c76ae16d48              # double 0.11269804343594558
	.quad	0x3fa6c34980f0aea0              # double 0.044458672513738806
	.quad	0x3fe7f5e1be9c52c4              # double 0.74876486996307578
	.quad	0x3fd1ab2c773f7fea              # double 0.27607261319462728
	.quad	0x3fe7a2da9ac495e8              # double 0.73862962940318955
	.quad	0x3fcd79271234eb58              # double 0.23025978459358032
	.quad	0x3fd863d1e561467c              # double 0.3810925235785374
	.quad	0x3fda1465f2c91024              # double 0.40749500951301543
	.quad	0x3fe9ee2ccac68714              # double 0.81032409290875984
	.quad	0x3fcb0c8404c60850              # double 0.21131944878658482
	.quad	0x3fab06b61a6f5c30              # double 0.052785578467301142
	.quad	0x3fe6268adad94cb4              # double 0.6922048830405374
	.quad	0x3feb1b2be404c2bf              # double 0.84706682715303561
	.quad	0x3feaab0d1e5da7b8              # double 0.83338027888134203
	.quad	0x3fa56ddadbea9530              # double 0.041853751511818138
	.quad	0x3fe97c65d5b1f43e              # double 0.79643527734118158
	.quad	0x3fb2947c58fe0538              # double 0.072578212477328985
	.quad	0x3fe384058c42d468              # double 0.60986592669236206
	.quad	0x3feac557158350b3              # double 0.83658937646625586
	.quad	0x3fe8c8e4f1c39a2f              # double 0.77452323169274517
	.quad	0x3fd134a62348f2f0              # double 0.26883843847080779
	.quad	0x3fa0755a85c6f680              # double 0.032145336942886793
	.quad	0x3fec3b2a51061ceb              # double 0.88222232651687926
	.quad	0x3fd9bcc1e23987c4              # double 0.4021458348489626
	.quad	0x3fe35340f46a4e74              # double 0.60391280877452269
	.quad	0x3febe298e52421d1              # double 0.87141079668168164
	.quad	0x3fdaf076bf02b0ce              # double 0.42092674878473424
	.quad	0x3fe5e968ffb08402              # double 0.68474245013578661
	.quad	0x3fe8edf6defeef15              # double 0.77904838136552945
	.quad	0x3fd60224ad6452c0              # double 0.34388081486512689
	.quad	0x3fd411777009b8f2              # double 0.31356607381066148
	.quad	0x3fe160c2e61e4419              # double 0.54306168503728991
	.quad	0x3fe2df36d5128fc0              # double 0.58974782577251261
	.quad	0x3fefc4b452223da4              # double 0.99276176492451329
	.quad	0x3fecae3561ce170a              # double 0.89626568892046632
	.quad	0x3fe6701e4ea26e9a              # double 0.70118632658291635
	.quad	0x3fe13470acd175ce              # double 0.53765138391070777
	.quad	0x3fea50b562ec1bcb              # double 0.82235211678277531
	.quad	0x3fe1a56d4b712735              # double 0.55144371733442787
	.quad	0x3fe48e93c73d8c62              # double 0.64240445055146389
	.quad	0x3fe8e819928f0270              # double 0.77833250641567808
	.quad	0x3fe79214fa897f82              # double 0.73658226902988155
	.quad	0x3fe2cb2eb50aadbf              # double 0.58730254516324709
	.quad	0x3fdc8b8698ea4144              # double 0.44601597722159547
	.quad	0x3fe41b333860c363              # double 0.62832032214474187
	.quad	0x3fdec77055f1df48              # double 0.48092277901695413
	.quad	0x3fe900752180ff91              # double 0.7813058523533859
	.quad	0x3fba2a93d3ea6f20              # double 0.10221218036388935
	.quad	0x3fe1ca26a1dd7786              # double 0.55592662443426444
	.quad	0x3fe218688100a08a              # double 0.56547951885024017
	.quad	0x3fe426a88720bd29              # double 0.62971903221288017
	.quad	0x3fcf5fba658b450c              # double 0.2451088901348516
	.quad	0x3f884e79c51d6040              # double 0.011868430450405865
	.quad	0x3fe19a09a7c8114b              # double 0.55005343217684677
	.quad	0x3fd2a31597d07448              # double 0.29120387864697195
	.quad	0x3feabde96846a3f2              # double 0.83568258634943349
	.quad	0x3fd9916e8d35cc98              # double 0.39950145521215452
	.quad	0x3fc5949d816b0734              # double 0.16859787768594858
	.quad	0x3fc7acb66f250b74              # double 0.18495827128398512
	.quad	0x3feb7737971b7f94              # double 0.85830287469069554
	.quad	0x3fe38be2d6cbfdd3              # double 0.61082593872554936
	.quad	0x3fbd90ec8318f9b0              # double 0.11549261284469625
	.quad	0x3fedace1ff01188a              # double 0.92735385709308216
	.quad	0x3fd676d7b970296c              # double 0.35100358113472541
	.quad	0x3fe8368ba9ede605              # double 0.75665839375795996
	.quad	0x3fd393140afc011a              # double 0.30585194657034409
	.quad	0x3fe6536e50c24a27              # double 0.6976844384501576
	.quad	0x3fd96e5c976a78ba              # double 0.39736094271382749
	.quad	0x3fb32d32e2439b20              # double 0.074908428421263995
	.quad	0x3fd226ed95a0c464              # double 0.28362598049267818
	.quad	0x3fb00134d8173ab8              # double 0.062518408543136839
	.quad	0x3fd4fd0d1ccaaa6c              # double 0.32794502078710397
	.quad	0x3fd36fddb054bfdc              # double 0.30370275707082128
	.quad	0x3fec44bcb2946a78              # double 0.8833907592664465
	.quad	0x3fe1fa3c42ac821e              # double 0.5617963125442349
	.quad	0x3fea724390b19cc2              # double 0.82644823322780092
	.quad	0x3fe2b954bbb3cb95              # double 0.58512341175661453
	.quad	0x3fcd1670c4dd52b4              # double 0.2272473298313763
	.quad	0x3f939d0bda4d8e20              # double 0.019153771590380342
	.quad	0x3fbe2c7ad827ea30              # double 0.11786620881313392
	.quad	0x3fab2c2eb3873110              # double 0.053071460166025486
	.quad	0x3fe8e618d9ce16c3              # double 0.77808802166028845
	.quad	0x3fee43c68e5ef80a              # double 0.94577338988142512
	.quad	0x3fd6db2bece4cb18              # double 0.35712717184212428
	.quad	0x3fd05368d314d7f8              # double 0.25509091008586848
	.quad	0x3fdad91091d52f8e              # double 0.41949857942085422
	.quad	0x3fe6689005efd420              # double 0.70026398810898982
	.quad	0x3fc48e744baf5ef8              # double 0.16059735961493238
	.quad	0x3fb4b42adc0b2a38              # double 0.080874136659226603
	.quad	0x3fe55ec11f6d27f3              # double 0.66781669748274763
	.quad	0x3f90aced69b1f380              # double 0.01628466565715625
	.quad	0x3fccc9365d7efee8              # double 0.22489051404226434
	.quad	0x3fb87ff3818c6860              # double 0.095702380302471024
	.quad	0x3fa1cebc886633a0              # double 0.034780398989006089
	.quad	0x3fe90f8252c040c0              # double 0.78314319765379281
	.quad	0x3fc9a030892ad9dc              # double 0.20020109841944034
	.quad	0x3fdc120b9ccf0f0e              # double 0.43860140145646731
	.quad	0x3fc1663f4c282ff4              # double 0.13593283861734984
	.quad	0x3fccb2946864f420              # double 0.22419982049351095
	.quad	0x3fe9b0203d347004              # double 0.80274974779195007
	.quad	0x3fe4bb3783ca369c              # double 0.64785361995901125
	.quad	0x3fb4cb426cc02000              # double 0.08122649340668886
	.quad	0x3fcc030f39484670              # double 0.21884336754787936
	.quad	0x3fe0dc3ff2f7e05b              # double 0.52688596205463101
	.quad	0x3faa55af7bcf88f0              # double 0.051434978355034633
	.quad	0x3fcc6df611d84170              # double 0.22210574981046305
	.quad	0x3fa8ad04217c6440              # double 0.048195008361468172
	.quad	0x3fc343ad7bb59f1c              # double 0.15050285854817325
	.quad	0x3fc6f3a56345e90c              # double 0.17931048724478449
	.quad	0x3fef3ddd1907df7e              # double 0.97630171669787535
	.quad	0x3fcd068be4c894a8              # double 0.22676228209562521
	.quad	0x3fd32a0261a7331a              # double 0.2994390443462166
	.quad	0x3fc031e7915d20d8              # double 0.12652296636429727
	.quad	0x3fda628582bda0de              # double 0.41226327674531926
	.quad	0x3fe96040dc88e95e              # double 0.79299967835622076
	.quad	0x3fe1952ae5a5e946              # double 0.54945893147604674
	.quad	0x3f8de470a71a1640              # double 0.014595871066613531
	.quad	0x3fdf502e44049c60              # double 0.48926884310134788
	.quad	0x3fbfd57940747f28              # double 0.12435109923944465
	.quad	0x3fda52d7db9fe84a              # double 0.41130634734839033
	.quad	0x3fc011dd6e257be8              # double 0.12554519537204034
	.quad	0x3fef96e144c7ceee              # double 0.98716796334926271
	.quad	0x3fe04e4c6f62115e              # double 0.50955793146617245
	.quad	0x3fe587bd11888510              # double 0.67281964706868003
	.quad	0x3fc8b3721e76d97c              # double 0.19297625052940848
	.quad	0x3fea783025d4274b              # double 0.82717139614508406
	.quad	0x3fdee381106a92ee              # double 0.48263575175432905
	.quad	0x3fcb7aecacf0cc94              # double 0.21468885845533647
	.quad	0x3fa98ca817e79930              # double 0.049901249807407289
	.quad	0x3fef0f0b69c7a3bb              # double 0.97058649692654996
	.quad	0x3fba946128c10be8              # double 0.10382659192059374
	.quad	0x3fb5c81755ea7530              # double 0.085084398723172638
	.quad	0x3fe758e58c4fcd72              # double 0.72960164456018917
	.quad	0x3fea3ba509945d6e              # double 0.81978084441190702
	.quad	0x3fe74c4f385ebdcd              # double 0.72806511888296088
	.quad	0x3fc0cedfcbc26e9c              # double 0.13131329964823102
	.quad	0x3fee26fa0057e4e8              # double 0.942257881804065
	.quad	0x3feed99d9fefded7              # double 0.96406441915220397
	.quad	0x3fe30a013d8ff730              # double 0.59497129463099974
	.quad	0x3fe454b3e6fd147a              # double 0.63533969035110194
	.quad	0x3fb4180fbc0b67c8              # double 0.078492148789705785
	.quad	0x3fde73ebba27b23e              # double 0.47582524470525189
	.quad	0x3fe23d18d0ab9d93              # double 0.5699581218331552
	.quad	0x3fe09886f6432966              # double 0.5186190423785717
	.quad	0x3fdda2b28f3cdd86              # double 0.46305526722013501
	.quad	0x3fed1ba986a0f333              # double 0.90962673468275168
	.quad	0x3fb6c5a0c045c938              # double 0.088953062955430151
	.quad	0x3fe83727ad2c056f              # double 0.75673278639457731
	.quad	0x3feb200153ae4a72              # double 0.84765688270483808
	.quad	0x3fae70d292324830              # double 0.059454517694704001
	.quad	0x3fcc028e8e43757c              # double 0.21882802912197608
	.quad	0x3fee039edcd0bdff              # double 0.93794196250922812
	.quad	0x3fed57bc721a701b              # double 0.91695997510715033
	.quad	0x3fe6a3fc4115488b              # double 0.70751774512815879
	.quad	0x3fe9033edd00006f              # double 0.7816461864858989
	.quad	0x3fd2f17415a687b4              # double 0.29598714937503279
	.quad	0x3fed05e3fae17f35              # double 0.90696906089940532
	.quad	0x3fd36ed8350f0660              # double 0.30364041501534267
	.quad	0x3fdfebfa797c9016              # double 0.49877797950671388
	.quad	0x3fd3781a09adcf0c              # double 0.30420542664727246
	.quad	0x3fe6e812fc188169              # double 0.7158293651337263
	.quad	0x3fe88c8a8a36b908              # double 0.76715590472102324
	.quad	0x3fe7dfa17fa9af80              # double 0.7460486882605295
	.quad	0x3fe8a1b7ff674dd9              # double 0.76974105723860042
	.quad	0x3fe743d6d2835304              # double 0.7270311462003467
	.quad	0x3fd08346cd1adba6              # double 0.25801248578812375
	.quad	0x3fd534f3f6837c36              # double 0.3313569934234154
	.quad	0x3fdf00cd4e9f8096              # double 0.48442394903214259
	.quad	0x3fd989be3fd3e722              # double 0.39903217538049962
	.quad	0x3fe9dc2a8e3471c5              # double 0.80812576078783904
	.quad	0x3f9b5d70101ddd40              # double 0.026723624213869757
	.quad	0x3fc08bf2b2d36a20              # double 0.12927087527971626
	.quad	0x3fe8dfc46ad011cc              # double 0.77731533872479863
	.quad	0x3fee6c1eb4d989f1              # double 0.95069823572367629
	.quad	0x3fe498ddd1de6a49              # double 0.64366045942308248
	.quad	0x3fd08f58d2d44840              # double 0.25874920452872985
	.quad	0x3fe8d771e51cabd7              # double 0.77629942654072692
	.quad	0x3fdf410c46002d86              # double 0.48834521137242637
	.quad	0x3fbc1b896f689c20              # double 0.10979517908036529
	.quad	0x3fd12c6b637591ee              # double 0.26833615029161606
	.quad	0x3fe0181a1f1c7b2c              # double 0.50294214321534048
	.quad	0x3fdef92750f6720a              # double 0.48395712763320431
	.quad	0x3febd22b8700c13d              # double 0.86940552108539004
	.quad	0x3f6a071e79d41600              # double 0.003177222750880615
	.quad	0x3fbaddc44191daf0              # double 0.10494639015983487
	.quad	0x3fd55abec50907ca              # double 0.33366364709592899
	.quad	0x3fd9241e98e3dbcc              # double 0.39282956057234908
	.quad	0x3fc4f425e7803f78              # double 0.16370080760725236
	.quad	0x3fe944a88f842326              # double 0.78963115721225985
	.quad	0x3fe236c8173bba04              # double 0.56918720758204744
	.quad	0x3fecf0b6a5514b75              # double 0.90438396729073978
	.quad	0x3fd554d823f2366e              # double 0.33330348501554041
	.quad	0x3feec684f3db48b9              # double 0.96173331859815569
	.quad	0x3fc541c81cee64b4              # double 0.16606999790818622
	.quad	0x3fd2f82f1b8c3146              # double 0.29639795007894454
	.quad	0x3f8193340b09b980              # double 0.0085815492504621727
	.quad	0x3fc5747dcdf039d0              # double 0.16761753612122599
	.quad	0x3fb67fe5482a8d70              # double 0.087889032477098671
	.quad	0x3fee3945752c63c6              # double 0.94449112782887634
	.quad	0x3fe32db630d9e291              # double 0.59933003941758234
	.quad	0x3fe1403b05435c45              # double 0.53909064319567135
	.quad	0x3fea48c2fc180ee5              # double 0.82138203847031532
	.quad	0x3fd491d4f67b3a06              # double 0.32140087194866884
	.quad	0x3fef34a2e40a6ac6              # double 0.97517532862851719
	.quad	0x3fe3b4d9a1cecaa3              # double 0.61582643130380565
	.quad	0x3fd6b61f769f2b5a              # double 0.35486589988857065
	.quad	0x3fe892c926ee6fee              # double 0.76791818240917364
	.quad	0x3fec39e8d5080507              # double 0.88206903083497046
	.quad	0x3fd99822c9e899a8              # double 0.39991063802372162
	.quad	0x3fd5ef992cc943f0              # double 0.34274892209674501
	.quad	0x3fe9efb7669864d4              # double 0.81051225698606765
	.quad	0x3fcf78862910bf50              # double 0.24586560254237577
	.quad	0x3fde48a7539e7d18              # double 0.47318442502906199
	.quad	0x3fcf8d1edd1ff080              # double 0.24649415776355355
	.quad	0x3fe53dcec18749a6              # double 0.66379487799195114
	.quad	0x3fe1c94b2e3361d3              # double 0.55582198165489627
	.quad	0x3fec52b32ef2b1d9              # double 0.8850952069238317
	.quad	0x3fda5f417f851264              # double 0.41206395581347111
	.quad	0x3fec1c82448bc3ef              # double 0.87848008525736343
	.quad	0x3fc8fe2d8841ee48              # double 0.19525689271164226
	.quad	0x3fabc063760adff0              # double 0.054202182921869624
	.quad	0x3fe212cd7ed1b737              # double 0.56479525346160286
	.quad	0x3fda9d8b4df4b8ae              # double 0.41586573231587465
	.quad	0x3fec8abdd1453cba              # double 0.89193621514450361
	.quad	0x3fb8e6f2e8c2dd20              # double 0.097274000002347538
	.quad	0x3f8e05ad0f384c40              # double 0.014659263636565112
	.quad	0x3fc213200c81f3a0              # double 0.14120865450595677
	.quad	0x3fded7dbcfba5970              # double 0.48192496572428123
	.quad	0x3fac4767b3014240              # double 0.055232277489839721
	.quad	0x3fe87e523f2e2317              # double 0.76542007770430842
	.quad	0x3f91c34f0ac53ec0              # double 0.017346606285456145
	.quad	0x3fca5b13f6b1e6d8              # double 0.20590447946215451
	.quad	0x3fedf9c73f445b8d              # double 0.93674051625099397
	.quad	0x3fcb7f5fbc282e24              # double 0.21482464492179176
	.quad	0x3fe1e40c9d4cad87              # double 0.55908804628909159
	.quad	0x3fe9e1bc5a362dd3              # double 0.80880563373050973
	.quad	0x3fe4cd8f6aa358b5              # double 0.65009280040501116
	.quad	0x3fec88c913b858db              # double 0.89169744350035829
	.quad	0x3fe91fffc5179051              # double 0.78515614027538494
	.quad	0x3fdc29a6dc0ae88a              # double 0.44004222382103164
	.quad	0x3fe9d1e3ccf3e94d              # double 0.80687131910171106
	.quad	0x3fdbfdd7b76cfde2              # double 0.43736832535429759
	.quad	0x3fe0e22be3b54f53              # double 0.52760881876245447
	.quad	0x3fe29164cbf0268d              # double 0.58024825889261111
	.quad	0x3fcd6b54b49cf808              # double 0.2298379785442537
	.quad	0x3fe26ad53efe310f              # double 0.57554113677318408
	.quad	0x3fe21107eb1ca59e              # double 0.56457897110265143
	.quad	0x3fc959e8e9c55cc8              # double 0.19805632986638089
	.quad	0x3feff026f3bea831              # double 0.99806544882199521
	.quad	0x3fe60110ca3e56ad              # double 0.68763007641492424
	.quad	0x3fb6498b2d861558              # double 0.087059687246513362
	.quad	0x3fe665e3ad0750e2              # double 0.69993766588825346
	.quad	0x3f69827f15464f00              # double 0.0031139833537937589
	.quad	0x3fe511cb8f0fab14              # double 0.65842225972787327
	.quad	0x3fe268dfc93e0068              # double 0.57530202202907521
	.quad	0x3fd7a06ee809d656              # double 0.36916706714632619
	.quad	0x3fe7c0e9eed64f2c              # double 0.74229904792671197
	.quad	0x3fae1bc80a99a000              # double 0.058805705350835069
	.quad	0x3fecae0488eea5cb              # double 0.89624239677976314
	.quad	0x3fdaafa6c79b959c              # double 0.416970915727086
	.quad	0x3fd50288e084c3c0              # double 0.3282797043385095
	.quad	0x3fc428449657d4bc              # double 0.1574788793656462
	.quad	0x3fd86a870fad9468              # double 0.38150192767199664
	.quad	0x3fc68a70ce928734              # double 0.176099873414438
	.quad	0x3fe76be0f3a3856b              # double 0.73191878877348182
	.quad	0x3feceddf9efc4ff9              # double 0.90403729488252715
	.quad	0x3fe7147cb4987255              # double 0.72125087044293912
	.quad	0x3f91dd4bea3ce8c0              # double 0.017445741817234461
	.quad	0x3f6394504428bc00              # double 0.0023900573444488593
	.quad	0x3fe18237af5331e7              # double 0.54714569323692508
	.quad	0x3fe52adbd22a7b07              # double 0.66148177192721469
	.quad	0x3fb9f72a376b2fc8              # double 0.10142768719668915
	.quad	0x3fe23c17b5a54300              # double 0.56983552434584794
	.quad	0x3fd62ae9c98e4d86              # double 0.34636921580496283
	.quad	0x3fcf11ceea7b4c74              # double 0.24273096513079262
	.quad	0x3fe92f445a24064f              # double 0.78701989751443502
	.quad	0x3fd28c4250ab118e              # double 0.28981073262937052
	.quad	0x3fca3b15290fe72c              # double 0.20492805962549576
	.quad	0x3feacd2b255c99b9              # double 0.83754498765193042
	.quad	0x3fefe7329148356f              # double 0.99697235465434441
	.quad	0x3fe0bc26cdf61284              # double 0.52296772219467913
	.quad	0x3fdd7d188b8ba8c0              # double 0.46076024653906344
	.quad	0x3f9873e68d6bb240              # double 0.02387962568438895
	.quad	0x3f6205de95ebe700              # double 0.0022000644088365773
	.quad	0x3fd6a7ad6e105828              # double 0.35398422001287821
	.quad	0x3fdd07ee40980fde              # double 0.45360904987341921
	.quad	0x3fecbb4e9a006734              # double 0.89786462858612603
	.quad	0x3fefdd9a69fe6796              # double 0.99580116941364127
	.quad	0x3fe587514f7ece7c              # double 0.67276826406892054
	.quad	0x3fef8d9d33fa753b              # double 0.98603687431356179
	.quad	0x3fcdf896d427279c              # double 0.23414883955984755
	.quad	0x3fef5ec0e337c06f              # double 0.98031658533547083
	.quad	0x3fd0f29ded3c1df4              # double 0.26480816047157352
	.quad	0x3fd71ce91fe80af0              # double 0.36113956561909699
	.quad	0x3fd52b1f762f4094              # double 0.33075701276266867
	.quad	0x3fefa4b3f3660bdd              # double 0.98885533846657447
	.quad	0x3fca7308b7bf77c8              # double 0.20663556072298506
	.quad	0x3fe2866938188628              # double 0.57890759426317562
	.quad	0x3f8efa48e7c3e400              # double 0.015125817845261125
	.quad	0x3fe2379a15f19d3c              # double 0.56928734098338607
	.quad	0x3fa1a14ac75d9990              # double 0.034433686100601268
	.quad	0x3fd1e03884ca7c6e              # double 0.27931035011164951
	.quad	0x3f825b9c0c8c26c0              # double 0.0089637938813383888
	.quad	0x3fd9d41d529f35fa              # double 0.40357144421145075
	.quad	0x3f61659166540900              # double 0.0021236266935612536
	.quad	0x3fdc1287446fae04              # double 0.43863088305690234
	.quad	0x3fddc66b6125bbea              # double 0.46523556220102924
	.quad	0x3fdba4439251f3de              # double 0.43190087594103754
	.quad	0x3fe912cb13ecbe6c              # double 0.78354410068091118
	.quad	0x3fcd3a204aa16418              # double 0.22833636898101939
	.quad	0x3fdbe48d5911174c              # double 0.43582471559453917
	.quad	0x3fe65b44d2343053              # double 0.6986412148994624
	.quad	0x3fee5f3e93f9aebc              # double 0.94912651921682522
	.quad	0x3fc1bff451813680              # double 0.13867048244212654
	.quad	0x3febc9e8d5d8f1cb              # double 0.86839715735509893
	.quad	0x3fec8608e6732226              # double 0.89136166581835563
	.quad	0x3fe9141ef2d8e000              # double 0.78370616370284552
	.quad	0x3fec3bf1e91738a7              # double 0.88231750035790391
	.quad	0x3fe5f7ddbafde088              # double 0.68650709649865949
	.quad	0x3fec52aef7b231e7              # double 0.88509319666041797
	.quad	0x3fea052da133aab9              # double 0.81313210949641423
	.quad	0x3faf9590c0a93cd0              # double 0.061687968748282196
	.quad	0x3f969e9b4003a680              # double 0.022089410574074098
	.quad	0x3fce1d071b589a10              # double 0.23526085696467236
	.quad	0x3fc20ced31be4928              # double 0.14101948670265441
	.quad	0x3fbe279b535ff4c8              # double 0.11779185090559274
	.quad	0x3faca6145e3890d0              # double 0.055954586507398596
	.quad	0x3fe41e16e0973947              # double 0.62867301812529142
	.quad	0x3fc575c7650cfe60              # double 0.16765682634467094
	.quad	0x3fce2f0182b3e81c              # double 0.23580950624438024
	.quad	0x3fdc4d25fd3a4348              # double 0.44220876435524703
	.quad	0x3febb0f11685183d              # double 0.86534933470171149
	.quad	0x3fa3d79e7ab62ec0              # double 0.038754417876672331
	.quad	0x3fd90551d763fd2a              # double 0.39094968828426835
	.quad	0x3fe39ba4d7ddb3d0              # double 0.61274950181324961
	.quad	0x3fe45b583533cdd2              # double 0.63615045920453839
	.quad	0x3fd0036181b86a56              # double 0.2502063528824342
	.quad	0x3fd4d73800950e28              # double 0.3256359105764397
	.quad	0x3fd52321130ba710              # double 0.33026911601938114
	.quad	0x3fe7f3ac14d5b3a8              # double 0.74849514073649903
	.quad	0x3fbb49d287939828              # double 0.10659519014333851
	.quad	0x3fd7b69e5b26ef4a              # double 0.37052115346499603
	.quad	0x3fddf2dd43acafd2              # double 0.46794826134532486
	.quad	0x3fee840325f9f594              # double 0.95361478249803832
	.quad	0x3fd2cab6ce92ca28              # double 0.29362268613036457
	.quad	0x3fe33bf319ea1451              # double 0.6010680681362236
	.quad	0x3fd24e7bec9dd962              # double 0.28604028803910897
	.quad	0x3fcccf65b2454d88              # double 0.22507926182388993
	.quad	0x3fed76209ea24ea1              # double 0.92066985114293598
	.quad	0x3fde8b3ed57dc262              # double 0.47724886749987239
	.quad	0x3fe709c609210151              # double 0.71994306357377458
	.quad	0x3fd1b988304b270e              # double 0.27694897380989481
	.quad	0x3fedba743430f822              # double 0.92901048844919765
	.quad	0x3fea599db4f9854a              # double 0.8234394583379665
	.quad	0x3feab5eadacf2a0b              # double 0.83470671402148022
	.quad	0x3fe0a29d9ad1b7cc              # double 0.51985054243208983
	.quad	0x3fe2b04d87cb2512              # double 0.58402134439634978
	.quad	0x3fc0423bb786c150              # double 0.12702127896546722
	.quad	0x3fed276cebc7babb              # double 0.91106267977541877
	.quad	0x3fb511225a131080              # double 0.082292696944081811
	.quad	0x3f95d92278093cc0              # double 0.021336115433140845
	.quad	0x3fd95939ba34bb1c              # double 0.39607089218309155
	.quad	0x3fe30e53096e61f3              # double 0.59549857942607642
	.quad	0x3fe53f5298193783              # double 0.66397981364001202
	.quad	0x3fe715efc91a4f8e              # double 0.72142781522642152
	.quad	0x3fe53ba09c5df362              # double 0.66352873363903719
	.quad	0x3f926ad285776360              # double 0.01798561992277159
	.quad	0x3fe6564d26c7eee8              # double 0.698034835571403
	.quad	0x3fe0d9dba7f0c57e              # double 0.5265939979637293
	.quad	0x3feeb2a42e029e5c              # double 0.95930680261967493
	.quad	0x3fe3eec437af9cb1              # double 0.62289629818123704
	.quad	0x3fe481733de9841d              # double 0.64080202190610047
	.quad	0x3fdb0237e839a468              # double 0.42201039961088904
	.quad	0x3fa99642fb512e80              # double 0.049974530390128002
	.quad	0x3fe110b06eab37f4              # double 0.5332872544765892
	.quad	0x3fcd3be787a73450              # double 0.22839063762367795
	.quad	0x3fb2cfc2ef03f700              # double 0.073482688287153763
	.quad	0x3feb310cbf387da2              # double 0.84973752353464627
	.quad	0x3fc8d1c79eabc264              # double 0.19390197036365742
	.quad	0x3fb47f4b17c7aee0              # double 0.080067342096011185
	.quad	0x3fe9ea340c866a46              # double 0.80983927198696715
	.quad	0x3fe11fe4c57af0f4              # double 0.53514326639517984
	.quad	0x3fb44f85f20a0f60              # double 0.079338428107857961
	.quad	0x3fe2d34f0e8cc49a              # double 0.58829453317425195
	.quad	0x3fd2fd2516f474a4              # double 0.29670073739709779
	.quad	0x3fd34e5176b67e08              # double 0.30165516465237419
	.quad	0x3fece6a61dcac205              # double 0.90315538233522885
	.quad	0x3fdd65e0745cc162              # double 0.45934306491382959
	.quad	0x3fbd3e9f4de0e3a0              # double 0.11423679019288935
	.quad	0x3fee34a3acca9f0c              # double 0.94392570255601659
	.quad	0x3fda29bbcb9f042a              # double 0.40879721531752244
	.quad	0x3fb191baba844b70              # double 0.068629904304811751
	.quad	0x3fea6f2da88b4267              # double 0.82607157629724959
	.quad	0x3feb8e4f65737f35              # double 0.86112184347800869
	.quad	0x3fe54b25ef5e8afa              # double 0.66542336227243415
	.quad	0x3fc632506998f628              # double 0.17341046482208466
	.quad	0x3fde616cb2ecff04              # double 0.47469632600039824
	.quad	0x3fa486b8debc01c0              # double 0.040090348424203892
	.quad	0x3fa284fb57d2c890              # double 0.036170820685030525
	.quad	0x3feab3364581c32b              # double 0.83437646461070381
	.quad	0x3fe80167b6172461              # double 0.75017152370959306
	.quad	0x3fedf8bb82aef09f              # double 0.93661284946530887
	.quad	0x3fdc827526f6d1ac              # double 0.44546250157443512
	.quad	0x3fe022c2072c3e2b              # double 0.50424291039411651
	.quad	0x3fcca60d3cbdd4dc              # double 0.22381749597449285
	.quad	0x3fb564566d580930              # double 0.083562280364309016
	.quad	0x3f809a0c0b6f2300              # double 0.0081063214291972052
	.quad	0x3fb629cc80aad788              # double 0.086575299656798888
	.quad	0x3fd0249006d60ba8              # double 0.25223160426701918
	.quad	0x3fea889ddf988248              # double 0.82917684241335454
	.quad	0x3fd15d29bf46de7e              # double 0.27131122283342524
	.quad	0x3fe51456b54e007b              # double 0.65873275195191583
	.quad	0x3fda25d8827ef60e              # double 0.40855992072815261
	.quad	0x3fde9629d31ee2d4              # double 0.47791524522066919
	.quad	0x3fe735f2ebe5276e              # double 0.72533556054371018
	.quad	0x3fe2836540d723e1              # double 0.57853949226511869
	.quad	0x3fde2144e87a925c              # double 0.47078058913237952
	.quad	0x3fb460b20e432238              # double 0.079600456697456745
	.quad	0x3fee7b46b37b532a              # double 0.95254836134936238
	.quad	0x3fddc9950a803b48              # double 0.4654286005542656
	.quad	0x3fe2eb69d6ed8635              # double 0.59123699167338961
	.quad	0x3fb557d3a759d388              # double 0.083371380192899136
	.quad	0x3fef01ab712d49e4              # double 0.96895382027497278
	.quad	0x3fe16fb2dc822575              # double 0.54488509243053207
	.quad	0x3fd67b879f821fe6              # double 0.35128965928060862
	.quad	0x3fe3c8596e76f7e3              # double 0.61820670676365486
	.quad	0x3feb77bd04fdd940              # double 0.85836649870797288
	.quad	0x3fd54541f5ca6ea4              # double 0.3323521518993664
	.quad	0x3fba0a1f1e4c7a08              # double 0.10171694268908749
	.quad	0x3fea66ed0283faba              # double 0.82506418696706096
	.quad	0x3fe4dc2c1d2cd66a              # double 0.65187650392790641
	.quad	0x3febe0bc115ba7b8              # double 0.87118342771758872
	.quad	0x3fc2b689e700b8c0              # double 0.14619563846048855
	.quad	0x3fe25d383058efd1              # double 0.5738793319974268
	.quad	0x3fee22e191042a3b              # double 0.94175794909944643
	.quad	0x3fa6a90f999b48e0              # double 0.044258582592776596
	.quad	0x3fb65c4a1eb8f270              # double 0.087345726490591024
	.quad	0x3fe2509ac139b396              # double 0.57233941783271081
	.quad	0x3fe956d10a8f4a4d              # double 0.79184772551008964
	.quad	0x3fdc8cf2688995f0              # double 0.44610271652922417
	.quad	0x3fc578917040a284              # double 0.16774194699361911
	.quad	0x3fe067e4832a4311              # double 0.51268220537358122
	.quad	0x3fef7d9bd083a897              # double 0.98408308721015458
	.quad	0x3fec8cc85d79a765              # double 0.89218538529278801
	.quad	0x3fc3157e2dba0fe8              # double 0.14909341080431138
	.quad	0x3fec1e4b611b45d8              # double 0.87869805303688064
	.quad	0x3fed36c03f075fa6              # double 0.9129334670096696
	.quad	0x3fe8aec481c7976a              # double 0.77133393619145108
	.quad	0x3fe663bbf5c273b7              # double 0.69967458724897014
	.quad	0x3fe8d4fad1b91b0e              # double 0.77599850617920807
	.quad	0x3fece70aa30e26aa              # double 0.90320331427320366
	.quad	0x3fcd091374dbeab4              # double 0.22683947759636214
	.quad	0x3fe68853a7229e02              # double 0.70414145129774419
	.quad	0x3fe1f7dadae0c918              # double 0.56150572538016075
	.quad	0x3fe50ea869951ea5              # double 0.65803928968030745
	.quad	0x3fc4e63c0a85669c              # double 0.16327620042539059
	.quad	0x3fe4146d48c6310e              # double 0.62749351705272871
	.quad	0x3fdb4c80dc579d84              # double 0.426544394662834
	.quad	0x3fe57901727861fb              # double 0.6710211978671049
	.quad	0x3fd5a009a46a6822              # double 0.33789292389121972
	.quad	0x3fecbbeef9d4a730              # double 0.89794110102704927
	.quad	0x3fdf72a5c963c068              # double 0.49137253443678341
	.quad	0x3fe45d1ba3deadd1              # double 0.63636571889713356
	.quad	0x3fe17382ab0ae56c              # double 0.54535039335966706
	.quad	0x3fe250bb0a963a29              # double 0.57235481326808213
	.quad	0x3fdf7e9e062e7284              # double 0.49210310557990788
	.quad	0x3fd4c318a3097040              # double 0.32440772935456508
	.quad	0x3fd415d80346fa74              # double 0.31383323974652133
	.quad	0x3fdd22f397bff7a6              # double 0.45525827235530369
	.quad	0x3fd71fdef1b52dfa              # double 0.36132024387617856
	.quad	0x3fe74b195e7a8703              # double 0.7279173703466032
	.quad	0x3febee004744db25              # double 0.87280286712379918
	.quad	0x3fbcd8c45aadea80              # double 0.1126826020608096
	.quad	0x3fe413df26df5ccf              # double 0.62742574302947129
	.quad	0x3fedcf6cf6b4db3c              # double 0.93157051262719603
	.quad	0x3fed9e59aff80464              # double 0.92557987564954347
	.quad	0x3feb0972350432ce              # double 0.84490309099927585
	.quad	0x3fe2474d6adb7de7              # double 0.57120390768608054
	.quad	0x3fed2e04b1703a11              # double 0.91186747222838183
	.quad	0x3fd8773fb5f7b238              # double 0.38227837343473281
	.quad	0x3fe2680db7758104              # double 0.57520185310207284
	.quad	0x3fe485b3dac848ce              # double 0.64132111292772165
	.quad	0x3fa2548fe7ef2940              # double 0.035801407873423674
	.quad	0x3fac00d8839eb140              # double 0.054693952624207842
	.quad	0x3fd6497dcf8e65ac              # double 0.34823556203044848
	.quad	0x3fed4ff2d7ddb01e              # double 0.91600935136148443
	.quad	0x3fd308ac65a938b0              # double 0.2974043839248095
	.quad	0x3fc5dee8f08cca80              # double 0.1708651709137321
	.quad	0x3fe52def5c0e8b8e              # double 0.66185729961249407
	.quad	0x3fe8ce96e65df467              # double 0.77521843904072518
	.quad	0x3fac5af459f2af00              # double 0.055381427745798462
	.quad	0x3fe7796e786804f4              # double 0.73357318417416062
	.quad	0x3fc93d5240ad464c              # double 0.19718387754487521
	.quad	0x3fb138b729266a80              # double 0.067271659418489449
	.quad	0x3faa8659dd5eb830              # double 0.051806267044739562
	.quad	0x3fee4b8bfb1995b2              # double 0.94672202151257623
	.quad	0x3fe21162a2116fbd              # double 0.56462222722938515
	.quad	0x3fef6bfd91c5b82f              # double 0.98193243476067049
	.quad	0x3fee19fb97b3b091              # double 0.94067172650604125
	.quad	0x3f7406420a355c80              # double 0.0048887805636105286
	.quad	0x3fe31ded5ff2d600              # double 0.59740322818714731
	.quad	0x3fc3193de72e672c              # double 0.14920781887195156
	.quad	0x3fdd87e59c9351de              # double 0.46141948977063219
	.quad	0x3fe0cd375842bf75              # double 0.52505080450462904
	.quad	0x3fd6bcc19ea03b18              # double 0.35527077189264977
	.quad	0x3fec356f4ffb0cc6              # double 0.88152280446265574
	.quad	0x3f93fe1bdc985060              # double 0.019524035777138571
	.quad	0x3fe8d4f657b71b7f              # double 0.77599637157332768
	.quad	0x3fe57e298edf590d              # double 0.67165067581916704
	.quad	0x3fe9cae34bbb77a7              # double 0.8060165862223031
	.quad	0x3fdd380cb4a959a6              # double 0.45654599802710505
	.quad	0x3fdec37c92186dfe              # double 0.48068155543452906
	.quad	0x3fdd9e8a90715f60              # double 0.46280159097431373
	.quad	0x3fd309744de35806              # double 0.2974520455003361
	.quad	0x3fdd4c4303b820fe              # double 0.45777964938362448
	.quad	0x3fe0aaa61947fd90              # double 0.52083115518319012
	.quad	0x3fb321a4e9448978              # double 0.074732119512679662
	.quad	0x3fc6005087d0ee60              # double 0.1718845999874814
	.quad	0x3fe5953cf13edc6f              # double 0.67446753614684762
	.quad	0x3fe6db904233e7cf              # double 0.71430218630052333
	.quad	0x3fe516cbc0c7b177              # double 0.65903270389894331
	.quad	0x3fc4032bf90e05c8              # double 0.15634679470899315
	.quad	0x3fbbb6e2a3595a00              # double 0.10825935829175393
	.quad	0x3fe55b5881651285              # double 0.6674006011240442
	.quad	0x3fe6376b61d7ba09              # double 0.69426507100962553
	.quad	0x3fe5771468c6d91b              # double 0.6707860990925697
	.quad	0x3fe1ba76a45915a5              # double 0.55401165103164784
	.quad	0x3fe4cbd892eaa04a              # double 0.64988354391699343
	.quad	0x3fe3ebb3cbec101d              # double 0.62252225712336762
	.quad	0x3fe7d4e3d05ec467              # double 0.74473753640462526
	.quad	0x3fe89891828b7b33              # double 0.76862407204666849
	.quad	0x3fe528bf842a474e              # double 0.66122413457399332
	.quad	0x3fe32c41d0a52781              # double 0.59915247679713002
	.quad	0x3fe346125ccd6b91              # double 0.60230367780182992
	.quad	0x3fc3d883169feb64              # double 0.15504492382737134
	.quad	0x3fda433c0cc387ee              # double 0.41035367247070453
	.quad	0x3fd9e6cbbfc72d02              # double 0.40471166351626675
	.quad	0x3fcd58f41ba7f624              # double 0.22927714682002531
	.quad	0x3fea72ea3eaf0fcb              # double 0.82652771227776023
	.quad	0x3fd32b4c18ca48a8              # double 0.29951765461840774
	.quad	0x3fb72aebeebbd9e0              # double 0.090498681816689963
	.quad	0x3fe497bc8effc67a              # double 0.64352252892986361
	.quad	0x3fe78138547279f8              # double 0.73452393048847764
	.quad	0x3fc350f613a5d970              # double 0.15090824088447219
	.quad	0x3fd4d2acee3f345e              # double 0.32535861269281507
	.quad	0x3fefc7b707b49aef              # double 0.99312926774004306
	.quad	0x3fbec198bf1b9050              # double 0.12014155069079036
	.quad	0x3fd2613e20047eec              # double 0.28718522192683227
	.quad	0x3fd4cec04fc888b8              # double 0.32511909285870955
	.quad	0x3fe7bf8c70385d78              # double 0.74213239591601532
	.quad	0x3fe35542f6f7c4e9              # double 0.60415790782840617
	.quad	0x3fe14b3bae873205              # double 0.54043373191376587
	.quad	0x3fa7f4e5f89209d0              # double 0.046790300934862139
	.quad	0x3fdea5f7f4aea3ba              # double 0.4788799180483313
	.quad	0x3fd29d6036e388da              # double 0.29085545883402875
	.quad	0x3fe82cb929156f59              # double 0.7554593851486785
	.quad	0x3fcb8f1035e6762c              # double 0.21530344611976326
	.quad	0x3fece5438bfaed28              # double 0.90298631038550514
	.quad	0x3fc0b4bb53a8f0f4              # double 0.13051549515683514
	.quad	0x3fe124c1be9f8d6c              # double 0.53573691588500827
	.quad	0x3faf4d1b08b2e260              # double 0.061135144054280444
	.quad	0x3feb57fc83f4ec0c              # double 0.85449052593992425
	.quad	0x3fdcf33b4d14e0d8              # double 0.45234568145271004
	.quad	0x3fd3f2b0db854fe4              # double 0.31168767392705221
	.quad	0x3fe2fff74dfe3470              # double 0.59374585373883626
	.quad	0x3fbc8eb865475ac0              # double 0.11155273888230521
	.quad	0x3fe20b1cee5d0b4a              # double 0.56385656886446012
	.quad	0x3fcc92959c80403c              # double 0.22322340146684094
	.quad	0x3feadfb2e2297fd9              # double 0.83980697796141179
	.quad	0x3fe754e4196a5fb9              # double 0.72911267246217115
	.quad	0x3fe6a27fad559fd7              # double 0.70733627180470193
	.quad	0x3fdcc89a7ef94848              # double 0.44974386596470994
	.quad	0x3fee3331da354f20              # double 0.9437493574027691
	.quad	0x3fe5d270ad9906d2              # double 0.68193849473774493
	.quad	0x3fe67bc831ac2b5d              # double 0.70261010839145011
	.quad	0x3fe5d4ed1c3a20dc              # double 0.68224196923349778
	.quad	0x3fd52cb55d024726              # double 0.33085378725910386
	.quad	0x3fe00cc2f14f5277              # double 0.50155779963331681
	.quad	0x3fedfbdd43f29df4              # double 0.93699515601195892
	.quad	0x3fd39d150ba42636              # double 0.30646253716313099
	.quad	0x3fe6d6750061a201              # double 0.71367883753288208
	.quad	0x3feb38eb092599ff              # double 0.85069801126957134
	.quad	0x3fe75967d1ff2006              # double 0.72966376318891046
	.quad	0x3f928b0aef7365e0              # double 0.018108530869403228
	.quad	0x3fd7ff1e0cf4245e              # double 0.37494612946517758
	.quad	0x3fe782fe31348426              # double 0.73474034891490159
	.quad	0x3fdd5f34be16f662              # double 0.4589359146446893
	.quad	0x3fc84a3d87519bc0              # double 0.1897656355606312
	.quad	0x3fc6196c1f8975f0              # double 0.17265082874193594
	.quad	0x3fe53bc3f24a1f36              # double 0.66354558298278365
	.quad	0x3fdf2ec7427ee7ca              # double 0.48723012441371039
	.quad	0x3fbc1c7923321e48              # double 0.10980946645042267
	.quad	0x3fbf710eff6f1668              # double 0.122818887101937
	.quad	0x3fd7c73367871ea0              # double 0.37153325185907171
	.quad	0x3fbfc2e94622f388              # double 0.12406785929029074
	.quad	0x3feee44df3cd3a67              # double 0.9653692018271841
	.quad	0x3fcc6bd177de3a60              # double 0.22204035141881473
	.quad	0x3f8ab56c22b877c0              # double 0.013041348275745324
	.quad	0x3feee53a6b1c7fdf              # double 0.96548195762806787
	.quad	0x3fd7a2ba2e008b70              # double 0.36930708401103285
	.quad	0x3fee14c3770f1e90              # double 0.94003461126063037
	.quad	0x3fd0f4d4f7d043d6              # double 0.26494335365810906
	.quad	0x3fe869975357878f              # double 0.76288954045979718
	.quad	0x3fced3132b4cae74              # double 0.24081649412379458
	.quad	0x3fec25be466b14bd              # double 0.87960733178683592
	.quad	0x3fb09dd334d12f18              # double 0.064908218760305281
	.quad	0x3fdcf7b9f01b0418              # double 0.4526200146465853
	.quad	0x3fea69cac4dcf321              # double 0.82541407060452709
	.quad	0x3fac12ee8e7bba90              # double 0.054831938641531797
	.quad	0x3fe6c5db98ae6f0b              # double 0.71165256329138182
	.quad	0x3fe9e42940d656c4              # double 0.80910170234229683
	.quad	0x3fee82ea4a075b8a              # double 0.95348085840929397
	.quad	0x3fca0add03c17bfc              # double 0.2034565227831705
	.quad	0x3fecaf60eb2b314e              # double 0.89640851909056507
	.quad	0x3fc88880bcaed734              # double 0.19166573727641778
	.quad	0x3fe182943db3b0aa              # double 0.54718982745318567
	.quad	0x3fdfa923b382f0bc              # double 0.4946984532396177
	.quad	0x3fd8c6533ed4c8d6              # double 0.38710480819567061
	.quad	0x3fea39990b590554              # double 0.81953098503451338
	.quad	0x3fda05d45aac8bd6              # double 0.40660580496677079
	.quad	0x3fd22a7a88fc3516              # double 0.28384269120654559
	.quad	0x3fe7d02d4a160dc6              # double 0.74416222066832272
	.quad	0x3fd8bc2ee7c3b772              # double 0.38648579247716619
	.quad	0x3fea86d62bc4903e              # double 0.82895954655078419
	.quad	0x3fc7c3f99ad5f0a0              # double 0.18566818294846588
	.quad	0x3fe2716233306886              # double 0.57634077070112322
	.quad	0x3fe82653a263e41f              # double 0.75467855183444843
	.quad	0x3fdf8258d793c83a              # double 0.49233075191944276
	.quad	0x3fe2456a2b3c2a46              # double 0.57097347683276989
	.quad	0x3fd0de634f4e200a              # double 0.2635734819855321
	.quad	0x3fccdb02cef4d530              # double 0.22543368439952749
	.quad	0x3fe8c6bf88dee822              # double 0.77426125271381729
	.quad	0x3fe3842407fca517              # double 0.60988046226444481
	.quad	0x3fea8f873c56b3ad              # double 0.83002054009340542
	.quad	0x3fa44302ea9473d0              # double 0.039573756346932165
	.quad	0x3fd087a59e700cba              # double 0.25827923271590303
	.quad	0x3fddf29267cab15c              # double 0.46793041358866616
	.quad	0x3feb944f2f4cd22c              # double 0.86185416448876628
	.quad	0x3fe31846473b8ef2              # double 0.59671319878222406
	.quad	0x3fdca89eebd68430              # double 0.44779179602670904
	.quad	0x3fe6d1530241f4ec              # double 0.7130522770018195
	.quad	0x3fe139a764a579bc              # double 0.53828782708642775
	.quad	0x3fe1087e4d8afe1f              # double 0.53228678841691479
	.quad	0x3fcfc530128c6040              # double 0.24820519357376902
	.quad	0x3fc875640f886868              # double 0.1910824848026238
	.quad	0x3fd8d3079c6db0da              # double 0.38788023258417825
	.quad	0x3fedd43c309aaa33              # double 0.93215760701179418
	.quad	0x3fc4c79e807d6c48              # double 0.16234189294741186
	.quad	0x3fce535e0a9617bc              # double 0.2369191695872227
	.quad	0x3fe9f6f7b287e02b              # double 0.81139740819253825
	.quad	0x3fe1853a9e8bfba3              # double 0.54751330343411941
	.quad	0x3fdecae85e88fc78              # double 0.48113450271552649
	.quad	0x3fc7d1c44b7762d8              # double 0.18608907399063557
	.quad	0x3fb08d273f068fb0              # double 0.064653828513256739
	.quad	0x3fe9d555cfa0b871              # double 0.80729189445788851
	.quad	0x3fd95df94c4ee11c              # double 0.3963607068249233
	.quad	0x3fabb7463641fd50              # double 0.054132646678221819
	.quad	0x3fbb6827aa532610              # double 0.10705802830047895
	.quad	0x3fe40178cfb301b8              # double 0.62517967764147553
	.quad	0x3feed1c9bf6a338f              # double 0.96310889611923922
	.quad	0x3feb7e55df4e0ff6              # double 0.85917180647129388
	.quad	0x3fef0c5226bc5740              # double 0.97025401654784815
	.quad	0x3fb7753b7d226248              # double 0.09163257412945669
	.quad	0x3fe1ec5240611c78              # double 0.56009781431283923
	.quad	0x3fee73f6b41c174a              # double 0.95165572335893356
	.quad	0x3feca491cacc4d45              # double 0.89508905037875108
	.quad	0x3fd890d5393cc1da              # double 0.38383989896376891
	.quad	0x3fca292417877d90              # double 0.20438052319421418
	.quad	0x3fd4b15f12df3a84              # double 0.32332588999717182
	.quad	0x3fe92d56ba3b08c5              # double 0.78678451893963397
	.quad	0x3fd8d2415dd36968              # double 0.38783296740225248
	.quad	0x3fbd96234cd47c48              # double 0.11557217241032547
	.quad	0x3fe44768d8ec339b              # double 0.63371698730189807
	.quad	0x3fecdf405a49c381              # double 0.90225236544038989
	.quad	0x3fe269b7070a32c6              # double 0.57540465712516986
	.quad	0x3fecbfce8e26064e              # double 0.89841392291436661
	.quad	0x3fc2531d0520b560              # double 0.14316141844157482
	.quad	0x3fdb2bcf4aa78b0c              # double 0.42454893389201298
	.quad	0x3fd3366ce323362e              # double 0.3001968591823666
	.quad	0x3fd4af70ffa913a8              # double 0.32320809332696365
	.quad	0x3fb8e5bc578fea80              # double 0.097255488755687125
	.quad	0x3fe4d771e9124a31              # double 0.65129943391577261
	.quad	0x3f9a7a18c2d28d00              # double 0.025856387034434825
	.quad	0x3fe689ff39f32546              # double 0.70434533422773238
	.quad	0x3fdd185ff2e081b6              # double 0.45461271971182826
	.quad	0x3fdacd38777befee              # double 0.41877566974994707
	.quad	0x3fc41c33d46613e0              # double 0.15711067076713814
	.quad	0x3fedb86f5ddc569f              # double 0.92876404125373202
	.quad	0x3feb7405a9667324              # double 0.8579128559682414
	.quad	0x3fbd4dfe8b609650              # double 0.11447134878889043
	.quad	0x3fe1ed9b39d521f3              # double 0.56025468154353886
	.quad	0x3fe64ddbbe57b691              # double 0.697004195940922
	.quad	0x3fe52774a5997423              # double 0.6610663637508235
	.quad	0x3fd0687fdb8a2308              # double 0.25637813987172864
	.quad	0x3fc92ff43c3a3f10              # double 0.1967759412841521
	.quad	0x3fb3a8da83ad0fb0              # double 0.07679525103327367
	.quad	0x3fe7c5c42c63066c              # double 0.7428913943223967
	.quad	0x3fe299dfd72cd2c5              # double 0.58128349329361895
	.quad	0x3fe4e9886a442860              # double 0.65350743060231409
	.quad	0x3fe39a43f6037ddf              # double 0.61258123445071166
	.quad	0x3fdabc5c54dc0ba6              # double 0.41774662291589448
	.quad	0x3fe608ded09a4782              # double 0.68858280890184198
	.quad	0x3fe42d899e2a1c24              # double 0.63055878535749743
	.quad	0x3feeef996673fce4              # double 0.966747951606433
	.quad	0x3fbb032189ef36e8              # double 0.10551652543582757
	.quad	0x3fe769257d6ebc56              # double 0.73158525942370534
	.quad	0x3fe833ae8142b8ef              # double 0.75630879636972093
	.quad	0x3fd394ed03d2b85e              # double 0.30596471188881036
	.quad	0x3fcd841aeacf4cbc              # double 0.23059402909584559
	.quad	0x3fedcbbb75263366              # double 0.93111966019351367
	.quad	0x3fefdf4e0403fced              # double 0.99600888046543689
	.quad	0x3fd2200d0b2698e6              # double 0.28320623482649265
	.quad	0x3fe8267b4b8e8ef6              # double 0.75469746358109435
	.quad	0x3fdce509610a70f8              # double 0.45147928692473682
	.quad	0x3f6e298403751800              # double 0.003681905592801904
	.quad	0x3fb37cbd41375558              # double 0.076122120305929797
	.quad	0x3fe4d27e90be5a4c              # double 0.65069511671283342
	.quad	0x3fbb207542ff2550              # double 0.10596402059231491
	.quad	0x3fe8c08587be9db0              # double 0.77350117218604986
	.quad	0x3fe46952f6181fea              # double 0.6378569418457094
	.quad	0x3fd869ebdfd5c4ea              # double 0.38146492823496081
	.quad	0x3fef07d9c9fcb2b7              # double 0.96970834208112577
	.quad	0x3fefa14a125b87fc              # double 0.98843864045579676
	.quad	0x3fe7b1e6d7939746              # double 0.74046651940145902
	.quad	0x3fe52b24cd56ce1a              # double 0.66151657204904102
	.quad	0x3f7fa2b706604700              # double 0.0077235364351666558
	.quad	0x3fa861904d9ac850              # double 0.047619351838321777
	.quad	0x3fde131a55f12e06              # double 0.46991594689163241
	.quad	0x3fef229765f8628a              # double 0.97297258297028688
	.quad	0x3f7383f904803880              # double 0.0047645308732296998
	.quad	0x3fd2b137cc5d5ed8              # double 0.29206652600758565
	.quad	0x3fee1347d214d711              # double 0.93985358268284547
	.quad	0x3fd799cebc37ba40              # double 0.36876266842492456
	.quad	0x3fe8ade4d5764863              # double 0.77122728053860745
	.quad	0x3fe9b31edb882e2c              # double 0.80311529996237629
	.quad	0x3fea228df66e2617              # double 0.81671808367645127
	.quad	0x3fec2b992dc82c0b              # double 0.88032206479818009
	.quad	0x3feb37307bc653b9              # double 0.85048698591946625
	.quad	0x3fdcf52e8b5b0538              # double 0.45246471032085678
	.quad	0x3fdf49447c1a18ae              # double 0.48884689444856633
	.quad	0x3faf2861586cc2f0              # double 0.06085495190052892
	.quad	0x3fd974d3188c1bac              # double 0.39775540730664249
	.quad	0x3fd8ab90a0a6793a              # double 0.38547149361137978
	.quad	0x3fcc7746093e9538              # double 0.22238994075193275
	.quad	0x3fd4292c193102f8              # double 0.31501295528509798
	.quad	0x3fec160d1fc13eda              # double 0.87769180490610244
	.quad	0x3fe18f465f61b3a0              # double 0.54873961095073653
	.quad	0x3f829c11b178cd80              # double 0.0090867407117005694
	.quad	0x3fd4cf4cc1de3840              # double 0.32515257770944928
	.quad	0x3fd9c7bbd9dc4e7e              # double 0.40281578326651146
	.quad	0x3fe886a62bb2209b              # double 0.76643665823305029
	.quad	0x3fe49b00c47fd24d              # double 0.64392126444597297
	.quad	0x3fd52c829964a7f8              # double 0.33084168414882198
	.quad	0x3fd94185b670ae7e              # double 0.3946241647379124
	.quad	0x3fe36511efd72ed2              # double 0.60608765453204172
	.quad	0x3fd82e9eb7fe3e20              # double 0.37784545867995867
	.quad	0x3fe5d0e2007ff313              # double 0.68174839112870911
	.quad	0x3fd2110dd3fc5538              # double 0.28229089452482325
	.quad	0x3fe3c61bc5f5ad9c              # double 0.61793316520690977
	.quad	0x3feaf0e4e30d493b              # double 0.84190601678918797
	.quad	0x3f94f9501b10c260              # double 0.020482303287453596
	.quad	0x3fe1388e44cf5934              # double 0.53815377654499352
	.quad	0x3fef0b8c6cbfad71              # double 0.97015973319996196
	.quad	0x3fcb8dd79caf1b48              # double 0.21526618147455623
	.quad	0x3fbb691b38e89798              # double 0.10707254542702882
	.quad	0x3fdb02920b380c70              # double 0.42203188987350071
	.quad	0x3fbc69fb2794bb38              # double 0.11099214283306658
	.quad	0x3fe2dec7c800ac91              # double 0.5896948725034169
	.quad	0x3fe401340544c727              # double 0.62514687565837768
	.quad	0x3fd976811ebf484e              # double 0.3978579330697628
	.quad	0x3fea914a7a9fbab6              # double 0.83023570966709914
	.quad	0x3fd4a90c9e00d3ae              # double 0.32281794958117416
	.quad	0x3fe274c73fac0bbc              # double 0.57675516544292504
	.quad	0x3fe485e5412c25b4              # double 0.64134466866487694
	.quad	0x3fe97f066cec3c0d              # double 0.79675599359495808
	.quad	0x3fe42d40e969f7bb              # double 0.63052411640796124
	.quad	0x3feae62138a35006              # double 0.84059201299760455
	.quad	0x3fd21151d1ae32d4              # double 0.28230710484130594
	.quad	0x3fcc0fe023f4cd30              # double 0.21923448329617079
	.quad	0x3fd4b5789f3db620              # double 0.32357612181553641
	.quad	0x3fdf3443445c9622              # double 0.48756486583656244
	.quad	0x3fa7c5f2f2f00450              # double 0.046432106166328979
	.quad	0x3fc2e1f0102abe44              # double 0.14752007283594726
	.quad	0x3febb6677bf31b2b              # double 0.86601614197647814
	.quad	0x3fd2e50b403f37c2              # double 0.29522973322024992
	.quad	0x3fe5f0ca75ad7888              # double 0.68564341529760586
	.quad	0x3fe76dd5a941b986              # double 0.73215754564243762
	.quad	0x3fa9a74bc42d49a0              # double 0.05010449189889532
	.quad	0x3fb6038c1f705ab0              # double 0.085991628337391601
	.quad	0x3fec9d3cf41ffe73              # double 0.89419410401019517
	.quad	0x3fb4ad5f10882b88              # double 0.080770436798202394
	.quad	0x3fe57ef2fc5ea0a1              # double 0.67174672404236813
	.quad	0x3fe62300ecc78944              # double 0.69177290197357211
	.quad	0x3fc93deddbe8dfac              # double 0.19720242727066528
	.quad	0x3fb32fdacf43c150              # double 0.0749489551560647
	.quad	0x3fedfd222d8fcb0d              # double 0.93715008639114361
	.quad	0x3fd5410fcf10ee3e              # double 0.33209605428030275
	.quad	0x3fed37f02cd8ef3f              # double 0.91307839164026194
	.quad	0x3febb3e0ea2b0151              # double 0.86570783363280601
	.quad	0x3fcabc4fe93a5390              # double 0.20887183082654959
	.quad	0x3fe9d1f811c48b1c              # double 0.80688098402274333
	.quad	0x3feb2dddfa3d7c74              # double 0.84934901118312078
	.quad	0x3fa749f5972d7f50              # double 0.045486139969169614
	.quad	0x3fea1612312edae5              # double 0.81519422155437538
	.quad	0x3fe15cb6b8904421              # double 0.54256759688917466
	.quad	0x3fb267cf888f2808              # double 0.071896525230073505
	.quad	0x3fd76f3107382b38              # double 0.36616159157772499
	.quad	0x3fe135e8074a7813              # double 0.53783036636355275
	.quad	0x3fe63fdc40928c28              # double 0.69529545413786753
	.quad	0x3fe82cc40d6e3733              # double 0.75546457884931895
	.quad	0x3fd52c34a299362c              # double 0.33082309607275096
	.quad	0x3fe400f308d20342              # double 0.62511588785864824
	.quad	0x3fd099a5c12cc74a              # double 0.25937789787996179
	.quad	0x3fe747eae9b5b335              # double 0.727529007400881
	.quad	0x3fb6b8f43922ae18              # double 0.088759674023713209
	.quad	0x3fe5bd5557e58c58              # double 0.67936198394125835
	.quad	0x3fc828c48abfe888              # double 0.18874413275608881
	.quad	0x3fe95aeb4039b99c              # double 0.7923485044864722
	.quad	0x3fe746a23febfafa              # double 0.72737228855825653
	.quad	0x3faa055dbd31c680              # double 0.050822190613769358
	.quad	0x3fdb4d3e8c449a04              # double 0.426589619617886
	.quad	0x3fdf24888f28b24a              # double 0.48660482387893877
	.quad	0x3fe2988108887b2d              # double 0.5811162153876005
	.quad	0x3fefb777488ccca0              # double 0.99114574594422677
	.quad	0x3feded13edfbbb50              # double 0.93519016724699533
	.quad	0x3fd8618aa5634f48              # double 0.38095346594967738
	.quad	0x3fec1549aba70479              # double 0.87759860540258139
	.quad	0x3fe18fb615f719f9              # double 0.54879287996374082
	.quad	0x3fe3d9a7aa3c0faa              # double 0.62031920670459795
	.quad	0x3fdf941198687f04              # double 0.49341239818203086
	.quad	0x3fe1d24353471ea5              # double 0.55691686883161096
	.quad	0x3fd221794dba6f92              # double 0.2832930811944091
	.quad	0x3f9cf04d72b69260              # double 0.028260431410347286
	.quad	0x3fed31e5b9ea2738              # double 0.91234098731476987
	.quad	0x3fc0a8f2688425c4              # double 0.13015585044222011
	.quad	0x3fe55fd57c402a37              # double 0.66794847743705688
	.quad	0x3fd85ecc31061e68              # double 0.38078598773470285
	.quad	0x3fce4e717b400da4              # double 0.23676889913631982
	.quad	0x3fe9bc41e6edacdd              # double 0.80423064330298255
	.quad	0x3fed3f1e6c4c7e89              # double 0.91395493652449133
	.quad	0x3fe1aa306b3e7a54              # double 0.55202504106621086
	.quad	0x3fdc289622ee9384              # double 0.43997720156976805
	.quad	0x3fe20a24eb9df087              # double 0.56373830813346693
	.quad	0x3fe666b7b1136b76              # double 0.70003876290444
	.quad	0x3fea4f279ae7a9b9              # double 0.82216243986959292
	.quad	0x3fe7b008ce2d2837              # double 0.74023857373072743
	.quad	0x3fdb79ca5af265c0              # double 0.42930849916009706
	.quad	0x3fe22f7dfc53647c              # double 0.56829737932561342
	.quad	0x3f82bb403ddf5680              # double 0.009146215332218377
	.quad	0x3fc0c376bb6422b8              # double 0.13096508169134835
	.quad	0x3fe3b2649067b9cd              # double 0.61552646831642621
	.quad	0x3fe735df3597ab87              # double 0.72532616107251691
	.quad	0x3fc1d00cb2fd6668              # double 0.13916167011011571
	.quad	0x3fdb32e395d4b438              # double 0.42498101837083224
	.quad	0x3fe5be93827b6b06              # double 0.67951369747910983
	.quad	0x3fdbfab8c4118d0a              # double 0.43717784068412924
	.quad	0x3fc4c93c9f0f5308              # double 0.16239125982851754
	.quad	0x3fd28f345d555826              # double 0.28999051203334358
	.quad	0x3fe5f15bfd18c436              # double 0.68571280892331887
	.quad	0x3fea10c78c9704f8              # double 0.81454827746361413
	.quad	0x3fdf0d7516369c4c              # double 0.48519637269277349
	.quad	0x3fea7b83dadb854f              # double 0.82757752175909072
	.quad	0x3fe2ad79beaabe3a              # double 0.58367621650354029
	.quad	0x3fea681c8825046d              # double 0.8252089175295062
	.quad	0x3fe6f0ccf3909eaa              # double 0.7168946034552921
	.quad	0x3fe24b769ea3f322              # double 0.57171183571299289
	.quad	0x3feaf4497ebe3e67              # double 0.84232020144004316
	.quad	0x3feebad6cc0a6c8f              # double 0.9603075013323109
	.quad	0x3f8f95df2dce3a80              # double 0.015422576508880015
	.quad	0x3fc4970382809968              # double 0.16085857269463166
	.quad	0x3fcf2b8c58caa8c0              # double 0.24351648650674029
	.quad	0x3fd1147623549b66              # double 0.26687386942142266
	.quad	0x3feca7a319032c4b              # double 0.89546351323350259
	.quad	0x3fe8336390cc5e93              # double 0.75627306252404691
	.quad	0x3fe4d020b9fa801a              # double 0.65040623020104538
	.quad	0x3fe07a7317aea864              # double 0.51494745850983437
	.quad	0x3fe569b58f6a8ef8              # double 0.66915395747170603
	.quad	0x3fb86ec66f0d23c0              # double 0.095440294372692414
	.quad	0x3fda4365008cecc6              # double 0.41036343625792104
	.quad	0x3fe64c5f4e1a3753              # double 0.69682278875709824
	.quad	0x3fec8046b009ee82              # double 0.8906587064988829
	.quad	0x3fb2641085078cc0              # double 0.07183936355390852
	.quad	0x3fc28586d65da77c              # double 0.14469991175729635
	.quad	0x3fe23029702b1511              # double 0.56837913425320796
	.quad	0x3fe7e6def0b7f0ef              # double 0.7469324780973049
	.quad	0x3feeda43cab35976              # double 0.9641436537738588
	.quad	0x3fde50707d811150              # double 0.47365963226572649
	.quad	0x3fdaa8e2fa1efcae              # double 0.41655802179225077
	.quad	0x3fe937f6be3ea5de              # double 0.78808152348681992
	.quad	0x3fdecc87c30cce08              # double 0.48123354003766439
	.quad	0x3fe063f14e83531e              # double 0.51220002493446137
	.quad	0x3fe300b3a04e2d16              # double 0.59383565244334835
	.quad	0x3fea39ccfb249e2a              # double 0.81955575038313566
	.quad	0x3fd05c1ba24f12a4              # double 0.25562182283855805
	.quad	0x3fd5fdc5517376a0              # double 0.34361393884851488
	.quad	0x3fc180a2bc4c44e4              # double 0.13673814958796193
	.quad	0x3fee2b8878e7c4f0              # double 0.94281409849477704
	.quad	0x3fde2be9c3ef9ff4              # double 0.47143024572733272
	.quad	0x3fd2351c0c448962              # double 0.28449155042667063
	.quad	0x3fc85f5861bc3a0c              # double 0.19040970585088279
	.quad	0x3fda8d99a3f426dc              # double 0.41489258776765126
	.quad	0x3fd734975374d8f4              # double 0.36258490705530666
	.quad	0x3fcc5e3464c672ac              # double 0.22162489815391007
	.quad	0x3fe2e878c95a61d8              # double 0.59087790800827644
	.quad	0x3fe35febac706f9f              # double 0.60545905761272312
	.quad	0x3fec857d0399b9a2              # double 0.89129496291370836
	.quad	0x3fdb2221f08bf772              # double 0.42395828715222372
	.quad	0x3fd19403a9a8070e              # double 0.27465907638553311
	.quad	0x3feec8b4a46f80ab              # double 0.96200019947356929
	.quad	0x3fe8f435176564eb              # double 0.77981047219796318
	.quad	0x3fed5d3aecec62aa              # double 0.9176306369218612
	.quad	0x3fe8c72e91869e29              # double 0.77431419775979748
	.quad	0x3fe43654b8d8655b              # double 0.63163219549748406
	.quad	0x3fcbda1397347be4              # double 0.21759266741807359
	.quad	0x3fe9534547b0ba7d              # double 0.79141487123509047
	.quad	0x3feb30af159450e0              # double 0.84969286169737401
	.quad	0x3fe82fffd45533ed              # double 0.75585929366354565
	.quad	0x3fe324913d6ef6c4              # double 0.59821378706666239
	.quad	0x3feea77fbe5b8c5b              # double 0.95794665507527143
	.quad	0x3f8b8c39e24bb040              # double 0.013451053827758241
	.quad	0x3fe95318d39821cd              # double 0.7913936741543296
	.quad	0x3fe2373a1b2b0f14              # double 0.56924157434738953
	.quad	0x3fcc2b773b4210e4              # double 0.22007646935902081
	.quad	0x3fef0c89ab876993              # double 0.97028048993824922
	.quad	0x3fd899bc1661e0c2              # double 0.38438322244429568
	.quad	0x3f90a5e7fd5829a0              # double 0.016257881963647969
	.quad	0x3fef19415e80c433              # double 0.97183292825332612
	.quad	0x3fee65f3e0f9146e              # double 0.94994539203675088
	.quad	0x3fea92a6e3dbd3b9              # double 0.83040184501316283
	.quad	0x3feaa7b66c4703cb              # double 0.83297272823266988
	.quad	0x3fb8fa380f9b8b48              # double 0.097568038759658582
	.quad	0x3fe9109029e33020              # double 0.78327186757224254
	.quad	0x3fbb99905f0f6d00              # double 0.10781194992835097
	.quad	0x3fefde74a68cd3c3              # double 0.99590523270909903
	.quad	0x3fefa1a01183be0e              # double 0.98847964688133216
	.quad	0x3fea645e28e5187b              # double 0.82475193011556713
	.quad	0x3fde68b11cb5fb1c              # double 0.47513988307757571
	.quad	0x3fc52ceb7508c63c              # double 0.1654333421188755
	.quad	0x3fead562f973b2bc              # double 0.83854817124446112
	.quad	0x3fca9f812ce4aa9c              # double 0.20799269382526553
	.quad	0x3fe6a4d71a123c82              # double 0.70762209980047452
	.quad	0x3fdcd88b30315494              # double 0.45071677881544159
	.quad	0x3fed134a4b2f3c23              # double 0.90860476192927242
	.quad	0x3fe87b0f36823f7e              # double 0.76502190252539015
	.quad	0x3fe6c28409407820              # double 0.7112446003627646
	.quad	0x3fbf7773b74c1420              # double 0.12291644310978755
	.quad	0x3fefd0eb0bbf3e0b              # double 0.99425270361274564
	.quad	0x3fa582317bbe8c70              # double 0.042008921008595546
	.quad	0x3feb83a6e56c8217              # double 0.85982079324100169
	.quad	0x3fe1b9719dff2876              # double 0.55388718470318454
	.quad	0x3fe17bd39e0e4d28              # double 0.54636555547987076
	.quad	0x3fd289a9534b79a0              # double 0.28965218672046866
	.quad	0x3fe773812ebe4b29              # double 0.73284968499715319
	.quad	0x3fc21c76ac5d1400              # double 0.14149363914671653
	.quad	0x3fe2e647acd01bff              # double 0.59061034920239297
	.quad	0x3fbc7b6771118d60              # double 0.11125799665892577
	.quad	0x3f93b5973c9228a0              # double 0.01924740130611069
	.quad	0x3fc8a8069734fd54              # double 0.19262773879197914
	.quad	0x3fe73310383f3aa1              # double 0.72498332010021127
	.quad	0x3fbe87ce534280a0              # double 0.11925973446568827
	.quad	0x3fceea3413a563ec              # double 0.24152232131271434
	.quad	0x3fe9aa8237955fd9              # double 0.80206404548789145
	.quad	0x3fec40a78083317d              # double 0.88289237117855601
	.quad	0x3fe8968c6d78b5e1              # double 0.76837750798375393
	.quad	0x3fece95037988b3d              # double 0.90348063334054241
	.quad	0x3fe8016b1106933a              # double 0.75017312360123545
	.quad	0x3fec1854eb7b0d17              # double 0.87797018043821395
	.quad	0x3fb101dcb73d8e98              # double 0.066434664474906646
	.quad	0x3fe764531bb3217c              # double 0.73099666032889798
	.quad	0x3fe3f67817a9c20c              # double 0.62383656140997479
	.quad	0x3febcad10d718433              # double 0.86850788713139193
	.quad	0x3fe0e2f8b6566677              # double 0.52770648587029612
	.quad	0x3fc46a3b71550170              # double 0.15949194940368328
	.quad	0x3fe559ec81e7851a              # double 0.66722703334758937
	.quad	0x3fdfa204dbb7a0f2              # double 0.49426385361449754
	.quad	0x3fe230e5771959b5              # double 0.56846879254844984
	.quad	0x3fd445407c65bf6c              # double 0.31672680042446788
	.quad	0x3fef04dfa924d798              # double 0.96934493099137153
	.quad	0x3fedd9d78041d4ae              # double 0.93284201669907474
	.quad	0x3fe97db57348d44c              # double 0.79659531132222971
	.quad	0x3fdcceb0499f9528              # double 0.45011527242452809
	.quad	0x3fc9e2757d3394cc              # double 0.20222347844461408
	.quad	0x3fdb03cfaf496164              # double 0.42210762136303104
	.quad	0x3fd0d73d6fe6057a              # double 0.26313720634069393
	.quad	0x3feeb1a7e7f1950a              # double 0.95918650914669112
	.quad	0x3fd0c871391cc7f2              # double 0.26223402573953003
	.quad	0x3fe7457a1d42dd7f              # double 0.72723108019901861
	.quad	0x3fcfaeeba1b1e7f8              # double 0.24752564807187105
	.quad	0x3feddb4ec6f02001              # double 0.93302096228671882
	.quad	0x3febbef17905e1bc              # double 0.86705850255298555
	.quad	0x3feea1d9fc3121e1              # double 0.9572572637198925
	.quad	0x3fc2f8f20f310720              # double 0.14822221509717171
	.quad	0x3fd67ce3bc43a672              # double 0.35137265572720999
	.quad	0x3fee1e00755a2478              # double 0.94116232796035514
	.quad	0x3fb87dbf6d41a408              # double 0.09566875855820467
	.quad	0x3fe7148331c755b5              # double 0.72125396463768843
	.quad	0x3fe82ebd6f87daff              # double 0.75570556433999048
	.quad	0x3fef22d7cce219f2              # double 0.97300329223872795
	.quad	0x3febc5a427304084              # double 0.86787612585068574
	.quad	0x3fc07239e62a6a7c              # double 0.12848590601500465
	.quad	0x3fc2c70819056184              # double 0.14669896337251143
	.quad	0x3fead641e5fee455              # double 0.8386544696906052
	.quad	0x3fee1c7986e9ab68              # double 0.94097591734076235
	.quad	0x3fd8a7666005ff02              # double 0.3852172792175993
	.quad	0x3fe574e602e0d3cd              # double 0.67051983415751126
	.quad	0x3fd35e8f48f16cd6              # double 0.30264646647783644
	.quad	0x3fdf797982b631e4              # double 0.49178922428907712
	.quad	0x3fd49a1cd544872a              # double 0.32190628840372659
	.quad	0x3fe5bdd15d85fe25              # double 0.67942112222948892
	.quad	0x3fe282eb4fea15c6              # double 0.57848134620933744
	.quad	0x3fd3ca3ed3db0df6              # double 0.3092190808203833
	.quad	0x3fcfdf66f3159764              # double 0.24900519246437647
	.quad	0x3feac193ebe83fbd              # double 0.83613010478619965
	.quad	0x3fc8d619d9c66b5c              # double 0.19403384336041085
	.quad	0x3fe71e5d58379be9              # double 0.72245661954809492
	.quad	0x3fe60d7561b1f93f              # double 0.68914288598151774
	.quad	0x3fe4515d5504c3b2              # double 0.6349321995277164
	.quad	0x3fc606a4c2465cc4              # double 0.17207774625851446
	.quad	0x3fe81ef7c7b35d71              # double 0.75378026012451305
	.quad	0x3feb024c0b615b5e              # double 0.84403040144648478
	.quad	0x3fdbf29345e2b742              # double 0.43668062042967304
	.quad	0x3fd14384263049fc              # double 0.26974586228712361
	.quad	0x3feafb651c5dadfe              # double 0.84318786182615191
	.quad	0x3fe0501bde477c67              # double 0.50977891363062333
	.quad	0x3fe3947d2b90bbb5              # double 0.61187609204158966
	.quad	0x3fdc0681771ee8b2              # double 0.43789707787403664
	.quad	0x3feec67c205514da              # double 0.961729109906311
	.quad	0x3fe2d9c0fdb1c615              # double 0.58908128308957208
	.quad	0x3fe4077f97e58032              # double 0.62591533343584715
	.quad	0x3feb95fb89542ae3              # double 0.86205841848399378
	.quad	0x3fe9c466421291f0              # double 0.8052245417098316
	.quad	0x3fea537c72b511d1              # double 0.8226911774041189
	.quad	0x3fe39fc28faf7b54              # double 0.61325195373124552
	.quad	0x3fe56641d146ea8a              # double 0.66873255609910243
	.quad	0x3f93914b44a5ef80              # double 0.019108940186455481
	.quad	0x3fc37307d3df1600              # double 0.15194795460972443
	.quad	0x3fd8de2a89eeaee8              # double 0.38855994672733951
	.quad	0x3fca407855714f04              # double 0.20509246990206276
	.quad	0x3fd4abef74f25880              # double 0.32299410267422246
	.quad	0x3fe568470fb0b443              # double 0.66897919716360155
	.quad	0x3feec165750f2771              # double 0.96110794890522133
	.quad	0x3fe8989b4612b414              # double 0.76862872778076729
	.quad	0x3fe2556f720c7d69              # double 0.57292911791948342
	.quad	0x3fc735a74ba8d2a8              # double 0.18132487482366355
	.quad	0x3fe7334d57130dc4              # double 0.72501246458744406
	.quad	0x3fc3fbbc4218e45c              # double 0.15611985423473385
	.quad	0x3fc87de74c2910f4              # double 0.19134227007646809
	.quad	0x3fcc0b5d95a00c88              # double 0.21909684949796238
	.quad	0x3fed5f5cce0acdc8              # double 0.91789093248956366
	.quad	0x3fda5fa6d1dcf218              # double 0.41208811277809465
	.quad	0x3fe8c0ae27e4dee7              # double 0.77352054397394177
	.quad	0x3fd50c9b43994bbc              # double 0.32889443971106025
	.quad	0x3fe37a2b7e77744e              # double 0.60866331768523607
	.quad	0x3fd84dd9aa95942e              # double 0.37975160273191733
	.quad	0x3fe347b07df7a10e              # double 0.60250115015972638
	.quad	0x3fe53aef701bb0bf              # double 0.66344425102354154
	.quad	0x3fe4c5b9021cda92              # double 0.64913607037199683
	.quad	0x3fd65b881cc6a2f4              # double 0.34933665094517541
	.quad	0x3fd03567a6c47d54              # double 0.25325957570926971
	.quad	0x3fe2ba14c68cf622              # double 0.58521498469753319
	.quad	0x3f75ef2ae3b6e080              # double 0.0053550410624937372
	.quad	0x3fefb1ac90c93a74              # double 0.99043873098874124
	.quad	0x3fe28ad91b9fa311              # double 0.57944922824126099
	.quad	0x3fe60d29b228578d              # double 0.68910679623034954
	.quad	0x3fdc9bfc1048be92              # double 0.44702054586648743
	.quad	0x3fe4b88708245874              # double 0.64752532568196708
	.quad	0x3f77f8d4a139b180              # double 0.0058525377131498635
	.quad	0x3fd338739c3a29c4              # double 0.30032053238451462
	.quad	0x3fc18b872f0cbce8              # double 0.13707055852271499
	.quad	0x3fe3c2bfcf92ed36              # double 0.61752310315879444
	.quad	0x3fe7b0a708e3d5ab              # double 0.7403140233642963
	.quad	0x3fd75d7831dae152              # double 0.36507992619182972
	.quad	0x3fefb4059559a700              # double 0.9907253186222249
	.quad	0x3fcf8b3e96ae10a4              # double 0.24643690450114264
	.quad	0x3fc162035045cefc              # double 0.13580361766400262
	.quad	0x3fc4ec6dcbc110d0              # double 0.16346523713048677
	.quad	0x3fee81acabfebbe4              # double 0.95332940666946486
	.quad	0x3feda447459d115e              # double 0.92630351635356667
	.quad	0x3fdc1a067b3e992e              # double 0.43908845935438279
	.quad	0x3f95e5545afa2f20              # double 0.021382635166943165
	.quad	0x3fedd347d44cba48              # double 0.93204108681477127
	.quad	0x3fc84e9edaf11424              # double 0.18989930811417921
	.quad	0x3fe368992464385e              # double 0.60651833636962826
	.quad	0x3feb2160393674c9              # double 0.84782420324668195
	.quad	0x3fd1dd4f6f8668e2              # double 0.27913270846478444
	.quad	0x3fed1fb7b8a0544c              # double 0.9101217847807077
	.quad	0x3fd0a8866df9b612              # double 0.26028595676220434
	.quad	0x3fea94b02892113e              # double 0.83065040515842958
	.quad	0x3fe786f20998bcf2              # double 0.73522283434240721
	.quad	0x3fbadafc152fe3a0              # double 0.10490394131910685
	.quad	0x3fcbe0266c5483d4              # double 0.21777801789815376
	.quad	0x3fd6987a4815d91a              # double 0.35305649795135852
	.quad	0x3fd719528a402a3e              # double 0.36092055798568257
	.quad	0x3fbde95507b450f0              # double 0.11684161604017951
	.quad	0x3fca3d25b0ea74bc              # double 0.20499106539219791
	.quad	0x3fc00ac7b817c930              # double 0.12532898415481375
	.quad	0x3feac0a2e8ea5c5e              # double 0.83601518145850284
	.quad	0x3fd3e22287ab6752              # double 0.31067717789629967
	.quad	0x3fe5dfc1191f508a              # double 0.68356375605300568
	.quad	0x3fe98435a4f1ee90              # double 0.79738886085347538
	.quad	0x3fc0895d69f3f144              # double 0.12919204400521711
	.quad	0x3fe540fb3e34207e              # double 0.66418230198998152
	.quad	0x3fe3a67cf7ce9c7f              # double 0.6140732612592642
	.quad	0x3fc9e900e04d18fc              # double 0.20242320015149307
	.quad	0x3fe8f599229abade              # double 0.77998024710344871
	.quad	0x3fed1d064ef51222              # double 0.90979304715489584
	.quad	0x3fe10706b8cba14a              # double 0.53210769741876018
	.quad	0x3fb3e22afebc9508              # double 0.077669799033703524
	.quad	0x3fda5b6af2ea5b68              # double 0.41182969782078382
	.quad	0x3fd3af99c2cfc56e              # double 0.30759281181879927
	.quad	0x3fe67ed41592dfd5              # double 0.7029819890367387
	.quad	0x3fe1657467f071b2              # double 0.54363460827476318
	.quad	0x3fae46180091a8b0              # double 0.05912852293916282
	.quad	0x3fbc24ca50df1310              # double 0.10993637537383116
	.quad	0x3fb3e50c678c1be0              # double 0.077713752060034391
	.quad	0x3fec17a05e33a581              # double 0.87788408659723427
	.quad	0x3fe064c00ad76ff1              # double 0.51229860417833895
	.quad	0x3fad8e6f2133ff90              # double 0.05772731094657424
	.quad	0x3fdf87e92cf3ed42              # double 0.49267033948827443
	.quad	0x3fdd28a037670de6              # double 0.45560460482030718
	.quad	0x3fe3db277194396d              # double 0.62050220664404565
	.quad	0x3fc75b789a2a3a78              # double 0.18247897651277234
	.quad	0x3fafa4acdf1c9730              # double 0.06180324767619394
	.quad	0x3fe72892d33f2fe0              # double 0.72370282420297016
	.quad	0x3fa22e54ee713540              # double 0.035509733301845703
	.quad	0x3fcf8267975488f0              # double 0.24616713418169622
	.quad	0x3fec4f769f3a34e0              # double 0.88470011805625503
	.quad	0x3fe97a5a20b8b264              # double 0.79618555441772942
	.quad	0x3fe17596f3ccc3df              # double 0.54560420624886408
	.quad	0x3fee3daedf8c03b4              # double 0.94502967511663493
	.quad	0x3fedb6d5cea266ad              # double 0.92856874807622136
	.quad	0x3fd8a688821a859a              # double 0.38516438203267855
	.quad	0x3fc291698c9891a4              # double 0.14506263127362928
	.quad	0x3fe6011f06b4931c              # double 0.68763686475412866
	.quad	0x3f9703faad9dce80              # double 0.022476116987901751
	.quad	0x3fe0c6947152f20f              # double 0.52424070485682417
	.quad	0x3feca132737090f7              # double 0.89467737719362972
	.quad	0x3fe031fa07708a7d              # double 0.50610066845941015
	.quad	0x3fdc0421ab7592bc              # double 0.43775216812199935
	.quad	0x3fee17e86bc0e9c0              # double 0.94041844411486152
	.quad	0x3fe2fcae785e415e              # double 0.59334491261874311
	.quad	0x3fe1a5420623b219              # double 0.55142308425053266
	.quad	0x3fe44c3288024551              # double 0.63430143894417246
	.quad	0x3fe7b6e489896f92              # double 0.74107577192943297
	.quad	0x3fed5e6b14bcefab              # double 0.91777566957852252
	.quad	0x3fe20bb3d74417c2              # double 0.5639285282529658
	.quad	0x3fd4798961e1b750              # double 0.31991800841102691
	.quad	0x3fbfe278484e04c8              # double 0.12454940572026196
	.quad	0x3fe8a917ca998367              # double 0.77064122743841501
	.quad	0x3fea382e17551a30              # double 0.81935791546931647
	.quad	0x3fd020839d221fa8              # double 0.25198450417564766
	.quad	0x3fccee62bf4f4958              # double 0.22602495518965315
	.quad	0x3fed61a9ed4ab8a4              # double 0.91817184778280536
	.quad	0x3fe15d56d5f7f034              # double 0.54264394560551077
	.quad	0x3fc238625753a6a4              # double 0.14234570755006815
	.quad	0x3fddd6d5bcf890ce              # double 0.4662374825877692
	.quad	0x3fbb2678b97c84d0              # double 0.10605577972866631
	.quad	0x3fe7cdb1334ef333              # double 0.7438589098088414
	.quad	0x3f9e894fd30d02e0              # double 0.029820678001899803
	.quad	0x3fdfe934f77b3a42              # double 0.4986088196573385
	.quad	0x3fe3c1e3a955964b              # double 0.61741812775717031
	.quad	0x3fd53d397f10c666              # double 0.33186185272925284
	.quad	0x3fec18068c9add1c              # double 0.87793281042005189
	.quad	0x3fd4bd0812f3df5c              # double 0.32403756953089213
	.quad	0x3fe941fa416faf60              # double 0.78930390148660123
	.quad	0x3fd52f138e1ce4d8              # double 0.330998314649674
	.quad	0x3fd6971d63ecd7a8              # double 0.35297331579510649
	.quad	0x3fb321f428554518              # double 0.074736842963165961
	.quad	0x3f9ee748f2482860              # double 0.030179157054626038
	.quad	0x3fea4cf724b16242              # double 0.8218951908739387
	.quad	0x3fc3b897bf9ff3c8              # double 0.15407082420997953
	.quad	0x3fef25b5820a90e9              # double 0.97335315130888233
	.quad	0x3fe330d2ca89c6cd              # double 0.59970988805999925
	.quad	0x3f84e7f2ebb3c480              # double 0.010208032434521508
	.quad	0x3fede490bbff9b77              # double 0.93415104597521192
	.quad	0x3fe81cad86b654af              # double 0.75350071249945028
	.quad	0x3fbebd8f243f3390              # double 0.12007994303639991
	.quad	0x3fe04c770514e79f              # double 0.50933409683715414
	.quad	0x3fb6380c1db90548              # double 0.086792714363601253
	.quad	0x3fea6282f4038990              # double 0.82452533396672045
	.quad	0x3fd972ad19ad4512              # double 0.39762427814010082
	.quad	0x3fe77b051837979e              # double 0.73376707773126149
	.quad	0x3fe4744336c6b684              # double 0.63919220636826468
	.quad	0x3fe06d7fc836e0d7              # double 0.51336659530991369
	.quad	0x3fda78cd937a7234              # double 0.41362323190859063
	.quad	0x3fda8871b7679434              # double 0.41457789335828754
	.quad	0x3fe92df1f0537d2f              # double 0.78685852945992518
	.quad	0x3fe553ae5cdceba0              # double 0.66646497857378861
	.quad	0x3fdff4c478ac63ea              # double 0.49931442055236508
	.quad	0x3fdb6c9b024fedce              # double 0.42850375390818563
	.quad	0x3fe3f73fde41621e              # double 0.62393182191141583
	.quad	0x3fe55e26feb173f6              # double 0.66774320359001993
	.quad	0x3fe83aa1a2615974              # double 0.75715715136429517
	.quad	0x3fdebb1df10df4b2              # double 0.48017071285705548
	.quad	0x3fd1fed0011da038              # double 0.28117752179105393
	.quad	0x3fe1b3242696cdb9              # double 0.55311782395295161
	.quad	0x3fdf83b2aa2eda70              # double 0.49241320247111897
	.quad	0x3fe8e3e047c5050e              # double 0.77781690614225041
	.quad	0x3fdb564d4e7c36e4              # double 0.42714245476314106
	.quad	0x3fe8900e4da1fd82              # double 0.76758494532252564
	.quad	0x3fec974dc65b4317              # double 0.89346970311644014
	.quad	0x3fb2e026d464cdd8              # double 0.073732783178278694
	.quad	0x3facbc2051cb2880              # double 0.056122789368218129
	.quad	0x3fc1d09f01308f10              # double 0.13917911108102787
	.quad	0x3fd233c19ea308ac              # double 0.28440895549659717
	.quad	0x3f892666b36bdc00              # double 0.012280275679115604
	.quad	0x3fda7b59654a759e              # double 0.41377863780675195
	.quad	0x3f8088f3cb28ff80              # double 0.0080737158178860735
	.quad	0x3fe7990660cae4fa              # double 0.73742979912563489
	.quad	0x3feef15e6ae89c76              # double 0.96696396713822597
	.quad	0x3fc94251a4601ea8              # double 0.19733639265199554
	.quad	0x3fec6e0323119834              # double 0.88842923020707198
	.quad	0x3fed75ec5549710e              # double 0.92064491899103174
	.quad	0x3fe597c85317d963              # double 0.67477813939221354
	.quad	0x3fe48c247483966c              # double 0.64210722691195832
	.quad	0x3fe98e2e6a69e3ff              # double 0.79860611709511875
	.quad	0x3fef067e813ec10f              # double 0.96954274409475427
	.quad	0x3fd5dab7fb65f488              # double 0.34147452879535267
	.quad	0x3fe4fdd8ea0c027e              # double 0.65598722183501912
	.quad	0x3fe5517ad7c557a8              # double 0.66619627135036286
	.quad	0x3fd8149624ca2580              # double 0.37625650017488255
	.quad	0x3feb2c6588b51c63              # double 0.84916950894047394
	.quad	0x3fcfb6e3ce3715f4              # double 0.24776885575390362
	.quad	0x3fd45227d8ade536              # double 0.31751438293538869
	.quad	0x3fefa6ff591f1ec5              # double 0.98913543135218928
	.quad	0x3fa2dd427e764630              # double 0.036844327866799254
	.quad	0x3feeb79b14e21556              # double 0.95991281584489729
	.quad	0x3fd49dfa0b46274c              # double 0.32214213467579067
	.quad	0x3fe087ced04cd407              # double 0.51657810863127984
	.quad	0x3fe2e77d20e89f08              # double 0.59075790812946227
	.quad	0x3fcb78e67e26ab24              # double 0.21462708625525651
	.quad	0x3fdf9a457df52098              # double 0.49379098225154783
	.quad	0x3fec035565d8bdcf              # double 0.87540693180010887
	.quad	0x3fe9b9fb5e197dc3              # double 0.80395286921332632
	.quad	0x3fecd3a963c23639              # double 0.90083760723218298
	.quad	0x3fe78ecec2b9e86c              # double 0.73618257553540678
	.quad	0x3fde0d8e282f8e66              # double 0.46957734989539401
	.quad	0x3fed4e68e7212705              # double 0.9158215059516982
	.quad	0x3fef3729553e569a              # double 0.97548357628939475
	.quad	0x3fe8de3e173cc4da              # double 0.77712921656179934
	.quad	0x3feeaf1b4363bfbf              # double 0.95887530481376603
	.quad	0x3fd051ca2f1eaa74              # double 0.25499205209295117
	.quad	0x3fe4c3f63cce090b              # double 0.64892112613623121
	.quad	0x3fa6e5e0fdce9ad0              # double 0.044722586614900472
	.quad	0x3fe2ad047b8a88fa              # double 0.58362030152446143
	.quad	0x3fe8dd1ac85d7707              # double 0.77699031003769015
	.quad	0x3fe3cfb160f407e7              # double 0.61910313545399454
	.quad	0x3fa9626664ce5990              # double 0.049578857236315277
	.quad	0x3fdfddf185054560              # double 0.49792135229389167
	.quad	0x3feb51d9eb366050              # double 0.85374160709307922
	.quad	0x3fe216d0cb150359              # double 0.5652851072737618
	.quad	0x3feb65e6768e3137              # double 0.85618899493559908
	.quad	0x3fe4fbeaaea87276              # double 0.65575155365838955
	.quad	0x3fb38e4051fd3100              # double 0.076389331833699003
	.quad	0x3fdb2c74363eabb8              # double 0.42458825394958977
	.quad	0x3fe64f677ff76c15              # double 0.69719290727096228
	.quad	0x3fc5223c1b1c9a08              # double 0.16510726283850397
	.quad	0x3febe4983a221d7a              # double 0.87165461877968586
	.quad	0x3fd8cc987a33f934              # double 0.38748752530945585
	.quad	0x3fe0cf010ef3964f              # double 0.52526905937402002
	.quad	0x3fee715b8a2c18ef              # double 0.95133759485977787
	.quad	0x3fc2008541d05d74              # double 0.14064088548250775
	.quad	0x3fe370347d117969              # double 0.60744690349001218
	.quad	0x3fd32f36331962ac              # double 0.29975657453682447
	.quad	0x3fd6d7fdf5cdc43e              # double 0.3569331074168679
	.quad	0x3fd226e3dda333e2              # double 0.28362366337097289
	.quad	0x3fa060a73eb435f0              # double 0.031987406162539034
	.quad	0x3fe64e71713eb694              # double 0.69707557790907737
	.quad	0x3fe7bc43e157ac9a              # double 0.74173158657267213
	.quad	0x3fed95aa34eec53b              # double 0.92451963747422583
	.quad	0x3fec90261c7ab4f1              # double 0.89259629785888539
	.quad	0x3fe4dbf037f830ab              # double 0.65184794360677267
	.quad	0x3fc4f407f21b0190              # double 0.1636972362666822
	.quad	0x3fd03c4e460d5be4              # double 0.25368077126534971
	.quad	0x3fc5a7698167038c              # double 0.16917151277996501
	.quad	0x3fed458123031de1              # double 0.91473442877116551
	.quad	0x3fe5be1f4f176587              # double 0.67945828864610369
	.quad	0x3fdde8adefe811e6              # double 0.46732662609454534
	.quad	0x3fcba1256edbd450              # double 0.21585529244444723
	.quad	0x3fe9229605d6bb53              # double 0.78547192707433522
	.quad	0x3fd03dfa4f586368              # double 0.25378282307206357
	.quad	0x3fec625c8038774b              # double 0.88700699847297793
	.quad	0x3feb418edceb5a64              # double 0.85175269268331676
	.quad	0x3fe801345a728f7e              # double 0.75014703431632745
	.quad	0x3fd43337a211b6ca              # double 0.3156260569293009
	.quad	0x3feb148c0beaf2f1              # double 0.84625818565072397
	.quad	0x3fe647d87430affa              # double 0.69627020543475671
	.quad	0x3feaacfe1038323c              # double 0.83361724059938735
	.quad	0x3fefe663d6ff26dd              # double 0.99687377921619779
	.quad	0x3fe346d9a33d3a52              # double 0.60239869959498038
	.quad	0x3fef0df02f91d312              # double 0.9704514435858036
	.quad	0x3feae0433a088cef              # double 0.8398758061852315
	.quad	0x3fe5a639d9ed567f              # double 0.67654125751387528
	.quad	0x3fe19ec56f478adb              # double 0.55063125356931708
	.quad	0x3fecf30f3f0e7332              # double 0.9046703559466549
	.quad	0x3fe53e96eaabb9eb              # double 0.66389032205716825
	.quad	0x3fd348e72e406fd0              # double 0.30132464901703049
	.quad	0x3fc6d55d219d3180              # double 0.17838634625730876
	.quad	0x3fea86a8b16c6b4e              # double 0.82893786099462274
	.quad	0x3fc5ba014cbfdec0              # double 0.1697389244798071
	.quad	0x3fdaf10db0456c6e              # double 0.42096273626311287
	.quad	0x3fa22ee26c81a8c0              # double 0.035513950105114045
	.quad	0x3fe1ee38fc87ec82              # double 0.56032990763141322
	.quad	0x3fded7ea818410cc              # double 0.48192846916232379
	.quad	0x3fc74b1d44129a28              # double 0.18197980712757666
	.quad	0x3fc8111fbbd8d920              # double 0.18802258178920628
	.quad	0x3fe87423e17f7cb2              # double 0.76417726557328636
	.quad	0x3fe643ad7cffc42e              # double 0.6957614365948126
	.quad	0x3fa23baddd6d94c0              # double 0.035611565856734639
	.quad	0x3fee09a8e119e11c              # double 0.93867916073853363
	.quad	0x3fd6156f1d12bbf6              # double 0.34505822982003964
	.quad	0x3feb8c73d350218e              # double 0.86089507362435014
	.quad	0x3fd55abe6da91a9e              # double 0.3336635657218866
	.quad	0x3fcca91002ded700              # double 0.2239093793884237
	.quad	0x3fdbe8d7581e3d5c              # double 0.43608649831090474
	.quad	0x3fe1e8ce1d01cec9              # double 0.55966859498445232
	.quad	0x3fd7b4d3ca9e914c              # double 0.37041182314921595
	.quad	0x3fd329aa08983da0              # double 0.29941798056912639
	.quad	0x3fcd03c3c20f2774              # double 0.22667738891169231
	.quad	0x3fd963c29f604420              # double 0.39671388210359915
	.quad	0x3fed8880ee044c21              # double 0.92291304099706306
	.quad	0x3f99a428c88bb6c0              # double 0.025040280571309692
	.quad	0x3fd50e3799ed452a              # double 0.32899274856488836
	.quad	0x3fe22a6a5a2673b3              # double 0.56767766578160772
	.quad	0x3fedabb02dd46a9d              # double 0.92720803214190861
	.quad	0x3fefa0d1714b678e              # double 0.98838111999360634
	.quad	0x3fefaa2a08ebe0d5              # double 0.98952199690304587
	.quad	0x3fedaca992787af0              # double 0.92732695205253712
	.quad	0x3fefb622d47c2b8c              # double 0.99098340512260696
	.quad	0x3fc237275b528d0c              # double 0.14230815848450395
	.quad	0x3fc3eab71df7433c              # double 0.15560044253518324
	.quad	0x3fd1f59ca8551ffa              # double 0.28061596335146499
	.quad	0x3fddf0ae32491256              # double 0.46781496916472542
	.quad	0x3fe5f1344ee4e691              # double 0.68569388779651963
	.quad	0x3fea2de16328259f              # double 0.81810063711707304
	.quad	0x3fd381b6af5eb962              # double 0.3047920906637015
	.quad	0x3fee221baa4fcf5c              # double 0.94166358245864101
	.quad	0x3fea56ffb7fc8f04              # double 0.82311998305201017
	.quad	0x3fb697bc4de2edb8              # double 0.088252800956005184
	.quad	0x3fe2195b9389c4ff              # double 0.56559542480513858
	.quad	0x3fe731553733090b              # double 0.72477207928776133
	.quad	0x3fef725e42432ede              # double 0.98271096174127215
	.quad	0x3fd95a15e24633ea              # double 0.39612338158695926
	.quad	0x3fee82acc02c4ebd              # double 0.9534515145664596
	.quad	0x3fe3138f4843dfe5              # double 0.59613765825542642
	.quad	0x3fe8de28c793183f              # double 0.77711905459796771
	.quad	0x3fe2cf3c9bd28c0b              # double 0.58779745515892168
	.quad	0x3f5ed29955bf6a00              # double 0.0018812653934136003
	.quad	0x3fd8439cb4538b06              # double 0.37912671670908116
	.quad	0x3fe28c5ae4d26e1f              # double 0.57963318530841323
	.quad	0x3fd9184a9e2724ce              # double 0.3921076340162245
	.quad	0x3fd38b032bff90e4              # double 0.30535964295110163
	.quad	0x3fdfdad12189504e              # double 0.49773052477872148
	.quad	0x3fdeb85d72753998              # double 0.48000274827509193
	.quad	0x3fdb1168af9df612              # double 0.42293755674458666
	.quad	0x3fd054056e7d2368              # double 0.25512824811862922
	.quad	0x3fea8d7f6f020bcd              # double 0.82977267915009068
	.quad	0x3fdea53dd9389990              # double 0.47883554661748295
	.quad	0x3fe65b19ad2a2059              # double 0.69862064191057549
	.quad	0x3fe2f70b603d4087              # double 0.59265679165584195
	.quad	0x3fd0caaffe6f9138              # double 0.26237106177565606
	.quad	0x3fe483261f7d3518              # double 0.64100938940251506
	.quad	0x3feddf66914f5c07              # double 0.93352058773859958
	.quad	0x3fe08878c3c42190              # double 0.51665914760183007
	.quad	0x3fc92e58b5199634              # double 0.19672688334246546
	.quad	0x3fd62fa68bb110d0              # double 0.3466583599258799
	.quad	0x3fa32517ce2027f0              # double 0.037392372047250322
	.quad	0x3fd6362fd341e482              # double 0.34705730085949693
	.quad	0x3fb428adfff25de8              # double 0.078745722758291614
	.quad	0x3fe249bbc73da22b              # double 0.57150067247591119
	.quad	0x3fd2c75e574da7e8              # double 0.29341848874776
	.quad	0x3fe3e7134bc47410              # double 0.62195744322127844
	.quad	0x3fee40b7154647b5              # double 0.94539980082685438
	.quad	0x3fcc48b5c71b02b4              # double 0.22096893522213679
	.quad	0x3f9e948f43ae7980              # double 0.029863585000947435
	.quad	0x3fd32423a05714a8              # double 0.29908075960367819
	.quad	0x3fe55def3842016e              # double 0.66771660793169274
	.quad	0x3faee26bda509f70              # double 0.060321207427761148
	.quad	0x3fe4afe5f1fc5b26              # double 0.64647195113034139
	.quad	0x3fdcd31a4650ff20              # double 0.45038468233905071
	.quad	0x3fd83cf720ab99b4              # double 0.3787210291906391
	.quad	0x3fe918f87e1c874c              # double 0.78429817801609535
	.quad	0x3fe42e6d2eed6b68              # double 0.63066729703437563
	.quad	0x3fc437bc75df2b60              # double 0.157950933031624
	.quad	0x3f9666c101b5be60              # double 0.021876350144735546
	.quad	0x3fcee12f3d247c38              # double 0.24124708638643866
	.quad	0x3fddf25b80b4fe62              # double 0.46791732377093898
	.quad	0x3fed8d23cadb3674              # double 0.92347898121233962
	.quad	0x3fd7bd2a1c4595e0              # double 0.37092068444175474
	.quad	0x3fcfb93ec7fb8b08              # double 0.24784073605322754
	.quad	0x3fd55f09d9d099dc              # double 0.33392568846684667
	.quad	0x3fa97aa9b6d170f0              # double 0.049763969008127407
	.quad	0x3fd0c83366ad84f8              # double 0.26221928622369672
	.quad	0x3fdda0ff79c25ee4              # double 0.46295153513481879
	.quad	0x3fec1c19d937c386              # double 0.87843029427868724
	.quad	0x3fe0f3c5b1b7e742              # double 0.52975735388393042
	.quad	0x3fda9ab579154ea8              # double 0.41569268059286424
	.quad	0x3fb270e15dd10c18              # double 0.072034917263451681
	.quad	0x3fcb176dc4e14774              # double 0.21165248978882867
	.quad	0x3fc5e55790e9e424              # double 0.17106146407948686
	.quad	0x3fb2b522b07b1210              # double 0.073076408468360166
	.quad	0x3fb6a992d74b16c0              # double 0.088524987756581019
	.quad	0x3fcbf4b7af5da95c              # double 0.21840568602358246
	.quad	0x3f91f269c6c44780              # double 0.01752629542995221
	.quad	0x3fb48cfa82def738              # double 0.080276162100713644
	.quad	0x3fe06da959eb3787              # double 0.51338641702908283
	.quad	0x3fe3c178fbd346af              # double 0.61736725983265284
	.quad	0x3fe46c10f76affca              # double 0.63819168399640458
	.quad	0x3fcd240d8f42b95c              # double 0.2276627492441986
	.quad	0x3fe647ae56512cd8              # double 0.69625012263113728
	.quad	0x3fe337d0c3dd0a6c              # double 0.60056341414049319
	.quad	0x3fefc9978879d0ba              # double 0.9933583894294522
	.quad	0x3fb6a3ed76c98ea8              # double 0.088438836575330471
	.quad	0x3fd750f9f96c06d6              # double 0.36431741101851622
	.quad	0x3fec0e336b85c006              # double 0.87673350334625932
	.quad	0x3fef6cadedbb96ed              # double 0.98201652939016315
	.quad	0x3fe62acc69b78d2c              # double 0.6927244248185267
	.quad	0x3fae726945b8dba0              # double 0.059466638337134059
	.quad	0x3fe3c057f88970a7              # double 0.61722944776876865
	.quad	0x3fd3b05c0eca1d2e              # double 0.30763913578307978
	.quad	0x3fe6dc167e6fed4a              # double 0.71436619467514473
	.quad	0x3fce238f38f08a5c              # double 0.23546018867735341
	.quad	0x3fc6c2bdeb69e3a8              # double 0.1778180503349891
	.quad	0x3fb84a353bbf13d8              # double 0.094882323347590058
	.quad	0x3fac87937bc6a140              # double 0.055721863612520739
	.quad	0x3fc70f2082471904              # double 0.18014913903443397
	.quad	0x3fe546e3097cea43              # double 0.66490318158259532
	.quad	0x3fe01290f2315e00              # double 0.50226638129510093
	.quad	0x3fe8299defb4d8ac              # double 0.75508019273435911
	.quad	0x3fea843bbe308f2f              # double 0.82864176889822783
	.quad	0x3fc8d151071eb658              # double 0.19388783309607294
	.quad	0x3fe614bbf672bb76              # double 0.69003103384407782
	.quad	0x3f6c8be9ec695000              # double 0.0034846848314291634
	.quad	0x3fbdab1f1b888800              # double 0.11589235708427736
	.quad	0x3fe8b9e9a0910efa              # double 0.77269440994902472
	.quad	0x3fa053ffb8faefd0              # double 0.031890860872834659
	.quad	0x3f81e45c43851ac0              # double 0.0087363441567850363
	.quad	0x3fb38342103868a8              # double 0.076221589050336491
	.quad	0x3fe46ccfe6a4ae4f              # double 0.63828272864834357
	.quad	0x3fead0f0624ebd65              # double 0.83800524903010098
	.quad	0x3fe6c94276e49c22              # double 0.71206782552042491
	.quad	0x3fe7890e50bb1cb7              # double 0.73548045890574698
	.quad	0x3fd8889a1b80bcd6              # double 0.38333752332523596
	.quad	0x3f9078c50932e780              # double 0.016085699736073433
	.quad	0x3fac5a8d833ac0d0              # double 0.055378362912394175
	.quad	0x3fe1ebf39f14f2ff              # double 0.5600526911799476
	.quad	0x3fd9e9c12b47de90              # double 0.40489224650034661
	.quad	0x3fee3d030a35cc25              # double 0.94494773859185399
	.quad	0x3fe8d575376dc45f              # double 0.77605686975415356
	.quad	0x3fce5b46be4804d4              # double 0.23716053286628969
	.quad	0x3fe6ad3b298b978d              # double 0.70864637483895054
	.quad	0x3fe56ec559929f4c              # double 0.6697718381374016
	.quad	0x3fd051299a4aeada              # double 0.25495376651421753
	.quad	0x3fc8bdb2fd43688c              # double 0.19328915945408587
	.quad	0x3feaba7ee3ed43bb              # double 0.83526558415370944
	.quad	0x3fea1af5167a53f4              # double 0.81579069509700596
	.quad	0x3fd839f2fc4ffac6              # double 0.37853693618664541
	.quad	0x3fe2c87151b1775e              # double 0.58696809726437116
	.quad	0x3fa5b462fdefce30              # double 0.042391866205346296
	.quad	0x3fe899c4930bdbdd              # double 0.76877049179062917
	.quad	0x3fe30e95872dd479              # double 0.59553028490212434
	.quad	0x3fe6ded8cbc04a71              # double 0.71470298571723678
	.quad	0x3febbdd3e5aeff31              # double 0.86692232952188963
	.quad	0x3fd06af18c10e086              # double 0.25652731588662225
	.quad	0x3fedf9428863b1d9              # double 0.93667723311005624
	.quad	0x3fbc543dbb20a8e0              # double 0.11066041773361546
	.quad	0x3fe6e54bd9705185              # double 0.71549026936058679
	.quad	0x3fee865ad92f6d64              # double 0.95390074175831474
	.quad	0x3fdd75ca28109794              # double 0.46031431114749322
	.quad	0x3fcd2c060c162d78              # double 0.22790599432151359
	.quad	0x3fedbb4478b68961              # double 0.92910979820980455
	.quad	0x3fb2ce1a3dec2e68              # double 0.073457374685114041
	.quad	0x3fdfb850449a4712              # double 0.49562460612752191
	.quad	0x3fb3aab07d8090d0              # double 0.076823263778865724
	.quad	0x3fd6c3e2725af162              # double 0.35570584456924881
	.quad	0x3fefd1773cff8c17              # double 0.99431955255238591
	.quad	0x3fb87f199c5bac58              # double 0.095689392732013601
	.quad	0x3fba1a87993705d8              # double 0.10196731081580113
	.quad	0x3fef564108b7f65b              # double 0.97927905752994648
	.quad	0x3fd4384efd02d0e0              # double 0.31593680103402555
	.quad	0x3fe2aca0ad4090d9              # double 0.58357271040270142
	.quad	0x3fc1c83f8cbad244              # double 0.13892359134264798
	.quad	0x3fdd86e23737d8d0              # double 0.46135764496228848
	.quad	0x3fd5c3256671f044              # double 0.34003577236558535
	.quad	0x3fe5c1b00b65f332              # double 0.67989351488322414
	.quad	0x3fc45202cb22f27c              # double 0.15875277441763902
	.quad	0x3fe3892eca89ec4c              # double 0.61049594457961964
	.quad	0x3fdc06a8e70b3850              # double 0.43790648043512181
	.quad	0x3febf7a248c6a697              # double 0.87397875036295403
	.quad	0x3fbbe99f4ab9a4d8              # double 0.10903354238839158
	.quad	0x3fe28fa36ee8f696              # double 0.58003398573028409
	.quad	0x3fbe7d86ca5efe28              # double 0.11910288277339787
	.quad	0x3fe666c63f18ce78              # double 0.7000457031594598
	.quad	0x3fd66b4086955dcc              # double 0.35029614584842927
	.quad	0x3fecbbf69e9c9f0a              # double 0.8979447458159211
	.quad	0x3fd6b77dd18e3936              # double 0.3549494310799618
	.quad	0x3fe3340a310046e0              # double 0.60010251589320873
	.quad	0x3fde61d7640528f4              # double 0.47472176330178617
	.quad	0x3fe2dffde7cb2bd5              # double 0.58984275123782004
	.quad	0x3fb38821dbddd8f8              # double 0.076295963457457705
	.quad	0x3f56f56563634a00              # double 0.0014012804145308033
	.quad	0x3fcd1811558c1d48              # double 0.22729698826899836
	.quad	0x3fb20d5a6a211710              # double 0.070516253385985772
	.quad	0x3fe0eb87af077311              # double 0.52875122247096062
	.quad	0x3fc030d892e1ec54              # double 0.12649066135404274
	.quad	0x3fe904140a8afb52              # double 0.78174783763084066
	.quad	0x3fcd8ced68384a00              # double 0.23086326207028662
	.quad	0x3fc3606406d5fcf0              # double 0.15137911161216477
	.quad	0x3fe851461a4ee7a4              # double 0.75992112291645641
	.quad	0x3fecad62a637118c              # double 0.89616520370377505
	.quad	0x3fe148c19930a21d              # double 0.54013137741009454
	.quad	0x3fe04998ed2d956d              # double 0.50898405383911227
	.quad	0x3fcecfed28e6c5b8              # double 0.24072041031972247
	.quad	0x3feee2f5e3c9adeb              # double 0.96520514001661916
	.quad	0x3feac8f0ac415451              # double 0.83702882426826808
	.quad	0x3fd4336bcda6c802              # double 0.31563849528458843
	.quad	0x3fda157df34271b8              # double 0.40756176715674597
	.quad	0x3fd12e1e088268c8              # double 0.26843977766987992
	.quad	0x3fc34bda6df57ea8              # double 0.15075235718812974
	.quad	0x3fd89efe47773166              # double 0.38470417956411607
	.quad	0x3fbc43f46b25fec8              # double 0.11041190734794804
	.quad	0x3fe5e4064c4d70e8              # double 0.68408503439743829
	.quad	0x3fda834ae10dc994              # double 0.41426345804134113
	.quad	0x3fc7dd87b37ee34c              # double 0.18644806160389249
	.quad	0x3fe7ed985e12e3fc              # double 0.74775331853663785
	.quad	0x3fe757f166e4fafa              # double 0.72948522659848369
	.quad	0x3fb00bf831761670              # double 0.062682640147693425
	.quad	0x3fa517d522e1d050              # double 0.041197453029696463
	.quad	0x3fb1bc198d1c3af0              # double 0.06927642531466538
	.quad	0x3fe3a89cc912d754              # double 0.61433257362544191
	.quad	0x3facb2f80126fb60              # double 0.056052923336656901
	.quad	0x3fe39c6ce81515b7              # double 0.61284489945017284
	.quad	0x3fc865ad9b7bec7c              # double 0.19060297100063284
	.quad	0x3fe25374e866aa62              # double 0.57268758192851643
	.quad	0x3fed7dac28740fac              # double 0.92159088040397341
	.quad	0x3fe02b0878d60b6d              # double 0.5052530632095632
	.quad	0x3feb15ba3a423f39              # double 0.84640227678935454
	.quad	0x3fd478be8e966ee4              # double 0.31986965107510756
	.quad	0x3fb2737ebc872e30              # double 0.072074814822536082
	.quad	0x3fed0a56663341eb              # double 0.90751190148335803
	.quad	0x3feef42f2be812e9              # double 0.96730764937873658
	.quad	0x3feaf16aa42b7af7              # double 0.84196979584143505
	.quad	0x3fe508f37b2342c9              # double 0.65734266329135338
	.quad	0x3fdd610d9f307cb2              # double 0.45904865785446269
	.quad	0x3fe4d785f7aa55e0              # double 0.65130899784224638
	.quad	0x3fc886159f99ad00              # double 0.19159193318350987
	.quad	0x3fe86f37c4983de1              # double 0.76357639691735468
	.quad	0x3f93011d121cb5e0              # double 0.018558935385206143
	.quad	0x3fe2b4278f1688e8              # double 0.58449151942138844
	.quad	0x3fec94667efb603a              # double 0.89311528016242581
	.quad	0x3fd01ae522a69690              # double 0.2516415441881259
	.quad	0x3facad726efcdef0              # double 0.056010795639336197
	.quad	0x3fdfa18488420620              # double 0.4942332583087552
	.quad	0x3fd80038d2a98154              # double 0.37501354763482664
	.quad	0x3fe154ff579cf4c6              # double 0.54162566291747605
	.quad	0x3fea3c4726518208              # double 0.81985814556179637
	.quad	0x3fe7280af5afa345              # double 0.72363803849757657
	.quad	0x3fec8c193ccf4dbc              # double 0.8921018779459966
	.quad	0x3fecbfa7c7140c49              # double 0.89839543230517294
	.quad	0x3fc9a969e1a04574              # double 0.20048259274384927
	.quad	0x3f9411c96251f2e0              # double 0.019599100709899342
	.quad	0x3fd3eddc9b8491ec              # double 0.31139292895593829
	.quad	0x3fe566ddb110aae3              # double 0.66880688269642652
	.quad	0x3fd3d4c60205d570              # double 0.30986166188753028
	.quad	0x3fd9814158d41ee4              # double 0.39851411509196866
	.quad	0x3fcd4b5a51a1a294              # double 0.22886208520801132
	.quad	0x3fd2974e1f4082a6              # double 0.290484934348607
	.quad	0x3fad3fbf8806cae0              # double 0.057126984934617431
	.quad	0x3fc6ff06f2134ee4              # double 0.17965781040276518
	.quad	0x3fd5df160757cdc4              # double 0.34174109189117652
	.quad	0x3fe2023598d177ba              # double 0.56276969764052542
	.quad	0x3fdd9905afcc5384              # double 0.46246473472393057
	.quad	0x3fc792cd89868060              # double 0.18416756835086101
	.quad	0x3feb49832a284b78              # double 0.85272367700450413
	.quad	0x3fe761f14cf7afe3              # double 0.73070588143081883
	.quad	0x3fdef1fa7cf508fc              # double 0.48351919367645713
	.quad	0x3fdd7fc0c5a4fda0              # double 0.46092242528171745
	.quad	0x3fe63cc9ac2b9d02              # double 0.6949203837110931
	.quad	0x3fd1add31bcce4b4              # double 0.27623441424254769
	.quad	0x3fb01c4bff69cd10              # double 0.062931775910147758
	.quad	0x3fed92ea06ca029a              # double 0.92418385816570781
	.quad	0x3fef1b25adeab77e              # double 0.97206386535775358
	.quad	0x3fe01e187edf53eb              # double 0.50367378978500932
	.quad	0x3fc555a536090964              # double 0.16667618883554802
	.quad	0x3fedde38203fe315              # double 0.93337637232534354
	.quad	0x3fe73a8005bd5a27              # double 0.72589112397219402
	.quad	0x3fb5b174d3da9940              # double 0.084739019128936555
	.quad	0x3f9af4026b8e29c0              # double 0.026321447195678749
	.quad	0x3fd09417b1eb58ea              # double 0.25903885245260361
	.quad	0x3fae1363c887d550              # double 0.058741682270844309
	.quad	0x3fe0c81fa7d3e792              # double 0.5244291570554529
	.quad	0x3fead4050833c5e5              # double 0.83838130571365055
	.quad	0x3feec0dbc1aaadaa              # double 0.96104228807000891
	.quad	0x3fe4756b3f80e886              # double 0.63933336642300342
	.quad	0x3fdaf58490c48566              # double 0.4212352193590817
	.quad	0x3fe656a2fbd2a0c3              # double 0.69807576355108159
	.quad	0x3fe5a4c314942efe              # double 0.67636255282692992
	.quad	0x3fe524283eddeda1              # double 0.66066372183506783
	.quad	0x3fee556b021c5136              # double 0.947927002069753
	.quad	0x3feb9eb5d20d52f4              # double 0.86312380815306122
	.quad	0x3f9c7c39d7823a40              # double 0.02781763437138296
	.quad	0x3fc9ba0ca6ae74d0              # double 0.20099027765983246
	.quad	0x3fd0819ca8218afa              # double 0.25791088503881066
	.quad	0x3fe078227450edf5              # double 0.51466486661905597
	.quad	0x3fa6d3ab2fc093a0              # double 0.044583654002315898
	.quad	0x3fcce9c7ba865e20              # double 0.22588440520915842
	.quad	0x3fa2202c41fcb980              # double 0.035401709609106824
	.quad	0x3fd34563efde8044              # double 0.30111025261613045
	.quad	0x3fc6c06ab9a6a274              # double 0.17774709763513707
	.quad	0x3fc0705c981081f8              # double 0.12842900681518166
	.quad	0x3fe20c174626f616              # double 0.56397594167327969
	.quad	0x3fe0f0e29a1e6405              # double 0.52940492726622834
	.quad	0x3fa91cfa47170d80              # double 0.049049206903442943
	.quad	0x3fdc9df2cc6e116c              # double 0.44714040721762305
	.quad	0x3fefef5f02ea1463              # double 0.9979701096459731
	.quad	0x3fdd1b2464a86ed4              # double 0.45478162603261052
	.quad	0x3fd8751f48303d60              # double 0.38214857148792269
	.quad	0x3fdf19105e622482              # double 0.48590478150487837
	.quad	0x3fdd1fc49d4bb218              # double 0.4550639663782774
	.quad	0x3fd6766948282632              # double 0.35097724958959298
	.quad	0x3fc0ce4f30b7ecec              # double 0.13129606131392479
	.quad	0x3fe43901c80d14e0              # double 0.6319588572738688
	.quad	0x3fe9e3ec0d875292              # double 0.80907251970582394
	.quad	0x3fb876994ee58b00              # double 0.095559674989583953
	.quad	0x3fc3cefb675a0080              # double 0.15475409075225244
	.quad	0x3fdf726ef38b8cfa              # double 0.49135946067526926
	.quad	0x3f96981794db9420              # double 0.02206456037574267
	.quad	0x3f969a8b774a13a0              # double 0.022073916583866926
	.quad	0x3fac7eb8f8f892a0              # double 0.05565431632229445
	.quad	0x3fea03053db5ba89              # double 0.81286871006689509
	.quad	0x3fe3dd0d14b8d16a              # double 0.62073377654318773
	.quad	0x3fee373cc6fcc582              # double 0.94424284805988656
	.quad	0x3fe2092907009472              # double 0.56361819617872144
	.quad	0x3fe1f05db921e7e2              # double 0.56059156569176261
	.quad	0x3faf133c3e1a6f10              # double 0.060693628865207683
	.quad	0x3feada8910f03c7c              # double 0.83917668636594511
	.quad	0x3feaf94fdce5fad1              # double 0.8429335894032538
	.quad	0x3fe1c5af8bb75c83              # double 0.55538155830699087
	.quad	0x3f9181babe10baa0              # double 0.017096441126506989
	.quad	0x3fefccafc08caf82              # double 0.9937361489041765
	.quad	0x3f96a7d8168e5440              # double 0.022124649407107677
	.quad	0x3fe89357ac3ef0b5              # double 0.76798614160318002
	.quad	0x3fe559068a69be9b              # double 0.6671173766498727
	.quad	0x3fd81ad5fdb614c2              # double 0.37663793350686714
	.quad	0x3fd9eb7d05ebe652              # double 0.40499806955594864
	.quad	0x3fd6aae7f8a3a36c              # double 0.35418128281758388
	.quad	0x3fdab9c1e223bcdc              # double 0.41758772930093158
	.quad	0x3fedffa0494e5a39              # double 0.93745436017599737
	.quad	0x3fe3f7367f80acbd              # double 0.62392735388620901
	.quad	0x3fe9f2a5d78dd1ef              # double 0.8108700952566873
	.quad	0x3f905a81030e4d60              # double 0.015970245181575193
	.quad	0x3fe445f87cd0d992              # double 0.63354133966531578
	.quad	0x3fa2f5e458e4cfe0              # double 0.037032256938260621
	.quad	0x3fec0d993187867d              # double 0.87665996240339406
	.quad	0x3fd19d80f8fc155e              # double 0.27523826899444781
	.quad	0x3fdcf20619fa1d46              # double 0.45227196251694968
	.quad	0x3fd8d40dec90990e              # double 0.38794277288469992
	.quad	0x3fede3c9f916920e              # double 0.93405626916916318
	.quad	0x3fe407503c19b1b9              # double 0.62589275110581533
	.quad	0x3fcac9d8104966a0              # double 0.20928478999376399
	.quad	0x3fedaf7be91c401d              # double 0.92767138985982778
	.quad	0x3fec35d5ee5b0777              # double 0.88157173684906709
	.quad	0x3fe3a3121478a27e              # double 0.61365608213698386
	.quad	0x3fdfbf12b8ba63e6              # double 0.49603717841961126
	.quad	0x3fe00c0a16bfca21              # double 0.50146965449522807
	.quad	0x3fe0609c3961b1fe              # double 0.51179324347827992
	.quad	0x3fd0349d3c9ad2ae              # double 0.2532113162845161
	.quad	0x3fef3823f9a9b4e0              # double 0.97560309183395688
	.quad	0x3fd140b709a147a4              # double 0.26957488956861142
	.quad	0x3fcbab2102aae838              # double 0.21615994100813096
	.quad	0x3fd4a3314f7cd642              # double 0.32246048700776353
	.quad	0x3fb2e8af3243bd30              # double 0.07386298157847615
	.quad	0x3fe74dc67983ab1f              # double 0.72824405415790128
	.quad	0x3f6073050bcab400              # double 0.0020079706722158086
	.quad	0x3feb92201681df6f              # double 0.86158756633720468
	.quad	0x3fedfbfff5aa54b9              # double 0.93701169950022412
	.quad	0x3fe23ecec160d22e              # double 0.57016694802456924
	.quad	0x3fc8c404757172c4              # double 0.19348197683839008
	.quad	0x3fef905f82617d96              # double 0.98637366738323595
	.quad	0x3fc21d2fdefdc884              # double 0.14151571644066874
	.quad	0x3fe5d97aaf7ebc6a              # double 0.68279775883082761
	.quad	0x3fef99a1106f4492              # double 0.98750355920687327
	.quad	0x3fe22201ad82e9ae              # double 0.56665119065228509
	.quad	0x3fe2cca17d52f28b              # double 0.58747934796663637
	.quad	0x3fec1e4859017780              # double 0.87869660743648126
	.quad	0x3fedaae5617cf3be              # double 0.9271113304199543
	.quad	0x3fe7803479d65391              # double 0.73440002247171965
	.quad	0x3fb5352ebfefd7d0              # double 0.082842752322761059
	.quad	0x3fea51b01c6ea6d8              # double 0.82247167161150525
	.quad	0x3fda59e1075fec96              # double 0.41173577995477595
	.quad	0x3fb1e8eaefeca620              # double 0.069960292411132219
	.quad	0x3fda1d6d8f087d72              # double 0.40804614036638676
	.quad	0x3fe56bf66bfcf421              # double 0.66942902652192882
	.quad	0x3fce435c71aaea54              # double 0.23643069791963234
	.quad	0x3fe7d49dd8f42a67              # double 0.74470417379172893
	.quad	0x3fc176f03d392b38              # double 0.1364422129575702
	.quad	0x3fe8871430b907ca              # double 0.76648911968390476
	.quad	0x3fc3090e96179278              # double 0.14871389702524929
	.quad	0x3fea975249f3e34e              # double 0.83097185558208664
	.quad	0x3fd1aae0b8f46be8              # double 0.27605455457677275
	.quad	0x3fc1fe39da60fd0c              # double 0.14057086146383602
	.quad	0x3fe1164d63cffd0b              # double 0.53397244925136655
	.quad	0x3fad5f8d28dbda50              # double 0.057369624364515759
	.quad	0x3fd86777dd23c0da              # double 0.38131519885702192
	.quad	0x3fc14a24b0796098              # double 0.13507517449284445
	.quad	0x3fceeda0a6db84f0              # double 0.24162681720103008
	.quad	0x3fe3e343e241d669              # double 0.62149233046393448
	.quad	0x3fdaf66cf780a87c              # double 0.42129062814877449
	.quad	0x3fb000dc8ee8dab8              # double 0.062513146295581801
	.quad	0x3fdf6b91f51c4388              # double 0.49094056068957359
	.quad	0x3fe716c9fd924a93              # double 0.72153186345743092
	.quad	0x3fc383e6ff4f5ce8              # double 0.15246283975896024
	.quad	0x3fed08f966e20490              # double 0.90734548658669389
	.quad	0x3fbd72deafc08f98              # double 0.11503402510476091
	.quad	0x3feb25c713d39f20              # double 0.84836152908698991
	.quad	0x3fc5ae1b52107780              # double 0.16937581545874636
	.quad	0x3fd7ba63b8692c2c              # double 0.37075131424780028
	.quad	0x3fe67c8044a04b27              # double 0.70269788173240932
	.quad	0x3fe63629fd743675              # double 0.69411181929326793
	.quad	0x3fdad13319a8239e              # double 0.41901853089853514
	.quad	0x3fe257faf7e21b42              # double 0.57323978819554378
	.quad	0x3fe82c9dde70f506              # double 0.75544637151293226
	.quad	0x3feb3a953ed25ab5              # double 0.85090124387610067
	.quad	0x3fd3eca22731cc9e              # double 0.31131795718756361
	.quad	0x3fe665c944d7bba2              # double 0.69992507406083271
	.quad	0x3fe1507b452e0b24              # double 0.54107440482798497
	.quad	0x3fd3a098a5ed49e4              # double 0.30667701915549928
	.quad	0x3fe7b4b89b141e56              # double 0.74081068314348886
	.quad	0x3fd1ae2cc54bdca2              # double 0.27625579135151146
	.quad	0x3fe69c44696b87ee              # double 0.7065755900368893
	.quad	0x3fd80d361f290596              # double 0.37580636065475781
	.quad	0x3fe0a68449d4b534              # double 0.52032675190063182
	.quad	0x3fbb891dff8ccf10              # double 0.10756099213614001
	.quad	0x3fdf089ac7e358e0              # double 0.48490018387145817
	.quad	0x3fa2ecf0f4dd1880              # double 0.036963968172629258
	.quad	0x3fcc1aeb24a85ad0              # double 0.21957148828433626
	.quad	0x3fd1a3b3e992eb14              # double 0.27561662492705463
	.quad	0x3fc07e14f602e6e0              # double 0.12884771358749614
	.quad	0x3f954ba87f84b860              # double 0.02079642561255246
	.quad	0x3fe60c9d5cf3d766              # double 0.68903988032137131
	.quad	0x3fc615e612ef060c              # double 0.17254329609390628
	.quad	0x3fe5495ef05170d6              # double 0.66520640313276647
	.quad	0x3fed5415296f650e              # double 0.91651399700927683
	.quad	0x3fc75d777358431c              # double 0.18253987438267749
	.quad	0x3febcaceccdac99c              # double 0.86850681315108912
	.quad	0x3fe0fa991dcde74d              # double 0.53059058972505968
	.quad	0x3fef13952f5c7e10              # double 0.97114047289136529
	.quad	0x3fe4da538f419df2              # double 0.65165117244481352
	.quad	0x3fb9f52dcadd3ae0              # double 0.10139738276232491
	.quad	0x3fea457e79107ff5              # double 0.82098315854454873
	.quad	0x3fdaaeb973d714b2              # double 0.41691433250918941
	.quad	0x3fe1b4fd611319a2              # double 0.55334347686657659
	.quad	0x3fcbab70012772f8              # double 0.21616935783722346
	.quad	0x3fc16ea344c82344              # double 0.13618889673696277
	.quad	0x3fd376dbc832ec2a              # double 0.3041295485560932
	.quad	0x3fe98bc811ad341e              # double 0.79831317379433009
	.quad	0x3fe0b1e28c93b481              # double 0.5217144723552708
	.quad	0x3fd102b1c3c50844              # double 0.26578945272570231
	.quad	0x3fe6ae9b3e16259b              # double 0.70881425977966062
	.quad	0x3fe1e07a5f30270d              # double 0.55865210143494581
	.quad	0x3fb2927b4f484e50              # double 0.072547633033815062
	.quad	0x3feef8d1afc29a0d              # double 0.96787342384487973
	.quad	0x3fec88515fc5c3d7              # double 0.89164036470003338
	.quad	0x3fefe9c8000c0c9f              # double 0.99728775033181082
	.quad	0x3fd0b91afe3b493c              # double 0.26129793956092207
	.quad	0x3fe5ffcca14bd320              # double 0.68747550490533982
	.quad	0x3fecb3b54d3b30b6              # double 0.8969370373174772
	.quad	0x3fda28345db05a90              # double 0.40870389127068396
	.quad	0x3fe8916495081a18              # double 0.76774815662139684
	.quad	0x3fec5eb132e81a64              # double 0.88655910437303164
	.quad	0x3fc9e31d95006f74              # double 0.2022435166880957
	.quad	0x3fe433ab3cf9afab              # double 0.63130723866696792
	.quad	0x3fe5deba6e68decf              # double 0.68343850674042439
	.quad	0x3fe85fbc67b395aa              # double 0.76168651823234268
	.quad	0x3fee0af937840693              # double 0.93883953898348904
	.quad	0x3fe5a08450e6444a              # double 0.67584434319190589
	.quad	0x3fc5c83304536a18              # double 0.1701720973131422
	.quad	0x3fca2a364a029258              # double 0.20441321004649882
	.quad	0x3fda589ab8fede3c              # double 0.41165798250174013
	.quad	0x3fe8ee558d630662              # double 0.77909352888691452
	.quad	0x3fe914e6d39f70e0              # double 0.78380147297459856
	.quad	0x3f967b62db84f000              # double 0.0219550558551731
	.quad	0x3fe574e9c9015295              # double 0.6705216337091594
	.quad	0x3fd24a4c95f61ae0              # double 0.28578486103690004
	.quad	0x3fe9be8e67e1ecec              # double 0.8045112637477394
	.quad	0x3fe41845cedd6a79              # double 0.62796297457982952
	.quad	0x3fe1d57cf936b6a7              # double 0.55731056856685235
	.quad	0x3fee80df12dd0345              # double 0.95323136982197154
	.quad	0x3fd8a168962bd7ac              # double 0.38485159554636073
	.quad	0x3fb93a156f00e9e8              # double 0.098542537308197731
	.quad	0x3fe2e9d959056489              # double 0.59104602229048553
	.quad	0x3fc1367bf92e6ab4              # double 0.13447522799545697
	.quad	0x3fca80212ed09ffc              # double 0.20703520570646095
	.quad	0x3fe3cdc273ecad7c              # double 0.61886713639744029
	.quad	0x3fe75d0042648901              # double 0.7301026627285695
	.quad	0x3fedfb722cd53204              # double 0.93694409138112222
	.quad	0x3fd8f53fb2463d18              # double 0.38996879968267839
	.quad	0x3fd6fdea11e8cac6              # double 0.3592477011581362
	.quad	0x3fd111302e923778              # double 0.26667408512081847
	.quad	0x3fe073b13ba7eda0              # double 0.51412259723240439
	.quad	0x3fd50494100022d6              # double 0.32840444147636327
	.quad	0x3fe7f50bed3be481              # double 0.74866291365391657
	.quad	0x3fd601bc82cb01ce              # double 0.34385597965959114
	.quad	0x3fe6a0605659bd67              # double 0.7070771872076137
	.quad	0x3febed0b5d2698a5              # double 0.87268608277806392
	.quad	0x3fe28dfc1b17d36b              # double 0.5798321274911421
	.quad	0x3febe8102770abe2              # double 0.87207801535748453
	.quad	0x3fd2fa8a4d567bca              # double 0.29654176285287959
	.quad	0x3fb77c63a90abe58              # double 0.091741780061732725
	.quad	0x3fee46be22815eb6              # double 0.94613558520628405
	.quad	0x3fdb6eb6b3e8c52e              # double 0.42863242692245052
	.quad	0x3fe9dd69307a637c              # double 0.80827769726157283
	.quad	0x3fe369a04157a6e3              # double 0.60664379846749872
	.quad	0x3fe3c5cdba606cee              # double 0.6178959503335173
	.quad	0x3fbc9d9409c76b30              # double 0.1117794536470853
	.quad	0x3fd9aef37d2fc3ea              # double 0.40130316949131262
	.quad	0x3fd19a3ddb917b94              # double 0.27503916208473211
	.quad	0x3fb50b954a5d49f8              # double 0.082207995086072461
	.quad	0x3fd64551e91ba5dc              # double 0.34798095478489954
	.quad	0x3fb3fb866e1b4738              # double 0.078056718713267581
	.quad	0x3fe6556086d9a7fe              # double 0.69792200410779492
	.quad	0x3f486b380a1ff800              # double 7.4520336443106849E-4
	.quad	0x3fd9ee5c9244020a              # double 0.40517343791728477
	.quad	0x3fddd2280ea60fb2              # double 0.46595193319830763
	.quad	0x3fea86899b1524a7              # double 0.82892303742950879
	.quad	0x3f9c0186025c8ae0              # double 0.027349561590322646
	.quad	0x3fe2e72cf4d7d2e6              # double 0.59071967907820233
	.quad	0x3fc656adbe5d5608              # double 0.17452022357126418
	.quad	0x3fcc81d23b703444              # double 0.2227118292070448
	.quad	0x3fbd2ab8a5eaa638              # double 0.11393312502573216
	.quad	0x3fe12e02d41b592a              # double 0.53686658312907309
	.quad	0x3fd70e97a4f18e26              # double 0.36026564700861952
	.quad	0x3fe50d4b15cca56c              # double 0.65787271745391029
	.quad	0x3fcc4239d3373d7c              # double 0.22077105344076731
	.quad	0x3fe78d0d9ae36a0c              # double 0.73596840144756603
	.quad	0x3f9b2f2a0a6fa880              # double 0.026547104727719262
	.quad	0x3feb6d611f5a8f23              # double 0.8571019756677497
	.quad	0x3fbca00153896ce0              # double 0.11181648530457577
	.quad	0x3febcbd948bbbf79              # double 0.86863388257732688
	.quad	0x3febe65d870a830f              # double 0.87187076926429252
	.quad	0x3feff15062448f2c              # double 0.99820727532321518
	.quad	0x3fe9bc5017ebad98              # double 0.80423741027827855
	.quad	0x3fc2fcb64b35ebf4              # double 0.14833716080087778
	.quad	0x3fdfafac40ecc862              # double 0.49509722080541085
	.quad	0x3fe46b3e4624cd21              # double 0.63809121799423363
	.quad	0x3fc3151719c05d90              # double 0.14908112294572762
	.quad	0x3fe420b420178880              # double 0.62899214046434793
	.quad	0x3fd3e668bbf7f9dc              # double 0.3109380565291795
	.quad	0x3fd3f5613c81fcd6              # double 0.31185179623566961
	.quad	0x3fd597aac8392b56              # double 0.33738202622469282
	.quad	0x3f94bfbe51bb82c0              # double 0.020262693155816747
	.quad	0x3fc1797b07dba5e0              # double 0.13651979335490605
	.quad	0x3fbd061f4b8a0e08              # double 0.11337466806622143
	.quad	0x3fc95f904a456b24              # double 0.19822887064477712
	.quad	0x3fed2cfa9e1951f7              # double 0.91174059752171288
	.quad	0x3fedc86a9f10e155              # double 0.9307149035221679
	.quad	0x3fed9cf97b5df26e              # double 0.92541193099130026
	.quad	0x3fd9db67804b3b4c              # double 0.40401637581537808
	.quad	0x3fe8a017c8c8f83b              # double 0.76954259124591518
	.quad	0x3fe42a89fcb77607              # double 0.63019275053710622
	.quad	0x3fe3abbc4c25e409              # double 0.61471381065996511
	.quad	0x3fafa38600a68e70              # double 0.061794459895534781
	.quad	0x3fbd2cca0b907088              # double 0.11396467954949874
	.quad	0x3fde99ce49081482              # double 0.47813756114948813
	.quad	0x3fef755ebf3b37da              # double 0.98307740545146349
	.quad	0x3fbe6114d49dc120              # double 0.11866884413553125
	.quad	0x3fb1746e21449d40              # double 0.068182833787990837
	.quad	0x3fe028198b7b3b69              # double 0.50489499323326215
	.quad	0x3fe0b7f182528389              # double 0.52245402768686333
	.quad	0x3feff9e25aca987f              # double 0.99925344212239497
	.quad	0x3fb06f05e7039e50              # double 0.064194077396330984
	.quad	0x3fe40337c53eae6d              # double 0.62539280437836242
	.quad	0x3fc5a2d933baffac              # double 0.16903224016095686
	.quad	0x3fa1595ca09ee710              # double 0.033884901625652941
	.quad	0x3fd4c2a86c207da4              # double 0.3243809753348279
	.quad	0x3fe3e1bc6bdec323              # double 0.62130566662208186
	.quad	0x3fe533e55545d39d              # double 0.66258494047962169
	.quad	0x3fe7d60d6b6da8c2              # double 0.74487944585896337
	.quad	0x3fd3f27cbe74c2d0              # double 0.31167524909237176
	.quad	0x3fe87a78bc2d751e              # double 0.76495014909201919
	.quad	0x3fe06ccdba079db0              # double 0.51328169187484285
	.quad	0x3fe2e157d0426393              # double 0.59000769305849798
	.quad	0x3fec8c26f9502c74              # double 0.89210842794399392
	.quad	0x3fdca992700698d6              # double 0.44784985485092699
	.quad	0x3fe774a01fa37422              # double 0.73298650912659391
	.quad	0x3fd25bd51f47b8ee              # double 0.28685501150802295
	.quad	0x3fe7084415b0f28d              # double 0.71975902782976819
	.quad	0x3fb56d182acdee50              # double 0.083695898485467212
	.quad	0x3feb7621639fc257              # double 0.85817021806549121
	.quad	0x3fe89caa3081b2fc              # double 0.76912412141754726
	.quad	0x3fd7180aeb4f9ea8              # double 0.36084244708625102
	.quad	0x3fe510383c87baa2              # double 0.65822994062712703
	.quad	0x3fcf912df000b614              # double 0.24661802500615748
	.quad	0x3fe2bde07b1d4702              # double 0.58567832990431179
	.quad	0x3fba5f0d2b476ff8              # double 0.10301286989800917
	.quad	0x3fdd3c57edd05254              # double 0.45680807327270156
	.quad	0x3fed8c6790f00b66              # double 0.9233892279447502
	.quad	0x3fe4425858b976eb              # double 0.63309876755712702
	.quad	0x3fe1c9621013632d              # double 0.55583289279738823
	.quad	0x3fe6a8493f645cc4              # double 0.70804273968942555
	.quad	0x3fefa85a8604a717              # double 0.98930097747254108
	.quad	0x3fe1bd008135f4fc              # double 0.55432152973631288
	.quad	0x3faeb2cc2c37ef30              # double 0.059957867048039737
	.quad	0x3fdfcb7acc0ceff2              # double 0.49679441382227119
	.quad	0x3fe26beaed259444              # double 0.57567354505284429
	.quad	0x3fedd94533eb2a32              # double 0.93277225628236793
	.quad	0x3fdcc7ae2b231662              # double 0.44968752110103172
	.quad	0x3fe7e08729816614              # double 0.74615820032630831
	.quad	0x3fe36470ffbebee0              # double 0.60601091337408874
	.quad	0x3fe363ad9855f173              # double 0.60591773751325062
	.quad	0x3fc1c6a79aa00e58              # double 0.13887496042308345
	.quad	0x3fed8e51753eeb70              # double 0.92362282657209782
	.quad	0x3fe0080a0cec4b20              # double 0.500981354942585
	.quad	0x3fd46b9e788a3c64              # double 0.31906854411585628
	.quad	0x3fec1b002429727f              # double 0.87829596579429381
	.quad	0x3fdb3a566a52a4ce              # double 0.42543564208115192
	.quad	0x3fdd4c56b0d0f468              # double 0.45778434054574868
	.quad	0x3fef7d2b55b1ba40              # double 0.98402945267827846
	.quad	0x3fe06a3c845cf71b              # double 0.51296830990006315
	.quad	0x3fd471cb471b4986              # double 0.31944543785098067
	.quad	0x3fe0e42c51748391              # double 0.52785316380696845
	.quad	0x3fc2dde6e0c2327c              # double 0.14739690756359269
	.quad	0x3fdf219e5d378e1c              # double 0.48642691710685582
	.quad	0x3fef3e454dc1cf1b              # double 0.97635140597273861
	.quad	0x3fe9ac7e96fe4c9e              # double 0.8023064564789768
	.quad	0x3fd5e5f7bf159ff0              # double 0.34216111813157024
	.quad	0x3fad564a27f47680              # double 0.057298962952910593
	.quad	0x3facb2dab39ef990              # double 0.056052050043479018
	.quad	0x3facda15cb440640              # double 0.056351357519826895
	.quad	0x3fe1a49442fd4b8e              # double 0.55134022792695858
	.quad	0x3fe021c45a3b487d              # double 0.50412194846491298
	.quad	0x3fec03080933c823              # double 0.87537004277533403
	.quad	0x3fd8de312d264b22              # double 0.38856152924670273
	.quad	0x3fd33553f84ad9f6              # double 0.30012988326362178
	.quad	0x3fe8f01499309cbb              # double 0.77930669708157241
	.quad	0x3fea887292df7882              # double 0.82915619550819053
	.quad	0x3fe30a05ff03f1dc              # double 0.594973562314006
	.quad	0x3fba486d17993418              # double 0.10266763521322309
	.quad	0x3feb0b77c20656b4              # double 0.84514987845860511
	.quad	0x3fe5b0818bf306bc              # double 0.67779614766933305
	.quad	0x3f9626e3a10c6380              # double 0.021632725433935018
	.quad	0x3fea687017a7981b              # double 0.8252487623219652
	.quad	0x3fed91d9e0107a4c              # double 0.92405408632823471
	.quad	0x3fee480489392a75              # double 0.94629122544695454
	.quad	0x3fef9f58cd254056              # double 0.98820152347071644
	.quad	0x3fe4e36776a1d87b              # double 0.65275929613450445
	.quad	0x3fc4f1a03bcf1210              # double 0.16362383766512822
	.quad	0x3fda3f520c44efa2              # double 0.41011477659389517
	.quad	0x3fefb85849b7dc3e              # double 0.99125303648077767
	.quad	0x3f86fc85632959c0              # double 0.011223833168668373
	.quad	0x3f95da132a7feb00              # double 0.02133970209977587
	.quad	0x3fecdfc9beafcdd4              # double 0.90231787913801975
	.quad	0x3fee7dc2b3d22650              # double 0.95285163041371312
	.quad	0x3fe4b9432f6829a7              # double 0.64761504420430505
	.quad	0x3fef05db2210b5b7              # double 0.96946484235166152
	.quad	0x3fef33b727d8b35e              # double 0.97506292135731676
	.quad	0x3fe7286ac0e06453              # double 0.72368371649930407
	.quad	0x3feec3dff58ba011              # double 0.96141050298774832
	.quad	0x3fda60af5211e890              # double 0.41215117468494444
	.quad	0x3fbf9b693a86f058              # double 0.12346513441929241
	.quad	0x3fe41e847811352b              # double 0.62872527552250312
	.quad	0x3fd4a1a03d7395c0              # double 0.32236486436007894
	.quad	0x3f844b9db6aa1f40              # double 0.0099098512048524378
	.quad	0x3fee92805d14feeb              # double 0.95538347416001324
	.quad	0x3fd3bd03708010b6              # double 0.30841146456101443
	.quad	0x3fce9df625b27cf8              # double 0.23919560280499019
	.quad	0x3fbb2a16c6343e50              # double 0.10611097659079261
	.quad	0x3fe7119fe6512dc0              # double 0.72090144141969148
	.quad	0x3fe45294f8f65aaa              # double 0.63508080125287347
	.quad	0x3fdfa8cadc592fda              # double 0.49467727201840506
	.quad	0x3fd6eccba92e86a6              # double 0.35820285340933322
	.quad	0x3fe9cd1e22165e30              # double 0.8062887826699292
	.quad	0x3fd0378471a15300              # double 0.25338851067253643
	.quad	0x3feba035bf8a53ee              # double 0.86330687914107584
	.quad	0x3f3269ebd4713000              # double 2.8097159924267423E-4
	.quad	0x3fd7bb6af219864e              # double 0.37081407206105588
	.quad	0x3feb652cbac16f7c              # double 0.85610043025688709
	.quad	0x3fa7183cbce84140              # double 0.045106790599791058
	.quad	0x3fdafb628a5fafee              # double 0.42159331811012535
	.quad	0x3fbbec9bbe7217b8              # double 0.10907910728027914
	.quad	0x3fe70efafa7b6934              # double 0.72057866022377093
	.quad	0x3fe52d7c7d23865f              # double 0.66180252495923841
	.quad	0x3fe1163b0a99fb92              # double 0.53396370001415705
	.quad	0x3fee890f06216235              # double 0.95423079678864176
	.quad	0x3feed75ee17ca274              # double 0.96379035988236561
	.quad	0x3fdeb7df662f5d36              # double 0.47997269610410187
	.quad	0x3fe452542ec2ad4a              # double 0.63504990704442688
	.quad	0x3fe3bbfda148e2c4              # double 0.61669808865470843
	.quad	0x3fe4718c53bc9823              # double 0.63886085848639984
	.quad	0x3fd9a30759391120              # double 0.400575482494121
	.quad	0x3fe2c7bd78424a5b              # double 0.58688233841014481
	.quad	0x3fcd0d62976f1e60              # double 0.22697098154297901
	.quad	0x3fef4a499db42fa6              # double 0.97781830598386388
	.quad	0x3fe525674f74fbd8              # double 0.66081586378993062
	.quad	0x3feb68e0d7cbe361              # double 0.85655252597562648
	.quad	0x3fa397d8516a8ea0              # double 0.038267860353952132
	.quad	0x3f8439469f9dcac0              # double 0.0098748700581600123
	.quad	0x3fd1bb2d89c5feb2              # double 0.27704943136630356
	.quad	0x3fb2b2dfd1218f00              # double 0.073041904981035799
	.quad	0x3feae6dacf4ca3d1              # double 0.84068050850066289
	.quad	0x3fd389e59bc9c6c4              # double 0.30529155934992169
	.quad	0x3fe7d6f317ce420e              # double 0.74498896264600645
	.quad	0x3fd929f3e375ad2c              # double 0.39318558895930056
	.quad	0x3fedf1964fa0322e              # double 0.93574061920077667
	.quad	0x3fda02429c3a762c              # double 0.40638795143772444
	.quad	0x3fe36f10c16435fd              # double 0.60730779430167525
	.quad	0x3fdda232fd7840c2              # double 0.46302485230354418
	.quad	0x3f5d3999787a6600              # double 0.0017837523209095485
	.quad	0x3feccc3d9f2e4a0b              # double 0.8999317273140276
	.quad	0x3fdb742d1d069104              # double 0.4289658339933029
	.quad	0x3fd50a6a0ab9049c              # double 0.32876063391820209
	.quad	0x3fc4b813e86648e8              # double 0.16186760757097507
	.quad	0x3feca60f4fe86b9f              # double 0.89527097327242078
	.quad	0x3fd56c176ba15d46              # double 0.3347223807408749
	.quad	0x3febb71cc4344a0e              # double 0.86610258408683349
	.quad	0x3fe18b846037b38e              # double 0.54828089516159806
	.quad	0x3fe770d1497662f0              # double 0.73252167080053532
	.quad	0x3fb0db1801cdab28              # double 0.065843105736047236
	.quad	0x3fdbee8a8cf63ac4              # double 0.43643440023235436
	.quad	0x3fcc74b25fc15d60              # double 0.22231130290559076
	.quad	0x3fecd70f2beacb77              # double 0.90125235154697136
	.quad	0x3fd67cb680da11ba              # double 0.35136187155901732
	.quad	0x3fea9e4d829b95e0              # double 0.83182406911208417
	.quad	0x3fdab10893ca1e66              # double 0.41705526764460499
	.quad	0x3fe15a171a867967              # double 0.54224734478684133
	.quad	0x3fce37ae60caab18              # double 0.23607425428539197
	.quad	0x3fda705394aa3a5a              # double 0.4131058646970921
	.quad	0x3fea4a030dd62af3              # double 0.82153465940913717
	.quad	0x3feda890a1c8f574              # double 0.92682677839881799
	.quad	0x3fe9c96eaaf069a2              # double 0.80583890329880981
	.quad	0x3fe14cb63d8e0339              # double 0.54061424276742465
	.quad	0x3f9505a0443c55e0              # double 0.020529274143958776
	.quad	0x3fec37b4b073b2a1              # double 0.88180002654333489
	.quad	0x3fe3f90c38c10ec3              # double 0.62415133557120617
	.quad	0x3fe6082ee64d4c92              # double 0.68849892598008666
	.quad	0x3fcd046501e2ebfc              # double 0.22669661132917429
	.quad	0x3fe17158c136d8b8              # double 0.54508626687199691
	.quad	0x3fd02e8bce97941a              # double 0.25284094977388494
	.quad	0x3fec3422a67b1201              # double 0.88136417880792817
	.quad	0x3fdb1efb85bf9ab2              # double 0.42376602231380922
	.quad	0x3fdac07165a36d4a              # double 0.41799578595756215
	.quad	0x3fd29f1f16ee25b8              # double 0.29096200217517376
	.quad	0x3fea033f544cf4d4              # double 0.81289640870059054
	.quad	0x3fec6a5716aa5701              # double 0.88798098017534255
	.quad	0x3fef38f7a8fc7ae2              # double 0.9757040310394951
	.quad	0x3fe6b3a6f8b5539c              # double 0.70943020416108338
	.quad	0x3fb3565fe1d4b070              # double 0.075536720880963192
	.quad	0x3fe260d55332b863              # double 0.57432047128328312
	.quad	0x3fbe538dc3304640              # double 0.11846242919298167
	.quad	0x3fb95c353f89c2c8              # double 0.099063232433546422
	.quad	0x3faaef1d570ec990              # double 0.052605549695175502
	.quad	0x3fcbdfa6bc73ce2c              # double 0.21776279641891116
	.quad	0x3fd2cd42af24860c              # double 0.29377810577179342
	.quad	0x3feff2f2e632662e              # double 0.99840683899237148
	.quad	0x3fef8ef968299193              # double 0.98620291084493982
	.quad	0x3fb098fadf88b268              # double 0.064834289144252488
	.quad	0x3fdac8d844dca87c              # double 0.41850859379577066
	.quad	0x3fe835a311ae43f0              # double 0.75654748395220217
	.quad	0x3fed9a0829b4935d              # double 0.92505272050457743
	.quad	0x3fe21f573f21da80              # double 0.56632578211322482
	.quad	0x3fe7604293025894              # double 0.7305004950783478
	.quad	0x3fe76e06cc12ec3f              # double 0.73218097551524142
	.quad	0x3fec90f11a7689bc              # double 0.89269309204637847
	.quad	0x3fef5f81e3ac3e65              # double 0.98040861575459514
	.quad	0x3fc1010d5f4cee2c              # double 0.13284461167664696
	.quad	0x3fea961b2eb44d70              # double 0.83082350847182163
	.quad	0x3fcc792c6468f88c              # double 0.22244791891893489
	.quad	0x3fda1a5b9c8928ea              # double 0.4078587559385044
	.quad	0x3fd80527765146f6              # double 0.37531458429758346
	.quad	0x3fe3a2a8fbf3d040              # double 0.6136059685654871
	.quad	0x3fbbe8faa6b591d8              # double 0.10902372903871738
	.quad	0x3fb2d4f868051e28              # double 0.073562169452195847
	.quad	0x3fd29175ec893e3a              # double 0.29012821292141988
	.quad	0x3fdc065c686c1eee              # double 0.43788824269766635
	.quad	0x3fad46d088d701a0              # double 0.057180897430501476
	.quad	0x3fe71f9363f58f47              # double 0.72260446093830744
	.quad	0x3fe6508ba2f270a9              # double 0.69733220887748815
	.quad	0x3fcdafe5b1c1a90c              # double 0.23193045787349609
	.quad	0x3fe5cde4eec1236f              # double 0.68138357764938273
	.quad	0x3fd512f88d9a001a              # double 0.32928289249685039
	.quad	0x3fcd54a52f3c3580              # double 0.22914566809087589
	.quad	0x3fa29d71b8d00a50              # double 0.036357454118861043
	.quad	0x3fe35d6acf0973f7              # double 0.60515346943759496
	.quad	0x3fee962dea8d4432              # double 0.95583244143393231
	.quad	0x3fefbc300e744da4              # double 0.9917221338568436
	.quad	0x3fe8982b15e2fdf6              # double 0.76857523226493529
	.quad	0x3fd47e67a07990e4              # double 0.32021513625501385
	.quad	0x3fd67825c143f4cc              # double 0.35108322022990701
	.quad	0x3fdabe7341d71f30              # double 0.41787415914267267
	.quad	0x3febf39e06ccc5ba              # double 0.87348843887428207
	.quad	0x3fd324735e7f996a              # double 0.29909977177012215
	.quad	0x3fe40105ed9e63dc              # double 0.62512489709763086
	.quad	0x3fd489a19b8704e0              # double 0.32090034664368083
	.quad	0x3fe7bb98027a7e55              # double 0.74164963230209457
	.quad	0x3fee0971aaf9f618              # double 0.93865283387976017
	.quad	0x3fe2bc7118811b9c              # double 0.58550314699174377
	.quad	0x3fea4bbdee01ee9b              # double 0.82174583898400344
	.quad	0x3fe854ead5b47cad              # double 0.76036588420165219
	.quad	0x3fec3528498d2175              # double 0.88148893704878495
	.quad	0x3fe8823b051a29f6              # double 0.76589728352092723
	.quad	0x3feeca1cbd2901a5              # double 0.96217190690372389
	.quad	0x3fedac32df0b4133              # double 0.92727035105966704
	.quad	0x3fd576e5aaa641b6              # double 0.33538190522179023
	.quad	0x3fe76bbd1510d5a2              # double 0.73190168489843566
	.quad	0x3fd62165f0a1f02e              # double 0.34578846453928491
	.quad	0x3fc7ee0c7ef44570              # double 0.18695217322287361
	.quad	0x3fce25672d144f14              # double 0.23551644993914833
	.quad	0x3fec0f2bde86350d              # double 0.87685197316901198
	.quad	0x3fe5e54fdca7ecca              # double 0.68424218270174575
	.quad	0x3fdf87f7bb7b5e3e              # double 0.49267381008892019
	.quad	0x3fcdf59df6e51014              # double 0.23405813746842397
	.quad	0x3fe72813ebe2819b              # double 0.72364231177566596
	.quad	0x3fe7dc5282f46415              # double 0.74564481331902022
	.quad	0x3fedbd7de2014c89              # double 0.92938131467453033
	.quad	0x3fd08a5e36ae0348              # double 0.25844531383340952
	.quad	0x3fe097d82f7619a9              # double 0.51853570241728619
	.quad	0x3fb97734ab6e4180              # double 0.099475185254283005
	.quad	0x3fdcbb66660fa236              # double 0.44893798796559581
	.quad	0x3fdd8580eee11ef2              # double 0.46127341583313275
	.quad	0x3fa6188d4f4db490              # double 0.043156066828353379
	.quad	0x3fd74afb6ef10a94              # double 0.36395154794824092
	.quad	0x3fe33738d0379838              # double 0.6004909579030544
	.quad	0x3fc582e74c43e2a0              # double 0.16805735801587662
	.quad	0x3fe22af3266fd8e0              # double 0.56774289614875428
	.quad	0x3fedc29b7c18af37              # double 0.93000578153212288
	.quad	0x3f9852f79bc89d60              # double 0.023753994830398084
	.quad	0x3feee873ace542e6              # double 0.96587547081625469
	.quad	0x3feb82ae04bb3640              # double 0.85970211910325389
	.quad	0x3fdaf2803631c7c0              # double 0.42105107586314361
	.quad	0x3fe12057c10bded4              # double 0.53519809440964616
	.quad	0x3fef2b56896edbae              # double 0.97404028742208992
	.quad	0x3fe25f22a35e6917              # double 0.57411319644896508
	.quad	0x3fef428fac691ba8              # double 0.9768751494783503
	.quad	0x3fd651de2c3c4a4a              # double 0.34874681777833827
	.quad	0x3febe58b3508437b              # double 0.87177048070780871
	.quad	0x3fecd0ad9a7a18db              # double 0.90047340556409539
	.quad	0x3fde780cb9f88894              # double 0.47607725297178516
	.quad	0x3febb73178925b6b              # double 0.86611245679055793
	.quad	0x3fdf9f031a4f3868              # double 0.49408032960207615
	.quad	0x3fd18e95cc39c3c0              # double 0.27432770675573792
	.quad	0x3fe4cc13efb44cd3              # double 0.64991185014005237
	.quad	0x3f6db823592d7200              # double 0.0036278429410414592
	.quad	0x3fd4f00d361fa99e              # double 0.3271515873481351
	.quad	0x3fe8877bc7e0cd36              # double 0.76653851545999063
	.quad	0x3fddd90c185d1622              # double 0.46637251261958756
	.quad	0x3fabe9a4317a7f70              # double 0.054516917266709153
	.quad	0x3fcf17dd386993e0              # double 0.24291577581894241
	.quad	0x3feff4a10e11cfa0              # double 0.99861195323909512
	.quad	0x3fc8353d1bd14f44              # double 0.18912471636087436
	.quad	0x3fda1236ea919ed6              # double 0.40736172587501807
	.quad	0x3fe428b17ce8af51              # double 0.62996744533800542
	.quad	0x3f9a5a6fd8bacb20              # double 0.025735614398125439
	.quad	0x3fc3f912690d8084              # double 0.1560385716393321
	.quad	0x3fd83dcd827e801a              # double 0.37877214187210628
	.quad	0x3fd395eec957e0f4              # double 0.3060261694186146
	.quad	0x3fe1d217c666a863              # double 0.55689610243031173
	.quad	0x3faacf5c8d5949a0              # double 0.052363292936792094
	.quad	0x3fd15cf417efafc4              # double 0.27129843080069471
	.quad	0x3feeff23cb06d91f              # double 0.9686449971548291
	.quad	0x3fe647b0d6060756              # double 0.69625131417726993
	.quad	0x3fea852a69c2bf05              # double 0.82875557571785008
	.quad	0x3fd27c0635044c84              # double 0.28881983926221033
	.quad	0x3f90c00b4bfdb280              # double 0.016357590211031781
	.quad	0x3fde40d1e8395d2e              # double 0.47270629575855849
	.quad	0x3fe2636ac885ffce              # double 0.57463587918027215
	.quad	0x3fea66c16d8963ed              # double 0.82504340547450072
	.quad	0x3fd45ac8d09d759c              # double 0.31804104206624983
	.quad	0x3fe0a34ad89c1b37              # double 0.51993315035438215
	.quad	0x3fe6b620b139c968              # double 0.70973238577270781
	.quad	0x3fe9612fd6aa55ca              # double 0.79311363150434855
	.quad	0x3fcae2e4413ad87c              # double 0.21004918274929085
	.quad	0x3fccb814d3c900b0              # double 0.22436771718094439
	.quad	0x3fd191a053bea566              # double 0.27451332262224637
	.quad	0x3fe5b4bb3322ec6e              # double 0.67831192004758889
	.quad	0x3fefbf885d49d40f              # double 0.99213045330418647
	.quad	0x3fb4c16e253eb768              # double 0.08107651147176187
	.quad	0x3fd81bc8ec4c8f7c              # double 0.37669585300522335
	.quad	0x3feb2dea174187ea              # double 0.84935478727515812
	.quad	0x3f571ee7372ab200              # double 0.0014111764873333543
	.quad	0x3fd3182fbf2ac1a6              # double 0.29835122746137654
	.quad	0x3fe12c2e965309ed              # double 0.53664330826023632
	.quad	0x3fedd748f2ed569d              # double 0.93252990194988039
	.quad	0x3fba64b419079290              # double 0.10309911356996282
	.quad	0x3fddde0bc000296e              # double 0.46667760610639319
	.quad	0x3fd290248eada51e              # double 0.29004777844837004
	.quad	0x3fefe33c94eabcf2              # double 0.9964888485464185
	.quad	0x3fd9285e69ce3c0a              # double 0.39308891613558272
	.quad	0x3fc8f08c38780de8              # double 0.19484093434594674
	.quad	0x3fd6803d6b6cecaa              # double 0.35157714358110559
	.quad	0x3fcb441673804ebc              # double 0.21301537170130824
	.quad	0x3fe6376f8a275236              # double 0.69426705344319006
	.quad	0x3fe656ad17291d67              # double 0.6980805828433575
	.quad	0x3fe094f39f3bdc21              # double 0.51818257427556003
	.quad	0x3fe8bb504813cb4d              # double 0.77286542966462835
	.quad	0x3fbc14cf1130bd48              # double 0.10969251794516766
	.quad	0x3fb40575a65c0750              # double 0.078208306422337559
	.quad	0x3fcc85b9a6805320              # double 0.22283096914238687
	.quad	0x3fdcb6f6a9037de8              # double 0.44866720681417727
	.quad	0x3fc63d165f230860              # double 0.17373923917154155
	.quad	0x3fe051cc99d26604              # double 0.50998525660833183
	.quad	0x3fe45dac9d8ed817              # double 0.63643484852832699
	.quad	0x3f48d4e34603d800              # double 7.5780007685355422E-4
	.quad	0x3fba26a58ddbeb10              # double 0.10215220177989814
	.quad	0x3fd7643273e0f8b2              # double 0.36549054447449258
	.quad	0x3fd13907ceec4bfe              # double 0.26910586554839699
	.quad	0x3fe44a09c5e3bd17              # double 0.63403786325753486
	.quad	0x3fed26cee05e15ab              # double 0.91098731824665913
	.quad	0x3febc077c9973d3b              # double 0.86724461911391104
	.quad	0x3fec7c1eca4d3320              # double 0.89015140068076803
	.quad	0x3fde65eb074f40c2              # double 0.47497058595491748
	.quad	0x3feedc675912ada1              # double 0.96440474888861527
	.quad	0x3fd5e48097e5db4c              # double 0.34207167466904731
	.quad	0x3fcba187fb2f4af4              # double 0.21586704029922255
	.quad	0x3fc999f5ec4d82f8              # double 0.20001100576612152
	.quad	0x3fe3f6f48eaca647              # double 0.62389591089340335
	.quad	0x3fea4fb0c67c7e11              # double 0.82222784773688506
	.quad	0x3fd3cab256dd468e              # double 0.30924662096831745
	.quad	0x3fe49c251e75a070              # double 0.64406066846005494
	.quad	0x3fe9f4c41d76e3ef              # double 0.8111286712147584
	.quad	0x3fe5a9f98574dd28              # double 0.67699886384699415
	.quad	0x3fbe565688e7e058              # double 0.11850491373468353
	.quad	0x3fe4997ac15676c9              # double 0.64373529206542301
	.quad	0x3feee35f6af4d1b9              # double 0.96525545968920944
	.quad	0x3febbfc086ff086e              # double 0.86715723387193377
	.quad	0x3fdf525fee1fb93c              # double 0.48940275434769709
	.quad	0x3fefb916413c3c17              # double 0.99134361974018048
	.quad	0x3fe80b21003ec94f              # double 0.75135850952055161
	.quad	0x3fc0eaf1d18808cc              # double 0.13216994029068585
	.quad	0x3fe2b2f48b02329a              # double 0.5843451228152674
	.quad	0x3febebcd5df0440c              # double 0.87253445002909435
	.quad	0x3fe45a13f8481ed0              # double 0.63599585049174756
	.quad	0x3fd9c1b9f654d6c8              # double 0.40244912200737959
	.quad	0x3fe979fcd37d1272              # double 0.79614106470451262
	.quad	0x3fe2299059cac317              # double 0.56757371461398776
	.quad	0x3fdea95e81a4ae10              # double 0.47908747349239977
	.quad	0x3fb0860df9be7328              # double 0.06454551074280046
	.quad	0x3fc6f72e836fdc48              # double 0.17941838662929599
	.quad	0x3fb7f104b1255510              # double 0.093521397827619034
	.quad	0x3fe883d4c8503869              # double 0.76609267352774879
	.quad	0x3fe2dd4f9c20fdfa              # double 0.58951550001069042
	.quad	0x3fe30aeebbc28dbe              # double 0.59508454009885958
	.quad	0x3fd0474315ed29a6              # double 0.25434949055911671
	.quad	0x3fe76f828eb032ec              # double 0.73236205929569342
	.quad	0x3fdc69c755dab116              # double 0.44395621666150598
	.quad	0x3fc2c68392fe184c              # double 0.14668316533442505
	.quad	0x3fd7743f3bd7cad6              # double 0.36647015422856322
	.quad	0x3fa74e00589d4de0              # double 0.045516978089519489
	.quad	0x3fecf5214df59cb0              # double 0.90492310739946014
	.quad	0x3fe7940bc7b563a8              # double 0.73682202344490566
	.quad	0x3fe59db519fa901a              # double 0.67550139497734851
	.quad	0x3fda1b912aedc806              # double 0.40793255989331134
	.quad	0x3fc924618c4a39f0              # double 0.19642276144118354
	.quad	0x3fee471e3c07b144              # double 0.94618140911692494
	.quad	0x3fce1222bf715090              # double 0.23492845866951884
	.quad	0x3fc458245cd291ac              # double 0.1589398816332851
	.quad	0x3fdfba0b6e7819da              # double 0.49573026454927815
	.quad	0x3fd34a59c8c9bbca              # double 0.30141300781445735
	.quad	0x3fb137a88bd08dc0              # double 0.067255529531897729
	.quad	0x3fe763d379e7291b              # double 0.73093580063985841
	.quad	0x3fec431f47a4f6e2              # double 0.88319362633748377
	.quad	0x3fe08a8e1b5ec06a              # double 0.51691346498229263
	.quad	0x3fef6f1d4e5c21c2              # double 0.98231377892175709
	.quad	0x3fc867ad69cb3e8c              # double 0.19066398301810172
	.quad	0x3fe897df895edc3f              # double 0.76853920774636453
	.quad	0x3fd5b5e2e6757ca8              # double 0.33922646051173411
	.quad	0x3fec177b8c90545c              # double 0.87786652997841541
	.quad	0x3fe3d5b2843f493f              # double 0.61983609990628696
	.quad	0x3fe284528caf8fed              # double 0.57865264394467675
	.quad	0x3fb6085c63f500c8              # double 0.086065077212882035
	.quad	0x3fe30f5f54bb1136              # double 0.59562651204081507
	.quad	0x3fcf6e2c20f59400              # double 0.24554969415035544
	.quad	0x3fe334935236a575              # double 0.60016790444676238
	.quad	0x3fe7fc54ae477f55              # double 0.74955209769175701
	.quad	0x3fe9f542fb4ec97a              # double 0.81118916591212487
	.quad	0x3f96508660e02ac0              # double 0.021791553175755096
	.quad	0x3fe061fa971e0f52              # double 0.51196031108018247
	.quad	0x3fe80bec989ba451              # double 0.7514555912613422
	.quad	0x3fc44e677e5c0b74              # double 0.15864270849132434
	.quad	0x3fe8adffae031b0c              # double 0.77124008166069435
	.quad	0x3fdd9ef028b4cfea              # double 0.46282581305717818
	.quad	0x3fdf28699889484a              # double 0.48684158226126739
	.quad	0x3f977d20109ebca0              # double 0.022938252462776476
	.quad	0x3fea00556202eb60              # double 0.81254071371891356
	.quad	0x3fca138133a5fb60              # double 0.20372023603337208
	.quad	0x3fe6eefeb50e8b4b              # double 0.71667418825777796
	.quad	0x3fd01a7128db517e              # double 0.25161389341271689
	.quad	0x3feb4eed0fbddfec              # double 0.85338452410269161
	.quad	0x3feb40025f77ed49              # double 0.85156363149818859
	.quad	0x3febc7c8b708f1f3              # double 0.86813770054828721
	.quad	0x3fe31bb06e732791              # double 0.59713002750616984
	.quad	0x3fe8232950aad9df              # double 0.75429216151570333
	.quad	0x3fc9239b0503a368              # double 0.19639909500917985
	.quad	0x3fd2fd6d6b6a30d8              # double 0.29671798219420742
	.quad	0x3fed4e318c8a71b8              # double 0.91579511117338708
	.quad	0x3fe3301460347316              # double 0.59961909093871912
	.quad	0x3fa8a71a160e4670              # double 0.048149886314729495
	.quad	0x3fefbefc207d5471              # double 0.99206358285540663
	.quad	0x3fccf138360dfa8c              # double 0.22611143721947646
	.quad	0x3fe0e9e584ec20b0              # double 0.52855182610894325
	.quad	0x3fe2061eb04faa30              # double 0.56324705539493003
	.quad	0x3fe3e2609e773883              # double 0.62138396215756619
	.quad	0x3fd838e043b5f6ce              # double 0.37847143757231272
	.quad	0x3fe01bc1e2d623d3              # double 0.50338835052491004
	.quad	0x3fde0ad2fe52f33a              # double 0.469410656321816
	.quad	0x3fcde0a4161e0dcc              # double 0.23341799812270236
	.quad	0x3fd60912561ad6ce              # double 0.34430368813205525
	.quad	0x3fe4786b390e1117              # double 0.63969956534905037
	.quad	0x3fe54aecb48d1e72              # double 0.66539607299723813
	.quad	0x3fd0b9aed51764f6              # double 0.26133318719583032
	.quad	0x3fd275806447ca5e              # double 0.28842172425280477
	.quad	0x3fe960de53355ce7              # double 0.79307476283693468
	.quad	0x3fe11dfe67dab610              # double 0.53491134914446725
	.quad	0x3fe87e3f9ccdd74c              # double 0.76541119218630049
	.quad	0x3fdb99e91f7d0304              # double 0.43126895976097068
	.quad	0x3fb9d6ec1fe568c8              # double 0.10093570498193849
	.quad	0x3fef04637590a8a8              # double 0.96928570711067596
	.quad	0x3fea6bd9315cf6a8              # double 0.82566508904684088
	.quad	0x3fe24b01139f4535              # double 0.57165578682376028
	.quad	0x3fe11d58d26a17fb              # double 0.53483239265983629
	.quad	0x3fd62f68f44f004a              # double 0.3466436754060892
	.quad	0x3fefd521a0ad3d82              # double 0.9947670114724334
	.quad	0x3fc902ab01c008bc              # double 0.1953939207597325
	.quad	0x3fd2dfd50e086ea4              # double 0.29491163607029081
	.quad	0x3fed4ede64d98989              # double 0.9158775300714278
	.quad	0x3fe841ab872ebf12              # double 0.75801636126377248
	.quad	0x3feeed5daf79a3e2              # double 0.96647533676616271
	.quad	0x3fc5fee88dec6014              # double 0.17184168748713147
	.quad	0x3fe2a44ef68dec11              # double 0.58255718379166599
	.quad	0x3fb85461f1f2c268              # double 0.095037576264766721
	.quad	0x3fe8e2c54c3c4e55              # double 0.77768196954498114
	.quad	0x3fe8ba5a1b8bbe33              # double 0.77274804477742121
	.quad	0x3fd6916d018e513a              # double 0.35262608673044193
	.quad	0x3fb21dcd26996c38              # double 0.070767232822093074
	.quad	0x3f8526a953b82440              # double 0.010327647082720159
	.quad	0x3fec64bc75b83452              # double 0.88729689590548788
	.quad	0x3fef960aac5f6999              # double 0.98706563631576493
	.quad	0x3fe80941170698bd              # double 0.75112967011661846
	.quad	0x3fec03ca8f2e9751              # double 0.87546279874070809
	.quad	0x3fe058d11c561e0e              # double 0.51084189924671519
	.quad	0x3fd393c60ec29580              # double 0.30589438859382057
	.quad	0x3fdb87d488f8abd6              # double 0.43016541839705036
	.quad	0x3fd90f7c154ee0d8              # double 0.39157011109229023
	.quad	0x3fe152c5f01cad37              # double 0.54135414978865171
	.quad	0x3fd409c52e9ede06              # double 0.31309632828512723
	.quad	0x3fdb14a94f6d1e7c              # double 0.42313606983632446
	.quad	0x3fb67c25a12f58d0              # double 0.087831832744402094
	.quad	0x3fe61f7864df4ce1              # double 0.69134158803572288
	.quad	0x3fdf1469a9e5a820              # double 0.48562089530480712
	.quad	0x3fd20790d2ea4b0a              # double 0.2817117747992347
	.quad	0x3fd197a732171aac              # double 0.27488117114664123
	.quad	0x3fc3208bef2ab528              # double 0.14943074396197997
	.quad	0x3fb4a68fd66eda98              # double 0.080666532375156641
	.quad	0x3fd5807c6cc32542              # double 0.33596716519658198
	.quad	0x3fced48387255840              # double 0.2408604059116346
	.quad	0x3fe962159d5a3a07              # double 0.79322319729709612
	.quad	0x3fed1c9cbdd98e29              # double 0.90974270896953613
	.quad	0x3feae455eaec5a3c              # double 0.84037299998710279
	.quad	0x3fb0089281978d18              # double 0.062630802763625204
	.quad	0x3fe5da6d8663a6eb              # double 0.68291355369475804
	.quad	0x3fdac44d9117515e              # double 0.41823138398219395
	.quad	0x3fda0e0cc104e55a              # double 0.40710753297351732
	.quad	0x3fae9b024b048560              # double 0.059776374490193573
	.quad	0x3fba4be34651e548              # double 0.10272045580668021
	.quad	0x3fe2519c05f88403              # double 0.57246209303059492
	.quad	0x3fd96dd7831cfe38              # double 0.39732921413449018
	.quad	0x3fe44ef15d2f8851              # double 0.63463657570197018
	.quad	0x3fefeb331fcd88c7              # double 0.99746090137002674
	.quad	0x3feb2398b2ff2a84              # double 0.84809527359296099
	.quad	0x3fba773ff1083738              # double 0.1033821071107156
	.quad	0x3f5424a83c8d0000              # double 0.0012294428763226506
	.quad	0x3f503333bc255800              # double 9.8877002945618741E-4
	.quad	0x3fe2d9383b7f2d6c              # double 0.58901607151476076
	.quad	0x3fd0a1ffa2300138              # double 0.25988760794281829
	.quad	0x3faaa38fbf0606d0              # double 0.052029125278762245
	.quad	0x3fef249f1d42d101              # double 0.97322040286101707
	.quad	0x3feb69ff57992dad              # double 0.85668913945248948
	.quad	0x3fe4b905a1ef1257              # double 0.64758569362363516
	.quad	0x3feeddf9b0b301cb              # double 0.96459660064288621
	.quad	0x3fe86ac5d45b3d8c              # double 0.76303378558979906
	.quad	0x3f9f778e6a514880              # double 0.030729508627992619
	.quad	0x3feff426035e60d2              # double 0.99855328233663898
	.quad	0x3fb458529c49bfc8              # double 0.079472697407026449
	.quad	0x3fe13ebb6fea01f0              # double 0.5389077363798247
	.quad	0x3fde781e343a884e              # double 0.4760814199490867
	.quad	0x3fcc9ffcdcec7540              # double 0.22363243853843962
	.quad	0x3fe6240db0694101              # double 0.69190105872442598
	.quad	0x3fb87ae93a0dfa78              # double 0.095625473664748273
	.quad	0x3fa83cc6bcfa9a20              # double 0.047338686531748886
	.quad	0x3fd2c13768b51458              # double 0.29304299569441161
	.quad	0x3fdc50fbc2c476c2              # double 0.44244283695466546
	.quad	0x3fc9a573e969e878              # double 0.20036171815064896
	.quad	0x3fedf082ddb70273              # double 0.93560927680671424
	.quad	0x3fea08949bfc7afd              # double 0.81354742494644905
	.quad	0x3fce41370d8f7f60              # double 0.23636520540366757
	.quad	0x3fd64c4a7524d6a2              # double 0.3484064239486121
	.quad	0x3fecd19c79b85bbe              # double 0.90058730863062642
	.quad	0x3fb2f86a72174548              # double 0.074103024343704083
	.quad	0x3fb137b05d20f960              # double 0.067255995499157617
	.quad	0x3fed5c30ffb5b88a              # double 0.91750383323030005
	.quad	0x3fed3127c0700b6c              # double 0.91225040040477045
	.quad	0x3fed3280d49857bf              # double 0.91241494677046109
	.quad	0x3fe4f78108804287              # double 0.65521289501528279
	.quad	0x3fe44c5cd97c5c76              # double 0.63432161786739871
	.quad	0x3fe231aa0b2423a6              # double 0.56856252838143884
	.quad	0x3fd0ae804fa88ec2              # double 0.26065070895331754
	.quad	0x3fa973d8408a43a0              # double 0.04971195018618535
	.quad	0x3fd82d5c57a6270e              # double 0.37776859817005082
	.quad	0x3feb688ccbc4efe6              # double 0.85651244925201975
	.quad	0x3fe09e8224d364c6              # double 0.51934916679888299
	.quad	0x3fd8cde380b1027c              # double 0.38756644790195316
	.quad	0x3febb38c76650cd6              # double 0.86566756366701259
	.quad	0x3fd7946e21b8cb84              # double 0.36843446057462637
	.quad	0x3fdbc6d76d820c94              # double 0.43401132291928346
	.quad	0x3fe12bef20658a42              # double 0.53661304786175656
	.quad	0x3fe2bbc9f7c9a1ef              # double 0.5854234542467206
	.quad	0x3fe069b9385246de              # double 0.51290570259353863
	.quad	0x3feb3700587a50e8              # double 0.85046403199023946
	.quad	0x3feaa01746d72a3d              # double 0.83204234920533049
	.quad	0x3fb1a53fa7eebbc8              # double 0.068927744387777712
	.quad	0x3feacb9e3d03081e              # double 0.83735572735190877
	.quad	0x3feab2fd19458c4b              # double 0.83434920249818256
	.quad	0x3fd48059dec06c98              # double 0.32033392670718674
	.quad	0x3fc316692ac4b050              # double 0.1491214236097016
	.quad	0x3fdea09a8c29f820              # double 0.47855247199902529
	.quad	0x3feca9ef5338f313              # double 0.89574400190722014
	.quad	0x3fed6a27f42886f9              # double 0.91920850455446079
	.quad	0x3fda0100b7ec2724              # double 0.40631120644740037
	.quad	0x3fee5da4a4475139              # double 0.94893104634915126
	.quad	0x3fd86de0739b44b4              # double 0.38170634545992788
	.quad	0x3fc319e8350453e0              # double 0.14922812069622093
	.quad	0x3fc800e51c9ca204              # double 0.18752731225073671
	.quad	0x3fdd48e7af3fc0e8              # double 0.45757476915515705
	.quad	0x3feea17d72b7ea1e              # double 0.95721313863697666
	.quad	0x3feed3a986c86fb0              # double 0.9633376724700522
	.quad	0x3fe5f1c51fda3c42              # double 0.68576294156253703
	.quad	0x3fe36b36a04a1b6f              # double 0.60683757120646742
	.quad	0x3fd6fc8b3f721482              # double 0.35916405864583834
	.quad	0x3fd1abaa7077fb36              # double 0.27610264762181502
	.quad	0x3fa32247a47dfa90              # double 0.037370909528353313
	.quad	0x3fe2d0f3c62f7fe6              # double 0.58800686557878801
	.quad	0x3fe4ca7d509b4b52              # double 0.64971795791130149
	.quad	0x3fc6ca48949dcc58              # double 0.17804820305500146
	.quad	0x3fed4c9fba946f0e              # double 0.91560350839015014
	.quad	0x3fe010afe257b6e1              # double 0.50203699309869532
	.quad	0x3fe9b2a1178574d3              # double 0.80305533021933184
	.quad	0x3fe8f5ced1500c8f              # double 0.78000584489235958
	.quad	0x3fdc48f5da7f9186              # double 0.44195314729429247
	.quad	0x3fade33705aff210              # double 0.058374137348412458
	.quad	0x3feb5ad8dac6d507              # double 0.85483973245450862
	.quad	0x3fed492c00b31ac9              # double 0.91518211495061863
	.quad	0x3fd9d40911f1cdc6              # double 0.40356661560437279
	.quad	0x3fd677542abf5ede              # double 0.35103325056614476
	.quad	0x3fe2fea8aeac62a2              # double 0.59358629337210211
	.quad	0x3fbfec7c442d9110              # double 0.12470223106862854
	.quad	0x3fee4faa0fe73d35              # double 0.94722464662655759
	.quad	0x3fe7671d73793992              # double 0.73133728555130717
	.quad	0x3fced6eaf4173f40              # double 0.24093377035614516
	.quad	0x3feb3e5a3cf51b0b              # double 0.85136138826132546
	.quad	0x3fe3fa261e460f6b              # double 0.62428575432612143
	.quad	0x3fd40ca378f46852              # double 0.31327139675125182
	.quad	0x3fe3af42c20ec990              # double 0.61514413740069251
	.quad	0x3fd392f29d874e08              # double 0.30584397681852282
	.quad	0x3fd366ad239328e0              # double 0.30314186548333844
	.quad	0x3fe7d709c7cee230              # double 0.74499978089358443
	.quad	0x3fc766b5cbd1a3f0              # double 0.18282196476073365
	.quad	0x3fe215ffaaefa45d              # double 0.56518538843114252
	.quad	0x3feb08525437ec97              # double 0.84476582001606715
	.quad	0x3fe4ef71f3d124d4              # double 0.65422914143087008
	.quad	0x3fda9590f4a9d47e              # double 0.41537879841718695
	.quad	0x3feef2a7bde8a225              # double 0.96712100116298371
	.quad	0x3faf7c400fe8e440              # double 0.061494829122644479
	.quad	0x3fd5e8ca40aedf2e              # double 0.34233337704380318
	.quad	0x3fe3e20438c00774              # double 0.62133990367895686
	.quad	0x3fd4dc8dd88023c4              # double 0.32596155302649898
	.quad	0x3fe989dfa283a228              # double 0.79808027020505268
	.quad	0x3fbae433834fcb48              # double 0.10504457431652015
	.quad	0x3fe2fc55c60e924a              # double 0.59330261881820801
	.quad	0x3fe879fadb2165fc              # double 0.76489012526434363
	.quad	0x3fd3e9728bb6298a              # double 0.3111235012408079
	.quad	0x3fd2771ef873c7ca              # double 0.28852056754032829
	.quad	0x3fe49d2817836954              # double 0.64418415634581061
	.quad	0x3fd19139e9e4854c              # double 0.27448890534477211
	.quad	0x3feb461a3ff77308              # double 0.8523074387881886
	.quad	0x3fd85791a557b4d8              # double 0.38034478327501864
	.quad	0x3feeabd76df723ae              # double 0.95847674825301055
	.quad	0x3f8924877ecc7a00              # double 0.012276705319490766
	.quad	0x3fb36ac11d6c4148              # double 0.07584769218761267
	.quad	0x3fe563895f8bc0a8              # double 0.66840046559629673
	.quad	0x3fcf9de4623114e4              # double 0.24700598520772765
	.quad	0x3fd83bd674c4a2fa              # double 0.37865220454345627
	.quad	0x3fefb0aa5bc7631f              # double 0.99031560826833586
	.quad	0x3fef4040aa7a3eac              # double 0.97659333511724844
	.quad	0x3fc45b55dd7c0314              # double 0.15903733553570787
	.quad	0x3fed68627fef3937              # double 0.91899228083801787
	.quad	0x3fedf86d82406ab9              # double 0.93657565536280807
	.quad	0x3fd4cd4d18aa1b00              # double 0.3250305882324227
	.quad	0x3fef7bb94de43fb2              # double 0.98385300839617273
	.quad	0x3fb583b1479a3798              # double 0.084040718060548136
	.quad	0x3fd61143ec3219d8              # double 0.34480379167544362
	.quad	0x3fe55f6c44280f56              # double 0.66789830505193026
	.quad	0x3febcb9857c87863              # double 0.86860291619428798
	.quad	0x3fc8bd414c2055b4              # double 0.19327560631852025
	.quad	0x3fe661d528162e80              # double 0.69944246129439591
	.quad	0x3fc35aed301c7410              # double 0.1512123570363717
	.quad	0x3fe2e8e94c296fb9              # double 0.59093155742038228
	.quad	0x3fc30e69375a33c4              # double 0.1488772888446005
	.quad	0x3fe5564c5b15fc57              # double 0.66678445615969906
	.quad	0x3fbc92f958fe24a0              # double 0.11161764547991249
	.quad	0x3fe3f04cdc9e3f91              # double 0.62308352555736424
	.quad	0x3fe0328d75b1d438              # double 0.50617096888766522
	.quad	0x3fe9077705c89d9c              # double 0.78216124658222296
	.quad	0x3fb5351ed1e07b90              # double 0.08284180282542608
	.quad	0x3fd13967ad080bc6              # double 0.26912872216797401
	.quad	0x3feef124112988e9              # double 0.96693614341736833
	.quad	0x3fe90f3d90c3d26b              # double 0.78311041139984405
	.quad	0x3fe9497365495b65              # double 0.79021615774659593
	.quad	0x3fa8f6ea46601b00              # double 0.048758812990902456
	.quad	0x3fd2b34f3ba16d72              # double 0.29219418357180083
	.quad	0x3f8ce1fc24aca6c0              # double 0.014102907056059322
	.quad	0x3fe7fd23e0ee57e0              # double 0.749650897329726
	.quad	0x3fe2b6cd6599be22              # double 0.58481473773821713
	.quad	0x3fc12c008f99e048              # double 0.13415534030696308
	.quad	0x3fe3d184faf47bea              # double 0.61932610525752563
	.quad	0x3fe55119c14ba3b2              # double 0.6661499762823182
	.quad	0x3fdb184e6a179fe8              # double 0.42335853920530875
	.quad	0x3fedb3b7375527ce              # double 0.92818795020252209
	.quad	0x3fe64d1b59adc6c3              # double 0.69691245570557958
	.quad	0x3fea7c58d4343b45              # double 0.82767907568072785
	.quad	0x3fd740e7a6247ec6              # double 0.36333647942408864
	.quad	0x3fe29d05f07ab9fc              # double 0.58166787117607965
	.quad	0x3fe01997f976039b              # double 0.5031242248806963
	.quad	0x3fc36f383bd0f5d4              # double 0.1518316547462023
	.quad	0x3fef8ce547ba2d21              # double 0.98594917306164486
	.quad	0x3fde7bdaf14e15a2              # double 0.47630952420180439
	.quad	0x3fefb40a1fc39358              # double 0.99072748378658115
	.quad	0x3fdaaf9b5e454b04              # double 0.41696819501991933
	.quad	0x3fe62dbf801a0e78              # double 0.69308447856788202
	.quad	0x3fbdf251b41d60f8              # double 0.11697874686558751
	.quad	0x3fbc34d1f625ef10              # double 0.11018097171284702
	.quad	0x3fe3ce5de3fe856c              # double 0.61894125490304708
	.quad	0x3fddc01d61cca3ae              # double 0.46485075522155739
	.quad	0x3fea808438f5b514              # double 0.82818804860076733
	.quad	0x3fbe65a1e63bafe8              # double 0.11873828764845451
	.quad	0x3fbd863ca368e270              # double 0.11532954205984836
	.quad	0x3fb0021b16dbbbb0              # double 0.062532132225654236
	.quad	0x3fe4f0e29908a1f7              # double 0.65440492524527272
	.quad	0x3fe8fbe2ec1db012              # double 0.78074785343551611
	.quad	0x3fa09837230df1f0              # double 0.03241131117735907
	.quad	0x3fee29099eafd131              # double 0.94250946992409557
	.quad	0x3fc8272ddab92fec              # double 0.18869565181591896
	.quad	0x3fe15b7e51983767              # double 0.54241863190121087
	.quad	0x3fd0c2badfe8f618              # double 0.26188537470065532
	.quad	0x3fe9e3e2ad2e67dc              # double 0.80906804871051063
	.quad	0x3fd67d3652520984              # double 0.35139234580142209
	.quad	0x3fc8dc4af4c40b4c              # double 0.19422280265288305
	.quad	0x3fe0163fabd7f523              # double 0.50271590769958541
	.quad	0x3fcc034b7aaf5b00              # double 0.2188505505607381
	.quad	0x3fe4ba25d14e8eee              # double 0.6477231109642767
	.quad	0x3fed6cbd3fce555e              # double 0.91952383482081834
	.quad	0x3fe30d1f35458e9f              # double 0.59535179524069182
	.quad	0x3fdabf365e4aa710              # double 0.41792067726292803
	.quad	0x3fe9f6f2481e508c              # double 0.8113948257983039
	.quad	0x3fed2912a8efc21b              # double 0.91126378055020341
	.quad	0x3f9d850d32b11f00              # double 0.028827863902079365
	.quad	0x3fc6a0886a046828              # double 0.17677407433149139
	.quad	0x3fefa00e5bf56e29              # double 0.98828809700666397
	.quad	0x3faaf300e002a4b0              # double 0.052635218949327878
	.quad	0x3fea0a42b4f9ccc5              # double 0.81375251147110161
	.quad	0x3fd3f7ef8923a17c              # double 0.31200779335497208
	.quad	0x3fd71984184c5e1a              # double 0.36093237278825685
	.quad	0x3fed449f59b2ba54              # double 0.91462676543398879
	.quad	0x3fd5660056d8cc4c              # double 0.33435066681994807
	.quad	0x3fb8049acf59d8b0              # double 0.093820262549203503
	.quad	0x3feaf357729cfdef              # double 0.8422047842540773
	.quad	0x3fbaae203ab7fe68              # double 0.10421945031702651
	.quad	0x3fe3bd0cf73b468d              # double 0.61682747161303697
	.quad	0x3fa1efa806942000              # double 0.035031557848981265
	.quad	0x3fd70abc24debede              # double 0.36003020859332746
	.quad	0x3fef0481bffd5f9e              # double 0.96930015085216659
	.quad	0x3fb1d9a480dd40b8              # double 0.069727212391856308
	.quad	0x3fddc09fbdfe875c              # double 0.46488183550001394
	.quad	0x3fe3f53b932574f5              # double 0.62368563403620547
	.quad	0x3fe287346eb46122              # double 0.57900449392312603
	.quad	0x3fd9ecc53aa42b9a              # double 0.40507631994904048
	.quad	0x3fe4855b7315d39e              # double 0.64127895810689828
	.quad	0x3fea21641232f8a6              # double 0.81657603792679789
	.quad	0x3fe381688f0c07d7              # double 0.60954692782274378
	.quad	0x3fcdfd16fc903968              # double 0.23428618747898189
	.quad	0x3feb36c858fcd6f7              # double 0.85043733005906474
	.quad	0x3fe8ef5bd221b6df              # double 0.77921858826968193
	.quad	0x3fed24d20a61358e              # double 0.91074468638696415
	.quad	0x3fe7730a575e1905              # double 0.73279301704386113
	.quad	0x3fec31a1d86d8989              # double 0.8810586192233113
	.quad	0x3febc6b88b4a6209              # double 0.86800791936099231
	.quad	0x3fe03d5d91300fb9              # double 0.50749090535145236
	.quad	0x3fedaf880939f015              # double 0.92767717172637509
	.quad	0x3fee266b824d8ae1              # double 0.94218993615899305
	.quad	0x3fe4a9e60ce9472e              # double 0.64573957940794968
	.quad	0x3fc63aedd696c80c              # double 0.17367337205865885
	.quad	0x3fef57111a7db888              # double 0.97937827276270272
	.quad	0x3fdb7f7327660846              # double 0.4296539196731185
	.quad	0x3fef2e4932897a4d              # double 0.97440013762008848
	.quad	0x3fef48d85f26a46c              # double 0.97764223655862059
	.quad	0x3fda1a5ebd7a5f0c              # double 0.40785950187408626
	.quad	0x3fe3155c8938af28              # double 0.596357601175872
	.quad	0x3f9af2eef86c3980              # double 0.026317342674752719
	.quad	0x3fb856799841c540              # double 0.095069503471468586
	.quad	0x3fd59b9956ec54bc              # double 0.3376220082148611
	.quad	0x3fe753ed88e77387              # double 0.72899510134776413
	.quad	0x3fd82f65015af6a6              # double 0.37789273388248501
	.quad	0x3fe96c2635f63e1f              # double 0.79445181407385579
	.quad	0x3fef547a8e121c42              # double 0.97906234501068234
	.quad	0x3fb4df85eded1ae8              # double 0.081535692775201007
	.quad	0x3fd458d116d19b60              # double 0.31792094448467445
	.quad	0x3fe662de1e8e7954              # double 0.6995688053901099
	.quad	0x3fec88bfb03c1792              # double 0.89169296665999043
	.quad	0x3fecaf7b483099f8              # double 0.89642109012203175
	.quad	0x3fe91b29d85ab52f              # double 0.78456585175232429
	.quad	0x3fbfc5852dcd5b48              # double 0.1241076695272173
	.quad	0x3fe7d79f185602c4              # double 0.74507097962494884
	.quad	0x3fe84e2ef9b91984              # double 0.75954388402969685
	.quad	0x3fe166a5559ee0a7              # double 0.54378000948692751
	.quad	0x3fe8d94bb09d1f3b              # double 0.77652534956812447
	.quad	0x3fb6b25d65768c68              # double 0.088659131308803318
	.quad	0x3fe2d9dd070b12b0              # double 0.5890946519435456
	.quad	0x3fcd0dae4cafcd08              # double 0.22698000664204465
	.quad	0x3fe97f89c63ff842              # double 0.79681862564735462
	.quad	0x3fd4ed9b0bd510d0              # double 0.32700229793068747
	.quad	0x3fe2777d8c7092e4              # double 0.57708623342167842
	.quad	0x3fe8a3b3f8a41358              # double 0.7699832779186222
	.quad	0x3fdd1bd7834a8238              # double 0.45482433148757506
	.quad	0x3fa927d2b69a9a30              # double 0.049131951132313723
	.quad	0x3feedb06df7009ec              # double 0.96423667564550674
	.quad	0x3fc747411d56211c              # double 0.18186201031154148
	.quad	0x3fefa6f6188ed4a5              # double 0.98913101955863125
	.quad	0x3fe57a5145dba608              # double 0.67118133205548336
	.quad	0x3fdceff5a417ac26              # double 0.45214596771865201
	.quad	0x3fece4a2fbe93d64              # double 0.90290974809060431
	.quad	0x3fb7a3320aaf4a40              # double 0.092333915337158068
	.quad	0x3fc96e562b5e961c              # double 0.19867970578813832
	.quad	0x3fe9922f04166a5d              # double 0.79909468458511024
	.quad	0x3fec383bbc1dbe57              # double 0.88186442128603459
	.quad	0x3febb978bd314063              # double 0.86639058066976948
	.quad	0x3fef502362a724e1              # double 0.97853249805589481
	.quad	0x3fed1b9391f55af2              # double 0.90961626536849693
	.quad	0x3fe976cbaedb6aa1              # double 0.79575142051483649
	.quad	0x3fde76a3f4afc280              # double 0.47599123854801206
	.quad	0x3fd760fd236d4ca6              # double 0.36529472789443174
	.quad	0x3fd30b9bf59dc522              # double 0.29758357034650562
	.quad	0x3feb7d2de86dad9c              # double 0.85903067966630741
	.quad	0x3fe52872f96dfe36              # double 0.6611876365349818
	.quad	0x3fe45f1386c96b1c              # double 0.63660599065346757
	.quad	0x3fe87df64e870240              # double 0.76537623727205784
	.quad	0x3fe45bba91b54bb3              # double 0.63619736155157225
	.quad	0x3fe288250b55c170              # double 0.57911922658790438
	.quad	0x3fc157b6db2abd84              # double 0.13548932744513931
	.quad	0x3fe0f237bd279451              # double 0.52956759399661213
	.quad	0x3fd15d969ce213d4              # double 0.27133717842690186
	.quad	0x3fcca57810f2a5f4              # double 0.22379971339732629
	.quad	0x3fe09d6b149b0a9e              # double 0.51921609901940591
	.quad	0x3fba4f6da5e8de38              # double 0.10277447987106647
	.quad	0x3fdc8033880508f0              # double 0.44532478602572123
	.quad	0x3fd2dbf9eee22f6a              # double 0.29467628792257605
	.quad	0x3fe0a3aeae0497fb              # double 0.51998075473670669
	.quad	0x3fe192e989521149              # double 0.54918362446236657
	.quad	0x3fde2c369f576bde              # double 0.47144856987659789
	.quad	0x3fea960ecb564307              # double 0.83081760133981752
	.quad	0x3fec2c4b363edb48              # double 0.88040695757704501
	.quad	0x3feb700d008cedaa              # double 0.85742807490844553
	.quad	0x3fe5c9fde9620922              # double 0.68090720732314858
	.quad	0x3fd5006a67af0be6              # double 0.32815036893242533
	.quad	0x3fc8a167608e054c              # double 0.19242565359676644
	.quad	0x3fcf9c4e4129e22c              # double 0.24695757085625425
	.quad	0x3fed4a6bedae5ab9              # double 0.91533466741642322
	.quad	0x3f85bafe7a662800              # double 0.01061056910545588
	.quad	0x3fdbd50d97187b42              # double 0.43487872844155018
	.quad	0x3fba7aece76d8a20              # double 0.10343819284529632
	.quad	0x3fe04ce406bf522a              # double 0.50938607518998436
	.quad	0x3fda5d7d99a4fb40              # double 0.41195621494619061
	.quad	0x3fdbcf3c7ba642d4              # double 0.43452369761602694
	.quad	0x3fda1a4f355f64f0              # double 0.40785579883738787
	.quad	0x3fe9be71b35fb7b8              # double 0.80449757608379624
	.quad	0x3fa1f4c65a6908d0              # double 0.035070608650600854
	.quad	0x3fe9825516a03b12              # double 0.79715971392747265
	.quad	0x3fede0aaf909c71d              # double 0.93367527618667945
	.quad	0x3fc0aedece3c6cf8              # double 0.13033661909216909
	.quad	0x3fee40c4b1ca1db3              # double 0.94540629124178677
	.quad	0x3fca3e9deefd4d30              # double 0.20503591699034862
	.quad	0x3fd9fe4b9e9dca82              # double 0.40614595880393989
	.quad	0x3fdbb0b99c40e09c              # double 0.43266144045947796
	.quad	0x3feec23a8e778036              # double 0.9612095625452699
	.quad	0x3fe0758efa111074              # double 0.51435040322441106
	.quad	0x3fe73b55e3aa5744              # double 0.72599310365578917
	.quad	0x3fe518bf80732b62              # double 0.65927100265376404
	.quad	0x3fcfb10d07a7dfa8              # double 0.24759066461387857
	.quad	0x3fede60baf43e395              # double 0.93433174354059878
	.quad	0x3fd29557a888fbee              # double 0.29036513765816963
	.quad	0x3fe89109240e8323              # double 0.76770455400773974
	.quad	0x3fd672929fd8dff8              # double 0.3507429657943244
	.quad	0x3fdea2c1b9e92436              # double 0.47868388324110656
	.quad	0x3fc2a62b858384d4              # double 0.14569610614038331
	.quad	0x3f98843e34d62f20              # double 0.023941966986554708
	.quad	0x3fe8cb2470668e7b              # double 0.77479764893764924
	.quad	0x3fe4a24d48c76cae              # double 0.64481224264763681
	.quad	0x3fee28c6bf7920c9              # double 0.9424775829038704
	.quad	0x3fe8f24f11ddbf50              # double 0.77957871903888964
	.quad	0x3fef308aa4d966ac              # double 0.97467548558343741
	.quad	0x3fde09f5b2fd2fe8              # double 0.46935789565463759
	.quad	0x3fe6406365a40afb              # double 0.69535989619939131
	.quad	0x3fddf015a5b34e1a              # double 0.46777859861069404
	.quad	0x3fdc3d4b02cc1caa              # double 0.44124102852988278
	.quad	0x3fe3a62ab2dc1c8c              # double 0.61403403218800312
	.quad	0x3fdb8598aaaa77dc              # double 0.43002907435027082
	.quad	0x3fccb8953b53e8d0              # double 0.22438302418578937
	.quad	0x3fe643cad644ac52              # double 0.69577543114918172
	.quad	0x3fed3b128cb2daeb              # double 0.91346099357801103
	.quad	0x3fdc66dfe356c0c0              # double 0.44377896500646941
	.quad	0x3fe270f62c66dc35              # double 0.57628925964571087
	.quad	0x3fb0905a3fc65138              # double 0.064702644891728833
	.quad	0x3fd7d586d3f79566              # double 0.3724076337806167
	.quad	0x3fdbf39ad1c1e522              # double 0.43674345478173582
	.quad	0x3fefab6c6a9eba92              # double 0.98967572044587571
	.quad	0x3feb58a41c29f7a6              # double 0.85457044125336235
	.quad	0x3fe07ba6a785f604              # double 0.51509411544219619
	.quad	0x3fdaab170348c7c8              # double 0.4166924984048106
	.quad	0x3fde9b6971b22aee              # double 0.47823558905717689
	.quad	0x3fe03be9c315e487              # double 0.50731361487045568
	.quad	0x3fe166743ff08402              # double 0.54375660408197768
	.quad	0x3fb4e70f045e7ef8              # double 0.081650675360375291
	.quad	0x3fc8e9b1a1c960cc              # double 0.1946317710851474
	.quad	0x3fe3aa45c54c530f              # double 0.61453522238534386
	.quad	0x3fd5dd0e194a37f6              # double 0.34161713094442747
	.quad	0x3fe8a5cacd310b45              # double 0.77023830486755485
	.quad	0x3fed259c931b8a78              # double 0.910841262168403
	.quad	0x3fbb2f17d021fc70              # double 0.10618733245245138
	.quad	0x3fe89d58c72f1238              # double 0.76920737174129439
	.quad	0x3fcb90f4f23cc5e4              # double 0.21536123111722738
	.quad	0x3fdf6ca52bdddf54              # double 0.49100617679458947
	.quad	0x3fda70dbaacc03ea              # double 0.41313831023586423
	.quad	0x3fd10274ce57e758              # double 0.2657749190399179
	.quad	0x3fc4363022c6de78              # double 0.15790368745887284
	.quad	0x3fe1b0f6f8630c94              # double 0.55285213959759227
	.quad	0x3fd4e49e800861ba              # double 0.32645380500028021
	.quad	0x3fd883848229f56e              # double 0.383027197945771
	.quad	0x3fe70dc69a90af3d              # double 0.72043161571989567
	.quad	0x3fe72fac06e14641              # double 0.72456933349366903
	.quad	0x3fe6a30d442cccce              # double 0.70740378680638982
	.quad	0x3fe4d8426fce397b              # double 0.65139886700653393
	.quad	0x3fe68be117cff423              # double 0.70457510615199614
	.quad	0x3fda776fab86aff6              # double 0.41353980780218025
	.quad	0x3fee8ed0dc4ed65a              # double 0.95493357685945601
	.quad	0x3fe573819a66a585              # double 0.67034988552511321
	.quad	0x3fd9781c42b571c0              # double 0.39795595659759542
	.quad	0x3fda42d0468c1b64              # double 0.41032797707923963
	.quad	0x3fc58b5052e4fdd4              # double 0.16831401870329776
	.quad	0x3fdf3e810c41d9ea              # double 0.48818994709964036
	.quad	0x3fe792954b753661              # double 0.73664345491279104
	.quad	0x3feae595086cb774              # double 0.84052516599125093
	.quad	0x3feb5e03256ba2e4              # double 0.85522610958750222
	.quad	0x3fe2404755b66cea              # double 0.57034651509038992
	.quad	0x3fd7b1902df4cb2a              # double 0.37021259773171045
	.quad	0x3fee1549f14690d8              # double 0.94009873508596353
	.quad	0x3feea9585ba1bbc5              # double 0.95817201515989636
	.quad	0x3fa35efb01d4f720              # double 0.037834018682117554
	.quad	0x3fcd8c1e9a9fb1ec              # double 0.23083860921850829
	.quad	0x3fe556973e45b7f3              # double 0.66682016527715715
	.quad	0x3fe65c4913fafc16              # double 0.69876531507896078
	.quad	0x3fe41f93ef3367de              # double 0.62885472029597245
	.quad	0x3feeccb257df7d28              # double 0.96248738444038384
	.quad	0x3feb3a5c91fd81a4              # double 0.85087421907160321
	.quad	0x3fe625a18243f56f              # double 0.69209361498330491
	.quad	0x3fd52d53d20b141e              # double 0.33089156639135975
	.quad	0x3fef9835377c63f9              # double 0.98733006321992811
	.quad	0x3fea9985a038199c              # double 0.83124047558594638
	.quad	0x3fed715382ea99f0              # double 0.92008376664744951
	.quad	0x3fea5f72d15521e7              # double 0.82415142903579131
	.quad	0x3fd250360da52f42              # double 0.28614569981140303
	.quad	0x3faef3f3ca08c680              # double 0.060454958355319555
	.quad	0x3fe481c410e7d0a3              # double 0.64084056188450622
	.quad	0x3f6059983110e500              # double 0.0019958469861448558
	.quad	0x3fce8ebf42222194              # double 0.23873129586378339
	.quad	0x3feeac847658c719              # double 0.95855925669295338
	.quad	0x3fe3fe495fb39ea0              # double 0.62479084674574281
	.quad	0x3fe99476286636f7              # double 0.79937274828418381
	.quad	0x3fe4a3e69f3231f7              # double 0.64500743000968341
	.quad	0x3fe9788eca6fb34c              # double 0.7959665254435122
	.quad	0x3fbbd655ebc60030              # double 0.10873925214946278
	.quad	0x3fcd2942c594eac8              # double 0.2278216805223876
	.quad	0x3fe77b0abee654b2              # double 0.73376977238753782
	.quad	0x3fe4a7924e42995a              # double 0.64545550618349101
	.quad	0x3fe8e4bc219cf263              # double 0.77792173924497054
	.quad	0x3fefdffed9eed7c9              # double 0.99609320225749187
	.quad	0x3fdbd9011a23f546              # double 0.43511989167003084
	.quad	0x3fe9685adbd410d6              # double 0.79398863730650748
	.quad	0x3fe1b669047095dd              # double 0.55351687304635855
	.quad	0x3fd57042f13d2818              # double 0.33497689779744766
	.quad	0x3fd15359ca7f6666              # double 0.27071232581292859
	.quad	0x3fb28b4164d7d068              # double 0.072437369460944034
	.quad	0x3fe85fe543bb1ec9              # double 0.76170600155543255
	.quad	0x3fea107ce775ba21              # double 0.8145126839352238
	.quad	0x3fecae5df1f28fc0              # double 0.89628503089306122
	.quad	0x3fe2d2913423587b              # double 0.5882040041276605
	.quad	0x3fed70b26d90c626              # double 0.92000695609585104
	.quad	0x3fb4c9d2fce02620              # double 0.081204592454149793
	.quad	0x3fa7ffef9373a650              # double 0.046874510526163093
	.quad	0x3fe57d36f7307252              # double 0.67153499869488997
	.quad	0x3fd5691deaf3bacc              # double 0.3345408243612098
	.quad	0x3fee94c4bc9508c9              # double 0.95566021759466324
	.quad	0x3fe0c445814b5954              # double 0.52395892384337595
	.quad	0x3fb00781b02a15b8              # double 0.062614541539082746
	.quad	0x3fc48b077450ac8c              # double 0.16049283198785635
	.quad	0x3fa1bd3858d0a880              # double 0.034646759835895047
	.quad	0x3fe872bf4540faad              # double 0.76400722051751802
	.quad	0x3fe0f1d2b1db02c1              # double 0.52951941239742706
	.quad	0x3f9758ae9eb75ee0              # double 0.022799232899926802
	.quad	0x3fd070a269a26724              # double 0.25687465968950307
	.quad	0x3fddb7e4a336c5de              # double 0.46434894503462754
	.quad	0x3fe3a88496044f06              # double 0.61432103443300501
	.quad	0x3fdcd2a99717be14              # double 0.45035781626845162
	.quad	0x3feb5dc894fd7bd4              # double 0.85519818400995939
	.quad	0x3fddf4f4009c5cea              # double 0.46807575282714586
	.quad	0x3fd720848a874652              # double 0.36135972526708315
	.quad	0x3fcc79bffca61950              # double 0.2224655135762057
	.quad	0x3fd0029e646a1b02              # double 0.25015983396626507
	.quad	0x3fe9ef4329269a5f              # double 0.81045682942642461
	.quad	0x3fdad5f86ec3e524              # double 0.41930971924701255
	.quad	0x3fe06c1739245169              # double 0.51319466743966047
	.quad	0x3fc0e7cf03da6e30              # double 0.13207423866411849
	.quad	0x3fa95876172c4ec0              # double 0.049503031090492922
	.quad	0x3fe679a327b6032b              # double 0.70234830623676225
	.quad	0x3fcb0deae7381d98              # double 0.21136223115921093
	.quad	0x3fd11b7e4dda14b4              # double 0.26730306246492863
	.quad	0x3fe756a705a5454d              # double 0.72932768919614832
	.quad	0x3fed28ab9d4d3e27              # double 0.91121464465135638
	.quad	0x3fe67c09b69c0c2f              # double 0.70264135042123665
	.quad	0x3fe7cd65fb650db5              # double 0.74382304287467227
	.quad	0x3fda956daf62bfda              # double 0.41537038924707093
	.quad	0x3fe25208e130dbab              # double 0.57251399977291351
	.quad	0x3fe7801d2eb3dca2              # double 0.73438891526793193
	.quad	0x3fe487421fa12c56              # double 0.64151102235463031
	.quad	0x3fd0bd23122124f4              # double 0.26154400606590333
	.quad	0x3fe8aadd56ef0ccf              # double 0.77085749606376364
	.quad	0x3fd62b49737e2746              # double 0.34639202383606393
	.quad	0x3fd633285687eedc              # double 0.34687241030017701
	.quad	0x3fce97e6b552bea0              # double 0.23901065686867629
	.quad	0x3fd8926fe76a9ff4              # double 0.38393781279819383
	.quad	0x3fe8f0ae75f22eab              # double 0.77938006435711793
	.quad	0x3fe479445bd4f804              # double 0.63980310378951843
	.quad	0x3fe672a92942cbe5              # double 0.70149667795919568
	.quad	0x3fce293af72268e8              # double 0.23563324992284795
	.quad	0x3feefc5a0d7f6c22              # double 0.96830465923574516
	.quad	0x3fcf6ed6f404c658              # double 0.24557005801175324
	.quad	0x3fe2547c7e27a42b              # double 0.57281326903933427
	.quad	0x3fd9f4e115911d40              # double 0.40557124239099451
	.quad	0x3feca99e35cfeb86              # double 0.89570532331650621
	.quad	0x3feaef4385e5047f              # double 0.84170700217522654
	.quad	0x3fc5e68c4185efb4              # double 0.17109826278089957
	.quad	0x3fda29851cb9a44a              # double 0.40878417782966336
	.quad	0x3fd8109c4137b7f2              # double 0.37601381653701005
	.quad	0x3fdeb5d3f37abdea              # double 0.47984789635935832
	.quad	0x3fef45dc24c23a12              # double 0.97727782420571629
	.quad	0x3fe1679a68cf6fa2              # double 0.54389687033425482
	.quad	0x3fd9c24b50d08238              # double 0.4024837769702887
	.quad	0x3fe4cf6e8321705f              # double 0.65032125102471727
	.quad	0x3fd558496acef77e              # double 0.33351359777940803
	.quad	0x3fe49a1bd9d792a5              # double 0.64381210849076764
	.quad	0x3fe5e21a3651c7a2              # double 0.68385038956897781
	.quad	0x3fe28295d75c146f              # double 0.57844059050024821
	.quad	0x3fef47e5a8e7a47c              # double 0.97752650250653472
	.quad	0x3fd18428675259dc              # double 0.27369127359398049
	.quad	0x3fea110a7943217a              # double 0.81458018955258571
	.quad	0x3fbd4168ed809aa8              # double 0.11427932546994646
	.quad	0x3fe15ca409357243              # double 0.54255868719662492
	.quad	0x3fd0bdb3556654dc              # double 0.26157840099160778
	.quad	0x3fe608c4fe8def6e              # double 0.68857049672759074
	.quad	0x3fd4e05655d23744              # double 0.3261924589249825
	.quad	0x3fdc22e3be922868              # double 0.43962949381296434
	.quad	0x3fe8c96a623f66f1              # double 0.77458686055180526
	.quad	0x3fcdbf3dbec24d18              # double 0.23239871801761391
	.quad	0x3fe1566e17d60b6b              # double 0.54180054336062022
	.quad	0x3fd9ed462846a1fc              # double 0.40510705884165055
	.quad	0x3fce50379e5c0134              # double 0.23682303650276426
	.quad	0x3f4f8acb253f9c00              # double 9.62590400828911E-4
	.quad	0x3fca4b6e4a17073c              # double 0.20542696588204901
	.quad	0x3fe6f550f5251709              # double 0.71744583015308294
	.quad	0x3f725324af78c080              # double 0.0044738228821615822
	.quad	0x3fe3bf3f38ff7fc8              # double 0.61709557659559611
	.quad	0x3feca7d5a7575e93              # double 0.89548762019963346
	.quad	0x3fc9cd980d532a04              # double 0.20158672953250811
	.quad	0x3fe6ab3eff10ceed              # double 0.70840406243811815
	.quad	0x3fe096830afd3b30              # double 0.51837303301167559
	.quad	0x3fc84397fde91b38              # double 0.18956279657342079
	.quad	0x3fc6bc3d8f97c774              # double 0.17761964331981128
	.quad	0x3fc1378427b20b50              # double 0.1345067209077464
	.quad	0x3fdb9425d5397686              # double 0.43091722319318426
	.quad	0x3fe295930a18e8c0              # double 0.58075859043244549
	.quad	0x3fea6b9eb2fb08cd              # double 0.82563719708584815
	.quad	0x3fdc3bdffb0820c2              # double 0.44115447535342522
	.quad	0x3febcf1beab28479              # double 0.86903186644862196
	.quad	0x3feaec7fc7fef17f              # double 0.84136952459043346
	.quad	0x3fa70799b076da30              # double 0.044979861060188475
	.quad	0x3faf4feca0be0bf0              # double 0.06115664922892694
	.quad	0x3f9f7f35d4fd4f80              # double 0.030758706211897913
	.quad	0x3fe6b30d0eba19b7              # double 0.70935681225164771
	.quad	0x3fe6653674d7c5a6              # double 0.69985506840582867
	.quad	0x3fef27cd8a2632db              # double 0.97360875112789402
	.quad	0x3fd5f649bd43221c              # double 0.34315722925797032
	.quad	0x3fc042e75a4f3e3c              # double 0.12704173955579445
	.quad	0x3fc4e8e0d72e1c38              # double 0.16335688120691017
	.quad	0x3fece5c81aeed1a5              # double 0.90304951916055087
	.quad	0x3fe74337a645d34e              # double 0.72695524668834266
	.quad	0x3f679fa62802ab00              # double 0.002883743785863202
	.quad	0x3fd0c5207ccef5d0              # double 0.26203167141269734
	.quad	0x3fe2c12df76f9a0c              # double 0.58608148886998057
	.quad	0x3f9f8fd8f8c20e00              # double 0.03082217233942508
	.quad	0x3fed40c4dd03b8d2              # double 0.91415637175466657
	.quad	0x3fe455673b7fb677              # double 0.63542520161509131
	.quad	0x3fe83e1440f8aa06              # double 0.75757801713672346
	.quad	0x3fef6f5217b7d179              # double 0.9823389495127649
	.quad	0x3fdd977f8df4a00e              # double 0.46237171995972026
	.quad	0x3fe089b4871b1f08              # double 0.51680971515540453
	.quad	0x3fe62a6e8a720f49              # double 0.69267966308732654
	.quad	0x3f901147ea8bc200              # double 0.015690921488330289
	.quad	0x3fdeecd0f5670efe              # double 0.48320411648840877
	.quad	0x3fbe6a4c93a538b0              # double 0.11880949597000057
	.quad	0x3fdcccf4f3ab932a              # double 0.45000957294387212
	.quad	0x3fe313a564709a04              # double 0.59614820115240308
	.quad	0x3fe82ee6676b3e26              # double 0.75572509955413092
	.quad	0x3fcf3e8dfb3d4138              # double 0.24409651534598154
	.quad	0x3fe393f49b33bef7              # double 0.61181097329060108
	.quad	0x3fe294cdc4138703              # double 0.58066452308796135
	.quad	0x3fe17fd180f9e99b              # double 0.54685282889049647
	.quad	0x3fe10c5c205dab3e              # double 0.53275877305473052
	.quad	0x3fcfa48a4186df44              # double 0.24720886420777266
	.quad	0x3feba95bb479f46b              # double 0.86442361115736099
	.quad	0x3fc68ac67070b538              # double 0.17611008157965968
	.quad	0x3fc4067757311284              # double 0.15644733197600058
	.quad	0x3fe44b06eceafc2c              # double 0.63415857575444567
	.quad	0x3fe75899fdfa8072              # double 0.72956561665706787
	.quad	0x3fe6b0161b29edad              # double 0.70899491601396891
	.quad	0x3fd24e4a0ed0fa98              # double 0.2860283989611303
	.quad	0x3fd3b2570f668992              # double 0.30776001457174929
	.quad	0x3fd14292b33b370e              # double 0.26968829634721281
	.quad	0x3fee548161d8d247              # double 0.94781560049757096
	.quad	0x3fe128fd9f71ec29              # double 0.5362537492904994
	.quad	0x3febc976b525fd4a              # double 0.86834273701234932
	.quad	0x3fe78428d31beb0f              # double 0.73488274795758624
	.quad	0x3fddecfddb78b2b6              # double 0.46758982117425363
	.quad	0x3fe159e3d81b9ace              # double 0.54222290237961501
	.quad	0x3fe4c0ea184d85bb              # double 0.6485491251625527
	.quad	0x3fe56d562ad5a74e              # double 0.66959675184373579
	.quad	0x3f6eaa5c4317ca00              # double 0.0037433435434135465
	.quad	0x3fe2a2933fbb5e56              # double 0.58234560439718552
	.quad	0x3fce806708f5792c              # double 0.23829353272862741
	.quad	0x3fc9d415778b9ea4              # double 0.20178478562524049
	.quad	0x3fef4670da6d5669              # double 0.97734873448889658
	.quad	0x3fe67e7f41b4d82b              # double 0.70294154008184273
	.quad	0x3fbace2f733a8610              # double 0.10470863879393044
	.quad	0x3fcfcf5df95d6df4              # double 0.24851584125541104
	.quad	0x3feddb0b8398d1c6              # double 0.93298888876466246
	.quad	0x3fc98068742820a0              # double 0.199231201855814
	.quad	0x3fa845ed123dfa20              # double 0.047408493496721826
	.quad	0x3fd0e8d90d399962              # double 0.264211905398403
	.quad	0x3fd4a66eceb409ea              # double 0.32265825448862862
	.quad	0x3fec7352506d1e98              # double 0.8890773363900335
	.quad	0x3faadada5700fdb0              # double 0.052450965042676656
	.quad	0x3fd0c2975e5882ce              # double 0.26187690938426733
	.quad	0x3fe2cc36c068c754              # double 0.58742845134677646
	.quad	0x3fe8eb0dea5d6982              # double 0.77869315885918433
	.quad	0x3fcf0e4a17192698              # double 0.24262357833713533
	.quad	0x3febccb91049a3dd              # double 0.86874058896239215
	.quad	0x3fd88d46e1d18b74              # double 0.38362285664168572
	.quad	0x3fe8ec08c6160c56              # double 0.77881277741142685
	.quad	0x3fdb9405fc37b44a              # double 0.43090963011383521
	.quad	0x3fed63374e6aadd0              # double 0.91836133304371437
	.quad	0x3fe1d83e10a53814              # double 0.55764678240825782
	.quad	0x3fd302c82ffe870e              # double 0.29704479872644718
	.quad	0x3fedd5a674e78ede              # double 0.93233034928240577
	.quad	0x3fcd05c41e4c4830              # double 0.22673846701997169
	.quad	0x3fea7455add9e406              # double 0.8267010112314217
	.quad	0x3fb0356103366bf0              # double 0.063314498218843829
	.quad	0x3fe7354076218328              # double 0.7252504641765869
	.quad	0x3fdc8d704fbfd9e0              # double 0.44613273418454291
	.quad	0x3fee0bc57a66ceb4              # double 0.93893693834839675
	.quad	0x3fe41832a39039a3              # double 0.62795383401844551
	.quad	0x3fd0d2a26a7db1b6              # double 0.26285610579978014
	.quad	0x3feffa71629ae55d              # double 0.99932164439011794
	.quad	0x3fe3dea6e4f721a2              # double 0.62092919082447318
	.quad	0x3fd0fea44ab037a2              # double 0.26554209989341804
	.quad	0x3fe48be7cfcb0683              # double 0.64207830986579528
	.quad	0x3fee335feba3d813              # double 0.94377132438126166
	.quad	0x3fcea993d4b3fc18              # double 0.23955009351627221
	.quad	0x3fd1c05a2ca01204              # double 0.27736524923264505
	.quad	0x3fc1312f5ce4c660              # double 0.13431350742171144
	.quad	0x3fd597151b5392f6              # double 0.33734634083366133
	.quad	0x3fe0d9f59c40c5cf              # double 0.52660637396018639
	.quad	0x3fb2e8b338cc89c8              # double 0.073863221518457256
	.quad	0x3fe6ee4f805bd0da              # double 0.71659064359712521
	.quad	0x3fc04d3a0d967ab8              # double 0.12735677398173606
	.quad	0x3feec1849709d455              # double 0.9611227941483188
	.quad	0x3fec1710de97324a              # double 0.87781566118935328
	.quad	0x3fb13a3cfa0bee10              # double 0.067294894262822647
	.quad	0x3fb8a19faf428ad0              # double 0.096216182983464237
	.quad	0x3fe342d6fa9eb0b7              # double 0.60190915059276662
	.quad	0x3fecc968418313e6              # double 0.89958584590260382
	.quad	0x3fecccd34387cf0b              # double 0.90000308217574465
	.quad	0x3fd3d9e160e619c6              # double 0.3101733633306164
	.quad	0x3fe8d7ee66c3afff              # double 0.77635879584477141
	.quad	0x3fdea171d16f3d7a              # double 0.47860379650679585
	.quad	0x3fe2d92e2ff1bf53              # double 0.5890112816250429
	.quad	0x3fe2c2ae2ce6e887              # double 0.58626469392699299
	.quad	0x3fe111207ee92c31              # double 0.53334069049140542
	.quad	0x3fcfdf37368e2878              # double 0.24899950183709385
	.quad	0x3fc05e5b5fdb7580              # double 0.12787954502611498
	.quad	0x3fe42bed25b7fe3b              # double 0.63036210410059057
	.quad	0x3fd108802f38c26a              # double 0.26614384280677561
	.quad	0x3fea058066b66cc8              # double 0.81317157803587126
	.quad	0x3fd558078c31585c              # double 0.33349789324473078
	.quad	0x3fb94b6dc93cf290              # double 0.098807202940358829
	.quad	0x3fd8c7126b9b8fea              # double 0.38715038784562117
	.quad	0x3fce53629b477960              # double 0.23691971380226118
	.quad	0x3fb112d411374b18              # double 0.06669354839622732
	.quad	0x3fcdc4a8a1001210              # double 0.23256404744474013
	.quad	0x3fef701965295c81              # double 0.98243398435705853
	.quad	0x3fdad020c1fefdc8              # double 0.41895312256744122
	.quad	0x3fdb2c49d62685a6              # double 0.42457815087444783
	.quad	0x3fe8b54497f6188f              # double 0.77212743453925892
	.quad	0x3fe01fcc9c674c76              # double 0.5038817457920135
	.quad	0x3fe0daa5b0490659              # double 0.5266903346129751
	.quad	0x3fd419093a3b3fde              # double 0.3140280789057196
	.quad	0x3fe332665945fdd0              # double 0.59990231929980986
	.quad	0x3fee3dd3d7b7cdc7              # double 0.94504730350893673
	.quad	0x3fe9a35973df9615              # double 0.80119011527557638
	.quad	0x3fefa7da4933e363              # double 0.98923982903862073
	.quad	0x3fb301ba53793010              # double 0.074245114688153757
	.quad	0x3fd875240ba11332              # double 0.38214970718063335
	.quad	0x3fb7a69801a404d8              # double 0.092385769272385843
	.quad	0x3fe029963f9760a3              # double 0.50507652683429105
	.quad	0x3fd048abf29272b4              # double 0.25443552673986436
	.quad	0x3feea396c1f799bd              # double 0.95746934780327531
	.quad	0x3fb36ad051304550              # double 0.07584859830992241
	.quad	0x3fd5bd09f678b3dc              # double 0.33966301984292868
	.quad	0x3fe295982a821415              # double 0.5807610349880884
	.quad	0x3fe72941d926b09f              # double 0.72378628170328685
	.quad	0x3fda9862cc4d6932              # double 0.41555089904217646
	.quad	0x3fe121f4147aebe6              # double 0.53539470672637601
	.quad	0x3fce383cecd1fc2c              # double 0.23609124721039743
	.quad	0x3f0a42a624cdc000              # double 5.0087638192475303E-5
	.quad	0x3fd77cc2715afdcc              # double 0.3669897181498214
	.quad	0x3fed6451c7cb1a8d              # double 0.91849602720397316
	.quad	0x3fe4fb4937a3b8f3              # double 0.6556745611867697
	.quad	0x3fb310dc624de6b8              # double 0.074476026535104434
	.quad	0x3fa01e1c2863dcd0              # double 0.031479721002989458
	.quad	0x3fe7f870cc77571d              # double 0.74907722410964406
	.quad	0x3fc86c9d46d7c718              # double 0.19081464728474695
	.quad	0x3fc60bc2d51de534              # double 0.17223391920178133
	.quad	0x3febe99a38853211              # double 0.87226592101211697
	.quad	0x3fcc1ba62511d55c              # double 0.21959378061334689
	.quad	0x3fd138477c7e0562              # double 0.26906001241157729
	.quad	0x3fea55768cc9f5b9              # double 0.8229325055869402
	.quad	0x3fec430f931134e7              # double 0.88318613742890484
	.quad	0x3fdeee9b896da610              # double 0.48331345005735304
	.quad	0x3fe86a0beffb0577              # double 0.76294514533235158
	.quad	0x3fe5bd35ce6f2247              # double 0.67934694594539102
	.quad	0x3fd971247c4fd56a              # double 0.39753067149953003
	.quad	0x3fdc2bdff9dd3170              # double 0.44017791176590659
	.quad	0x3fd84c1b638fd4ac              # double 0.37964520190082385
	.quad	0x3fe4320dc7f903cc              # double 0.6311100869862627
	.quad	0x3fea97f4da9eeeed              # double 0.83104937266713608
	.quad	0x3f900f6324933300              # double 0.015683697802887586
	.quad	0x3fed4927b64144ba              # double 0.91518006893797765
	.quad	0x3fd95ecfe593ee9a              # double 0.39641187114441723
	.quad	0x3fd0fc1dce25b6b0              # double 0.26538796550344568
	.quad	0x3fa9d69e62ac0d00              # double 0.050465535683565932
	.quad	0x3fe4783e6c5b571f              # double 0.63967820323407298
	.quad	0x3fe34c52d24a2797              # double 0.60306683609200007
	.quad	0x3fcd3bd832ee6b88              # double 0.22838881003266587
	.quad	0x3fd31b3f9445031c              # double 0.29853810767603917
	.quad	0x3fdb6081beaf0c02              # double 0.42776530858481021
	.quad	0x3fda9a8f0a329618              # double 0.41568351741656917
	.quad	0x3fe8e35291761886              # double 0.77774933252727929
	.quad	0x3feedd1c9d6e2f37              # double 0.96449118373991538
	.quad	0x3fb39c5e29008388              # double 0.076604733476882569
	.quad	0x3feef76c3e734b1b              # double 0.96770298192345494
	.quad	0x3febdd5995647457              # double 0.87077025583460965
	.quad	0x3fdcb1d2cb2b4908              # double 0.4483534797738149
	.quad	0x3fbf65173cc2c7b0              # double 0.12263627274913236
	.quad	0x3fcbb24f8fd0932c              # double 0.21637911340908411
	.quad	0x3fe80044371c1859              # double 0.75003252757665984
	.quad	0x3fdfa4a55177daca              # double 0.49442418056370896
	.quad	0x3fc58f75d9dac818              # double 0.16844056260521323
	.quad	0x3fc563dd2fc76a08              # double 0.16711010773617851
	.quad	0x3fe9e73bbc99da0e              # double 0.80947672687654104
	.quad	0x3fd64c2a9e4e86ae              # double 0.34839883288996532
	.quad	0x3fc3f9807af9c2a8              # double 0.15605169300717603
	.quad	0x3fdfbe53f8a261d6              # double 0.49599169998830683
	.quad	0x3fc0a8f5387d43cc              # double 0.13015618570582743
	.quad	0x3fe4a1b50e2f8b5a              # double 0.64473965426109747
	.quad	0x3feef393e7a2328d              # double 0.9672336124509272
	.quad	0x3fe43be899cabc97              # double 0.63231306111801444
	.quad	0x3fec2afa708450a2              # double 0.88024637199352562
	.quad	0x3fd12b2ebf51c21e              # double 0.26826065715343528
	.quad	0x3fef0644edd25ecf              # double 0.9695152897793039
	.quad	0x3fe042acd07e25c9              # double 0.50813904496424656
	.quad	0x3fe2b91dc341693a              # double 0.58509719978181995
	.quad	0x3fd40243c86c8a72              # double 0.31263823101668387
	.quad	0x3fe1499d723283c8              # double 0.54023620895542823
	.quad	0x3fd12b3c779797f0              # double 0.26826392821237643
	.quad	0x3fea6fb4d380cd1b              # double 0.82613602933125507
	.quad	0x3fc09d7b349b7d0c              # double 0.12980594700545856
	.quad	0x3fe46966e4502435              # double 0.63786644546883642
	.quad	0x3fe76cdeebd183af              # double 0.73203989084514898
	.quad	0x3fece359fddce5dc              # double 0.9027528723010465
	.quad	0x3fe62fdce2bc9491              # double 0.69334263119221096
	.quad	0x3fe7aa5411904eff              # double 0.7395420401612397
	.quad	0x3f9c8c36fadd1940              # double 0.027878626882079205
	.quad	0x3fe12224feda008b              # double 0.53541803146073741
	.quad	0x3f91b38806502c40              # double 0.0172864202359444
	.quad	0x3fe61cf2551b1e3b              # double 0.6910335218644329
	.quad	0x3fca0d2d5ffc0cb4              # double 0.20352713762995267
	.quad	0x3fe0412ad2e5f39b              # double 0.50795499030174385
	.quad	0x3fe2611f0119a0db              # double 0.57435560431352017
	.quad	0x3fed3592c3ee3b54              # double 0.91278970973676587
	.quad	0x3fe1e890a6fb72bc              # double 0.55963928807940233
	.quad	0x3fdc14c437b94d5c              # double 0.43876748506337093
	.quad	0x3fe3d4fefc0de245              # double 0.61975049237577962
	.quad	0x3fcfc0734a8db8c0              # double 0.24806061878502383
	.quad	0x3fd6e19002aae178              # double 0.35751724491594628
	.quad	0x3fe6e5242279fee9              # double 0.71547133191776624
	.quad	0x3fe8819c04942989              # double 0.76582146543778251
	.quad	0x3feaabdaa5de4c2f              # double 0.83347828289186576
	.quad	0x3fe94b4e246cf75b              # double 0.7904425345838989
	.quad	0x3fd21db12b4ea84c              # double 0.28306225995277567
	.quad	0x3fe2c676e5a2e3b5              # double 0.5867266163905841
	.quad	0x3fdfc787ab1bb36e              # double 0.49655334195886425
	.quad	0x3fc4eddcdd6df7e8              # double 0.16350899517050199
	.quad	0x3fd1078e896ce2f0              # double 0.26608622951930183
	.quad	0x3fd7efec34f6f5b6              # double 0.3740187184556264
	.quad	0x3feedb0e4661a470              # double 0.96424020525331677
	.quad	0x3fe9f5bf8ed1b3f2              # double 0.81124856848111748
	.quad	0x3fc3a52f903af5bc              # double 0.15347857038970669
	.quad	0x3fd010ccfa0b9e08              # double 0.2510254327630439
	.quad	0x3fdaddf187d10f9e              # double 0.41979635489792055
	.quad	0x3fe6bc6ece52b6f8              # double 0.71050205514413189
	.quad	0x3fe8b0968282af90              # double 0.77155614366846414
	.quad	0x3fd24d09b861425c              # double 0.28595202451564261
	.quad	0x3fe2acdf9ce3694b              # double 0.58360272066355756
	.quad	0x3fefc93d38130e44              # double 0.99331532432592739
	.quad	0x3fd94398f7c911dc              # double 0.3947508258609369
	.quad	0x3fcadd3df6b550d8              # double 0.20987677141477579
	.quad	0x3fe0eca3306db41e              # double 0.52888640841195289
	.quad	0x3f63067053407200              # double 0.0023224061824420605
	.quad	0x3fde3261b9716daa              # double 0.47182505712199918
	.quad	0x3fe250b346db4f34              # double 0.57235111083216461
	.quad	0x3fb40814a6843db0              # double 0.078248301175554813
	.quad	0x3fe4d625ff941304              # double 0.65114116590174875
	.quad	0x3f81eaf88bdc4180              # double 0.0087489526445387877
	.quad	0x3fe701ce0e46cc13              # double 0.7189703253592391
	.quad	0x3fe775cb98d78dce              # double 0.73312930919603914
	.quad	0x3fd75e4ee9a223ae              # double 0.36513111892468941
	.quad	0x3fc5138234ad17e4              # double 0.16465785572125846
	.quad	0x3fe422aea7905b94              # double 0.62923367240260797
	.quad	0x3fde1e5cdb0bc24e              # double 0.47060319319920019
	.quad	0x3fb402389db683b0              # double 0.078158892158639359
	.quad	0x3fc2bacf1473e4a4              # double 0.14632595537822113
	.quad	0x3fc21a81f9d34a24              # double 0.14143395136359616
	.quad	0x3fe8a176a9296c0a              # double 0.76970990218558311
	.quad	0x3fe0e88102e1aeb5              # double 0.52838182986075444
	.quad	0x3fe0f48c01a5714e              # double 0.52985191651854691
	.quad	0x3fef3a3f42fdf131              # double 0.97586024364821899
	.quad	0x3fe76faa37405d5c              # double 0.73238096991819246
	.quad	0x3fea3c8fc797eb19              # double 0.81989277823535922
	.quad	0x3fde35c15fd9243c              # double 0.47203096733261751
	.quad	0x3fd42fd2667fc74a              # double 0.31541881570511932
	.quad	0x3fb1bf9c945f6848              # double 0.0693300115812302
	.quad	0x3fc651d4c2a95c0c              # double 0.17437228684386274
	.quad	0x3fc57c2c7f70a4a0              # double 0.16785198424012027
	.quad	0x3fd0e108633b3ea8              # double 0.26373490992134885
	.quad	0x3fddb50e01abed9e              # double 0.46417570269815112
	.quad	0x3fbd76904b88a978              # double 0.11509038776481428
	.quad	0x3fe51234c02fd060              # double 0.6584724191329876
	.quad	0x3fe8067c1f762b3a              # double 0.75079160828440838
	.quad	0x3fc115254ce17e1c              # double 0.13345781568476489
	.quad	0x3feca9c259802e99              # double 0.89572255592925665
	.quad	0x3fe5853f9ae748fa              # double 0.67251568083364011
	.quad	0x3fedb837ad2bdb77              # double 0.92873748610041573
	.quad	0x3fee3cebc608228d              # double 0.94493664434510694
	.quad	0x3fd5dcd02bde7766              # double 0.34160236629565188
	.quad	0x3fe56af98560830b              # double 0.66930843401141382
	.quad	0x3fdd4a978adb2ffe              # double 0.457677732087859
	.quad	0x3fea17fa797ab54f              # double 0.81542705274993377
	.quad	0x3fd9dea6ba56d974              # double 0.40421455571358611
	.quad	0x3fdf387f0f59794a              # double 0.48782326220488825
	.quad	0x3fd59d89aa593460              # double 0.33774034152594901
	.quad	0x3fd431106853bffe              # double 0.315494634515744
	.quad	0x3fe70192b63ee877              # double 0.71894202799673124
	.quad	0x3fb2443200144680              # double 0.07135307790692913
	.quad	0x3fe49748ce0124e6              # double 0.64346733317611604
	.quad	0x3fe1d44fc33ee4df              # double 0.55716694005891643
	.quad	0x3fc70dc90eadc788              # double 0.18010819641818565
	.quad	0x3fe295ba7001520f              # double 0.5807773768997907
	.quad	0x3fc4b2031210f788              # double 0.16168249494688447
	.quad	0x3fdb190e36a3ebd2              # double 0.4234042676541182
	.quad	0x3fef438b6efebf0f              # double 0.97699519804698009
	.quad	0x3fdf71ca24763eb0              # double 0.49132016716701354
	.quad	0x3fddff2be7809c20              # double 0.46869943244604606
	.quad	0x3fa88f33ed862cf0              # double 0.047967550987857765
	.quad	0x3fd02892aad5d7d6              # double 0.25247637446534321
	.quad	0x3fe8931b7d3ba5de              # double 0.76795744380541087
	.quad	0x3fe3493d8c8ac1ec              # double 0.60269048165906502
	.quad	0x3fc862698f622050              # double 0.19050330639970747
	.quad	0x3fb2a630cc766e38              # double 0.072848367612487475
	.quad	0x3fbdd73e191a3d30              # double 0.11656559098104391
	.quad	0x3fe6a256413eb3a8              # double 0.70731652014875568
	.quad	0x3fe0c285c656e872              # double 0.52374542940311941
	.quad	0x3fc377a3fcb9c9c4              # double 0.15208864059566285
	.quad	0x3fe78860f6a45d01              # double 0.73539779827379459
	.quad	0x3fd2938b0fd5ffe8              # double 0.29025532289960987
	.quad	0x3fe8d39961ff704b              # double 0.7758299745578453
	.quad	0x3fd1dde93efbe5de              # double 0.27916937971857958
	.quad	0x3fe50515862ae27e              # double 0.65687061504929978
	.quad	0x3fd2c76fb2279f96              # double 0.29342262647559758
	.quad	0x3febd089f4711f9b              # double 0.86920640699917173
	.quad	0x3fded0976cc93664              # double 0.48148141502028907
	.quad	0x3fd11012d93122ce              # double 0.26660605631017809
	.quad	0x3fd1e14473754cb6              # double 0.27937423014845864
	.quad	0x3fee679571c09446              # double 0.95014450280417218
	.quad	0x3fceb6e7c05ca5b8              # double 0.23995682614012792
	.quad	0x3fed00b72a1ca2b5              # double 0.90633733963939866
	.quad	0x3fd4f7e13f101bb8              # double 0.32762938650597162
	.quad	0x3fdade93da381b54              # double 0.41983505545106437
	.quad	0x3fd4ff190e1dc128              # double 0.32806993845498988
	.quad	0x3fd6480538873050              # double 0.34814577598877339
	.quad	0x3f95e15b851b20c0              # double 0.021367483138221344
	.quad	0x3fd3a669c0c8b8c6              # double 0.30703204943246154
	.quad	0x3fd0d47f10387668              # double 0.26296974739111656
	.quad	0x3fee29c64510ecd2              # double 0.94259942521548568
	.quad	0x3fab7776c681bb60              # double 0.053645812732489473
	.quad	0x3fe7725e72e11fd8              # double 0.73271105229741362
	.quad	0x3fb7b40ac7f5ca98              # double 0.092590974634541801
	.quad	0x3fd00cbc22be717c              # double 0.25077727692566731
	.quad	0x3fe794186ec9fe42              # double 0.73682805670245721
	.quad	0x3febb8b95b0cd2ad              # double 0.86629932196827542
	.quad	0x3fc211fd40d4d12c              # double 0.14117398896781574
	.quad	0x3fe14377905cc9bd              # double 0.53948572345534951
	.quad	0x3fe5dc99edd9029c              # double 0.68317886786106241
	.quad	0x3fd67a74ce43f6f4              # double 0.35122413771738015
	.quad	0x3fe10453286e0e32              # double 0.53177793404069562
	.quad	0x3fef8aa421b97c3f              # double 0.98567396723581868
	.quad	0x3fefe437ecf17497              # double 0.99660869863477585
	.quad	0x3fe9c1dafe279d4e              # double 0.8049139942130894
	.quad	0x3f9171a7b6ca8000              # double 0.017035122424772453
	.quad	0x3fe39afcd47fc8bb              # double 0.61266938689939054
	.quad	0x3fe74944e49ca05d              # double 0.72769398356195902
	.quad	0x3fe7756099e7ee7a              # double 0.73307828960191945
	.quad	0x3fd2e75254262f1e              # double 0.29536874978724537
	.quad	0x3fec7ac67431ced1              # double 0.88998720831156153
	.quad	0x3fd49e3bd269cdbe              # double 0.32215781734631921
	.quad	0x3fe0ced49fe99b79              # double 0.52524787171283471
	.quad	0x3fe92d26950b0d3e              # double 0.78676156148905085
	.quad	0x3fd9464f3cc661c4              # double 0.39491635260631264
	.quad	0x3f760245a8e08700              # double 0.0053732606011480666
	.quad	0x3fdd203cf3652782              # double 0.45509265679412902
	.quad	0x3fccb967e55bd5bc              # double 0.22440813731343023
	.quad	0x3fe10c4118779bc3              # double 0.53274588373903276
	.quad	0x3fe2600f85a14655              # double 0.57422615146260603
	.quad	0x3fe848ad0b52b25f              # double 0.75887157641916392
	.quad	0x3fee0fe1d7aefc32              # double 0.93943874478998723
	.quad	0x3fe683d123d7fa3e              # double 0.70359093666758787
	.quad	0x3fd8e4b5d97cafde              # double 0.38895937193842467
	.quad	0x3fab9a2b6c438b50              # double 0.053910595861245469
	.quad	0x3fd28b72958000e2              # double 0.28976120566950503
	.quad	0x3fe80a2d4521ebd1              # double 0.75124228956644334
	.quad	0x3fd32927f9842aca              # double 0.29938697211097731
	.quad	0x3fdbfa6f2666296c              # double 0.43716028928670059
	.quad	0x3fd49b1f327a50ba              # double 0.32196788720581149
	.quad	0x3fead18e39adb5e7              # double 0.83808051362364899
	.quad	0x3fbaeb7c7cebdc88              # double 0.1051557354911542
	.quad	0x3fd7be45159e9bda              # double 0.37098815070424751
	.quad	0x3fee06a3373d7da1              # double 0.93831024922467432
	.quad	0x3fb4bdbe7d6226e8              # double 0.081020265208418984
	.quad	0x3feb1a85681f97f8              # double 0.84698744141201043
	.quad	0x3feae58e2c5027c1              # double 0.84052189497855789
	.quad	0x3fd02c8dc96d21b2              # double 0.25271935148750935
	.quad	0x3fe0e7d809fb0d3b              # double 0.52830125760411961
	.quad	0x3fc2875bb25982b8              # double 0.14475580414275213
	.quad	0x3fdd61022ba59626              # double 0.45904592764267915
	.quad	0x3fec5ab7b22c59be              # double 0.8860739211984805
	.quad	0x3feb2c27606b8815              # double 0.8491398699954994
	.quad	0x3fedcc112d81e211              # double 0.93116053474574489
	.quad	0x3fc042ebad9862a4              # double 0.12704225517588441
	.quad	0x3fa6aa8850e7f190              # double 0.044269809604858712
	.quad	0x3fc5e6cc8f454c94              # double 0.17110592837943683
	.quad	0x3fe5389e70ce100c              # double 0.66316148788655616
	.quad	0x3febb69b0ba49985              # double 0.86604072832123846
	.quad	0x3fd189ea4e730738              # double 0.27404267941539073
	.quad	0x3fc6b5289c6cbfe8              # double 0.17740352285318228
	.quad	0x3fd5a4c2397c9676              # double 0.33818107236798001
	.quad	0x3feaed4ada9b1809              # double 0.84146635719730611
	.quad	0x3fc2bfc02c50c97c              # double 0.14647676624151618
	.quad	0x3fc9882b57f84b9c              # double 0.19946805758862929
	.quad	0x3fe3b0a14f9cafde              # double 0.61531129407148533
	.quad	0x3fe53f9e90b8b307              # double 0.66401603952326205
	.quad	0x3fdfe02ffdf7f7e8              # double 0.49805831719993288
	.quad	0x3f8ef67548446740              # double 0.015118519084854065
	.quad	0x3fc02fc77ebaf818              # double 0.12645810783391265
	.quad	0x3fd4f7856f759cf0              # double 0.32760749706945003
	.quad	0x3fd8d0da0a5b3440              # double 0.38774729739526848
	.quad	0x3fd8ed5ea2fac788              # double 0.38948789516427285
	.quad	0x3fe7d32d3b9523a0              # double 0.74452840459081315
	.quad	0x3fdf44537ffd198a              # double 0.48854529856580398
	.quad	0x3fd041b9a8993634              # double 0.25401154961295735
	.quad	0x3fe8fb798ee4f20e              # double 0.78069761189505171
	.quad	0x3fda760ac97d3280              # double 0.41345472027459351
	.quad	0x3fe52b143a2f18dc              # double 0.66150866855675927
	.quad	0x3fdd745bed1797be              # double 0.46022699502497832
	.quad	0x3fec5a327764f649              # double 0.88601039237227852
	.quad	0x3fe540f8431b23e4              # double 0.6641808806099303
	.quad	0x3fd80249cb64efe2              # double 0.37513966429446388
	.quad	0x3fea7c6200653827              # double 0.82768344952797157
	.quad	0x3fef2bebc95fbb54              # double 0.97411145525789288
	.quad	0x3fe2caed9beca258              # double 0.58727150396323236
	.quad	0x3fe550e609a1b047              # double 0.66612531548663234
	.quad	0x3fe83c43e3e48183              # double 0.75735659132264777
	.quad	0x3fe34a7d1390921a              # double 0.60284284421192358
	.quad	0x3fd58c99eb3fafea              # double 0.33670661901010013
	.quad	0x3fd7acdaf6cb60e0              # double 0.36992525197048387
	.quad	0x3fd2368859e44518              # double 0.284578407082408
	.quad	0x3fd4c8cb5bbaa870              # double 0.32475551565096961
	.quad	0x3f99686f450eff00              # double 0.024812449064255837
	.quad	0x3fefdecbda1341bc              # double 0.99594681351486924
	.quad	0x3fef69cd85daad5b              # double 0.9816653837528223
	.quad	0x3febe8356caf24cb              # double 0.87209578730939918
	.quad	0x3fd482e179522dd2              # double 0.32048832748179479
	.quad	0x3fc6583641289868              # double 0.1745670145184619
	.quad	0x3fc0b42577be88ec              # double 0.13049763056648744
	.quad	0x3fcfd9fa30901e64              # double 0.2488396393894049
	.quad	0x3fb352d0c38e2068              # double 0.075482414000477172
	.quad	0x3fd3d458730ec7d0              # double 0.30983554111582823
	.quad	0x3fe60c901c7b7fbf              # double 0.68903356135341898
	.quad	0x3fc92c7aeabe83f4              # double 0.196669926282112
	.quad	0x3fb04953fec40708              # double 0.063618898104348287
	.quad	0x3fed234775bef7be              # double 0.91055653569468809
	.quad	0x3fccc30c334b6e54              # double 0.2247023821317834
	.quad	0x3fdd2cacfa862bb0              # double 0.45585178818935912
	.quad	0x3fbb9f2701de5fd8              # double 0.10789722247716271
	.quad	0x3fee7ea584a7e025              # double 0.95295978459671871
	.quad	0x3fe7457b8b11690d              # double 0.72723176156731173
	.quad	0x3fe3ccb36260906f              # double 0.61873788084313996
	.quad	0x3fb2d2a89da121c8              # double 0.073526895984406981
	.quad	0x3fea8a7c8e711aad              # double 0.82940509625116976
	.quad	0x3fd4ef858ad16b8c              # double 0.32711924129915171
	.quad	0x3fb9ba163a829d78              # double 0.10049570969078114
	.quad	0x3fef05900e7872b6              # double 0.96942904306668853
	.quad	0x3fd8b4f26777a730              # double 0.38604412178266312
	.quad	0x3feae94458d5be80              # double 0.84097497320722425
	.quad	0x3fde483dd02f7ed2              # double 0.47315926867120794
	.quad	0x3fe4c712eeeb2129              # double 0.64930102027668568
	.quad	0x3fecfc63eed99970              # double 0.90580937052145138
	.quad	0x3fd2a80ca5adfb50              # double 0.29150692157411573
	.quad	0x3fe27df2b446c434              # double 0.57787451944580548
	.quad	0x3fe1edd64357eb6e              # double 0.56028283265128009
	.quad	0x3fc42f68c0c2d33c              # double 0.1576968136993403
	.quad	0x3fccbe183b65d9b0              # double 0.22455122852597986
	.quad	0x3fea24aeaf2bf0fd              # double 0.81697782719814394
	.quad	0x3fc18fe9b488764c              # double 0.13720437350359516
	.quad	0x3fe7efe45eee4f22              # double 0.74803370038214134
	.quad	0x3feda94d647c91fe              # double 0.92691678644456466
	.quad	0x3f7b03319e2db280              # double 0.0065948427389740383
	.quad	0x3fdd6d32ac560dd2              # double 0.45978991346075049
	.quad	0x3fea434eaa71bbf5              # double 0.82071622171304048
	.quad	0x3fe755bf6c67a540              # double 0.72921725437951324
	.quad	0x3fe57c9444dc2498              # double 0.67145741891103494
	.quad	0x3fd52c6bb0286d7a              # double 0.33083622172281191
	.quad	0x3fd8ab21d91d4c58              # double 0.38544508173544534
	.quad	0x3fbe67b34fdd48a8              # double 0.1187698430997296
	.quad	0x3fd7effde0c8969a              # double 0.37402293159025535
	.quad	0x3fe3706dba901673              # double 0.60747419775061784
	.quad	0x3fe9523a31907a19              # double 0.79128751450099621
	.quad	0x3fd15afc028eb6cc              # double 0.27117824792626943
	.quad	0x3fed4e742f98ed89              # double 0.91582688614237029
	.quad	0x3fd7ff4081933a36              # double 0.37495434430903474
	.quad	0x3fe86e5e64424db3              # double 0.76347274381480756
	.quad	0x3fe8fe0dfb837a72              # double 0.78101252673861965
	.quad	0x3fd588b6aa541366              # double 0.33646933206210006
	.quad	0x3fd77ef546e121ac              # double 0.36712390825098384
	.quad	0x3fa2f279993ac640              # double 0.03700618739584316
	.quad	0x3fdfdf81cd908262              # double 0.4980167872873037
	.quad	0x3fc32793b6eaba4c              # double 0.14964529448976049
	.quad	0x3fda189da761cf28              # double 0.40775243135361672
	.quad	0x3fdf2a30f13b7a4a              # double 0.48695014531941594
	.quad	0x3fda9e1cdaeec898              # double 0.41590043430472567
	.quad	0x3fdc4cee71119888              # double 0.44219552080029034
	.quad	0x3fea469dd9a34934              # double 0.82112019069089692
	.quad	0x3fe88881cd2115d6              # double 0.76666345657639101
	.quad	0x3fde5178348d1aee              # double 0.47372250682785377
	.quad	0x3feeac1f853de3f8              # double 0.95851112388402182
	.quad	0x3fe65b2d82e4fe3a              # double 0.69863009991963243
	.quad	0x3fcae7d18cf22008              # double 0.21019954092139437
	.quad	0x3fea5400978985a5              # double 0.82275418851002213
	.quad	0x3fb71e72b75884c8              # double 0.090308351289894451
	.quad	0x3fe031ff1cec4cba              # double 0.50610309266121267
	.quad	0x3fd11d5615f4dbe8              # double 0.26741554397761869
	.quad	0x3fdef3624f17c648              # double 0.48360498165047661
	.quad	0x3fc0ee546acbb1f0              # double 0.13227324690468789
	.quad	0x3fd83e0a1467fbae              # double 0.37878658287803091
	.quad	0x3fe97a73f78dee23              # double 0.7961978755042235
	.quad	0x3fd6a057ffffb7c8              # double 0.35353660583393465
	.quad	0x3feb19c4753d1f5d              # double 0.84689543626971509
	.quad	0x3fe9c7148c16b46c              # double 0.80555178986618392
	.quad	0x3fc23a01aa30d7a0              # double 0.14239521799180199
	.quad	0x3fe19b9e7e586b8a              # double 0.55024647404512561
	.quad	0x3fe46d806437e57c              # double 0.63836688588996493
	.quad	0x3fe792a70f9f4c5f              # double 0.73665192652914502
	.quad	0x3fda75eac6549dc4              # double 0.41344708793846174
	.quad	0x3fe81b611a2c8b06              # double 0.753342200394713
	.quad	0x3fd7edbb6e788c18              # double 0.37388501918957351
	.quad	0x3fc8ff74518091d4              # double 0.19529584865189398
	.quad	0x3fe7852ffc1457ae              # double 0.73500823244352431
	.quad	0x3fd044fbfd00a6a4              # double 0.25421046931533398
	.quad	0x3fbe4924f52fa198              # double 0.11830359445560246
	.quad	0x3fead4f7ce90e1b3              # double 0.83849706978712957
	.quad	0x3fb84250a5eff290              # double 0.094761887084994222
	.quad	0x3f89a4732ee3df80              # double 0.012520694607232263
	.quad	0x3fe04a14dfc03fed              # double 0.50904315663683308
	.quad	0x3fee71638cced78d              # double 0.95134141446645659
	.quad	0x3fbef468c49350f0              # double 0.12091688918309607
	.quad	0x3fea615d2895daf1              # double 0.82438524176435923
	.quad	0x3fcdceb2ee308ae4              # double 0.23287045126297479
	.quad	0x3fcfa3b0609a3874              # double 0.24718289105334501
	.quad	0x3fe0bf22fda8e582              # double 0.52333211462898555
	.quad	0x3fbfa36428da6c20              # double 0.12358690259354477
	.quad	0x3feca797e7b28ed4              # double 0.89545817616859801
	.quad	0x3fe67c3731d0c78d              # double 0.70266303758238424
	.quad	0x3fdd994b05611fec              # double 0.46248126530963307
	.quad	0x3fd806b50ce8057c              # double 0.3754093767202773
	.quad	0x3fec03622e4027cd              # double 0.87541302712747326
	.quad	0x3fec41f6ffdbc3fb              # double 0.88305234882693584
	.quad	0x3fe5b62de1d51165              # double 0.67848867519255107
	.quad	0x3fe4b2c7ab97681b              # double 0.6468237258334314
	.quad	0x3f9c6d16ad7000a0              # double 0.027759889922891134
	.quad	0x3fea1878290b8e53              # double 0.81548698441151612
	.quad	0x3fe9a294744e7d5f              # double 0.80109617916233933
	.quad	0x3fdb0c75eba41654              # double 0.42263553630650574
	.quad	0x3feb205136645514              # double 0.84769497512266633
	.quad	0x3fc8c332933893d4              # double 0.19345695675397556
	.quad	0x3fcaf9b751ef5ce0              # double 0.21074573040707545
	.quad	0x3fec7eac0184801c              # double 0.89046287819292357
	.quad	0x3fe01b2497856f97              # double 0.50331334680548678
	.quad	0x3fe67e0e35358ded              # double 0.70288763420506728
	.quad	0x3fbe3b7a92f0eee0              # double 0.11809507453375145
	.quad	0x3fee69c62af24aeb              # double 0.95041187656383153
	.quad	0x3fed41dd8235ca4d              # double 0.91429019385970778
	.quad	0x3fb28b71947efb70              # double 0.072440241578971998
	.quad	0x3fb4197fcd057428              # double 0.078514087251691067
	.quad	0x3fecf0cd2d9ef018              # double 0.90439471159288853
	.quad	0x3fd4b334a3d5df7c              # double 0.32343784331850833
	.quad	0x3fe1e166d8c071cd              # double 0.55876486143420723
	.quad	0x3feddb33c34c70ed              # double 0.93300808090455478
	.quad	0x3fd9ea3f71a0d780              # double 0.40492235275757338
	.quad	0x3fe5d98fe14e04a2              # double 0.68280786518893799
	.quad	0x3fd3fa66d5aa9746              # double 0.31215830674988287
	.quad	0x3fd4410b5c918960              # double 0.31646999397175613
	.quad	0x3fe0e96a0e99e481              # double 0.52849295474801761
	.quad	0x3fd92060ec151ec4              # double 0.39260123305255612
	.quad	0x3fd81294ded8cc98              # double 0.37613412630452947
	.quad	0x3fe06a81d19df4d6              # double 0.51300135556052839
	.quad	0x3fe75e1c8c0ebc7a              # double 0.73023822169297081
	.quad	0x3fd306a3d88c302c              # double 0.29728027484157127
	.quad	0x3fecc3401c0784b1              # double 0.8988342807243922
	.quad	0x3fadd8fe6cda7a60              # double 0.058296156680843536
	.quad	0x3fe67a0c86bc1ede              # double 0.70239855113410576
	.quad	0x3fceff90b1aab014              # double 0.24217423129209747
	.quad	0x3fc5eefd3b106860              # double 0.17135587104786776
	.quad	0x3feac40e27044caf              # double 0.83643252964465897
	.quad	0x3fdcd13f67ead518              # double 0.45027146480727387
	.quad	0x3fe16aaa4dd9426b              # double 0.54427066044634154
	.quad	0x3fec448ea6c402bd              # double 0.88336880275172514
	.quad	0x3fce04519c79baac              # double 0.23450679912953853
	.quad	0x3fe5e05d9da14e6c              # double 0.68363838946465938
	.quad	0x3fdc01a3f7384a16              # double 0.43760012762609912
	.quad	0x3fef7642eb0a7c55              # double 0.98318620592534478
	.quad	0x3fbb8111ea6b1e40              # double 0.1074382016478177
	.quad	0x3fd421ec9695f56a              # double 0.31457056718485055
	.quad	0x3fde93060582c1f8              # double 0.47772360361253119
	.quad	0x3fd5a337f5c70298              # double 0.33808707238862601
	.quad	0x3fdde2a5e7157576              # double 0.46695849959163327
	.quad	0x3fe96429a01d6dd9              # double 0.79347687981083503
	.quad	0x3fe002468e808ca1              # double 0.5002777846570049
	.quad	0x3feda1ad612ab622              # double 0.92598599412821536
	.quad	0x3fe6cc9ae5790e1b              # double 0.71247620409889423
	.quad	0x3fdb26fb3b030f2a              # double 0.42425423396001583
	.quad	0x3fd44258e95d38f0              # double 0.31654951848476198
	.quad	0x3fd7a635eb7fdd20              # double 0.3695196914481631
	.quad	0x3fd6216c7025aa26              # double 0.3457900138079445
	.quad	0x3fe0d230a316f6e2              # double 0.52565795758684097
	.quad	0x3fe768904b7a9dff              # double 0.73151411764132479
	.quad	0x3fedcbd4204a6aed              # double 0.93113142306114371
	.quad	0x3fd2036338c6389c              # double 0.2814567617832695
	.quad	0x3fb4a4a3418afe78              # double 0.08063717222375455
	.quad	0x3fce164057a3e7a4              # double 0.23505405692395442
	.quad	0x3fa0245c95439900              # double 0.031527417393407475
	.quad	0x3fc113faa10a9b5c              # double 0.13342221129752374
	.quad	0x3fb79e4d5aaef1a8              # double 0.092259249343391247
	.quad	0x3fe3d2ea66f668db              # double 0.6194965373026905
	.quad	0x3fd796e76d7bce24              # double 0.36858545009383392
	.quad	0x3fe78f0d152b9c22              # double 0.73621229300340851
	.quad	0x3fbd5696a7fabf58              # double 0.11460248566686226
	.quad	0x3fde14a5cecc9c70              # double 0.47001023478737292
	.quad	0x3fddea2b709cdc1a              # double 0.46741758344018225
	.quad	0x3fd459a0c156089e              # double 0.31797045593715179
	.quad	0x3fe1431055350afe              # double 0.5394364990428071
	.quad	0x3fc0aa87ba3dff34              # double 0.13020416826111048
	.quad	0x3fa3a01f1fb4bf60              # double 0.038331005688063469
	.quad	0x3fe06465c57fd281              # double 0.51225555967410241
	.quad	0x3fe0fc84f887a159              # double 0.53082512417771988
	.quad	0x3fefbee044582bc8              # double 0.99205029819983625
	.quad	0x3fc4c0fb86b3c6ec              # double 0.16213935925730227
	.quad	0x3fe8a971d1e61359              # double 0.77068415637823329
	.quad	0x3fe9d8fbd6bb770c              # double 0.8077372735967585
	.quad	0x3fee98bcfdc0e175              # double 0.95614480553835668
	.quad	0x3fef2aae15705354              # double 0.97395996272335105
	.quad	0x3fe245e5bd1eae12              # double 0.57103239953488782
	.quad	0x3fdd1d08e6daefc4              # double 0.45489714188056163
	.quad	0x3fcb3f7dec56d2e4              # double 0.21287511863706421
	.quad	0x3fd471b7eab8aa82              # double 0.31944082185751921
	.quad	0x3fa43b86095c2a40              # double 0.039516628878193405
	.quad	0x3fec39b234ed649a              # double 0.88204298341146914
	.quad	0x3fefcb3a28b46880              # double 0.99355800581112419
	.quad	0x3fea5dafce2ce1f5              # double 0.82393636959665051
	.quad	0x3fde9e857283d5b8              # double 0.47842537100890636
	.quad	0x3fe363d052a150c1              # double 0.60593429697703283
	.quad	0x3fed27dc7b408323              # double 0.91111587593704646
	.quad	0x3fddfb5828bc165e              # double 0.46846584299087179
	.quad	0x3fed632c22e01030              # double 0.91835600673267059
	.quad	0x3fe545046623ded2              # double 0.66467494916192948
	.quad	0x3fe357ee2f61c312              # double 0.60448369268678648
	.quad	0x3fc942b73d2aea9c              # double 0.19734850393964087
	.quad	0x3fdfdbcdb0659036              # double 0.49779073930972417
	.quad	0x3fd51b4ea7e289a6              # double 0.3297917022229292
	.quad	0x3fa3bc343a9543d0              # double 0.038545257712605641
	.quad	0x3fe6532b5f002ba7              # double 0.69765251688783259
	.quad	0x3fdc019099d294c2              # double 0.43759551069008407
	.quad	0x3fd545f29a1e56f2              # double 0.332394266611444
	.quad	0x3fee78a99fbddc6d              # double 0.95222932052173592
	.quad	0x3fe11b794078f559              # double 0.53460371582302024
	.quad	0x3fca6b94f081664c              # double 0.20640813582831397
	.quad	0x3fccb8d5e93010bc              # double 0.22439073454018466
	.quad	0x3fd2567afd4988f4              # double 0.28652834639628044
	.quad	0x3feddcb44704c439              # double 0.93319143172096297
	.quad	0x3fe973a095262bdd              # double 0.79536465769467279
	.quad	0x3fbfe88cd0c6a218              # double 0.12464218232219826
	.quad	0x3fd28856ef772b46              # double 0.2895715082674325
	.quad	0x3fe481d920b1a023              # double 0.64085060487287071
	.quad	0x3fddebf4989625e2              # double 0.46752657795931729
	.quad	0x3febbe54de3e9965              # double 0.8669838276589813
	.quad	0x3fea94ae4c5735fe              # double 0.83064951811110155
	.quad	0x3fd1eb67933ae626              # double 0.27999295595108931
	.quad	0x3fbb7fee324cac10              # double 0.10742081382765911
	.quad	0x3fd34e0bc8ee9754              # double 0.3016385519243745
	.quad	0x3fe190958ad38923              # double 0.54889943232072758
	.quad	0x3fefcc3408368265              # double 0.9936771545799955
	.quad	0x3fc7437171e6b83c              # double 0.18174570142349633
	.quad	0x3fdace5dcf2cc620              # double 0.41884560806201598
	.quad	0x3fd82d47fc662b30              # double 0.37776374481534258
	.quad	0x3fe726939f161eb8              # double 0.72345906325877873
	.quad	0x3f6bb718aba13d00              # double 0.003383205589706173
	.quad	0x3fd105b08535ff9a              # double 0.26597226151351949
	.quad	0x3fd81a3e04315d6c              # double 0.37660169991928316
	.quad	0x3fd7db75e2a640e6              # double 0.37276980527623349
	.quad	0x3fea8931bc8e1e9a              # double 0.82924734904459574
	.quad	0x3fa4c8c6876fe230              # double 0.040594295533029956
	.quad	0x3fd9f7b95e3650ba              # double 0.40574487877280385
	.quad	0x3fe0e1d871bc13c0              # double 0.5275690289860151
	.quad	0x3fd5ec49352ce52c              # double 0.34254675095469866
	.quad	0x3fd6e8940762afbc              # double 0.35794544907798431
	.quad	0x3fc3058db7a638b4              # double 0.14860698191882238
	.quad	0x3fe526d6376f6443              # double 0.66099081828281958
	.quad	0x3fcdf85d62f4600c              # double 0.23414199191825025
	.quad	0x3fc401103ae31a74              # double 0.15628245234821103
	.quad	0x3fec9b9013bfcbdd              # double 0.89398959977404113
	.quad	0x3fd2853d5e0e409a              # double 0.28938230691074696
	.quad	0x3fdaf315807a3732              # double 0.42108666941281847
	.quad	0x3fe40d5ea6b76fdf              # double 0.62663204728914568
	.quad	0x3fb7f58ad68b7c40              # double 0.093590428713910434
	.quad	0x3fd2c65c260da204              # double 0.29335693088663128
	.quad	0x3fcfd345582b5f08              # double 0.24863497548243907
	.quad	0x3fe24bd52689c948              # double 0.57175691153523989
	.quad	0x3fd6ba741f5c13bc              # double 0.35513022482365009
	.quad	0x3f97952e5bcf28c0              # double 0.023030018189992729
	.quad	0x3fe3aaace9807a3c              # double 0.61458440404732739
	.quad	0x3fbcd29c02240020              # double 0.1125886445261135
	.quad	0x3f8303e6c5a55540              # double 0.0092847851816865167
	.quad	0x3fd7aecc47217bae              # double 0.37004382082335041
	.quad	0x3fe32e1f4fc88d18              # double 0.59938016493507273
	.quad	0x3f6235f6ca1c2800              # double 0.0022229976756351633
	.quad	0x3fdeddf71793e8c0              # double 0.48229768087879776
	.quad	0x3fed938aeee7a9db              # double 0.92426058446045134
	.quad	0x3fbe49f0ed6b11c8              # double 0.11831575199455024
	.quad	0x3fcd91eec227955c              # double 0.23101601104932967
	.quad	0x3fe80dfbf3f81090              # double 0.75170705461688847
	.quad	0x3fdbc10cf6bfea1a              # double 0.43365787598273331
	.quad	0x3feed69de0db1b1c              # double 0.96369832913555653
	.quad	0x3fe5be4a492f7974              # double 0.67947878164322484
	.quad	0x3fe448bff211ab8d              # double 0.63388058928590996
	.quad	0x3fe0fa145fe9de8a              # double 0.5305272935210763
	.quad	0x3feaa7938f814037              # double 0.83295610454843583
	.quad	0x3fbacbf300fdf2d0              # double 0.10467451833933272
	.quad	0x3fe86c5b570c0dac              # double 0.76322714806922453
	.quad	0x3fc06655b3c34f7c              # double 0.12812300946699995
	.quad	0x3fc493830f4ccd60              # double 0.16075170752592793
	.quad	0x3fdac67ec24c74c6              # double 0.41836518263319211
	.quad	0x3fda895700479d3c              # double 0.41463255908316277
	.quad	0x3feb35ddaf2518fb              # double 0.85032543380728443
	.quad	0x3fe1319cfb08e2f1              # double 0.53730629949776987
	.quad	0x3feb3e816d4fd5ac              # double 0.85138007497760304
	.quad	0x3fd4f1b897ad33dc              # double 0.32725348293462075
	.quad	0x3fd045c2204d083c              # double 0.25425770906815948
	.quad	0x3fc985c3b781610c              # double 0.19939466915344217
	.quad	0x3fcf47a426330064              # double 0.24437381615826148
	.quad	0x3fdd90d1391c4690              # double 0.46196394517128514
	.quad	0x3fc228f26fa61e78              # double 0.14187460376364291
	.quad	0x3fae75d8ea1f0320              # double 0.059492853717080019
	.quad	0x3fd0fe39bdbc9fa0              # double 0.26551669625268381
	.quad	0x3fce6760df12a000              # double 0.23752985851501762
	.quad	0x3fe1f7057cb0d7f4              # double 0.56140398362799582
	.quad	0x3feec06d3a9466b3              # double 0.96098958436342341
	.quad	0x3fe753e0e0df8d9a              # double 0.72898906632001403
	.quad	0x3fe709c8f47d9352              # double 0.71994445564323883
	.quad	0x3fe29ac3f38aa3ce              # double 0.58139226500235863
	.quad	0x3fe2268f1b173189              # double 0.56720691004879698
	.quad	0x3fccdde6f4aa6cd8              # double 0.22552191683357736
	.quad	0x3feeaf8b015ec7e7              # double 0.95892858760475696
	.quad	0x3fcd68bd3f93c51c              # double 0.22975888828617819
	.quad	0x3fda9903b553315a              # double 0.41558926303402688
	.quad	0x3fec755f367ed722              # double 0.88932762759825246
	.quad	0x3fe1b5703f1af0fe              # double 0.55339824986688746
	.quad	0x3fdcea81745f0ab2              # double 0.45181309093838273
	.quad	0x3fdeb40169dfa2ca              # double 0.47973666514603208
	.quad	0x3fe8ede1c487c326              # double 0.77903831848934568
	.quad	0x3feebccd1ef1ba7f              # double 0.96054702800559244
	.quad	0x3fdec47d1f3554fc              # double 0.48074272201240809
	.quad	0x3fd429fb778d533a              # double 0.3150623958111286
	.quad	0x3fd3faa520bea664              # double 0.31217315862395467
	.quad	0x3fc30de1c2038cdc              # double 0.1488611409505215
	.quad	0x3f92b02ee88fcbe0              # double 0.018250210709037762
	.quad	0x3fec587f0bd1d130              # double 0.88580276783480905
	.quad	0x3fe0b18ff0680f04              # double 0.52167508081808522
	.quad	0x3fc0fa6c658aba5c              # double 0.1326423164186562
	.quad	0x3fec0b1d3cdd7f0f              # double 0.8763567150853947
	.quad	0x3fd45ed4868bff40              # double 0.3182879747328009
	.quad	0x3fd8ee2405ff9ed2              # double 0.3895349558429021
	.quad	0x3fef8e6ba46a882d              # double 0.98613531219985406
	.quad	0x3f9faaa660f9b840              # double 0.030924415272629568
	.quad	0x3fe68ea1cfb76918              # double 0.70491114205950378
	.quad	0x3fe19ed7777a303c              # double 0.55063985190782416
	.quad	0x3fe32fa48c5bfb98              # double 0.59956576742102907
	.quad	0x3fe3b167ea043ba4              # double 0.61540599542955876
	.quad	0x3fe93b6e76ba6378              # double 0.78850482167318514
	.quad	0x3f80fd68c9643980              # double 0.0082958399257477833
	.quad	0x3fe93f19deafeb47              # double 0.78895276540365777
	.quad	0x3feea946acc45e42              # double 0.95816358321730655
	.quad	0x3fdeed5c4cf6f55c              # double 0.48323733821947257
	.quad	0x3fd40fb423883634              # double 0.31345847577981378
	.quad	0x3fd4c356e6e8715c              # double 0.32442257451636691
	.quad	0x3fe6d0d0926297a9              # double 0.71299007979245232
	.quad	0x3fea2877a117d5b8              # double 0.81743985618111648
	.quad	0x3fde6ed9ef90a736              # double 0.47551582713150553
	.quad	0x3fdc230110cdaf88              # double 0.4396364845367704
	.quad	0x3fe7cc15e8ae93f9              # double 0.74366279073421915
	.quad	0x3fe1133fb65ced1b              # double 0.533599716356011
	.quad	0x3fd1d4cffd118b4c              # double 0.27861404145931057
	.quad	0x3fd34916a32298c8              # double 0.30133596354643233
	.quad	0x3fbc737172364ef0              # double 0.11113652265913365
	.quad	0x3fd9a67e7be6acbe              # double 0.40078699207033341
	.quad	0x3fc3884a5f201384              # double 0.15259675640859538
	.quad	0x3fed97029e92fcc0              # double 0.92468386622922338
	.quad	0x3fdeea2e42544ed6              # double 0.48304325559113914
	.quad	0x3fe057b1f1f74d34              # double 0.51070496806133869
	.quad	0x3fc0ccb3a5cc71ec              # double 0.1312470016063253
	.quad	0x3fcd37f5192d0c80              # double 0.22827018479629047
	.quad	0x3fe20b5bfb9662b1              # double 0.56388663423702756
	.quad	0x3fe834798f5ea2f8              # double 0.75640562059297078
	.quad	0x3fe24697c43ad7ad              # double 0.57111728979247334
	.quad	0x3fd29e1622bb16aa              # double 0.29089883224183188
	.quad	0x3fd4c0994b5496ce              # double 0.32425529819952892
	.quad	0x3fb5944239d58750              # double 0.084293498153354962
	.quad	0x3fdcc04cab749630              # double 0.44923702949231181
	.quad	0x3fe40ceedd8a965c              # double 0.62657874364658595
	.quad	0x3fcb4ed983832a4c              # double 0.21334380074979931
	.quad	0x3fd8a6ad849f2652              # double 0.38517320586524761
	.quad	0x3fdd1afd04fc47be              # double 0.45477223860609317
	.quad	0x3fa8e64b95d28e50              # double 0.048632013357999271
	.quad	0x3fe7d202cafbb63f              # double 0.74438609738508166
	.quad	0x3fc028a439771100              # double 0.12624028020776024
	.quad	0x3fe7466e7a36c653              # double 0.72734760160364897
	.quad	0x3fde733d47cdc678              # double 0.47578365337458406
	.quad	0x3fb3e4d46cd41f00              # double 0.077710415429574908
	.quad	0x3fe2d769f8f931e5              # double 0.58879564883823987
	.quad	0x3fd7e210ce9d2e54              # double 0.37317295243403703
	.quad	0x3fe552359ffe5613              # double 0.6662853360055031
	.quad	0x3fdea194fc99aa22              # double 0.47861218135827432
	.quad	0x3fe26be32c07a89c              # double 0.57566984748452255
	.quad	0x3f9cab3dae82e220              # double 0.027996982361147116
	.quad	0x3f8dabd8d6200340              # double 0.014487928423479013
	.quad	0x3fce05dc82ec7c54              # double 0.23455387490045843
	.quad	0x3fec250e510f30f3              # double 0.87952342826750252
	.quad	0x3fe77b687fd0a825              # double 0.73381447757606522
	.quad	0x3feba173e92650d0              # double 0.86345859086079635
	.quad	0x3fd18483cc6f8efa              # double 0.27371306385451499
	.quad	0x3fa1c7344c10a310              # double 0.034722933087612984
	.quad	0x3feef67787887ab3              # double 0.96758629294693887
	.quad	0x3fe8fa483c1287ae              # double 0.78055202229392306
	.quad	0x3f93e8917bc2eb20              # double 0.019441865137859726
	.quad	0x3feb6eee0deeca36              # double 0.85729124757046438
	.quad	0x3fbb8d64b520d080              # double 0.10762624189448111
	.quad	0x3fd5b66f6788c488              # double 0.33925995932356345
	.quad	0x3fc7c193ab7477dc              # double 0.18559499618362352
	.quad	0x3fe52ce20eac6630              # double 0.66172888627915505
	.quad	0x3fe3293c906bbb01              # double 0.59878376204673611
	.quad	0x3feacfd9e1ec7421              # double 0.83787244916641523
	.quad	0x3fdd6871d672b646              # double 0.45949979726978929
	.quad	0x3fd73e7c563949de              # double 0.36318882389346452
	.quad	0x3fe831bce563c959              # double 0.75607151797002381
	.quad	0x3fe87cb30a6d6c72              # double 0.76522209202393143
	.quad	0x3fec1d2437acdb70              # double 0.87855730890338002
	.quad	0x3fd4e3a800351d70              # double 0.32639503498327027
	.quad	0x3fefed62df24fd28              # double 0.99772780974300179
	.quad	0x3fe9aef0444319fb              # double 0.80260480244106647
	.quad	0x3fdcbae7ac375b30              # double 0.44890777414313998
	.quad	0x3fa74ae092962640              # double 0.045493142980444379
	.quad	0x3fe23d2eebd6d6bc              # double 0.56996866285654546
	.quad	0x3fd8246b2ebe0996              # double 0.3772228199451545
	.quad	0x3fc069c8c2aca508              # double 0.12822827821336369
	.quad	0x3fe643f23ddf467d              # double 0.6957942207756812
	.quad	0x3feac6fb7fbe9568              # double 0.83678984594432126
	.quad	0x3fdba0a3c0f89cae              # double 0.43167966694677318
	.quad	0x3fdf602a3e9f1c82              # double 0.49024444690116564
	.quad	0x3fa6ed419e8f7a10              # double 0.044778872113727997
	.quad	0x3fe0477d2d520e60              # double 0.50872668124834419
	.quad	0x3fcd8d1aa7024320              # double 0.23086865572670323
	.quad	0x3fb196e996797ff0              # double 0.068708991276707598
	.quad	0x3fc83ba3940703e8              # double 0.18932003715420298
	.quad	0x3fd8bbadbd7c596a              # double 0.38645499710528119
	.quad	0x3fe95caecc71edd9              # double 0.79256381922408103
	.quad	0x3fec3384037ae57e              # double 0.88128853492450765
	.quad	0x3fd08f06ef37af90              # double 0.25872968064390367
	.quad	0x3fe574c624f6dbc9              # double 0.67050463885868183
	.quad	0x3feb4271acf87dc4              # double 0.85186084540685458
	.quad	0x3fe1b41a0df7a7df              # double 0.55323508003243294
	.quad	0x3fe0b2bb8687a0c9              # double 0.52181793475485805
	.quad	0x3fb6eb2b1c91b310              # double 0.089525885081183753
	.quad	0x3fef7f22e7d481d1              # double 0.98426957396810099
	.quad	0x3fd79f086f87566c              # double 0.36908160106154386
	.quad	0x3fdfeface38c266c              # double 0.49900362225944295
	.quad	0x3fcdbf473f17713c              # double 0.23239985066073554
	.quad	0x3faa6b69975b0850              # double 0.051600742078804829
	.quad	0x3feec70588ca37cb              # double 0.96179463116436048
	.quad	0x3fc3edcccd2ea7e0              # double 0.15569458025612359
	.quad	0x3fd3e670e5369274              # double 0.31094000228976104
	.quad	0x3fdcd2b293a919c4              # double 0.45035995883918312
	.quad	0x3fe9f4d68ca693c6              # double 0.8111374613841853
	.quad	0x3fec22786316694e              # double 0.87920779564891816
	.quad	0x3fd4a6b30715008a              # double 0.32267451945882242
	.quad	0x3faa7d4ff4da52a0              # double 0.051737307204495098
	.quad	0x3fe6cc552ad9570b              # double 0.71244295472090025
	.quad	0x3fd2c22ff24afb34              # double 0.29310225163856107
	.quad	0x3fd3448a5d1deda6              # double 0.30105837911079403
	.quad	0x3fd56f086f7fd346              # double 0.33490191353421428
	.quad	0x3fe618abd8f33909              # double 0.69051163075508371
	.quad	0x3feef9a997c18d68              # double 0.96797637595993268
	.quad	0x3fbc6e253e427160              # double 0.11105568666466104
	.quad	0x3fcd42d069a27b38              # double 0.22860150487846354
	.quad	0x3fd633b98b9f3b0c              # double 0.3469070304389994
	.quad	0x3fe98372bbc23451              # double 0.79729592010120076
	.quad	0x3fa09097d7bbe540              # double 0.032353158077919719
	.quad	0x3fced7570754255c              # double 0.24094665391775549
	.quad	0x3fd4d02f061563ce              # double 0.32520652383896909
	.quad	0x3fcd5bc8a74e0c50              # double 0.2293635193746888
	.quad	0x3fc715400c2323b0              # double 0.1803360041870099
	.quad	0x3fdd26cff14b20be              # double 0.45549391330542821
	.quad	0x3fe5946c5ebf0432              # double 0.67436808114155711
	.quad	0x3fd4fae079e5f5fe              # double 0.32781230835084318
	.quad	0x3fdde60687897422              # double 0.46716464267757563
	.quad	0x3fd6411594478e86              # double 0.34772243004247405
	.quad	0x3fcf0613f1dc6940              # double 0.24237298307054722
	.quad	0x3fcab6f2c83b552c              # double 0.20870814110700431
	.quad	0x3facf5e79e849be0              # double 0.056563604450552196
	.quad	0x3f827a5dc8ab1080              # double 0.009022457777412507
	.quad	0x3fa758157e32da80              # double 0.045593902258976193
	.quad	0x3fc0e6dcc5dd49e8              # double 0.13204536115024657
	.quad	0x3fcb6dca5fef97c8              # double 0.21428804096575349
	.quad	0x3fc98a416e6f32b4              # double 0.1995317258100805
	.quad	0x3fee1cc07ab493d5              # double 0.94100975004095722
	.quad	0x3fb7ff532ffe05d0              # double 0.093739699570526413
	.quad	0x3fdd562e6213b1f2              # double 0.45838508203340134
	.quad	0x3fd146c19adeb128              # double 0.26994361995709193
	.quad	0x3fcf4f483fc4e09c              # double 0.24460700143550163
	.quad	0x3fed93b51542c2a8              # double 0.92428068306442857
	.quad	0x3fda443ffb169dca              # double 0.41041564483972748
	.quad	0x3fc47bb5d9d96b00              # double 0.16002534043476402
	.quad	0x3fa17e76d810cdf0              # double 0.034167970538330539
	.quad	0x3fc9381bae0492c0              # double 0.19702478405920054
	.quad	0x3fb4b3f87dec4e48              # double 0.080871134512841114
	.quad	0x3fb8937e91c375d0              # double 0.096000586115642549
	.quad	0x3fe64f914545d2f2              # double 0.69721282510599125
	.quad	0x3f939c8a1148f560              # double 0.019151837639801328
	.quad	0x3fe4e427afdbf0bb              # double 0.65285095546234773
	.quad	0x3feb85cd50377c4a              # double 0.86008325259525376
	.quad	0x3fca934ac83983c4              # double 0.20761999870867787
	.quad	0x3fe285e74380615e              # double 0.57884562667735984
	.quad	0x3fc8051660535b4c              # double 0.18765525535010352
	.quad	0x3fefad337097763d              # double 0.9898926924758552
	.quad	0x3fc8383521f040b4              # double 0.18921531827118587
	.quad	0x3f9330dec5164b00              # double 0.018741112498513068
	.quad	0x3fd9882a4a97249c              # double 0.39893586429804784
	.quad	0x3fed5a2fb4f79431              # double 0.91725907654893579
	.quad	0x3fe26994bcb380ea              # double 0.57538830619526249
	.quad	0x3fd96628ccf3850e              # double 0.39686031355638896
	.quad	0x3fc345d0cd46486c              # double 0.15056810401125931
	.quad	0x3fe2a72320d7a713              # double 0.58290249266176131
	.quad	0x3fdcaa55fb9e5bf4              # double 0.44789647647979725
	.quad	0x3fe347041cdbf6ea              # double 0.60241895329064943
	.quad	0x3fdb26ea2eacbd90              # double 0.4242501693542744
	.quad	0x3fd44ccd64c387c2              # double 0.31718764152730838
	.quad	0x3fc52c1d41ebdcc4              # double 0.16540876120391179
	.quad	0x3fd013f3574e9e2e              # double 0.25121768499454589
	.quad	0x3fd7b94bc1644bb0              # double 0.37068456540981298
	.quad	0x3fe4d4af290eb017              # double 0.65096242922800485
	.quad	0x3fdfc3dfaab791b0              # double 0.4963301818045478
	.quad	0x3fbef1e7b3db8930              # double 0.12087867871335756
	.quad	0x3fef2f527e2d4f85              # double 0.97452664035743963
	.quad	0x3fb49a2e70c255b8              # double 0.080477621583063264
	.quad	0x3fd6c4916a5b872c              # double 0.35574756037213962
	.quad	0x3fad5ef421fd7810              # double 0.057365063809570072
	.quad	0x3fe2099a8e0d9a37              # double 0.56367233032944497
	.quad	0x3fb1d9cd552ee730              # double 0.069729646012004265
	.quad	0x3fe5986e1b7cd329              # double 0.67485719078704165
	.quad	0x3fc02e5788bcf4f4              # double 0.1264142434755865
	.quad	0x3fd686a31021b536              # double 0.35196758818968321
	.quad	0x3fca7ae7773a974c              # double 0.20687573739740583
	.quad	0x3fed1121b5c80c27              # double 0.90834126953302963
	.quad	0x3fe0606d6feb03ea              # double 0.51177093371381699
	.quad	0x3fd3619116f7c24a              # double 0.30283000224065815
	.quad	0x3fd6a04ab05225f4              # double 0.35353343218648026
	.quad	0x3fe5db7e76f8ed0b              # double 0.68304370152273586
	.quad	0x3fd0a182ce1f8e0c              # double 0.25985784653877952
	.quad	0x3fd428d55085e232              # double 0.31499226440022021
	.quad	0x3fcf15966b5c2970              # double 0.24284630052745682
	.quad	0x3fdbd0113e93a428              # double 0.43457442389496004
	.quad	0x3fec7c7e290d6e15              # double 0.89019687669810088
	.quad	0x3fe074aaaeb365b6              # double 0.51424154397243771
	.quad	0x3fe2b4990b358d56              # double 0.58454563321394448
	.quad	0x3fe3c197cd955704              # double 0.61738195565223508
	.quad	0x3fd605ae964d92ea              # double 0.34409680059461201
	.quad	0x3fe8de300b1b5789              # double 0.77712251824662915
	.quad	0x3fe0f709d6b0d5f5              # double 0.53015605861463533
	.quad	0x3fe13d1a3fa2f0b2              # double 0.53870880536080379
	.quad	0x3fc0075365270ba8              # double 0.12522356452072114
	.quad	0x3fe8352af7662e23              # double 0.75649021453995535
	.quad	0x3fd9105529d6f4ce              # double 0.39162186704545554
	.quad	0x3fc459deabdd11b8              # double 0.15899260894560796
	.quad	0x3fc29324fb17bd7c              # double 0.14511549244296507
	.quad	0x3fc118688af0ceb4              # double 0.1335573843403971
	.quad	0x3fd19509b0cacaee              # double 0.27472154869899057
	.quad	0x3fece8622293860a              # double 0.90336710694481437
	.quad	0x3fe721245c5d706a              # double 0.7227956584934081
	.quad	0x3fdfb6beb4b99474              # double 0.49552886628072845
	.quad	0x3fd567a74ca38fde              # double 0.33445150837201065
	.quad	0x3fe41de5a5ba7ad0              # double 0.6286495434649968
	.quad	0x3fb31eb80a3e44e8              # double 0.074687483311453584
	.quad	0x3fd27db2ab836230              # double 0.28892199277246089
	.quad	0x3fe0d73a3c8d86de              # double 0.52627288653112791
	.quad	0x3fd6adf8714b0944              # double 0.3543683153512982
	.quad	0x3fe4fcded865752a              # double 0.65586797966867505
	.quad	0x3fedc159c2bd9018              # double 0.92985237155199041
	.quad	0x3fbf3a5772c035a0              # double 0.12198397208722733
	.quad	0x3fc5684ecc95f57c              # double 0.16724572171726126
	.quad	0x3fe0167e14686d6d              # double 0.50274566636964624
	.quad	0x3fc5c498eb351d40              # double 0.17006217465152851
	.quad	0x3fe9f71539a717c6              # double 0.81141148815435638
	.quad	0x3fd83fb56c1ae92c              # double 0.37888846928730646
	.quad	0x3fd002571e34d030              # double 0.25014284086069249
	.quad	0x3fde80430f2b9e3c              # double 0.47657848817332016
	.quad	0x3feabf6fb6246183              # double 0.83586869787818363
	.quad	0x3fe4dbd3c9167a78              # double 0.65183438563310769
	.quad	0x3fdbcd410dcd5f0a              # double 0.43440271709322131
	.quad	0x3fc788328fc3cf8c              # double 0.18384391803521927
	.quad	0x3fc3964da2448740              # double 0.15302439139582624
	.quad	0x3fdac4c8c63508b8              # double 0.41826075893562686
	.quad	0x3fb42300b0d2f410              # double 0.078659098787241754
	.quad	0x3fa1df7947475e20              # double 0.034908094359419772
	.quad	0x3fe5c92ca0acd2bb              # double 0.68080741292813884
	.quad	0x3fec6016c69a0303              # double 0.88672961034180309
	.quad	0x3fea60e765938e0f              # double 0.82432908858430831
	.quad	0x3fdbfcf5c759d10a              # double 0.43731445758682297
	.quad	0x3fcdd5f0cc208924              # double 0.2330914494242019
	.quad	0x3fdb80dd888f851e              # double 0.42974031768797427
	.quad	0x3fe40b196db98b33              # double 0.62635489874478478
	.quad	0x3fda60d02decf70e              # double 0.41215900883604284
	.quad	0x3fadf4569a8c29f0              # double 0.058504778257049028
	.quad	0x3feecb68de27b3a0              # double 0.96233027829804385
	.quad	0x3fe4b15f89c98851              # double 0.64665200149125657
	.quad	0x3fba1f04ac957048              # double 0.10203580106230092
	.quad	0x3fc32f99fbbe8d84              # double 0.1498901824207729
	.quad	0x3fdfa1ced3ccdf9a              # double 0.49425097163793341
	.quad	0x3fc4e3bc68cbdaa0              # double 0.1631999503803927
	.quad	0x3fe5f14c691009c8              # double 0.68570538063095743
	.quad	0x3fe9167793a759a1              # double 0.78399256552329544
	.quad	0x3fc8fd7b910d5604              # double 0.19523567755338445
	.quad	0x3feab532ae6ae817              # double 0.83461889329851402
	.quad	0x3fd01a76567dd73e              # double 0.25161512800638153
	.quad	0x3fe3b99f06a1383d              # double 0.61640883726955276
	.quad	0x3fb2413aa27680a8              # double 0.071307816184801198
	.quad	0x3feae57961285ebb              # double 0.84051197982895276
	.quad	0x3fe8b213a700ce06              # double 0.77173788659860132
	.quad	0x3fed932e797290f8              # double 0.92421649666041983
	.quad	0x3fe85e57c78fd234              # double 0.76151646592058463
	.quad	0x3fd8f342e214a906              # double 0.38984748914903411
	.quad	0x3fea17ba6782a5cc              # double 0.81539650170196287
	.quad	0x3fc4d91af39fcca0              # double 0.1628755273410194
	.quad	0x3fc454a854466fb4              # double 0.15883354296681562
	.quad	0x3fe319407d6ce77e              # double 0.59683250901365148
	.quad	0x3fe6f90a2473392a              # double 0.71790034407766723
	.quad	0x3fafe1af052d3660              # double 0.062268704778585926
	.quad	0x3feb7f6e1a7beab1              # double 0.85930543110528934
	.quad	0x3fd7b4f9fcd81770              # double 0.37042092983062158
	.quad	0x3f7c0ef6e9dcf280              # double 0.0068502087649987553
	.quad	0x3fe830a8e961406d              # double 0.75593991834649688
	.quad	0x3fea7353aee810d3              # double 0.82657798921038717
	.quad	0x3fc24f66f20fb720              # double 0.14304816073802673
	.quad	0x3fe6f83840cdad0a              # double 0.7178002610866383
	.quad	0x3fdfcf0d33d9f72a              # double 0.49701242507568344
	.quad	0x3fd28a8055f3786c              # double 0.28970344918878399
	.quad	0x3fea44a7da68f0dc              # double 0.82088081987560768
	.quad	0x3fe7416423b40eba              # double 0.72673232053099146
	.quad	0x3fe93ff5c452598d              # double 0.78905762046888273
	.quad	0x3fe3778a75debe0c              # double 0.60834239026547854
	.quad	0x3fef17ac6ac58854              # double 0.97163983205633508
	.quad	0x3feb6bbc307d554c              # double 0.85690125914212833
	.quad	0x3fc96589766a3c10              # double 0.19841116220456501
	.quad	0x3fb7348c8ad277e0              # double 0.090645584003567148
	.quad	0x3fdea12db3fc2954              # double 0.47858755661640839
	.quad	0x3fe848e30bff35b4              # double 0.75889732688090427
	.quad	0x3fc597ddd71373e8              # double 0.16869709970242686
	.quad	0x3fec250a3204df11              # double 0.87952146310178325
	.quad	0x3fd15586116dacc0              # double 0.27084495260232799
	.quad	0x3fd292a6a485b440              # double 0.29020086351994578
	.quad	0x3fe307e69d392a1a              # double 0.59471445758510133
	.quad	0x3fbcb33d63b6d0d8              # double 0.11210998234202252
	.quad	0x3fe0552e905961b7              # double 0.51039817994301628
	.quad	0x3fdd327d59781f10              # double 0.45620664345959572
	.quad	0x3fd50b0715648364              # double 0.32879807557224283
	.quad	0x3fdf31b9bc171498              # double 0.48741000526599398
	.quad	0x3fe77e40e62c1f7c              # double 0.7341618056825463
	.quad	0x3fed62bdf4e58dd4              # double 0.91830346900354209
	.quad	0x3f8627f1dce34440              # double 0.010818376115283468
	.quad	0x3fa5e7d3bc4a7670              # double 0.042784325346684748
	.quad	0x3fec5fa5ae77e076              # double 0.886675682791078
	.quad	0x3fe2bcfdc2fede16              # double 0.58557022175858964
	.quad	0x3febcc285b72298e              # double 0.86867158756767693
	.quad	0x3fe97cb265794a8c              # double 0.79647178477382984
	.quad	0x3fd5209733e04e4a              # double 0.33011417451891545
	.quad	0x3fdd824eb880b282              # double 0.46107833879322169
	.quad	0x3feefe9a434ad826              # double 0.96857941763915245
	.quad	0x3fc7a714cb8c62a4              # double 0.18478641451726674
	.quad	0x3fe302054e80e821              # double 0.59399667103503273
	.quad	0x3fc4530d8b973dac              # double 0.1587845737071637
	.quad	0x3fef00a80dd0a3f2              # double 0.96883013437502385
	.quad	0x3fcd7860d1eb9bc8              # double 0.23023615121857532
	.quad	0x3fedf474f7d4c1f6              # double 0.93609093098171914
	.quad	0x3febb4d08d8dbcf4              # double 0.86582210204315268
	.quad	0x3fe23e084bba3d45              # double 0.57007231512572132
	.quad	0x3fecc2112b09f93d              # double 0.89868982702299827
	.quad	0x3fec837c09fff8e8              # double 0.89105035737136706
	.quad	0x3faf38cd8d39a7b0              # double 0.060980247010618327
	.quad	0x3fd0c1f52b683854              # double 0.26183823813415086
	.size	.L__constant_100x100xf64, 80000

	.section	".note.GNU-stack","",@progbits
