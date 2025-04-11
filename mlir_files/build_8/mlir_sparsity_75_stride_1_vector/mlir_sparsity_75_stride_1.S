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
	.quad	2500                            # 0x9c4
	.quad	1                               # 0x1
	.quad	100                             # 0x64
.LCPI2_1:
	.quad	0                               # 0x0
	.quad	2500                            # 0x9c4
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
	lui	a7, %hi(.L__constant_2500xindex)
	addi	a7, a7, %lo(.L__constant_2500xindex)
	lui	t0, %hi(.L__constant_2500xf64)
	addi	t0, t0, %lo(.L__constant_2500xf64)
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
	.quad	25                              # 0x19
	.quad	51                              # 0x33
	.quad	84                              # 0x54
	.quad	109                             # 0x6d
	.quad	131                             # 0x83
	.quad	149                             # 0x95
	.quad	172                             # 0xac
	.quad	205                             # 0xcd
	.quad	230                             # 0xe6
	.quad	246                             # 0xf6
	.quad	265                             # 0x109
	.quad	291                             # 0x123
	.quad	319                             # 0x13f
	.quad	342                             # 0x156
	.quad	369                             # 0x171
	.quad	392                             # 0x188
	.quad	423                             # 0x1a7
	.quad	445                             # 0x1bd
	.quad	466                             # 0x1d2
	.quad	486                             # 0x1e6
	.quad	514                             # 0x202
	.quad	533                             # 0x215
	.quad	560                             # 0x230
	.quad	586                             # 0x24a
	.quad	615                             # 0x267
	.quad	650                             # 0x28a
	.quad	677                             # 0x2a5
	.quad	704                             # 0x2c0
	.quad	725                             # 0x2d5
	.quad	743                             # 0x2e7
	.quad	764                             # 0x2fc
	.quad	788                             # 0x314
	.quad	806                             # 0x326
	.quad	830                             # 0x33e
	.quad	860                             # 0x35c
	.quad	886                             # 0x376
	.quad	909                             # 0x38d
	.quad	934                             # 0x3a6
	.quad	959                             # 0x3bf
	.quad	978                             # 0x3d2
	.quad	1007                            # 0x3ef
	.quad	1034                            # 0x40a
	.quad	1059                            # 0x423
	.quad	1087                            # 0x43f
	.quad	1108                            # 0x454
	.quad	1135                            # 0x46f
	.quad	1163                            # 0x48b
	.quad	1190                            # 0x4a6
	.quad	1209                            # 0x4b9
	.quad	1236                            # 0x4d4
	.quad	1258                            # 0x4ea
	.quad	1286                            # 0x506
	.quad	1311                            # 0x51f
	.quad	1338                            # 0x53a
	.quad	1371                            # 0x55b
	.quad	1391                            # 0x56f
	.quad	1415                            # 0x587
	.quad	1435                            # 0x59b
	.quad	1462                            # 0x5b6
	.quad	1487                            # 0x5cf
	.quad	1504                            # 0x5e0
	.quad	1529                            # 0x5f9
	.quad	1559                            # 0x617
	.quad	1586                            # 0x632
	.quad	1617                            # 0x651
	.quad	1641                            # 0x669
	.quad	1669                            # 0x685
	.quad	1688                            # 0x698
	.quad	1716                            # 0x6b4
	.quad	1747                            # 0x6d3
	.quad	1771                            # 0x6eb
	.quad	1790                            # 0x6fe
	.quad	1811                            # 0x713
	.quad	1840                            # 0x730
	.quad	1860                            # 0x744
	.quad	1886                            # 0x75e
	.quad	1906                            # 0x772
	.quad	1925                            # 0x785
	.quad	1951                            # 0x79f
	.quad	1981                            # 0x7bd
	.quad	2008                            # 0x7d8
	.quad	2030                            # 0x7ee
	.quad	2050                            # 0x802
	.quad	2082                            # 0x822
	.quad	2103                            # 0x837
	.quad	2132                            # 0x854
	.quad	2156                            # 0x86c
	.quad	2179                            # 0x883
	.quad	2205                            # 0x89d
	.quad	2234                            # 0x8ba
	.quad	2260                            # 0x8d4
	.quad	2289                            # 0x8f1
	.quad	2311                            # 0x907
	.quad	2335                            # 0x91f
	.quad	2360                            # 0x938
	.quad	2389                            # 0x955
	.quad	2411                            # 0x96b
	.quad	2436                            # 0x984
	.quad	2470                            # 0x9a6
	.quad	2500                            # 0x9c4
	.size	.L__constant_101xindex, 808

	.type	.L__constant_2500xindex,@object # @__constant_2500xindex
	.p2align	6, 0x0
.L__constant_2500xindex:
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	69                              # 0x45
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	59                              # 0x3b
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	64                              # 0x40
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	19                              # 0x13
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	54                              # 0x36
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	98                              # 0x62
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	69                              # 0x45
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	35                              # 0x23
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	9                               # 0x9
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	5                               # 0x5
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	91                              # 0x5b
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	9                               # 0x9
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	37                              # 0x25
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	4                               # 0x4
	.quad	13                              # 0xd
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	36                              # 0x24
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	32                              # 0x20
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	14                              # 0xe
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	68                              # 0x44
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	41                              # 0x29
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	64                              # 0x40
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	21                              # 0x15
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	65                              # 0x41
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	23                              # 0x17
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	4                               # 0x4
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	5                               # 0x5
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	50                              # 0x32
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	89                              # 0x59
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	47                              # 0x2f
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	54                              # 0x36
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	48                              # 0x30
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	26                              # 0x1a
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	93                              # 0x5d
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	23                              # 0x17
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.size	.L__constant_2500xindex, 20000

	.type	.L__constant_2500xf64,@object   # @__constant_2500xf64
	.p2align	6, 0x0
.L__constant_2500xf64:
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.size	.L__constant_2500xf64, 20000

	.type	.L__constant_100x100xf64,@object # @__constant_100x100xf64
	.p2align	6, 0x0
.L__constant_100x100xf64:
	.quad	0x3fe9b831d315db92              # double 0.80373469569791411
	.quad	0x3fc8fea10b5551f0              # double 0.19527066281683814
	.quad	0x3fe969232e12015e              # double 0.79408415792572007
	.quad	0x3fa6da528648d970              # double 0.044634417431029472
	.quad	0x3fd8a2096c4f2814              # double 0.38488994195051984
	.quad	0x3fc61f414300b748              # double 0.17282882472630434
	.quad	0x3fdb75243c5b1db4              # double 0.42902475256093031
	.quad	0x3fc6cc0eba128460              # double 0.17810234151423554
	.quad	0x3fe3a3f650a75b27              # double 0.61376491310770553
	.quad	0x3fd4c715b2e300ce              # double 0.32465116948516204
	.quad	0x3fe8c9330eb55ba7              # double 0.77456047890415369
	.quad	0x3fe37058691a05b3              # double 0.60746403243699942
	.quad	0x3fcfe8eabb3b2b2c              # double 0.24929556028504274
	.quad	0x3fde329d4a03d5aa              # double 0.47183925846123975
	.quad	0x3fc455578ada4348              # double 0.15885443000709132
	.quad	0x3fd91ad145cca858              # double 0.39226180855132986
	.quad	0x3fe32a62050f7987              # double 0.59892369259232303
	.quad	0x3fdc15b035d24f54              # double 0.4388237500763712
	.quad	0x3fd992169fbcb99c              # double 0.39954152678810728
	.quad	0x3fd531dc20ae574c              # double 0.33116820518022361
	.quad	0x3fed491c6ed7a646              # double 0.91517469071295277
	.quad	0x3fe786e6c85076f2              # double 0.7352174675358738
	.quad	0x3fd44b742464f49a              # double 0.31710532716881235
	.quad	0x3fcc0688a53e4030              # double 0.21894939487947473
	.quad	0x3fddf97c44ba2f9e              # double 0.46835238181733441
	.quad	0x3fec4fd192bac4e3              # double 0.88474348695868021
	.quad	0x3fe07afa7d037af3              # double 0.51501202027051673
	.quad	0x3fb4c4bb8e28e250              # double 0.081126901823958208
	.quad	0x3fc7343e998352ac              # double 0.18128187652350414
	.quad	0x3fb960fde6b5fc78              # double 0.099136227441691704
	.quad	0x3fe24697b3ff4094              # double 0.571117259556575
	.quad	0x3fd8e72f20bfc972              # double 0.38911035726700682
	.quad	0x3fda009c223c0d2e              # double 0.4062872251817734
	.quad	0x3f76578e77fd4a00              # double 0.0054545941528254538
	.quad	0x3fda8a47192daf36              # double 0.41468980273087952
	.quad	0x3fec38c348ab70f0              # double 0.88192905610369898
	.quad	0x3fc8b0a980ee66f4              # double 0.19289130015822986
	.quad	0x3fe9a616f08ae45a              # double 0.80152461033788858
	.quad	0x3fc9721bc52974b8              # double 0.19879481436774937
	.quad	0x3fee20afaf537e76              # double 0.94149002307308538
	.quad	0x3f7e9f2a33d17d80              # double 0.0074760101825569469
	.quad	0x3fef7b9ecd12d6da              # double 0.98384037068782537
	.quad	0x3fe46d43a9f599fd              # double 0.63833792872611606
	.quad	0x3fef18842de2adf1              # double 0.97174271547322466
	.quad	0x3fde4437e179da98              # double 0.47291371363773171
	.quad	0x3fb96760410fad98              # double 0.099233642467586924
	.quad	0x3fef5a42f51879fe              # double 0.97976825590359318
	.quad	0x3fc0445a9350f3d4              # double 0.12708599274802046
	.quad	0x3fd8d9e8f36cb0e0              # double 0.38830016872340245
	.quad	0x3fc70a13657088f4              # double 0.17999498799424141
	.quad	0x3fe7b0417346c6e5              # double 0.74026558413444532
	.quad	0x3fea05b13b11ca69              # double 0.81319486176500988
	.quad	0x3fc44450de462a80              # double 0.15833483556010108
	.quad	0x3fe51e4af4116a4c              # double 0.65994784993683586
	.quad	0x3feda56fb749bf50              # double 0.92644487188770519
	.quad	0x3fd4f14a081d00d8              # double 0.32722712318719749
	.quad	0x3fd574c082078efc              # double 0.33525097559161998
	.quad	0x3fc5f4121c4e74f8              # double 0.17151094801094025
	.quad	0x3fbbf03fc5e47718              # double 0.10913466054304555
	.quad	0x3fdcef9ed92aa04e              # double 0.45212527473131991
	.quad	0x3fba994ea0d80da8              # double 0.10390178133825734
	.quad	0x3fe0de52171b0f10              # double 0.52713875305969005
	.quad	0x3fdeab0bb08bc672              # double 0.47918979874439238
	.quad	0x3fd9814917c15500              # double 0.39851596183628146
	.quad	0x3feffd83d50a4258              # double 0.99969665154828657
	.quad	0x3fcc2e59b3df4300              # double 0.22016450198000115
	.quad	0x3fcff0914e364a44              # double 0.24952904051731839
	.quad	0x3fe5ef1e78f4a2e2              # double 0.68543933509962707
	.quad	0x3fe8363fbe119321              # double 0.75662219164641809
	.quad	0x3feea6143ed48aa9              # double 0.95777332564860729
	.quad	0x3fe977f1f1b94a2d              # double 0.79589173518826828
	.quad	0x3fe2e72344b803f8              # double 0.59071505948679626
	.quad	0x3fe524cb39f8ba80              # double 0.66074143717362688
	.quad	0x3fda478078a33942              # double 0.41061412602438818
	.quad	0x3fe8acd137b54b61              # double 0.77109585648063839
	.quad	0x3fe892921a54634c              # double 0.76789193289287416
	.quad	0x3fe2675e0ab77eda              # double 0.57511808484192817
	.quad	0x3fb70cc5bbab4270              # double 0.090038641278860742
	.quad	0x3fec6d7cf4c682f0              # double 0.88836524779989468
	.quad	0x3fe4b41998900c39              # double 0.64698486134910305
	.quad	0x3feef985aa0253c0              # double 0.96795924382114861
	.quad	0x3fe25620e1d4ef82              # double 0.57301372630853131
	.quad	0x3fd75b6198894f1e              # double 0.36495246788148161
	.quad	0x3fe646fc0977595f              # double 0.69616510247105257
	.quad	0x3fd6380782f5079a              # double 0.34716975964340124
	.quad	0x3fd339cb1620a1b8              # double 0.30040242348561774
	.quad	0x3fe6807dc95cfb6a              # double 0.7031849797129841
	.quad	0x3fefbbaef4d6c4d7              # double 0.99166057415109321
	.quad	0x3fbe33604be07990              # double 0.1179714379545429
	.quad	0x3fedae7de9d466d6              # double 0.92755027456152095
	.quad	0x3fe5afb3de0345ad              # double 0.67769807206984967
	.quad	0x3fdacae2dd8691c2              # double 0.41863319047322645
	.quad	0x3fecceb6cab481d5              # double 0.90023364630547553
	.quad	0x3fb609865236a7e0              # double 0.086082835265784308
	.quad	0x3fdb9f73a40d0cc4              # double 0.43160716076472405
	.quad	0x3fe3337427060dae              # double 0.60003097173505693
	.quad	0x3fda22528458b3f8              # double 0.40834486889326582
	.quad	0x3fe00a01affeecd1              # double 0.50122150777988328
	.quad	0x3fe54bcce25a75b2              # double 0.66550296983375845
	.quad	0x3fd46bf925eefd80              # double 0.31909016327332296
	.quad	0x3fe1b59dcb495a81              # double 0.55341996864702037
	.quad	0x3fe50cf289519f89              # double 0.65783049411855743
	.quad	0x3fe4ecdc929f6382              # double 0.65391377103070192
	.quad	0x3fd7bf04a6cbbe82              # double 0.37103382385883077
	.quad	0x3fd587827a482ade              # double 0.33639585439293096
	.quad	0x3fd9ee1e8ed6d984              # double 0.40515865277429719
	.quad	0x3fd503470bf26f56              # double 0.32832504431438758
	.quad	0x3fb8f1c8c1a9b0b8              # double 0.097439334183664239
	.quad	0x3fd0d8f6f25e806a              # double 0.26324247044431692
	.quad	0x3fd43be08448be9c              # double 0.3161546031796918
	.quad	0x3fececf145bf9dcb              # double 0.9039236414218349
	.quad	0x3fab1176b0f30f60              # double 0.052867611980700557
	.quad	0x3fdba210de4db792              # double 0.43176671704611025
	.quad	0x3fbacf375d9d4728              # double 0.10472436938769347
	.quad	0x3fed82233823d874              # double 0.92213593449447595
	.quad	0x3fdc69ffc6fb3f5c              # double 0.44396967345982374
	.quad	0x3fe8e60e2ea12c49              # double 0.77808293444957954
	.quad	0x3fdaf6884d4916ba              # double 0.42129714534199147
	.quad	0x3fc2028080d14124              # double 0.14070135393058891
	.quad	0x3fd0b3e307dfe18a              # double 0.26097942131993845
	.quad	0x3fde6215d0e678d2              # double 0.47473664665620874
	.quad	0x3fed3c3d637cd604              # double 0.91360349112682159
	.quad	0x3f51ecdeebd02e00              # double 0.0010940720524129643
	.quad	0x3fcec695a2da2f74              # double 0.24043531848689847
	.quad	0x3fe8d6a4cac6499a              # double 0.77620162586599695
	.quad	0x3feae3a1a221e120              # double 0.84028703371498991
	.quad	0x3fd42de6c39878f0              # double 0.31530160046703681
	.quad	0x3fd93dcab3de5e32              # double 0.39439647259993926
	.quad	0x3fe7d3bafba7aeb0              # double 0.74459599639290808
	.quad	0x3fb13506b658e9b0              # double 0.067215365904224056
	.quad	0x3feb085d778cd124              # double 0.84477113103506384
	.quad	0x3f8bbd5d5aadd1c0              # double 0.013544778184702788
	.quad	0x3fe42c8474f59e9c              # double 0.63043425410883769
	.quad	0x3fd97d47a6ec1932              # double 0.39827147770883464
	.quad	0x3fe493dbc236e801              # double 0.64304912502780109
	.quad	0x3feee4eca7349b7e              # double 0.96544487626384501
	.quad	0x3feb43554864b2aa              # double 0.85196937693907171
	.quad	0x3fe96580aa8743b9              # double 0.79364045435260444
	.quad	0x3fe3ef1397075e91              # double 0.62293414590654284
	.quad	0x3fb103770cdefbf8              # double 0.066459122316686492
	.quad	0x3fc4fdd0d06d2f3c              # double 0.16399583985400479
	.quad	0x3fc776bdbe08ecbc              # double 0.1833111932663537
	.quad	0x3fe93938d306887f              # double 0.78823510375902106
	.quad	0x3fb8ede78d120688              # double 0.097380134526270479
	.quad	0x3fbd6678c5b82ee8              # double 0.11484484507689852
	.quad	0x3febc205d459f839              # double 0.86743442034617779
	.quad	0x3fdadc1d664a4c4e              # double 0.41968474377899134
	.quad	0x3feca27e7f7f82d6              # double 0.89483570959063274
	.quad	0x3fc77b2b31aea858              # double 0.18344631124392907
	.quad	0x3fe92d9d4f24664b              # double 0.7868181749101465
	.quad	0x3f7d3bbc64bf7a80              # double 0.0071370467303198959
	.quad	0x3fdc046dc73a390c              # double 0.43777031379512787
	.quad	0x3fdc14f40e60973c              # double 0.43877889064821196
	.quad	0x3fda4d9278cf37ea              # double 0.41098462865636398
	.quad	0x3fd119f7aafff3dc              # double 0.26720992755127582
	.quad	0x3fe15c3216b52b24              # double 0.5425043529042779
	.quad	0x3fd2adfb67b2281a              # double 0.29186902166895978
	.quad	0x3fe1bbc48b57ac36              # double 0.5541708680660864
	.quad	0x3fef2f6f7562209b              # double 0.97454045225551355
	.quad	0x3fe4c54a22829952              # double 0.64908320179237422
	.quad	0x3fdd3c6c6c57d716              # double 0.45681295948394174
	.quad	0x3fc4381dd271201c              # double 0.15796253943904126
	.quad	0x3fe47250d9a472b0              # double 0.6389545679881703
	.quad	0x3fb3e2ab778783b0              # double 0.077677456552477819
	.quad	0x3fc18025fb217990              # double 0.1367232776855869
	.quad	0x3feba737459a0904              # double 0.86416209787447018
	.quad	0x3fc19ffade0730a0              # double 0.1376947006341469
	.quad	0x3fedfc82cd5f84a6              # double 0.93707409011780807
	.quad	0x3fef6b38ae1afa41              # double 0.98183855061490288
	.quad	0x3fd2fb3923b1d330              # double 0.2965834473209723
	.quad	0x3fc4336c67422ec0              # double 0.15781931917114456
	.quad	0x3fe46dd9b47fccd4              # double 0.63840947393182512
	.quad	0x3fe1ab923a7b2ed4              # double 0.55219375059229003
	.quad	0x3fee3fd4342152b8              # double 0.94529161626504443
	.quad	0x3fc03da814f903d4              # double 0.12688160919245084
	.quad	0x3fbea60fea00e528              # double 0.11972140753723137
	.quad	0x3fe120de7e6adebb              # double 0.53526234331999178
	.quad	0x3fec35b6fdd47dc2              # double 0.88155698372059299
	.quad	0x3fdb4c40e666ed0a              # double 0.42652914524269703
	.quad	0x3fe166cbf84289ea              # double 0.5437984322382452
	.quad	0x3fc679326e93a074              # double 0.17557363890887567
	.quad	0x3fe83e72b7f069bc              # double 0.75762306142433244
	.quad	0x3fe7b65aab8e2436              # double 0.74101003176577396
	.quad	0x3fe75a621fd1f389              # double 0.72978311743610036
	.quad	0x3fe9906b99e71e7d              # double 0.7988794332422483
	.quad	0x3fc35f00f698a2b4              # double 0.15133678475219414
	.quad	0x3f7eae444850b500              # double 0.0074904124531205429
	.quad	0x3fecbfcca0356f78              # double 0.8984130028797912
	.quad	0x3fd3ebe4543cd69e              # double 0.31127269960721005
	.quad	0x3fd185709d8b7194              # double 0.27376952538704669
	.quad	0x3fd3d501dabaa87a              # double 0.30987593040720862
	.quad	0x3fe0113eeb088a9c              # double 0.50210519700006584
	.quad	0x3fcddb8c912ba7a4              # double 0.23326260651020647
	.quad	0x3fdf83789c4c5e0e              # double 0.49239936126238681
	.quad	0x3fe71927c5d1d209              # double 0.72182072292940902
	.quad	0x3fe6887c8869075e              # double 0.70416094439154242
	.quad	0x3fdc0d76a542e206              # double 0.43832174433512738
	.quad	0x3f95f95bd296e7c0              # double 0.021459040382729944
	.quad	0x3fd16b2460925a10              # double 0.27216443472698959
	.quad	0x3fda9e2fc33d486c              # double 0.41590494219156571
	.quad	0x3fe4837e5957938f              # double 0.64105145883205406
	.quad	0x3fc2e84028d3d5cc              # double 0.14771272653130862
	.quad	0x3fed7c8e32676e72              # double 0.92145452351128498
	.quad	0x3fc37fe7d47a8270              # double 0.15234086871079766
	.quad	0x3fac81b0dcc1c4e0              # double 0.055676962802758245
	.quad	0x3fc1be883cb880e4              # double 0.13862708058241602
	.quad	0x3f85d0095be6d980              # double 0.010650704495543506
	.quad	0x3fc88c94506d2544              # double 0.19179014136379113
	.quad	0x3fd7e57301f4d76a              # double 0.3733794707398973
	.quad	0x3fe2d7ac3873433e              # double 0.58882723832548556
	.quad	0x3fc1681431071220              # double 0.13598873514105581
	.quad	0x3fc05cdcf20433dc              # double 0.12783395592887714
	.quad	0x3fd1f0a537db4582              # double 0.28031282858599849
	.quad	0x3fd029b31eb0a82a              # double 0.25254514691426044
	.quad	0x3fb27a498d92cc70              # double 0.072178456367326893
	.quad	0x3fd068805003bbaa              # double 0.25637824834751177
	.quad	0x3fef8ba4153d2ab1              # double 0.98579601429204022
	.quad	0x3fd39bb6888b8d14              # double 0.30637896856770053
	.quad	0x3fe158695c275c57              # double 0.54204242705135186
	.quad	0x3fdcfcaed6467410              # double 0.4529225437671025
	.quad	0x3fe4a9a6bb348a81              # double 0.64570938647769094
	.quad	0x3fe377a026468811              # double 0.60835273242651244
	.quad	0x3fe5df8784faeb9b              # double 0.68353630039870283
	.quad	0x3fe5055ae3a749e7              # double 0.65690369094437251
	.quad	0x3fbb4eae25b51210              # double 0.10666931553448245
	.quad	0x3fb6916c6b8cd988              # double 0.088156486756679198
	.quad	0x3fed06cb90690c17              # double 0.90707948880333589
	.quad	0x3fe22fff3e688eea              # double 0.5683590144076025
	.quad	0x3fee0c14bbf51710              # double 0.93897473059107206
	.quad	0x3fecbf8bbf93f8c0              # double 0.89838206689434941
	.quad	0x3fec12e21fce6426              # double 0.87730509006644719
	.quad	0x3fae94d640f57d40              # double 0.059729285649832153
	.quad	0x3fd762eaf7097526              # double 0.36541246533109228
	.quad	0x3fec4ee7c2e53049              # double 0.88463199677927051
	.quad	0x3fdb87d81a75dfe2              # double 0.43016626915004796
	.quad	0x3fe94da1d5227768              # double 0.79072658183916378
	.quad	0x3fd39bf381695832              # double 0.30639350545732491
	.quad	0x3fc385f96c2f9bac              # double 0.15252607138174079
	.quad	0x3fa068a93df66190              # double 0.032048500837109306
	.quad	0x3fc14ae33d43926c              # double 0.13509788981822923
	.quad	0x3fd7c243eb1f5758              # double 0.37123201333212341
	.quad	0x3fe5a8b5ffcde054              # double 0.67684459649809492
	.quad	0x3fe4362d3d351086              # double 0.63161336855456862
	.quad	0x3feb79b100df5d20              # double 0.85860490961468727
	.quad	0x3fedb3d3961be49f              # double 0.9282014781776019
	.quad	0x3fe8242a76cde155              # double 0.75441477970074777
	.quad	0x3fc2c4bc01c1b978              # double 0.14662885747697962
	.quad	0x3fd313f7d2b1708a              # double 0.29809375358105028
	.quad	0x3fc56c5e55758f28              # double 0.16736964390576614
	.quad	0x3fc0cff893ae4ec8              # double 0.13134677134495676
	.quad	0x3fd5ec9e7e9c7cfc              # double 0.34256708492644328
	.quad	0x3fe93307559d2011              # double 0.78747908326568183
	.quad	0x3fe5fa458077c263              # double 0.68680071917885888
	.quad	0x3fe7f06bfe28ad9b              # double 0.74809836998376811
	.quad	0x3fd74f8902711344              # double 0.36422944296309745
	.quad	0x3fdcd925e205a2ec              # double 0.45075366089308377
	.quad	0x3fcab86fc3041c04              # double 0.20875355741756618
	.quad	0x3fe59650fbb57d1f              # double 0.67459916269209319
	.quad	0x3fd9ca527c023d2c              # double 0.40297376737813084
	.quad	0x3f95c9cb0014b5c0              # double 0.021277591590821876
	.quad	0x3fe86516c274ca53              # double 0.7623399541829009
	.quad	0x3fe913e20de32738              # double 0.78367712700239789
	.quad	0x3fe242d7aa2a8534              # double 0.57065947757306512
	.quad	0x3fee9a16b92655a9              # double 0.95630966341075407
	.quad	0x3fec7267679f6638              # double 0.88896532286452778
	.quad	0x3feb3fb178d92a60              # double 0.85152505496200703
	.quad	0x3fe74cca0c92e42e              # double 0.72812368827647389
	.quad	0x3fe1b0cc47ebf49b              # double 0.55283178374488118
	.quad	0x3fe75f044bf5dc4e              # double 0.73034872852339006
	.quad	0x3fe61215b4521729              # double 0.6897076150787359
	.quad	0x3fd81ed2bcd88a72              # double 0.3768812984655262
	.quad	0x3fc8869d2e2381e4              # double 0.19160809281221625
	.quad	0x3fd0d0c409ea115c              # double 0.26274205177494081
	.quad	0x3fe9684ec4376d60              # double 0.79398287128007538
	.quad	0x3fe8006978b56769              # double 0.75005029273891666
	.quad	0x3fee1fee8191ffe6              # double 0.94139790827466352
	.quad	0x3fe2dd24279365d2              # double 0.58949477891581581
	.quad	0x3fee5a577ded2545              # double 0.94852804751386854
	.quad	0x3fc6e808fbdfdf40              # double 0.17895614908752044
	.quad	0x3fde77d38d57734e              # double 0.47606362154856618
	.quad	0x3f9c14c959de6920              # double 0.02742304430976461
	.quad	0x3fe520b7181541c4              # double 0.66024355605809903
	.quad	0x3fdb9aa63bbc5a6e              # double 0.43131404717988786
	.quad	0x3fa2b4db7a098800              # double 0.036536081931231479
	.quad	0x3fd123da08c7a9bc              # double 0.26781321389594459
	.quad	0x3feb2af3c00eb9d8              # double 0.84899318228945742
	.quad	0x3fc02911fbea5164              # double 0.12625336456825231
	.quad	0x3fca148b19bcd07c              # double 0.20375193363873112
	.quad	0x3fef6962201797a1              # double 0.98161417263030525
	.quad	0x3fbc9be57b9533b8              # double 0.11175379054220869
	.quad	0x3fdf15ff6816fb6c              # double 0.48571763196007711
	.quad	0x3fcbe2f8a7c49bf0              # double 0.2178641146831235
	.quad	0x3f9aec5366b49280              # double 0.026292136329305382
	.quad	0x3fec174560cabc73              # double 0.87784069924044983
	.quad	0x3fdb35dca811527a              # double 0.42516247189386258
	.quad	0x3fe98200c5587288              # double 0.79711950820963384
	.quad	0x3fecda0e5cf26313              # double 0.90161817697216617
	.quad	0x3fd326f531423c06              # double 0.29925279436514562
	.quad	0x3fc59693da1483d8              # double 0.16865776203579119
	.quad	0x3fe16f0dd5865467              # double 0.54480640129135061
	.quad	0x3fd80ea32b0407c2              # double 0.37589339447742642
	.quad	0x3fe113253d834184              # double 0.53358709348872013
	.quad	0x3fe445c30553dad1              # double 0.63351584473169897
	.quad	0x3fd93f542daef34a              # double 0.39449028455037605
	.quad	0x3fac4a7dd0d49390              # double 0.055255824796666464
	.quad	0x3feeb0da153d7a2d              # double 0.95908836506334227
	.quad	0x3fcb056a33072c3c              # double 0.21110274783709027
	.quad	0x3fede6d8f8e0e832              # double 0.93442963227358278
	.quad	0x3fd1be3ed32c71f8              # double 0.2772366583101582
	.quad	0x3fa042615e758730              # double 0.031756441860819939
	.quad	0x3fe300ad9ca3fd8d              # double 0.59383278459419986
	.quad	0x3fb1dc9817d19b28              # double 0.069772249045496282
	.quad	0x3fe16e2ff70d5b6b              # double 0.54470060589197311
	.quad	0x3fc40ddf9175bf70              # double 0.15667337992226349
	.quad	0x3fbbddc2ee917680              # double 0.10885256122988984
	.quad	0x3fd4b5988e71c7b0              # double 0.32358373556700837
	.quad	0x3fecf3faec00df9d              # double 0.90478273481766147
	.quad	0x3fdb311204ef0fc4              # double 0.4248700187856651
	.quad	0x3fed69596b30ef42              # double 0.91911002097865713
	.quad	0x3fae2c60731f9660              # double 0.058932317784450516
	.quad	0x3f8a119e49821280              # double 0.012728916757859254
	.quad	0x3fd8b254d0ffb2a8              # double 0.38588447961846351
	.quad	0x3f9ce96da5b14c00              # double 0.028234208334037447
	.quad	0x3fe60abafb539031              # double 0.68880986296836089
	.quad	0x3fddf6694676603e              # double 0.46816474801153507
	.quad	0x3fee9165f1edde07              # double 0.95524880649367183
	.quad	0x3fb4ccf0de288970              # double 0.081252149808767049
	.quad	0x3fe2ea84d1cf040a              # double 0.59112778642895702
	.quad	0x3fe32e5ee788695a              # double 0.59941048833142507
	.quad	0x3fe4be0ce8337ec5              # double 0.6481995139292499
	.quad	0x3fe7a3e574908fb9              # double 0.73875687376538857
	.quad	0x3fe929fe6107d532              # double 0.78637618018425415
	.quad	0x3feddce3d010f97f              # double 0.93321409833860958
	.quad	0x3fcded8183c05150              # double 0.23381060536542941
	.quad	0x3fe1b89e2b5c8873              # double 0.55378635853800373
	.quad	0x3fed95530e106372              # double 0.92447808024290468
	.quad	0x3feea622c9169658              # double 0.95778025889439799
	.quad	0x3fe2f9f74a2a0b9a              # double 0.59301342473223717
	.quad	0x3fd3d3738e85c852              # double 0.30978096883985018
	.quad	0x3fb3a1bc2bf5b2e0              # double 0.076686630947459644
	.quad	0x3fdde81652e2b070              # double 0.46729047865188189
	.quad	0x3fc95cdd3d90d86c              # double 0.19814649110930149
	.quad	0x3fd2b1ff1c8ad052              # double 0.29211404597595447
	.quad	0x3fe7b5e1d983fb54              # double 0.74095242007738671
	.quad	0x3feba7bb94ac209a              # double 0.86422518765995737
	.quad	0x3fe064e4b63dc3c7              # double 0.51231608957288521
	.quad	0x3fec2638d1c23b4f              # double 0.87966576546191699
	.quad	0x3fec8347c88de9e4              # double 0.89102543993731986
	.quad	0x3fe36edd6338eaa0              # double 0.60728330020295473
	.quad	0x3fd99661b962d434              # double 0.39980357269388667
	.quad	0x3fe184032c546f9b              # double 0.54736479433221363
	.quad	0x3feb1a73bf912d5f              # double 0.84697902121972024
	.quad	0x3fc99573371aa470              # double 0.19987335386875626
	.quad	0x3fdc685921126b5c              # double 0.44386890630419429
	.quad	0x3fc60b0a92a65d10              # double 0.17221195374143194
	.quad	0x3fd81dd81267149c              # double 0.37682153508314697
	.quad	0x3fc5d8aa718bb2e0              # double 0.17067461532805961
	.quad	0x3fe45b784ba1f725              # double 0.63616575977332401
	.quad	0x3fe8f77babfd499f              # double 0.78021033851318922
	.quad	0x3fc0bbf4f5312080              # double 0.13073598835240219
	.quad	0x3fe752e20516653d              # double 0.72886754029892808
	.quad	0x3fc75eb3961f5a0c              # double 0.18257756071280118
	.quad	0x3fe4c71301fb7936              # double 0.64930105578586139
	.quad	0x3fdb1fbf602b7544              # double 0.42381271735742509
	.quad	0x3fc7e03a7a2135e4              # double 0.18653040850988056
	.quad	0x3fee72a8115bcab1              # double 0.95149615660041864
	.quad	0x3fed494f0f542f2f              # double 0.91519883150019676
	.quad	0x3fe9c1dff2342b99              # double 0.80491635613849433
	.quad	0x3feba81c7870c1ed              # double 0.86427138827826655
	.quad	0x3fefcf9882f02165              # double 0.99409127782659523
	.quad	0x3fd38f10be38f0f8              # double 0.30560701919945599
	.quad	0x3fd1d0ac04174806              # double 0.27836132430559279
	.quad	0x3fe2eb315cffdd00              # double 0.59121006168325607
	.quad	0x3fd7317ad7fbdde0              # double 0.36239501087353965
	.quad	0x3fe587c0b536bb7b              # double 0.67282138245887724
	.quad	0x3fd118a89eedee5e              # double 0.26713004608584423
	.quad	0x3fdfa80ca6cecde8              # double 0.49463192262484634
	.quad	0x3fe40da3f1d2b897              # double 0.62666508894996553
	.quad	0x3fe594644e39cbcc              # double 0.67436423567266379
	.quad	0x3fe4ca0872fbd758              # double 0.64966223199619844
	.quad	0x3fef4fdca26f1fc1              # double 0.97849876141935265
	.quad	0x3fe720d8a70059ac              # double 0.72275955789046042
	.quad	0x3fe8d84c23cac2bb              # double 0.77640349379188167
	.quad	0x3fedb318747c44b4              # double 0.92811224700030559
	.quad	0x3fc22d51688fe854              # double 0.14200799565861877
	.quad	0x3fbac8ef7bde90e8              # double 0.10462853216319312
	.quad	0x3fe408e3249f2ed0              # double 0.62608487274834523
	.quad	0x3fea6d6117db2767              # double 0.82585196170223873
	.quad	0x3fed97f1b58014b2              # double 0.92479787301330973
	.quad	0x3feefda1463f8e57              # double 0.96846069069256202
	.quad	0x3fe0947b94da4101              # double 0.51812533447994735
	.quad	0x3fcf013596fc1d48              # double 0.24222440597825767
	.quad	0x3fea48aeec37aa3c              # double 0.82137247215479858
	.quad	0x3fee9e3e1795317e              # double 0.95681671720517136
	.quad	0x3fe59ff3771d6e02              # double 0.6757752729858455
	.quad	0x3fef42e851597279              # double 0.97691741837077394
	.quad	0x3febd1c00672ba29              # double 0.86935426005749605
	.quad	0x3fe6d5f8b694eb97              # double 0.71361957226268913
	.quad	0x3fa79a4311d13e00              # double 0.046098800587625277
	.quad	0x3fef78e0aaccc450              # double 0.98350556716298776
	.quad	0x3fb04559a71745e8              # double 0.063558200162581735
	.quad	0x3fe95ba178e58d9d              # double 0.7924353944076078
	.quad	0x3fb15de8548037d8              # double 0.067839165334788176
	.quad	0x3fecb24a2d91ada0              # double 0.89676388645368731
	.quad	0x3fe8a12af20a2534              # double 0.76967379830708759
	.quad	0x3fec8053bf4b82ba              # double 0.89066493379876666
	.quad	0x3fd89b07c216f488              # double 0.38446229890889372
	.quad	0x3feff01ed8d434c3              # double 0.99806158399010092
	.quad	0x3fc4030b17e7a648              # double 0.15634287516813772
	.quad	0x3fd64dd027cc3710              # double 0.3484993351602137
	.quad	0x3fd1a745c0e89ea8              # double 0.27583450163590806
	.quad	0x3fdca13d7f1abf7a              # double 0.44734132206485067
	.quad	0x3fe74f16033686c2              # double 0.72840405108964767
	.quad	0x3fea30a9e38ac5aa              # double 0.8184403843098853
	.quad	0x3fc26e9666e748b8              # double 0.14399986290533717
	.quad	0x3fef410daeedc366              # double 0.97669109502576812
	.quad	0x3fe59b3671cc50c7              # double 0.67519685960953602
	.quad	0x3fae57c92eaf8280              # double 0.059263503025936082
	.quad	0x3fc2cb16cdb2fd58              # double 0.14682278674988924
	.quad	0x3fee0557efcc0106              # double 0.93815228305177878
	.quad	0x3fdd6c25476b9ea0              # double 0.45972568487784748
	.quad	0x3fc0772bd92966a0              # double 0.12863681892013279
	.quad	0x3fe7bcde920f698c              # double 0.74180534865745207
	.quad	0x3fbcb8ab2c2de958              # double 0.11219281986806118
	.quad	0x3fd9d6f94dca32ba              # double 0.40374596211112712
	.quad	0x3fea4c9fc5b0431b              # double 0.82185352908172449
	.quad	0x3fdc39ae0123a884              # double 0.44102048980006026
	.quad	0x3fc82f82ffb7dd2c              # double 0.18894994245759145
	.quad	0x3fe6c501901f44e9              # double 0.71154859684807292
	.quad	0x3fc2a569d37ca428              # double 0.14567301584728054
	.quad	0x3fc05ad3f4924824              # double 0.12777184907878436
	.quad	0x3fe887b42f6009fd              # double 0.76656541111907439
	.quad	0x3fe8ea1e1ba005b2              # double 0.77857880969548021
	.quad	0x3fdd6a6c5e789a8c              # double 0.45962056375211868
	.quad	0x3fed10e17323344d              # double 0.90831062782093286
	.quad	0x3fc5a5fd61a048b0              # double 0.169128105801581
	.quad	0x3fd8619cba656a00              # double 0.38095777704953093
	.quad	0x3fecc018a80afb8e              # double 0.89844925709609114
	.quad	0x3fe51df06a8c2768              # double 0.65990467844060863
	.quad	0x3fb04c73bc055f30              # double 0.063666566279945824
	.quad	0x3fc0413ac81eeba0              # double 0.12699064990542031
	.quad	0x3fd19bb4ea0e0734              # double 0.27512858254350481
	.quad	0x3fe697a4d1aca8a3              # double 0.70601120903053916
	.quad	0x3febfe06f2e8161f              # double 0.87475917284672622
	.quad	0x3fda9ece177a57a6              # double 0.41594269078029311
	.quad	0x3fca9fb41bfd2c9c              # double 0.20799876562737019
	.quad	0x3fc413046f665510              # double 0.15683036269607742
	.quad	0x3fe30b2ff90b5523              # double 0.59511564866503297
	.quad	0x3fee8db07ac05353              # double 0.95479606604440403
	.quad	0x3fd4f428845f504e              # double 0.3274022381494931
	.quad	0x3fe96fb5dba77d35              # double 0.79488652135106597
	.quad	0x3fcb0c8927a7f434              # double 0.21132006107646506
	.quad	0x3fed975793b5d7ef              # double 0.92472437715218614
	.quad	0x3fe90fd3ed0d064c              # double 0.78318210886954764
	.quad	0x3fe88e0a4e16282b              # double 0.76733889819411638
	.quad	0x3fed8bd5bff72eac              # double 0.92331969731590879
	.quad	0x3fe62c69bcc7e536              # double 0.69292151328332952
	.quad	0x3f895c874dd69e80              # double 0.012383515417993651
	.quad	0x3feb6d2f57d5a7c3              # double 0.85707823901361058
	.quad	0x3fd18d91ba458496              # double 0.2742657012041233
	.quad	0x3fe12158bbe872b7              # double 0.53532063198834734
	.quad	0x3fe3b67166224a3d              # double 0.61602086971317471
	.quad	0x3fd2d3b40a652e68              # double 0.29417134299430936
	.quad	0x3fefde9b6229c419              # double 0.9959237019776338
	.quad	0x3fee90f737dcfc08              # double 0.95519600783143321
	.quad	0x3fef78b2028219a0              # double 0.98348331918605325
	.quad	0x3fd7f198e4bb1aa2              # double 0.37412092530250096
	.quad	0x3fe60800c83ca1fe              # double 0.6884769354701914
	.quad	0x3fdaa9efa5765e4c              # double 0.41662207754550162
	.quad	0x3fd71fb884b97a80              # double 0.36131108247165145
	.quad	0x3fc16b9053d2df84              # double 0.13609508603053311
	.quad	0x3fe9e8c5c8340f25              # double 0.80966462232797609
	.quad	0x3feeb1672678eacd              # double 0.95915563120009894
	.quad	0x3fe06983bf9295e5              # double 0.51288020531199818
	.quad	0x3fe9d73a552e3da1              # double 0.80752293240395911
	.quad	0x3fecf9d2a8f1a89e              # double 0.9054959582984059
	.quad	0x3fe472e319596ef3              # double 0.63902430487675443
	.quad	0x3fdcb36c6f81f9aa              # double 0.44845114602494596
	.quad	0x3fc8bc19ad2cbea4              # double 0.19324036556053159
	.quad	0x3fda800b5ea3f99a              # double 0.41406521074522973
	.quad	0x3fe32ac50aae7284              # double 0.59897090994088886
	.quad	0x3fecceea3fade118              # double 0.90025818288180215
	.quad	0x3fec6bf116caa0b1              # double 0.8881764836451308
	.quad	0x3fc8a46937940c6c              # double 0.19251742566857233
	.quad	0x3fdc9a088a8b9d7c              # double 0.44690145044156515
	.quad	0x3fc195c7183b32e4              # double 0.13738335307279848
	.quad	0x3fe8c088018a3882              # double 0.77350235272184897
	.quad	0x3fe6944817db8b18              # double 0.70560078296361706
	.quad	0x3fd340c9861d7122              # double 0.30082929703873351
	.quad	0x3fde55f661666376              # double 0.47399672996248599
	.quad	0x3fd8229bc4fbea7c              # double 0.37711233364795027
	.quad	0x3fdc844defa7555e              # double 0.44557522205044175
	.quad	0x3fd58f2e98df91fc              # double 0.33686413697276385
	.quad	0x3fb36cd170f14b40              # double 0.075879182885995711
	.quad	0x3fd31281af8f42e8              # double 0.29800455231183642
	.quad	0x3fb51665f0c537d8              # double 0.082373019487220644
	.quad	0x3fccd79c2301cc10              # double 0.22532989224745892
	.quad	0x3fef325712473091              # double 0.97489503450334968
	.quad	0x3fe71a5d1f8eb398              # double 0.72196823276100286
	.quad	0x3fe65c655a5c6377              # double 0.69877879761325701
	.quad	0x3fe7767de774c2ec              # double 0.73321433264035596
	.quad	0x3fe4fa1bd0d3a9b1              # double 0.6555308416985125
	.quad	0x3fe9b930ced46960              # double 0.80385628124649244
	.quad	0x3feb4ff1c67d6fc3              # double 0.85350884215903766
	.quad	0x3fd03829e0cc4080              # double 0.25342795327106415
	.quad	0x3fefe356a187d819              # double 0.99650126980737063
	.quad	0x3fe17fd6a300bd32              # double 0.54685527645589205
	.quad	0x3fe10939215fc509              # double 0.53237587469462355
	.quad	0x3fcdc6319c80409c              # double 0.23261089460038853
	.quad	0x3fcf8ccb4e510564              # double 0.24648419689223566
	.quad	0x3fdfb8704e8a08f0              # double 0.49563224477618828
	.quad	0x3fd9d96f90742a44              # double 0.40389622790158719
	.quad	0x3fdcadebc72e1fd6              # double 0.44811529589833066
	.quad	0x3fe4404751c5ab27              # double 0.6328465077507176
	.quad	0x3fd3c78181066034              # double 0.30905187225426123
	.quad	0x3fee2b94feb99fc8              # double 0.94282006979937538
	.quad	0x3fe66a28add81bc6              # double 0.70045885042133516
	.quad	0x3fe4c2527bc3e079              # double 0.64872097180251764
	.quad	0x3fe74170a7a39c55              # double 0.72673828832638299
	.quad	0x3fd4b8c93efb1288              # double 0.32377844953979507
	.quad	0x3fd6c3fe99663bc8              # double 0.35571255665211909
	.quad	0x3fe2b790af0673f2              # double 0.58490785774813348
	.quad	0x3fb09135e7a57a30              # double 0.064715737394615003
	.quad	0x3fc8e867a55813c8              # double 0.19459243367614776
	.quad	0x3fe3ecc863dec9fd              # double 0.62265414720451384
	.quad	0x3fd69e51437a88be              # double 0.35341292943679636
	.quad	0x3fdcc222f4a4a8fa              # double 0.44934915438592749
	.quad	0x3fe75809dafb5727              # double 0.72949688691980874
	.quad	0x3fc209438eea140c              # double 0.14090771177521366
	.quad	0x3fd356bfd8976e6c              # double 0.3021697631026885
	.quad	0x3fd4c0f5a8d27ef8              # double 0.3242773197798523
	.quad	0x3f8b2a817457b240              # double 0.013264666903489375
	.quad	0x3fe43b26e02e550e              # double 0.6322206858191366
	.quad	0x3fca2cb43f871288              # double 0.20448926069197548
	.quad	0x3fcc078a53093bdc              # double 0.21898011259551609
	.quad	0x3fc58efa88a0d41c              # double 0.1684258620386182
	.quad	0x3fed22888a2572fa              # double 0.91046549779602448
	.quad	0x3fe344962467f336              # double 0.60212237463529195
	.quad	0x3fdc9c185c8c5dc6              # double 0.44702729261322494
	.quad	0x3fd9ae8accdafb7a              # double 0.40127820973787431
	.quad	0x3fe7b512d8850b89              # double 0.7408537129307301
	.quad	0x3f902946748f2540              # double 0.015782452453810381
	.quad	0x3fe3a39be9366c44              # double 0.61372180508932006
	.quad	0x3fe0e5bc2fbcb65f              # double 0.52804383586562753
	.quad	0x3fc512f8771be2f4              # double 0.1646414357744771
	.quad	0x3feb14ec0d43e057              # double 0.84630396452758816
	.quad	0x3fc6ed6b0b61ee68              # double 0.17912042671001704
	.quad	0x3fe766f00ff19e96              # double 0.73131564249065906
	.quad	0x3fe028837f11b577              # double 0.50494551485250738
	.quad	0x3fc38baa764e95d0              # double 0.15269976402957619
	.quad	0x3fbd02c060d07b70              # double 0.1133232342112771
	.quad	0x3feab0e05cc2cf86              # double 0.83409135930422518
	.quad	0x3fe3ff4418e5d58a              # double 0.62491040099000483
	.quad	0x3fe7df34e3bab54c              # double 0.74599689939865632
	.quad	0x3fe3be4d0c4503c7              # double 0.61698009869007187
	.quad	0x3fbe08d2810e3f60              # double 0.11732211733601394
	.quad	0x3fc80742f5919fe0              # double 0.18772160521189019
	.quad	0x3febd0ddeedcb07a              # double 0.86924645092723485
	.quad	0x3fca4183423646f0              # double 0.20512428982743058
	.quad	0x3fd35878d4d5ad54              # double 0.30227490219723063
	.quad	0x3fe86475e4e1f36e              # double 0.76226324752461294
	.quad	0x3fdb033ac3c5c214              # double 0.42207211607367978
	.quad	0x3fd1eaaf55715d60              # double 0.27994902938868016
	.quad	0x3fc157ca4c9eb200              # double 0.13549164525228719
	.quad	0x3fd0085924741bae              # double 0.25050953445355162
	.quad	0x3fd6dc400d270714              # double 0.35719300541323773
	.quad	0x3fe10489fc3b8afd              # double 0.53180407776048322
	.quad	0x3fe84f3ea0e93f06              # double 0.75967341831162183
	.quad	0x3fea7b3c19a3538c              # double 0.82754330642147655
	.quad	0x3fc52ae8e2f293ec              # double 0.1653720005171232
	.quad	0x3fda200261d1de32              # double 0.4082036929389431
	.quad	0x3fd658ad96cbbec8              # double 0.34916248060379163
	.quad	0x3fd11f324d0f8ff0              # double 0.26752908254115848
	.quad	0x3fd38da8edcebf8c              # double 0.30552123282813493
	.quad	0x3fe2ed4da9b243ab              # double 0.59146769660775556
	.quad	0x3fab2397fe7a3620              # double 0.053005933584341358
	.quad	0x3fc1c9c6d068e878              # double 0.1389702336908305
	.quad	0x3fe6d8a551ec0ae5              # double 0.71394601822279624
	.quad	0x3fe1f0ac341f4b6c              # double 0.560628988076457
	.quad	0x3fdfde0ef44caa68              # double 0.49792837006922364
	.quad	0x3fdb9ffa46ca40e0              # double 0.43163926041689926
	.quad	0x3fd1e1c3ffcdc7d8              # double 0.27940464001505694
	.quad	0x3fe214d4ff3ed165              # double 0.56504297115911284
	.quad	0x3fee82e8f8cd01a2              # double 0.95348023027331785
	.quad	0x3fd7ee8fae4e2624              # double 0.37393562337874386
	.quad	0x3fd6edf43d836f00              # double 0.35827356345338046
	.quad	0x3fea261a8f088942              # double 0.81715133606147838
	.quad	0x3fd3d6a2d3c1d546              # double 0.3099753444615384
	.quad	0x3fe19a36e67f7124              # double 0.55007500666718956
	.quad	0x3fe6963cf52e7b79              # double 0.7058396137907571
	.quad	0x3fe41b462ef5b3ba              # double 0.62832936450796883
	.quad	0x3fd23250ea56bf88              # double 0.28432104954389859
	.quad	0x3fd006a52e9829f8              # double 0.25040559339745938
	.quad	0x3fc68a7a6ad15e80              # double 0.1761010190555119
	.quad	0x3fde43b00b4f3f44              # double 0.47288132767151958
	.quad	0x3fd99def0e2a8d62              # double 0.4002645147649756
	.quad	0x3fea5cd913c32f58              # double 0.82383397922374524
	.quad	0x3fcc91786bd21acc              # double 0.22318940415080701
	.quad	0x3fdfc793772d157a              # double 0.49655615461627856
	.quad	0x3fdc0178b91e2a52              # double 0.43758981779015926
	.quad	0x3fe129747b575123              # double 0.53631042566351927
	.quad	0x3fc817f5eefa4d3c              # double 0.18823122185549745
	.quad	0x3fe25a8670f2aceb              # double 0.5735504346861523
	.quad	0x3fe6236908de6177              # double 0.69182254535830523
	.quad	0x3fec521c43711ab6              # double 0.88502324268559707
	.quad	0x3fe4a7a4f38c8e5c              # double 0.64546439712689674
	.quad	0x3fdc011cc6d345ac              # double 0.43756789604693824
	.quad	0x3fea998abc54d581              # double 0.83124291213486867
	.quad	0x3f9bbdf252220380              # double 0.027091776144974045
	.quad	0x3fe3102caadf9002              # double 0.5957244241112678
	.quad	0x3fdc43d5a3b18d02              # double 0.44164029107760439
	.quad	0x3fe2c55c226d1e88              # double 0.58659178470493689
	.quad	0x3fe0b31366c47cbf              # double 0.52185983726294427
	.quad	0x3faacf15c331c8d0              # double 0.052361183240365983
	.quad	0x3fce38add1c13e1c              # double 0.2361047052568076
	.quad	0x3fdbf05f18981534              # double 0.43654611017003053
	.quad	0x3fe8298df500debd              # double 0.7550725732061988
	.quad	0x3fe7e6d78fd19a7d              # double 0.74692895974733597
	.quad	0x3fe725c056559bd1              # double 0.7233583151072428
	.quad	0x3fdb50835fce8e28              # double 0.42678913456095069
	.quad	0x3fad570b65df56f0              # double 0.05730472200927561
	.quad	0x3fed344894e3b3f8              # double 0.91263226585363011
	.quad	0x3fef749d82486c7d              # double 0.98298526235465966
	.quad	0x3fef2947c9af270b              # double 0.97378911391680966
	.quad	0x3f6af44f891fe200              # double 0.0032903245382807089
	.quad	0x3fc6153cbfe3c4bc              # double 0.1725231110536124
	.quad	0x3fee4fa84cb40fca              # double 0.94722380620123059
	.quad	0x3fd23a064e5ec802              # double 0.28479154256194772
	.quad	0x3fc774a9519f1298              # double 0.18324772344034979
	.quad	0x3fd890e087f9e270              # double 0.38384259489934092
	.quad	0x3fe048b03148f3a9              # double 0.50887307764025025
	.quad	0x3fe90f050805cf4e              # double 0.78308345381672395
	.quad	0x3feaf1e0736ef7ec              # double 0.84202597184753136
	.quad	0x3fd20f1a22d9c7f8              # double 0.28217175868405731
	.quad	0x3fe8172350150fe5              # double 0.75282445565289591
	.quad	0x3fec0dc90e52f481              # double 0.87668278501190866
	.quad	0x3fc8ed86722b2bf8              # double 0.19474869322434052
	.quad	0x3fb8d1a9c3f95228              # double 0.096949205727761112
	.quad	0x3fe857f99d550318              # double 0.76073914269372533
	.quad	0x3fd23de360bac41c              # double 0.28502735563512416
	.quad	0x3fe8b3bd285392fb              # double 0.77194078327428828
	.quad	0x3fb6c4fe2c8f2130              # double 0.088943372610746918
	.quad	0x3fa493a79fa7a4b0              # double 0.040189016570204017
	.quad	0x3fda1a18292b7e26              # double 0.40784267445084976
	.quad	0x3fe52723a5c5be5e              # double 0.66102774026326094
	.quad	0x3fe50944a5905908              # double 0.65738136612597575
	.quad	0x3fdc1635411f0b4c              # double 0.43885547027109761
	.quad	0x3fc4fafd010431fc              # double 0.16390955495479875
	.quad	0x3fe704a11debee5f              # double 0.71931510776580498
	.quad	0x3fe4467a893c9cb9              # double 0.63360335163169801
	.quad	0x3fbd98c4f78db4b8              # double 0.11561232608592575
	.quad	0x3fb3adea2622d5f0              # double 0.076872476873937278
	.quad	0x3fdd390c65471eb4              # double 0.45660695925151207
	.quad	0x3fe5b2b7cc244571              # double 0.67806615706846973
	.quad	0x3fdc0b7a68cf93da              # double 0.43820057139811086
	.quad	0x3fe08ab06ca43e2a              # double 0.51692982882554372
	.quad	0x3fc0c3ea294bdce0              # double 0.13097884193823628
	.quad	0x3fed3e1b576ecc1f              # double 0.91383139683455628
	.quad	0x3fbab1d2f00544b8              # double 0.10427587852361142
	.quad	0x3fe65d0c1491c04f              # double 0.69885829942178102
	.quad	0x3fbd12109626a228              # double 0.11355689683717485
	.quad	0x3fc9a3b2fbe8cc1c              # double 0.20030820179235398
	.quad	0x3fe3b6617648f832              # double 0.6160132704023964
	.quad	0x3fcfda0a2b59e460              # double 0.24884154431109362
	.quad	0x3fe892164e5eed8a              # double 0.76783290201949339
	.quad	0x3fad3065d3d98da0              # double 0.057009870634625814
	.quad	0x3fec5ae13bd34fa2              # double 0.88609372791914987
	.quad	0x3fe9c1a65d69a75d              # double 0.8048888992754929
	.quad	0x3fd5e2964cdff0fe              # double 0.34195477969457488
	.quad	0x3fd93b66711cd576              # double 0.39425049825816616
	.quad	0x3fe315a3ee34da49              # double 0.59639164471338646
	.quad	0x3fe80a461336d1cc              # double 0.75125411751519655
	.quad	0x3fb3a3e57d3bd5b0              # double 0.076719611239090879
	.quad	0x3fc2002a4ae3aa9c              # double 0.14063004166321924
	.quad	0x3fdec74f8c1ff430              # double 0.48091496166290693
	.quad	0x3fe399aff1e94336              # double 0.61251065490987489
	.quad	0x3fef72e2e838bc65              # double 0.98277421336923664
	.quad	0x3f9c54680b314e60              # double 0.027665734942571851
	.quad	0x3fda3267af6e837e              # double 0.4093264783096443
	.quad	0x3fed0a65e2c73429              # double 0.90751928608518029
	.quad	0x3fd5ad6aa7e6b1b0              # double 0.33870951077076494
	.quad	0x3fc90f769f1186d4              # double 0.19578440444006751
	.quad	0x3febd43c294f886d              # double 0.86965759342662141
	.quad	0x3fd0329e18fa345a              # double 0.2530894512099785
	.quad	0x3febae410127d687              # double 0.86502123094278793
	.quad	0x3fd384d12a5c8fa8              # double 0.30498150956031589
	.quad	0x3fecfd9c3c9de1b6              # double 0.90595828856662908
	.quad	0x3fc2c0f86006d33c              # double 0.14651398361970702
	.quad	0x3fe05ab6bddf68ac              # double 0.51107346615323967
	.quad	0x3feae81e5d79558c              # double 0.84083479172356723
	.quad	0x3fb577c3aac73a60              # double 0.083858708566574958
	.quad	0x3fe4941952ef8ac6              # double 0.64307848165875536
	.quad	0x3fd63c018eb8a8c4              # double 0.3474124807131711
	.quad	0x3fec327dfd94f06e              # double 0.8811635926026733
	.quad	0x3fc51e3af73454a8              # double 0.16498505659607088
	.quad	0x3fe449e8a488162b              # double 0.63402206549716789
	.quad	0x3fe0feb392d2ba1b              # double 0.53109148670575068
	.quad	0x3fe30dc5d3cc0795              # double 0.59543124548530335
	.quad	0x3fefd448dd6d3e8d              # double 0.99466365096482578
	.quad	0x3fca71797bde3104              # double 0.20658796833266291
	.quad	0x3fea70e778a94a35              # double 0.82628224913270876
	.quad	0x3fd95f96771a31b4              # double 0.39645921355329539
	.quad	0x3fb639c8a4201f18              # double 0.086819210118957435
	.quad	0x3fd5431bb586af4c              # double 0.33222096182975203
	.quad	0x3fd76e1c6c1d1ebe              # double 0.36609564359649116
	.quad	0x3fb1d6119bffa960              # double 0.069672680459608838
	.quad	0x3fe732ce2dd14a25              # double 0.72495182942140401
	.quad	0x3fda1f70128b3324              # double 0.40816880999482152
	.quad	0x3fde320ea3345342              # double 0.47180524766854515
	.quad	0x3fb503d3bb5a7a58              # double 0.082089646568854646
	.quad	0x3fe46fdd6e4383f8              # double 0.63865539108166924
	.quad	0x3fe631c0d3f221fe              # double 0.69357339282674935
	.quad	0x3fe4d7005795b41c              # double 0.65124528032686468
	.quad	0x3fc732a650c93700              # double 0.18123320526722608
	.quad	0x3fd0d480b0d16fa4              # double 0.26297013537782221
	.quad	0x3fd364f4ee4f3b9a              # double 0.30303691170132085
	.quad	0x3fd5307c8ca6905c              # double 0.33108438239492499
	.quad	0x3fe15946f63151ab              # double 0.542148094983124
	.quad	0x3fe44f6c4cb77c25              # double 0.63469519599664592
	.quad	0x3fefa393ee607a79              # double 0.98871800001127418
	.quad	0x3fee6926ce348430              # double 0.95033588671151925
	.quad	0x3fa5bd939ca17ba0              # double 0.042461979742021372
	.quad	0x3fdc9e73eb411d68              # double 0.44717119192178822
	.quad	0x3fe9e98d894adf95              # double 0.80975987257896753
	.quad	0x3fed7c8273d98333              # double 0.92144892336737028
	.quad	0x3fe7a8c06228160e              # double 0.73934954806526476
	.quad	0x3fc5c9ca925dc044              # double 0.17022068163669435
	.quad	0x3fe9131d82b07aea              # double 0.78358340764301926
	.quad	0x3fe6a8881e98b874              # double 0.70807271934405813
	.quad	0x3feaf7b1a1088901              # double 0.84273606731247253
	.quad	0x3fd687011cb002f4              # double 0.35199001122968743
	.quad	0x3fd088c06c4e6396              # double 0.25834665848520311
	.quad	0x3fe06caacc223dee              # double 0.51326503629564768
	.quad	0x3fee67b8b8a70ee3              # double 0.95016132416682486
	.quad	0x3fb0ffd64df002f8              # double 0.06640376475116827
	.quad	0x3fd76c9be13ace6c              # double 0.36600396151627623
	.quad	0x3fe4c4ed7d1ca9f1              # double 0.64903902469569463
	.quad	0x3feeb0ffe56768eb              # double 0.95910639577348655
	.quad	0x3fb01a0d0bdd5798              # double 0.062897506138453685
	.quad	0x3fcbbfbd1fca6e4c              # double 0.21678890278131957
	.quad	0x3fdf80b0900cb3fe              # double 0.49222959582658621
	.quad	0x3fef3d6fd8c4b81e              # double 0.9762496217497334
	.quad	0x3fcf27b23cc387c0              # double 0.24339893309575977
	.quad	0x3fc65995102c9a54              # double 0.17460883416898076
	.quad	0x3fe4208fb60964e4              # double 0.62897477678339131
	.quad	0x3fe11d353d7583d6              # double 0.53481542590827291
	.quad	0x3fd2618cbd5fb3ec              # double 0.28720396512545565
	.quad	0x3fd6ea8a71dca1ac              # double 0.35806523436851978
	.quad	0x3fdaf0fdf36d3ea6              # double 0.4209589841093283
	.quad	0x3fb3d5cd0a4073b0              # double 0.077481093409416557
	.quad	0x3fee0d4cd1504072              # double 0.93912354356326788
	.quad	0x3fcb602747f55b44              # double 0.21387187017054476
	.quad	0x3fd3872535710fe6              # double 0.30512361735259075
	.quad	0x3fbb3b32d5b7a340              # double 0.10637204854687088
	.quad	0x3fe2874ecf8893ed              # double 0.57901707204712027
	.quad	0x3fec59ef1d1d0a57              # double 0.88597827612131652
	.quad	0x3fda702e4e09152e              # double 0.41309697743084228
	.quad	0x3fd23b5d56d06f2e              # double 0.28487332799862741
	.quad	0x3fda6a74cf04b1d8              # double 0.41274757591852795
	.quad	0x3fe9855a10d68ffb              # double 0.79752829827020777
	.quad	0x3fefd582e3ea0962              # double 0.99481338991635604
	.quad	0x3fd42da897a3992a              # double 0.31528677757741497
	.quad	0x3febeaf29a1d0499              # double 0.87243013477577158
	.quad	0x3fe15d5c279a3800              # double 0.5426464818463046
	.quad	0x3fe3f26c3d18c3c7              # double 0.62334262783962735
	.quad	0x3fdef8c25c62bdba              # double 0.48393305799524067
	.quad	0x3fe2bab5b0a6a474              # double 0.58529171468866403
	.quad	0x3fe5e8b1d559d4e5              # double 0.68465511007402979
	.quad	0x3fe894acb90195dd              # double 0.76814876684209887
	.quad	0x3feb342ab510a5cc              # double 0.85011802067054409
	.quad	0x3fd8756a5f8bb550              # double 0.38216647463453501
	.quad	0x3fe4fce8993c8800              # double 0.65587263039583377
	.quad	0x3fe599f8dde70ad6              # double 0.67504542675336654
	.quad	0x3fd122cb42c5bd44              # double 0.26774865647071899
	.quad	0x3fcd4782328bbcd4              # double 0.2287447687917622
	.quad	0x3fefb18f6a23d8e3              # double 0.99042483072733167
	.quad	0x3feb0b5e0eee6c3f              # double 0.84513762394215763
	.quad	0x3fd260e9657fd55e              # double 0.28716502105756614
	.quad	0x3fe4b557d9f4f37c              # double 0.64713661737151496
	.quad	0x3fe35e209469a3a5              # double 0.60524014460417119
	.quad	0x3fc68b8747559f74              # double 0.17613306983116284
	.quad	0x3fe1709e2087b492              # double 0.54499727586302726
	.quad	0x3fcd884275c2f28c              # double 0.23072081327508831
	.quad	0x3fc8de310d46a6e4              # double 0.19428074978104981
	.quad	0x3fc1b68fbc37c96c              # double 0.13838383379295338
	.quad	0x3fd93cfb18743298              # double 0.39434697521282081
	.quad	0x3fd1ed879ed369a8              # double 0.28012266645751049
	.quad	0x3fdef96203009562              # double 0.48397112172309253
	.quad	0x3fc1df6b85dc4dcc              # double 0.13963073764953859
	.quad	0x3fd5c5b2e71755f8              # double 0.34019157950874002
	.quad	0x3f997c65c21c3e20              # double 0.024888601276925937
	.quad	0x3fb807d4896ccca8              # double 0.093869479704880576
	.quad	0x3fe000a9099cf555              # double 0.50008060338556481
	.quad	0x3feac066a0ca995f              # double 0.8359864368874631
	.quad	0x3fe045b895be3661              # double 0.5085108685177141
	.quad	0x3fe3154266afefbe              # double 0.59634513908485309
	.quad	0x3fe42aeacacc65ac              # double 0.63023891076152472
	.quad	0x3fee34fdf35c35de              # double 0.94396874934471575
	.quad	0x3fad5cf0a0cbf520              # double 0.057349700573448681
	.quad	0x3fc8dc174de27d58              # double 0.19421664526906102
	.quad	0x3fedd9352c6c9262              # double 0.9327646129282352
	.quad	0x3fbda8874e196168              # double 0.11585279137341831
	.quad	0x3fccbdccd00123a4              # double 0.22454223782031335
	.quad	0x3fdbbe073987e888              # double 0.43347340219737207
	.quad	0x3fe211aa76756b0a              # double 0.56465647827585141
	.quad	0x3fe4e961fd87be6a              # double 0.65348910825373463
	.quad	0x3fe9ddab447cb871              # double 0.80830920578388377
	.quad	0x3fd3c6abbe07416a              # double 0.30900090749221099
	.quad	0x3feb85ad67e233e2              # double 0.86006803788916053
	.quad	0x3fef1e53a11047e8              # double 0.9724519868634589
	.quad	0x3fa2fff789105390              # double 0.037109122735421995
	.quad	0x3fe494543f3e8fea              # double 0.64310657837313312
	.quad	0x3f598cb3ef20be00              # double 0.0015594250840073043
	.quad	0x3f7167f89cbf4480              # double 0.004249545232554941
	.quad	0x3fe8215a12163ac1              # double 0.75407126934609192
	.quad	0x3fe101d542796765              # double 0.53147376044510664
	.quad	0x3fec511af23a5361              # double 0.88490054426311471
	.quad	0x3fe2741c493d72df              # double 0.57667364411062383
	.quad	0x3fdb17def4283ba4              # double 0.42333196490738545
	.quad	0x3fe8e4b0dd05dc32              # double 0.77791636627705985
	.quad	0x3feca4f8af623d50              # double 0.89513811354292194
	.quad	0x3feb5d03b2b48447              # double 0.85510430243824309
	.quad	0x3fec1ce72ed98ae4              # double 0.87852820539805209
	.quad	0x3fe28b1ea197a13b              # double 0.57948237954136717
	.quad	0x3feab80ce56e1310              # double 0.83496708689253474
	.quad	0x3fcb5c2177fdb6ac              # double 0.21374910696925065
	.quad	0x3fe11c5c5fd301fa              # double 0.5347120162551271
	.quad	0x3fb0f42724f0bc58              # double 0.066225477713247272
	.quad	0x3fcd60d7bde259f0              # double 0.22951790591896737
	.quad	0x3fbd0492364a6e68              # double 0.11335100007493681
	.quad	0x3fe2e4f91a2bb5ad              # double 0.59045081244919617
	.quad	0x3fa597685e2e1f80              # double 0.042170773979761655
	.quad	0x3fdc9c609433212c              # double 0.44704451058034311
	.quad	0x3fdd27bde051662c              # double 0.45555064111758514
	.quad	0x3fe4df04a42250c2              # double 0.65222389275961512
	.quad	0x3fda8dc13753777e              # double 0.41490202334340853
	.quad	0x3fedb02a9da779e0              # double 0.92775469581448177
	.quad	0x3fe1da543ddd24f8              # double 0.55790149767668051
	.quad	0x3fef0e0d526eb7cf              # double 0.97046533680053836
	.quad	0x3fe260e9c3e1a71c              # double 0.57433021791550543
	.quad	0x3febe181e478315a              # double 0.8712777578635198
	.quad	0x3fccee67ab9bb4e4              # double 0.22602554206188252
	.quad	0x3fba9a9f965c9eb0              # double 0.10392186566297812
	.quad	0x3fa3dfb33cbfbf70              # double 0.038816071668292262
	.quad	0x3fedb2f6aa133429              # double 0.92809613435531901
	.quad	0x3fee38b9d4d958a9              # double 0.94442454883644189
	.quad	0x3fd9c1fa562fea18              # double 0.40246447006907848
	.quad	0x3fece2f348f8fb0c              # double 0.90270389797646677
	.quad	0x3fe3b4d1ab74aef4              # double 0.61582263457736852
	.quad	0x3fed4ec65cb4a0aa              # double 0.91586607080991667
	.quad	0x3fc2ffb9567f9338              # double 0.14842907641937031
	.quad	0x3fe451dc25d37083              # double 0.63499266994360004
	.quad	0x3fe7a66133252276              # double 0.73906002034443818
	.quad	0x3fe9fa19344ca1c5              # double 0.81177959646907338
	.quad	0x3fea0b25501b9d64              # double 0.81386056562488962
	.quad	0x3fd2a3bac617ab70              # double 0.29124326081244245
	.quad	0x3fb82b1c3c776a68              # double 0.094407810938187731
	.quad	0x3fef0842d78346ad              # double 0.96975843517630766
	.quad	0x3fed16045c2fa1d9              # double 0.90893762593355654
	.quad	0x3fe3627e357e025b              # double 0.60577307174396411
	.quad	0x3fc0ba0690060084              # double 0.13067705185313028
	.quad	0x3fe13c93e843db1a              # double 0.53864474643964688
	.quad	0x3fef81260b03ec9f              # double 0.9845152106421614
	.quad	0x3fe4d326f9d60760              # double 0.65077542110541842
	.quad	0x3fc3adafeeefab00              # double 0.15373801390463626
	.quad	0x3f720369b3784e00              # double 0.0043977860400619129
	.quad	0x3fd802c96d101198              # double 0.37517009401951773
	.quad	0x3fef4ea87cd79d89              # double 0.97835182555438493
	.quad	0x3fc224ff8414309c              # double 0.14175409268535055
	.quad	0x3fe73b1dfce3c2c4              # double 0.72596644775884345
	.quad	0x3fc15eede9dbe69c              # double 0.13570951384445074
	.quad	0x3fed9d7f45c28d8e              # double 0.9254757273196661
	.quad	0x3fc9317ee58db780              # double 0.19682298859282454
	.quad	0x3fdd96855e3d7314              # double 0.46231207087639459
	.quad	0x3fd697fce43a9b8e              # double 0.35302660263044394
	.quad	0x3fa4bd5622ae3380              # double 0.040507022603470055
	.quad	0x3fe33ab3eea49978              # double 0.60091587648348277
	.quad	0x3f9fa463fdd31980              # double 0.030900537841057396
	.quad	0x3fe789aeab547146              # double 0.73555692160474773
	.quad	0x3fe1493c0ae07582              # double 0.54018976330159796
	.quad	0x3feed702f8515477              # double 0.96374653338956661
	.quad	0x3fc676f8ac389210              # double 0.17550571831920125
	.quad	0x3fd5edaa9f5d2962              # double 0.34263101160890674
	.quad	0x3fc9f31ee469dc00              # double 0.20273195412639211
	.quad	0x3fd4c92a719c9e22              # double 0.32477818579579509
	.quad	0x3fdbd6efeb8c0ea0              # double 0.43499372484823517
	.quad	0x3fb3187f87d860f8              # double 0.074592562356318726
	.quad	0x3fd2b20798275ce2              # double 0.29211606844678617
	.quad	0x3fc408c1fa934750              # double 0.15651726470110328
	.quad	0x3fdd9f7b34042a92              # double 0.46285896377291025
	.quad	0x3fd9ea51108d2b8e              # double 0.40492655388214238
	.quad	0x3febaeeea03d5132              # double 0.86510402008801734
	.quad	0x3fd1a6b53ddd0d14              # double 0.2758000473151736
	.quad	0x3fe440403967340c              # double 0.6328431244998014
	.quad	0x3fc1b1031b36473c              # double 0.13821448162757999
	.quad	0x3f9a3f5e1aa9f3c0              # double 0.025632353188928425
	.quad	0x3fe2407590c151c1              # double 0.57036855957499466
	.quad	0x3fe1e47266b51ad7              # double 0.55913658199355154
	.quad	0x3fef9eb4271b5627              # double 0.98812301290553683
	.quad	0x3fe33b990ba180af              # double 0.6010251261868883
	.quad	0x3f85812825b75ac0              # double 0.010500253344543409
	.quad	0x3f80d7f9cd5db400              # double 0.0082244411275613771
	.quad	0x3fef2ffd01094818              # double 0.97460794641870318
	.quad	0x3fe0f078f13452d4              # double 0.52935454473716925
	.quad	0x3fea90b2178f2fc4              # double 0.8301630458968181
	.quad	0x3febc3e1056eaf63              # double 0.86766100941666158
	.quad	0x3fe8e156123aa663              # double 0.77750686226245269
	.quad	0x3fd66bceaf3f2d56              # double 0.35033003915733241
	.quad	0x3fc24cc70767a864              # double 0.14296806203430201
	.quad	0x3fe00c6c9e2c01d5              # double 0.50151663678121372
	.quad	0x3fce51fd20fab134              # double 0.236877099135549
	.quad	0x3fed088002bf5fd1              # double 0.90728760277397147
	.quad	0x3fdbcc5b6853bc1a              # double 0.43434796512787133
	.quad	0x3fcacbddc56fae50              # double 0.20934650555078571
	.quad	0x3fe6fb8f818cff6b              # double 0.71820807745824078
	.quad	0x3fd13436f9b7f154              # double 0.26881193529677216
	.quad	0x3fd4ce26ab30ad40              # double 0.32508246152675113
	.quad	0x3fd24c5549505ef6              # double 0.28590900573315936
	.quad	0x3fdfa409c6f2288a              # double 0.49438709667504865
	.quad	0x3fc55345b2240970              # double 0.16660376737861382
	.quad	0x3fda6179fe2c0c22              # double 0.41219949552049873
	.quad	0x3feab2d357b927cd              # double 0.83432929166269221
	.quad	0x3fee39ca92c5dbb1              # double 0.94455460230425647
	.quad	0x3fe8a545062632ce              # double 0.77017451478021726
	.quad	0x3fd39be51a06d8a6              # double 0.30639007131265783
	.quad	0x3feb43ab41d2e560              # double 0.85201037269795776
	.quad	0x3fdd0d7f807ef57e              # double 0.45394885586195943
	.quad	0x3fdebe049eecdd28              # double 0.48034778137248901
	.quad	0x3fd10a8abae69358              # double 0.2662684273912439
	.quad	0x3fe9a32ba8bab32f              # double 0.80116827921810863
	.quad	0x3fd650447a52f016              # double 0.3486491388864591
	.quad	0x3fd531870d773466              # double 0.33114792170528629
	.quad	0x3fef4c249ccd6ec6              # double 0.97804480195505827
	.quad	0x3fb721496a3db328              # double 0.090351665914294998
	.quad	0x3fe337cab4df640a              # double 0.60056052519496572
	.quad	0x3fd80c4c8c6fb996              # double 0.37575067247862515
	.quad	0x3fef85f3edb57c69              # double 0.985101665759328
	.quad	0x3fe15c6a44e707f8              # double 0.54253114182961237
	.quad	0x3fea69b3497823a7              # double 0.82540287351104247
	.quad	0x3fb502cc28c1d9b8              # double 0.082073936415190896
	.quad	0x3fb81e8e1bda8510              # double 0.094216234016603062
	.quad	0x3f9fa1ef236900c0              # double 0.030891167198433989
	.quad	0x3fe97fe5348dfa10              # double 0.7968622232872935
	.quad	0x3fcb50198be21400              # double 0.21338195162039142
	.quad	0x3fe98fbc1260e1e1              # double 0.79879573430576667
	.quad	0x3fe93c95c6385804              # double 0.78864563670026699
	.quad	0x3fcb7c84c452cfe8              # double 0.21473750673396741
	.quad	0x3fea569bb2e6b20e              # double 0.82307228986388892
	.quad	0x3fd2b8b1a4128daa              # double 0.2925228216429
	.quad	0x3fec6b51e86ce28e              # double 0.88810058017323157
	.quad	0x3fea9a3672cfa766              # double 0.83132479118397096
	.quad	0x3fecf30c9edd4926              # double 0.90466910389139765
	.quad	0x3fe96262da89f9fb              # double 0.7932600277270575
	.quad	0x3fe1652fe3d90670              # double 0.54360193730845019
	.quad	0x3fe19fa81cac6039              # double 0.55073934173834183
	.quad	0x3fe46b82d85e26a9              # double 0.63812391528445744
	.quad	0x3fe3cad3c4b1027d              # double 0.61850918213174533
	.quad	0x3fe9d70857da265c              # double 0.8074990955221426
	.quad	0x3fdd8c7c8932d1f4              # double 0.46169961355488387
	.quad	0x3fe272bac44bea2a              # double 0.57650507296722719
	.quad	0x3fcc768ebce4babc              # double 0.22236808989824464
	.quad	0x3fe4ca62efdcdacb              # double 0.64970537994562372
	.quad	0x3fe1e26f1075a4e7              # double 0.55889085020785678
	.quad	0x3fe71cbe5a479d04              # double 0.72225873596917767
	.quad	0x3fd4b40e1a9162b8              # double 0.32348969072840417
	.quad	0x3fd997ea80a7db2e              # double 0.39989721836120651
	.quad	0x3fe2b4a0009517bd              # double 0.58454895128010487
	.quad	0x3fbc22afbd7fc2d0              # double 0.10990427376215028
	.quad	0x3fdce6f46569dcb8              # double 0.45159635451950519
	.quad	0x3fd1e864bc427638              # double 0.27980917343834077
	.quad	0x3feba9405a768b77              # double 0.86441056889121526
	.quad	0x3fe0a92be6856e6e              # double 0.52065081618952802
	.quad	0x3f6c6f6f5783b800              # double 0.003471105064924096
	.quad	0x3fc5131e33a1fad8              # double 0.16464593430642682
	.quad	0x3fefecde5f732c69              # double 0.9976646293884076
	.quad	0x3fe7f67417d0949d              # double 0.74883465434381302
	.quad	0x3fe987254b0f618c              # double 0.79774727497265152
	.quad	0x3feb0d0d2482b2eb              # double 0.84534318095174166
	.quad	0x3fec8ae79fdb908d              # double 0.89195615026666675
	.quad	0x3fe910b6d0feaf46              # double 0.78329029864605881
	.quad	0x3fe2a7ed5b1c5ec3              # double 0.58299892230112282
	.quad	0x3fdbf3ca9e626142              # double 0.43675485102859934
	.quad	0x3fead7d8018a3c37              # double 0.83884811688211058
	.quad	0x3fe7162b02e0eee1              # double 0.72145605623469689
	.quad	0x3fd0e1180b085b38              # double 0.26373864247709689
	.quad	0x3fe5eae198910e15              # double 0.68492202566307248
	.quad	0x3feb57877b4225b7              # double 0.8544347197904959
	.quad	0x3fe4edb15e8e8710              # double 0.65401524036517067
	.quad	0x3fd6bcffb8434d1a              # double 0.35528557772086489
	.quad	0x3fde89b8eca97458              # double 0.47715590583340406
	.quad	0x3fe9156831ea7867              # double 0.78386316060256156
	.quad	0x3fce0e5e9f869d70              # double 0.2348135260519757
	.quad	0x3feb97025c08742d              # double 0.86218374228667971
	.quad	0x3fa61da3e4ad3e50              # double 0.043194886841430802
	.quad	0x3feb68cc20c6549c              # double 0.85654264832796256
	.quad	0x3fdd5bad886e4fbe              # double 0.45872057269411559
	.quad	0x3febb82c858deb3d              # double 0.86623216709936168
	.quad	0x3fe0818b5669b80e              # double 0.51581351163417977
	.quad	0x3fecad5ec04b54c2              # double 0.89616334493134553
	.quad	0x3fb28b210d68dbe8              # double 0.072435441755132168
	.quad	0x3fe07b40efe23f32              # double 0.51504561283397821
	.quad	0x3fe61484d01f929f              # double 0.69000473641479576
	.quad	0x3fef774f51d7cc84              # double 0.9833141897673987
	.quad	0x3fd8269c553a3548              # double 0.37735660861001863
	.quad	0x3feb8695abcbb097              # double 0.86017879060593117
	.quad	0x3fe41cee6f603516              # double 0.62853166344726463
	.quad	0x3fe1c06797c9706b              # double 0.55473689695237505
	.quad	0x3fceb01b0d6b7b8c              # double 0.23974931864992433
	.quad	0x3fe39d0a8a2d7bd1              # double 0.61292006481004979
	.quad	0x3fe22af6ca7f638c              # double 0.56774463224711402
	.quad	0x3fa1c87307c0da40              # double 0.034732432075931019
	.quad	0x3fe677f2b8dab1f1              # double 0.70214210609770877
	.quad	0x3fe8d468f0eb1f93              # double 0.77592894606003637
	.quad	0x3fcde7fe0c2096ec              # double 0.23364234535363637
	.quad	0x3fe0559f40f5d176              # double 0.5104519146685067
	.quad	0x3fd99fc522b4ff26              # double 0.40037659062726261
	.quad	0x3fe7867041837626              # double 0.73516094966516188
	.quad	0x3fae3dee3ea33510              # double 0.059066243311102551
	.quad	0x3fcdcca66e75bfbc              # double 0.23280792611649115
	.quad	0x3fba3339de0b7040              # double 0.10234414740574582
	.quad	0x3fc2e993c2078234              # double 0.14775320982063678
	.quad	0x3fc95756fff21440              # double 0.19797790047974395
	.quad	0x3fdf1e3a5796cd04              # double 0.48621996453876215
	.quad	0x3fca38bfc00ac810              # double 0.20485684277588279
	.quad	0x3fe503f6b597d466              # double 0.65673385112189631
	.quad	0x3fc7e26eadd09694              # double 0.18659766661692301
	.quad	0x3fd6941bd32a4d54              # double 0.35278983708959299
	.quad	0x3fc42367ef299fb8              # double 0.15733050515995983
	.quad	0x3feb0f63c4c982a4              # double 0.84562862811079186
	.quad	0x3fd3f9921d33e75a              # double 0.31210759021597811
	.quad	0x3feb741ad0ff7c40              # double 0.85792294330520491
	.quad	0x3fc059da8c71e844              # double 0.12774211747802344
	.quad	0x3fe809018615da60              # double 0.7510993594031099
	.quad	0x3fe00ec942d67554              # double 0.50180495313876827
	.quad	0x3fecf75ceefa007f              # double 0.90519568133460371
	.quad	0x3fe4b14923d8fc63              # double 0.64664132119640916
	.quad	0x3fb6a435f698b8d8              # double 0.088443157867661326
	.quad	0x3fb828fb6c0ea430              # double 0.094375337487364374
	.quad	0x3fc3bd2706a3735c              # double 0.15420997451920015
	.quad	0x3fd4ced514b70de4              # double 0.32512404463724764
	.quad	0x3fdf29952821cf64              # double 0.48691300315043962
	.quad	0x3fdddeed83b029b2              # double 0.46673143253488114
	.quad	0x3fdaa54fbe6e04ea              # double 0.4163398132005357
	.quad	0x3fccb7612059b950              # double 0.2243462951623294
	.quad	0x3fc2fd662aefc4a4              # double 0.14835812660706893
	.quad	0x3fee72cd7fe3dfd2              # double 0.95151400545636933
	.quad	0x3f8c2cfff91a7600              # double 0.01375770548775801
	.quad	0x3fa44ab2ebfcc560              # double 0.03963240748124508
	.quad	0x3fdfb9d1c618175a              # double 0.49571651787879534
	.quad	0x3fb13ff6fad63e00              # double 0.067382274856065294
	.quad	0x3feeb9270e93c67d              # double 0.96010163161390915
	.quad	0x3fb793117f012f78              # double 0.092087834841718563
	.quad	0x3fe6ac903a167643              # double 0.70856486649763217
	.quad	0x3fe425f1bcce0da5              # double 0.62963187099415008
	.quad	0x3fe1916e4ef9d606              # double 0.54900279450402034
	.quad	0x3febc42e0cc81597              # double 0.86769773956682428
	.quad	0x3fe77753c58c611d              # double 0.73331631263411945
	.quad	0x3fe09ba06fd47fff              # double 0.51899740068256495
	.quad	0x3fd8c2c77d9101b0              # double 0.38688838255259395
	.quad	0x3fdcf396e0a34a70              # double 0.45236751496592031
	.quad	0x3fe57ed67f663e49              # double 0.67173313982670735
	.quad	0x3fa7b9e4e778ca90              # double 0.046340134864654492
	.quad	0x3fecbca6887debe4              # double 0.89802862795420113
	.quad	0x3fe1b302707eca5d              # double 0.55310174915059529
	.quad	0x3fe4e9f3668f33b9              # double 0.65355844527368057
	.quad	0x3fe748cf5def592f              # double 0.72763794275923555
	.quad	0x3fde9c1d5b9e5ea2              # double 0.4782784838402937
	.quad	0x3fcc6f18fb7e39b4              # double 0.22214042930541
	.quad	0x3fefa0060c63b01d              # double 0.98828413410001625
	.quad	0x3fe077e6dbb99b89              # double 0.51463644900364713
	.quad	0x3fde70b2861ba38e              # double 0.47562850090485476
	.quad	0x3fded3bc78988694              # double 0.4816733529752153
	.quad	0x3f861028bc629ac0              # double 0.010773008584079036
	.quad	0x3fdd5001935db5c6              # double 0.45800818816391276
	.quad	0x3fdae69a31632e2c              # double 0.42032484839430384
	.quad	0x3fe841a6fc452bf0              # double 0.75801419517062918
	.quad	0x3fe2d1f0f370afd4              # double 0.5881275896731446
	.quad	0x3fca5bb1cd035c1c              # double 0.20592329512030083
	.quad	0x3feaa74abe1e10e4              # double 0.83292138225854417
	.quad	0x3fef7ddaa21d111e              # double 0.98411304152299173
	.quad	0x3fe356bf7e4f3da3              # double 0.60433935804205807
	.quad	0x3fea97d59ce835fe              # double 0.83103447576439726
	.quad	0x3fee57c0f1ef2589              # double 0.94821212055937665
	.quad	0x3feae771bfefcea5              # double 0.84075248229642752
	.quad	0x3fce8386614153c0              # double 0.23838882206714906
	.quad	0x3fc50add9825fef0              # double 0.16439409188387044
	.quad	0x3fe720a9d106c434              # double 0.72273722482180469
	.quad	0x3feeb0d078669a56              # double 0.95908378139285833
	.quad	0x3fea48873cb6fc08              # double 0.82135354860645382
	.quad	0x3fe9bcd6a9bd8410              # double 0.80430157806779512
	.quad	0x3feb379da3da1c9b              # double 0.85053903581946899
	.quad	0x3fe4c0a838dffcae              # double 0.64851771458042662
	.quad	0x3fe71707aa6a6198              # double 0.72156127247130808
	.quad	0x3fea7e3313370050              # double 0.82790521386051275
	.quad	0x3fd66ddd60ece664              # double 0.35045561280603565
	.quad	0x3fe93d4bb566cfc4              # double 0.78873238973618997
	.quad	0x3fd860e39f512616              # double 0.38091364439296294
	.quad	0x3fe73812024ba4de              # double 0.72559452484452058
	.quad	0x3fb1ca6f7caf6330              # double 0.069495170536708839
	.quad	0x3fdb580943176830              # double 0.42724830200097852
	.quad	0x3fe1a62af5a6084a              # double 0.55153415659175065
	.quad	0x3fe999602759fd23              # double 0.79997260747760313
	.quad	0x3feee679d82dcb8d              # double 0.96563427183569816
	.quad	0x3fe9cf98f38cb4ec              # double 0.80659148758209431
	.quad	0x3fe9ecf7e9f5cf67              # double 0.81017680831290029
	.quad	0x3feb7f1051f944d7              # double 0.85926071176995833
	.quad	0x3fcdaa3cc96585d0              # double 0.23175773462121052
	.quad	0x3fb127b7e8ef5f80              # double 0.067012304657849242
	.quad	0x3fd1db71691940b8              # double 0.27901873839892799
	.quad	0x3f7dcb4ef0ea1200              # double 0.0072739680896387604
	.quad	0x3fddd40b525feb2a              # double 0.4660671524467711
	.quad	0x3fd4028f67048fd8              # double 0.31265626011213277
	.quad	0x3feace0f7a93f2d6              # double 0.83765386525154883
	.quad	0x3fdaecc9299794ee              # double 0.42070225774507619
	.quad	0x3fe7cb3fbde6059a              # double 0.74356066789202946
	.quad	0x3fdb275dab221296              # double 0.42427770340172211
	.quad	0x3fe6e3bd5c48909e              # double 0.71530025505173334
	.quad	0x3fd838e64a2383fe              # double 0.37847287407026886
	.quad	0x3fcba3462ead5520              # double 0.21592023162035279
	.quad	0x3fdf3d738874eb56              # double 0.48812568975306669
	.quad	0x3fa0048e8ff803b0              # double 0.031284766268078967
	.quad	0x3fdc15bd40e279c6              # double 0.43882685982125869
	.quad	0x3fee6ee6128d7cfc              # double 0.95103744147846169
	.quad	0x3fcc165188b6f300              # double 0.21943110633392138
	.quad	0x3febab9412a050b3              # double 0.86469463003097358
	.quad	0x3fa92a4c170d3c40              # double 0.049150827230385108
	.quad	0x3fecccc5ff12c15c              # double 0.89999675578114191
	.quad	0x3fc35e20f4cc7d34              # double 0.15131008103433319
	.quad	0x3feb0f0cb051f64e              # double 0.84558710515529767
	.quad	0x3fe2f0cb7991db13              # double 0.59189389938441861
	.quad	0x3fe6ccb7f50391df              # double 0.71249006132398651
	.quad	0x3fb794781a55b4b8              # double 0.092109209470168874
	.quad	0x3fe58974b1d72a2a              # double 0.67302927717657224
	.quad	0x3fd19cbaf49db076              # double 0.27519105804709143
	.quad	0x3fe7d32cc300a4a0              # double 0.74452817999294396
	.quad	0x3fcedc99edf9dddc              # double 0.24110721702503113
	.quad	0x3fc46289cd262144              # double 0.15925714985884032
	.quad	0x3fc503567f7ebf70              # double 0.16416436410281277
	.quad	0x3fc67ea151baea18              # double 0.17573944559792731
	.quad	0x3fac5671d739cee0              # double 0.055347020647699585
	.quad	0x3fd54016d1a9197c              # double 0.3320366904703389
	.quad	0x3fea0861a053113f              # double 0.81352311433196423
	.quad	0x3fe1a50fcc017a95              # double 0.55139913411024344
	.quad	0x3f818fda6a9f20c0              # double 0.0085751594341590964
	.quad	0x3fdaff4bd2ab9f80              # double 0.42183204243928429
	.quad	0x3fe97eca08a37706              # double 0.79672719657148217
	.quad	0x3fd6176ffffdf758              # double 0.3451805114672104
	.quad	0x3fc58736342deedc              # double 0.1681888346464494
	.quad	0x3fd2a8c9c7d2997c              # double 0.29155201448374846
	.quad	0x3fda78f594139770              # double 0.41363276920889458
	.quad	0x3fe92deff04815e2              # double 0.78685757570263726
	.quad	0x3fa7fae7e8502ff0              # double 0.046836135014103664
	.quad	0x3fb3604a8a67f580              # double 0.075688036718892348
	.quad	0x3fc5956be6dd7800              # double 0.16862248203955232
	.quad	0x3fe74e3df4d7578a              # double 0.7283010274938857
	.quad	0x3fd9f789b71b3816              # double 0.40573351747014053
	.quad	0x3fefd50a005b3001              # double 0.99475574559755852
	.quad	0x3fe81047f47384e8              # double 0.75198743576416138
	.quad	0x3fe1e0586f194c0e              # double 0.55863591860759398
	.quad	0x3fec4d77a9f4ac22              # double 0.88445647425158236
	.quad	0x3fbd71b6e3eb5690              # double 0.11501639427600652
	.quad	0x3fe909691b6fba1d              # double 0.78239875181845131
	.quad	0x3fd74caf5ee9e9a4              # double 0.36405548352163408
	.quad	0x3fd3fc673e3bd23e              # double 0.31228047444827556
	.quad	0x3fe4e352b2dc2553              # double 0.65274939473708071
	.quad	0x3fec657e756c98c7              # double 0.88738940176406167
	.quad	0x3fda34fea56774f2              # double 0.40948454048869032
	.quad	0x3fde00490dfe3952              # double 0.46876741758832907
	.quad	0x3fe428cbe4ae9954              # double 0.62998003639658373
	.quad	0x3fe01ac034a44ddd              # double 0.50326547891239282
	.quad	0x3fe7112dcdc7b236              # double 0.72084703627985536
	.quad	0x3fe7b65d1cd8ba1d              # double 0.74101119646167357
	.quad	0x3fed034794d246a7              # double 0.90665034357717367
	.quad	0x3fee0b995d14ba2c              # double 0.93891590289951443
	.quad	0x3fdab06f16ac3bbc              # double 0.41701867307795815
	.quad	0x3fc36ca3570c49e4              # double 0.15175287008658167
	.quad	0x3feea9c7f3719425              # double 0.95822522685614741
	.quad	0x3feb253f7ca6c53f              # double 0.84829687448488034
	.quad	0x3fd15daec4df6320              # double 0.27134293771591622
	.quad	0x3fcabeafb6279ad0              # double 0.20894428629181627
	.quad	0x3fe1e05bee40fc78              # double 0.55863758596377888
	.quad	0x3feaff932bb2a5c0              # double 0.84369810614332863
	.quad	0x3fb2d10a1ac57458              # double 0.073502189193690781
	.quad	0x3fe79224a7fb6048              # double 0.73658974465343707
	.quad	0x3fba440511391a08              # double 0.1026003996895285
	.quad	0x3fee1a0ddf14169a              # double 0.94068044252408645
	.quad	0x3f9733076c701e40              # double 0.02265559768059533
	.quad	0x3fbb26061cdaa440              # double 0.10604894833035505
	.quad	0x3fdb4bbdd07be9e0              # double 0.42649789199609067
	.quad	0x3fea0df6c416c87d              # double 0.81420458124763651
	.quad	0x3fee129ba74d65ee              # double 0.93977148700940716
	.quad	0x3fdde7e4d4b7fcca              # double 0.46727867863951345
	.quad	0x3fd1b3653aa12f76              # double 0.27657442784833763
	.quad	0x3feb14303bc0ecac              # double 0.84621440573336803
	.quad	0x3fcbbc67acc572a0              # double 0.21668716369722052
	.quad	0x3fe873a3b9c55c60              # double 0.76411615641962882
	.quad	0x3fe4f0f384c1997b              # double 0.65441299370722505
	.quad	0x3fe4d2734d1a116b              # double 0.6506897455115398
	.quad	0x3fda0d13e5fee3ea              # double 0.40704820118440799
	.quad	0x3feff10cdcaf509d              # double 0.99817507841591501
	.quad	0x3fea3471dd484b4b              # double 0.81890195101946384
	.quad	0x3fcbbf63901bfcec              # double 0.21677822624767573
	.quad	0x3fdc3785b55ce1e0              # double 0.44088881217206044
	.quad	0x3fe8328ab1e62c1c              # double 0.75616965051574736
	.quad	0x3fd66a83be9eb1c6              # double 0.35025113692497845
	.quad	0x3fe398606197bc46              # double 0.61235064564778763
	.quad	0x3fbfbfddf8296f50              # double 0.12402140911711723
	.quad	0x3fe037dcf2bb0d66              # double 0.50681922348341568
	.quad	0x3fe7e546c376fe70              # double 0.74673784424517287
	.quad	0x3fe682af0c33696c              # double 0.70345260985349745
	.quad	0x3fecfcff911e4892              # double 0.90588358252922974
	.quad	0x3fee2574e6aacc68              # double 0.94207234432395825
	.quad	0x3fd596351e1d38ce              # double 0.33729293766817825
	.quad	0x3fe8ff2d90f88e94              # double 0.78114965738901043
	.quad	0x3fe96b623a67cffb              # double 0.79435836226775736
	.quad	0x3fe163dca285c123              # double 0.5434401678340105
	.quad	0x3fe0088e937230c5              # double 0.50104454801614706
	.quad	0x3fd715b7e1fc4b12              # double 0.36070057934664235
	.quad	0x3fe472f6768f64f9              # double 0.63903353840137733
	.quad	0x3fefd3f60730e33f              # double 0.9946241512726387
	.quad	0x3f8f53070ff62a80              # double 0.015295081305130909
	.quad	0x3fe4d8f55d592a5f              # double 0.65148418647852313
	.quad	0x3fe60a975aaff609              # double 0.68879287445423742
	.quad	0x3feb4990d7466699              # double 0.85273019834422137
	.quad	0x3fe40b7d4e9618d9              # double 0.62640252446069689
	.quad	0x3feaa5155539f3f6              # double 0.83265177388932332
	.quad	0x3fe0d3ea134721f8              # double 0.52586845174033581
	.quad	0x3fdaa4814329820e              # double 0.41629058417132192
	.quad	0x3fe920a5c2c876ea              # double 0.78523529094283373
	.quad	0x3fe2c62c1abb80b7              # double 0.58669095250299719
	.quad	0x3fe0b6aa0629f6da              # double 0.52229787067309563
	.quad	0x3fa7a1277a638940              # double 0.046151384058037426
	.quad	0x3fd72ec44f176e7e              # double 0.362229420888731
	.quad	0x3fc0774879fd1ba8              # double 0.12864023167113925
	.quad	0x3fc07d20380934d4              # double 0.12881853805666899
	.quad	0x3feb495d0b0c7dcb              # double 0.85270549924819627
	.quad	0x3fe19950c6873f9a              # double 0.54996527457295774
	.quad	0x3fd10bf95517e7f6              # double 0.26635583219433501
	.quad	0x3fe19b505f1c23cd              # double 0.55020922256618976
	.quad	0x3fce8c1cf8d4ea5c              # double 0.23865091466889765
	.quad	0x3fd84090793dc93e              # double 0.37894069519019868
	.quad	0x3fe74ded4947b2a0              # double 0.72826256096375985
	.quad	0x3fe200aeeecb838c              # double 0.56258341445583104
	.quad	0x3fdf9f8400a89836              # double 0.49411106170953489
	.quad	0x3fdb3abcd5352958              # double 0.42546006032047989
	.quad	0x3fdcfdffc1e570c0              # double 0.45300287184887722
	.quad	0x3fc4d55b0bd3969c              # double 0.16276109769312519
	.quad	0x3fe63f9cf4149a03              # double 0.69526527091949253
	.quad	0x3fe8ebf8138d8674              # double 0.77880481547272362
	.quad	0x3fe0e2a162d7b85b              # double 0.52766484551626591
	.quad	0x3fed680a2a868d9b              # double 0.91895016008168129
	.quad	0x3fe160767f7a0bab              # double 0.54302525422860037
	.quad	0x3f9f1ba403460720              # double 0.030378878307153134
	.quad	0x3fc60f07fce70a50              # double 0.17233371590380608
	.quad	0x3feaba16a7ba8f17              # double 0.83521588096161536
	.quad	0x3fe3a6a87c7c7f48              # double 0.61409401239141292
	.quad	0x3fed914e33eab67f              # double 0.92398748531350339
	.quad	0x3fdc5d0de0eadb40              # double 0.4431795784434378
	.quad	0x3fd469bdd8fc13ec              # double 0.31895395460043008
	.quad	0x3fd1053e52227858              # double 0.26594503422700688
	.quad	0x3fc5a6ceab27b714              # double 0.16915305478271903
	.quad	0x3fdb98bb1b14963e              # double 0.43119695324489615
	.quad	0x3f7ca9e1d8417980              # double 0.0069979497967253002
	.quad	0x3fd695f79b03363e              # double 0.35290327203697192
	.quad	0x3fdcdc6289227d16              # double 0.45095122711241353
	.quad	0x3fe667214499da1a              # double 0.70008910559301119
	.quad	0x3feda28f906d10d1              # double 0.92609384735308187
	.quad	0x3fecb05c9f77638b              # double 0.89652854104780155
	.quad	0x3fd0409e1010ad90              # double 0.25394393509733337
	.quad	0x3fd18f74b345ff7a              # double 0.27438085086031772
	.quad	0x3fef8ea9a5c7783b              # double 0.98616487864251867
	.quad	0x3fcc5ac686f6d038              # double 0.22152024831814443
	.quad	0x3fefd29b21cb9069              # double 0.99445873833293518
	.quad	0x3fec2840199cd9c4              # double 0.87991337778549238
	.quad	0x3fbc8d2ae10d71c8              # double 0.11152904505201555
	.quad	0x3fd354a56f9becae              # double 0.30204139613460768
	.quad	0x3fdb3563734426e2              # double 0.42513357407061225
	.quad	0x3fe35cda2c2711c2              # double 0.6050845014911419
	.quad	0x3fe5b9d193c7963b              # double 0.67893294203958676
	.quad	0x3fe05abeb348eafb              # double 0.5110772611290878
	.quad	0x3fdf21106be7e50c              # double 0.48639307534865917
	.quad	0x3fed385ba46673f9              # double 0.91312963590064478
	.quad	0x3fdaee0577ed1a42              # double 0.42077767097035601
	.quad	0x3fe454808e8ea5d2              # double 0.63531520693976007
	.quad	0x3fe60c71b9120c96              # double 0.68901907106955451
	.quad	0x3f61236f3a73ba00              # double 0.0020920917919433624
	.quad	0x3fea7fb5f515cd53              # double 0.8280896937198271
	.quad	0x3feeece2697d06e7              # double 0.96641655543518545
	.quad	0x3fdd607dba93c648              # double 0.4590143510859872
	.quad	0x3feed37ffd447877              # double 0.96331786600400348
	.quad	0x3fe5c7a05d4b878c              # double 0.68061845990836067
	.quad	0x3fd5425e828e4c4e              # double 0.33217585324854759
	.quad	0x3fe44923d8a88a81              # double 0.63392822567068674
	.quad	0x3fe7031970dd1ccf              # double 0.71912834209151721
	.quad	0x3faf69cfbb1cf440              # double 0.061354152289347486
	.quad	0x3fe01a4991d488eb              # double 0.50320890886748992
	.quad	0x3fb22d5d027c5fb0              # double 0.071004689318555192
	.quad	0x3fa1a80907d01e80              # double 0.03448513241170037
	.quad	0x3fab56413756f650              # double 0.053392446523031212
	.quad	0x3feaf36c1cb11cbc              # double 0.84221463779331129
	.quad	0x3fd459d1caec9022              # double 0.31798214737705355
	.quad	0x3fb07f8dc419c210              # double 0.064446316124083802
	.quad	0x3fc1bec883a86280              # double 0.1386347430095789
	.quad	0x3fed46ec2258bdce              # double 0.91490751941994986
	.quad	0x3fb6a34b80b515c8              # double 0.088429182932563966
	.quad	0x3fe1e52ebf4e2bbb              # double 0.55922639240576844
	.quad	0x3feacf5bd7adfdc4              # double 0.83781234860355668
	.quad	0x3fed12dfdf205f71              # double 0.90855401591669083
	.quad	0x3fd3888272b1d4e2              # double 0.3052068824830042
	.quad	0x3fe78ed5b41d2dc8              # double 0.73618588617812808
	.quad	0x3fe3bbe6cdbbf20b              # double 0.61668720419362566
	.quad	0x3fef04b1f400908f              # double 0.96932313591652696
	.quad	0x3fdda0518a411cbe              # double 0.4629100656642996
	.quad	0x3fc88f2958a21578              # double 0.19186894252576869
	.quad	0x3fdec8558c519aa4              # double 0.48097742751125794
	.quad	0x3fd84397a5518d44              # double 0.37912551063910294
	.quad	0x3fea2cf167e5c28c              # double 0.81798620502930097
	.quad	0x3fe0ae47821becb9              # double 0.52127433216028074
	.quad	0x3fcd529238ab7be8              # double 0.2290823723514841
	.quad	0x3fe441d2d42c05a6              # double 0.63303510131679697
	.quad	0x3fed55f850989f5c              # double 0.91674438229982113
	.quad	0x3fcc3313eaef897c              # double 0.22030877086133305
	.quad	0x3fda97b18001af20              # double 0.41550862789766718
	.quad	0x3fae7f84d8e826a0              # double 0.059566642263303438
	.quad	0x3fc3e292d3d49504              # double 0.15535197585374061
	.quad	0x3feda7ed95551641              # double 0.92674903074721027
	.quad	0x3f4e1cb38c261c00              # double 9.1894881215714985E-4
	.quad	0x3feb6bf9bf0cf946              # double 0.85693061174951235
	.quad	0x3fd2e219e4400476              # double 0.29505011835141859
	.quad	0x3febe7a265c95856              # double 0.87202567939926712
	.quad	0x3fe559bd24354b44              # double 0.66720444747839069
	.quad	0x3fd82217a1bea8c4              # double 0.37708082957636813
	.quad	0x3fd0f992b61165d8              # double 0.26523273258280033
	.quad	0x3fc50061d007dda4              # double 0.16407416017294196
	.quad	0x3fc07a75f1b14ed4              # double 0.12873720456501891
	.quad	0x3feec6b6c9a11b78              # double 0.96175708180167784
	.quad	0x3fc65a71627290f8              # double 0.17463509852417025
	.quad	0x3feaf31ab11e0d3e              # double 0.84217581361045979
	.quad	0x3fd23f5459fe343a              # double 0.28511532581689247
	.quad	0x3fef51714323bcaa              # double 0.97869170296862262
	.quad	0x3fe4950a200d460b              # double 0.643193304635305
	.quad	0x3fda90c5bd9562ca              # double 0.41508620752351233
	.quad	0x3fe02aac98af4fe1              # double 0.5052092535138365
	.quad	0x3feebd4592ea6923              # double 0.96060446447817005
	.quad	0x3fd0fa9d1fefbb78              # double 0.26529625052255978
	.quad	0x3febd90a91aab549              # double 0.8702442975096939
	.quad	0x3fd14ac682f3c2b6              # double 0.27018893039989267
	.quad	0x3fe0016f4b41aa13              # double 0.50017513941321778
	.quad	0x3fd59a0b150baf8a              # double 0.33752705626715651
	.quad	0x3fc3c43121f59050              # double 0.15442480238118828
	.quad	0x3fa319b7b5736520              # double 0.037305584811927028
	.quad	0x3fe375efa4b2b46c              # double 0.60814649741736337
	.quad	0x3fed82ecc990bea8              # double 0.92223204963916761
	.quad	0x3fe756b789ab18d4              # double 0.72933556450223103
	.quad	0x3fecdeb6977e9386              # double 0.90218667591817403
	.quad	0x3fe440d67d917516              # double 0.63291477704084076
	.quad	0x3fea5ff74dc0b1e4              # double 0.82421460329129248
	.quad	0x3fcc7df4d3494be8              # double 0.22259388272013259
	.quad	0x3fdf8b3f50f67184              # double 0.49287398249159531
	.quad	0x3fcd4a4f9422b084              # double 0.22883028729609489
	.quad	0x3fcdb9a2032f3364              # double 0.23222756534087374
	.quad	0x3fc9506993525eac              # double 0.19776649182744188
	.quad	0x3fd678e81d35bbc6              # double 0.35112955906418752
	.quad	0x3fd69708e5cdc892              # double 0.35296842996388833
	.quad	0x3fec95e2f79970ca              # double 0.89329670295003294
	.quad	0x3fd5cf71a4268e0e              # double 0.34078637152035263
	.quad	0x3fe78a614d5ec07a              # double 0.73564210044243272
	.quad	0x3fe42f2e629c0c56              # double 0.63075942287140196
	.quad	0x3fe0f8ec1dca10b3              # double 0.53038602655626332
	.quad	0x3febb9dee3011106              # double 0.86643928848982976
	.quad	0x3fd3925acd32bae8              # double 0.30580778159030197
	.quad	0x3fe66795f530c420              # double 0.700144747626954
	.quad	0x3fe0ed4f9563ce9c              # double 0.52896861245831728
	.quad	0x3fe837e2bbaed58f              # double 0.75682198197198314
	.quad	0x3fed4221b814200a              # double 0.91432271912435792
	.quad	0x3fcd61cce50fd6b0              # double 0.22954713043843844
	.quad	0x3fe5b05d6a3ef3e7              # double 0.6777789187541402
	.quad	0x3fef4134f00ef038              # double 0.97670981298825321
	.quad	0x3fee9f716b27c17c              # double 0.95696326187866942
	.quad	0x3fdc07985c7a4ff2              # double 0.43796357184441981
	.quad	0x3fed446e3e7d7a21              # double 0.91460334973436741
	.quad	0x3fb138ecc6a966e0              # double 0.067274855138204526
	.quad	0x3fef0c271fb7b8cc              # double 0.97023349947792203
	.quad	0x3f9b25cdce749d20              # double 0.026511398054165913
	.quad	0x3fe9af40c22f6067              # double 0.80264318396349388
	.quad	0x3fd58597334a11e6              # double 0.33627872475361043
	.quad	0x3fdc307c309e1896              # double 0.44045929668244221
	.quad	0x3fea5d78199f8074              # double 0.82390980724814122
	.quad	0x3fc9c7b4058e30f0              # double 0.20140695830594479
	.quad	0x3fefe7c6bdddcd08              # double 0.99704300959857139
	.quad	0x3fe64f9bd7ac0442              # double 0.69721786616731429
	.quad	0x3fe9cce8617efcbf              # double 0.80626315157123674
	.quad	0x3fdf2703e088c76c              # double 0.48675629546334309
	.quad	0x3fd3e8a748ae3ed0              # double 0.31107503984183626
	.quad	0x3fecfcb9982fa053              # double 0.90585021709285696
	.quad	0x3fe036af60f850d0              # double 0.50667542399835419
	.quad	0x3fd85f1b8fa10ba2              # double 0.38080491091039381
	.quad	0x3fdaa58656b8be04              # double 0.41635282963667941
	.quad	0x3fa801818615a780              # double 0.046886489503619622
	.quad	0x3fe8a1808bf05c29              # double 0.76971461612527492
	.quad	0x3fd16c5747dd3458              # double 0.2722376062200218
	.quad	0x3fe7c215f499f7df              # double 0.74244210981100511
	.quad	0x3fcd97e950911b44              # double 0.23119846757819051
	.quad	0x3fc05929be5abb10              # double 0.12772104067467938
	.quad	0x3fecc26347415181              # double 0.89872898022672143
	.quad	0x3fef9fe6bbbd9f86              # double 0.98826920192821954
	.quad	0x3fe60cad4357650d              # double 0.68904746201147449
	.quad	0x3feaf52aac117f78              # double 0.84242757422542436
	.quad	0x3feeb18dd6df7fcf              # double 0.95917407958403966
	.quad	0x3fd213f7567ea75e              # double 0.28246863791229326
	.quad	0x3fb964a6654460d0              # double 0.09919204685536731
	.quad	0x3fe5aa3b86382e89              # double 0.67703033652056022
	.quad	0x3fe91c6338a09b9b              # double 0.78471528110536626
	.quad	0x3fd8b9f7c756492a              # double 0.38635057894238634
	.quad	0x3fd6887b57d10764              # double 0.35208018852073608
	.quad	0x3fb6bb3d0739f410              # double 0.088794531120541586
	.quad	0x3fe587067cb5c30e              # double 0.67273258550093984
	.quad	0x3fded27256ae1608              # double 0.48159464325758039
	.quad	0x3fb1bf9e5fafffa8              # double 0.069330118523793005
	.quad	0x3fef64c668f784cc              # double 0.98105164052335558
	.quad	0x3fefabffed6eb973              # double 0.98974605916536828
	.quad	0x3f83c84df9be1840              # double 0.0096593944397335151
	.quad	0x3fc811555adccd80              # double 0.18802897392889051
	.quad	0x3fd1dff3cbef81e2              # double 0.27929396548827701
	.quad	0x3fcfc4e8d886b39c              # double 0.24819670269553462
	.quad	0x3fe36d581f9b36cf              # double 0.60709768460375269
	.quad	0x3fdc31446495e2c0              # double 0.44050702879716752
	.quad	0x3fef06b8705f6f88              # double 0.96957036922275197
	.quad	0x3fead4dde58e2bed              # double 0.83848471484213649
	.quad	0x3fc1feacaeb54a54              # double 0.14058455019638194
	.quad	0x3fdbfbb188f12cb8              # double 0.43723715184450951
	.quad	0x3fee97dfe3fffe58              # double 0.95603937655682624
	.quad	0x3fbcdd0be9832db0              # double 0.11274790240275112
	.quad	0x3fec313237d04698              # double 0.88100539113129894
	.quad	0x3febc683db2018a6              # double 0.86798279569554349
	.quad	0x3fd87e86136d0fec              # double 0.38272239586899448
	.quad	0x3fdc270688e5974c              # double 0.43988192910034196
	.quad	0x3fb1cbf491a5c798              # double 0.06951836162423175
	.quad	0x3fe8e8aa2b85a9eb              # double 0.77840145588316767
	.quad	0x3fe02091a0868a23              # double 0.50397569039006773
	.quad	0x3fd2c9d9f9b4c0ae              # double 0.29357003579481045
	.quad	0x3fdc842f9e245528              # double 0.44556799357936194
	.quad	0x3fd697bf659cca52              # double 0.35301194117633827
	.quad	0x3fa956d73fca8ef0              # double 0.049490667855279002
	.quad	0x3fd8e9405a1079f8              # double 0.38923653407428516
	.quad	0x3fe90a7cf5102ddb              # double 0.78253028739839736
	.quad	0x3fe42dc165bbbd97              # double 0.63058538312718582
	.quad	0x3fe9eb788fb8cfa7              # double 0.80999401159941875
	.quad	0x3fdca476d334d6ea              # double 0.44753809571862624
	.quad	0x3fe12c025cd9fbd3              # double 0.53662222037371021
	.quad	0x3fee1a18bd33638c              # double 0.94068562463063321
	.quad	0x3fe3f222c62bd65a              # double 0.62330759721107687
	.quad	0x3fe9a738cda991d8              # double 0.80166282814439693
	.quad	0x3fecc63d03a3f7d5              # double 0.89919901572261074
	.quad	0x3fe670713435620f              # double 0.70122585484483746
	.quad	0x3fde3f8cef28abd8              # double 0.47262881617888075
	.quad	0x3fc2433aef37bc4c              # double 0.14267670326759896
	.quad	0x3fec8c00d8c81050              # double 0.89209024753700739
	.quad	0x3fc9bf6d13a75a68              # double 0.2011543603864141
	.quad	0x3fe29fd6e98d54d0              # double 0.58201165786399578
	.quad	0x3fb78da8d910ce58              # double 0.092005303377669434
	.quad	0x3fe8789c423593b4              # double 0.76472294742108326
	.quad	0x3fe66fad7638da41              # double 0.70113251772165353
	.quad	0x3fe594a1d2ca84dc              # double 0.67439356966147157
	.quad	0x3fc766a183fd85a4              # double 0.18281954712715021
	.quad	0x3fec74163ba6206b              # double 0.88917075777227461
	.quad	0x3fe1fa67683868d9              # double 0.56181688647782402
	.quad	0x3f9bcedca7821a00              # double 0.027156303142442439
	.quad	0x3fdf2eec83a5c720              # double 0.48723900657852148
	.quad	0x3fdbeb18371961f4              # double 0.43622403507973151
	.quad	0x3feecb42886a5689              # double 0.96231199878339268
	.quad	0x3fd388e2e5203c50              # double 0.30522987723901895
	.quad	0x3fd7067e59866628              # double 0.35977133505511683
	.quad	0x3fe8e0a20f975beb              # double 0.77742102666058821
	.quad	0x3fec889b6c94e947              # double 0.89167567450866947
	.quad	0x3fd61478d076eed6              # double 0.34499950750226327
	.quad	0x3fd11d64069114ee              # double 0.26741886750489996
	.quad	0x3fcc7530931880e0              # double 0.22232634718330413
	.quad	0x3fe01be1ad72a614              # double 0.50340350986988591
	.quad	0x3fd15139f5add5da              # double 0.27058266632169892
	.quad	0x3fc4e629e8ca3098              # double 0.16327403895082138
	.quad	0x3fdc61c0f01cb7a6              # double 0.44346641014532862
	.quad	0x3fc39306fa78fca0              # double 0.15292441587550787
	.quad	0x3fe8302685a2a1b4              # double 0.75587774372711757
	.quad	0x3fd4365788f0f61c              # double 0.31581676839036432
	.quad	0x3feca38ae4dc5efb              # double 0.89496369075183624
	.quad	0x3fe0895b37242c03              # double 0.51676712770256505
	.quad	0x3fdcd8326b2e075e              # double 0.45069561449792228
	.quad	0x3fd1fdda21b8e0ae              # double 0.28111890118772009
	.quad	0x3fc2ac4ca5c97960              # double 0.14588316054409756
	.quad	0x3fd69bb67f2f992c              # double 0.35325395985127517
	.quad	0x3fbd98bb775f39f0              # double 0.11561175979952742
	.quad	0x3fa463ac15ea8d80              # double 0.039822938609428427
	.quad	0x3fe6dbb8af738c0d              # double 0.7143214632782261
	.quad	0x3fe315c3f0309929              # double 0.59640690719678446
	.quad	0x3fe3f157c244e90b              # double 0.62321079199981122
	.quad	0x3fd8c9d331362b34              # double 0.38731841855831139
	.quad	0x3fd00be69528d502              # double 0.25072636190755315
	.quad	0x3fe4f142faf38a0f              # double 0.65445088399821028
	.quad	0x3fe871047899c91c              # double 0.7637960772974881
	.quad	0x3fd2664ddaa517e4              # double 0.2874941477970181
	.quad	0x3fc2f793373fd488              # double 0.14818039128991622
	.quad	0x3fd7d57e50933f2e              # double 0.37240560406370349
	.quad	0x3fcec3cfd6b6b5b8              # double 0.24035070404117476
	.quad	0x3fd727916cabd69e              # double 0.36179004299570205
	.quad	0x3fef34a71c238e89              # double 0.9751773404681937
	.quad	0x3fce3d6de4236600              # double 0.23624967231334892
	.quad	0x3fe6d6a923ecb6c1              # double 0.71370369926963673
	.quad	0x3fa8e41ae95f3ee0              # double 0.048615303981589753
	.quad	0x3feb9254bc2b57bd              # double 0.86161267043893697
	.quad	0x3f95a6d54f6f4e40              # double 0.02114423081714123
	.quad	0x3fd4051399c231ac              # double 0.31280984893308061
	.quad	0x3fe535f839009174              # double 0.66283808835264191
	.quad	0x3fd1f347b79bc34c              # double 0.28047364168655942
	.quad	0x3fee0092cfe78f57              # double 0.93757000547746372
	.quad	0x3fcb318748748d1c              # double 0.21244898832183245
	.quad	0x3fd3bcd6a67e613e              # double 0.30840078601024234
	.quad	0x3fe4673825e5bfc6              # double 0.63760001565787472
	.quad	0x3fe230079656e050              # double 0.56836299288898751
	.quad	0x3fe6f94c4a4c287a              # double 0.71793188582638767
	.quad	0x3fd72e323f9db55e              # double 0.36219459736351733
	.quad	0x3fcf318696d97d2c              # double 0.243698905617728
	.quad	0x3fc9cd4a29b205cc              # double 0.20157744441898584
	.quad	0x3fd19a15047244da              # double 0.27502942499365945
	.quad	0x3fecc478189ac835              # double 0.89898304753865566
	.quad	0x3fc927c6caf1c014              # double 0.19652638348952733
	.quad	0x3fa99df5eddd8b70              # double 0.050033269201569364
	.quad	0x3feb93f9822d9f5f              # double 0.86181331086570967
	.quad	0x3fb86ac33af893b8              # double 0.095379068276613022
	.quad	0x3fe98588c1a6192b              # double 0.79755056211505371
	.quad	0x3fe8a4f47edb5175              # double 0.77013611580564023
	.quad	0x3fee72b0e86e0a30              # double 0.95150037189916326
	.quad	0x3fd3d1e53141f23e              # double 0.3096859913855815
	.quad	0x3fa8689d452ad2b0              # double 0.047673144047995719
	.quad	0x3fd014e3c67d0df0              # double 0.25127500899927124
	.quad	0x3fedb3851ea69d56              # double 0.92816406237117621
	.quad	0x3fec026b15bce80d              # double 0.87529520269095118
	.quad	0x3fe257af23056c6e              # double 0.57320362892222732
	.quad	0x3fd555b08d10d2c2              # double 0.33335508132885761
	.quad	0x3fe576ab8a687657              # double 0.67073609383414634
	.quad	0x3feeab0e4c3dd035              # double 0.95838084116849719
	.quad	0x3febff5d5d8db4af              # double 0.87492244980025713
	.quad	0x3fd203b8f6e12af2              # double 0.28147720441181356
	.quad	0x3fd363818bedadac              # double 0.30294836678396098
	.quad	0x3fca5cf76128d6e0              # double 0.20596210712545027
	.quad	0x3faa687a019cce30              # double 0.05157834310230347
	.quad	0x3fcecb5dd153ed38              # double 0.24058125229917393
	.quad	0x3fce46e6120ec168              # double 0.23653865701408994
	.quad	0x3fe826fb0d5167ec              # double 0.75475838280840212
	.quad	0x3fee3ed01fa7afb2              # double 0.94516760046598436
	.quad	0x3fde5be41c935e1a              # double 0.47435858526793739
	.quad	0x3fe16bab56bb97fb              # double 0.54439322414395919
	.quad	0x3fe8c5460b17582f              # double 0.77408125082252421
	.quad	0x3fd8fc48dc0f928a              # double 0.39039823046031386
	.quad	0x3fd77c88208050a2              # double 0.36697581457088735
	.quad	0x3fd18a6d0d56ad48              # double 0.27407385161014419
	.quad	0x3fe6545857165756              # double 0.69779603013260316
	.quad	0x3f9bf11ca7864c40              # double 0.027286956524744221
	.quad	0x3feb5d775658f4d6              # double 0.85515944351905193
	.quad	0x3feec30b5c77b967              # double 0.96130912838070237
	.quad	0x3fce07ed8222daec              # double 0.23461693624786706
	.quad	0x3fbf668010712c50              # double 0.12265777970712688
	.quad	0x3fe984d0a6b1266c              # double 0.79746277386693753
	.quad	0x3feb0a64a28286f7              # double 0.84501868953904491
	.quad	0x3fe144eb8eb3d3c1              # double 0.53966310378620375
	.quad	0x3fc7c86c9446e614              # double 0.18580395927510607
	.quad	0x3fe1f3f0077c62b5              # double 0.56102754079900896
	.quad	0x3fc8b440cf9ef674              # double 0.1930008901380692
	.quad	0x3fed7418da85bd05              # double 0.92042200737151403
	.quad	0x3fcb74a8eb2e165c              # double 0.21449767573737943
	.quad	0x3fe50e1afba61ad5              # double 0.65797185087361731
	.quad	0x3fe0fc37981631e3              # double 0.53078822807725279
	.quad	0x3fbaf75d3d588b40              # double 0.10533697841360112
	.quad	0x3fed9f40903f1bf7              # double 0.92568996594570663
	.quad	0x3f927969593c8320              # double 0.018041273185306683
	.quad	0x3f866783fd5b7f40              # double 0.010939627808909003
	.quad	0x3fef1b403d9872c8              # double 0.97207653074618693
	.quad	0x3fd48c0025a3f8b0              # double 0.32104495693045987
	.quad	0x3fe0f897253c8196              # double 0.5303455092689997
	.quad	0x3fcbb415c36d8014              # double 0.21643325846071149
	.quad	0x3fe55a47d87b7006              # double 0.66727058679271134
	.quad	0x3fe6850b3fdd0bc0              # double 0.70374071572620522
	.quad	0x3fddd90d2a86f734              # double 0.46637276795432858
	.quad	0x3fad393bb15319c0              # double 0.057077279468603859
	.quad	0x3feac30bf2d4a2a5              # double 0.836309408453492
	.quad	0x3fea0752ef779f3f              # double 0.81339403887702832
	.quad	0x3fe2931877add182              # double 0.58045600294876487
	.quad	0x3fec416dc387e773              # double 0.8829869097673807
	.quad	0x3fa29251f8a8b180              # double 0.036272584537388575
	.quad	0x3fe4f3801fc80e5d              # double 0.65472418029134938
	.quad	0x3fec188c817283eb              # double 0.87799668581658119
	.quad	0x3fdbe96735f5d044              # double 0.43612079877425836
	.quad	0x3fb712355d504758              # double 0.090121588975560996
	.quad	0x3feb53808ce508e2              # double 0.85394313353051765
	.quad	0x3fd33bf3c8696e50              # double 0.30053419658154201
	.quad	0x3fc8e14f1240058c              # double 0.19437588111035742
	.quad	0x3fecb49700486022              # double 0.89704465918748988
	.quad	0x3f980a13fce78ca0              # double 0.023475944815697702
	.quad	0x3fdd637aef7e7198              # double 0.45919679058149532
	.quad	0x3fde55e2b68462ea              # double 0.47399204086245439
	.quad	0x3fdababcc4ae8024              # double 0.41764754492942502
	.quad	0x3fd04d9fe995f4e4              # double 0.25473783312902598
	.quad	0x3fd7b99b11d4dae6              # double 0.37070347539285675
	.quad	0x3fe2c6a5d2645d1f              # double 0.58674899189182728
	.quad	0x3fe3f654dba722c1              # double 0.62381976033164943
	.quad	0x3fd044a5bea4f4f0              # double 0.25418990724195023
	.quad	0x3feafc63725a201d              # double 0.84330913862595802
	.quad	0x3fd88663b99cf7ec              # double 0.38320248724255523
	.quad	0x3fec850b2c95692f              # double 0.89124067981473398
	.quad	0x3fc47287d901ab90              # double 0.15974519821187672
	.quad	0x3fe85a753264d908              # double 0.76104221193853139
	.quad	0x3fb526cb03666320              # double 0.082623184518876958
	.quad	0x3feef4dbb29ce2ad              # double 0.96738991627997494
	.quad	0x3fa6e963e3b8dba0              # double 0.044749375866039331
	.quad	0x3fdba086238897d0              # double 0.43167260618281222
	.quad	0x3fe5ef5b95e52628              # double 0.68546847607030248
	.quad	0x3f9c18a9f4250420              # double 0.027437835241702513
	.quad	0x3fedf8794d7845e2              # double 0.93658127909492017
	.quad	0x3fe366e4a9f2d668              # double 0.60631020730097607
	.quad	0x3f8444f92f3f16c0              # double 0.0098971812766522893
	.quad	0x3fe25e8da8a8581d              # double 0.57404215756355692
	.quad	0x3fd309565a5c302a              # double 0.29744490455846295
	.quad	0x3fe5adbc157a3443              # double 0.67745784945294252
	.quad	0x3fef9452dd6109b9              # double 0.98685591924759485
	.quad	0x3fdeb1318a03aacc              # double 0.47956503370248238
	.quad	0x3fe029fd0b874ae8              # double 0.50512554408700527
	.quad	0x3fbbecf158273fb8              # double 0.10908420946293418
	.quad	0x3fe3786875a940cb              # double 0.60844824772541395
	.quad	0x3f96dc0359cdc060              # double 0.02232365832918537
	.quad	0x3fd49570e206f7ce              # double 0.32162115166636063
	.quad	0x3fc975813c64b5a8              # double 0.19889846276184397
	.quad	0x3fd36a0d3c25d8c8              # double 0.30334788202106866
	.quad	0x3fd19879c186ef98              # double 0.27493137263422218
	.quad	0x3fed1bd7cde902ab              # double 0.90964880196414322
	.quad	0x3feacb75a596990f              # double 0.83733637181720322
	.quad	0x3fd55aa03275a7cc              # double 0.33365635802931304
	.quad	0x3feb22aa5e8701ad              # double 0.84798162901284047
	.quad	0x3fb59613e8e55128              # double 0.084321255072897672
	.quad	0x3fe9e58ba6dc5c73              # double 0.80927069272992325
	.quad	0x3fe742ec13657ea2              # double 0.72691921032306461
	.quad	0x3fc092335e629488              # double 0.12946169003149444
	.quad	0x3fd1f1e85c1474a2              # double 0.28038987152269546
	.quad	0x3fd6617bedf0aba0              # double 0.34969995724048353
	.quad	0x3fddfd93e6dc43ae              # double 0.46860215706788722
	.quad	0x3feb82f3f35aea1f              # double 0.85973546533870493
	.quad	0x3fe299eb6f43c91d              # double 0.58128902179149444
	.quad	0x3fd3bed387bdb1ac              # double 0.30852211242634087
	.quad	0x3fd73aba8fa0557e              # double 0.36295951868063259
	.quad	0x3fc67b76315247a4              # double 0.17564275177261124
	.quad	0x3fea95ba80578904              # double 0.83077740732940741
	.quad	0x3fa1a35d4ccd21f0              # double 0.034449496865423757
	.quad	0x3fe3812fbb932c2e              # double 0.60951983104439988
	.quad	0x3fe9082b44186bb4              # double 0.78224719333535697
	.quad	0x3fd73e0df0f2e1f6              # double 0.3631625035300482
	.quad	0x3fe8c31c6fdcf184              # double 0.77381727073911621
	.quad	0x3fc57a8f90d94154              # double 0.16780275891006602
	.quad	0x3fead326212aad7e              # double 0.83827501752732281
	.quad	0x3fd1a20ba3d5986c              # double 0.27551547049950531
	.quad	0x3fe5ae7d3647ee1f              # double 0.67754994012597425
	.quad	0x3fc6eba9b0f430a0              # double 0.17906685962987456
	.quad	0x3fe32fb4b715beae              # double 0.59957347639825342
	.quad	0x3fd80d6e9cf389da              # double 0.37581982924726065
	.quad	0x3fbaab4c454893c8              # double 0.10417629901401348
	.quad	0x3fde3c1155bf1bc0              # double 0.47241624234851187
	.quad	0x3fca2b41bb2cc744              # double 0.20444509162330793
	.quad	0x3faddce3eeed1740              # double 0.058325884738720024
	.quad	0x3fe6460d219f2b9e              # double 0.6960511833834635
	.quad	0x3fd8f8b2f82e00a0              # double 0.39017938839243449
	.quad	0x3fe24888dc9a40ed              # double 0.57135432325779123
	.quad	0x3fd2e6a177a11a38              # double 0.29532658274220891
	.quad	0x3fd33b1e0b579a88              # double 0.30048323733937155
	.quad	0x3fa8d399091bf140              # double 0.048489363061863688
	.quad	0x3fe64d08b4d20650              # double 0.696903565564023
	.quad	0x3fe5e498cbcf378a              # double 0.68415489012271391
	.quad	0x3fca1053b739a114              # double 0.20362326094187522
	.quad	0x3fe2205bbd652398              # double 0.56644999495721304
	.quad	0x3feafcc72a27e237              # double 0.84335668786577045
	.quad	0x3fe121f0689a7e72              # double 0.53539295606965553
	.quad	0x3fe566f0aa58fc2f              # double 0.66881593009009588
	.quad	0x3fd48d30c965eb4c              # double 0.321117588689664
	.quad	0x3fc12f4f16ae43e8              # double 0.13425625426728449
	.quad	0x3febed79424bfdb4              # double 0.87273848484612992
	.quad	0x3fda78394232f2aa              # double 0.41358787026164612
	.quad	0x3fa650afe105aaf0              # double 0.04358434316494264
	.quad	0x3fd13274b4eed322              # double 0.26870458287457855
	.quad	0x3fcc4da768abab70              # double 0.22111981020801919
	.quad	0x3fe515ddf3299aed              # double 0.65891931049995167
	.quad	0x3fd2aac48a0f3110              # double 0.29167283518178611
	.quad	0x3fd6c0e152c7ba78              # double 0.35552247127535663
	.quad	0x3feb46b63d596b32              # double 0.85238182050975397
	.quad	0x3febef815d95feec              # double 0.87298649099827008
	.quad	0x3fd033202a58d292              # double 0.2531204618019639
	.quad	0x3fd472a00241e484              # double 0.31949615688751742
	.quad	0x3f9dd1e46debce60              # double 0.029120988091518973
	.quad	0x3fc8f60df1cea0e8              # double 0.19500898653973953
	.quad	0x3fccd970920014b0              # double 0.22538573388024963
	.quad	0x3fe56711bc967ccf              # double 0.66883169969141842
	.quad	0x3fef43aa61e99a7a              # double 0.97700995563066262
	.quad	0x3fea3a5c4718b284              # double 0.81962407957105698
	.quad	0x3fe4ecfc75cda691              # double 0.65392897613965506
	.quad	0x3fd2935f34f852c0              # double 0.29024486706593322
	.quad	0x3fd7ce3d1936a41a              # double 0.37196280920267244
	.quad	0x3fb27c53d4f8ad00              # double 0.072209586615532118
	.quad	0x3fdba27e63890d8a              # double 0.43179282875299718
	.quad	0x3fa3403e8a8a43d0              # double 0.037599520122178043
	.quad	0x3fec25aa8dcc1928              # double 0.87959792799737091
	.quad	0x3f8d2ed2a704ce40              # double 0.014249463769920756
	.quad	0x3fe3e74c8f137c69              # double 0.62198474831155892
	.quad	0x3fdc3e7d47db47a4              # double 0.44131404893152593
	.quad	0x3fd03f05b67de418              # double 0.25384657689534285
	.quad	0x3fc8895eb4ccdcd4              # double 0.19169219806801741
	.quad	0x3fe31846f7cb6680              # double 0.5967135276543587
	.quad	0x3fe493854c62d0ac              # double 0.64300789755954701
	.quad	0x3fd122679f5ed808              # double 0.26772490085147682
	.quad	0x3fd93e86fb650164              # double 0.39444136190652146
	.quad	0x3fe1fa28f3ba11a1              # double 0.56178710558792855
	.quad	0x3fd91fab25376dd4              # double 0.39255789408136121
	.quad	0x3fc38fce33846f8c              # double 0.1528260947751473
	.quad	0x3fee15fa8f7ce3d7              # double 0.94018295311900146
	.quad	0x3fd2223be812c296              # double 0.28333947814375315
	.quad	0x3fe9fa1f64aa00bd              # double 0.811782547578353
	.quad	0x3fc7c6b3877e3044              # double 0.18575138202538899
	.quad	0x3faa342c49b99fb0              # double 0.051179298400540474
	.quad	0x3fdbb684ebd435f0              # double 0.43301508932276445
	.quad	0x3fe6acbffd464151              # double 0.70858764140761299
	.quad	0x3fe86e1fb509ca26              # double 0.76344285353690533
	.quad	0x3fe94bbb90637c17              # double 0.79049471093083212
	.quad	0x3fea19d7d6718f97              # double 0.81565467723383989
	.quad	0x3fccfc4a4d950bec              # double 0.22644928730196001
	.quad	0x3fc7e310a35a8320              # double 0.18661697365043839
	.quad	0x3fb459fa1b84aab8              # double 0.079497939794843542
	.quad	0x3fd42bbc26d5b842              # double 0.31516937057938688
	.quad	0x3fe74d6bfd25c6d3              # double 0.72820090716251185
	.quad	0x3feb052736a7bf22              # double 0.84437905001502522
	.quad	0x3fe4a3fa19c02681              # double 0.64501671819125772
	.quad	0x3fee55b468401396              # double 0.94796200143229004
	.quad	0x3fdc57f0ca1bc8b6              # double 0.44286746728097215
	.quad	0x3fa58aaca743b050              # double 0.042073626916903195
	.quad	0x3fe8808d7aab7235              # double 0.76569246252944956
	.quad	0x3fbdf30a49ffeb30              # double 0.11698974901802894
	.quad	0x3feb8d19e3175995              # double 0.86097425798179705
	.quad	0x3f9ceb7a45690ec0              # double 0.028242025839303464
	.quad	0x3fda215e85e5d488              # double 0.40828669620470537
	.quad	0x3fe44c178fcabe91              # double 0.63428857883805467
	.quad	0x3fe29c4589c7c1ac              # double 0.58157612714972151
	.quad	0x3feb19346dd289fb              # double 0.84682675790492057
	.quad	0x3fe39c483d3bdeec              # double 0.61282741508236205
	.quad	0x3feee15257b55285              # double 0.96500508432889431
	.quad	0x3fec07878cdb12a7              # double 0.87591912756814316
	.quad	0x3fe79a94ed8e7fb0              # double 0.73761984250812951
	.quad	0x3fe8728e622ea39a              # double 0.76398390938003335
	.quad	0x3fde2c0fc35f2bb0              # double 0.4714393051078174
	.quad	0x3fe4c805bf4478c9              # double 0.64941680294921256
	.quad	0x3fefbf5c628be1c9              # double 0.99210948226305462
	.quad	0x3fe10be202c6ebc2              # double 0.53270054380788445
	.quad	0x3fef32d1b26994ce              # double 0.97495350691010585
	.quad	0x3fb86a5ad48b5f90              # double 0.095372845545510509
	.quad	0x3fd93f900e1fb820              # double 0.39450456027305059
	.quad	0x3feb931afe2b9f28              # double 0.86170720713287086
	.quad	0x3fe7c3f4298db429              # double 0.74267013660358316
	.quad	0x3fe1ac4a06a78458              # double 0.55228139209442428
	.quad	0x3fe6c92de96008a7              # double 0.71205802517967676
	.quad	0x3fd06bb0e77000bc              # double 0.25657293893165067
	.quad	0x3fe9fd318c54f06b              # double 0.81215741547158637
	.quad	0x3fd87d97705a6fa0              # double 0.38266550037382707
	.quad	0x3fe798d475268823              # double 0.73740599518737715
	.quad	0x3fe8bd770724a104              # double 0.77312804598935302
	.quad	0x3fee51762dbdd8e9              # double 0.94744404729752063
	.quad	0x3fcdfa29c3ee6548              # double 0.23419687334971173
	.quad	0x3fe784dda84a895d              # double 0.73496897572867292
	.quad	0x3fd3eda1feb27bde              # double 0.31137895462773979
	.quad	0x3fe63789893709ab              # double 0.69427944946101172
	.quad	0x3fefc1b52345d4f6              # double 0.99239594353880878
	.quad	0x3fd07398eb5c723a              # double 0.25705550178989578
	.quad	0x3fc878c92890f5a0              # double 0.19118608933233094
	.quad	0x3fdc87fa6b29e070              # double 0.44579945054238745
	.quad	0x3fd17233f54af2ca              # double 0.27259539560672563
	.quad	0x3fec50312cc8541b              # double 0.88478907343472046
	.quad	0x3fdf3bfc560a1dee              # double 0.48803623583123013
	.quad	0x3fb4d5c4cc93dc78              # double 0.081386852212618765
	.quad	0x3fc27873814b976c              # double 0.14430087865110452
	.quad	0x3fcc2d063b405ff4              # double 0.22012403386247537
	.quad	0x3fd1060652bf9cf0              # double 0.2659927185145099
	.quad	0x3fe6e066ed20350f              # double 0.71489282907137575
	.quad	0x3fe56c9788a523b1              # double 0.66950585068217638
	.quad	0x3fe358c378fea778              # double 0.6045853961161205
	.quad	0x3fc0f9cc4dca7a14              # double 0.13262323187241576
	.quad	0x3febbb8b006ba3f2              # double 0.86664342958567731
	.quad	0x3fef2703c78686cb              # double 0.97351254434416867
	.quad	0x3fc8a10cc600ad30              # double 0.19241485279176507
	.quad	0x3fe3a856ae28a8b7              # double 0.6142991448916949
	.quad	0x3fd10a0fe65d3fea              # double 0.26623914238461899
	.quad	0x3fe132b71964248a              # double 0.53744082411971417
	.quad	0x3fe9481ac03309aa              # double 0.79005181826533044
	.quad	0x3fec8e08a3ca8949              # double 0.89233810415707027
	.quad	0x3fe35ec3200f7968              # double 0.60531765233808432
	.quad	0x3fd6790d6e9b54d0              # double 0.3511384563583535
	.quad	0x3feee6255492d53d              # double 0.96559397238039645
	.quad	0x3fd83ef387523368              # double 0.37884224142981404
	.quad	0x3fc12fe4b2a862a0              # double 0.13427408908389271
	.quad	0x3fc43e29c4e7b7fc              # double 0.15814706911572773
	.quad	0x3fe940b00f6e1a6b              # double 0.78914645208062717
	.quad	0x3fd6888968ee1ff2              # double 0.3520835423191776
	.quad	0x3fd9c3d6492fb97a              # double 0.40257794520484647
	.quad	0x3fe7e978b03fd5cb              # double 0.74724993156149233
	.quad	0x3fa6fa2807e90590              # double 0.044877291646581274
	.quad	0x3fe16de084c0bd10              # double 0.54466272285745454
	.quad	0x3fe317d67547aab3              # double 0.59665987879028248
	.quad	0x3fecb379cdbe53c3              # double 0.89690866646071077
	.quad	0x3fe53697b533a5dd              # double 0.66291413680044864
	.quad	0x3f7e684c88a79a00              # double 0.00742368598955645
	.quad	0x3f8172f19b5f2380              # double 0.0085200191059742192
	.quad	0x3fe0ffd596d75310              # double 0.53122977696566132
	.quad	0x3fe7c31e08eec64c              # double 0.74256803269072114
	.quad	0x3fe6933b418bc348              # double 0.70547259141867702
	.quad	0x3fe7d58e071126ff              # double 0.7448187006022805
	.quad	0x3feedf05e60ced05              # double 0.96472449237572333
	.quad	0x3feb6c5072c66a78              # double 0.85697195450786889
	.quad	0x3fe7a93c62233410              # double 0.73940867583735503
	.quad	0x3fc12226c5c12d68              # double 0.13385471969591412
	.quad	0x3fea6f8fd15dc7fd              # double 0.8261183823763073
	.quad	0x3fcb5744bab75398              # double 0.21360072247503292
	.quad	0x3fd2eb330395c05c              # double 0.29560542440504434
	.quad	0x3fe70e985a292c29              # double 0.72053163156067968
	.quad	0x3feccbeb26308be4              # double 0.8998924013034153
	.quad	0x3febdce03c80ae4c              # double 0.87071239296842284
	.quad	0x3feb3af5ddb9a1d6              # double 0.85094731622398956
	.quad	0x3fe48a48f3944358              # double 0.64188048910191764
	.quad	0x3fec333a060320f6              # double 0.88125325369131136
	.quad	0x3fbf220a8e991208              # double 0.1216131780757409
	.quad	0x3feed6e2473d1337              # double 0.96373094476493903
	.quad	0x3fcb0cef4f7f0cb4              # double 0.21133223897604625
	.quad	0x3fd051f57b6c5dfc              # double 0.25500237515504387
	.quad	0x3fd49432e6047ce4              # double 0.32154533827447396
	.quad	0x3fe7c243e1e254d0              # double 0.74246400945653512
	.quad	0x3fdce2133e7d257a              # double 0.45129853346278248
	.quad	0x3fea5b34ae080237              # double 0.82363351812825314
	.quad	0x3fca3dc8af95735c              # double 0.20501049588610953
	.quad	0x3fb8bf627a1a0d20              # double 0.096670298395157505
	.quad	0x3fe255fa7d7c2c0a              # double 0.57299541958616484
	.quad	0x3fdbc4904bb250ec              # double 0.43387229339829392
	.quad	0x3fc5a8704b12d830              # double 0.16920283952430415
	.quad	0x3fea0276b85245bd              # double 0.81280075073498603
	.quad	0x3fd6ce6915dc0414              # double 0.35634829649649302
	.quad	0x3febcadfe62571e2              # double 0.8685149664921108
	.quad	0x3fef401ae6aa9343              # double 0.97657532741559582
	.quad	0x3fc49cf11a2459e8              # double 0.16103948379959765
	.quad	0x3feb53c376728d8e              # double 0.85397503980895961
	.quad	0x3fe574a97d895ad2              # double 0.67049097555976744
	.quad	0x3fc5e46fab21de18              # double 0.17103381973332499
	.quad	0x3fd5a20dc2891fbc              # double 0.33801597592946186
	.quad	0x3fa9553917bc8890              # double 0.049478325030819836
	.quad	0x3fb28f5dfd875d90              # double 0.072500109097168641
	.quad	0x3f82a5f127312dc0              # double 0.009105571754978281
	.quad	0x3fe3315641c6dda4              # double 0.59977257582697918
	.quad	0x3fe4aa5e754e2777              # double 0.64579699431599991
	.quad	0x3fdfe58d0ecb3bc6              # double 0.49838568157877849
	.quad	0x3f5557710955d000              # double 0.0013025859710440457
	.quad	0x3feebfc706dbec77              # double 0.96091033305800876
	.quad	0x3fbc7d9afb2b8f38              # double 0.11129158622821655
	.quad	0x3fd488aea5c5c97e              # double 0.32084242047053368
	.quad	0x3fdf6ba8cdb57896              # double 0.49094600762135465
	.quad	0x3feeb7fccf0a8fb5              # double 0.95995941579575705
	.quad	0x3fd6705f1ed9092c              # double 0.35060861599426363
	.quad	0x3fe4141f1b809b00              # double 0.62745623942905127
	.quad	0x3fe01a8290460a4b              # double 0.50323608568607747
	.quad	0x3fb69b13bc5ccfc8              # double 0.088303788649510939
	.quad	0x3feda8273d2791de              # double 0.92677652305843217
	.quad	0x3fed95fe08b606e9              # double 0.92455960942626547
	.quad	0x3fda06f0990f84b8              # double 0.40667357394529402
	.quad	0x3fb78ea8d515e3a0              # double 0.092020561240032439
	.quad	0x3fe39e478941a86d              # double 0.61307122047334206
	.quad	0x3fba9c289baeb178              # double 0.10394529152717336
	.quad	0x3fd00f93aae2b612              # double 0.2509507340244862
	.quad	0x3fe49ebca7b3e644              # double 0.64437706713142306
	.quad	0x3fabb2be5f352e80              # double 0.054098080751455946
	.quad	0x3fe5f8d8c9beccb5              # double 0.68662681010609694
	.quad	0x3feed8655aa1c87e              # double 0.96391551686816945
	.quad	0x3feeb274cd35d235              # double 0.95928421096920735
	.quad	0x3fea39f84da46311              # double 0.81957640804748355
	.quad	0x3fe199cba89eb0ce              # double 0.5500238698346267
	.quad	0x3fec73423a9072a9              # double 0.8890696662743568
	.quad	0x3fc66bbfacefc774              # double 0.17516323036357628
	.quad	0x3fe079badc2ec63f              # double 0.51485960964618716
	.quad	0x3fef200ca8adb8e1              # double 0.97266228623427875
	.quad	0x3fcd2a7ed82c1e2c              # double 0.22785935931482137
	.quad	0x3fe6d40a1e5fb06b              # double 0.71338373119716658
	.quad	0x3fda090cb297818e              # double 0.40680234375579338
	.quad	0x3fdf6668b6e8764a              # double 0.49062555181612721
	.quad	0x3fd1733784490506              # double 0.27265727919082428
	.quad	0x3fec63930b5ebd5d              # double 0.88715507717817454
	.quad	0x3fd814c31466e07c              # double 0.37626721374864025
	.quad	0x3fd9ef9389b9f0dc              # double 0.40524757814251955
	.quad	0x3fc3f0640ad00894              # double 0.1557736447139787
	.quad	0x3fecaa43fb26b6d9              # double 0.8957843690202153
	.quad	0x3fd739f6a65ec6da              # double 0.36291280982105223
	.quad	0x3faa059e408f38e0              # double 0.050824113255304004
	.quad	0x3fccb6d15ea71de8              # double 0.22432915803641085
	.quad	0x3fc4b392356f173c              # double 0.16173007592277056
	.quad	0x3fe283a4c353fb27              # double 0.57856977605829207
	.quad	0x3fc1bc66fa549334              # double 0.13856208060419706
	.quad	0x3fb17b5396987b48              # double 0.068288063303481583
	.quad	0x3fc5d9c31e1b1a70              # double 0.17070807428372659
	.quad	0x3fd567a31c793d6a              # double 0.33445050984024383
	.quad	0x3fca710dabc46088              # double 0.20657511603417711
	.quad	0x3feafedb30b155ea              # double 0.84361037740989997
	.quad	0x3fb83f560e1b6e28              # double 0.094716432994964905
	.quad	0x3fd3df3db5ec525e              # double 0.31050055280619471
	.quad	0x3fe08652b5d95ce2              # double 0.51639686124226736
	.quad	0x3fefa4cd6f85fbd0              # double 0.98886749059590251
	.quad	0x3fd5ba14b65a765a              # double 0.33948247726389058
	.quad	0x3f49fd0ea11d5000              # double 7.9310621570494177E-4
	.quad	0x3fe852407a91be98              # double 0.76004051150626406
	.quad	0x3fd3bee2cda7c0a4              # double 0.3085257538177848
	.quad	0x3fd3a8b2b7202378              # double 0.3071715153060306
	.quad	0x3fcf7aa9cf01e020              # double 0.24593088729648205
	.quad	0x3fcf86d9f974b2b8              # double 0.2463028400465157
	.quad	0x3fe4294767faceaf              # double 0.6300389319280465
	.quad	0x3fc68b472f058f8c              # double 0.17612542911512852
	.quad	0x3fe10b1c4347872a              # double 0.53260625019558927
	.quad	0x3fe93c90f3b7f534              # double 0.78864333726202184
	.quad	0x3fdf956075a8c2f2              # double 0.49349223604353576
	.quad	0x3fe9e2817be207ea              # double 0.80889963336835291
	.quad	0x3f884b562bc1e2c0              # double 0.011862443170899239
	.quad	0x3f8c14c3c266af40              # double 0.013711480493689643
	.quad	0x3fe7d6b8ac40cb17              # double 0.74496110575850849
	.quad	0x3feb94b7beda1802              # double 0.86190402293937063
	.quad	0x3febccaa163eb2b4              # double 0.86873344750127623
	.quad	0x3fe0c1b85f340c02              # double 0.52364748567958963
	.quad	0x3fe5b1b0dd3f2b07              # double 0.67794078075652997
	.quad	0x3fe411c6d0bdf643              # double 0.62716999788217043
	.quad	0x3fe83accac3826cd              # double 0.75717767368879552
	.quad	0x3fd89d1014ca8fd8              # double 0.38458635359188298
	.quad	0x3fe1ceb4b00d5c08              # double 0.55648264298622596
	.quad	0x3fb2773d3724b1d8              # double 0.072131944620827837
	.quad	0x3fe0b1e3f58756ae              # double 0.52171514468019153
	.quad	0x3fe3aee4291f8fa4              # double 0.61509902984515863
	.quad	0x3fe313b156b1aea3              # double 0.59615389759479276
	.quad	0x3fe1162f7cc22bf2              # double 0.53395819060221883
	.quad	0x3fde729c3d6f6bd6              # double 0.47574525832686498
	.quad	0x3fe76bf7c3b0736b              # double 0.73192966671522919
	.quad	0x3fdceb75e46e4d48              # double 0.4518713694353278
	.quad	0x3fddbf032c1cf3f4              # double 0.46478347118301078
	.quad	0x3fd16035526c5714              # double 0.27149708794728267
	.quad	0x3fef8aaf649d0172              # double 0.98567933703456689
	.quad	0x3fe3b41767599f04              # double 0.61573381600916877
	.quad	0x3fd94f5350fbcfb0              # double 0.3954666415077055
	.quad	0x3fe0a605a19cb99d              # double 0.52026635708698488
	.quad	0x3fd2df5c4a896dde              # double 0.29488284377086227
	.quad	0x3f91903146f3a6e0              # double 0.01715161319308478
	.quad	0x3fddc29a4219eff2              # double 0.46500259833533086
	.quad	0x3fe38edff53c19e7              # double 0.6111907758466345
	.quad	0x3fc20d2c1bad4218              # double 0.14102698661237478
	.quad	0x3fe1d90e196d50d3              # double 0.55774598089422012
	.quad	0x3fd3caf7e72d019a              # double 0.30926320625078463
	.quad	0x3fdabf7613243344              # double 0.41793586606290867
	.quad	0x3f65db7c47106700              # double 0.0026681353852041623
	.quad	0x3fd2ecc3f788f73a              # double 0.29570101903287915
	.quad	0x3fe8f2f5edf33b24              # double 0.77965828394539871
	.quad	0x3feeb5cc677baf74              # double 0.95969219409515327
	.quad	0x3fd4357d77b1f2e4              # double 0.31576477707839801
	.quad	0x3fe44a11cf6c11c1              # double 0.63404169571054336
	.quad	0x3fd95d5a689945c4              # double 0.39632282461851909
	.quad	0x3fcb0540a03746ac              # double 0.21109779189150879
	.quad	0x3fec654f2e8f9e78              # double 0.8873668584246408
	.quad	0x3fd75664ca18864c              # double 0.36464805351179019
	.quad	0x3fd7a2f4dd929bea              # double 0.36932107580145035
	.quad	0x3fc3d913a25a3128              # double 0.15506215503081333
	.quad	0x3fe31ccc33a0325c              # double 0.59726533969076057
	.quad	0x3fcb6f7c9b1a3dac              # double 0.21433980534901076
	.quad	0x3f9a300be91060a0              # double 0.025573907947631924
	.quad	0x3feeb55452a7499b              # double 0.95963493483786821
	.quad	0x3fd9800018840d22              # double 0.39843752283214162
	.quad	0x3fd600f28950fe4a              # double 0.34380782518198727
	.quad	0x3fc3633fd2d84c20              # double 0.15146634860192965
	.quad	0x3fda0e02c5a9f54a              # double 0.40710515311350959
	.quad	0x3fe856da1f65cd42              # double 0.7606020558581934
	.quad	0x3fc2c1b98d9c8848              # double 0.14653701223966409
	.quad	0x3fe20e1742572472              # double 0.56422007519826267
	.quad	0x3fdbdffca8edc0c8              # double 0.43554607865281669
	.quad	0x3feb40308b42af00              # double 0.85158564757645649
	.quad	0x3fb4b00033e8ada0              # double 0.080810558960982437
	.quad	0x3fed096df58aea49              # double 0.90740106542154664
	.quad	0x3faf7f04596b7370              # double 0.061515937724584968
	.quad	0x3fe543e93c988c16              # double 0.66453992686399732
	.quad	0x3fe30ea4fde8d2b7              # double 0.59553765861217911
	.quad	0x3fea407dfc81f10f              # double 0.82037257497680283
	.quad	0x3fa0b8c63c0bc3c0              # double 0.032659716443852016
	.quad	0x3f913ed01059e0a0              # double 0.016841174123755409
	.quad	0x3fca5a6bdb908818              # double 0.20588443966795533
	.quad	0x3fe3be89c5192b51              # double 0.61700905318989829
	.quad	0x3fcb08c60a26dd14              # double 0.21120524879163638
	.quad	0x3fc18b56588ad7f0              # double 0.13706473658902452
	.quad	0x3fe502dd229f2e16              # double 0.65659958612508507
	.quad	0x3fbc262a15d31280              # double 0.10995734246086819
	.quad	0x3fd180c6efbdd68a              # double 0.27348493015538422
	.quad	0x3fe4f2843c54f13d              # double 0.65460407050662861
	.quad	0x3fe70d9432c036b4              # double 0.72040758049271014
	.quad	0x3fe3821e9326a101              # double 0.60963371982964543
	.quad	0x3fdd7bbebd7d6ed8              # double 0.46067780022506843
	.quad	0x3fd680704e8e8b94              # double 0.35158927604259671
	.quad	0x3fd9b97a1f5b06a2              # double 0.40194562017505053
	.quad	0x3fe05858cf8ede6b              # double 0.51078453577697525
	.quad	0x3fb0d65f3ae1bc70              # double 0.065771057010111766
	.quad	0x3fe38e7e8425632c              # double 0.61114431199812236
	.quad	0x3fe733baff8eebd1              # double 0.72506475366332712
	.quad	0x3fd7b8111f80e078              # double 0.37060955120569572
	.quad	0x3fee7ad17c63bce8              # double 0.9524924687847518
	.quad	0x3fefe37ee23a28e5              # double 0.99652046380040515
	.quad	0x3fd76619cb581c6a              # double 0.36560673578100611
	.quad	0x3fe6a450c895b162              # double 0.7075580518408453
	.quad	0x3fe4889d02ce6151              # double 0.64167643116074136
	.quad	0x3fdf35cded709700              # double 0.48765896022301547
	.quad	0x3fe932f2541d3a7c              # double 0.78746906689214268
	.quad	0x3fdd0148f3f07582              # double 0.45320342848011574
	.quad	0x3feb1cd15239e726              # double 0.84726778087426591
	.quad	0x3fc8815a50685f3c              # double 0.19144753385693913
	.quad	0x3fdf452ab1a1def8              # double 0.48859660479455114
	.quad	0x3fef8bda65ea5a7b              # double 0.98582191377029404
	.quad	0x3fd01fd66679e6d6              # double 0.25194320685805616
	.quad	0x3fe7db797d80df0d              # double 0.74554132950194829
	.quad	0x3feebb7c9f3a518a              # double 0.96038657283001894
	.quad	0x3fecb9a3fbacf3de              # double 0.8976612010516154
	.quad	0x3fd865f9c75d7968              # double 0.38122410268069595
	.quad	0x3fea9829f8df0ad4              # double 0.83107470138232963
	.quad	0x3fcfab9660091f68              # double 0.24742393197288526
	.quad	0x3fedabddca3478d2              # double 0.92722978108556675
	.quad	0x3fc7e521bd504d7c              # double 0.18668004745323319
	.quad	0x3fe040fa5d63ff36              # double 0.50793188324312299
	.quad	0x3fdfee19e897ebce              # double 0.49890754427150064
	.quad	0x3feaad9465a9204e              # double 0.83368892531962913
	.quad	0x3fe1ea8be8a48c3b              # double 0.55988116682090749
	.quad	0x3fe5d7cb3f98da1f              # double 0.68259203358940457
	.quad	0x3fe6af9c72689cd5              # double 0.70893690438688373
	.quad	0x3fe32062de7fcef0              # double 0.59770339447865517
	.quad	0x3fb2d622afaca2f0              # double 0.073579948319671962
	.quad	0x3fe8823aa6dc3231              # double 0.76589710798140775
	.quad	0x3fe74bf9e3be4d45              # double 0.72802443009496953
	.quad	0x3feb0ed4b345666a              # double 0.84556040777097263
	.quad	0x3fe8f06429205b21              # double 0.77934463531969211
	.quad	0x3fd7da5cdc3962de              # double 0.37270280367151354
	.quad	0x3fe11da7c47346ad              # double 0.53487003678511302
	.quad	0x3fd9d822ac6257a4              # double 0.40381686052693966
	.quad	0x3fdc8b993f0fe894              # double 0.44602042349254956
	.quad	0x3fe8922bbf77e632              # double 0.76784312626040774
	.quad	0x3fd34cdbd4d3af34              # double 0.30156608375431238
	.quad	0x3fd949cab79dffc8              # double 0.39512889796605721
	.quad	0x3fe4e88357fb9512              # double 0.65338294204835479
	.quad	0x3fc9817f19e898f8              # double 0.19926441922252258
	.quad	0x3fc9d3644335a128              # double 0.20176366121018785
	.quad	0x3fcb4ce949c64b50              # double 0.21328464605593433
	.quad	0x3fcdc2e092dba2b8              # double 0.23250968142317219
	.quad	0x3fb4e9ffd05eaa38              # double 0.081695545550851345
	.quad	0x3fc460785aec3f7c              # double 0.15919403495399453
	.quad	0x3fdeeea078927a68              # double 0.48331462645174961
	.quad	0x3fedc088b0083930              # double 0.92975267773889492
	.quad	0x3fc07470c51d56b8              # double 0.12855348229157015
	.quad	0x3fda7a1cc4f07486              # double 0.41370314819671028
	.quad	0x3fe9f796f0f87530              # double 0.81147334160383444
	.quad	0x3fd2ca15bcd13b64              # double 0.29358428420248672
	.quad	0x3fc652b243efba6c              # double 0.17439869229515936
	.quad	0x3fe57ee848f92381              # double 0.6717416215188764
	.quad	0x3fdd93cf095fb57c              # double 0.46214652934471423
	.quad	0x3fc737654c7f98ec              # double 0.18137804255747569
	.quad	0x3fc41f75ca831848              # double 0.15721008671079262
	.quad	0x3f22bd1088837000              # double 1.4296366521804327E-4
	.quad	0x3feae93284173d5c              # double 0.84096647070866081
	.quad	0x3fe42ffc3390acf9              # double 0.63085756369892387
	.quad	0x3f530259e0cd0200              # double 0.0011602285114379329
	.quad	0x3fe038be70a2cac5              # double 0.5069267463607835
	.quad	0x3fdd79c1139f6838              # double 0.46055628696706519
	.quad	0x3f9f51dc6f308ea0              # double 0.030585712706069246
	.quad	0x3fd0afee6f973fb0              # double 0.26073799989262181
	.quad	0x3fe8c2178f6b6b99              # double 0.77369287501948059
	.quad	0x3fdda8eff97759ba              # double 0.46343612062392092
	.quad	0x3fd78bb2b5137898              # double 0.36790149386605142
	.quad	0x3fe079eac94994a9              # double 0.51488246263456461
	.quad	0x3fdc079699d9eeda              # double 0.43796315216580484
	.quad	0x3fe6a47f556b1c96              # double 0.70758024867326941
	.quad	0x3fc34eaa0ab6a998              # double 0.15083814166184761
	.quad	0x3fe176c253764e63              # double 0.54574695874402968
	.quad	0x3fe041686bfb60de              # double 0.50798436250900258
	.quad	0x3fca1df38f219f10              # double 0.20403904427370678
	.quad	0x3fed77372ab30f8b              # double 0.92080267276513561
	.quad	0x3fe21601a896977f              # double 0.56518633773224269
	.quad	0x3fef9ec79b915bcf              # double 0.98813228973710376
	.quad	0x3fe768df4e89dada              # double 0.73155179347562727
	.quad	0x3fe128e8d145d403              # double 0.53624382852160613
	.quad	0x3fd539a2008ffb46              # double 0.33164262823986623
	.quad	0x3fe3d4bdfef9dc93              # double 0.61971950340275084
	.quad	0x3fe4b24731a89c32              # double 0.64676246355964495
	.quad	0x3feda01838d2e070              # double 0.92579279993425523
	.quad	0x3f5a897766377800              # double 0.00161968860708539
	.quad	0x3fc1260da0edc748              # double 0.1339737926278366
	.quad	0x3fe29209868131f7              # double 0.58032680769389244
	.quad	0x3fe2cef3790dab7c              # double 0.58776258128396774
	.quad	0x3fcf99e9b0edd35c              # double 0.24688454760657919
	.quad	0x3fed1cf4453bf1c2              # double 0.90978444597526953
	.quad	0x3fe742e0824a012f              # double 0.7269136948307614
	.quad	0x3fefe6dfa0a74b72              # double 0.99693280580173238
	.quad	0x3fefae2d8efc10d6              # double 0.99001195837675016
	.quad	0x3fd392b576d2b716              # double 0.30582939723795854
	.quad	0x3faae370ddd54160              # double 0.052516486243464611
	.quad	0x3fcf0e919f0ae400              # double 0.24263210550068948
	.quad	0x3fdf79d66e7b870c              # double 0.49181137837705147
	.quad	0x3fe33e74d58afdcf              # double 0.60137407024006417
	.quad	0x3fe17ab035231e1a              # double 0.54622660044055071
	.quad	0x3fe04b09ac4ea132              # double 0.50915988591899564
	.quad	0x3fe07d5bbea85018              # double 0.51530253637111212
	.quad	0x3fccfa2eed541fe0              # double 0.22638498867331602
	.quad	0x3fd5bd8571480764              # double 0.33969245970376094
	.quad	0x3fe71dd7e5ec6693              # double 0.72239298731729418
	.quad	0x3fed81ddc31e804f              # double 0.92210281476219247
	.quad	0x3fe91bb7b48d49f9              # double 0.78463349594159049
	.quad	0x3fe1a9a497726dfd              # double 0.55195836619844807
	.quad	0x3fe4a8ef06816f7f              # double 0.64562178869844888
	.quad	0x3fe1e10a978f7cb6              # double 0.558720870987506
	.quad	0x3fea670af479e1ef              # double 0.82507846593131073
	.quad	0x3fef4971f51d1f9f              # double 0.97771547197134001
	.quad	0x3fe01816b4b17c4f              # double 0.50294051448498489
	.quad	0x3fde7f0c29145280              # double 0.47650436412485675
	.quad	0x3fefbbf1b0e1e6b6              # double 0.99169239566182088
	.quad	0x3fd5a68416d36a08              # double 0.33828832844815837
	.quad	0x3fd8eee227ada38a              # double 0.38958028673965173
	.quad	0x3fd77d1aa74e2084              # double 0.36701074922940102
	.quad	0x3fe263dcc67abee2              # double 0.57469023480913628
	.quad	0x3fd35f2e759d5e1a              # double 0.30268441663562984
	.quad	0x3fdb8a54f9965750              # double 0.43031811116940322
	.quad	0x3fe2e44e7012ae4f              # double 0.59036943330051794
	.quad	0x3fd4c52dfb2caab4              # double 0.3245348885417727
	.quad	0x3fd72f96ea63b726              # double 0.36227963342286029
	.quad	0x3fe8c4066562fb2e              # double 0.77392883112029209
	.quad	0x3fe617d5290ab438              # double 0.69040925994853009
	.quad	0x3feb6abbf5a73163              # double 0.85677907923813412
	.quad	0x3f9bb5957cdd4020              # double 0.027059875246152498
	.quad	0x3faa3db68213ee70              # double 0.051252082232136398
	.quad	0x3feff9d7c864d54f              # double 0.99924840106420187
	.quad	0x3feb60b03b15bdc8              # double 0.85555278339409657
	.quad	0x3fdd5a99adb409e0              # double 0.45865480387888447
	.quad	0x3fe0a7fa873be089              # double 0.5205052033698091
	.quad	0x3fe27bf112d02f8f              # double 0.57762960123499052
	.quad	0x3fed39a66f1bacc4              # double 0.91328736973573443
	.quad	0x3fd23a52a77050f2              # double 0.28480974532546022
	.quad	0x3fa98fbb5e303de0              # double 0.049924712417233286
	.quad	0x3fd3817621de4d46              # double 0.30477670009095836
	.quad	0x3fe2b67a434a56bb              # double 0.58477509634641167
	.quad	0x3fd598c4e93930d8              # double 0.3374492909977227
	.quad	0x3feaad379b86d106              # double 0.83364467979711843
	.quad	0x3fcfe459e5009ec8              # double 0.24915622407683302
	.quad	0x3fe4e41c016a5d44              # double 0.65284538532697711
	.quad	0x3fefa77fbf13f5fa              # double 0.98919665641704957
	.quad	0x3fda65aa92f6f302              # double 0.41245521881118929
	.quad	0x3fd1cadab744f5d4              # double 0.27800624749565128
	.quad	0x3fe6974b1627b349              # double 0.70596842124141646
	.quad	0x3fd8f947ac2d90ae              # double 0.39021484197861411
	.quad	0x3fd1c9f7f6c6a662              # double 0.27795218562332569
	.quad	0x3fd426fcc0c57c9c              # double 0.31487959695182055
	.quad	0x3fc2e6b328427818              # double 0.1476654001789377
	.quad	0x3fe2956da5c8b79f              # double 0.58074076060960411
	.quad	0x3fe56a578822b302              # double 0.66923119152997423
	.quad	0x3fd6cca24df97752              # double 0.35623986830420507
	.quad	0x3fda42858403365e              # double 0.4103101529297869
	.quad	0x3fdb91bba1ff18e2              # double 0.43076983280151471
	.quad	0x3f3c818f1b5d3800              # double 4.3496841259560437E-4
	.quad	0x3fc815260f3eca58              # double 0.18814540619276232
	.quad	0x3feeecf0515a32f5              # double 0.9664231861985103
	.quad	0x3fee8f0b4960f1b0              # double 0.95496143657469723
	.quad	0x3fe11cd167d22b19              # double 0.53476782109769083
	.quad	0x3fe2f0a75d596246              # double 0.59187668068177213
	.quad	0x3fe537bb7f613173              # double 0.66305327299919126
	.quad	0x3fe4b6e17b2f4324              # double 0.64732431468482732
	.quad	0x3fe7e2a140a06ff4              # double 0.74641478178409537
	.quad	0x3fe474484e261be6              # double 0.63919463408899158
	.quad	0x3fd9aaad3cd0d1a2              # double 0.4010422796157177
	.quad	0x3fe1b5dd1d3c333d              # double 0.55345016202918595
	.quad	0x3fdf244a36b664ac              # double 0.48658995955481532
	.quad	0x3fe771a5ef8df32c              # double 0.73262306964861557
	.quad	0x3fb8f1f38c7e4e68              # double 0.097441884803907919
	.quad	0x3f7eeb1992a46800              # double 0.007548427480537967
	.quad	0x3fe50fd0326bc47c              # double 0.6581803307327756
	.quad	0x3fcc95e6448940b0              # double 0.2233245691918504
	.quad	0x3fca1ff0a1cbec58              # double 0.20409973049376862
	.quad	0x3fe740b47d36e184              # double 0.72664856391843147
	.quad	0x3fe7c1984acaf83f              # double 0.74238218887308693
	.quad	0x3fed9be0df7abace              # double 0.92527812622378192
	.quad	0x3feb74c14ebdc643              # double 0.85800233248864577
	.quad	0x3fd66f03338126fa              # double 0.35052566556679177
	.quad	0x3fbac4e02b93f1c8              # double 0.10456658424295207
	.quad	0x3fcc8ca85e251e20              # double 0.2230425319378222
	.quad	0x3feb14cefb6bd7b1              # double 0.84629010301318008
	.quad	0x3fd97d18695efb1e              # double 0.39826021471155737
	.quad	0x3fd8c41cc1bcdfc4              # double 0.38696974677759166
	.quad	0x3fe981e42d182301              # double 0.79710587317921988
	.quad	0x3fb60da6d38bb2a0              # double 0.086145807883165393
	.quad	0x3fe3c96dccd81912              # double 0.61833848961467397
	.quad	0x3fd9ec5181efad60              # double 0.40504872979246009
	.quad	0x3fe54a5a5a7fcad0              # double 0.66532628703711261
	.quad	0x3fec30c5b8e3ada2              # double 0.88095365630345079
	.quad	0x3fed52c9c58c472b              # double 0.91635597785555001
	.quad	0x3fe0bf8f3b0c6e8e              # double 0.5233837273876405
	.quad	0x3fb456c978d24d78              # double 0.079449264523921204
	.quad	0x3f9e8543dd3471c0              # double 0.029805240989945636
	.quad	0x3fdcf63272749ca4              # double 0.45252667596146012
	.quad	0x3fd33d7eb5f5e22a              # double 0.30062835473612159
	.quad	0x3f7f3fcdfe6e5000              # double 0.0076292082439017861
	.quad	0x3fede32f58e0fc70              # double 0.93398253783369789
	.quad	0x3fac702b30589e20              # double 0.055543279315596772
	.quad	0x3fed141130d8f33f              # double 0.90869960346717693
	.quad	0x3fe30de8eb22191f              # double 0.59544797825290974
	.quad	0x3f8dc76e33064b40              # double 0.014540539676806241
	.quad	0x3fbb674b47edd468              # double 0.10704489236907622
	.quad	0x3fd327f8824e31bc              # double 0.299314620257771
	.quad	0x3fc4f08ad0a621a0              # double 0.16359076679169693
	.quad	0x3fb25351362f7110              # double 0.071583820084416994
	.quad	0x3fbd6452c0e65dc8              # double 0.11481206140012212
	.quad	0x3fe9cbc1302a422b              # double 0.80612239272347119
	.quad	0x3fe7803720b66ef1              # double 0.73440128697572338
	.quad	0x3fc3b7aa4e520d70              # double 0.15404251884693165
	.quad	0x3fb68e38451ccd20              # double 0.088107601998491436
	.quad	0x3fc8612ea2f8b0f0              # double 0.19046576459493947
	.quad	0x3faaf2c005262ed0              # double 0.052633286121901102
	.quad	0x3fb66fc3409bf4c8              # double 0.087642863534671211
	.quad	0x3fe9f5fbfc6621f4              # double 0.81127738281889927
	.quad	0x3fc94054d977e658              # double 0.19727573984691804
	.quad	0x3fe6c2573c835a82              # double 0.71122323817219546
	.quad	0x3fe69006c529f889              # double 0.70508135326942167
	.quad	0x3fd70c398abde1ea              # double 0.36012114094731251
	.quad	0x3fedc911ec76c3dd              # double 0.93079467949257444
	.quad	0x3fe9b63c27dac7b2              # double 0.80349548133948745
	.quad	0x3fd56b8d2ffb7a74              # double 0.33468942342543717
	.quad	0x3fe7c712204de489              # double 0.74305063542773653
	.quad	0x3fecba5551e79624              # double 0.89774576184271781
	.quad	0x3fcbfe3a8db4e884              # double 0.21869594496985567
	.quad	0x3fe9504a4ebb8b34              # double 0.79105105760058913
	.quad	0x3fd8d557dd20a058              # double 0.38802143663861477
	.quad	0x3fe3a530180a15b6              # double 0.61391453452295397
	.quad	0x3fe5eaf75dea9938              # double 0.68493240683600387
	.quad	0x3fd44d5a308bd3c2              # double 0.31722120991554104
	.quad	0x3fe433d1a9458423              # double 0.6313255601963913
	.quad	0x3fe00c780fe118e4              # double 0.50152209378645951
	.quad	0x3feb20bcacf5c813              # double 0.84774621754900392
	.quad	0x3fea5853dfb156e8              # double 0.82328218164431366
	.quad	0x3fec87644a5ccb26              # double 0.89152731441422328
	.quad	0x3fe92369b7dbd936              # double 0.78557287130278186
	.quad	0x3fea2dd0a7beb0b8              # double 0.81809265864060077
	.quad	0x3fed0c556f5cad80              # double 0.9077555823363781
	.quad	0x3fdf6d4a77ad545a              # double 0.49104558646405894
	.quad	0x3fd02f00daee7686              # double 0.25286885623959454
	.quad	0x3fcbab556194f2d0              # double 0.2161661840890674
	.quad	0x3fc9d587b2a3ba2c              # double 0.2018289205802416
	.quad	0x3fe15400f6fd7aaf              # double 0.54150436630501086
	.quad	0x3fe3666bac8d463d              # double 0.60625251485379972
	.quad	0x3febcabec6e102de              # double 0.8684991726259701
	.quad	0x3fea0edf086ad718              # double 0.81431533473980533
	.quad	0x3fe5417fd074f591              # double 0.66424551691277334
	.quad	0x3fdf1d31e058612c              # double 0.48615691097940572
	.quad	0x3fe5cd9505d39931              # double 0.68134547365187903
	.quad	0x3faafc7b54022100              # double 0.052707532887383834
	.quad	0x3fe7fe7ea08fece5              # double 0.74981623992735236
	.quad	0x3fd4d99953e3d12e              # double 0.32578118507742004
	.quad	0x3fd2db5096b690dc              # double 0.29463591306763504
	.quad	0x3fd09c88d605ed34              # double 0.25955410862634953
	.quad	0x3fcfea904fcc8934              # double 0.24934581657823573
	.quad	0x3febc3b3886e8a83              # double 0.86763931891285073
	.quad	0x3fc5e803afc702ec              # double 0.17114301760559358
	.quad	0x3fd4e9e8f5f0a416              # double 0.32677673356607906
	.quad	0x3fd837d13f2a7b24              # double 0.37840682190464947
	.quad	0x3fb71b89414e2310              # double 0.090263918346078719
	.quad	0x3fe2b634df18b067              # double 0.58474200795673148
	.quad	0x3fedaec63e9f3896              # double 0.927584764774809
	.quad	0x3fec65bd74ed6a38              # double 0.88741944157965857
	.quad	0x3fe6b00f08c808f7              # double 0.70899154391398056
	.quad	0x3fe67574c60f90a4              # double 0.70183790858984141
	.quad	0x3fe37b265e1cbf2d              # double 0.6087829435473161
	.quad	0x3fe67910f6a67541              # double 0.70227859662887948
	.quad	0x3fe6c1a15fe98a88              # double 0.7111365197454953
	.quad	0x3fb64708c9617300              # double 0.087021397748184626
	.quad	0x3fd9dd7ffd738b6c              # double 0.40414428473575614
	.quad	0x3fd49b170c147a8c              # double 0.3219659440964413
	.quad	0x3fe085b1963eac3d              # double 0.51632003159227902
	.quad	0x3fef395143ce28fa              # double 0.97574675791955134
	.quad	0x3fe3213bd50516ab              # double 0.59780685048527482
	.quad	0x3fd6872f237ffec4              # double 0.35200098482890163
	.quad	0x3fbe1e424578ab80              # double 0.11764921375349324
	.quad	0x3fef8fde0d03efd8              # double 0.98631193677965267
	.quad	0x3fb1c44a6fe82dc0              # double 0.069401409455330132
	.quad	0x3fc093e77083813c              # double 0.12951367372353129
	.quad	0x3fd05b124de06c20              # double 0.25555856328145587
	.quad	0x3fd2f6ec69f49de4              # double 0.29632101390094889
	.quad	0x3fd03cc83704b3bc              # double 0.25370984433066801
	.quad	0x3fe9fe4081c5eac5              # double 0.81228661867438545
	.quad	0x3fbeffaacfdcecc8              # double 0.1210886723974226
	.quad	0x3fe77efb44fa905a              # double 0.73425067398467125
	.quad	0x3fee7d492be7acef              # double 0.95279367995445152
	.quad	0x3fec62cb223db568              # double 0.8870597523470396
	.quad	0x3fb5bbd454239710              # double 0.084897299329522946
	.quad	0x3fc17a109dc06220              # double 0.13653762533864811
	.quad	0x3fc46210301b759c              # double 0.15924265240657298
	.quad	0x3fe1e405482c1e6e              # double 0.55908454986724876
	.quad	0x3fdf7a9e79111d46              # double 0.49185907195029122
	.quad	0x3fec2ab3fd0362fd              # double 0.8802127782501824
	.quad	0x3fd2709556bdc070              # double 0.28812154265234025
	.quad	0x3fd11f8852614132              # double 0.26754959149276936
	.quad	0x3fe8eb56d1d368ab              # double 0.77872792226414356
	.quad	0x3fe398710b0e8dea              # double 0.61235859069387044
	.quad	0x3fcb4a9fa2ccb6a0              # double 0.21321483086778859
	.quad	0x3fb5d01756b264c8              # double 0.085206469217513292
	.quad	0x3fd43200387ebb56              # double 0.31555181042761171
	.quad	0x3feaebb080980a93              # double 0.84127068630216895
	.quad	0x3fe70a9f19ee24fa              # double 0.72004656853201188
	.quad	0x3feb770c0187e07c              # double 0.85828209208467809
	.quad	0x3fdbc92519367ef8              # double 0.43415191137499631
	.quad	0x3fe5237275fc20ee              # double 0.66057704013749485
	.quad	0x3fe2eee7a7ece517              # double 0.59166319654392197
	.quad	0x3fe79535985e5f33              # double 0.73696403274059319
	.quad	0x3fe9bb412e6505ca              # double 0.80410822926949632
	.quad	0x3fe3b04d3ff1e12e              # double 0.61527121056773182
	.quad	0x3feeed9c88a48178              # double 0.96650530517585675
	.quad	0x3fe54f2c8c5e122e              # double 0.66591479697723854
	.quad	0x3fc4654317b37dc8              # double 0.15934027344972734
	.quad	0x3fe4c2740559d63c              # double 0.64873696370222644
	.quad	0x3fee07aebf5f1e41              # double 0.93843781831032669
	.quad	0x3fb9dfdefebe7a20              # double 0.10107225150429899
	.quad	0x3fc2f6abcd1241dc              # double 0.14815280450103685
	.quad	0x3fe9fd13f7045bc7              # double 0.81214330907357002
	.quad	0x3f92b9f922685040              # double 0.018287556386056503
	.quad	0x3fd13e8ad8734784              # double 0.26944228303647599
	.quad	0x3fe7660f51b3f36f              # double 0.73120847661594535
	.quad	0x3feae9066cd16b66              # double 0.84094544652485292
	.quad	0x3fe77ff6e632433c              # double 0.73437066040251109
	.quad	0x3fb87ced361552a8              # double 0.095656228736809568
	.quad	0x3fdea4380a407740              # double 0.47877312661318072
	.quad	0x3fbe9004c8064318              # double 0.11938505061540317
	.quad	0x3fd106a1324341fc              # double 0.26602964313954636
	.quad	0x3fbe60a3851817f0              # double 0.11866209029548691
	.quad	0x3fa942fdd2deabb0              # double 0.049339229575103061
	.quad	0x3fd0eacbce9df328              # double 0.26433081796112612
	.quad	0x3fd8aa15fcd69a64              # double 0.38538121882667142
	.quad	0x3fec8f4664da68dc              # double 0.89248962114222818
	.quad	0x3fea64f19727288f              # double 0.82482223054945958
	.quad	0x3fe6936a16e1559c              # double 0.70549492329398644
	.quad	0x3fe94a7b20e4debd              # double 0.7903419153653527
	.quad	0x3fe9cb8bf2d2f70f              # double 0.80609700609758927
	.quad	0x3fd16546e3f79468              # double 0.27180645239270129
	.quad	0x3fd795e8d133d74a              # double 0.36852474622661602
	.quad	0x3fc8685b627d4e00              # double 0.19068472203308318
	.quad	0x3f7f2d6fc3fd3d80              # double 0.0076116910784799207
	.quad	0x3fc278c5460e2508              # double 0.14431062622706059
	.quad	0x3fde15340a3a6eb8              # double 0.47004414557316521
	.quad	0x3fe77d7a7287f646              # double 0.73406717652660158
	.quad	0x3fdb60df7512eea8              # double 0.42778765137675601
	.quad	0x3fb058dc6598b838              # double 0.063855910114143266
	.quad	0x3fd32f06d544a5aa              # double 0.29974528147666979
	.quad	0x3fe4483c834b335f              # double 0.63381791728316361
	.quad	0x3fe6ca9b9ced4a97              # double 0.71223240518368669
	.quad	0x3fbac803077b6c78              # double 0.10461443836850204
	.quad	0x3fe3b988d4d127b4              # double 0.61639825406859083
	.quad	0x3fcd565f2e4d6a0c              # double 0.22919835816249223
	.quad	0x3fe7b5d0b62b474c              # double 0.74094424800771597
	.quad	0x3f9d2ea691542d80              # double 0.028498270626227562
	.quad	0x3fe18b738b176d70              # double 0.54827286878882653
	.quad	0x3fc01716864becdc              # double 0.12570458943796481
	.quad	0x3fd00154a1dd4b50              # double 0.25008121306489262
	.quad	0x3fe5e1d0654a1f54              # double 0.68381519110787758
	.quad	0x3fe3052cff5834de              # double 0.59438180801376084
	.quad	0x3fe7d84ad214df28              # double 0.74515286475705
	.quad	0x3fce8943e00bd228              # double 0.23856399955515539
	.quad	0x3fec1ac049e7880f              # double 0.87826551851708412
	.quad	0x3fce913b35754554              # double 0.23880710706957109
	.quad	0x3fd7cb338604d74c              # double 0.37177742088112065
	.quad	0x3fa7a3761f3e82f0              # double 0.046168986619937402
	.quad	0x3fd3e443aa2e7886              # double 0.31080714816369726
	.quad	0x3fe69dec3186b497              # double 0.70677766488155924
	.quad	0x3fe2e927b47bdaaf              # double 0.59096131563895493
	.quad	0x3feefb0614d684eb              # double 0.96814254827418488
	.quad	0x3fe4153b34f64784              # double 0.62759170860429991
	.quad	0x3fe181313083f760              # double 0.54702052570040038
	.quad	0x3fd40b3073334dce              # double 0.31318293809928555
	.quad	0x3fc90f4390001f28              # double 0.19577831774972165
	.quad	0x3fec1029dc9cd7f4              # double 0.8769730862466063
	.quad	0x3fd64d78308bbf68              # double 0.34847836247262487
	.quad	0x3fdeb4c83cee6b2a              # double 0.47978406858753664
	.quad	0x3fe2d73a3814cff6              # double 0.5887728782022339
	.quad	0x3fc8293ca540b830              # double 0.18875845021233451
	.quad	0x3fea76cb85bb5dd7              # double 0.82700134391319124
	.quad	0x3fe054c907cb720d              # double 0.51034976503757579
	.quad	0x3fc4fab89c86539c              # double 0.16390140192802682
	.quad	0x3f95c73f34c79120              # double 0.021267879101189213
	.quad	0x3fe0f9ba8db847db              # double 0.53048446349771028
	.quad	0x3fde5af754cc6b48              # double 0.47430213242630659
	.quad	0x3feb57a800515485              # double 0.85445022642183288
	.quad	0x3fe617d76e54c9a3              # double 0.69041034268439139
	.quad	0x3fd5a675bcf0d4dc              # double 0.33828490687603874
	.quad	0x3fe3405e71ede5ef              # double 0.60160753490271002
	.quad	0x3fe2c84ab07775d8              # double 0.58694967714444157
	.quad	0x3fea0e19d1c05b69              # double 0.81422129599637316
	.quad	0x3fefa722652a70bc              # double 0.9891521430868333
	.quad	0x3fef97dd8a37597d              # double 0.98728825564721456
	.quad	0x3feffd8d5ee1304d              # double 0.99970119982891392
	.quad	0x3fe2f1ff5ef3cfa8              # double 0.59204071565044547
	.quad	0x3fc1fda9910518c8              # double 0.14055366116571677
	.quad	0x3fe37f0a9f06ea0c              # double 0.60925799426996852
	.quad	0x3fee115e8613caf6              # double 0.93962026774383278
	.quad	0x3fd8807b849dcc2a              # double 0.38284194899387336
	.quad	0x3fd1ef7cad0f2fc6              # double 0.28024212742161259
	.quad	0x3fb6812fb95e32c0              # double 0.087908728366708822
	.quad	0x3fe585939cadeec1              # double 0.6725557384629256
	.quad	0x3fd8e00993d84dea              # double 0.38867415845854103
	.quad	0x3fec13a2d53ba7fe              # double 0.87739698073460182
	.quad	0x3fb4a034bc211420              # double 0.080569549493774151
	.quad	0x3fd761ed0ccc13c4              # double 0.36535192727779653
	.quad	0x3fcaa87dcaf16178              # double 0.20826694878884289
	.quad	0x3fd777aeb54d2f78              # double 0.36667983727669862
	.quad	0x3fe85499d58c336d              # double 0.76032726009871754
	.quad	0x3fecc781cc36ebfa              # double 0.89935388456012721
	.quad	0x3fe62d21bb73a986              # double 0.69300924884491688
	.quad	0x3fd83c5d6fe7a5ec              # double 0.37868438652239322
	.quad	0x3fe6415a70476fe9              # double 0.69547769479276866
	.quad	0x3fd9d56f31d04d16              # double 0.40365199913613148
	.quad	0x3fe8bbf796e75c09              # double 0.77294520829571056
	.quad	0x3fef14606f0b7640              # double 0.97123738945419546
	.quad	0x3fe65040b58ade40              # double 0.69729648072729589
	.quad	0x3fe9a200a1466fa9              # double 0.80102569102335963
	.quad	0x3fee77a23c8b2205              # double 0.95210372757816286
	.quad	0x3fe6145848a8341c              # double 0.68998350325421454
	.quad	0x3feac9800af52a63              # double 0.83709718837901581
	.quad	0x3fee00ae95ac4359              # double 0.93758324845303342
	.quad	0x3fb8d5ff4616c3a8              # double 0.097015337573579274
	.quad	0x3fecc5dedc41795e              # double 0.89915411966994063
	.quad	0x3fc776403a3dd260              # double 0.18329623073408907
	.quad	0x3fed7e8c02bf4cb4              # double 0.92169762169432667
	.quad	0x3fe61c3c1ba1ba09              # double 0.69094663044762783
	.quad	0x3fdfb9586d61fdb2              # double 0.49568758661186074
	.quad	0x3facaee9729c4520              # double 0.056021971931963899
	.quad	0x3fcd70dff8b48bb0              # double 0.23000716823397971
	.quad	0x3fd1e75289fee202              # double 0.27974379993568743
	.quad	0x3fde6f028f17b8d2              # double 0.47552551244633634
	.quad	0x3f747720b5ae3d80              # double 0.0049964215967429615
	.quad	0x3fe97052a758c89a              # double 0.79496128735469829
	.quad	0x3fcc5d0ce50b214c              # double 0.22158967193377987
	.quad	0x3fe2ff216def795e              # double 0.5936438700844453
	.quad	0x3fe95adaa619df47              # double 0.79234058801282792
	.quad	0x3febcdc3bddd15f4              # double 0.86886775095689339
	.quad	0x3fe738e7974100d0              # double 0.72569636861592279
	.quad	0x3fcca4f2a4b8fb5c              # double 0.22378380816550247
	.quad	0x3fd58384939a030e              # double 0.33615221418590202
	.quad	0x3fdc8558eab1f668              # double 0.44563887519311729
	.quad	0x3fdb722d94389540              # double 0.4288438746901484
	.quad	0x3fd0d8d3bf9e0158              # double 0.26323407852762193
	.quad	0x3fef5975ecd4ae88              # double 0.97967048889172847
	.quad	0x3f9871a16bc76c80              # double 0.023870966151531281
	.quad	0x3fc428f2241b5244              # double 0.15749956858657488
	.quad	0x3feb32c453a816cb              # double 0.84994713153056389
	.quad	0x3fe540f26a1f77e1              # double 0.66417809226163282
	.quad	0x3fdebd0440e73830              # double 0.48028665865138276
	.quad	0x3fe8d9cba06ce3ae              # double 0.77658635457111358
	.quad	0x3fee8da49219dde7              # double 0.95479038749084288
	.quad	0x3febf9cb9478d7a6              # double 0.87424258230634133
	.quad	0x3fb6830cdf24e030              # double 0.087937168577696622
	.quad	0x3fe9746c5c14d207              # double 0.79546182617792816
	.quad	0x3fe7afd5318f81fa              # double 0.74021396331596567
	.quad	0x3fea7bed6a155409              # double 0.82762785643956349
	.quad	0x3fc64169b4584b80              # double 0.17387124353316707
	.quad	0x3fd02c068850f24e              # double 0.25268710434082642
	.quad	0x3fe7c3ace374e982              # double 0.74263615059980759
	.quad	0x3fc02dcd1dc957d8              # double 0.12639774279040128
	.quad	0x3fee5c37bba6ef00              # double 0.94875704432294583
	.quad	0x3fe062cad68b858b              # double 0.51205961135217259
	.quad	0x3fdf80f08d3386b8              # double 0.49224485196291878
	.quad	0x3fe4c81395f6442b              # double 0.64942340173195612
	.quad	0x3fde4f1c84909858              # double 0.47357857652457858
	.quad	0x3fc2eefa0d66a5d0              # double 0.14791799215644952
	.quad	0x3fe1a2a13a0f4d2f              # double 0.55110226955222241
	.quad	0x3fe2012b46b04dfc              # double 0.56264270597824817
	.quad	0x3fe02b8b0ea7bfe9              # double 0.50531533110006166
	.quad	0x3fe2d381e0c92e7e              # double 0.5883187666272105
	.quad	0x3fefeea8f390486d              # double 0.99788329669014574
	.quad	0x3fe2422e3911544e              # double 0.57057868143113821
	.quad	0x3fd95603e81adb6e              # double 0.39587495485778035
	.quad	0x3fdd4680d17064c2              # double 0.45742817357092858
	.quad	0x3fde7b548b3cfb70              # double 0.47627748105508427
	.quad	0x3fde5e34b9a8c766              # double 0.47449987536230365
	.quad	0x3fd0b8de0a7047e6              # double 0.26128340739626166
	.quad	0x3fc59730eee29660              # double 0.1686764875823199
	.quad	0x3fea5767b68ff38d              # double 0.82316957146359615
	.quad	0x3fe5dd394742edf1              # double 0.68325485151529908
	.quad	0x3f8b6bfce4e21340              # double 0.01338956426139648
	.quad	0x3fd549cf16f19ffa              # double 0.33262994042024696
	.quad	0x3fe60be25c4b758f              # double 0.68895071054764567
	.quad	0x3fe10a291c5681ee              # double 0.53249030623197569
	.quad	0x3fd6e23c40b291a2              # double 0.35755831068152066
	.quad	0x3fe8ae69a188599c              # double 0.77129060315455744
	.quad	0x3fd11461d69fd386              # double 0.26686902961164838
	.quad	0x3fb4316975e98c40              # double 0.078878966605359757
	.quad	0x3fd87ff72de28714              # double 0.38281039696640673
	.quad	0x3fd914c4c9cfbe2c              # double 0.39189262111810552
	.quad	0x3fe248cc4afec653              # double 0.57138647696974443
	.quad	0x3fe822797f566221              # double 0.75420832510559788
	.quad	0x3fc678a86280bc44              # double 0.17555718240461904
	.quad	0x3fe1bd5a3e1a64f4              # double 0.55436432008278169
	.quad	0x3feab28543077a0b              # double 0.83429205981866639
	.quad	0x3fe395fd51800312              # double 0.61205926816919232
	.quad	0x3fb128111ac9e8e8              # double 0.067017621078693801
	.quad	0x3fe98fe47a27d4c1              # double 0.7988150010920877
	.quad	0x3fd9f1be0908d774              # double 0.40537978060034807
	.quad	0x3fef354fd48808cd              # double 0.97525779256855005
	.quad	0x3fe182257916e448              # double 0.54713700914647578
	.quad	0x3fed8601d90a5024              # double 0.92260830298119289
	.quad	0x3fde7e169d448b10              # double 0.4764458213632432
	.quad	0x3fe9a8926c1f085e              # double 0.80182763211656627
	.quad	0x3fe5ad9fef57c0c8              # double 0.67744442698133245
	.quad	0x3f9fcbb5c35bfd00              # double 0.031050529526507553
	.quad	0x3f9b18a0cd467040              # double 0.026461136368752358
	.quad	0x3f9fc3bd5f9939e0              # double 0.031020125350829875
	.quad	0x3fd4bf4489909918              # double 0.32417405542436617
	.quad	0x3fe391f217bfb407              # double 0.61156563414044818
	.quad	0x3fe0580dd76c7f43              # double 0.51074878764118414
	.quad	0x3fe9ece358f48c5c              # double 0.81016700147700815
	.quad	0x3fd998024f00f7b0              # double 0.39990289416516145
	.quad	0x3fe9b3ddeb0f4919              # double 0.80320640478228988
	.quad	0x3fc4626b4dd73120              # double 0.15925351429758283
	.quad	0x3fcf5a9952456318              # double 0.2449523593629912
	.quad	0x3fc3aba17b7d958c              # double 0.15367525605976728
	.quad	0x3feb7aa728724a39              # double 0.85872228526779459
	.quad	0x3fc2495168ed5138              # double 0.14286248801603008
	.quad	0x3fe1ffa12a85333c              # double 0.5624547796702255
	.quad	0x3fd06cb1b63e7932              # double 0.25663416669148653
	.quad	0x3fda8feb33d2e716              # double 0.41503410397454965
	.quad	0x3fcbcbb58b0c3060              # double 0.21715420998987423
	.quad	0x3fd127bd1d04769a              # double 0.2680504592297922
	.quad	0x3fcd6094ac3e29e0              # double 0.22950991068166982
	.quad	0x3fe44f1607ecaaae              # double 0.63465405986547352
	.quad	0x3fa3f078951a12e0              # double 0.038944023323926436
	.quad	0x3fe18094190a4bfc              # double 0.54694561854046198
	.quad	0x3fdf56beedf94726              # double 0.48966954459784728
	.quad	0x3fd6d09fa531d5e6              # double 0.3564833749036026
	.quad	0x3fe98e5323d5a626              # double 0.79862362860621228
	.quad	0x3fd082ef63161e3e              # double 0.25799164463430546
	.quad	0x3fe40cfcbf8de1bd              # double 0.62658536351141658
	.quad	0x3fda29f62c6f6c96              # double 0.40881113376026101
	.quad	0x3feb36d4def5a198              # double 0.85044330164696458
	.quad	0x3fd502cd2d3b24ea              # double 0.32829598824589701
	.quad	0x3fe5c2a6dfde660f              # double 0.68001121258129327
	.quad	0x3fec8bd1b799c51b              # double 0.89206777438645035
	.quad	0x3fee6f3301a26c1f              # double 0.95107412642699163
	.quad	0x3fe3c387b1e9aebd              # double 0.61761841534231332
	.quad	0x3feeee37a5f71bfb              # double 0.96657926955310757
	.quad	0x3feea738b199f3f0              # double 0.95791277587670542
	.quad	0x3fee9d718d9ca365              # double 0.95671918543403633
	.quad	0x3fde7ddaf1c2cf86              # double 0.4764315949389516
	.quad	0x3fdd6ad34bd2eaac              # double 0.45964510349919396
	.quad	0x3fdafaa35c8ba134              # double 0.42154773748054031
	.quad	0x3fda09502621c312              # double 0.40681842540566138
	.quad	0x3fb4aca119477c88              # double 0.080759113952341477
	.quad	0x3fc0700508df9030              # double 0.1284185689283972
	.quad	0x3fa29e27ee2ab540              # double 0.036362884352778568
	.quad	0x3fccff9c4b54f0e4              # double 0.22655061415014821
	.quad	0x3fd44b7999138408              # double 0.31710662793017308
	.quad	0x3fcedd79edc556c4              # double 0.24113391981034316
	.quad	0x3fb7a18725593678              # double 0.092308470361979533
	.quad	0x3fe2fab98af5cad9              # double 0.59310605183267306
	.quad	0x3fd5ee1f5161f81c              # double 0.34265883395699048
	.quad	0x3fe7324bcd80dea6              # double 0.72488966119177145
	.quad	0x3f924c364c1d6180              # double 0.017868851085354631
	.quad	0x3fdaaa7ff05ce4f0              # double 0.41665647957741125
	.quad	0x3fe19e7f676dbb36              # double 0.5505978603449424
	.quad	0x3fec48363de3a0f9              # double 0.88381492698411457
	.quad	0x3fd6b41d6590e7f2              # double 0.35474333685453907
	.quad	0x3fe92a0ce7f45681              # double 0.78638310721972016
	.quad	0x3fe6aa31b23b30fe              # double 0.70827565012726246
	.quad	0x3fe05e0e14c15b3a              # double 0.51148132375497046
	.quad	0x3fe43c5979956277              # double 0.63236688372405936
	.quad	0x3fab084602c9cf80              # double 0.052797496643420594
	.quad	0x3fe68d4cd0465d30              # double 0.70474854162868006
	.quad	0x3fd3fbcc87b801b0              # double 0.31224358800684637
	.quad	0x3fe7157461703215              # double 0.72136897116576171
	.quad	0x3fedc963f0f5019f              # double 0.93083378850865361
	.quad	0x3fe954b4c45717db              # double 0.79159010265061214
	.quad	0x3fd48aac36145582              # double 0.32096390992349921
	.quad	0x3fdd0948a661899e              # double 0.4536916374983323
	.quad	0x3fe91eddb33622f4              # double 0.78501782419433974
	.quad	0x3fc4662f78d67bfc              # double 0.15936845207485806
	.quad	0x3feee836e23267d6              # double 0.96584648303109577
	.quad	0x3f7185570bf89a80              # double 0.0042775535835405387
	.quad	0x3fe0a11479fdb531              # double 0.51966308428169417
	.quad	0x3fd64eab8ef08748              # double 0.34855164488736934
	.quad	0x3fdca605fc942b08              # double 0.44763326326271669
	.quad	0x3fda0bbd06419348              # double 0.40696645365669726
	.quad	0x3fe5265ef4b40ffe              # double 0.6609339503634144
	.quad	0x3fbef1eff7f65140              # double 0.12087917140735716
	.quad	0x3fd9908d96bc915a              # double 0.3994478199040451
	.quad	0x3fd93e571a404b14              # double 0.39442994655216634
	.quad	0x3fafb116dfe53160              # double 0.061897959547965398
	.quad	0x3fe0f5acc68c6f85              # double 0.52998961237925413
	.quad	0x3fd10283e30822be              # double 0.26577851458618429
	.quad	0x3fe792ea0ea39630              # double 0.7366838727873013
	.quad	0x3fec5200217976aa              # double 0.88500982797605343
	.quad	0x3febc44a7a1ff31d              # double 0.86771129467487962
	.quad	0x3fb88d90a3d14ce0              # double 0.095910110468412579
	.quad	0x3fec50f9a3badc40              # double 0.8848846624231399
	.quad	0x3fedd0af8ecb8a87              # double 0.93172433747925332
	.quad	0x3fe6630a692b52fc              # double 0.69958992520204744
	.quad	0x3fe540b5d9ca13e3              # double 0.6641492131899408
	.quad	0x3feb8c148b42cc64              # double 0.86084963988686213
	.quad	0x3fe522ce691588ed              # double 0.66049881481401729
	.quad	0x3fefa25471b6a074              # double 0.98856565675397556
	.quad	0x3feb1f2c76a07399              # double 0.84755538148202725
	.quad	0x3fbe49e7546c2980              # double 0.11831517993065255
	.quad	0x3fe14a2bb56fd7b5              # double 0.5403040450753368
	.quad	0x3fd723c6492d215e              # double 0.36155850549814328
	.quad	0x3fc485fe559cd0f8              # double 0.16033915691662748
	.quad	0x3fe7dc75412a200c              # double 0.74566138007594551
	.quad	0x3fe7c0bcdcc13103              # double 0.74227755657332783
	.quad	0x3feb4e485b9cc83f              # double 0.85330598729183993
	.quad	0x3fe8f9f89efdf490              # double 0.78051405957343611
	.quad	0x3fe0424d4848b5ab              # double 0.50809349172566465
	.quad	0x3fede39b88f36da9              # double 0.93403412578793621
	.quad	0x3fe912e1bff9cfea              # double 0.78355491156844193
	.quad	0x3fe34024a662fd74              # double 0.6015799760570375
	.quad	0x3fa0ef82c1a9e860              # double 0.033077322140301346
	.quad	0x3fe628402b4a46ac              # double 0.6924134107122959
	.quad	0x3fe7e39659787182              # double 0.74653165316298975
	.quad	0x3fe3b6dca2dc295a              # double 0.61607200440020482
	.quad	0x3f8b46c34c7f67c0              # double 0.013318563243888693
	.quad	0x3fe297da1ce08618              # double 0.58103662147567814
	.quad	0x3fdfa8fa72e2c2bc              # double 0.49468861789049945
	.quad	0x3fecd52ffff27f32              # double 0.90102386464784545
	.quad	0x3fb0343e64ea1f90              # double 0.063297176015224332
	.quad	0x3fc7e263c52638f0              # double 0.18659636618071529
	.quad	0x3fec6d07bed120a0              # double 0.88830935734678817
	.quad	0x3fd7e8a0c06f4b6e              # double 0.37357348244147814
	.quad	0x3fe451671becc1cc              # double 0.63493686155384799
	.quad	0x3fe6753b5e638899              # double 0.70181053576768015
	.quad	0x3fe0bc1c96dff467              # double 0.52296285121668695
	.quad	0x3feccf9ec822f9f6              # double 0.90034426774201282
	.quad	0x3fa2f97c15314720              # double 0.037059667193388046
	.quad	0x3fe6d06f36571a66              # double 0.71294365514115721
	.quad	0x3fea5c71815482d8              # double 0.82378459224500045
	.quad	0x3fe321de4125d00f              # double 0.59788429950867961
	.quad	0x3fc9dca17682ae3c              # double 0.20204561506885621
	.quad	0x3fe18c4fd96138e3              # double 0.54837791878688014
	.quad	0x3fbcf55c9a1bcd58              # double 0.11311892282883684
	.quad	0x3fdce8bb8db4acb0              # double 0.45170487249806524
	.quad	0x3fec1c0df06731f6              # double 0.87842461541873607
	.quad	0x3fde10632021b394              # double 0.4697501958642587
	.quad	0x3fe9ff60b267f5bc              # double 0.81242403836193188
	.quad	0x3fe54b884e46d663              # double 0.66547026909274754
	.quad	0x3fcc625b16f70154              # double 0.22175158139544726
	.quad	0x3fef8871144c40fd              # double 0.98540548290659979
	.quad	0x3feb217dd6b30224              # double 0.84783832486579457
	.quad	0x3fe1aa0bca57b666              # double 0.55200757522625277
	.quad	0x3fbe1d412dc87f20              # double 0.11763388984445244
	.quad	0x3feb6910bec8657a              # double 0.85657536756768526
	.quad	0x3fe73a604e2501d1              # double 0.7258760000477712
	.quad	0x3fb9fe78d51e56f8              # double 0.10153918459976896
	.quad	0x3fe3d13ec9038b8e              # double 0.61929263363377784
	.quad	0x3fdd0a7990159820              # double 0.45376433439958141
	.quad	0x3fe0b18ef394235b              # double 0.5216746098895827
	.quad	0x3fdbdfa1556bc4e4              # double 0.43552430478946591
	.quad	0x3fd72a62fa430fee              # double 0.36196207465786656
	.quad	0x3fce7566f74b8b7c              # double 0.23795783114391245
	.quad	0x3fe5c9f7e4dd77c8              # double 0.68090433788506122
	.quad	0x3fdd34a5ea0b7f2e              # double 0.45633838516185932
	.quad	0x3fe62505d6778939              # double 0.69201938522409201
	.quad	0x3fe0a52b30a271fc              # double 0.52016219614921466
	.quad	0x3fba3a05b574b010              # double 0.10244785003732226
	.quad	0x3fd94f94a1f5e62e              # double 0.3954822141309674
	.quad	0x3fe709206f82b62f              # double 0.71986409930622652
	.quad	0x3febf7b9eb117590              # double 0.87399001991041025
	.quad	0x3fc283f13b4b27e8              # double 0.14465155978388045
	.quad	0x3fc972a3e3decc5c              # double 0.1988110411308267
	.quad	0x3fda36c3ebbffcf2              # double 0.40959260961967836
	.quad	0x3febe5504352d451              # double 0.87174237393504417
	.quad	0x3feac17e7a34a67d              # double 0.83611987942022348
	.quad	0x3feb631e385a8415              # double 0.85584937101896463
	.quad	0x3fe455b12272fabe              # double 0.63546044090602272
	.quad	0x3fe16f235823ba38              # double 0.54481665816076141
	.quad	0x3fd5706344e1c2b0              # double 0.33498460509057804
	.quad	0x3fdb4a398896e168              # double 0.42640531863027897
	.quad	0x3fd01d291c18ffc6              # double 0.2517798208609715
	.quad	0x3fe0ecc1ba7d0170              # double 0.52890097068306652
	.quad	0x3fae225afa6cfaa0              # double 0.058855860776465763
	.quad	0x3fa52b54a0d16290              # double 0.041346211081593087
	.quad	0x3fdc95473e4bee66              # double 0.44661122401860209
	.quad	0x3fccfd99d4eca900              # double 0.2264892854376015
	.quad	0x3fefd83fb4cfb238              # double 0.99514756502828216
	.quad	0x3fe53b792229ab54              # double 0.66350990936676135
	.quad	0x3fc1fd3d753b1c0c              # double 0.14054077362217787
	.quad	0x3fd814f7a5f704ec              # double 0.37627974708091361
	.quad	0x3fef8009a7f1430b              # double 0.98437960435157501
	.quad	0x3fd2b69ccc3ad75a              # double 0.29239578193970817
	.quad	0x3f9c3c432793dcc0              # double 0.027573632517456259
	.quad	0x3fdbe3cceed43434              # double 0.43577884028565284
	.quad	0x3fe8d37692564863              # double 0.77581337529614947
	.quad	0x3fdd442b16a30170              # double 0.45728566370600898
	.quad	0x3fe38011017dc663              # double 0.60938310900946779
	.quad	0x3fe0547414dc9ee0              # double 0.51030925821848072
	.quad	0x3fc0abcb2f6e0528              # double 0.13024272743135978
	.quad	0x3fdd9e65e1a2bd3e              # double 0.46279284510361041
	.quad	0x3fd8c35ea99fc34a              # double 0.38692442478991451
	.quad	0x3fc7141eff333530              # double 0.18030154667796117
	.quad	0x3fe7d775d9db5e09              # double 0.74505131292511451
	.quad	0x3fe957f304a91be7              # double 0.79198599729795383
	.quad	0x3fd4203d8993bc9a              # double 0.31446779666198099
	.quad	0x3fdbb8e3ff247512              # double 0.43315982738734349
	.quad	0x3feb77133529e609              # double 0.85828552611855102
	.quad	0x3fdbfe3c5ba67132              # double 0.43739232015811347
	.quad	0x3fcfb7a474747508              # double 0.24779182134890498
	.quad	0x3fd13db71bf3e2aa              # double 0.26939180116418504
	.quad	0x3fd9a762243f4534              # double 0.40084126987229074
	.quad	0x3fe6eeba4c773473              # double 0.71664156851478678
	.quad	0x3fdf891cb4722dec              # double 0.49274366017991045
	.quad	0x3fe585ef576bc0ad              # double 0.67259947847744217
	.quad	0x3fc76712d3eacf88              # double 0.18283305499573665
	.quad	0x3fdd8734f85a2c1e              # double 0.46137737515590682
	.quad	0x3fdfc349f0212e82              # double 0.49629448366315654
	.quad	0x3fe62ee02a60dc14              # double 0.6932221248342807
	.quad	0x3f9c70ac38e15b20              # double 0.027773562404344365
	.quad	0x3fc24b875ed2a604              # double 0.14292995576879275
	.quad	0x3fe21d48e93d3c06              # double 0.56607480577974978
	.quad	0x3fe7929d395bed75              # double 0.73664723589847247
	.quad	0x3fdeb591e7e58984              # double 0.47983214994578582
	.quad	0x3fd6a5be95770cd2              # double 0.35386623951144458
	.quad	0x3fee56268ba8bf4d              # double 0.94801642682248544
	.quad	0x3fe15cae2c0b5b7f              # double 0.54256352045454992
	.quad	0x3fbf5f3e6f4e52b8              # double 0.12254705636434948
	.quad	0x3fc6ecd8e6ff39a4              # double 0.17910300521039091
	.quad	0x3fc2b46484cc9140              # double 0.1461301468308509
	.quad	0x3fd1d59cb72d834a              # double 0.27866285217719577
	.quad	0x3fe5bfa9e0871d72              # double 0.67964643338284092
	.quad	0x3fe49d15e7e4c19e              # double 0.64417548457827301
	.quad	0x3fdfd5d0542c5664              # double 0.49742515773809814
	.quad	0x3fca42c16c42f778              # double 0.205162217962364
	.quad	0x3fece46e074f3c5f              # double 0.90288449695243489
	.quad	0x3fe41e4d9bab5155              # double 0.62869911579268012
	.quad	0x3fe4ee484a5d16a3              # double 0.6540872051634391
	.quad	0x3fe2c7d606dfc5aa              # double 0.58689404814338286
	.quad	0x3fe7686c1b5062e2              # double 0.73149686178939199
	.quad	0x3fe66d82e6a0d235              # double 0.70086808247157839
	.quad	0x3fd4513e7568ab9e              # double 0.31745873895368415
	.quad	0x3fd045298ab67e7a              # double 0.25422133012941794
	.quad	0x3fcd48346face374              # double 0.22876601651094186
	.quad	0x3fddfd702318373e              # double 0.46859363009649602
	.quad	0x3fe29b8da5bb08c1              # double 0.58148844117410914
	.quad	0x3fdc92303b85117c              # double 0.44642263233642843
	.quad	0x3fef1ac68162a521              # double 0.97201848288128556
	.quad	0x3fe1b1f9c0ca3b92              # double 0.55297553686419776
	.quad	0x3fe3ac2f8ea1b429              # double 0.61476877076859637
	.quad	0x3fe76f1ea1ca7360              # double 0.73231441116113771
	.quad	0x3fd6399ec71c5b76              # double 0.34726685947810354
	.quad	0x3fe49aa58fc47b5d              # double 0.64387777404395374
	.quad	0x3fecbab0c0626513              # double 0.89778935980862895
	.quad	0x3fd8a2e36094cd46              # double 0.38494190627826119
	.quad	0x3fb673cc992b32d0              # double 0.087704455752098953
	.quad	0x3fcbc6d17f22c2e4              # double 0.21700495441248002
	.quad	0x3fb3218fe7b6d700              # double 0.074730867453435934
	.quad	0x3f9cc34527e0f1e0              # double 0.028088646468164558
	.quad	0x3fe69e3baffd11fe              # double 0.70681557057156374
	.quad	0x3fdb6bc82c11c06a              # double 0.4284534864773436
	.quad	0x3fd64a6790439e4e              # double 0.34829129303259243
	.quad	0x3fefd4e10c42cfd3              # double 0.99473621744845741
	.quad	0x3fb11fa5b4148558              # double 0.066889149155504923
	.quad	0x3fd1a4a47db4b73a              # double 0.27567398334473447
	.quad	0x3fce6e61d84f1be8              # double 0.23774359762157293
	.quad	0x3fb553b1d8e065d0              # double 0.083308330009820297
	.quad	0x3feb9fef33ee78d9              # double 0.86327324049832577
	.quad	0x3fca1837ac70f22c              # double 0.20386405868511426
	.quad	0x3fe1e7907502ba9a              # double 0.55951712468761916
	.quad	0x3fb9d0d6854fe9f8              # double 0.10084286455813884
	.quad	0x3fdb4732c161c7e0              # double 0.42622059712368632
	.quad	0x3feeaba574c723de              # double 0.9584529190843758
	.quad	0x3fd2845301f8cf14              # double 0.28932643120354951
	.quad	0x3fbb8db758768960              # double 0.10763116750471147
	.quad	0x3fa2a3c8c3a39a00              # double 0.036405824548456422
	.quad	0x3fc9024704908a68              # double 0.19538200114137116
	.quad	0x3fe17b303848c7ff              # double 0.54628764145877529
	.quad	0x3fe7f8ab9a30e8d6              # double 0.74910526385726928
	.quad	0x3fe96005d501b750              # double 0.79297153094169381
	.quad	0x3fe954f1c935b0db              # double 0.79161919878745424
	.quad	0x3fd3927c362b9846              # double 0.30581574716632465
	.quad	0x3fdd35a8374ebe8e              # double 0.45639996911175096
	.quad	0x3fd563e72e7d71c0              # double 0.33422259845772473
	.quad	0x3fee1d727e5f7db1              # double 0.9410946338866123
	.quad	0x3fef56f4275a68f8              # double 0.97936446844258195
	.quad	0x3fd435cae810b39e              # double 0.315783239961826
	.quad	0x3fa559b755b4e470              # double 0.041700104915840863
	.quad	0x3fd1bbbf29cfa82a              # double 0.27708415110703533
	.quad	0x3febee5ad48ec18f              # double 0.87284604563869717
	.quad	0x3fecec8795acead3              # double 0.90387324555862347
	.quad	0x3fefd482c939bfa3              # double 0.99469126989241762
	.quad	0x3fe49b2b734565d9              # double 0.64394161714443066
	.quad	0x3fee8e6a03840a1e              # double 0.95488453566241893
	.quad	0x3fef2da01b49506b              # double 0.97431950883266205
	.quad	0x3fd3c10199ef4496              # double 0.30865516693763462
	.quad	0x3fd288d8c9202392              # double 0.28960246697584424
	.quad	0x3fefb1a52cf662cf              # double 0.99043520719268396
	.quad	0x3fe4d515f061924c              # double 0.65101143788758398
	.quad	0x3fdf689f6724a0d6              # double 0.49076066086355519
	.quad	0x3fd42c98e7cc0848              # double 0.31522200237680353
	.quad	0x3fe5d711132f729a              # double 0.68250325915467447
	.quad	0x3fe4a883b7c7a789              # double 0.64557062048446412
	.quad	0x3febc9fc1a5030e4              # double 0.86840634478860723
	.quad	0x3fed56621860ab6c              # double 0.91679482232335152
	.quad	0x3fd64dd0346a226c              # double 0.34849934691059192
	.quad	0x3fb0e9305b8a3598              # double 0.066058180187800963
	.quad	0x3fc37b6d6b873250              # double 0.15220420599361484
	.quad	0x3fe6deb65288c486              # double 0.71468654746981097
	.quad	0x3feebe5688836aaf              # double 0.96073462164652834
	.quad	0x3fd61210189039d2              # double 0.34485247038619804
	.quad	0x3fec20af34aeb1eb              # double 0.87898979463130666
	.quad	0x3fe7992984e98f21              # double 0.73744655570451212
	.quad	0x3fecba5e91c68382              # double 0.89775017234579502
	.quad	0x3fec5d42712a73ea              # double 0.88638422110272796
	.quad	0x3fce1aeca7737800              # double 0.2351966683990554
	.quad	0x3fd3ff7f34b3c8c8              # double 0.31246929308612126
	.quad	0x3febf75e8ac579d8              # double 0.87394644836222835
	.quad	0x3fef6b54f38eb7a9              # double 0.98185203141996624
	.quad	0x3fea913956295bde              # double 0.8302275355189257
	.quad	0x3fe5abcdb59c0830              # double 0.67722211332898574
	.quad	0x3febc83863543376              # double 0.8681909503953722
	.quad	0x3fe121ed89f0ef53              # double 0.53539158765441142
	.quad	0x3fd93d66af5f320e              # double 0.39437262655408822
	.quad	0x3fc7ee9db003d168              # double 0.18696948141554093
	.quad	0x3fec6ea7de67d237              # double 0.88850778044304135
	.quad	0x3fe837c9bc92287f              # double 0.75681006269702766
	.quad	0x3fdfe71fc5f5596e              # double 0.49848169643282503
	.quad	0x3f9f345f2da2d3e0              # double 0.030473220024493375
	.quad	0x3fd5c75e924d407c              # double 0.34029354369432219
	.quad	0x3fcd3fbcc2270e08              # double 0.22850760917764057
	.quad	0x3fc5d4c9739b1f78              # double 0.1705562414629147
	.quad	0x3fdfe4deaa5f9c72              # double 0.49834410322222944
	.quad	0x3fe6612db59299e4              # double 0.6993626161900548
	.quad	0x3fdd02ab7d377584              # double 0.45328795650660703
	.quad	0x3fe29945ec27b0a2              # double 0.58121009944945379
	.quad	0x3fec02d5633b6542              # double 0.87534589177372646
	.quad	0x3fd6d1886e1e380e              # double 0.35653887513842697
	.quad	0x3fe63ac409f8a63b              # double 0.6946735567809762
	.quad	0x3fd6ba7d0b4f0978              # double 0.3551323519169709
	.quad	0x3fe7807d77bb8324              # double 0.73443482766387946
	.quad	0x3fe024f99735a349              # double 0.50451354535207671
	.quad	0x3fe29359343d4456              # double 0.58048687174790348
	.quad	0x3fe2945a78f03a1f              # double 0.58060954685953792
	.quad	0x3fd0a2c3c1f4597a              # double 0.25993436756962007
	.quad	0x3fe107921ee85efa              # double 0.5321741679826737
	.quad	0x3fef3eb621fa4e90              # double 0.97640520702630518
	.quad	0x3fe981191290bc66              # double 0.79700902582216027
	.quad	0x3fe20a52de34512a              # double 0.5637602176598524
	.quad	0x3fb4fcc0a4dd7d08              # double 0.081981697321214964
	.quad	0x3fe267b49e453820              # double 0.57515936767754638
	.quad	0x3fd3368b41eeb12e              # double 0.3002041000243193
	.quad	0x3fd239b9ef921b10              # double 0.28477333446100861
	.quad	0x3f95c704641f2060              # double 0.02126700268834758
	.quad	0x3fd8c54f8bdb56d6              # double 0.38704289110078827
	.quad	0x3fe657e0c9060a93              # double 0.69822730314656878
	.quad	0x3fbebbda282d6018              # double 0.12005389672174294
	.quad	0x3fea8d44ee3c5065              # double 0.82974478273764574
	.quad	0x3fe53e85d17f21ca              # double 0.66388216893488416
	.quad	0x3fc835c5883e804c              # double 0.18914097931429052
	.quad	0x3fe6d0a04804170e              # double 0.71296705308552233
	.quad	0x3fd4e6d716203b88              # double 0.32658936653836479
	.quad	0x3f53e36d17a2ae00              # double 0.0012138905863520177
	.quad	0x3fe31b030f65f150              # double 0.59704735763038208
	.quad	0x3fea2ddd3c262916              # double 0.81809865711082597
	.quad	0x3feca9ab51a5a99d              # double 0.89571157404616353
	.quad	0x3fed4a55146c844e              # double 0.915323772325914
	.quad	0x3fe9b24ed096aed6              # double 0.80301609744989366
	.quad	0x3f73d04f6a480800              # double 0.0048373319773435952
	.quad	0x3fc7515b45008e8c              # double 0.1821703040051158
	.quad	0x3fea0b5bd27512b3              # double 0.81388655762619633
	.quad	0x3fd323687ea915b0              # double 0.29903614396274758
	.quad	0x3fd36e4592ff5e30              # double 0.30360545497157698
	.quad	0x3fd8220b372cea74              # double 0.37707786930301457
	.quad	0x3fc7179374058714              # double 0.18040698208920303
	.quad	0x3fe1ba481befccd0              # double 0.55398946243658465
	.quad	0x3fd7ca5faff95e2e              # double 0.3717269152161603
	.quad	0x3fda31b7ffe38f06              # double 0.40928459157133579
	.quad	0x3fda10e9e80ee68a              # double 0.40728233014997584
	.quad	0x3fcb3ba34da111e0              # double 0.2127575043724752
	.quad	0x3fed0de0a48977bd              # double 0.90794403205995133
	.quad	0x3fb54a8c4f9b25c0              # double 0.083168763575620197
	.quad	0x3fd77eebcd4074d0              # double 0.36712164920920731
	.quad	0x3fe548ade5739728              # double 0.66512198271513956
	.quad	0x3fc26c841fda3024              # double 0.14393664889610236
	.quad	0x3fc383b2db7d3378              # double 0.15245662419547634
	.quad	0x3fe454ae357c5777              # double 0.6353369755404249
	.quad	0x3fea1b56a57a3929              # double 0.81583721465884651
	.quad	0x3fdef239178dbbac              # double 0.48353411960754999
	.quad	0x3fea247ef863d0cd              # double 0.81695507539418488
	.quad	0x3fe683ab1d100224              # double 0.70357280422473822
	.quad	0x3fbb5d9852e7a228              # double 0.10689689659160051
	.quad	0x3fd3ce2a347b0e0e              # double 0.30945830464426727
	.quad	0x3fdf9651e11e2b14              # double 0.49354979499973806
	.quad	0x3fc169a9ec00bcd0              # double 0.13603710197046448
	.quad	0x3fe068da6a1cd126              # double 0.51279946065054527
	.quad	0x3fd5527b5f32de92              # double 0.33315929695843594
	.quad	0x3fef58bfce7ba4f5              # double 0.97958364800174868
	.quad	0x3fc165b87d6ddcbc              # double 0.13591676830740151
	.quad	0x3fe84ad11c13113b              # double 0.75913291438386155
	.quad	0x3fdad922c2e4db4a              # double 0.41950291664709438
	.quad	0x3fef3040ee10e8bd              # double 0.97464033601070065
	.quad	0x3fc556718acb3df4              # double 0.16670054699942194
	.quad	0x3fe6ad7699dead6e              # double 0.70867471745206756
	.quad	0x3fd5132454caf942              # double 0.32929333000710781
	.quad	0x3fd894d6f8dfce26              # double 0.38408445648312506
	.quad	0x3fa677cb36276a20              # double 0.043882704125014493
	.quad	0x3fdb62b55e4ef13c              # double 0.42789968690682989
	.quad	0x3fe8ffab2b8a138d              # double 0.78120954993993197
	.quad	0x3fe98d9429115045              # double 0.79853256245633786
	.quad	0x3fee603b04e22b38              # double 0.94924689248850935
	.quad	0x3fbfa01c90853330              # double 0.12353685882881105
	.quad	0x3fd957d03d33afee              # double 0.39598470665691721
	.quad	0x3fed473c05c809a0              # double 0.91494561318568301
	.quad	0x3fe4723e138660c2              # double 0.63894561589679477
	.quad	0x3fcc3dbca83a8328              # double 0.22063406194959012
	.quad	0x3fd8061541b46094              # double 0.37537127891983713
	.quad	0x3fd5b2be9677fa84              # double 0.33903469747739501
	.quad	0x3fd6e68bf9e1613e              # double 0.35782145883924332
	.quad	0x3fdcb61a7dabf91a              # double 0.44861471436151279
	.quad	0x3fed574154f65c67              # double 0.91690126985748754
	.quad	0x3fe0852b1b672d6b              # double 0.51625590660243625
	.quad	0x3fe962ce7f6d8c70              # double 0.79331135643259465
	.quad	0x3fdb9a2a78408d9e              # double 0.43128453963637436
	.quad	0x3fd4f1fea4cd2e66              # double 0.32727018445868905
	.quad	0x3fe71103c28cb88a              # double 0.72082698820101254
	.quad	0x3fd12d0415b700d8              # double 0.26837255592910259
	.quad	0x3fcbbb0fdacac9bc              # double 0.21664617713174816
	.quad	0x3f9f2f37e6aa80e0              # double 0.030453561261880036
	.quad	0x3fdb98c26d4d201a              # double 0.43119869874908689
	.quad	0x3fea4346ded327c5              # double 0.82071250458215472
	.quad	0x3fea000324efd2a8              # double 0.81250149931164106
	.quad	0x3fdabdba7406ad9e              # double 0.41783009844467667
	.quad	0x3fdf48b9dbbfd7c4              # double 0.4888138433446978
	.quad	0x3fe0fb6c5a96d7ce              # double 0.53069131558617655
	.quad	0x3fcec8b29d865000              # double 0.24049980823167516
	.quad	0x3fed37e8afd57f7b              # double 0.91307482092450643
	.quad	0x3fd7dd38ee28d952              # double 0.37287734277505991
	.quad	0x3fecb306d2d47ce5              # double 0.89685383966198329
	.quad	0x3fba73546a2e2578              # double 0.10332229225436673
	.quad	0x3fe66231e1de5161              # double 0.69948667635848605
	.quad	0x3fd20987e73cb506              # double 0.28183171827079467
	.quad	0x3fc49e6322b33ff8              # double 0.16108359522195292
	.quad	0x3febe2d61e2da80d              # double 0.87143998998840433
	.quad	0x3fdf6ed1584777d0              # double 0.49113877888691793
	.quad	0x3fead90c62e9dac7              # double 0.83899516409913921
	.quad	0x3fe36351463ad1d6              # double 0.60587371556044434
	.quad	0x3fe3f0e00506919c              # double 0.62315369588445746
	.quad	0x3fcb6a1b6831b610              # double 0.21417563045126586
	.quad	0x3fd1b93fd764701c              # double 0.27693172487647799
	.quad	0x3fcf1de9c7ffdfc0              # double 0.24310037866211864
	.quad	0x3fa4746f678be940              # double 0.039950829877812399
	.quad	0x3f908422b6fac700              # double 0.016129057329357543
	.quad	0x3fe0971c820e127b              # double 0.51844621087418774
	.quad	0x3fe79c64d10683b2              # double 0.73784104180605525
	.quad	0x3fefd7bd32586542              # double 0.99508533318582004
	.quad	0x3fdbc02c5ca7dc88              # double 0.43360432670983373
	.quad	0x3fd1e7bc0e0bc1b8              # double 0.27976895686790781
	.quad	0x3fe2cd0f8df04438              # double 0.58753183100100781
	.quad	0x3fe3576950e286b7              # double 0.60442033574891851
	.quad	0x3fdb8695fd9e53da              # double 0.43008947150638976
	.quad	0x3fc4bd64245a615c              # double 0.16202976012278725
	.quad	0x3fdfaa81e859c714              # double 0.4947819489526506
	.quad	0x3fc479cd0b882d58              # double 0.15996707022746182
	.quad	0x3fec46a4fd06a207              # double 0.88362359446642891
	.quad	0x3fe5f605b665fb98              # double 0.68628202080423062
	.quad	0x3fdc14ffe3ee85cc              # double 0.43878171214063566
	.quad	0x3fadbcf50c440740              # double 0.058082254168779546
	.quad	0x3fefcbc216bda102              # double 0.9936228222041168
	.quad	0x3fe43eae25a11eeb              # double 0.63265139913070578
	.quad	0x3fd474e1d4f6881a              # double 0.31963392064256058
	.quad	0x3fe2bbe1b67631a4              # double 0.58543477665948673
	.quad	0x3fe29dd37119b1a5              # double 0.58176586236873062
	.quad	0x3fc42438d0ff28d4              # double 0.157355405854395
	.quad	0x3fdbd0ed5e1964d0              # double 0.43462690533995119
	.quad	0x3fedfe7a99e6874f              # double 0.93731432017032457
	.quad	0x3fe719f9b29e8be8              # double 0.72192082296930682
	.quad	0x3fef6244a5ac6eea              # double 0.98074562414282451
	.quad	0x3fbf53cfa973a7a0              # double 0.1223726071072222
	.quad	0x3fe0e80826d18bbf              # double 0.52832419950242826
	.quad	0x3fd8b4a96f3fcdb8              # double 0.38602672447379005
	.quad	0x3fd7cef5873d2f6c              # double 0.37200678069051807
	.quad	0x3fe6a9f96bf437ae              # double 0.70824881634483972
	.quad	0x3fe554b76862f394              # double 0.66659136188501344
	.quad	0x3feab51b7b9b5e52              # double 0.83460783140157901
	.quad	0x3fe1c920a0a9bfd2              # double 0.55580169085987507
	.quad	0x3fc43df5e29f63c0              # double 0.15814088407094395
	.quad	0x3fea9708b42d77e2              # double 0.83093676749171785
	.quad	0x3fe2a49a049313ca              # double 0.58259297269307209
	.quad	0x3fd80f9fa42c9e80              # double 0.37595358879705287
	.quad	0x3fe5bf53688e1ba4              # double 0.67960520192069795
	.quad	0x3fa27959448c9290              # double 0.036082067125140616
	.quad	0x3fec3216bdfadb1d              # double 0.88111435990763065
	.quad	0x3fe1e719643f536b              # double 0.55946034984172621
	.quad	0x3fec40a84b3ff402              # double 0.88289274880628477
	.quad	0x3f927734a5d123e0              # double 0.018032858486808467
	.quad	0x3fec3d6a1e28cb6b              # double 0.8824968899774438
	.quad	0x3fd7a1b002f616e4              # double 0.36924362458408511
	.quad	0x3fe7eb46e0873151              # double 0.74747032025474358
	.quad	0x3fe3b7d7aaacac2e              # double 0.61619170508254739
	.quad	0x3fd7cacdc44d7dd0              # double 0.37175316019235272
	.quad	0x3fbea448e41df8b8              # double 0.11969428605331955
	.quad	0x3fe1471cf62ec481              # double 0.53993080217891543
	.quad	0x3fc5a0f219116f5c              # double 0.16897417282131755
	.quad	0x3fea8658a6fd5df3              # double 0.82889969458750412
	.quad	0x3fdd9672781d7f78              # double 0.46230756502153936
	.quad	0x3feaa88e7dfae720              # double 0.83307575803266686
	.quad	0x3fb7be114e466bf8              # double 0.092743951425674598
	.quad	0x3fe32eb34e80d7b7              # double 0.59945073445009356
	.quad	0x3fbaa7e0625e8700              # double 0.10412409211724238
	.quad	0x3fc96748ec046cfc              # double 0.1984645035198368
	.quad	0x3fe9d16adcd14915              # double 0.80681365135595462
	.quad	0x3fe10722988a0065              # double 0.53212098877703495
	.quad	0x3fd9050009d3c4e2              # double 0.39093018493356457
	.quad	0x3fe8d59182c7c5e7              # double 0.77607036154784914
	.quad	0x3fc708b16576d0d0              # double 0.17995278791716496
	.quad	0x3fecb64799097bf6              # double 0.89725093736694705
	.quad	0x3fefd203c9153a7b              # double 0.99438657068260682
	.quad	0x3fdf5b360b5fcbd6              # double 0.48994208441507447
	.quad	0x3fc9ce1b9a69dbb4              # double 0.20160241164896109
	.quad	0x3fd48c31c0858026              # double 0.32105678368498258
	.quad	0x3fcd3d1b5f5fe93c              # double 0.22842733532872639
	.quad	0x3fd1f13ce6f07902              # double 0.28034899285002279
	.quad	0x3fdf370809695548              # double 0.48773384970748568
	.quad	0x3fc44479812bc5d0              # double 0.15833967978646379
	.quad	0x3fc6f340ad5b88cc              # double 0.17929848160480899
	.quad	0x3fe3f4aaa59e5353              # double 0.62361652705531367
	.quad	0x3fd4d817f20da4b2              # double 0.32568930280701658
	.quad	0x3fed79ace8c180c8              # double 0.92110295734530556
	.quad	0x3fe0618ec7f7a955              # double 0.51190890365732378
	.quad	0x3fea037fd6ffd055              # double 0.81292716972394408
	.quad	0x3feae67fdff8f302              # double 0.84063714737530426
	.quad	0x3fd1fe2151255604              # double 0.28113587307356647
	.quad	0x3fe188920a198e6e              # double 0.54792119953749618
	.quad	0x3fcae92fea45ac44              # double 0.21024130763120941
	.quad	0x3fdac8d86b34d892              # double 0.41850862950685397
	.quad	0x3fe2300beddb1798              # double 0.56836506324974589
	.quad	0x3feb31a149596b5e              # double 0.84980835271867838
	.quad	0x3fe1de6176943cf7              # double 0.55839608345004776
	.quad	0x3fd6cdbe073ee8c4              # double 0.3563075133093998
	.quad	0x3fc3624d3d729864              # double 0.15143743038533153
	.quad	0x3fd1d7adbe4f0d74              # double 0.27878898224681525
	.quad	0x3fe2a2f9fc0949b5              # double 0.58239459253154868
	.quad	0x3fd71814536cc476              # double 0.36084468981704931
	.quad	0x3fbcb87e17429530              # double 0.11219013278840317
	.quad	0x3fc09aaf3f428858              # double 0.12972059811460457
	.quad	0x3fe447421c8d54a2              # double 0.63369851662232102
	.quad	0x3fc3e68aeb480844              # double 0.15547310341213649
	.quad	0x3fecb5b0924e6ce8              # double 0.89717892241915553
	.quad	0x3fec3c319bbabecc              # double 0.88234787383950097
	.quad	0x3fde8937fc205bb6              # double 0.477125164239108
	.quad	0x3fe34903dc960adc              # double 0.60266297419760972
	.quad	0x3fefd55ba2331d0d              # double 0.99479467086431017
	.quad	0x3fe783cc2eb5f0f8              # double 0.73483857272324737
	.quad	0x3fdef9d491ffa6ca              # double 0.48399843461684766
	.quad	0x3fee227e2fe6e505              # double 0.94171056133123499
	.quad	0x3fbe9d182224f458              # double 0.11958456834413889
	.quad	0x3fe33ca9ded0abd0              # double 0.60115521925524185
	.quad	0x3feedb2c13028a6a              # double 0.96425441468120465
	.quad	0x3fe124256ca5d8a5              # double 0.53566237659722005
	.quad	0x3fd31507146f788c              # double 0.29815842624328392
	.quad	0x3fe720200c4dec0c              # double 0.72267153170776188
	.quad	0x3fe8d1fd59fe0dee              # double 0.77563350273743281
	.quad	0x3fdd175ca6b828fc              # double 0.45455089837254525
	.quad	0x3fdee57b5065dd80              # double 0.48275645114286903
	.quad	0x3fd8b73782a44cdc              # double 0.38618266828525605
	.quad	0x3fe34814874ac694              # double 0.602548851244324
	.quad	0x3fc1382e38d5f9d8              # double 0.13452699446857141
	.quad	0x3fc0cbf65d4164fc              # double 0.13122443727005606
	.quad	0x3fd4b866ca9a593e              # double 0.32375497613374538
	.quad	0x3fce3db1f6704c0c              # double 0.23625778706681932
	.quad	0x3fc9e90dfaec26a0              # double 0.20242476226876693
	.quad	0x3fe61794593b49b9              # double 0.69037835529370917
	.quad	0x3fe888c57e719d53              # double 0.76669573494010945
	.quad	0x3fe8d80ef15ce16b              # double 0.77637431279349067
	.quad	0x3fe622f909452d71              # double 0.69176914034453152
	.quad	0x3fd6ed69db2c7772              # double 0.35824057010346799
	.quad	0x3fd94da47ef63110              # double 0.39536392592050706
	.quad	0x3fdc5c20e755db3a              # double 0.44312307921738958
	.quad	0x3fdd52bc37c8b7ca              # double 0.45817475745832026
	.quad	0x3fe88b1568db9f26              # double 0.76697798233087577
	.quad	0x3fdd406aea838cf6              # double 0.45705674077744562
	.quad	0x3fe27a530ad617e2              # double 0.57743217579331607
	.quad	0x3fd058a08ac4763e              # double 0.25540936995989572
	.quad	0x3fe665653628fdd6              # double 0.69987736299656933
	.quad	0x3fd3b848ab23219c              # double 0.30812279427166245
	.quad	0x3fe70bdd718a26e7              # double 0.72019836593355258
	.quad	0x3fc30def6e14dd3c              # double 0.14886277079652099
	.quad	0x3fe9cce5db50899b              # double 0.80626194796450379
	.quad	0x3fe893eead289483              # double 0.76805814571402242
	.quad	0x3fe62a7f044314b0              # double 0.69268751938274953
	.quad	0x3fe9c9ab20aa4c96              # double 0.80586773281028701
	.quad	0x3fce4e5390644e08              # double 0.23676533270246147
	.quad	0x3f9affad9f1bd800              # double 0.026365959964969932
	.quad	0x3fed30210629995e              # double 0.91212512210476482
	.quad	0x3fd082d02355cbd0              # double 0.25798419428536778
	.quad	0x3fe71a5dc88590d9              # double 0.72196854748156192
	.quad	0x3fde3159374f7ffa              # double 0.47176199342175063
	.quad	0x3fe599c3f01bff6d              # double 0.67502018829689592
	.quad	0x3fb8b70b438ea438              # double 0.096543029778914824
	.quad	0x3f943bca7231d8e0              # double 0.01975933382024031
	.quad	0x3fe4b9f1cb80311e              # double 0.64769830461731082
	.quad	0x3fc2123832c5f004              # double 0.14118101576957554
	.quad	0x3fe75b11df96d860              # double 0.72986692113660112
	.quad	0x3feed43480906695              # double 0.96340394125145911
	.quad	0x3fb1296572682678              # double 0.067037907058102308
	.quad	0x3fdfc40f0110eabe              # double 0.49634146789655265
	.quad	0x3fe13d00aaaab283              # double 0.53869660695416177
	.quad	0x3fe2aef47e07564d              # double 0.58385681738827488
	.quad	0x3fe1668027206796              # double 0.54376227991018555
	.quad	0x3fe157612668b4a2              # double 0.54191644193419486
	.quad	0x3fd6392409e5b30a              # double 0.34723759619264227
	.quad	0x3fe858caf46d21d5              # double 0.76083896388541439
	.quad	0x3fea5fadf53ef051              # double 0.82417962932187028
	.quad	0x3fd2aae758c31698              # double 0.29168113392038597
	.quad	0x3fb1781ef8cfb5b8              # double 0.068239150757753886
	.quad	0x3fee8846bbfe963e              # double 0.9541352912680805
	.quad	0x3fef4026a33c5d80              # double 0.97658092386238593
	.quad	0x3fdf5f36399861ea              # double 0.49018626808677246
	.quad	0x3feabadcf3e063ec              # double 0.8353104365552304
	.quad	0x3fc9be6109fad3f4              # double 0.20112240779204138
	.quad	0x3fef0814121f49fe              # double 0.96973613299843442
	.quad	0x3fe8c9f55411547f              # double 0.7746531145045451
	.quad	0x3fc3def8282eb6d8              # double 0.15524198495898278
	.quad	0x3f8dd94604fd5fc0              # double 0.01457457258918271
	.quad	0x3feea9587df92607              # double 0.95817207912585977
	.quad	0x3fd628578f29b6da              # double 0.34621228199726561
	.quad	0x3fe0beff2dde9fa9              # double 0.52331503828917392
	.quad	0x3fd24a0b1d188b6c              # double 0.28576925126451758
	.quad	0x3fefb25c4683f4c6              # double 0.99052251598882246
	.quad	0x3fee7a868d086168              # double 0.95245673699814137
	.quad	0x3fd8a22411897ea6              # double 0.3848962947140343
	.quad	0x3fb95bc5f76ee7d8              # double 0.099056599529745326
	.quad	0x3fdc758fd003eaa2              # double 0.44467540086740531
	.quad	0x3fef3c2af9a8521d              # double 0.97609471093398136
	.quad	0x3fdbe7b27ac89a6a              # double 0.4360166739519743
	.quad	0x3fcad9b4d24b069c              # double 0.20976887005058564
	.quad	0x3fe91af11a87f23a              # double 0.7845387952980396
	.quad	0x3fecfbd1c85c469b              # double 0.90573968060398913
	.quad	0x3fde7ab2fe78df16              # double 0.47623896456524173
	.quad	0x3fee88c90fa83d5f              # double 0.95419743593258122
	.quad	0x3fd925471127a3da              # double 0.39290024447705962
	.quad	0x3fd5b96aa96b222e              # double 0.33944193405889933
	.quad	0x3fe797c7bb601c6e              # double 0.73727785679592528
	.quad	0x3fc3a484eb2e61e8              # double 0.1534582279534924
	.quad	0x3feabedf6e57cc17              # double 0.83579989959105461
	.quad	0x3fdebc49e1294af8              # double 0.4802422236290762
	.quad	0x3fe0fff2ce80d5de              # double 0.53124370892208694
	.quad	0x3fc79f1fa3711144              # double 0.18454356651830939
	.quad	0x3fce707e11dac77c              # double 0.23780799743468239
	.quad	0x3fc25a33cd27228c              # double 0.14337775723676704
	.quad	0x3fed071c5da294b6              # double 0.90711801803686032
	.quad	0x3fd39ed698eb793a              # double 0.30656971868110683
	.quad	0x3fb782c5cb91a4d0              # double 0.091839182090228677
	.quad	0x3fe6a37bb72f4bcd              # double 0.70745645311614569
	.quad	0x3fcbfb0ea47e81c8              # double 0.21859915763799465
	.quad	0x3fe15f585820e807              # double 0.54288880550962026
	.quad	0x3fca1faa5e1a62a4              # double 0.20409135432125425
	.quad	0x3fe801be4cbded02              # double 0.75021281231548209
	.quad	0x3fd0857006aa24ce              # double 0.25814438486902425
	.quad	0x3fd0ae5c24edb9ec              # double 0.26064208608923312
	.quad	0x3fea072226a4497a              # double 0.81337077662673996
	.quad	0x3fa36e3728e21fd0              # double 0.037950252285611108
	.quad	0x3fe7f476fe7d4025              # double 0.74859189705785367
	.quad	0x3feaea67955e77e1              # double 0.84111384557376934
	.quad	0x3fe7bd68918e1e11              # double 0.74187115124454028
	.quad	0x3fe12bbeae20c4c6              # double 0.53658994683623784
	.quad	0x3fe576f2b2a3e863              # double 0.67077002421070764
	.quad	0x3fbcf870d7e724d0              # double 0.11316590567652729
	.quad	0x3feb1150a91058d5              # double 0.84586365719112655
	.quad	0x3fc2008ee7025d2c              # double 0.14064203529117358
	.quad	0x3fe598588989a96f              # double 0.67484690535392911
	.quad	0x3fb4f3efab592cd8              # double 0.081847171147433229
	.quad	0x3fe374b4ae40e951              # double 0.60799631151102507
	.quad	0x3fe8c1323d77b719              # double 0.77358352666280716
	.quad	0x3f703fa74c584080              # double 0.003966954716375537
	.quad	0x3fead6e57cd74e8c              # double 0.83873247511879034
	.quad	0x3fd359d08f367ad6              # double 0.30235685334802775
	.quad	0x3feab414b9b7a68f              # double 0.83448253891875079
	.quad	0x3fe5c036da3afcaa              # double 0.67971365569237219
	.quad	0x3fead7e69c997278              # double 0.83885508142300491
	.quad	0x3fe35b45e5abadeb              # double 0.60489172799628699
	.quad	0x3fe7d64b9b9ba9ea              # double 0.74490909950446604
	.quad	0x3fedff9daee7ae32              # double 0.93745311890729099
	.quad	0x3fe68e8c3bb5d37b              # double 0.70490085279617121
	.quad	0x3fe7e6301e08c106              # double 0.74684911600164194
	.quad	0x3fe1d663650b069c              # double 0.55742044196104557
	.quad	0x3fd5fec1a52eaa94              # double 0.3436740983112625
	.quad	0x3fc9a7cb1feb0cdc              # double 0.2004331498957076
	.quad	0x3fd55b3bf3cc866a              # double 0.33369349297036044
	.quad	0x3fe0293bd7995294              # double 0.5050334177891096
	.quad	0x3fda2f2cd5ec0314              # double 0.4091293419915456
	.quad	0x3fe9323c092d03fb              # double 0.78738214294582975
	.quad	0x3fdf1aca79f83acc              # double 0.48601018820856434
	.quad	0x3fdac261d57e4532              # double 0.4181141457457499
	.quad	0x3fe3e72172c3a9d3              # double 0.62196419157890614
	.quad	0x3fc165934c76f29c              # double 0.13591233476281139
	.quad	0x3febb58f42bff05d              # double 0.86591303860724234
	.quad	0x3fa0aac1944d4120              # double 0.032552766183132187
	.quad	0x3fc3643e39cad928              # double 0.15149667570012437
	.quad	0x3fa8f71f3a059230              # double 0.048760391075834852
	.quad	0x3fd8fb5a4bb8cf14              # double 0.39034135241239309
	.quad	0x3faf278a9cff1880              # double 0.060848552384002552
	.quad	0x3fc1aeaa13eb5e68              # double 0.1381428334486714
	.quad	0x3fe41ae52e36c051              # double 0.62828310991427305
	.quad	0x3fd07a18d0111acc              # double 0.2574522048857204
	.quad	0x3fe39c4a3ee37772              # double 0.6128283718387435
	.quad	0x3fe224adf2c3746b              # double 0.56697747626061579
	.quad	0x3fa3a9afd9ca2600              # double 0.0384039834362504
	.quad	0x3fe2e425985baa71              # double 0.59034995801387258
	.quad	0x3fc8f912f348ec34              # double 0.19510113600867529
	.quad	0x3fe21ed3e72b9f3f              # double 0.56626315260380256
	.quad	0x3fe7c6afe43ab5ce              # double 0.74300379348795231
	.quad	0x3fe277679b1360b8              # double 0.57707577026578516
	.quad	0x3fbd41940c0fd8f0              # double 0.11428189558487012
	.quad	0x3fcee599eaab4d58              # double 0.24138187368826425
	.quad	0x3fe99ea94884e1c1              # double 0.80061782993202979
	.quad	0x3fd4eb0213d25680              # double 0.32684375701624191
	.quad	0x3fec9970c0c518a8              # double 0.89373052263615183
	.quad	0x3fc1eeca4c094af4              # double 0.14009979927740057
	.quad	0x3fe0d372f621a221              # double 0.52581165382895645
	.quad	0x3fea3b505a58b6e6              # double 0.81974046369370224
	.quad	0x3fe10c3f135dc65b              # double 0.53274492056352629
	.quad	0x3fdaa4331da348bc              # double 0.41627195257491301
	.quad	0x3fdffe0d8155da42              # double 0.49988114958197027
	.quad	0x3fa894a5a3db6440              # double 0.048009086849284177
	.quad	0x3fca79233aa40ba4              # double 0.20682182658501091
	.quad	0x3f428d8356635c00              # double 5.66186074844377E-4
	.quad	0x3fe4aef347dd37e1              # double 0.64635623966182376
	.quad	0x3fd372d5da46f4bc              # double 0.3038839942563063
	.quad	0x3fee99343591a175              # double 0.95620165312452221
	.quad	0x3fcf569337c2b308              # double 0.2448295614498408
	.quad	0x3fe7c4d2903d8fb3              # double 0.74277618572204174
	.quad	0x3fee593671849efa              # double 0.94839021846288962
	.quad	0x3fe6bed70f9f2ccc              # double 0.71079590846184137
	.quad	0x3fe61a5f585f4215              # double 0.69071929226089657
	.quad	0x3fe0b11cf9dbd7c0              # double 0.52162026215113855
	.quad	0x3fd72ad8ba456b30              # double 0.36199014845412858
	.quad	0x3fe2570882c0979d              # double 0.573124175429928
	.quad	0x3fcfabe89a13c76c              # double 0.2474337341623668
	.quad	0x3fa55aa1f7b72fb0              # double 0.041707097519604885
	.quad	0x3fd30be63ca9779a              # double 0.2976012794878159
	.quad	0x3fcb25d97f9cd984              # double 0.2120925782307489
	.quad	0x3fe813b77a66276c              # double 0.75240682512342749
	.quad	0x3fe27425c5edf0df              # double 0.57667816789719584
	.quad	0x3fc41beef3f36058              # double 0.15710246001867989
	.quad	0x3fe49c7c1b1f7d98              # double 0.64410214707816049
	.quad	0x3fe66a79f825dd16              # double 0.70049761263263366
	.quad	0x3fdbce85bdfe1a50              # double 0.43448012880290765
	.quad	0x3fc165a1e81c3cf4              # double 0.13591407617102613
	.quad	0x3fe06f8772711832              # double 0.51361439086827532
	.quad	0x3fc2b73c14852200              # double 0.14621687890964097
	.quad	0x3fe1fddcec4e350c              # double 0.56223913339059228
	.quad	0x3fe45404bddfc8bb              # double 0.63525616726680967
	.quad	0x3fe924fe97bae8c5              # double 0.78576593050754495
	.quad	0x3fdc5ef9bdc7d0e6              # double 0.4432968476605893
	.quad	0x3feb6d7f9df5e7ff              # double 0.85711651660608357
	.quad	0x3fef936100fc7d80              # double 0.98674059097895395
	.quad	0x3fd64afe9690b640              # double 0.34832730010643687
	.quad	0x3fcc7fd8ced1bb7c              # double 0.2226515779361441
	.quad	0x3fe6baee4735447d              # double 0.71031869800403025
	.quad	0x3fdd90a39ad870c8              # double 0.46195306893947619
	.quad	0x3fdff8a2a0b1a52c              # double 0.49955049221769587
	.quad	0x3fcc58a7dec15484              # double 0.22145555855482624
	.quad	0x3febbfb28e6c7754              # double 0.86715057198646627
	.quad	0x3fe312536fdba2e1              # double 0.59598705146080644
	.quad	0x3fef7e2b86ee9431              # double 0.98415161470314249
	.quad	0x3feacbc0607b163a              # double 0.83737200588138383
	.quad	0x3fbf163519445e70              # double 0.12143260828849534
	.quad	0x3fe4b8557f1cdd52              # double 0.64750170542439833
	.quad	0x3fe22f7dd78783fe              # double 0.5682973107869882
	.quad	0x3fe60789e54030f0              # double 0.68842024589096518
	.quad	0x3fefb61979a22deb              # double 0.99097894436402833
	.quad	0x3feb96ac351ac2a5              # double 0.86214266178111088
	.quad	0x3fa236e115ef3500              # double 0.035574945380725254
	.quad	0x3fe33308d94ecffb              # double 0.59997980540219886
	.quad	0x3fa3bf4887af1e40              # double 0.038568750918383632
	.quad	0x3fd6d2db068dfd4a              # double 0.35661960258581316
	.quad	0x3fb4ee7add7b1a20              # double 0.081763915131070508
	.quad	0x3fe5d082d12fe269              # double 0.68170300347180757
	.quad	0x3fef3ac93ab27661              # double 0.97592603172570246
	.quad	0x3fe4d8404707879b              # double 0.65139783738071644
	.quad	0x3fe1346f38b43732              # double 0.53765069079393002
	.quad	0x3fe2da43d58be17d              # double 0.58914367397578327
	.quad	0x3fdf288133e09b82              # double 0.48684721056127256
	.quad	0x3febb378665c5b93              # double 0.86565799705828039
	.quad	0x3fd4b1be2fe10fb4              # double 0.32334856677720869
	.quad	0x3fa9c9f376187ea0              # double 0.050368889013268303
	.quad	0x3fd8bb3e2019e458              # double 0.38642838606717111
	.quad	0x3feaa03f935bb35d              # double 0.83206156521701369
	.quad	0x3fd6fb6bfecf7b7a              # double 0.35909557231746414
	.quad	0x3fd8dc8bb0f31c4c              # double 0.38846103935469922
	.quad	0x3fc5c8c8a2f05270              # double 0.17018993335718191
	.quad	0x3fecc238c31bc38c              # double 0.8987087069236721
	.quad	0x3fb0c764b1e16978              # double 0.065542500903949974
	.quad	0x3fc205d26e1e7e54              # double 0.14080267311963957
	.quad	0x3fed6cdd5d65be1a              # double 0.9195391487282365
	.quad	0x3fc3912859084ed8              # double 0.15286735865867374
	.quad	0x3fea5ba15f8f4d6f              # double 0.82368534721392261
	.quad	0x3fcfb13fb48d3f88              # double 0.24759670558932734
	.quad	0x3fea0f48f5467b12              # double 0.81436584382376709
	.quad	0x3fb5a8da1788d820              # double 0.084607725854624949
	.quad	0x3fe19c7f3f12a291              # double 0.55035364455132385
	.quad	0x3fef65ffd7f44059              # double 0.9812010972837114
	.quad	0x3fe56962d3a5bb6f              # double 0.66911450707799058
	.quad	0x3fd8b6a079efaaa4              # double 0.38614665897208966
	.quad	0x3fe46c1b35a13bac              # double 0.63819656824658955
	.quad	0x3fc4059db43433c4              # double 0.15642138766307145
	.quad	0x3f87a1a3eb6dc000              # double 0.011538773176397399
	.quad	0x3fcf3a3fb77c02bc              # double 0.24396511515808139
	.quad	0x3fe2d2c3d7422076              # double 0.58822814982069249
	.quad	0x3fbde4f666c59d78              # double 0.1167749405773203
	.quad	0x3fd7147ead60dfc0              # double 0.36062590533719785
	.quad	0x3fd260fa3626e330              # double 0.28716903007766614
	.quad	0x3fe0e424f28c4ace              # double 0.52784964916858157
	.quad	0x3febe15d07f1ea24              # double 0.87126018096688939
	.quad	0x3fee8b0fe24962ac              # double 0.9544753474866261
	.quad	0x3fe40cd75b6470f7              # double 0.62656753397052867
	.quad	0x3fd5bd6208fc939e              # double 0.33968401792145098
	.quad	0x3fef2d2dea29fe1d              # double 0.97426505789912065
	.quad	0x3fe8bbce0b8ca596              # double 0.77292539840452679
	.quad	0x3fe109fe49a96360              # double 0.53246988665624073
	.quad	0x3fee92124f06e779              # double 0.95533099589304904
	.quad	0x3fe00331af7d2185              # double 0.50038990283160045
	.quad	0x3fec840b6f0a9bbf              # double 0.89111873328953795
	.quad	0x3fe4688a3e6fcec2              # double 0.63776123232533899
	.quad	0x3fec8f31fcdef754              # double 0.89247989071712163
	.quad	0x3fec4936d48ad895              # double 0.88393727791005239
	.quad	0x3fb02418b1ccb460              # double 0.063050788314926276
	.quad	0x3fea62e609788dd6              # double 0.8245725808123392
	.quad	0x3fc0858ad05df850              # double 0.12907538580106115
	.quad	0x3fd2f2fc32aa6bbe              # double 0.29608063648054983
	.quad	0x3fe4ee6343948ec2              # double 0.65410006713178626
	.quad	0x3fee1c3e8d6a6c65              # double 0.9409477960611069
	.quad	0x3fd8c3666c97be60              # double 0.38692627529869661
	.quad	0x3fefdbe3e2762474              # double 0.99559206228981489
	.quad	0x3fcd82f08124a6e4              # double 0.2305584555227177
	.quad	0x3fe3adbb31c05e67              # double 0.61495742528036323
	.quad	0x3fed634ee9e0af6f              # double 0.91837258986696024
	.quad	0x3fea6286863bb5ff              # double 0.82452703683310336
	.quad	0x3fed8e76bc2e6cab              # double 0.9236406016747386
	.quad	0x3fd093062799bdba              # double 0.25897363536111195
	.quad	0x3fec131cb5b4c888              # double 0.87733302583207351
	.quad	0x3fd33ba35ea36e5a              # double 0.3005150245860243
	.quad	0x3fb7b64c51f7c458              # double 0.09262539864700281
	.quad	0x3fd9ae38c58374ba              # double 0.40125865257671089
	.quad	0x3fe777bcdbde69de              # double 0.73336642211080139
	.quad	0x3fea0272d6fbd85f              # double 0.81279890049951209
	.quad	0x3feb660e155509c5              # double 0.85620788732949704
	.quad	0x3fdec577e52fec7e              # double 0.48080251103937843
	.quad	0x3fc94931c72ff2b8              # double 0.19754621721212628
	.quad	0x3fe16277d6582635              # double 0.54327003349425829
	.quad	0x3fc27aafbdec6268              # double 0.14436909459688541
	.quad	0x3fe9b976dac1a95e              # double 0.80388968206288403
	.quad	0x3fe2b807f15361e0              # double 0.58496472486427464
	.quad	0x3fea75fcbdf64c03              # double 0.82690274335834635
	.quad	0x3fdedb109012d966              # double 0.48212064809503941
	.quad	0x3fe069aa2fffa397              # double 0.51289853453373524
	.quad	0x3fef90565fa669a8              # double 0.98636931115770654
	.quad	0x3fcec368b1ded98c              # double 0.24033840832789755
	.quad	0x3fb0ace89e471b98              # double 0.065138376848251744
	.quad	0x3fd5df10bcbcb722              # double 0.34173983031620214
	.quad	0x3fb2379340ec5770              # double 0.071160510397332066
	.quad	0x3fc63dbd60d72908              # double 0.17375914791620795
	.quad	0x3fec654dc787b94d              # double 0.88736618967758718
	.quad	0x3fd93d5636cb656a              # double 0.39436869956042264
	.quad	0x3feb6e46eaaf1eb7              # double 0.85721155010920469
	.quad	0x3fe99dc4ea2777fd              # double 0.80050893529164535
	.quad	0x3fefddbd5968d6b0              # double 0.99581782782362005
	.quad	0x3fdb61f77dc49fb4              # double 0.42785441667592328
	.quad	0x3fe05657aa935c19              # double 0.51053984942962238
	.quad	0x3fedd7dab2ef0597              # double 0.93259940097793759
	.quad	0x3fe2830e285e9bd2              # double 0.57849796185188951
	.quad	0x3fee5ab64a4ef069              # double 0.94857325089789157
	.quad	0x3fe3116a2436664a              # double 0.59587580750230384
	.quad	0x3fe6f2d1e8b1d4a9              # double 0.71714110801862774
	.quad	0x3fe0a87d1981778b              # double 0.52056746465290027
	.quad	0x3fe2e1570fb81801              # double 0.59000733442439934
	.quad	0x3fe8698856a121d6              # double 0.76288239402588931
	.quad	0x3fa2156a05c85d00              # double 0.035319627004520626
	.quad	0x3fea6122c39789f3              # double 0.82435739709427336
	.quad	0x3fdd0ea55f70f292              # double 0.4540189201395971
	.quad	0x3fe6892328d0d441              # double 0.70424039813827488
	.quad	0x3fec564335b3f578              # double 0.88553009499416557
	.quad	0x3fe6e751b06bd5c0              # double 0.71573719460746332
	.quad	0x3fe24a263e7f7370              # double 0.57155143934833852
	.quad	0x3fee6b824b6e2a59              # double 0.95062365276801153
	.quad	0x3fc5e30fc5bc0fd8              # double 0.17099187045107445
	.quad	0x3fd8d246addce138              # double 0.38783423403539841
	.quad	0x3fd82ad85b373288              # double 0.37761505992674715
	.quad	0x3fe7f82ff486eac2              # double 0.7490463043135025
	.quad	0x3fd8c3d7dd4f686c              # double 0.38695332157443008
	.quad	0x3fab93b4a11177a0              # double 0.053861279164933551
	.quad	0x3feac833200ccf55              # double 0.83693844089291736
	.quad	0x3fd750c4aefc5364              # double 0.3643047055095876
	.quad	0x3fd0debe92138328              # double 0.26359524026161063
	.quad	0x3fe3d1c1ff26ffd2              # double 0.6193552001423035
	.quad	0x3fe4adf0d24120e2              # double 0.64623299660982192
	.quad	0x3fb4fc13fe45ee48              # double 0.0819714065345859
	.quad	0x3fe42c940ad7e7af              # double 0.63044168584678129
	.quad	0x3fdf2328c599b30a              # double 0.48652095124161632
	.quad	0x3fe8bf11bf2c9bc4              # double 0.77332389200898221
	.quad	0x3fc6497032e11734              # double 0.17411615833605654
	.quad	0x3fe2d79831cd6c84              # double 0.5888176891998147
	.quad	0x3fe90d51da838b7b              # double 0.78287594488607171
	.quad	0x3fef7dc0627c70c3              # double 0.98410052524152324
	.quad	0x3fe876c9da5701d9              # double 0.76450054783350219
	.quad	0x3fcd4e321bfcce78              # double 0.22894884459093467
	.quad	0x3fd12fda81a4cfaa              # double 0.26854574833418587
	.quad	0x3fa2f748628ccc30              # double 0.037042867689159542
	.quad	0x3fe8f96bb0f18562              # double 0.78044685897127075
	.quad	0x3fb9ca6821a01c80              # double 0.10074473210271329
	.quad	0x3fecd56ee5a3dc87              # double 0.90105385638789037
	.quad	0x3fea3ff0202e8710              # double 0.82030493054864628
	.quad	0x3fe7c7645894ed0f              # double 0.74308984089967278
	.quad	0x3fe2da4ed602916c              # double 0.58914892004808683
	.quad	0x3fd4e79bfe4d7874              # double 0.3266363128112808
	.quad	0x3fde98cb7aeb0cd4              # double 0.47807585719801904
	.quad	0x3fd188c99cc39600              # double 0.27397384938225855
	.quad	0x3fe3aaffaf5b077e              # double 0.614623873225568
	.quad	0x3fda04a9bed7ca76              # double 0.40653461110119993
	.quad	0x3fe7b22b9c1664c1              # double 0.74049931035838068
	.quad	0x3fb8aaaa384ec470              # double 0.096354140040391333
	.quad	0x3fe72a03d68efac6              # double 0.72387878328284994
	.quad	0x3fc2043abd3842c4              # double 0.14075407256361505
	.quad	0x3fec9a72baed7210              # double 0.89385353574067672
	.quad	0x3fe078deb21d737f              # double 0.51475462711424302
	.quad	0x3fef7116e8d7887e              # double 0.98255486943186532
	.quad	0x3fe404705b54d429              # double 0.62554185712963772
	.quad	0x3fc9a2232f8ab724              # double 0.20026054211978661
	.quad	0x3fe1e6a0aabb1866              # double 0.55940278383128539
	.quad	0x3fea4ca2015977ec              # double 0.82185459388324266
	.quad	0x3fe84fdc1ff71351              # double 0.75974851840201485
	.quad	0x3fde229c3156a1d8              # double 0.47086243456081212
	.quad	0x3fe56d9ca33d520b              # double 0.66963035471650423
	.quad	0x3fee073c8719475a              # double 0.93838335405801421
	.quad	0x3fec6e52996294f5              # double 0.88846712072395795
	.quad	0x3fe81889376ddb53              # double 0.75299511743546998
	.quad	0x3fea694de1893634              # double 0.82535451936718695
	.quad	0x3fe91622dbd9f134              # double 0.78395216884340479
	.quad	0x3fd6db4f09135cce              # double 0.35713554273884263
	.quad	0x3fd4fabd6e8936e2              # double 0.32780395311861643
	.quad	0x3fdad2e5c63c55c4              # double 0.41912216528848156
	.quad	0x3f91ceab50762640              # double 0.017389942918759838
	.quad	0x3fe15ea1f7d9d94b              # double 0.5428018418158812
	.quad	0x3fbc72feccb71ae0              # double 0.11112968919688226
	.quad	0x3fedaf709aa161ff              # double 0.92766599847078612
	.quad	0x3fef63409ff19475              # double 0.98086577643392891
	.quad	0x3fef03a0d374ef5f              # double 0.9691928987517534
	.quad	0x3fd20bd0eccfa072              # double 0.28197119833067241
	.quad	0x3fd3cb4746a2860c              # double 0.30928213022170392
	.quad	0x3fe444609939fba5              # double 0.63334684302377708
	.quad	0x3fe73d453ac3640d              # double 0.72622930028149002
	.quad	0x3fd7e493f63d2ea4              # double 0.3733262924840608
	.quad	0x3fc8ea7f640b60c0              # double 0.19465629944784801
	.quad	0x3fc3c7baca66151c              # double 0.15453276522399839
	.quad	0x3fe57a057e6d90b8              # double 0.67114519780127235
	.quad	0x3fed55f0b4b83d9c              # double 0.91674075409712285
	.quad	0x3fe0ee724bc17635              # double 0.52910723491704081
	.quad	0x3fcde84334c40318              # double 0.23365058971833075
	.quad	0x3fe4d56fc78c1e1c              # double 0.65105427717293507
	.quad	0x3fdf044791cc351e              # double 0.48463620412879205
	.quad	0x3fec57a9c5140e11              # double 0.88570106975424967
	.quad	0x3fe5304a48b15660              # double 0.6621447963504572
	.quad	0x3fc048c3669a51b8              # double 0.12722055921461872
	.quad	0x3fe79cb5ee0db98a              # double 0.73787971968504107
	.quad	0x3fee6cbbb55b26c7              # double 0.95077310010057026
	.quad	0x3fe2cade0449614e              # double 0.58726406895861216
	.quad	0x3fc7901d796d9c1c              # double 0.18408554486379181
	.quad	0x3fe9b0842bf255bc              # double 0.80279739936184268
	.quad	0x3fd16d8c0ee6a2fc              # double 0.27231122450989154
	.quad	0x3fec9168920e0c42              # double 0.89275005842535671
	.quad	0x3fcf5df51435de1c              # double 0.24505485045277531
	.quad	0x3fe19bb3f3be249c              # double 0.55025670629506207
	.quad	0x3fefe04913d661cc              # double 0.99612859606264114
	.quad	0x3fed124216e76e42              # double 0.90847877953951461
	.quad	0x3fe85de3b7f2e95d              # double 0.76146112372888874
	.quad	0x3fe21cb5a4069355              # double 0.56600458179728241
	.quad	0x3fe273d0deb968e4              # double 0.57663768292266271
	.quad	0x3fe91591a99db96c              # double 0.78388293388506502
	.quad	0x3fec11d7c9fb27eb              # double 0.87717809152058857
	.quad	0x3fe5625f29d72558              # double 0.66825826808887268
	.quad	0x3fb0ea9c6b621f68              # double 0.06607987996733089
	.quad	0x3fec855688bf5e5c              # double 0.89127661427023552
	.quad	0x3fd27dee7aa303f4              # double 0.288936252367477
	.quad	0x3fd662a07a7db3fc              # double 0.34976970636381544
	.quad	0x3fe34eab47bbfd84              # double 0.60335315714466775
	.quad	0x3f914acf01c61e00              # double 0.01688693474127767
	.quad	0x3f96497c8131c320              # double 0.021764703164481536
	.quad	0x3feffa7ade105572              # double 0.99932616588436773
	.quad	0x3fe4859f585bef5d              # double 0.64131133325234269
	.quad	0x3fee69a3f80f4a8e              # double 0.95039556931654245
	.quad	0x3fec5616089207f9              # double 0.88550855325615807
	.quad	0x3fe3abe4f9e72570              # double 0.61473320779002272
	.quad	0x3feec3e639a938a6              # double 0.96141349088590711
	.quad	0x3fd2fc589e667622              # double 0.29665198773168033
	.quad	0x3fdff087795cdb28              # double 0.49905573703601869
	.quad	0x3fc7396582e90160              # double 0.18143910305117128
	.quad	0x3fe541c3db1df357              # double 0.6642779616955562
	.quad	0x3fe090586e66ecb5              # double 0.51762029230976359
	.quad	0x3fe92c205f93a681              # double 0.78663653056464977
	.quad	0x3fd59f34f5bd9e60              # double 0.3378422164737227
	.quad	0x3fee06d07e3c220f              # double 0.93833183913472051
	.quad	0x3fc761f0231be480              # double 0.18267633165649855
	.quad	0x3fa2519908130610              # double 0.035778791652330111
	.quad	0x3fedbe7551d7766a              # double 0.92949930176446327
	.quad	0x3fdd39ba6d024eb6              # double 0.45664845128451803
	.quad	0x3fe0be981da19dc5              # double 0.52326589381566946
	.quad	0x3fb47423f5048dc8              # double 0.079897162741466521
	.quad	0x3fec0d75c13306fe              # double 0.87664306387179614
	.quad	0x3fef892caff7b4bb              # double 0.98549494141266025
	.quad	0x3fd66419175660fa              # double 0.34985949782414105
	.quad	0x3fcd0d4ea61ba588              # double 0.22696860419027254
	.quad	0x3fe0bbb2050d4acb              # double 0.5229120348615991
	.quad	0x3fec6f1549208474              # double 0.88855995447751334
	.quad	0x3feda36c38f38b96              # double 0.92619906543073927
	.quad	0x3fe7497fba61024f              # double 0.72772203828942306
	.quad	0x3fe0503b044ffadb              # double 0.50979376642484497
	.quad	0x3fe320df3d9e7401              # double 0.59776269946053173
	.quad	0x3fe8c9719c2e6a0a              # double 0.77459030632172809
	.quad	0x3fe30a2d15417e6f              # double 0.59499220038919798
	.quad	0x3fec3f2386388be2              # double 0.88270736899391644
	.quad	0x3fe1de6f3710b1fb              # double 0.55840264086651759
	.quad	0x3fe9fff14477872c              # double 0.81249297497217787
	.quad	0x3fbde4116271b9d8              # double 0.11676129010604741
	.quad	0x3fec9c0cbaabc4b5              # double 0.8940490384976757
	.quad	0x3fed2ae46707c04e              # double 0.91148586390591801
	.quad	0x3fecda9cb51b5035              # double 0.90168605205918217
	.quad	0x3fc6d0a8d91bca10              # double 0.17824278450969233
	.quad	0x3fea7a1b2c7457bd              # double 0.82740553553116281
	.quad	0x3fe742d922cf8b30              # double 0.72691017912834432
	.quad	0x3fb618b686c92288              # double 0.086314590365086485
	.quad	0x3fe18d10870fa1a4              # double 0.54846979502785986
	.quad	0x3fd76904a3e3a252              # double 0.36578479771427397
	.quad	0x3fe61642861614b5              # double 0.690217267882551
	.quad	0x3fe251d137f6e8ad              # double 0.57248745852054628
	.quad	0x3fd904128236abcc              # double 0.39087355343025076
	.quad	0x3fd725a6c16b67bc              # double 0.36167305840137565
	.quad	0x3fd36e1fe5c8acde              # double 0.30359647216637409
	.quad	0x3fed00112b6d0add              # double 0.906258187118819
	.quad	0x3feece162c77a026              # double 0.96265705761925768
	.quad	0x3fe93a5ef9920e25              # double 0.78837536567920508
	.quad	0x3fea595c0f688263              # double 0.82340815553113733
	.quad	0x3fe051cc66f640c0              # double 0.50998516187430454
	.quad	0x3fe0711418829158              # double 0.51380352770915305
	.quad	0x3fe1993f77b4e717              # double 0.54995702152447989
	.quad	0x3fe830e84b0b93e0              # double 0.75597014100332771
	.quad	0x3fbcefa74d9717f8              # double 0.11303182262699341
	.quad	0x3fd35e465218be9e              # double 0.30262907044650855
	.quad	0x3fd1a76f28ce8336              # double 0.27584437356022151
	.quad	0x3fe7129235e1cd92              # double 0.72101698421322369
	.quad	0x3fdcc0004f9c7978              # double 0.44921882414373426
	.quad	0x3fad14e7544c2250              # double 0.056800107040605341
	.quad	0x3fea5bbb63de8a40              # double 0.82369775300714565
	.quad	0x3fdf4fa31057f2f4              # double 0.48923565479326148
	.quad	0x3fedf82a86e2b44a              # double 0.93654371590458507
	.quad	0x3fe7be21e2e3c4dd              # double 0.741959517616262
	.quad	0x3fe695ae8f66454b              # double 0.70577171333040079
	.quad	0x3fdb1e6bc553f23c              # double 0.42373174925140566
	.quad	0x3fd94b7e3e27d8aa              # double 0.39523273534667658
	.quad	0x3fcc6db0c42e4d60              # double 0.22209748820442154
	.quad	0x3fe2ae57821eb107              # double 0.58378196157494322
	.quad	0x3fdfaeaaae0e968c              # double 0.49503581044914635
	.quad	0x3fecc88539937682              # double 0.89947758908574849
	.quad	0x3fa043e0686be190              # double 0.03176785731006071
	.quad	0x3fcbecb92d4e5cd8              # double 0.21816172325336569
	.quad	0x3fc3daf568673780              # double 0.15511958692371408
	.quad	0x3fbb60cac37ae3a8              # double 0.10694567940198729
	.quad	0x3fec607fb4c80a8f              # double 0.88677964505071027
	.quad	0x3feb09b0158da0ea              # double 0.84493259629837536
	.quad	0x3fefb40c8f6c786b              # double 0.99072864544338068
	.quad	0x3fac3112fc519d30              # double 0.055061906147609085
	.quad	0x3fe6c71eefb4820e              # double 0.71180674378780551
	.quad	0x3fec77f3a496a9b2              # double 0.88964254518696451
	.quad	0x3fec879afefef8ee              # double 0.89155340007689943
	.quad	0x3fcc68235f177ff0              # double 0.22192804473070238
	.quad	0x3fc46c1d9c07d62c              # double 0.1595494281643125
	.quad	0x3fe72e90473c14e3              # double 0.72443403161073794
	.quad	0x3fd5b71f10d3d5ec              # double 0.33930184024151688
	.quad	0x3fe8d5a1c8ad3f8e              # double 0.77607812113454755
	.quad	0x3fe795ebca04ba56              # double 0.7370509095833977
	.quad	0x3fdea517a01c21ee              # double 0.47882643352252685
	.quad	0x3fc1f381e6f8f754              # double 0.14024375703768988
	.quad	0x3fd9c0a3285fad04              # double 0.40238264982936323
	.quad	0x3fc496e360ce9d58              # double 0.16085474230679142
	.quad	0x3feed88d931d3237              # double 0.96393469556057354
	.quad	0x3fef8b20c5c7a9a5              # double 0.98573340062039405
	.quad	0x3feca68089904242              # double 0.8953249632632565
	.quad	0x3fe6bd8e88b809e4              # double 0.71063925459776245
	.quad	0x3fa263deff989d60              # double 0.035918205929472036
	.quad	0x3fe090f2ac5df82e              # double 0.51769384065096857
	.quad	0x3fd995e168b6a7aa              # double 0.3997729799835904
	.quad	0x3fe30797a6cd9f18              # double 0.59467680529357647
	.quad	0x3fe5eb8b5f13d1ce              # double 0.68500298089798561
	.quad	0x3fe0aa6e776ac6e0              # double 0.52080462764407898
	.quad	0x3fe8025bb54533f1              # double 0.75028787044868583
	.quad	0x3fc42eee61d12658              # double 0.15768222595424919
	.quad	0x3fd5aa2b51633eb8              # double 0.3385113043595811
	.quad	0x3fdc3f01d035377c              # double 0.44134564717102598
	.quad	0x3fae36e9572971f0              # double 0.059012691392783867
	.quad	0x3fda7c614bf8d64a              # double 0.41384155673162992
	.quad	0x3fe8a71688453f1e              # double 0.77039648642855574
	.quad	0x3fe109499942eb1b              # double 0.53238372739665196
	.quad	0x3fbd86b5ff4637a0              # double 0.11533677561075573
	.quad	0x3fb04f7cbad9af28              # double 0.063712878816371998
	.quad	0x3fd31b432677c6d0              # double 0.29853895908955241
	.quad	0x3f95027b61033120              # double 0.020517280384226955
	.quad	0x3fb00a10ef3974f8              # double 0.062653597263721994
	.quad	0x3fe98dbf8b75a788              # double 0.79855324972344111
	.quad	0x3fb9410878157700              # double 0.098648576085420103
	.quad	0x3fdcadab8cad0020              # double 0.44809998262280892
	.quad	0x3fc6740d5831cb04              # double 0.17541662985203044
	.quad	0x3fe40457a437d81b              # double 0.6255300719628879
	.quad	0x3fcbf2c62518ad9c              # double 0.218346374619938
	.quad	0x3fb71b7a0683e6f8              # double 0.090263010588298331
	.quad	0x3febfd6b4fd56034              # double 0.87468495933990775
	.quad	0x3fcc7ea722100fb0              # double 0.22261513865680405
	.quad	0x3fdbbe15921bb95a              # double 0.43347682255161646
	.quad	0x3fe888b8b192c2f3              # double 0.76668963129313139
	.quad	0x3febd24458c7a358              # double 0.86941735591708902
	.quad	0x3fe85d04cd26abdc              # double 0.76135482853475933
	.quad	0x3fe9fa4ccbc2b198              # double 0.81180419728257203
	.quad	0x3fd1a57727e9da0c              # double 0.27572420976449119
	.quad	0x3fe7448313addb6c              # double 0.72711328357295946
	.quad	0x3fbc10b7b65bf1f8              # double 0.10963009073379471
	.quad	0x3fedd5ea16c62cb6              # double 0.93236259887762318
	.quad	0x3fbacd7720bb54f8              # double 0.10469765233149875
	.quad	0x3fec3a5d83654286              # double 0.88212466872398987
	.quad	0x3fecc0c604dae0b9              # double 0.89853192280045058
	.quad	0x3fe3b32bb0d5f954              # double 0.6156214193177143
	.quad	0x3feeda497975c08a              # double 0.96414636347437122
	.quad	0x3fdd560324e165ae              # double 0.45837477304084018
	.quad	0x3fc723e03b70fb94              # double 0.18078234579476471
	.quad	0x3fdb6ef5d00b3b6c              # double 0.42864747349533761
	.quad	0x3fd48bac40345c7c              # double 0.32102495450948942
	.quad	0x3fe92403c4bec9e5              # double 0.78564632822809399
	.quad	0x3fd995ee604e49d8              # double 0.39977607159485506
	.quad	0x3fdc1af4a2b838a8              # double 0.4391452397402511
	.quad	0x3fdef7bf63c96be0              # double 0.48387131447606002
	.quad	0x3fe692f72737f3f5              # double 0.70544011745334834
	.quad	0x3fef6a218f84e24f              # double 0.98170545607633552
	.quad	0x3fe66b1084f8514e              # double 0.70056940050793926
	.quad	0x3fc8b4453865fe5c              # double 0.19300141576603635
	.quad	0x3feac316bbcb7709              # double 0.83631455115002595
	.quad	0x3f91bea4ac6e5280              # double 0.017328808807706597
	.quad	0x3fd6dd40549c58f6              # double 0.35725410712019767
	.quad	0x3fc4452f616b9488              # double 0.158361361092066
	.quad	0x3fe9a5a7c939fea7              # double 0.80147160818156216
	.quad	0x3fd837712e537ba8              # double 0.37838391803773641
	.quad	0x3f9af9c884f87100              # double 0.026343472591279671
	.quad	0x3fe57be0a856ed91              # double 0.67137177351780697
	.quad	0x3fba82b441382820              # double 0.10355688659925066
	.quad	0x3fd3207ad4c90ca0              # double 0.29885741023844936
	.quad	0x3fd4918f70dfe3a2              # double 0.32138429663569401
	.quad	0x3fa944c172705710              # double 0.049352688998778871
	.quad	0x3fc9a6411babbb68              # double 0.20038617945780435
	.quad	0x3fef86fb2c155b8e              # double 0.9852271901134928
	.quad	0x3fedd85b9825c128              # double 0.93266086307815943
	.quad	0x3fce34da345cee4c              # double 0.23598792607104924
	.quad	0x3fd600c543805280              # double 0.34379703132552919
	.quad	0x3fe3e8e0a06c404e              # double 0.62217742283429245
	.quad	0x3feee2cc5851f695              # double 0.96518532991440741
	.quad	0x3f9fd4d0b890d900              # double 0.031085263504984972
	.quad	0x3fd121e516d30f3a              # double 0.26769377926779081
	.quad	0x3fd83101b667b3a8              # double 0.37799113095280257
	.quad	0x3fd5d21ec98e14ca              # double 0.34094972308259897
	.quad	0x3fea485b6033dd06              # double 0.82133263387268651
	.quad	0x3f954ae92a595400              # double 0.020793574533247039
	.quad	0x3fec536346ba2184              # double 0.88517917455560324
	.quad	0x3fd00ad24bd3184c              # double 0.25066049008126323
	.quad	0x3feabc2334e73465              # double 0.83546600659032022
	.quad	0x3fd2e9c2536b6784              # double 0.29551752230110417
	.quad	0x3fd01687496edd4c              # double 0.25137502833554914
	.quad	0x3fed1d874dd71c71              # double 0.90985455706767315
	.quad	0x3fedcf8824d6ad61              # double 0.93158347315822365
	.quad	0x3fc7c6a917914694              # double 0.18575013781314864
	.quad	0x3febd6d45c5b74f2              # double 0.86997430838132872
	.quad	0x3fd070d5181324b6              # double 0.25688674307873371
	.quad	0x3fe0762511dad281              # double 0.51442197310696269
	.quad	0x3fee2e8cf835b61a              # double 0.94318245390394684
	.quad	0x3fe99f8d5a43c3ea              # double 0.80072658185792744
	.quad	0x3fe7bb4083631702              # double 0.74160791074311327
	.quad	0x3fe29cc81edbc717              # double 0.58163839366008829
	.quad	0x3fe31b5d2e58ded6              # double 0.5970903306215074
	.quad	0x3fd7aebba417fc02              # double 0.37003985428594899
	.quad	0x3feba59797068456              # double 0.86396388528022316
	.quad	0x3fdacaf1c73de62c              # double 0.41863674599844347
	.quad	0x3fcc8539a164f4f4              # double 0.22281570797523609
	.quad	0x3feb91d949f92213              # double 0.86155380676160787
	.quad	0x3fd292524e7bb01c              # double 0.29018075622912121
	.quad	0x3fe4654383706641              # double 0.63736129447642764
	.quad	0x3fec5d1ad05efc62              # double 0.88636532494991749
	.quad	0x3fe32d5bc3c50df9              # double 0.59928692089346136
	.quad	0x3fe7fcf1ead75bcf              # double 0.74962707393103212
	.quad	0x3fe6adecf9881422              # double 0.70873116242058054
	.quad	0x3fe52784211d42ab              # double 0.66107374637257033
	.quad	0x3fd094c45977c4e4              # double 0.25908001648993051
	.quad	0x3fe131ea3195bcd9              # double 0.5373431175666169
	.quad	0x3fcfd644a9ff6058              # double 0.24872644711172387
	.quad	0x3fe11277d543b651              # double 0.53350440648291386
	.quad	0x3fe283c59b60a0d9              # double 0.57858543727072764
	.quad	0x3fcd89a9ee14df88              # double 0.23076366543841353
	.quad	0x3fc5060ae1f03044              # double 0.16424690277233556
	.quad	0x3fe6446e0b9d54b4              # double 0.69585325497123174
	.quad	0x3fed69d160e7fed1              # double 0.91916722228048731
	.quad	0x3fca482d7de21524              # double 0.20532768866193252
	.quad	0x3fe3dc4d04a2e3fe              # double 0.6206421938469473
	.quad	0x3fbda11a89716c28              # double 0.11573949676078199
	.quad	0x3fa6f314e2696e10              # double 0.044823315275348219
	.quad	0x3feb28db8c5f4067              # double 0.84873750130101377
	.quad	0x3fc5d17931230f84              # double 0.1704551210333386
	.quad	0x3fe322b8a00a15a2              # double 0.59798842675870767
	.quad	0x3f94714233f41ac0              # double 0.019963297291748061
	.quad	0x3fed05a54b355ab5              # double 0.90693916978019351
	.quad	0x3feadf53fd446fbb              # double 0.8397617289187943
	.quad	0x3fe6d1da88aae0bf              # double 0.71311690037602904
	.quad	0x3fb54394e74b0170              # double 0.083062464206710151
	.quad	0x3fe2b7fdac5a467d              # double 0.58495982802033064
	.quad	0x3fe055fab69f2f4e              # double 0.51049552601168968
	.quad	0x3fc3713456556a28              # double 0.15189222541342073
	.quad	0x3fd25b6072087f7e              # double 0.28682719360403286
	.quad	0x3fe9ba3d594f6214              # double 0.80398433154465687
	.quad	0x3faf7fd3959f8f00              # double 0.061522113813934354
	.quad	0x3fe64ad150e23b39              # double 0.69663301274872602
	.quad	0x3fd05e7d2a716a86              # double 0.25576714653804122
	.quad	0x3fa3a2c994a85cd0              # double 0.03835134448689248
	.quad	0x3fe378b4427527aa              # double 0.60848439197547077
	.quad	0x3fda65a3ac2ad832              # double 0.41245357335299382
	.quad	0x3fd1cca3775c0230              # double 0.27811514526550507
	.quad	0x3fcaf551c91c2538              # double 0.21061155624219352
	.quad	0x3fc0ccd43e4a1914              # double 0.13125088731266799
	.quad	0x3fbaae310b622e30              # double 0.10422045257490065
	.quad	0x3fd2e4c7a763769e              # double 0.29521361681495673
	.quad	0x3fc1537d2020a650              # double 0.13536037510611942
	.quad	0x3febe896dd453d92              # double 0.87214225022209946
	.quad	0x3fe118289c077b3a              # double 0.53419905161340542
	.quad	0x3f7c756f979f9580              # double 0.0069479331086531593
	.quad	0x3fcb4b56f761eba4              # double 0.21323668555473063
	.quad	0x3fe831a21385d1ea              # double 0.75605872929605522
	.quad	0x3fe329bc7b920165              # double 0.59884475836592499
	.quad	0x3fde256eb3583778              # double 0.47103469385262242
	.quad	0x3fe82838aee2d2d2              # double 0.75490984113147364
	.quad	0x3fd0307ca3dcf69a              # double 0.25295940401324801
	.quad	0x3f941a8a6c868860              # double 0.019632494806167577
	.quad	0x3fd37905eb9b8fb6              # double 0.30426166542587951
	.quad	0x3feca7fb5efd909a              # double 0.89550560524778011
	.quad	0x3fe20a4fba1b30a1              # double 0.56375871991032878
	.quad	0x3feebc06cd1af84c              # double 0.96045246181143673
	.quad	0x3fdc8162f36dfdf0              # double 0.44539712688853594
	.quad	0x3fc9b3e9d4ac23f0              # double 0.20080302128215477
	.quad	0x3fbeff9c3793b3f0              # double 0.12108780247554285
	.quad	0x3fcaae0c3edc4a10              # double 0.20843651837692834
	.quad	0x3fda488c33f65c52              # double 0.41067795824478026
	.quad	0x3fccc0cc4e17f9d4              # double 0.22463373006026066
	.quad	0x3fb6846352f4c1a0              # double 0.087957580330800145
	.quad	0x3fd26168647aebb6              # double 0.28719529926791709
	.quad	0x3febdef3a9b7decc              # double 0.87096579692930609
	.quad	0x3fbe2bae147a7dc8              # double 0.11785400390589651
	.quad	0x3fe9c3c5da5b97c9              # double 0.80514805458073468
	.quad	0x3f94a9acfa3a9200              # double 0.020178511402848542
	.quad	0x3fee579030323baa              # double 0.94818887151074205
	.quad	0x3fc000a935d397c0              # double 0.12502017143486732
	.quad	0x3fcc058bbecfb1a4              # double 0.21891924683531017
	.quad	0x3fcd08c7b6d1daa0              # double 0.2268304484056971
	.quad	0x3f995958f0c447a0              # double 0.024754895873293159
	.quad	0x3fd9684022491dde              # double 0.39698794697002693
	.quad	0x3fd189dc057e0ba2              # double 0.27403927360881586
	.quad	0x3fe91a5d14b54c24              # double 0.78446821255272825
	.quad	0x3fa032f144d8b110              # double 0.031638660101039773
	.quad	0x3fecc36758a65693              # double 0.89885299028783761
	.quad	0x3fdd61aaf255120e              # double 0.45908616700424509
	.quad	0x3fd72aa5a66c433c              # double 0.36197797062145631
	.quad	0x3fde962e79b40970              # double 0.4779163540371405
	.quad	0x3feae348d29c86c0              # double 0.84024468550725118
	.quad	0x3fbc719048ba75c0              # double 0.11110784316630085
	.quad	0x3fdc88c466477fc0              # double 0.44584760654651845
	.quad	0x3fd0966592366b24              # double 0.25917948988505857
	.quad	0x3fd406f647e2d568              # double 0.31292492885707768
	.quad	0x3fe10c8f58518260              # double 0.53278319596945423
	.quad	0x3fe335ff20587138              # double 0.60034138028598871
	.quad	0x3fe76e8b72925658              # double 0.7322442281462811
	.quad	0x3fe84d7b927d3ec3              # double 0.75945833789042927
	.quad	0x3fec23d74a7616a4              # double 0.87937511962146119
	.quad	0x3fd0281fc32b643c              # double 0.2524489789917117
	.quad	0x3fddd1a5c1ca61b6              # double 0.46592086720331893
	.quad	0x3fef6a335e2c3d03              # double 0.98171394723058857
	.quad	0x3fdc76951c00b0a0              # double 0.44473769888532821
	.quad	0x3fd48888a99e6d22              # double 0.32083336414662444
	.quad	0x3fd7df53e094aeca              # double 0.37300583774297691
	.quad	0x3fd33dd1e53af8cc              # double 0.3006481875016902
	.quad	0x3fcde7754c3ef538              # double 0.23362604353853
	.quad	0x3feaf789ec0e5688              # double 0.84271713356675182
	.quad	0x3fb136cff8c5a860              # double 0.067242620692611776
	.quad	0x3fd664d9871d6640              # double 0.34990537829216706
	.quad	0x3fe53783d690f4d0              # double 0.66302673251598243
	.quad	0x3fe03d20ab767b18              # double 0.50746186722594455
	.quad	0x3fd9eca363f08172              # double 0.40506825217928288
	.quad	0x3fe395299c3ee933              # double 0.6119583179163669
	.quad	0x3fe35f1a7d817c28              # double 0.6053593112263842
	.quad	0x3fe28b2452d0b7a8              # double 0.57948509383071656
	.quad	0x3feaf2d97b525824              # double 0.84214471899281706
	.quad	0x3fde18a3ced85010              # double 0.4702538986177851
	.quad	0x3fb73bb3eea688d0              # double 0.09075474335125766
	.quad	0x3f97a3959a755ac0              # double 0.023084962417977861
	.quad	0x3fd1abfa734dda84              # double 0.27612172374885113
	.quad	0x3fbbd972c2a6b778              # double 0.1087867474768397
	.quad	0x3fe02e5cf3efe3ce              # double 0.50565955776175442
	.quad	0x3fe91b63fb9e7288              # double 0.78459357399295104
	.quad	0x3fedb50384410aea              # double 0.92834640341638175
	.quad	0x3fc2336c2d5d83a8              # double 0.1421942922125059
	.quad	0x3fe044fc8a96c738              # double 0.50842120235595356
	.quad	0x3fc8d19fd9129178              # double 0.19389722918743835
	.quad	0x3fea7c1052ba0781              # double 0.82764450223497488
	.quad	0x3fb72ed5248b9ad0              # double 0.090558358595085097
	.quad	0x3fe258afab98ace2              # double 0.57332595362586525
	.quad	0x3fc023ffb64db508              # double 0.12609859849491323
	.quad	0x3fd4df4be4a449c4              # double 0.32612893417640643
	.quad	0x3fe90c0d9627c735              # double 0.78272132231925318
	.quad	0x3fcc462b5f0a58e8              # double 0.22089140072484459
	.quad	0x3fe191354a429515              # double 0.54897560600207618
	.quad	0x3feb8781920b8c8e              # double 0.86029127621113033
	.quad	0x3fd68a92a62e47ce              # double 0.35220781544296365
	.quad	0x3fe244eb5abf6bd1              # double 0.5709130070130134
	.quad	0x3fe0596b7c31af9a              # double 0.51091551071793906
	.quad	0x3fd436897cb80cf6              # double 0.31582867793640845
	.quad	0x3fd084bd79b7a984              # double 0.25810181509464081
	.quad	0x3febc48014933182              # double 0.86773685473012585
	.quad	0x3fcabb8f79efde40              # double 0.20884889081911417
	.quad	0x3fceb56b58147f4c              # double 0.2399114780500845
	.quad	0x3fe88e92861a3509              # double 0.7674038523852299
	.quad	0x3fef741a6111e17c              # double 0.98292273482279268
	.quad	0x3febf7be9589eed8              # double 0.87399224478528037
	.quad	0x3fe33c9771141f4c              # double 0.6011464317861992
	.quad	0x3fc533a248a8b190              # double 0.16563824222374679
	.quad	0x3faef544733a18a0              # double 0.060464991632259713
	.quad	0x3fed3a94275047c3              # double 0.91340072325169108
	.quad	0x3fdd544006d0cd1c              # double 0.45826721826161232
	.quad	0x3fe7293c1ed24bb7              # double 0.72378355045144971
	.quad	0x3feeed5c48010fe0              # double 0.96647466719923258
	.quad	0x3fe04dd48d18d824              # double 0.50950076635377117
	.quad	0x3fe777de16ec8624              # double 0.73338226773575288
	.quad	0x3fda5d0707a56cb4              # double 0.411927945582373
	.quad	0x3feb0effd3a421e6              # double 0.84558097206268878
	.quad	0x3fd8332ed2d4a462              # double 0.37812395657471687
	.quad	0x3fe85d83adca5e00              # double 0.76141532844025051
	.quad	0x3feefdbf9d866f67              # double 0.96847515837314979
	.quad	0x3fd54f28f830b600              # double 0.33295654523212193
	.quad	0x3fe092166674632d              # double 0.51783294687911552
	.quad	0x3fef077fda63cb78              # double 0.96966545728933706
	.quad	0x3fef560dd888c145              # double 0.97925464908443216
	.quad	0x3fe561883e9ece14              # double 0.66815578680547327
	.quad	0x3fcd37c484b30990              # double 0.22826439361058393
	.quad	0x3fd7982ebd8550ba              # double 0.36866348750960365
	.quad	0x3fec5ccebd38f7a2              # double 0.88632904965901482
	.quad	0x3f99827e725d54c0              # double 0.024911857347736044
	.quad	0x3fe90cfac8e39954              # double 0.78283442722458085
	.quad	0x3fde33f77155d5ae              # double 0.47192178790950379
	.quad	0x3fe34a845ad7de60              # double 0.60284631483859741
	.quad	0x3fef5b680304df38              # double 0.97990799512533666
	.quad	0x3fd8eea8e6eb30dc              # double 0.38956663656860058
	.quad	0x3fc4182bf3dd5b30              # double 0.15698766143278808
	.quad	0x3fc6dc769505cbd8              # double 0.17860300327774215
	.quad	0x3fd2cc41edbea42a              # double 0.29371689049964067
	.quad	0x3fe1d41b55fa9120              # double 0.55714194100122327
	.quad	0x3fe9d78b988cb299              # double 0.80756168169826303
	.quad	0x3fd78156cc5cff8e              # double 0.36726922948218366
	.quad	0x3fef45512efd697e              # double 0.97721156289780686
	.quad	0x3fe313980c8288c8              # double 0.59614183848705071
	.quad	0x3fa2b61654c6e2d0              # double 0.036545465325109938
	.quad	0x3fe53c989ac7c9f7              # double 0.66364698629905561
	.quad	0x3fe57b0081f59ffb              # double 0.67126489050588078
	.quad	0x3fb63f605538b990              # double 0.086904545599031601
	.quad	0x3fd876a25a75f482              # double 0.38224085649546435
	.quad	0x3fea661c9c6f3d55              # double 0.82496481469744742
	.quad	0x3fd988015e439a84              # double 0.39892610745884149
	.quad	0x3fe84298de7780fa              # double 0.75812953424977469
	.quad	0x3fd2c64e78fe3b8c              # double 0.2933536702702717
	.quad	0x3fd69e57fb55afac              # double 0.35341453117757271
	.quad	0x3fb50653e2b43150              # double 0.082127802703501062
	.quad	0x3febb53558386f76              # double 0.86587016325527943
	.quad	0x3fd54c9965556816              # double 0.33280024429188992
	.quad	0x3fdc5e329bc24eca              # double 0.44324937067834169
	.quad	0x3fca1b7d37b0964c              # double 0.20396390170314971
	.quad	0x3fcd03be9a7d4ce8              # double 0.22667677443914802
	.quad	0x3fe2fdfcec67c001              # double 0.59350439236550312
	.quad	0x3fd05ab6c5b41188              # double 0.255536740369529
	.quad	0x3fbd5dcfc300aa98              # double 0.11471270094686259
	.quad	0x3fcb9d02ff200d60              # double 0.21572911698613506
	.quad	0x3fef188323e2cdf4              # double 0.97174222001052479
	.quad	0x3fac7e59f7437740              # double 0.055651484902894399
	.quad	0x3fe1bbb7de14d828              # double 0.55416482329633698
	.quad	0x3fdce336f10f5d84              # double 0.45136807957666059
	.quad	0x3fec86546124ec46              # double 0.89139765714151831
	.quad	0x3fe000fc987c02e8              # double 0.50012044698823122
	.quad	0x3fbab0267b48f9a0              # double 0.1042503405560411
	.quad	0x3feee1d751cf0960              # double 0.96506849268216043
	.quad	0x3fd36c57b6d450ce              # double 0.30348770956449023
	.quad	0x3fd9d98944657c46              # double 0.40390235595072388
	.quad	0x3fd5eee3e126eebe              # double 0.34270569789417127
	.quad	0x3fdde4ab8e5398dc              # double 0.46708191775395647
	.quad	0x3fd6eb84bb448d9e              # double 0.35812490737790792
	.quad	0x3fe6b52ba89c71ae              # double 0.70961554462296816
	.quad	0x3fe09c9debb0cab4              # double 0.51911827119177767
	.quad	0x3fd1bde642af56a6              # double 0.27721554290961092
	.quad	0x3fa90f19db078d50              # double 0.048943336474418175
	.quad	0x3fd350533053b2ce              # double 0.30177764625004222
	.quad	0x3fcd134d6a897b18              # double 0.22715156270984305
	.quad	0x3fe80f9709604026              # double 0.75190307456251015
	.quad	0x3fb782c5c7dc6948              # double 0.091839181226906708
	.quad	0x3fa8ac3b8833b270              # double 0.048189030052388726
	.quad	0x3fc274375517e6c8              # double 0.14417163519811127
	.quad	0x3fea276f59b2a207              # double 0.81731383818720438
	.quad	0x3fd691d8a0a52804              # double 0.35265174568178304
	.quad	0x3fe7713124e20898              # double 0.732567379033088
	.quad	0x3fe9f290685e98e3              # double 0.81085987457916209
	.quad	0x3fc6ce251c2a2368              # double 0.17816604495262856
	.quad	0x3fe06db901e4cf01              # double 0.51339388246421447
	.quad	0x3fd5c1d83d000ede              # double 0.33995634038022426
	.quad	0x3fe79074bd34f1d7              # double 0.73638379053550806
	.quad	0x3fdfa7720063b39a              # double 0.49459505117447977
	.quad	0x3fe0d5f1f548e6db              # double 0.52611635119611877
	.quad	0x3fcd58c4db5b5a78              # double 0.22927151404174473
	.quad	0x3fe04a25e5a7b15d              # double 0.50905127386571858
	.quad	0x3fe0aaecf2285053              # double 0.52086493774778331
	.quad	0x3fe85ed7273506a1              # double 0.76157720239298865
	.quad	0x3fe30d42e5053667              # double 0.59536881189860658
	.quad	0x3fc19a33279aecd8              # double 0.13751830514761454
	.quad	0x3fdd988697c1a85c              # double 0.46243443317383082
	.quad	0x3fd0b78f6b682cb4              # double 0.26120362748106207
	.quad	0x3feaa12b1cb16bbc              # double 0.8321738777552734
	.quad	0x3feafb057e23b0ae              # double 0.84314226757625987
	.quad	0x3fe45ea842a10ee3              # double 0.63655484212401026
	.quad	0x3fec51948180189c              # double 0.88495850842516032
	.quad	0x3fd0dca17c7ac494              # double 0.26346623569686156
	.quad	0x3fd094da7043c22c              # double 0.25908528292987643
	.quad	0x3fcf981f140663fc              # double 0.24682987668782619
	.quad	0x3fde30a7799caa9a              # double 0.47171961666269058
	.quad	0x3fed4140736458bd              # double 0.91421530282493502
	.quad	0x3fb835c7e05328e0              # double 0.094570629374320258
	.quad	0x3fc98407d5f9c4d0              # double 0.19934175441770785
	.quad	0x3fd3bc4c83f6ac6e              # double 0.30836785208766215
	.quad	0x3fdd068481f24124              # double 0.45352280321187011
	.quad	0x3fe97151274293b5              # double 0.79508264224988656
	.quad	0x3fc7886401310558              # double 0.18384981210878482
	.quad	0x3fdc6e1b722a4f6a              # double 0.4442204108138329
	.quad	0x3feac76f8439ce33              # double 0.83684516740181036
	.quad	0x3fe76f5e7c36918a              # double 0.73234485874540778
	.quad	0x3fea1547c4878567              # double 0.81509769806522747
	.quad	0x3fce07c99453e688              # double 0.23461265318455937
	.quad	0x3fe4af4e82a96cee              # double 0.64639974136244205
	.quad	0x3fd20636c12d5866              # double 0.28162926545099365
	.quad	0x3fe2e3f1701fe9bc              # double 0.59032508754108148
	.quad	0x3fee41c01e901c51              # double 0.94552617997477217
	.quad	0x3fe96e6531c8caa6              # double 0.79472598765854197
	.quad	0x3fee75e908c34ead              # double 0.95189334594257036
	.quad	0x3fd72517840d398a              # double 0.36163890739126059
	.quad	0x3fd1366580be65ea              # double 0.26894509861594307
	.quad	0x3fec401dd26064e7              # double 0.88282672013442898
	.quad	0x3fcba3d5cb3280a8              # double 0.21593735143415427
	.quad	0x3fdb233bea6e5dd6              # double 0.42402551549591061
	.quad	0x3fb4840a42b70368              # double 0.080139771735969867
	.quad	0x3fec814cba09eceb              # double 0.89078365646073843
	.quad	0x3fe26f1b3881f071              # double 0.57606278454433213
	.quad	0x3fee4268a26c8a34              # double 0.94560653422769869
	.quad	0x3fc5a735461c2df4              # double 0.16916528628676952
	.quad	0x3fe3b5d7adda1311              # double 0.61594757037582515
	.quad	0x3fd8e59809ba18f4              # double 0.38901329946419527
	.quad	0x3fe5a2b930aa2dfc              # double 0.67611369614445449
	.quad	0x3feefb1db5769be3              # double 0.96815381471685346
	.quad	0x3fa30523e52618b0              # double 0.037148591730372771
	.quad	0x3fe14b4e42b0686d              # double 0.54044259095395619
	.quad	0x3fc179a550a47284              # double 0.13652483403793181
	.quad	0x3feb862cfdbaebb8              # double 0.86012887531921134
	.quad	0x3fe8ac1fbfc5e5e9              # double 0.77101123290702589
	.quad	0x3fcd5a5602553758              # double 0.22931933511648128
	.quad	0x3fdfbaf4f44fbea0              # double 0.49578594072861826
	.quad	0x3fe204707822d494              # double 0.56304191078256105
	.quad	0x3fc59fc78e284914              # double 0.16893858376767723
	.quad	0x3fe61661ea9819e2              # double 0.69023223704499181
	.quad	0x3fd35c7ee3704646              # double 0.30252048693464351
	.quad	0x3fead7f636ca23fc              # double 0.8388625211820222
	.quad	0x3fdbc0b2c4f21ac2              # double 0.43363637192707583
	.quad	0x3fd199a536301e76              # double 0.27500276843827665
	.quad	0x3fa92b0d51ff2020              # double 0.049156585940693498
	.quad	0x3fe23a9b000f5e85              # double 0.56965398799634726
	.quad	0x3fbf34f1c9f27648              # double 0.12190161877011818
	.quad	0x3fd8fede6caafec4              # double 0.39055595981697544
	.quad	0x3fbc50223b8bb8a8              # double 0.11059774354700613
	.quad	0x3f97751facfd4ba0              # double 0.02290772908538552
	.quad	0x3fe725168a066ede              # double 0.72327734907181784
	.quad	0x3fd472d21971bede              # double 0.31950809941097968
	.quad	0x3fefdb325ecb37ee              # double 0.9955074168626632
	.quad	0x3fd333bdb5b67fe4              # double 0.30003302331351578
	.quad	0x3fe72625775d8bdb              # double 0.72340653718526526
	.quad	0x3fe16d82f4ac946d              # double 0.54461810863416604
	.quad	0x3fe9ef38b59e17fb              # double 0.81045184585741425
	.quad	0x3f8b03745645af40              # double 0.013190182574099318
	.quad	0x3fee4d229ec8ce05              # double 0.94691592228485943
	.quad	0x3f960af453105cc0              # double 0.021526162690943762
	.quad	0x3fd7f410f63dafd4              # double 0.37427162215203436
	.quad	0x3fd6d29608dd58f2              # double 0.35660315385520314
	.quad	0x3fe8857f7efed01d              # double 0.76629614642888877
	.quad	0x3fd284498183aac2              # double 0.28932416580088838
	.quad	0x3fcda40d2c59bc14              # double 0.23156895318558723
	.quad	0x3fefe2521d61a775              # double 0.99637704599920928
	.quad	0x3fed127d9856f729              # double 0.90850715402459514
	.quad	0x3fe72e35a6180582              # double 0.72439081611825906
	.quad	0x3fde9053d17d393e              # double 0.47755904634404434
	.quad	0x3fe8d8a2aa54c108              # double 0.77644475238597099
	.quad	0x3fe7ded7bff6a331              # double 0.74595248692376093
	.quad	0x3fe78c7a2239e812              # double 0.73589808163456127
	.quad	0x3fccd2282630ff74              # double 0.22516347756208754
	.quad	0x3fe729433363652e              # double 0.72378692662019772
	.quad	0x3fbc560f7b0fb708              # double 0.11068817858150848
	.quad	0x3fea7eaa22894f1d              # double 0.82796198602088433
	.quad	0x3fc0801229797c7c              # double 0.12890841508030693
	.quad	0x3fb3e5b7c9010280              # double 0.077723967145184147
	.quad	0x3fd7738c1da2460a              # double 0.36642744916852676
	.quad	0x3fb55f1c8fdc56e8              # double 0.083482537386170841
	.quad	0x3fefb08d15ff4518              # double 0.99030165001218772
	.quad	0x3fea1636ca889371              # double 0.81521167332958389
	.quad	0x3fdf9c3d885cecd0              # double 0.4939111549062547
	.quad	0x3fc8da85a8d676d0              # double 0.19416876548796447
	.quad	0x3f9d36b71b6e7140              # double 0.028529034661560759
	.quad	0x3fe1c17488579889              # double 0.55486513737993548
	.quad	0x3fd72973b4dadf32              # double 0.36190502797716129
	.quad	0x3fd30a4eb7fc7362              # double 0.29750411956211142
	.quad	0x3fca0a4f9e6e82c4              # double 0.20343966709062589
	.quad	0x3fce4f2e60a66728              # double 0.23679141730536313
	.quad	0x3fe21e3acef33de3              # double 0.56619015140489315
	.quad	0x3fc7b21c75630c4c              # double 0.18512302142889536
	.quad	0x3fca94798b9650dc              # double 0.20765609088687753
	.quad	0x3fccf983deb2a4c4              # double 0.22636459707181278
	.quad	0x3fa19e8e48566280              # double 0.034412809686902968
	.quad	0x3fd5b938f3f95f54              # double 0.33943008256527674
	.quad	0x3fe6607af6208849              # double 0.69927738258071159
	.quad	0x3fe61dd392916004              # double 0.69114092470681543
	.quad	0x3f5e743a384b3800              # double 0.0018587654641808449
	.quad	0x3fe7f6c17ad09508              # double 0.74887155520687632
	.quad	0x3fcf1a38a401a15c              # double 0.24298770912288148
	.quad	0x3fe1683e4b5e6a20              # double 0.54397501678915106
	.quad	0x3fefd7d62b69ff38              # double 0.99509724120432618
	.quad	0x3fe47c178b8efc1d              # double 0.64014794595266589
	.quad	0x3fe65864431d3190              # double 0.69828999622545673
	.quad	0x3fb6839081d6bf20              # double 0.087945014666499066
	.quad	0x3fe03778b1ec7aaa              # double 0.50677141905528811
	.quad	0x3fecb16fc450fc59              # double 0.89665973990475856
	.quad	0x3fdbba8a117cb06e              # double 0.43326045711251637
	.quad	0x3fc2b4df2229f7dc              # double 0.14614476364289331
	.quad	0x3feeac7c26c6bf5a              # double 0.958555293784211
	.quad	0x3febe8cf144292ff              # double 0.87216905552904211
	.quad	0x3fd06374327da74c              # double 0.25607018404717929
	.quad	0x3feab9ca981c2d85              # double 0.83517961224554027
	.quad	0x3fe2faa36bce7304              # double 0.59309550338693429
	.quad	0x3fe4129614f37bd0              # double 0.62726883022321012
	.quad	0x3fa34f77d7609b90              # double 0.037715668717559159
	.quad	0x3fe4e4e191c1599f              # double 0.65293959110094935
	.quad	0x3fc854846fce5c68              # double 0.190079264252492
	.quad	0x3fe569b15e7224ae              # double 0.66915195890864765
	.quad	0x3fe0a06b45b04570              # double 0.5195824013809851
	.quad	0x3fd94741a6c943d6              # double 0.39497414863313673
	.quad	0x3fd4797bb7738ed8              # double 0.31991475024390814
	.quad	0x3fcd7f29bb447e38              # double 0.23044320720599543
	.quad	0x3fe8d36fb481ebd7              # double 0.77581010108348891
	.quad	0x3feea3d153566936              # double 0.95749727513183447
	.quad	0x3fe66740a9fcd424              # double 0.70010407639222594
	.quad	0x3fe81d1ba06fe276              # double 0.75355321250306306
	.quad	0x3fdb16a614c0d4d8              # double 0.42325737024959897
	.quad	0x3feaf1cb564740a0              # double 0.84201590396152781
	.quad	0x3fcd861203483014              # double 0.23065400276425463
	.quad	0x3fd8ed8eed9a9790              # double 0.38949940875533517
	.quad	0x3fc4531225fa5734              # double 0.15878512243642151
	.quad	0x3fd889f6a2c2243a              # double 0.38342061895724877
	.quad	0x3fd5165d5120b7bc              # double 0.32949002192151133
	.quad	0x3fda7686661a5fa8              # double 0.41348419161794903
	.quad	0x3fd5f5238305dd32              # double 0.3430870799561091
	.quad	0x3fe77b05341df9e6              # double 0.73376712969894409
	.quad	0x3fd15841b6d1529e              # double 0.27101176121986181
	.quad	0x3fefbafd49564c5b              # double 0.99157585452702379
	.quad	0x3fcf78315e8f1d60              # double 0.2458554946626732
	.quad	0x3fe25fb151ca54ab              # double 0.57418123221090889
	.quad	0x3fd7e71a23688348              # double 0.37348035295331217
	.quad	0x3f47cf4955bba400              # double 7.2661476903335132E-4
	.quad	0x3f85540e3fcd8580              # double 0.010414229700191013
	.quad	0x3fee7fa4050ca33f              # double 0.95308114038662228
	.quad	0x3fd7109d0c8591f0              # double 0.36038900587871492
	.quad	0x3fce5eb8d676dc78              # double 0.2372656867207501
	.quad	0x3fd52d2f8d787c78              # double 0.33088291945927706
	.quad	0x3fb0bb561b30f1a8              # double 0.065358525885079843
	.quad	0x3fd6ba1e687b14cc              # double 0.35510978892518774
	.quad	0x3fe9a53cdc693842              # double 0.80142062233949951
	.quad	0x3fe1dc39c1cf0a13              # double 0.55813300946494093
	.quad	0x3fe4d7a6db9bf89d              # double 0.65132468120988884
	.quad	0x3feacbe8b56d589d              # double 0.83739123759257306
	.quad	0x3fcb9810d0a97780              # double 0.21557817638943888
	.quad	0x3fd8aecf34646016              # double 0.38566951862731125
	.quad	0x3feda0a4065b3aaf              # double 0.92585946313359624
	.quad	0x3fd6f9cca49b0068              # double 0.35899654459718144
	.quad	0x3fa029727058c870              # double 0.031566215719423307
	.quad	0x3fe4d7b4951c4b24              # double 0.65133122561596624
	.quad	0x3fc88d353ebc29c0              # double 0.19180932582123766
	.quad	0x3fc2d2d36e418c5c              # double 0.14705889590831844
	.quad	0x3fd7a056dadce488              # double 0.36916133282972696
	.quad	0x3fe2e28ed7e779ae              # double 0.59015600365437648
	.quad	0x3f541a3ffa1e1800              # double 0.0012269615913012011
	.quad	0x3fd182ebae43c6ea              # double 0.27361576097528817
	.quad	0x3fe81941dc1b67ea              # double 0.7530831622091203
	.quad	0x3fdc77c1d9aaab54              # double 0.44480940109740641
	.quad	0x3febd1f3d2622786              # double 0.86937895861159187
	.quad	0x3fea125389b1c1ec              # double 0.81473709958487239
	.quad	0x3feeff45cc82ecdc              # double 0.96866121238363289
	.quad	0x3fd6c6452fbf5eb6              # double 0.35585145628781889
	.quad	0x3fe0b6b174b37a2b              # double 0.5223014144247079
	.quad	0x3fd0948857278a86              # double 0.25906570922067151
	.quad	0x3fe9a24fe227faef              # double 0.80106348200919608
	.quad	0x3fea1897b7fab73b              # double 0.81550203259914811
	.quad	0x3fdc20490c2b7ab0              # double 0.43947054089032189
	.quad	0x3fb61302e0cd5798              # double 0.086227588542298839
	.quad	0x3fee450788a8445d              # double 0.9459264439666516
	.quad	0x3fd9ea86a74d27dc              # double 0.40493933046366037
	.quad	0x3fef841a27ec621d              # double 0.98487575337918864
	.quad	0x3fe56c2a2b2d3f94              # double 0.66945370133361104
	.quad	0x3faa3c6604e0d6c0              # double 0.051242054076664711
	.quad	0x3fdfa5f70c2d1de0              # double 0.49450470151029258
	.quad	0x3fe93fefa0048779              # double 0.78905469182448862
	.quad	0x3feff720fcdf50e8              # double 0.99891709698797814
	.quad	0x3fe6d0cd06445979              # double 0.71298838829061062
	.quad	0x3febf46a812016fb              # double 0.87358594150347757
	.quad	0x3fe38c0571481c6a              # double 0.6108424389393694
	.quad	0x3fd1a5ed2e7e0468              # double 0.27575234928378345
	.quad	0x3fb0dc2f26ff12d0              # double 0.065859744091606887
	.quad	0x3fd392c5ba399baa              # double 0.3058332747081588
	.quad	0x3feed89122e6621b              # double 0.9639363938941331
	.quad	0x3feedd9e3e3194ae              # double 0.964552995178243
	.quad	0x3fe823dcd1670c5b              # double 0.75437775515491567
	.quad	0x3fe19c7a110ebe2a              # double 0.55035117465553651
	.quad	0x3fe5331a8aadc961              # double 0.66248824201310808
	.quad	0x3fc5b765f72d63d4              # double 0.16965937203602144
	.quad	0x3fe776ef098fbc85              # double 0.73326827876543688
	.quad	0x3fe4c50cbc4b27b1              # double 0.64905392433251141
	.quad	0x3fe53d37e35b41a7              # double 0.66372293859062814
	.quad	0x3fef4b26ea7f3e2f              # double 0.97792383003429061
	.quad	0x3fea195364f356f1              # double 0.81559152333167451
	.quad	0x3fef1fe97f2f705f              # double 0.97264551964645906
	.quad	0x3fe56060518f3110              # double 0.66801467828330097
	.quad	0x3fd024f3ded6b8b4              # double 0.2522554088744855
	.quad	0x3fcd199ab020f580              # double 0.22734387970005443
	.quad	0x3fe449a28da2271d              # double 0.63398864424491175
	.quad	0x3fe918968ff3e0bb              # double 0.78425148120643173
	.quad	0x3feb1fce6beb2282              # double 0.84763260915595162
	.quad	0x3fea4983b2337a26              # double 0.82147393040560668
	.quad	0x3feebcac48ef2dd6              # double 0.96053137059191829
	.quad	0x3fc2bf0a36f5da7c              # double 0.14645507510768485
	.quad	0x3fef1bafe6c29474              # double 0.97212977476432493
	.quad	0x3fe61d039ffea261              # double 0.69104176758726166
	.quad	0x3fc693c75e3b8eec              # double 0.17638485051349251
	.quad	0x3fe615a18a4b796d              # double 0.69014050493914925
	.quad	0x3fc4ef81ca315eec              # double 0.16355917332361203
	.quad	0x3fe52d7fbbe8759b              # double 0.66180407238759942
	.quad	0x3fd48dc2ec801cb2              # double 0.32115243049379238
	.quad	0x3fb6b56b61556008              # double 0.088705741179524122
	.quad	0x3fed6cd31523b3e7              # double 0.91953424576570064
	.quad	0x3fd8346185b23d18              # double 0.3781970792415037
	.quad	0x3fe2d543f5014553              # double 0.58853338100940744
	.quad	0x3fdbc9b21ed94422              # double 0.43418553364341694
	.quad	0x3fb78d676032a5e8              # double 0.092001400934030308
	.quad	0x3feb4b9cc5322469              # double 0.85298002734010681
	.quad	0x3faceb37f88d8f10              # double 0.056482075777948393
	.quad	0x3fddef8f0cf6c54e              # double 0.46774650827417907
	.quad	0x3fe960c290f8f9a5              # double 0.79306152644112571
	.quad	0x3fd048e81f1438c0              # double 0.25444987330491742
	.quad	0x3fd4bf7a876581c2              # double 0.32418692800822779
	.quad	0x3fc5e39e3c1a6298              # double 0.17100885328979554
	.quad	0x3fd46cecfca070ca              # double 0.31914829893663621
	.quad	0x3fd2a202a0a0a092              # double 0.29113832174562859
	.quad	0x3fca2f41d29aa184              # double 0.20456717284583814
	.quad	0x3fce615ff9575138              # double 0.23734664606912204
	.quad	0x3fe5f15155192555              # double 0.68570772763011212
	.quad	0x3fd22e99eaa43578              # double 0.28409431375697336
	.quad	0x3fc37d9397bc32b4              # double 0.15226979168837362
	.quad	0x3fef8c3ff482ffc5              # double 0.9858703399295271
	.quad	0x3fd23047fa206ba6              # double 0.28419684816770496
	.quad	0x3fe5ac885e529fa5              # double 0.67731111929332555
	.quad	0x3fee65beed9a884e              # double 0.94992014319383045
	.quad	0x3fe249e3695c2d7a              # double 0.5715195710958334
	.quad	0x3fbb24570e18e318              # double 0.10602325529260914
	.quad	0x3fe322fade88b8b9              # double 0.59802001441655428
	.quad	0x3fd0b32ea1124f9c              # double 0.26093641023293812
	.quad	0x3fa6c881a4bc90f0              # double 0.044498492583700755
	.quad	0x3fe2481e81318319              # double 0.57130360825621829
	.quad	0x3fe65f9d756faa88              # double 0.69917176186329844
	.quad	0x3fdd81d3e2bd9762              # double 0.46104905264507157
	.quad	0x3fe03b7071f6bf02              # double 0.50725576647343495
	.quad	0x3fcc7abcebd1ea24              # double 0.22249566568992052
	.quad	0x3fdae51330b76bde              # double 0.42023162610501952
	.quad	0x3fd6f699d0d8e2ec              # double 0.35880132098422624
	.quad	0x3fe95ed16ec19da1              # double 0.79282447464077077
	.quad	0x3fe6cfd124ad23cc              # double 0.7128682819685479
	.quad	0x3fcdce4e7824c6ec              # double 0.23285847536458648
	.quad	0x3fd9fd148a122726              # double 0.40607179149138728
	.quad	0x3fc5d49c07238594              # double 0.17055082653591269
	.quad	0x3feaf4eb0bc97f80              # double 0.84239723493736562
	.quad	0x3fccc76c5d11375c              # double 0.22483591598796238
	.quad	0x3fec3af2d61525a0              # double 0.88219587147721156
	.quad	0x3fe0c77dd0f2f794              # double 0.52435198603028477
	.quad	0x3fe16a32a6fe10c4              # double 0.54421360603057467
	.quad	0x3fe170af2408c18e              # double 0.54500538862161974
	.quad	0x3fdf978f7d8c3652              # double 0.49362551937597232
	.quad	0x3fe080861fb09395              # double 0.51568895520596192
	.quad	0x3fce04c5c0c23ec8              # double 0.2345206443028387
	.quad	0x3fd99c241cad586c              # double 0.40015509415150663
	.quad	0x3fd3f4bbe5223ca0              # double 0.31181237579671439
	.quad	0x3fdeee94a139c1aa              # double 0.48331180329025847
	.quad	0x3fce0387e41d9f84              # double 0.23448275221312198
	.quad	0x3fc0580e27fda884              # double 0.12768723442724561
	.quad	0x3fe76d9b7d84438f              # double 0.73212980761501167
	.quad	0x3fd4f2d137e80bb4              # double 0.32732038936245123
	.quad	0x3fed163cd94ba89d              # double 0.90896456184897867
	.quad	0x3fbfda5e5fe25a38              # double 0.12442579117701136
	.quad	0x3fd512a764d7bba6              # double 0.32926354263229951
	.quad	0x3fd9404c6626ee20              # double 0.39454946494854148
	.quad	0x3fbdf775ce13fc48              # double 0.1170571926231655
	.quad	0x3fec993be2099ffc              # double 0.89370531223266835
	.quad	0x3fe8e664325872a7              # double 0.77812394936662066
	.quad	0x3fec20e62cdb4621              # double 0.87901600609820119
	.quad	0x3fe337e183f4cb00              # double 0.60057140133571352
	.quad	0x3fe9f3f89a581e57              # double 0.81103162904123394
	.quad	0x3fefd4758a85e5d6              # double 0.99468495421677505
	.quad	0x3fc3622f23e55848              # double 0.15143384220817979
	.quad	0x3fe1dfae7dd94f47              # double 0.558554883764807
	.quad	0x3fdb6057ed8653ee              # double 0.42775533862851389
	.quad	0x3fdf8595cfce0666              # double 0.49252839368282364
	.quad	0x3fe04dbe9f955532              # double 0.5094903103696764
	.quad	0x3fc7129f5a3a0f94              # double 0.18025581269841651
	.quad	0x3fdabc30627d6874              # double 0.41773614519264091
	.quad	0x3fac11b5f3e880a0              # double 0.054822622322036496
	.quad	0x3fefb1c300c2e539              # double 0.99044942997640028
	.quad	0x3fcce0710a98582c              # double 0.225599413083445
	.quad	0x3fe57d86a853caf9              # double 0.6715729987757576
	.quad	0x3fe6dd589abd98f7              # double 0.71451978895927837
	.quad	0x3feb59ff78821d14              # double 0.85473607575196064
	.quad	0x3fe5a1649b9628fb              # double 0.67595129383087682
	.quad	0x3fe97291bd377829              # double 0.79523550945646548
	.quad	0x3fed36d00d2c2abe              # double 0.91294100353965013
	.quad	0x3fe5ad985e703810              # double 0.67744081921569155
	.quad	0x3faac97d73ae67c0              # double 0.052318497058152058
	.quad	0x3fe660e6d38e6d06              # double 0.69932881660079782
	.quad	0x3fe66f52ffbc80a5              # double 0.70108938168052204
	.quad	0x3feb7c010750d2eb              # double 0.85888720921374551
	.quad	0x3fe66605c8c076fe              # double 0.69995392999018669
	.quad	0x3fa6972cf679aab0              # double 0.044122128569900609
	.quad	0x3fc7dce7276bfb34              # double 0.18642892289059321
	.quad	0x3fd13c351c13afdc              # double 0.26929977170834518
	.quad	0x3feeb4709014f523              # double 0.95952633038510659
	.quad	0x3fd138540a3c2968              # double 0.26906300544273742
	.quad	0x3fd4e44d3601175c              # double 0.32643442415097979
	.quad	0x3fe2606d25323d7e              # double 0.57427079453366026
	.quad	0x3fa31298ba71f140              # double 0.037251255759630286
	.quad	0x3fe0e5e297b16314              # double 0.52806214931033191
	.quad	0x3fdf81bf9ed868d2              # double 0.4922942210411182
	.quad	0x3fef7e9bc571ad51              # double 0.98420513690272504
	.quad	0x3fddedb41d2122f8              # double 0.46763327450439318
	.quad	0x3feb113d2abc31f1              # double 0.84585436197954611
	.quad	0x3fc445db9acd0254              # double 0.15838189180978424
	.quad	0x3fd07129448a8296              # double 0.25690681165182505
	.quad	0x3feabf1494be4957              # double 0.83582524348666254
	.quad	0x3f9f004aefa9e740              # double 0.030274554136190845
	.quad	0x3fb7fefc7c1f34d0              # double 0.093734531691740174
	.quad	0x3fd03285e870bf6a              # double 0.2530836839605316
	.quad	0x3fed613dc514c099              # double 0.9181202744712379
	.quad	0x3fcae0c05548463c              # double 0.20998386539626945
	.quad	0x3feadfb34324ca6c              # double 0.839807158603731
	.quad	0x3fdc64daf76ec9dc              # double 0.44365572131496633
	.quad	0x3fdc9cf191b39aea              # double 0.44707907894773646
	.quad	0x3fdfd1b5be283dfa              # double 0.49717467851675645
	.quad	0x3fddf8f5f78d9d3c              # double 0.46832036185374526
	.quad	0x3fec40573e851238              # double 0.88285410128498309
	.quad	0x3fd457107b0e29bc              # double 0.31781398789521709
	.quad	0x3f9e5ade210dcb80              # double 0.029643507735680696
	.quad	0x3fef059ce7bb76db              # double 0.9694351697941913
	.quad	0x3fad2823413dd850              # double 0.056946851457653325
	.quad	0x3f9d09da0c5eedc0              # double 0.028357893948607105
	.quad	0x3fca4fbdfdbbf914              # double 0.20555853738182661
	.quad	0x3fe7ffd9b37e231b              # double 0.74998173768208021
	.quad	0x3fef6865bb9d7ea5              # double 0.98149382251354622
	.quad	0x3fdb309beb74c388              # double 0.42484186166534998
	.quad	0x3fdf9f9478dffd72              # double 0.49411498836703693
	.quad	0x3fc449045755d824              # double 0.15847830070896507
	.quad	0x3f68273b7924ae00              # double 0.0029483949266670972
	.quad	0x3fedde40affa46db              # double 0.93338045473702935
	.quad	0x3fa25343171854f0              # double 0.035791489190310943
	.quad	0x3fe1872a5b89062c              # double 0.54774968984583472
	.quad	0x3fd5c75cfced3ba2              # double 0.34029316615936456
	.quad	0x3fcfc99221964000              # double 0.24833895339952505
	.quad	0x3fe1bb552bf63ed0              # double 0.55411776148135949
	.quad	0x3fd9c12e54cbfec2              # double 0.40241583138411496
	.quad	0x3fef9309e36c35d9              # double 0.98669905107970656
	.quad	0x3fe0ac0959fbf454              # double 0.52100055289305169
	.quad	0x3fdaccbec160c928              # double 0.41874665150239077
	.quad	0x3fc3259a0375f8a0              # double 0.14958501023278803
	.quad	0x3fcc939275826d5c              # double 0.2232535432602657
	.quad	0x3fd862a33f0ab68e              # double 0.3810203662531898
	.quad	0x3feb03343d652d17              # double 0.84414112082723392
	.quad	0x3fee25ec7a906f93              # double 0.94212936342545317
	.quad	0x3fbaa3cea2d75100              # double 0.10406199908840463
	.quad	0x3fc1348428cf3160              # double 0.13441516869205383
	.quad	0x3fd60601132f1aee              # double 0.34411646722257572
	.quad	0x3fe905de8257e687              # double 0.78196645219505079
	.quad	0x3fe0a96cc1d28794              # double 0.5206817422479042
	.quad	0x3fc9697e4310e22c              # double 0.19853189730362553
	.quad	0x3fe46a4431957538              # double 0.63797197040881937
	.quad	0x3fcafab66cacb9f0              # double 0.21077614122755461
	.quad	0x3fbf26e8f1247688              # double 0.12168746840731093
	.quad	0x3fccb39fed7cc988              # double 0.22423171135012532
	.quad	0x3fc283edeb6b19a4              # double 0.14465116496121511
	.quad	0x3fe14c61f7b3d74a              # double 0.54057405833621286
	.quad	0x3fdbb48483246dae              # double 0.43289292151322456
	.quad	0x3fefd61e8061c205              # double 0.99488759111960745
	.quad	0x3fcb157d048597d0              # double 0.21159327240746828
	.quad	0x3fd7d1d1d766de74              # double 0.37218137774787086
	.quad	0x3fe8465906006a38              # double 0.75858737156096989
	.quad	0x3fee255d6e5e0f3c              # double 0.9420611529935523
	.quad	0x3fc783a92b5d9ae8              # double 0.18370546929801113
	.quad	0x3fe59414ef8288be              # double 0.67432638911511567
	.quad	0x3fe7afc10097d070              # double 0.74020433536362695
	.quad	0x3fb75f63cca513e8              # double 0.091299283468358916
	.quad	0x3fe0507771755b41              # double 0.50982257995460867
	.quad	0x3fea94e526aff1ed              # double 0.83067567401991271
	.quad	0x3fe4eb092d52719b              # double 0.65369089939081293
	.quad	0x3fe709d6603905e8              # double 0.71995085519318724
	.quad	0x3fe0d7c41d1a3509              # double 0.52633863147789939
	.quad	0x3fe28e9dddf2aa7e              # double 0.57990926121904329
	.quad	0x3fc428c7dd72c854              # double 0.15749452889355331
	.quad	0x3fe7bd0f198d402a              # double 0.74182848921373545
	.quad	0x3fc8bfdba853a844              # double 0.19335504263955461
	.quad	0x3fdfd04b8f3c5dce              # double 0.49708832729217256
	.quad	0x3fe608119d01aa56              # double 0.68848496117909508
	.quad	0x3fc9795c94ee60bc              # double 0.19901616355924101
	.quad	0x3feddcfbcd0761fa              # double 0.93322553677268094
	.quad	0x3fecafd69ce5b233              # double 0.89646464008325777
	.quad	0x3fec87cc26c6edd9              # double 0.89157683919568875
	.quad	0x3fef07098131bcd0              # double 0.96960902436503638
	.quad	0x3fe297edc31408bf              # double 0.58104599095556597
	.quad	0x3fce2fe35d9daa60              # double 0.23583643027389467
	.quad	0x3fd32add54ffe544              # double 0.29949124623052037
	.quad	0x3fe13a5ab0b5da77              # double 0.53837332261794202
	.quad	0x3fd56f8faa383508              # double 0.33493415472987964
	.quad	0x3feca71c38f47a94              # double 0.89539919971487558
	.quad	0x3fdf90799ab1c0c4              # double 0.49319305521840939
	.quad	0x3fed43d51eaa4049              # double 0.91453033437029163
	.quad	0x3fe5e469c96cd805              # double 0.68413247433522939
	.quad	0x3fe6a49a6ae017e1              # double 0.70759316324324228
	.quad	0x3fa3c93cfb7b1730              # double 0.038644700716345404
	.quad	0x3fbd8ee8e67d8a48              # double 0.11546187998968904
	.quad	0x3fdbe8e8204033b0              # double 0.43609049939623912
	.quad	0x3fe7a08f449dc4c1              # double 0.73834956552141062
	.quad	0x3f9a0f039b3e7400              # double 0.025447899198855595
	.quad	0x3faf541319df0190              # double 0.061188313396544847
	.quad	0x3f8898529ae4ff00              # double 0.01200928244782018
	.quad	0x3fe3bf713e8811f0              # double 0.61711942876041626
	.quad	0x3fce453437fb6a74              # double 0.23648693784237518
	.quad	0x3fcb98ef499d4620              # double 0.21560469717455621
	.quad	0x3fea964c76b9b0c4              # double 0.83084700764222718
	.quad	0x3fceb3005984ceac              # double 0.23983768816980466
	.quad	0x3feafb622cb0c564              # double 0.84318646172156919
	.quad	0x3fedced2d3e1bd8a              # double 0.93149701483882663
	.quad	0x3fdd3b3dc7930e44              # double 0.45674080362025316
	.quad	0x3fd50cc370738b88              # double 0.32890401822640358
	.quad	0x3fc9c9d4516e4be8              # double 0.20147184349170222
	.quad	0x3fe0e1c84b676219              # double 0.52756132819473855
	.quad	0x3fb3b0e7a828adc0              # double 0.076918104700488321
	.quad	0x3fedbb4457c5401d              # double 0.92910973684957165
	.quad	0x3f6cde0dddb3e400              # double 0.0035238524266074656
	.quad	0x3fd2edc583359bbe              # double 0.29576242268961639
	.quad	0x3fe23af0a6ffce50              # double 0.56969483010329647
	.quad	0x3fe0116f13b4206e              # double 0.50212816093791246
	.quad	0x3fe7fd11a0cc98d4              # double 0.74964219480605231
	.quad	0x3fc8d0b45f440464              # double 0.19386915828366391
	.quad	0x3fc0e537edd2c96c              # double 0.13199519264669435
	.quad	0x3fd3cb5cc8de229e              # double 0.3092872583006655
	.quad	0x3fabe3c90783f7b0              # double 0.054472238700312814
	.quad	0x3fee8cc22f4261cc              # double 0.95468243818600617
	.quad	0x3fe12d17e0150c2f              # double 0.53675454870279349
	.quad	0x3fc0cf44f29a0960              # double 0.13132535787378696
	.quad	0x3fd17595fa3a9678              # double 0.27280187069332085
	.quad	0x3fda1e076f74118a              # double 0.40808282741661428
	.quad	0x3fa8fcd26ce5f9e0              # double 0.048803878587012184
	.quad	0x3fe8ba316b63ee35              # double 0.77272864317587298
	.quad	0x3fd15aeeb4676fb6              # double 0.27117507569868893
	.quad	0x3fe25fa58ae124b6              # double 0.57417561650176796
	.quad	0x3f8f3cbd5abcc580              # double 0.015252570468507143
	.quad	0x3fd771b3cf720d1e              # double 0.36631484278059812
	.quad	0x3fe0f25a9d928619              # double 0.52958422447062781
	.quad	0x3fe1e0b0e6937887              # double 0.55867810282121944
	.quad	0x3fcf5c7069674bbc              # double 0.24500851771025889
	.quad	0x3fbd7402e750a258              # double 0.11505144259775457
	.quad	0x3fe9a13261126578              # double 0.80092734298084078
	.quad	0x3fb647ddcd07f2c8              # double 0.087034094387443806
	.quad	0x3fe3f2681f498611              # double 0.62334066496640805
	.quad	0x3fe2c2afa664e4e4              # double 0.58626539706088154
	.quad	0x3febb145c055ca11              # double 0.86538970532848414
	.quad	0x3fed897e84e23993              # double 0.92303396180959607
	.quad	0x3fe0ff63755b6651              # double 0.53117535516066472
	.quad	0x3fdb164bdb816a44              # double 0.42323585926138585
	.quad	0x3fe4ff8e56a77b2d              # double 0.65619580197003347
	.quad	0x3fe463dce32769fe              # double 0.63719028821952839
	.quad	0x3fe5b00230de1577              # double 0.67773541969715623
	.quad	0x3fea30b1f241197f              # double 0.81844422641078995
	.quad	0x3fb2cc2cccf41cd0              # double 0.073427963292590492
	.quad	0x3feeb4114a5bb193              # double 0.9594809009845896
	.quad	0x3fe4586ea82b2ce9              # double 0.63579495282593002
	.quad	0x3fc53c50256ed3fc              # double 0.16590310886172677
	.quad	0x3fba29427110f488              # double 0.10219207058340107
	.quad	0x3fe823bea9962d44              # double 0.75436337587726898
	.quad	0x3fcb91168edde2ac              # double 0.21536523796000517
	.quad	0x3fd9162afe785c40              # double 0.39197802401162463
	.quad	0x3fd32dd4cde48e32              # double 0.29967231852262721
	.quad	0x3fd624c21805119c              # double 0.34599354119952763
	.quad	0x3f95af31f40079a0              # double 0.021176128881160161
	.quad	0x3fe3df440888bd5a              # double 0.62100412051033094
	.quad	0x3fa1e5c166069e70              # double 0.034956020073249827
	.quad	0x3fd4839f70d07948              # double 0.32053361908937861
	.quad	0x3fc9f6799531f7c4              # double 0.20283431801720841
	.quad	0x3fece8157c304478              # double 0.90333055739951273
	.quad	0x3fe42c96692f9bae              # double 0.63044281524786583
	.quad	0x3fdcc2ab32ff58d0              # double 0.4493816373846018
	.quad	0x3fd5361ce6564790              # double 0.33142778867579015
	.quad	0x3fd6aa86dd669586              # double 0.35415813084758729
	.quad	0x3fe2b1cb2cb6bbe5              # double 0.58420332654156637
	.quad	0x3fe36c781cd0b794              # double 0.60699086788166534
	.quad	0x3fc83cd54186e650              # double 0.18935647677953904
	.quad	0x3fe7a72d33b3799d              # double 0.73915729616037462
	.quad	0x3fe1d0ef1d31393c              # double 0.5567546434556685
	.quad	0x3fe67728e4f3fc3c              # double 0.70204586713214878
	.quad	0x3fe4af0a35a6f1a5              # double 0.64636717299395186
	.quad	0x3f999ea230335d00              # double 0.025019201461728535
	.quad	0x3feb75117d8eb361              # double 0.85804056666311734
	.quad	0x3fe4ff55b0e12efd              # double 0.65616879030991948
	.quad	0x3fee3f260e97e54d              # double 0.94520857668173053
	.quad	0x3fc77bcf2355b60c              # double 0.18346585488636469
	.quad	0x3fd3d221a6e80de2              # double 0.30970040606936611
	.quad	0x3fd317c10483a08c              # double 0.29832482758366363
	.quad	0x3fe99814ae87f92a              # double 0.79981454933275598
	.quad	0x3fe48c1c52282a94              # double 0.64210334821958037
	.quad	0x3fcd4aeed19f34a0              # double 0.22884927020496537
	.quad	0x3fef5f6776e71487              # double 0.98039601538825216
	.quad	0x3fe7270760f77cf6              # double 0.72351426066225488
	.quad	0x3fd30e7e0a02b04e              # double 0.29775954225147394
	.quad	0x3fca50242c91b0ec              # double 0.20557071853853104
	.quad	0x3fe783996ca8bc35              # double 0.73481436941609124
	.quad	0x3feb0f4c56f39617              # double 0.84561745627132978
	.quad	0x3fb1ddf59fbd1338              # double 0.069793082712817589
	.quad	0x3fc3d12898bfb8ac              # double 0.15482051332896185
	.quad	0x3fda4a13f249b542              # double 0.41077135716371427
	.quad	0x3fe3fc3b80d3bad3              # double 0.62454009210145001
	.quad	0x3fc509d7b01e5ee8              # double 0.16436287021200902
	.quad	0x3fd4d4705137a2fa              # double 0.32546623164539279
	.quad	0x3fed0da2d78816f8              # double 0.90791456314101904
	.quad	0x3fe41a7a619d5664              # double 0.62823218407966097
	.quad	0x3fec8b063caea55f              # double 0.89197074748987493
	.quad	0x3fb50ec1fb602800              # double 0.082256435271261807
	.quad	0x3feae33b26b0b61b              # double 0.84023816639609394
	.quad	0x3fd916ad07adfa48              # double 0.39200902700386964
	.quad	0x3fe2347eb4304c94              # double 0.5689080733594829
	.quad	0x3faae86c94b076d0              # double 0.052554505491782089
	.quad	0x3fca6c7b617a4b58              # double 0.20643560657171167
	.quad	0x3fd5bde50d9e82e2              # double 0.33971525506971834
	.quad	0x3fdbf0b7b5b5a0fa              # double 0.43656723733012337
	.quad	0x3fe183b886f2095d              # double 0.54732920033010724
	.quad	0x3fc261edd9979994              # double 0.14361355900400652
	.quad	0x3fed76d7f5fe800d              # double 0.92075727506380789
	.quad	0x3fed9b3c31289e6f              # double 0.92519960023214576
	.quad	0x3fcfcf592823217c              # double 0.24851526698899906
	.quad	0x3fa35705b9509a40              # double 0.037773302909319018
	.quad	0x3fe3ba348fcacf5c              # double 0.61648014149111985
	.quad	0x3fd96533ffe9fde2              # double 0.39680194846729766
	.quad	0x3fbcfc40b88a4fe8              # double 0.11322407250764821
	.quad	0x3fdca50be555c25e              # double 0.44757363697048003
	.quad	0x3fd90befd3a37320              # double 0.39135356586284509
	.quad	0x3fdad5ab1dfef406              # double 0.41929128579414543
	.quad	0x3fc13553049f3f80              # double 0.13443982816397337
	.quad	0x3fb79f55fc849728              # double 0.092275022649655924
	.quad	0x3f8e6edbf36eac40              # double 0.014859884611572949
	.quad	0x3fe789c741d992c2              # double 0.73556864606197103
	.quad	0x3fc055ffcfac7b04              # double 0.12762448921508718
	.quad	0x3f885741a3b0fcc0              # double 0.011885178382838979
	.quad	0x3fc4f6a6169d8a10              # double 0.16377712349192608
	.quad	0x3fc877b12f6e1010              # double 0.19115271392740896
	.quad	0x3fe6e6079dc7bd15              # double 0.71557980362368545
	.quad	0x3fb049bb36a83e30              # double 0.0636250503960063
	.quad	0x3fd5a6972aafa8bc              # double 0.33829287689753662
	.quad	0x3fb8d773060e0a78              # double 0.09703749559234065
	.quad	0x3fefdb82fcfeb120              # double 0.99554585850777144
	.quad	0x3fd81e55a729c51c              # double 0.37685147594955182
	.quad	0x3feee7b969befafb              # double 0.96578665402907348
	.quad	0x3fec436b4f9fa1b8              # double 0.88322988082386811
	.quad	0x3fed11631a08d366              # double 0.90837245068415196
	.quad	0x3fd83d7282262534              # double 0.37875044545997416
	.quad	0x3fe174bcf3bbea56              # double 0.54550025562577775
	.quad	0x3fe292b36edd2aca              # double 0.58040782597648755
	.quad	0x3febcdf7c16ae791              # double 0.86889255310892299
	.quad	0x3fda0a52cde38416              # double 0.40688009363481237
	.quad	0x3fd9f328bff334f2              # double 0.40546625847930706
	.quad	0x3fef82440f837808              # double 0.98465159444799699
	.quad	0x3fe6ecd280cf644b              # double 0.71640896948077548
	.quad	0x3fdb3ed423384e72              # double 0.42570975722740123
	.quad	0x3fe208ddae74034f              # double 0.56358226845632398
	.quad	0x3fdaa72ec7ca46e4              # double 0.41645402441746016
	.quad	0x3f7ca096eea12600              # double 0.0069890876566858218
	.quad	0x3fec37bf9752bb77              # double 0.88180522494609093
	.quad	0x3fe1550af68035d7              # double 0.54163120407764154
	.quad	0x3fe1261c2f83b0bc              # double 0.53590211181792524
	.quad	0x3fef39600249b68f              # double 0.97575378844131133
	.quad	0x3fe6313a03335545              # double 0.69350910782910857
	.quad	0x3fe360e8799f9791              # double 0.60557960276195122
	.quad	0x3fe22eb6f033292a              # double 0.56820246614487258
	.quad	0x3fd5f9507f8952d2              # double 0.34334194617012515
	.quad	0x3fdc755def84ba5c              # double 0.44466350927806331
	.quad	0x3fb5969579d4ba20              # double 0.084328977817428541
	.quad	0x3fe9fc20b7b98285              # double 0.81202731975288656
	.quad	0x3fec67f8f57205bb              # double 0.88769195498041797
	.quad	0x3fcd4a71908bb334              # double 0.22883433874030745
	.quad	0x3fdff3917b5b89de              # double 0.49924122854841169
	.quad	0x3fd1698dc1faf5e6              # double 0.27206748908414935
	.quad	0x3fcc73fc51158cf8              # double 0.22228959998310649
	.quad	0x3fe70e5e3b04f588              # double 0.72050391700001715
	.quad	0x3fdb8f12a440680e              # double 0.43060747184938541
	.quad	0x3fce20a9025c559c              # double 0.23537170996921197
	.quad	0x3fe7269c71700dca              # double 0.72346326976588071
	.quad	0x3fdf024e2bbd61ee              # double 0.48451570769751029
	.quad	0x3fbaf2b83ec70c78              # double 0.10526610882429732
	.quad	0x3f35ae5322d75000              # double 3.3082513513460476E-4
	.quad	0x3fe4696eca3fb2c3              # double 0.63787021161768853
	.quad	0x3fe150f7ca20e3bf              # double 0.54113378027169989
	.quad	0x3fb63509efa37d40              # double 0.086746808057331926
	.quad	0x3fbe7b5efb07fab0              # double 0.11906999233904503
	.quad	0x3feca5dc54a834d7              # double 0.8952466634233599
	.quad	0x3fe77db934134764              # double 0.73409710093458758
	.quad	0x3f8209eff0da1c80              # double 0.0088080163361736741
	.quad	0x3fad441aaff4c6c0              # double 0.057160219172499804
	.quad	0x3feb0870425f42d1              # double 0.84478009188941361
	.quad	0x3feb800a6d57e0bd              # double 0.85937997203929906
	.quad	0x3fc8522daa4c6c74              # double 0.19000788512571243
	.quad	0x3fd430685e3525a6              # double 0.31545457076989647
	.quad	0x3fd77a6ce5df0a50              # double 0.36684725235332838
	.quad	0x3fd6869b94fc62c4              # double 0.35196580457117599
	.quad	0x3fdf40116a6c9b42              # double 0.48828540223114569
	.quad	0x3fcfd521a04b8c74              # double 0.24869175269040833
	.quad	0x3fe5f73d0f72f7c0              # double 0.68643048303032828
	.quad	0x3fedbe6c11a5f787              # double 0.92949489066062163
	.quad	0x3fd6dcb5bd2dbb8c              # double 0.35722106432415823
	.quad	0x3fe05dc9d7d9862a              # double 0.51144878538270189
	.quad	0x3fe807901f2a0504              # double 0.75092321478601364
	.quad	0x3fe91fbdb0f8f944              # double 0.78512463154746869
	.quad	0x3fe9ccbea0c1ed8f              # double 0.80624324224429411
	.quad	0x3fd4d1c2e3192d9c              # double 0.32530281236241776
	.quad	0x3fd0dc4aee1e8fe6              # double 0.26344559911581056
	.quad	0x3fe1b854d5492a39              # double 0.55375138909705079
	.quad	0x3fd7bd27e6ef613e              # double 0.37092015793088595
	.quad	0x3fec7fd8ecac8784              # double 0.89060636735324338
	.quad	0x3fda6585bbc2102c              # double 0.41244643531558967
	.quad	0x3fd9872753a685fc              # double 0.39887412232391717
	.quad	0x3fec4449562a61b3              # double 0.88333575085839866
	.quad	0x3fe83c5b1faaa637              # double 0.75736766991503301
	.quad	0x3fe4645a466369de              # double 0.63725007770272746
	.quad	0x3fd825e2f30cd406              # double 0.37731240973818136
	.quad	0x3fd1623b84754774              # double 0.27162063536990577
	.quad	0x3fc9b72553cca2a0              # double 0.20090166656270458
	.quad	0x3feac0c1e7006fb8              # double 0.83602995984573791
	.quad	0x3fc53f5db30031e8              # double 0.16599627723952826
	.quad	0x3fe4e49e92c7d8a1              # double 0.65290764492126041
	.quad	0x3fc69f634b5ea678              # double 0.17673913173830491
	.quad	0x3febc452c5f41455              # double 0.86771525061397858
	.quad	0x3fd7882029ed3d4c              # double 0.36768344969182887
	.quad	0x3feaef3b8744a24b              # double 0.84170319003630689
	.quad	0x3fecc851c8d6260e              # double 0.89945306039698081
	.quad	0x3fb9b99d5d58a470              # double 0.10048850563966183
	.quad	0x3fd2d44ca662747a              # double 0.29420772789473626
	.quad	0x3febf26aa10ad75f              # double 0.87334186032851935
	.quad	0x3fec7248e3b6a4a0              # double 0.88895077204974271
	.quad	0x3faf26997ba67e40              # double 0.060841366142309727
	.quad	0x3fe0b577a7ead93a              # double 0.52215178295481413
	.quad	0x3fe5ef703486cd05              # double 0.68547830828757184
	.quad	0x3fd657a06bfc3344              # double 0.34909830613542092
	.quad	0x3fe7d7ee5ccbc768              # double 0.74510877727719294
	.quad	0x3fe66eb9889a3e62              # double 0.70101620369127837
	.quad	0x3fe37021dbce9553              # double 0.6074380200485997
	.quad	0x3fd9537c1a01ac70              # double 0.395720506093034
	.quad	0x3fe9dd49591e65d2              # double 0.80826251417163975
	.quad	0x3fdb2dd7c2f4b090              # double 0.42467302359251224
	.quad	0x3fdb474b8c095f34              # double 0.42622650790643779
	.quad	0x3fd7dfc44f314c92              # double 0.37303264363908639
	.quad	0x3fa4240d8cfd0020              # double 0.039337562046512398
	.quad	0x3fe2b1e034147fd3              # double 0.5842133538426374
	.quad	0x3fec4cd63dd91bc3              # double 0.88437950210288141
	.quad	0x3fe61bb23dddcb6e              # double 0.69088089068678271
	.quad	0x3fde35a6ff700e06              # double 0.4720246786602903
	.quad	0x3fe6d80cadba1488              # double 0.7138732331374209
	.quad	0x3fd01f6dd5c1299a              # double 0.25191827654330157
	.quad	0x3fe5a6ae38c885e9              # double 0.67659674730765318
	.quad	0x3fe2366292f2daf9              # double 0.56913880062970101
	.quad	0x3feb6308f2f5b93d              # double 0.85583922818276614
	.quad	0x3fefe72105dcb52b              # double 0.99696398873280622
	.quad	0x3fe2f65628631812              # double 0.59257038009741536
	.quad	0x3fd5df41c23b136c              # double 0.34175151794288783
	.quad	0x3fbd199a526a9680              # double 0.11367191803091181
	.quad	0x3fb312077e2fbad8              # double 0.074493854815709581
	.quad	0x3febbff440b698e1              # double 0.86718189849196048
	.quad	0x3fe8a1870d9d5bec              # double 0.76971771868818228
	.quad	0x3fd6ae32101a6fb8              # double 0.35438205311379134
	.quad	0x3feb2defb482d7c4              # double 0.84935746437144432
	.quad	0x3fe67764033b0538              # double 0.70207405692068559
	.quad	0x3feaf6cafed64366              # double 0.84262609265179544
	.quad	0x3fcd99d2d34e9e70              # double 0.23125682180146923
	.quad	0x3fef665f3dc86219              # double 0.98124658648436302
	.quad	0x3fdf0e366fc1d222              # double 0.48524247087269334
	.quad	0x3f8f6c5a6552b2c0              # double 0.015343385903486051
	.quad	0x3fd60db5ff6d6378              # double 0.34458684867927714
	.quad	0x3fc70731fd9191b4              # double 0.17990708237915742
	.quad	0x3fc7521ff00a8eb0              # double 0.18219374867213878
	.quad	0x3fcd3b91b7951eb8              # double 0.22838040794362313
	.quad	0x3fcdbc6b25423b80              # double 0.23231257743142564
	.quad	0x3fe5deced4f2938a              # double 0.68344823447533654
	.quad	0x3fbb0d7410aad7c0              # double 0.10567403227727734
	.quad	0x3fd7eedf023d8ed0              # double 0.37395453661723099
	.quad	0x3fe0dd591454688a              # double 0.52702001543663468
	.quad	0x3fcc3a05aca7311c              # double 0.22052069597555934
	.quad	0x3fef47e30b2a306e              # double 0.97752525501847543
	.quad	0x3fe70e79ac28ae62              # double 0.72051700234210281
	.quad	0x3fe8681656728ae0              # double 0.76270596393836953
	.quad	0x3fe0dae835c4503d              # double 0.52672205449426424
	.quad	0x3fe8fe8413121811              # double 0.78106883740179189
	.quad	0x3fceccb5c780ffa4              # double 0.24062225572015195
	.quad	0x3fc0b72d3ebdcf9c              # double 0.13059011043116875
	.quad	0x3fd57dcb5f2fb514              # double 0.33580288215201048
	.quad	0x3fe9a0e9814fa4b4              # double 0.80089259391856737
	.quad	0x3fe7a3b0140722d3              # double 0.7387314215821682
	.quad	0x3fe6058510686147              # double 0.68817380146632778
	.quad	0x3fecdb0011b8d27c              # double 0.90173343144722606
	.quad	0x3fd7597c710dca00              # double 0.36483679809967384
	.quad	0x3fd05c94cf701cec              # double 0.25565071351634461
	.quad	0x3febfa73feb4a51a              # double 0.8743228888244261
	.quad	0x3fc65d314b7e6c24              # double 0.17471901117537059
	.quad	0x3fd68e1dc346587a              # double 0.35242408819011184
	.quad	0x3fcf147ee16061d8              # double 0.24281297688209125
	.quad	0x3faed8adc1d5b0b0              # double 0.06024687758585523
	.quad	0x3fd6549bbc88f2ca              # double 0.34891408359162013
	.quad	0x3fcc2e016b48eb80              # double 0.22015397776143786
	.quad	0x3fe7befe2b41629c              # double 0.7420645565826649
	.quad	0x3fd9e2f8f2f2bdf4              # double 0.40447829938327051
	.quad	0x3fece23b265468f0              # double 0.9026160954120126
	.quad	0x3fecb60eb6966053              # double 0.89722381269076334
	.quad	0x3fe8614d0644a79a              # double 0.76187754844908118
	.quad	0x3fe33fc32e8f5d42              # double 0.60153349965813896
	.quad	0x3fecf5f170def714              # double 0.90502235455616864
	.quad	0x3fbd2ab810849b18              # double 0.11393309024115827
	.quad	0x3fe20ada2b65adc5              # double 0.56382473445904024
	.quad	0x3fe5a1262f0b03d4              # double 0.67592152774897807
	.quad	0x3fe9f443f2511f80              # double 0.81106755568997357
	.quad	0x3fde0eff0e5fc1e0              # double 0.46966530231205006
	.quad	0x3fd12743300868ee              # double 0.26802138987262836
	.quad	0x3fd0e1fdd2848128              # double 0.26379342611655199
	.quad	0x3fce203b91189f04              # double 0.23535866341375578
	.quad	0x3fc48701b366d760              # double 0.16037007579660223
	.quad	0x3fb2e7fbabad9360              # double 0.073852281011182352
	.quad	0x3fe8ec6aaca663ab              # double 0.7788594600743769
	.quad	0x3fea62cf2cb89e98              # double 0.82456167921641832
	.quad	0x3fcd97bee31dd7bc              # double 0.23119340982128544
	.quad	0x3fd4c158551c7ffe              # double 0.32430084525731206
	.quad	0x3fd38fc0d5442a0c              # double 0.30564900233062597
	.quad	0x3f5cc40e6feb0800              # double 0.0017557278621755934
	.quad	0x3f4c5834caf0c800              # double 8.6500718851412195E-4
	.quad	0x3fcd5433bbcd19c0              # double 0.22913214368800361
	.quad	0x3fe2e9a409ebc734              # double 0.59102060258576339
	.quad	0x3fedcac5a6bf1804              # double 0.93100245063465125
	.quad	0x3fc0d6eab7abd2e4              # double 0.13155874222106612
	.quad	0x3fe1fb990324fb27              # double 0.56196261037971318
	.quad	0x3fcdd7f35d62ab6c              # double 0.23315279064021455
	.quad	0x3fc7c3c6dd5341ac              # double 0.1856621342362933
	.quad	0x3fe75944fe6b947f              # double 0.72964715663387369
	.quad	0x3fef3fbd7d8e6f7e              # double 0.97653078577739882
	.quad	0x3fd21490f0a94756              # double 0.2825052595336407
	.quad	0x3fd839db6b99e7a4              # double 0.37853131778649129
	.quad	0x3fe61c8cd08ace64              # double 0.6909851143922876
	.quad	0x3fd601577d5c3c6c              # double 0.34383189432350636
	.quad	0x3fe51643d27feb5e              # double 0.6589678870508171
	.quad	0x3f9cea0b50a6e580              # double 0.028236557767490122
	.quad	0x3fb90ba0b68bcb80              # double 0.097833675925171448
	.quad	0x3fd0638bce194ea0              # double 0.25607581259576229
	.quad	0x3fd49e43d797cfca              # double 0.32215972951894101
	.quad	0x3fe0123a23b3decd              # double 0.5022249886814848
	.quad	0x3fec5418424a80f0              # double 0.88526547381846221
	.quad	0x3fe13bf08d2d898a              # double 0.53856685231976198
	.quad	0x3fe907d76ac915f7              # double 0.78220721107999125
	.quad	0x3fc7ef247d8635fc              # double 0.1869855511580879
	.quad	0x3fec8aa6cd9afd16              # double 0.89192524106320792
	.quad	0x3fe4205dced34084              # double 0.62895098109767433
	.quad	0x3fd58e54cb8893e0              # double 0.33681220890349373
	.quad	0x3fe5c2f2be2eec4d              # double 0.68004738946127363
	.quad	0x3f967fa1a9ff54e0              # double 0.02197125053483695
	.quad	0x3feeea06c1774a4f              # double 0.96606767450641395
	.quad	0x3fce34bc38d2210c              # double 0.23598435186819022
	.quad	0x3fd7ac95ba6f7952              # double 0.36990874487482472
	.quad	0x3fe102c07250b0a9              # double 0.53158590628801961
	.quad	0x3fe3210bd8ddfcc4              # double 0.59778396946776313
	.quad	0x3fe064edd685948b              # double 0.51232044123448028
	.quad	0x3fc2f6290bd4460c              # double 0.14813721730801921
	.quad	0x3fe5b093250e0d60              # double 0.67780453908236993
	.quad	0x3fd772f113ba0ac8              # double 0.36639048506200966
	.quad	0x3fe64a1d343209c1              # double 0.69654712862421075
	.quad	0x3fdfe9fe35df6f3a              # double 0.49865679989828815
	.quad	0x3fe659a2c9f7a4f5              # double 0.69844188162565379
	.quad	0x3fd1890b0fef3676              # double 0.27398945385070961
	.quad	0x3fc660bad82c49d4              # double 0.17482696109125462
	.quad	0x3fd1c13139e106c0              # double 0.27741652157065388
	.quad	0x3fe0c03c431251eb              # double 0.52346623516001267
	.quad	0x3fe6b51346abcab1              # double 0.70960391810361589
	.quad	0x3fce0bc792805cd8              # double 0.23473448422803389
	.quad	0x3fdc9cce59d07e16              # double 0.44707068224849544
	.quad	0x3fedd01869cff789              # double 0.93165226618269614
	.quad	0x3fe1e1a7d6383a91              # double 0.55879585113310004
	.quad	0x3fdc86e1bf769608              # double 0.44573253343182317
	.quad	0x3feb8bd588dd058e              # double 0.86081959468008207
	.quad	0x3fcc1a3cf26cc0d4              # double 0.21955072247647556
	.quad	0x3fc50d1201cc759c              # double 0.1644613751204077
	.quad	0x3fd6c103c5300dfc              # double 0.35553068405735622
	.quad	0x3fe30988613c1f67              # double 0.59491366378004507
	.quad	0x3fe4dfedefc1eaa8              # double 0.65233513667711396
	.quad	0x3fd9ed3cd90b6c2c              # double 0.40510483928454977
	.quad	0x3fd1a1cfb8d166b8              # double 0.27550118492727504
	.quad	0x3fe2376d52efee53              # double 0.56926599692037383
	.quad	0x3fdb8f712fb5b820              # double 0.43063001307644022
	.quad	0x3fefffc8b627aa8d              # double 0.99997363640916747
	.quad	0x3fe6a226b0b577f6              # double 0.70729383958291581
	.quad	0x3fd68d1ded313326              # double 0.35236309207248195
	.quad	0x3fd3bcaa75ad646a              # double 0.3083902501289858
	.quad	0x3fe7bc1d69bda0c6              # double 0.741713243985054
	.quad	0x3fcf43d926bba6fc              # double 0.24425806418667395
	.quad	0x3fa0bcf16bf29060              # double 0.03269152109831519
	.quad	0x3fdbaf091d5bc182              # double 0.43255832545312256
	.quad	0x3fccef524c1ed3c4              # double 0.22605351177995037
	.quad	0x3fd3fe7bc896ef24              # double 0.31240744198633963
	.quad	0x3fdb25747ea7480a              # double 0.42416107529163638
	.quad	0x3feceaf31c174524              # double 0.90368037687781965
	.quad	0x3fd47b4b7bca5652              # double 0.3200253209009577
	.quad	0x3fe1c496601b66d7              # double 0.55524748583703853
	.quad	0x3fcae2ce520393a0              # double 0.21004656796062893
	.quad	0x3f3fbaea43a2c800              # double 4.8416346875079785E-4
	.quad	0x3feaee39f6e71779              # double 0.84158037398513763
	.quad	0x3fdfcd63d4975062              # double 0.49691100846144398
	.quad	0x3fe43dbb0ad001bb              # double 0.63253547775098384
	.quad	0x3fded0ece1f2084a              # double 0.48150178971275592
	.quad	0x3fe499e13ed86745              # double 0.6437841632316369
	.quad	0x3fcd1e608c1e0f8c              # double 0.22748953668280725
	.quad	0x3fea5bed59ebf258              # double 0.82372157633615029
	.quad	0x3febf4ab111f2743              # double 0.87361672729569084
	.quad	0x3fe679aebab96d73              # double 0.70235382527918799
	.quad	0x3fb002d7d6ae4e20              # double 0.062543382561039085
	.quad	0x3fddb6957164819a              # double 0.46426902841087669
	.quad	0x3fc82e315b91a2c4              # double 0.18890969248902512
	.quad	0x3fe27c63e437b642              # double 0.57768435071711388
	.quad	0x3fbd3949e7dc2458              # double 0.11415540609972774
	.quad	0x3fa242bab9faad80              # double 0.035665354921856185
	.quad	0x3fb7342287e47e58              # double 0.090639265229122912
	.quad	0x3feef1e006d47428              # double 0.96702576955761276
	.quad	0x3fa7ea9d01588300              # double 0.04671183244159316
	.quad	0x3fed13bfbff4ca3d              # double 0.90866076938102192
	.quad	0x3fe9970b2a0317a0              # double 0.79968794064983583
	.quad	0x3fef5ddd8588ecf3              # double 0.98020816880253247
	.quad	0x3febf51f26480a45              # double 0.87367207981908079
	.quad	0x3fe4d313eea22760              # double 0.65076634033287561
	.quad	0x3fc30d87e797ea98              # double 0.14885042961380601
	.quad	0x3fde7d9e516b9e9c              # double 0.4764171404953943
	.quad	0x3feaa6ec9d244864              # double 0.8328764981436163
	.quad	0x3fd42216c73c5312              # double 0.31458062607389181
	.quad	0x3fd8f4d29bc34f6e              # double 0.38994279109214502
	.quad	0x3fe077ccdd10e0f4              # double 0.51462405373516029
	.quad	0x3f99433e33c55900              # double 0.024670574102253262
	.quad	0x3fbaa99fbd95b408              # double 0.10415075663122775
	.quad	0x3fe45dd8a2a58777              # double 0.6364558388415692
	.quad	0x3feb44ccfcfb1ed3              # double 0.85214852724399248
	.quad	0x3fe8a17b3f25c945              # double 0.76971208890453424
	.quad	0x3fe63ce5a35b28c5              # double 0.69493371873365872
	.quad	0x3fd67acd2ec76702              # double 0.35124520843747586
	.quad	0x3fd479bd6281636e              # double 0.31993040675802475
	.quad	0x3fe1099aaeeedc4d              # double 0.53242239157305848
	.quad	0x3fda52cf4f3cb2b2              # double 0.41130430925367556
	.quad	0x3fbb0da54d30d760              # double 0.10567696699658091
	.quad	0x3f778109905a9c00              # double 0.0057382939900554319
	.quad	0x3feb3e2cc71ea7a6              # double 0.85133971109938922
	.quad	0x3fd636e66dc2920c              # double 0.34710083693269733
	.quad	0x3fa7cacc22af81f0              # double 0.046469096407012134
	.quad	0x3feecedfc7686d8f              # double 0.96275319048747742
	.quad	0x3febc2354fc30ad6              # double 0.86745706156247127
	.quad	0x3fbafca9149c02e0              # double 0.1054177928272213
	.quad	0x3fd4de3b54eb7f26              # double 0.32606395047149517
	.quad	0x3fded7b42985105a              # double 0.48191551260629739
	.quad	0x3fbf9d08d8d67d30              # double 0.12348990720646635
	.quad	0x3fda102e75a8fdb2              # double 0.40723763933416557
	.quad	0x3fea845469ea9f60              # double 0.82865353285613352
	.quad	0x3fd078bbc76a0874              # double 0.25736898874323022
	.quad	0x3fe144ea85862e4d              # double 0.53966260985311865
	.quad	0x3fd65a2cb3a4b680              # double 0.34925382178594333
	.quad	0x3fd4aee99b7f8f56              # double 0.32317581353548996
	.quad	0x3fb910fc976430c8              # double 0.097915446244033366
	.quad	0x3fe744c86f1e6e71              # double 0.72714635565666985
	.quad	0x3fed9af42c110343              # double 0.92516525847177211
	.quad	0x3fcf480614a7ad90              # double 0.24438549049896752
	.quad	0x3fd7f767bf4e2826              # double 0.3744754188743421
	.quad	0x3fd4c1a0af0b7586              # double 0.32431809515204468
	.quad	0x3fec9913f0873952              # double 0.89368626573722509
	.quad	0x3fed7a7731719761              # double 0.92119941384292414
	.quad	0x3fc3f9eeabd14d3c              # double 0.15606482877283578
	.quad	0x3feac84f41fa6037              # double 0.83695185552915674
	.quad	0x3fd18f6e5ea9ee02              # double 0.2743793415499739
	.quad	0x3fb949d4cc38ea20              # double 0.09878282533546967
	.quad	0x3fe7f84c0dc94c82              # double 0.74905970280305234
	.quad	0x3fe8369211e3557a              # double 0.75666144841913696
	.quad	0x3fe6bcec75cfaee8              # double 0.71056197175991276
	.quad	0x3fe680f24a5b2ceb              # double 0.70324053309141499
	.quad	0x3fad462d2411d850              # double 0.057176027920761485
	.quad	0x3fb4d9fc9c30d218              # double 0.081451213963028457
	.quad	0x3fdd699fb805cf68              # double 0.45957177134481819
	.quad	0x3fadda2474e15450              # double 0.058304919498063712
	.quad	0x3fca92455c1a03dc              # double 0.20758883473538858
	.quad	0x3fe4c90f6bdcdfcb              # double 0.64954348627997527
	.quad	0x3fe9989195c2b4bf              # double 0.79987410783873958
	.quad	0x3fee6b5c8344c67a              # double 0.9506056369629754
	.quad	0x3fec3545293a40d0              # double 0.88150270511871476
	.quad	0x3fb52ebc90a105f0              # double 0.0827443936441552
	.quad	0x3fe72ef4803bccb3              # double 0.72448182149528007
	.quad	0x3fb07e9f0118aa20              # double 0.064432084815657209
	.quad	0x3fe9d459d6733334              # double 0.80717174420133241
	.quad	0x3fe2ed026ed8d065              # double 0.5914318242053126
	.quad	0x3fe01d6a524826d1              # double 0.50359073706314395
	.quad	0x3fe9b1be14908af0              # double 0.80294708267714832
	.quad	0x3fd1edd0a0ce9a54              # double 0.28014007285893183
	.quad	0x3fd8b0155360aae0              # double 0.38574727194160907
	.quad	0x3fea8dcbea72e091              # double 0.82980914870042188
	.quad	0x3fbb00e9351bab18              # double 0.10548265024742098
	.quad	0x3fcabe62a5b557f8              # double 0.20893509951810052
	.quad	0x3fe0b5b4c9943ab5              # double 0.52218093272116184
	.quad	0x3fe71f8931edd09d              # double 0.72259959937811724
	.quad	0x3feeff4cf7bcacbc              # double 0.96866463075766473
	.quad	0x3fd21e6357b560a2              # double 0.28310473981174245
	.quad	0x3fec855ce9f3ef78              # double 0.89127965635223827
	.quad	0x3fe8d262d7a4f098              # double 0.77568189733530613
	.quad	0x3fd49468b5e57d7e              # double 0.32155816806149307
	.quad	0x3fdafc5276677fd8              # double 0.42165051997107872
	.quad	0x3faef375a2328820              # double 0.06045119862507442
	.quad	0x3fe396262481a63e              # double 0.61207873468556051
	.quad	0x3fa8c85280915c10              # double 0.048403337663948887
	.quad	0x3fdebf2820956882              # double 0.48041728193278044
	.quad	0x3fba8708246b6480              # double 0.10362292184017186
	.quad	0x3fe28e88d547a10f              # double 0.57989923149310296
	.quad	0x3fd80a45a7f59f7c              # double 0.37562695886889919
	.quad	0x3fe45fed4127d6e8              # double 0.63670981145579919
	.quad	0x3fe70305927323fb              # double 0.71911886790724056
	.quad	0x3fd7f2b9eb64cbaa              # double 0.37418983447713094
	.quad	0x3fe4efe3c7093411              # double 0.65428341745576024
	.quad	0x3f8ce346f2de83c0              # double 0.014105371748714179
	.quad	0x3fe3ff1327fdb227              # double 0.62488706408254735
	.quad	0x3fe38ff759d766ef              # double 0.61132400080825089
	.quad	0x3fd5a9e2c0b5d5a0              # double 0.33849400348057124
	.quad	0x3f8ff2342b6a0580              # double 0.015598685812849622
	.quad	0x3fc3d882f6d7a0dc              # double 0.15504490902754398
	.quad	0x3fe3d3471b5a6f46              # double 0.61954074232515022
	.quad	0x3fd4121e59ef1b04              # double 0.31360586912744304
	.quad	0x3fecdd3556c651c5              # double 0.90200297306233124
	.quad	0x3feb742aedcd7fe5              # double 0.85793062635275119
	.quad	0x3fe8d22d55979010              # double 0.77565638272472093
	.quad	0x3fcc1715853e37a4              # double 0.21945446973807947
	.quad	0x3fd2742784f2f8f0              # double 0.2883395002680933
	.quad	0x3fe69414dee49880              # double 0.70557635816363984
	.quad	0x3fc490bb6e756074              # double 0.1606668748233947
	.quad	0x3fc44cd4721b8e20              # double 0.15859466144239409
	.quad	0x3fbd2bc44b7fd420              # double 0.1139490780186212
	.quad	0x3fec964b9f62bbe6              # double 0.8933466065408282
	.quad	0x3fefbd3ddc761d57              # double 0.9918507867704801
	.quad	0x3feb62178b96a8ff              # double 0.85572411788351121
	.quad	0x3fe153aab9fd7953              # double 0.54146324468801266
	.quad	0x3fe6fd723bb6600e              # double 0.71843825972155329
	.quad	0x3fc528064df371fc              # double 0.16528395467948076
	.quad	0x3fea4896ac323961              # double 0.82136090881412482
	.quad	0x3fe5f3f016bcb8ac              # double 0.68602756920679075
	.quad	0x3fd33ae4db10ce94              # double 0.30046960251932231
	.quad	0x3fe3bcf495fc0246              # double 0.61681584638433473
	.quad	0x3fe1111a540bb069              # double 0.53333774962585523
	.quad	0x3fe41cf6474daf18              # double 0.62853540350394876
	.quad	0x3fd2e828e89220d4              # double 0.29541990959161279
	.quad	0x3fc24a35052729cc              # double 0.1428896212731402
	.quad	0x3fdf159b58d12dee              # double 0.48569377587838758
	.quad	0x3fec0f566f542f5a              # double 0.87687227004924329
	.quad	0x3fca169bde7f7510              # double 0.20381496776727959
	.quad	0x3fe463d4e911c73f              # double 0.63718648454071303
	.quad	0x3fe7fcda5c50fb7a              # double 0.74961584120306601
	.quad	0x3fc21c9bc9d11d54              # double 0.14149806360567629
	.quad	0x3fe279b0d0b3ee8c              # double 0.57735481989171111
	.quad	0x3fe1cfc6c4ac4ec2              # double 0.55661333477697661
	.quad	0x3fd766f26b4722ca              # double 0.36565838314394894
	.quad	0x3fe6a8d48ff22ccc              # double 0.70810917009785035
	.quad	0x3fcb9071d55b7c68              # double 0.21534560125198543
	.quad	0x3fcdf7be281713e4              # double 0.23412301023031923
	.quad	0x3fe0bc4b2aa6411d              # double 0.5229850609776211
	.quad	0x3fe79c4ac2473f1c              # double 0.73782861657125265
	.quad	0x3fc1704f7f9a7e1c              # double 0.13623994570387843
	.quad	0x3fd0339bd313e85e              # double 0.25314994442999772
	.quad	0x3fe81bddf9cf15c4              # double 0.75340174475484689
	.quad	0x3fbc08446554a640              # double 0.10950114702122793
	.quad	0x3fb1573b92dbd780              # double 0.067737315515698171
	.quad	0x3fdecb46998d5bd0              # double 0.48115696902590077
	.quad	0x3fc18841731782e0              # double 0.13697069282263552
	.quad	0x3fe76d6b0ed8c499              # double 0.73210671329265431
	.quad	0x3fe26b4052357c7a              # double 0.57559219414169083
	.quad	0x3fe3c1a12da2f378              # double 0.61738642609962735
	.quad	0x3fda146c5403464e              # double 0.40749653057455226
	.quad	0x3fe50e66b7e1348a              # double 0.65800796426778274
	.quad	0x3fed89764e9ce26e              # double 0.92303004602497452
	.quad	0x3fd73312c28531f4              # double 0.36249226566431436
	.quad	0x3fef70396db82bb2              # double 0.98244925908635694
	.quad	0x3fd889e126d61b3a              # double 0.38341549675572006
	.quad	0x3fd104a97074cbb4              # double 0.26590953809789686
	.quad	0x3fef0eec9c4c80b5              # double 0.97057180907361007
	.quad	0x3f87fc792b486cc0              # double 0.011712023385419434
	.quad	0x3fce0b9c7af36f1c              # double 0.23472934726202588
	.quad	0x3fe6541df8a24fd2              # double 0.69776819764455866
	.quad	0x3fe491aabb473787              # double 0.64278160646220861
	.quad	0x3fed58baa08e20b0              # double 0.91708117826876467
	.quad	0x3fd2d5bcb2f45fe0              # double 0.29429547763856867
	.quad	0x3fcac1439c1cd838              # double 0.20902295229615375
	.quad	0x3fc8c065953a3bb8              # double 0.19337148462770215
	.quad	0x3fefcd136c2cfa08              # double 0.99378367546143042
	.quad	0x3fcf21154fea4e9c              # double 0.24319712068664934
	.quad	0x3fe53dcffa1232b8              # double 0.66379546014794411
	.quad	0x3fb899a19c1db310              # double 0.096094227422963252
	.quad	0x3fd7e0a97ff48482              # double 0.37308728690738502
	.quad	0x3fdcb9265cff4f9a              # double 0.44880065042274853
	.quad	0x3fb42bda2a417c90              # double 0.078794131580695259
	.quad	0x3fd4903c58779eb2              # double 0.32130345000630733
	.quad	0x3fef6dd007234bc5              # double 0.98215485948673431
	.quad	0x3fc9236b5f0496c8              # double 0.19639341487452655
	.quad	0x3fd095582f524dde              # double 0.25911526318779277
	.quad	0x3fdae720319279a4              # double 0.42035679665596093
	.quad	0x3f78a4584d965280              # double 0.0060161065424791937
	.quad	0x3fbac23fc7594cb8              # double 0.10452650658526152
	.quad	0x3fe4383046ff493f              # double 0.63185895792620517
	.quad	0x3fefe6c6290983a3              # double 0.99692066207000029
	.quad	0x3f400062c73d2400              # double 4.8832724721947773E-4
	.quad	0x3fd8dcc39635d78a              # double 0.38847436589218687
	.quad	0x3fed36a0ba2a4497              # double 0.91291843757984992
	.quad	0x3fe0c05bd854ee69              # double 0.52348129513070518
	.quad	0x3fd7c04d0f3ca7de              # double 0.3711121224210937
	.quad	0x3fd725ccdea447fa              # double 0.36168214552264966
	.quad	0x3feb645168373a48              # double 0.85599584917674409
	.quad	0x3f92febb81e4fbe0              # double 0.018549852183465165
	.quad	0x3fe5fecc02245f65              # double 0.68735313814520949
	.quad	0x3fe9845a6c491474              # double 0.79740639829164061
	.quad	0x3fcbd7f6e42a54e4              # double 0.21752821102987874
	.quad	0x3fcf9144eb163e18              # double 0.24662076453067594
	.quad	0x3fe0e3bd6c8d74f7              # double 0.52780028535531087
	.quad	0x3fe62d82acf5e9a3              # double 0.69305547505728204
	.quad	0x3fed6dc5c193b95c              # double 0.91964996154801381
	.quad	0x3fea2eeeb4383167              # double 0.81822905730363693
	.quad	0x3fd76da4c870af86              # double 0.36606711935268554
	.quad	0x3fc1f0b92be5c5fc              # double 0.14015879290995759
	.quad	0x3fed7f6274273de7              # double 0.92179987608136293
	.quad	0x3fe06fbd8adab427              # double 0.51364018554670998
	.quad	0x3f953c95bed939c0              # double 0.020738925717802337
	.quad	0x3fd6e6638073cae6              # double 0.35781180900737153
	.quad	0x3fe592ffa8e5ea58              # double 0.67419417369758161
	.quad	0x3feb5fbda463f7f4              # double 0.85543710811157191
	.quad	0x3fee0a5ec913ec48              # double 0.9387659003545048
	.quad	0x3fecdc69b74ead36              # double 0.90190587808812128
	.quad	0x3fce67497ed25964              # double 0.23752707188095734
	.quad	0x3fe46dec0259981a              # double 0.63841820200900945
	.quad	0x3fe38dac34f6c8a4              # double 0.61104402870684682
	.quad	0x3fe029ba1e54e356              # double 0.50509363102092197
	.quad	0x3fd2cab5f24ef0de              # double 0.29362248099256572
	.quad	0x3fe8947106fdf4af              # double 0.76812030187251945
	.quad	0x3fe1fe9cc78e98a4              # double 0.56233061767558867
	.quad	0x3feedc2fe344c0d2              # double 0.96437830341712982
	.quad	0x3fe7a08d09d920bb              # double 0.73834850238292604
	.quad	0x3fd688f4db3ad66e              # double 0.35210915955699462
	.quad	0x3fe4f7e4d1eaac17              # double 0.65526047705987167
	.quad	0x3f6715144af31d00              # double 0.0028176685660558087
	.quad	0x3fe443a77cf41a97              # double 0.63325857548700781
	.quad	0x3fe1e2c2eeaf4f6b              # double 0.5589308416187867
	.quad	0x3fc7693ae9fdd76c              # double 0.18289886880273387
	.quad	0x3fe520c19683a52e              # double 0.66024855992615072
	.quad	0x3fc182fd87887fb8              # double 0.13681000821907019
	.quad	0x3fe6db0331106097              # double 0.71423492033774749
	.quad	0x3fd8a786cd9a9390              # double 0.38522501066682313
	.quad	0x3fe50e0667e06875              # double 0.65796203888318294
	.quad	0x3fdefcbecc227464              # double 0.48417634902017981
	.quad	0x3fe54d9a3cf78a7f              # double 0.66572296054467006
	.quad	0x3fd2402aed51afa6              # double 0.28516648460094485
	.quad	0x3fb79252e4e6cd60              # double 0.092076474079296755
	.quad	0x3f9b4c4a5a1639e0              # double 0.026658212421858951
	.quad	0x3fd7ba67c15105aa              # double 0.37075227621616114
	.quad	0x3fb2fb93f4c68630              # double 0.074151274928703215
	.quad	0x3fec207527c86792              # double 0.87896211404880575
	.quad	0x3fd1f4245ee6b8e8              # double 0.28052624957753247
	.quad	0x3fd18c33d7bdd6ca              # double 0.27418228214751805
	.quad	0x3fa04e62fe21aaf0              # double 0.031848042985833547
	.quad	0x3fee68d73b3de615              # double 0.95029794283545022
	.quad	0x3fe549e8334867e8              # double 0.66527185455492788
	.quad	0x3fe9f1a6321f0cc1              # double 0.81074819363893635
	.quad	0x3fde39010ccf6992              # double 0.47222925425526185
	.quad	0x3fdde70e0f7864ca              # double 0.4672274733616858
	.quad	0x3fe05525e324387e              # double 0.51039404262134247
	.quad	0x3febb4ddaebf8473              # double 0.86582836275569119
	.quad	0x3fe80c0f4577d15d              # double 0.75147212570167776
	.quad	0x3fcd561101f28efc              # double 0.22918903918354505
	.quad	0x3fd46503ccc20958              # double 0.3186654567326932
	.quad	0x3fc27d6edb40567c              # double 0.14445291238432734
	.quad	0x3fc97950901c79a8              # double 0.19901473080331056
	.quad	0x3fecd4eb0798c0bd              # double 0.90099097713211729
	.quad	0x3fe76119dc1d2c23              # double 0.73060315123564512
	.quad	0x3fe01b0a3e2b2431              # double 0.50330078260697608
	.quad	0x3fe56952a5dd305b              # double 0.66910679240528326
	.quad	0x3fef0748541d7497              # double 0.96963898113939961
	.quad	0x3fdfa5fab52f490c              # double 0.49450557416743446
	.quad	0x3fde609cf7b48bba              # double 0.47464679899183759
	.quad	0x3fe1161e5d9415ac              # double 0.53395002629320265
	.quad	0x3fe67b88c9561757              # double 0.70257987330908633
	.quad	0x3fb758298263d4a8              # double 0.091188997586714948
	.quad	0x3fc24de8af04bbac              # double 0.14300259157013551
	.quad	0x3f83f3499972f200              # double 0.0097413778261108419
	.quad	0x3fe9bbee8538f615              # double 0.80419088382740489
	.quad	0x3fa56160b34f4ce0              # double 0.041758558166884674
	.quad	0x3fe7fcbd01933c82              # double 0.74960184390683104
	.quad	0x3fcfabd9c0cd259c              # double 0.24743196405533474
	.quad	0x3fe2f47c99d3d7b1              # double 0.59234457058368239
	.quad	0x3f7fd8e667cf1180              # double 0.0077752113547301382
	.quad	0x3fe0eeba60e0e761              # double 0.5291416065367508
	.quad	0x3fe2104cdf382ebe              # double 0.56448978040267384
	.quad	0x3fcfbbb2b6cc4194              # double 0.24791559148480913
	.quad	0x3fcf36575a2b3bd8              # double 0.24384586241509854
	.quad	0x3fe41bb8ff0ed245              # double 0.62838411155696206
	.quad	0x3fe0cbf7bf866b91              # double 0.52489840895883522
	.quad	0x3fc49ea6fa95d238              # double 0.16109168277366037
	.quad	0x3fad06058d79e1a0              # double 0.056686566848785036
	.quad	0x3fd987b7ebb5d0a0              # double 0.39890859621596952
	.quad	0x3fef75d1383a97a5              # double 0.98313199026300834
	.quad	0x3fe3e48a1ae678c9              # double 0.62164788488350908
	.quad	0x3fdc87e8849e346a              # double 0.44579518271422691
	.quad	0x3fe28e948774c48f              # double 0.57990480858110682
	.quad	0x3fdabd4c20280768              # double 0.41780379429120851
	.quad	0x3fef9b0d712663dc              # double 0.98767730807878306
	.quad	0x3faabe5c54bf9450              # double 0.052233586640604401
	.quad	0x3feeab868ebe31aa              # double 0.95843818549615389
	.quad	0x3fde958480716552              # double 0.47787582915551241
	.quad	0x3f9a229d1a21d620              # double 0.02552266571043138
	.quad	0x3fa1b8331c2338d0              # double 0.03460845678783786
	.quad	0x3fcbf383d30c030c              # double 0.2183689861776873
	.quad	0x3fbd3ccf0a19d4d0              # double 0.11420911785701837
	.quad	0x3fd251990c8c814c              # double 0.28623033738587789
	.quad	0x3fcbcde1b57b2644              # double 0.21722051011447452
	.quad	0x3fc1497b30892b98              # double 0.13505496854699284
	.quad	0x3fe66f651fb1dc84              # double 0.70109802427659007
	.quad	0x3fed643c78baff19              # double 0.91848586635748852
	.quad	0x3fe30ce05cee8730              # double 0.5953218283723114
	.quad	0x3fc8c7d8064bea00              # double 0.19359875018547257
	.quad	0x3fbd80b26dcaf690              # double 0.11524501018990407
	.quad	0x3fe96e8c416f4f19              # double 0.79474461345896252
	.quad	0x3fc5faaeeb86eb94              # double 0.17171274662345282
	.quad	0x3fda7c2403e3ecc2              # double 0.4138269460670011
	.quad	0x3fcbc4f2b87c99a8              # double 0.21694787986889463
	.quad	0x3fe1dc5d6f3c8910              # double 0.55815002179977746
	.quad	0x3fe4b6420a187c35              # double 0.64724828693204606
	.quad	0x3fe0cb433ddecb0f              # double 0.52481233676948758
	.quad	0x3febfd8d94aafed6              # double 0.87470130001744439
	.quad	0x3fd6311aea557a9a              # double 0.34674713977975957
	.quad	0x3fe1855bb71bff19              # double 0.54752908481165996
	.quad	0x3febf8766bf0fa63              # double 0.87407990534104518
	.quad	0x3fe812bc0d790ae0              # double 0.75228693610582908
	.quad	0x3fa29adc24d5c7e0              # double 0.036337737556905614
	.quad	0x3fdc5bae441bc8ea              # double 0.44309574748252933
	.quad	0x3feefc5d179dafa5              # double 0.96830610859386878
	.quad	0x3fa127234b73e2c0              # double 0.033501723251850191
	.quad	0x3fe77fefa5716e53              # double 0.73436720193007898
	.quad	0x3fccfe4ec20572bc              # double 0.22651085351653488
	.quad	0x3fdea3d23b8892c8              # double 0.47874885381524424
	.quad	0x3fd84669dbba4b40              # double 0.37929769952568293
	.quad	0x3fed8b9984fce496              # double 0.9232909772319029
	.quad	0x3fe644545be68002              # double 0.69584100674910609
	.quad	0x3fcf25e71270ded4              # double 0.2433441963237245
	.quad	0x3fd9070c306d14c4              # double 0.39105515221701759
	.quad	0x3fde9a02f70f8f6e              # double 0.47815012099294207
	.quad	0x3fd00bf8cca70446              # double 0.2507307051237756
	.quad	0x3fee9ad105822b98              # double 0.95639849735140369
	.quad	0x3fb8ad6dca053b90              # double 0.096396314450642117
	.quad	0x3fed47c8646cd7af              # double 0.91501254667558907
	.quad	0x3fd5c46a7e8e1c7c              # double 0.34011328085802695
	.quad	0x3fd349f45f56116e              # double 0.30138882932830924
	.quad	0x3fd4d4dc5c1aa74e              # double 0.3254919909910442
	.quad	0x3fdad8a383e3df18              # double 0.41947257881064237
	.quad	0x3fd7a3fde3ea3d64              # double 0.36938426263164659
	.quad	0x3fd2e620dc84d53e              # double 0.29529592070624122
	.quad	0x3feafcecfef9434f              # double 0.84337472724483031
	.quad	0x3fc702caa71a00a4              # double 0.17977269324547251
	.quad	0x3fec8d56bb8a8665              # double 0.89225327138065025
	.quad	0x3fe8a744bf2842fa              # double 0.77041852317242321
	.quad	0x3fd6966c241d4f6c              # double 0.35293105627828569
	.quad	0x3fed80e0aad23665              # double 0.92198212970260995
	.quad	0x3fb773af06b0ff58              # double 0.091608943112985286
	.quad	0x3fd368b7e2a499ce              # double 0.30326649792769167
	.quad	0x3fd06cf3270ff248              # double 0.2566497689693148
	.quad	0x3fe9e6debb9b55ba              # double 0.80943237916897393
	.quad	0x3feb904430ec8220              # double 0.86136064105454934
	.quad	0x3fd702b64d293b26              # double 0.35954053435573241
	.quad	0x3fe9755154949149              # double 0.79557100791547797
	.quad	0x3f773acd3e300600              # double 0.0056713120748113077
	.quad	0x3fad1a959f084200              # double 0.056843448317639655
	.quad	0x3fe0ae41f6f1018c              # double 0.52127168875453966
	.quad	0x3fefd80f1ed1c53c              # double 0.9951243974630084
	.quad	0x3fe9dffbdfd64913              # double 0.80859178274320909
	.quad	0x3fd656f15d2a0426              # double 0.34905656908091698
	.quad	0x3fee0b334e1c8839              # double 0.93886723762648849
	.quad	0x3fe70f07374802cf              # double 0.7205844955170394
	.quad	0x3fe781d59062393a              # double 0.73459890556276908
	.quad	0x3fd517ac41a31d14              # double 0.32956987771872659
	.quad	0x3fece334bd2ad685              # double 0.902735108821347
	.quad	0x3fa01d2087a5c7d0              # double 0.031472221907179354
	.quad	0x3fef048a5d81f706              # double 0.96930425894945027
	.quad	0x3fb037a831fd9cf0              # double 0.063349258618121018
	.quad	0x3fe1f14eab2cf797              # double 0.56070645745033942
	.quad	0x3fe8ee383dd0b96c              # double 0.77907955239588266
	.quad	0x3fe54ca1fe05a711              # double 0.66560458768546671
	.quad	0x3fc4448e41a21258              # double 0.15834215359440651
	.quad	0x3fe43a44191be17f              # double 0.63211254982074638
	.quad	0x3fe9cdc3b57f2d50              # double 0.8063677353724561
	.quad	0x3fe5eddb7986ef98              # double 0.68528531776199753
	.quad	0x3fbc1c716d83a250              # double 0.10980900691687023
	.quad	0x3fe74d729e8c7f07              # double 0.72820406881871313
	.quad	0x3fbfdc080cfbf348              # double 0.12445116345402341
	.quad	0x3fbdfddf58363f98              # double 0.1171550360070327
	.quad	0x3fe27645ab09ded0              # double 0.57693751722305286
	.quad	0x3fd81d7b4447043a              # double 0.37679940860477112
	.quad	0x3feaea7192d70ac6              # double 0.84111860923470583
	.quad	0x3fea7ca3a707e614              # double 0.82771475432599794
	.quad	0x3fcca70ebf2495bc              # double 0.22384819348478213
	.quad	0x3fe04010af2e9df6              # double 0.50782045569661594
	.quad	0x3fe2d3a385985b02              # double 0.58833480923462411
	.quad	0x3fe32a92eb0d413b              # double 0.59894700916814914
	.quad	0x3fe89dad9ad6f632              # double 0.76924782030227434
	.quad	0x3fc07c10371a9d3c              # double 0.12878611269591456
	.quad	0x3fe6f3a85b9ae33b              # double 0.71724336520774246
	.quad	0x3fd5fb206ce6a0fa              # double 0.34345255503514205
	.quad	0x3feeb25679b15686              # double 0.95926975029097217
	.quad	0x3fada8a9c5b8abd0              # double 0.057927422891530633
	.quad	0x3fd8ac0259d2a402              # double 0.38549860736617358
	.quad	0x3fe141acd76c9b50              # double 0.53926698756263569
	.quad	0x3feb56b6103c9868              # double 0.85433486148100446
	.quad	0x3fde2350fc233f62              # double 0.47090553877659691
	.quad	0x3fe4c3989bf9219a              # double 0.64887648070821347
	.quad	0x3fdff5dce14c9098              # double 0.49938127519477282
	.quad	0x3fdb7ce2155913de              # double 0.42949726185571346
	.quad	0x3f889155f7889d00              # double 0.011995956055285806
	.quad	0x3fc569c1cc4cd704              # double 0.16728994823068188
	.quad	0x3fcffc7db5462a28              # double 0.24989291526101565
	.quad	0x3fcf0b1990b0e294              # double 0.24252624096859121
	.quad	0x3fd14ee8bcc3105a              # double 0.27044123109613383
	.quad	0x3fdf0ecbcf6c348a              # double 0.4852780843364789
	.quad	0x3fefbe5d839e9e48              # double 0.99198795039132736
	.quad	0x3fe3e5e187c67f19              # double 0.62181164282444279
	.quad	0x3fb31c175d1fd058              # double 0.074647388682764215
	.quad	0x3fd968fcab89e4da              # double 0.39703289748974913
	.quad	0x3fe82b3921596371              # double 0.75527626527319403
	.quad	0x3fec77b77f8c081f              # double 0.88961386596225001
	.quad	0x3fc94d415bf5ef20              # double 0.19767014494197443
	.quad	0x3fe6143e5806445d              # double 0.68997113411218047
	.quad	0x3fe84a7011e71153              # double 0.75908664223292488
	.quad	0x3fd32e1ef788f45e              # double 0.29969000027978676
	.quad	0x3fc3406355c28208              # double 0.15040246665468282
	.quad	0x3fee7762661cf9c9              # double 0.95207328742963526
	.quad	0x3fc92109d8e0b314              # double 0.19632075395329507
	.quad	0x3fba5e86fa8d9cf0              # double 0.10300487153073212
	.quad	0x3fed84c237871c17              # double 0.92245589108722725
	.quad	0x3fd4db19675da0ca              # double 0.3258727559500697
	.quad	0x3fe257bda023bbbc              # double 0.57321053769361852
	.quad	0x3fefa53d6b84bf21              # double 0.98892088889803997
	.quad	0x3fe033e191ab9a02              # double 0.50633314563020826
	.quad	0x3fe913ea0d095a09              # double 0.78368094011494904
	.quad	0x3fe22ec4ede69dc7              # double 0.56820913758286273
	.quad	0x3fde3ca4bfffa160              # double 0.47245138883456228
	.quad	0x3fe905929dcb9748              # double 0.78193026370420515
	.quad	0x3fe7786c9f8a9c70              # double 0.73345023308219304
	.quad	0x3fe93bc86e5df25c              # double 0.78854772144365936
	.quad	0x3fd476ec283dcf2a              # double 0.31975845269993164
	.quad	0x3fe38c361dc8cca4              # double 0.61086564843426006
	.quad	0x3fd84248f1c1be4e              # double 0.3790457116037701
	.quad	0x3fd1f55577925468              # double 0.2805989902202044
	.quad	0x3fe9e7925dea39be              # double 0.80951803534281175
	.quad	0x3fd13437abd63da4              # double 0.26881210118241428
	.quad	0x3fe3f24b3bd0d4ec              # double 0.62332688982737983
	.quad	0x3fe81cd298955edc              # double 0.75351838876209908
	.quad	0x3fb36ab159c6ce88              # double 0.075846752565491227
	.quad	0x3fdc816d6bd1bf4a              # double 0.44539962319594351
	.quad	0x3fe1877fad1147b0              # double 0.54779037286993137
	.quad	0x3fe4177f99758f0c              # double 0.62786846134665231
	.quad	0x3fea91751ebfc6da              # double 0.83025604253472385
	.quad	0x3fb027881f191918              # double 0.063103206245703425
	.quad	0x3fe0217b3a0309e6              # double 0.50408707933848684
	.quad	0x3fe203b1776b33b6              # double 0.56295083354927189
	.quad	0x3fe15477f73db9a0              # double 0.54156111039428723
	.quad	0x3febd3bab09d4629              # double 0.86959585661879146
	.quad	0x3f62085705352600              # double 0.0022012424102839656
	.quad	0x3fe7aed8a63a36bd              # double 0.74009354082382794
	.quad	0x3fe9b144efd4acff              # double 0.80288931695886834
	.quad	0x3fe2d0f92af62446              # double 0.58800943747440537
	.quad	0x3fc0baf56a4ddb08              # double 0.13070552530890489
	.quad	0x3fea90fc02864f06              # double 0.83019829266638179
	.quad	0x3fe8529109b06850              # double 0.76007892506027908
	.quad	0x3febd28a56bc2248              # double 0.86945073070916923
	.quad	0x3fd258fb5f94c2e8              # double 0.28668102583018973
	.quad	0x3fbbd1ff2aeab980              # double 0.10867304609084805
	.quad	0x3fb8b1451d5f4c68              # double 0.096454925223314114
	.quad	0x3f98b6e05a86a080              # double 0.024135118031751279
	.quad	0x3fe8929a340cd116              # double 0.76789579549816511
	.quad	0x3fec67aa9b5dc75c              # double 0.88765459389672285
	.quad	0x3fcaea429a680658              # double 0.21027405299541857
	.quad	0x3fc6e8ff7f0f7b24              # double 0.17898553566097875
	.quad	0x3fe9286d0a6c7dee              # double 0.78618480716607819
	.quad	0x3fefb9cfd24e6aeb              # double 0.99143210483029287
	.quad	0x3f95b64193e6fd00              # double 0.021203064586868159
	.quad	0x3fd1ff2bcc54777a              # double 0.28119940713974467
	.quad	0x3feef91e7f28bcbd              # double 0.96791004977958261
	.quad	0x3fef11e1b2d01bdd              # double 0.97093281673812337
	.quad	0x3fd610f2471c1794              # double 0.34478432602224385
	.quad	0x3fe08f4d9acd02d3              # double 0.5174930594876862
	.quad	0x3fdb3c62400fe262              # double 0.4255605340581835
	.quad	0x3fe524a437ddfe51              # double 0.66072283660464326
	.quad	0x3fd4f7e400ce7982              # double 0.32763004378093552
	.quad	0x3fea94df2938a304              # double 0.83067281771681722
	.quad	0x3fedd9514d22cd32              # double 0.9327780252992055
	.quad	0x3fe970b9ae4bb1fd              # double 0.7950104145252791
	.quad	0x3fef7ae00e5a1cea              # double 0.98374941638112756
	.quad	0x3fd0442c8cf831ae              # double 0.25416101233056565
	.quad	0x3fe1c11dbd82306f              # double 0.55482375157727215
	.quad	0x3fe66792514d3a54              # double 0.70014301184876127
	.quad	0x3fae242953e74140              # double 0.058869639865977152
	.quad	0x3fc9465dbd5a84c8              # double 0.19745990510731404
	.quad	0x3fe08e6bf300993f              # double 0.51738545857805451
	.quad	0x3fb814c765260cf0              # double 0.094067060656062073
	.quad	0x3fef576ad68ba6ca              # double 0.97942106154843001
	.quad	0x3feca2585ee4d002              # double 0.89481752904839618
	.quad	0x3fec28c3e3b516dd              # double 0.87997621988389663
	.quad	0x3f9c935cd2135240              # double 0.027905893632878653
	.quad	0x3fb6627e10931ec8              # double 0.087440375372462076
	.quad	0x3fef29aca249027e              # double 0.97383720108344085
	.quad	0x3fd33da3ba1313a4              # double 0.30063718005504314
	.quad	0x3fd7dbf0fe0df766              # double 0.3727991562844778
	.quad	0x3fd055311508c32e              # double 0.25519969038127754
	.quad	0x3fe86b8233a3e288              # double 0.76312360845538851
	.quad	0x3fc14ce15fbebdf8              # double 0.13515870261242902
	.quad	0x3fe60a00db5d5f25              # double 0.68872111172365591
	.quad	0x3fee06de9ec4c2fe              # double 0.93833857545368438
	.quad	0x3fd7263d60e4e25a              # double 0.36170896971046818
	.quad	0x3fee7f3a8746d6cf              # double 0.95303083821519319
	.quad	0x3fc0d723b3931920              # double 0.13156553524294967
	.quad	0x3fe15f814d6701e3              # double 0.54290833585406195
	.quad	0x3fd24c1f1953b248              # double 0.28589608643850228
	.quad	0x3fee24a3f862748d              # double 0.94197271835914054
	.quad	0x3fbd0600f9e6bd18              # double 0.11337286091906085
	.quad	0x3fe08872f61138db              # double 0.51665638027204908
	.quad	0x3fe94d96f430ec34              # double 0.79072139447760614
	.quad	0x3fe1b8aaf8df8f36              # double 0.55379246337950039
	.quad	0x3fede4c7727ed718              # double 0.93417713510891343
	.quad	0x3fb375c72bcc39b8              # double 0.076015899842082457
	.quad	0x3fe19e902bb4cd86              # double 0.55060585533503636
	.quad	0x3fe76bceb18a8989              # double 0.73191008258827239
	.quad	0x3fe5c3e517a859e5              # double 0.68016295071248278
	.quad	0x3fdc995fda8b4648              # double 0.44686123220626373
	.quad	0x3fd319ec30c36b44              # double 0.29845719110533175
	.quad	0x3fdf8c642277e080              # double 0.49294379583398751
	.quad	0x3fe0802037162cc1              # double 0.51564036139588876
	.quad	0x3fedab13bea5486c              # double 0.92713343844867557
	.quad	0x3fde2e0f9410a5a8              # double 0.47156133136248934
	.quad	0x3fee65c602972b3a              # double 0.94992352014501269
	.quad	0x3f84ca336b100280              # double 0.010151292519368527
	.quad	0x3fdc5ab1becbe318              # double 0.44303554184402705
	.quad	0x3fc8ac3e4d123c74              # double 0.19275645030254263
	.quad	0x3fe9a48282219cc9              # double 0.80133176246899851
	.quad	0x3febd8fb46ff387e              # double 0.87023700586884423
	.quad	0x3fd6df2ea068f836              # double 0.3573719564918777
	.quad	0x3feef59ee6b890e0              # double 0.96748299658477421
	.quad	0x3fdb12aaa40f2e74              # double 0.42301431676307932
	.quad	0x3fdb1baf02d2c77a              # double 0.4235646750995482
	.quad	0x3fe7ff183c0d894a              # double 0.74988948563649527
	.quad	0x3f9fb2c3af153880              # double 0.030955369530879739
	.quad	0x3fbc168400c754d8              # double 0.10971856135377622
	.quad	0x3fedbfbcd8eecc66              # double 0.92965547914208169
	.quad	0x3fd9e115ef5f9de2              # double 0.4043631398803581
	.quad	0x3fd01813903b6150              # double 0.25146950802947732
	.quad	0x3fee7d07237e45bf              # double 0.95276219303394061
	.quad	0x3fe9fc939e2c4980              # double 0.81208210843242057
	.quad	0x3f910bae44081b40              # double 0.016646120931933739
	.quad	0x3fc3735f26e08b14              # double 0.15195836447045308
	.quad	0x3fd5c6b1b04a1550              # double 0.34025232520828741
	.quad	0x3feb3e8496ce58eb              # double 0.85138158277802967
	.quad	0x3fa766d2ac9b26d0              # double 0.045706351823879054
	.quad	0x3febb3ee4751e757              # double 0.86571420602488558
	.quad	0x3fd138f2c3ca9660              # double 0.2691008483910533
	.quad	0x3fdafdd9d08dde64              # double 0.42174382559412593
	.quad	0x3fe232ff02ca5526              # double 0.5687251142977956
	.quad	0x3fedccddf98585a0              # double 0.93125818953210526
	.quad	0x3fa478a9df722eb0              # double 0.03998308994877442
	.quad	0x3fda7a27516b14ac              # double 0.413705663213771
	.quad	0x3fe310d94cbe618c              # double 0.59580674160956582
	.quad	0x3fd107620afb2740              # double 0.26607562134141816
	.quad	0x3fb97e6542d5f9a0              # double 0.099584893052429013
	.quad	0x3fedfaff9e4c01ad              # double 0.93688946645129578
	.quad	0x3feedf0aa0238220              # double 0.96472674634066279
	.quad	0x3fb4ad525e2b2c30              # double 0.080769680014029843
	.quad	0x3feaf7094282f9db              # double 0.84265578260947949
	.quad	0x3fb0610c888f3d10              # double 0.063980849590042022
	.quad	0x3fb44762e7b2e7a8              # double 0.079214269225217238
	.quad	0x3fe753a3aa836ee0              # double 0.72895987800026418
	.quad	0x3fc40307d577ab44              # double 0.15634248660293271
	.quad	0x3fdcc50ffd87fc02              # double 0.44952773817925629
	.quad	0x3fc5fff473cc5588              # double 0.17187362341125501
	.quad	0x3fd7aaa74f47603c              # double 0.36979086629935742
	.quad	0x3febd326bd5bab18              # double 0.86952530845641984
	.quad	0x3fed0f4ba1608df5              # double 0.90811711806276085
	.quad	0x3fbff35cea87f1f8              # double 0.12480717397551888
	.quad	0x3fe146b443c48a5e              # double 0.53988087879072189
	.quad	0x3fc2b96934076848              # double 0.14628329315638866
	.quad	0x3fefd74da9c151a8              # double 0.99503214984229249
	.quad	0x3fdecd12bca09308              # double 0.4812666742384839
	.quad	0x3fea2acce0ba5d38              # double 0.81772464649376442
	.quad	0x3fe4cb671dca5add              # double 0.64982944315383018
	.quad	0x3fed777d99dab6bc              # double 0.9208362584083356
	.quad	0x3fec44a28f3a43d7              # double 0.88337829565181891
	.quad	0x3fe3b395b9e263a9              # double 0.61567198091062381
	.quad	0x3fef1204614b28a6              # double 0.97094935419706441
	.quad	0x3fe45c774bacae49              # double 0.63628735332663056
	.quad	0x3fd4a6e816753298              # double 0.3226871699633107
	.quad	0x3fe31cb77c018876              # double 0.59725546092910409
	.quad	0x3feb0bedd0cd6645              # double 0.84520617276866317
	.quad	0x3fa027cbc6869e60              # double 0.031553619369614649
	.quad	0x3fe94a69fa65f638              # double 0.79033373742976831
	.quad	0x3fb641f37a884480              # double 0.086943833747016086
	.quad	0x3fcc8afed04d815c              # double 0.222991801939325
	.quad	0x3fe27a9914f4a17d              # double 0.57746557324303149
	.quad	0x3fe64faf4e1d405b              # double 0.69722714668933905
	.quad	0x3fcb0ba9d2ae54ec              # double 0.21129343783528698
	.quad	0x3fe7071fdea986bd              # double 0.71961968888009376
	.quad	0x3fe40af8df2336e8              # double 0.6263393743663217
	.quad	0x3fefa15c7bb6e18b              # double 0.98844741976704264
	.quad	0x3fa2749a4884b820              # double 0.036045857765529599
	.quad	0x3fee150cbc34f6ee              # double 0.94006954917105445
	.quad	0x3feb60808a780f07              # double 0.85553004307482261
	.quad	0x3fea16b55dbc34ea              # double 0.81527202899601758
	.quad	0x3fecacc53b6594ca              # double 0.89609014130533038
	.quad	0x3fdc508cbc2a1f44              # double 0.44241636634295767
	.quad	0x3fd2bc100f351dee              # double 0.29272843823534245
	.quad	0x3fbac098d37b2758              # double 0.1045012966452793
	.quad	0x3fed80459e5f1b57              # double 0.92190819675384261
	.quad	0x3fee495d3d205bad              # double 0.94645559252500322
	.quad	0x3fdae1068d55499e              # double 0.41998447229448199
	.quad	0x3fe0aaa146c00d1d              # double 0.52082885568998771
	.quad	0x3fdc0e8460ab646e              # double 0.43838605347043014
	.quad	0x3fee32b9d8a0307d              # double 0.94369213399615115
	.quad	0x3f80bf7fd2791d40              # double 0.0081777559381764897
	.quad	0x3fee3814619752a3              # double 0.94434565602076181
	.quad	0x3fbbf8d85abd3680              # double 0.10926582541761753
	.quad	0x3f9a9cf7ce78f880              # double 0.025989410378536082
	.quad	0x3fd711bd5be6d8ba              # double 0.36045774435786948
	.quad	0x3fe7f856d778428c              # double 0.74906484683931884
	.quad	0x3fed393ed00f765b              # double 0.91323795925900286
	.quad	0x3fb6c113fcbd9470              # double 0.088883637623057287
	.quad	0x3fe359e10016c6c9              # double 0.60472154633881658
	.quad	0x3fcfddc6e855c7d0              # double 0.24895559639440856
	.quad	0x3fe363cedca560f2              # double 0.60593360037731103
	.quad	0x3fe551e5e02ca616              # double 0.66624730857910452
	.quad	0x3fc74ebc378540f4              # double 0.18209030829394346
	.quad	0x3fdec68217aecb16              # double 0.48086597740909676
	.quad	0x3fc85cce697c8428              # double 0.19033222342207634
	.quad	0x3fe698b658573bd7              # double 0.70614163641027516
	.quad	0x3fe9a34adcde3836              # double 0.80118315828600006
	.quad	0x3fd6f5607de4697a              # double 0.35872661871112366
	.quad	0x3fe65971e5b56952              # double 0.69841856827705784
	.quad	0x3fd8335d03011186              # double 0.37813496869446117
	.quad	0x3fbf1b5016f92438              # double 0.12151051102513655
	.quad	0x3fee233838fe9058              # double 0.94179926997868346
	.quad	0x3fe470ac90d77598              # double 0.63875416077978553
	.quad	0x3fdb92081f82ae6e              # double 0.43078806950754867
	.quad	0x3fe44030c7c8ce51              # double 0.63283576031103383
	.quad	0x3fd90bb02d54bf2a              # double 0.39133839060649456
	.quad	0x3fe38782c8807f4c              # double 0.61029185448203682
	.quad	0x3fe399c2f762bb38              # double 0.61251972501290819
	.quad	0x3fcd35ed23c03c38              # double 0.22820820089006744
	.quad	0x3fe5d2db077300fb              # double 0.68198920683792552
	.quad	0x3fda925c3544821e              # double 0.41518311693110543
	.quad	0x3fe5c64895ad6df3              # double 0.68045453294638347
	.quad	0x3fe9158cac8c06b3              # double 0.78388055515843857
	.quad	0x3feba85fbc3eb64c              # double 0.86430346266360791
	.quad	0x3fd80777f706382c              # double 0.37545584796396514
	.quad	0x3fc82e9aa8a42620              # double 0.18892224535402224
	.quad	0x3fc44c4fef0a1388              # double 0.15857886478275085
	.quad	0x3fed5a5be9b6f61a              # double 0.91728015563393517
	.quad	0x3fa47aa805e149c0              # double 0.039998293607499402
	.quad	0x3fc73a4addd58d38              # double 0.18146644431826942
	.quad	0x3fdb35bbf81b7428              # double 0.4251546786234166
	.quad	0x3fe18a21396a489a              # double 0.54811154569530918
	.quad	0x3fe6a1c9afc316a0              # double 0.70724949196365472
	.quad	0x3faa4f4bbfd046f0              # double 0.051386229672187755
	.quad	0x3fe1a500e4117bf5              # double 0.55139202637280837
	.quad	0x3fe8f5f9a79aadbc              # double 0.7800262712020678
	.quad	0x3fdf26d039638b42              # double 0.48674398044947875
	.quad	0x3fc4c0c0f5530a94              # double 0.16213237742166042
	.quad	0x3fdb85d3f8a31ba4              # double 0.43004321366282228
	.quad	0x3fee5b1d98aa107f              # double 0.94862251107453222
	.quad	0x3fed8dd67e088135              # double 0.92356419196952422
	.quad	0x3fcb08ead6907f14              # double 0.21120963551310779
	.quad	0x3fcb48eda4bd80dc              # double 0.21316309493977925
	.quad	0x3fe10088de0e9408              # double 0.53131526346680946
	.quad	0x3fd5a2a2ee28365e              # double 0.33805154092337897
	.quad	0x3fc3551269b48948              # double 0.15103368913066562
	.quad	0x3fdd03eaa7b6836e              # double 0.4533640516111096
	.quad	0x3fef4a3826442ba6              # double 0.97780997728238073
	.quad	0x3fbb1b5e7865e888              # double 0.10588636817365871
	.quad	0x3fee797d09c3b28e              # double 0.9523301306449683
	.quad	0x3fe8f139b49ccedc              # double 0.77944646144757312
	.quad	0x3fd2fc871d7e671e              # double 0.29666307335138409
	.quad	0x3faa7ccdf797be10              # double 0.051733433221553438
	.quad	0x3fec42fbc85187d7              # double 0.8831766998739522
	.quad	0x3fec6fe78c7bc7f4              # double 0.88866021574199161
	.quad	0x3fd927aa5a1f9030              # double 0.39304598618605535
	.quad	0x3fd1775a8a8c672e              # double 0.27290977029916774
	.quad	0x3fe8e69d2daf6360              # double 0.77815112040398659
	.quad	0x3fea1eab3d634585              # double 0.81624376287270251
	.quad	0x3fe3285c2917bb42              # double 0.59867675805967502
	.quad	0x3fc0f0948ded27c8              # double 0.13234192781447818
	.quad	0x3fd5be82bef0e23a              # double 0.33975285193040217
	.quad	0x3fe53996ec8fdc05              # double 0.66327997401720096
	.quad	0x3feb863678bd0d2d              # double 0.86013339597449134
	.quad	0x3fe1189c68d0aa1f              # double 0.53425426933000952
	.quad	0x3f91c921948f3080              # double 0.017368817036001349
	.quad	0x3f98c210b08da2a0              # double 0.024177799964862801
	.quad	0x3fe39d13c6b3e1d3              # double 0.61292446908106013
	.quad	0x3feb4fee42fd3e41              # double 0.85350716670831883
	.quad	0x3fce4a35b4e08190              # double 0.23663970310100213
	.quad	0x3fe68c6bdce814f1              # double 0.70464127679647792
	.quad	0x3fa0416a28c80ff0              # double 0.031749074438295
	.quad	0x3fb88c2c47c5d128              # double 0.095888869784009345
	.quad	0x3fd8cb23b6a082d8              # double 0.38739865145366315
	.quad	0x3fd9e2749435da86              # double 0.40444673989933511
	.quad	0x3fdc0a32b7dfa19e              # double 0.43812244373705223
	.quad	0x3fe4558bef2a642f              # double 0.63544270240811851
	.quad	0x3fec09ffd744f1b0              # double 0.87622062725818317
	.quad	0x3feadd50ced09447              # double 0.83951607125767047
	.quad	0x3fda0e523416c1e2              # double 0.40712409102255098
	.quad	0x3fe061f093e88ae8              # double 0.51195553673127581
	.quad	0x3fe4ab4e3b795032              # double 0.64591132751457381
	.quad	0x3fe06e5fdf9544f0              # double 0.51347345036097458
	.quad	0x3fdb91a1dead56e8              # double 0.43076369043170226
	.quad	0x3fb935283d0f6870              # double 0.098467364222786235
	.quad	0x3fd04c407a36a98e              # double 0.25465404448427698
	.quad	0x3fdc315736815c58              # double 0.44051151583466241
	.quad	0x3feac02dbfc2fde4              # double 0.83595931485609442
	.quad	0x3fd14ef65dabbd62              # double 0.27044448039574409
	.quad	0x3fcecc807a4ef3dc              # double 0.24061590168085345
	.quad	0x3fa6bb0e98475fc0              # double 0.044395881737443244
	.quad	0x3fa1b4754dfa8460              # double 0.034579911965246124
	.quad	0x3fddf1d227b4ed0c              # double 0.46788457753764656
	.quad	0x3fe6276c328a418c              # double 0.6923123347387885
	.quad	0x3fe4c7ea123a2573              # double 0.64940360603320213
	.quad	0x3fec00d3ba27a972              # double 0.87510095938095689
	.quad	0x3fe9e45f44f50c74              # double 0.80912745922286299
	.quad	0x3fd4acb5596fda1e              # double 0.3230412839324418
	.quad	0x3fb722c399cf84b0              # double 0.090374207545681484
	.quad	0x3fd2e95895a6adc6              # double 0.29549231161464851
	.quad	0x3fdae46d0c401b46              # double 0.42019201465921119
	.quad	0x3fdcad3f811110aa              # double 0.44807422260442797
	.quad	0x3fb62528f97705b0              # double 0.086504517464183861
	.quad	0x3fa64186ee3f6310              # double 0.043468681891402849
	.quad	0x3fb9469b3c13c4f0              # double 0.098733617942133866
	.quad	0x3fe8158ed6748d43              # double 0.75263158689305276
	.quad	0x3fe76a0dc35d7630              # double 0.73169601590388389
	.quad	0x3fef05ac4f13f6c2              # double 0.9694425148479342
	.quad	0x3fe4641c54505afc              # double 0.63722053973728476
	.quad	0x3fe8eaf37cba6f3a              # double 0.77868055687893123
	.quad	0x3fede1913e30f320              # double 0.93378507754059469
	.quad	0x3fd9f8a463ed21b8              # double 0.40580091246058769
	.quad	0x3fed6165cfc65164              # double 0.91813936787597727
	.quad	0x3fbeb8c3d63e07c8              # double 0.12000678997540526
	.quad	0x3fe6bf10f1fd658e              # double 0.71082350982321585
	.quad	0x3fd364485dedd4ae              # double 0.30299576924091809
	.quad	0x3fd624cb7a6b1dc4              # double 0.34599577860759845
	.quad	0x3fe85518f47f807b              # double 0.76038787606741154
	.quad	0x3fe039f0236c810a              # double 0.50707251471251991
	.quad	0x3fef9426e660bfb5              # double 0.98683495517433661
	.quad	0x3fed3b11414e175f              # double 0.91346037630931309
	.quad	0x3fb27f7c168562d8              # double 0.072257762430477768
	.quad	0x3fd1aa5c6b7fc6aa              # double 0.27602301118813932
	.quad	0x3fe145d0e0a0204f              # double 0.53977245208899116
	.quad	0x3fe37439bea189ca              # double 0.60793769104594131
	.quad	0x3fdb771a60ab672e              # double 0.42914447250733445
	.quad	0x3fd06c3af1f59910              # double 0.25660585049480833
	.quad	0x3fcecc06c78abf34              # double 0.2406013941122126
	.quad	0x3fc9c33d4d41be04              # double 0.20127073547654117
	.quad	0x3fbe5176608aa960              # double 0.1184305177399998
	.quad	0x3fd25a004ebbc8e6              # double 0.2867432373888178
	.quad	0x3fecdfe9a54e784a              # double 0.90233309065275447
	.quad	0x3fd8d13d5dc4e65a              # double 0.38777097851889197
	.quad	0x3fe3cbaa0e338c8a              # double 0.61861136220649482
	.quad	0x3fe5dbb13dda56e1              # double 0.68306791382448406
	.quad	0x3fe4d68712854cd9              # double 0.65118745438885661
	.quad	0x3fcce580387b9388              # double 0.22575381048150356
	.quad	0x3fcd386ea051ec00              # double 0.22828467205167158
	.quad	0x3fde1641352e3d5a              # double 0.47010832017345694
	.quad	0x3fd9b6718f29825e              # double 0.40176047306707641
	.quad	0x3fd882e8f9e8dc16              # double 0.38299011616931133
	.quad	0x3fec9d860f1f8ca0              # double 0.89422896341092794
	.quad	0x3feca379d7c867e1              # double 0.8949555601604936
	.quad	0x3fd005203eed21f4              # double 0.25031286378046436
	.quad	0x3fe6ba40ad218061              # double 0.71023591818449117
	.quad	0x3fe1e97e595717a3              # double 0.55975263070353198
	.quad	0x3fdbf51f07735cb0              # double 0.4368360111961449
	.quad	0x3fedd7ede3f89880              # double 0.93260855222321482
	.quad	0x3fee84d340ce7b41              # double 0.95371401460202077
	.quad	0x3fd571b398d7105e              # double 0.33506479192533856
	.quad	0x3fc3588b81cd0e9c              # double 0.15113967740955025
	.quad	0x3fcc3292a3b412c0              # double 0.22029335969286556
	.quad	0x3fdc3e111bdc93c4              # double 0.44128825875150945
	.quad	0x3fe08fd71a524411              # double 0.51755862370385064
	.quad	0x3fb090dd66927980              # double 0.064710462133438895
	.quad	0x3fe439b65c2751a7              # double 0.63204496382472974
	.quad	0x3fdf37dfd32ad844              # double 0.48778529760182132
	.quad	0x3fe8ddb22af07c99              # double 0.77706249605752753
	.quad	0x3fd1df36a8f56452              # double 0.27924887180194446
	.quad	0x3fd8a1566acd71d4              # double 0.38484726362164889
	.quad	0x3fe5f1ea1493a2ae              # double 0.68578056353461192
	.quad	0x3fece9c46b6860c9              # double 0.90353604295798917
	.quad	0x3feefbfb62142546              # double 0.96825951725001214
	.quad	0x3fdbe3742aefb2a8              # double 0.43575767701148971
	.quad	0x3fddcc50179b2aa6              # double 0.46559526734624013
	.quad	0x3fe1945d8ddd6963              # double 0.54936101634966084
	.quad	0x3fd7fce254b054c6              # double 0.37480982084646219
	.quad	0x3fe8382c889dce2b              # double 0.75685717280288622
	.quad	0x3fed772e98e952be              # double 0.92079858651648983
	.quad	0x3fe0e3c3244efdcb              # double 0.52780301181331291
	.quad	0x3fcf1fcf5624b3a4              # double 0.24315826135844276
	.quad	0x3fdf3bdb80c43e24              # double 0.48802840781078971
	.quad	0x3fe002795c2bdbb3              # double 0.50030200960360671
	.quad	0x3fe39253935e89e9              # double 0.61161211760582745
	.quad	0x3fe2ea3ddb71e51f              # double 0.5910939489396333
	.quad	0x3fe61816c3218388              # double 0.69044054137712951
	.quad	0x3fea8ef991087b28              # double 0.82995298697264719
	.quad	0x3feca504afb38994              # double 0.89514383618034054
	.quad	0x3fcbaedbbd0fddac              # double 0.21627375346700484
	.quad	0x3fd4be393b71f4a8              # double 0.32411032490910907
	.quad	0x3fd548fc07cd4e46              # double 0.3325796199980896
	.quad	0x3fdb0200a4867d40              # double 0.42199722353867131
	.quad	0x3fcabb860da02c70              # double 0.20884776749912559
	.quad	0x3fdde54aff4b2aca              # double 0.46711993151681652
	.quad	0x3fae45d6d354f1c0              # double 0.059126580521908334
	.quad	0x3fcc111789003784              # double 0.21927160443777549
	.quad	0x3fe4448e31438fec              # double 0.63336858388765682
	.quad	0x3fe25df00522cf40              # double 0.57396698954696745
	.quad	0x3fdcff5d27f4a792              # double 0.453086174983235
	.quad	0x3fe530581237da4d              # double 0.66215137060391671
	.quad	0x3fda705a1a346cee              # double 0.41310741957722896
	.quad	0x3feb4b3b3700578a              # double 0.8529335092778052
	.quad	0x3fc75e4776b568c4              # double 0.18256467148132149
	.quad	0x3fec486a056122cb              # double 0.88383961725875204
	.quad	0x3fc848c75a80cdb4              # double 0.18972103041742872
	.quad	0x3fdf234f0d335450              # double 0.48653007783042757
	.quad	0x3fe97a5a881385e1              # double 0.79618574693102684
	.quad	0x3fa8e0d1ee1950a0              # double 0.048590240778737526
	.quad	0x3fe7b31425e38bfa              # double 0.74061019325415534
	.quad	0x3fd3213f59bca51e              # double 0.29890426410072901
	.quad	0x3fa0e61afbcc5080              # double 0.033005564915726815
	.quad	0x3fe4a74aed1f599b              # double 0.64542146981220883
	.quad	0x3fe3819b4dc88381              # double 0.60957112495462706
	.quad	0x3fe12e892a9771cc              # double 0.536930640398674
	.quad	0x3fec5bffa6b659d6              # double 0.88623030243871415
	.quad	0x3fd9ecf77b82f54a              # double 0.40508830129313778
	.quad	0x3fe303c362f1383a              # double 0.59420937847767807
	.quad	0x3f966affe75be9a0              # double 0.021892546173128857
	.quad	0x3fe966a5ba4cdfe2              # double 0.79378019701743718
	.quad	0x3fd064a6bdfd495c              # double 0.2561432700505486
	.quad	0x3feb4ef4097fb469              # double 0.85338785033458209
	.quad	0x3fb4fa8e32112870              # double 0.08194817278232036
	.quad	0x3feb2e32cd4b0f1d              # double 0.84938945862129211
	.quad	0x3fd207468653d7ae              # double 0.28169406049652934
	.quad	0x3fc8463b6f2ce51c              # double 0.18964331558689984
	.quad	0x3fe0eb6b884acf45              # double 0.52873779887747985
	.quad	0x3fd0cc7f00bc1038              # double 0.2624814517187164
	.quad	0x3fc22faa8d5371e0              # double 0.14207965756112539
	.quad	0x3fb8042dfa219c58              # double 0.093813775603494576
	.quad	0x3fd7e44fa662947c              # double 0.37331000565092842
	.quad	0x3fe02625b1e7ec14              # double 0.50465664622550088
	.quad	0x3feb82616a354aba              # double 0.85966559165748113
	.quad	0x3fe495c9deea1f18              # double 0.64328473604197978
	.quad	0x3fbfb00c4c8ac148              # double 0.12378002995206316
	.quad	0x3fd57012d23cc2a6              # double 0.33496542483320935
	.quad	0x3fdb927476d2370a              # double 0.43081390002849729
	.quad	0x3feac5b12fc6c5ea              # double 0.83663234073008863
	.quad	0x3fe0817a5bdbf578              # double 0.51580541554692072
	.quad	0x3fec8e504b7fe3d3              # double 0.89237227197656421
	.quad	0x3fd700e888c1f4d6              # double 0.35943044047583095
	.quad	0x3fe836968757a894              # double 0.7566635745436252
	.quad	0x3fc7c07842ea5954              # double 0.18556121127466929
	.quad	0x3fe8aeff23ac8532              # double 0.77136189429817237
	.quad	0x3fec748ecdd806ed              # double 0.88922825054052412
	.quad	0x3fc09b012b446d08              # double 0.1297303639665659
	.quad	0x3fec01401a272246              # double 0.87515263660413534
	.quad	0x3fa7d7483b7451f0              # double 0.046564347512830895
	.quad	0x3fcc252927a26c94              # double 0.21988405642773456
	.quad	0x3fca14ab406afae8              # double 0.20375576634793124
	.quad	0x3fe561fc82bc835d              # double 0.66821122679185019
	.quad	0x3fd1f1ff26f09e86              # double 0.2803953056595464
	.quad	0x3fa9d77d21005550              # double 0.050472173956374378
	.quad	0x3fdb31b88a51c5a8              # double 0.42490972049480513
	.quad	0x3fe3700d6e39d67a              # double 0.60742827919484843
	.quad	0x3fbd4a573f57afb0              # double 0.11441560074280122
	.quad	0x3fde6977dd24675a              # double 0.47518726917188803
	.quad	0x3fe4b473e0e0ef2a              # double 0.64702791139231874
	.quad	0x3fb9490f05d50190              # double 0.098771037029115271
	.quad	0x3fdb8e6777d2645e              # double 0.43056666089393569
	.quad	0x3fd4134ff744659e              # double 0.31367873332200158
	.quad	0x3fb4d8a2245e2258              # double 0.0814305628574713
	.quad	0x3fc5e13d47398008              # double 0.17093626001133111
	.quad	0x3fec4b09a24a9137              # double 0.88415986726298612
	.quad	0x3fcc423132e1134c              # double 0.22077002510391208
	.quad	0x3fe46e830f9f843d              # double 0.63849022914303755
	.quad	0x3fb2e084e1062618              # double 0.073738388955597478
	.quad	0x3fa095b5470c4a50              # double 0.032392182276585246
	.quad	0x3fd6f30a9b22e364              # double 0.35858407163646278
	.quad	0x3fdf8dc8fd5e96f0              # double 0.49302887671579665
	.quad	0x3f98333b29298b40              # double 0.023632931125017409
	.quad	0x3fee065943c8e022              # double 0.93827498664086684
	.quad	0x3febea3b31594043              # double 0.87234267843633295
	.quad	0x3fea19fab90c8f49              # double 0.81567131178278729
	.quad	0x3fc4117bd8865080              # double 0.15678356239789437
	.quad	0x3fc40a1e48b662c0              # double 0.15655878591930694
	.quad	0x3fd6eb96b43ac268              # double 0.35812919235744411
	.quad	0x3fd33d58e2bbdad8              # double 0.30061933652852479
	.quad	0x3fe9e08791bde1ab              # double 0.80865839448147392
	.quad	0x3fd1984ccc69824c              # double 0.27492065393565635
	.quad	0x3fd1d256c4d5d52e              # double 0.27846307012744631
	.quad	0x3fd051344cf81eee              # double 0.25495631710553723
	.quad	0x3fe7f4b4a267a607              # double 0.74862128944113315
	.quad	0x3fd2c7c22bc4d1e2              # double 0.29344229006099287
	.quad	0x3fd2c11940756bc0              # double 0.29303580565254705
	.quad	0x3fca16d1ba140014              # double 0.2038213881096459
	.quad	0x3feeb66125ad8658              # double 0.95976312025977517
	.quad	0x3fbf1dc4b513d728              # double 0.12154797955357977
	.quad	0x3fd6a488b5533948              # double 0.35379235942391007
	.quad	0x3fe07ce345ca6f35              # double 0.51524509078033154
	.quad	0x3fe519f5440e7d66              # double 0.65941870968155736
	.quad	0x3fa377bfce85bfa0              # double 0.038022989235172888
	.quad	0x3fc41359358e6cb0              # double 0.15684046855026201
	.quad	0x3fcace447074dafc              # double 0.20941977969206238
	.quad	0x3fe5294447dae8bf              # double 0.66128744157983721
	.quad	0x3f96dd170910fa80              # double 0.022327766350139999
	.quad	0x3fecddc80df8a7ad              # double 0.90207293251773069
	.quad	0x3fef57e23b864726              # double 0.97947799325831819
	.quad	0x3fe02205f7462150              # double 0.50415323539440671
	.quad	0x3fd4e6ce7d25f77e              # double 0.32658731671823904
	.quad	0x3fe4ec5d3378789a              # double 0.65385303547715812
	.quad	0x3fc2b660a9661c7c              # double 0.14619072219304374
	.quad	0x3fd0a89ea630f51e              # double 0.26029173116315174
	.quad	0x3fa5eb4c065c4640              # double 0.042810798431798691
	.quad	0x3fedd07eb173f038              # double 0.93170103701368756
	.quad	0x3fe7fb7f4b0e362f              # double 0.74945034655838139
	.quad	0x3fee15f84318764b              # double 0.94018185715294444
	.quad	0x3fbd44ab8ca32790              # double 0.11432907279518489
	.quad	0x3fcce234d1f430e4              # double 0.22565326930669649
	.quad	0x3fdd440e33800004              # double 0.45727877644822024
	.quad	0x3fe8a0eabd450368              # double 0.76964318243709062
	.quad	0x3fec928c7685c5e5              # double 0.89288924359260291
	.quad	0x3fe16fe85ce37c62              # double 0.5449106039267344
	.quad	0x3fee9866bfa12719              # double 0.95610368182790062
	.quad	0x3fdb63d8ae4d0692              # double 0.42796914121218166
	.quad	0x3fb54131d42bf390              # double 0.083026041316726528
	.quad	0x3fddf3ff07ffe81a              # double 0.46801734715666188
	.quad	0x3fe60ffb45e71e7f              # double 0.68945087101833724
	.quad	0x3fd6e28026e97a5a              # double 0.35757449913027062
	.quad	0x3fe79ac72254d932              # double 0.737643782666771
	.quad	0x3fb89bf5b1e2cb68              # double 0.096129756859949844
	.quad	0x3feada459da32d31              # double 0.83914452351146995
	.quad	0x3fee9b0cd67425f4              # double 0.95642701993455014
	.quad	0x3fe2ff03404a9357              # double 0.59362947995087267
	.quad	0x3fec9c7ea7020c8b              # double 0.89410336130858192
	.quad	0x3fe5806540317dda              # double 0.67192328012236691
	.quad	0x3fca41b24de581ac              # double 0.20512989810505411
	.quad	0x3fe330b219e16398              # double 0.59969430022020997
	.quad	0x3fa0ebe90ba9ec40              # double 0.03304985301380059
	.quad	0x3fd1d4a98a377c52              # double 0.27860487458923899
	.quad	0x3febb3fde05981e1              # double 0.86572164362229043
	.quad	0x3fc8082dc8424d10              # double 0.18774959829588811
	.quad	0x3fb59e39e5e19d68              # double 0.084445589660040121
	.quad	0x3fd6f4136088a888              # double 0.35864719798213018
	.quad	0x3fb8017605269e78              # double 0.093772293336423007
	.quad	0x3fec029aa3e9c810              # double 0.87531787885950685
	.quad	0x3fc1360d291277f8              # double 0.13446201806522118
	.quad	0x3f932b3aaec48d40              # double 0.018719593922594813
	.quad	0x3fe63fcf2b6e4c16              # double 0.69528921587550729
	.quad	0x3fedfd84caed2e7a              # double 0.93719710954742586
	.quad	0x3febd889c7032008              # double 0.87018288487979678
	.quad	0x3fe670422c771189              # double 0.70120342907516531
	.quad	0x3fed97f789a8ce55              # double 0.9248006523761868
	.quad	0x3fd7fb5f25a232f8              # double 0.37471750903277679
	.quad	0x3fdd4ecd88f39bae              # double 0.45793474554232716
	.quad	0x3feb7a00d78db5b0              # double 0.85864297962478098
	.quad	0x3fed217353eae7af              # double 0.91033331289439967
	.quad	0x3fc08199e8f5f154              # double 0.12895511508021207
	.quad	0x3fd2447f71ee4a32              # double 0.28543077589089016
	.quad	0x3fe2454264b7a729              # double 0.57095451041570755
	.quad	0x3fead9eb254d080a              # double 0.83910138402302548
	.quad	0x3fdb97f4121ad52c              # double 0.43114949958847393
	.quad	0x3fe9ea0261f8586e              # double 0.80981558928284669
	.quad	0x3fe9ca06ed9e0f67              # double 0.80591150674488865
	.quad	0x3fe75754fd029ea1              # double 0.72941064277707224
	.quad	0x3fefd73890d24c95              # double 0.99502208981938855
	.quad	0x3fe6ba5f8e12bb9b              # double 0.71025064228693979
	.quad	0x3feaa75a23f1e93b              # double 0.8329287244844531
	.quad	0x3f7ed0c990bc2580              # double 0.0075233338973331731
	.quad	0x3f7733938bb15880              # double 0.0056644214156077455
	.quad	0x3fedc4fe7599f421              # double 0.93029711693782613
	.quad	0x3fc3652afb68cd18              # double 0.15152489925240142
	.quad	0x3fe77c6ad7d95b2a              # double 0.73393766553895046
	.quad	0x3fe3c2466a85b08d              # double 0.61746521763918027
	.quad	0x3fd9025e14b491f6              # double 0.39076950094229745
	.quad	0x3fa5795792372020              # double 0.041941391562034136
	.quad	0x3fe50f05c905f20e              # double 0.65808381330822541
	.quad	0x3febde67bc5b074b              # double 0.8708990744419024
	.quad	0x3fed24c375952c9a              # double 0.91073773351071741
	.quad	0x3fe6cb5179ee4db1              # double 0.71231912436126354
	.quad	0x3fd170b31f4c0062              # double 0.27250364357315082
	.quad	0x3fed3a570ec5838f              # double 0.91337159047189853
	.quad	0x3fe79b87f49476c7              # double 0.73773572701949142
	.quad	0x3fe7684f3b3e63ac              # double 0.73148309298550407
	.quad	0x3f6ac23ffefb8f00              # double 0.0032664537355787671
	.quad	0x3fe1985f59757204              # double 0.54985015365997514
	.quad	0x3fb16e24c2e2fb50              # double 0.068086907939670427
	.quad	0x3fcda433536e0d8c              # double 0.23157350133633903
	.quad	0x3fd15546172e4726              # double 0.27082969917056443
	.quad	0x3fe467655e26e85b              # double 0.63762157811221287
	.quad	0x3fb8569cb5101c80              # double 0.095071596340959629
	.quad	0x3fe22b3939d2249b              # double 0.56777631085528257
	.quad	0x3f96b26472ae0e60              # double 0.022164887904649766
	.quad	0x3febb5eb47b4e56c              # double 0.86595691685867626
	.quad	0x3fe70c2103bde4d9              # double 0.72023058634581638
	.quad	0x3f89078eae041240              # double 0.012221445737403802
	.quad	0x3fe5d2cb64f603cd              # double 0.68198175162262376
	.quad	0x3fd13a68d63c6da6              # double 0.26919003411759446
	.quad	0x3fe29c767c863b11              # double 0.58159946747932356
	.quad	0x3fdc6a897ab3f588              # double 0.44400250418387843
	.quad	0x3fc70b086316ffb8              # double 0.18002419317599361
	.quad	0x3fc209eaec75b198              # double 0.14092766328702733
	.quad	0x3fec789392abf337              # double 0.88971880575954898
	.quad	0x3fcd680ef56f6b1c              # double 0.22973811134473798
	.quad	0x3fed65dec42973a8              # double 0.91868532479167175
	.quad	0x3fd7362ea39e8164              # double 0.36268201807435774
	.quad	0x3fc757dbe64127f0              # double 0.18236874335190079
	.quad	0x3fe902de2dec044c              # double 0.78160008401040093
	.quad	0x3fef1adf40140f10              # double 0.9720302821665161
	.quad	0x3fe312a25c5c67ff              # double 0.59602468528032648
	.quad	0x3fd8dedd1d53b9a8              # double 0.38860252250642668
	.quad	0x3feb0fbf568bde91              # double 0.84567229178988346
	.quad	0x3fe37c797f130723              # double 0.60894465274052256
	.quad	0x3fe308d62cb6728f              # double 0.59482868893572227
	.quad	0x3fe58fbae933c6a0              # double 0.67379518077196465
	.quad	0x3fca73872948bcf4              # double 0.20665063396288696
	.quad	0x3fc1c84c480dafe4              # double 0.13892510908351519
	.quad	0x3fcb22d10b9fae68              # double 0.21200001781049882
	.quad	0x3f8625b55b7f3a00              # double 0.010814110617414663
	.quad	0x3fd57394ecad2e4a              # double 0.33517954934061278
	.quad	0x3fe124b8b2c10cfa              # double 0.53573260224257457
	.quad	0x3fc8ac52fabe3c7c              # double 0.19275891536060275
	.quad	0x3fe1607e89cda65e              # double 0.54302908816061879
	.quad	0x3feca5a326a383cf              # double 0.8952193979895301
	.quad	0x3fe4dd5bf23a3725              # double 0.65202138242759544
	.quad	0x3fb59af4696a6b50              # double 0.084395671592955467
	.quad	0x3fe937e38b889515              # double 0.78807236912385525
	.quad	0x3fdb5df0d9784e32              # double 0.42760869252490175
	.quad	0x3fe1bec31bde23d0              # double 0.55453639452854908
	.quad	0x3fce3f7ae362bc68              # double 0.23631225683991208
	.quad	0x3fefbb382128b333              # double 0.99160391308178075
	.quad	0x3fe5369bb8b3b4b5              # double 0.66291605066876136
	.quad	0x3fe2b6ec435f3fc8              # double 0.58482945593458968
	.quad	0x3fd1491964547674              # double 0.27008662031025854
	.quad	0x3fe7bc72f8d57d22              # double 0.74175404167536763
	.quad	0x3fda7d8d46938448              # double 0.41391307728014626
	.quad	0x3fc94efba7c49f04              # double 0.19772287074851402
	.quad	0x3fda7d621e656b6a              # double 0.4139027878606415
	.quad	0x3fc66408990c900c              # double 0.17492778275584475
	.quad	0x3fb53dc9bdaa3798              # double 0.082974060826215612
	.quad	0x3fe0aa28b7e70240              # double 0.52077136915620059
	.quad	0x3f8fa829df400d00              # double 0.015457465291552897
	.quad	0x3fe083a047f2ce26              # double 0.51606763889725893
	.quad	0x3fdbd0db9c703bcc              # double 0.43462267186344827
	.quad	0x3fe652cf1e39e137              # double 0.6976085272172331
	.quad	0x3fd9140b151de04a              # double 0.39184834539583291
	.quad	0x3fed847612311945              # double 0.92241958191952078
	.quad	0x3fd42426d269523a              # double 0.31470652149190281
	.quad	0x3fe740f611dae3c7              # double 0.72667983519851809
	.quad	0x3fe1059b515d86cf              # double 0.53193441287677412
	.quad	0x3feb2d35c2b36cd1              # double 0.84926879909053288
	.quad	0x3fe05abff527c6d0              # double 0.5110778606596913
	.quad	0x3fd8b77090f04120              # double 0.38619627145910052
	.quad	0x3fc34d67736d59c4              # double 0.15079968582240444
	.quad	0x3fe0c828b6296304              # double 0.52443347528887374
	.quad	0x3fd8b3e2ab42218c              # double 0.38597933506437054
	.quad	0x3fe7dea9cd46b4bf              # double 0.74593057721144607
	.quad	0x3fda44758628258c              # double 0.41042841054203261
	.quad	0x3fd0d2106b467f1e              # double 0.26282129741774607
	.quad	0x3fc1ab9816588128              # double 0.13804913607692382
	.quad	0x3febdb1d57d44c87              # double 0.87049739030989393
	.quad	0x3fee576edbd5e576              # double 0.94817297875049067
	.quad	0x3fe4a529e13a1e29              # double 0.64516157140400765
	.quad	0x3fb67f91493a2020              # double 0.087884025933931742
	.quad	0x3fe3699ec803e7ca              # double 0.60664309564094165
	.quad	0x3fee36cff8adfaef              # double 0.94419096536861769
	.quad	0x3fcb18cd8273872c              # double 0.2116944205254695
	.quad	0x3fe831c71d0091f9              # double 0.75607638992784054
	.quad	0x3fd6143ade9fdc38              # double 0.34498473873776758
	.quad	0x3fee4d8c2434def9              # double 0.94696623870456087
	.quad	0x3fefa9a460bb0d66              # double 0.98945826428136452
	.quad	0x3feef1e264d7a6e5              # double 0.96702689834384314
	.quad	0x3fd05b5b17e0faea              # double 0.25557591754834041
	.quad	0x3fe8feebe280f790              # double 0.78111833800334018
	.quad	0x3fb815c8d76168e0              # double 0.09408240564644954
	.quad	0x3fe669ec54c47de4              # double 0.70043007427369419
	.quad	0x3fd51d2573adcfec              # double 0.32990394875309792
	.quad	0x3fc339961ddbf36c              # double 0.15019489725082324
	.quad	0x3fdba63a3bd9957c              # double 0.43202071995468549
	.quad	0x3fc632da33bfb894              # double 0.17342689062883621
	.quad	0x3fe129d17f0f271e              # double 0.53635477844474955
	.quad	0x3fe4e6426cddef64              # double 0.65310784590790805
	.quad	0x3fe75c0bad18663e              # double 0.72998603637387993
	.quad	0x3fe48c2556fa7748              # double 0.64210764873471593
	.quad	0x3feffc3068ad9a68              # double 0.99953480191181842
	.quad	0x3fc30995069948e0              # double 0.14872992346005898
	.quad	0x3fd7c4c9537be8b6              # double 0.37138589050995152
	.quad	0x3fdc45d3f3950da2              # double 0.44176195895507864
	.quad	0x3fea91146edc5c21              # double 0.83020993854995961
	.quad	0x3fed00751f216f6e              # double 0.90630584793278302
	.quad	0x3feedcabd3a7d3f2              # double 0.96443740214328799
	.quad	0x3fe4f9993c4ae8c5              # double 0.6554685762014506
	.quad	0x3fe49c38a54d49eb              # double 0.64406997952965861
	.quad	0x3fecf746f5d30f24              # double 0.90518520367229315
	.quad	0x3feb74825cfdfed8              # double 0.85797231829198051
	.quad	0x3fdd675cd065d3b2              # double 0.45943374968856709
	.quad	0x3fe06550b297d2d2              # double 0.51236758119065429
	.quad	0x3fd07da20de10160              # double 0.25766803126682269
	.quad	0x3fe38a080a68eb25              # double 0.61059953721209992
	.quad	0x3fa440977c71a780              # double 0.039555295887864439
	.quad	0x3fe6abea4b8974b8              # double 0.70848574403102926
	.quad	0x3fdb4d42de8308c2              # double 0.42659064988778195
	.quad	0x3fc8c5b37d9c0b04              # double 0.19353335984495612
	.quad	0x3f6d0c09c89a8f00              # double 0.0035457793317891229
	.quad	0x3fec6a43d8b0537d              # double 0.88797180482889326
	.quad	0x3fe6088f9ecdde05              # double 0.68854504600943811
	.quad	0x3fd52b63d855b9d2              # double 0.33077331663562604
	.quad	0x3fc55309dcce9a08              # double 0.16659663468927044
	.quad	0x3fa2c8950ad2adb0              # double 0.03668657071224446
	.quad	0x3fe6c1f4a7645596              # double 0.71117623037086974
	.quad	0x3fd289f146984ab8              # double 0.2896693410304283
	.quad	0x3fef140bb114f4ff              # double 0.971196981299414
	.quad	0x3fe7102eafb63a95              # double 0.72072538679806775
	.quad	0x3fc37dabc6f6c68c              # double 0.15227267470395522
	.quad	0x3fe2ccbd3de6ff1d              # double 0.5874925812749755
	.quad	0x3f8c38ac2f85c580              # double 0.013779969406388259
	.quad	0x3fd2a2766e60644c              # double 0.29116593150098846
	.quad	0x3fe8ee165d9df5d4              # double 0.77906339916779154
	.quad	0x3fd775d862007826              # double 0.36656770296565566
	.quad	0x3feeaad7e7a831c0              # double 0.958354904608818
	.quad	0x3fd5bda5e659ad40              # double 0.33970019812723606
	.quad	0x3fed6105084c5df6              # double 0.91809321995509552
	.quad	0x3fe4194ca66afdee              # double 0.62808830741408683
	.quad	0x3fdfd847ef3b275e              # double 0.49757574427041174
	.quad	0x3fcad1033d9c118c              # double 0.2095035601452192
	.quad	0x3fe549670127eec9              # double 0.6652102491929891
	.quad	0x3fd48edce77c44cc              # double 0.32121965986250411
	.quad	0x3fcab638f7f3e370              # double 0.20868599040093327
	.quad	0x3fe9f3e816c10202              # double 0.81102375454071329
	.quad	0x3fe6d4a5fb5a6f25              # double 0.71345805256303108
	.quad	0x3fe78ab74e97dfd4              # double 0.73568311071630399
	.quad	0x3fd700e3ec711136              # double 0.35942934122091985
	.quad	0x3fe970cc0e42c923              # double 0.79501917634323538
	.quad	0x3fe043c12a11cb44              # double 0.50827081886959791
	.quad	0x3fd029a957a5b316              # double 0.25254281577399362
	.quad	0x3fe21f30ee87be3f              # double 0.56630751216830066
	.quad	0x3feaca4ecc782156              # double 0.83719577727701266
	.quad	0x3fc8c065e7f0dffc              # double 0.19337152314415096
	.quad	0x3fe00adc91d51e48              # double 0.50132587893399094
	.quad	0x3f943f0156974740              # double 0.019771595869151115
	.quad	0x3fe0fdd6864cd38a              # double 0.53098608236779055
	.quad	0x3fdfce414fc7230a              # double 0.49696381369408071
	.quad	0x3fe4620ff5887ba2              # double 0.6369705005234787
	.quad	0x3fe06f1a0aee0480              # double 0.51356222281187058
	.quad	0x3fea12dcaa9fdb5a              # double 0.81480248761259166
	.quad	0x3f97391947b49820              # double 0.022678751946976772
	.quad	0x3fe45ba137963ef5              # double 0.6361852727586369
	.quad	0x3fd4dee5960fcb9a              # double 0.32610454229796348
	.quad	0x3fdb064454794e7a              # double 0.42225750207328583
	.quad	0x3f9062b24f53c3a0              # double 0.016001497356174732
	.quad	0x3fca86812d088ce4              # double 0.20722975443741298
	.quad	0x3fe3de9cee814b79              # double 0.6209244402219688
	.quad	0x3fcf11be7d41dff0              # double 0.24272900692062604
	.quad	0x3fd4692f92a20974              # double 0.31892003364205057
	.quad	0x3fdb5a16ac7ccda4              # double 0.42737356991275477
	.quad	0x3fe919bb0214f278              # double 0.78439093023878481
	.quad	0x3fe111638cf4cab3              # double 0.53337266474257772
	.quad	0x3fd885376b80324a              # double 0.38313088892099201
	.quad	0x3fd7e6dab51c9872              # double 0.37346522986115993
	.quad	0x3fc76d3293138da4              # double 0.18301994496787899
	.quad	0x3fdc3790ca92349e              # double 0.44089145452819334
	.quad	0x3fcd9cd744261e98              # double 0.23134890391905993
	.quad	0x3fe377c8bf875e4f              # double 0.60837209136929882
	.quad	0x3feb394a97f23a9e              # double 0.85074357678407231
	.quad	0x3fc0cd74a2dd4204              # double 0.13127000763280716
	.quad	0x3fd46cf8635d39ba              # double 0.31915101722270445
	.quad	0x3fa19c3c23964c40              # double 0.034395102829102076
	.quad	0x3fe24cb15c68f2f9              # double 0.57186191605396097
	.quad	0x3fe26d424761b2ef              # double 0.57583726827360049
	.quad	0x3fd0a6e0095a1aa0              # double 0.26018525040891838
	.quad	0x3fe80dc710448c07              # double 0.75168183495804974
	.quad	0x3fe5550280792212              # double 0.66662716953675472
	.quad	0x3fdd156ea71a3570              # double 0.45443311995116797
	.quad	0x3fef66b3512f92a3              # double 0.98128667694671312
	.quad	0x3fd671571d497ac8              # double 0.35066774234830378
	.quad	0x3fedac29833b1c5c              # double 0.92726588851008839
	.quad	0x3fd24678455ec2f2              # double 0.28555113577299018
	.quad	0x3fd175ba89536c58              # double 0.27281058703164751
	.quad	0x3fe158d5139f3ee5              # double 0.54209379036361993
	.quad	0x3fe9e792ab1379ca              # double 0.80951817906662282
	.quad	0x3fe5957cc7e2eb96              # double 0.67449797668756406
	.quad	0x3fe65e3236a74f9e              # double 0.69899855303309599
	.quad	0x3fd7faa551ffd488              # double 0.37467320449588515
	.quad	0x3fe8e9a23a56bb25              # double 0.77851973909659888
	.quad	0x3febea0ac3ef0d29              # double 0.87231958645171404
	.quad	0x3fd32f3bb5af7d3c              # double 0.29975788824772898
	.quad	0x3fcb433c8a4b2820              # double 0.21298939468971501
	.quad	0x3fd62e1b3186f21c              # double 0.34656410061487164
	.quad	0x3fb1f8152bc7d928              # double 0.0701916915785189
	.quad	0x3f9a68bac439a6a0              # double 0.025790136553416887
	.quad	0x3fd14c179d2bc2d4              # double 0.27026930187916531
	.quad	0x3feca330e457e395              # double 0.89492077444366436
	.quad	0x3fd172c279aa51e8              # double 0.27262937432649759
	.quad	0x3fad4f3d76d7a210              # double 0.057245178944700936
	.quad	0x3fdacf9abfd4e46a              # double 0.41892117246204086
	.quad	0x3fe53fbd53f3f6b8              # double 0.66403070828501765
	.quad	0x3fb86905a211bd00              # double 0.095352508609483521
	.quad	0x3fe6f0b8ca16c65a              # double 0.71688498945713808
	.quad	0x3f83b2529b4c9000              # double 0.0096174672740474421
	.quad	0x3fe31b60bea8326b              # double 0.5970920299310597
	.quad	0x3fc8622a6e4d5234              # double 0.19049578080979901
	.quad	0x3fe6eb513cad48b4              # double 0.71622526026683042
	.quad	0x3fe5849c76641d61              # double 0.67243788836723806
	.quad	0x3fec7edf032b9975              # double 0.89048719996644243
	.quad	0x3fa2b0ffcc44aa20              # double 0.036506646809659538
	.quad	0x3fe5cf6369737196              # double 0.68156595798386621
	.quad	0x3fe81c0fe81c4053              # double 0.75342555364660269
	.quad	0x3fd97bd97b17a5bc              # double 0.39818417568912046
	.quad	0x3fe019095f119f88              # double 0.50305622642643844
	.quad	0x3fab2d3c445955c0              # double 0.053079493850116233
	.quad	0x3fd49f986625110a              # double 0.3222409245975234
	.quad	0x3fe246ecf18c35bf              # double 0.57115790536197852
	.quad	0x3fd89d8aa771f7ee              # double 0.38461557724065087
	.quad	0x3fee0f3c4993d809              # double 0.93935980196579394
	.quad	0x3fd417f76815b0bc              # double 0.31396279491924495
	.quad	0x3fee85e6df15badd              # double 0.95384543963686108
	.quad	0x3fdb572371d02986              # double 0.42719350924075916
	.quad	0x3fda397b12c2a568              # double 0.40975834686340429
	.quad	0x3fc7ed62995426bc              # double 0.18693191992524827
	.quad	0x3fbd28ff5562f9e8              # double 0.11390682062754076
	.quad	0x3fe19498ca5cdcfa              # double 0.54938926242803565
	.quad	0x3fea4d5a16b6cb19              # double 0.82194237171492823
	.quad	0x3fd8e27a3ec86976              # double 0.38882309085024447
	.quad	0x3fb4419339aee110              # double 0.079125596602242831
	.quad	0x3fef3d4107c71a86              # double 0.97622729796496865
	.quad	0x3fe10924f2968533              # double 0.53236625080550082
	.quad	0x3fe14f00062f7bfa              # double 0.54089356620886453
	.quad	0x3feb6bc091204fe0              # double 0.85690334649052246
	.quad	0x3fcece2d78b23758              # double 0.24066704171530762
	.quad	0x3fc4b0078a00fa44              # double 0.16162199247806275
	.quad	0x3fd630276fc898f2              # double 0.34668908993115999
	.quad	0x3fa49c926259c7e0              # double 0.040257048135472706
	.quad	0x3fec1bab6d09ce68              # double 0.87837764069122404
	.quad	0x3feb3e9690801f9b              # double 0.85139015410185281
	.quad	0x3fea95c007770ac3              # double 0.83078004320153587
	.quad	0x3fe398e89b289109              # double 0.61241560272586171
	.quad	0x3fe3323ffe01fdb8              # double 0.59988402949232178
	.quad	0x3fddd489221a3b18              # double 0.46609714823073167
	.quad	0x3fc48a59efc9cfe4              # double 0.16047214706816171
	.quad	0x3fb78d0031bf94e8              # double 0.091995250840756548
	.quad	0x3fb898371f1b4c88              # double 0.09607262143554085
	.quad	0x3fd4429d5972160a              # double 0.31656583533217086
	.quad	0x3f9b892171833340              # double 0.026890299371007176
	.quad	0x3fe566483c3f002a              # double 0.66873561636748957
	.quad	0x3fabed6efc2538a0              # double 0.054545849112956235
	.quad	0x3fe769a2c20f2d81              # double 0.73164499189572052
	.quad	0x3fe2ba84b7d67b54              # double 0.58526836305450525
	.quad	0x3fefb6a3a73f0eb9              # double 0.9910448328523308
	.quad	0x3fc6ec89c4277644              # double 0.17909357145156168
	.quad	0x3fed26e3aacfbd05              # double 0.91099723207108296
	.quad	0x3fea7813532ccc9a              # double 0.82715765233151051
	.quad	0x3fe9e6f77b2bd35f              # double 0.80944418007730323
	.quad	0x3fcbc18c486bd7b0              # double 0.21684411560243921
	.quad	0x3fd363cfe696bcdc              # double 0.30296704786719686
	.quad	0x3fdd5a14ec206dd6              # double 0.45862315234418582
	.quad	0x3fd7d9a4807638ca              # double 0.37265884919260073
	.quad	0x3fbacee2c612c3d8              # double 0.10471932731412836
	.quad	0x3fdcf67da05ea772              # double 0.45254460011584918
	.quad	0x3fde02700275bc38              # double 0.46889877548432279
	.quad	0x3fbe97e2f31d48a8              # double 0.11950510440263662
	.quad	0x3fb449bd90355c28              # double 0.079250190455568359
	.quad	0x3fe97d13b7f42524              # double 0.79651819160895742
	.quad	0x3fdc8431372b3f70              # double 0.44556837451545217
	.quad	0x3f8e1836157c65c0              # double 0.014694616823862527
	.quad	0x3feb61cfc8a36b5f              # double 0.85568989932231065
	.quad	0x3fd28ec14cdf5266              # double 0.2899630785662225
	.quad	0x3fd62856108e9b98              # double 0.34621192566776804
	.quad	0x3fe8e30cb735a6da              # double 0.77771602423782871
	.quad	0x3fd2ee0ca8e38726              # double 0.29577938550038352
	.quad	0x3feedd19001526a1              # double 0.96448946014534808
	.quad	0x3f92311a2a544140              # double 0.017765435060085766
	.quad	0x3fde860cef723784              # double 0.47693179496206306
	.quad	0x3fc6167569bec0cc              # double 0.1725603834470405
	.quad	0x3fd8da38636e0c88              # double 0.38831910810422032
	.quad	0x3fb20678451dec90              # double 0.070411221384278244
	.quad	0x3fc28c0829397878              # double 0.14489843380846756
	.quad	0x3fcf5e5c323320bc              # double 0.24506714297445409
	.quad	0x3fe4ca030a8164c7              # double 0.6496596532043889
	.quad	0x3fe00ac6a3a65eb2              # double 0.50131542170398391
	.quad	0x3fd94fdc47dce246              # double 0.39549929635862602
	.quad	0x3fb20ccefb123528              # double 0.070507942482625041
	.quad	0x3fe6860d7b2154f2              # double 0.70386385010593089
	.quad	0x3fef5d375664b221              # double 0.98012892602634249
	.quad	0x3fdb1ac5caf22594              # double 0.42350907153066797
	.quad	0x3fcc33f6e02c3d48              # double 0.22033582635820381
	.quad	0x3f98c8ce5b2637c0              # double 0.024203514397917791
	.quad	0x3fcd8b0a71d1d8b4              # double 0.23080568845370453
	.quad	0x3fedf37d36a4be9a              # double 0.93597279236378772
	.quad	0x3fd700ab2332c852              # double 0.35941580235806214
	.quad	0x3fc6e75ec0f2bb90              # double 0.17893585606858808
	.quad	0x3fef9271172c3eb9              # double 0.9866261913866402
	.quad	0x3fb8543e1e43ed00              # double 0.095035440815923521
	.quad	0x3fbc03908adce448              # double 0.10942939176756383
	.quad	0x3fc79c35b0f36170              # double 0.18445464267893952
	.quad	0x3fdd1bccd992b072              # double 0.45482178923953775
	.quad	0x3fccedb5a4bb61d8              # double 0.22600431960633105
	.quad	0x3fd563b137cfb95a              # double 0.3342097325356882
	.quad	0x3fbef2606c1bb730              # double 0.12088587416994012
	.quad	0x3fe935fb92550bd0              # double 0.7878396852541929
	.quad	0x3fe89e75b595baa7              # double 0.76934323755070444
	.quad	0x3feb1068c027b7c4              # double 0.84575307398130705
	.quad	0x3fe26d909d64410e              # double 0.57587462177801441
	.quad	0x3fbb5d9e79b4cb58              # double 0.10689726325362636
	.quad	0x3fe778eb9bd55fdc              # double 0.73351078449467932
	.quad	0x3fe0cc3ab1171e63              # double 0.52493033016157786
	.quad	0x3fa7fd75e1ebe3a0              # double 0.046855624988842992
	.quad	0x3febea66842e2149              # double 0.87236333671993649
	.quad	0x3fcd91681490baec              # double 0.23099995617072666
	.quad	0x3fd1bf030eef88b2              # double 0.27728344400942284
	.quad	0x3fe8133a76912c81              # double 0.75234721334108212
	.quad	0x3fe2bcb142398517              # double 0.58553374228009403
	.quad	0x3fe42a7c0d19975a              # double 0.63018610533320474
	.quad	0x3fe667e3af0d5325              # double 0.70018181028226378
	.quad	0x3fd6588ae156e644              # double 0.34915420537763375
	.quad	0x3fb3c21cd5d4a068              # double 0.077180673794488563
	.quad	0x3fe52b73e9abdde3              # double 0.66155429495750828
	.quad	0x3f94dc3d30486320              # double 0.020371395179696994
	.quad	0x3fd81694ccffcdc4              # double 0.37637825030762095
	.quad	0x3fe31957083c3bf8              # double 0.59684325798468674
	.quad	0x3fbe2e8b40fd1ea8              # double 0.11789770447387105
	.quad	0x3fe0f5ce6c00080e              # double 0.53000565618299489
	.quad	0x3fd2266472b009ae              # double 0.28359328460660549
	.quad	0x3fc8dd0a3f7fe4a0              # double 0.19424560642781774
	.quad	0x3fe6eb4b82ddd7bb              # double 0.7162225299823527
	.quad	0x3fe233928697a174              # double 0.56879545486030603
	.quad	0x3fd594f9b66dc0fe              # double 0.33721773925118714
	.quad	0x3fa5cf5084b589e0              # double 0.042597309303136432
	.quad	0x3fdfc73133998382              # double 0.49653272666005688
	.quad	0x3fe65dd736e7051a              # double 0.69895516131524293
	.quad	0x3fe0291b7827006c              # double 0.50501798121696373
	.quad	0x3fea4b910b9994a4              # double 0.82172443643198223
	.quad	0x3fd2295d9594d58a              # double 0.2837747536426255
	.quad	0x3fe1325984411040              # double 0.53739620047463887
	.quad	0x3fea82adf5c9ff89              # double 0.82845209127116093
	.quad	0x3fc5b3b855d7f8a4              # double 0.16954712096771118
	.quad	0x3fe85a1c26f85231              # double 0.76099975215271887
	.quad	0x3fd64171c71be4b6              # double 0.34774441189035643
	.quad	0x3fe4e01456ad855d              # double 0.65235344819317798
	.quad	0x3feb869392f0372c              # double 0.86017779063124555
	.quad	0x3fea447a796b9e54              # double 0.82085918154639125
	.quad	0x3fe47a623ea1e211              # double 0.63993942482835753
	.quad	0x3fe47c2852fb11a4              # double 0.6401559467999971
	.quad	0x3fa9a9e52a1a3b10              # double 0.050124322308979896
	.quad	0x3fbeafdc22c0b030              # double 0.1198709091992789
	.quad	0x3fc43c5ae6ce97f8              # double 0.15809189100144727
	.quad	0x3fdac1235c536b22              # double 0.41803821579167011
	.quad	0x3fe487af1b7a37eb              # double 0.64156298987086069
	.quad	0x3fec6f18a6ba8e6b              # double 0.88856155933576753
	.quad	0x3fe8bb238d1629bb              # double 0.77284410053226027
	.quad	0x3fe13e679f7fdf8d              # double 0.53886777069327396
	.quad	0x3fdce9432fac36d6              # double 0.45173720984972243
	.quad	0x3fb1b6d5c80afa48              # double 0.069196091974825014
	.quad	0x3fda771b00264810              # double 0.41351962103465301
	.quad	0x3fd9dda63268807e              # double 0.40415339396168537
	.quad	0x3fbe428f7419ade8              # double 0.11820313057403775
	.quad	0x3fdff1d518098394              # double 0.49913527819995207
	.quad	0x3feb7c57e05a03d1              # double 0.85892862147022175
	.quad	0x3fb9f9a209a700e0              # double 0.10146534667638063
	.quad	0x3fd37d4d05fb916a              # double 0.30452275833365283
	.quad	0x3fd28263618f58be              # double 0.28920826461161286
	.quad	0x3fe3dc103235aeb7              # double 0.62061319166738016
	.quad	0x3fe8b1b4617c0f5e              # double 0.77169245758021154
	.quad	0x3fe2c2ef7dcb9194              # double 0.58629583901761118
	.quad	0x3f99be3f019d57c0              # double 0.025139793847607228
	.quad	0x3fe81b100f7805f6              # double 0.75330355664499282
	.quad	0x3fcce32db3fa380c              # double 0.2256829384609208
	.quad	0x3fcdcea0d2b14cbc              # double 0.23286829269145481
	.quad	0x3fa1a5fb479ce200              # double 0.034469463817405455
	.quad	0x3fb6a86a26f8abe8              # double 0.08850730372857607
	.quad	0x3fdd0256d74f43f6              # double 0.45326777483302239
	.quad	0x3fa3d09a16d6a220              # double 0.03870088127888871
	.quad	0x3fe02d761536645d              # double 0.50554947035847031
	.quad	0x3feba9fe87f51509              # double 0.86450125269098621
	.quad	0x3fcb19f59d4852e0              # double 0.21172971896944315
	.quad	0x3fc17e4028e0a730              # double 0.13666536327337431
	.quad	0x3fd9fe25d09bab2a              # double 0.40613694545634138
	.quad	0x3fe78264218cbe09              # double 0.73466688683214543
	.quad	0x3fcdbfa95e9984dc              # double 0.23241154784321949
	.quad	0x3fe7f1cbe91f275c              # double 0.74826617747860835
	.quad	0x3fdbbd9eb341c41e              # double 0.43344848161274452
	.quad	0x3fc318119485d214              # double 0.14917201759421117
	.quad	0x3fc2269f82c5db4c              # double 0.14180368314165503
	.quad	0x3fe9fa0a1a7b51d3              # double 0.81177239582262428
	.quad	0x3fe8d0ac5fbd931b              # double 0.77547281932183709
	.quad	0x3fcf391e431de7b4              # double 0.24393060948551482
	.quad	0x3fe236ba93a49033              # double 0.56918076359261816
	.quad	0x3fe321a680276ac4              # double 0.59785771398613763
	.quad	0x3fe8b36b84cca011              # double 0.77190185487143215
	.quad	0x3fc652bcd9cd1c44              # double 0.17439995417427856
	.quad	0x3fca134d37fc5848              # double 0.20371403917005382
	.quad	0x3fe81819430c160c              # double 0.75294173331411817
	.quad	0x3fe3eeb38c43c7f6              # double 0.62288834948981164
	.quad	0x3fe50b66e7b1458e              # double 0.65764184238848755
	.quad	0x3fef551378ed6621              # double 0.97913526171322839
	.quad	0x3fdffa989fdff32a              # double 0.49967017758153764
	.quad	0x3fe8bbeab3244d81              # double 0.77293906201013851
	.quad	0x3fe880fdea1b2ff4              # double 0.76574607585780407
	.quad	0x3fd9ebfbf9be4418              # double 0.40502833737360922
	.quad	0x3fe06f47eb862c4f              # double 0.51358409882358014
	.quad	0x3fd9e313ecc9933e              # double 0.40448473094720672
	.quad	0x3f7f9ab4fda1d880              # double 0.0077158994628147015
	.quad	0x3fe6f2a3102df596              # double 0.71711877021850756
	.quad	0x3fe91d6f462e18c1              # double 0.78484309870761859
	.quad	0x3fee13d89c686ede              # double 0.93992262409616578
	.quad	0x3fc79c5631890f84              # double 0.18445851725311624
	.quad	0x3fa9a731bef72f90              # double 0.050103716431833978
	.quad	0x3fb41c42e66e60c0              # double 0.078556233651741358
	.quad	0x3fef3fc9a0ba675b              # double 0.97653657333578836
	.quad	0x3fe68518ace03708              # double 0.70374711766064113
	.quad	0x3fa2d1600e2ae650              # double 0.03675365612930348
	.quad	0x3fe2c5a759408f3a              # double 0.58662764961307023
	.quad	0x3fe6610307e278ad              # double 0.69934226551028689
	.quad	0x3fc208bf4cea3df8              # double 0.14089194541564587
	.quad	0x3febab01b826a38e              # double 0.86462484328250055
	.quad	0x3fe68e3634b77d5a              # double 0.70485983177415368
	.quad	0x3fccbd46f3421a34              # double 0.22452628019182586
	.quad	0x3fe0fba778040a5e              # double 0.53071950378973631
	.quad	0x3fce7057fd8c7cfc              # double 0.23780345802604319
	.quad	0x3fc7726f680bc05c              # double 0.1831797845875397
	.quad	0x3fef68b988e86323              # double 0.98153378238484767
	.quad	0x3fce847a60a31c40              # double 0.23841790884600478
	.quad	0x3fddceea32339514              # double 0.46575407888879394
	.quad	0x3fedb1c048b8c980              # double 0.92794813350182892
	.quad	0x3fd738e94e5b6d86              # double 0.36284859325470398
	.quad	0x3fe7aa055c24fa75              # double 0.73950450894319764
	.quad	0x3fd7b5a311b3f61c              # double 0.37046124199682295
	.quad	0x3fd28b5af85d30c4              # double 0.28975557569789268
	.quad	0x3fe4ae26371f82a2              # double 0.64625845686176242
	.quad	0x3fe277aeace66e48              # double 0.57710965890459764
	.quad	0x3fe98e5fcf1ffd36              # double 0.79862966970532656
	.quad	0x3fe347cd7be70ff0              # double 0.60251497459148418
	.quad	0x3fda24632ef479a4              # double 0.40847091279456493
	.quad	0x3fe9a89869f61e7e              # double 0.80183048911653976
	.quad	0x3fde38499f808844              # double 0.47218552185416152
	.quad	0x3f9c40e4cb7ff540              # double 0.027591299935001645
	.quad	0x3feb0334e23ec57a              # double 0.84414142788425228
	.quad	0x3fea063a3b70246c              # double 0.81326018914218201
	.quad	0x3fa4e86abf67a260              # double 0.040835700859876978
	.quad	0x3fea2121835a5fc1              # double 0.81654430060279293
	.quad	0x3feb83f9fb8cde3a              # double 0.85986041193877516
	.quad	0x3fd07d5b15621368              # double 0.25765111053652001
	.quad	0x3fc29a2d1e97fec8              # double 0.14533008569559613
	.quad	0x3fe388c9ab045368              # double 0.61044772531259373
	.quad	0x3feb7bf020d4ba66              # double 0.8588791505079143
	.quad	0x3fd4577ecc3e9e86              # double 0.31784028955232946
	.quad	0x3fe7c85d76d78cc6              # double 0.74320862971617241
	.quad	0x3f92d52b08cb0540              # double 0.018391296779332267
	.quad	0x3fc8ed58ec521e74              # double 0.19474326647854279
	.quad	0x3fef942e77e12716              # double 0.98683856405225145
	.quad	0x3fb9a25da60c8df0              # double 0.10013375572139416
	.quad	0x3fbab2cabacec3f8              # double 0.10429064808592148
	.quad	0x3fdcfc67b644a2b6              # double 0.45290558623905086
	.quad	0x3fed1c7433df11b9              # double 0.90972337847829643
	.quad	0x3fe60125812c0967              # double 0.68763995388898713
	.quad	0x3fe0387f43e85034              # double 0.50689662230661847
	.quad	0x3fe727daf260bf9c              # double 0.72361514415205219
	.quad	0x3fe36418c4010981              # double 0.6059688404277922
	.quad	0x3fe189f64e1009a8              # double 0.54809108015642938
	.quad	0x3fd84010b6196218              # double 0.37891023429031767
	.quad	0x3fdd8698e2eb5792              # double 0.46134016189659477
	.quad	0x3fc66a72de3e502c              # double 0.17512355663041157
	.quad	0x3fdd8e5951d80e04              # double 0.46181328766417118
	.quad	0x3fe73422276611f6              # double 0.72511394209919788
	.quad	0x3fe98f541d6da38e              # double 0.79874616382322627
	.quad	0x3fe9b54231cd5ac0              # double 0.8033762905787043
	.quad	0x3fef93da299d00dd              # double 0.98679836394878928
	.quad	0x3fc416cd40a227e8              # double 0.15694585472039013
	.quad	0x3fe57602b7854ba9              # double 0.67065559238323147
	.quad	0x3fef02f22d19ee12              # double 0.96910961922498218
	.quad	0x3fcf36fdbf16a96c              # double 0.24386569815153381
	.quad	0x3fec6df4c0488e4b              # double 0.88842237048488337
	.quad	0x3fdec7e626800bee              # double 0.48095086822303201
	.quad	0x3fe2ed5cb3bdce41              # double 0.59147486787555448
	.quad	0x3fcef656b2daeddc              # double 0.24189265950359029
	.quad	0x3fe2a0e66bf736a5              # double 0.58214112364813231
	.quad	0x3fcbebd4781adb30              # double 0.21813445915696539
	.quad	0x3fc1476e58d230a8              # double 0.13499240242925237
	.quad	0x3fe6f2b11d44e29c              # double 0.71712547031991702
	.quad	0x3fec32c5409f7a4f              # double 0.88119757291480905
	.quad	0x3fe3ac2611d745c3              # double 0.61476424679329289
	.quad	0x3fdb8a7143d2d96c              # double 0.43032485602761628
	.quad	0x3fe5bddcfbc9c54e              # double 0.67942666222931236
	.quad	0x3fd2ff20b1db7bfe              # double 0.29682175988085635
	.quad	0x3fc49f4fcd9decec              # double 0.16111180820357818
	.quad	0x3fbeee179f72ad10              # double 0.12082049982807441
	.quad	0x3fe9f0734c38e243              # double 0.81060185324810907
	.quad	0x3fd703a3c2da0650              # double 0.35959714916689212
	.quad	0x3fe763f0c5cc00f4              # double 0.73094977028088559
	.quad	0x3fcf20dc365ecbfc              # double 0.24319031386184509
	.quad	0x3fbc9837f2c312c0              # double 0.11169767071539649
	.quad	0x3fb05c7ae01ca168              # double 0.063911132540516058
	.quad	0x3fe8321f778accf9              # double 0.75611852024158488
	.quad	0x3fc3cc9feb72b270              # double 0.15468214985357376
	.quad	0x3fdf72700640e382              # double 0.49135971651735855
	.quad	0x3feb854a686ffa16              # double 0.86002083204204172
	.quad	0x3fce96757175c220              # double 0.23896663703955401
	.quad	0x3fe0cb43a2e84a2a              # double 0.52481252496574382
	.quad	0x3fe8135c25b7006f              # double 0.75236327520543778
	.quad	0x3fee37f0d71904d0              # double 0.94432870875621155
	.quad	0x3fd03c12036d4382              # double 0.25366640410089059
	.quad	0x3fd521002f48290a              # double 0.33013920419092868
	.quad	0x3fe291d9e7f0dc09              # double 0.58030410099934315
	.quad	0x3fd1b39283d2fcd8              # double 0.27658522485212478
	.quad	0x3fef429f15750657              # double 0.97688249770016966
	.quad	0x3fd34f2137f6e95a              # double 0.30170469727786087
	.quad	0x3fdde46fbdeed7b2              # double 0.46706765697615105
	.quad	0x3fe422cf0c33462c              # double 0.62924911864155808
	.quad	0x3fc8af91492a7b14              # double 0.19285789558940591
	.quad	0x3fdbe4a788748874              # double 0.43583095861152477
	.quad	0x3fefb0dd687f2fa4              # double 0.99033995065245905
	.quad	0x3fe657ed7ddff7fc              # double 0.69823336205422448
	.quad	0x3feb4c018ff39380              # double 0.85302808871766445
	.quad	0x3fd36aa914fafffa              # double 0.303385038841952
	.quad	0x3fd57972e0b72f36              # double 0.33553764290694532
	.quad	0x3fed9a0ad27e8939              # double 0.92505398857273413
	.quad	0x3febf686e0c0e4d8              # double 0.87384361169020064
	.quad	0x3fce865365cd4b20              # double 0.23847429724499936
	.quad	0x3feda213d2846bc3              # double 0.92603484264997638
	.quad	0x3fe89aef09754318              # double 0.76891280982281085
	.quad	0x3fee7814eef736e2              # double 0.95215841935143097
	.quad	0x3fdd7b66d7482c3e              # double 0.4606568434107351
	.quad	0x3fdc69793662a380              # double 0.44393759070458572
	.quad	0x3fc6099158d60818              # double 0.17216698491762439
	.quad	0x3fee6e0ab104371d              # double 0.95093283246544369
	.quad	0x3fe0c1ce051c3b68              # double 0.52365780828573083
	.quad	0x3fe6eccd8315b86b              # double 0.71640658953198277
	.quad	0x3fe50fb01362e3d3              # double 0.65816501413712059
	.quad	0x3f44bf5c2cec6400              # double 6.331634593578217E-4
	.quad	0x3fe6f85a4bd78a34              # double 0.71781649411088333
	.quad	0x3fbceb4c4e849080              # double 0.1129653636640473
	.quad	0x3fb955b2150b7a70              # double 0.098963861596965463
	.quad	0x3fd606a87d220112              # double 0.34415638179781738
	.quad	0x3fe38ee1f6857dd6              # double 0.61119173191758125
	.quad	0x3fdbea4cfeafa1b6              # double 0.43617558356939001
	.quad	0x3fdd735fc359724c              # double 0.46016687466707107
	.quad	0x3fce7242485ab338              # double 0.23786190541195551
	.quad	0x3fd1656635cd9bd0              # double 0.2718139195844147
	.quad	0x3fe94956f3dd4410              # double 0.79020259504079782
	.quad	0x3fd19abe631d0d56              # double 0.27506980589915508
	.quad	0x3fd3e6014f8cd978              # double 0.31091339844296995
	.quad	0x3fd2c801819afc96              # double 0.29345739037302943
	.quad	0x3fecd2f5c59952f2              # double 0.90075195878543313
	.quad	0x3fdc157b73d555de              # double 0.43881117164468531
	.quad	0x3fe30c0d19db7d90              # double 0.59522109079618879
	.quad	0x3feb878799cec40e              # double 0.86029415169298473
	.quad	0x3fa687961235af40              # double 0.044003190729965613
	.quad	0x3fe9a7ad39fbb46e              # double 0.80171834301803613
	.quad	0x3fd51cc04d6e9cf2              # double 0.32987983285643374
	.quad	0x3fc66acf1d27eed8              # double 0.17513455318100202
	.quad	0x3feb17d1d011b8b6              # double 0.84665766371269657
	.quad	0x3fe36667dee25f39              # double 0.60625070125659086
	.quad	0x3feaf3631fcc3552              # double 0.84221035204397254
	.quad	0x3fd8993b1bbe2348              # double 0.38435247143984386
	.quad	0x3fc642e4ac1b5c1c              # double 0.17391642001777619
	.quad	0x3fe888cda8c387d8              # double 0.76669962846448936
	.quad	0x3fb3998aa7795d68              # double 0.076561609160639699
	.quad	0x3fde162fc010d9de              # double 0.47010415798595584
	.quad	0x3fc1118e4d5caefc              # double 0.1333482625717507
	.quad	0x3fed3771411f7545              # double 0.91301787108719934
	.quad	0x3fd2519f2ce9d7c8              # double 0.28623179803923593
	.quad	0x3febf8e87b4d3abf              # double 0.87413429338797488
	.quad	0x3fe3547f76fba770              # double 0.60406468619224363
	.quad	0x3fb55460e080a950              # double 0.083318762598229456
	.quad	0x3feeefeaa45df3b9              # double 0.96678669073991507
	.quad	0x3fe571af18e80b5b              # double 0.67012743820701404
	.quad	0x3fe3839abfd7a9b3              # double 0.60981500119424081
	.quad	0x3fe17b991422b313              # double 0.54633764202808022
	.quad	0x3fe7c08081203208              # double 0.74224877567172687
	.quad	0x3fe84e1de10b9001              # double 0.75953573183187484
	.quad	0x3fd075a99c5e2fe6              # double 0.25718155165009049
	.quad	0x3fdd352eba6bd6a0              # double 0.45637100415420129
	.quad	0x3fb071faebb50cb8              # double 0.064239199205121333
	.quad	0x3fdd4053ad3e4aaa              # double 0.45705120008748656
	.quad	0x3fcbdfa13b37c6e0              # double 0.21776214019296614
	.quad	0x3fdf3eeefed63088              # double 0.48821616064447726
	.quad	0x3fed33ddadb83f46              # double 0.91258129052764825
	.quad	0x3fd32f26fed4733a              # double 0.29975294957857879
	.quad	0x3fd741f5cdcdacb2              # double 0.36340088937749748
	.quad	0x3fc358cd50347d90              # double 0.15114752212774052
	.quad	0x3fed5c94dadccd37              # double 0.91755144831259983
	.quad	0x3fd3352496927748              # double 0.30011858658132384
	.quad	0x3fd986eaa2c96eb0              # double 0.39885965249207356
	.quad	0x3fe32d768bb1fad0              # double 0.59929969104981673
	.quad	0x3fe41775f05492fa              # double 0.62786385478520335
	.quad	0x3fd134a7d346a5aa              # double 0.26883884079378595
	.quad	0x3fe8e8aa20632f20              # double 0.77840143514319848
	.quad	0x3fd82cc263978112              # double 0.37773189283144959
	.quad	0x3fe8718dcd0e6bf3              # double 0.76386156129899374
	.quad	0x3feee343da062fa4              # double 0.96524231512875191
	.quad	0x3fe824b070bbcd07              # double 0.75447866457253177
	.quad	0x3fc292ff0d585110              # double 0.14511097098932924
	.quad	0x3fe1e42bc2c3ed8a              # double 0.55910289802652469
	.quad	0x3fe384de5839249d              # double 0.60996930342766442
	.quad	0x3fb5dce2cf5c7ac8              # double 0.085401702523522194
	.quad	0x3fe867b182db4e7c              # double 0.76265788610403673
	.quad	0x3fd6b82c9ede2eb8              # double 0.35499110712474247
	.quad	0x3fe06c0de38aaac5              # double 0.51319021646244123
	.quad	0x3fefe667f7f1e3fd              # double 0.99687574793563238
	.quad	0x3fee0d10b075f69b              # double 0.9390948721408735
	.quad	0x3fef9e54f4d55964              # double 0.98807761973402508
	.quad	0x3f71128f27d43e80              # double 0.004168090058797369
	.quad	0x3fe4805d17082fb7              # double 0.64066938875611512
	.quad	0x3fdaceaae46fa850              # double 0.41886398609370179
	.quad	0x3feaa49ab9594c53              # double 0.83259330941144538
	.quad	0x3fd2dafdf507d972              # double 0.29461621216559941
	.quad	0x3fd092bf305305f8              # double 0.25895671576662904
	.quad	0x3fd9fc48f9a337c0              # double 0.40602325800579919
	.quad	0x3fd047495489e308              # double 0.25435097938275009
	.quad	0x3fed2b55c9fcf920              # double 0.91153993082824413
	.quad	0x3fe6bc297c883be9              # double 0.71046900103271782
	.quad	0x3fd935545d2b49b2              # double 0.39387997721237433
	.quad	0x3fe2b4eaa41da83c              # double 0.58458454183460828
	.quad	0x3fe3e22af751f855              # double 0.62135837845540698
	.quad	0x3fe2f2588e74b3cb              # double 0.59208324263965417
	.quad	0x3fecefaee2e09e97              # double 0.90425819694515297
	.quad	0x3fa2459c6d975750              # double 0.035687340143040758
	.quad	0x3fe7aec5d8980248              # double 0.74008457473252864
	.quad	0x3fde594ea0594b44              # double 0.47420087489188156
	.quad	0x3fd039f617165662              # double 0.25353767637839131
	.quad	0x3fef817c9d7637f1              # double 0.98455649141555856
	.quad	0x3fe477542712316d              # double 0.63956649428432188
	.quad	0x3fe7c92defa21313              # double 0.74330803683605706
	.quad	0x3fdd49dbc57ca096              # double 0.45763296399901188
	.quad	0x3fec6a559cad3da2              # double 0.88798027611658292
	.quad	0x3fed69bd94a2e23f              # double 0.91915778189201791
	.quad	0x3fb7286bb5e9cdb8              # double 0.090460521614480593
	.quad	0x3fc17cc06f8f15b0              # double 0.13661961981976622
	.quad	0x3fd636202d7ecf08              # double 0.34705357020287453
	.quad	0x3fe900ff2e203929              # double 0.78137167939147389
	.quad	0x3fe0d4d0b050143c              # double 0.52597841678710422
	.quad	0x3f75a5280ca64d00              # double 0.0052844585828950574
	.quad	0x3fe7755415f1fe2b              # double 0.73307232176006687
	.quad	0x3fdbee20a0923fb8              # double 0.43640914612569359
	.quad	0x3fd46241c6810372              # double 0.3184971273913596
	.quad	0x3fd7350550df05b0              # double 0.36261113069130158
	.quad	0x3fee917f498ae5f6              # double 0.95526089061530572
	.quad	0x3fecc36d86f7f72f              # double 0.89885593758638105
	.quad	0x3fccd7715797473c              # double 0.22532479073429978
	.quad	0x3fe67f137c1832e4              # double 0.70301222073757375
	.quad	0x3fe9e25f5006ea00              # double 0.80888333921694766
	.quad	0x3fedfc14a4ff6d21              # double 0.93702156282543936
	.quad	0x3fccb2d2c666d590              # double 0.22420725524504492
	.quad	0x3fd0eb031c893988              # double 0.26434400355074006
	.quad	0x3fd5ecaee5bdc95e              # double 0.34257099567107285
	.quad	0x3fe6c41ffa2ac784              # double 0.7114410291744524
	.quad	0x3fa5cbdd83d6e2d0              # double 0.042570993751217423
	.quad	0x3fd0b04cb9d4615e              # double 0.2607604803793232
	.quad	0x3fde3c8602d5a9e6              # double 0.47244406010454865
	.quad	0x3f92f825e0ab4300              # double 0.018524734342295623
	.quad	0x3fe504b84a424275              # double 0.65682615760495244
	.quad	0x3fe8c04c5a5ea80b              # double 0.77347390795080295
	.quad	0x3fde7ee3f54000fc              # double 0.47649477911183147
	.quad	0x3fc1fb7a2de7e884              # double 0.1404869770192968
	.quad	0x3fef5ba452370759              # double 0.97993675286873405
	.quad	0x3feab021132d18b2              # double 0.83400014634459851
	.quad	0x3fb1b89fe8e4dd40              # double 0.069223398550879445
	.quad	0x3fdb9f776ef573f2              # double 0.43160806499309878
	.quad	0x3fe57998a77270c1              # double 0.67109329895495062
	.quad	0x3fd8a764686f2f60              # double 0.3852168102136968
	.quad	0x3fe8341d58bd55cf              # double 0.75636164981795584
	.quad	0x3fddf293a14f332e              # double 0.46793070557469008
	.quad	0x3fd42a1ad2ca50f6              # double 0.31506987175931955
	.quad	0x3fe06db85ddac604              # double 0.51339357691739496
	.quad	0x3fda683a815688ae              # double 0.41261160498300853
	.quad	0x3fc9907a72a57f2c              # double 0.19972162816974881
	.quad	0x3fe72792288e1e82              # double 0.72358043595245669
	.quad	0x3fd32bee472ec8dc              # double 0.29955632163468038
	.quad	0x3feffae2f805e114              # double 0.9993758053015278
	.quad	0x3fe3173e94d36a70              # double 0.59658745830104287
	.quad	0x3fed5a062141c6bd              # double 0.91723925109382487
	.quad	0x3feb02e421674d64              # double 0.84410292171598344
	.quad	0x3fdaa4426fc79fa8              # double 0.41627560535425312
	.quad	0x3fdf9a1a013d2590              # double 0.49378061409932972
	.quad	0x3fede862a6c614fa              # double 0.93461735318183448
	.quad	0x3fe5f02728f7c3c7              # double 0.68556554795770175
	.quad	0x3fece02302620f6b              # double 0.90236044373930946
	.quad	0x3fe8d1206cd77f7b              # double 0.77552815683519272
	.quad	0x3fda4496cc6a0d34              # double 0.41043634378748384
	.quad	0x3fd72c79becb0878              # double 0.36208957321299051
	.quad	0x3febe31c0945b571              # double 0.87147332964893398
	.quad	0x3fde2a6b031e9386              # double 0.47133899025566739
	.quad	0x3fe5329794406140              # double 0.66242579417579606
	.quad	0x3fe9a4b10236dd86              # double 0.80135393555149004
	.quad	0x3fed208c6dce688d              # double 0.91022321173228848
	.quad	0x3fd9d2764005c822              # double 0.40347057583051271
	.quad	0x3fe25f365fa4f4d4              # double 0.57412260704554763
	.quad	0x3fe4870e25ef3fa9              # double 0.64148623856634857
	.quad	0x3f938a5c10b207e0              # double 0.019082487601288167
	.quad	0x3fd05008e5d59274              # double 0.25488493389847311
	.quad	0x3fe1e72c58891511              # double 0.55946938793263901
	.quad	0x3fe4245449d1f996              # double 0.62943472307215376
	.quad	0x3fe6bf75235155bf              # double 0.71087128541937961
	.quad	0x3fea8f0184746343              # double 0.82995677824065017
	.quad	0x3feff3852ee6d81b              # double 0.99847659264083021
	.quad	0x3fe15ceaeb023e38              # double 0.54259248638294988
	.quad	0x3fe8bd18420120ef              # double 0.77308285609708871
	.quad	0x3fecd2e32a42eecc              # double 0.90074308637800859
	.quad	0x3fe77a505304549a              # double 0.73368087972871199
	.quad	0x3fe3583514bf2571              # double 0.6045174985130598
	.quad	0x3fe22cb8c40c7d73              # double 0.5679591969564356
	.quad	0x3feb173101c4d941              # double 0.84658098550315952
	.quad	0x3fe86bc9ab961a6f              # double 0.76315768731076428
	.quad	0x3fe2a00d938f507c              # double 0.58203772373464302
	.quad	0x3fe3539aaced233e              # double 0.60395559096023255
	.quad	0x3fd3d61b8b76b4ee              # double 0.30994309062482628
	.quad	0x3fea992d9c6ca6b4              # double 0.83119850684780383
	.quad	0x3fe0a92db57d662a              # double 0.52065167853578953
	.quad	0x3fe9ffcac4014e58              # double 0.8124746158814089
	.quad	0x3fd91a124fa63b12              # double 0.39221627977615114
	.quad	0x3fe67d2d507ff7de              # double 0.70278039667732251
	.quad	0x3fb11f88d5adfc00              # double 0.066887428443791919
	.quad	0x3fb151a4b6ee1fa8              # double 0.067652029667555014
	.quad	0x3fed3b6dd7feca57              # double 0.9135045260102953
	.quad	0x3fea5c344074e5f9              # double 0.82375538434206341
	.quad	0x3fe7e97cb88d05c4              # double 0.74725185437289854
	.quad	0x3fd97ad64027355a              # double 0.39812237038571185
	.quad	0x3fe2fa49cb1812d4              # double 0.59305276552967223
	.quad	0x3fe5bca9585b69b8              # double 0.67927996880762631
	.quad	0x3fe63596728acdc4              # double 0.69404146548770784
	.quad	0x3fd77131274e7268              # double 0.36628369177359454
	.quad	0x3fef81c11c4a7573              # double 0.98458915257985635
	.quad	0x3fbe462c698a6fb8              # double 0.11825826241186987
	.quad	0x3fdbd89d301634a8              # double 0.43509607025118635
	.quad	0x3fc860d639fe1900              # double 0.19045522529285819
	.quad	0x3feb3aff573b8eb9              # double 0.8509518340838077
	.quad	0x3fc0551520727b38              # double 0.12759651264510707
	.quad	0x3fe7a5feb1beff4e              # double 0.73901304927856315
	.quad	0x3fef39bea3394827              # double 0.97579891090049819
	.quad	0x3fde7a5ee56c2b96              # double 0.47621891407532624
	.quad	0x3fe2ede00308b08f              # double 0.59153748123709871
	.quad	0x3fb437dd8378df48              # double 0.078977436635679799
	.quad	0x3fe96305d0369c89              # double 0.79333773295083276
	.quad	0x3fecf9c440acd92e              # double 0.90548908836243469
	.quad	0x3fefd06309118460              # double 0.99418784876992205
	.quad	0x3fef2760b8d90912              # double 0.97355686286053555
	.quad	0x3fbf021866079cb0              # double 0.12112572184524839
	.quad	0x3fadf831875e1dd0              # double 0.058534190916414652
	.quad	0x3fd3d079e5d2a1c8              # double 0.30959937518721548
	.quad	0x3fc2d8dca8cfbd8c              # double 0.14724310152767506
	.quad	0x3fc84e2f5cf5f538              # double 0.18988601721859211
	.quad	0x3fb00d6e42ebf538              # double 0.062704936350162721
	.quad	0x3fe9b62b550c61f5              # double 0.80348745928773602
	.quad	0x3fe700d2d39e8d4d              # double 0.71885052997496646
	.quad	0x3fe3b8fc3bba54d2              # double 0.61633121171566985
	.quad	0x3fc20cff8d39c320              # double 0.1410216750696458
	.quad	0x3feb42e73e1b31a0              # double 0.85191690569040545
	.quad	0x3fdfe0d2b531523a              # double 0.4980971116504268
	.quad	0x3fe45fd7055256d1              # double 0.63669920958883541
	.quad	0x3fd11c78a6ae2cea              # double 0.26736274983768615
	.quad	0x3fe1f7610add3c92              # double 0.56144764062800534
	.quad	0x3fe0953047ba87ac              # double 0.51821149835108349
	.quad	0x3feed8ad60975bf3              # double 0.96394986024358642
	.quad	0x3fe56dcd137979ef              # double 0.66965345195404591
	.quad	0x3fc4c0aea2019b34              # double 0.16213019285643215
	.quad	0x3fe94646382a67ee              # double 0.78982840509274665
	.quad	0x3fd66e3f167bc402              # double 0.35047890849733687
	.quad	0x3fcc33c140f32e6c              # double 0.22032943412192496
	.quad	0x3fc1d7cebe59ec24              # double 0.13939842504973499
	.quad	0x3fe4684580f30bd5              # double 0.6377284544508891
	.quad	0x3fefdf6b8509d104              # double 0.99602294906665678
	.quad	0x3feff674c6801e1f              # double 0.99883497972126977
	.quad	0x3f9cb62972e3c3a0              # double 0.028038642537413616
	.quad	0x3fef35f0b1f58fa9              # double 0.97533449895535284
	.quad	0x3fd3d81c275390ea              # double 0.31006530609580685
	.quad	0x3fec3c75f079f798              # double 0.88238045661977349
	.quad	0x3fef08e85ab38498              # double 0.9698373576649315
	.quad	0x3fb910ecb8f92400              # double 0.097914500388597503
	.quad	0x3fabc145c921ea30              # double 0.054208927919678351
	.quad	0x3fe1f4c78bb88c53              # double 0.56113030709492262
	.quad	0x3fc9f45ba5c9fdcc              # double 0.20276971430938173
	.quad	0x3feb60a376310b4a              # double 0.8555466946057575
	.quad	0x3fbfc01bd5b5bab8              # double 0.12402509658361793
	.quad	0x3fc00e39b79d24c0              # double 0.12543412652511243
	.quad	0x3fd45e53c8786dd2              # double 0.31825728013219845
	.quad	0x3fedc1e119680174              # double 0.92991690599596532
	.quad	0x3fd5a787dbaac7b6              # double 0.33835026218286701
	.quad	0x3fe91a1c051426ab              # double 0.7844371890252736
	.quad	0x3fd514c7504f8636              # double 0.32939322321735476
	.quad	0x3fe921c49a2fdbc8              # double 0.78537206759107736
	.quad	0x3feab8da9e485c81              # double 0.83506518282491993
	.quad	0x3fe1b36bd8dba39b              # double 0.55315201144286463
	.quad	0x3fc8070afdd4fcb4              # double 0.18771493333949751
	.quad	0x3fca912769bf2fb4              # double 0.20755474723261857
	.quad	0x3fea8acaf0783d17              # double 0.82944247214064404
	.quad	0x3fdfd98e4360dbee              # double 0.49765354709546628
	.quad	0x3fda7d6cf5b15684              # double 0.41390537255697546
	.quad	0x3fca58d61f49b500              # double 0.20583607223253608
	.quad	0x3fbe32857256b5b0              # double 0.11795839349243553
	.quad	0x3fdd543f80bf359c              # double 0.45826709340038874
	.quad	0x3fb47ef1e8a898d0              # double 0.080062026311313205
	.quad	0x3feebb7549c1455c              # double 0.96038307576433679
	.quad	0x3fc8acc3c6ceb210              # double 0.19277236182587432
	.quad	0x3fe33b9cd983f942              # double 0.60102694018841185
	.quad	0x3fd003ebc4513f82              # double 0.25023931666964228
	.quad	0x3fd5ab6975c84a90              # double 0.33858715536295225
	.quad	0x3fec4da315ac15d1              # double 0.88447717888692001
	.quad	0x3fd4a9873da8de20              # double 0.32284718533944279
	.quad	0x3febfdc32dd9ed10              # double 0.87472685771300185
	.quad	0x3fddd2d9c4f522e8              # double 0.46599430307519052
	.quad	0x3fbf53bcab493d98              # double 0.12237147504605728
	.quad	0x3fefbce9849c119f              # double 0.99181056881257123
	.quad	0x3fd48842c0c2c8be              # double 0.32081669639877564
	.quad	0x3fe8b8519e0aedd3              # double 0.77249985568726698
	.quad	0x3fee6f43f714b363              # double 0.9510822130010691
	.quad	0x3fe95a40cb6eabc0              # double 0.79226722462532706
	.quad	0x3fe568e9a641ff3c              # double 0.66905672523714754
	.quad	0x3fe2da865dde7317              # double 0.58917539914873174
	.quad	0x3fe2448d79e6aa14              # double 0.57086824234767386
	.quad	0x3fdbfb03d776d0ae              # double 0.43719574014108786
	.quad	0x3fd315f745988886              # double 0.29821569248645863
	.quad	0x3fed85b75a84f950              # double 0.9225727813680269
	.quad	0x3fa59491517bf450              # double 0.042149106213380194
	.quad	0x3fde97683fda3be2              # double 0.47799116359322913
	.quad	0x3fec6baf73cfa84d              # double 0.88814518565528433
	.quad	0x3fed30ba11b4b431              # double 0.91219809969118704
	.quad	0x3fe6f71246164d98              # double 0.71766008080378452
	.quad	0x3fd4a2e004798a20              # double 0.32244110524166736
	.quad	0x3fe0c3f8883d297c              # double 0.52392222031748714
	.quad	0x3fe713ada9c52cde              # double 0.72115214498753821
	.quad	0x3fe28f1c8e3925f1              # double 0.57996967103934882
	.quad	0x3f96361b8f217ae0              # double 0.021690779315003961
	.quad	0x3fe3c48bd1e89130              # double 0.61774245259997507
	.quad	0x3fec3fcb797bed53              # double 0.88278745391236624
	.quad	0x3fe09fbece6d9ef3              # double 0.51950016325005632
	.quad	0x3fee62436197d12c              # double 0.9494950204957937
	.quad	0x3fd61b92ff0c4098              # double 0.34543299586312903
	.quad	0x3fd6723a6318dcb2              # double 0.35072192838147054
	.quad	0x3fca7a9cea119220              # double 0.20686685017712225
	.quad	0x3fe6426df1998969              # double 0.69560906588985205
	.quad	0x3fd4e93ddd0f2256              # double 0.32673594081692181
	.quad	0x3fefa0cb62d50913              # double 0.98837823203237673
	.quad	0x3fbeab22fb8de8d0              # double 0.11979883805716729
	.quad	0x3fb3ed170a725ce8              # double 0.077836456346961236
	.quad	0x3fc4f29aeae72150              # double 0.1636537215220053
	.quad	0x3fb33939c8d4abe8              # double 0.075091945200867039
	.quad	0x3febfc3ed3c97b08              # double 0.87454167713789932
	.quad	0x3fe138d4e6465f45              # double 0.53818745589794814
	.quad	0x3fe256b8ed0ba821              # double 0.57308622644382379
	.quad	0x3fedf5fbe3bf5239              # double 0.93627733690170267
	.quad	0x3fe98146527c772c              # double 0.79703060255608226
	.quad	0x3fefe78dec7c88c4              # double 0.99701591671716771
	.quad	0x3fed7e1b8d98ea5e              # double 0.9216439977238442
	.quad	0x3fe0a778a9cdb73e              # double 0.52044327893029396
	.quad	0x3fe2389246569987              # double 0.56940568674035397
	.quad	0x3fca6b8584c184f8              # double 0.20640629751418493
	.quad	0x3fe715536a8ab938              # double 0.72135325249636306
	.quad	0x3fc03e9a287f30b8              # double 0.12691046693215013
	.quad	0x3fd6c761f94d54e4              # double 0.35591935487657467
	.quad	0x3fe938061c3278fd              # double 0.78808885104424997
	.quad	0x3fc57b93059f58d0              # double 0.16783368849309577
	.quad	0x3fe3684fea39a8e5              # double 0.60648341891399282
	.quad	0x3fedc39f15971d1f              # double 0.9301295682606997
	.quad	0x3fe81fe0bf36546b              # double 0.75389134737146202
	.quad	0x3fdfa0ae26d976aa              # double 0.49418214601414923
	.quad	0x3fee2c8dc963cd21              # double 0.94293870290713155
	.quad	0x3f972671d7b77100              # double 0.022607592383665498
	.quad	0x3fc934486e5bc4bc              # double 0.19690804852101518
	.quad	0x3fc8a888e7f27948              # double 0.19264327359719347
	.quad	0x3fe0668f1d61f52a              # double 0.51251941431806824
	.quad	0x3fedb3b8046773f2              # double 0.92818833217790897
	.quad	0x3fe534ec01aed428              # double 0.66271019295402755
	.quad	0x3fe328321035e952              # double 0.59865668455248966
	.quad	0x3fb83a4221749be0              # double 0.094638951461646581
	.quad	0x3feb9057709a7bb7              # double 0.86136981957303405
	.quad	0x3fde2b0c5833e2fc              # double 0.47137745488684835
	.quad	0x3fb2d6b920ba4f00              # double 0.073588915338685723
	.quad	0x3fc94fa2691f0710              # double 0.19774274952765625
	.quad	0x3fe867933f319800              # double 0.76264345495724228
	.quad	0x3fe270b826dbaef4              # double 0.57625968541603223
	.quad	0x3fe6a1de5fd75215              # double 0.70725935667957407
	.quad	0x3fcfdeb58d5bf8ec              # double 0.24898404505069693
	.quad	0x3fe1656ed209b2ce              # double 0.54363194487594924
	.quad	0x3fec70d8d2f22ccd              # double 0.88877526474370827
	.quad	0x3fec019f89c6fcad              # double 0.87519814405086083
	.quad	0x3fd19b9e86973f34              # double 0.27512324470170602
	.quad	0x3feacd56e206db3c              # double 0.83756584306579595
	.quad	0x3fdf232cb001d036              # double 0.48652188480560044
	.quad	0x3fe35517976ed0d4              # double 0.6041372258828468
	.quad	0x3fe5fe283e82e352              # double 0.6872750492976627
	.quad	0x3fab1c8fcdfe0e00              # double 0.052952283759648111
	.quad	0x3fc6c3976b7f2f68              # double 0.17784397839420341
	.quad	0x3fd955d7e4be88e4              # double 0.39586446131046515
	.quad	0x3fd85ec854b20448              # double 0.38078506728203765
	.quad	0x3fe74e5baed0fc07              # double 0.72831520217721468
	.quad	0x3fe89a8ec49ef34c              # double 0.7688669052364303
	.quad	0x3fed875bbf66c2bb              # double 0.92277324088180224
	.quad	0x3fe8d0fc85590987              # double 0.77551103634350305
	.quad	0x3fb72a890a89cae0              # double 0.090492787430587196
	.quad	0x3fbcbf3c8bac4200              # double 0.11229303750975106
	.quad	0x3fba32e157b42eb8              # double 0.10233887091834049
	.quad	0x3fe037fa491e36ee              # double 0.5068332126699866
	.quad	0x3fe93f09fbbb4b87              # double 0.78894519010860698
	.quad	0x3fe55104a9d6b243              # double 0.66613991901028446
	.quad	0x3fc05a78e97d3b48              # double 0.12776099587287093
	.quad	0x3fe6c61998b065a7              # double 0.71168212720947543
	.quad	0x3febc8a3c93f942d              # double 0.86824216181105884
	.quad	0x3fec2f237c704845              # double 0.88075422577299689
	.quad	0x3fc52d2bf465c064              # double 0.16544103082151473
	.quad	0x3fe5f85662387201              # double 0.68656462844552391
	.quad	0x3fdc60d2ef358e60              # double 0.44340966568254281
	.quad	0x3fe97f38c42a9037              # double 0.79677999795649768
	.quad	0x3fe61b9c045afd23              # double 0.69087029314679105
	.quad	0x3fde5a49ef8c283e              # double 0.47426079171475866
	.quad	0x3fdd9067788acd46              # double 0.4619387318773146
	.quad	0x3fa50e2680ada460              # double 0.041123583991812707
	.quad	0x3fe961bf3f464ba8              # double 0.79318201406782851
	.quad	0x3fe9190fce429023              # double 0.7843092945590836
	.quad	0x3fead98cd7b8bbf5              # double 0.83905641682747378
	.quad	0x3fcac1a032bff43c              # double 0.20903398969667986
	.quad	0x3feb4b80bcf07bbf              # double 0.85296666052078496
	.quad	0x3fe5cef1576b7a96              # double 0.6815115649622665
	.quad	0x3fe31af21abbd3a0              # double 0.59703927251267785
	.quad	0x3fdf7f8f509a4b30              # double 0.49216063376768471
	.quad	0x3f96bdb10a88c780              # double 0.022207990901911057
	.quad	0x3fe527ee2f2582b1              # double 0.66112431724839926
	.quad	0x3fca950a6ce961d4              # double 0.20767336194945918
	.quad	0x3fcaca8dfd1e4700              # double 0.20930647715845652
	.quad	0x3fb5d107e48d9488              # double 0.085220807360729123
	.quad	0x3fc5be6da9e426bc              # double 0.1698739127680734
	.quad	0x3fe4f7163a211eac              # double 0.65516196587937747
	.quad	0x3fba3c50327f3fb8              # double 0.10248280747259642
	.quad	0x3fd42cc69960f2dc              # double 0.31523289659871323
	.quad	0x3fee5565184d459d              # double 0.94792418238118936
	.quad	0x3fded18d5f8f80c0              # double 0.48154005367360853
	.quad	0x3fe3328eec4d562b              # double 0.59992166664841784
	.quad	0x3fed653a18425427              # double 0.91860680330376432
	.quad	0x3fbdc2f4303499b8              # double 0.11625600983516093
	.quad	0x3fe0ac6f70a831c2              # double 0.52104923251459234
	.quad	0x3fc8d865d0e7a1e8              # double 0.19410393429212935
	.quad	0x3fd441779fc012b0              # double 0.31649580574620995
	.quad	0x3feac37cb5537186              # double 0.83636317649102021
	.quad	0x3fe4e523bcb55627              # double 0.65297114235972209
	.quad	0x3fe020c1fbbade4c              # double 0.50399874845511183
	.quad	0x3fe8705b2a5533ed              # double 0.76371534603242497
	.quad	0x3fd9e5e69c3df65c              # double 0.40465703256618268
	.quad	0x3feda15d3560f68d              # double 0.92594776559390513
	.quad	0x3fc8d32e45b62cfc              # double 0.19394472507369886
	.quad	0x3fe908344a072cba              # double 0.78225149592017051
	.quad	0x3fee31161c326712              # double 0.94349198825077196
	.quad	0x3fdb9fb37fd71d64              # double 0.43162238582995927
	.quad	0x3fe6bb55630212bb              # double 0.71036786401290131
	.quad	0x3fc70654c681a444              # double 0.17988071148582396
	.quad	0x3fd7e6ab9e241d2a              # double 0.37345400279487484
	.quad	0x3faf184c392a5a00              # double 0.06073225210018407
	.quad	0x3fcd930199c66d2c              # double 0.23104877480077712
	.quad	0x3fe236f6067043e2              # double 0.56920911080862546
	.quad	0x3fe38f579abd46b9              # double 0.6112478277447827
	.quad	0x3fc0bfe2f4685cf0              # double 0.13085591253250284
	.quad	0x3fe0037683f9e930              # double 0.50042272354702355
	.quad	0x3fcbef42f93cc6ec              # double 0.21823918504519868
	.quad	0x3fe190d5e9225f90              # double 0.54893012556111564
	.quad	0x3fcb885812a9640c              # double 0.21509838973250373
	.quad	0x3fe7ead48734c11d              # double 0.74741579444347261
	.quad	0x3fefe94a5acc6a8a              # double 0.99722783788759384
	.quad	0x3fe01e47b90b6e67              # double 0.50369630948575839
	.quad	0x3fdf2b86a82adce6              # double 0.48703161642647641
	.quad	0x3fe2c52b6db12edb              # double 0.58656855987780021
	.quad	0x3fe279b41fe0b5a5              # double 0.57735639787795334
	.quad	0x3fd3343e4298145a              # double 0.30006367209745621
	.quad	0x3fdc4a0ac8b3bfc0              # double 0.44201917266672908
	.quad	0x3fddf9567ad96a1c              # double 0.46834337231635614
	.quad	0x3fefeaef1e48556c              # double 0.9974284736114618
	.quad	0x3fdae09f21b4bc26              # double 0.41995981494523205
	.quad	0x3fdda737774d2706              # double 0.46333109522366589
	.quad	0x3fde877cd4238320              # double 0.47701950756713707
	.quad	0x3fe1c87c6b693390              # double 0.5557233903760892
	.quad	0x3fee9f21c21526ba              # double 0.95692527682077544
	.quad	0x3fecff2567e2d14f              # double 0.90614576616511922
	.quad	0x3fba4a08940e12e0              # double 0.10269216169951845
	.quad	0x3fd52a9dded4d7d0              # double 0.3307261158073489
	.quad	0x3fefb7e278b8369d              # double 0.99119685724300021
	.quad	0x3fe41a637c505025              # double 0.62822126655601507
	.quad	0x3fe177fe1adf2a41              # double 0.54589753387819695
	.quad	0x3fd306051b39ec76              # double 0.29724242838683013
	.quad	0x3f8f9f937fa4cc00              # double 0.015441086132886639
	.quad	0x3fe3f26bd3881b73              # double 0.62334243120936461
	.quad	0x3fc3fde65d4e577c              # double 0.15618590885122419
	.quad	0x3fcbf386fd145e24              # double 0.21836936337852919
	.quad	0x3fe904668fd6e867              # double 0.78178718656205326
	.quad	0x3fed05c322e77a28              # double 0.90695339982250278
	.quad	0x3fe7c50be351ff42              # double 0.74280352018829654
	.quad	0x3fe5b6cda8713ca3              # double 0.67856486224072332
	.quad	0x3fd286e120c64720              # double 0.28948238564145079
	.quad	0x3fb3dde1c045f970              # double 0.077604398195011858
	.quad	0x3fe13e88a5f0b301              # double 0.53888351831628267
	.quad	0x3fe098c5708499de              # double 0.5186488340012223
	.quad	0x3fe855554d7c9b8c              # double 0.7604166520512634
	.quad	0x3fcdbe7bd720ffb0              # double 0.23237560276356595
	.quad	0x3fe7782f9186c44b              # double 0.73342111991053949
	.quad	0x3fd5722f19ae2040              # double 0.33509423740224875
	.quad	0x3fba84c0e57e69d8              # double 0.10358815768123664
	.quad	0x3fa336a956312b20              # double 0.037526408931247923
	.quad	0x3fe429a39b0c10bf              # double 0.63008289606707268
	.quad	0x3fb26be6621caf98              # double 0.071958922341478604
	.quad	0x3fd194e0dcd08688              # double 0.27471181453629656
	.quad	0x3fdb9828606cb75c              # double 0.43116197029563863
	.quad	0x3fec9b7f42a5e899              # double 0.89398158089831548
	.quad	0x3fc7dde863801bcc              # double 0.18645958765429638
	.quad	0x3fef6339dc11f1c6              # double 0.9808625505680133
	.quad	0x3fed8f78381c6ae2              # double 0.92376337966137734
	.quad	0x3fb18b481cbd4a30              # double 0.068531519905527416
	.quad	0x3feb02f871c57ecc              # double 0.84411260815610367
	.quad	0x3fe06cbd757dec39              # double 0.5132739348185914
	.quad	0x3fe60f67664f161b              # double 0.68938035948002907
	.quad	0x3fc7a841d201b7b8              # double 0.18482229952081553
	.quad	0x3fb07112ab83fbd0              # double 0.064225355981746945
	.quad	0x3fd7d65b41010784              # double 0.37245828006791037
	.quad	0x3fe04ae38a475d24              # double 0.50914170272418291
	.quad	0x3f6d9d294039cf00              # double 0.0036149793320933155
	.quad	0x3fee60777ae5cf29              # double 0.94927572253661652
	.quad	0x3fe862221c832270              # double 0.7619791561965723
	.quad	0x3fda769ebf8b3d12              # double 0.41348999696215671
	.quad	0x3fbaca5e820bbb98              # double 0.10465040850588847
	.quad	0x3feee6ad9a4a55c0              # double 0.96565895209158014
	.quad	0x3febe7eb5c7f3b9b              # double 0.87206047120877217
	.quad	0x3fd6ed2f9ea9e4dc              # double 0.35822668547150527
	.quad	0x3fe3436c7d886d81              # double 0.60198044317387212
	.quad	0x3fed5be67bb66d92              # double 0.91746830141657854
	.quad	0x3fd59f07ad3e8a88              # double 0.33783142012013245
	.quad	0x3fe8e9e10910deb2              # double 0.77854968805964675
	.quad	0x3fe8623ce3e7d80a              # double 0.76199192536182747
	.quad	0x3fbe3efdb5327080              # double 0.11814866708522409
	.quad	0x3fea36d988b49c87              # double 0.81919552517219152
	.quad	0x3fc9f5d0f79b5d00              # double 0.20281421747379369
	.quad	0x3fdbad3d3987f2c0              # double 0.43244867914453877
	.quad	0x3fc170f775e2f240              # double 0.13625996833970255
	.quad	0x3fdda7a59e0aa188              # double 0.46335735734694383
	.quad	0x3fe0d11dcf9b8bac              # double 0.52552691028937693
	.quad	0x3fd0e94c5f019846              # double 0.26423939969970822
	.quad	0x3fe8b07256a67ffe              # double 0.77153889583496471
	.quad	0x3fd735198e31911e              # double 0.36261595617385634
	.quad	0x3fa30a31c6865900              # double 0.03718715237043746
	.quad	0x3fe9417df23dc7db              # double 0.78924462616691515
	.quad	0x3fe0c25e64105884              # double 0.5237266497013171
	.quad	0x3fd223077f0b013a              # double 0.28338801771680588
	.quad	0x3fef2fa685e15425              # double 0.97456670902704856
	.quad	0x3fe46404ba5947de              # double 0.63720928570023339
	.quad	0x3fee507b2edc2942              # double 0.94732436325401914
	.quad	0x3fd1b8aed611bcbc              # double 0.27689715295032236
	.quad	0x3fe37e3a70586ce4              # double 0.60915872518981162
	.quad	0x3fc98494115e64d4              # double 0.19935847137529683
	.quad	0x3fbe95d92fac02a8              # double 0.11947400487771154
	.quad	0x3fc1c64f6f8d2cbc              # double 0.13886444994782277
	.quad	0x3fd4166924609510              # double 0.31386784126728262
	.quad	0x3fdf64c5fb7e0722              # double 0.49052571830553593
	.quad	0x3fef844f92feb822              # double 0.98490122518501644
	.quad	0x3fdbe1cbba01db72              # double 0.43565648236056298
	.quad	0x3fe4c31c7f6e8f81              # double 0.6488172997382976
	.quad	0x3fe770851ddc17c1              # double 0.73248534996013615
	.quad	0x3fbca92db58a75d8              # double 0.11195645982885283
	.quad	0x3fe228f40a48ee67              # double 0.56749917992369781
	.quad	0x3febad48ba5c1b70              # double 0.8649028434600563
	.quad	0x3fd906fd688a3732              # double 0.3910516281983859
	.quad	0x3fe1b0e2e4c51fc9              # double 0.55284256631511497
	.quad	0x3fe776653b26a2ba              # double 0.73320256760515368
	.quad	0x3fdf01a889790de2              # double 0.48447621750912451
	.quad	0x3fe1d56b0ccf488d              # double 0.55730202199835477
	.quad	0x3fd4fc495277804e              # double 0.32789834073446833
	.quad	0x3fe6abc4590877a4              # double 0.70846764935753415
	.quad	0x3fda6d6c33fe2f46              # double 0.41292862965996269
	.quad	0x3fc32b56c6096dc4              # double 0.14976010007636209
	.quad	0x3fd75bba7e954e2c              # double 0.36497366296427702
	.quad	0x3fee57ab476374f3              # double 0.94820178931300203
	.quad	0x3fce512d7283e620              # double 0.23685234157146429
	.quad	0x3fe25c0387bd2a56              # double 0.573732152094929
	.quad	0x3feb5dbb91df1b1a              # double 0.85519197931793944
	.quad	0x3fc92f763f03af84              # double 0.19676092221140717
	.quad	0x3feffef03b791fa1              # double 0.99987041107032237
	.quad	0x3fe04e0c6d6bd272              # double 0.50952741023372838
	.quad	0x3fee36888325d5ed              # double 0.94415689101032074
	.quad	0x3fdc77744f56d4fe              # double 0.44479091403930215
	.quad	0x3fc61d8847255bec              # double 0.17277625535891106
	.quad	0x3fdde4c96ff152c8              # double 0.46708904201413448
	.quad	0x3f671ad2e2833f00              # double 0.0028204077571912789
	.quad	0x3fe65ee254fe8c36              # double 0.69908253288702471
	.quad	0x3fde54bda25909be              # double 0.47392216543462584
	.quad	0x3fce3577920cf96c              # double 0.23600668555622961
	.quad	0x3fee4aba323d61db              # double 0.94662198841529788
	.quad	0x3fe9dcb1fc8abbf6              # double 0.80819033932300388
	.quad	0x3fe7f14f1dec6ae8              # double 0.74820667118487183
	.quad	0x3fda9123a75c4644              # double 0.4151085981730811
	.quad	0x3fe836c6b9ad7038              # double 0.75668655648360694
	.quad	0x3fec0b4ddd2801d9              # double 0.87637990183435044
	.quad	0x3fe7f939277ecd7a              # double 0.74917276109628905
	.quad	0x3fe47d4d287bd8c3              # double 0.64029558093059113
	.quad	0x3fd480d542c3c860              # double 0.32036334533689192
	.quad	0x3f8910418322e740              # double 0.012238036932433638
	.quad	0x3fe3018e3686ca4a              # double 0.59393988275253062
	.quad	0x3fbfb49dd2176708              # double 0.12384973887619932
	.quad	0x3fdd6dacf2bea6dc              # double 0.45981906610050571
	.quad	0x3fe95a44979230a7              # double 0.79226903537484794
	.quad	0x3fd02b9524e6303c              # double 0.2526600704520694
	.quad	0x3fab68058367d420              # double 0.053527996340484885
	.quad	0x3fec88336cff1fa9              # double 0.8916260842170135
	.quad	0x3fdb97340d0d9450              # double 0.43110371851645812
	.quad	0x3fafb12a2d142630              # double 0.061898534777423797
	.quad	0x3fea7f501ddaae40              # double 0.82804113226797682
	.quad	0x3fba5f26e041e0c8              # double 0.10301440215141888
	.quad	0x3f830f8968dcb880              # double 0.0093069777609253723
	.quad	0x3fd2c1f018cb5ce6              # double 0.29308702870680603
	.quad	0x3fefd4ea177411e7              # double 0.99474052983037786
	.quad	0x3fc6f67f5b598d8c              # double 0.1793975063365959
	.quad	0x3fe02807dc81a8c2              # double 0.50488656108543517
	.quad	0x3fe34777db01beec              # double 0.60247414374131614
	.quad	0x3fd3dcdd91ed20b2              # double 0.31035556078542037
	.quad	0x3fe2e14d7c30cfde              # double 0.59000276809683405
	.quad	0x3fc98230cfd4161c              # double 0.19928560397981776
	.quad	0x3feda19aaa7d65c3              # double 0.92597707079692559
	.quad	0x3fc8bfbbd36fe510              # double 0.19335124801708803
	.quad	0x3fd1d6454fa0553c              # double 0.27870304847722926
	.quad	0x3fed486449adfac3              # double 0.91508688345478395
	.quad	0x3fed733221959892              # double 0.92031199035115407
	.quad	0x3fe9f6aab2237f0c              # double 0.8113606910010005
	.quad	0x3fc2a3202206aaac              # double 0.14560319577625103
	.quad	0x3fe87d83705cde72              # double 0.7653214640221917
	.quad	0x3fe738529870c868              # double 0.72562532208963848
	.quad	0x3fe8d715e658e7e3              # double 0.77625555982308148
	.quad	0x3fe19878b387b4f9              # double 0.54986224235986392
	.quad	0x3fdc4e358b316ae2              # double 0.44227350800581011
	.quad	0x3fe67f44125d5233              # double 0.7030353888208708
	.quad	0x3fe72125ad9f2f1c              # double 0.72279628668318052
	.quad	0x3fd010318e459a52              # double 0.25098837751139513
	.quad	0x3fe22ac80829cd56              # double 0.56772233576195208
	.quad	0x3fd75b0cecbe99b2              # double 0.36493228072722694
	.quad	0x3fee899aa82ffd0a              # double 0.95429737900841016
	.quad	0x3fd94e363b4a147c              # double 0.39539867200830492
	.quad	0x3fcea2748607097c              # double 0.23933273834525071
	.quad	0x3fd5d2d1f4cb8bc2              # double 0.34099244027873621
	.quad	0x3fe09dba550ea3af              # double 0.51925388920527904
	.quad	0x3fdceb5c023632e2              # double 0.45186519828784644
	.quad	0x3fe072ccb0262849              # double 0.51401361850845106
	.quad	0x3fb1c8a194565400              # double 0.069467638697759071
	.quad	0x3fedea014dd87de1              # double 0.93481507496101923
	.quad	0x3fe70a37c2381eb0              # double 0.71999729093018594
	.quad	0x3f690396dc912200              # double 0.0030534693255825918
	.quad	0x3fc9e5b71deda898              # double 0.20232285462708854
	.quad	0x3fe5ca5dac909b48              # double 0.68095287040782981
	.quad	0x3fe5a4d0adc40f54              # double 0.67636903704304041
	.quad	0x3fe2b5b253ebbdf8              # double 0.58467975989145682
	.quad	0x3fe8b616d483065b              # double 0.77222768312658319
	.quad	0x3fe1d1ae70190bff              # double 0.55684587377652395
	.quad	0x3fdb4f776881e7bc              # double 0.42672524648480326
	.quad	0x3fe794724e4256d3              # double 0.73687091145503769
	.quad	0x3f960bd1634820a0              # double 0.021529456791569701
	.quad	0x3fd0098d984cb1f6              # double 0.25058307526595003
	.quad	0x3fcfa6c7fec811cc              # double 0.24727725925926192
	.quad	0x3feca02f64e412c2              # double 0.89455384927040194
	.quad	0x3fe475ee7ac65843              # double 0.63939594249200871
	.quad	0x3fed9b2cc0a7d544              # double 0.92519223812147588
	.quad	0x3fc7227a3afe839c              # double 0.18073966866088831
	.quad	0x3fa3d5c656e910e0              # double 0.0387403470126928
	.quad	0x3fe759d2a70b3929              # double 0.7297147047591227
	.quad	0x3fbe4eab0e611778              # double 0.11838788128906497
	.quad	0x3fc0fcab02d20d98              # double 0.13271081578942012
	.quad	0x3fe79ec05e041e54              # double 0.73812883722798484
	.quad	0x3fe9581d6557e770              # double 0.79200620454433412
	.quad	0x3fe42f64d9aa92a2              # double 0.63078539383839805
	.quad	0x3fed8e4f8215b55d              # double 0.92362189681231721
	.quad	0x3fd18c64c9a44650              # double 0.27419395152637538
	.quad	0x3fd28c27db96efc6              # double 0.28980442470833301
	.quad	0x3fe8756dadfb353f              # double 0.76433452587813366
	.quad	0x3feebfb14dfd6203              # double 0.96089997513178138
	.quad	0x3fe822a7be8d576d              # double 0.75423037736139309
	.quad	0x3fdd327196bc62f8              # double 0.45620383949567112
	.quad	0x3feea03089360de9              # double 0.95705439375927626
	.quad	0x3fedf86162679318              # double 0.93656987399717461
	.quad	0x3fee5d0d820219bd              # double 0.94885898010470948
	.quad	0x3fe32cfc38fab15e              # double 0.59924136284602603
	.quad	0x3fd32250da2c4b3e              # double 0.29896947198828971
	.quad	0x3fd1b1b9d1358c30              # double 0.27647252493460694
	.quad	0x3fdd075946a8a440              # double 0.45357353115338483
	.quad	0x3fe2a8ab70f02e67              # double 0.58308956201785811
	.quad	0x3fed1deb708c1120              # double 0.90990230543005523
	.quad	0x3fde1490be308270              # double 0.47000521252815641
	.quad	0x3fe189fe1382d2a7              # double 0.54809478579280302
	.quad	0x3fdb751c14b3f68e              # double 0.4290228082826183
	.quad	0x3fe316a0ee9e2648              # double 0.59651228528054734
	.quad	0x3fe1c1a5f4a3a96d              # double 0.55488870411981639
	.quad	0x3fca1c04c6a8b3cc              # double 0.20398006153246084
	.quad	0x3fc7b25422502bf0              # double 0.18512965846488738
	.quad	0x3fc6cf177c2f2894              # double 0.17819493831331512
	.quad	0x3fe0692bf7955080              # double 0.51283834797006023
	.quad	0x3fe68ffccb41c81f              # double 0.70507659624695751
	.quad	0x3fde1cdfb285ecf8              # double 0.47051231798077664
	.quad	0x3fe0b8f9581831a4              # double 0.52257983404119956
	.quad	0x3fc0033ae6e5e56c              # double 0.12509857439344374
	.quad	0x3fb5f4a7823ae860              # double 0.08576437882848742
	.quad	0x3fdc9480e2030f82              # double 0.44656393119316118
	.quad	0x3fe33a39523be94a              # double 0.60085741101583179
	.quad	0x3fd8c6277ac03db0              # double 0.38709437358280763
	.quad	0x3fe7dabd753fa4b5              # double 0.74545166874044944
	.quad	0x3fd204f434fa258c              # double 0.28155236409710294
	.quad	0x3fedc4c056b83c6f              # double 0.93026749551235166
	.quad	0x3fcf1dcb21db4ba4              # double 0.24309672501712243
	.quad	0x3fe57cd1455e0392              # double 0.67148650692262124
	.quad	0x3fe3e74c9b66ff59              # double 0.62198477127092666
	.quad	0x3fd4f54912500cd6              # double 0.32747103489255147
	.quad	0x3fd90c07611bcf1a              # double 0.39135918124451197
	.quad	0x3fabb98ec0504c80              # double 0.054150067306317773
	.quad	0x3fe92b1aa0de3bc5              # double 0.7865117208437985
	.quad	0x3fe289f3bfd73123              # double 0.5793398615728943
	.quad	0x3fe850de76034d2c              # double 0.75987170266526993
	.quad	0x3fe91006d34fc873              # double 0.78320637962157347
	.quad	0x3fc7a5da1a4e8444              # double 0.18474890026576152
	.quad	0x3feda9218831d2cd              # double 0.92689587212097424
	.quad	0x3feaebaaa06c5f5b              # double 0.841267884566132
	.quad	0x3fec8c86cb523a99              # double 0.89215411864445848
	.quad	0x3fc06a4c1ce1bf04              # double 0.12824393663640177
	.quad	0x3fd77f14ee452916              # double 0.36713145512170919
	.quad	0x3fce05e244898f30              # double 0.23455456110524997
	.quad	0x3fe7cc6be1d6b0da              # double 0.74370378598316766
	.quad	0x3fe32153f2cf705a              # double 0.59781835006607342
	.quad	0x3fcc8f159505aa18              # double 0.22311658646079091
	.quad	0x3fe28712ab84c64f              # double 0.57898839473473085
	.quad	0x3fbaf5b4fe4e58a0              # double 0.105311691366611
	.quad	0x3fee0e6344e28b04              # double 0.93925631956184973
	.quad	0x3fe78add55d167f0              # double 0.7357012439854298
	.quad	0x3fd2b3cdd0de5506              # double 0.29222436330140089
	.quad	0x3fec39016379a4d5              # double 0.88195866993660366
	.quad	0x3faee6e3a703a340              # double 0.060355295312382484
	.quad	0x3fe1e4933cc0da1f              # double 0.55915223947414805
	.quad	0x3fe03962497fc343              # double 0.50700487475669609
	.quad	0x3fe2fc54273faf57              # double 0.59330184617781867
	.quad	0x3fe22eb743da8fa4              # double 0.56820262196241744
	.quad	0x3fdc2fceb3607cfc              # double 0.44041793362880788
	.quad	0x3fecfa3f8ab7a625              # double 0.90554787724721975
	.quad	0x3fd072d29c632816              # double 0.25700822136116253
	.quad	0x3fed6b29fa250e1e              # double 0.9193315396918853
	.quad	0x3fc8444153613174              # double 0.18958298274300101
	.quad	0x3fcf938ebdfc5500              # double 0.2466906001724638
	.quad	0x3fc4260efa1e65b0              # double 0.15741145336941775
	.quad	0x3feddc6986f97f1d              # double 0.93315578806138755
	.quad	0x3fee4c24bb5de639              # double 0.9467948588855456
	.quad	0x3fcc30bf8b413498              # double 0.22023767756983115
	.quad	0x3fe5103bb4bb2dc0              # double 0.65823159503036521
	.quad	0x3fbed9a582807f90              # double 0.12050852237780263
	.quad	0x3fe52689fa305098              # double 0.66095446457849771
	.quad	0x3fc3f5f601905e7c              # double 0.15594363285412161
	.quad	0x3fd95991980dc46e              # double 0.39609184121133623
	.quad	0x3fe469d508d01ca7              # double 0.63791896554257199
	.quad	0x3feaf87f11abbe07              # double 0.84283402873364899
	.quad	0x3fde7c9507e2c164              # double 0.47635389108747561
	.quad	0x3fe92d05e45eec2c              # double 0.78674597362203746
	.quad	0x3fe26f31a8f788e1              # double 0.57607348443368889
	.quad	0x3feb7104657f0eb9              # double 0.85754604171275794
	.quad	0x3fb5e81e55ebf3e8              # double 0.085573097207045756
	.quad	0x3fe3753efa192716              # double 0.60806225631060573
	.quad	0x3fefd65972a4a7db              # double 0.99491569892165487
	.quad	0x3fe03432b7d1415a              # double 0.50637184049450501
	.quad	0x3fed8b7dd41a0294              # double 0.9232777731522952
	.quad	0x3fccdec5a14f9f8c              # double 0.22554846169009257
	.quad	0x3fec483d364ec3a3              # double 0.88381825072257347
	.quad	0x3fe7271d9281543d              # double 0.72352484335227241
	.quad	0x3fe961f75c814657              # double 0.79320877139452761
	.quad	0x3fed1442ea917141              # double 0.90872331441963905
	.quad	0x3fb03017a3f05888              # double 0.063233830951818004
	.quad	0x3fd56a5c99e9bea6              # double 0.3346168044144896
	.quad	0x3fe5536a908350d9              # double 0.6664326498526193
	.quad	0x3fe094294c6980a0              # double 0.51808609890214896
	.quad	0x3fcb87086d82e4e4              # double 0.21505837771636671
	.quad	0x3fcdccf4f9660ca8              # double 0.23281728913943778
	.quad	0x3fe0bcb9b89cb4be              # double 0.52303777749116143
	.quad	0x3fe2c1711bec6449              # double 0.58611350492277225
	.quad	0x3fe394fa8e0020b5              # double 0.61193588003609156
	.quad	0x3fbce791fa8fc1a0              # double 0.11290848128533648
	.quad	0x3fedc759f0cb57d8              # double 0.93058487920893196
	.quad	0x3fea489fc35f0772              # double 0.82136524351538598
	.quad	0x3fe1c04e5dcb36cc              # double 0.55472486800291554
	.quad	0x3fea3d81665d686a              # double 0.82000799172534511
	.quad	0x3fc79c664c969414              # double 0.18446043719919258
	.quad	0x3fe9cfaaddceb863              # double 0.80660003015306037
	.quad	0x3feeb03f09ea3c6b              # double 0.9590144342090644
	.quad	0x3fd882884892d218              # double 0.3829670628286137
	.quad	0x3fe2bf027f87cd3f              # double 0.58581662090583808
	.quad	0x3fa6e9dd94f0f6d0              # double 0.044753002578074352
	.quad	0x3fca2517e1c5489c              # double 0.20425699733693115
	.quad	0x3f812dca12a2ff00              # double 0.0083881174981565998
	.quad	0x3fb664dab13df350              # double 0.087476413986178558
	.quad	0x3fd7388500a87c66              # double 0.36282467903396876
	.quad	0x3fefc36d8356124d              # double 0.99260593082051118
	.quad	0x3fc64a29fa4e3ce0              # double 0.17413830491975713
	.quad	0x3fc55670b2ca8e18              # double 0.16670044641533432
	.quad	0x3fe03a96273f6761              # double 0.50715167680321482
	.quad	0x3fd93a2850ede356              # double 0.39417465117690165
	.quad	0x3fd9cdeda1341ee2              # double 0.40319386236704535
	.quad	0x3fe247589c28552d              # double 0.5712092447235243
	.quad	0x3fe901967cfe4d9f              # double 0.78144382870452833
	.quad	0x3fc2d18e68fdd970              # double 0.1470201504377644
	.quad	0x3fd47bc77d25973a              # double 0.32005488606806731
	.quad	0x3f91db38a4f5aec0              # double 0.01743782526811688
	.quad	0x3fef0f4c79b142d8              # double 0.9706175209813308
	.quad	0x3fd7cef632cedefa              # double 0.37200694047668004
	.quad	0x3fdf0f28e89f6be6              # double 0.48530028073372333
	.quad	0x3fe198ca68cbf05e              # double 0.54990120380490359
	.quad	0x3fe05fd812820f26              # double 0.5116997109875896
	.quad	0x3fb2e4953d6848f8              # double 0.073800399295837482
	.quad	0x3fe2a1e01e0cd2e4              # double 0.58226018780859734
	.quad	0x3fd8a2341fea0548              # double 0.38490012280097519
	.quad	0x3fdb518412e47a5a              # double 0.42685033650369564
	.quad	0x3fcde07c9bfdae8c              # double 0.23341329209084838
	.quad	0x3fe91745a083601c              # double 0.78409081793052193
	.quad	0x3fe43af7cd2bba23              # double 0.63219823906348827
	.quad	0x3fc2a28742d2131c              # double 0.14558497202610787
	.quad	0x3f85686819cd8c00              # double 0.010453046119158316
	.quad	0x3fe9078dda5aacac              # double 0.78217213294319298
	.quad	0x3fcec3e203f18328              # double 0.24035287087010571
	.quad	0x3fe9c2678fb29c2f              # double 0.80498102251011072
	.quad	0x3fb9fcf6070c64f0              # double 0.10151612922745179
	.quad	0x3fd52df899e80660              # double 0.33093085317532278
	.quad	0x3fe566be79d0a370              # double 0.66879199783316601
	.quad	0x3fea6bd5ad0e5be1              # double 0.82566341209428284
	.quad	0x3fe8c9fffb98725b              # double 0.77465819492096999
	.quad	0x3fec49454b3a2dbb              # double 0.88394417469810749
	.quad	0x3fe7794b8cf30c39              # double 0.73355653313809122
	.quad	0x3fe753f367a08c6b              # double 0.72899790038753787
	.quad	0x3fea209467f6265b              # double 0.81647701554284013
	.quad	0x3fe230818a9d2cd5              # double 0.56842114518203835
	.quad	0x3fe2f44739b975c6              # double 0.59231911920840541
	.quad	0x3fe26cf93b4b477d              # double 0.57580243664618502
	.quad	0x3fafd192a1580080              # double 0.062145788378985323
	.quad	0x3fc2790028437c20              # double 0.14431764570233074
	.quad	0x3fd8327c025db9fc              # double 0.37808132391992877
	.quad	0x3fab72f2fa200550              # double 0.053611367256972131
	.quad	0x3fe3215e2dcf6537              # double 0.59782322833340273
	.quad	0x3fd6048c79621556              # double 0.34402763227293087
	.quad	0x3fe08509aab11f50              # double 0.51623996103533365
	.quad	0x3fdc856c7af3f13c              # double 0.44564353949660407
	.quad	0x3fe427c2b15eaeb2              # double 0.62985357897328798
	.quad	0x3fe8fba88505546d              # double 0.78072000485066229
	.quad	0x3fe41007a8988a04              # double 0.62695677689436069
	.quad	0x3fdc7094300c17cc              # double 0.44437126819718453
	.quad	0x3fe7d118d8b5761a              # double 0.74427454305595409
	.quad	0x3fc13886ee041ea4              # double 0.13453756925467986
	.quad	0x3fd21f1799faef0c              # double 0.28314771687631501
	.quad	0x3fe8333f5a976621              # double 0.75625579541810251
	.quad	0x3fe8d15a3dac75b3              # double 0.77555572553290231
	.quad	0x3fe26218921495f1              # double 0.57447460681276941
	.quad	0x3feb1b58f6338704              # double 0.84708831869303979
	.quad	0x3fdd6d7a4e649f2a              # double 0.45980699210712095
	.quad	0x3fe1a2988568d264              # double 0.55109811836753098
	.quad	0x3fea0a6d1de443ab              # double 0.81377273405279504
	.quad	0x3fc90e8d671a2ca8              # double 0.19575660261430028
	.quad	0x3fe359e51c545528              # double 0.60472350628939342
	.quad	0x3fbff1d93f7cf478              # double 0.12478406715395518
	.quad	0x3f737f86d67e1380              # double 0.0047602908233600472
	.quad	0x3fd31685fb4aeba2              # double 0.29824971714304571
	.quad	0x3fe2f05b0c815c50              # double 0.59184029047436049
	.quad	0x3fe91ccb1b822565              # double 0.78476481793147157
	.quad	0x3fd601145c38010a              # double 0.34381588941325048
	.quad	0x3f9a2d2f64e38d60              # double 0.025562992604034718
	.quad	0x3fd068e2b18fecfe              # double 0.25640170421657149
	.quad	0x3fe6af1147a72fb9              # double 0.70887054438343633
	.quad	0x3fca092e8ec0270c              # double 0.20340520830387054
	.quad	0x3feccedd3cf699c0              # double 0.90025197893992726
	.quad	0x3fec68759c813128              # double 0.88775139396014868
	.quad	0x3fc13df5c6417a40              # double 0.13470337086160278
	.quad	0x3fd79249bc74ef70              # double 0.36830371288282659
	.quad	0x3fdf1fa68434177a              # double 0.48630679045196923
	.quad	0x3fe54a22299006ab              # double 0.66529949300475744
	.quad	0x3fcc6c5687ee03c8              # double 0.2220562137336215
	.quad	0x3fe259aa4aa661be              # double 0.57344545917572254
	.quad	0x3fea9b0a7e73e9c0              # double 0.83142590234574953
	.quad	0x3fd81d4b511661a2              # double 0.37678797644323414
	.quad	0x3fe2894e99ebe2d5              # double 0.57926111281184467
	.quad	0x3fea9e5335953d1f              # double 0.83182678666517862
	.quad	0x3fdf19b4660321e2              # double 0.48594388925678633
	.quad	0x3fec6a928c89e50f              # double 0.88800933312373498
	.quad	0x3fee09596d3463d9              # double 0.93864127472908898
	.quad	0x3fc64aeafd4b0d6c              # double 0.17416131370383015
	.quad	0x3fd71ccc22813624              # double 0.36113265390017291
	.quad	0x3fe6866d48114a0d              # double 0.70390953136149081
	.quad	0x3fe19aaee72cecab              # double 0.55013222838842546
	.quad	0x3fe6fbcf9c08adaa              # double 0.71823864436503482
	.quad	0x3fcac01e88ff272c              # double 0.20898801507274223
	.quad	0x3fa5c71a7c512ab0              # double 0.0425346638445111
	.quad	0x3fe2265ccbba79fd              # double 0.56718292036731521
	.quad	0x3fbe1a6030841bd8              # double 0.11758996185754655
	.quad	0x3fd5d508037c318e              # double 0.34112739887566412
	.quad	0x3feeb2ee79cfb72f              # double 0.95934222976004501
	.quad	0x3fec248ebba056a3              # double 0.87946259160772333
	.quad	0x3fc54cd369c14868              # double 0.16640703834360981
	.quad	0x3faf5f7080cc2240              # double 0.061275020334566666
	.quad	0x3fb38b1d464b1a70              # double 0.076341466580837069
	.quad	0x3fe37e8830d1af06              # double 0.60919580016113239
	.quad	0x3fe88161c52d1d13              # double 0.76579369078618453
	.quad	0x3fe810c3ac9fdaa9              # double 0.75204642978390723
	.quad	0x3f50f582080d9200              # double 0.001035096153111259
	.quad	0x3fdbcbaededd6c30              # double 0.43430682911065599
	.quad	0x3fe6b4391e987ee1              # double 0.70949989295692373
	.quad	0x3f81f1c0b67c5b40              # double 0.008761888093017256
	.quad	0x3fe058e2370efdc1              # double 0.51085005525231264
	.quad	0x3fec15796ae7d508              # double 0.87762137298582932
	.quad	0x3fa8e0254bdb45f0              # double 0.048585095891791386
	.quad	0x3fed6255d2f67a47              # double 0.91825381473228951
	.quad	0x3fd0a7b40d300804              # double 0.26023579871991864
	.quad	0x3fe9069d3d7838ec              # double 0.78205739980492472
	.quad	0x3fe99e295b4e7a66              # double 0.80055682977019837
	.quad	0x3fd860be3c2cba1a              # double 0.3809047305720995
	.quad	0x3f7cff390506ac80              # double 0.0070793368653695454
	.quad	0x3fdd25720a0f0786              # double 0.45541048986716992
	.quad	0x3fefab3d85f18217              # double 0.98965335999315839
	.quad	0x3fc426642211b2f8              # double 0.15742160476238332
	.quad	0x3fa9a3a0c9a77a20              # double 0.050076508155815214
	.quad	0x3fa66ae0c32245d0              # double 0.043784164257100522
	.quad	0x3fe0adefa8f5bcb6              # double 0.52123244285566872
	.quad	0x3fdeae511fd0457c              # double 0.47938945872109406
	.quad	0x3fe87a00a9e3e7b2              # double 0.76489289457025778
	.quad	0x3fe110836821d5b3              # double 0.53326578462900043
	.quad	0x3fed41ae8e25587a              # double 0.91426780474536362
	.quad	0x3feeb59a5dbceeaa              # double 0.95966833408552543
	.quad	0x3f7c119f85b43180              # double 0.0068527442301838937
	.quad	0x3feececdfbbe5f9c              # double 0.96274470490151342
	.quad	0x3feec4ecd56dcfb9              # double 0.96153871236173593
	.quad	0x3fdcf1067c4989da              # double 0.4522110189192553
	.quad	0x3fd1e33edd39e238              # double 0.27949496845352284
	.quad	0x3feb8e651a174801              # double 0.86113219352614589
	.quad	0x3fed2d53a36688d2              # double 0.91178304590382653
	.quad	0x3fd4521a00d1df4c              # double 0.31751108245906745
	.quad	0x3fe8f6cdaa5d9ef5              # double 0.7801273658232889
	.quad	0x3fb4bcf3bbf22510              # double 0.081008180031990173
	.quad	0x3fd8d88182473560              # double 0.3882144710776938
	.quad	0x3fc6b9dd4687075c              # double 0.1775471300480217
	.quad	0x3fc4cdb419620a0c              # double 0.16252757300760867
	.quad	0x3fe37ecb9f644bc3              # double 0.609227954208443
	.quad	0x3fe2f3f523cdce4c              # double 0.59227997773127461
	.quad	0x3fe90fc03025c2a6              # double 0.78317269710358484
	.quad	0x3fe5d5d8c0509f5a              # double 0.68235433160314618
	.quad	0x3fd4421ed676ef6a              # double 0.31653567260558779
	.quad	0x3fd9b79584574b54              # double 0.40183008121419062
	.quad	0x3fbc6b09c93f32d0              # double 0.11100827372792854
	.quad	0x3fdf9b3c20a68818              # double 0.49384978474165697
	.quad	0x3fbcdc789595e160              # double 0.11273912097920435
	.quad	0x3fcdf10f5aea0a2c              # double 0.23391906680269992
	.quad	0x3fe6f7507e9740cd              # double 0.7176897499539564
	.quad	0x3fe368bff3ce3438              # double 0.60653684252031947
	.quad	0x3fd71a09e19f48b2              # double 0.3609642699567629
	.quad	0x3fe3462ca62a3b74              # double 0.60231621221633569
	.quad	0x3feac4f57d0655c7              # double 0.8365428392304971
	.quad	0x3fad7698aac173f0              # double 0.057545443386267325
	.quad	0x3fec348c3925ac9b              # double 0.88141451989703812
	.quad	0x3fefe0ddc2662a55              # double 0.99619949310847266
	.quad	0x3fe65782fe01377b              # double 0.69818257913878712
	.quad	0x3f94440d1a7b6140              # double 0.019790844670610541
	.quad	0x3fe4b41981467776              # double 0.64698481797289165
	.quad	0x3fc3f97390c53f38              # double 0.15605015343543882
	.quad	0x3fd7e14f1b1bb090              # double 0.37312677047044307
	.quad	0x3fdc511668138e68              # double 0.44244918979368331
	.quad	0x3fe19a525a30e6cf              # double 0.55008809676584203
	.quad	0x3f894525dce7ac80              # double 0.012338920406327114
	.quad	0x3fe56e589149321d              # double 0.66971996666103772
	.quad	0x3fc5ffed43c84190              # double 0.17187276658706852
	.quad	0x3fea39c19b87adb0              # double 0.81955032708122211
	.quad	0x3fd3c32bac728e72              # double 0.30878726807188805
	.quad	0x3fd13e17e97defe6              # double 0.26941488077113573
	.quad	0x3fc62d17c0e2023c              # double 0.17325112264735931
	.quad	0x3fc72c86307dbf18              # double 0.18104627006277307
	.quad	0x3fdc6aa670bb11b2              # double 0.44400940903531272
	.quad	0x3fdfe2d15eb34408              # double 0.49821886299201923
	.quad	0x3fe3c535ffbc1bef              # double 0.61782360027507177
	.quad	0x3fe2d4711a17e4fd              # double 0.5884328374515061
	.quad	0x3fd99d42208a8de0              # double 0.40022328546385033
	.quad	0x3fe48c8d01e55173              # double 0.64215708132046101
	.quad	0x3fd562dbb1bb72d0              # double 0.33415882450735257
	.quad	0x3fd0b67b28181e4a              # double 0.2611377612633744
	.quad	0x3fc2a8c0a6d9a0f0              # double 0.14577491900423167
	.quad	0x3fc9a55473445ef8              # double 0.20035796764636138
	.quad	0x3fc8d11a07748e58              # double 0.19388127674129652
	.quad	0x3fe7653d91d8442c              # double 0.73110846028624143
	.quad	0x3fecf61bd925010a              # double 0.90504257594150883
	.quad	0x3fd55ab2ae94d9e2              # double 0.33366076516122523
	.quad	0x3fbc271d83f7c990              # double 0.10997185203431159
	.quad	0x3fe7b88478bdbbf9              # double 0.74127410490279921
	.quad	0x3fed14bd21f04c0b              # double 0.90878159168858141
	.quad	0x3fe91cbdf2fbe90a              # double 0.78475854356591523
	.quad	0x3fe0677fbf131b8b              # double 0.51263415641084131
	.quad	0x3fd3342f76482252              # double 0.30006014395670377
	.quad	0x3fe7b0f8e972704e              # double 0.74035306544420521
	.quad	0x3fa150234e78a980              # double 0.033814528779049446
	.quad	0x3fd911383beebd10              # double 0.39167600491323729
	.quad	0x3fe67e7bad9b3fe2              # double 0.70293983371265889
	.quad	0x3fdc008458076d84              # double 0.43753155323585013
	.quad	0x3fea1ab07ed07a6a              # double 0.81575798767501095
	.quad	0x3fecf1e03ffc950f              # double 0.90452587602035972
	.quad	0x3fe5c49ba4f7b243              # double 0.68024999828555399
	.quad	0x3fe4c5cde8bd2db3              # double 0.6491460366900611
	.quad	0x3fe752732c11c767              # double 0.72881468398393856
	.quad	0x3fa07af85a5e15e0              # double 0.032188187628928722
	.quad	0x3fdebbff72c3bd6c              # double 0.48022447783929212
	.quad	0x3fe522bc87489963              # double 0.66049028799606579
	.quad	0x3fc4d4f76116b644              # double 0.16274921646747675
	.quad	0x3fd398e4df5dd1d2              # double 0.30620691121228305
	.quad	0x3fdee9dffcefc1da              # double 0.48302459431491018
	.quad	0x3fdd46b2bff0832c              # double 0.45744007820217081
	.quad	0x3fe4f63c776540ac              # double 0.65505812949597475
	.quad	0x3fe2da9d887bf737              # double 0.58918644578054724
	.quad	0x3fe673ff2ba2fa6a              # double 0.70165976069240554
	.quad	0x3fe07e42f5b150ce              # double 0.51541278826564407
	.quad	0x3fc5c9daab0238ac              # double 0.17022260046036786
	.quad	0x3fb0ee79710d08a8              # double 0.066138830280609739
	.quad	0x3fdec820611bd60a              # double 0.48096475108408809
	.quad	0x3feacfe7cfe71e47              # double 0.83787909132019756
	.quad	0x3fcda13146ee23d4              # double 0.23148170436277715
	.quad	0x3fee217841b38b5c              # double 0.94158566314977631
	.quad	0x3febe599587d0d1c              # double 0.8717772224703455
	.quad	0x3fd59e7523c71d20              # double 0.33779648298191667
	.quad	0x3fe3e20e0c7c5dc8              # double 0.6213445896018408
	.quad	0x3feef2a12a485f45              # double 0.96711786516514364
	.quad	0x3fd33e5566ee159c              # double 0.30067954112777229
	.quad	0x3fac6fa58b813490              # double 0.055539296416648232
	.quad	0x3fd209dd8043f9c8              # double 0.28185212636881518
	.quad	0x3fd08bc7670a56fc              # double 0.25853142797983231
	.quad	0x3fd5248871b56e7e              # double 0.3303547964512531
	.quad	0x3fe7505ee273b48a              # double 0.72856086949254117
	.quad	0x3fb49ced09663970              # double 0.080519499583010079
	.quad	0x3fa6a70946c991a0              # double 0.044243135348355667
	.quad	0x3fd49f173e0948e2              # double 0.3222101312468465
	.quad	0x3fe98b09f9cbcbbf              # double 0.79822253025337619
	.quad	0x3fd5eeba6994efbc              # double 0.34269581137391092
	.quad	0x3fe0e85d4001a70a              # double 0.52836477757702593
	.quad	0x3feed32225cd18ee              # double 0.96327311881102928
	.quad	0x3fe8d14b432a11ec              # double 0.77554858320268982
	.quad	0x3fd5c351e9648ec4              # double 0.34004638473764381
	.quad	0x3fe05fcfa726cbc0              # double 0.51169569632326528
	.quad	0x3fbf144a0ff14908              # double 0.12140334023687072
	.quad	0x3fcf707013b0f110              # double 0.24561882935984913
	.quad	0x3fd765a1da955a92              # double 0.36557813974415254
	.quad	0x3fe3fa3d5b59823b              # double 0.62429683534362057
	.quad	0x3fec51c459b58ffe              # double 0.88498132249196693
	.quad	0x3fdd8e78acc52e90              # double 0.46182076332181854
	.quad	0x3fd523d3da80893c              # double 0.3303117402848732
	.quad	0x3f5a13c4dba63600              # double 0.0015916273538069126
	.quad	0x3febf8d5a1da4301              # double 0.87412530528862942
	.quad	0x3fd28810d07c422c              # double 0.28955479011441088
	.quad	0x3fc5657799e85bf0              # double 0.1671590329649173
	.quad	0x3fd75c22e6016d52              # double 0.36499855481607313
	.quad	0x3fe54feb7ce2b85f              # double 0.6660058440372828
	.quad	0x3fdc3b94b0c09f9e              # double 0.44113652478199039
	.quad	0x3fed629eb121bb1f              # double 0.91828856082961241
	.quad	0x3fd59f17eeaed6e0              # double 0.33783529576190396
	.quad	0x3fc72085423b4868              # double 0.18067994817699007
	.quad	0x3fb2dc62db27dba8              # double 0.073675325875099618
	.quad	0x3fd484832ce640da              # double 0.32058791527471231
	.quad	0x3f34fdc256fa9000              # double 3.2030100462976385E-4
	.quad	0x3fe8e8ab04e45cf1              # double 0.77840186076619322
	.quad	0x3fb5629bd5f5b1a0              # double 0.083535899864449537
	.quad	0x3f93459ac25d4560              # double 0.018820207703645564
	.quad	0x3feffeb660749282              # double 0.99984282339990238
	.quad	0x3fe0ab54d67cb1f6              # double 0.5209144772721277
	.quad	0x3fe5619471fc7292              # double 0.66816160452761353
	.quad	0x3fc45cac4b49af90              # double 0.15907815624393296
	.quad	0x3fe7083ecee74883              # double 0.71975651179151645
	.quad	0x3fee17a4d13a878d              # double 0.94038620820013963
	.quad	0x3febeb57ed5a1dc6              # double 0.87247845037284644
	.quad	0x3fe2ae4fa771ed07              # double 0.5837782164011579
	.quad	0x3fcb37f8e6b84410              # double 0.21264563813795734
	.quad	0x3fd6abdaa553d438              # double 0.354239140942187
	.quad	0x3fa0375a2694a090              # double 0.031672303399603696
	.quad	0x3fe13d432b6179e3              # double 0.53872831795507314
	.quad	0x3fef1a1c380e8eb3              # double 0.9719372839794772
	.quad	0x3fc972e297b57200              # double 0.19881851585058996
	.quad	0x3fe8c4500029c8d2              # double 0.77396392852667817
	.quad	0x3fdbbd891c18e7f4              # double 0.43344333404422675
	.quad	0x3fbd4fc6f07637f8              # double 0.11449855204247672
	.quad	0x3fe9d7fce1f1cef9              # double 0.80761570100591407
	.quad	0x3fd8cc460473e81a              # double 0.38746786532249333
	.quad	0x3fd73075773840fe              # double 0.36233269350579167
	.quad	0x3fe87468a3e604c3              # double 0.76421005259921804
	.quad	0x3fe0ddbfc7ee6bb7              # double 0.52706898736084085
	.quad	0x3fc89e526d85c560              # double 0.19233160350590151
	.quad	0x3fd03cbbbbe9b55c              # double 0.25370686865683978
	.quad	0x3fb17028d0724210              # double 0.068117667093481993
	.quad	0x3fb77b4128cb5be8              # double 0.091724464854777588
	.quad	0x3fa69bf9dc316ed0              # double 0.044158752564468551
	.quad	0x3fea25f53d2f0e90              # double 0.81713354062999777
	.quad	0x3fee9c46c7771b79              # double 0.95657671888407869
	.quad	0x3fb14b3922c49038              # double 0.067554064739454911
	.quad	0x3fe81a6f7bb4f2f7              # double 0.75322698747149175
	.quad	0x3fccfa63e1b6ceec              # double 0.22639130135723151
	.quad	0x3fd9d3690b8889c2              # double 0.40352846266082676
	.quad	0x3fd73ae6a362bb6e              # double 0.36297002750045848
	.quad	0x3fd2c8a826966e2e              # double 0.29349712150880947
	.quad	0x3fe88d417c8b2c83              # double 0.76724314045840492
	.quad	0x3fd3a62f1f30e5c6              # double 0.30701807065960585
	.quad	0x3fd6a59d394ab484              # double 0.35385828585533141
	.quad	0x3fc39d04383c3e68              # double 0.15322926278939808
	.quad	0x3fe486414a6f8ddd              # double 0.64138855493768754
	.quad	0x3feb3dce01b2e85d              # double 0.85129452068145961
	.quad	0x3fe0e2bdcb32c2cf              # double 0.52767839133420036
	.quad	0x3fc38e637df534f8              # double 0.15278285646710521
	.quad	0x3fd25c6999331462              # double 0.28689041100398616
	.quad	0x3feb61ec555447ad              # double 0.85570351281989121
	.quad	0x3fbe4df14f2d9f68              # double 0.1183768099123178
	.quad	0x3fefb9bd0c0f8fc0              # double 0.99142315250036716
	.quad	0x3fcceadf58b9916c              # double 0.22591773826855943
	.quad	0x3fec3339aec30f7d              # double 0.88125309117502548
	.quad	0x3fe275f804daaa59              # double 0.5769004912193153
	.quad	0x3fefaee0193809f0              # double 0.9900970928723023
	.quad	0x3fe50853ad1e8efa              # double 0.65726646244408404
	.quad	0x3feaf9e662778948              # double 0.84300536376785207
	.quad	0x3f961cef41b44d20              # double 0.021594751725456551
	.quad	0x3fd7d37c751d28ac              # double 0.37228309094337919
	.quad	0x3f8ba202d7547180              # double 0.013492605396600466
	.quad	0x3fd978a7c9acbb78              # double 0.3979892224769439
	.quad	0x3fecdfc1b04f900d              # double 0.90231403766347429
	.quad	0x3fe5cbf2c0e035bb              # double 0.68114602728899543
	.quad	0x3fe14070c70d0928              # double 0.53911627652295113
	.quad	0x3f93078e24cdf820              # double 0.018583508488056677
	.quad	0x3fd1c9dfa53fb9f4              # double 0.27794638764944968
	.quad	0x3fc0be7ff4c91924              # double 0.13081359341067256
	.quad	0x3fe6bca0e51e5d9e              # double 0.71052593946199116
	.quad	0x3fe48b4ccc11eed5              # double 0.64200439317161317
	.quad	0x3faadd4ca4980fe0              # double 0.052469630329170291
	.quad	0x3fea59bcbff4c92b              # double 0.82345426074451689
	.quad	0x3fd9c95f53754f38              # double 0.40291579389780763
	.quad	0x3fe194f82924aa53              # double 0.54943473850046087
	.quad	0x3fef8df9ac8ec473              # double 0.98608096792862764
	.quad	0x3fd360a145c0025a              # double 0.30277282535101835
	.quad	0x3fba5bdcb1d043b8              # double 0.1029642042269775
	.quad	0x3fd9a5f7a2847812              # double 0.40075484152646468
	.quad	0x3fdbe16eef7bb526              # double 0.43563435923609217
	.quad	0x3faad86d6bc27840              # double 0.052432460216764287
	.quad	0x3fb0a3adf7fba1f0              # double 0.064997551958761113
	.quad	0x3fe7714bd89ffe7d              # double 0.73258011159482772
	.quad	0x3fe4f01997eeec2e              # double 0.65430907892676315
	.quad	0x3fe8e8df2ba5539b              # double 0.77842672848292993
	.quad	0x3fe512dd019a3ea8              # double 0.65855264962188631
	.quad	0x3fdf1726ad47a108              # double 0.48578802987914615
	.quad	0x3fe19d4973c121de              # double 0.55045006378446337
	.quad	0x3fd29a355b1dc41e              # double 0.29066213510583505
	.quad	0x3fef231549a16741              # double 0.97303261166528198
	.quad	0x3fea40d3cf1c6290              # double 0.82041349841445488
	.quad	0x3fefbf4b0655f91e              # double 0.99210120427577286
	.quad	0x3fe790cb15c120e6              # double 0.73642496346385822
	.quad	0x3fe1f9a2598b4c6d              # double 0.56172292222107745
	.quad	0x3fbb962822d6d008              # double 0.10775996065677884
	.quad	0x3fe626a6f47d4853              # double 0.69221828224022841
	.quad	0x3fcf25f6cb484928              # double 0.24334607053658286
	.quad	0x3fef7a85699f7172              # double 0.98370619420488326
	.quad	0x3fd3eb0c11f5bfaa              # double 0.31122113946821151
	.quad	0x3fc3070d93798ff0              # double 0.14865274144096885
	.quad	0x3fe7a8d4b3772dea              # double 0.73935923625816469
	.quad	0x3fb6267994d5a1a0              # double 0.086524580799624662
	.quad	0x3fd1d80541d742c8              # double 0.27880984716197732
	.quad	0x3feace6c81472966              # double 0.83769822358707979
	.quad	0x3fe3fe5d5031914f              # double 0.62480035460297667
	.quad	0x3fed6121a0bfba5d              # double 0.91810685535694925
	.quad	0x3fbfda0d6c7fadb8              # double 0.12442096613783959
	.quad	0x3fe6a260dc1607f0              # double 0.707321576934417
	.quad	0x3fddff5077e4fa9c              # double 0.46870814999048505
	.quad	0x3fca59608a6ca79c              # double 0.20585257300382132
	.quad	0x3fc1f30105feef38              # double 0.14022839348569405
	.quad	0x3fed5427a393ab00              # double 0.91652280758475513
	.quad	0x3fd850a0c1c81c86              # double 0.37992113994591425
	.quad	0x3fb7b9f43f1767e8              # double 0.092681184199505773
	.quad	0x3fed7f6173f1dcb4              # double 0.9217993988558164
	.quad	0x3fe2b313d6759439              # double 0.58436004530506758
	.quad	0x3fde1bbcc57ce3e6              # double 0.4704429558365163
	.quad	0x3fdf9919cfa34dee              # double 0.49371953274859848
	.quad	0x3fc40097f8dd69d4              # double 0.15626811648947003
	.quad	0x3fe8f4cf41abafa7              # double 0.77988398386286384
	.quad	0x3fe668cf70764063              # double 0.70029422726839774
	.quad	0x3fe154422c930644              # double 0.54153546052857182
	.quad	0x3fd16d81d5e59d12              # double 0.27230878723499174
	.quad	0x3fe813e5d8df53e6              # double 0.75242893560300383
	.quad	0x3fbebbac76d592e8              # double 0.12005117322184911
	.quad	0x3fe456b3431a22ab              # double 0.63558352571370358
	.quad	0x3fe8740b95b28b5c              # double 0.76416568029194875
	.quad	0x3fe031dc9ba17c8a              # double 0.50608663937227161
	.quad	0x3fe680e0b0ae8a90              # double 0.70323214061893857
	.quad	0x3fd79fc6741edd96              # double 0.36912690486811905
	.quad	0x3fe43a9e2450f7db              # double 0.63215548604034255
	.quad	0x3fe3afe2389a7d50              # double 0.61522017531744133
	.quad	0x3fd1660c93a13116              # double 0.27185358445127983
	.quad	0x3fd4f99959f47506              # double 0.32773431572589151
	.quad	0x3fe36e62687dd997              # double 0.6072246590472784
	.quad	0x3febcc7cab01ed48              # double 0.8687117900839576
	.quad	0x3fec74019f8c6a3d              # double 0.88916093026939047
	.quad	0x3fce4424ee71e920              # double 0.23645459788151246
	.quad	0x3fdc55f141e651d0              # double 0.44274550853267858
	.quad	0x3f94eb874d714680              # double 0.020429720021928777
	.quad	0x3fd302b16e3300ce              # double 0.29703937303203254
	.quad	0x3fe2ea936b52e1ac              # double 0.59113474809332933
	.quad	0x3fde90fcf5d2f574              # double 0.47759937292342802
	.quad	0x3fe456d8a74b5285              # double 0.63560135531095396
	.quad	0x3fbc04a3111e4ce8              # double 0.1094457546990274
	.quad	0x3fd9dae7dea385c0              # double 0.40398594610277527
	.quad	0x3fe6be22aade0491              # double 0.71070989010344665
	.quad	0x3fdccd66476ec5f6              # double 0.45003659225321202
	.quad	0x3fdfa63f7b38fdd6              # double 0.49452197106799411
	.quad	0x3fd43ed64e11e000              # double 0.31633527397161743
	.quad	0x3fe65cc4bc433de9              # double 0.69882427949954462
	.quad	0x3fe1353dd83ec681              # double 0.53774921641725382
	.quad	0x3fe8c240809a88d7              # double 0.7737123977460908
	.quad	0x3fd4f717f190caf4              # double 0.3275813921965629
	.quad	0x3fe5727e92bf6169              # double 0.67022637044560185
	.quad	0x3fd5fb8aea205a68              # double 0.34347794402984855
	.quad	0x3fdffd7b53264f4c              # double 0.49984629745562326
	.quad	0x3fc7ddae760b3d2c              # double 0.18645268215048227
	.quad	0x3feabc3b4231a573              # double 0.83547747543813811
	.quad	0x3fbaff6fb564fbe0              # double 0.10546014956069838
	.quad	0x3feff7cb4162f783              # double 0.99899828692262848
	.quad	0x3fe70d8ba662b841              # double 0.72040350434486566
	.quad	0x3fd1bfcc146ec192              # double 0.27733137126326668
	.quad	0x3fe0081f69f038aa              # double 0.50099154177748528
	.quad	0x3fe52d55f8849694              # double 0.66178415812165037
	.quad	0x3f7f362a303f6800              # double 0.0076200149523746319
	.quad	0x3fde3d05c3b40de0              # double 0.47247451888708092
	.quad	0x3fe7ac25113573df              # double 0.73976376877874006
	.quad	0x3fe8ef233a48f507              # double 0.77919160255228881
	.quad	0x3fedfe2322cb4d8d              # double 0.9372726134846957
	.quad	0x3fee2ea09f7eff7c              # double 0.94319182540492318
	.quad	0x3fcc2dfc9b8c54d0              # double 0.22015340418935248
	.quad	0x3fe2e35ea47f25b2              # double 0.59025509002929355
	.quad	0x3fc086386898aa88              # double 0.12909607989543681
	.quad	0x3fc98abed4ad7e20              # double 0.1995466745820389
	.quad	0x3fbe1cddfcb04290              # double 0.11762797755387511
	.quad	0x3fc6cee2baa0b72c              # double 0.17818864929852773
	.quad	0x3feee8d9df681427              # double 0.96592420229047071
	.quad	0x3fec964e214b4097              # double 0.89334780218816234
	.quad	0x3fc7421573fa1768              # double 0.18170421755729227
	.quad	0x3fdc0402097b8412              # double 0.4377446262934096
	.quad	0x3fe9a98a110af8ae              # double 0.80194571808512705
	.quad	0x3fe07eaa91fb4766              # double 0.5154621936037358
	.quad	0x3fde26ece298037e              # double 0.47112581375409224
	.quad	0x3feea32f900f430e              # double 0.95742014061588221
	.quad	0x3fca73fbf84c6508              # double 0.20666455863901256
	.quad	0x3fdab1d8752d9cba              # double 0.41710483020001343
	.quad	0x3fb2d58dfe4c01b0              # double 0.073571085533336911
	.quad	0x3fe89bab524a73f5              # double 0.76900259087017153
	.quad	0x3fc444ba6a8ffbe0              # double 0.15834741786235806
	.quad	0x3fe97e6c628a4df6              # double 0.7966825413336085
	.quad	0x3fd34575d31819ae              # double 0.30111451735174455
	.quad	0x3fe5aa6ce17eb479              # double 0.67705387155514452
	.quad	0x3fda1f3aa849e49c              # double 0.40815607485235161
	.quad	0x3fe65e618c561a54              # double 0.69902112397614724
	.quad	0x3fe2180c6c5d65fe              # double 0.5654356113911374
	.quad	0x3fd093fc235a3c36              # double 0.25903228237524745
	.quad	0x3fecb97e26f76be2              # double 0.89764316187517701
	.quad	0x3fe7e215efe576b8              # double 0.74634835104708142
	.quad	0x3fc01cda0fb81d4c              # double 0.1258804871324436
	.quad	0x3fe2caaee2d3fc8a              # double 0.58724159529073572
	.quad	0x3fe37db3d7838cf5              # double 0.60909454433968213
	.quad	0x3fe0a85d27d23cbc              # double 0.52055223252855098
	.quad	0x3fe1a19123519e9e              # double 0.55097252748688041
	.quad	0x3f7bc5dc2c27c300              # double 0.006780490921742155
	.quad	0x3fc689ccd1852c98              # double 0.17608032446364486
	.quad	0x3febfd53fb452f34              # double 0.87467383457394598
	.quad	0x3fef80b73eceebbe              # double 0.98446237818949789
	.quad	0x3f6f0c625f572300              # double 0.00379008496631561
	.quad	0x3fe29cb8604fe4f2              # double 0.58163088618235137
	.quad	0x3fd60fc68f690370              # double 0.3447128677835769
	.quad	0x3feeab476d81c7de              # double 0.95840808284833279
	.quad	0x3fecea84d68b229f              # double 0.90362779524828685
	.quad	0x3fc3d48c88008df4              # double 0.15492397919398082
	.quad	0x3fdc9addd7ae137e              # double 0.4469523054361203
	.quad	0x3fd90b2930005316              # double 0.39130620658515747
	.quad	0x3fe358eaaafc31fa              # double 0.60460408587965664
	.quad	0x3fe5d3cedf8ffd69              # double 0.68210548080962241
	.quad	0x3fe8792677c5cf69              # double 0.76478885071854308
	.quad	0x3fe1a632cd9b92a4              # double 0.55153789670710696
	.quad	0x3fea984720764aef              # double 0.83108860340356994
	.quad	0x3fe747a240aeba0a              # double 0.72749436028772263
	.quad	0x3fd785e22b5ba19e              # double 0.36754659876035045
	.quad	0x3fbdfac8c35a1b50              # double 0.11710791367850715
	.quad	0x3fea83f0cb63a84e              # double 0.82860603069753735
	.quad	0x3feed9d1f61571e5              # double 0.96408937514530335
	.quad	0x3f9351a8b67288c0              # double 0.018866191993432535
	.quad	0x3fe86f00bd828c9b              # double 0.76355015767730394
	.quad	0x3fe3c74918abf8f4              # double 0.61807684725479684
	.quad	0x3fe0d0704d173fd4              # double 0.52544417435455637
	.quad	0x3fe174e3bea91431              # double 0.54551875341770117
	.quad	0x3fe4334457478427              # double 0.63125817343473478
	.quad	0x3fe5d3d527347b21              # double 0.68210847527720742
	.quad	0x3fe80598f12ead81              # double 0.75068328004765317
	.quad	0x3fe021b38796e3c0              # double 0.50411392671878019
	.quad	0x3fefa0bbc31df789              # double 0.98837078198242622
	.quad	0x3fe8be54411e19c5              # double 0.77323353498723491
	.quad	0x3fe1c7bfe7e4f915              # double 0.55563350002174394
	.quad	0x3fe6f6204084652f              # double 0.71754467583665427
	.quad	0x3fe55486db243184              # double 0.66656821061182869
	.quad	0x3fb026d45abd38d8              # double 0.06309249129592176
	.quad	0x3fe4edcf324ca550              # double 0.65402946304417675
	.quad	0x3fe4c705e20bdc81              # double 0.64929479741739737
	.quad	0x3fea04e9ad8fcd96              # double 0.81309970759177719
	.quad	0x3fea39669dcf65e1              # double 0.81950693914694395
	.quad	0x3fe53f5f2c24a14a              # double 0.66398581144043445
	.quad	0x3fda700c5b9c291a              # double 0.41308888384141229
	.quad	0x3fdee21674cafe50              # double 0.48254929929314461
	.quad	0x3fec020a044f71b8              # double 0.87524891702519536
	.quad	0x3fee9d7d558f5437              # double 0.95672480307496854
	.quad	0x3fed83e0d39cc859              # double 0.9223484166198076
	.quad	0x3fe8abffc89b12b8              # double 0.77099599057017709
	.quad	0x3fd30b8b965a03cc              # double 0.29757966692710336
	.quad	0x3fdf5b2b9588d218              # double 0.48993959048246571
	.quad	0x3fe3864d33de4013              # double 0.61014423494816794
	.quad	0x3fd572ac36c950e4              # double 0.33512406683190776
	.quad	0x3fccfcd2d8c36448              # double 0.2264655645765592
	.quad	0x3fcb1ecaf7e9bddc              # double 0.21187722306375079
	.quad	0x3fdf2fb51219b77c              # double 0.48728682296393067
	.quad	0x3fedc9dac5037c0d              # double 0.93089045027943629
	.quad	0x3fd20506754dea88              # double 0.2815567155409231
	.quad	0x3fe51486cdb2dfd4              # double 0.65875568557293684
	.quad	0x3fdeeb125cad8cce              # double 0.48309763956622198
	.quad	0x3fe4a8bd5eabcc01              # double 0.64559811106153131
	.quad	0x3fe0a075ddf657c8              # double 0.51958745338446821
	.quad	0x3fc0c80220dacfec              # double 0.13110376934275736
	.quad	0x3fd938f55c8009ec              # double 0.39410146744935903
	.quad	0x3fd6e3c75af7f530              # double 0.35765251048708802
	.quad	0x3fb4d161b04feb30              # double 0.081319909615484631
	.quad	0x3fe9ba75ba4846e6              # double 0.80401121505039153
	.quad	0x3fd1ef28cfd2e29e              # double 0.28022213263788298
	.quad	0x3f8c8714eaf6f840              # double 0.01392952291541516
	.quad	0x3fecb1c5a5e00e92              # double 0.89670069119934426
	.quad	0x3fec452373ad4d83              # double 0.88343975632817295
	.quad	0x3fb4bc6d75ba8850              # double 0.081000176660866118
	.quad	0x3fe665af583b8a8e              # double 0.69991271241117814
	.quad	0x3fdb53f4f367ad36              # double 0.42699931879060971
	.quad	0x3fdaac8c285608a4              # double 0.41678146304196617
	.quad	0x3fe6ae1bc22584fd              # double 0.70875347060442062
	.quad	0x3fdf8bb7d9d6ca58              # double 0.49290272019712722
	.quad	0x3fe159b26ee891bf              # double 0.54219934140979109
	.quad	0x3fe18cfcc5f1d887              # double 0.54846037541462145
	.quad	0x3fc76dca4d71c110              # double 0.18303803235495097
	.quad	0x3fd35cd64465f0fa              # double 0.30254131965172315
	.quad	0x3fc97c8342c3ba44              # double 0.19911232719410255
	.quad	0x3fb9f50181296528              # double 0.10139474299775897
	.quad	0x3fe178ee92e28a6a              # double 0.54601219833814452
	.quad	0x3fe4e1a28e052dfe              # double 0.65254333246542706
	.quad	0x3fed5926cb77854d              # double 0.9171327566111046
	.quad	0x3fe74dacf3a9b4c2              # double 0.72823188391125648
	.quad	0x3fdf9ca0c17dddfc              # double 0.49393481155081509
	.quad	0x3fe576b0eb4b5f45              # double 0.67073865848485836
	.quad	0x3fe58654d3717a8f              # double 0.67264787004008209
	.quad	0x3fdc1ecd343e8afa              # double 0.43937997915251936
	.quad	0x3fedba6769558f55              # double 0.92900438855256573
	.quad	0x3fec4832057c4284              # double 0.88381291457524513
	.quad	0x3fe4645db1bcfc2f              # double 0.63725170816895182
	.quad	0x3fd25b8ad52249b2              # double 0.28683729947911296
	.quad	0x3fec08805ccee0cd              # double 0.87603777052484022
	.quad	0x3fd82eab9683b16c              # double 0.3778485269420091
	.quad	0x3fae2f76c9064700              # double 0.058955871619344791
	.quad	0x3fe4e0193b96f8c3              # double 0.65235578192348276
	.quad	0x3fed51a8463b8425              # double 0.91621793477327584
	.quad	0x3f95e9d85daa7940              # double 0.021399861065782178
	.quad	0x3fd0a121cb1dce7c              # double 0.2598347171362787
	.quad	0x3fd1a50b5bab5ff8              # double 0.27569850875943258
	.quad	0x3fe948c77b7e0818              # double 0.79013418311683647
	.quad	0x3fc5cc77268b1f0c              # double 0.17030228979114559
	.quad	0x3fe0921dda6081d8              # double 0.51783650066141274
	.quad	0x3fe914eb63acbfcd              # double 0.78380364864096352
	.quad	0x3fe46a121ef4f3c9              # double 0.63794809385546458
	.quad	0x3fd89cec6f81959a              # double 0.38457785500789898
	.quad	0x3fe5cd35e4d0a195              # double 0.68130011263297041
	.quad	0x3fb86d12166b0eb0              # double 0.09541428611106073
	.quad	0x3fe50b1922dffa20              # double 0.65760475932603768
	.quad	0x3fee143538c6c9ea              # double 0.93996678437389147
	.quad	0x3fdd55305a5674d8              # double 0.45832451650660522
	.quad	0x3fd78b953bb244d0              # double 0.36789446668360615
	.quad	0x3fb042122f1c0870              # double 0.063508163930267036
	.quad	0x3fe6c181f86e41ba              # double 0.71112154504412861
	.quad	0x3fe117dfe7a09465              # double 0.53416438331317961
	.quad	0x3fe7c0f1c8a081b6              # double 0.74230279145199662
	.quad	0x3fe932da0deb2171              # double 0.78745749205067572
	.quad	0x3fddec332bb2c2e8              # double 0.4675414969197349
	.quad	0x3fe4ae87662eeb85              # double 0.64630479772255056
	.quad	0x3feb742bf1ee57ac              # double 0.85793111087945339
	.quad	0x3fe83d626abbe964              # double 0.75749321791162715
	.quad	0x3f99e45312ab12a0              # double 0.025285051359576927
	.quad	0x3fdf9cc9d52ce9ac              # double 0.49394460504449955
	.quad	0x3fae3b4c398fa330              # double 0.059046155954837309
	.quad	0x3fee8c53e31bff25              # double 0.95462984425828223
	.quad	0x3fbdfeeacba3a120              # double 0.11717097732219317
	.quad	0x3fc6cd6f49da9dc4              # double 0.17814437013769979
	.quad	0x3fcc84748ebecbf0              # double 0.22279221506104774
	.quad	0x3fdfde0326cdbf6a              # double 0.49792555608200095
	.quad	0x3fd8c88d5c5b6eea              # double 0.38724073428396244
	.quad	0x3fb3bd7022ca9cf8              # double 0.077109344953544823
	.quad	0x3fd89735e16fa554              # double 0.38422915473218677
	.quad	0x3fdc1427982d58ee              # double 0.43873014317558912
	.quad	0x3fee3577bcf77b90              # double 0.94402682216228762
	.quad	0x3fe6a919d6d34dde              # double 0.70814220388495719
	.quad	0x3fd3fd18ef233dae              # double 0.31232283929144955
	.quad	0x3fda6fc97084f1ec              # double 0.41307292926992889
	.quad	0x3fcdb8ca47cf8268              # double 0.23220184809089806
	.quad	0x3fe483d4a70c75b3              # double 0.64109261156743569
	.quad	0x3fdde531cee73008              # double 0.46711392598513202
	.quad	0x3fdd234a85d058fc              # double 0.45527899806747008
	.quad	0x3fe17380e863690f              # double 0.54534955395073037
	.quad	0x3fd1daa7c7793834              # double 0.27897066573939644
	.quad	0x3fd13e6da1548f56              # double 0.26943531756318373
	.quad	0x3fe9b906a8172d49              # double 0.8038361819284684
	.quad	0x3feb97b8ef4b315b              # double 0.86227080094389963
	.quad	0x3fe56bfd3424dc7c              # double 0.66943226036427417
	.quad	0x3fe6aca1c4fff831              # double 0.70857323147334317
	.quad	0x3fe9385b8b88dee7              # double 0.78812958958493773
	.quad	0x3fe969a357e63e01              # double 0.7941452709946476
	.quad	0x3fabedb0960e36b0              # double 0.054547804181408366
	.quad	0x3fe395f3f6d6d0da              # double 0.61205480776564092
	.quad	0x3fc84855636f1a84              # double 0.18970744471717549
	.quad	0x3fc9bc060f6a7e8c              # double 0.20105052712186866
	.quad	0x3fe3d77726f239b9              # double 0.62005193335226416
	.quad	0x3fe36720bf4d1bbd              # double 0.60633885730282311
	.quad	0x3fd7af54ef76693a              # double 0.37007640252126672
	.quad	0x3fa901eaa2059870              # double 0.048842746999796627
	.quad	0x3fc887730e123eb0              # double 0.19163358866761859
	.quad	0x3fc5a01bfc79eb28              # double 0.16894864871923088
	.quad	0x3fee919e5433b296              # double 0.95527569242183819
	.quad	0x3fed82f222258ecf              # double 0.92223459882048953
	.quad	0x3fe83e15e7dc5af8              # double 0.7575788048296479
	.quad	0x3fe34194c0628c4e              # double 0.60175550055681426
	.quad	0x3fe4e06000a4149b              # double 0.65238952756103019
	.quad	0x3fe915eaaf8aff56              # double 0.78392538343175988
	.quad	0x3fe10f39d70d5cb0              # double 0.53310863497144645
	.quad	0x3feb1758519c7587              # double 0.84659973087006868
	.quad	0x3feb8ca28e05283d              # double 0.86091735590276353
	.quad	0x3f95e602fdc781e0              # double 0.021385237445317062
	.quad	0x3fd3f280b42a1e6e              # double 0.31167619318191597
	.quad	0x3fc3b1fb95e2644c              # double 0.15386910265513831
	.quad	0x3fe7a4d8f12018b3              # double 0.73887297720718548
	.quad	0x3fe3c0bb29306324              # double 0.61727674526909881
	.quad	0x3fd8fa983d5dc28e              # double 0.39029508583829731
	.quad	0x3fe5b526b95bb3fa              # double 0.67836319163109171
	.quad	0x3fd5ede0c18ced0c              # double 0.34264391805091132
	.quad	0x3fe23d00ae1ae82c              # double 0.56994661335852959
	.quad	0x3fb7f6e3089f1638              # double 0.093610944371072757
	.quad	0x3fc495f3ef524c18              # double 0.16082619844073132
	.quad	0x3fe12b7bcf94c4b8              # double 0.53655806105793769
	.quad	0x3fe8c02331fa7491              # double 0.77345428239245184
	.quad	0x3fe850a64ffbfa20              # double 0.75984492895060284
	.quad	0x3fe6b66b4755da9b              # double 0.70976795132340287
	.quad	0x3fe18e608c6047b6              # double 0.54863002221303847
	.quad	0x3fca0bf0810b6950              # double 0.20348936367993042
	.quad	0x3fe274dca2e99eea              # double 0.5767653638731336
	.quad	0x3fc8917658dd8a20              # double 0.19193915690546337
	.quad	0x3fe5e9511a4874cc              # double 0.68473105557827685
	.quad	0x3fd959b82afd7742              # double 0.39610103796245621
	.quad	0x3fe9e5f002c43bec              # double 0.80931854763354982
	.quad	0x3fcddf2b4edcf1b8              # double 0.23337308264480128
	.quad	0x3fdca340b5f7c726              # double 0.44746415872860934
	.quad	0x3fe8e30e58b0d2cc              # double 0.77771680185704772
	.quad	0x3fe2b868239d8aff              # double 0.5850105949033092
	.quad	0x3fe0b36fe1a74e2b              # double 0.52190393517452571
	.quad	0x3f99b1f8cccf6c40              # double 0.025092971325517022
	.quad	0x3fe6a765f0233786              # double 0.70793435003155092
	.quad	0x3fdf29b623540dba              # double 0.48692086648972188
	.quad	0x3fe1404753d93a49              # double 0.53909651161831917
	.quad	0x3fed3096a5b564d9              # double 0.91218120922999468
	.quad	0x3fde68402204a986              # double 0.47511294672099103
	.quad	0x3fe6ee7b55fa4b53              # double 0.71661154549142692
	.quad	0x3fef8fa443e2768d              # double 0.98628438242640614
	.quad	0x3fae40442c83b840              # double 0.05908406299009572
	.quad	0x3fd1c5e5ee65554a              # double 0.27770374565928491
	.quad	0x3fe32503582ab17e              # double 0.59826819629738259
	.quad	0x3fe4714b6b8a6add              # double 0.63882990840951559
	.quad	0x3fdce3eea020b6e6              # double 0.45141187322120258
	.quad	0x3fc9763f5f7058a4              # double 0.19892112884617064
	.quad	0x3feab7e0690b4aa1              # double 0.83494587437083478
	.quad	0x3fea344ae6d1112a              # double 0.81888337212925433
	.quad	0x3f864f899b6d1740              # double 0.010893893295029877
	.quad	0x3fe038a80f3981b1              # double 0.506916074500671
	.quad	0x3fe2fd2fce9c8a0a              # double 0.59340658525280898
	.quad	0x3fa134086853c3a0              # double 0.033600104079489101
	.quad	0x3fd2ed7e09a082d0              # double 0.29574538173805553
	.quad	0x3fe63c3b0dac5eef              # double 0.69485237761088381
	.quad	0x3fe95d3f8ed9c762              # double 0.79263284588362759
	.quad	0x3fec3c4c52571ac6              # double 0.88236061174469493
	.quad	0x3fba86c2a32eb960              # double 0.10361877902935168
	.quad	0x3fcf37bbbfdd1eec              # double 0.24388834827754324
	.quad	0x3fc7d3984eb626a8              # double 0.18614486544929787
	.quad	0x3fcc2e3c0d73c23c              # double 0.22016096741528368
	.quad	0x3fed480231497c28              # double 0.91504010797860236
	.quad	0x3fc34e83e9fe39a0              # double 0.15083359647219385
	.quad	0x3fef331f84fcca46              # double 0.97499061559785427
	.quad	0x3fd8961335556fa0              # double 0.38415985306141387
	.quad	0x3fc024b447b35fdc              # double 0.12612012387285076
	.quad	0x3fc85716a0a96b0c              # double 0.19015772671522091
	.quad	0x3fe9a0dd9a0ca340              # double 0.80088691795126721
	.quad	0x3fef0d49fa5fa8d5              # double 0.9703721895323506
	.quad	0x3fd4b09a1cf5b122              # double 0.32327893093203575
	.quad	0x3fe67ad537ea6561              # double 0.70249424859063592
	.quad	0x3fb67fecce58b3f8              # double 0.087889480950891996
	.quad	0x3fe15803cdedb7b8              # double 0.54199400158335376
	.quad	0x3fdc141439bee73e              # double 0.43872552527647091
	.quad	0x3fb4937e300505f0              # double 0.080375563357868662
	.quad	0x3fa0af3852eb69e0              # double 0.03258682262613255
	.quad	0x3fba63c63913e320              # double 0.10308493512628703
	.quad	0x3fe3325885c0ef48              # double 0.59989572643051137
	.quad	0x3fcc6ff34ff2fc38              # double 0.22216645625846509
	.quad	0x3fd53db64b9a987a              # double 0.33189160712425514
	.quad	0x3fdd6fcca5e330be              # double 0.45994869422862539
	.quad	0x3fd30adee750cc28              # double 0.29753849591651482
	.quad	0x3fee388f31b41c2a              # double 0.9444042177937082
	.quad	0x3fe183f9f42300b4              # double 0.54736039812998749
	.quad	0x3fe8991bb6585255              # double 0.76868997205981293
	.quad	0x3fcfa29a035606e4              # double 0.24714970744030673
	.quad	0x3fc1aa5fb6adc768              # double 0.13801189823021365
	.quad	0x3fefe44a203155cc              # double 0.99661737716331222
	.quad	0x3feb0d1e218eb405              # double 0.84535128168283846
	.quad	0x3fe59d53df2b362d              # double 0.67545503223090508
	.quad	0x3fd20681b2dde22a              # double 0.28164713351682968
	.quad	0x3fec4d9314fed0e5              # double 0.88446954823168922
	.quad	0x3fd748edc2d2c9e2              # double 0.36382621789667102
	.quad	0x3fbd196ca8444f88              # double 0.11366919620587457
	.quad	0x3fea69a82251a1e2              # double 0.82539755537896675
	.quad	0x3fea0088aa4c12f2              # double 0.81256516705670223
	.quad	0x3fc20b1b659baf64              # double 0.14096395932517247
	.quad	0x3fc17d261ca511f4              # double 0.13663174055740479
	.quad	0x3fd39f66997bc1a0              # double 0.30660405148139525
	.quad	0x3fd20591ad484f44              # double 0.28158990785708604
	.quad	0x3fd1141d9c318288              # double 0.26685276273023151
	.quad	0x3fea569cfbe439db              # double 0.82307290265617483
	.quad	0x3fd13fea3d77ff3e              # double 0.2695260620384835
	.quad	0x3fe39f6da8080954              # double 0.61321146792060199
	.quad	0x3fe03f40c365f100              # double 0.50772131122315045
	.quad	0x3fa8fe5f42683b70              # double 0.048815705162374878
	.quad	0x3fc5b1396afd5488              # double 0.1694709560785308
	.quad	0x3fb825b49b9a2800              # double 0.094325340260326129
	.quad	0x3fe9b61514eddaa0              # double 0.8034768494388409
	.quad	0x3feb9c11bb891809              # double 0.86280142429382167
	.quad	0x3fd1bd8f0b95e598              # double 0.27719474917793141
	.quad	0x3fee746f2c8847fd              # double 0.95171316812252338
	.quad	0x3fc47a3044eefedc              # double 0.15997889867684634
	.quad	0x3fd7c1977d4e49cc              # double 0.37119090306182723
	.quad	0x3fc6c4e7c6717410              # double 0.17788407506569159
	.quad	0x3fcf1a198e8c9b18              # double 0.24298400364315209
	.quad	0x3fe08de8899ebc45              # double 0.51732279662054081
	.quad	0x3fe8cf4035c96127              # double 0.77529917245104663
	.quad	0x3fd81b81b6ee0696              # double 0.37667887558209523
	.quad	0x3fe6496d7e5ceed1              # double 0.69646334343220861
	.quad	0x3feefa7d70a5504a              # double 0.96807739258884706
	.quad	0x3fd64fe580ab05d4              # double 0.34862649502983101
	.quad	0x3fdcaf60aa3917f8              # double 0.44820419905988684
	.quad	0x3fef56809cd4311d              # double 0.97930937414779217
	.quad	0x3fdf87d030f4906e              # double 0.492664382751406
	.quad	0x3fe527cdd552d513              # double 0.66110889115103288
	.quad	0x3fd1dbeb8dc465ea              # double 0.27904785961581402
	.quad	0x3fe4d26c267423a9              # double 0.65068633566362621
	.quad	0x3fd16fe5e7ce4644              # double 0.27245471608430116
	.quad	0x3fe4e311ed928246              # double 0.65271850968208223
	.quad	0x3fd36098d16c07fe              # double 0.30277080966345682
	.quad	0x3fdfecf838a37d52              # double 0.49883847743145282
	.quad	0x3fe8932321636704              # double 0.76796108742857471
	.quad	0x3fc1d6d6fbeca4b4              # double 0.13936888981814877
	.quad	0x3fee94d53e5d02d2              # double 0.95566808872544073
	.quad	0x3fd1ff05e5375322              # double 0.28119037041078532
	.quad	0x3fead4e92431a99e              # double 0.83849007672442943
	.quad	0x3fe7a13ccf5d3a0b              # double 0.73843231678785182
	.quad	0x3fcd76696c4c5424              # double 0.23017614162441291
	.quad	0x3fdc843046c1c9de              # double 0.44556815061437571
	.quad	0x3fefb95b45ec9454              # double 0.99137653023775351
	.quad	0x3fed0bdd367479d5              # double 0.90769825587977471
	.quad	0x3fee74c60b5d1549              # double 0.95175459117368988
	.quad	0x3fe884273c772231              # double 0.76613199052468961
	.quad	0x3fd646e80f18fea8              # double 0.34807778810862056
	.quad	0x3fc131f99baa9e18              # double 0.1343376169290742
	.quad	0x3fef1f56fe656bbe              # double 0.97257566153290731
	.quad	0x3fe69d1a89f1db21              # double 0.70667769377073253
	.quad	0x3fd2ef0b9f83f294              # double 0.29584017350843195
	.quad	0x3fe3039beb521c0c              # double 0.59419055901605722
	.quad	0x3fe2257740f1eca2              # double 0.56707346615384702
	.quad	0x3fd3f2623433a880              # double 0.31166892144995728
	.quad	0x3fecbdad3595c6d5              # double 0.89815388170083088
	.quad	0x3fdcc7e804ba409c              # double 0.44970131360697407
	.quad	0x3fc8df935068473c              # double 0.194322981130023
	.quad	0x3fe4f9c0fad4973e              # double 0.65548752775496388
	.quad	0x3fd0809c48b576ec              # double 0.25784976101372936
	.quad	0x3fc17028e1f40ae0              # double 0.13623534233928236
	.quad	0x3febdd8c1a393514              # double 0.87079434510966047
	.quad	0x3fecf1139393af95              # double 0.90442828010189891
	.quad	0x3fd646cc4c483700              # double 0.34807116937086846
	.quad	0x3fe1489685e05baf              # double 0.54011083743795563
	.quad	0x3fe65cb95cfdabc3              # double 0.69881885683332035
	.quad	0x3fa0669181783780              # double 0.032032534651178501
	.quad	0x3fb1442e63c29fe8              # double 0.067446612697153463
	.quad	0x3fdbf5ba239fa9aa              # double 0.4368729923141027
	.quad	0x3fe27af3971d7958              # double 0.57750873102831246
	.quad	0x3fe61a801aa3c14f              # double 0.69073491290149913
	.quad	0x3fe28d0b327d7da0              # double 0.57971725331656287
	.quad	0x3fd05b1b71f03930              # double 0.25556074263376427
	.quad	0x3fe625a3fc6a49d1              # double 0.69209479617921421
	.quad	0x3fbf3d44699cdd58              # double 0.12202861383854235
	.quad	0x3fba9f1c58dc5e20              # double 0.10399033708051109
	.quad	0x3fefef199a3e8642              # double 0.99793701291873327
	.quad	0x3feaddfe87aa1d42              # double 0.83959890839552309
	.quad	0x3fa6761024557940              # double 0.043869499621666197
	.quad	0x3fe6f8c535078b03              # double 0.71786747319524158
	.quad	0x3fe670b4fe499495              # double 0.70125817933571233
	.quad	0x3fd0656ecc04342a              # double 0.2561909668300496
	.quad	0x3fb102dbf1eea628              # double 0.066449877324565976
	.quad	0x3fe150f822879060              # double 0.54113394493152711
	.quad	0x3fe1aad85181ad78              # double 0.55210510176895777
	.quad	0x3fa67ad4f19b4c50              # double 0.043905882351872649
	.quad	0x3fac1f3845189a40              # double 0.054925688204367606
	.quad	0x3fa7fe796403b2f0              # double 0.046863358935160693
	.quad	0x3f8c261f2a9b0200              # double 0.013744586456028607
	.quad	0x3fe5e04630862847              # double 0.68362721898416445
	.quad	0x3fc64941b63cb6f0              # double 0.1741106166677393
	.quad	0x3fe660dc6e0bc3ba              # double 0.69932385915136952
	.quad	0x3fe9030ea5a9f504              # double 0.78162319523076506
	.quad	0x3fcea29beb09cd60              # double 0.23933743454436307
	.quad	0x3fe5bc788dcca9fe              # double 0.67925670333107724
	.quad	0x3fd1c5bfb4c83088              # double 0.27769463209620726
	.quad	0x3fe0ff57b5d68a54              # double 0.53116975322002213
	.quad	0x3fe77a5b2933a847              # double 0.73368604705070417
	.quad	0x3fd6994808760c7c              # double 0.35310555292398482
	.quad	0x3fe040af70f99c57              # double 0.50789615693509915
	.quad	0x3fc1ced7147bcc68              # double 0.13912476062941725
	.quad	0x3fb1bd6dcf2f2a10              # double 0.069296706277931941
	.quad	0x3fbbcf1a6937f480              # double 0.10862889355481009
	.quad	0x3fcbf5b037cdf6c0              # double 0.21843531346160283
	.quad	0x3fbd217d252b60f8              # double 0.11379224927384601
	.quad	0x3fef2adb41db7f62              # double 0.97398150313163634
	.quad	0x3fe5cb2be1507ce8              # double 0.68105119711608797
	.quad	0x3fcb22c0ac10c0fc              # double 0.21199806596406023
	.quad	0x3feabf0133110ba4              # double 0.83581600164358293
	.quad	0x3fe158719d4e1093              # double 0.54204636310216114
	.quad	0x3fee8104f1f076d2              # double 0.95324942830822068
	.quad	0x3fd05daaee986a18              # double 0.25571702289895049
	.quad	0x3fd52e672fe37700              # double 0.33095721890082075
	.quad	0x3fe34a9febd3cbad              # double 0.60285945949578024
	.quad	0x3fec3e1da45772ec              # double 0.88258249376266695
	.quad	0x3fcfe6356bccc368              # double 0.24921291125931622
	.quad	0x3fd2bc92d895085e              # double 0.29275962019540269
	.quad	0x3fb40cd16ae68520              # double 0.07832058772921302
	.quad	0x3fd6f46be90924ac              # double 0.3586683059443867
	.quad	0x3fec4155a806993d              # double 0.88297541444334338
	.quad	0x3fd9678932798cd8              # double 0.39694433144741259
	.quad	0x3fef6f788c4704f7              # double 0.98235728643353936
	.quad	0x3fb99966c2b4a980              # double 0.099996969733785689
	.quad	0x3fef34becc96f6c8              # double 0.97518863638807662
	.quad	0x3fda09e9c1d9f760              # double 0.40685504847339438
	.quad	0x3fe5feb74c1c639f              # double 0.68734326234254073
	.quad	0x3fdf22a876f7730e              # double 0.48649036043006866
	.quad	0x3fdc3ad206a10f94              # double 0.44109011313798274
	.quad	0x3fe39f5aefed7445              # double 0.61320254193163548
	.quad	0x3fdcea0d3281eeb4              # double 0.45178537304284849
	.quad	0x3fe30553d42138e0              # double 0.59440032416912558
	.quad	0x3fe36795f7c16e5f              # double 0.60639475240482088
	.quad	0x3fead2c30748754e              # double 0.8382277624365686
	.quad	0x3fe3bfbabaf9f204              # double 0.61715446966951548
	.quad	0x3fe2351c6c9f040a              # double 0.56898328032559786
	.quad	0x3fe8e7759f2ae4e9              # double 0.77825432860768473
	.quad	0x3fe8c1ec707d59ab              # double 0.77367231341013587
	.quad	0x3fddada3afdfecce              # double 0.46372310805572858
	.quad	0x3fa23a7ecc6879d0              # double 0.035602533771669109
	.quad	0x3fec8e7238622642              # double 0.89238844883329471
	.quad	0x3fe4d36bfa04d68c              # double 0.65080832320991666
	.quad	0x3fe463ec9318490b              # double 0.63719776849237186
	.quad	0x3febac22e6796b13              # double 0.86476273550519733
	.quad	0x3fc7345bf939b694              # double 0.18128537816248935
	.quad	0x3fced1d80b24be84              # double 0.24077892822377944
	.quad	0x3fe9b34e15f52130              # double 0.80313782013494084
	.quad	0x3fda09e84bfd8f76              # double 0.406854700288242
	.quad	0x3fd4089e7a1cf390              # double 0.31302606511217679
	.quad	0x3fed7ffc0661aac5              # double 0.92187310453785953
	.quad	0x3fe6784e9cdf8e9d              # double 0.70218592299757498
	.quad	0x3fc895eb1c5968b4              # double 0.1920751465248195
	.quad	0x3feda28c5c754546              # double 0.92609232004375808
	.quad	0x3fe880b80f20fcc0              # double 0.76571276621680084
	.quad	0x3fd02f93754e406c              # double 0.252903809124297
	.quad	0x3fd352e054ff9e9e              # double 0.3019333677352537
	.quad	0x3fe23a9afe1c6161              # double 0.56965398436572567
	.quad	0x3fd240f9547cdd54              # double 0.28521569491154719
	.quad	0x3fc5471b4ff72060              # double 0.16623250393445499
	.quad	0x3fb34d570d989728              # double 0.075398865527486536
	.quad	0x3feb2e1a881e9ba7              # double 0.84937788568355621
	.quad	0x3feb852c5a793c1d              # double 0.86000650091762376
	.quad	0x3fdf8ff43b2b83ae              # double 0.49316125658338705
	.quad	0x3fef819e82b4c77e              # double 0.98457265404270777
	.quad	0x3fefd50420b04342              # double 0.99475294479825771
	.quad	0x3fc99ada195be1cc              # double 0.20003820646503667
	.quad	0x3fedbfaa075cbcdb              # double 0.92964650571766627
	.quad	0x3fcd8f00239ad158              # double 0.2309265302516319
	.quad	0x3feff2b3edd7dfcb              # double 0.99837681249391019
	.quad	0x3fbffbdfb3f95740              # double 0.12493703979393178
	.quad	0x3fdcbd9277f585b8              # double 0.44907056536439027
	.quad	0x3fcb840f8d2af220              # double 0.21496767418820273
	.quad	0x3febeb7d42faabe5              # double 0.87249625284073018
	.quad	0x3fe80e467117b1ea              # double 0.75174257362737973
	.quad	0x3fe338dd3983d4e5              # double 0.60069142564193767
	.quad	0x3fed86db94b19f6f              # double 0.92271212617650444
	.quad	0x3fe4ae368cef1cb9              # double 0.64626624609163408
	.quad	0x3fdba176be8d8ec0              # double 0.43172997101485677
	.quad	0x3fe2e2353dc072f4              # double 0.59011327801598989
	.quad	0x3fe995abd560474d              # double 0.79952041316048794
	.quad	0x3fc2c4644f715fec              # double 0.14661840323492414
	.quad	0x3fe33bae0e83a623              # double 0.60103514513793177
	.quad	0x3fc2da251d9f79a8              # double 0.14728225656922445
	.quad	0x3fdeac9cf3c00382              # double 0.47928546718326726
	.quad	0x3fd24eea16b66300              # double 0.28606655328762542
	.quad	0x3fcf4f6c927b705c              # double 0.24461133148622849
	.quad	0x3fd8c29cad544afa              # double 0.38687817503630095
	.quad	0x3fe1a24a6d577cba              # double 0.55106088023958155
	.quad	0x3fd66a50ad5efb5c              # double 0.35023896151317557
	.quad	0x3fe0fa2b8e831c7d              # double 0.53053834757237406
	.quad	0x3fea36950a443d26              # double 0.81916286473452682
	.quad	0x3fe89c7f126a912d              # double 0.76910356137208213
	.quad	0x3fe43d51a48fd882              # double 0.63248521939273439
	.quad	0x3fec92858b2ca1b0              # double 0.89288594419945433
	.quad	0x3fee8d575b85f447              # double 0.95475356937061739
	.quad	0x3f4075cf47fd9800              # double 5.0232525971405373E-4
	.quad	0x3fe05f6c1e93eb67              # double 0.51164823505619672
	.quad	0x3fc68e6e10962f8c              # double 0.17622161683936743
	.quad	0x3fa5146762e7eb90              # double 0.041171294043997553
	.quad	0x3fe184f3cb8a7ae3              # double 0.54747953180398345
	.quad	0x3fe89d1512817726              # double 0.76917508711241989
	.quad	0x3fdcc4c6343e8b1c              # double 0.44951014615996754
	.quad	0x3fe37eb84c8333be              # double 0.60921873992776177
	.quad	0x3fee81f278e23fa2              # double 0.95336269006837804
	.quad	0x3fcf7449fdf10040              # double 0.24573635959132112
	.quad	0x3fe375deda8e3f48              # double 0.60813849150324817
	.quad	0x3fe86a48b85f5eb6              # double 0.7629741288210059
	.quad	0x3fe935422e906ce2              # double 0.7877512845474508
	.quad	0x3fe2ad60c9b4ba9d              # double 0.58366431613633873
	.quad	0x3fe63c25874c8af1              # double 0.69484211373887039
	.quad	0x3fe10fd2aec84000              # double 0.53318151604798913
	.quad	0x3fe049bdb848e690              # double 0.50900159829252978
	.quad	0x3fe87904c5eeab7a              # double 0.76477278383877878
	.quad	0x3f9aabcf3e7a58e0              # double 0.026046026409482503
	.quad	0x3fd7c2e83fca3c38              # double 0.37127119283190124
	.quad	0x3fe0fe5c50c9e352              # double 0.53104987887409494
	.quad	0x3fe760eaf7ffe70a              # double 0.73058079183030711
	.quad	0x3fe7d0baf680969c              # double 0.74422977585773564
	.quad	0x3faf5a363ef05380              # double 0.061235137160259079
	.quad	0x3fe00b5777665e90              # double 0.50138448066987173
	.quad	0x3fe32bee643ee1bc              # double 0.5991126974031924
	.quad	0x3feab7f718818f30              # double 0.83495669161172792
	.quad	0x3fd4067579c2751c              # double 0.31289421930871852
	.quad	0x3fec56fd47d08e17              # double 0.88561882044126861
	.quad	0x3fd0d0d57748a30c              # double 0.26274620674898652
	.quad	0x3fc9973c1b3f9ad4              # double 0.19992781954279926
	.quad	0x3fd6e9365566bcfc              # double 0.35798414554569979
	.quad	0x3fdb8c9852dd9342              # double 0.43045623867356053
	.quad	0x3fae7830243989f0              # double 0.05951071207234182
	.quad	0x3fd060fc7f9d3ee0              # double 0.25591957533195675
	.quad	0x3fc01714e56c0068              # double 0.12570439531555455
	.quad	0x3fcac2b56eb5279c              # double 0.20906703858991882
	.quad	0x3fdbe859116225a2              # double 0.43605639169308053
	.quad	0x3fe71e0c99c26b36              # double 0.72241811782018917
	.quad	0x3fa7af5a299c9c40              # double 0.04625970609622998
	.quad	0x3fc10ca712eb9eb8              # double 0.13319862769934843
	.quad	0x3febb444f25efd6e              # double 0.86575553262802685
	.quad	0x3fdd38f349f86884              # double 0.45660097335497363
	.quad	0x3fe96851a43d9219              # double 0.79398424223160469
	.quad	0x3fd2debbff8fee26              # double 0.29484462697266378
	.quad	0x3f99189d8bcdc760              # double 0.024507962854335985
	.quad	0x3fc2c2c8971cf69c              # double 0.14656932238169851
	.quad	0x3fdb6d8eeda11d02              # double 0.42856190877905942
	.quad	0x3feb65444e39cbab              # double 0.85611167219609763
	.quad	0x3fc315b16a87221c              # double 0.14909951879077787
	.quad	0x3fcf2484d306e104              # double 0.24330196670576509
	.quad	0x3fedaf7d9e67ee16              # double 0.92767220438639941
	.quad	0x3fee4aa62a0ad905              # double 0.94661243640328563
	.quad	0x3fa48281bb7922d0              # double 0.040058187613401963
	.quad	0x3fedd82e42ea174e              # double 0.93263924664709363
	.quad	0x3fee13f4b0852e13              # double 0.9399360129986597
	.quad	0x3fd60135764573e2              # double 0.34382378148967352
	.quad	0x3fe3dbef4353b4ff              # double 0.62059748792458425
	.quad	0x3fe8983e00f97f92              # double 0.76858425321914781
	.quad	0x3fda69c014f43eb8              # double 0.41270448728844711
	.quad	0x3fe0535751b48e66              # double 0.51017347295824034
	.quad	0x3fb22ec9bd5b0b68              # double 0.071026428918271045
	.quad	0x3fe47a5908051988              # double 0.6399350315703467
	.quad	0x3fdf1f0bf77a0df2              # double 0.48626994292882764
	.quad	0x3fe023f449dbb8bb              # double 0.50438894677588253
	.quad	0x3fc9cf34b6a8f9f0              # double 0.20163592261265206
	.quad	0x3fd44d3fe412c280              # double 0.31721493981152804
	.quad	0x3fe79be5ffc9aa17              # double 0.73778057058854329
	.quad	0x3fe869e2e6b6185f              # double 0.76292557774355518
	.quad	0x3fea7cb934ce22ef              # double 0.82772503198165548
	.quad	0x3fd8c71788c9e9f0              # double 0.38715160711549768
	.quad	0x3fcf4ae92fc86264              # double 0.24447359879629282
	.quad	0x3fe8725d63f2f251              # double 0.76396054765025145
	.quad	0x3fefd3f773a36db7              # double 0.9946248301088677
	.quad	0x3fdcebe3f3de363c              # double 0.4518976098559937
	.quad	0x3feba6fb483ebfcd              # double 0.86413349256872041
	.quad	0x3fefb1e51c0a1020              # double 0.99046569324901057
	.quad	0x3fe788ad00ccf730              # double 0.73543405681968999
	.quad	0x3fcbe3f01e9778c4              # double 0.2178936147092313
	.quad	0x3fe1a868d757b9c5              # double 0.55180780467144841
	.quad	0x3feccfc126a867fa              # double 0.90036065626486494
	.quad	0x3faddcc8323b5740              # double 0.058325058109103711
	.quad	0x3fcdbd40da1b4890              # double 0.23233805322394518
	.quad	0x3fcf7657d9588ed0              # double 0.24579904663652608
	.quad	0x3fefc3d00bad5eff              # double 0.99265291481694351
	.quad	0x3fcfdc191b61fb64              # double 0.24890436017082174
	.quad	0x3f600ae9ea001800              # double 0.0019583290704785483
	.quad	0x3fddd42df4efbfae              # double 0.46607541007596864
	.quad	0x3fd652b9e7fb5912              # double 0.34879920629954697
	.quad	0x3fddbc2e1792afa2              # double 0.46461059858369869
	.quad	0x3fd8c55597fa0e8a              # double 0.38704433289988371
	.quad	0x3fe85ac9ae58c5d8              # double 0.76108249713996212
	.quad	0x3fcd9a96fe24e098              # double 0.23128020676972905
	.quad	0x3fe161786f3897ac              # double 0.54314824793686034
	.quad	0x3f91e15514985d40              # double 0.017461137182263942
	.quad	0x3fee2d7165fd3064              # double 0.94304723663072964
	.quad	0x3feae0eb70c89ef7              # double 0.83995601680814402
	.quad	0x3fcfe22b16f1ae3c              # double 0.24908960933986346
	.quad	0x3fdd6b85d121e1aa              # double 0.45968766615944878
	.quad	0x3fd7c907a5b2e0e8              # double 0.37164488965528486
	.quad	0x3fe8e6510d594d24              # double 0.77811482054895408
	.quad	0x3fdf7a10e2a04748              # double 0.49182531482175706
	.quad	0x3fdd94b223abb044              # double 0.46220067485296945
	.quad	0x3fe3f554ea3b537b              # double 0.62369771717440814
	.quad	0x3fd774127ee3c17a              # double 0.36645948783463889
	.quad	0x3fe1899d6b3875ec              # double 0.54804869596017403
	.quad	0x3fd628622ee6850c              # double 0.34621481495021622
	.quad	0x3fe25d6b68efb9c0              # double 0.57390375609775646
	.quad	0x3fdb792d593b5334              # double 0.42927106584584185
	.quad	0x3fda1b59c5a81650              # double 0.40791935255433476
	.quad	0x3febd8bb7e9f258a              # double 0.87020659189981697
	.quad	0x3fd4f6e92a76b3d0              # double 0.32757023951381559
	.quad	0x3fa1b69dd684d470              # double 0.034596378742585254
	.quad	0x3fe67e8fae4127df              # double 0.70294937166294946
	.quad	0x3fedc0e41c71e222              # double 0.92979627185474478
	.quad	0x3fbeb09541b10910              # double 0.11988194326207613
	.quad	0x3fdd455b8a87adf2              # double 0.45735825088806259
	.quad	0x3f5e0329bb821600              # double 0.0018318088096135332
	.quad	0x3feb8a50af2264ca              # double 0.86063417631080452
	.quad	0x3fb7c6a6ed04d900              # double 0.092874939790679178
	.quad	0x3feb8031198d5d1e              # double 0.85939841261543726
	.quad	0x3feaadc3598c860c              # double 0.83371131410621179
	.quad	0x3fdf1942123c97a0              # double 0.4859166315167105
	.quad	0x3fe0739c96930ad4              # double 0.5141127530008256
	.quad	0x3fe007f62940e93d              # double 0.50097187096915941
	.quad	0x3fe0bd6f4df3e15e              # double 0.52312436318520006
	.quad	0x3fa70a005de0fcd0              # double 0.044998179874249922
	.quad	0x3fec40d6be87dfd4              # double 0.88291489804304967
	.quad	0x3fedf133235ec2ed              # double 0.93569332988962872
	.quad	0x3fdb5dd404a7aaee              # double 0.42760181860528135
	.quad	0x3fd86c2d7b94bd46              # double 0.38160264080484685
	.quad	0x3fdfa8bb24c43992              # double 0.49467352476576665
	.quad	0x3fe1dd2578542e3f              # double 0.55824540616726626
	.quad	0x3fc30057e457c2a4              # double 0.14844797753859951
	.quad	0x3fdc5ab2412edc50              # double 0.44303566327602528
	.quad	0x3fe09309140cb8de              # double 0.51794866481739255
	.quad	0x3fe130bb8bb45f91              # double 0.53719880376864826
	.quad	0x3fd89bcf6be5f5aa              # double 0.38450990235272775
	.quad	0x3fa3f596b9f19de0              # double 0.038983068655223496
	.quad	0x3fecfb57f87f7294              # double 0.9056815961335638
	.quad	0x3fd8ee2a34e4f608              # double 0.38953643002955163
	.quad	0x3fe438f21c070009              # double 0.63195138429728204
	.quad	0x3fbb95b5a7057408              # double 0.10775313689869404
	.quad	0x3fe961c5e82d8d79              # double 0.79318518969777962
	.quad	0x3f9fc9e0f0f5ec40              # double 0.031043543536253049
	.quad	0x3fe5c914de334a59              # double 0.68079608343607412
	.quad	0x3fe40b6ae63926fd              # double 0.62639374700049155
	.quad	0x3fe4f886e7aa8ebb              # double 0.65533776519119813
	.quad	0x3fee59c4e09aec0f              # double 0.9484581362552279
	.quad	0x3fe72d0e51e51499              # double 0.72424999232375165
	.quad	0x3faca25adb0ce940              # double 0.055926169623904176
	.quad	0x3fe9234160102490              # double 0.78555363428417202
	.quad	0x3fd381d36ef8768a              # double 0.30479894482582692
	.quad	0x3fe21fa1dd6f8f1b              # double 0.56636136292624728
	.quad	0x3fd7bdc1343dfcfc              # double 0.37095670797130231
	.quad	0x3fe3941292d228cd              # double 0.61182526279415017
	.quad	0x3fe2b9c91158e710              # double 0.58517888439311783
	.quad	0x3fed26cb067d6e8c              # double 0.91098548190662276
	.quad	0x3fe45c7d5ab32629              # double 0.63629024233631981
	.quad	0x3fea9e8e5f0d315f              # double 0.83185499729874468
	.quad	0x3febed6896dfd82b              # double 0.87273053615240792
	.quad	0x3fe12115786a045f              # double 0.53528855818161591
	.quad	0x3fc4558b7b080998              # double 0.15886062152283098
	.quad	0x3fe0a6403a08aa6d              # double 0.52029429754959511
	.quad	0x3fe60cf90ffe536f              # double 0.68908360599253438
	.quad	0x3fdd1e3302d7bd7e              # double 0.45496821668253762
	.quad	0x3fe220465a7ee9d4              # double 0.5664397971625541
	.quad	0x3febfbd7c94729f3              # double 0.87449254333597393
	.quad	0x3fc68bf258e7f804              # double 0.17614583340758838
	.quad	0x3fd1b2a98d1b6f12              # double 0.27652968196865502
	.quad	0x3fea9d638d85fd3e              # double 0.83171250954902809
	.quad	0x3fd9d97970827a00              # double 0.40389858233712062
	.quad	0x3fb2581a78ef1650              # double 0.071656851315389902
	.quad	0x3feee38249440650              # double 0.96527208623610683
	.quad	0x3fa43ab649a32510              # double 0.039510437477995208
	.quad	0x3f700b0ba2f87480              # double 0.0039167837672070549
	.quad	0x3fe4816bfc300eff              # double 0.64079856162467752
	.quad	0x3fe1e6c24702f8dc              # double 0.55941881055312193
	.quad	0x3fd641480a5b16a4              # double 0.34773446093854887
	.quad	0x3fac17cab0357510              # double 0.05486901665674726
	.quad	0x3fe8eaa8f82564e0              # double 0.7786450239756526
	.quad	0x3fdb1775ddddbcd6              # double 0.42330691019647071
	.quad	0x3fab25c0cd0e3180              # double 0.053022408515150055
	.quad	0x3fe8d877b3b78fb1              # double 0.77642426587089208
	.quad	0x3fdcfe8788bdd988              # double 0.45303524354621816
	.quad	0x3fe618ef164f57eb              # double 0.69054369313630326
	.quad	0x3fdac8186d2ef30a              # double 0.41846285498085989
	.quad	0x3f944ba729b43e60              # double 0.019819843216338007
	.quad	0x3fec20ef95daccfa              # double 0.87902049320692233
	.quad	0x3f89cfb65fcd8a40              # double 0.012603211210891918
	.quad	0x3fec86190b94f56d              # double 0.89136936437686887
	.quad	0x3fe048e60c978bf0              # double 0.50889875850077537
	.quad	0x3fcf4d4891af7d78              # double 0.24454600442457397
	.quad	0x3fd945850987512a              # double 0.39486814432645423
	.quad	0x3fa952ac54557de0              # double 0.049458871168777341
	.quad	0x3fec6d18c2635bb4              # double 0.88831747023038198
	.quad	0x3fe866c12de25a35              # double 0.76254328691249518
	.quad	0x3fe4de949712acba              # double 0.65217046266970802
	.quad	0x3fe6fb54a40739b1              # double 0.71818000828516493
	.quad	0x3fed674be5be1d3d              # double 0.91885943290336736
	.quad	0x3fe0f98d9299133e              # double 0.53046301491176684
	.quad	0x3fec5267c94ea851              # double 0.88505925481627845
	.quad	0x3fd324e01a143ec4              # double 0.29912569567475722
	.quad	0x3fbc537782503d98              # double 0.11064860278587785
	.quad	0x3fefd45df2b1b0b1              # double 0.99467370415870537
	.quad	0x3fe7168f4edc177f              # double 0.72150388147632316
	.quad	0x3fd8ec21296eb910              # double 0.38941220327514348
	.quad	0x3fda54a98310464c              # double 0.41141736792733208
	.quad	0x3fe5c62a813caaaf              # double 0.68044018975827736
	.quad	0x3f8c44e9fe90cb40              # double 0.013803318101144435
	.quad	0x3fddd993296a0654              # double 0.46640471500731917
	.quad	0x3fed267356d58997              # double 0.9109436698893657
	.quad	0x3fe2ded0be1414ff              # double 0.5896991455526005
	.quad	0x3fe4fa34da659303              # double 0.65554278045291914
	.quad	0x3fd90f4f34de2b6a              # double 0.39155941164852115
	.quad	0x3fe0c8e2994d41ca              # double 0.52452211324458031
	.quad	0x3fc01e69fa9a3660              # double 0.12592816101498538
	.quad	0x3fe6747600646a7f              # double 0.70171642376529053
	.quad	0x3fef0a1d2944cfc7              # double 0.96998460827170951
	.quad	0x3fd45545db697fd2              # double 0.31770464350665606
	.quad	0x3fe0ec311f308d3d              # double 0.52883201686601178
	.quad	0x3fea10ede126e336              # double 0.81456655478459683
	.quad	0x3fea2c93954198ad              # double 0.81794146682365965
	.quad	0x3fea60d5185b31da              # double 0.82432036168170986
	.quad	0x3fc20ade17e3d8d4              # double 0.14095665136819113
	.quad	0x3fd4dbc3eade554c              # double 0.3259134095800007
	.quad	0x3fef38823267e115              # double 0.97564802021864471
	.quad	0x3fe6d0dd68e6cb25              # double 0.71299620140630238
	.quad	0x3fc1516325f88818              # double 0.13529624322933453
	.quad	0x3fe8cff30e426008              # double 0.77538445267691802
	.quad	0x3fee3ee993d01026              # double 0.94517973775555642
	.quad	0x3fcf91f5d3d44534              # double 0.24664185374471403
	.quad	0x3fdaf6ea50ef1070              # double 0.42132051376052626
	.quad	0x3fc4f2307c682f24              # double 0.16364103388365792
	.quad	0x3fe73b4e6f1d55a5              # double 0.72598954870288834
	.quad	0x3fb8c5b72c3c50c0              # double 0.096766899394711281
	.quad	0x3fe5a25e08d27c9f              # double 0.67607022975052533
	.quad	0x3fd4b7b2bc7a7602              # double 0.32371204763498451
	.quad	0x3fc77ed49590b4dc              # double 0.18355805685988613
	.quad	0x3feb0e757035f6f6              # double 0.84551498333141129
	.quad	0x3f985cfdbb9ed2a0              # double 0.023792233063164248
	.quad	0x3fb21e7926cda280              # double 0.070777484868481011
	.quad	0x3fdc5c039afe878e              # double 0.44311609398038676
	.quad	0x3fdc70b9a5bd4094              # double 0.44438019929385431
	.quad	0x3fea4d93f6e772b8              # double 0.82196996901946928
	.quad	0x3fc600a4778f6ae8              # double 0.17189460599805462
	.quad	0x3fef0012c5a005d6              # double 0.96875895117426114
	.quad	0x3fed46fda48282b2              # double 0.91491586809941894
	.quad	0x3f67adfd7bead900              # double 0.0028905821667094544
	.quad	0x3fe37033818ff980              # double 0.60744643502384577
	.quad	0x3f7c6d97e1399a80              # double 0.0069404537967786561
	.quad	0x3fd512063866c8e0              # double 0.32922511585196723
	.quad	0x3fd3c8230b37e9ca              # double 0.30909038634822805
	.quad	0x3fe38799b4b6b789              # double 0.61030278487827261
	.quad	0x3fe0a4891913fd46              # double 0.52008490465224422
	.quad	0x3fe861f004c50121              # double 0.76195527011444508
	.quad	0x3fec6a5f49eae70c              # double 0.88798489033726601
	.quad	0x3fed342b3fff9456              # double 0.91261827945403229
	.quad	0x3fe9a32855911408              # double 0.80116669380424899
	.quad	0x3fe3297f5389f46f              # double 0.5988155967348926
	.quad	0x3fc2c6cef21d7558              # double 0.14669215032601346
	.quad	0x3fcc85502cea98bc              # double 0.22281839554961447
	.quad	0x3fec02dc023b6bed              # double 0.87534904895744392
	.quad	0x3fb26f994216b350              # double 0.072015360484056545
	.quad	0x3fc44f00884a5528              # double 0.15866095213702036
	.quad	0x3fd90e8660cd228e              # double 0.39151153043034348
	.quad	0x3fb1442c86c9bf58              # double 0.067446501643414591
	.quad	0x3fe6227b0e6e1391              # double 0.69170906847340252
	.quad	0x3fe590fc34db0c2d              # double 0.67394838641519572
	.quad	0x3fec20778916e766              # double 0.87896324897085942
	.quad	0x3fee95cdb19338a2              # double 0.95578655893929843
	.quad	0x3fd501408695d8d0              # double 0.32820141928767743
	.quad	0x3fe5f32b3f7a7266              # double 0.68593370817286536
	.quad	0x3fedbc60371c7bf6              # double 0.9292450977699207
	.quad	0x3fd7f0216a868d7e              # double 0.37403140452280315
	.quad	0x3fe7c2b1ea60b78c              # double 0.74251647736467552
	.quad	0x3fe52200c77992cb              # double 0.66040076217594768
	.quad	0x3fe3c278103b27b5              # double 0.6174888913167168
	.quad	0x3fa9996582c1af60              # double 0.049998447619912012
	.quad	0x3fd2fd992ed3510a              # double 0.29672841618345613
	.quad	0x3fc95e2438f727d8              # double 0.19818547040477941
	.quad	0x3fd613a3d4d2cecc              # double 0.34494872840444368
	.quad	0x3fde07b34e8b5b1e              # double 0.46921999616954391
	.quad	0x3fd5fe7bf4e6d960              # double 0.34365748325526191
	.quad	0x3f9b4e8c1eb26960              # double 0.026666821836081822
	.quad	0x3fe2a5fbfe417b1d              # double 0.58276176127751322
	.quad	0x3fe3b208f297a944              # double 0.61548278218587216
	.quad	0x3fe09127b5d1eab0              # double 0.51771913062778729
	.quad	0x3fd79d83148b9974              # double 0.36898877149942355
	.quad	0x3fe837098f702744              # double 0.75671842589620341
	.quad	0x3fc1a492df20b264              # double 0.13783489127071669
	.quad	0x3fde55c227f80e38              # double 0.47398427870959692
	.quad	0x3fd16502bd5caa74              # double 0.27179020397549114
	.quad	0x3fd570d3307b5e0e              # double 0.335011288972482
	.quad	0x3fe6d57b358f8cfb              # double 0.71355972729762074
	.quad	0x3fe2e2eeaffca3fa              # double 0.59020170566975527
	.quad	0x3fd661e4ba368284              # double 0.34972494301658963
	.quad	0x3fe31a5534e0660a              # double 0.59696445777370966
	.quad	0x3f966f658fa211a0              # double 0.021909319774310654
	.quad	0x3fe715064271c78a              # double 0.72131646134788352
	.quad	0x3fee4b70dd43fbc1              # double 0.94670909133844117
	.quad	0x3fd3c88d4210d67e              # double 0.30911570979819902
	.quad	0x3fecf7d7066ad4b3              # double 0.90525389912968135
	.quad	0x3fdaaf5867e327de              # double 0.41695222993132386
	.quad	0x3fd56d9395273432              # double 0.33481301847206446
	.quad	0x3fb8852b98e12a08              # double 0.09578201754008131
	.quad	0x3f8c1670f678a280              # double 0.013714678308205608
	.quad	0x3fec6184d88f1411              # double 0.88690416618976731
	.quad	0x3fd0f9d359c57118              # double 0.26524814383243855
	.quad	0x3fd629b600f3c344              # double 0.34629583447445023
	.quad	0x3fdb2a99ca74d2e6              # double 0.4244751431572652
	.quad	0x3fd79cb440fe0cde              # double 0.36893946024811253
	.quad	0x3fe3364d33871f37              # double 0.60037860931422571
	.quad	0x3fc5398fa12b08ac              # double 0.16581912393127618
	.quad	0x3fde0be1647af3ec              # double 0.46947512447860507
	.quad	0x3fcc3c0af54b8d88              # double 0.22058236100484074
	.quad	0x3fe0fde99f87baf7              # double 0.53099518926850819
	.quad	0x3fccf5bd385ae764              # double 0.22624936343873536
	.quad	0x3fb80e681af108e8              # double 0.09396982820274824
	.quad	0x3fecdc85aac38a8a              # double 0.90191920616446564
	.quad	0x3fef493ca85f385c              # double 0.97769005665919506
	.quad	0x3fe84cca90dd4c5d              # double 0.75937393468701553
	.quad	0x3fe3ccca79c998b8              # double 0.6187488917028281
	.quad	0x3fe34b7dce0fd752              # double 0.60296526190243527
	.quad	0x3fe1f5a547784d8e              # double 0.56123603781672826
	.quad	0x3fdd3237b556a650              # double 0.45619003971896621
	.quad	0x3fe7a14b31417ee7              # double 0.73843917484552157
	.quad	0x3fe34bdfcad7992e              # double 0.60301198594678396
	.quad	0x3fe9fa142aa37c82              # double 0.81177719428878015
	.quad	0x3fd36cfe47bca414              # double 0.3035274220042663
	.quad	0x3fc62efa2738e138              # double 0.17330862918039158
	.quad	0x3fe53338efaa3c00              # double 0.66250273522916814
	.quad	0x3fee57e9a7ec67f2              # double 0.94823153302718155
	.quad	0x3fddbb5787d415d6              # double 0.46455944313524122
	.quad	0x3fe81982c0d38449              # double 0.75311410580992189
	.quad	0x3fec4e8c62c71a10              # double 0.88458842556502937
	.quad	0x3fd3e181285f35cc              # double 0.31063870375222957
	.quad	0x3fe2a76b27f84497              # double 0.58293683821297548
	.quad	0x3fed552ce341fa4b              # double 0.91664738069796081
	.quad	0x3fe2758e92d2247f              # double 0.57685021091414501
	.quad	0x3fe956088ecab8a6              # double 0.79175212754286828
	.quad	0x3fd7361d5a10504a              # double 0.3626778964546743
	.quad	0x3fe40d83d2279e13              # double 0.62664977117396103
	.quad	0x3fcaf01008208598              # double 0.21045112988308001
	.quad	0x3fe5371e86f9250a              # double 0.66297842370946225
	.quad	0x3fc3026eb9a08d58              # double 0.14851173461748135
	.quad	0x3fec9c9bbaca47d8              # double 0.8941172264333046
	.quad	0x3fe42f2f6e29b606              # double 0.63075992122838964
	.quad	0x3fd4cc400819fb30              # double 0.32496643820916216
	.quad	0x3fefcc8b48a557a5              # double 0.99371875942846499
	.quad	0x3fda02c67d85fbee              # double 0.40641939409391525
	.quad	0x3fa31190f082b220              # double 0.037243394240565886
	.quad	0x3fed552cb6473571              # double 0.91664729691698998
	.quad	0x3fda6bf7b2204890              # double 0.41283981700065286
	.quad	0x3fef24510358f53e              # double 0.97318316129500437
	.quad	0x3feda01fb6f8fc2e              # double 0.92579637276492632
	.quad	0x3fd1ecbdfb98a646              # double 0.28007459230375209
	.quad	0x3fe3b3f6abcd5a6c              # double 0.61571820788487974
	.quad	0x3fce6d2a0f3b88f8              # double 0.23770642989899904
	.quad	0x3fca6ff9ac3349bc              # double 0.20654221447200694
	.quad	0x3fe769308dc09fed              # double 0.73159053503058902
	.quad	0x3fc17e060f0060d8              # double 0.13665843708509473
	.quad	0x3feb09d01a90eb90              # double 0.84494786442461312
	.quad	0x3fdc450e13626724              # double 0.44171478169447398
	.quad	0x3feddf2bcd6cb63f              # double 0.93349256631854149
	.quad	0x3fbcd190c9c66c28              # double 0.11257271696233373
	.quad	0x3fcf09a2d13e14a8              # double 0.24248156754416539
	.quad	0x3fd141329801bac8              # double 0.26960434765252872
	.quad	0x3fe07c30d00d629a              # double 0.51515999446117466
	.quad	0x3fd5573138e6edc6              # double 0.33344679409830424
	.quad	0x3fddbaa244f76f22              # double 0.46451622710240958
	.quad	0x3fef67dd9436ac49              # double 0.98142889926874332
	.quad	0x3fe16a9d1c83db68              # double 0.54426436967228842
	.quad	0x3fe42e094d55a8b6              # double 0.63061966995635177
	.quad	0x3fd6cceff1ce53e4              # double 0.35625837911476155
	.quad	0x3fd645007121a8a0              # double 0.34796153114315054
	.quad	0x3fcedf27bdbd62d0              # double 0.24118515743864188
	.quad	0x3fb733187c496678              # double 0.090623407691419078
	.quad	0x3fd6295c74595b34              # double 0.34627448427402219
	.quad	0x3fe2e6cf7c495b0a              # double 0.59067510866847894
	.quad	0x3fe8b7e02cf75943              # double 0.77244576246702257
	.quad	0x3feab4429d41e390              # double 0.8345044204171348
	.quad	0x3fe7c05113482c9b              # double 0.742226159725209
	.quad	0x3fb56dbc7884f098              # double 0.083705691741615573
	.quad	0x3fd08a3f3b4f3e12              # double 0.2584379271692977
	.quad	0x3fbe3bff465d7f40              # double 0.11810298412228537
	.quad	0x3fee81ebe61151e4              # double 0.9533595555790808
	.quad	0x3fc9e960c51e74d0              # double 0.20243463158559516
	.quad	0x3f7e09e6006ec600              # double 0.0073336586419130434
	.quad	0x3fad566d518866f0              # double 0.05730001087449732
	.quad	0x3fee8c69e1525737              # double 0.95464033134587722
	.quad	0x3fe41ff9a526058d              # double 0.62890321975298635
	.quad	0x3fe14fef4cccb091              # double 0.54100766181865556
	.quad	0x3fe538a7774b8dbd              # double 0.66316579150991795
	.quad	0x3fdfb0503f1c312e              # double 0.49513631976221262
	.quad	0x3fe6a72e473414ee              # double 0.70790780932352759
	.quad	0x3fb174fd20b3acb0              # double 0.068191357120371832
	.quad	0x3fefa051a7190440              # double 0.9883201850535741
	.quad	0x3fe2a2db92c6821b              # double 0.5823800913531757
	.quad	0x3fe105812212d120              # double 0.5319219270227542
	.quad	0x3fcef8dec656ade0              # double 0.24196991619588371
	.quad	0x3fb54f4d6df3d0f8              # double 0.083241309493874982
	.quad	0x3fd25085a28b6816              # double 0.2861646735524358
	.quad	0x3fe60c85c6b164bf              # double 0.68902863318648844
	.quad	0x3fdf6e5e16825cda              # double 0.49111129949728893
	.quad	0x3feb2a80edd98fb7              # double 0.84893843131111779
	.quad	0x3fc4a015d1cc2f94              # double 0.16113541358970151
	.quad	0x3f94ec127890df00              # double 0.020431793793448172
	.quad	0x3fd6d42c11a4592c              # double 0.35669995997285997
	.quad	0x3fe240f633833a57              # double 0.57042989789062915
	.quad	0x3fb0d1665b2bf900              # double 0.06569518781541106
	.quad	0x3fe58073796673fa              # double 0.67193006239870035
	.quad	0x3fe4fa75eb8e879d              # double 0.65557380683116018
	.quad	0x3fe23288c5bb6aac              # double 0.56866873378324589
	.quad	0x3fde0cdf08a9bb58              # double 0.46953559728620098
	.quad	0x3fe4607b1375a672              # double 0.63677743721673452
	.quad	0x3fed31e4076cab23              # double 0.91234017801375378
	.quad	0x3fc2455c9effc8f8              # double 0.14274175418501733
	.quad	0x3feecb21806f24f7              # double 0.9622962482909817
	.quad	0x3fe980ae84a44e48              # double 0.79695821673016898
	.quad	0x3fe0a3da08eca3b9              # double 0.52000142806092875
	.quad	0x3fe91fa38258c1ac              # double 0.78511214693394526
	.quad	0x3fcd4d97d5e75c5c              # double 0.22893045372504417
	.quad	0x3f850899773dd740              # double 0.010270308448280141
	.quad	0x3fe369f2d0d7a60a              # double 0.6066831664040262
	.quad	0x3fc5f0818876b9b4              # double 0.17140216029424737
	.quad	0x3fd3ac7a4fd97bf0              # double 0.30740220830733644
	.quad	0x3fde16b06a4bdce6              # double 0.47013483410360235
	.quad	0x3fee09d5fb1ea342              # double 0.93870066687404852
	.quad	0x3fd4b41383e9f09c              # double 0.32349098093232853
	.quad	0x3fd5a0c44981f5ee              # double 0.33793742350084599
	.quad	0x3fd670f733dc9950              # double 0.35064487518902343
	.quad	0x3fe936964970da87              # double 0.78791345924294454
	.quad	0x3fefc4a02ae8883c              # double 0.99275215511830294
	.quad	0x3fc5aa618271feac              # double 0.16926211232565913
	.quad	0x3fd347acf59c860c              # double 0.30124973283281586
	.quad	0x3fe38e760ce1f0af              # double 0.61114027515534086
	.quad	0x3fed3efdd2a2011d              # double 0.9139393915102435
	.quad	0x3fb1da771a97e790              # double 0.069739765160106382
	.quad	0x3fe2fa2fee891599              # double 0.5930404337784011
	.quad	0x3fb5133bc7df3ad8              # double 0.082324730202553709
	.quad	0x3fc4d1e6d7d9c4f0              # double 0.16265569247801848
	.quad	0x3fe5d7e347294fa1              # double 0.68260349177079516
	.quad	0x3fa729bc2c19d2f0              # double 0.045240288146407681
	.quad	0x3fd44681d9c7a52c              # double 0.31680341975750781
	.quad	0x3fa57139383b95f0              # double 0.041879451860761807
	.quad	0x3fe2c1aaf7803369              # double 0.58614109363553013
	.quad	0x3fecc3c0ea8eacb2              # double 0.8988957005689342
	.quad	0x3fdda1226cb283ae              # double 0.46295986762020902
	.quad	0x3fee9c81b5a21091              # double 0.95660481906135619
	.quad	0x3fee9bf63ed4acff              # double 0.95653831740983708
	.quad	0x3fcaf5b932a9bf38              # double 0.21062388395102416
	.quad	0x3fcfa317c7743658              # double 0.24716469992601975
	.quad	0x3fd8de009ccc8944              # double 0.38854995071791998
	.quad	0x3fc484748b46fd18              # double 0.16029221344613442
	.quad	0x3fed79ef364cadeb              # double 0.92113457303406443
	.quad	0x3fedf26b857b9891              # double 0.93584228583201157
	.quad	0x3fe1c3f19e450c24              # double 0.55516892349294666
	.quad	0x3fe1d4ad02091c69              # double 0.55721140286995052
	.quad	0x3fc37e9253f68af0              # double 0.15230015849836986
	.quad	0x3fb6d1977cff4a38              # double 0.089135616318608224
	.quad	0x3fe5f1a38da2f5d7              # double 0.68574693358794547
	.quad	0x3fd0459c741dc6c2              # double 0.2542487272213344
	.quad	0x3f343c2339f0e800              # double 3.0876026170612025E-4
	.quad	0x3fda8ab01c3cab7a              # double 0.41471483953016952
	.quad	0x3feaf33fa50a352f              # double 0.84219343408918756
	.quad	0x3fda099e52dfbe1e              # double 0.40683706372417017
	.quad	0x3fd5a4895bdfe1b8              # double 0.33816751453516813
	.quad	0x3fe4bec0cfd3309d              # double 0.64828529921352962
	.quad	0x3f9720bed1567120              # double 0.022585851218182573
	.quad	0x3fed31f763c50822              # double 0.91234940992604074
	.quad	0x3fe08744b1c7be1a              # double 0.5165122482557678
	.quad	0x3fda964881f65928              # double 0.41542256061201721
	.quad	0x3fbbfe8d71841878              # double 0.10935291310679129
	.quad	0x3fed54a6ff153f57              # double 0.91658353634737011
	.quad	0x3fe7a97875f97a48              # double 0.73943732301615572
	.quad	0x3fe7e14c0f431fb5              # double 0.746252088364591
	.quad	0x3fe6fa8bed385e23              # double 0.71808430034701975
	.quad	0x3feba1b35ea4ed10              # double 0.86348885045245716
	.quad	0x3fe83dd0d2355f8c              # double 0.75754586273522894
	.quad	0x3fe628f95a23d71b              # double 0.69250171285122819
	.quad	0x3fcd2a27924989fc              # double 0.22784895556385709
	.quad	0x3fc966c091352df4              # double 0.19844824876996336
	.quad	0x3fb636349e5c3740              # double 0.086764610922014818
	.quad	0x3f46fb5464945800              # double 7.0134754892836604E-4
	.quad	0x3fe5c1ddf0a4e010              # double 0.67991539955892399
	.quad	0x3fe605a6becfd02b              # double 0.68818986194537979
	.quad	0x3fd51574f5aa0e96              # double 0.32943462362912024
	.quad	0x3fe21a4935bdbd31              # double 0.56570873733827487
	.quad	0x3fec9c6dd6a7d867              # double 0.89409534382754152
	.quad	0x3fee784f2ab4a087              # double 0.95218618718082915
	.quad	0x3fdfa1caa45e415e              # double 0.49424997378902968
	.quad	0x3febd83e4cb8babe              # double 0.87014689430892367
	.quad	0x3f8b20abbdc32bc0              # double 0.013245908478344393
	.quad	0x3fb4e4536c64be78              # double 0.081608976329102023
	.quad	0x3fe77dd410c331ad              # double 0.73410990976258506
	.quad	0x3fe90e74e9638887              # double 0.78301473220587148
	.quad	0x3fe607304806deb3              # double 0.68837751453152973
	.quad	0x3fcf4bfb59438898              # double 0.24450628145774966
	.quad	0x3fedd861a5dbfcd0              # double 0.93266374964141541
	.quad	0x3fe5086ae05bd30f              # double 0.65727752513939375
	.quad	0x3fbe03d040d99660              # double 0.11724568923235656
	.quad	0x3fea2f42f910d241              # double 0.81826923986097466
	.quad	0x3fe9d6685008dbb7              # double 0.8074227870155174
	.quad	0x3fe050b022ff8ac0              # double 0.50984961352909153
	.quad	0x3fbdb5cb785f8ee8              # double 0.11605521858978884
	.quad	0x3fea21ac84d6a208              # double 0.81661058373453077
	.quad	0x3fd13d26f32d61b2              # double 0.26935743091373887
	.quad	0x3fe665843f5495a0              # double 0.69989216202946025
	.quad	0x3feb755a2fea519b              # double 0.85807523115595374
	.quad	0x3fe954adbf4e8064              # double 0.79158675541476641
	.quad	0x3fee2f77c8f6be36              # double 0.94329442263364771
	.quad	0x3fb02508fc3111b8              # double 0.063065110750421094
	.quad	0x3f8274a4705936c0              # double 0.0090115401063955991
	.quad	0x3fe2d045f3fd206e              # double 0.58792398122842626
	.quad	0x3fa6ef57760b29f0              # double 0.044794781837101172
	.quad	0x3fdf119dd0772658              # double 0.48545022352172884
	.quad	0x3fb32901a0c26308              # double 0.074844457385904062
	.quad	0x3fab49391ec79810              # double 0.053293023116381844
	.quad	0x3fe992a26a48ff7c              # double 0.79914971121614497
	.quad	0x3fd3d8db77d70004              # double 0.31011091902837529
	.quad	0x3fd31c3e92713f0a              # double 0.29859890271198763
	.quad	0x3fec7c1e232b6668              # double 0.89015108937310305
	.quad	0x3fb14f7581624018              # double 0.06761869820388744
	.quad	0x3feead93acd42b0e              # double 0.95868858104344823
	.quad	0x3fe94d51b28eb1b5              # double 0.79068837046138774
	.quad	0x3fe3e7820884be03              # double 0.62201024688505446
	.quad	0x3fe08ff2fbefb2e2              # double 0.51757191854775564
	.quad	0x3fe3ecbade9114a8              # double 0.62264770002424985
	.quad	0x3fd6bd1a6e32660c              # double 0.35529194604313896
	.quad	0x3fec95b037ecc598              # double 0.89327250407056891
	.quad	0x3fc3ed868b544754              # double 0.15568620494064567
	.quad	0x3fc52b59f2d46798              # double 0.16538547856253838
	.quad	0x3fecb8365d508574              # double 0.89748686051841142
	.quad	0x3fe47311d9691a9b              # double 0.63904659712791856
	.quad	0x3fe6a3e77516e28f              # double 0.70750782841703763
	.quad	0x3fe894b8d9a558b3              # double 0.76815454968416075
	.quad	0x3fd42c4a2a161f5e              # double 0.31520322904588294
	.quad	0x3fc7e994b44fd964              # double 0.18681582264225505
	.quad	0x3fed885551afb528              # double 0.92289224581114571
	.quad	0x3fe4c0b8dbea99b0              # double 0.6485256476633392
	.quad	0x3fe6fe29988f6fbf              # double 0.71852569386418697
	.quad	0x3fc3e17905df4a2c              # double 0.15531838213662874
	.quad	0x3fe3c11e2c3ecac8              # double 0.61732395784050542
	.quad	0x3eec1fbe10c50000              # double 1.3410565337879099E-5
	.quad	0x3fe199bb6ccb1b9c              # double 0.5500161290045642
	.quad	0x3feac59aec28ea04              # double 0.83662172436680792
	.quad	0x3fe26f2a48ded0e1              # double 0.57606996757979456
	.quad	0x3fedb44eb4b20b54              # double 0.92826018611990912
	.quad	0x3fe91e7940eb6e70              # double 0.78496992759342099
	.quad	0x3fe662f80f672a60              # double 0.69958117493053962
	.quad	0x3fe2dfeece11bfc4              # double 0.58983555076519467
	.quad	0x3fdd1cf81583a90a              # double 0.45489313221936867
	.quad	0x3feb82971efed8d4              # double 0.859691200769499
	.quad	0x3fc37fbb8bc527dc              # double 0.15233558964456406
	.quad	0x3fd1d788941147ec              # double 0.27878012141911657
	.quad	0x3fe931329e3c9fde              # double 0.78725558190944489
	.quad	0x3f7881bdbd475380              # double 0.0059831058210492172
	.quad	0x3fc24fba661fcd04              # double 0.14305810915502815
	.quad	0x3fe2e63da62ef98a              # double 0.59060556848253154
	.quad	0x3fe2e563f91128fa              # double 0.59050177236466017
	.quad	0x3fd16bcc2b68f292              # double 0.27220443953755435
	.quad	0x3fb86777610d9300              # double 0.095328770823083885
	.quad	0x3febd4d95fbc7601              # double 0.86973255823585316
	.quad	0x3fe7144c2c24e752              # double 0.721227728098919
	.quad	0x3fdff863829d9326              # double 0.49953544383451953
	.quad	0x3fe0d39b3240fbfc              # double 0.52583083930210206
	.quad	0x3fe7d6dac3289256              # double 0.7449773608864898
	.quad	0x3fead777fcccbafc              # double 0.83880233168551354
	.quad	0x3fd1454db7793de4              # double 0.26985495488494693
	.quad	0x3febf8f91797ba72              # double 0.8741422138971997
	.quad	0x3fb365c871ac5478              # double 0.075771835090863493
	.quad	0x3fd4364b70586560              # double 0.31581388446064373
	.quad	0x3feb484fd33bd864              # double 0.85257712608905622
	.quad	0x3fe72126cf20d678              # double 0.72279682593098382
	.quad	0x3fe106eb42d60c86              # double 0.53209460309916845
	.quad	0x3fb71df96cdc8400              # double 0.090301121785628879
	.quad	0x3fc89071f5b28380              # double 0.19190811631144911
	.quad	0x3fde74b6ad7b570c              # double 0.4758736318739103
	.quad	0x3fe1a363b418b158              # double 0.55119500327195237
	.quad	0x3fddab60b8d98820              # double 0.46358507205707333
	.quad	0x3fc6f201326d7f20              # double 0.17926039659777704
	.quad	0x3fd5a661ce767696              # double 0.33828015482308993
	.quad	0x3fe5399558917cd5              # double 0.66327922152040719
	.quad	0x3fe5ff139d23adae              # double 0.68738728228838908
	.quad	0x3fcaa69e71ccc434              # double 0.20820980602869243
	.quad	0x3fe6b5116fadea15              # double 0.7096030408131947
	.quad	0x3fd2e02b2a3d8e36              # double 0.29493216633838715
	.quad	0x3fdbe38f087d92e0              # double 0.43576408223297669
	.quad	0x3fc4b232262b7864              # double 0.16168810714492843
	.quad	0x3fe106a5a75fa926              # double 0.5320614117638669
	.quad	0x3fe68a8724c7919b              # double 0.70441014464863672
	.quad	0x3fc0aa2ac2aad544              # double 0.13019308572044441
	.quad	0x3fda501925efaf6a              # double 0.41113880829538252
	.quad	0x3fede55d8c957521              # double 0.93424870927598047
	.quad	0x3fd8ae2f9bd9a350              # double 0.38563146800747905
	.quad	0x3fdebefaa56d69d8              # double 0.48040643839854402
	.quad	0x3fc2d23f4f61a168              # double 0.14704123855632223
	.quad	0x3fc454c79383064c              # double 0.15883726790166219
	.quad	0x3fea8f7ee6dfc1b4              # double 0.83001656620586183
	.quad	0x3fe16c8c1cb30b48              # double 0.54450040440892966
	.quad	0x3fef3759e8dce6ad              # double 0.97550673943552157
	.quad	0x3fe953babeb1f8cf              # double 0.7914708828464202
	.quad	0x3fb33cf394aec0b0              # double 0.075148795890302322
	.quad	0x3fdaffedd53cc7e6              # double 0.42187066863982492
	.quad	0x3fe192bc786590e4              # double 0.54916213526714985
	.quad	0x3feff83a94255edf              # double 0.99905136999856469
	.quad	0x3fe7e543cd48a5d3              # double 0.74673643202293716
	.quad	0x3fbf8a59a2a81120              # double 0.12320480557543023
	.quad	0x3f9c65c590c952a0              # double 0.027731978380261979
	.quad	0x3fe41e7a91acfe49              # double 0.62872055485053935
	.quad	0x3fe758e00ca26b18              # double 0.72959902255692821
	.quad	0x3f5a06fce7989c00              # double 0.0015885801098052266
	.quad	0x3fe23b5d426b4afe              # double 0.56974661800845161
	.quad	0x3fc799c2e925b228              # double 0.18437992462294628
	.quad	0x3fd6cc40e0613b0a              # double 0.35621663963404215
	.quad	0x3feb65c833e20ac1              # double 0.8561745656337153
	.quad	0x3fc9a0f04b145238              # double 0.20022395769105272
	.quad	0x3fdcef61475b66e0              # double 0.45211059540234366
	.quad	0x3fdbbfcaf4186cfc              # double 0.43358110272829697
	.quad	0x3fe0e41abdf81768              # double 0.52784478286114922
	.quad	0x3fd130924acfd020              # double 0.2685895662864386
	.quad	0x3fe6453bf26241cf              # double 0.69595143642987434
	.quad	0x3fc18fcf8ae922f8              # double 0.13720125468014266
	.quad	0x3fbdc2b176ef3480              # double 0.11625203279182195
	.quad	0x3fd090c4451933ee              # double 0.25883585689444899
	.quad	0x3fb07f760e6a9b28              # double 0.064444902915607671
	.quad	0x3fe8103c04eb9fc8              # double 0.75198174439446408
	.quad	0x3fe215ba51680896              # double 0.56515231990512649
	.quad	0x3fd5a9049ca0657c              # double 0.33844104095040684
	.quad	0x3fe5629bebac9821              # double 0.66828723936192003
	.quad	0x3fe3342e26d953ed              # double 0.60011966312106113
	.quad	0x3fefc90e2d90b8ac              # double 0.99329289340473314
	.quad	0x3fca59c74b816aec              # double 0.20586482226175151
	.quad	0x3fa4dc01e8033330              # double 0.040741023609007221
	.quad	0x3fd23c49aaea0176              # double 0.2849296731074199
	.quad	0x3fee8926d7ba828a              # double 0.95424215445025706
	.quad	0x3fcf5bd03ae59a08              # double 0.24498942256759926
	.quad	0x3fdfabd5f528c8f6              # double 0.49486302319850439
	.quad	0x3fe20633ce0d0e0c              # double 0.56325712436995579
	.quad	0x3fe9cc98473f0ef7              # double 0.80622495570466313
	.quad	0x3fb8935a85a72aa8              # double 0.095998437528730052
	.quad	0x3fe953f76e3f70fa              # double 0.7914998200681389
	.quad	0x3feae7f097dc39e5              # double 0.84081296596724242
	.quad	0x3fd6f06ee37c069e              # double 0.35842487540512902
	.quad	0x3fd0eb44b4b1453c              # double 0.26435964246509847
	.quad	0x3fc9f9aa1984e350              # double 0.20293165441560257
	.quad	0x3fd60b45e28ae8ee              # double 0.34443804858496108
	.quad	0x3fdbc5eb857825fa              # double 0.43395507845033843
	.quad	0x3fcaf387811de304              # double 0.21055692486313415
	.quad	0x3fefaed3f1f6e399              # double 0.99009129770921611
	.quad	0x3fdc8b65b383cf28              # double 0.44600813418149921
	.quad	0x3fcc95e14f9ac5e8              # double 0.2233239782995462
	.quad	0x3fdd558d500e6906              # double 0.45834667985913347
	.quad	0x3fdda02c7cd25044              # double 0.46290123166659591
	.quad	0x3fd806959b73adf4              # double 0.37540188008162478
	.quad	0x3fe5d0eda6f661ee              # double 0.68175394639825782
	.quad	0x3fe0018a086ff565              # double 0.50018788955609905
	.quad	0x3fdce3b4e5e3e894              # double 0.45139810991498419
	.quad	0x3fd36252251ea2c4              # double 0.30287603020637399
	.quad	0x3fe92ba24f8a97e1              # double 0.7865764192144945
	.quad	0x3fc9582a7210f9f0              # double 0.19800310678142763
	.quad	0x3fd9ebb1bcc8ccf8              # double 0.40501063762640355
	.quad	0x3f486530ecad1c00              # double 7.44484795497935E-4
	.quad	0x3feba6452483d6d1              # double 0.86404664165339728
	.quad	0x3fe82de5b8c6113a              # double 0.75560270393956519
	.quad	0x3fdefadfbb066762              # double 0.48406213058625813
	.quad	0x3fc690c5ca514d4c              # double 0.17629310969150891
	.quad	0x3fed25dec628e740              # double 0.91087282851297147
	.quad	0x3fc3ec83c363aca0              # double 0.1556553558396887
	.quad	0x3fb09fdd4cf26238              # double 0.06493933800300844
	.quad	0x3fe5798f993ff91a              # double 0.6710889809762961
	.quad	0x3fea5315550dfbcd              # double 0.82264200794440401
	.quad	0x3fca6bf2b801a854              # double 0.20641931519213819
	.quad	0x3fe3c6deedd9a0af              # double 0.61802622275447117
	.quad	0x3fbca988ac76abe8              # double 0.11196188173805377
	.quad	0x3f9624d87fedba20              # double 0.02162493019880618
	.quad	0x3fd2ec435c7578ac              # double 0.29567035702883504
	.quad	0x3fe6e216b4b4267f              # double 0.71509871762937383
	.quad	0x3fd6ea14cd5ed66c              # double 0.35803718620022695
	.quad	0x3fce10a7358971a4              # double 0.23488321413141222
	.quad	0x3fe3f9ff4a4244e6              # double 0.62426723960575425
	.quad	0x3fdea6f342c7e5a0              # double 0.47893983384673255
	.quad	0x3fd30d9418eafca8              # double 0.29770376618757632
	.quad	0x3fd2bdc3ad989064              # double 0.29283229782800491
	.quad	0x3fe3f6cb5dacf18d              # double 0.62387626930244411
	.quad	0x3fe08931d407800f              # double 0.51674739276859494
	.quad	0x3fe8ae2003d90c02              # double 0.77125550033122203
	.quad	0x3fe1061ae1c0421b              # double 0.53199524013513455
	.quad	0x3fe7459efe92f73a              # double 0.72724866601468041
	.quad	0x3fe04c6a61b1f3d9              # double 0.50932807046012407
	.quad	0x3fdbdb22f4860be2              # double 0.43525003318080568
	.quad	0x3fe087f01b69ad67              # double 0.51659398416579172
	.quad	0x3febd7f8af1132f5              # double 0.87011369889077506
	.quad	0x3fe7b6b7b197e9d3              # double 0.74105438886845787
	.quad	0x3fd3f1a4b0cb4970              # double 0.3116237379555491
	.quad	0x3fefb8c677947dc4              # double 0.99130557399251317
	.quad	0x3fd938ffe24b38e2              # double 0.39410397624022953
	.quad	0x3fe6031104ea77c2              # double 0.68787432632574785
	.quad	0x3feb3c314798ef44              # double 0.85109771713130344
	.quad	0x3fd4be56a4d6ddb2              # double 0.32411733720388292
	.quad	0x3fdb648e0d078b10              # double 0.42801238319786794
	.quad	0x3feaa729e9a4f44a              # double 0.83290572770750626
	.quad	0x3fd038629c9dc4fe              # double 0.25344147963103569
	.quad	0x3fdbf229f18248aa              # double 0.43665550789695351
	.quad	0x3fc195c9f89a5710              # double 0.13738369597256694
	.quad	0x3fd0dcf5726cfdde              # double 0.26348625349416277
	.quad	0x3fef71f702f5b0a3              # double 0.9826617296034964
	.quad	0x3fbb2c10db1a3a28              # double 0.10614114140683084
	.quad	0x3fe64d1582bde08c              # double 0.69690967116822966
	.quad	0x3fea943597dcaf3b              # double 0.83059196148449332
	.quad	0x3fe65994ee231acd              # double 0.69843527327687982
	.quad	0x3fd9585b3ee21ae0              # double 0.396017848405263
	.quad	0x3fef89dc0163ca4d              # double 0.98557853957601937
	.quad	0x3fccc5c0dcb1a1a8              # double 0.22478495384281172
	.quad	0x3fd5aabf1872a8da              # double 0.3385465372799793
	.quad	0x3fe9466bab0e3ed9              # double 0.7898462620668979
	.quad	0x3fecc5a4b18aa4a5              # double 0.89912638355339836
	.quad	0x3fea31af5ed6a0fc              # double 0.81856506846545995
	.quad	0x3feaa364d571f228              # double 0.8324455422258028
	.quad	0x3fe1b404514306be              # double 0.55322471496057068
	.quad	0x3fef09f53eb5a435              # double 0.96996557472187439
	.quad	0x3f8ebcddc4dc8d00              # double 0.015008671350705161
	.quad	0x3fe90b7bce381705              # double 0.78265180852096761
	.quad	0x3fe004dada916489              # double 0.50059263886500205
	.quad	0x3fe5bd8cc09292b9              # double 0.67938840495897701
	.quad	0x3fcdb0a60ab29fc0              # double 0.23195338747359351
	.quad	0x3fdb38fca9576e46              # double 0.42535320794351994
	.quad	0x3fbbe6afbf6a50f0              # double 0.10898874686455762
	.quad	0x3fe57d85fac3c548              # double 0.67157267549024713
	.quad	0x3fee94f3e9735397              # double 0.95568271251487402
	.quad	0x3feab7a7e9d02535              # double 0.83491893450369636
	.quad	0x3fe775b7b4563abc              # double 0.73311982366597972
	.quad	0x3fa6fd66f388f8e0              # double 0.044902055004500729
	.quad	0x3fe4bb382629c10e              # double 0.64785392240267625
	.quad	0x3fd8dbf1bf73b102              # double 0.38842433639980822
	.quad	0x3fb5a4379420f270              # double 0.084537004150613048
	.quad	0x3fc0f2686881ab94              # double 0.13239770033700593
	.quad	0x3fe06ac222ddeffb              # double 0.51303202447843377
	.quad	0x3fd11523ae0c43d8              # double 0.2669152450262664
	.quad	0x3fd7ddc3d7ecd65e              # double 0.37291046225013769
	.quad	0x3feca92151a421a9              # double 0.89564577050719152
	.quad	0x3fe1aa7d88a77b86              # double 0.55206181230811135
	.quad	0x3fce16839b72864c              # double 0.23506207552149971
	.quad	0x3fedaef74cce13c7              # double 0.92760815621351689
	.quad	0x3fe29db56ea9ee87              # double 0.58175155271551737
	.quad	0x3fe963170d23d700              # double 0.7933459526672948
	.quad	0x3fd5fd66b9e57df0              # double 0.34359138635588149
	.quad	0x3fd87019bf147eda              # double 0.38184207592165154
	.quad	0x3fe8d816c97d9174              # double 0.77637805322278419
	.quad	0x3fa90714a728f450              # double 0.048882146268149129
	.quad	0x3fd732b4877eee6a              # double 0.36246979934705925
	.quad	0x3fdbb65b2b5be8b0              # double 0.43300513490943171
	.quad	0x3fd9b522f10c9102              # double 0.40168069400739637
	.quad	0x3fd2fee63c9af158              # double 0.29680782240372627
	.quad	0x3fe7ec2974e440d8              # double 0.74757836180108495
	.quad	0x3fce56877a9d30c4              # double 0.23701566206944424
	.quad	0x3fa611b0ed957070              # double 0.043103722574159842
	.quad	0x3fe6e7afb86e5f7a              # double 0.71578203221996195
	.quad	0x3fe12f07e93f6406              # double 0.53699107700515536
	.quad	0x3fbf6a08a504e668              # double 0.12271169689929595
	.quad	0x3febd9fc386fc994              # double 0.87035952589785603
	.quad	0x3fd67ffdddda5914              # double 0.35156199136089694
	.quad	0x3fe0bfce83cd36f1              # double 0.52341390364173723
	.quad	0x3f9e2d73bf3e32a0              # double 0.029470261142295784
	.quad	0x3fe438ed566b7b29              # double 0.63194910887600486
	.quad	0x3fef08b48c4bec37              # double 0.9698126545112079
	.quad	0x3feb52523e61ee67              # double 0.8537989824685156
	.quad	0x3fe298acc9fcb03d              # double 0.58113707972143624
	.quad	0x3fb41a6239ded738              # double 0.078527583244832111
	.quad	0x3fefa2bc5443cd4f              # double 0.9886151929662591
	.quad	0x3fe842a07c2cf715              # double 0.75813316586547563
	.quad	0x3fef3b18ef7a9119              # double 0.97596403859327829
	.quad	0x3fee55b1c1f7b2ff              # double 0.94796073803226466
	.quad	0x3fd4ed5d37cf62a6              # double 0.32698755693631154
	.quad	0x3fc0c9e32e7b6468              # double 0.13116111535672137
	.quad	0x3febd6a0a069c7b6              # double 0.86994963961318805
	.quad	0x3fdac07a152bd538              # double 0.41799785678388757
	.quad	0x3fda7bc95bc47854              # double 0.41380533181825752
	.quad	0x3feab25977524c0e              # double 0.83427117638564297
	.quad	0x3fef6c64c540b189              # double 0.98198164487762185
	.quad	0x3fd0f39108747d1e              # double 0.26486612153708389
	.quad	0x3fe175c1c0d18015              # double 0.54562461528621731
	.quad	0x3fcc447086c985f4              # double 0.22083860951811085
	.quad	0x3fe9fa6a7d0af118              # double 0.81181835577402506
	.quad	0x3fd37f898e5e82d0              # double 0.30465926078072147
	.quad	0x3fe852df9a0daf5e              # double 0.76011638725820396
	.quad	0x3fec678c479c528f              # double 0.88764013277484988
	.quad	0x3feeffb67086a1bc              # double 0.96871492364612477
	.quad	0x3fed60b8374066e6              # double 0.91805659095117842
	.quad	0x3fdeb176df5c9a1c              # double 0.4795815640704022
	.quad	0x3f9ba38d065a5e80              # double 0.026991084587818737
	.quad	0x3fd16d2e8ba55888              # double 0.27228892934125115
	.quad	0x3fec9bf09900274d              # double 0.89403562434129358
	.quad	0x3fd798b2be1ef22e              # double 0.3686949593209502
	.quad	0x3fb17a0b912afe48              # double 0.068268511716263025
	.quad	0x3fef1223f93a30df              # double 0.9709644191475738
	.quad	0x3fd1f52e74a8c1e0              # double 0.2805896891832429
	.quad	0x3fd28efc0a9ad270              # double 0.28997708354589857
	.quad	0x3fe6088257c24b94              # double 0.68853871479437823
	.quad	0x3fe87e7e940bb7fe              # double 0.76544121661368059
	.quad	0x3fa6909d5e7dd560              # double 0.044072072777377569
	.quad	0x3fa0e89a040b7fd0              # double 0.033024609559788254
	.quad	0x3fd4c5eed28857a0              # double 0.32458086547682719
	.quad	0x3fd3c1164b9b20f0              # double 0.30866010077853812
	.quad	0x3fe9b299ac0516eb              # double 0.8030517921222019
	.quad	0x3fc5ac803dae39a4              # double 0.16932681094881474
	.quad	0x3fe78d7d246fdf7d              # double 0.73602158657648398
	.quad	0x3fe5c6c41ca48e76              # double 0.68051343530937802
	.quad	0x3f8966d722a86d80              # double 0.012403183694053466
	.quad	0x3feecb80c38ed244              # double 0.96234167284871618
	.quad	0x3fc29811ef629970              # double 0.14526580990532123
	.quad	0x3fe8e18ca606cf58              # double 0.77753288676329202
	.quad	0x3fc582c9c94f41ac              # double 0.16805383996553525
	.quad	0x3fedcd687c337493              # double 0.93132423646933871
	.quad	0x3fe2082d3ca4dfb1              # double 0.56349813313044284
	.quad	0x3fc3e6f3c9c1d7f0              # double 0.15548560477662887
	.quad	0x3fdc184278fa907e              # double 0.43898069204647772
	.quad	0x3fe85ce2d0207f02              # double 0.76133862161438537
	.quad	0x3fe55cdf63e2ea41              # double 0.66758698948917339
	.quad	0x3fc2e4415c40975c              # double 0.14759079937465003
	.quad	0x3fec3d7ac208c7b3              # double 0.88250482461284319
	.quad	0x3fe73e2bee71b11f              # double 0.72633930750956555
	.quad	0x3fe25d00181f249a              # double 0.57385258399257855
	.quad	0x3fce57f702557ecc              # double 0.23705947507823166
	.quad	0x3fe9a0da70a2c94b              # double 0.80088541030117122
	.quad	0x3fca5d24f339caec              # double 0.20596753956086589
	.quad	0x3fee2cea14eac551              # double 0.94298271260610467
	.quad	0x3fecb630912bd345              # double 0.89723995546101121
	.quad	0x3fd29b01a9b7fa8c              # double 0.29071084570015482
	.quad	0x3fdcf8a16e1b3d26              # double 0.45267520668581296
	.quad	0x3f94f2951fd17d20              # double 0.020456628863368853
	.quad	0x3fede39941a25b61              # double 0.93403303927594206
	.quad	0x3fcdffb963cc4c64              # double 0.23436658261252596
	.quad	0x3f5b258fdc7ca200              # double 0.0016569046874314042
	.quad	0x3fdb9b4e6ae69820              # double 0.43135414542700978
	.quad	0x3fedc2a48ca11827              # double 0.93001010386138183
	.quad	0x3fe8e5a8a63079e9              # double 0.77803451975688376
	.quad	0x3fd9c43e9e9c4b12              # double 0.40260282029446259
	.quad	0x3fe794a1d788d478              # double 0.73689357849674675
	.quad	0x3fe94261b3590148              # double 0.78935322789042406
	.quad	0x3fe7ed29be35a61f              # double 0.74770056867891188
	.quad	0x3fdc4ab27c69d368              # double 0.44205915593857137
	.quad	0x3fda401273570a4e              # double 0.4101606489531705
	.quad	0x3fb992f05f922880              # double 0.099898360569712352
	.quad	0x3fc94a924d9cf0a0              # double 0.19758824147891563
	.quad	0x3fc52ce200e51210              # double 0.16543221515361539
	.quad	0x3fcb7940c5a19ad4              # double 0.21463784837688726
	.quad	0x3fc9312fe9701418              # double 0.19681357286768342
	.quad	0x3fdb78282e7fe58a              # double 0.42920879879928775
	.quad	0x3fe870d9aed84765              # double 0.76377567433722204
	.quad	0x3fd8b304e729b47e              # double 0.38592646193030322
	.quad	0x3fd3f57b19852a52              # double 0.31185796253399645
	.quad	0x3fe829c23c1b2b20              # double 0.7550975011775769
	.quad	0x3f93e8fdce4bcba0              # double 0.019443479267419073
	.quad	0x3fecf2d69e292e16              # double 0.90464335337441315
	.quad	0x3fa25f8b9e0d7fa0              # double 0.035885203403039911
	.quad	0x3fb4d870a0ce3d30              # double 0.081427611598191118
	.quad	0x3f9977e69c7d7500              # double 0.024871447850604689
	.quad	0x3feee1638237853a              # double 0.9650132697389957
	.quad	0x3fdd241f17f1b224              # double 0.45532967890065579
	.quad	0x3feb1ab26dd612e0              # double 0.84700890972507281
	.quad	0x3fd8c2d1619292b8              # double 0.38689074066705187
	.quad	0x3febd6f6344d309e              # double 0.86999044623509625
	.quad	0x3fef52c36bc850cb              # double 0.97885294963136837
	.quad	0x3fc4d8e25e35cf84              # double 0.16286878204448041
	.quad	0x3fc65e8b8ef86d5c              # double 0.17476028901078677
	.quad	0x3fed05fdbc3ae2be              # double 0.90698134196926339
	.quad	0x3fcaf9864305cfc0              # double 0.21073988220780215
	.quad	0x3fe40fa264340313              # double 0.626908488950081
	.quad	0x3fe302ed87d9632f              # double 0.59410740407029106
	.quad	0x3fd4244e5da39606              # double 0.31471594948229187
	.quad	0x3fe59a6bad713f28              # double 0.67510017276251677
	.quad	0x3feea253eb205c24              # double 0.95731540606619036
	.quad	0x3f85cc674376c8c0              # double 0.010643774744356072
	.quad	0x3fd51af18e0f7bb8              # double 0.3297695052441969
	.quad	0x3fcbe3fd56b9c0f4              # double 0.21789519056938611
	.quad	0x3fe0a0933d818391              # double 0.51960145962594784
	.quad	0x3f698e47af727100              # double 0.003119602213315642
	.quad	0x3fd5b97af1192c96              # double 0.33944581551322395
	.quad	0x3fd1d9b84419aa88              # double 0.27891356134811263
	.quad	0x3fe82922a36e677c              # double 0.75502139969033477
	.quad	0x3fda43cb2f938a20              # double 0.41038779874921438
	.quad	0x3fe9f2da0ed96cd3              # double 0.81089499378449614
	.quad	0x3fe7f49dda5db308              # double 0.74861042642223286
	.quad	0x3fe30de0b1981d15              # double 0.59544405638090103
	.quad	0x3fe900e9954feb3a              # double 0.78136138117347476
	.quad	0x3fd1447ce577d362              # double 0.26980516823760159
	.quad	0x3fe346fd30401343              # double 0.60241565154920129
	.quad	0x3fb9595fc84af028              # double 0.099019991302100707
	.quad	0x3fef56aa2116c2c2              # double 0.97932917082479087
	.quad	0x3fe00218281d25c6              # double 0.5002556594346792
	.quad	0x3fb3f074f62cd240              # double 0.077887830830897009
	.quad	0x3fe0b50b5de694fe              # double 0.52210014667494398
	.quad	0x3feda5178940f0b2              # double 0.92640282447202638
	.quad	0x3fc8f26f4e42a2e8              # double 0.19489852258018137
	.quad	0x3fea4da71dc353cd              # double 0.82197910130582275
	.quad	0x3fd50c6fa2db392a              # double 0.32888403800906707
	.quad	0x3feca9311f4b3e7c              # double 0.89565330612272431
	.quad	0x3fe36e9d241ae63b              # double 0.6072526650597817
	.quad	0x3fb19a54e0c3d388              # double 0.068761162637953288
	.quad	0x3fe93a8ac5a8ce3e              # double 0.78839624982214906
	.quad	0x3fe1796cf091ff42              # double 0.54607245432269047
	.quad	0x3fe2dbb322b77d80              # double 0.5893188169538206
	.quad	0x3fe69c79e689db85              # double 0.70660109545757221
	.quad	0x3fea8469fc5ed220              # double 0.82866381922810106
	.quad	0x3fe771c3670f0f3a              # double 0.73263712052037211
	.quad	0x3fcff5f311738ffc              # double 0.24969328262443458
	.quad	0x3fe328197b837143              # double 0.59864496349067797
	.quad	0x3fecc0cd1c22a697              # double 0.89853530402361315
	.quad	0x3fede7bd7bbc1578              # double 0.93453859488424396
	.quad	0x3fb48408a9799f90              # double 0.080139676452402719
	.quad	0x3fec7029d3dda0c9              # double 0.88869181995416924
	.quad	0x3fe978980ba90ea7              # double 0.7959709384671968
	.quad	0x3fe30e99273cb696              # double 0.59553201354511276
	.quad	0x3fb260b56a609808              # double 0.071788156958604188
	.quad	0x3fe6131e897c1503              # double 0.68983389713744747
	.quad	0x3fe2a78fd35f4b7a              # double 0.58295432361261068
	.quad	0x3fd934574b776584              # double 0.39381964082493703
	.quad	0x3fdec2017224afae              # double 0.4805911650353164
	.quad	0x3fee34c766c2796e              # double 0.94394273824927466
	.quad	0x3fd9623c8b16a726              # double 0.39662087996349482
	.quad	0x3fe6bc356c73817c              # double 0.71047469312547618
	.quad	0x3fd840cde4d07260              # double 0.37895533890858779
	.quad	0x3fbfb2e9d37410d8              # double 0.1238237515681847
	.quad	0x3fe6c50e6555be99              # double 0.71155471603374842
	.quad	0x3fc06054c28d5494              # double 0.12793979167569047
	.quad	0x3fe80f557a3f9f04              # double 0.75187181355156029
	.quad	0x3fd0fb2e359aab98              # double 0.26533084139617236
	.quad	0x3fecee3f9d6b3ae6              # double 0.90408306833145669
	.quad	0x3fccf3084958f91c              # double 0.22616675931380648
	.quad	0x3fe77570926d0ddb              # double 0.73308590506388371
	.quad	0x3fd5515f7184d82c              # double 0.33309160314400077
	.quad	0x3fd336e2001549ba              # double 0.30022478111382223
	.quad	0x3fd90f48f6472a36              # double 0.39155792284569502
	.quad	0x3fd5ac34d5552126              # double 0.33863564332252094
	.quad	0x3fea8aa78fb3fc2e              # double 0.82942560259824005
	.quad	0x3fe32892f7e8510b              # double 0.59870289248877506
	.quad	0x3fe2af47e01bf7e1              # double 0.58389657756174185
	.quad	0x3fdb14ad3e53f3aa              # double 0.42313700758659911
	.quad	0x3fd2b7c466c4dfea              # double 0.29246625934638237
	.quad	0x3febc4df249f81fc              # double 0.8677821841520763
	.quad	0x3fbe41296f9dbe20              # double 0.11818179106716586
	.quad	0x3feeb207f5b1d935              # double 0.95923231112718687
	.quad	0x3fcd7845ceced168              # double 0.23023293111840393
	.quad	0x3fe03d6fa8daeb10              # double 0.50749953250428526
	.quad	0x3fe7f19071a4f0b4              # double 0.74823782154228136
	.quad	0x3fde53a2e32f25b6              # double 0.4738547533603098
	.quad	0x3fb52f7b90949498              # double 0.082755778119990686
	.quad	0x3fef5b35872222c4              # double 0.97988392251235056
	.quad	0x3fd0ebf145942a68              # double 0.26440078539659462
	.quad	0x3fb4ac0c98f486d0              # double 0.080750262587140797
	.quad	0x3fd7431e90544a86              # double 0.36347164244322305
	.quad	0x3fe49d502c5b2e2d              # double 0.64420326865496735
	.quad	0x3fb52fcd71320688              # double 0.082760658393477127
	.quad	0x3fa928ea4a291560              # double 0.049140283158105147
	.quad	0x3fc4c8047ce92ed8              # double 0.16235405062831521
	.quad	0x3feb02fb9b986a08              # double 0.84411411657066626
	.quad	0x3fe08de64fbf9b5b              # double 0.51732173515197688
	.quad	0x3fed31a6c6bc69bd              # double 0.91231097045538656
	.quad	0x3fe93acbff315fcb              # double 0.78842735140187281
	.quad	0x3feed42831df3b6f              # double 0.96339807263016818
	.quad	0x3fe58f35f46f3525              # double 0.67373178235144293
	.quad	0x3fd76cc830bca158              # double 0.36601452598053674
	.quad	0x3fa1e5b7e1794f90              # double 0.03495573642126637
	.quad	0x3fd41bf9fc514272              # double 0.31420755043385562
	.quad	0x3fc2a7aed944bebc              # double 0.14574227913680271
	.quad	0x3fe1b82b20bf299c              # double 0.55373150249333802
	.quad	0x3fa4d71183c0d5f0              # double 0.040703341801798021
	.quad	0x3fd2c12ada5a3e7c              # double 0.29304000209319958
	.quad	0x3fdc79b5facbb5b4              # double 0.44492864124080289
	.quad	0x3fc68c0d10329b00              # double 0.17614901820089557
	.quad	0x3fd03d4265a8808a              # double 0.25373897483405783
	.quad	0x3fe9a8072739beb4              # double 0.80176122342341793
	.quad	0x3fdb83cc5bcb409a              # double 0.42991932834866875
	.quad	0x3fcd86ff341407ac              # double 0.23068227808840669
	.quad	0x3fa71ac497f8d7b0              # double 0.045126098204874565
	.quad	0x3fcc9e7214ba6a2c              # double 0.22358537685507096
	.quad	0x3fcdc85d258a7fcc              # double 0.23267711957032444
	.quad	0x3fb9d4d03fc0f118              # double 0.10090352589117335
	.quad	0x3fb94ce5e4b08880              # double 0.09882962067834633
	.quad	0x3fe6a634dae2413c              # double 0.70778887511008959
	.quad	0x3f883aa58a11eac0              # double 0.011830609584867147
	.quad	0x3fefb6ab542b9b4b              # double 0.99104849280852513
	.quad	0x3fe2bd27ddda0c95              # double 0.58559029894276426
	.quad	0x3fe21af86b525b1f              # double 0.56579228364248368
	.quad	0x3fe91c862ec27f61              # double 0.78473195202603219
	.quad	0x3fb9fcdfec860a68              # double 0.10151481174947607
	.quad	0x3fe14582401f24f6              # double 0.53973495982896114
	.quad	0x3fe6b7e0828de6bf              # double 0.70994592188727512
	.quad	0x3fea12c2f70793f9              # double 0.81479023216218061
	.quad	0x3fe20d3be593124e              # double 0.56411547507065918
	.quad	0x3fc9e570cae90734              # double 0.20231447131851044
	.quad	0x3fd794999509c440              # double 0.36844481997019685
	.quad	0x3fee66669b812657              # double 0.95000009891482307
	.quad	0x3fee403b2677ca6e              # double 0.94534070504444201
	.quad	0x3fed27094b1401e6              # double 0.91101517356588313
	.quad	0x3fb621bc9a196d60              # double 0.086452281591325342
	.quad	0x3fe9ccc8a43f0b36              # double 0.80624801711414906
	.quad	0x3febe549302e96db              # double 0.87173900042099761
	.quad	0x3fee54b3c78cb73b              # double 0.94783963179154485
	.quad	0x3fb7bcf19bed1ab0              # double 0.092726803367535692
	.quad	0x3fe7b8c436185783              # double 0.74130449834295609
	.quad	0x3f81094b8867c880              # double 0.0083185101511598081
	.quad	0x3fdcb629d88087ce              # double 0.44861837523251047
	.quad	0x3fd1a1b19b654250              # double 0.27549400496812826
	.quad	0x3fef8d3ee84fd94a              # double 0.98599191068095959
	.quad	0x3fd914ed12c36410              # double 0.39190222580288125
	.quad	0x3fe766b0c560547e              # double 0.73128546285683149
	.quad	0x3fe59b29620411ce              # double 0.67519063132982082
	.quad	0x3fe94efee754b691              # double 0.79089303190058236
	.quad	0x3feb2fe491298826              # double 0.84959629394530078
	.quad	0x3fc5d8d414e3199c              # double 0.17067957897070307
	.quad	0x3fdb177157302faa              # double 0.4233058310935528
	.quad	0x3fc77f135ca4c7b4              # double 0.18356554053894814
	.quad	0x3fee63ec977b1f51              # double 0.94969777666208632
	.quad	0x3fcd4fff9e1fa210              # double 0.22900386067273404
	.quad	0x3fe5b2ec34dbf9a5              # double 0.67809114765241374
	.quad	0x3fe3ad426add8624              # double 0.61489983436712636
	.quad	0x3fea9e85f73a4bf5              # double 0.83185098921455725
	.quad	0x3fe6a8152f923ec0              # double 0.70801791468871755
	.quad	0x3fd2f9ff5c307326              # double 0.2965086365018571
	.quad	0x3fe477bea2558d82              # double 0.63961726861855106
	.quad	0x3fee86555292b0ab              # double 0.95389810683766052
	.quad	0x3fe2a62904317496              # double 0.58278323000890242
	.quad	0x3fec78c2bf0b6bd4              # double 0.8897412997570151
	.quad	0x3fea0e6279f37073              # double 0.81425594156782066
	.quad	0x3fec20c650903745              # double 0.87900081381824491
	.quad	0x3fef2c6d4062bba4              # double 0.9741731889279106
	.quad	0x3fea67050c79d162              # double 0.8250756496113747
	.quad	0x3fc90bdb0c214bfc              # double 0.19567430584228862
	.quad	0x3fd2a2bcfae1085c              # double 0.29118275165467877
	.quad	0x3feae8bf594dc522              # double 0.84091155473848667
	.quad	0x3fe9662daa23aef3              # double 0.79372294645642538
	.quad	0x3fad24550f357eb0              # double 0.056917818171084433
	.quad	0x3fd6917cb3991f82              # double 0.35262982882385796
	.quad	0x3fdd30a724fd7bb0              # double 0.45609453785248899
	.quad	0x3fc5be35e1e6b794              # double 0.1698672631295578
	.quad	0x3fd0cb52b600415c              # double 0.26240985654387372
	.quad	0x3feefef4669c59e7              # double 0.96862239876901135
	.quad	0x3febab31b1694c48              # double 0.86464771891258696
	.quad	0x3fe4a1d0b1f149ee              # double 0.64475283388520466
	.quad	0x3fd20e806babf424              # double 0.28213511004270431
	.quad	0x3fcd49088759b6b0              # double 0.22879129990490332
	.quad	0x3fbdbeda0a11b1f0              # double 0.11619341607883604
	.quad	0x3fe574d3c8f875dc              # double 0.67051114322719796
	.quad	0x3fe31c6ffa1462a7              # double 0.59722136348417088
	.quad	0x3febefaa05e70c86              # double 0.87300587799872242
	.quad	0x3fd44f8d7e9a8cb8              # double 0.31735551227229619
	.quad	0x3fdeb677678252cc              # double 0.47988686664875213
	.quad	0x3fe5ed0c558ab979              # double 0.68518654544258972
	.quad	0x3fbe59d707edd390              # double 0.11855834907130558
	.quad	0x3fd3db9921ee526a              # double 0.31027820886200763
	.quad	0x3fe38c1419411902              # double 0.6108494275329408
	.quad	0x3f8960f5faa4a840              # double 0.01239196940567322
	.quad	0x3fee9f1f619e05b9              # double 0.95692414346574772
	.quad	0x3fe45144ad921331              # double 0.63492044353970389
	.quad	0x3fe76c438020afbf              # double 0.73196578049600436
	.quad	0x3feecf24ba6ccff1              # double 0.96278606806890654
	.quad	0x3f8202a5501e87c0              # double 0.0087941088748414442
	.quad	0x3fe715562f33d5b2              # double 0.72135457247957491
	.quad	0x3fea0c155215584d              # double 0.81397501022252927
	.quad	0x3fe380a92dc07615              # double 0.609455670699108
	.quad	0x3fe42dcf0389330e              # double 0.63059187594044075
	.quad	0x3fc86d05041399d0              # double 0.19082701396037161
	.quad	0x3fbcbf3c95a3d0d8              # double 0.11229303983037953
	.quad	0x3fedf10743e87860              # double 0.93567240966127585
	.quad	0x3fd2066c05a081a0              # double 0.28164196538457453
	.quad	0x3fe7ec6e502d6cc0              # double 0.74761119517952324
	.quad	0x3fd28c95c92a9d32              # double 0.28983063359415262
	.quad	0x3fbbbe0102e4eab0              # double 0.10836798020037963
	.quad	0x3fd6a8843064b5da              # double 0.35403542257230713
	.quad	0x3fecb59927df345f              # double 0.89716775691489292
	.quad	0x3fdbe138ce564672              # double 0.43562145376299732
	.quad	0x3faa60b848c575e0              # double 0.051519163974017124
	.quad	0x3fcaffeb066b4a3c              # double 0.21093499959404649
	.quad	0x3fcb66351e8326c4              # double 0.21405662526949787
	.quad	0x3fe1a4ace1bbf84d              # double 0.55135196770403072
	.quad	0x3fc82de701b83f38              # double 0.18890082916231576
	.quad	0x3fd935bcfc330548              # double 0.39390492085302187
	.quad	0x3fe75f9d2eed50bc              # double 0.73042163052971132
	.quad	0x3fe22243969d9705              # double 0.56668261925798957
	.quad	0x3fefdbf6add22640              # double 0.99560102414506701
	.quad	0x3fdbb35855298efa              # double 0.43282135311731873
	.quad	0x3fed3a41d6de1074              # double 0.91336147276207535
	.quad	0x3fe909817436e15f              # double 0.78241036127205266
	.quad	0x3fda85f88e693f92              # double 0.41442693621956395
	.quad	0x3fe9a6fd6379e621              # double 0.80163449696482669
	.quad	0x3fc372a203e5af38              # double 0.15193581762593467
	.quad	0x3fdde6753c25acdc              # double 0.46719103692767106
	.quad	0x3feea0bee954dec3              # double 0.95712228367389007
	.quad	0x3fcca190bb740fcc              # double 0.22368058350559605
	.quad	0x3fd9aa345ec2c854              # double 0.40101346258155002
	.quad	0x3fefb48991cab891              # double 0.99078825449920959
	.quad	0x3fd9be93109a9ca4              # double 0.40225674268226386
	.quad	0x3fea71adcb53b400              # double 0.82637681686685482
	.quad	0x3fea37a5f248636c              # double 0.81929299660542431
	.quad	0x3f85d84fac0d6bc0              # double 0.010666487157939275
	.quad	0x3fc7aca2a93e827c              # double 0.18495591415286927
	.quad	0x3febd5aa2246f830              # double 0.86983210272570055
	.quad	0x3fc748b669d1c7b8              # double 0.18190651099172128
	.quad	0x3fe70dd946c621ea              # double 0.72044051955259403
	.quad	0x3fe830f9bf9f2963              # double 0.75597846437566962
	.quad	0x3fea1246a9abf7b7              # double 0.81473096026433367
	.quad	0x3fceb5334fd06b2c              # double 0.23990479848074509
	.quad	0x3fd0dfb5f7926f1a              # double 0.26365422417596707
	.quad	0x3fe3e61b0eed0036              # double 0.62183907427971152
	.quad	0x3fe3fe964f036402              # double 0.62482753212236752
	.quad	0x3fdef3122e642478              # double 0.48358587770832839
	.quad	0x3fe87c419ee9cd4c              # double 0.76516800916434979
	.quad	0x3fe1b335501492a9              # double 0.55312600746818419
	.quad	0x3fb9685d346ed1b0              # double 0.099248719502446958
	.quad	0x3fc0613ea5499504              # double 0.1279676730220346
	.quad	0x3fe6a45308522710              # double 0.7075591242330308
	.quad	0x3feb4ba83906815b              # double 0.85298548829818388
	.quad	0x3fd774da45754e6c              # double 0.36650711806325975
	.quad	0x3fd34645dc325d38              # double 0.30116411689364808
	.quad	0x3fd1e28afaceceac              # double 0.27945208065942029
	.quad	0x3fe84c3e699e77c5              # double 0.75930710438455462
	.quad	0x3fc5a583b46e5a10              # double 0.16911360082731663
	.quad	0x3fdff8f5806100f4              # double 0.49957025086406692
	.quad	0x3feea5bbde43e883              # double 0.95773118411240465
	.quad	0x3fc0896c4a57f780              # double 0.12919381742534242
	.quad	0x3fe3d02f036c0cc7              # double 0.61916304272053757
	.quad	0x3fcfc5c431a4d588              # double 0.24822285102861152
	.quad	0x3feb3e134e7d5c82              # double 0.85132756547945143
	.quad	0x3fd5682254d07836              # double 0.33448084147119361
	.quad	0x3fc61598ec7e5064              # double 0.1725340990784644
	.quad	0x3fd5c1757ccec3ca              # double 0.3399327963662101
	.quad	0x3fde88c339cdbda8              # double 0.47709732670679239
	.quad	0x3fd6b9c7b47b036e              # double 0.35508911728907477
	.quad	0x3fee7ad95a613bdc              # double 0.9524962201338627
	.quad	0x3fe34a07ac79f01e              # double 0.6027868622472885
	.quad	0x3fe58d5967ecea48              # double 0.67350454614581512
	.quad	0x3fefb336c2471b90              # double 0.99062669701457828
	.quad	0x3fdc7cecf1d4e4fa              # double 0.44512485138291391
	.quad	0x3fd071cc98994f9a              # double 0.25694575216516002
	.quad	0x3fdf94c30de8b404              # double 0.49345470770168753
	.quad	0x3fe31f6b263e2e91              # double 0.59758527249637627
	.quad	0x3fda8aae9971dbd4              # double 0.41471447930183314
	.quad	0x3fe364999eaeabc9              # double 0.60603028290403771
	.quad	0x3fe8c4d76afce19c              # double 0.77402850051935301
	.quad	0x3fe2ec7b879d361b              # double 0.59136749732141725
	.quad	0x3fb0b294845193f0              # double 0.065224916748391371
	.quad	0x3fe5bd5a05729907              # double 0.67936421455377249
	.quad	0x3feda782dbfa1199              # double 0.92669814075684365
	.quad	0x3fadc4bc0857fb80              # double 0.058141590136066235
	.quad	0x3fd41698ec051ffe              # double 0.31387923287229558
	.quad	0x3f74b8940e436e00              # double 0.0050588401247426695
	.quad	0x3fe6e40d30a54ecd              # double 0.71533832074279646
	.quad	0x3fe91ba79bde25e5              # double 0.78462582056925767
	.quad	0x3fe1fa47e53aeecd              # double 0.56180186053776426
	.quad	0x3fb04549ec48e360              # double 0.063557262598704423
	.quad	0x3fe226ae621852e5              # double 0.56722182425673096
	.quad	0x3fe82024c639f059              # double 0.75392378536299554
	.quad	0x3fb8ed4ec4f1b3b8              # double 0.097371028024737849
	.quad	0x3fe9f6f1d8ab3eb1              # double 0.81139461820744974
	.quad	0x3fe197fb59911b5f              # double 0.54980247014541905
	.quad	0x3fd7260e332bcf3e              # double 0.3616977214544369
	.quad	0x3fc32768a68571f0              # double 0.14964016085549714
	.quad	0x3fd9d1f3b3884418              # double 0.40343945057344532
	.quad	0x3fe4fdf1f88af319              # double 0.65599916976461536
	.quad	0x3fcb675cb7efc908              # double 0.21409186345369613
	.quad	0x3fd6550971aeaff0              # double 0.34894023992342138
	.quad	0x3fe49d9a9fb3019d              # double 0.64423876944788427
	.quad	0x3faba37858c7e520              # double 0.053981552922730325
	.quad	0x3fe6ed35ed3076d8              # double 0.71645637823140884
	.quad	0x3fed9a7a8a6eb1b8              # double 0.92510726010873778
	.quad	0x3fad4ec8b07c6a40              # double 0.05724169878358909
	.quad	0x3fda72a614a8894c              # double 0.4132476045362139
	.quad	0x3fe6e3156e2e1480              # double 0.71522017974406538
	.quad	0x3fe7bca4050a8a45              # double 0.74177742943386049
	.quad	0x3fd9ca5becd8d680              # double 0.4029760182341775
	.quad	0x3fd23c619f9f43c6              # double 0.28493538463686396
	.quad	0x3fbbedc5c7b3ead8              # double 0.10909687161976522
	.quad	0x3fe73caf16b5a7ea              # double 0.72615770755259956
	.quad	0x3fe8c91346e3f6a2              # double 0.77454532476231841
	.quad	0x3fe78c2cad865ee4              # double 0.73586114780024703
	.quad	0x3fdb167203cff316              # double 0.42324495670600137
	.quad	0x3fecc69cd87237ea              # double 0.89924471163408026
	.quad	0x3fe50a0b8e90a16e              # double 0.65747621388167743
	.quad	0x3fed087f226db40f              # double 0.90728718494722382
	.quad	0x3fe9bb977bf399a1              # double 0.80414938172616612
	.quad	0x3fa9691c32c5aff0              # double 0.049630051801471953
	.quad	0x3fe3f67a054022c9              # double 0.62383748078817647
	.quad	0x3fd14294777e11ee              # double 0.26968871754823354
	.quad	0x3fdb92ea2d28eaa2              # double 0.43084196481837911
	.quad	0x3fe8ffe2c93ad0ca              # double 0.78123606970486859
	.quad	0x3fe4ff57a547a53d              # double 0.65616972237800264
	.quad	0x3fed47035be3bd15              # double 0.9149185938566996
	.quad	0x3fc625ed85be6448              # double 0.17303246527152027
	.quad	0x3fcf2df79ffe7408              # double 0.24359031021313649
	.quad	0x3fe09c798ac59881              # double 0.51910092452887124
	.quad	0x3fdc4b380932a5c2              # double 0.44209099672533736
	.quad	0x3fc3ee260d80d3bc              # double 0.15570521983468477
	.quad	0x3fe7091d4344c24c              # double 0.71986258638760026
	.quad	0x3fdc7e5b8452356c              # double 0.44521224901185152
	.quad	0x3fc2ad48dbdb97c4              # double 0.14591322646373162
	.quad	0x3fea59eeae4c5833              # double 0.82347806971188786
	.quad	0x3fd7fbba6e97325a              # double 0.37473927306999644
	.quad	0x3fd21d6866533f96              # double 0.28304491036123502
	.quad	0x3fea59c6f6386913              # double 0.82345913019097094
	.quad	0x3fedb0f95d0f87e7              # double 0.9278532807913934
	.quad	0x3fef125ebfdbd3bb              # double 0.97099244568254705
	.quad	0x3fd7dbbf7f53b5ce              # double 0.37278735574986122
	.quad	0x3fcf5f898b31ce78              # double 0.24510306641205992
	.quad	0x3fead77838e15cb6              # double 0.8388024435943382
	.quad	0x3fe913978f4f3ff8              # double 0.78364160528326376
	.quad	0x3fe6d9acda0b2f2d              # double 0.71407167994172982
	.quad	0x3fdb99499c404c48              # double 0.43123092898276072
	.quad	0x3fdbcfa21d90b0fa              # double 0.43454792868830305
	.quad	0x3fe79d250784a16b              # double 0.73793269604088374
	.quad	0x3fe586036c0a1653              # double 0.67260905362554479
	.quad	0x3fef398ca10af6b2              # double 0.97577506498028854
	.quad	0x3fe80f473c0f371d              # double 0.75186502199514715
	.quad	0x3fd3bf6e3e82d8ee              # double 0.3085589991054708
	.quad	0x3fdd3b2f623f1b2a              # double 0.45673737139115878
	.quad	0x3fe38f9ce3b31fa3              # double 0.61128086540792415
	.quad	0x3fd8b7e286a4f51c              # double 0.38622344158996369
	.quad	0x3fc179c11afc3e34              # double 0.13652814691202908
	.quad	0x3fe4935a4c55bb85              # double 0.64298739346655565
	.quad	0x3fee501057789a35              # double 0.94727341732215697
	.quad	0x3fd61dd04018e570              # double 0.34556967029091989
	.quad	0x3fc112759e84110c              # double 0.13337583770783856
	.quad	0x3fec0fa5207407f1              # double 0.87690979326748508
	.quad	0x3fe5fde7ea0e09aa              # double 0.68724437440714792
	.quad	0x3fe7a45682860532              # double 0.73881078236460085
	.quad	0x3fe8ba8dff9af7ba              # double 0.77277278826635798
	.quad	0x3fec17ad02e89832              # double 0.87789011543350726
	.quad	0x3fd6cf48361d9a30              # double 0.35640149388055686
	.quad	0x3fdd345ea134fd7a              # double 0.45632138960714708
	.quad	0x3fcdc5170563b84c              # double 0.23257720721398056
	.quad	0x3fb32e9b5265dbb0              # double 0.074929912201567416
	.quad	0x3fe18e4000c8b88c              # double 0.54861450341356166
	.quad	0x3fd15288367cc61c              # double 0.27066235848460152
	.quad	0x3fe55338f2d8b69a              # double 0.66640899115528218
	.quad	0x3fecf0c630e5e28c              # double 0.90439137983692452
	.quad	0x3fe1283222e9f193              # double 0.53615671939000931
	.quad	0x3fece55763b331ee              # double 0.90299577210094895
	.quad	0x3fddfacb9aa7f920              # double 0.46843233206881685
	.quad	0x3fe8e2234105e543              # double 0.77760470104036761
	.quad	0x3fe5bd7f5aff7c27              # double 0.67938201687855304
	.quad	0x3fa1250446f18270              # double 0.033485540065844144
	.quad	0x3fe1ca3da0a1fed9              # double 0.55593758939354665
	.quad	0x3fbb55548c2bade8              # double 0.10677078649648986
	.quad	0x3fc51b8a83a71bd0              # double 0.1649029867969305
	.quad	0x3fead4097f258aa7              # double 0.83838343461350895
	.quad	0x3fd7fc5f5aa1958e              # double 0.37477859354688625
	.quad	0x3fdb835becd86560              # double 0.4298925221388199
	.quad	0x3fd4b720eca7a0f0              # double 0.32367728339023838
	.quad	0x3fe3d9711450fbb6              # double 0.6202931782535106
	.quad	0x3fe3a1c5cdd21deb              # double 0.61349764060372303
	.quad	0x3fd979bec82db75e              # double 0.39805573986710907
	.quad	0x3fd41a65977f6572              # double 0.31411113543216296
	.quad	0x3fd8c931f2d24bc2              # double 0.38727997506174117
	.quad	0x3fd1b193ec0f481e              # double 0.27646349003510007
	.quad	0x3fef4a0ad6d2417a              # double 0.97778837163245602
	.quad	0x3fe45288da26410d              # double 0.6350750218134934
	.quad	0x3fee1edbb8ed3870              # double 0.94126688116535995
	.quad	0x3fc2b82583c552dc              # double 0.14624470647927168
	.quad	0x3fd79138bab74bf6              # double 0.36823862298950816
	.quad	0x3fcfa6104ca44098              # double 0.24725536100641388
	.quad	0x3fcb2d25733cbd14              # double 0.21231525542086926
	.quad	0x3fe4d899d4864e83              # double 0.65144053944318647
	.quad	0x3fe59a1a70cf3e92              # double 0.67506143601527158
	.quad	0x3fe943093c24f619              # double 0.78943311449956177
	.quad	0x3fbf40fac6d532a8              # double 0.12208525995556363
	.quad	0x3fe6443fc2fc9f30              # double 0.69583118518219145
	.quad	0x3fdeb5d929bb4c2a              # double 0.47984913897852499
	.quad	0x3fe25baf1bc555d4              # double 0.57369189666740761
	.quad	0x3fdd72e020676dc4              # double 0.46013644375281282
	.quad	0x3fee467b1ff02a5f              # double 0.9461036323348927
	.quad	0x3fdfe6dc0dfe9ca6              # double 0.49846555105836854
	.quad	0x3fe552529eddbc52              # double 0.66629916218324525
	.quad	0x3fddc6a66058cc12              # double 0.46524962815164017
	.quad	0x3fd1b1800d877aa6              # double 0.27645875283443855
	.quad	0x3fe1298d4c17bad8              # double 0.53632225858549543
	.quad	0x3fc9d3fabd325afc              # double 0.20178159940834195
	.quad	0x3fe897ad59c2b7c9              # double 0.76851527720804669
	.quad	0x3fe449105bb2d9b0              # double 0.63391893300904734
	.quad	0x3fd6004503821e3c              # double 0.34376645414929263
	.quad	0x3fe29e1bde0b398b              # double 0.58180039756716562
	.quad	0x3fd54504377c08e6              # double 0.33233743112954384
	.quad	0x3f93072547e148e0              # double 0.018581945907791275
	.quad	0x3fe36342ed04380e              # double 0.60586687366753877
	.quad	0x3feb7bb010f86882              # double 0.85884860338707392
	.quad	0x3fb5a0b93bccea78              # double 0.084483697032661342
	.quad	0x3fc9dac02551e6b4              # double 0.20198823759328877
	.quad	0x3fd28d97c27cb7ee              # double 0.28989213936699698
	.quad	0x3fdef55aaa246f6c              # double 0.48372522941075746
	.quad	0x3fe5357295fe8c3b              # double 0.66277436538474122
	.quad	0x3fcd98908e63806c              # double 0.23121840431759055
	.quad	0x3fea86436cd5d619              # double 0.82888957268613972
	.quad	0x3fd196da205c2990              # double 0.27483227882535122
	.quad	0x3fef49723e249bdb              # double 0.97771560799889856
	.quad	0x3fea57c839992d74              # double 0.8232155919044275
	.quad	0x3fd4c739b939f87c              # double 0.32465975845833106
	.quad	0x3fecf81a1a0f469b              # double 0.90528588380603325
	.quad	0x3fec2e90a0ea8998              # double 0.88068419865548986
	.quad	0x3fdfc6fd41a9c51e              # double 0.49652034199159967
	.quad	0x3fddffb8f413a8f2              # double 0.46873306117653535
	.quad	0x3feaff69d73f481c              # double 0.84367839851825321
	.quad	0x3fd3abb6a669b534              # double 0.3073555588842567
	.quad	0x3fa38c6b5b65c530              # double 0.038180689722944527
	.quad	0x3fe7c153b17c613c              # double 0.74234947838980458
	.quad	0x3fda978835cd033e              # double 0.415498783626436
	.quad	0x3fe379ea2d7afa85              # double 0.60863217242133827
	.quad	0x3fb7a9062e3ad2b0              # double 0.092422853743139965
	.quad	0x3fe9edbb586089f9              # double 0.81026999722627047
	.quad	0x3fe4203381d39624              # double 0.62893081051578692
	.quad	0x3fe88b18919709ef              # double 0.76697948871179544
	.quad	0x3feee8f718d36665              # double 0.96593813751969703
	.quad	0x3fe71e1eb6ea0d0f              # double 0.72242675519410848
	.quad	0x3fcfbd18a9d3186c              # double 0.24795826236931207
	.quad	0x3fdd155b7d3f0e18              # double 0.45442855101666302
	.quad	0x3fc43eb6735e1f14              # double 0.15816383965670211
	.quad	0x3fe57578b4272c08              # double 0.67058978258262503
	.quad	0x3fca7addb90a7cf8              # double 0.20687457595065672
	.quad	0x3fdb4160d5e9eda2              # double 0.42586537256257817
	.quad	0x3fcb6e281a2fcc50              # double 0.21429921415946973
	.quad	0x3fc035e1a2837e98              # double 0.12664432940708958
	.quad	0x3fef2630376ac40a              # double 0.97341166328090023
	.quad	0x3fe18f298f21baca              # double 0.54872587161465813
	.quad	0x3fe48f06e7a2a9b0              # double 0.64245934716500663
	.quad	0x3fba30c417e6c4c8              # double 0.10230660995036367
	.quad	0x3fd9bad733e03c4a              # double 0.40202884737022215
	.quad	0x3fecc2642c673331              # double 0.89872940704808546
	.quad	0x3fe47bbd83309dc9              # double 0.64010501502064543
	.quad	0x3fd2bfe10f6ab7ae              # double 0.29296137338212247
	.quad	0x3fe400fe569232d9              # double 0.62512127788940142
	.quad	0x3fecf88b422a886e              # double 0.90533984110903787
	.quad	0x3feff1e94cbd3bc8              # double 0.99828019130824774
	.quad	0x3fd15ac8ca2aaece              # double 0.27116603606075962
	.quad	0x3fdb66957f1e652a              # double 0.4281362286943301
	.quad	0x3fec66c1f1127946              # double 0.8875436504784282
	.quad	0x3fe91ac5a86099b9              # double 0.78451807867241208
	.quad	0x3fae163e85b39060              # double 0.058763459988569577
	.quad	0x3fcf5213d2eb1fcc              # double 0.24469230459931024
	.quad	0x3fc8eabb5079e208              # double 0.19466344289300275
	.quad	0x3fc914b7cf6d1cc0              # double 0.19594476345284839
	.quad	0x3fd48e5a8e25e5ea              # double 0.32118858224529723
	.quad	0x3fa13967377a9ba0              # double 0.033641076586085505
	.quad	0x3fd2677fa6640920              # double 0.28756705521677084
	.quad	0x3fe71a1fe11a2c84              # double 0.72193902936250298
	.quad	0x3fe04e863f12ecbc              # double 0.50958549803853925
	.quad	0x3fd9d0aae431f19a              # double 0.4033610561816886
	.quad	0x3fcc863ab5dbb078              # double 0.22284635429184951
	.quad	0x3fe0ee3a947ad86f              # double 0.52908066749547611
	.quad	0x3feaceb8af4d8a32              # double 0.83773454893918697
	.quad	0x3fe2253e2ea7556b              # double 0.5670462523654981
	.quad	0x3fb1883857862848              # double 0.068484803550888818
	.quad	0x3fe7cde9b8c41eca              # double 0.74388586127403156
	.quad	0x3f5578bfbdbb4c00              # double 0.0013105270835935823
	.quad	0x3fddcd8f8b535422              # double 0.46567143064504724
	.quad	0x3fed70534901629b              # double 0.91996158846730525
	.quad	0x3fc484bb34361720              # double 0.16030063676242268
	.quad	0x3f6b554e153ee100              # double 0.0033365750368511415
	.quad	0x3fef8262f55d550a              # double 0.98466632769364648
	.quad	0x3fc9658bef4e8e8c              # double 0.19841145691781426
	.quad	0x3fd72f25c026d91a              # double 0.36225265278643948
	.quad	0x3fdf96377ddbf9e8              # double 0.49354350367494115
	.quad	0x3fedc68790a1a3cc              # double 0.93048456428834347
	.quad	0x3feb0d8e5c3ad565              # double 0.84540479673038915
	.quad	0x3fe9e638338ceca6              # double 0.809352970776122
	.quad	0x3fcb4e08f7d62210              # double 0.21331894017591013
	.quad	0x3fcae34c397a1014              # double 0.21006157690510519
	.quad	0x3fe415b2055bf8b4              # double 0.62764836355906661
	.quad	0x3fe9da5427224e6d              # double 0.80790145533906144
	.quad	0x3fe5f6b0747e0dd0              # double 0.6863634371988443
	.quad	0x3fe35f0ffe8394b4              # double 0.6053543063141178
	.quad	0x3fef78f1919ad5d2              # double 0.9835136264652482
	.quad	0x3febe3c8c9e248c4              # double 0.87155570440725016
	.quad	0x3fea5906aa3118a9              # double 0.82336743584234739
	.quad	0x3fd7687c5fc45584              # double 0.36575230934371228
	.quad	0x3f7d9d3ec6e45d80              # double 0.0072300388549345618
	.quad	0x3fd54606d9dd3b16              # double 0.33239909435080628
	.quad	0x3fdfda1c6b6f7fe8              # double 0.49768743983986363
	.quad	0x3fdc411c8af5f23c              # double 0.44147409029372731
	.quad	0x3fc6d7a6c6679b64              # double 0.17845616042833534
	.quad	0x3fa35a353a19cf60              # double 0.03779760679472477
	.quad	0x3fdc6e0a71a405a8              # double 0.44421635720945085
	.quad	0x3fed745751d4bf27              # double 0.92045179350495665
	.quad	0x3fd7e835f5aa2b5c              # double 0.37354802122779573
	.quad	0x3fe635a10b41a311              # double 0.69404651831163922
	.quad	0x3fead07c65fcc51d              # double 0.83794994277392088
	.quad	0x3fe9cf1e2a0d3471              # double 0.80653293812942028
	.quad	0x3fc6d86f06159e78              # double 0.17848003193943263
	.quad	0x3fd092d20c9aef92              # double 0.25896121245363546
	.quad	0x3fc0ec59bd94495c              # double 0.132212846343985
	.quad	0x3fe63f97874312e1              # double 0.69526268404350955
	.quad	0x3fde348198aafcc6              # double 0.47195472630478397
	.quad	0x3fda274d432e72a2              # double 0.40864879189192937
	.quad	0x3fefd6ab2412d5ee              # double 0.99495465322132559
	.quad	0x3fe46370db44bc4b              # double 0.63713877511862316
	.quad	0x3fc598395886f8d4              # double 0.16870800802821029
	.quad	0x3fc85020e5bcfc90              # double 0.18994532792746499
	.quad	0x3fd8dbceffa012a2              # double 0.38841605151564285
	.quad	0x3fd38ba0ead88010              # double 0.30539725240851201
	.quad	0x3fe24d336d75aa25              # double 0.57192393664201246
	.quad	0x3fe624303fcb95ad              # double 0.69191753826151159
	.quad	0x3fe6aff943177734              # double 0.70898116210785256
	.quad	0x3fd206a77b2cf48c              # double 0.28165614155643293
	.quad	0x3fe3988b439ce59e              # double 0.61237109380379073
	.quad	0x3fde013ad961f888              # double 0.46882506588725237
	.quad	0x3fd739246b1efa94              # double 0.36286268673931343
	.quad	0x3fe1b2269867bdeb              # double 0.55299691931389583
	.quad	0x3fe464ab46afef48              # double 0.63728870206930655
	.quad	0x3fe4a4a3f850b2ba              # double 0.64509771822994044
	.quad	0x3fe5ec1d0513c986              # double 0.68507243148478447
	.quad	0x3fe74e1ae0bc22bb              # double 0.72828430074249384
	.quad	0x3fd90423c1d14d4c              # double 0.39087766578196148
	.quad	0x3fe66aeee0e3bea5              # double 0.70055335925822659
	.quad	0x3fcfa3b85afc59ac              # double 0.24718384211219069
	.quad	0x3fec39143ff3d979              # double 0.88196766367654711
	.quad	0x3fe45256d4aff376              # double 0.63505116978158926
	.quad	0x3feb5910a261bdfc              # double 0.85462218966671299
	.quad	0x3fef7dafadcd4b67              # double 0.98409255929651073
	.quad	0x3fed155165904d37              # double 0.908852289549407
	.quad	0x3fc9d69c646b4010              # double 0.20186190512913571
	.quad	0x3fd43e7a34955dc2              # double 0.31631331572631549
	.quad	0x3fe6b0dda84047a1              # double 0.70909006940404506
	.quad	0x3fd40619b9ad92cc              # double 0.31287234432811029
	.quad	0x3fe6b0ecbd078b50              # double 0.70909726066416034
	.quad	0x3fdac85661bfe5f8              # double 0.41847762628421448
	.quad	0x3fc86dc8cc032ab0              # double 0.19085035287419805
	.quad	0x3fee2ddf20ca6c65              # double 0.94309955982624827
	.quad	0x3fe345ccac4d1667              # double 0.60227044727862455
	.quad	0x3fe51b7093b45cd4              # double 0.65959957932036639
	.quad	0x3fd765b99209327e              # double 0.36558379422493903
	.quad	0x3fe480083a2c42b5              # double 0.64062892305272234
	.quad	0x3fd2b00cc237bb62              # double 0.2919952294022804
	.quad	0x3f8a7f58296e2ec0              # double 0.012938202633243079
	.quad	0x3fd3c4f880d6e0b4              # double 0.30889713842362743
	.quad	0x3fbdfe2508beaae0              # double 0.1171591898297879
	.quad	0x3fc567e6212127d0              # double 0.1672332441106037
	.quad	0x3fdacc875cfdd9f0              # double 0.41873344498836129
	.quad	0x3fdfa6726f796c36              # double 0.49453411947405657
	.quad	0x3fec43cc0fdb5a75              # double 0.88327601525345634
	.quad	0x3fc978465dcc62f0              # double 0.19898299770354511
	.quad	0x3fd200e0cd13514e              # double 0.28130359675312355
	.quad	0x3fe9568c64ab1eb9              # double 0.7918149915867253
	.quad	0x3fe11927750613ab              # double 0.53432057243536712
	.quad	0x3fea27452c5d0220              # double 0.81729372658452703
	.quad	0x3fe120d71e162c4a              # double 0.53525882602969799
	.quad	0x3fe520f9419148d1              # double 0.6602751045814107
	.quad	0x3f98225e09cec520              # double 0.023568600987066479
	.quad	0x3f946e52de727d80              # double 0.019952101542569434
	.quad	0x3fe01875957c1645              # double 0.50298575588448868
	.quad	0x3feb33a60f452f3b              # double 0.8500547693488224
	.quad	0x3fdc4ed5f09b30be              # double 0.44231174942684592
	.quad	0x3fd6c30b1ae3eb9c              # double 0.35565450311667646
	.quad	0x3fefb779b1668b11              # double 0.99114689491793417
	.quad	0x3fe5e956fb3f9480              # double 0.68473385879464388
	.quad	0x3fec645a11a06b00              # double 0.88724997942640016
	.quad	0x3fddbdfcfc826eac              # double 0.46472096118098238
	.quad	0x3fea00534ff65bea              # double 0.81253972642559558
	.quad	0x3fed6cc25b2fcd80              # double 0.91952627000721066
	.quad	0x3fe5a5b6713cc640              # double 0.67647859684638689
	.quad	0x3fda0ecc905a48ba              # double 0.40715326401653906
	.quad	0x3fc676438880fd98              # double 0.17548412480571751
	.quad	0x3fc8d695d7872284              # double 0.19404862426587866
	.quad	0x3fddbd253de3e22a              # double 0.46466952365838898
	.quad	0x3fd4977fded37fc4              # double 0.32174679527633665
	.quad	0x3fe4d1cda5647c87              # double 0.65061075499751631
	.quad	0x3feaa5093ec98901              # double 0.83264601004728445
	.quad	0x3feaf3206c484a03              # double 0.8421785464182111
	.quad	0x3feab7217c76f1b0              # double 0.83485483464715138
	.quad	0x3fce442bf22a71a4              # double 0.23645543407918723
	.quad	0x3fb2a25c29733df0              # double 0.072789917106312663
	.quad	0x3fe222f9806eb709              # double 0.56676936230152919
	.quad	0x3fed150ab7c6a9b3              # double 0.90881858724360709
	.quad	0x3fc736271df4a574              # double 0.18134011233022884
	.quad	0x3fc00b714ef31b00              # double 0.12534920077288092
	.quad	0x3fec09969486ba85              # double 0.87617043503799208
	.quad	0x3fd2eb3eea934cfe              # double 0.29560826213601377
	.quad	0x3fc51441307829b8              # double 0.16468062273663775
	.quad	0x3fd25220e809ec48              # double 0.28626272830996813
	.quad	0x3fe3c0f93247c887              # double 0.61730632610694236
	.quad	0x3fddc26d24d6974c              # double 0.46499184224591228
	.quad	0x3fdba7f4f80a329e              # double 0.43212627623214839
	.quad	0x3fc957284ee86c14              # double 0.19797233441281092
	.quad	0x3fec7c5acc7bf845              # double 0.89018001497584776
	.quad	0x3fef3c64950e39a8              # double 0.97612218010344964
	.quad	0x3f7b3e8d4f039000              # double 0.0066514510983530784
	.quad	0x3fdbaa472b08b498              # double 0.43226794436015714
	.quad	0x3fe0e46021ed7a59              # double 0.52787787081235671
	.quad	0x3fd2e849dcdb9adc              # double 0.29542776649615887
	.quad	0x3fdbfd7f0599a892              # double 0.43734717890641506
	.quad	0x3fdfd570cff7abc8              # double 0.49740238484690424
	.quad	0x3feaa1c42ab0b734              # double 0.83224685991237956
	.quad	0x3fe175fff706dec3              # double 0.54565428016118067
	.quad	0x3fd09f4ad3fe52fe              # double 0.25972243025289277
	.quad	0x3fd0f4dc871552ac              # double 0.26494515601852231
	.quad	0x3febd9385a454563              # double 0.87026612883543597
	.quad	0x3fbbbd1186288ad8              # double 0.10835370564795299
	.quad	0x3fe62adbd5dba1dc              # double 0.69273177880409831
	.quad	0x3fd9ebf82086c004              # double 0.40502741981890744
	.quad	0x3fa3a653e9e52fa0              # double 0.038378355313937407
	.quad	0x3fb4f482e086e700              # double 0.081855945411827946
	.quad	0x3fc8eec86f5d9964              # double 0.19478707731031897
	.quad	0x3fed1e44b9d96900              # double 0.9099448804729775
	.quad	0x3fe60efc57d87539              # double 0.68932931096393368
	.quad	0x3fdeccaa479acba6              # double 0.48124176972049282
	.quad	0x3fab42d957c76940              # double 0.053244392361835313
	.quad	0x3fe49d29f2159532              # double 0.64418504030314794
	.quad	0x3fda5ce0aa81d14e              # double 0.4119187989338301
	.quad	0x3fea98363f1750b2              # double 0.83108055422282789
	.quad	0x3fe392c0654233b6              # double 0.61166400696821799
	.quad	0x3fefb47342b63cca              # double 0.99077761678372522
	.quad	0x3fd3f3744051302a              # double 0.31173425942393129
	.quad	0x3fe172b179899b8a              # double 0.54525064218329189
	.quad	0x3fe76b75b08e33ed              # double 0.73186764224521783
	.quad	0x3fd38fea594e9e18              # double 0.3056589004649779
	.quad	0x3fd11e0b5d530b86              # double 0.26745876420698556
	.quad	0x3fcac8dcce61f570              # double 0.20925483777311227
	.quad	0x3fee909590fe2039              # double 0.95514944380648281
	.quad	0x3fed1f4ba234ae03              # double 0.91007024460617492
	.quad	0x3fe99ae70e6a3ed8              # double 0.80015900435861465
	.quad	0x3fdb60d553352bce              # double 0.4277852356505577
	.quad	0x3fe24a2b97a34911              # double 0.57155398957027803
	.quad	0x3fe3090efdddf3b1              # double 0.59485578139685036
	.quad	0x3fefa265015ed098              # double 0.98857355373049227
	.quad	0x3fd4e7f4515eb700              # double 0.32665737100874992
	.quad	0x3fda099f8c6c7a02              # double 0.40683735574012314
	.quad	0x3fe6a04a3887889e              # double 0.70706664124397256
	.quad	0x3fc786d374f1bc18              # double 0.18380206308526748
	.quad	0x3fe4fc3c75384bee              # double 0.65579054731858633
	.quad	0x3fe13ece56a5f8f0              # double 0.53891674922468091
	.quad	0x3fed45f0f6a950a5              # double 0.91478775192310435
	.quad	0x3fd4a3371458f420              # double 0.32246186244066344
	.quad	0x3fe132142ce951fe              # double 0.53736313602217911
	.quad	0x3fd72a97d9746e3e              # double 0.3619746802885152
	.quad	0x3fef2c10a06135c4              # double 0.97412902187505112
	.quad	0x3fb3a10468f7dd60              # double 0.076675677897460215
	.quad	0x3fd1626790aeeddc              # double 0.2716311371729867
	.quad	0x3fde4c8fe7a54cea              # double 0.47342298146868578
	.quad	0x3fe6612f9cf0afae              # double 0.69936352398280177
	.quad	0x3fe24e0fd1e5ed3c              # double 0.57202902789814614
	.quad	0x3fe2f162ab0fcf7c              # double 0.59196599398136085
	.quad	0x3fdcff6aa5c1466a              # double 0.45308939158449013
	.quad	0x3fde9718a9be166a              # double 0.47797218872469804
	.quad	0x3fe9aff3e195570a              # double 0.80272859629869342
	.quad	0x3fef8c6a7142ba15              # double 0.98589059945317336
	.quad	0x3fe6ecf848d2201b              # double 0.71642698500454871
	.quad	0x3fe0e8343ff7ba95              # double 0.52834522718133548
	.quad	0x3fe660b066080ab6              # double 0.69930286338816106
	.quad	0x3fd4fbe6579cac2a              # double 0.32787474208697864
	.quad	0x3fdeb73e0350e080              # double 0.47993421863385066
	.quad	0x3fe7b90b9e9995c9              # double 0.74133854843665248
	.quad	0x3fdc4770209c241e              # double 0.44186022934496971
	.quad	0x3fe90c70efd16e70              # double 0.78276869620772338
	.quad	0x3feb96d2466b32dd              # double 0.86216081384335619
	.quad	0x3fe23389144ae783              # double 0.56879095042607763
	.quad	0x3fe39a4c11d64fe1              # double 0.6125851009733162
	.quad	0x3fb7e7e724ef00c8              # double 0.093382307545655796
	.quad	0x3fcfc9e1b5594950              # double 0.2483484397403779
	.quad	0x3fee4d12d65d9284              # double 0.94690839641823787
	.quad	0x3fd3ca5a7298c7f2              # double 0.30922566596120682
	.quad	0x3fd6aab1ffac10f6              # double 0.35416841476423089
	.quad	0x3fb0863882707ae0              # double 0.064548045964766043
	.quad	0x3fc71c553255e5f8              # double 0.18055214841642431
	.quad	0x3fea77424f4a5542              # double 0.82705798612975223
	.quad	0x3fea13f36b748850              # double 0.81493540751785964
	.quad	0x3fdcc4c61b40b302              # double 0.44951012288474612
	.quad	0x3fc551e32b37ddfc              # double 0.16656150446191009
	.quad	0x3fa091fdabafaf30              # double 0.032363822181507351
	.quad	0x3fc85b5ab7c552c4              # double 0.19028791402037915
	.quad	0x3fcc0a6ea01ccd30              # double 0.2190683633612962
	.quad	0x3febfee8e8551e85              # double 0.87486691834870156
	.quad	0x3fef380ee56d4f0a              # double 0.97559304056127982
	.quad	0x3fbdad65769a3400              # double 0.11592706819119769
	.quad	0x3fdafb73393bc91e              # double 0.42159729565823223
	.quad	0x3fcd5001cfec7010              # double 0.22900412228125377
	.quad	0x3fdaea5031ee7c36              # double 0.42055134655123838
	.quad	0x3fdae29dc85594e0              # double 0.42008156360527771
	.quad	0x3fe17488bf92b15f              # double 0.54547536293607013
	.quad	0x3fc570fc8f78d398              # double 0.16751057630031307
	.quad	0x3fe4ac648934c681              # double 0.64604403303219737
	.quad	0x3fe9dc6ad4d95c9a              # double 0.80815640995105587
	.quad	0x3fdbc44d88e67b8c              # double 0.4338563763539518
	.quad	0x3fdfa1517fe7cea6              # double 0.49422109118243396
	.quad	0x3fe6e2d9531a13f8              # double 0.71519151907761991
	.quad	0x3fe45d09ad19f38d              # double 0.63635715302335571
	.quad	0x3fca1dd2670c7b44              # double 0.20403509170224698
	.quad	0x3fed4de070e37895              # double 0.91575643585726374
	.quad	0x3fc83f508adb963c              # double 0.18943220882572287
	.quad	0x3fefdf8fb8965bb0              # double 0.99604021122183006
	.quad	0x3fb4acfd9103bc48              # double 0.080764625457718897
	.quad	0x3fe42570bc9fdfa7              # double 0.62957035866474065
	.quad	0x3fe61d9ce4ffeafd              # double 0.69111485220432167
	.quad	0x3fe2b9726e9a19de              # double 0.58513757326073423
	.quad	0x3fe24ea9c17c04fe              # double 0.57210243024761076
	.quad	0x3feaa48b4cb1cc6b              # double 0.83258595446967598
	.quad	0x3fd328567f4a2122              # double 0.29933702879545099
	.quad	0x3fe1999f4fbfc0a7              # double 0.5500027234648045
	.quad	0x3fd0eadcd9884d9c              # double 0.26433488124276905
	.quad	0x3fd85ab0a61d7654              # double 0.38053528043915219
	.quad	0x3fda661e1d2a3a20              # double 0.41248276565684883
	.quad	0x3fe9bd27ddcc909f              # double 0.80434029884465363
	.quad	0x3fd255e26b9edcf0              # double 0.2864919711095828
	.quad	0x3fe3d23e91557de1              # double 0.61941460023438932
	.quad	0x3fd69c7f9436cf1c              # double 0.353301901569681
	.quad	0x3fbd637cd024c470              # double 0.11479930955535322
	.quad	0x3fe78df44a848379              # double 0.73607840112900569
	.quad	0x3fed056761360b52              # double 0.90690964685959785
	.quad	0x3fe5041c47ca5885              # double 0.6567517664104946
	.quad	0x3fc3d003e388469c              # double 0.15478561983086514
	.quad	0x3fe6923bcbac1d62              # double 0.7053507783865991
	.quad	0x3fe23a23bc4438e8              # double 0.56959711809920766
	.quad	0x3fd94e26230bb770              # double 0.39539483473242054
	.quad	0x3fe80d442dd653cc              # double 0.7516194243677261
	.quad	0x3febba25df74ccde              # double 0.86647313731955555
	.quad	0x3fcd52a44057c84c              # double 0.22908452169173399
	.quad	0x3fea71b613f12ca2              # double 0.82638076682032513
	.quad	0x3fd433e9c0a14d2a              # double 0.31566852389842615
	.quad	0x3fc894cae2ddfe50              # double 0.19204078748224385
	.quad	0x3fb4b751dd682bb0              # double 0.080922237924979212
	.quad	0x3fd61b460cb55cee              # double 0.34541465035495278
	.quad	0x3fe846bd6d853282              # double 0.75863524809535954
	.quad	0x3f9d48862ca69300              # double 0.028596970057736648
	.quad	0x3fb80b13218f5d30              # double 0.093918986981738283
	.quad	0x3fe0e09950600536              # double 0.52741685579545705
	.quad	0x3f867041469b7400              # double 0.010956296889554906
	.quad	0x3fee5e86a29beea4              # double 0.94903880843726939
	.quad	0x3fe1b4a2f05319a5              # double 0.55330035150909807
	.quad	0x3fea43abd681f04c              # double 0.82076064964304284
	.quad	0x3fed8f23fa14ba5b              # double 0.92372320980014011
	.quad	0x3f95857637b6ece0              # double 0.021016928816362745
	.quad	0x3fe03da0721536aa              # double 0.50752279550370827
	.quad	0x3fd68620dae85cec              # double 0.3519365442056841
	.quad	0x3fc8c1038a3834d0              # double 0.19339031456948996
	.quad	0x3fe6fcf1f8ab1c02              # double 0.71837709968610874
	.quad	0x3feb2c5c619054c9              # double 0.8491651444952818
	.quad	0x3fc9068ae05a84b8              # double 0.19551216082348843
	.quad	0x3fc70e37f00e7e0c              # double 0.18012141438974572
	.quad	0x3fe9d65b5b9165a4              # double 0.80741660961500771
	.quad	0x3f96ce0fc528b620              # double 0.022270437630302564
	.quad	0x3fe8bc4ebc88c8c5              # double 0.77298676322086435
	.quad	0x3fda0e953cdb4504              # double 0.40714007323283874
	.quad	0x3fc58de898607018              # double 0.16839320602673591
	.quad	0x3fdb9ae70d1f8242              # double 0.43132950097609435
	.quad	0x3fdb3032816f0fdc              # double 0.42481672897360823
	.quad	0x3fd1b69ac22f9110              # double 0.27677029574830758
	.quad	0x3fe29caa78eac4a3              # double 0.58162425629247527
	.quad	0x3fe9fc347ebb2186              # double 0.81203675033707223
	.quad	0x3fcdb6e0097f0240              # double 0.2321434065215886
	.quad	0x3fcc79ac4880d708              # double 0.22246316471289895
	.quad	0x3fe454254447ec82              # double 0.63527167640803861
	.quad	0x3fba7bb3a27f3c08              # double 0.10345003812038567
	.quad	0x3fe2d124d8095822              # double 0.58803026384953605
	.quad	0x3fc0d72e64fba4cc              # double 0.13156680994806036
	.quad	0x3fdf17b6c5bd8c70              # double 0.48582238493526742
	.quad	0x3fdba5e083abca58              # double 0.43199932917119588
	.quad	0x3fe2fd08e56e6696              # double 0.5933880311087758
	.quad	0x3fe69845d333f5bc              # double 0.70608798266010053
	.quad	0x3fe3dead3a1400f2              # double 0.62093221038233382
	.quad	0x3fe64583e6b3c167              # double 0.69598574694650217
	.quad	0x3feabf1a45973336              # double 0.83582795707625368
	.quad	0x3fe9334728b17b5e              # double 0.7875095171728892
	.quad	0x3fce82a452bd0420              # double 0.23836187400778019
	.quad	0x3fe1995b4719f1c6              # double 0.54997028243047263
	.quad	0x3fd876a1a80cc58c              # double 0.38224069033739094
	.quad	0x3fe61e0982aabdc8              # double 0.69116664429559993
	.quad	0x3fe3f388d57d01ab              # double 0.62347833344397452
	.quad	0x3fe53bf99d4613e7              # double 0.6635711738350637
	.quad	0x3fc29fe1838d03fc              # double 0.14550417827015838
	.quad	0x3fcb64479571cc48              # double 0.21399779126258722
	.quad	0x3fe080e92cf3ad65              # double 0.51573618678723376
	.quad	0x3fe5f66b8e78815d              # double 0.68633058382333056
	.quad	0x3feae6ecec5a29fc              # double 0.8406891456846206
	.quad	0x3fb618938403e750              # double 0.086312503557477215
	.quad	0x3fde08a815453510              # double 0.46927835538083773
	.quad	0x3fe700e08dfc5a43              # double 0.71885707599251025
	.quad	0x3fb20f1bf4fc8c58              # double 0.070543048201714753
	.quad	0x3fe21583f06270f6              # double 0.56512638998131481
	.quad	0x3fe669cd9ff4156b              # double 0.70041543236645276
	.quad	0x3fe663a0959e0b1c              # double 0.69966153356685679
	.quad	0x3fdfeabeca706e9c              # double 0.49870271462871485
	.quad	0x3fe54cc620a7e67d              # double 0.66562181833360479
	.quad	0x3fd561f794ce847a              # double 0.33410443813233537
	.quad	0x3fdb288f72cb9dc4              # double 0.42435060701833671
	.quad	0x3fd969ca7fbf6564              # double 0.39708197093349029
	.quad	0x3fb8577c57b66340              # double 0.095084926046536289
	.quad	0x3feea9ed6e7fd4e4              # double 0.95824309904005788
	.quad	0x3fe6576097871fb7              # double 0.6981661757972607
	.quad	0x3fee04b00dc309b3              # double 0.93807223022331809
	.quad	0x3fea54e71ef2f6a9              # double 0.82286411328069164
	.quad	0x3fe8eb9ad755b5d8              # double 0.77876035745219507
	.quad	0x3fe7d58e7a779efa              # double 0.74481891555203039
	.quad	0x3fe4b4b361c71951              # double 0.64705819222653294
	.quad	0x3feb2e29a2e22e4d              # double 0.84938508809268287
	.quad	0x3fd9ce2c484ab9aa              # double 0.40320879993205472
	.quad	0x3fe3fcd027508505              # double 0.62461097410792432
	.quad	0x3fbc4a639845a048              # double 0.11051008670404017
	.quad	0x3f67b1869e055400              # double 0.0028922681087046875
	.quad	0x3fe203cafad3f959              # double 0.56296299924705828
	.quad	0x3fe84997c5201bae              # double 0.75898350239810042
	.quad	0x3fef08c0aeec2341              # double 0.96981844105275893
	.quad	0x3fd0badb542f616a              # double 0.26140483113478885
	.quad	0x3fe93aa8205ded6e              # double 0.78841024705563512
	.quad	0x3fec64bcafa7852e              # double 0.88729700381751342
	.quad	0x3fcc08ca7c18d844              # double 0.21901827868868129
	.quad	0x3fe9736ab9a2e0bb              # double 0.7953389764507145
	.quad	0x3fea0102e18fa071              # double 0.81262344412699694
	.quad	0x3fe22783f7df1554              # double 0.5673236695517212
	.quad	0x3fe2972c6e4aed2b              # double 0.58095380345858894
	.quad	0x3fd7faa36828a706              # double 0.37467274829633401
	.quad	0x3fe896cdb513a8c2              # double 0.76840863577424323
	.quad	0x3feb56133c766b43              # double 0.85425721940132637
	.quad	0x3fe07c91102c717c              # double 0.5152058902636294
	.quad	0x3fd04e95066ab758              # double 0.25479627253195281
	.quad	0x3fd634954c7982c8              # double 0.34695942371585575
	.quad	0x3fe27f1f3a472605              # double 0.57801782019049652
	.quad	0x3fecc887f600a9d0              # double 0.89947889373189049
	.quad	0x3fef909918482b3d              # double 0.98640112631378651
	.quad	0x3fe20b28cad034c7              # double 0.56386222469304748
	.quad	0x3fd1f5168d9a249c              # double 0.28058399036724224
	.quad	0x3fee0cae87ff1269              # double 0.93904806672851493
	.quad	0x3fd3ea4f273ebb7a              # double 0.31117609818004832
	.quad	0x3f9f4ca1860a88e0              # double 0.030565761381361578
	.quad	0x3f8283d0e93c0080              # double 0.0090404816796765264
	.quad	0x3fdb1a2498cb9c26              # double 0.4234706394331077
	.quad	0x3fd84caf68016bc2              # double 0.37968049198905984
	.quad	0x3fc839d09c7d0360              # double 0.18926437035591004
	.quad	0x3fbb4b55798ee4d0              # double 0.10661825387696244
	.quad	0x3fe70072f6bc4818              # double 0.71880481901667093
	.quad	0x3fef94f58ba9f9e8              # double 0.9869334914981751
	.quad	0x3fdb1b0408da83ac              # double 0.42352391113859755
	.quad	0x3fd3896d03768cfc              # double 0.3052628072566248
	.quad	0x3fb22a54788c9e58              # double 0.07095840399835518
	.quad	0x3fd9be6197325e88              # double 0.40224494710262393
	.quad	0x3fef95f015db3179              # double 0.98705295819085769
	.quad	0x3fe8b597eb4ea700              # double 0.77216716726726986
	.quad	0x3fdcf9bb87ff42f4              # double 0.45274246483772562
	.quad	0x3fec655120270070              # double 0.88736778526073401
	.quad	0x3fe85563dfedb2d5              # double 0.76042360054051505
	.quad	0x3fde7ce9e2fb27cc              # double 0.47637412229653076
	.quad	0x3fef1bb3b55726a6              # double 0.97213159006169714
	.quad	0x3fea792567ccc1e5              # double 0.82728834412961005
	.quad	0x3fd9399b121447a6              # double 0.39414097562359485
	.quad	0x3fd115b8377e0492              # double 0.26695065898099657
	.quad	0x3fd95f412055aacc              # double 0.39643886716536936
	.quad	0x3fe5697744a884fb              # double 0.66912425432033673
	.quad	0x3fcee727a3797aa0              # double 0.24142928583292633
	.quad	0x3f81fdece989b000              # double 0.0087851055879681894
	.quad	0x3fe75fe9e9b90f84              # double 0.73045821808817424
	.quad	0x3fd1ee9a98779d26              # double 0.28018822564486567
	.quad	0x3fe690d251f68982              # double 0.70517841347127352
	.quad	0x3fd8206faf8afe0e              # double 0.37697975294938224
	.quad	0x3febbdc07427cb86              # double 0.86691305815325914
	.quad	0x3fe1ef7211f724ad              # double 0.56047919758670661
	.quad	0x3fd2a7d4ef40e0c6              # double 0.29149363865463973
	.quad	0x3fa736cdacb7b2b0              # double 0.04533999188774851
	.quad	0x3fea60b6208193a5              # double 0.82430559491023259
	.quad	0x3fd017dacbc6c55a              # double 0.25145597362560113
	.quad	0x3fe3f983c31ea6af              # double 0.62420833691904487
	.quad	0x3fd05758615a1630              # double 0.25533113009473407
	.quad	0x3fd6b8c8e5bd217e              # double 0.35502836642674385
	.quad	0x3fa2a9ed01123f50              # double 0.036452680950900374
	.quad	0x3fe2be02f145c311              # double 0.58569476245438257
	.quad	0x3fd17f1093ccf6c8              # double 0.27338041719108874
	.quad	0x3fc6ea2126b829f0              # double 0.17902006521792613
	.quad	0x3feb4c3789a203f3              # double 0.85305382615490399
	.quad	0x3fde8e9ea12760b0              # double 0.47745481240918775
	.quad	0x3f5c6bf8eb2c3800              # double 0.0017347269865157777
	.quad	0x3fe5122633a752d3              # double 0.65846548164935326
	.quad	0x3fe0e3dcddfc785f              # double 0.52781527859384514
	.quad	0x3fd232a4f6cdd90a              # double 0.28434108831369598
	.quad	0x3fa2ce7d7a7ede10              # double 0.036731644824097853
	.quad	0x3fe4826b8bf58164              # double 0.6409204228948906
	.quad	0x3fe615c8925ab637              # double 0.69015911660034746
	.quad	0x3fe618f3227e9c7b              # double 0.69054562318059654
	.quad	0x3fd12cf89216f596              # double 0.2683698107392386
	.quad	0x3fd30ea29f41acf8              # double 0.29776826431653047
	.quad	0x3fe5d69122d98657              # double 0.6824422531755755
	.quad	0x3fea564b7caa2221              # double 0.82303404186774654
	.quad	0x3fe395f417b4e306              # double 0.61205486898606476
	.quad	0x3fd77b0f552ff428              # double 0.36688597983431004
	.quad	0x3fed63b2e2225806              # double 0.91842025915934822
	.quad	0x3fa74aac2f4ea820              # double 0.045491581702052253
	.quad	0x3fefcf32228e85c7              # double 0.99404246091233339
	.quad	0x3fdd0b685db60046              # double 0.45382126952609203
	.quad	0x3fe3385174d58052              # double 0.60062477893007782
	.quad	0x3fe32896a2c47c6c              # double 0.59870464125186862
	.quad	0x3fc548406f5cc3d8              # double 0.16626744687667272
	.quad	0x3fe2f0531245f3ff              # double 0.59183648652071941
	.quad	0x3fb58beef34928a0              # double 0.084166464229527893
	.quad	0x3fd5c734aae8a8c8              # double 0.34028355303111057
	.quad	0x3fdd5c26a7175556              # double 0.45874944989676203
	.quad	0x3fb341069dbdd648              # double 0.075210965643997985
	.quad	0x3fa221e54491cd00              # double 0.035414852733902435
	.quad	0x3fefe8d7d59edc00              # double 0.99717323038828454
	.quad	0x3fd78d32fe0973e6              # double 0.36799311455052786
	.quad	0x3feb83540972f2a5              # double 0.85978128285895095
	.quad	0x3fe09a2fe5b3e7cb              # double 0.51882166732615909
	.quad	0x3fe0c622acde3500              # double 0.52418645633011351
	.quad	0x3fe3e93bdf81eba8              # double 0.62222093251999855
	.quad	0x3fc1e8ad8d1c136c              # double 0.1399132670414035
	.quad	0x3fe625fddf3157d2              # double 0.6921376570924116
	.quad	0x3fd2ea0b7044a04a              # double 0.29553495372465888
	.quad	0x3fd4f984f74a9eb8              # double 0.3277294554668333
	.quad	0x3fe4188caa0f638d              # double 0.62799676146379257
	.quad	0x3fe5df2ef969de77              # double 0.68349407876571788
	.quad	0x3feea510814ecc5f              # double 0.95764947181158877
	.quad	0x3fe6433957b5c451              # double 0.69570605402817354
	.quad	0x3fe3d83456f8f17b              # double 0.62014214503101017
	.quad	0x3fbbb452a51c5bd8              # double 0.10822025805496993
	.quad	0x3fe33d9a960f34b4              # double 0.60127000149227294
	.quad	0x3fea8352c0165d5e              # double 0.82853066937506603
	.quad	0x3fc8cbcec2362b10              # double 0.1937197159098436
	.quad	0x3fe3a0ba4797bf06              # double 0.61337007506333019
	.quad	0x3fe88915c46dc0b0              # double 0.7667340122698274
	.quad	0x3fd34ddd56018546              # double 0.30162747763650477
	.quad	0x3fe920b0a153f8ce              # double 0.78524047383668871
	.quad	0x3fe26bde036a8dac              # double 0.57566738764983461
	.quad	0x3f8e2c0a028bf840              # double 0.014732435419770096
	.quad	0x3fe477415346e0c9              # double 0.6395575167180364
	.quad	0x3fe748493fd817d6              # double 0.72757399053147753
	.quad	0x3fe8905e485ccd40              # double 0.76762308247854349
	.quad	0x3feaffe8efe5536c              # double 0.84373900274895907
	.quad	0x3fb7a2e927631170              # double 0.092329570880854694
	.quad	0x3fd0e5a5d1b260d0              # double 0.26401658514215587
	.quad	0x3fe3bb8f0c7ddbad              # double 0.6166453594186031
	.quad	0x3fee114a1931f50a              # double 0.93961052819182211
	.quad	0x3fc800b67d026818              # double 0.18752175430273677
	.quad	0x3fdae70a4af3e060              # double 0.42035157508462895
	.quad	0x3fda0b0a30866f98              # double 0.4069238160970996
	.quad	0x3fe2a9399d6ed93d              # double 0.58315735577233563
	.quad	0x3fea33b2c136d282              # double 0.81881082284105866
	.quad	0x3fdbe2f1ad14f768              # double 0.43572656538514432
	.quad	0x3fda313d765e81de              # double 0.40925537642945453
	.quad	0x3fd25da657e76208              # double 0.28696592888221106
	.quad	0x3fd9da57eca6be90              # double 0.40395162687762198
	.quad	0x3fed0d33adc720e7              # double 0.90786155644402988
	.quad	0x3feaf073d7179a1c              # double 0.84185211191362752
	.quad	0x3fece488592f5d77              # double 0.90289704722356035
	.quad	0x3fe9b73e262328d3              # double 0.80361850212764308
	.quad	0x3fe0cd656ffd3db7              # double 0.5250727832116614
	.quad	0x3fd2d4eb84d4dbb6              # double 0.2942456052000425
	.quad	0x3fb9b2e5eb591870              # double 0.10038601871301167
	.quad	0x3fea85a1b9ce9efa              # double 0.82881246843768897
	.quad	0x3feeb3bfb750299a              # double 0.9594420032820381
	.quad	0x3fec8622ab9bf5f4              # double 0.89137395398546326
	.quad	0x3fe6115937a08aa7              # double 0.68961773743315724
	.quad	0x3f9594e86cce7c20              # double 0.021075851098086074
	.quad	0x3fd52545e9d486fe              # double 0.33039996943453775
	.quad	0x3fd8a3f6ffee9c48              # double 0.38500761979452536
	.quad	0x3fefc3cdd9bfe83a              # double 0.9926518681452372
	.quad	0x3fe3a99946270082              # double 0.6144529695666423
	.quad	0x3fb79ba61512e058              # double 0.092218761582331665
	.quad	0x3fe9c8ef5eb7567c              # double 0.80577820300341285
	.quad	0x3f9cad80905e1020              # double 0.028005608378876556
	.quad	0x3fd1e6bb64a5d4be              # double 0.27970776394733921
	.quad	0x3fcbdf54026d54e4              # double 0.21775293463239287
	.quad	0x3fd4ee567c10e452              # double 0.32704698673075427
	.quad	0x3fb60dd7cf726cd8              # double 0.086148727556451532
	.quad	0x3fceffc39acd131c              # double 0.24218030031820426
	.quad	0x3fb129805ef01fd8              # double 0.067039511850566114
	.quad	0x3fd426f688c4e1cc              # double 0.31487811428408174
	.quad	0x3fe9ce7d0f7fc782              # double 0.8064561178891696
	.quad	0x3feba7b326ee36e8              # double 0.86422116855257247
	.quad	0x3fc5c54700bc6f20              # double 0.1700829270929427
	.quad	0x3fd24328e5069fd6              # double 0.28534910550888293
	.quad	0x3fdbf37253e8aad2              # double 0.43673380083297986
	.quad	0x3fbb232cf11b3bb8              # double 0.10600548635851126
	.quad	0x3fe27ce892bc9dec              # double 0.57774761828926335
	.quad	0x3f913697e423b840              # double 0.016809819507152435
	.quad	0x3fef202f409000ba              # double 0.97267878160348364
	.quad	0x3fcc396081fd4574              # double 0.22050100657592575
	.quad	0x3fe39502af5ef5e6              # double 0.61193975689064639
	.quad	0x3fea342b203d6800              # double 0.81886822029923678
	.quad	0x3fdadf96155006b2              # double 0.41989662247952275
	.quad	0x3fa61fcac640f4e0              # double 0.043211304379363602
	.quad	0x3fd99b9fc8484ff4              # double 0.40012354430041275
	.quad	0x3fee9077fafcfc71              # double 0.95513533612382961
	.quad	0x3fd2c3a7d61dbb0a              # double 0.2931918707826503
	.quad	0x3febc349904a1ffe              # double 0.86758878881028045
	.quad	0x3fecda39b6f372a2              # double 0.9016388486157505
	.quad	0x3fed5314d6279c13              # double 0.91639177157492424
	.quad	0x3fe08b56dfd925bb              # double 0.51700919838292891
	.quad	0x3fe5809a0d79f399              # double 0.67194845802406455
	.quad	0x3fd14c0902c50cde              # double 0.27026582022172174
	.quad	0x3fd0af760d683b2e              # double 0.26070929822246824
	.quad	0x3fd3440723a15f76              # double 0.30102709273841499
	.quad	0x3fd8d90be1769e5a              # double 0.38824746148973122
	.quad	0x3fbb0447cab234a8              # double 0.1055340642798962
	.quad	0x3fdb6789df9dae9c              # double 0.42819449269766507
	.quad	0x3fc2c3abd0284334              # double 0.14659640945367303
	.quad	0x3fe7c43f3d3d193e              # double 0.74270593605687174
	.quad	0x3fec2f2556ab763b              # double 0.88075510909738541
	.quad	0x3fc80f6b25856d2c              # double 0.18797053653802587
	.quad	0x3feecf2142de5bb3              # double 0.96278441486616939
	.quad	0x3fd03d66cd06b2fe              # double 0.25374765417181766
	.quad	0x3fd16e583afb07f0              # double 0.27235990295241574
	.quad	0x3fb0db18c4ac3c08              # double 0.065843151107614628
	.quad	0x3febc09b7fbac6f9              # double 0.8672616476744387
	.quad	0x3fec2172001d49d4              # double 0.87908267996163624
	.quad	0x3fc3d459b1ca7958              # double 0.15491791897961593
	.quad	0x3fe2f66171bc740d              # double 0.59257576192942596
	.quad	0x3fd243cf1e1a5c80              # double 0.28538873615020321
	.quad	0x3fe8625160a043a1              # double 0.76200169441482413
	.quad	0x3fe9c728826abaac              # double 0.80556130859425456
	.quad	0x3fd7285c820a2510              # double 0.36183846186811852
	.quad	0x3fe0a721356a16f2              # double 0.52040157730581726
	.quad	0x3fdb61f6aa938828              # double 0.42785421998826445
	.quad	0x3fe0a2677122a809              # double 0.51982471558335519
	.quad	0x3fd9a39d354f8dc4              # double 0.40061121183518034
	.quad	0x3fa7cbcdbaeec710              # double 0.046476773327766563
	.quad	0x3fc3852cb6ba01a8              # double 0.15250166818806332
	.quad	0x3fdf0c9218ced9ea              # double 0.485142254091811
	.quad	0x3fe65e704ca7f724              # double 0.69902815791985917
	.quad	0x3fec9619d9387dc0              # double 0.89332287240898012
	.quad	0x3fd29b49a59e17ba              # double 0.29072800801838705
	.quad	0x3fdd16c98cc35944              # double 0.45451582666773427
	.quad	0x3fb328b0982b3d70              # double 0.074839627409564846
	.quad	0x3fe65e6da716bd70              # double 0.69902689585243927
	.quad	0x3fb466bd79f206d8              # double 0.079692690154867463
	.quad	0x3fe57094759b6b47              # double 0.66999266595971896
	.quad	0x3fdaf168b7afc8ca              # double 0.42098443926000739
	.quad	0x3fe384ffe906f1a0              # double 0.60998530877218471
	.quad	0x3feba60628b3cc61              # double 0.8640166087119604
	.quad	0x3fe1029282d4e02e              # double 0.53156400254284164
	.quad	0x3fc79d0bfb954720              # double 0.18448018822032797
	.quad	0x3feaab6394aa1295              # double 0.83342150722508512
	.quad	0x3fcc619205b61a64              # double 0.22172761229394944
	.quad	0x3fe0141d968d883c              # double 0.50245551495414231
	.quad	0x3fee91d2bc9e385d              # double 0.95530068244421396
	.quad	0x3fe70c03c752d54f              # double 0.72021664553055043
	.quad	0x3faa052871dcf3d0              # double 0.050820602320960639
	.quad	0x3fee5cfa274095da              # double 0.94884975115263193
	.quad	0x3feb33d18d5ed29d              # double 0.8500755082264565
	.quad	0x3fee0eb51c5223c7              # double 0.93929534465234432
	.quad	0x3fa3ba5676652c20              # double 0.038531019165553682
	.quad	0x3fd4ddcf5e9156ce              # double 0.32603821025018653
	.quad	0x3fdc3918b4e67760              # double 0.44098489442864341
	.quad	0x3feba4473225afeb              # double 0.8638034800947002
	.quad	0x3fda92492c345ea8              # double 0.41517857853748774
	.quad	0x3fd912454df458c8              # double 0.39174015629522474
	.quad	0x3fea9fedf1c16e51              # double 0.83202264039887031
	.quad	0x3fb7292e860404f0              # double 0.090472133368183937
	.quad	0x3fcf92b4e020cfa0              # double 0.24666462844618042
	.quad	0x3fe2e4eea17810e2              # double 0.59044581925311612
	.quad	0x3fd053ac055c087a              # double 0.25510693095578285
	.quad	0x3fe33f325c485c04              # double 0.60146444343524808
	.quad	0x3fbf8deebf44c9b8              # double 0.12325946969648427
	.quad	0x3fcb8fb1d2077644              # double 0.21532271151856908
	.quad	0x3fe80ca0d9085538              # double 0.75154154194993961
	.quad	0x3fef6c6dc01e79bc              # double 0.98198592684985142
	.quad	0x3fe3b684d44ce1e0              # double 0.61603013482004698
	.quad	0x3fda0e0d51aa3e8e              # double 0.40710766768550222
	.quad	0x3fe4981717f98292              # double 0.64356569941090158
	.quad	0x3fd3d2c9312baf7a              # double 0.30974035074063233
	.quad	0x3fd5c0d55391c07a              # double 0.33989461098736451
	.quad	0x3fd69e02d36f98bc              # double 0.35339422843970758
	.quad	0x3fc0c7e52abc6684              # double 0.13110031687465462
	.quad	0x3feed202b2b1c878              # double 0.96313605214369513
	.quad	0x3fd31361866d06ae              # double 0.29805791976478246
	.quad	0x3fcb1209189f59bc              # double 0.21148790075558377
	.quad	0x3fbbab68e2b490e8              # double 0.10808425459669346
	.quad	0x3fa6af13a4029560              # double 0.044304479380381734
	.quad	0x3fc415358585a9ec              # double 0.15689724940905536
	.quad	0x3fd1a67c1c535f6a              # double 0.27578642622164884
	.quad	0x3fd846685558ae52              # double 0.37929733595476478
	.quad	0x3fe849529ac960d6              # double 0.75895052177204536
	.quad	0x3fec9d5de566e9cd              # double 0.89420981221274476
	.quad	0x3fed6a93e4f80a6e              # double 0.9192599746750838
	.quad	0x3fdc34813850a746              # double 0.44070463656918368
	.quad	0x3fbe2a3329a99fc8              # double 0.1178314186778372
	.quad	0x3fe029917e6a47de              # double 0.50507425966702235
	.quad	0x3fdafdb06fcf46da              # double 0.42173396033204613
	.quad	0x3fe58c0b789f59cf              # double 0.67334531363558792
	.quad	0x3f9370087f0266c0              # double 0.018982060195958494
	.quad	0x3fe8249e74364dca              # double 0.75447008798294601
	.quad	0x3feadfe35b300606              # double 0.83983009157253785
	.quad	0x3fea56da17b748ac              # double 0.82310204154989241
	.quad	0x3fe90e372c049d99              # double 0.78298529240867076
	.quad	0x3fe35303778ae0ff              # double 0.60388348911422429
	.quad	0x3fcc45ebb441a5fc              # double 0.22088381101211485
	.quad	0x3fba6bcdf06cf9b8              # double 0.10320746536033354
	.quad	0x3fef735fb8f98555              # double 0.98283373000973972
	.quad	0x3fcc76ca49166c58              # double 0.22237518852930083
	.quad	0x3fecbd40d3d54ef1              # double 0.89810220121077411
	.quad	0x3fd51db6693852ae              # double 0.32993850970641858
	.quad	0x3fefda7d5025f31b              # double 0.99542108205750723
	.quad	0x3fb76228f174f260              # double 0.091341551732463611
	.quad	0x3fe4ac68261fb11a              # double 0.64604575582555701
	.quad	0x3fd56c50740635de              # double 0.33473597841734015
	.quad	0x3fe3fe652446776b              # double 0.62480408749591498
	.quad	0x3f99c18564e294e0              # double 0.025152286798989176
	.quad	0x3feed99033bb1c26              # double 0.96405801871958796
	.quad	0x3fe628ef36fae55d              # double 0.69249687898915691
	.quad	0x3fe90255a135b205              # double 0.78153497206000166
	.quad	0x3febcac5c6a4a092              # double 0.86850251004672629
	.quad	0x3fdd63ddbf05835a              # double 0.45922034887739971
	.quad	0x3febdddfab0271dc              # double 0.8708341922788878
	.quad	0x3fc37df1bacf9a6c              # double 0.15228101369503422
	.quad	0x3fc6b0e508ffe3ec              # double 0.17727339686805921
	.quad	0x3fd9d947d5d37af8              # double 0.40388675576643562
	.quad	0x3fe4e470f284064e              # double 0.65288588873245046
	.quad	0x3fea64cb8554033e              # double 0.82480407753619267
	.quad	0x3fda82a5764792c6              # double 0.41422401953449783
	.quad	0x3fd1cdbdec4a4f48              # double 0.27818248820516489
	.quad	0x3fee7e987af9d280              # double 0.9529535676834513
	.quad	0x3fb4ef5ba09f49a0              # double 0.081777312006386271
	.quad	0x3fd7676204f3b792              # double 0.36568499072642979
	.quad	0x3fe8dd2f06135523              # double 0.77699996172546937
	.quad	0x3fe936c7785217b0              # double 0.78793691158420209
	.quad	0x3fe4d8352dcbcd2d              # double 0.65139254517126732
	.quad	0x3fea2d47314f96f6              # double 0.81802711134943595
	.quad	0x3fe7ef7f3a3d3e70              # double 0.74798547148561845
	.quad	0x3fed8d17a9673264              # double 0.92347319685502471
	.quad	0x3fb8892280ed5518              # double 0.095842510677659809
	.quad	0x3fc7c4ef936d3224              # double 0.18569750498353799
	.quad	0x3fedd5880c742d0e              # double 0.93231584961304903
	.quad	0x3fcad78a533f2df4              # double 0.2097027689436427
	.quad	0x3fd42852991a2844              # double 0.3149610991609999
	.quad	0x3fb61fe2f20797c8              # double 0.086424049462578201
	.quad	0x3fe00241b976723c              # double 0.50027548049144555
	.quad	0x3fd10b7322d36fb8              # double 0.26632383728951536
	.quad	0x3fe7dc3765a2a150              # double 0.74563188410415115
	.quad	0x3f93a6f78d9855e0              # double 0.01919161607482589
	.quad	0x3f9179c371c057a0              # double 0.017066053216772681
	.quad	0x3fcebb434b4d33b8              # double 0.24008980919680112
	.quad	0x3fecfd7ef796dd04              # double 0.90594433171546073
	.quad	0x3fe36c2afbf1004c              # double 0.60695409018809121
	.quad	0x3fbed6429a4e64f0              # double 0.12045685069314849
	.quad	0x3fb148c730170df8              # double 0.067516755333649203
	.quad	0x3fe36bd2e2d0c871              # double 0.60691208171762245
	.quad	0x3fc6ee6d0b55930c              # double 0.17915118268424413
	.quad	0x3fb55453fd2df308              # double 0.083317994414709884
	.quad	0x3fb11172874914c8              # double 0.066672475842170731
	.quad	0x3fef16ad5f2d650f              # double 0.97151821698494866
	.quad	0x3fe5337bf654d796              # double 0.66253469573597346
	.quad	0x3fee83ea839b8f16              # double 0.95360303597087426
	.quad	0x3fe8cd8af0be1889              # double 0.77509066600829712
	.quad	0x3f8b1d2669bd3780              # double 0.013239193059827903
	.quad	0x3fcceb5cecc4b5f0              # double 0.22593270836789214
	.quad	0x3fd33eb5e8a7ba58              # double 0.30070255012734526
	.quad	0x3fde6ea88ff8b276              # double 0.47550405559267206
	.quad	0x3fa30cc1aa740560              # double 0.037206699425960776
	.quad	0x3fe703a46a183f44              # double 0.71919460984825223
	.quad	0x3fca2241c513c140              # double 0.20417043803127832
	.quad	0x3fd550fabf811372              # double 0.33306759549696274
	.quad	0x3fea84c57e1ec414              # double 0.82870745308730642
	.quad	0x3fe0b770086c0f59              # double 0.52239228863661957
	.quad	0x3feeb74ebd2f10dc              # double 0.95987641286822222
	.quad	0x3fdf2d1f9b9decb8              # double 0.48712911793672786
	.quad	0x3fdd8400514cb788              # double 0.46118171634122307
	.quad	0x3fe648d013d349d8              # double 0.69638828155648991
	.size	.L__constant_100x100xf64, 80000

	.section	".note.GNU-stack","",@progbits
