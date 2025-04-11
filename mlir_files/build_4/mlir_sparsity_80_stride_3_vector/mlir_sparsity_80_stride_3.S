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
	csrr	a1, vlenb
	li	s6, 99
	slli	s9, a1, 2
	srli	s10, a1, 1
	li	s2, 800
	vsetvli	a3, zero, e32, m2, ta, ma
	vid.v	v8
	vsetvli	zero, zero, e64, m4, ta, ma
	vmv.v.i	v12, 0
	j	.LBB0_2
.LBB0_1:                                #   in Loop: Header=BB0_2 Depth=1
	addi	t5, t5, 1
	addi	t6, t6, 800
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #       Child Loop BB0_8 Depth 3
	blt	s6, t5, .LBB0_11
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	slli	a3, t5, 3
	add	a3, a3, a2
	lwu	a4, 4(a3)
	lwu	a5, 0(a3)
	lwu	s0, 12(a3)
	lwu	a3, 8(a3)
	slli	a4, a4, 32
	or	s5, a4, a5
	slli	s0, s0, 32
	or	s4, s0, a3
	j	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=2
	addi	s5, s5, 1
.LBB0_5:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_8 Depth 3
	bge	s5, s4, .LBB0_1
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=2
	li	s1, 0
	slli	a3, s5, 3
	add	a4, a7, a3
	lwu	a5, 4(a4)
	lwu	a4, 0(a4)
	add	a3, a3, s3
	fld	fa5, 0(a3)
	slli	a5, a5, 32
	or	a4, a4, a5
	mul	s0, a4, s2
	li	a3, 100
	mv	a1, t6
	j	.LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=3
	vsetvli	zero, zero, e32, m2, ta, ma
	vmslt.vx	v0, v8, a5
	add	a5, s8, s0
	vmv4r.v	v16, v12
	add	a4, s7, a1
	vmv4r.v	v20, v12
	vsetvli	zero, zero, e64, m4, ta, mu
	vle64.v	v16, (a5), v0.t
	vle64.v	v20, (a4), v0.t
	add	s1, s1, s10
	add	s0, s0, s9
	add	a1, a1, s9
	vfmul.vf	v20, v20, fa5
	vfadd.vv	v16, v16, v20
	vse64.v	v16, (a5), v0.t
	sub	a3, a3, s10
.LBB0_8:                                #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	blt	s6, s1, .LBB0_4
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
	.quad	42                              # 0x2a
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	103                             # 0x67
	.quad	115                             # 0x73
	.quad	121                             # 0x79
	.quad	161                             # 0xa1
	.quad	175                             # 0xaf
	.quad	183                             # 0xb7
	.quad	227                             # 0xe3
	.quad	237                             # 0xed
	.quad	247                             # 0xf7
	.quad	289                             # 0x121
	.quad	299                             # 0x12b
	.quad	305                             # 0x131
	.quad	344                             # 0x158
	.quad	355                             # 0x163
	.quad	364                             # 0x16c
	.quad	407                             # 0x197
	.quad	418                             # 0x1a2
	.quad	425                             # 0x1a9
	.quad	467                             # 0x1d3
	.quad	474                             # 0x1da
	.quad	482                             # 0x1e2
	.quad	522                             # 0x20a
	.quad	528                             # 0x210
	.quad	536                             # 0x218
	.quad	574                             # 0x23e
	.quad	581                             # 0x245
	.quad	588                             # 0x24c
	.quad	627                             # 0x273
	.quad	640                             # 0x280
	.quad	647                             # 0x287
	.quad	689                             # 0x2b1
	.quad	704                             # 0x2c0
	.quad	721                             # 0x2d1
	.quad	764                             # 0x2fc
	.quad	769                             # 0x301
	.quad	777                             # 0x309
	.quad	818                             # 0x332
	.quad	831                             # 0x33f
	.quad	840                             # 0x348
	.quad	880                             # 0x370
	.quad	894                             # 0x37e
	.quad	900                             # 0x384
	.quad	939                             # 0x3ab
	.quad	948                             # 0x3b4
	.quad	964                             # 0x3c4
	.quad	1004                            # 0x3ec
	.quad	1008                            # 0x3f0
	.quad	1016                            # 0x3f8
	.quad	1055                            # 0x41f
	.quad	1066                            # 0x42a
	.quad	1074                            # 0x432
	.quad	1116                            # 0x45c
	.quad	1126                            # 0x466
	.quad	1139                            # 0x473
	.quad	1178                            # 0x49a
	.quad	1188                            # 0x4a4
	.quad	1195                            # 0x4ab
	.quad	1235                            # 0x4d3
	.quad	1244                            # 0x4dc
	.quad	1249                            # 0x4e1
	.quad	1286                            # 0x506
	.quad	1299                            # 0x513
	.quad	1309                            # 0x51d
	.quad	1349                            # 0x545
	.quad	1355                            # 0x54b
	.quad	1362                            # 0x552
	.quad	1402                            # 0x57a
	.quad	1413                            # 0x585
	.quad	1427                            # 0x593
	.quad	1464                            # 0x5b8
	.quad	1480                            # 0x5c8
	.quad	1488                            # 0x5d0
	.quad	1529                            # 0x5f9
	.quad	1539                            # 0x603
	.quad	1546                            # 0x60a
	.quad	1587                            # 0x633
	.quad	1601                            # 0x641
	.quad	1611                            # 0x64b
	.quad	1650                            # 0x672
	.quad	1662                            # 0x67e
	.quad	1669                            # 0x685
	.quad	1708                            # 0x6ac
	.quad	1714                            # 0x6b2
	.quad	1720                            # 0x6b8
	.quad	1759                            # 0x6df
	.quad	1773                            # 0x6ed
	.quad	1785                            # 0x6f9
	.quad	1823                            # 0x71f
	.quad	1831                            # 0x727
	.quad	1842                            # 0x732
	.quad	1881                            # 0x759
	.quad	1889                            # 0x761
	.quad	1898                            # 0x76a
	.quad	1940                            # 0x794
	.quad	1950                            # 0x79e
	.quad	1961                            # 0x7a9
	.quad	1999                            # 0x7cf
	.size	.L__constant_101xindex, 808

	.type	.L__constant_1999xindex,@object # @__constant_1999xindex
	.p2align	6, 0x0
.L__constant_1999xindex:
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
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
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	95                              # 0x5f
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	26                              # 0x1a
	.quad	40                              # 0x28
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
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
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
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
	.quad	2                               # 0x2
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	21                              # 0x15
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
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
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	43                              # 0x2b
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	87                              # 0x57
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	15                              # 0xf
	.quad	42                              # 0x2a
	.quad	55                              # 0x37
	.quad	78                              # 0x4e
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	40                              # 0x28
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	89                              # 0x59
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	65                              # 0x41
	.quad	78                              # 0x4e
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	19                              # 0x13
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	51                              # 0x33
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	98                              # 0x62
	.quad	25                              # 0x19
	.quad	42                              # 0x2a
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	90                              # 0x5a
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
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
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
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	86                              # 0x56
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	50                              # 0x32
	.quad	63                              # 0x3f
	.quad	72                              # 0x48
	.quad	99                              # 0x63
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
	.quad	26                              # 0x1a
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
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
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
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	23                              # 0x17
	.quad	37                              # 0x25
	.quad	50                              # 0x32
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	21                              # 0x15
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	71                              # 0x47
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
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
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	49                              # 0x31
	.quad	69                              # 0x45
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	94                              # 0x5e
	.quad	9                               # 0x9
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	40                              # 0x28
	.quad	60                              # 0x3c
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
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
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
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
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	9                               # 0x9
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	62                              # 0x3e
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	15                              # 0xf
	.quad	27                              # 0x1b
	.quad	44                              # 0x2c
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
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
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	85                              # 0x55
	.quad	93                              # 0x5d
	.quad	21                              # 0x15
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	51                              # 0x33
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	83                              # 0x53
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
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
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	9                               # 0x9
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	97                              # 0x61
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	21                              # 0x15
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	65                              # 0x41
	.quad	71                              # 0x47
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
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	87                              # 0x57
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	4                               # 0x4
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	50                              # 0x32
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
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
	.quad	72                              # 0x48
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
	.quad	99                              # 0x63
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	48                              # 0x30
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	26                              # 0x1a
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	69                              # 0x45
	.quad	97                              # 0x61
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
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	10                              # 0xa
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	35                              # 0x23
	.quad	61                              # 0x3d
	.quad	76                              # 0x4c
	.quad	85                              # 0x55
	.quad	94                              # 0x5e
	.quad	5                               # 0x5
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
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
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	11                              # 0xb
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	37                              # 0x25
	.quad	55                              # 0x37
	.quad	65                              # 0x41
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
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
	.quad	33                              # 0x21
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
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	11                              # 0xb
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	69                              # 0x45
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	34                              # 0x22
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	66                              # 0x42
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
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
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	19                              # 0x13
	.quad	35                              # 0x23
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	61                              # 0x3d
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	54                              # 0x36
	.quad	63                              # 0x3f
	.quad	74                              # 0x4a
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	36                              # 0x24
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
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
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	19                              # 0x13
	.quad	28                              # 0x1c
	.quad	58                              # 0x3a
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	12                              # 0xc
	.quad	23                              # 0x17
	.quad	33                              # 0x21
	.quad	43                              # 0x2b
	.quad	99                              # 0x63
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
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	25                              # 0x19
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	88                              # 0x58
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	50                              # 0x32
	.quad	58                              # 0x3a
	.quad	71                              # 0x47
	.quad	89                              # 0x59
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
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	15                              # 0xf
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	71                              # 0x47
	.quad	84                              # 0x54
	.quad	94                              # 0x5e
	.quad	5                               # 0x5
	.quad	28                              # 0x1c
	.quad	60                              # 0x3c
	.quad	74                              # 0x4a
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
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
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	37                              # 0x25
	.quad	48                              # 0x30
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	1                               # 0x1
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
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
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	36                              # 0x24
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	98                              # 0x62
	.quad	15                              # 0xf
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	45                              # 0x2d
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
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
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	13                              # 0xd
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	77                              # 0x4d
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	74                              # 0x4a
	.quad	85                              # 0x55
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	29                              # 0x1d
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	72                              # 0x48
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	23                              # 0x17
	.quad	38                              # 0x26
	.quad	52                              # 0x34
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
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
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	41                              # 0x29
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	82                              # 0x52
	.quad	89                              # 0x59
	.quad	97                              # 0x61
	.quad	12                              # 0xc
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	52                              # 0x34
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	14                              # 0xe
	.quad	57                              # 0x39
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	90                              # 0x5a
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	66                              # 0x42
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
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
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	20                              # 0x14
	.quad	33                              # 0x21
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	94                              # 0x5e
	.quad	4                               # 0x4
	.quad	34                              # 0x22
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	23                              # 0x17
	.quad	44                              # 0x2c
	.quad	66                              # 0x42
	.quad	82                              # 0x52
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	23                              # 0x17
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	52                              # 0x34
	.quad	70                              # 0x46
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
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
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
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	9                               # 0x9
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	79                              # 0x4f
	.quad	91                              # 0x5b
	.quad	4                               # 0x4
	.quad	15                              # 0xf
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	60                              # 0x3c
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
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
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	49                              # 0x31
	.quad	64                              # 0x40
	.quad	74                              # 0x4a
	.quad	90                              # 0x5a
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	37                              # 0x25
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	82                              # 0x52
	.quad	91                              # 0x5b
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
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
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
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
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
	.quad	0x3feebee6b04d0590              # double 0.96080336030733982
	.quad	0x3feb031667c17f7c              # double 0.84412689461531398
	.quad	0x3fe6956812d01b79              # double 0.70573810266874581
	.quad	0x3fd22940b1555f2a              # double 0.28376786534998877
	.quad	0x3fe653c8d6481d21              # double 0.6977276024998994
	.quad	0x3fe5d412904ee69d              # double 0.68213775811382826
	.quad	0x3fd6001bd3f69536              # double 0.34375663470776219
	.quad	0x3fe4374e3c8bebef              # double 0.63175117326261254
	.quad	0x3fcaa3bb9433643c              # double 0.20812172638287219
	.quad	0x3fd302f1b974f674              # double 0.29705470191024763
	.quad	0x3fe22ac2eb0d7d6b              # double 0.56771989735345352
	.quad	0x3fe1f82341bfa723              # double 0.56154024926693002
	.quad	0x3fdae82057c9ef8a              # double 0.42041786740423304
	.quad	0x3fcd8fbfd0014abc              # double 0.23094937950607697
	.quad	0x3fc7f321658b1ec4              # double 0.18710725267577832
	.quad	0x3feb483eef601e8c              # double 0.85256907227535938
	.quad	0x3fe0de69cf154d0b              # double 0.52715006299914202
	.quad	0x3fbe3cbd221b6010              # double 0.11811430056275207
	.quad	0x3fab687e5de33c70              # double 0.053531598053830787
	.quad	0x3fee41f10eaacf4e              # double 0.94554951538746379
	.quad	0x3fc7051d312b91a4              # double 0.17984356785667643
	.quad	0x3fec42c54ed3aeeb              # double 0.88315072437168618
	.quad	0x3fef88e0dea76af1              # double 0.985458788748785
	.quad	0x3fed19679760193f              # double 0.90935115399842192
	.quad	0x3fc56b79fcdc780c              # double 0.1673424229310857
	.quad	0x3fec3576d92329a4              # double 0.88152639779700736
	.quad	0x3fce16631c42a560              # double 0.23505820159815993
	.quad	0x3fee7b589f099887              # double 0.95255690633781931
	.quad	0x3fe0047b9044f5d7              # double 0.50054720094311278
	.quad	0x3fd6bfe85f81bb2e              # double 0.3554631169017054
	.quad	0x3fefe078b6e6c55a              # double 0.99615131113948086
	.quad	0x3fec5ef74df1e9a6              # double 0.88659253333689914
	.quad	0x3fec6022dd215c7f              # double 0.88673537435069238
	.quad	0x3fe462fc9f1b2272              # double 0.63708334994687577
	.quad	0x3fe2eec56b26dd1c              # double 0.59164687088096768
	.quad	0x3fe7da9933e8ad4c              # double 0.74543438089805525
	.quad	0x3feba2c5174e9f1e              # double 0.86361937095805152
	.quad	0x3fd458d99cad9408              # double 0.31792297649946066
	.quad	0x3febd25f1b8c5ebc              # double 0.8694301164677749
	.quad	0x3fe399721700ead5              # double 0.61248116009604792
	.quad	0x3fe6f1ad225b657e              # double 0.71700150213580094
	.quad	0x3fbaff6784ff8378              # double 0.10545966145538255
	.quad	0x3fc6589526a0e588              # double 0.17457832704694121
	.quad	0x3fe3eb3f20081e4f              # double 0.62246662384218066
	.quad	0x3fe208b8358be10d              # double 0.56356440027505672
	.quad	0x3fd1abe25980f0ee              # double 0.2761159776744212
	.quad	0x3fd6dd1dee9db68c              # double 0.35724590589857352
	.quad	0x3feb8b6589af3fff              # double 0.86076619044797542
	.quad	0x3fed77bb75a3a4e1              # double 0.92086575485623368
	.quad	0x3fe7700bdcf1e645              # double 0.7324275317507235
	.quad	0x3fa53c9cffcaf800              # double 0.041478067612374048
	.quad	0x3fe819d013321cf2              # double 0.75315097569628464
	.quad	0x3fee695f8f8c9fac              # double 0.95036294972395785
	.quad	0x3fef7fce5ce16969              # double 0.98435133114552997
	.quad	0x3febeea5db27e1c7              # double 0.87288182071557052
	.quad	0x3fe44831a10e971f              # double 0.63381272751277951
	.quad	0x3fed03e49c9a5490              # double 0.90672522150511448
	.quad	0x3fdbcd7fdbebf54c              # double 0.43441769100885064
	.quad	0x3fd7d71ed636a0b2              # double 0.37250491065288849
	.quad	0x3fe0a689bee54672              # double 0.52032935413644865
	.quad	0x3fea293e029af014              # double 0.81753445156891979
	.quad	0x3feaccfb78c4ba00              # double 0.83752225482550102
	.quad	0x3fd0a6864ce2fdf0              # double 0.26016385563340716
	.quad	0x3fe85e3584430665              # double 0.76150012810121537
	.quad	0x3feaa4780ddd069a              # double 0.83257677753154558
	.quad	0x3fce5eac48fda22c              # double 0.23726419033052204
	.quad	0x3fe46a617e981fca              # double 0.63798594212948356
	.quad	0x3fdc7f407237c392              # double 0.44526683000645406
	.quad	0x3fedcc37976b151c              # double 0.93117885183224613
	.quad	0x3fd73f2ad4bdaf6e              # double 0.36323042655452908
	.quad	0x3fd228c3b9a394be              # double 0.28373807076270541
	.quad	0x3fd9c29738e2cd16              # double 0.40250187449710617
	.quad	0x3fe02d54634a0224              # double 0.50553340332414054
	.quad	0x3fe2b749f8fb390c              # double 0.58487414006393257
	.quad	0x3fc61cfafae9f634              # double 0.17275941135078343
	.quad	0x3fc31fa846d3cb88              # double 0.14940360506406258
	.quad	0x3fb7aeed488d8600              # double 0.092512922490207927
	.quad	0x3fbdbdb636fdd138              # double 0.11617602198186183
	.quad	0x3fd7f078f467f28c              # double 0.37405227535035901
	.quad	0x3fe964ba53be045b              # double 0.7935458789435289
	.quad	0x3fe7b593ad3717a8              # double 0.7409151442632167
	.quad	0x3feb4dcd138647a8              # double 0.85324720204720439
	.quad	0x3fefb79afa3915e9              # double 0.99116276618650289
	.quad	0x3fe55563594ade1d              # double 0.66667334976131409
	.quad	0x3f97d84910aa4d80              # double 0.023286000864187084
	.quad	0x3fe2b9d0612400b5              # double 0.58518237087994029
	.quad	0x3fd8cbd4ce7d353a              # double 0.38744087376547365
	.quad	0x3fe41b9700c324d9              # double 0.62836790226824768
	.quad	0x3fb17480534b2698              # double 0.068183918319073888
	.quad	0x3fe5aa57fdc7cd4c              # double 0.67704391066073688
	.quad	0x3fe79babc72d704a              # double 0.73775280858854697
	.quad	0x3febf2ab863e1b2b              # double 0.87337280482538426
	.quad	0x3fe6cbd87c24d6ec              # double 0.7123835014997133
	.quad	0x3fef26d73c607770              # double 0.97349130432460917
	.quad	0x3fe239adf71bed15              # double 0.56954096091741013
	.quad	0x3fb1f26b76d34530              # double 0.070105282316281103
	.quad	0x3fe67572434f139e              # double 0.70183671137111836
	.quad	0x3fe37bee6a468a85              # double 0.60887833363479216
	.quad	0x3fb6f190037bc228              # double 0.089623452043959717
	.quad	0x3fa7eeff47250bf0              # double 0.046745278772981069
	.quad	0x3fdf846d006b9938              # double 0.49245762864156317
	.quad	0x3fdf0e34adea0416              # double 0.4852420519237638
	.quad	0x3fb491233a5ad018              # double 0.080339624163400791
	.quad	0x3fe398e19fb7e155              # double 0.612412273359079
	.quad	0x3fd836f89f5fa264              # double 0.37835517467332225
	.quad	0x3fe5190de02a595b              # double 0.65930837423619992
	.quad	0x3fd666e99829318a              # double 0.35003127917732313
	.quad	0x3fd1dfe081e5e846              # double 0.27928936658247883
	.quad	0x3fc6f58254d3e0a8              # double 0.17936734334921778
	.quad	0x3fe5ee4898520ddc              # double 0.68533735036947574
	.quad	0x3fd8db9aab4690ea              # double 0.38840357519280977
	.quad	0x3fd271b1acb46f3c              # double 0.28818933358865073
	.quad	0x3fe07ee1072f7cae              # double 0.51548816111962537
	.quad	0x3fc97d1048b0b698              # double 0.19912913846331004
	.quad	0x3fd0403ca0717544              # double 0.25392070453911608
	.quad	0x3f86e8dd5f1dae40              # double 0.011186341729362614
	.quad	0x3fc09c0e86286ce8              # double 0.12976247358969961
	.quad	0x3fe5fd84dfa02ff5              # double 0.68719714810276733
	.quad	0x3fd0c90dbbd8c41a              # double 0.26227134079368997
	.quad	0x3f21b04278b61000              # double 1.3495265407581503E-4
	.quad	0x3fde94bc4aced262              # double 0.47782809548815497
	.quad	0x3f77202182e19600              # double 0.0056458767922769049
	.quad	0x3fe07b106e7d74ce              # double 0.51502248363581216
	.quad	0x3fe32441f543f73b              # double 0.59817598250786064
	.quad	0x3fe100f31be314c2              # double 0.53136592337309474
	.quad	0x3feadc22780867b6              # double 0.83937190479195212
	.quad	0x3fb9894492b5bce0              # double 0.099750791375970759
	.quad	0x3fc7b506d95cad34              # double 0.18521199811343936
	.quad	0x3fe88dcabcfa064d              # double 0.76730858716491357
	.quad	0x3feadc35d64d74ab              # double 0.83938114028901134
	.quad	0x3fdd5e465ac26f04              # double 0.45887907851441434
	.quad	0x3fd432cd92cbd24c              # double 0.31560077033580991
	.quad	0x3fd4a54f45ed4732              # double 0.3225897009734694
	.quad	0x3fe3a01ab53712e7              # double 0.6132939853056002
	.quad	0x3fe13e877da39f5e              # double 0.53888296641251165
	.quad	0x3fe4ff19701be15e              # double 0.65614005943556797
	.quad	0x3fde6d2617c64de2              # double 0.47541191407910166
	.quad	0x3fe5576b915344e4              # double 0.66692140945283684
	.quad	0x3fe4980282736631              # double 0.64355588415782539
	.quad	0x3fe61fabb70f94ff              # double 0.69136605981898913
	.quad	0x3fe8736fa8b50b28              # double 0.76409132910371103
	.quad	0x3fe53bb07f0f73ec              # double 0.66353630844571176
	.quad	0x3fee6316f49fd04d              # double 0.94959590700319441
	.quad	0x3fe139885dce3d94              # double 0.53827303239261193
	.quad	0x3fed7cb52fb5e7bb              # double 0.92147311514349128
	.quad	0x3fba9717789b5198              # double 0.10386797613620613
	.quad	0x3fe45c010bc55ff7              # double 0.63623096751234598
	.quad	0x3feb255cfeb05aab              # double 0.84831094497606807
	.quad	0x3fbf3d8f398c32a0              # double 0.12203307299587118
	.quad	0x3fee93dde25fde2c              # double 0.95555013860479709
	.quad	0x3fd9b71962604d04              # double 0.40180048567818027
	.quad	0x3fcc8be9f2e07fd0              # double 0.22301983222223365
	.quad	0x3fe401464374ef0a              # double 0.6251555745616042
	.quad	0x3fcaa6531b7eeeb0              # double 0.20820082514352611
	.quad	0x3fed93d12697ff31              # double 0.9242940667900027
	.quad	0x3fe292a77d63396e              # double 0.58040213098301563
	.quad	0x3fb9fc7e467f3b70              # double 0.10150899144285375
	.quad	0x3fb57b53466eded8              # double 0.08391304463918503
	.quad	0x3fe0a9f9115d3433              # double 0.52074864760800776
	.quad	0x3fc2c28bca5c2d6c              # double 0.14656207447874736
	.quad	0x3fda42f197fb285e              # double 0.41033592073347858
	.quad	0x3fe2314f72a7801a              # double 0.56851932900827085
	.quad	0x3fe50bd4aa207b99              # double 0.65769417980105793
	.quad	0x3feda15578c04a93              # double 0.92594407638746856
	.quad	0x3fef46f9ad75c18b              # double 0.97741397742179125
	.quad	0x3fe8bee4196d8538              # double 0.77330212561006473
	.quad	0x3fdfef6bcfbedf6c              # double 0.4989881066098778
	.quad	0x3fe3af1d60456546              # double 0.61512631228394166
	.quad	0x3fd6d3b0f80302bc              # double 0.35667061061762317
	.quad	0x3fda118846e37868              # double 0.4073200886031203
	.quad	0x3fce87cc540b61ec              # double 0.23851923087819615
	.quad	0x3fd1dd30d50b5b46              # double 0.27912541203607011
	.quad	0x3fe4f8c24e1a4949              # double 0.65536608938627083
	.quad	0x3fe351db4c52fa2d              # double 0.60374226481491677
	.quad	0x3fee7d1ae0f2ddff              # double 0.95277160582821796
	.quad	0x3fe932ad78097080              # double 0.78743623203946811
	.quad	0x3fd736851e1eff20              # double 0.36270263616096265
	.quad	0x3fca5ef6b7b82bb0              # double 0.20602306337999954
	.quad	0x3fc0d3a6ab3d9520              # double 0.13145907746653851
	.quad	0x3fe8c920bb8cc0a7              # double 0.77455174094031498
	.quad	0x3f846d0edd677600              # double 0.0099736367528135971
	.quad	0x3fee97a78d2804b9              # double 0.95601251191705849
	.quad	0x3fdfaca60f75827e              # double 0.4949126387564674
	.quad	0x3fe38ae028c16870              # double 0.61070259056147158
	.quad	0x3fdeeb436e90d91c              # double 0.48310933873598727
	.quad	0x3fb4a80a4cf53f88              # double 0.080689090527128582
	.quad	0x3febd5b9ca422099              # double 0.86983956817222741
	.quad	0x3fa57e8bdb9d9650              # double 0.041981096800367212
	.quad	0x3fd0872a4c7f9bf4              # double 0.25824983091882747
	.quad	0x3fc0c88adbf17720              # double 0.13112006892600281
	.quad	0x3fa2a54746fa3660              # double 0.036417224325401731
	.quad	0x3fe397595541cce2              # double 0.61222521449817813
	.quad	0x3fe4a9db32d6560f              # double 0.64573440484190481
	.quad	0x3fe23fe97f911a2a              # double 0.57030177035705276
	.quad	0x3fee7f31eca8e754              # double 0.95302673552144279
	.quad	0x3fc6fed72076ff34              # double 0.17965210995861869
	.quad	0x3fec33f8398d969a              # double 0.88134394875369826
	.quad	0x3fe6e0ad54846a78              # double 0.7149264002540141
	.quad	0x3fd84b7f18777680              # double 0.37960793866464115
	.quad	0x3fe02fabd465f93b              # double 0.50581923946427965
	.quad	0x3fe7c1c36118d848              # double 0.74240273441569915
	.quad	0x3fee234c0c640313              # double 0.94180872364094836
	.quad	0x3fe7df5fb57d083b              # double 0.74601731726602993
	.quad	0x3fea1a1f0e32e2d3              # double 0.815688636524181
	.quad	0x3fd983d8ceb0fdb8              # double 0.39867229637817614
	.quad	0x3fdb01c4cbf73c4c              # double 0.42198295515567419
	.quad	0x3fc435c037c926dc              # double 0.15789034580148253
	.quad	0x3fe514b1760c8deb              # double 0.65877602631047461
	.quad	0x3fbee5c6813ec248              # double 0.12069359450720996
	.quad	0x3fe7a8696390667e              # double 0.739308065854132
	.quad	0x3fc9e9abd6b906ac              # double 0.20244358047971411
	.quad	0x3feaf76171daa19e              # double 0.84269783246149976
	.quad	0x3fea1751919aa8ba              # double 0.81534651220615406
	.quad	0x3feeac247252f9e3              # double 0.95851347283297305
	.quad	0x3feaaaa939ef3178              # double 0.83333264651586969
	.quad	0x3fecbbfb4d6401fa              # double 0.89794697871553741
	.quad	0x3fd93552e17c8e0a              # double 0.39387962360544349
	.quad	0x3fc20ad03415fe80              # double 0.14095499556787061
	.quad	0x3fcda5f07c699478              # double 0.23162656855416563
	.quad	0x3fd13c7ff0346cd2              # double 0.26931761224268513
	.quad	0x3fe6f672ad50850a              # double 0.71758397913450378
	.quad	0x3fe12f624e8d588b              # double 0.53703418104375211
	.quad	0x3fbcd445ca041128              # double 0.11261402303722845
	.quad	0x3fe6c6b9afbb8d9f              # double 0.71175846407679788
	.quad	0x3fedf912b024694e              # double 0.93665441897182133
	.quad	0x3fdedb1808c23c28              # double 0.48212242942185179
	.quad	0x3fb4aa35ffe21ab8              # double 0.080722212764252954
	.quad	0x3fe22814f0502a98              # double 0.56739279686128707
	.quad	0x3f94e51a33e04f60              # double 0.020405206123612074
	.quad	0x3fef6e85ab1c0c51              # double 0.9822414724334384
	.quad	0x3fa46f978ce2f240              # double 0.039913879344997572
	.quad	0x3fdc8720c6dbf352              # double 0.44574756069032617
	.quad	0x3fe4ea9fe5843219              # double 0.65364069774074374
	.quad	0x3fc39c981c89634c              # double 0.15321637528793486
	.quad	0x3fef6d479662d679              # double 0.98208979961664433
	.quad	0x3fdbfe08877ee430              # double 0.43737996322630845
	.quad	0x3fd7a457511bb80a              # double 0.36940558357935116
	.quad	0x3fc4a7906d7d5c98              # double 0.16136365266968222
	.quad	0x3feff03ae0ae29f5              # double 0.99807495005489832
	.quad	0x3f7dcaff98487580              # double 0.0072736725019501014
	.quad	0x3fe10d3efd1c7ef5              # double 0.5328669494228665
	.quad	0x3fec7f6b60a6378a              # double 0.89055413128674954
	.quad	0x3fe9b38145d1018b              # double 0.8031622279741425
	.quad	0x3fe9df721fdc6baf              # double 0.80852609846930601
	.quad	0x3fe0c7fab1e4d836              # double 0.52441153283030562
	.quad	0x3fcccf4944a29ab8              # double 0.22507587291075537
	.quad	0x3fe56883d329476a              # double 0.66900817148619507
	.quad	0x3fe430fc823b4efe              # double 0.63097978053926318
	.quad	0x3fdd85f7d0f4591a              # double 0.46130175977431664
	.quad	0x3fc4da16a4617528              # double 0.16290553118134565
	.quad	0x3fd92242816f9a50              # double 0.39271605148534139
	.quad	0x3fea948bc92d6f19              # double 0.83063306133724091
	.quad	0x3fe9f788986f5b4c              # double 0.81146650097330441
	.quad	0x3fc46fd28c0adef0              # double 0.15966255033503485
	.quad	0x3fd231ea731dca5a              # double 0.28429661981423282
	.quad	0x3fc482ec288c1378              # double 0.16024543742983233
	.quad	0x3fd89292f44d29c6              # double 0.38394616944847504
	.quad	0x3fee12f00a629637              # double 0.93981172588673345
	.quad	0x3fb2849f2a306010              # double 0.072336147117653349
	.quad	0x3fef237e23cc350c              # double 0.97308260909781685
	.quad	0x3fbd420794b73290              # double 0.11428878193619085
	.quad	0x3fe21598fbecb364              # double 0.56513642505670392
	.quad	0x3fba36fb7727d660              # double 0.10240146311829212
	.quad	0x3fefa0700aa1c318              # double 0.98833467556514431
	.quad	0x3fe5c36093bc35bf              # double 0.68009976248293202
	.quad	0x3fe25cbd1c36c58c              # double 0.5738206435254809
	.quad	0x3fe137a6fdc78b5c              # double 0.53804349485686087
	.quad	0x3fb68b551e6a7740              # double 0.088063545156242817
	.quad	0x3f82909b96b84180              # double 0.0090648799296395577
	.quad	0x3fdb7a17d57f270e              # double 0.42932697152410604
	.quad	0x3fd13bba61981b56              # double 0.26927051096611387
	.quad	0x3feab80446fdda01              # double 0.83496297708080658
	.quad	0x3fd20d6311add23e              # double 0.28206707693542288
	.quad	0x3fe98b685111b229              # double 0.79826751550496511
	.quad	0x3febd87062c48a5c              # double 0.87017077723096347
	.quad	0x3fead4f6e3a67f16              # double 0.83849663222278781
	.quad	0x3fc9c5727fe342a4              # double 0.20133811230200138
	.quad	0x3fe5ce0fddfedaad              # double 0.6814040504312594
	.quad	0x3fdb044c620d90e4              # double 0.42213735175597678
	.quad	0x3fef573fc02a1dea              # double 0.97940051586277588
	.quad	0x3fe3cf9dd88e5823              # double 0.6190938214883811
	.quad	0x3fc549a1170f6990              # double 0.16630948663698719
	.quad	0x3fe5cc9644d3a73b              # double 0.68122399752358065
	.quad	0x3fe01b33e8751ddf              # double 0.50332065011837901
	.quad	0x3fd2f8a242d641fe              # double 0.29642540480656965
	.quad	0x3fe485a1f76bb0d9              # double 0.64131258320187634
	.quad	0x3fb35d5952240d20              # double 0.075643141321098728
	.quad	0x3fe874181c5dfe1c              # double 0.76417165317974733
	.quad	0x3fea2fa305f1f7b5              # double 0.8183150402180589
	.quad	0x3fe0f4b9ac0c58ea              # double 0.52987369158907183
	.quad	0x3fec3ab901f4f638              # double 0.88216829664424434
	.quad	0x3fe8f4843a1b11ae              # double 0.77984820698525481
	.quad	0x3febb6451b3b99c5              # double 0.86599974936398694
	.quad	0x3febf1f8019af560              # double 0.87328720391785097
	.quad	0x3fd283183097ceec              # double 0.28925137277040736
	.quad	0x3fe119b617c398fd              # double 0.53438858643929132
	.quad	0x3fe3ada70da57e88              # double 0.6149478212864361
	.quad	0x3fe585635fe793cf              # double 0.67253273707739847
	.quad	0x3fef9f68cf53caad              # double 0.98820915692916388
	.quad	0x3fef5d3458c701a4              # double 0.98012749995546188
	.quad	0x3fe714a09268ad8a              # double 0.72126797290313616
	.quad	0x3fcc33f61797ff14              # double 0.22033573295629394
	.quad	0x3fe3328bad2278c4              # double 0.59992011847841598
	.quad	0x3fe9ce682a2f9a0c              # double 0.80644615401689767
	.quad	0x3fe553adef59048f              # double 0.6664647745857496
	.quad	0x3f6ae97094d2f000              # double 0.0032851408819549732
	.quad	0x3fce0a69fb710740              # double 0.23469280984323326
	.quad	0x3fd0ce866c9cc12e              # double 0.26260529143020761
	.quad	0x3fee68d82e83e3a1              # double 0.95029839596746879
	.quad	0x3fe0e238459c03ce              # double 0.5276147231635322
	.quad	0x3f6a15ea31697200              # double 0.0031842779238060448
	.quad	0x3fe0aedab2a3da88              # double 0.52134451761851697
	.quad	0x3fdaba6d1060cbbe              # double 0.41762854194092458
	.quad	0x3fdcdc8d2677eeee              # double 0.45096138722122603
	.quad	0x3fd483b3e1a55984              # double 0.32053849254352706
	.quad	0x3fc56b277c1fd078              # double 0.16733258782153704
	.quad	0x3feda52b93abeb06              # double 0.92641238062000819
	.quad	0x3fefeda711e414a0              # double 0.99776032919239199
	.quad	0x3fc3a9bd79d78638              # double 0.15361755799590227
	.quad	0x3feedf2a78235761              # double 0.96474193062270441
	.quad	0x3fe2e259f698f0fa              # double 0.59013078845558131
	.quad	0x3feb8a7751be4e9a              # double 0.8606525990057492
	.quad	0x3fc161d6c6743498              # double 0.13579830827840023
	.quad	0x3fe63100d5375a61              # double 0.69348184245866318
	.quad	0x3fd6eac50a3319d6              # double 0.35807920452171282
	.quad	0x3fef8773396c50dd              # double 0.98528443541956856
	.quad	0x3fbed8f5f46915f8              # double 0.12049805848172201
	.quad	0x3fe3cb3f8e706524              # double 0.61856057949185983
	.quad	0x3feb09eae42c7580              # double 0.84496063771409524
	.quad	0x3fb7d9c37ca3a8b0              # double 0.093166559152140449
	.quad	0x3fe98e94df3a4963              # double 0.79865497206837366
	.quad	0x3fe26df63880a148              # double 0.57592307124745279
	.quad	0x3fb3fecc850b5eb8              # double 0.078106672746225736
	.quad	0x3fe9547d6443e222              # double 0.79156369765320655
	.quad	0x3fc47b6363faf9d8              # double 0.16001551038603057
	.quad	0x3fedf74f15a505c2              # double 0.93643907763924283
	.quad	0x3fc0ec6ef6cf5e18              # double 0.13221537638922665
	.quad	0x3feb3a7c42f1d9f6              # double 0.85088933062689764
	.quad	0x3fc58cee5ca3a314              # double 0.16836337588690553
	.quad	0x3fde9b8554d1c648              # double 0.47824223788402209
	.quad	0x3fec6f1ad8729cbc              # double 0.88856260561887934
	.quad	0x3fdfdd276540fd6c              # double 0.49787316215584698
	.quad	0x3fe70e649c1b5b8b              # double 0.72050695886251626
	.quad	0x3fe49bc2e8309e14              # double 0.64401383733360484
	.quad	0x3fcd050efb731780              # double 0.22671687391101258
	.quad	0x3fcc7fd8d6a41cf4              # double 0.22265158157845344
	.quad	0x3fe9b197cf2be284              # double 0.8029288336102387
	.quad	0x3fec54c2b75f56d1              # double 0.88534675421643716
	.quad	0x3fefaa9ad03f22a9              # double 0.98957577393692475
	.quad	0x3fd61b861c71d3b0              # double 0.34542992379948156
	.quad	0x3fc63acc0b135480              # double 0.17366934338375373
	.quad	0x3fd6d97f4497cc12              # double 0.35702497194796579
	.quad	0x3fe26fc2cc678606              # double 0.57614269182903466
	.quad	0x3fa70445c0adba30              # double 0.044954471369113569
	.quad	0x3fc04244db505b10              # double 0.12702236851392756
	.quad	0x3fe7b4b4e7e6ce63              # double 0.74080891888884215
	.quad	0x3fe72144003ec6a7              # double 0.72281074569601322
	.quad	0x3fead697442b06eb              # double 0.83869517625882162
	.quad	0x3feb5b7e7c4ecad2              # double 0.85491871146072129
	.quad	0x3fdabb7212b963a8              # double 0.4176907713750162
	.quad	0x3fe5072ded7a544d              # double 0.65712639219658231
	.quad	0x3fddd2eab231e984              # double 0.46599833871700747
	.quad	0x3fafa37affa06610              # double 0.06179413195077299
	.quad	0x3fe5edaec1369120              # double 0.68526399361556756
	.quad	0x3fcbd87ad5047ad4              # double 0.2175439396023281
	.quad	0x3feb5e7ea9b60953              # double 0.85528500696845311
	.quad	0x3fdd631d59416f3a              # double 0.45917447773330233
	.quad	0x3fc64445098f5df8              # double 0.17395842520521376
	.quad	0x3fe1d911fcad2759              # double 0.55774783469062605
	.quad	0x3fe12d9497566d56              # double 0.53681401785017147
	.quad	0x3fe1fe6ad7e0ba74              # double 0.56230680621759044
	.quad	0x3fdf36aa0fb86380              # double 0.48771144423658797
	.quad	0x3fe335412e577c22              # double 0.60025080729599645
	.quad	0x3fc29686ec9f053c              # double 0.14521872094887012
	.quad	0x3fe457fd1f3543aa              # double 0.6357408151180739
	.quad	0x3fe944e84ec67248              # double 0.78966155420091244
	.quad	0x3fae65ce011b5760              # double 0.059370458254916825
	.quad	0x3fecf9e9b6ffb036              # double 0.9055069517321559
	.quad	0x3fe1f59f40d2cfdf              # double 0.561233164413803
	.quad	0x3fd7fb0fd67d8c4c              # double 0.37469860025720858
	.quad	0x3fbc27e1aa0b1ef0              # double 0.10998354340983574
	.quad	0x3fc473a2040734d0              # double 0.15977883526503556
	.quad	0x3fe7719d5faff451              # double 0.73261898697786354
	.quad	0x3fd1771f65cd3f1c              # double 0.27289566937996468
	.quad	0x3fe4c30f1eb0c350              # double 0.64881092066034718
	.quad	0x3fe67c549875a97f              # double 0.70267705704945616
	.quad	0x3fd4f64f857c34b0              # double 0.32753360782300955
	.quad	0x3fe816f4e86e6fac              # double 0.75280232807880542
	.quad	0x3fe2b1c3dff464d7              # double 0.58419984570641759
	.quad	0x3fb55278ea40c548              # double 0.083289677801777207
	.quad	0x3fd93ac568dcd598              # double 0.39421210518352146
	.quad	0x3fe35df3baf28964              # double 0.60521875870862774
	.quad	0x3fdf7813c0aac772              # double 0.49170392813822794
	.quad	0x3fc21bc442ae59a0              # double 0.1414723706809129
	.quad	0x3fe379db5c1a20f6              # double 0.60862510670361192
	.quad	0x3feb74db68861400              # double 0.85801477827828876
	.quad	0x3fbe33fd23317ae8              # double 0.11798078641139009
	.quad	0x3fe52bfba1466d5b              # double 0.66161900996250311
	.quad	0x3fe24b36ec84d92c              # double 0.57168146319489699
	.quad	0x3fed098868d9530d              # double 0.90741367796235439
	.quad	0x3fdf3586ed6ada4c              # double 0.48764203248302773
	.quad	0x3fe8e32934775019              # double 0.77772960898664956
	.quad	0x3fd331b103a63e22              # double 0.29990792614350614
	.quad	0x3fe0bf1e5d1e29f8              # double 0.52332990824771652
	.quad	0x3fd984f60f81eebc              # double 0.39874030603798949
	.quad	0x3fe35495a8a8bf84              # double 0.60407526913876142
	.quad	0x3f93e4e4fc705d20              # double 0.019427850635193811
	.quad	0x3fe8fed1c9012a10              # double 0.78110589274121089
	.quad	0x3fdabd0bf9b652ea              # double 0.41778849969823162
	.quad	0x3fe42a3aa4232929              # double 0.63015491540980861
	.quad	0x3fefd1c300d2309b              # double 0.99435568008768215
	.quad	0x3fec521bad088cb2              # double 0.88502296252808876
	.quad	0x3fe7ab3d6865f593              # double 0.73965330496109727
	.quad	0x3fe75515bf0db9e1              # double 0.72913634600791621
	.quad	0x3fc27e15b51e3364              # double 0.1444728025784584
	.quad	0x3fef8262e642210e              # double 0.9846662995560409
	.quad	0x3fe7e421421363b2              # double 0.74659788995187726
	.quad	0x3fea46154d26d22c              # double 0.82105507916145858
	.quad	0x3fd9a73ad3a1f0de              # double 0.40083189646953865
	.quad	0x3f8a7b18fa8cc040              # double 0.012930102487729411
	.quad	0x3fe5ae81fd1e5a68              # double 0.67755221783847919
	.quad	0x3fe80091b11df3a0              # double 0.75006947129405787
	.quad	0x3fc4845c601f948c              # double 0.16028933232806641
	.quad	0x3fe78fc58a0e103a              # double 0.7363002487550212
	.quad	0x3fe267f1fc1a37bd              # double 0.57518862951996363
	.quad	0x3fede772d738e3f7              # double 0.93450300250617502
	.quad	0x3fd9ee1737dea15c              # double 0.40515690284748529
	.quad	0x3fe474d1ffbf6aeb              # double 0.6392602915833242
	.quad	0x3fd5d65095af6ed0              # double 0.34120573632911277
	.quad	0x3fe181947d1ae9b1              # double 0.54706787523837452
	.quad	0x3fd638cdba9e2516              # double 0.34721701836004237
	.quad	0x3fef89cd8a6d9a79              # double 0.98557164227243199
	.quad	0x3fe13016d2ae65d1              # double 0.53712025784187223
	.quad	0x3feebb86701ca0bb              # double 0.96039125344125098
	.quad	0x3fdc20ec18c7f09a              # double 0.4395094148637867
	.quad	0x3fbabb4a611b3768              # double 0.10442032690772651
	.quad	0x3fec98a35933864e              # double 0.8936325781070964
	.quad	0x3fe967fa516c7eb6              # double 0.79394260314071263
	.quad	0x3fd5b270d04ec35a              # double 0.33901615469499335
	.quad	0x3fd7d6594d687696              # double 0.37245781478291329
	.quad	0x3fc129b82bcc48cc              # double 0.13408567560742879
	.quad	0x3f8587248c6c1d40              # double 0.010511670623158609
	.quad	0x3f97c105f6342820              # double 0.023197262909015248
	.quad	0x3fc82f817e2cfa00              # double 0.18894976292536114
	.quad	0x3fd7eae178cfb79a              # double 0.37371098325717755
	.quad	0x3fad801972a850d0              # double 0.057617945905947487
	.quad	0x3fdafed2cadbdc10              # double 0.42180318651611604
	.quad	0x3fe500ea9f5502d8              # double 0.65636187667413548
	.quad	0x3fe4a696f988cfb1              # double 0.64533566224280581
	.quad	0x3fecbca627cdc13d              # double 0.89802844785848601
	.quad	0x3fdb8d6425d60934              # double 0.43050483412675367
	.quad	0x3fed58d4e1a1ec1e              # double 0.91709369725083767
	.quad	0x3fd2af7d69ea0304              # double 0.29196105330633793
	.quad	0x3f788d6c9a906900              # double 0.0059942476591692273
	.quad	0x3fa8e45668afefe0              # double 0.048617077140050702
	.quad	0x3fe6ce4dd9415d0e              # double 0.71268360550576104
	.quad	0x3fdeba6384bbee1c              # double 0.48012626612009668
	.quad	0x3fe111b5e25623bb              # double 0.53341192442268637
	.quad	0x3fdf17b3a669e2c6              # double 0.48582164050416698
	.quad	0x3fd171f64ee22a1e              # double 0.27258069709265154
	.quad	0x3fee7fab20c37ed0              # double 0.95308452986861347
	.quad	0x3fe35cad3110a73f              # double 0.60506305296915019
	.quad	0x3fe230a2b9819e42              # double 0.568436968152078
	.quad	0x3fe2bd91cd19b56b              # double 0.58564081247975019
	.quad	0x3fe8fec070c787a8              # double 0.78109762217740286
	.quad	0x3fb08af5855aacb0              # double 0.064620347077538609
	.quad	0x3fe456671785d14c              # double 0.63554720491678429
	.quad	0x3fb82b885ccd31a0              # double 0.094414255768418886
	.quad	0x3fd03706a040ffa0              # double 0.25335851335329984
	.quad	0x3fed375d3fcae18d              # double 0.91300833186601127
	.quad	0x3fe5b3f7b96110bb              # double 0.67821871001117218
	.quad	0x3fbb3c7d2f76a288              # double 0.10639173897528498
	.quad	0x3fee8ba653260ed9              # double 0.95454708328221749
	.quad	0x3f8dbb3dbd3a8980              # double 0.014517290437031205
	.quad	0x3fd0db98a5764104              # double 0.26340309294120368
	.quad	0x3fd3bbd5daa8b076              # double 0.308339561018108
	.quad	0x3fdad77add493cb2              # double 0.41940185174912437
	.quad	0x3fef655ab287b3a0              # double 0.98112234944493437
	.quad	0x3fd8509c76c98430              # double 0.37992011642751589
	.quad	0x3fe47109370536b8              # double 0.63879833933034202
	.quad	0x3fe43e6f497b88ea              # double 0.63262142517149056
	.quad	0x3fed682be959136d              # double 0.91896625114223485
	.quad	0x3fb0a4ebd7db7ca0              # double 0.065016498755982699
	.quad	0x3fd5f0be7daff008              # double 0.34281885408540846
	.quad	0x3feb5afe873a44fb              # double 0.85485769664424482
	.quad	0x3fe615a245ab0bb0              # double 0.69014085394916513
	.quad	0x3fcaf93a1da02034              # double 0.2107308048873634
	.quad	0x3fdec82ce7a83c4a              # double 0.4809677374150324
	.quad	0x3fe1969a361136d7              # double 0.54963408050545126
	.quad	0x3fdfb76adc8fd6d8              # double 0.49556991137738526
	.quad	0x3fa96ff91add0c70              # double 0.049682411698562912
	.quad	0x3fe52fa830a3197d              # double 0.6620675039237508
	.quad	0x3fd282f2687597dc              # double 0.28924236489399191
	.quad	0x3fd1013e0d7be1f6              # double 0.26570082966603026
	.quad	0x3fd2e488d3aa87a0              # double 0.2951986376812048
	.quad	0x3fd233d9989cc74e              # double 0.28441467193180336
	.quad	0x3fc2387211a51e40              # double 0.14234758245059886
	.quad	0x3fe4446be9b40329              # double 0.63335223813200969
	.quad	0x3fe58e18273da137              # double 0.67359550155837311
	.quad	0x3fe6170d8e2614f3              # double 0.69031408084324963
	.quad	0x3fe7cdd3bd4a1e36              # double 0.74387537928209357
	.quad	0x3fe5dfc286cfd8f8              # double 0.68356443720293125
	.quad	0x3fd95434598c2b38              # double 0.39576443428875363
	.quad	0x3fd3c6d1c52e034c              # double 0.3090099740584733
	.quad	0x3fec51105551a6a1              # double 0.88489548362595738
	.quad	0x3fd81756d49c11ca              # double 0.37642451059971604
	.quad	0x3feb9135cad8ef99              # double 0.86147584551462153
	.quad	0x3fe6136c8e122923              # double 0.68987109897833354
	.quad	0x3fd726850a17bfb8              # double 0.36172605500814425
	.quad	0x3fd14aac8450be90              # double 0.27018273278643168
	.quad	0x3fe2b66107e759ac              # double 0.58476306480115658
	.quad	0x3fdd9762a363e316              # double 0.4623648257834686
	.quad	0x3fa29ff05e712510              # double 0.036376487282334335
	.quad	0x3f706570429e8200              # double 0.00400298930790699
	.quad	0x3fa9efa0e7b23630              # double 0.050656345637531408
	.quad	0x3fd83341c85d2da0              # double 0.37812847677988692
	.quad	0x3fac983fe2abaa30              # double 0.055849071902987268
	.quad	0x3fead96827481b60              # double 0.83903892204476093
	.quad	0x3fe6a9625bd3e889              # double 0.70817678389654859
	.quad	0x3fef2fab23a28e2b              # double 0.97456891021687874
	.quad	0x3fe51951f16678a8              # double 0.65934083126537235
	.quad	0x3fdb01d76cee3770              # double 0.42198739660022166
	.quad	0x3fd795deb19e8512              # double 0.36852233262659795
	.quad	0x3fea0ad334ca1eaf              # double 0.81382141409354414
	.quad	0x3fb19a8dad591218              # double 0.068764548131248993
	.quad	0x3fe4f3e8522a1174              # double 0.65477386520119163
	.quad	0x3fe7d6ea2c8fbc69              # double 0.74498470977222297
	.quad	0x3fe5d88cec12ea98              # double 0.68268438442403845
	.quad	0x3f5a3bb7b72a6e00              # double 0.0016011518570512306
	.quad	0x3fae36f8a4ef43c0              # double 0.059013147481557393
	.quad	0x3fe069d4db6f46d8              # double 0.51291888101897154
	.quad	0x3fe6fc80aa8b589c              # double 0.71832307156980191
	.quad	0x3fef825bcb6cbb87              # double 0.98466291171449504
	.quad	0x3fe085e45bf0f80b              # double 0.51634424168855853
	.quad	0x3fe01f92b470194a              # double 0.50385413400435053
	.quad	0x3fe86b3177c424d1              # double 0.76308511154015879
	.quad	0x3fda3049c543a7d2              # double 0.40919727577295106
	.quad	0x3fe783d533c125b8              # double 0.73484287365243173
	.quad	0x3fe314adb4d01192              # double 0.59627423586839456
	.quad	0x3fc66eee3749b5e8              # double 0.17526033115011264
	.quad	0x3fd033f5c9c32602              # double 0.25317139342641337
	.quad	0x3fe14f1107509c0f              # double 0.54090167454421756
	.quad	0x3fcc3f5fbf892610              # double 0.2206840214951602
	.quad	0x3fe08e30c8ab2e24              # double 0.51735724633312374
	.quad	0x3fb8b326f3fcb2a8              # double 0.096483645026362752
	.quad	0x3fd8302d8e8b7b4a              # double 0.37794054909129626
	.quad	0x3feba7ef276f3624              # double 0.86424977972064143
	.quad	0x3fc6076d0d6a5000              # double 0.17210162310641408
	.quad	0x3fe2a50127e8c04d              # double 0.58264215273630671
	.quad	0x3feb39d393611b60              # double 0.85080889496826372
	.quad	0x3fee7299f97c7452              # double 0.951489436414372
	.quad	0x3fe006ddd358ce14              # double 0.50083819655123074
	.quad	0x3fe9486b3f8f1dc9              # double 0.79009020246388062
	.quad	0x3fcf439ff9c0cc20              # double 0.24425124831177047
	.quad	0x3fe90220784cf506              # double 0.78150962349141717
	.quad	0x3fc008aaf5f16ac4              # double 0.12526452073037408
	.quad	0x3fedaa4010c909d2              # double 0.92703250196819398
	.quad	0x3fd599f37916fa22              # double 0.33752142739459334
	.quad	0x3fcb508487f673a0              # double 0.21339470518878745
	.quad	0x3fd60aa8591d72e4              # double 0.34440048887863228
	.quad	0x3f967c7ae8480a60              # double 0.021959228923160601
	.quad	0x3fe7a2b72436ceb7              # double 0.73861271927895344
	.quad	0x3fd8617072139504              # double 0.38094721927912212
	.quad	0x3fefb24e64dbcfd4              # double 0.99051589678719631
	.quad	0x3fc916752444e168              # double 0.19599785109472667
	.quad	0x3fcf074a70851658              # double 0.24240999693045029
	.quad	0x3fdbea662de5af2c              # double 0.43618158800267071
	.quad	0x3fe2db4300ad463c              # double 0.58926534778783646
	.quad	0x3fe6eae3f2d515f3              # double 0.71617314747044103
	.quad	0x3fe54bda2b1ed622              # double 0.66550930425609445
	.quad	0x3fd667e6c05f58cc              # double 0.35009163652774755
	.quad	0x3fe6355a82fd1f38              # double 0.69401288589231225
	.quad	0x3fd4ce084ca051ae              # double 0.32507522089988583
	.quad	0x3fcc8256462a68b0              # double 0.22272756982858288
	.quad	0x3fef6f2825c97475              # double 0.98231894855747603
	.quad	0x3fd97a100d629f66              # double 0.39807511622574621
	.quad	0x3fd06c4e949d03ee              # double 0.25661053193112948
	.quad	0x3fe2bc99f23b2cab              # double 0.58552262602588223
	.quad	0x3fe3c501889fc6b1              # double 0.61779858288192291
	.quad	0x3fd8cade4653129e              # double 0.38738209598185758
	.quad	0x3fe17e50614d5187              # double 0.54666918758680161
	.quad	0x3fc8f4eeb40f29f0              # double 0.19497474472002763
	.quad	0x3fee78902d0b1133              # double 0.95221718595033733
	.quad	0x3fcd81df581f24c0              # double 0.2305258922845379
	.quad	0x3fdfef35d01da536              # double 0.49897523235138708
	.quad	0x3fd9ab42a5533936              # double 0.40107790131596077
	.quad	0x3fe9646d45fc92c4              # double 0.79350913686047208
	.quad	0x3fdb8f8ece2040b0              # double 0.43063707475176738
	.quad	0x3fdbeed2f468e626              # double 0.43645166271343994
	.quad	0x3fcaa020fbde49a8              # double 0.20801174448258775
	.quad	0x3fe22195d61dbc8e              # double 0.56659976787149602
	.quad	0x3fcd102fd860a780              # double 0.22705648484526009
	.quad	0x3faa7d7d0d98ba60              # double 0.051738651189556562
	.quad	0x3fdd805505622444              # double 0.46095777059287379
	.quad	0x3fef9a70cd790fc4              # double 0.98760261660981329
	.quad	0x3fe750b112675b74              # double 0.72860005945663753
	.quad	0x3fc2f8c5f9eb0540              # double 0.14821695998220186
	.quad	0x3fd5ff01573018a8              # double 0.34368928446236646
	.quad	0x3f8c6d3bb38e9b40              # double 0.013880220811029909
	.quad	0x3fd408f9d0785f88              # double 0.31304784162920685
	.quad	0x3fe4ea1a3f24cee3              # double 0.65357696850557223
	.quad	0x3fe6e2d69307f3ca              # double 0.71519020764355301
	.quad	0x3fea3ee7828715b0              # double 0.820178751885285
	.quad	0x3fe588211a4e56f4              # double 0.67286734712499063
	.quad	0x3fe2d5c2dd9dbb54              # double 0.58859389576341892
	.quad	0x3fd0cad7021cb09e              # double 0.26238036352402527
	.quad	0x3feb06d341fad3ad              # double 0.84458315741232115
	.quad	0x3fe533c8f6c08b78              # double 0.66257141298079514
	.quad	0x3fb4502d6546f778              # double 0.079348408914453716
	.quad	0x3fe3071ca6114750              # double 0.59461815295274256
	.quad	0x3fc4c15fe0174a08              # double 0.16215132181112346
	.quad	0x3fb2a592d27b5060              # double 0.072838951480038272
	.quad	0x3fed8c43437a817e              # double 0.92337191752817183
	.quad	0x3fd802d20b9b0836              # double 0.37517214902266305
	.quad	0x3fecf0413d8a917f              # double 0.9043279840448547
	.quad	0x3fdb04b705050f3c              # double 0.42216277589999485
	.quad	0x3fcd9b936424d5cc              # double 0.23131029500807043
	.quad	0x3feaef6ed3db3751              # double 0.84172765138803574
	.quad	0x3fd7d300d4848f50              # double 0.37225361589138561
	.quad	0x3fe8b1b3bb66c662              # double 0.77169214822624732
	.quad	0x3fc4914e32e851e4              # double 0.16068437085836174
	.quad	0x3fd84b0c3b5ec8ba              # double 0.37958055303455362
	.quad	0x3f644d16ba58de00              # double 0.0024781650452287973
	.quad	0x3fd2e1a9b4e039ae              # double 0.29502337134990853
	.quad	0x3fe0eca4718eb1ed              # double 0.52888700656109011
	.quad	0x3fd20e2332b53734              # double 0.28211288406315593
	.quad	0x3fb82f76cc8cd5a0              # double 0.094474244059560508
	.quad	0x3fd600916af8b114              # double 0.34378467031889781
	.quad	0x3fe841fe4b9dbb40              # double 0.7580558277967171
	.quad	0x3fe9dc3f5c2b8cec              # double 0.80813568117119194
	.quad	0x3fd75ea1fd7d0fa2              # double 0.36515092615831624
	.quad	0x3fd717c1eb434b4e              # double 0.36082504248513636
	.quad	0x3fde9aedda60c83a              # double 0.47820612264615969
	.quad	0x3fe0a2f85e1948fd              # double 0.51989382151285179
	.quad	0x3fec1652239be16d              # double 0.8777247138487333
	.quad	0x3fe1395d62bdbf48              # double 0.53825253758803004
	.quad	0x3fc117b397c82700              # double 0.13353581343863397
	.quad	0x3fd99a38f8f4fe34              # double 0.40003799736220746
	.quad	0x3fe69a6f3057977c              # double 0.70635184709384147
	.quad	0x3feca82502e94624              # double 0.89552546089743545
	.quad	0x3fd9872bef8125bc              # double 0.3988752211485822
	.quad	0x3fc8899010847db0              # double 0.19169808203240057
	.quad	0x3fe39c9c41c85723              # double 0.61286747787628248
	.quad	0x3fea7d625cfa2012              # double 0.82780569228725853
	.quad	0x3f6c2b4bd0fe6500              # double 0.0034386139668184379
	.quad	0x3fe2ec72bc38c1b5              # double 0.59136330377628232
	.quad	0x3fc9e97de0f2f740              # double 0.20243810161439946
	.quad	0x3feb1495d981429f              # double 0.84626286012106167
	.quad	0x3fd2f91093128b80              # double 0.29645170557540013
	.quad	0x3fe793e46a84e38f              # double 0.73680325321685014
	.quad	0x3fd2819bb4aa6816              # double 0.28916065829400972
	.quad	0x3fb51a451c6c6098              # double 0.082432097853941122
	.quad	0x3fcae66cdb7957b4              # double 0.21015701977256429
	.quad	0x3fc4eb197d5586b4              # double 0.16342466945484591
	.quad	0x3fe335dc1ad85dc0              # double 0.60032468074034995
	.quad	0x3fdac7c78a7d9f9c              # double 0.41844357037052204
	.quad	0x3fa2774d8292f3f0              # double 0.036066457928860873
	.quad	0x3fd6987df73c4e5a              # double 0.3530573763284558
	.quad	0x3fe4e0c9f60b1c33              # double 0.65244005256034254
	.quad	0x3fc08d80cd18b5a8              # double 0.12931833281019789
	.quad	0x3fe1350e056bdf70              # double 0.53772641238081853
	.quad	0x3fdc5210fc556298              # double 0.44250893251368373
	.quad	0x3fa078f3c05b83c0              # double 0.032172791701448045
	.quad	0x3fc750fbeb3dfea0              # double 0.18215893732484734
	.quad	0x3fccfc5de72f8370              # double 0.22645162380561201
	.quad	0x3fe740055fa01557              # double 0.72656506230183993
	.quad	0x3fe9578efab4bbbb              # double 0.79193829504026014
	.quad	0x3fe0f37c6a9f337f              # double 0.52972241234384387
	.quad	0x3fd9061523f28b2c              # double 0.39099625120631987
	.quad	0x3fee53d6734541a3              # double 0.94773409379745421
	.quad	0x3f9fd7154049ec80              # double 0.031093914078593077
	.quad	0x3fd21e1df2d72748              # double 0.28308819498908067
	.quad	0x3fca41a379a372a0              # double 0.20512813033464727
	.quad	0x3fed1e16cbdee822              # double 0.90992297953130596
	.quad	0x3fe44acef8a96a4f              # double 0.63413189474824516
	.quad	0x3fd4cafbcf61fd72              # double 0.32488913776611306
	.quad	0x3fe40fbd124ba404              # double 0.6269212109883715
	.quad	0x3fbc5e44cde44338              # double 0.11081342722560528
	.quad	0x3fd73e5bd99f6358              # double 0.36318107845504732
	.quad	0x3fd06dcfd201490e              # double 0.25670238025954084
	.quad	0x3fef68e3de79f581              # double 0.98155396892950375
	.quad	0x3fd19b4d7f556998              # double 0.27510392603803657
	.quad	0x3fe4ffec9b5d1405              # double 0.65624075264406712
	.quad	0x3fb314e657f23a98              # double 0.074537655326120222
	.quad	0x3febc422efd94509              # double 0.86769244046641447
	.quad	0x3fb95842e3d378d8              # double 0.099003010388943991
	.quad	0x3fd33d4cb8d55802              # double 0.3006164364827556
	.quad	0x3fd0a54471d1a0be              # double 0.26008711924670169
	.quad	0x3fd6f593069c7f3e              # double 0.35873866696964629
	.quad	0x3fe4571965b4b090              # double 0.63563222755830573
	.quad	0x3feeb68b962eec94              # double 0.95978335697818062
	.quad	0x3fd57bc17b1101ca              # double 0.33567845361906434
	.quad	0x3fa8be8ecda1b1f0              # double 0.048328840829387931
	.quad	0x3fd23227322a2e98              # double 0.28431110285667094
	.quad	0x3fb5061b471f4090              # double 0.082124428619183342
	.quad	0x3fa2c3d607b632a0              # double 0.036650360528345916
	.quad	0x3fc6f9a6e89932f8              # double 0.17949377400727662
	.quad	0x3fc339daea8b49b0              # double 0.15020309879635141
	.quad	0x3feb4de9c9466181              # double 0.85326089202412458
	.quad	0x3fef94e911127312              # double 0.9869275411070666
	.quad	0x3fd5b487aee12300              # double 0.33914367750234931
	.quad	0x3fe7b684416c9301              # double 0.74102986124179904
	.quad	0x3fe6c298a02a572e              # double 0.71125441820433877
	.quad	0x3fcdb442da6f4b30              # double 0.23206363359221305
	.quad	0x3fd83e09bf29c8c6              # double 0.37878650348933396
	.quad	0x3fedfdefe0d280fd              # double 0.93724817190744114
	.quad	0x3fe05ee06e2f7a06              # double 0.51158162613484204
	.quad	0x3fee1a04ed1a2e30              # double 0.94067617711102081
	.quad	0x3fec66ceddc01713              # double 0.88754981337180749
	.quad	0x3fe9641333170418              # double 0.79346618631837185
	.quad	0x3fdc2ec584266ac0              # double 0.44035470872192306
	.quad	0x3fbef4a99f03f748              # double 0.12092075473989639
	.quad	0x3fe1a09c179e852b              # double 0.55085568059090428
	.quad	0x3fe166492f8e7f1c              # double 0.54373606956866949
	.quad	0x3fbce63d00fdf288              # double 0.1128881575986701
	.quad	0x3fd176e53a297d80              # double 0.27288180045976418
	.quad	0x3fc86c6a51e41190              # double 0.19080857275561103
	.quad	0x3fb687fc91931198              # double 0.088012490788122455
	.quad	0x3fe0cd52722049e7              # double 0.52506372728595074
	.quad	0x3fdc12df70e88e20              # double 0.43865190530979881
	.quad	0x3fe74798f2931c4f              # double 0.72748992326604334
	.quad	0x3fde75741ea7da12              # double 0.47591879838674445
	.quad	0x3fe7f9014d3c97df              # double 0.74914612851420859
	.quad	0x3fed7a6e14cd0dfa              # double 0.92119506895727388
	.quad	0x3fc690613dc5b40c              # double 0.17628112331604517
	.quad	0x3fbb1c7cb5c005f8              # double 0.10590342938669284
	.quad	0x3fed919cfcb16c5b              # double 0.92402505258668144
	.quad	0x3fdb34a3c39da8da              # double 0.4250878725348578
	.quad	0x3fe27348b19b7975              # double 0.57657274903230749
	.quad	0x3fda903a3bad750e              # double 0.41505294635665357
	.quad	0x3feb27b39694d2ad              # double 0.84859637651842024
	.quad	0x3fe918b2071e387e              # double 0.78426457777256053
	.quad	0x3fdd00c7d4ccc588              # double 0.45317264348258179
	.quad	0x3fe92a16b09aab0a              # double 0.78638777249338543
	.quad	0x3fdf12ebba2c1248              # double 0.48552983456491861
	.quad	0x3fb5c7db234824e8              # double 0.085080810655330574
	.quad	0x3fe2ca01da989f1d              # double 0.58715908712926856
	.quad	0x3fd8cf16160d4ac4              # double 0.38763954308994308
	.quad	0x3fc12d0aef043b14              # double 0.13418709440926391
	.quad	0x3fc49c909c1e68ec              # double 0.16102798102367133
	.quad	0x3fd8cef581f437a0              # double 0.38763177576844932
	.quad	0x3fc3374389549b2c              # double 0.15012401776876894
	.quad	0x3fc599b6bdb03a3c              # double 0.16875347387436246
	.quad	0x3fe133e9490fdf5f              # double 0.53758682508394517
	.quad	0x3fe8d1b238b27806              # double 0.77559767793332024
	.quad	0x3fd1a9c7401e827e              # double 0.27598744641912976
	.quad	0x3fef9e6b90ec8a2e              # double 0.98808840089288252
	.quad	0x3fcb2ecf24c23a24              # double 0.21236600203379041
	.quad	0x3fd07567dbd521b2              # double 0.25716587512990963
	.quad	0x3feb5393c5a63548              # double 0.85395229915017357
	.quad	0x3fdb3fbe2f0955be              # double 0.42576555817990058
	.quad	0x3fc24bece7309e5c              # double 0.14294205940790305
	.quad	0x3fe2aa84edfca1d6              # double 0.58331533891492415
	.quad	0x3fed0513e49692fe              # double 0.9068698372471713
	.quad	0x3febb184aa875e6a              # double 0.86541970545199587
	.quad	0x3fe085b924cb4004              # double 0.51632363497083178
	.quad	0x3fe2007ce1693a0a              # double 0.56255954766840088
	.quad	0x3fe84c4561d4d9bf              # double 0.75931042773918722
	.quad	0x3fb11e565f219fb0              # double 0.06686916182081748
	.quad	0x3fd6f8105866eb72              # double 0.35889061577807191
	.quad	0x3fcef7c99889ada4              # double 0.24193687389502572
	.quad	0x3fd8717edcf446b2              # double 0.38192721917685468
	.quad	0x3fc63d7706976108              # double 0.17375076124040612
	.quad	0x3faa41f6bab9c010              # double 0.051284513753557914
	.quad	0x3fe88a10805e1c9c              # double 0.76685357162286349
	.quad	0x3feb2e921552d0b1              # double 0.84943489231820568
	.quad	0x3fe0adff2e92a2d7              # double 0.52123984428643666
	.quad	0x3fca88309a5c70a8              # double 0.20728118455088418
	.quad	0x3f80137bf2a16600              # double 0.0078496631069127076
	.quad	0x3fc238f44439dbd8              # double 0.14236310321186241
	.quad	0x3fe0bf579f3bdb49              # double 0.52335721111635636
	.quad	0x3fd902667e88f362              # double 0.39077150685243656
	.quad	0x3fe7d025df20fb47              # double 0.74415868358469417
	.quad	0x3fe88b4ea7e83ae3              # double 0.76700527948727559
	.quad	0x3fb689f69812af60              # double 0.088042652251429043
	.quad	0x3fe781ebc2e049c4              # double 0.73460949002974774
	.quad	0x3fe3965ce329e3e9              # double 0.61210483901879542
	.quad	0x3fdc59352f4b2012              # double 0.44294480913640755
	.quad	0x3fd80417a9d757c0              # double 0.37524978242924689
	.quad	0x3fdb3b9ec0a3fdc2              # double 0.42551392376477903
	.quad	0x3fe61b2242a874c0              # double 0.69081223506113787
	.quad	0x3fd31c50d522b534              # double 0.29860325635930285
	.quad	0x3fe57b54bf748ff2              # double 0.67130505937211482
	.quad	0x3fe067e58581fbb8              # double 0.51268268657428617
	.quad	0x3feb469f23f1cee7              # double 0.85237080593512082
	.quad	0x3fd5fc6a54a5eb34              # double 0.34353121057908997
	.quad	0x3fe7430cc4ae8783              # double 0.72693479933171579
	.quad	0x3fea88128341ec2a              # double 0.82911039005501164
	.quad	0x3fadfb2146963f00              # double 0.058556594721379085
	.quad	0x3facdc77547b1410              # double 0.056369523108095732
	.quad	0x3fdfc71df3fc19ec              # double 0.49652813746106861
	.quad	0x3fd5e9f2758a512e              # double 0.34240399817032852
	.quad	0x3feb923f4825dffc              # double 0.86160244075199399
	.quad	0x3fe91b51adb75710              # double 0.78458484581889998
	.quad	0x3fc522aae627b4f4              # double 0.16512047040979605
	.quad	0x3feb6a592b6852eb              # double 0.85673197248487776
	.quad	0x3fe3e3fdb71551a2              # double 0.62158094175770295
	.quad	0x3fd41d2e1f087b8c              # double 0.31428101568774802
	.quad	0x3fc6581f702fe66c              # double 0.17456429460417
	.quad	0x3fd54cbd87c3e4ba              # double 0.33280885942765404
	.quad	0x3fe522e4d9fa9fc0              # double 0.66050951551459747
	.quad	0x3fea664075cc0f57              # double 0.8249819088673388
	.quad	0x3fe327d53e09c088              # double 0.5986124240571522
	.quad	0x3fe54097d67374de              # double 0.6641349018570073
	.quad	0x3fdbb0ec407c5858              # double 0.43267351434167756
	.quad	0x3fd07295fb7787de              # double 0.25699376637760263
	.quad	0x3fdbd43c68970fa4              # double 0.43482885564685092
	.quad	0x3fd2cb4e99784972              # double 0.29365887629787502
	.quad	0x3fe552deba041b58              # double 0.66636596995599984
	.quad	0x3fe4fd67a825cf27              # double 0.65593321648927805
	.quad	0x3fec8721fe63f16f              # double 0.89149570165277037
	.quad	0x3fe831faf4a9af88              # double 0.75610111032209293
	.quad	0x3fd79873d5d7cfbc              # double 0.3686799610434226
	.quad	0x3fe23ad8377a2e84              # double 0.56968317828564397
	.quad	0x3fee7d94c65f024c              # double 0.95282973045693486
	.quad	0x3fe524622039aa59              # double 0.66069132131571984
	.quad	0x3fea706f6894394d              # double 0.82622499871812638
	.quad	0x3fe358db6f703530              # double 0.60459682240767698
	.quad	0x3fe2bcd2375fbc43              # double 0.58554945769527256
	.quad	0x3fe5793508cae27b              # double 0.67104579655922636
	.quad	0x3fedf5df4ccba449              # double 0.9362637042914993
	.quad	0x3fca4b4a576f2404              # double 0.20542268056149748
	.quad	0x3fe334abbaf6f37f              # double 0.60017954365285664
	.quad	0x3fe0512efec78b1f              # double 0.50991010438551487
	.quad	0x3fea507f978baba0              # double 0.82232646559474531
	.quad	0x3fdf7b26c0eaed6a              # double 0.49189156379335108
	.quad	0x3fe95f6d44cf7163              # double 0.79289878310696016
	.quad	0x3fee60a0110f38e3              # double 0.94929507572103622
	.quad	0x3fee70a522326323              # double 0.95125061682765411
	.quad	0x3fecf45959176c49              # double 0.90482776070292303
	.quad	0x3febfeefeecfff8a              # double 0.87487026827874215
	.quad	0x3feaf05471fe5a58              # double 0.84183714165085188
	.quad	0x3fbec8871f4ee028              # double 0.12024731172903158
	.quad	0x3fefc8988b341b37              # double 0.9932368010348459
	.quad	0x3fe6a4a8160edc07              # double 0.70759968097888837
	.quad	0x3fd565876f9886c4              # double 0.33432184122112241
	.quad	0x3fbfe84fc62aaf48              # double 0.1246385439687262
	.quad	0x3fd6c9cfd870b582              # double 0.35606762062783315
	.quad	0x3feeb2c27ea63e5e              # double 0.95932125793656176
	.quad	0x3fe70e79bf0495fa              # double 0.7205170374697325
	.quad	0x3fdbab9ecfc3dc0e              # double 0.43234987535055402
	.quad	0x3fc8ed0f9018d024              # double 0.19473452125532831
	.quad	0x3f763b15f939aa80              # double 0.0054274423924690618
	.quad	0x3fcc7404010c08ac              # double 0.22229051638720898
	.quad	0x3fe89a0d22d1ed7e              # double 0.76880509186541679
	.quad	0x3fe1ccecf768a42a              # double 0.55626533815405321
	.quad	0x3fe114a4799563bc              # double 0.53376983401096068
	.quad	0x3fbb3c61b1bd7690              # double 0.10639010037763286
	.quad	0x3fe48a7a14870994              # double 0.64190391549373027
	.quad	0x3fd9cb6c71eb6f22              # double 0.40304099202124821
	.quad	0x3fdaa2156f3fe0b4              # double 0.4161428057118528
	.quad	0x3febabb7e19a460c              # double 0.86471170485509807
	.quad	0x3fd7b346712a33f4              # double 0.37031708766227145
	.quad	0x3fe073fdb9d5fc0b              # double 0.51415907188482046
	.quad	0x3fdd026970813946              # double 0.45327220904154719
	.quad	0x3fec7e00432d0095              # double 0.89038098449965963
	.quad	0x3fe44cd73e8f404b              # double 0.63437998026530218
	.quad	0x3feeaabc38d244cc              # double 0.95834170434877696
	.quad	0x3fec8f77a57e5f1b              # double 0.89251310656524951
	.quad	0x3fed8c2ae3ddd1c4              # double 0.92336029534504193
	.quad	0x3fee01bb579be85f              # double 0.93771140204558978
	.quad	0x3fc4dd661006ebf0              # double 0.16300655157633015
	.quad	0x3fcf15fbfde0dd84              # double 0.24285840889363552
	.quad	0x3febe23452a02086              # double 0.87136284005920639
	.quad	0x3fe847e3d30e4e76              # double 0.758775627344632
	.quad	0x3fd05db49239eed6              # double 0.25571932105934303
	.quad	0x3fc910303abc5ac8              # double 0.19580653064686815
	.quad	0x3fdc6d65d45653c4              # double 0.44417711006218163
	.quad	0x3fdd486580fb7f52              # double 0.45754373165072082
	.quad	0x3f78a46e4bf16280              # double 0.0060161884749382333
	.quad	0x3fe759f40acd4703              # double 0.72973062619914264
	.quad	0x3fe8d67032ac8a1a              # double 0.776176547024366
	.quad	0x3fdebbc911962be8              # double 0.48021151273195395
	.quad	0x3fe5c3a81657b331              # double 0.68013386119637265
	.quad	0x3fe64af403ec34ea              # double 0.69664955869816692
	.quad	0x3fe344657eddd6ab              # double 0.60209917811035518
	.quad	0x3fdb695fb60ab060              # double 0.42830651071085946
	.quad	0x3feda4857a63940c              # double 0.92633317855927677
	.quad	0x3fe9d3dbb7effb2c              # double 0.80711160588530139
	.quad	0x3fdb802509be9c4c              # double 0.42969633056276701
	.quad	0x3fa84eb47acaa380              # double 0.047475471486285947
	.quad	0x3fd6ab586a239e20              # double 0.3542080914034802
	.quad	0x3fe66a8b79b91eff              # double 0.70050596021698641
	.quad	0x3fc55b1786385364              # double 0.1668424039241031
	.quad	0x3fd9a44639747e72              # double 0.4006515084347263
	.quad	0x3fd570107e540902              # double 0.33496486984962826
	.quad	0x3fe41c785185ef55              # double 0.62847534105774605
	.quad	0x3fd4288325f83320              # double 0.31497267444574284
	.quad	0x3fe0581b4b7c877d              # double 0.51075520270772723
	.quad	0x3fe7c6eb948772b4              # double 0.74303225526417416
	.quad	0x3fe6db0be0980485              # double 0.71423906198482767
	.quad	0x3fe5f2ab7705d16c              # double 0.68587277647615741
	.quad	0x3fe870ed26bfd4da              # double 0.76378495758276732
	.quad	0x3f7a0b68bf658c80              # double 0.0063585368828597
	.quad	0x3feffcfc6d516215              # double 0.99963208533432867
	.quad	0x3fd85f2c1f446842              # double 0.38080885938109443
	.quad	0x3fb29095ed3de460              # double 0.072518701954224607
	.quad	0x3fdab09fed923bbe              # double 0.41703031730952123
	.quad	0x3fc79c0de0084540              # double 0.18444989623143648
	.quad	0x3fec4edba4876857              # double 0.88462621817167075
	.quad	0x3fd1ceb152eed4c2              # double 0.27824051951331452
	.quad	0x3fe532866293b8c9              # double 0.66241759541824152
	.quad	0x3fe0eecd6694a9d5              # double 0.52915067706390551
	.quad	0x3fa983e7dde7ebc0              # double 0.049834485853316846
	.quad	0x3fd4b76445b05e0a              # double 0.32369334035453845
	.quad	0x3fee57df0f546dd4              # double 0.94822648042775847
	.quad	0x3f35d7abb7aec000              # double 3.3328955003764094E-4
	.quad	0x3fce81845056f4fc              # double 0.2383275406154225
	.quad	0x3fd0948fdd9caf90              # double 0.2590675033741201
	.quad	0x3fd3ca7778e0d57a              # double 0.30923258595006298
	.quad	0x3fc18ba748d91220              # double 0.13707438523319215
	.quad	0x3fd844ec6fb353e6              # double 0.37920676143886423
	.quad	0x3fe14eea31881f0c              # double 0.54088315653004448
	.quad	0x3fde8146eb1763c0              # double 0.47664044340268319
	.quad	0x3fe3b975d09dbf6b              # double 0.61638918633796658
	.quad	0x3fdf0525d7852ff4              # double 0.48468919798756294
	.quad	0x3fe2d35594fbd7e5              # double 0.5882976445998308
	.quad	0x3fd9d66f578d68a8              # double 0.40371306943928653
	.quad	0x3fe6588869308799              # double 0.69830723328435618
	.quad	0x3fed82b5decdcf2e              # double 0.92220586315531761
	.quad	0x3fd7b425c65c5616              # double 0.37037033435021394
	.quad	0x3fcde52017d18270              # double 0.23355485117919583
	.quad	0x3fe035174c877329              # double 0.50648083636369734
	.quad	0x3fbfc9122d520b90              # double 0.12416185003716707
	.quad	0x3fd418224d129b76              # double 0.31397302176122055
	.quad	0x3f7d468d3fc62d00              # double 0.007147361521116169
	.quad	0x3fdcedaedb4f4148              # double 0.45200702111198554
	.quad	0x3fe5b387f76cbfa3              # double 0.67816541981845935
	.quad	0x3fef570758b84f90              # double 0.97937362030141806
	.quad	0x3fce6ae3e8293b14              # double 0.23763703189839502
	.quad	0x3fefa515d0916828              # double 0.98890200363098745
	.quad	0x3fd8a1e31fc2a9ce              # double 0.38488081075288683
	.quad	0x3fcfc47ea7cea54c              # double 0.2481840438243047
	.quad	0x3fe446eeb97a7ccb              # double 0.63365875459921861
	.quad	0x3fe446828589e898              # double 0.63360715944078816
	.quad	0x3febb36160193f2f              # double 0.86564701813947476
	.quad	0x3febb229fd091720              # double 0.86549853726384995
	.quad	0x3fd6f28f5cd12a3c              # double 0.35855468811192615
	.quad	0x3fe1ccb0ab2a6c8f              # double 0.55623658591083991
	.quad	0x3fc7ca8965def4fc              # double 0.18586842989126484
	.quad	0x3fc9deb8786c85c4              # double 0.20210939292978314
	.quad	0x3fe5cb9ad198aa70              # double 0.68110409676348915
	.quad	0x3fd1f063386bcaa4              # double 0.28029709348553866
	.quad	0x3fdf424a4a206e84              # double 0.48842103232320988
	.quad	0x3fe3174e79115f29              # double 0.59659503599229879
	.quad	0x3feeca34fce3810f              # double 0.96218346969911461
	.quad	0x3febcd4117af4030              # double 0.86880545259373854
	.quad	0x3fb5e0aef9133020              # double 0.085459647950472561
	.quad	0x3fe0cf0a698f75c2              # double 0.52527351968063152
	.quad	0x3fe115edcb4083fd              # double 0.53392686555537205
	.quad	0x3fe16b4b8ab0403d              # double 0.54434754455179013
	.quad	0x3fe7a5654b3ff12b              # double 0.73893990227910444
	.quad	0x3fd8f2a15d310324              # double 0.38980897999504038
	.quad	0x3fec5e3ae9e4ee06              # double 0.88650270159217892
	.quad	0x3fc2435cbfb3d6ec              # double 0.14268073425744576
	.quad	0x3fd0d4238b8e1f46              # double 0.26294792774614384
	.quad	0x3fe7543fde4d888e              # double 0.72903436106231978
	.quad	0x3fb5ba8459cad1b8              # double 0.084877273485125637
	.quad	0x3fdaa49fcbcb515c              # double 0.41629786397722568
	.quad	0x3fd391c92c25a688              # double 0.30577306090581446
	.quad	0x3fc8c4dfc0aa5df0              # double 0.19350811870093265
	.quad	0x3fdedf237b60e0c2              # double 0.4823692993991352
	.quad	0x3fd00460c1b98ca6              # double 0.25026720922887546
	.quad	0x3fdba767ccad6604              # double 0.43209261882802275
	.quad	0x3fd1b05a162a8d04              # double 0.27638866581601484
	.quad	0x3fdd6a15788e332c              # double 0.45959984562869027
	.quad	0x3fd7baaae747ab44              # double 0.37076828561719233
	.quad	0x3fef3a268da461d2              # double 0.97584846176601503
	.quad	0x3fe82ecbd3af8607              # double 0.75571242661334359
	.quad	0x3fe9abe58a81c25d              # double 0.80223347713588178
	.quad	0x3fc83eda45f2a3f0              # double 0.18941811004086118
	.quad	0x3fd91c151bddd536              # double 0.39233901711789387
	.quad	0x3febbebf4892ec18              # double 0.86703457045166754
	.quad	0x3fc16e6032af2584              # double 0.13618090128720095
	.quad	0x3fe3d16b5ebb24aa              # double 0.61931389333871789
	.quad	0x3fe7187758363b21              # double 0.72173659542918156
	.quad	0x3fe9ab5100d769ce              # double 0.80216264881465249
	.quad	0x3fccb2674e2bb9c8              # double 0.22419444386419074
	.quad	0x3fe1e24a03f29384              # double 0.55887318392761687
	.quad	0x3fe3ff57d57e3733              # double 0.62491981218201997
	.quad	0x3fc19ce78d582610              # double 0.13760084535196926
	.quad	0x3fca0a3aca6d66d8              # double 0.20343718418262458
	.quad	0x3fd682e4b68e91a4              # double 0.3517390997679064
	.quad	0x3fcb6c455086c598              # double 0.21424166137653056
	.quad	0x3feaeff054b2a796              # double 0.84178940336754482
	.quad	0x3feea7db42fe4278              # double 0.95799029430970872
	.quad	0x3fec98b426942b1e              # double 0.89364059004705942
	.quad	0x3fd205990f8b4b84              # double 0.28159166830044335
	.quad	0x3fd86184d2b135c8              # double 0.3809520776311186
	.quad	0x3fcfd1be2bd04134              # double 0.24858834399538809
	.quad	0x3fea61d6ea7f9ce2              # double 0.82444330025182588
	.quad	0x3fdc178327476b66              # double 0.43893507800901543
	.quad	0x3fdd5bf396fb18bc              # double 0.45873727554534205
	.quad	0x3fa0613f3ec2a270              # double 0.031991936122101161
	.quad	0x3fa7e21bc97e3eb0              # double 0.046646946283656177
	.quad	0x3febcb70fbc38cd8              # double 0.86858414814596596
	.quad	0x3fd7b4e81db19012              # double 0.37041666888967584
	.quad	0x3fc55d3219e54330              # double 0.16690660728866069
	.quad	0x3fcdb9a89e40c410              # double 0.23222835280606136
	.quad	0x3fef100a26a1c014              # double 0.97070796532898606
	.quad	0x3fe8b8750f5893b0              # double 0.77251675603166881
	.quad	0x3fe260bebb8ab15b              # double 0.5743096983838244
	.quad	0x3fd9460bb7479882              # double 0.39490025423436503
	.quad	0x3fd8e87e21e3b736              # double 0.38919022855303653
	.quad	0x3fb8228b387f43d0              # double 0.094277097028011569
	.quad	0x3fc759de0499361c              # double 0.18243003105674027
	.quad	0x3fd3b83cd53379f2              # double 0.30811997242372435
	.quad	0x3fc8f279ac67496c              # double 0.19489975851190466
	.quad	0x3fda0bdc26c32d00              # double 0.40697387490645553
	.quad	0x3fed863cabb8701f              # double 0.92263635195877558
	.quad	0x3fe49f3b5af482e3              # double 0.6444374824969511
	.quad	0x3fa33f1f1ce7d370              # double 0.037590954092514006
	.quad	0x3fe350c2214efa3e              # double 0.60360819345061834
	.quad	0x3fdcf5a59093bc0e              # double 0.4524930869947078
	.quad	0x3fe5d7c48cd303e5              # double 0.68258883957616645
	.quad	0x3feef26dd3c5b5f0              # double 0.96709338533190525
	.quad	0x3fedb2577a82691a              # double 0.92802022864933353
	.quad	0x3fb1414b860b4d98              # double 0.067402572847007014
	.quad	0x3fef12c074ca4641              # double 0.97103903589795248
	.quad	0x3fe8b13b4d952710              # double 0.77163472321373838
	.quad	0x3fe267cd1c1cbb5b              # double 0.57517104616804759
	.quad	0x3fe2fbf102e346a0              # double 0.59325457157156691
	.quad	0x3fe39420be93d934              # double 0.61183202001737991
	.quad	0x3feac6d7dadc1a8c              # double 0.83677284952212138
	.quad	0x3fe0431a3bcaace6              # double 0.50819122007433459
	.quad	0x3fe44d5d779826aa              # double 0.63444398268003011
	.quad	0x3fde6ae7a3dbc5c8              # double 0.47527495385938012
	.quad	0x3fec927a34b1f87d              # double 0.8928805379107555
	.quad	0x3fdb4b53f7a1d6a0              # double 0.42647265608625595
	.quad	0x3fce1c8d74b5ae70              # double 0.23524635504451252
	.quad	0x3fb31baa65532d68              # double 0.074640893685843701
	.quad	0x3fe7736947b4eec7              # double 0.73283828740337575
	.quad	0x3fd67b58ca846b32              # double 0.35127849366260755
	.quad	0x3fcec19762d00fd0              # double 0.24028293919411547
	.quad	0x3fe6cc856716d33e              # double 0.71246595511056632
	.quad	0x3fc018d88dfdc558              # double 0.12575823720139101
	.quad	0x3fe07b5b000c0057              # double 0.51505804070621763
	.quad	0x3fd207ae848d1098              # double 0.28171885437428434
	.quad	0x3fc30fb47d982c98              # double 0.1489167798284583
	.quad	0x3fed1a660ccd84cf              # double 0.90947248936222447
	.quad	0x3fcf766b8241eac8              # double 0.24580139026860182
	.quad	0x3fdecaedc62b86e6              # double 0.48113579132596695
	.quad	0x3fe73591bb0f2833              # double 0.72528921637536425
	.quad	0x3febc9ae01c1bfa1              # double 0.86836910575037873
	.quad	0x3fe077c60b52c598              # double 0.51462080203616534
	.quad	0x3feb94c7246eda96              # double 0.86191136470627572
	.quad	0x3fd038118acf4a08              # double 0.25342215114247368
	.quad	0x3fd20208aeda9a52              # double 0.2813741405065332
	.quad	0x3fdca9b83695b6ce              # double 0.44785886126088037
	.quad	0x3fd71eea6fb3d8f0              # double 0.36126194866609662
	.quad	0x3fdf81284172266e              # double 0.49225813285065712
	.quad	0x3fe1d35d20cdd9e5              # double 0.55705124289562191
	.quad	0x3f868fe8c7ea9f40              # double 0.011016672707526376
	.quad	0x3fe1bb2501c15da8              # double 0.55409479468192036
	.quad	0x3fd3ea7b00749c96              # double 0.31118655247196025
	.quad	0x3fe316fa9a71b60a              # double 0.59655504383926083
	.quad	0x3fe9b188383a9678              # double 0.8029213999004261
	.quad	0x3fe4f65148799e3e              # double 0.65506805568015358
	.quad	0x3fdd5bf5663b50ba              # double 0.45873770698132044
	.quad	0x3fce8c65cb221650              # double 0.23865959566699013
	.quad	0x3fe097a6d78ad39d              # double 0.51851217363456537
	.quad	0x3fe373fe272f3941              # double 0.60790927556244168
	.quad	0x3fe43b6cdbbffdda              # double 0.63225405616679642
	.quad	0x3fb1ce534294aae8              # double 0.069554523234426235
	.quad	0x3fde5133f8f6cf64              # double 0.47370623886967267
	.quad	0x3fe9cd6185c609d3              # double 0.80632091643956938
	.quad	0x3fdc97ef3fc42868              # double 0.44677335002109553
	.quad	0x3fe86f1c107cc84c              # double 0.76356318683816359
	.quad	0x3fef653eb2162bce              # double 0.98110899717846123
	.quad	0x3fe7ac425d74e068              # double 0.73977773907882938
	.quad	0x3fdfcef721bd41bc              # double 0.49700716299869518
	.quad	0x3fb6eca1fac90f60              # double 0.089548228957082809
	.quad	0x3fea01f7b55626de              # double 0.81274018685618521
	.quad	0x3fe20560a13472c9              # double 0.56315642819716871
	.quad	0x3fee3f9f88930b09              # double 0.945266501185274
	.quad	0x3feb7097207d32ae              # double 0.85749393792646855
	.quad	0x3fed62e4ea11ff39              # double 0.91832204548698038
	.quad	0x3fd76b67fe366562              # double 0.36593055558622301
	.quad	0x3fcaea8d27a2f5d4              # double 0.21028294024828986
	.quad	0x3fe3636b5a032c8f              # double 0.60588615017458547
	.quad	0x3fe5600100b49990              # double 0.66796922815119508
	.quad	0x3fed353efa882523              # double 0.91274975711818163
	.quad	0x3fe8ba8ec3896ffe              # double 0.77277315321725815
	.quad	0x3fc1d9a7b3bfe974              # double 0.13945480610693617
	.quad	0x3febd4275e0b719a              # double 0.86964767807107823
	.quad	0x3feef26458a225da              # double 0.96708886443337438
	.quad	0x3fee3edf74fe3328              # double 0.94517491197766378
	.quad	0x3fe75fd8d71c8c94              # double 0.73045007719010124
	.quad	0x3fea1d498668af3b              # double 0.81607509853117877
	.quad	0x3fe3f721b81b8187              # double 0.62391744574056041
	.quad	0x3fcb15169ba51068              # double 0.21158106422274447
	.quad	0x3fbb6725ce7f4180              # double 0.10704265872414531
	.quad	0x3fe7f32ab7d738e1              # double 0.74843345552815432
	.quad	0x3fe52dbeee1ccb94              # double 0.66183420664161696
	.quad	0x3fe2721c8dbdd362              # double 0.57642963107955958
	.quad	0x3febe9a491594e5a              # double 0.87227085483977906
	.quad	0x3fd76e075ea31b2c              # double 0.36609062425525241
	.quad	0x3feb10ae243846e0              # double 0.84578616213022073
	.quad	0x3fc22d19e1eed218              # double 0.1420013764560657
	.quad	0x3fec58bcdea513b8              # double 0.88583224759405876
	.quad	0x3fe627b7d2a992f4              # double 0.69234839577674601
	.quad	0x3fbadf48bfd19a98              # double 0.10496954615664789
	.quad	0x3fd5a970240e94ac              # double 0.33846667786776652
	.quad	0x3fe821c9bbfe9f4c              # double 0.75412451474856245
	.quad	0x3f9db524d1ca1960              # double 0.029011321358234254
	.quad	0x3fe997c56acf53c5              # double 0.79977675305655593
	.quad	0x3fe25f7a439335be              # double 0.57415497968911899
	.quad	0x3fec5f80ac9078af              # double 0.8866580362698836
	.quad	0x3fe874e94b940b1a              # double 0.76427140008340477
	.quad	0x3fe22121e3ea8f0f              # double 0.56654448046580963
	.quad	0x3fd3d2f2d3a49298              # double 0.30975027721641757
	.quad	0x3fedf8dbffec0f1b              # double 0.93662834152971486
	.quad	0x3feefb9a63c36044              # double 0.96821326718328082
	.quad	0x3feb93ac0e15119e              # double 0.86177637815903885
	.quad	0x3fdb7b86c6193d1e              # double 0.42941445680203738
	.quad	0x3fed77df0d80c408              # double 0.92088272702506035
	.quad	0x3fe6119644c692bd              # double 0.68964684899091078
	.quad	0x3fe96d52ff41e892              # double 0.794595240163533
	.quad	0x3fd038b9a0b0f07a              # double 0.25346222584244738
	.quad	0x3fd85dee77022e5c              # double 0.38073312398839732
	.quad	0x3fee8b09be78be3b              # double 0.95447241975302377
	.quad	0x3fe1da1b8fc26496              # double 0.55787447050092243
	.quad	0x3fec2499bea0894d              # double 0.87946784240583897
	.quad	0x3fe36622d65e58be              # double 0.60621778363090306
	.quad	0x3fd1db88b1b58430              # double 0.27902428964995618
	.quad	0x3fe65388444be278              # double 0.69769681300301922
	.quad	0x3feb60f8efe57ea4              # double 0.85558745245721867
	.quad	0x3fcfcbdae9a52138              # double 0.2484086647839463
	.quad	0x3fa60c149dab2530              # double 0.043060917135856136
	.quad	0x3fbea667b4dfb8e8              # double 0.11972664037577696
	.quad	0x3fd35ddfc80fa53a              # double 0.30260462319582226
	.quad	0x3fbda5cf85538240              # double 0.11581131939920741
	.quad	0x3fbc0dfc4adbc4c8              # double 0.10958840205764198
	.quad	0x3fe3080ea83505be              # double 0.59473355153038887
	.quad	0x3fb0a8abadb9c910              # double 0.065073709405428781
	.quad	0x3fd8dd17fd22167c              # double 0.38849448890719152
	.quad	0x3fe758becacef761              # double 0.72958316432025694
	.quad	0x3fe3c8119c3462ae              # double 0.61817245968548717
	.quad	0x3fd461b8a0e5db5e              # double 0.31846442902263117
	.quad	0x3fc073bf1418bb28              # double 0.12853229981689052
	.quad	0x3fe41f2ff5becf0d              # double 0.62880704877031379
	.quad	0x3fd17205577739d0              # double 0.27258428136420054
	.quad	0x3fc1bf8b72293bfc              # double 0.13865798067351409
	.quad	0x3fe6508313869438              # double 0.6973281270371734
	.quad	0x3fe6281050d69d00              # double 0.69239059246766033
	.quad	0x3fcdf89145cde5d8              # double 0.23414817722713965
	.quad	0x3fdfa4ae7475d1b6              # double 0.49442635891980602
	.quad	0x3fdece9ca41a2ffe              # double 0.48136058831801154
	.quad	0x3fe5d23661225a8f              # double 0.68191069575807883
	.quad	0x3fe23237618fbb4b              # double 0.56862992339106577
	.quad	0x3febd2cfbc9b98a7              # double 0.86948382222614817
	.quad	0x3fe7e270dd62d10f              # double 0.74639170875028238
	.quad	0x3fe8efa9213f8993              # double 0.77925545209682168
	.quad	0x3fd3cb5579e374f2              # double 0.30928551581548824
	.quad	0x3fe6bea615c02a6c              # double 0.71077255485699942
	.quad	0x3fe8caf1d6636a96              # double 0.77477352020953805
	.quad	0x3fe7fa8e7273efbf              # double 0.74933550218656098
	.quad	0x3fed54d0a3ea23c8              # double 0.91660339369365662
	.quad	0x3fb9ffe6abd5f0e0              # double 0.10156099028785404
	.quad	0x3fe12398eda07bf4              # double 0.53559538280012342
	.quad	0x3fedbb616638884d              # double 0.92912359204297845
	.quad	0x3fb35c3cd655b250              # double 0.075626184776134808
	.quad	0x3fe5300f0555d63f              # double 0.66211653749514443
	.quad	0x3fb465cf716da0c8              # double 0.079678502266349871
	.quad	0x3fd2c2e4f61be42c              # double 0.29314540895535646
	.quad	0x3fb4e54315b8c770              # double 0.081623261264011537
	.quad	0x3fec19391e1a336b              # double 0.87807899360050834
	.quad	0x3fe9689bc281bf8a              # double 0.79401958455672283
	.quad	0x3fe826b612d518c0              # double 0.75472549131588806
	.quad	0x3fe906c53e473d20              # double 0.78207647479749553
	.quad	0x3fc48e63f59d8034              # double 0.16059541218692319
	.quad	0x3fe8650f69eefb62              # double 0.76233645143643636
	.quad	0x3fe49a8020d8f6eb              # double 0.64385992446451945
	.quad	0x3fd2bf51478600fa              # double 0.29292709336006306
	.quad	0x3fedf70c7a70cdb9              # double 0.93640731729686089
	.quad	0x3feaef5952297f69              # double 0.84171739623341779
	.quad	0x3fb20e1f312bf880              # double 0.070527982239555698
	.quad	0x3fe733613e6ff420              # double 0.7250219554404147
	.quad	0x3fea88c51f4b1e89              # double 0.82919555770873032
	.quad	0x3fe6278d089ec463              # double 0.69232799228315078
	.quad	0x3fd3fb24b7c439ea              # double 0.31220357843349567
	.quad	0x3fdad8a9815460f2              # double 0.41947400693744819
	.quad	0x3fea8283be4f4f27              # double 0.82843196077235326
	.quad	0x3feebbb55a1e8d88              # double 0.96041362382349948
	.quad	0x3fd4e8fff0393c6e              # double 0.32672117671331236
	.quad	0x3fd383e628657264              # double 0.30492547936390779
	.quad	0x3fec6040a1d79318              # double 0.88674956903250557
	.quad	0x3fec3ae66053533c              # double 0.88218993009159119
	.quad	0x3fc53699efc72bc4              # double 0.1657287998953888
	.quad	0x3fb1a5a3f58fb298              # double 0.068933722926610819
	.quad	0x3fe651660789e1a9              # double 0.6974363467443726
	.quad	0x3fd1255fac1a6798              # double 0.26790611082980709
	.quad	0x3fc35cf8b0c10810              # double 0.1512747633988174
	.quad	0x3f75388544d94a00              # double 0.0051808553522101342
	.quad	0x3fe6a6eb0c086a5c              # double 0.7078757510201501
	.quad	0x3feeaf62498879fd              # double 0.95890917169509715
	.quad	0x3fe350aa457de96c              # double 0.60359681675553878
	.quad	0x3fcc88f9e5542e50              # double 0.22293018052765712
	.quad	0x3fe5caa7e4decb18              # double 0.68098826123454881
	.quad	0x3fec8d7d387c0944              # double 0.89227162391788583
	.quad	0x3fecd39a076ce4af              # double 0.90083028269068233
	.quad	0x3fd86f4bb08d3368              # double 0.38179294816364129
	.quad	0x3fd71656eceb3502              # double 0.36073849808310865
	.quad	0x3fe0c024bdf93f9f              # double 0.52345501999115018
	.quad	0x3feadcb9f2cdf6f1              # double 0.8394441358829835
	.quad	0x3fd1cd756485edae              # double 0.27816519562449116
	.quad	0x3f7d374283e12080              # double 0.0071327780006599228
	.quad	0x3fa16774a24cc2f0              # double 0.033992428600304936
	.quad	0x3fea51f8ef0785d1              # double 0.82250639615466004
	.quad	0x3febc43614cbbffc              # double 0.86770156919192187
	.quad	0x3fef3757bd58d921              # double 0.97550570470665232
	.quad	0x3fcd8d7bb8413754              # double 0.23088022705854405
	.quad	0x3f9ba882f2cdb3e0              # double 0.027010007924605506
	.quad	0x3fe72e49c7a1f255              # double 0.72440041533225019
	.quad	0x3fd5ee1d6445d50a              # double 0.34265837471259941
	.quad	0x3fb7822e244230f8              # double 0.091830142833888462
	.quad	0x3febe389bbde20cf              # double 0.8715256375590118
	.quad	0x3fe6c6300b89df4f              # double 0.7116928315508434
	.quad	0x3fefe258b944709a              # double 0.99638019738223993
	.quad	0x3fd927198291a548              # double 0.39301145316001795
	.quad	0x3fc884405d14ac6c              # double 0.19153599305113589
	.quad	0x3fb36abbc9de9b50              # double 0.075847374710616977
	.quad	0x3fdc4171a37c8362              # double 0.44149437871424457
	.quad	0x3fb7955964170138              # double 0.092122637687684583
	.quad	0x3fe4025c5ecf2019              # double 0.62528818623923421
	.quad	0x3fedfac55247c95e              # double 0.93686166830438444
	.quad	0x3fd0b3ad56bb3f32              # double 0.26096662015787608
	.quad	0x3fd06151a802c920              # double 0.25593987853348388
	.quad	0x3fe1c2af6c551cc0              # double 0.55501528891263519
	.quad	0x3fe007c4ee8858a6              # double 0.50094839657210311
	.quad	0x3feb005873fe9ff7              # double 0.84379217772675374
	.quad	0x3fc6b1cc1af96b10              # double 0.17730094258407592
	.quad	0x3fd43867b7134574              # double 0.3159426963657872
	.quad	0x3fbd9ad111671968              # double 0.11564356493827221
	.quad	0x3fee8564b4ac042b              # double 0.95378337180603034
	.quad	0x3fb5cc32c09f8050              # double 0.085147068049537866
	.quad	0x3fd3834361d937b8              # double 0.30488667064207275
	.quad	0x3fc4dd76afef7ef8              # double 0.16300853338815791
	.quad	0x3fc88c755b87b5b8              # double 0.19178645104640935
	.quad	0x3fd483ac3684a958              # double 0.32053666423839422
	.quad	0x3fe07325be14824b              # double 0.51405608296415417
	.quad	0x3feb8aacc6276ccf              # double 0.86067808820680536
	.quad	0x3fb454e806e41648              # double 0.079420568163265703
	.quad	0x3fd24a7efd332e02              # double 0.2857968781142689
	.quad	0x3fe88ffde433cf82              # double 0.76757711954859098
	.quad	0x3feb5b239141b766              # double 0.85487535829973349
	.quad	0x3fea597d0f3a44ca              # double 0.82342389082091327
	.quad	0x3fe01bb71e360784              # double 0.50338321590992097
	.quad	0x3fc2bea7c5df1f54              # double 0.14644333993623582
	.quad	0x3fc64370d402cda0              # double 0.17393312790009663
	.quad	0x3fd1fdf03d66cb28              # double 0.28112417217487229
	.quad	0x3fc80a00a941b4c0              # double 0.18780525459752617
	.quad	0x3fe2c45b4f6ae9fe              # double 0.58646932135826524
	.quad	0x3fe842d318c9fb40              # double 0.75815729943847288
	.quad	0x3fc576782fd44b84              # double 0.16767790160573892
	.quad	0x3fdb2e2cec2eda62              # double 0.42469332756755851
	.quad	0x3fd4a378d49c1e06              # double 0.32247753870657936
	.quad	0x3fd0e9d62d0ff680              # double 0.26427225494976625
	.quad	0x3fefff149f612839              # double 0.99988776329815387
	.quad	0x3fe52fa09eab2a04              # double 0.66206389417612899
	.quad	0x3fe0f9ad336180c4              # double 0.53047809634519938
	.quad	0x3fd5dcb484484b86              # double 0.34159577291682586
	.quad	0x3feb53d0a8b2155f              # double 0.85398133228651918
	.quad	0x3fea798edbd9ea21              # double 0.82733862819378967
	.quad	0x3f85c314ba352c80              # double 0.010625993664368005
	.quad	0x3fe4ce86c2b167b9              # double 0.65021074319815064
	.quad	0x3fd91870c8c04f18              # double 0.39211673359499022
	.quad	0x3fe389ccb42d7c5e              # double 0.61057124319985312
	.quad	0x3fef1da6c8b18af0              # double 0.9723695678515849
	.quad	0x3fe54b5de09db49e              # double 0.66545003767318511
	.quad	0x3fe8b7d27ac57186              # double 0.77243923167002104
	.quad	0x3fbf254ec9df3048              # double 0.1216630213595532
	.quad	0x3fe75f46ba1e6f90              # double 0.7303804049620215
	.quad	0x3fe9326eba4dc5b4              # double 0.78740631473026789
	.quad	0x3fd3d39cdd88fe9a              # double 0.30979081758776206
	.quad	0x3fe36dd6e8fa6ae7              # double 0.60715814117005784
	.quad	0x3feb700223597038              # double 0.85742289451764631
	.quad	0x3fa741356e343f40              # double 0.045419377997062416
	.quad	0x3fe3fd1de9e43f75              # double 0.62464805299712955
	.quad	0x3fbb60117a519cf8              # double 0.10693463550852644
	.quad	0x3fe9a3ea82978fe8              # double 0.80125928407914859
	.quad	0x3fde7ccbd69a2b64              # double 0.47636695821045394
	.quad	0x3fe94420615571c2              # double 0.78956622133733156
	.quad	0x3fd68bfcef24e2d4              # double 0.35229419092096959
	.quad	0x3fedcb599cc77b0f              # double 0.93107300396863646
	.quad	0x3fc995ebbda5ad1c              # double 0.199887721635016
	.quad	0x3fe598709370065f              # double 0.67485836788564402
	.quad	0x3fd1ab4fc5c7f3d0              # double 0.27608103098446879
	.quad	0x3fe57d56175b026a              # double 0.67154984056112466
	.quad	0x3fd3d83069bbfbfa              # double 0.31007013631455005
	.quad	0x3fe424d00d2e34a1              # double 0.62949373792948304
	.quad	0x3fe7524e95ab0ed7              # double 0.7287972377020776
	.quad	0x3fe3420ec9737efb              # double 0.60181369157723397
	.quad	0x3fc8298f2ef056c4              # double 0.18876828948912394
	.quad	0x3fc12e61d3db8644              # double 0.13422797054868074
	.quad	0x3fd813a57c409540              # double 0.37619912275325262
	.quad	0x3fcba3e394675508              # double 0.21593899484893364
	.quad	0x3fe58dcca8309742              # double 0.67355950212070348
	.quad	0x3fea8dbf7cc342c2              # double 0.82980322234842441
	.quad	0x3fed4418632b525e              # double 0.91456241005887384
	.quad	0x3f760a8727fdbd00              # double 0.0053811339893024002
	.quad	0x3fdf63c6a24d06d0              # double 0.49046483850189038
	.quad	0x3fd240d3a0b5ebfa              # double 0.28520670599362996
	.quad	0x3fefb51d5b405d41              # double 0.99085872480910819
	.quad	0x3fecbb677ad64da0              # double 0.89787649146676429
	.quad	0x3fb265c0f5711c80              # double 0.071865138933491224
	.quad	0x3fd82a21dfec1ad4              # double 0.37757155291948874
	.quad	0x3fcaaafea43083a8              # double 0.20834334389749398
	.quad	0x3fd5dc8702ba76e8              # double 0.34158492342417768
	.quad	0x3fc58025ab8cba88              # double 0.16797324062777741
	.quad	0x3fc819280839d7e0              # double 0.18826771165521361
	.quad	0x3fe8964ccd0e51e3              # double 0.7683471684454698
	.quad	0x3f9484fdae4eb5e0              # double 0.020038570178874227
	.quad	0x3fde4593d495fb1c              # double 0.47299667129839107
	.quad	0x3fd0401c3a32a670              # double 0.25391297992118833
	.quad	0x3fe0f9b39025f250              # double 0.53048113016081722
	.quad	0x3fc4a8c17eed5a94              # double 0.16140001962294959
	.quad	0x3fd33f78db34ed5e              # double 0.30074902922543412
	.quad	0x3fc8384ba30f8fac              # double 0.18921800100281183
	.quad	0x3fe8d6f0701b9446              # double 0.7762376966098905
	.quad	0x3fefd64a888201b8              # double 0.99490858709037066
	.quad	0x3fcd910204d3494c              # double 0.23098778949367682
	.quad	0x3fe50f0c9289d045              # double 0.65808704968231579
	.quad	0x3fccfa08f8d58f24              # double 0.22638046407802748
	.quad	0x3fc5eccd6fffc7e4              # double 0.17128913849552341
	.quad	0x3fe9826496bd3df6              # double 0.79716710511450972
	.quad	0x3fe8831a881e8184              # double 0.76600386224531336
	.quad	0x3fe4089c6030fb7b              # double 0.62605112826700748
	.quad	0x3fd415224cc4b072              # double 0.31378991600900641
	.quad	0x3fc5e8c035de4128              # double 0.17116549139292059
	.quad	0x3fee5a589d5c5371              # double 0.94852858290196995
	.quad	0x3fce52ab36747ed0              # double 0.23689785155237653
	.quad	0x3fd7ee3feda1f940              # double 0.37391660887069023
	.quad	0x3fe4745155a5f04e              # double 0.63919893959201501
	.quad	0x3fdd0c813494355e              # double 0.45388822683965724
	.quad	0x3fe645ed4e08d75b              # double 0.69603600731964421
	.quad	0x3fee68b03f9d25b4              # double 0.95027935432988508
	.quad	0x3feeba1637ff0360              # double 0.96021567284342879
	.quad	0x3fda1a479e80e780              # double 0.4078539893995341
	.quad	0x3fb91c4679bc5990              # double 0.098087696762695353
	.quad	0x3fed83e13f71ed0f              # double 0.92234861747366093
	.quad	0x3fe2af81729215ee              # double 0.58392403008536831
	.quad	0x3fec47fc2c690e8f              # double 0.88378723787214308
	.quad	0x3fe84b9b2c5ee0f8              # double 0.75922926584374206
	.quad	0x3fdfcfa25e5233ee              # double 0.49704798899693869
	.quad	0x3fda88b9d2773db0              # double 0.41459508469867057
	.quad	0x3fe7c6e17a83d51c              # double 0.74302743843751129
	.quad	0x3febc2a5d89445c1              # double 0.86751072216628
	.quad	0x3feea9d14fe8e5f7              # double 0.9582296906220894
	.quad	0x3fda6a55995cf7c2              # double 0.41274013497229245
	.quad	0x3fe9f5c78cef5a27              # double 0.81125237966881947
	.quad	0x3fd870babbc9ece8              # double 0.38188045824763472
	.quad	0x3fe5c6d6879e3b31              # double 0.68052221763523424
	.quad	0x3fee5f9c9777075f              # double 0.94917134840964568
	.quad	0x3fe8180c14fe51a2              # double 0.7529354486492148
	.quad	0x3fe6699fe0198fb0              # double 0.70039361733915051
	.quad	0x3fe5ecae1f92b7c9              # double 0.68514162222504027
	.quad	0x3feeda84ac6a348f              # double 0.96417459177759379
	.quad	0x3fd3d18888ebb662              # double 0.3096639001003948
	.quad	0x3fc13bbd03c76910              # double 0.13463556942480936
	.quad	0x3fb4680ac374b790              # double 0.079712555617076796
	.quad	0x3fb90138d8e501b8              # double 0.097674897148869344
	.quad	0x3fcd9aa1851cf478              # double 0.23128146171248765
	.quad	0x3fe3bea9e4002e4e              # double 0.61702436953914641
	.quad	0x3f8d308eccf7e6c0              # double 0.014252772932184299
	.quad	0x3fc0faffc2e37820              # double 0.13265988365213932
	.quad	0x3fe15a20613a7569              # double 0.54225176801598451
	.quad	0x3fea2a0a40117b39              # double 0.81763184083306506
	.quad	0x3fc9e3ee5fb667ac              # double 0.20226840661490308
	.quad	0x3fe4b00f1fcba0ff              # double 0.64649158678096785
	.quad	0x3fdf30b33d45ef22              # double 0.48734742149075505
	.quad	0x3fc2a164e4cc6430              # double 0.1455503575496393
	.quad	0x3fefba9d8e20aed8              # double 0.99153020629224908
	.quad	0x3fda41946206bf96              # double 0.41025266240011982
	.quad	0x3fef11c7d6067955              # double 0.97092048456014856
	.quad	0x3fd820008a9bed32              # double 0.37695325408977276
	.quad	0x3fe952fbe98f65f5              # double 0.79137988679138849
	.quad	0x3fde35d2cd6b5524              # double 0.47203512249446278
	.quad	0x3fe547ff31239147              # double 0.66503867719124166
	.quad	0x3fe78d3e2987494a              # double 0.73599155531909699
	.quad	0x3fd547603f7aa97e              # double 0.33248144339690799
	.quad	0x3fe6cb77c2f60258              # double 0.71233738020243731
	.quad	0x3fe9444a9a3b59d3              # double 0.78958635447889447
	.quad	0x3fe4769b838a930f              # double 0.63947845164929784
	.quad	0x3fa7b30f605e9250              # double 0.046287994874806615
	.quad	0x3fe8c357ae1891ca              # double 0.7738455200492862
	.quad	0x3fd071870cc03ad6              # double 0.25692917103962765
	.quad	0x3fe9b72702dbc55f              # double 0.80360746916100456
	.quad	0x3fe2724e89879da0              # double 0.57645346509245954
	.quad	0x3fdc2eae1c57e89c              # double 0.4403491284171055
	.quad	0x3fe89ffee59db3b9              # double 0.76953072401885614
	.quad	0x3fe5b85f838a2c02              # double 0.67875648204187677
	.quad	0x3fec12293fc1e147              # double 0.87721693470579332
	.quad	0x3fedaa7730f1df0e              # double 0.92705878791363872
	.quad	0x3fdc1b91244ed782              # double 0.43918255372715731
	.quad	0x3fed4f8c59ca90b9              # double 0.91596047913892342
	.quad	0x3fe5b6369e00f089              # double 0.67849284038631297
	.quad	0x3fdf2dbb92a57024              # double 0.487166302880498
	.quad	0x3fde6284dae12240              # double 0.47476312041229463
	.quad	0x3fe37c15522596c1              # double 0.60889688534071962
	.quad	0x3fd1addd03cf43e4              # double 0.27623677608522557
	.quad	0x3fccc12f0d391420              # double 0.22464550157215601
	.quad	0x3fb0a63b98b99cf8              # double 0.065036511217488768
	.quad	0x3fe027edf6b6942e              # double 0.50487421213313666
	.quad	0x3fdfcd2ecd86e908              # double 0.4968983656978172
	.quad	0x3feb6883f44e20d2              # double 0.85650823322159853
	.quad	0x3fcd6125c60e8f68              # double 0.22952720804925808
	.quad	0x3fdcf47bcc5cde6c              # double 0.45242209393788957
	.quad	0x3fef9c659d135e3b              # double 0.98784142187918833
	.quad	0x3fca061b623cdca0              # double 0.20331136986508103
	.quad	0x3fea4358fbbfd1e8              # double 0.82072114152702813
	.quad	0x3fe23cf4a7b5e772              # double 0.56994087940186788
	.quad	0x3fe81675d993751e              # double 0.75274174208940159
	.quad	0x3f97c2a42d250e40              # double 0.023203435187737265
	.quad	0x3fe1c8a173de9d8f              # double 0.55574104910640354
	.quad	0x3fe637255a520f07              # double 0.69423167839747257
	.quad	0x3fe0c5afd3b7b8ae              # double 0.52413169242006119
	.quad	0x3fdeb8965f9b7f64              # double 0.48001632057820687
	.quad	0x3fb591cff79eca08              # double 0.08425617022911791
	.quad	0x3fda49f76854e860              # double 0.41076455296172831
	.quad	0x3fe5f0093d763c18              # double 0.6855512810160489
	.quad	0x3fa5655f1771c0a0              # double 0.041789027797564104
	.quad	0x3fef911fb54c180a              # double 0.98646531495683232
	.quad	0x3fe40d515d730880              # double 0.62662571193529004
	.quad	0x3fe76f1bf0a1894b              # double 0.73231312750093858
	.quad	0x3fd615db35783168              # double 0.34508400174742926
	.quad	0x3fbae6f37eb2df18              # double 0.10508653491239917
	.quad	0x3fe32fe79068c433              # double 0.59959772305422232
	.quad	0x3fd3ca0876dc4d86              # double 0.30920611960865363
	.quad	0x3fc3de592af67058              # double 0.15522303197656373
	.quad	0x3f9abd6ef48e4520              # double 0.026113256145952168
	.quad	0x3fd44d73f737dabc              # double 0.31722735540771985
	.quad	0x3fe3e38f8e2d3d3d              # double 0.62152841347589283
	.quad	0x3fa9a7eef90d5950              # double 0.050109355832932523
	.quad	0x3fcdca6c8f7fab78              # double 0.23273999220631558
	.quad	0x3fdc3ad6bbaad178              # double 0.44109123541718231
	.quad	0x3fee763abdb2705f              # double 0.95193230676842322
	.quad	0x3feffd2accb638bd              # double 0.99965419752859185
	.quad	0x3fcdd17a99c26c14              # double 0.23295528896127904
	.quad	0x3fbbba2ecacc9a20              # double 0.10830967379715917
	.quad	0x3fea110c92c20f4c              # double 0.81458119071656076
	.quad	0x3fee73be763ecb95              # double 0.95162890524658172
	.quad	0x3fd9c601b8965d16              # double 0.40271037126645248
	.quad	0x3fecebdc98d4d625              # double 0.90379171228295674
	.quad	0x3fc224acb2707f94              # double 0.14174421990264519
	.quad	0x3fac2d51fabeb840              # double 0.0550332659325794
	.quad	0x3fe0bff1122e78fd              # double 0.52343038130837238
	.quad	0x3febead38a2200fd              # double 0.8724153230578221
	.quad	0x3feff9d6d3de9a1e              # double 0.99924794560212482
	.quad	0x3fb4a692347380d8              # double 0.080666673474755313
	.quad	0x3fe577df08b1b864              # double 0.67088271806802569
	.quad	0x3fee09dd6c2cc321              # double 0.93870421531582704
	.quad	0x3feb10b9daaa8101              # double 0.84579174717148942
	.quad	0x3fe47578f8ad8afe              # double 0.63933991022017245
	.quad	0x3fc5697ab3eb1c64              # double 0.16728147301748486
	.quad	0x3fdb674e9e38b2f0              # double 0.42818036509815638
	.quad	0x3fe7436a84379d94              # double 0.72697950195008554
	.quad	0x3fe27478d20a5ff6              # double 0.57671776793995266
	.quad	0x3fec5ac51c15d3ed              # double 0.8860803173580486
	.quad	0x3fed4ec734ed872b              # double 0.91586647355527384
	.quad	0x3fe99734360d91fd              # double 0.79970751340130131
	.quad	0x3fe24a26b10f1acc              # double 0.57155165273510411
	.quad	0x3f9d666f512a96e0              # double 0.028711070374490499
	.quad	0x3fe51e15c50fb11f              # double 0.65992249001059011
	.quad	0x3fe9c5226a4005e0              # double 0.80531426193209298
	.quad	0x3fe4ef8dd96a995c              # double 0.65424244369641427
	.quad	0x3fcfb77e395f69bc              # double 0.24778726388360706
	.quad	0x3feee73e3340f15a              # double 0.96572790155873212
	.quad	0x3fed8ef58a1008c0              # double 0.92370106664045437
	.quad	0x3fded86c618294be              # double 0.4819594337698837
	.quad	0x3fe4579ae9c2932b              # double 0.63569398552190159
	.quad	0x3fe5deb9195ad1e4              # double 0.68343787147619794
	.quad	0x3fe1105d95df69c9              # double 0.53324775001538527
	.quad	0x3fe27237929defba              # double 0.57644251476403174
	.quad	0x3fe6e28b70962ceb              # double 0.71515438069891724
	.quad	0x3fd2ebe5680e91ec              # double 0.2956479564839174
	.quad	0x3fcf61c74ea082c8              # double 0.24517146434029358
	.quad	0x3fbc19ad7c90fcb8              # double 0.10976681033297353
	.quad	0x3fcdc9eb76c877a4              # double 0.23272460269884931
	.quad	0x3fea62958937305f              # double 0.82453419494551017
	.quad	0x3fe5b6a6a726e081              # double 0.67854626318786881
	.quad	0x3fe6d4973ff33456              # double 0.71345102777707825
	.quad	0x3fec3363f56fd3c8              # double 0.88127324997787415
	.quad	0x3fc4a2c550e24384              # double 0.16121736955076582
	.quad	0x3fc586590f3553e0              # double 0.16816247217744174
	.quad	0x3f92c8f36ca1f040              # double 0.01834469175854303
	.quad	0x3fe7b72cd19921f1              # double 0.74111023842948331
	.quad	0x3feaade6d101d9c3              # double 0.83372822591518803
	.quad	0x3f9f52e87f370380              # double 0.030589707150059819
	.quad	0x3febdd80f62c6a76              # double 0.87078903275262465
	.quad	0x3fef948bbcc961ea              # double 0.98688303825752866
	.quad	0x3fe3deecade2e795              # double 0.62096246683289513
	.quad	0x3fd798a01584ea4e              # double 0.36869051076397319
	.quad	0x3fb03aa8fabdcfa0              # double 0.06339508172624031
	.quad	0x3fe96073aeab906d              # double 0.79302391162174291
	.quad	0x3fb7ec4003429f10              # double 0.093448639675099309
	.quad	0x3fdd8e560f224b04              # double 0.46181251027989867
	.quad	0x3feffaefeac1a0de              # double 0.99938197947360741
	.quad	0x3fe2df4f31dfd6e2              # double 0.58975944272125624
	.quad	0x3fdcedf4d315beee              # double 0.45202370275272485
	.quad	0x3fbfc2465f2554e0              # double 0.12405814955612327
	.quad	0x3fcfa1870a3ee270              # double 0.24711692810321351
	.quad	0x3fe1b6695b0c42cf              # double 0.55351703436653021
	.quad	0x3fdd97ce568521da              # double 0.46239050339911858
	.quad	0x3fbcc641a069fcf0              # double 0.11240015188558394
	.quad	0x3fe587bcb1e945b1              # double 0.67281946895871247
	.quad	0x3fe766d626a1b1fd              # double 0.73130328698385905
	.quad	0x3fdb216c6b92e7f4              # double 0.42391500954874961
	.quad	0x3fce6af5998b7e10              # double 0.23763914105710215
	.quad	0x3fd899a4e4330f66              # double 0.38437769208052541
	.quad	0x3fe19db9945d08b5              # double 0.55050353028516119
	.quad	0x3fc7aa6c75e09fbc              # double 0.18488841777548071
	.quad	0x3fe5edadf6c86cdb              # double 0.68526361655986123
	.quad	0x3fd27d8d0c3938f2              # double 0.28891302293494825
	.quad	0x3fe74513c5db1b4d              # double 0.72718228000381091
	.quad	0x3fe589962e20a070              # double 0.67304524430529789
	.quad	0x3fbd2e35282b4b00              # double 0.11398632269564857
	.quad	0x3fe4ae2c24137f7e              # double 0.64626128240705305
	.quad	0x3fe043a8b89484c1              # double 0.5082591633874004
	.quad	0x3feacda1b2c56315              # double 0.837601517831987
	.quad	0x3fceedc908526ac8              # double 0.24163163095803086
	.quad	0x3fea3d56d825c392              # double 0.81998769966422658
	.quad	0x3fdeaa4a8dec27aa              # double 0.4791437517129632
	.quad	0x3fdf5618eaab831e              # double 0.48962996403683856
	.quad	0x3feb737e09264a7f              # double 0.85784818446184363
	.quad	0x3fd4fac225c9d4e8              # double 0.32780507746004028
	.quad	0x3fe90d0eb7e61bdb              # double 0.7828439323210391
	.quad	0x3feb3e6e55191f43              # double 0.85137096997002748
	.quad	0x3fd2cd198d03abe6              # double 0.29376829882556732
	.quad	0x3fde63688ece0604              # double 0.47481740899829128
	.quad	0x3fb4491de94cbe60              # double 0.079240674455598903
	.quad	0x3feb95a523480e11              # double 0.86201722041045248
	.quad	0x3fe9f3c20d92ecc1              # double 0.81100561762959711
	.quad	0x3fe602fed2740260              # double 0.68786564926274352
	.quad	0x3fde7e622410d812              # double 0.47646382829714284
	.quad	0x3fc8dba6899cc4c0              # double 0.19420320243219713
	.quad	0x3f92040f95086cc0              # double 0.017593615981337463
	.quad	0x3fd8f699ec122054              # double 0.39005134633817318
	.quad	0x3fe932c3dbcf97f6              # double 0.78744690830057951
	.quad	0x3fd23f168d5805fe              # double 0.28510059168920054
	.quad	0x3fd2690f01a50a6e              # double 0.28766226921667382
	.quad	0x3fea67b066d1cb50              # double 0.8251573570436026
	.quad	0x3fd348617f8bfe34              # double 0.30129277663943133
	.quad	0x3fbdf5ade30aee20              # double 0.11703001778635569
	.quad	0x3fddb4cfde084cca              # double 0.46416088755468066
	.quad	0x3fd3cb586c41a146              # double 0.30928621837530945
	.quad	0x3fe35158d7bc06e1              # double 0.6036800588192045
	.quad	0x3fe797bdc367253d              # double 0.7372731033766865
	.quad	0x3fe115f5068d0680              # double 0.53393031386822543
	.quad	0x3fd2b17b0a8d1b12              # double 0.29208255796804494
	.quad	0x3fe9089d33541c7d              # double 0.78230152154073063
	.quad	0x3fec5bde6987dbd5              # double 0.88621445285286404
	.quad	0x3fe41edaea424737              # double 0.62876649621669045
	.quad	0x3fe1377ec4d651bd              # double 0.53802431530726091
	.quad	0x3fedf86077fc2db1              # double 0.93656943735680021
	.quad	0x3fda279d0016afc0              # double 0.40866780289320204
	.quad	0x3fe21f1c6258e592              # double 0.56629771431396336
	.quad	0x3fdb940e2d4be3a4              # double 0.43091158317070666
	.quad	0x3fb888cb975f3518              # double 0.09583733029940722
	.quad	0x3fe6c1c067399030              # double 0.71115131531815301
	.quad	0x3fe2b102a6f96093              # double 0.58410771000036943
	.quad	0x3fe8eed32ee664af              # double 0.77915343437338958
	.quad	0x3fec32259697fb20              # double 0.8811214391024329
	.quad	0x3feaebd8500ca746              # double 0.8412896693673495
	.quad	0x3fe14750a8b8e134              # double 0.53995545342971818
	.quad	0x3f6b14217e862a00              # double 0.0033054975685378185
	.quad	0x3fd99d950e552d4a              # double 0.40024305724792397
	.quad	0x3fe7d2d3a99b2105              # double 0.74448569418112298
	.quad	0x3fe2e05dd2a82da9              # double 0.58988848823485285
	.quad	0x3fb71306aef82dd8              # double 0.090134065358305704
	.quad	0x3fe139d683cbf2c1              # double 0.53831029645478889
	.quad	0x3fce9ce3252e44c4              # double 0.23916282000985778
	.quad	0x3fd8e5de23f8185c              # double 0.38903001320466557
	.quad	0x3fe77a09dda7e5f1              # double 0.73364728252562206
	.quad	0x3fe3e93d731df360              # double 0.62222168430126246
	.quad	0x3fb9228ee4d3cb70              # double 0.098183565965695995
	.quad	0x3fd1a15958f72e48              # double 0.27547296226541507
	.quad	0x3fe0e4c313f18fe9              # double 0.5279250516437034
	.quad	0x3fe396479415c6fc              # double 0.61209467814316509
	.quad	0x3fc04c5d25e1a780              # double 0.12733044004135863
	.quad	0x3fd07e1a0a86a6d0              # double 0.2576966383736421
	.quad	0x3fed4044e0aea8d2              # double 0.91409534343008603
	.quad	0x3fbc5c9827c7d230              # double 0.11078787776188714
	.quad	0x3fdececc3c2a5c58              # double 0.48137193561109859
	.quad	0x3fd73f1f929a5f4c              # double 0.36322774235440103
	.quad	0x3fecefd42c240886              # double 0.90427597638360235
	.quad	0x3fda0e47b5d7f4f4              # double 0.40712158926164865
	.quad	0x3feffbf7465ccbb2              # double 0.99950755827591409
	.quad	0x3fe471695b08073c              # double 0.63884418277323318
	.quad	0x3fdef48a9ac73054              # double 0.48367562403723707
	.quad	0x3fc19fdba34d9c40              # double 0.13769097780024886
	.quad	0x3fa4763eeab34420              # double 0.039964643621381635
	.quad	0x3fb6d3f8126689a0              # double 0.089171890728300784
	.quad	0x3fd57cd631ac0e7c              # double 0.33574442721167208
	.quad	0x3fc67e55be302170              # double 0.17573043619655548
	.quad	0x3fd68c2d207ec69a              # double 0.35230568097458959
	.quad	0x3fe1e04330447817              # double 0.55862578799474505
	.quad	0x3fefecfe6cacb774              # double 0.99767991281053847
	.quad	0x3fe61be3db05451f              # double 0.69090454843004412
	.quad	0x3fe7c640e1caac37              # double 0.74295086002292166
	.quad	0x3fe6686ae6faf9f2              # double 0.70024628747324713
	.quad	0x3fcfd18375ef0d50              # double 0.24858134516225983
	.quad	0x3fefab2863aba7cd              # double 0.98964328257465583
	.quad	0x3fc909e27075eab8              # double 0.19561415187111719
	.quad	0x3f73a07f498a4700              # double 0.0047917339476428733
	.quad	0x3fb3cde0ba1e0f48              # double 0.077360196532081038
	.quad	0x3fb0423526ca2968              # double 0.063510248155727589
	.quad	0x3fd5174e01b7cd74              # double 0.32954740684291228
	.quad	0x3fed13f955de2e7e              # double 0.90868822833131424
	.quad	0x3fde84914000e5dc              # double 0.476841270926881
	.quad	0x3fa1c3fa3792a7b0              # double 0.03469831398372436
	.quad	0x3fb2bdd8c9ad2248              # double 0.073209332692507734
	.quad	0x3fdeed36a59ca9e2              # double 0.48322836087268517
	.quad	0x3fe4f9c93f348874              # double 0.65549146981017126
	.quad	0x3fee43e5219a18ef              # double 0.94578796923522457
	.quad	0x3fbc70afd00c22b8              # double 0.11109446362764686
	.quad	0x3fe3b174ca3f28a1              # double 0.61541213513671178
	.quad	0x3fe18ccfe2f4aa98              # double 0.548438971779734
	.quad	0x3fe4be3a2619c70f              # double 0.64822108689824798
	.quad	0x3fbaca5410fd63c0              # double 0.10464978613653297
	.quad	0x3fc1cb6e0dc7dfd8              # double 0.13902068779839172
	.quad	0x3fdb69458a5e6044              # double 0.42830027115406133
	.quad	0x3fea2b6d85f28fae              # double 0.81780124818441435
	.quad	0x3f45908b9e883800              # double 6.5810029360746647E-4
	.quad	0x3fe87d0c536215f4              # double 0.76526466642161361
	.quad	0x3fec31c6e7f15ecd              # double 0.88107629109705388
	.quad	0x3fc1b11e5be3f8a4              # double 0.13821773039666596
	.quad	0x3fe37c8df6b7295d              # double 0.60895441233268921
	.quad	0x3fab7a7b8c756af0              # double 0.053668843170006642
	.quad	0x3fe870a6cd0adb3d              # double 0.76375141188950801
	.quad	0x3fe6959bc1323e3d              # double 0.70576274617810209
	.quad	0x3fe2f72ae76bb878              # double 0.59267182540294439
	.quad	0x3fed872631bf379e              # double 0.92274770466041267
	.quad	0x3fd922bece1afbd4              # double 0.39274568679314581
	.quad	0x3fdd5cb62ea5e868              # double 0.45878367000080411
	.quad	0x3fd59d82e017d10a              # double 0.33773872264943405
	.quad	0x3fe62af771a7f684              # double 0.69274494360406935
	.quad	0x3fe12bf8f63a9b1a              # double 0.53661773768985488
	.quad	0x3fe6978e858aec87              # double 0.70600057680657435
	.quad	0x3fe29df002599586              # double 0.58177948435756899
	.quad	0x3fe60259af2d52da              # double 0.68778690542475407
	.quad	0x3fd0312884790674              # double 0.25300038277428105
	.quad	0x3fd50eec6302fc44              # double 0.32903585118396372
	.quad	0x3fe8041fa648c630              # double 0.75050337293050084
	.quad	0x3fe65f61d4c94e9a              # double 0.69914332923731881
	.quad	0x3fca8a0c075fbb68              # double 0.20733785972648922
	.quad	0x3fcdc0f4f21b869c              # double 0.23245107480675109
	.quad	0x3fe9854de9fdd46e              # double 0.7975225038668563
	.quad	0x3fd5071721deb744              # double 0.32855776126494995
	.quad	0x3fb561694dd414c0              # double 0.083517629147610073
	.quad	0x3fed3d0efe0f3e1a              # double 0.91370343800548715
	.quad	0x3fc4527b52871a70              # double 0.15876714257884172
	.quad	0x3feefe51defeba51              # double 0.96854489854542624
	.quad	0x3fe0361c99aaed40              # double 0.50660543454379336
	.quad	0x3fcbff8d33acb654              # double 0.21873631499458901
	.quad	0x3fee8aea0d91ff34              # double 0.95445730829667363
	.quad	0x3fe0202a16c681f2              # double 0.50392631958317069
	.quad	0x3fd52d7670bc3a84              # double 0.33089982041648391
	.quad	0x3f939e8e78fda320              # double 0.01915953267544801
	.quad	0x3feb8e82349168bd              # double 0.86114607112110486
	.quad	0x3fd4a3e7a2d95a88              # double 0.32250395682550748
	.quad	0x3fe8ba47bb762f6c              # double 0.77273928273778613
	.quad	0x3fcaea29760edbe4              # double 0.21027105583718175
	.quad	0x3fef1ac404af37da              # double 0.97201729693346839
	.quad	0x3fa03034580712f0              # double 0.031617770906029352
	.quad	0x3fed9a3e7d57ef9f              # double 0.925078625499271
	.quad	0x3fd1f119ae949060              # double 0.28034059571132808
	.quad	0x3fe146fec59bb4c1              # double 0.53991640658718876
	.quad	0x3fdd4db4aefcd20a              # double 0.45786778534537176
	.quad	0x3feaa39e4b5bae49              # double 0.83247294157394791
	.quad	0x3fe8f7758c7d3526              # double 0.78020741881633593
	.quad	0x3fd748bec1dedc8a              # double 0.36381501133605154
	.quad	0x3fe1d3d7b293f6e5              # double 0.55710968855393317
	.quad	0x3fecf5c7959cf7e9              # double 0.90500239583320508
	.quad	0x3fe5a35f9f2258fa              # double 0.67619305687801945
	.quad	0x3fdcb4990634330a              # double 0.44852281194543819
	.quad	0x3fe050f466c2a576              # double 0.50988216467264524
	.quad	0x3fd9281b28cd054e              # double 0.39307288155039977
	.quad	0x3feb93cbb8a0e6a7              # double 0.86179147777803145
	.quad	0x3feece335fc5f2a0              # double 0.962670981461617
	.quad	0x3fdc76a052713e42              # double 0.44474037219058371
	.quad	0x3fd759f3f4a57790              # double 0.36486529246564547
	.quad	0x3fe4efd6e9a2c6a0              # double 0.65427728302002564
	.quad	0x3feaa5c945413628              # double 0.83273757482829058
	.quad	0x3fcaa6275a450b54              # double 0.2081956091661491
	.quad	0x3fd8c2a31251ebba              # double 0.38687969960272606
	.quad	0x3fdf26a158543a56              # double 0.48673280359154114
	.quad	0x3fdda51ed32a155a              # double 0.46320315000078482
	.quad	0x3fdd4ff6d5c274ca              # double 0.45800562739334494
	.quad	0x3fd819ea4b331622              # double 0.37658173888880431
	.quad	0x3fefa78b24408309              # double 0.98920209007710113
	.quad	0x3fdbed87e1cfb33e              # double 0.4363727288426168
	.quad	0x3fe45846b77db0b7              # double 0.63577590787965377
	.quad	0x3fc3742560dbaa98              # double 0.15198199490926778
	.quad	0x3fd12e1e71f60b88              # double 0.26843987587943063
	.quad	0x3fed7b402b9e2454              # double 0.92129524726000022
	.quad	0x3feaa33bf9f9aee9              # double 0.83242605994516083
	.quad	0x3fe6889c788355df              # double 0.70417617356968865
	.quad	0x3feca5377a49dad5              # double 0.89516805538627386
	.quad	0x3fe2e41475722b0d              # double 0.59034178675332927
	.quad	0x3fd3634acbcf4940              # double 0.30293531325618872
	.quad	0x3fe5e222fe197203              # double 0.68385457638538616
	.quad	0x3fcabe0c5c4da17c              # double 0.20892481333727264
	.quad	0x3fe39f4ecac139e8              # double 0.6131967506460656
	.quad	0x3f95715f66641780              # double 0.020940294861268693
	.quad	0x3fd91a720bd2fe70              # double 0.39223910479265722
	.quad	0x3fedf7dcdfbb4d38              # double 0.93650668809497172
	.quad	0x3feb7ffe2025dc31              # double 0.85937410620579702
	.quad	0x3fea73de43ad7531              # double 0.82664406984591754
	.quad	0x3fe20cf7975865b6              # double 0.56408290443066877
	.quad	0x3fdce16ae69b9a96              # double 0.45125839729591044
	.quad	0x3fe73543bd07f8a2              # double 0.72525202675003109
	.quad	0x3fc5c4389ff62264              # double 0.17005069552057528
	.quad	0x3fe47a8cf3f5931f              # double 0.63995978973671075
	.quad	0x3fe9c2244eac5434              # double 0.80494895330287485
	.quad	0x3fc0e05d354ca224              # double 0.13184704878337172
	.quad	0x3fe0d9056daefa6c              # double 0.52649184629974632
	.quad	0x3fe6cb0feaf35d99              # double 0.71228786362455587
	.quad	0x3fe68d15259aaa04              # double 0.70472199768602239
	.quad	0x3fecbbdf28ed10ce              # double 0.89793355935446484
	.quad	0x3fe04ee08f0f8a04              # double 0.50962856236975584
	.quad	0x3fcd893cd8fac0ec              # double 0.23075066179945425
	.quad	0x3fe0fb6168cb685b              # double 0.53068609683692658
	.quad	0x3fd0384a72556776              # double 0.25343571820632549
	.quad	0x3fefa2e706efb13e              # double 0.98863555292840721
	.quad	0x3fe9a8b9cc875566              # double 0.80184640833855947
	.quad	0x3fe359368fbcef47              # double 0.60464027475198001
	.quad	0x3fe8377e930d3fb8              # double 0.75677422257466898
	.quad	0x3fbecc18931c3bb0              # double 0.12030175773200713
	.quad	0x3fe1f786de541596              # double 0.5614656774857163
	.quad	0x3fddc89e356f59c6              # double 0.46536975115068591
	.quad	0x3fd47673d5436736              # double 0.31972976519101637
	.quad	0x3fe7bf3d003bba69              # double 0.74209451718872999
	.quad	0x3fef06c1e78905f1              # double 0.96957488271453773
	.quad	0x3fde9db3ca367c00              # double 0.47837538478228225
	.quad	0x3fec575487ab09bc              # double 0.88566042421034962
	.quad	0x3fc936e4c7dff96c              # double 0.19698772201077064
	.quad	0x3fe638d2f2e569dd              # double 0.69443652573255188
	.quad	0x3fd026df06f0e286              # double 0.2523725097449091
	.quad	0x3fde044ae05f9954              # double 0.46901199256389714
	.quad	0x3fdb45200d816aac              # double 0.42609406775378988
	.quad	0x3fea2606db8bade9              # double 0.81714194183353783
	.quad	0x3fd21efb64708d66              # double 0.28314099129257497
	.quad	0x3fdf541fa6c24c0a              # double 0.489509499407348
	.quad	0x3fe61ac84aa3d99a              # double 0.69076933458454737
	.quad	0x3fa2689826abc6c0              # double 0.035954241486150007
	.quad	0x3fe993726d1d7d82              # double 0.79924889861642634
	.quad	0x3feab534fe352a0b              # double 0.83461999559341515
	.quad	0x3fde30441f71d108              # double 0.47169592924844084
	.quad	0x3feca6de71df1dd9              # double 0.89536974182640983
	.quad	0x3fe6abff83ca5844              # double 0.70849586239160844
	.quad	0x3facb6a286e25f90              # double 0.056080893483510086
	.quad	0x3feff2ed98a71334              # double 0.99840431036918753
	.quad	0x3fedd57d33711904              # double 0.93231067702507219
	.quad	0x3fd5a25ea49ecdc2              # double 0.33803525997356243
	.quad	0x3fdb173235bcc760              # double 0.42329077956957484
	.quad	0x3fdf401edd26ce4a              # double 0.48828860852083678
	.quad	0x3fed2b096b421e6e              # double 0.91150351475603286
	.quad	0x3fe8ad5e21d4e466              # double 0.77116304977165551
	.quad	0x3feb74bdfc0d283d              # double 0.85800074795520909
	.quad	0x3fd856f9212cc2f8              # double 0.38030842056018299
	.quad	0x3fe43d035b057877              # double 0.63244788911448679
	.quad	0x3fef47bea3ecb6c2              # double 0.9775078965810382
	.quad	0x3fd57c4507d97218              # double 0.3357098175672788
	.quad	0x3fea1693c21e7d18              # double 0.81525600351224892
	.quad	0x3fc8d9b90ad8246c              # double 0.19414437322146527
	.quad	0x3fe627fe5075dc49              # double 0.69238200869484345
	.quad	0x3fc5cf81423548e0              # double 0.17039504750079626
	.quad	0x3fdf6c3df2858b2a              # double 0.49098156627421707
	.quad	0x3fe5cb903f45d223              # double 0.68109905584293917
	.quad	0x3fef650366bb55fc              # double 0.98108072342682772
	.quad	0x3fe10a561730f2b6              # double 0.53251175431758813
	.quad	0x3f89b0c65dc22d00              # double 0.012544202553064654
	.quad	0x3fbfaff450812cc0              # double 0.12377860036319799
	.quad	0x3fee0a91900369b9              # double 0.93879011275867363
	.quad	0x3fd83c90aa3f2e5a              # double 0.37869660020507967
	.quad	0x3fef9c626525a53a              # double 0.98783988719257043
	.quad	0x3fc1934a0682713c              # double 0.13730740850304268
	.quad	0x3fd77bfae6735948              # double 0.36694214348735388
	.quad	0x3fe9424194293f38              # double 0.78933791101187634
	.quad	0x3fdc05da0a35621c              # double 0.43785716053892698
	.quad	0x3fe5f91d71ff809f              # double 0.68665954842801458
	.quad	0x3fe53a24da953d9a              # double 0.66334765140520635
	.quad	0x3fe1c2acc208e3eb              # double 0.55501401803405537
	.quad	0x3fd694cbbb089f8e              # double 0.35283177628525031
	.quad	0x3fe0d0442b1d3211              # double 0.52542313023292497
	.quad	0x3fe172acc249591d              # double 0.54524839350304755
	.quad	0x3fe737ae5f122d3b              # double 0.72554701393656928
	.quad	0x3f711f6c71c93780              # double 0.0041803585159650991
	.quad	0x3fe858a9c13ba565              # double 0.76082313290423242
	.quad	0x3fee27f51b83fb55              # double 0.94237761854297253
	.quad	0x3fdecee5a00ab6ae              # double 0.48137798909270202
	.quad	0x3fe11c10be6314bf              # double 0.53467595276801905
	.quad	0x3fdf6efbcb95fa10              # double 0.49114889985494958
	.quad	0x3fd216dfe406c02e              # double 0.28264615314674557
	.quad	0x3fbb0848049ddff8              # double 0.10559511292183277
	.quad	0x3febac6690610baa              # double 0.86479500006713761
	.quad	0x3fec0c2f0b1fcebd              # double 0.87648727581696273
	.quad	0x3feb1a42959d11f4              # double 0.84695557805440424
	.quad	0x3fefd4cb458bc5d9              # double 0.9947258337326118
	.quad	0x3fd1642d4be3cd84              # double 0.27173931513899441
	.quad	0x3fe0a7b780ca7c6c              # double 0.52047324327930999
	.quad	0x3fe2748f8930cb1d              # double 0.57672859950102728
	.quad	0x3fdb5613fffe833e              # double 0.42712879180367114
	.quad	0x3fd5b6731c5fd5ca              # double 0.33926084299977488
	.quad	0x3fd77692d020da9a              # double 0.36661215138466619
	.quad	0x3fe235b4f4a3d38c              # double 0.56905601292838659
	.quad	0x3fec02a7148169fb              # double 0.87532381062493358
	.quad	0x3f8aeb5741d4a600              # double 0.013144189545147178
	.quad	0x3fd89421110be1a6              # double 0.38404108681381854
	.quad	0x3fa057ea4b8552a0              # double 0.031920739859434777
	.quad	0x3fb1b9340b243bb0              # double 0.069232228012181762
	.quad	0x3fd0546d5eddfda2              # double 0.25515302910204174
	.quad	0x3fd9a4a5f327ffe4              # double 0.40067433114745499
	.quad	0x3fe8197ef8b12187              # double 0.75311230251922801
	.quad	0x3fd15533d56d91c6              # double 0.27082534639910383
	.quad	0x3fe34b4fd0d191ac              # double 0.60294333252800447
	.quad	0x3fe459a0de915521              # double 0.63594096632246899
	.quad	0x3fee776ff235f00a              # double 0.95207974726463473
	.quad	0x3fee5ae92918eba9              # double 0.94859750773263329
	.quad	0x3fed7e438d8b94af              # double 0.9216630711131496
	.quad	0x3fd85c693a81a48e              # double 0.38064032281415272
	.quad	0x3fb79192c41532b8              # double 0.092065022346285441
	.quad	0x3fe5af763442e764              # double 0.67766866881650545
	.quad	0x3f870eb64b840780              # double 0.011258529834325293
	.quad	0x3fe80a2167505bbb              # double 0.75123663118835482
	.quad	0x3feb53cba4457fac              # double 0.85397893986008943
	.quad	0x3fdd5bb5a9de6774              # double 0.45872251118418395
	.quad	0x3fefb53bb6138778              # double 0.99087319909834459
	.quad	0x3fe73e0070d27f93              # double 0.72631856952283369
	.quad	0x3fd5df1a11f751aa              # double 0.34174205545903169
	.quad	0x3fd3011ad893509c              # double 0.29694243574091117
	.quad	0x3fc094ab0cdb29b0              # double 0.12953699233760352
	.quad	0x3fe22e55cf7315f5              # double 0.56815615193835234
	.quad	0x3fe630849bb81a6b              # double 0.69342260755440799
	.quad	0x3fe746a33cba1b28              # double 0.72737275944459601
	.quad	0x3fe361dcef2c51b4              # double 0.60569616998195963
	.quad	0x3fdc353b15703310              # double 0.44074894994337033
	.quad	0x3fe74ddf41e475c0              # double 0.72825587148297899
	.quad	0x3fc7af656c5ad750              # double 0.18504016676677759
	.quad	0x3feb7cd6630213ac              # double 0.85898894631883626
	.quad	0x3f42b2d260872000              # double 5.706336242434773E-4
	.quad	0x3fd0e5dfc2f392ae              # double 0.26403039968708242
	.quad	0x3fb24371c5c1a7f0              # double 0.07134162023581303
	.quad	0x3fde8b387784f6f6              # double 0.4772473494702888
	.quad	0x3fcd8e0abcc10020              # double 0.23089727608203336
	.quad	0x3febe844c093ccd2              # double 0.87210309613001358
	.quad	0x3fedd6aa4f815de4              # double 0.93245425728212838
	.quad	0x3fd71d178a4818ae              # double 0.36115063194336983
	.quad	0x3fe16db3ebcb4cc9              # double 0.54464145711463019
	.quad	0x3fe25cf8ada1b5c1              # double 0.57384904777944012
	.quad	0x3fafeebae957db80              # double 0.062368241295124527
	.quad	0x3fe1a61f10650513              # double 0.55152848436424262
	.quad	0x3fefaf85f66f31f8              # double 0.99017618304929921
	.quad	0x3fd8b19e20b40e9c              # double 0.38584092324911423
	.quad	0x3f884c8335a65780              # double 0.011864686083565834
	.quad	0x3fe05de274c174f7              # double 0.51146052173467538
	.quad	0x3fefd468a78c8c9a              # double 0.99467880939882325
	.quad	0x3fb7fc38c4ca5de8              # double 0.09369234852271513
	.quad	0x3fd6d536bc639b18              # double 0.35676353833552943
	.quad	0x3fe4eeef90b6718d              # double 0.65416696800416363
	.quad	0x3fe8d0bae0a6f4b4              # double 0.77547973515870305
	.quad	0x3fe10cd009ab3ba3              # double 0.53281404388859632
	.quad	0x3fdb609097f0c1ea              # double 0.42776884878096999
	.quad	0x3fba99a272067138              # double 0.10390677722756869
	.quad	0x3fe49293a477c775              # double 0.6428926670325682
	.quad	0x3fd38ef371d76996              # double 0.30560003392533852
	.quad	0x3f95fa0fdf4ea5e0              # double 0.021461723332015015
	.quad	0x3fed9308516fad27              # double 0.92419830232157529
	.quad	0x3f6b414caa065700              # double 0.0033270356509075283
	.quad	0x3fb85ae0b55d8cb8              # double 0.09513668468348413
	.quad	0x3fd635b9e4557756              # double 0.34702918337085487
	.quad	0x3fe533b160c76633              # double 0.66256016637925652
	.quad	0x3fdae9f7b477da2e              # double 0.42053024886937151
	.quad	0x3fea51ed524d93b2              # double 0.82250085902034287
	.quad	0x3fd09d1c6f8b582e              # double 0.25958929913520279
	.quad	0x3fead96d0a549bb7              # double 0.83904125230480175
	.quad	0x3fe8e8c05854f707              # double 0.77841202976534951
	.quad	0x3fbd9bd1cf2684b0              # double 0.11565886790642099
	.quad	0x3fd137122c08c77a              # double 0.26898626613830567
	.quad	0x3fcd222bc361c2c4              # double 0.22760531463747757
	.quad	0x3fe9a6d2887cb5b2              # double 0.80161406190534579
	.quad	0x3fe458005b03986a              # double 0.63574235702686832
	.quad	0x3fe33eebea6ddebc              # double 0.60143085276555253
	.quad	0x3fecc2e0d372ced3              # double 0.89878884600190145
	.quad	0x3fee78a7831e877b              # double 0.95222831353406379
	.quad	0x3fc872f1f85ecbe0              # double 0.19100784900146461
	.quad	0x3fde9560689958da              # double 0.47786722388026492
	.quad	0x3feb7677d3f4e3e2              # double 0.85821143529676314
	.quad	0x3fe5de72dc0c3114              # double 0.68340437868167436
	.quad	0x3feb77f432260438              # double 0.85839280886296532
	.quad	0x3fc742a844687354              # double 0.18172171917185642
	.quad	0x3fd80fd86b811de6              # double 0.37596712587807557
	.quad	0x3fc1618d7885b510              # double 0.13578956971051825
	.quad	0x3fecd0fe1d88365c              # double 0.90051179664596814
	.quad	0x3fb1680c636fd2e8              # double 0.067993902470174228
	.quad	0x3fe25b679c12bfd6              # double 0.57365780337385774
	.quad	0x3fee2b9446c19e19              # double 0.94281972713082773
	.quad	0x3fe43236824bf25e              # double 0.63112950752799768
	.quad	0x3fe97fad70f11c1f              # double 0.79683563288643089
	.quad	0x3fba55f3be65f570              # double 0.10287402532954615
	.quad	0x3fed42c8fd4a6ea3              # double 0.91440247984742873
	.quad	0x3fe897e1ad0a91b1              # double 0.7685402278626069
	.quad	0x3fd0f232abf2366c              # double 0.26478258887877959
	.quad	0x3fe14971c590d1ed              # double 0.5402153834061757
	.quad	0x3fe2f1e00bd5b029              # double 0.59202577887981989
	.quad	0x3fe40eb6e69835f3              # double 0.62679619825365618
	.quad	0x3fe3f23934d32af7              # double 0.62331829373701353
	.quad	0x3fef9eca68cda2b6              # double 0.98813362569224839
	.quad	0x3fd8a9a85bc9d246              # double 0.38535508121211526
	.quad	0x3fe079c3767c228d              # double 0.51486371175367796
	.quad	0x3fc654dc04d0225c              # double 0.17446470484744026
	.quad	0x3fdd807a3ff91a50              # double 0.46096664664620324
	.quad	0x3fd6f20c31d1382e              # double 0.35852341523139131
	.quad	0x3fd3f73e5a3cfa8e              # double 0.31196554958652534
	.quad	0x3fec72ecee8b44ec              # double 0.88902899351719844
	.quad	0x3fc17e52fa09bbbc              # double 0.13666760643851983
	.quad	0x3fec86b4667699eb              # double 0.89144344341621939
	.quad	0x3fcb3af830dbf884              # double 0.21273710618692487
	.quad	0x3fd845be9685cdf2              # double 0.37925686549644333
	.quad	0x3fd944f459edda38              # double 0.39483364851131197
	.quad	0x3febe86f3fa95f9e              # double 0.87212336000355939
	.quad	0x3fe4d30c5cc19118              # double 0.6507627307551358
	.quad	0x3fe6733f25af065f              # double 0.70156819686981098
	.quad	0x3fc159621f259e98              # double 0.13554026146743037
	.quad	0x3fe8bca509ccc61b              # double 0.77302791513483571
	.quad	0x3fd42fd9877d6fa4              # double 0.31542051536029647
	.quad	0x3fccbe7c15264ab4              # double 0.22456313164419373
	.quad	0x3fe6d89f6efcc8a9              # double 0.71394321133836514
	.quad	0x3fe3ba01b732520c              # double 0.61645589619235031
	.quad	0x3fe68611d8070f7b              # double 0.70386593048941337
	.quad	0x3fe7b8ae86b2947f              # double 0.74129415805931831
	.quad	0x3fe6429d9e56715d              # double 0.6956317989857258
	.quad	0x3fe02a0654c03db8              # double 0.50512997200887977
	.quad	0x3fd5c8342f891526              # double 0.34034447328697792
	.quad	0x3fc6c7c6d07e2728              # double 0.1779716985732247
	.quad	0x3fcc76ad08aec3f0              # double 0.22237170146902896
	.quad	0x3fe9fef8aae828a8              # double 0.81237443332908743
	.quad	0x3fd946a1e337aa94              # double 0.39493605794147268
	.quad	0x3fe67de6a7e2d45d              # double 0.70286877432102879
	.quad	0x3fd7caaf96344be2              # double 0.37174596470248222
	.quad	0x3fdc843988dc1680              # double 0.44557035794455402
	.quad	0x3fc6aa81c4cd2634              # double 0.17707845792237864
	.quad	0x3fc4c0078f71be48              # double 0.16211027626148877
	.quad	0x3fd38db3dcf9bed0              # double 0.30552383975644393
	.quad	0x3fe85a8d718c7161              # double 0.76105377366506499
	.quad	0x3fe51ec6c0a22e3e              # double 0.66000688194021229
	.quad	0x3f9f2f6b82f95bc0              # double 0.030454330319425571
	.quad	0x3fc6e99744c1fab8              # double 0.17900362832366112
	.quad	0x3fe5d56583c04ac7              # double 0.68229938252110223
	.quad	0x3fc22c21903534ac              # double 0.14197177449606124
	.quad	0x3feb9e400b537b20              # double 0.86306764804962554
	.quad	0x3fe098c790a3293b              # double 0.51864984750253684
	.quad	0x3fe13b328dadc930              # double 0.53847625419283496
	.quad	0x3fa57393f504d690              # double 0.041897414836438718
	.quad	0x3fe95109acf7c087              # double 0.79114230902452298
	.quad	0x3fe44e49da641ff4              # double 0.63455670027269528
	.quad	0x3fdd5ce97d1abca8              # double 0.45879590241652091
	.quad	0x3fe1e7d7a6f9137f              # double 0.559551073187876
	.quad	0x3fd48f5abebb7306              # double 0.32124966264909494
	.quad	0x3fd0cfe6c896c97e              # double 0.26268930043001848
	.quad	0x3feaf3f6467fe823              # double 0.84228051919422275
	.quad	0x3fd8a5c37eb98698              # double 0.38511741042575798
	.quad	0x3fd76162ea953e6c              # double 0.36531899364943032
	.quad	0x3fdde9ad9197866c              # double 0.46738757341345294
	.quad	0x3feadd1ee73ed3c9              # double 0.83949227490540423
	.quad	0x3fa438ab293175d0              # double 0.039494847086398388
	.quad	0x3fea5a2bc26ef45d              # double 0.82350719428326224
	.quad	0x3fe84c1af77f6e24              # double 0.75929020251664214
	.quad	0x3fd03c2f5e680fe0              # double 0.25367340297111518
	.quad	0x3fe7bf0a628c8a60              # double 0.74207038162087357
	.quad	0x3fe3439d72f903f9              # double 0.60200378852471126
	.quad	0x3feceee497fc7bf3              # double 0.90416173634355201
	.quad	0x3fe13aca90c9b71b              # double 0.53842666891953017
	.quad	0x3fee6a08f74798b7              # double 0.95044372841655089
	.quad	0x3fe074c381d6fdbb              # double 0.51425338134134024
	.quad	0x3fe1876a28fde94b              # double 0.54778011327952336
	.quad	0x3fd3897028d19f48              # double 0.30526355730261345
	.quad	0x3fd650dfbf22f374              # double 0.34868615785290236
	.quad	0x3fd37b03112521e4              # double 0.3043830554420579
	.quad	0x3fe3d384987e168d              # double 0.61957006248185709
	.quad	0x3fe176629f00404b              # double 0.54570132307890995
	.quad	0x3fd9e64352395d6a              # double 0.40467913655944321
	.quad	0x3fdb587fa8cf3430              # double 0.42727653012554168
	.quad	0x3fecfc50cb13264a              # double 0.90580024397895298
	.quad	0x3fdbb9a7b0f66c06              # double 0.43320648461821099
	.quad	0x3fe79d6f0d28f388              # double 0.73796799249940737
	.quad	0x3fe359510c6b1ca0              # double 0.60465290475339728
	.quad	0x3fbacfcbebc2a1a0              # double 0.10473322397104434
	.quad	0x3f6521c9e0993a00              # double 0.002579588214565165
	.quad	0x3fe6afcc1a3c3aee              # double 0.70895962833477966
	.quad	0x3fe14ead18b858ac              # double 0.54085402324814913
	.quad	0x3fdc286d87cfec5e              # double 0.43996752036009024
	.quad	0x3fdeecbdf2add796              # double 0.48319958399894725
	.quad	0x3fd31a39f16d40d4              # double 0.29847572876771022
	.quad	0x3fe3146f4cf63635              # double 0.59624447852701812
	.quad	0x3fe99d295719d7de              # double 0.80043475162414857
	.quad	0x3feb83aa1c5f910e              # double 0.85982232610379739
	.quad	0x3f94ec5d475b8420              # double 0.020432908516230808
	.quad	0x3feaaf6b55993385              # double 0.83391348570295121
	.quad	0x3fedc670f1d26cdd              # double 0.93047377806524489
	.quad	0x3fe4405f33c8c26b              # double 0.63285789598564912
	.quad	0x3fdb5528c5633bce              # double 0.42707270885597104
	.quad	0x3fd662b4afe2af3e              # double 0.34977452446286239
	.quad	0x3fdc8c4c796b97c4              # double 0.4460631547684637
	.quad	0x3fdad1e99fe635fe              # double 0.41906204810297243
	.quad	0x3fe6c6077c190acb              # double 0.71167349088531162
	.quad	0x3fe514bfed180032              # double 0.6587829237687457
	.quad	0x3fef7d02645455ff              # double 0.98400992961495592
	.quad	0x3fd07967f78a5f08              # double 0.25741004155996494
	.quad	0x3fc22060f75add98              # double 0.1416131217754184
	.quad	0x3fef4a03cd040097              # double 0.97778501550785079
	.quad	0x3fd0a7bd30817754              # double 0.2602379773796788
	.quad	0x3fe1cb2073bf6ef0              # double 0.5560457478236156
	.quad	0x3fb0f3b90915e760              # double 0.066218914716868138
	.quad	0x3fe9afb1b8b2ff20              # double 0.80269704889358095
	.quad	0x3fe9e996a1a16ad2              # double 0.80976420944656469
	.quad	0x3fe2748664dee16e              # double 0.57672424031538383
	.quad	0x3fd40f9743f3d28e              # double 0.31345159183482785
	.quad	0x3feb3beec8ebb078              # double 0.85106600992504777
	.quad	0x3faf9d80dafab000              # double 0.06174853013121151
	.quad	0x3fd2724af3388f98              # double 0.28822587730450655
	.quad	0x3fd41708c1dac0fc              # double 0.31390589648346157
	.quad	0x3feb856c20dd81ef              # double 0.86003691119191028
	.quad	0x3fe0027c01494760              # double 0.50030327082843584
	.quad	0x3feaa4b05d4bbb13              # double 0.83260362836685642
	.quad	0x3fbaccbd4df2d610              # double 0.10468657639543033
	.quad	0x3fe3c237d3167b2b              # double 0.61745825985039937
	.quad	0x3fe9d1acd68b79af              # double 0.80684511092458944
	.quad	0x3feddd64a441ecc8              # double 0.93327552873179176
	.quad	0x3fd09478817dc148              # double 0.25906193395259836
	.quad	0x3fe6c8c7c535d6d7              # double 0.71200932042730869
	.quad	0x3fe6c22e79de01a5              # double 0.71120380212964973
	.quad	0x3fe78f3bf1564ad3              # double 0.73623463760517394
	.quad	0x3fe8daf3bc657225              # double 0.77672755046984732
	.quad	0x3fd609a01670ca9a              # double 0.34433748427833566
	.quad	0x3fdcd679e7da22c0              # double 0.45059058801465923
	.quad	0x3fdf716d86e247b6              # double 0.49129808590179935
	.quad	0x3fd9e97a077726e0              # double 0.40487528542563034
	.quad	0x3fe1e988c9454747              # double 0.55975760756175752
	.quad	0x3fd9932491032202              # double 0.39960588609076819
	.quad	0x3fe542bb99cf06f2              # double 0.66439609566461244
	.quad	0x3fd21efc9482557e              # double 0.2831412744793268
	.quad	0x3f6e98540a90e000              # double 0.0037347451621165817
	.quad	0x3fc6bf60f96d9db4              # double 0.17771541766272281
	.quad	0x3fe81c33410d9087              # double 0.75344240861569822
	.quad	0x3fb16ad78cd26c20              # double 0.068036529426919845
	.quad	0x3fe9c89d6c5fe2db              # double 0.8057391277971776
	.quad	0x3fea1a1aa14b8e4b              # double 0.81568652632672334
	.quad	0x3f946bac3c741260              # double 0.019941989125998538
	.quad	0x3fc418c6df11ce1c              # double 0.15700612918918544
	.quad	0x3fe54fb4c6f29e04              # double 0.66597975594498893
	.quad	0x3fd4b060dc6ad9fc              # double 0.32326528096328366
	.quad	0x3fea25109c1e145f              # double 0.81702452174853224
	.quad	0x3fed56f894f342d7              # double 0.91686657993167386
	.quad	0x3fe013caa1cf90ee              # double 0.50241595843956843
	.quad	0x3fa626b912e7fd70              # double 0.04326418262280185
	.quad	0x3fde0d30414cb098              # double 0.46955496193801016
	.quad	0x3febcb0143fc32a7              # double 0.86853087690686415
	.quad	0x3fe9eda9e7d86d0e              # double 0.81026168138797217
	.quad	0x3fee956c1be66ac2              # double 0.95574002694350946
	.quad	0x3fccb0dac6717554              # double 0.22414717378243643
	.quad	0x3fca949f48ee049c              # double 0.20766058980010349
	.quad	0x3fe67e2708b01e92              # double 0.70289947220676852
	.quad	0x3fef7b2cf50b40cd              # double 0.98378608570239978
	.quad	0x3fe176e78157174a              # double 0.5457646871734394
	.quad	0x3fd73a98582f955c              # double 0.36295136081601753
	.quad	0x3fc096cb8ae29dac              # double 0.12960190087799839
	.quad	0x3fe77a2ebdbf9f35              # double 0.73366486606844339
	.quad	0x3fedcc156edf93ab              # double 0.93116256384802421
	.quad	0x3fce79a37ad8f1b0              # double 0.23808711527261783
	.quad	0x3fce4f04f938ba40              # double 0.23678648156188054
	.quad	0x3fe943e19cc8dedc              # double 0.78953629133226455
	.quad	0x3fe4153b659ab38a              # double 0.62759179920759434
	.quad	0x3fc218ecd82775f8              # double 0.14138565592195085
	.quad	0x3f8e5b697b7182c0              # double 0.014822792129224438
	.quad	0x3fdd91c63d50ce24              # double 0.4620223616395569
	.quad	0x3fed59b78d64f65a              # double 0.91720178238001471
	.quad	0x3fcb2eed2753a968              # double 0.21236957950834356
	.quad	0x3fdb305715c65902              # double 0.42482545019574058
	.quad	0x3fe040f8cd4e44df              # double 0.5079311380269721
	.quad	0x3fcd84b2a4dd1bbc              # double 0.23061211633668488
	.quad	0x3fe462fc0be20c0a              # double 0.63708307572267242
	.quad	0x3f921d6482bf5220              # double 0.017690248947319742
	.quad	0x3fbf05b6b783eae0              # double 0.12118093471864766
	.quad	0x3fcb4961a550471c              # double 0.21317692348434825
	.quad	0x3fef7d3a5cad7546              # double 0.98403661824310329
	.quad	0x3fce83688d6afdcc              # double 0.238385266353346
	.quad	0x3fdacb2e77bb0456              # double 0.41865121548113871
	.quad	0x3fe7ab5495dd4e32              # double 0.73966435690312538
	.quad	0x3fc3b390e5b75030              # double 0.15391741959194993
	.quad	0x3fe1f9c45b014c6e              # double 0.56173913740566461
	.quad	0x3fc44f405aca6984              # double 0.1586685603441077
	.quad	0x3fe84343b6286ea9              # double 0.75821099832270022
	.quad	0x3fac2d592500c060              # double 0.055033479468307389
	.quad	0x3fec5c365478ea5c              # double 0.88625637529851131
	.quad	0x3fb86927ee509ca8              # double 0.095354552919718061
	.quad	0x3fb318bee5c3a160              # double 0.074596339316149507
	.quad	0x3fe0b187f2d94898              # double 0.52167127066992958
	.quad	0x3fe34c6cf32ee1bc              # double 0.60307929512696701
	.quad	0x3fe813815c867c52              # double 0.75238102027277365
	.quad	0x3fbb426cce7a0370              # double 0.1064823154538439
	.quad	0x3fe662fcabdf1f19              # double 0.6995833737246101
	.quad	0x3fe9e08d12aa66c7              # double 0.80866101880675323
	.quad	0x3fed69cec06b5941              # double 0.91916596967602271
	.quad	0x3fc7902ad687a420              # double 0.18408713793840636
	.quad	0x3fe4ac40f5065878              # double 0.64602706772235674
	.quad	0x3fb709a5bedd7910              # double 0.089990958307201163
	.quad	0x3fce8db4522d6c10              # double 0.23869947445459205
	.quad	0x3fecef101a4bde67              # double 0.90418248306282301
	.quad	0x3feb0621db36ec8e              # double 0.84449856582013338
	.quad	0x3fd3c803a31e926e              # double 0.30908289842253722
	.quad	0x3fe440cd38e66f6f              # double 0.63291035760219738
	.quad	0x3fd37a8a6ce22352              # double 0.30435429223193922
	.quad	0x3fe946ecf9f830f3              # double 0.7899079210488068
	.quad	0x3fe6612ae0f9ac2b              # double 0.69936126652226471
	.quad	0x3facaab2f29e8950              # double 0.055989830128299389
	.quad	0x3fe4b1a9a40f8ee0              # double 0.64668733637924092
	.quad	0x3fb172c39e7d5fa8              # double 0.068157411760124575
	.quad	0x3fe0512a72f62604              # double 0.50990793660565759
	.quad	0x3fca4eec02b04708              # double 0.2055335057380534
	.quad	0x3fd774447bde53ac              # double 0.36647140594987593
	.quad	0x3fd3721f3987bfb8              # double 0.30384045236769053
	.quad	0x3fdc64155020bc34              # double 0.44360859704005695
	.quad	0x3faff40c7f492570              # double 0.062408819711502583
	.quad	0x3fdc9e53f105ec18              # double 0.4471635678998509
	.quad	0x3fd54c37b7662388              # double 0.33277695570046051
	.quad	0x3fdc990b91067348              # double 0.44684113657585955
	.quad	0x3fd845b6c6728854              # double 0.37925500278118318
	.quad	0x3fe35305093d21b4              # double 0.60388423733188867
	.quad	0x3fe6a363d48f94b7              # double 0.70744506374162242
	.quad	0x3fe60ccec153d279              # double 0.68906343230499012
	.quad	0x3fe8734deb9da2ab              # double 0.76407524126724036
	.quad	0x3fb679fabc4c6fa0              # double 0.087798758479435524
	.quad	0x3fef6d54cda1f41e              # double 0.98209610140441206
	.quad	0x3febe5ea696113cb              # double 0.87181587774159064
	.quad	0x3fd3d6282c280d16              # double 0.30994610130456246
	.quad	0x3fa6d5300e4c5b80              # double 0.0445952432111687
	.quad	0x3fe019f740ba09c6              # double 0.50316965715347162
	.quad	0x3fcad5b62dfcb9c8              # double 0.20964696164578656
	.quad	0x3fef8bda7d7024c0              # double 0.98582195758458368
	.quad	0x3fdf45db21261698              # double 0.48863867032228248
	.quad	0x3fef61ae9295a70e              # double 0.9806740630130848
	.quad	0x3fda27d19e4c1ad8              # double 0.40868034800261688
	.quad	0x3fe68ab2f35b6a78              # double 0.70443103342706959
	.quad	0x3fd471ffd5cf0ae2              # double 0.31945796851884556
	.quad	0x3fd89bda05cd4f6e              # double 0.38451242987252143
	.quad	0x3fb9837fc289ee98              # double 0.099662766451667273
	.quad	0x3fd5fd3142cd3186              # double 0.34357863925540533
	.quad	0x3fd15df23bc51d54              # double 0.27135902249252308
	.quad	0x3fc6a50d7cc839b0              # double 0.17691200821759656
	.quad	0x3fe3e9b5b08e2f19              # double 0.62227901919820561
	.quad	0x3fdef27c4adf43ee              # double 0.48355014144641373
	.quad	0x3fb1b0699395f260              # double 0.069098089725181833
	.quad	0x3fe7cad0f2fdef9b              # double 0.74350783786165964
	.quad	0x3fd4537785f641a8              # double 0.31759441454144133
	.quad	0x3fb41717eab9e8e0              # double 0.078477377706721807
	.quad	0x3fdcc9a33e8f23b8              # double 0.44980698689738174
	.quad	0x3fea591c8d4b65eb              # double 0.82337787243448923
	.quad	0x3fdad1068d1e6b14              # double 0.41900790959486867
	.quad	0x3fd31e142ccbb4a0              # double 0.29871086477835185
	.quad	0x3fe3df3e65bd99fe              # double 0.62100143309800138
	.quad	0x3febc99db9597957              # double 0.86836134148669941
	.quad	0x3fe7e0066b038aaf              # double 0.74609681035174968
	.quad	0x3fc54eafa1cfebec              # double 0.16646380806909578
	.quad	0x3fb0f56a3a7da9d8              # double 0.066244735031126267
	.quad	0x3fb66ef7c8140c90              # double 0.087630735728497777
	.quad	0x3fdadefb2d66f6c6              # double 0.41985969003495105
	.quad	0x3fdec32d184d30dc              # double 0.48066260693737006
	.quad	0x3fdd4a1e33fd38bc              # double 0.45764880253853923
	.quad	0x3fe1c6507cb0a938              # double 0.55545830110103278
	.quad	0x3fe275a9bf679090              # double 0.57686316856099218
	.quad	0x3fe1e14a2488da39              # double 0.5587511743131649
	.quad	0x3fe039939a63afac              # double 0.50702839044742154
	.quad	0x3fdcb7888e1741f8              # double 0.44870199085292439
	.quad	0x3f90e956a9f38a80              # double 0.016515115855222806
	.quad	0x3fe1fca26aaa4994              # double 0.56208916504901874
	.quad	0x3fd9a057e22334b8              # double 0.40041157802336214
	.quad	0x3fd2ba2cf9b2b474              # double 0.29261326202942617
	.quad	0x3fe35b495df80b24              # double 0.60489338258080183
	.quad	0x3fe66373b5e21e47              # double 0.69964013599469232
	.quad	0x3fdbf42b155ba154              # double 0.43677785001502412
	.quad	0x3fd460ed542062a0              # double 0.31841595855216021
	.quad	0x3fe27269f4305709              # double 0.57646653836374739
	.quad	0x3fcb996e319f0ef8              # double 0.21561982558170434
	.quad	0x3fd4de86de4acbd2              # double 0.32608195980281807
	.quad	0x3fcbff61fec9e95c              # double 0.21873116436820339
	.quad	0x3feeb7625bdfa87f              # double 0.95988576835703998
	.quad	0x3fd358890ae5e03c              # double 0.30227876724484637
	.quad	0x3fe9aeb6a80a605b              # double 0.8025773317376762
	.quad	0x3fbd727500a24340              # double 0.11502772584414078
	.quad	0x3fdb64a55f8d3bbc              # double 0.42801794368000023
	.quad	0x3fe36a1d2393fda3              # double 0.60670334767194267
	.quad	0x3fef520012fe88c6              # double 0.97875980100459326
	.quad	0x3fe0115dd687990d              # double 0.50211994076087907
	.quad	0x3fed3d20e8fa38e3              # double 0.91371198180584334
	.quad	0x3fc52f55d089a17c              # double 0.16550705606938354
	.quad	0x3fec497effd0a4bd              # double 0.88397169078702797
	.quad	0x3fe01149c3ef4dd8              # double 0.50211036938201925
	.quad	0x3fede577159917f1              # double 0.93426088541377628
	.quad	0x3fe79329ef817e63              # double 0.73671433237536765
	.quad	0x3f9649aeb78f1760              # double 0.021765451386975498
	.quad	0x3fc9fb088e79186c              # double 0.20297343212786545
	.quad	0x3fefae5b90eb5fdd              # double 0.99003389648987261
	.quad	0x3fee5c1caf01de23              # double 0.94874414616692027
	.quad	0x3fe20f256e62c337              # double 0.56434890327191212
	.quad	0x3fe5ffc67e89bbe4              # double 0.68747257914025939
	.quad	0x3febbf4c7b8debeb              # double 0.86710189944949201
	.quad	0x3fe3789f0cefac9f              # double 0.60847427870375614
	.quad	0x3feaf46c091a5b0c              # double 0.84233667161865488
	.quad	0x3fe810de9481fede              # double 0.75205925946644547
	.quad	0x3fe8034b148a0e06              # double 0.75040201198174894
	.quad	0x3fecc4950276bc94              # double 0.89899683457578527
	.quad	0x3fd940eb9d328de8              # double 0.39458742476764863
	.quad	0x3fce90f4b091be04              # double 0.23879870053814056
	.quad	0x3fcbccd9bbfb1394              # double 0.2171890418886987
	.quad	0x3fd5a032a21d2b2c              # double 0.33790269690932706
	.quad	0x3fdb9dfcea7ab6c4              # double 0.43151781938909672
	.quad	0x3fe6383024d72a51              # double 0.69435889430435271
	.quad	0x3fee7160168c1770              # double 0.95133976367718098
	.quad	0x3fd5377382b624e8              # double 0.33150947346491799
	.quad	0x3fdcc04fd987a6b2              # double 0.44923778765824374
	.quad	0x3fde57a47f24572c              # double 0.47409927765089566
	.quad	0x3fdba4ec1c882dd0              # double 0.43194105898211621
	.quad	0x3fd5a7baffc488ec              # double 0.33836245515170904
	.quad	0x3fc54eab7647cd94              # double 0.16646331096090405
	.quad	0x3fee28769a9824b2              # double 0.94243936723900945
	.quad	0x3fed4332624ab60f              # double 0.91445273587823006
	.quad	0x3fea31b140f7a981              # double 0.81856596650077063
	.quad	0x3fe5d3322162fc6b              # double 0.68203073998291808
	.quad	0x3feada0f45c4f3e4              # double 0.83911861063790782
	.quad	0x3fd9a05405a2c934              # double 0.40041065740946924
	.quad	0x3fa4f757a4cc4270              # double 0.040949572436265735
	.quad	0x3fd5a7ba54ee9d3c              # double 0.33836229604863255
	.quad	0x3fd2a8ac729c5ae6              # double 0.29154502098519541
	.quad	0x3fd1e0830ce09876              # double 0.27932811982680705
	.quad	0x3feaa697208ca217              # double 0.83283573491377438
	.quad	0x3fd1dea1ae159b82              # double 0.27921335220747079
	.quad	0x3fd385f6d8ab6722              # double 0.30505152854094508
	.quad	0x3fe5f0144aa7452e              # double 0.68555655079595623
	.quad	0x3fcf3ffb87baa2d0              # double 0.24414009215731491
	.quad	0x3fe6c5fdb6200f97              # double 0.71166883059821628
	.quad	0x3fc2f497612eb06c              # double 0.1480893349192941
	.quad	0x3fe106da5ac9819b              # double 0.5320865414797028
	.quad	0x3fcb1f8ad8670bec              # double 0.21190009657411168
	.quad	0x3fdaa9375cb1d204              # double 0.4165781407566842
	.quad	0x3fdca846d2dbf1d2              # double 0.44777079192843161
	.quad	0x3fe8ca47af99449b              # double 0.77469238564130494
	.quad	0x3fc8f5d7f599e510              # double 0.19500255100482677
	.quad	0x3fd43b3df2f6497c              # double 0.31611584402812531
	.quad	0x3fc6f3ccbc1f0838              # double 0.17931517778021244
	.quad	0x3fd98d66689e6d78              # double 0.39925537316022242
	.quad	0x3fc35454e87e5110              # double 0.15101109840600957
	.quad	0x3fe3927ec9704669              # double 0.61163272231551702
	.quad	0x3fe08d5fcb0f7c66              # double 0.51725759182216957
	.quad	0x3fe4bd0d51ac6bcb              # double 0.6480776400743421
	.quad	0x3fd30f1ee7751836              # double 0.29779789546262536
	.quad	0x3fde1d57ff950420              # double 0.47054099997700582
	.quad	0x3fd26631925ad526              # double 0.28748740475141898
	.quad	0x3fe069d9a64cfefe              # double 0.51292116623514494
	.quad	0x3fe7377c920ff18b              # double 0.7255232670573134
	.quad	0x3fc6a95837940138              # double 0.17704298700119536
	.quad	0x3fd954d998e495ca              # double 0.39580383234928418
	.quad	0x3fe7aef589371d03              # double 0.74010731506214744
	.quad	0x3fe7d88cbd027594              # double 0.74518429675997533
	.quad	0x3fa12fb59e8c2460              # double 0.033567119220671016
	.quad	0x3fef5d0d6857789d              # double 0.9801089322970885
	.quad	0x3fee17ccd0a3ae95              # double 0.94040528058890749
	.quad	0x3fee1bb2bd88dc1d              # double 0.94088112848737959
	.quad	0x3fd33a61cb9cec62              # double 0.30043835529403939
	.quad	0x3fe999a520cad3bf              # double 0.80000549702400992
	.quad	0x3fb8d70ba6e1d228              # double 0.097031334154799809
	.quad	0x3fc65b50e7e428d4              # double 0.17466174433531612
	.quad	0x3fb1ba11b29ef710              # double 0.069245439633018657
	.quad	0x3fe9a602d04b8f7b              # double 0.80151501352928223
	.quad	0x3fe1a3875b793742              # double 0.55121200433652739
	.quad	0x3fe541cd41f2ead9              # double 0.66428244476932286
	.quad	0x3fde7b946d0a271c              # double 0.47629271171955323
	.quad	0x3fe1b4ceb087ab7b              # double 0.55332121351726415
	.quad	0x3fd6b6512b1fc02a              # double 0.35487775050478609
	.quad	0x3fb0004a18fd6630              # double 0.062504416562114029
	.quad	0x3fd3afa1c6f34258              # double 0.30759472302182678
	.quad	0x3fe6af1122383507              # double 0.70887047465808528
	.quad	0x3fc2867070503778              # double 0.14472775920915715
	.quad	0x3feb7ad57c128dbb              # double 0.85874437554269123
	.quad	0x3fe9743a86bcef36              # double 0.79543806377430459
	.quad	0x3fb1a0338ab4b1f0              # double 0.068850728381853576
	.quad	0x3fee287fa8854a7b              # double 0.94244368471329609
	.quad	0x3fe8899421405790              # double 0.76679426664735395
	.quad	0x3fe11fc98211d572              # double 0.53513026622992599
	.quad	0x3fe23afa123fff49              # double 0.56969932140780444
	.quad	0x3fd4f5cc73775f36              # double 0.32750235820775531
	.quad	0x3feba2736f532b0f              # double 0.8635804342569332
	.quad	0x3fe9857db646ec4e              # double 0.79754529572472577
	.quad	0x3f9a35f46bf17c40              # double 0.025596446121536554
	.quad	0x3fdf9ed8ce67e40c              # double 0.49407024533098887
	.quad	0x3fe92f1ed4867ab5              # double 0.78700200566148359
	.quad	0x3fef01c823ec2304              # double 0.96896750465484204
	.quad	0x3fe65ed6af6b65ea              # double 0.69907697927118062
	.quad	0x3fd2253044bb3ace              # double 0.28351980888411965
	.quad	0x3fdbdb3833e7ac7e              # double 0.43525509899945536
	.quad	0x3fd35046513b5ae0              # double 0.30177457745359781
	.quad	0x3fdb91e2fc10c0b0              # double 0.43077921500936167
	.quad	0x3fdd3f79f352c4a8              # double 0.45699929010431584
	.quad	0x3fd4fc6c1c99123c              # double 0.32790663521544494
	.quad	0x3fdce9d84e955a24              # double 0.45177276300583658
	.quad	0x3fd34284c1723576              # double 0.30093497172568762
	.quad	0x3fbb8f282ca97bc8              # double 0.1076531514204212
	.quad	0x3fe74f4f5b695044              # double 0.72843139508996346
	.quad	0x3fdfdd0cfb5039a0              # double 0.49786686460802265
	.quad	0x3f9ec4058047e8a0              # double 0.03004463763679921
	.quad	0x3fdae5e525d325da              # double 0.42028168386295095
	.quad	0x3f88470af25c63c0              # double 0.011854253312366114
	.quad	0x3fb979a493caa1e8              # double 0.099512373048703417
	.quad	0x3fb54ac0d36999e0              # double 0.083171893705731303
	.quad	0x3fee34a18da6f3a7              # double 0.94392469088017072
	.quad	0x3fef84ef9b044810              # double 0.98497753407196065
	.quad	0x3fdce8d81725c79a              # double 0.45171167622094688
	.quad	0x3fee5d5531fc6ea8              # double 0.94889316332724593
	.quad	0x3fec65893fddb19f              # double 0.88739454721285316
	.quad	0x3fd832d474d25fe0              # double 0.3781024113500262
	.quad	0x3fe95cf7c4b5e573              # double 0.79259861392999509
	.quad	0x3fcbf713b69fb670              # double 0.21847769181424637
	.quad	0x3fec9e8835c5e6cb              # double 0.89435205938863171
	.quad	0x3fec947b0c86b082              # double 0.89312508055219575
	.quad	0x3fe88e1ffa47cc9d              # double 0.76734923251060005
	.quad	0x3fc4560403138914              # double 0.15887498998842686
	.quad	0x3fe85fe082465ac0              # double 0.7617037338667032
	.quad	0x3fd3dd959a235fa0              # double 0.31039943745190079
	.quad	0x3fdecf0ebb86f3b2              # double 0.48138778985213115
	.quad	0x3fd3e06823c4fc5a              # double 0.31057170384514665
	.quad	0x3fea0a9a71f5b509              # double 0.81379434831402009
	.quad	0x3fd6fa7d942439ca              # double 0.35903872935241721
	.quad	0x3fed889f65e9b12d              # double 0.92292756943564813
	.quad	0x3fcabafc1754e654              # double 0.20883132113685809
	.quad	0x3fbbce3ff26d37e8              # double 0.10861587208384516
	.quad	0x3fe377830e1b3fb5              # double 0.60833885913051822
	.quad	0x3fe14b821208d0bf              # double 0.54046729585981967
	.quad	0x3fe28c5b6ef9b4be              # double 0.57963344263921335
	.quad	0x3fc41c6f466547a0              # double 0.1571177571991571
	.quad	0x3fe46590959d032d              # double 0.63739804478982409
	.quad	0x3fef785a4b50aa9c              # double 0.98344149312955009
	.quad	0x3fd02660c4b037d6              # double 0.25234240730139612
	.quad	0x3fa1b4104ac64ae0              # double 0.034576901557689999
	.quad	0x3fef0863887ccd88              # double 0.96977402360646269
	.quad	0x3fd9d503900b8cf4              # double 0.40362633768945888
	.quad	0x3fedbf820b2b8983              # double 0.92962743932393754
	.quad	0x3f9cb76696d9f840              # double 0.028043368298760862
	.quad	0x3fd1f2ea8f846ac6              # double 0.28045143142086848
	.quad	0x3fee1e3f31e4c318              # double 0.94119224305004234
	.quad	0x3fb0906a48864400              # double 0.064703600603266409
	.quad	0x3febcbdf0255dff2              # double 0.8686366124738909
	.quad	0x3fe9013d515cd609              # double 0.78140130892887882
	.quad	0x3f9c16111336e220              # double 0.027427927778008621
	.quad	0x3fc1c16dde551bc0              # double 0.13871548992230309
	.quad	0x3fea8d58f58e354f              # double 0.82975433311518454
	.quad	0x3fe6624694c99481              # double 0.69949654636424452
	.quad	0x3feae03fdb1928c3              # double 0.83987419884331194
	.quad	0x3fd0c73bbd709362              # double 0.26216023921943166
	.quad	0x3feb8732ca3cbb25              # double 0.86025371074160673
	.quad	0x3fdaecb206b9a3ee              # double 0.42069674164537119
	.quad	0x3feb20e583b4d79f              # double 0.84776569103154376
	.quad	0x3fef7a11ff074472              # double 0.98365115938407954
	.quad	0x3fd25b3460a8cec4              # double 0.2868166870059492
	.quad	0x3fca186aaaf6e0e4              # double 0.20387013767118056
	.quad	0x3fd500cc7b849494              # double 0.32817375242513802
	.quad	0x3fe3996bcc6f3d50              # double 0.61247816017741208
	.quad	0x3fd42ffd852734e0              # double 0.31542909625279769
	.quad	0x3fec45eaeeaa459c              # double 0.88353487600595626
	.quad	0x3fc5c235dca7b050              # double 0.16998933099910341
	.quad	0x3fd5101bb7899150              # double 0.32910817073413501
	.quad	0x3fea6442c28ba37d              # double 0.82473886487160508
	.quad	0x3fe5081cdafbc12f              # double 0.65724032182882819
	.quad	0x3fc08b0ab9003234              # double 0.12924322159996537
	.quad	0x3fd0f69cdc5aae70              # double 0.26505204695670326
	.quad	0x3fc5aba67b5e5ae4              # double 0.16930085204940959
	.quad	0x3fe429817f9d6c20              # double 0.6300666325072406
	.quad	0x3fb924cf02ae08b8              # double 0.098217905191662846
	.quad	0x3f8d19eaf43b5a00              # double 0.014209590509762116
	.quad	0x3feb4202a1f7615e              # double 0.85180789598511431
	.quad	0x3fc8d67217010c2c              # double 0.19404436228987387
	.quad	0x3fda6ed3b490fbc6              # double 0.41301434167320072
	.quad	0x3fa16ed0b3d2ec50              # double 0.034048578215753467
	.quad	0x3fbe1eb3b2baeda0              # double 0.11765597451715459
	.quad	0x3fea8e0cc035e51f              # double 0.82984006444090486
	.quad	0x3fd0ee5a01cdd204              # double 0.26454782653971187
	.quad	0x3fc5144f29e6724c              # double 0.16468228860766698
	.quad	0x3fe03c70fec93018              # double 0.50737809908742104
	.quad	0x3feb708649c8afdf              # double 0.85748590861248519
	.quad	0x3fe53a63a939b735              # double 0.66337760021062897
	.quad	0x3fce7c4f05f49764              # double 0.23816859999459006
	.quad	0x3fe3c5316839d6fb              # double 0.61782141071918717
	.quad	0x3fd81ac7a171944e              # double 0.37663450971587487
	.quad	0x3fdd74091fc4122a              # double 0.4602072534765137
	.quad	0x3febf2cfbe7dfcfc              # double 0.87339007573601135
	.quad	0x3fbcecb064e31bb0              # double 0.1129865881258485
	.quad	0x3fdc408492780284              # double 0.44143785766213051
	.quad	0x3fc07c22bd2deab0              # double 0.12878832089685011
	.quad	0x3f9f51a88466df00              # double 0.030584939080397611
	.quad	0x3feef94a6ac763fa              # double 0.96793099265334992
	.quad	0x3fdba8d3aa094642              # double 0.43217937092876835
	.quad	0x3fe3d01e0f3cd4dd              # double 0.61915495849703073
	.quad	0x3fd525c5fe287e1c              # double 0.33043050594457823
	.quad	0x3fd2fdacb4803d84              # double 0.29673307063145438
	.quad	0x3fefc9b8c37011a1              # double 0.99337423488082177
	.quad	0x3fe9bf78eec39ec9              # double 0.80462309487935457
	.quad	0x3fe8ec6aa05fdfa9              # double 0.77885943720956619
	.quad	0x3faecefb4411d930              # double 0.060172893580715203
	.quad	0x3fcb921c34006e84              # double 0.21539642848152962
	.quad	0x3fe11262235f270f              # double 0.53349406155141021
	.quad	0x3fe3aa99cdbcc144              # double 0.61457529242583364
	.quad	0x3fcbdbd6abd446f4              # double 0.2176464404115489
	.quad	0x3fc61186374250b0              # double 0.17240979860492223
	.quad	0x3fdad739275d35a4              # double 0.41938618511343351
	.quad	0x3fd0d2b246ac4b10              # double 0.26285988713895936
	.quad	0x3fec93e526fa51f5              # double 0.89305360424856295
	.quad	0x3fe2bbc0b502a424              # double 0.58541903832986408
	.quad	0x3fbcbead27ac8a18              # double 0.11228449076273994
	.quad	0x3fef2fedcfe50e2c              # double 0.97460070232813711
	.quad	0x3fef9f2519c8dfdd              # double 0.98817687069003634
	.quad	0x3fdd5f590498e894              # double 0.45894456337885825
	.quad	0x3fe3724de81c77f1              # double 0.60770316442699202
	.quad	0x3fec2d914f3cd642              # double 0.88056245304205327
	.quad	0x3fd1f963217313d8              # double 0.28084638849787558
	.quad	0x3fdea7987c644506              # double 0.47897922656655145
	.quad	0x3fd7453d230a0796              # double 0.3636010019473529
	.quad	0x3fe50be6399f69cf              # double 0.65770255331454475
	.quad	0x3fe7febf1fc652e1              # double 0.74984699445721159
	.quad	0x3fe528c9a826c583              # double 0.66122896997528391
	.quad	0x3fc7479a48d1e734              # double 0.18187264018689009
	.quad	0x3fe1c46370c0f1c2              # double 0.55522319814877386
	.quad	0x3fe0f9bebd854b6d              # double 0.53048645988233789
	.quad	0x3fdea6abc5999858              # double 0.47892278954384926
	.quad	0x3fe50a62a3025ff9              # double 0.65751773679494285
	.quad	0x3fea813465e7b8be              # double 0.82827205565788353
	.quad	0x3fec8e228777bdae              # double 0.89235044916670403
	.quad	0x3fc9d8fa3b2c588c              # double 0.20193412675206834
	.quad	0x3fe77bda81adc3ff              # double 0.73386884048352374
	.quad	0x3fea9327ab0ae49a              # double 0.83046325117824726
	.quad	0x3fdb961134c2ef28              # double 0.43103437569128511
	.quad	0x3fb59db9da10a778              # double 0.084437957514323148
	.quad	0x3fe46993e776551f              # double 0.63788790900676762
	.quad	0x3feae85b74684bea              # double 0.84086392150709099
	.quad	0x3fd69326726d3f32              # double 0.35273133444296711
	.quad	0x3fe8ba2eab3a725c              # double 0.77272733157185369
	.quad	0x3fefbf9416935e32              # double 0.99213604363735031
	.quad	0x3fea1b5c6dc6867b              # double 0.81583997192883773
	.quad	0x3fef989a15928330              # double 0.9873781606039298
	.quad	0x3fe8f1f93b47d155              # double 0.77953778818349895
	.quad	0x3fe48cfcd029d7f4              # double 0.64221039444851025
	.quad	0x3fe1201efa5e7869              # double 0.53517102146339568
	.quad	0x3fe3e775b1fe5a38              # double 0.62200436367385858
	.quad	0x3fcc34eac7206248              # double 0.22036490176175705
	.quad	0x3fe659e456e1af9a              # double 0.69847313851413451
	.quad	0x3fc1d519e940b53c              # double 0.13931583298964678
	.quad	0x3fef1cd2bc5fd53d              # double 0.97226845542778728
	.quad	0x3fd57a35a1980252              # double 0.33558407574313265
	.quad	0x3f98bd34d7ad32e0              # double 0.024159265197613133
	.quad	0x3fc05de067db0290              # double 0.12786488600797385
	.quad	0x3fe7f6cf2d7d39b0              # double 0.74887808689691404
	.quad	0x3fe753ac7faf2aca              # double 0.72896408975915361
	.quad	0x3fc8d26c935dbd34              # double 0.1939216346322411
	.quad	0x3fc17c3205dbff74              # double 0.13660264288045776
	.quad	0x3fe2deb9538bb401              # double 0.58968797986528909
	.quad	0x3fe09a0c33cba6e1              # double 0.51880464664756343
	.quad	0x3fd52247f9925b8c              # double 0.33021735546338316
	.quad	0x3fea57bf558b75b2              # double 0.82321135242425769
	.quad	0x3fdfcab5899b2258              # double 0.49674738348088487
	.quad	0x3f9cd8770bcf2160              # double 0.028169498534937332
	.quad	0x3fe316192f1cfdc1              # double 0.59644755555921602
	.quad	0x3fe4f28ae041441f              # double 0.65460723686021882
	.quad	0x3fec0fafbea32db1              # double 0.87691485628004362
	.quad	0x3feeea03590911ea              # double 0.96606604947788566
	.quad	0x3fef229af0369eb6              # double 0.97297427097961164
	.quad	0x3fc9492ae2a32cb8              # double 0.19754539552955008
	.quad	0x3fd8b3b6660d739e              # double 0.38596878019398584
	.quad	0x3fc63017e490d678              # double 0.17334269199789154
	.quad	0x3fd31fa0b9fd7cf6              # double 0.29880541003326699
	.quad	0x3feff8bb3a9c5b39              # double 0.99911271521964473
	.quad	0x3fc7ff3ed87d8d0c              # double 0.18747697420904108
	.quad	0x3feb649c1a054ec1              # double 0.85603146631407168
	.quad	0x3fb5aa0123a33ab0              # double 0.084625312042798439
	.quad	0x3fe103012661624e              # double 0.53161675926373575
	.quad	0x3fd117b89b4ffd84              # double 0.26707282225830675
	.quad	0x3fd04bea4cf45ab6              # double 0.25463349833573135
	.quad	0x3feef43314671754              # double 0.967309512948058
	.quad	0x3fe79cc18f71c3e6              # double 0.73788526550754052
	.quad	0x3fb10dfe6e53e748              # double 0.066619779525265987
	.quad	0x3fe0c72ef42c3fbf              # double 0.52431438150414766
	.quad	0x3fef55044e3e2f46              # double 0.97912802964990742
	.quad	0x3fe629d80cb86055              # double 0.69260790333192779
	.quad	0x3fd518b3efdc5c36              # double 0.32963274406342025
	.quad	0x3feef55cb3f99b6f              # double 0.96745143081066753
	.quad	0x3fc819ba8b7c55d0              # double 0.1882851773340648
	.quad	0x3fe1e1517142e217              # double 0.55875465508785538
	.quad	0x3fd5a9801c618ce6              # double 0.33847048541629332
	.quad	0x3feef4337cbf0807              # double 0.96730970730300291
	.quad	0x3fd23a81dba5bec8              # double 0.28482099962182561
	.quad	0x3fd5cab0880cb43e              # double 0.34049618993850916
	.quad	0x3feb1ac913f12326              # double 0.84701970953856143
	.quad	0x3fe463a4f62eaa5e              # double 0.6371636207816882
	.quad	0x3fd122f668b7a846              # double 0.26775894380864818
	.quad	0x3fe34e161163950f              # double 0.60328200718200431
	.quad	0x3fbc19091140f030              # double 0.1097570101855474
	.quad	0x3fb397b4b5aff698              # double 0.076533598286881221
	.quad	0x3fbc7b80a43509b0              # double 0.11125949868168195
	.quad	0x3fe53ba537f4ab53              # double 0.66353093079428971
	.quad	0x3feff8dfc1d411aa              # double 0.99913013321979816
	.quad	0x3fe473ccd401e827              # double 0.6391357556124192
	.quad	0x3fb6484c55308750              # double 0.087040682600244112
	.quad	0x3fea3b07401c3c96              # double 0.81970560571234574
	.quad	0x3fdb8fffdc5e0f44              # double 0.43066402931457426
	.quad	0x3fe7cfcfface9108              # double 0.74411772714350466
	.quad	0x3fe5da55da73d882              # double 0.68290226618297845
	.quad	0x3fd905209ab5ee3c              # double 0.39093794926131742
	.quad	0x3feb29cdcfbdffd6              # double 0.84885302137990482
	.quad	0x3fe4d7e2cee71157              # double 0.65135326777139368
	.quad	0x3fefab344213c890              # double 0.98964894204824994
	.quad	0x3fe027b17f3da0c4              # double 0.50484537936883855
	.quad	0x3fde4e4e3eecd9e4              # double 0.47352939744032896
	.quad	0x3fcae61d6854ebd0              # double 0.21014754862139151
	.quad	0x3fc9cc0096c79b88              # double 0.2015381561497771
	.quad	0x3fde3cde5731889e              # double 0.47246511950482695
	.quad	0x3fbab5a96c7801a8              # double 0.1043344392601343
	.quad	0x3fd56b0dc2b2c690              # double 0.33465904248723977
	.quad	0x3feab74c735d14f4              # double 0.83487532169297518
	.quad	0x3fc58ef076a8e1f8              # double 0.16842466157846991
	.quad	0x3fec6ac7b370a7a0              # double 0.88803467795263557
	.quad	0x3fdef0148b14c80c              # double 0.48340333540102232
	.quad	0x3fc9643727b58bc0              # double 0.19837083281444556
	.quad	0x3fc5d78f75c2ae2c              # double 0.17064088106177289
	.quad	0x3fedb7716d22805a              # double 0.92864295306572875
	.quad	0x3fe59c85f91f4cbe              # double 0.675356852118419
	.quad	0x3fd94de3c2a4d49a              # double 0.3953790093249353
	.quad	0x3feb629749860816              # double 0.8557850299841927
	.quad	0x3fef8d782a63337b              # double 0.9860192134743636
	.quad	0x3fe94aa80ad5bb6f              # double 0.79036333194913577
	.quad	0x3feaefa280e1c903              # double 0.84175229236851157
	.quad	0x3fefb18fc4543d5d              # double 0.99042499871749678
	.quad	0x3fca5a4e145a7e9c              # double 0.20588088983366937
	.quad	0x3fea568503d69868              # double 0.82306147336636304
	.quad	0x3fe08fa2eac460a3              # double 0.5175337395949281
	.quad	0x3fe0a36ca910a85d              # double 0.51994927425881665
	.quad	0x3fd264ddb5ede49e              # double 0.28740637556581727
	.quad	0x3fc43c3e7d1c7538              # double 0.15808850392287765
	.quad	0x3fbde4c1af44f440              # double 0.11677179841076768
	.quad	0x3fe61e4e733e9e1c              # double 0.69119951733313512
	.quad	0x3fcc1410433a9ec8              # double 0.21936229021706866
	.quad	0x3fd24003721797d2              # double 0.28515707151234182
	.quad	0x3fe601d8199feb36              # double 0.68772511486836296
	.quad	0x3fe5daac60683342              # double 0.68294352368830169
	.quad	0x3fddddb12c81c6a2              # double 0.46665601107006627
	.quad	0x3fe9d10c1792da3f              # double 0.80676846126772961
	.quad	0x3fee190810477ad8              # double 0.94055560283217243
	.quad	0x3fe82c915d8e0f0e              # double 0.75544040939755219
	.quad	0x3fe626931dd83298              # double 0.69220882252700999
	.quad	0x3fc3267344346ac8              # double 0.14961090879736205
	.quad	0x3fcf33c6dbc27448              # double 0.24376760225723815
	.quad	0x3fd5d3d4f483b526              # double 0.34105419042937724
	.quad	0x3fc6583e55839848              # double 0.1745679776715312
	.quad	0x3fe47efb1c65c446              # double 0.64050059839622331
	.quad	0x3fd5f1d77fea5ed8              # double 0.34288585178135866
	.quad	0x3fc64fdd7105d038              # double 0.17431228655516562
	.quad	0x3febea76ac79f268              # double 0.87237104117191411
	.quad	0x3fd5d6238966118e              # double 0.34119499605028458
	.quad	0x3fdf394e6749095e              # double 0.48787269674735068
	.quad	0x3fb8e506ab024818              # double 0.097244660139296335
	.quad	0x3fb54590897ac7a0              # double 0.083092721523625901
	.quad	0x3fcf2331dc67eb28              # double 0.24326155912407299
	.quad	0x3fd3dc342d288464              # double 0.31031517419802968
	.quad	0x3fe96a20722672d1              # double 0.79420492453535918
	.quad	0x3fe9e77996ce80f7              # double 0.80950622038292763
	.quad	0x3fe8109ff7b0fa24              # double 0.75202940346918412
	.quad	0x3fa5824586da5260              # double 0.042009518348241626
	.quad	0x3fbbfa1064c49180              # double 0.10928442440178365
	.quad	0x3feb23dbb2293a3e              # double 0.84812722012595265
	.quad	0x3fcc9572a60fad7c              # double 0.223310786327925
	.quad	0x3fcfe50ef7d0bf80              # double 0.24917780971872716
	.quad	0x3fd69514ef63c184              # double 0.35284922960183729
	.quad	0x3fdad7863f829c34              # double 0.41940456583182883
	.quad	0x3fb6f37b790dc230              # double 0.089652745298516078
	.quad	0x3fecad88453371f8              # double 0.89618314281284395
	.quad	0x3fe73e099f2effbe              # double 0.72632294741196524
	.quad	0x3fe12de002726b04              # double 0.53684998014372853
	.quad	0x3fc3723b9d1402b8              # double 0.15192361039955471
	.quad	0x3fcc7c9ba24e86c8              # double 0.22255273270734777
	.quad	0x3fe0f8d7eb3ea2db              # double 0.53037639566636174
	.quad	0x3fd3a94aab096b08              # double 0.30720774367152659
	.quad	0x3fe673b932870a7d              # double 0.70162639492657741
	.quad	0x3fdb87d9250271d2              # double 0.43016651739324374
	.quad	0x3fee977e458d5c17              # double 0.95599282822047627
	.quad	0x3fe276415b6c1098              # double 0.57693546157726683
	.quad	0x3fbe3251eb2d84f0              # double 0.11795532218595262
	.quad	0x3fd2474b30a565aa              # double 0.28560142279237744
	.quad	0x3fe5d85df5ac9809              # double 0.68266199095956026
	.quad	0x3fbb2c7b32ea0028              # double 0.10614747994441187
	.quad	0x3fef5de80b825ca5              # double 0.98021318672080737
	.quad	0x3fe2ca930801502f              # double 0.58722831309797197
	.quad	0x3fb5847cddd423e0              # double 0.084052852780714726
	.quad	0x3fcbb924e753fa3c              # double 0.21658765120806034
	.quad	0x3fed28409e99bc66              # double 0.9111636254946347
	.quad	0x3fca8a160249d68c              # double 0.20733904945125337
	.quad	0x3fa5651f850444e0              # double 0.041787133204829408
	.quad	0x3fe43071234de48a              # double 0.63091332335820138
	.quad	0x3fe2fe0eacd6d440              # double 0.59351285703326795
	.quad	0x3fe03ecb7be309d0              # double 0.50766538807538986
	.quad	0x3fe76d1f36a1f856              # double 0.73207054777572966
	.quad	0x3fd76984ffad9e52              # double 0.36581540077756813
	.quad	0x3feaaa89e2a39256              # double 0.83331770196361776
	.quad	0x3fea17f0841d76f9              # double 0.81542230418901263
	.quad	0x3fdf5f90ff30bfc2              # double 0.49020790978374518
	.quad	0x3feeb2496ec1b0db              # double 0.95926353103780159
	.quad	0x3fcbdc3b511f30ac              # double 0.21765843831088227
	.quad	0x3fc549ed34cc7ed8              # double 0.16631856039111059
	.quad	0x3fea5052dca2bc9c              # double 0.82230513661297122
	.quad	0x3fef2218a3145a84              # double 0.97291213847604796
	.quad	0x3fd7cab5c7f5507e              # double 0.3717474415509584
	.quad	0x3f90078e7c6f4d60              # double 0.015653826088806055
	.quad	0x3fe1343350ff177a              # double 0.53762212581271673
	.quad	0x3fdcaa77ae051ec0              # double 0.44790451044216795
	.quad	0x3f9afdb3d0f801c0              # double 0.02635842287964052
	.quad	0x3fbdb8caee445ac8              # double 0.11610096280160598
	.quad	0x3fef713177b8d624              # double 0.98256753333288715
	.quad	0x3fb9a72540b85970              # double 0.10020668821412015
	.quad	0x3fda6e6e6ceac69a              # double 0.41299019466814857
	.quad	0x3fe0700ce4f252a0              # double 0.51367802349212255
	.quad	0x3fe1a2ac879a1b43              # double 0.55110765919457838
	.quad	0x3fdfadf5259fba34              # double 0.49499252962314988
	.quad	0x3fa4f45c146dca80              # double 0.040926816457518278
	.quad	0x3fe8203468a5e85d              # double 0.75393124045445925
	.quad	0x3fe1e9447d38543b              # double 0.55972504097974907
	.quad	0x3fefe3634b228d92              # double 0.99650730776595453
	.quad	0x3fc6aa0ec9ac4c20              # double 0.17706475112262954
	.quad	0x3fef615e79614f10              # double 0.98063586909344913
	.quad	0x3fd4db18e0e4a192              # double 0.32587263071266037
	.quad	0x3fc2a6427f81efdc              # double 0.14569884515719778
	.quad	0x3feb62f808975b40              # double 0.85583116224265865
	.quad	0x3fe444659ce1e355              # double 0.63334923401917342
	.quad	0x3fe2e60604f9d7ac              # double 0.59057904216637302
	.quad	0x3fedf413a6e10a29              # double 0.93604452699247986
	.quad	0x3fd7665e28a468fe              # double 0.36562303513495908
	.quad	0x3fbb5200ff459ef8              # double 0.10672003013825904
	.quad	0x3fee6e764c6c8619              # double 0.95098414351031402
	.quad	0x3fe4d70c2a867442              # double 0.65125091844277727
	.quad	0x3fc53e5b09efddb4              # double 0.16596544251636447
	.quad	0x3fe1166e2fa3e524              # double 0.53398808769921802
	.quad	0x3fdd68c4a74e880c              # double 0.45951954210806956
	.quad	0x3fce1084e70375a4              # double 0.23487912445027093
	.quad	0x3fdf5fbd6b02eef8              # double 0.49021850061738759
	.quad	0x3fe6d895511a6c07              # double 0.71393838730307457
	.quad	0x3fe0d9f04f14f1fc              # double 0.5266038460318323
	.quad	0x3fe13fd92e43abee              # double 0.53904398952488264
	.quad	0x3faac9d32460f3f0              # double 0.052321050825845705
	.quad	0x3fe562d2eea5691d              # double 0.66831347094128868
	.quad	0x3fde6276b4acf898              # double 0.4747597469721625
	.quad	0x3fdf0788c96d5770              # double 0.48483485861412756
	.quad	0x3fea51a58c8e1fce              # double 0.82246663524801433
	.quad	0x3fe9f035ac600b65              # double 0.81057246844316622
	.quad	0x3fdf9dd82232e830              # double 0.494009049794502
	.quad	0x3fe676dda3356c57              # double 0.70200998188682717
	.quad	0x3fee1b84fec86221              # double 0.94085931551223123
	.quad	0x3fb45fb5a24962a8              # double 0.079585411186949728
	.quad	0x3fe905711a41c07b              # double 0.7819142830685587
	.quad	0x3fe5623651cc61a6              # double 0.66823879219287075
	.quad	0x3fd1a7930205e25a              # double 0.27585292050892962
	.quad	0x3f9e5ef891da33e0              # double 0.029659160520669192
	.quad	0x3fd5fa3b51d59ebe              # double 0.34339793197294088
	.quad	0x3fc668c28ecf545c              # double 0.17507202122820587
	.quad	0x3fe7734e53be7c2e              # double 0.73282543522134858
	.quad	0x3fc4fae2d9ca19ec              # double 0.16390643724680787
	.quad	0x3fe84ea0e9cc4c7b              # double 0.75959821380310133
	.quad	0x3fe687c3fa5e378f              # double 0.704072941780156
	.quad	0x3fb428753e0de048              # double 0.078742339754058865
	.quad	0x3fea2c730177b4bc              # double 0.81792593275681424
	.quad	0x3fe7d676cfc3ea53              # double 0.74492970065268549
	.quad	0x3fd882e7a35d4f9a              # double 0.38298979714931536
	.quad	0x3fc4abb905e39ee8              # double 0.16149056232028802
	.quad	0x3fe6b5dbd014921c              # double 0.70969954148000935
	.quad	0x3fe8e1cd68291f62              # double 0.77756376594423338
	.quad	0x3fcc96ec5cd58fc0              # double 0.22335581334038856
	.quad	0x3fea97eb133c64ca              # double 0.83104470974935762
	.quad	0x3fde350fc520c968              # double 0.4719886231497612
	.quad	0x3fe1fd29fedd23ba              # double 0.56215381410685628
	.quad	0x3fcff1aa7bcec9d4              # double 0.24956255955983286
	.quad	0x3fe5ac4965f1be0c              # double 0.67728109274861614
	.quad	0x3fb064c33c616ac0              # double 0.064037515870420059
	.quad	0x3fcf47a94a324774              # double 0.24437442896720152
	.quad	0x3fe94c853373aeb5              # double 0.79059085892864422
	.quad	0x3fd33de0b5775680              # double 0.30065171929650347
	.quad	0x3feafad2161504f2              # double 0.8431177550593516
	.quad	0x3fbeb9cf7d9ccf90              # double 0.12002274338448005
	.quad	0x3febd29da8b4abe8              # double 0.8694599432977812
	.quad	0x3fc05a542e3bc6dc              # double 0.12775661714072484
	.quad	0x3fe363bf7008bfd8              # double 0.6059262455146337
	.quad	0x3fe5e27c36830801              # double 0.68389711996883318
	.quad	0x3fa151bc1c224db0              # double 0.033826712068868559
	.quad	0x3fd68ad26376cde8              # double 0.35222301209725382
	.quad	0x3fee24e6b541fb12              # double 0.94200454141523182
	.quad	0x3fe3cca6b5a46983              # double 0.6187318370532896
	.quad	0x3fcbf4b82fa28ae0              # double 0.2184057457535209
	.quad	0x3f8ab04d21d8c680              # double 0.013031580539151877
	.quad	0x3fe458ca6f896c34              # double 0.63583871635945011
	.quad	0x3fd3a3233f9a8520              # double 0.30683213435448131
	.quad	0x3fe283d72b14e964              # double 0.5785938111724076
	.quad	0x3fe7fd6cdd51758a              # double 0.74968569971285715
	.quad	0x3feaf14daf7bf246              # double 0.84195598863841137
	.quad	0x3fba35a7eec24128              # double 0.10238122538635663
	.quad	0x3fec5be1eeb07cf3              # double 0.88621613139176103
	.quad	0x3feef64a1a80088f              # double 0.96756463218504673
	.quad	0x3fecae5cffcbc349              # double 0.89628457985063748
	.quad	0x3fcf49e4377079b0              # double 0.24444248873710483
	.quad	0x3f6e8bc25136d800              # double 0.0037287516840605051
	.quad	0x3fc0ce4cdd0274e8              # double 0.131295783915369
	.quad	0x3fd0f14b3d3153b8              # double 0.26472741103981035
	.quad	0x3fdeee8fdf868480              # double 0.48331066921861776
	.quad	0x3fef23f392d013b3              # double 0.97313860582709421
	.quad	0x3fe86b2e26d87298              # double 0.76308353030215681
	.quad	0x3fea3c9e359fb73c              # double 0.81989965890327409
	.quad	0x3fd1776ca414f7ec              # double 0.27291408561347796
	.quad	0x3fd90074f4def538              # double 0.39065288460900005
	.quad	0x3fc30cc37ccad168              # double 0.14882701485988581
	.quad	0x3fd5cf8e0d8c6350              # double 0.34079314539990424
	.quad	0x3fed332ca2429132              # double 0.91249686900531501
	.quad	0x3fd62ce954355518              # double 0.34649117682904906
	.quad	0x3fb8454448c161b0              # double 0.094806926500843102
	.quad	0x3fd2d05ef6986410              # double 0.29396795350618365
	.quad	0x3fd04bbb14d2c3d2              # double 0.25462224038625181
	.quad	0x3fe396bc10904dfe              # double 0.61215022311301914
	.quad	0x3fdbb97795e7a500              # double 0.4331950153269446
	.quad	0x3feacba678857125              # double 0.83735965289409775
	.quad	0x3faaf8c895030170              # double 0.052679317655477287
	.quad	0x3fc307108a98b8a0              # double 0.14865309493456369
	.quad	0x3fe9d113089501de              # double 0.80677177120383781
	.quad	0x3fd42926f2af9fce              # double 0.31501172733123617
	.quad	0x3fbccc596fbdd608              # double 0.11249312379899135
	.quad	0x3fe7fede1dd5238f              # double 0.74986177279162003
	.quad	0x3fc7f92cf1635070              # double 0.18729173456688697
	.quad	0x3fd47d95e2bb8b70              # double 0.32016513006072156
	.quad	0x3fbfac3fe7abf8c8              # double 0.12372207075165698
	.quad	0x3fe7df865422d79e              # double 0.74603573258240252
	.quad	0x3fe525cf55098cb5              # double 0.66086546524856848
	.quad	0x3fd70baa71d99b74              # double 0.36008702390829872
	.quad	0x3fe7a1be6cf9129f              # double 0.7384941223504774
	.quad	0x3fef86e5e8cd23a7              # double 0.98521705121048774
	.quad	0x3fd9da72ab63d884              # double 0.40395800339991461
	.quad	0x3fd2335bb1cfd954              # double 0.28438465465969398
	.quad	0x3fe7a08ac132dbd2              # double 0.73834741338839138
	.quad	0x3fdbd69ed0359d7c              # double 0.43497438748314443
	.quad	0x3fe2197fc25ac8f0              # double 0.56561267814529792
	.quad	0x3fec785dac130aeb              # double 0.88969310386923206
	.quad	0x3fce2650fc29bbf4              # double 0.23554432213447252
	.quad	0x3fd44e929bf13064              # double 0.31729569653248846
	.quad	0x3fe58027887c4e1f              # double 0.6718938508733493
	.quad	0x3fc39ff05b48a2dc              # double 0.15331844765866876
	.quad	0x3fe04c4d10de63a3              # double 0.50931409163159846
	.quad	0x3fd6e226216aafd8              # double 0.35755303634027547
	.quad	0x3fc137ed1098ea58              # double 0.13451922712723063
	.quad	0x3fc2f2bd36af1bd4              # double 0.14803280992620549
	.quad	0x3fcb101ea0e8b67c              # double 0.21142943245779466
	.quad	0x3fe2ab51aa3b0ff4              # double 0.58341296432672474
	.quad	0x3fe50de9b28d0de0              # double 0.65794834969750227
	.quad	0x3fe10b5bca7f9b9e              # double 0.53263654280168615
	.quad	0x3fd5096a364b2da0              # double 0.32869963934055058
	.quad	0x3fd0f40608b357d6              # double 0.26489401673950164
	.quad	0x3feef5287c1c4db7              # double 0.96742653122276223
	.quad	0x3fc1c7e1e4ded78c              # double 0.13891242671314463
	.quad	0x3fd75cd49f97342c              # double 0.3650409277441351
	.quad	0x3fe1832244a0c74f              # double 0.54725755123056696
	.quad	0x3fe185e6c919a149              # double 0.54759539868704465
	.quad	0x3fce6e666b7d9184              # double 0.23774414299544955
	.quad	0x3fe38a7a6b5b8e04              # double 0.61065407722748022
	.quad	0x3fcfcaa691a7fabc              # double 0.24837190734975489
	.quad	0x3fb1dcbb6dbac200              # double 0.069774355210718397
	.quad	0x3fb009c888eab830              # double 0.062649281908961241
	.quad	0x3fd0ddd105b8913e              # double 0.26353860434234722
	.quad	0x3fe33329f6748e55              # double 0.59999559531974944
	.quad	0x3feb7240486998aa              # double 0.85769666808189027
	.quad	0x3fe7ecaa9411a1af              # double 0.74763993186666322
	.quad	0x3fd0070b6c8e4c36              # double 0.25042996979863419
	.quad	0x3fe7d53dcca498a4              # double 0.74478044480635619
	.quad	0x3fdf49d709434392              # double 0.48888183502736482
	.quad	0x3fe5f3d626a1c9c4              # double 0.68601520104703484
	.quad	0x3fc8a61a29c21c28              # double 0.19256903685547511
	.quad	0x3fe06100dd061157              # double 0.51184123200122655
	.quad	0x3fd6ca88355fd0c2              # double 0.35611157619792888
	.quad	0x3fd1a24d5c7b2790              # double 0.2755311396728013
	.quad	0x3fda807c78174d0c              # double 0.41409217574728596
	.quad	0x3fe46891b3a6ea03              # double 0.63776478851588114
	.quad	0x3fdcc216835f2d6c              # double 0.44934618787075098
	.quad	0x3fdbd720b9109afc              # double 0.43500536034336768
	.quad	0x3fd7f94a3d1ec68a              # double 0.37459045380374134
	.quad	0x3fd419dfe7e72070              # double 0.31407926222573845
	.quad	0x3fe3224314e5e32a              # double 0.59793237764015328
	.quad	0x3fe199022ee384fb              # double 0.54992779882391518
	.quad	0x3fb5abcacf4bc768              # double 0.084652591332795901
	.quad	0x3fdafa89f3887120              # double 0.42154167921559527
	.quad	0x3fe9db2398916f40              # double 0.80800037191827556
	.quad	0x3fe365c1ab1e00c5              # double 0.60617144986465432
	.quad	0x3fe880b8550b000b              # double 0.76571289644198381
	.quad	0x3fe6c566bca61fc1              # double 0.71159684033863624
	.quad	0x3fecf94122b41828              # double 0.90542656686807721
	.quad	0x3fd3e7d866d77ee2              # double 0.31102571528570711
	.quad	0x3feb62c151a5d768              # double 0.85580507227744551
	.quad	0x3fe11e8666183532              # double 0.53497619572013932
	.quad	0x3fdb6efa843c4696              # double 0.42864859498613705
	.quad	0x3fd9385845367740              # double 0.39406401404436409
	.quad	0x3fddfa545e7d3dac              # double 0.46840390422309031
	.quad	0x3fee84ad8872a87f              # double 0.95369602823235755
	.quad	0x3fec74a33341124f              # double 0.88923797617514733
	.quad	0x3fba62ce5b6ccb58              # double 0.10307016117148515
	.quad	0x3fe3dbf1e10fccac              # double 0.62059873540274202
	.quad	0x3fe1330a2375fcba              # double 0.53748042036013222
	.quad	0x3fdc79275c9134ea              # double 0.44489463844077071
	.quad	0x3fa4aa8338a66bc0              # double 0.040363407769482773
	.quad	0x3feed8c4a3515c72              # double 0.96396095178614716
	.quad	0x3feec74d26e9a233              # double 0.96182878112910541
	.quad	0x3fccd77444034d28              # double 0.22532513924543562
	.quad	0x3fe86bbb65e3f95d              # double 0.76315088177197377
	.quad	0x3fe8084a4f4295c3              # double 0.75101199608314351
	.quad	0x3feff1a07e40e24a              # double 0.99824547442319411
	.quad	0x3fd66216c9403dee              # double 0.34973687795078845
	.quad	0x3fec9e265ae74ea5              # double 0.89430539850805657
	.quad	0x3fc204c67ae3eee8              # double 0.14077073097711623
	.quad	0x3fe8f4bae14798ed              # double 0.77987426757752376
	.quad	0x3fd58d592e951d22              # double 0.33675221966810132
	.quad	0x3fdea2f8d2031204              # double 0.47869701870902781
	.quad	0x3fd570dfb16fc892              # double 0.33501427009390128
	.quad	0x3fc0f2aca9a5becc              # double 0.13240583690229923
	.quad	0x3fe55141650c4f72              # double 0.66616887794451274
	.quad	0x3fdecb9319ce87ba              # double 0.48117520828429472
	.quad	0x3febf231872e7e66              # double 0.87331463244113361
	.quad	0x3fdd67cedbb07644              # double 0.45946093992265369
	.quad	0x3fc12c39182b69d0              # double 0.13416207962184368
	.quad	0x3fe857c183f2a5e8              # double 0.76071239253104483
	.quad	0x3fce53c3e6c32958              # double 0.23693131225293018
	.quad	0x3fd7f4f19fdc2cc0              # double 0.37432518588384411
	.quad	0x3fe6c057dbe75efc              # double 0.71097939443549718
	.quad	0x3febb5bb9ba5ad55              # double 0.86593418502654151
	.quad	0x3feaf80de814dc7c              # double 0.84278006866851695
	.quad	0x3fdcbf34472fef92              # double 0.44917017890815558
	.quad	0x3fe940f07242e3ad              # double 0.7891771537461999
	.quad	0x3fe3bce706f7f990              # double 0.61680938111367034
	.quad	0x3fdc5c2c3ea558d2              # double 0.44312578313600881
	.quad	0x3fdbbbe84c83b3ce              # double 0.43334395858874764
	.quad	0x3fe3dda80f93e8fc              # double 0.62080767672094295
	.quad	0x3fdd6947e45cd0fa              # double 0.45955083180457701
	.quad	0x3fb3b1f4c23db200              # double 0.076934144422644124
	.quad	0x3fe1d054c0450499              # double 0.55668103745132946
	.quad	0x3fe88bc60fd5d41e              # double 0.76706221669030916
	.quad	0x3feed9de25b4a0f7              # double 0.96409518589373888
	.quad	0x3fc972a95954f9f8              # double 0.1988116918746099
	.quad	0x3fd0b9d2a4f03e42              # double 0.26134172541876322
	.quad	0x3fb9c27845fbd730              # double 0.10062362392986013
	.quad	0x3fcdc90c283fd268              # double 0.23269798245714246
	.quad	0x3fd41d30b444c69a              # double 0.31428163151131516
	.quad	0x3fef9765b50b6cfd              # double 0.98723111496238369
	.quad	0x3fec21cb5e5c1a5d              # double 0.87912529401439665
	.quad	0x3fe581781fd495f2              # double 0.67205435006024872
	.quad	0x3fe47c42382ba920              # double 0.64016829462824276
	.quad	0x3fe153a2c9b2e826              # double 0.54145945925052241
	.quad	0x3fe032ca6a2053d5              # double 0.50620003440655614
	.quad	0x3fd10a463d72a540              # double 0.26625209809079209
	.quad	0x3fa90af142d305b0              # double 0.048911609084380969
	.quad	0x3fe33c7f16a173a7              # double 0.60113481922200129
	.quad	0x3fe3f14273ccb151              # double 0.62320063225846856
	.quad	0x3feb77f605e4cab4              # double 0.85839368010632322
	.quad	0x3fb27c1d5455b278              # double 0.072206338014163651
	.quad	0x3fcb4d1e4fa3e418              # double 0.2132909668796692
	.quad	0x3fe8fb324ba212a0              # double 0.78066363117303083
	.quad	0x3feccddd863801cb              # double 0.90013004507641747
	.quad	0x3fe1e4bf8d8d2b97              # double 0.55917337080733176
	.quad	0x3fe5ac5615b8dfde              # double 0.67728714220629249
	.quad	0x3fb6c86398f439b8              # double 0.088995194284712364
	.quad	0x3fa29bcf0d5985b0              # double 0.036344976787187178
	.quad	0x3faa2b61a7b971a0              # double 0.0511122243158042
	.quad	0x3fe69bddfaa815db              # double 0.70652674633373225
	.quad	0x3fec64a956cf6a7f              # double 0.88728777842636919
	.quad	0x3fe5ca3ca9fa8b01              # double 0.68093712996446254
	.quad	0x3feb4d330708f505              # double 0.85317374586125594
	.quad	0x3fd3bb4d827e7b6e              # double 0.30830705398141489
	.quad	0x3fbda26637815ed8              # double 0.11575926642523926
	.quad	0x3fdc9d8e9930e820              # double 0.44711651763975802
	.quad	0x3fe8f1c722babdac              # double 0.77951390059563641
	.quad	0x3fd2405bdccad6a2              # double 0.28517815171958649
	.quad	0x3fe5cb38624caceb              # double 0.6810571594154714
	.quad	0x3fe0c2d1d88d59a4              # double 0.52378170295087445
	.quad	0x3fdc91b9512e19ac              # double 0.44639428069822418
	.quad	0x3fdf34763ef63414              # double 0.48757702015501647
	.quad	0x3fe8e67f18acbeef              # double 0.77813677615446675
	.quad	0x3fda757e968fc254              # double 0.41342129424359553
	.quad	0x3fddbca102da9a2e              # double 0.46463799742415091
	.quad	0x3fdda1a9f6ccfd22              # double 0.46299218274721643
	.quad	0x3fd601b378a612a6              # double 0.34385382444478763
	.quad	0x3fe33a107314d24b              # double 0.60083792187521945
	.quad	0x3fe932e49908ff7c              # double 0.7874625195472471
	.quad	0x3fcfc1117bb412c4              # double 0.24807947673993713
	.quad	0x3feced0e4956f419              # double 0.90393747638848077
	.quad	0x3fd545ffe6f87a12              # double 0.33239743762706653
	.quad	0x3fe5a943fdcc28d5              # double 0.67691230363677823
	.quad	0x3feecfdb951edd42              # double 0.96287325978384097
	.quad	0x3fe22769f2552abb              # double 0.56731126146890831
	.quad	0x3fc224c32f8b2fa8              # double 0.14174690076322105
	.quad	0x3fe2a85415bc4ae2              # double 0.58304790730684553
	.quad	0x3fc49f5c333ebf5c              # double 0.16111328603937636
	.quad	0x3fc689cfda8dbfec              # double 0.17608068629806384
	.quad	0x3fc8edbe63211808              # double 0.19475536194130449
	.quad	0x3fd6157ea2fffc92              # double 0.34506193082774772
	.quad	0x3f9bfb7801f2cca0              # double 0.027326464766428971
	.quad	0x3fd61786bc34189c              # double 0.34518593196151826
	.quad	0x3fd7539e817be3ae              # double 0.36447870869556709
	.quad	0x3fc8d6d9ab9dcf60              # double 0.19405671004971747
	.quad	0x3febe16782e90b3a              # double 0.87126517837928152
	.quad	0x3fdcfb53b7835ca2              # double 0.4528397838707382
	.quad	0x3fc3bbf3a32a7f68              # double 0.1541733309468285
	.quad	0x3fe15d2fa8fbefc1              # double 0.54262526516640019
	.quad	0x3fb6cca937c9bd50              # double 0.08906037914288345
	.quad	0x3fd88fb7ca7bdc1e              # double 0.3837718465214851
	.quad	0x3fdf2f97e0f17f28              # double 0.48727986304401094
	.quad	0x3f9f797371acd9a0              # double 0.030736736119445163
	.quad	0x3fe3e5343b75714f              # double 0.62172900784529783
	.quad	0x3fee92d4a9534a71              # double 0.95542367049558952
	.quad	0x3fe9d12939c98fa9              # double 0.80678235327331038
	.quad	0x3fdcd53eabe1ff46              # double 0.45051543031148744
	.quad	0x3fe9ae494b23289b              # double 0.80252518344174761
	.quad	0x3fdd48966c924d7e              # double 0.45755539515194943
	.quad	0x3fe4f959779a2832              # double 0.65543816909599273
	.quad	0x3fe59ced03f1f203              # double 0.67540598650481376
	.quad	0x3fee86a0f1a9220c              # double 0.95393416594839797
	.quad	0x3fda30cc87c354d8              # double 0.40922845132929586
	.quad	0x3f9a5b22eaf3e360              # double 0.025738282766698872
	.quad	0x3fee1fcccabcd090              # double 0.94138183209590132
	.quad	0x3fe8a8341fc65a67              # double 0.77053266721743519
	.quad	0x3fc1bf004d3520f0              # double 0.1386413933744346
	.quad	0x3fe41d7969e798a6              # double 0.62859793362146799
	.quad	0x3fcdef4ccbc6508c              # double 0.2338653559678544
	.quad	0x3fd699860f14e1ea              # double 0.35312034104165824
	.quad	0x3fd45c1ee6bcfa80              # double 0.31812260182406504
	.quad	0x3fd930480281435c              # double 0.39357185597059696
	.quad	0x3feae1552cd5f9e5              # double 0.84000643498421523
	.quad	0x3fc16684d59116e4              # double 0.13594112804474101
	.quad	0x3fe8feb14366286d              # double 0.7810903850925236
	.quad	0x3fe7ec9566fecc88              # double 0.74762983433028385
	.quad	0x3fd3d2c877d01df4              # double 0.30974017811283194
	.quad	0x3feb6f0cadfa25bc              # double 0.85730585079107113
	.quad	0x3fe316baf705db90              # double 0.59652469870239777
	.quad	0x3fec48bb8d4db356              # double 0.8838784942468958
	.quad	0x3fe28764f1c548bb              # double 0.57902762623623205
	.quad	0x3fe5cfebd563c581              # double 0.68163100888902772
	.quad	0x3fc77420401034a4              # double 0.18323138359156588
	.quad	0x3fd262a0002f9e08              # double 0.28726959245838701
	.quad	0x3f919aac1f9e5360              # double 0.017191590719068173
	.quad	0x3fec5e47b99781c2              # double 0.88650881050494257
	.quad	0x3fd590eda7764eca              # double 0.33697072366451819
	.quad	0x3fe4789f46dde559              # double 0.63972438660781983
	.quad	0x3fc8737ff3857f98              # double 0.19102477446267296
	.quad	0x3fdf42fe50b65018              # double 0.48846395380064811
	.quad	0x3fc8201c39026670              # double 0.18847992690716664
	.quad	0x3fd3d1e49af63c70              # double 0.3096858514117633
	.quad	0x3fe19fc387da76b1              # double 0.55075241597997693
	.quad	0x3fe2f26b6efb62d8              # double 0.59209224392096882
	.quad	0x3f8510b5e7d89780              # double 0.010285779130821515
	.quad	0x3fef5831259682e3              # double 0.97951562253373614
	.quad	0x3fe15481556f3fad              # double 0.54156557737768696
	.quad	0x3fe5201bdf94300f              # double 0.6601695410513474
	.quad	0x3fe609a0544cf666              # double 0.68867508377998088
	.quad	0x3fd8ce6220ecab12              # double 0.38759663787156839
	.quad	0x3fe3aa5df1291ccb              # double 0.61454674817732646
	.quad	0x3fe3eadff391214c              # double 0.62242124149001077
	.quad	0x3fed9e29f3ca9cd7              # double 0.92555711379545869
	.quad	0x3fd37fb7d0730b50              # double 0.30467028957734943
	.quad	0x3fc64fd7a1845d04              # double 0.17431159388136319
	.quad	0x3fb971f579241458              # double 0.099395124507354438
	.quad	0x3fe8dc6787288fdc              # double 0.7769048347295171
	.quad	0x3fd3d9fc4c5ef248              # double 0.3101797815141123
	.quad	0x3f912f7b128a04e0              # double 0.016782687193431012
	.quad	0x3fec101b353584bc              # double 0.87696609871286268
	.quad	0x3fdaa5abd899e40e              # double 0.41636177208380409
	.quad	0x3fe830150b43ae05              # double 0.755869409561854
	.quad	0x3feabb79a672e1ad              # double 0.83538515576861061
	.quad	0x3fd60ec2f89bb076              # double 0.34465097692623858
	.quad	0x3fc616e2edc7eb58              # double 0.17257343874356468
	.quad	0x3fe75ec1a8e162dd              # double 0.7303169535108186
	.quad	0x3fe5c17994b7675f              # double 0.67986754461456289
	.quad	0x3fb2b3bb4b6d1f18              # double 0.073054986872304162
	.quad	0x3fd23fda02898240              # double 0.28514719245689335
	.quad	0x3fc624cd9ccc41c4              # double 0.17299814373155986
	.quad	0x3fd1f51475d54046              # double 0.28058349139337613
	.quad	0x3fc67cc6e1d291dc              # double 0.17568288828364487
	.quad	0x3fd3f7da8a6ecf84              # double 0.31200278776963608
	.quad	0x3febe619b2ee3a97              # double 0.87183842608813478
	.quad	0x3fe9583294094725              # double 0.79201630509689791
	.quad	0x3fddde7e0cc6a2b6              # double 0.46670485732696976
	.quad	0x3fe6cece2dc966d5              # double 0.7127447981140117
	.quad	0x3fc3840232dce2c0              # double 0.15246608241593229
	.quad	0x3fdc13092baed914              # double 0.4386618544189258
	.quad	0x3fedaaca524bf896              # double 0.92709842752062133
	.quad	0x3fd0cce5d112d3fe              # double 0.26250596444452856
	.quad	0x3fed4e89dee16fd7              # double 0.9158372262131661
	.quad	0x3fe412eebaaba4f7              # double 0.62731110056952744
	.quad	0x3fead8b1bae7b59f              # double 0.8389519358149079
	.quad	0x3fdcfab840f0489c              # double 0.45280271855984622
	.quad	0x3faf9d30a0db0f20              # double 0.061746139178948889
	.quad	0x3fc5587e78e9596c              # double 0.16676312354929779
	.quad	0x3fee7b8d749f3373              # double 0.95258209970198349
	.quad	0x3feb520043198c52              # double 0.85375989060811208
	.quad	0x3fb11c614a4d22d0              # double 0.066839295043915614
	.quad	0x3fe5f570c7278f51              # double 0.68621100327843909
	.quad	0x3fdb13c6354c1810              # double 0.4230819244843369
	.quad	0x3fe0381cb1f3ab3d              # double 0.50684962040154569
	.quad	0x3fd1be95dfc21eae              # double 0.27725741244692415
	.quad	0x3fdb67c60996e8a6              # double 0.42820883690331824
	.quad	0x3fee8b4121b79219              # double 0.95449883065572572
	.quad	0x3fe067515fb4b51f              # double 0.51261204426342377
	.quad	0x3fecb40f5d9602e3              # double 0.89697998312484761
	.quad	0x3fec54bc5068d81c              # double 0.88534370141019591
	.quad	0x3fa5c38d94faa000              # double 0.0425075764044891
	.quad	0x3fe87bd618e65d12              # double 0.76511673796895452
	.quad	0x3fdec8da2fef7ebc              # double 0.48100905114368309
	.quad	0x3fa6758969902d90              # double 0.04386548436749671
	.quad	0x3fe407b1d28611a8              # double 0.62593928449546343
	.quad	0x3fee08190b875207              # double 0.93848850490263735
	.quad	0x3fb7050b620809d8              # double 0.089920722421119037
	.quad	0x3fc1e676ade6a794              # double 0.13984569064387797
	.quad	0x3fdae80d64d33420              # double 0.42041334959214005
	.quad	0x3fd7d857b10754e6              # double 0.37257950103714987
	.quad	0x3fdaec7c425af726              # double 0.4206839225770288
	.quad	0x3fb169fa9e375c68              # double 0.068023360850348547
	.quad	0x3f87ee146eaf6c00              # double 0.011684569957585822
	.quad	0x3fe2547e45eef546              # double 0.57281411799309789
	.quad	0x3fe5e739b692251b              # double 0.68447576197027915
	.quad	0x3fde66e169c3d37a              # double 0.47502932861907932
	.quad	0x3fe07a617309bc9d              # double 0.5149390456043822
	.quad	0x3fd12a6f022a27c8              # double 0.26821494304078586
	.quad	0x3fc00655c3f1840c              # double 0.12519332950162754
	.quad	0x3fe5a428eaebec91              # double 0.67628904231186671
	.quad	0x3fe4f7f3e2cdfd6b              # double 0.65526766107352097
	.quad	0x3fc0b1d4200c88d8              # double 0.13042689862147117
	.quad	0x3fee010dedcb67ca              # double 0.93762871212242627
	.quad	0x3fd0d7a92a4662fa              # double 0.26316289070523136
	.quad	0x3fdf5ca63cc8b87c              # double 0.49002986846870278
	.quad	0x3feaad31150c1a70              # double 0.83364156828686298
	.quad	0x3feb14fddce6da10              # double 0.84631245751262618
	.quad	0x3fc8e7a43f6e0314              # double 0.19456914040713313
	.quad	0x3fd1718990c1742c              # double 0.27255477081581847
	.quad	0x3fdaf98eae9a04d8              # double 0.42148177195492798
	.quad	0x3f660ac681087f00              # double 0.0026906849891615847
	.quad	0x3fdb7333ad2148a6              # double 0.42890636355617529
	.quad	0x3febcb8e6eb78ac3              # double 0.86859819054037535
	.quad	0x3fd9c7efe9a5b55a              # double 0.40282819573515882
	.quad	0x3f9e40562bfea3e0              # double 0.029542299685690554
	.quad	0x3fe530fdc6c4cabb              # double 0.66223038503661458
	.quad	0x3f93b4c4ba73a080              # double 0.019244264488321949
	.quad	0x3fdd6b2b990614b2              # double 0.45966615623212725
	.quad	0x3fe5126064d37e12              # double 0.65849322979551261
	.quad	0x3fea596b85cdd7c0              # double 0.82341552861793588
	.quad	0x3fa67c299a951210              # double 0.043916034812841898
	.quad	0x3fdbe71790877008              # double 0.43597973932423928
	.quad	0x3fe419bf7ed1f643              # double 0.62814306993067992
	.quad	0x3fd26e3c2ba478e0              # double 0.28797821294746306
	.quad	0x3fd85137f71b3972              # double 0.37995719081381829
	.quad	0x3fd2bf52156afaa8              # double 0.29292728511419819
	.quad	0x3fe0ba94c7d610e7              # double 0.52277602224833408
	.quad	0x3fecab4612ca72e2              # double 0.89590743703919551
	.quad	0x3fec7c690003b602              # double 0.89018678667861217
	.quad	0x3fd3a7e0abfa431a              # double 0.30712143702207728
	.quad	0x3fe4892b8ea98d72              # double 0.64174440253957088
	.quad	0x3fe67fe1801ceeb5              # double 0.70311045667718608
	.quad	0x3fc27d59e37113fc              # double 0.14445041280319504
	.quad	0x3fd38639e237a952              # double 0.30506751147790567
	.quad	0x3fdecb11e00d9e6c              # double 0.48114439850039648
	.quad	0x3fe76f87589e2cb7              # double 0.73236434276750273
	.quad	0x3fe616d4537e8cae              # double 0.69028679187285547
	.quad	0x3fe0435ba7512084              # double 0.50822241477091312
	.quad	0x3fe738fd6194b552              # double 0.72570675905960003
	.quad	0x3fc24e505eec8698              # double 0.14301495203931291
	.quad	0x3fdd28198741d46e              # double 0.45557249268251254
	.quad	0x3fef81d488cf8a02              # double 0.984598414619825
	.quad	0x3fcde2e267975fb0              # double 0.23348646219414837
	.quad	0x3fda1b9af9bdfde8              # double 0.40793489827043894
	.quad	0x3fd64046e0587708              # double 0.34767314823862749
	.quad	0x3fed933646e0c3be              # double 0.92422021716458125
	.quad	0x3fc62fb136479a6c              # double 0.17333045149208048
	.quad	0x3fed38278d7d35ad              # double 0.91310479769315622
	.quad	0x3feed69b479245c9              # double 0.9636970899466003
	.quad	0x3fea8d164c5df8c6              # double 0.82972254672474643
	.quad	0x3feb8531dd05e9de              # double 0.86000912827085663
	.quad	0x3fe5de467a7c1bd3              # double 0.68338321612179198
	.quad	0x3fe11552af2eb02c              # double 0.53385290351207493
	.quad	0x3fe67ca65d78804e              # double 0.70271604782102215
	.quad	0x3fd789c199b73e58              # double 0.3677829743510066
	.quad	0x3fe290ab982d0b79              # double 0.58015994760385958
	.quad	0x3fe4ff3a85b95bb9              # double 0.6561558353231397
	.quad	0x3fe9fb4ae15c99d7              # double 0.8119253541561261
	.quad	0x3feb6374bf512859              # double 0.85589063040357438
	.quad	0x3fde0f89a59b90a0              # double 0.46969834492325369
	.quad	0x3f91a4ad5a689240              # double 0.017229756014915276
	.quad	0x3feef3ba24836cc7              # double 0.96725184566039323
	.quad	0x3fd784443782d9fe              # double 0.36744790478715561
	.quad	0x3fed0f1a51266e80              # double 0.90809360360749736
	.quad	0x3fbd0da956ccab70              # double 0.11348970765236088
	.quad	0x3fe70cd5f653fd5d              # double 0.72031686888650948
	.quad	0x3f95fc179156af60              # double 0.021469467397465691
	.quad	0x3feca5fcc3d0db1f              # double 0.89526212926179827
	.quad	0x3f76306b2df54980              # double 0.0054172693920285786
	.quad	0x3f97b26fce630d00              # double 0.023141619655473455
	.quad	0x3fe60bc38274a7d1              # double 0.68893599967599972
	.quad	0x3fed585eb5b1d904              # double 0.91703734862565555
	.quad	0x3fd4e48590d70008              # double 0.32644786018863714
	.quad	0x3f94366ef37ceac0              # double 0.019738896952939511
	.quad	0x3fd9058600592986              # double 0.39096212419521981
	.quad	0x3fd659d57223e120              # double 0.34923301836490062
	.quad	0x3fe91f39a4572de7              # double 0.78506166551363499
	.quad	0x3fd9492c8d24b1a2              # double 0.39509118827370504
	.quad	0x3fcec1ad724702b8              # double 0.2402855689997716
	.quad	0x3fd74549c423391e              # double 0.36360401300488998
	.quad	0x3fe81c4050b76162              # double 0.75344863667400497
	.quad	0x3fe91cc87f33db43              # double 0.78476357311488021
	.quad	0x3fe7d4016f2e7143              # double 0.74462959017868291
	.quad	0x3fed6338bcaa418c              # double 0.91836201523442317
	.quad	0x3fe03142431bda87              # double 0.50601304156482818
	.quad	0x3fdf56caa6237dbe              # double 0.48967233871914206
	.quad	0x3fe685b9cfe7af4c              # double 0.70382395369004191
	.quad	0x3fd00cfd75833856              # double 0.25079285121762973
	.quad	0x3fd1a535913ac972              # double 0.27570857222158118
	.quad	0x3fe6dbfc0045c3c6              # double 0.71435356190897248
	.quad	0x3fc7500a97ebeb40              # double 0.18213016908688395
	.quad	0x3fdb2a2dccda4216              # double 0.42444939618238331
	.quad	0x3fe5189c4de2beaa              # double 0.6592542191701416
	.quad	0x3fe74fa9f48a5a43              # double 0.72847459565930028
	.quad	0x3fcce409d2633844              # double 0.22570917866545603
	.quad	0x3fd9cf862393c904              # double 0.40329125856727921
	.quad	0x3fe2678c526fc2c9              # double 0.5751401529397181
	.quad	0x3fded23cee2f6dd2              # double 0.4815819097545645
	.quad	0x3fe93aba7e870ece              # double 0.78841900551238964
	.quad	0x3fefbe0aa9cb3fe4              # double 0.99194844401244752
	.quad	0x3fe0e706b031179c              # double 0.52820143139318843
	.quad	0x3fda6ca3658b7c2e              # double 0.41288075367441734
	.quad	0x3feaa70c4129ee9e              # double 0.83289158561042931
	.quad	0x3fe0aa2f929733dd              # double 0.52077463751777098
	.quad	0x3fe1f1052dea32c3              # double 0.56067141502133955
	.quad	0x3fa13a0eff64f770              # double 0.033646076847147266
	.quad	0x3fc0fddfb4d756c0              # double 0.13274761514792566
	.quad	0x3fcce072766b59d4              # double 0.22559958250231082
	.quad	0x3fe5476c59da32c9              # double 0.66496865796360638
	.quad	0x3f664ad7f0dc8c00              # double 0.0027212350459122625
	.quad	0x3fe6fc0524099553              # double 0.71826417006074406
	.quad	0x3feb000995e9a4c7              # double 0.84375457076853244
	.quad	0x3fe23af5a9672589              # double 0.56969721876628043
	.quad	0x3fef7d30a899989e              # double 0.98403199128803798
	.quad	0x3fc58ec76e3734d4              # double 0.16841977006553199
	.quad	0x3fd3a04a77f30232              # double 0.30665837968629994
	.quad	0x3fe4238d5cd8ef57              # double 0.62933986791856966
	.quad	0x3fe02791df3939b8              # double 0.50483029936167778
	.quad	0x3fc4bf2d19954308              # double 0.16208423375294267
	.quad	0x3fcba5cb6e41e384              # double 0.21599715121899632
	.quad	0x3fd25dfb85baf2fc              # double 0.28698623714062399
	.quad	0x3fb640279b1fed30              # double 0.086916423198933001
	.quad	0x3fd9843b51d87efc              # double 0.39869578354590351
	.quad	0x3fce80577f67d650              # double 0.2382916805360531
	.quad	0x3fddaee4a07d82fa              # double 0.46379962609175573
	.quad	0x3feb1fb14dd3b4ed              # double 0.84761872482854772
	.quad	0x3f946a15a358f620              # double 0.019935930342617536
	.quad	0x3fcfcb34c647dac4              # double 0.2483888595740692
	.quad	0x3fe0b6c083aee334              # double 0.52230859488836368
	.quad	0x3fee0cbbf9223480              # double 0.93905447634610084
	.quad	0x3fd460c0c004df6a              # double 0.31840533019884865
	.quad	0x3fdacc1601ef02da              # double 0.41870641888458027
	.quad	0x3fd2f6eb5a9bb5aa              # double 0.2963207611890889
	.quad	0x3fe4cf722b1ddd7a              # double 0.65032299443457409
	.quad	0x3fef5ff2bcfc97b9              # double 0.98046242629492674
	.quad	0x3fefb55ccddb8937              # double 0.99088897902064487
	.quad	0x3fd5f228604b4300              # double 0.34290513423643176
	.quad	0x3fe6cf7d73ecac10              # double 0.71282837525848386
	.quad	0x3fc469e0b639d9fc              # double 0.15948113343956993
	.quad	0x3fe714aed1bcd24a              # double 0.72127476658222034
	.quad	0x3fbceb1bcadb3d58              # double 0.11296247198628373
	.quad	0x3f949234887a53a0              # double 0.020088978605219077
	.quad	0x3fd6b567af643f94              # double 0.3548220837410494
	.quad	0x3fdc2bcd155a17dc              # double 0.44017340741299704
	.quad	0x3fd4dd3343e25c34              # double 0.32600099210089017
	.quad	0x3fcaaef27a00d908              # double 0.20846396405404044
	.quad	0x3fddf3aab080543e              # double 0.46799723850682884
	.quad	0x3fd9d87b61fcc5b0              # double 0.4038380104930992
	.quad	0x3feda8c48ae87097              # double 0.92685153131926057
	.quad	0x3fd9bec4f5ccfeb8              # double 0.40226863864880213
	.quad	0x3fec56ec8c105e40              # double 0.8856108413337509
	.quad	0x3fee62772603bd26              # double 0.94951970505454564
	.quad	0x3fe29cc1e4f357d8              # double 0.5816354247751816
	.quad	0x3fd2f51e2438cae6              # double 0.29621079957284591
	.quad	0x3fcc70d3067ffa80              # double 0.2221931249368545
	.quad	0x3fd212e0f78e5068              # double 0.28240226912863031
	.quad	0x3fdb32ee31450772              # double 0.42498354732025867
	.quad	0x3fe00711867c23c5              # double 0.50086284891687483
	.quad	0x3fe567e45eb8b9b9              # double 0.6689321374922691
	.quad	0x3fed7b6be8da42de              # double 0.9213161037351616
	.quad	0x3fd6acc16d05f6dc              # double 0.35429416319662521
	.quad	0x3fea49dd6baf083c              # double 0.82151671440102047
	.quad	0x3fdf567952eea5cc              # double 0.48965294932221748
	.quad	0x3fe7574d3d7434e7              # double 0.7294069481155504
	.quad	0x3fe5ad70dd1509f3              # double 0.67742198162187461
	.quad	0x3fe397f3162a8af4              # double 0.61229852990467615
	.quad	0x3fe64ce6ecb07c42              # double 0.6968874571647421
	.quad	0x3fed5941d861520a              # double 0.91714565526723502
	.quad	0x3fd9d2f9f15e1492              # double 0.4035019738296991
	.quad	0x3fdee3a5e3be39f2              # double 0.48264453163656562
	.quad	0x3fe6f9b812e2f737              # double 0.71798328102861475
	.quad	0x3fc69e08c2948ef8              # double 0.17669782162658243
	.quad	0x3fe1daf496e3e1ce              # double 0.55797795744643408
	.quad	0x3fcf50fdeee28d40              # double 0.24465917743973797
	.quad	0x3fa448025441cff0              # double 0.039611885819709758
	.quad	0x3fe36df358c8239c              # double 0.60717170086092009
	.quad	0x3fb69307d8a84320              # double 0.088181009669153543
	.quad	0x3fe36e4cb0dc38c5              # double 0.60721430342689386
	.quad	0x3fe6edd929647ab2              # double 0.71653421482536417
	.quad	0x3fef63163070355c              # double 0.98084554157837144
	.quad	0x3fd47abdaca746e6              # double 0.31999151096998302
	.quad	0x3fe7ba61f9eb95e6              # double 0.74150179684209827
	.quad	0x3fddc1e1de5a9552              # double 0.46495863641969948
	.quad	0x3fe5acc922f9f336              # double 0.67734200316735982
	.quad	0x3fef1a8c93cb1476              # double 0.9719908606135863
	.quad	0x3fd79c480cff7212              # double 0.36891366261787184
	.quad	0x3fd19308439f0186              # double 0.27459913829445559
	.quad	0x3fad4cc50d1a7e50              # double 0.057226331567332367
	.quad	0x3fc3154be1916318              # double 0.14908741487558852
	.quad	0x3fdaeaba9426a960              # double 0.42057671039460409
	.quad	0x3fb576a00bc44978              # double 0.083841326592198118
	.quad	0x3fdc6fd685c73164              # double 0.44432604851023982
	.quad	0x3fbe7aa3d973c5a0              # double 0.11905883845226706
	.quad	0x3fe19d87b1fc1415              # double 0.55047974360116092
	.quad	0x3fd4b6509490e636              # double 0.32362761028670961
	.quad	0x3fecd3f44ddd77ee              # double 0.90087332923917329
	.quad	0x3fe743ea7c62a237              # double 0.72704052251817231
	.quad	0x3fd0f5263da66cd8              # double 0.26496273060338416
	.quad	0x3fd5b36dadf2d500              # double 0.33907644259609526
	.quad	0x3fd898f1342c6a7c              # double 0.38433485121792166
	.quad	0x3fb47fd3860b5a68              # double 0.080075474000616986
	.quad	0x3fe844104b4252dc              # double 0.75830855082548564
	.quad	0x3fef9309c51cb056              # double 0.98669899462175681
	.quad	0x3fee59475a2e2600              # double 0.94839828122456992
	.quad	0x3fb65b5320414620              # double 0.087331004500150744
	.quad	0x3fe4c0f0f974837b              # double 0.64855240556435889
	.quad	0x3fe59380dcdd7ab5              # double 0.67425578248715701
	.quad	0x3fe127781de0d29e              # double 0.53606801829899431
	.quad	0x3fd91d20914858f8              # double 0.39240278423075337
	.quad	0x3fe0d7b4b59e875b              # double 0.52633128616819691
	.quad	0x3f7fef294f220680              # double 0.0077964414250587532
	.quad	0x3fccf7b752508e34              # double 0.22630969542761792
	.quad	0x3fe5dcbc4e98dc86              # double 0.68319526053427704
	.quad	0x3fdefe461794e046              # double 0.48426964095006431
	.quad	0x3faaf57355e83850              # double 0.052653888928134607
	.quad	0x3fd676d72dba7cda              # double 0.351003451019961
	.quad	0x3fd01df1541d07cc              # double 0.25182755674552193
	.quad	0x3fba14536bed6cd0              # double 0.10187264809558205
	.quad	0x3fc2b65070e2a4f8              # double 0.14618878852824202
	.quad	0x3fe7bf9e28e89be7              # double 0.74214084615675524
	.quad	0x3fe768bca58c02eb              # double 0.73153526624090881
	.quad	0x3fad55b243142020              # double 0.057294436157519835
	.quad	0x3fd2f756131401d0              # double 0.29634620535946699
	.quad	0x3fe615be09db74ee              # double 0.690154093983123
	.quad	0x3fdb5632794110cc              # double 0.42713605729319393
	.quad	0x3fdb0aee242ba866              # double 0.42254212887076503
	.quad	0x3fd4a76f7b19a796              # double 0.32271945020203796
	.quad	0x3fe291c7687cec32              # double 0.58029528053100976
	.quad	0x3fb932e67b2a3788              # double 0.098432927197988573
	.quad	0x3fd8e297196d90a0              # double 0.38882997019960364
	.quad	0x3fdb0db3f94c1d4c              # double 0.42271136613313298
	.quad	0x3fe57cbc942c3e94              # double 0.67147664012914499
	.quad	0x3fed08de46e5de4c              # double 0.90733255240679389
	.quad	0x3fe44ad63b31359a              # double 0.63413535653096464
	.quad	0x3fe086a4fe54daa7              # double 0.51643609689820813
	.quad	0x3fc3399f118f4988              # double 0.15019596440704341
	.quad	0x3fe8ecbd02045df9              # double 0.77889871972996538
	.quad	0x3fed66bb2e8b1865              # double 0.91879042711731229
	.quad	0x3fde3aa88141bb90              # double 0.47233021376353523
	.quad	0x3febaa4be4632fc6              # double 0.86453814131663687
	.quad	0x3fc506e11d2503d4              # double 0.16427244113040607
	.quad	0x3fefaad9381e1022              # double 0.98960553131519569
	.quad	0x3fe434ba17997ebd              # double 0.63143639191908785
	.quad	0x3fe8f6ab53536d7f              # double 0.78011099123561667
	.quad	0x3fe864c235f38cfa              # double 0.76229963815094881
	.quad	0x3fb2e750d2e22028              # double 0.073842097745114743
	.quad	0x3fead7d307d6713e              # double 0.83884574442667037
	.quad	0x3fe0cf1212868799              # double 0.52527717226279258
	.quad	0x3fdc0fd1683d9f76              # double 0.43846545390851277
	.quad	0x3fe66dfa4582fd86              # double 0.70092500282764614
	.quad	0x3fe706059dcd2e41              # double 0.71948509998896537
	.quad	0x3fe718228a3420a6              # double 0.72169615738768722
	.quad	0x3fea2d67390382d8              # double 0.8180423844861151
	.quad	0x3fcfa43e540d3980              # double 0.24719981292805571
	.quad	0x3fe6baf02eaded2a              # double 0.71031960599012689
	.quad	0x3fdf4856dd9dad3c              # double 0.48879024164371621
	.quad	0x3fdcfff6756ddea2              # double 0.45312272517865371
	.quad	0x3fde4ad6bc8be32e              # double 0.47331779873597923
	.quad	0x3fdbe2de9f1114d0              # double 0.43572202237949131
	.quad	0x3feba7928e3404de              # double 0.86420562528669698
	.quad	0x3fee38b826d82a63              # double 0.94442374789043659
	.quad	0x3faa874a953646d0              # double 0.051813441004140537
	.quad	0x3fe2bff3131d64cd              # double 0.5859313367210689
	.quad	0x3fec597858e66ea5              # double 0.88592164386087247
	.quad	0x3fd67e48a7223282              # double 0.35145775148047431
	.quad	0x3fe2c9f92dac41e4              # double 0.58715495033726173
	.quad	0x3fcc111570e066a8              # double 0.21927135478545279
	.quad	0x3fef2c5fce2a5bc7              # double 0.97416677729312872
	.quad	0x3fe0eecc3fcd01ac              # double 0.52915012799353667
	.quad	0x3fe20ded1bdaf804              # double 0.56419997635362096
	.quad	0x3fe6630bde23c9ba              # double 0.69959061991385529
	.quad	0x3fe0a066994fa233              # double 0.51958017295425518
	.quad	0x3fdad1b2bdfc5e42              # double 0.41904896310140682
	.quad	0x3fe7d6644d403fc5              # double 0.74492087448197053
	.quad	0x3fd1d156daa14748              # double 0.27840205526910156
	.quad	0x3fe7ad02ba01546a              # double 0.73986946419848931
	.quad	0x3fd2e5a92e48b510              # double 0.29526738662646412
	.quad	0x3fedb84ccd280efe              # double 0.92874755925774344
	.quad	0x3fd66c9a58def69a              # double 0.35037859610370392
	.quad	0x3fdae243932622e4              # double 0.42006005640045729
	.quad	0x3fd896fe752967d8              # double 0.38421594087196587
	.quad	0x3fe896287dac698f              # double 0.76832985444643664
	.quad	0x3fed849e4a841fcd              # double 0.92243876031806737
	.quad	0x3fe403a43d4653f1              # double 0.62544452636450221
	.quad	0x3fe2ecb36a436080              # double 0.59139414553193603
	.quad	0x3fecabef8acc0ee6              # double 0.89598824604805993
	.quad	0x3fe6e8da1e9a9833              # double 0.71592432000466599
	.quad	0x3fe5802ba2b2604f              # double 0.67189580704417462
	.quad	0x3fb2da24a220b810              # double 0.073641099531158938
	.quad	0x3feecf5799ead627              # double 0.96281032621363216
	.quad	0x3fc800e6f3c068d0              # double 0.1875275316422802
	.quad	0x3fca3fc4dfa7204c              # double 0.20507107658909474
	.quad	0x3fcf1d6358d43c04              # double 0.243084352849536
	.quad	0x3faac396000a2c10              # double 0.052273452286577649
	.quad	0x3f2fdba65f633000              # double 2.4305730739226927E-4
	.quad	0x3fdf8165e3cac2b2              # double 0.4922728275806022
	.quad	0x3fcd25ab5572e3d4              # double 0.22771207496933121
	.quad	0x3fbb170144e43f30              # double 0.10581977779315532
	.quad	0x3fba5ce3865be428              # double 0.10297987013099485
	.quad	0x3fda0b530b4a25ac              # double 0.40694118597510953
	.quad	0x3fd3216eb1fc1bfa              # double 0.29891555196121511
	.quad	0x3fc4424214b7ff44              # double 0.15827203761727493
	.quad	0x3fe11bf644c9144a              # double 0.53466332850133225
	.quad	0x3fe11dc58eab9ac8              # double 0.53488424172686511
	.quad	0x3fd1f02ccdc1d43e              # double 0.28028411954375432
	.quad	0x3fe0f78113665de2              # double 0.53021291531598203
	.quad	0x3fefd73cc127cec6              # double 0.99502408719714519
	.quad	0x3fd03c52fee98ae8              # double 0.25368189710404332
	.quad	0x3fe313c751a3c4fc              # double 0.59616437859781923
	.quad	0x3fede0c8055971f3              # double 0.93368912739566523
	.quad	0x3fe93ca1ffcb235b              # double 0.78865146598500802
	.quad	0x3fe3731eb9575dc3              # double 0.60780273627727188
	.quad	0x3fb3afe09abd9da8              # double 0.076902425554740916
	.quad	0x3fe41cc8a8baa570              # double 0.62851365046405583
	.quad	0x3fdee2b2a675c0b0              # double 0.48258653884750924
	.quad	0x3feb55385379fe67              # double 0.85415283493052818
	.quad	0x3fcea87527f349f8              # double 0.23951591921520765
	.quad	0x3fdc3430046042ce              # double 0.44068527629228249
	.quad	0x3fedf4b071f084ca              # double 0.93611929181874953
	.quad	0x3fda5fb07f9d3b12              # double 0.41209042036364096
	.quad	0x3fe6896f83ad73f0              # double 0.70427680700561091
	.quad	0x3fdd65a8d5a3c4ce              # double 0.45932980407003476
	.quad	0x3fc30e4580f17998              # double 0.1488730315786142
	.quad	0x3fd0b38e3fbdcea6              # double 0.26095920777081927
	.quad	0x3fb5a22af688ce58              # double 0.084505734623968265
	.quad	0x3feff752e99c831c              # double 0.99894090296956816
	.quad	0x3fe6884ba820300a              # double 0.7041376384454463
	.quad	0x3fd0d0e640a8801e              # double 0.26275020899083923
	.quad	0x3fede00c1fc7aa6a              # double 0.93359953124065709
	.quad	0x3fcf62f7c78ad3e8              # double 0.24520776026989144
	.quad	0x3fe031d081b20fe9              # double 0.50608086901820315
	.quad	0x3fdcb0e2fef5ab0c              # double 0.44829630754854644
	.quad	0x3feb34d3e0b90efa              # double 0.85019868746937211
	.quad	0x3fef294b59be82e3              # double 0.97379081276093548
	.quad	0x3fd70c4daf515c24              # double 0.36012594338302706
	.quad	0x3fe2dbedc32cfdec              # double 0.58934677238715727
	.quad	0x3fda0218b3b31c26              # double 0.40637795971673751
	.quad	0x3fbf22766ad07eb8              # double 0.12161960704588182
	.quad	0x3f9e244767d51860              # double 0.029435268127848579
	.quad	0x3fd8e4219fb628ac              # double 0.38892403218108984
	.quad	0x3fe3523aaa5da6cc              # double 0.60378773951125586
	.quad	0x3fcff49f02d1f288              # double 0.24965274465275322
	.quad	0x3fcc1775f010b180              # double 0.21946596357282644
	.quad	0x3fe676b9bd0c39d2              # double 0.70199286387815563
	.quad	0x3fe0f8bdf44362c5              # double 0.53036401469861316
	.quad	0x3fdce521cca2ca06              # double 0.45148510917638907
	.quad	0x3fdb2bf068b19a38              # double 0.42455682968139596
	.quad	0x3fb608ca16065620              # double 0.086071615578781735
	.quad	0x3fdc8c4abbabbe68              # double 0.44606273963197518
	.quad	0x3fd7d3d7845d04ae              # double 0.37230480123623522
	.quad	0x3fbbeb86b735e1b0              # double 0.10906259510910021
	.quad	0x3fc7106593db4e28              # double 0.18018789023936788
	.quad	0x3fed75e98acdb221              # double 0.92064358816202596
	.quad	0x3feb1a9367d25460              # double 0.84699411657005541
	.quad	0x3fe649ab5210198b              # double 0.69649282482059627
	.quad	0x3fdd064b3f80f198              # double 0.45350915147334936
	.quad	0x3fe0e813d2b43441              # double 0.52832976487264471
	.quad	0x3feac330e92c74ac              # double 0.83632703344087166
	.quad	0x3fed133211cd7ba9              # double 0.90859321095546364
	.quad	0x3fd6909e662de57e              # double 0.35257682779737098
	.quad	0x3fd08652816ff38c              # double 0.25819838180887511
	.quad	0x3fe0c1271f52c8e5              # double 0.52357822530600784
	.quad	0x3fed65ade40d6c7e              # double 0.91866201917163415
	.quad	0x3fc22354cdf893a0              # double 0.14170322472741947
	.quad	0x3fd7db0183abe56c              # double 0.37274206026594103
	.quad	0x3fd9464626348760              # double 0.39491418581939364
	.quad	0x3feefa350540828e              # double 0.96804286027698239
	.quad	0x3fea9c9ae0b2fbf2              # double 0.83161682020715788
	.quad	0x3fe2a376cdcf9e8e              # double 0.58245411107505318
	.quad	0x3fe8bed150f7692f              # double 0.77329316915282742
	.quad	0x3fe15029286b0def              # double 0.54103525060821578
	.quad	0x3fe124ecea11e8c0              # double 0.53575750080860729
	.quad	0x3fe38589b49bf5a7              # double 0.61005101466405598
	.quad	0x3f9530a4f9c28940              # double 0.020693376297125754
	.quad	0x3fec5b4f3398b3a8              # double 0.88614616467895235
	.quad	0x3fe926c0a7be1213              # double 0.78598053705406057
	.quad	0x3feaec7584799344              # double 0.84136463045124587
	.quad	0x3fdcd84fe6ddfd4e              # double 0.45070264382953418
	.quad	0x3fe5881f3c92c62e              # double 0.67286645727853567
	.quad	0x3fb5cc2e71540980              # double 0.085146811168703706
	.quad	0x3fe8e992a3ee5acf              # double 0.77851230638301583
	.quad	0x3fe8f6a9950f25a2              # double 0.78011015999907252
	.quad	0x3fafdbe911ae1fb0              # double 0.062224658401702881
	.quad	0x3fdea47cc673aa64              # double 0.47878951435146733
	.quad	0x3fd8efcca2c4b7be              # double 0.38963619132379879
	.quad	0x3fd4482391ee24f6              # double 0.31690301180840608
	.quad	0x3fe13b55a97d88ad              # double 0.53849299529635675
	.quad	0x3fa059314d310360              # double 0.031930485413346643
	.quad	0x3fd14cd5fcaa1610              # double 0.27031469034440736
	.quad	0x3f8a1d8831eb5480              # double 0.012751640342154369
	.quad	0x3fdbb552c6326704              # double 0.43294209818996898
	.quad	0x3fefe15b712bf2a7              # double 0.99625942329256111
	.quad	0x3fdd17a770048d6e              # double 0.45456872882115007
	.quad	0x3fdcdd964b597fec              # double 0.45102460249290632
	.quad	0x3fd76ebf2278b7be              # double 0.36613443724024453
	.quad	0x3fe2ae0013bc83c8              # double 0.58374027113688332
	.quad	0x3fc303a9b83ca334              # double 0.14854928489628494
	.quad	0x3fe76f47851f33cf              # double 0.73233390808456444
	.quad	0x3fa3ad52d977fff0              # double 0.038431729361036449
	.quad	0x3fea095f51f54771              # double 0.81364408500142649
	.quad	0x3fd7dcf03235a64c              # double 0.3728600015952892
	.quad	0x3fe515fda74ec4ea              # double 0.65893442799838664
	.quad	0x3fe2f93bbc3973d0              # double 0.59292399180014321
	.quad	0x3fdf8767aebef3a8              # double 0.49263946595220398
	.quad	0x3fd987ed441a2bc4              # double 0.39892131472214154
	.quad	0x3fd87297ffb1f2d4              # double 0.38199424715257391
	.quad	0x3fec582d8941da33              # double 0.88576390083364342
	.quad	0x3fd8448e8eac6774              # double 0.37918437893824053
	.quad	0x3fedc3e169715514              # double 0.93016119570043764
	.quad	0x3fe5103d536da83e              # double 0.65823236746405889
	.quad	0x3fe270ed2f4dfbfd              # double 0.57628497351822683
	.quad	0x3fe430c94a52276e              # double 0.63095535770228905
	.quad	0x3fcecc7ea6778584              # double 0.24061568382516552
	.quad	0x3fe497fcd98b28ed              # double 0.64355318535788586
	.quad	0x3fd6f34b46a2b228              # double 0.35859949014664716
	.quad	0x3fb9a682cc356ba0              # double 0.10019700513423269
	.quad	0x3fe1af0b746598b8              # double 0.55261776670228979
	.quad	0x3fd76edcb88a1f4e              # double 0.36614149114074201
	.quad	0x3fd0d42b83e60db2              # double 0.26294982796408839
	.quad	0x3fe9616a5336923a              # double 0.79314152004787464
	.quad	0x3fe8555631047192              # double 0.76041707586004947
	.quad	0x3fe45e1c87354866              # double 0.63648821266020827
	.quad	0x3fc247d9677e782c              # double 0.14281766465586665
	.quad	0x3fec942cccd6a2e1              # double 0.89308776862625561
	.quad	0x3fb0647c99c56e10              # double 0.064033305684852104
	.quad	0x3fd8b865c5cc17c8              # double 0.38625473323952209
	.quad	0x3fe3360425f0e88c              # double 0.60034377489434254
	.quad	0x3fecbc615cb5c3ca              # double 0.89799564464021242
	.quad	0x3fe6b82505f68d80              # double 0.70997859158198651
	.quad	0x3fe6cda30b7684da              # double 0.71260215987072262
	.quad	0x3fccf1dc66059bd8              # double 0.22613100987947976
	.quad	0x3fd4a2ceb7a334de              # double 0.32243698056556791
	.quad	0x3fec89e28d160438              # double 0.89183166080341092
	.quad	0x3fed24d1f80448eb              # double 0.91074465218323775
	.quad	0x3fe6b4b4f0af6163              # double 0.70955893524937286
	.quad	0x3fc25d72bc139ed8              # double 0.14347681220464525
	.quad	0x3fe1b597db1d409c              # double 0.55341713710551543
	.quad	0x3fd767d5608e5b2a              # double 0.36571249417595431
	.quad	0x3fe19a41d5c7966f              # double 0.55008022073589113
	.quad	0x3fe33515cc4d50ee              # double 0.60023012068498161
	.quad	0x3fec887c6524f47b              # double 0.89166087870366029
	.quad	0x3fd1e61eb09e53ea              # double 0.27967040298363932
	.quad	0x3fe081a12609b7c6              # double 0.51582391194619315
	.quad	0x3fbe92d8ee257ae0              # double 0.11942821325417752
	.quad	0x3fc5566f8a331760              # double 0.16670030830408233
	.quad	0x3fec63ee08bee35a              # double 0.8871984644712072
	.quad	0x3fd67107b591a22e              # double 0.35064881068550136
	.quad	0x3fe473cdc371ba17              # double 0.63913620159820794
	.quad	0x3fd59617d1be43a8              # double 0.33728595240341486
	.quad	0x3fe3134754524b27              # double 0.59610334843668944
	.quad	0x3fc2c08fd031af58              # double 0.14650151887632989
	.quad	0x3fcad21267adc688              # double 0.20953588545267032
	.quad	0x3fd02e6c4d71865a              # double 0.25283343851888207
	.quad	0x3fe1d0e54f6d6bc0              # double 0.55674996865433712
	.quad	0x3fe0742778f78d9d              # double 0.51417897821777425
	.quad	0x3fe2eb626cae1f4a              # double 0.59123345591158594
	.quad	0x3fe40cc88fa20e5e              # double 0.62656047871901044
	.quad	0x3fe6bb299c175be1              # double 0.71034698950358799
	.quad	0x3fec82332e1505d5              # double 0.89089354515470609
	.quad	0x3f9806d2f7c1d5e0              # double 0.023463531848809782
	.quad	0x3fbae0c440e634f8              # double 0.10499216637090913
	.quad	0x3fc3ccf65b34670c              # double 0.15469245389322628
	.quad	0x3fb4d150d4f001c0              # double 0.081318904864025932
	.quad	0x3fd279e8747af590              # double 0.28869067549734329
	.quad	0x3fee66ab67d06880              # double 0.95003290439787236
	.quad	0x3fdfee3736abbb7e              # double 0.49891453112552842
	.quad	0x3fd802855b6d5ff0              # double 0.37515386513177784
	.quad	0x3fccf627d23b4d30              # double 0.22626207127778164
	.quad	0x3fd1498c0427ecf0              # double 0.27011394887786278
	.quad	0x3fdef3ddd2800014              # double 0.48363442951813451
	.quad	0x3fe5c433607061ae              # double 0.68020027957668616
	.quad	0x3fc2525a11b83944              # double 0.1431381784936524
	.quad	0x3fdd4789df91ece4              # double 0.4574913676548944
	.quad	0x3fe5c5444fc71a69              # double 0.68033042508689079
	.quad	0x3fef7a9e76751ef2              # double 0.98371813904029026
	.quad	0x3fecc070f2495bad              # double 0.89849135705559535
	.quad	0x3fd923a318ac78f0              # double 0.39280011567633633
	.quad	0x3fed096320abf73b              # double 0.90739590054702235
	.quad	0x3fe2f92f19fdbf35              # double 0.59291796757131598
	.quad	0x3fe994f138c03259              # double 0.79943142971167014
	.quad	0x3fdea0456c06cff2              # double 0.47853217648957902
	.quad	0x3fdea84510824664              # double 0.47902037250705676
	.quad	0x3fd2a84117b4c25c              # double 0.29151942553565902
	.quad	0x3feb8ecf290a70b0              # double 0.86118276611116151
	.quad	0x3fdc300291ce02e2              # double 0.44043030012839612
	.quad	0x3feb45871ca448b5              # double 0.85223727792824511
	.quad	0x3fe9284a79a76874              # double 0.78616832504782374
	.quad	0x3fe7201c9e7f643d              # double 0.72266989666525883
	.quad	0x3fc640904ee4b598              # double 0.17384532787529561
	.quad	0x3fedf61671b64891              # double 0.93628999909766908
	.quad	0x3febb6ef079678b1              # double 0.86608077508915049
	.quad	0x3fefc57e1651e2cc              # double 0.99285797461842539
	.quad	0x3fd99652ee3ecd30              # double 0.39980004564422966
	.quad	0x3fd734e8db5ac2f2              # double 0.36260434552518384
	.quad	0x3fd89e8b08a633cc              # double 0.38467670292521627
	.quad	0x3fd4748e10c39906              # double 0.31961394917597408
	.quad	0x3fe89154c7195b69              # double 0.76774062048467073
	.quad	0x3fdf198d9c6d498a              # double 0.4859346416098097
	.quad	0x3fefa538a7a7ab67              # double 0.98891861672505576
	.quad	0x3fd83652bf67d1f2              # double 0.3783156270212934
	.quad	0x3fbf878449556110              # double 0.12316157141083672
	.quad	0x3fef25418d0fca10              # double 0.97329785872563157
	.quad	0x3fd874785d306912              # double 0.38210877514360775
	.quad	0x3fb0eb8c36228340              # double 0.066094172684199926
	.quad	0x3fbe39a95053a648              # double 0.11806734286405984
	.quad	0x3fd631fe49fc8762              # double 0.34680134988058431
	.quad	0x3fd6f9b6e7df761a              # double 0.35899136203610882
	.quad	0x3fe5ed5fc82ef37b              # double 0.68522633646317332
	.quad	0x3fcdaa6d99b3fb20              # double 0.23176355366737145
	.quad	0x3fe23fbcf8dd639f              # double 0.57028053862005723
	.quad	0x3fe0d45907e8d89f              # double 0.52592135948977503
	.quad	0x3fe00409aaa39afd              # double 0.50049289062448532
	.quad	0x3fe208be017f4181              # double 0.56356716434861209
	.quad	0x3fc99be52da629c8              # double 0.20007004479368917
	.quad	0x3fe23d22f8d24007              # double 0.56996296499164678
	.quad	0x3fef7740832d1522              # double 0.98330712910015827
	.quad	0x3fd29cd361476b6e              # double 0.29082188129330333
	.quad	0x3fd9a2ea0bed6104              # double 0.40056849636813774
	.quad	0x3fe5b69ef9bb0a80              # double 0.67854260230554075
	.quad	0x3fadf35bfbb45cb0              # double 0.058497309184695978
	.quad	0x3fedef4e108da3b2              # double 0.93546202881872476
	.quad	0x3fb07f512f840dc0              # double 0.064442705250306709
	.quad	0x3fd568bdc136f24a              # double 0.33451789730660109
	.quad	0x3feda0547ceeafcd              # double 0.92582153702596204
	.quad	0x3fde0f201716202e              # double 0.4696731782391933
	.quad	0x3fc7657d13eaabd8              # double 0.18278468582624785
	.quad	0x3fd13e0888a563da              # double 0.26941121429768844
	.quad	0x3fd21f8ee682bca0              # double 0.28317615996179235
	.quad	0x3fe5742967e27724              # double 0.6704299000736893
	.quad	0x3fb35875e9217070              # double 0.075568551460891475
	.quad	0x3fc9bb6bfffb9c9c              # double 0.20103216170466431
	.quad	0x3fe8ec40fc68bfc1              # double 0.77883958147685217
	.quad	0x3fe7f4e46222503e              # double 0.74864405791095812
	.quad	0x3fe24b48832bf7be              # double 0.57168985003931261
	.quad	0x3fd53de07eea7ee0              # double 0.33190166849270319
	.quad	0x3fc4b6c92c522cac              # double 0.16182818092452089
	.quad	0x3fdb664c12b5d17a              # double 0.42811872317476907
	.quad	0x3fc25bcfd1c1dde4              # double 0.14342687360816264
	.quad	0x3fb951e8abb74b70              # double 0.098906080172395993
	.quad	0x3fd7a10f0d92d512              # double 0.36920524907630281
	.quad	0x3fdf5f86b770eed8              # double 0.49020545877622856
	.quad	0x3fed1e09b52c0d90              # double 0.90991673836872344
	.quad	0x3fd9db4487454fe6              # double 0.40400803766283244
	.quad	0x3fe53cf4352ccf27              # double 0.66369066606282423
	.quad	0x3fcae56f3b8031dc              # double 0.210126785328966
	.quad	0x3fe31df7e517dd5c              # double 0.59740824455995378
	.quad	0x3fc02742dee2c8cc              # double 0.12619815714930949
	.quad	0x3fe6949583b51032              # double 0.70563770031049544
	.quad	0x3fe08bc02ee0d1ff              # double 0.51705941348933482
	.quad	0x3feefcd09953f0ae              # double 0.96836118647435909
	.quad	0x3fe6094af43c8e60              # double 0.68863437368822744
	.quad	0x3fd66a042908a0c8              # double 0.35022071845243063
	.quad	0x3fe12521bf100449              # double 0.53578269307048132
	.quad	0x3fef700e2dca482f              # double 0.98242863601104157
	.quad	0x3fc947fb32b835d8              # double 0.19750919319669324
	.quad	0x3fb6de28908348b0              # double 0.089327369004680745
	.quad	0x3fe2f4202587ba81              # double 0.59230048494448806
	.quad	0x3fe4794e00fc83b4              # double 0.63980770294812439
	.quad	0x3fd6e39a2afabb18              # double 0.35764173695763324
	.quad	0x3fc725884c035f8c              # double 0.18083289825039761
	.quad	0x3fe981d98341c191              # double 0.79710078846078336
	.quad	0x3fcd0eca4efef9d0              # double 0.227013863155618
	.quad	0x3fd23aa87297ac40              # double 0.28483020010634519
	.quad	0x3fee5d6616b24ff9              # double 0.94890121872822342
	.quad	0x3fef4a5714d30e53              # double 0.97782472674630083
	.quad	0x3fe1aaf3380ee1dd              # double 0.55211792897085454
	.quad	0x3fdf031fa1187d58              # double 0.48456564647672939
	.quad	0x3fc6d9383ddbba30              # double 0.17850401897835999
	.quad	0x3fc629042e972a2c              # double 0.17312671923566947
	.quad	0x3fc54db51c4915dc              # double 0.16643394356849128
	.quad	0x3fe71b85c53e9269              # double 0.72210968517590601
	.quad	0x3fe306c8b7eb00c5              # double 0.59457813188057484
	.quad	0x3fcf76289a6df9a4              # double 0.24579341450221392
	.quad	0x3fec2d594fcf71e4              # double 0.88053575122790705
	.quad	0x3fe4fc2443503cd3              # double 0.65577901026872565
	.quad	0x3fe0a5fc5a126c8a              # double 0.52026193229848272
	.quad	0x3fee8f0ff9455d33              # double 0.95496367154820516
	.quad	0x3fe3747b611c2e24              # double 0.60796898810207667
	.quad	0x3fee83319917a26e              # double 0.95351486111492334
	.quad	0x3fb003921b365848              # double 0.062554484981178438
	.quad	0x3fe5a4539853bc1b              # double 0.6763093924654443
	.quad	0x3fe0ea398f1be885              # double 0.52859189940433338
	.quad	0x3fe53609eac085ea              # double 0.66284652566917868
	.quad	0x3fe2aa91f860bfcf              # double 0.58332155715287992
	.quad	0x3fc4246c0bcc990c              # double 0.15736151291020695
	.quad	0x3fd1cf0a742435b0              # double 0.27826176969468985
	.quad	0x3fe0e85ac5f2f42b              # double 0.52836359655305409
	.quad	0x3fcf419c922317ac              # double 0.2441898072776757
	.quad	0x3fd2ba8b57bbc76a              # double 0.29263576095319499
	.quad	0x3fbde5764e923a60              # double 0.11678256433717982
	.quad	0x3fed1584e62bbe0c              # double 0.90887684779403477
	.quad	0x3fe51ff5831033b1              # double 0.66015124891565879
	.quad	0x3fe100ce83bb0cb1              # double 0.53134847382206918
	.quad	0x3fde91f720419f6e              # double 0.47765901708634473
	.quad	0x3fd9bc128942d844              # double 0.40210402874379647
	.quad	0x3fecbc3487de6814              # double 0.89797426735754237
	.quad	0x3fdbab11d9a49380              # double 0.43231626753031804
	.quad	0x3fc9da51fff53ef0              # double 0.20197510717343148
	.quad	0x3fac24240b6e9280              # double 0.054963232417581942
	.quad	0x3fea35f8d66bdddf              # double 0.81908838156862973
	.quad	0x3fb2870477793a00              # double 0.072372702759118113
	.quad	0x3fe6c52cd79c496f              # double 0.71156923400330452
	.quad	0x3fe944fc82cd6d29              # double 0.78967118785241042
	.quad	0x3fe8cc81c22a2a44              # double 0.77496421740335863
	.quad	0x3fe11a546939bb74              # double 0.53446407844408705
	.quad	0x3fb60dd2276245d0              # double 0.086148390402988939
	.quad	0x3fd04b14c33d5242              # double 0.25458258692131974
	.quad	0x3fe565b679f6163d              # double 0.66866611309587365
	.quad	0x3fc1d5a44537e0e4              # double 0.13933232669638251
	.quad	0x3fe4ea23e3712919              # double 0.65358156606933726
	.quad	0x3fe04b1e8b9aa90d              # double 0.50916983858522402
	.quad	0x3fc1e1f2fef75694              # double 0.13970792245406882
	.quad	0x3fef726dacc680e3              # double 0.98271831269451259
	.quad	0x3fdb11cd43b6dc3a              # double 0.42296153652882007
	.quad	0x3fce04b51a5db084              # double 0.23451865947152239
	.quad	0x3fedd182cee79d0a              # double 0.93182506953317668
	.quad	0x3fc8066f80ca012c              # double 0.1876963976719791
	.quad	0x3feaeeb39df6a303              # double 0.84163838245612543
	.quad	0x3fe767ed8de91ff2              # double 0.73143651692316625
	.quad	0x3fef51b5af144b6d              # double 0.97872432894869876
	.quad	0x3fe1093b1be02ebb              # double 0.53237681812739568
	.quad	0x3fef884fe7301b21              # double 0.98538966325654453
	.quad	0x3fc090fc957c3074              # double 0.12942464160039757
	.quad	0x3fd915cb5cfe212a              # double 0.39195522385900239
	.quad	0x3fd53ed85f9409fe              # double 0.33196076711479339
	.quad	0x3feb78c89733dd82              # double 0.85849408656842763
	.quad	0x3fe8b4a3aaf663a9              # double 0.77205069914918056
	.quad	0x3fe47fc89a6fabda              # double 0.64059858477900922
	.quad	0x3fe73c90c6ec8e0e              # double 0.72614325382568423
	.quad	0x3fe6f4b5c81d713c              # double 0.7173718365188857
	.quad	0x3fe5d8f756979af7              # double 0.68273512756863297
	.quad	0x3fe8b330a9b67fec              # double 0.77187379023598401
	.quad	0x3fce770beb8c9f68              # double 0.23800801278525374
	.quad	0x3fe1ef5ebcb4c016              # double 0.56046997887279093
	.quad	0x3fc7ae8f6a0d77c8              # double 0.18501465490675018
	.quad	0x3fe77b59e365395b              # double 0.73380751050153081
	.quad	0x3fe8c0406cd32873              # double 0.77346822028017781
	.quad	0x3fe7f6ce078b46a8              # double 0.74887753938147217
	.quad	0x3fe1c59d4f64ba9b              # double 0.55537286287820409
	.quad	0x3feca1d088f3d633              # double 0.89475275753529215
	.quad	0x3fb203e924de61b8              # double 0.070372172833578328
	.quad	0x3feeed21aa5503ea              # double 0.96644671695696371
	.quad	0x3fe7adae3fad1c12              # double 0.73995125233421022
	.quad	0x3fe64803ece96bf3              # double 0.69629093429409605
	.quad	0x3fed1471fd8da8e6              # double 0.90874576112881011
	.quad	0x3fefe32586b24fed              # double 0.99647785480419559
	.quad	0x3fcb19eba1044788              # double 0.21172852861542091
	.quad	0x3fef4959eb65497f              # double 0.97770400977815075
	.quad	0x3fecca57493123fe              # double 0.89969982428840445
	.quad	0x3fcdc90a712d25a8              # double 0.23269777799786806
	.quad	0x3fc710c62bfe6270              # double 0.18019940517548916
	.quad	0x3f9acac54763cc20              # double 0.026164133531846656
	.quad	0x3fb91eb9e4683850              # double 0.098125093711332711
	.quad	0x3fb2754bf8be03e8              # double 0.072102306583488152
	.quad	0x3feb58b2f9214b56              # double 0.85457752855505009
	.quad	0x3fe8bbd2a7b7f318              # double 0.77292759664087196
	.quad	0x3fed26c4fb53e1da              # double 0.91098260009226384
	.quad	0x3fd37c3fca00d05a              # double 0.30445856787560432
	.quad	0x3fe18588bb35ad76              # double 0.54755055012121434
	.quad	0x3f8c94a719160840              # double 0.013955407574716472
	.quad	0x3fd9ec62b73fea46              # double 0.405052832560305
	.quad	0x3fe0d7003e407fc0              # double 0.52624523314079141
	.quad	0x3fb20f9874d4ff20              # double 0.070550468944017286
	.quad	0x3fd46bf54b977924              # double 0.31908924467087929
	.quad	0x3fbc8deea9dda0d8              # double 0.11154071471321758
	.quad	0x3fee82decb792e1f              # double 0.9534753774727881
	.quad	0x3fe5976e18d3861e              # double 0.67473511551742482
	.quad	0x3fb0c98820e1be90              # double 0.065575130489145872
	.quad	0x3fdbe7525a9ae82e              # double 0.43599375579981625
	.quad	0x3fed4c28ec19f0a4              # double 0.9155468570093217
	.quad	0x3fef80e41d76ff32              # double 0.98448377375459573
	.quad	0x3fc995ba78762224              # double 0.19988184816271926
	.quad	0x3fec939398ff7844              # double 0.89301471598060588
	.quad	0x3fd9adf9ad7316b4              # double 0.40124360979494189
	.quad	0x3fc48fc29df60290              # double 0.16063721383035956
	.quad	0x3fe8b3f2acdf9cdf              # double 0.77196630253174792
	.quad	0x3fd5e64669ea56b6              # double 0.34217987387942672
	.quad	0x3fed5b3d264193b1              # double 0.91738755676180095
	.quad	0x3feb03a8195f280e              # double 0.84419636683856125
	.quad	0x3fe7c6cd42a6ace9              # double 0.74301779763973486
	.quad	0x3fe23b9f0041323e              # double 0.56977796602001951
	.quad	0x3fc498b0f35f7364              # double 0.16090976603927765
	.quad	0x3fe85989667e6693              # double 0.76092977541266504
	.quad	0x3fd32fbbc0115f62              # double 0.29978841549517743
	.quad	0x3fe33bc5712e4df1              # double 0.60104629617347716
	.quad	0x3fe0a3103ca90471              # double 0.51990520332050327
	.quad	0x3fca6ccba6530a94              # double 0.20644517537410378
	.quad	0x3fc636bc41c1169c              # double 0.17354539118439483
	.quad	0x3fe90e2e85dd272c              # double 0.78298116822518215
	.quad	0x3fe6e7af03067b5d              # double 0.71578169432528294
	.quad	0x3fea015511a52adc              # double 0.81266263433766594
	.quad	0x3fee7f484eb8a430              # double 0.95303740859265496
	.quad	0x3fbad8a318124d28              # double 0.10486811959917886
	.quad	0x3fe7082f63d0dbe7              # double 0.71974915976795451
	.quad	0x3fde8feba16ec44c              # double 0.4775342060557406
	.quad	0x3fe9d3da0f8ccc10              # double 0.80711081540209939
	.quad	0x3f83c474c63c06c0              # double 0.0096520541187631314
	.quad	0x3fe3e3c068921492              # double 0.62155170844984498
	.quad	0x3feb1272ca45c5e2              # double 0.84600200182302054
	.quad	0x3fd994d4fcc52c72              # double 0.39970898327437177
	.quad	0x3fdb5dbd770bcabc              # double 0.42759644151298537
	.quad	0x3fc3bfe34522f5e0              # double 0.15429345012482454
	.quad	0x3fe99f22cfce70ad              # double 0.8006757792204745
	.quad	0x3fc2c665a27d5900              # double 0.14667959627212923
	.quad	0x3fe00e5a5e55ac32              # double 0.50175207543123279
	.quad	0x3fef7c97b0147578              # double 0.98395904913529275
	.quad	0x3fdb8da2b350427e              # double 0.43051974783978852
	.quad	0x3fdb9987422e993c              # double 0.43124562705124325
	.quad	0x3feef13477d7a255              # double 0.96694396406844396
	.quad	0x3feb8baaf643a5a5              # double 0.8607992944572983
	.quad	0x3fbcf9a56e9824b0              # double 0.11318429899269478
	.quad	0x3febc3b245190a29              # double 0.86763871665636316
	.quad	0x3fc2a4fabb40c78c              # double 0.14565977233138161
	.quad	0x3fdf8d3e28b2a7e2              # double 0.49299577688600327
	.quad	0x3f9aab84ca460bc0              # double 0.026044916959573561
	.quad	0x3fedfaf73164f30a              # double 0.93688544890719183
	.quad	0x3fe7545fb6e68e88              # double 0.72904954645896769
	.quad	0x3faa838f97067d40              # double 0.051784979997359759
	.quad	0x3fdae5a0753a079e              # double 0.4202653069297585
	.quad	0x3fe02a3c1c7414e0              # double 0.50515561635316075
	.quad	0x3fe171bee4e5f1f9              # double 0.54513497072872419
	.quad	0x3fc37d6ed08cf818              # double 0.15226540740144467
	.quad	0x3fe14ac317a83cc1              # double 0.54037623043577565
	.quad	0x3fe4f06f5ce08d7b              # double 0.6543499769217499
	.quad	0x3fe3bf3d186849c1              # double 0.61709456221642978
	.quad	0x3fefd5811ac57aed              # double 0.99481253842153949
	.quad	0x3fda6132ef92eac8              # double 0.41218255420578176
	.quad	0x3f9152672a22d240              # double 0.016915904948023419
	.quad	0x3fde2b8de6bb58d4              # double 0.47140834362415984
	.quad	0x3fd23772508f54e6              # double 0.284634188339011
	.quad	0x3fe7eca8f39c90d1              # double 0.74763915615451471
	.quad	0x3fdb1a7ad8320dd4              # double 0.42349120247692196
	.quad	0x3fc19d18a3ceaffc              # double 0.13760669706732631
	.quad	0x3fb99f1d7a4a73c0              # double 0.10008415446868835
	.quad	0x3feea3e5f7cd769a              # double 0.95750711821502255
	.quad	0x3fefdf7be8c5b716              # double 0.99603076423020087
	.quad	0x3f911be899b2dbc0              # double 0.016708025342008659
	.quad	0x3fe8877e813f9306              # double 0.76653981441322183
	.quad	0x3fe0c043171f1aef              # double 0.52346949115675823
	.quad	0x3fe272f46c846748              # double 0.57653256602063951
	.quad	0x3fe908b89d89fdad              # double 0.7823145939764139
	.quad	0x3fe69b9a2fae2597              # double 0.70649442017127029
	.quad	0x3fd846c2f8d9d154              # double 0.37931894590226034
	.quad	0x3fef1fc2544686a9              # double 0.97262684307152824
	.quad	0x3fe5cfa92f333a64              # double 0.68159922808429174
	.quad	0x3fe94c4264079055              # double 0.7905590013219902
	.quad	0x3fed041cd92b120d              # double 0.90675203719780628
	.quad	0x3fe34508567b6453              # double 0.60217682734504263
	.quad	0x3fe108683d9c8ed4              # double 0.53227626832491604
	.quad	0x3fe0f40c10a301bd              # double 0.52979090928425132
	.quad	0x3fd46ad5d46c9742              # double 0.31902070755528567
	.quad	0x3fe34f3e7219e3e3              # double 0.60342333112123148
	.quad	0x3fd4d337adcc6e58              # double 0.32539169285312175
	.quad	0x3fd2a9ba7ec2b332              # double 0.2916094053169217
	.quad	0x3fef0468c01b28b9              # double 0.96928823013993004
	.quad	0x3feaa7cedac6b691              # double 0.83298437814456083
	.quad	0x3faae4beee39da60              # double 0.052526442127533768
	.quad	0x3fd5f83f77cd6b98              # double 0.34327685069518443
	.quad	0x3fe6d717158088d1              # double 0.71375612449289794
	.quad	0x3fe047b3120c973c              # double 0.50875237965804088
	.quad	0x3febf3cd6a8bf7de              # double 0.87351103601372038
	.quad	0x3fd7b7097945f0b6              # double 0.37054669230543469
	.quad	0x3fe7eebc3d8ee23a              # double 0.74789249442171202
	.quad	0x3febcff06c99446b              # double 0.86913319788631094
	.quad	0x3fed7deb601a16c4              # double 0.92162102479843399
	.quad	0x3fd149015a20bdd6              # double 0.27008088876297387
	.quad	0x3fddcbd9aaa92f66              # double 0.46556703249074471
	.quad	0x3fa7a1e273da2e20              # double 0.046156956331369736
	.quad	0x3fde42e7c6dee5b6              # double 0.47283358021703792
	.quad	0x3fceb39f125dd2d4              # double 0.23985660931398078
	.quad	0x3fdb778ba12ea39c              # double 0.42917147388885168
	.quad	0x3fdccdf2c0daa1ca              # double 0.45007008393670545
	.quad	0x3fcf0e27e266e3f0              # double 0.24261950068264992
	.quad	0x3fde6a32dab5a28e              # double 0.47523185118056055
	.quad	0x3fd0c50add988266              # double 0.26202651634415586
	.quad	0x3fe70598dc2695d4              # double 0.71943324087322447
	.quad	0x3fe7e792b7641f68              # double 0.74701820200514835
	.quad	0x3fe11dd7e0eb51b5              # double 0.53489297799619939
	.quad	0x3fa79973052366c0              # double 0.046092600228531122
	.quad	0x3fb95d574d550038              # double 0.099080520992175347
	.quad	0x3fc99d7279699500              # double 0.20011740616170215
	.quad	0x3fe76c3a879a36cc              # double 0.73196150288432582
	.quad	0x3fe5fe3b9645318b              # double 0.68728427266755554
	.quad	0x3fb931ebd65bbe70              # double 0.098417987664783046
	.quad	0x3fb306f23c89f988              # double 0.074324741153736551
	.quad	0x3febd676ecc0167b              # double 0.86992975464154598
	.quad	0x3fe31f742d78345b              # double 0.59758957749148622
	.quad	0x3feb925e84d3d273              # double 0.86161733572823918
	.quad	0x3fde1f7f685b12bc              # double 0.47067246619216596
	.quad	0x3fdaac7eb01d28d4              # double 0.41677825163482152
	.quad	0x3fd51f437ceac880              # double 0.33003318022668537
	.quad	0x3fe82a10aceb25a6              # double 0.75513490460541699
	.quad	0x3fe4ebc6076c672e              # double 0.65378095102207623
	.quad	0x3fe1837460a6b510              # double 0.54729670407474096
	.quad	0x3fee4b31b4dd4a87              # double 0.94667897534448364
	.quad	0x3fee8098ad82c153              # double 0.95319780243702679
	.quad	0x3fe80eb6cba6cfe0              # double 0.75179614806847538
	.quad	0x3f8f221986927900              # double 0.015201758784595842
	.quad	0x3fd1b98136f4d6d2              # double 0.27694731108509274
	.quad	0x3fe5b075b67b9916              # double 0.67779050484822068
	.quad	0x3feb1b82df4a2cfd              # double 0.84710830317763419
	.quad	0x3feff93afe9e8920              # double 0.99917363863304231
	.quad	0x3fbd80670fb158a8              # double 0.11524051793216705
	.quad	0x3fc08e3819fe9cf8              # double 0.12934018391863566
	.quad	0x3fd64e3d365b1d34              # double 0.3485253363437153
	.quad	0x3fdc1bb218d4d326              # double 0.43919041085182398
	.quad	0x3fedb0b41025bd33              # double 0.92782023576538675
	.quad	0x3fefd6ea0501416e              # double 0.99498463609238086
	.quad	0x3fe7251012fbb1c5              # double 0.72327426631596181
	.quad	0x3fd8a9a9397c7200              # double 0.38535528768423433
	.quad	0x3fe98902932751ee              # double 0.79797486058174427
	.quad	0x3fe21c714a874006              # double 0.56597199016869193
	.quad	0x3fa67a148503d7f0              # double 0.043900147664245881
	.quad	0x3fddb133ed8f4bde              # double 0.46394060324854347
	.quad	0x3fe619496708bb3f              # double 0.69058675884102871
	.quad	0x3fe115ac7547fb5d              # double 0.53389571100693056
	.quad	0x3fb03c7e3333d448              # double 0.06342304945049293
	.quad	0x3fe550ef5b08cbf7              # double 0.66612975864552382
	.quad	0x3fc56474ba71e55c              # double 0.16712817291026283
	.quad	0x3fea9504b2d54d6d              # double 0.83069071701394892
	.quad	0x3fe03a2b774f66e8              # double 0.50710080435530092
	.quad	0x3fdae3a82526c29c              # double 0.42014506938998308
	.quad	0x3febdc626cb90ca7              # double 0.87065240130359178
	.quad	0x3fef04c9b4a4f25f              # double 0.96933446199507133
	.quad	0x3fbf8b9cb79b3380              # double 0.12322406275343489
	.quad	0x3fddb474dc142162              # double 0.46413918964437617
	.quad	0x3fee2eeadfbf7032              # double 0.9432272310327845
	.quad	0x3fee358d00e62bc1              # double 0.94403696227652045
	.quad	0x3fe632fb159c7c18              # double 0.69372324200583346
	.quad	0x3fda97d72d6b9df8              # double 0.4155176108892813
	.quad	0x3fec2015216d4c47              # double 0.8789163258428595
	.quad	0x3fdff83e1451d1e8              # double 0.49952651962601502
	.quad	0x3fd285dcd9655866              # double 0.28942033033434311
	.quad	0x3fe4f0d2e33cbdfa              # double 0.65439743406562845
	.quad	0x3fe1e696d5078284              # double 0.55939809424678844
	.quad	0x3f88df25f8777e40              # double 0.012144371647934027
	.quad	0x3fe2143399ce868a              # double 0.56496601143244729
	.quad	0x3fe2c2bbb9fd5960              # double 0.58627115560629406
	.quad	0x3fd190db43b1abd2              # double 0.2744663392137997
	.quad	0x3fe0b088f382bbe7              # double 0.52154967842750188
	.quad	0x3fe9d403978bc3c2              # double 0.80713061903781402
	.quad	0x3fe691df12f5b34b              # double 0.70530656531409741
	.quad	0x3fdc33b27e499176              # double 0.44065534909011406
	.quad	0x3fe364abbb172c4b              # double 0.60603891888730155
	.quad	0x3fc34b4137da8fbc              # double 0.15073409297212759
	.quad	0x3fe820859fe86833              # double 0.75396996719360343
	.quad	0x3fa8f156d8b34ec0              # double 0.04871627230900577
	.quad	0x3fd87295c4a839f6              # double 0.38199371533201487
	.quad	0x3fd3ade867f100a2              # double 0.30748949194458863
	.quad	0x3fe0c98f309cffb1              # double 0.52460441107540678
	.quad	0x3fea83f3a3ba01eb              # double 0.82860738733148531
	.quad	0x3fba06864cb956e0              # double 0.10166205762046898
	.quad	0x3fe7f32a8f7e0bb8              # double 0.7484333803735046
	.quad	0x3fefd4d65b53605d              # double 0.99473111950920733
	.quad	0x3fba3a8f79750bc0              # double 0.10245606150878839
	.quad	0x3fe77e5e956c7c34              # double 0.73417596039133182
	.quad	0x3fdc66be25dd63de              # double 0.44377092073187707
	.quad	0x3fe82abf027f412e              # double 0.75521803367340623
	.quad	0x3fe3d710d4327f7c              # double 0.62000314183022409
	.quad	0x3feaef49e71460c3              # double 0.84171004421934759
	.quad	0x3fefd57a6b83cee2              # double 0.99480935095786216
	.quad	0x3fce6097fe8d1294              # double 0.23732280663729866
	.quad	0x3fecf47b38c0517b              # double 0.90484391292788702
	.quad	0x3fdba235babe12e4              # double 0.43177550541467569
	.quad	0x3fe6431ac41a6a49              # double 0.69569147397425823
	.quad	0x3fed46c9abcc2b2b              # double 0.91489108614164161
	.quad	0x3fed827a0c172156              # double 0.92217733727833706
	.quad	0x3fb3a663038b8100              # double 0.076757610669577758
	.quad	0x3fdab499332774dc              # double 0.41727285380859569
	.quad	0x3fed0c9b5223d607              # double 0.90778890650716526
	.quad	0x3fd0ba365c6627bc              # double 0.26136549971908685
	.quad	0x3fc7bf35b2a10854              # double 0.1855227586948468
	.quad	0x3fd1d4895cfa0398              # double 0.27859720306155955
	.quad	0x3fe6e8e5889ef600              # double 0.71592976268556185
	.quad	0x3feee1fa9acd9e70              # double 0.96508531794547814
	.quad	0x3fef308d34b9896b              # double 0.97467670724681221
	.quad	0x3fb6120eea43cfb8              # double 0.086213047212196581
	.quad	0x3fe9b60bd6ee64fc              # double 0.80347244242435023
	.quad	0x3fd9f38b1771dbb6              # double 0.40548970498587822
	.quad	0x3fe3dcb56e857349              # double 0.62069198213758014
	.quad	0x3febfa0fd8b6bee2              # double 0.87427513434337478
	.quad	0x3fb7c8f046e6b588              # double 0.092909829435219859
	.quad	0x3fee1bed2c881ec7              # double 0.94090899179078569
	.quad	0x3fdde4da98e8e74c              # double 0.46709313328357349
	.quad	0x3fd4c9f2fa533c8c              # double 0.3248259968358489
	.quad	0x3fc2ac4a4ff0c528              # double 0.14588288215012679
	.quad	0x3fcbc27339ea3570              # double 0.21687164619326493
	.quad	0x3fd996275132011e              # double 0.39978964738112832
	.quad	0x3fe9011fe0aee641              # double 0.78138727076947856
	.quad	0x3fc8db41acbfef48              # double 0.19419117865606439
	.quad	0x3fe67f33b10d391f              # double 0.7030275781669707
	.quad	0x3fee6fdb94614d4b              # double 0.95115450840459326
	.quad	0x3fd3f261493d5f16              # double 0.31166870262448876
	.quad	0x3fef1ddd826efac3              # double 0.9723956630258147
	.quad	0x3fd32d706c0a5bfc              # double 0.2996483855326344
	.quad	0x3fe108c0d6fef645              # double 0.53231851569552957
	.quad	0x3fd42a094995a6e2              # double 0.31506569086069025
	.quad	0x3fe26e5f9f898f24              # double 0.57597333106648252
	.quad	0x3fe4c6816c784873              # double 0.64923163590925836
	.quad	0x3fd3e2b547271862              # double 0.31071216534144785
	.quad	0x3fe1e7f3dbe090a5              # double 0.55956452317015659
	.quad	0x3fd624d16ea79a46              # double 0.34599719816325025
	.quad	0x3fecf91b3d43c3ac              # double 0.90540849653017607
	.quad	0x3fe4297b8d17889a              # double 0.6300637965871545
	.quad	0x3fe0193da40d5206              # double 0.50308115044987356
	.quad	0x3fd8e50122de25b2              # double 0.38897732167296362
	.quad	0x3fe1b0afcafc1b13              # double 0.55281819959131651
	.quad	0x3fe81a6b62d39dcb              # double 0.75322503377986416
	.quad	0x3fd53578dc1d475e              # double 0.33138867850822418
	.quad	0x3f8ecce77699d6c0              # double 0.015039261156953088
	.quad	0x3fd0afaab76f3ca8              # double 0.26072185433890605
	.quad	0x3fc392460160580c              # double 0.15290141169742844
	.quad	0x3fb76d060f0b7430              # double 0.091507319138558029
	.quad	0x3fd28c2d09f8fe24              # double 0.28980565999879304
	.quad	0x3fe2d1f681ce62ab              # double 0.5881302390362938
	.quad	0x3feb65e9c0765aa9              # double 0.8561905631093697
	.quad	0x3fd349abd47a7fec              # double 0.30137153386931348
	.quad	0x3fd0fa7e641ffd92              # double 0.26528892305210505
	.quad	0x3fd8a24450245bc0              # double 0.38490398241395596
	.quad	0x3fecc6b3ce642bd4              # double 0.89925566016006053
	.quad	0x3fe4a6ece94f9086              # double 0.64537664001956396
	.quad	0x3fd26c0520ee3812              # double 0.28784301963685366
	.quad	0x3fe613b07467e026              # double 0.68990347609997538
	.quad	0x3fcb6b9f46bba25c              # double 0.21422186807400834
	.quad	0x3fa6d8a350237730              # double 0.044621566326652817
	.quad	0x3fdaae04de8f59b6              # double 0.41687127813693381
	.quad	0x3fe0f68feb34fdca              # double 0.53009792269579603
	.quad	0x3fd0cac618d5ca6c              # double 0.26237633157066997
	.quad	0x3f97757e2d18e7c0              # double 0.022909137251396094
	.quad	0x3fe1049d5ecf7029              # double 0.53181332128179293
	.quad	0x3fc68c299edc4f78              # double 0.1761524224935973
	.quad	0x3f9b6d84e018e5a0              # double 0.026784969499407674
	.quad	0x3fef0b0c72b830d9              # double 0.97009870916510998
	.quad	0x3fbc7480d3d6e108              # double 0.1111526982484784
	.quad	0x3fef5082a7cfeb45              # double 0.97857792640511631
	.quad	0x3feaf8b2762351f0              # double 0.84285853456327509
	.quad	0x3fe7007abdb30a53              # double 0.71880852747592383
	.quad	0x3fdf6a91ad98184a              # double 0.49087945892859308
	.quad	0x3fea4c1416afd36a              # double 0.82178692275065868
	.quad	0x3fd136132fe77888              # double 0.26892547300474989
	.quad	0x3fe25f57008be085              # double 0.57413816553800301
	.quad	0x3fd887b6696c7d36              # double 0.38328323645869788
	.quad	0x3fcbbe3c342b2858              # double 0.21674301669401319
	.quad	0x3fc8614268b5a528              # double 0.19046812165041982
	.quad	0x3fd48b7fec33bbaa              # double 0.32101438585862729
	.quad	0x3fd0e70f02bb3b52              # double 0.2641026999162267
	.quad	0x3fc632415b7696bc              # double 0.17340867010095973
	.quad	0x3fefacadfd0559d6              # double 0.98982905786652498
	.quad	0x3fd22d88a7935438              # double 0.28402916302485748
	.quad	0x3fe1c150f304e985              # double 0.55484816994366837
	.quad	0x3fa9fff9c31a7100              # double 0.050781064096755202
	.quad	0x3feeff67cf600893              # double 0.96867743018107643
	.quad	0x3fef1a9d77dd278b              # double 0.97199891482272116
	.quad	0x3fd48538b63b2dc2              # double 0.32063119693767927
	.quad	0x3fcf8bde30b92b28              # double 0.24645593051021675
	.quad	0x3feb6ceec3c1699b              # double 0.85704744561671775
	.quad	0x3fe6f235b47e06b5              # double 0.71706662418747291
	.quad	0x3fdcfc0ff84e5d02              # double 0.4528846669067691
	.quad	0x3fe2afc16dd18be3              # double 0.58395453881200543
	.quad	0x3fe23853634a22b2              # double 0.5693756999254076
	.quad	0x3fd66f919e1a951a              # double 0.35055962028339283
	.quad	0x3fc29f62b9b68f2c              # double 0.1454890639116625
	.quad	0x3fe2defdce5654f5              # double 0.58972063350907311
	.quad	0x3fef2b346f880a9d              # double 0.97402402671317001
	.quad	0x3fe1f2ad531396ff              # double 0.56087366319545129
	.quad	0x3fe4974d099a1f39              # double 0.64346935153387286
	.quad	0x3fe67c20cfd4fc9b              # double 0.70265236465629088
	.quad	0x3fd157054f34e15c              # double 0.27093632445350635
	.quad	0x3fed2eddee8fdd84              # double 0.91197105974326619
	.quad	0x3fe2f1087c2dccc2              # double 0.59192299131100179
	.quad	0x3fe62ca55f11c6db              # double 0.69294994896173578
	.quad	0x3fc72558df4c3ec8              # double 0.18082724478926182
	.quad	0x3fda3bbaf0b173fa              # double 0.40989564423745117
	.quad	0x3fd66bbf314bf082              # double 0.35032634557843079
	.quad	0x3fe93ed4c9bf9e28              # double 0.78891982463841703
	.quad	0x3fee9c49daed96a8              # double 0.95657818564787522
	.quad	0x3fedce72564f9c23              # double 0.93145100457775631
	.quad	0x3fd426526da107be              # double 0.31483898836097157
	.quad	0x3fd62b131e4ddb90              # double 0.34637906989467471
	.quad	0x3fe746d14699ba6b              # double 0.72739471234474473
	.quad	0x3fd93f550a8f448c              # double 0.39449049025740446
	.quad	0x3fe2c98754a58e0f              # double 0.58710066349562051
	.quad	0x3fe49e67dcbce9fa              # double 0.6443366347587578
	.quad	0x3fc6fce6300e7c2c              # double 0.17959287020218662
	.quad	0x3fd883cbc4d0694e              # double 0.3830441877377283
	.quad	0x3fed4aaee802a5ff              # double 0.91536660494347177
	.quad	0x3fdfb6d5553f5056              # double 0.49553426098760178
	.quad	0x3fc1460e7ed1f908              # double 0.13495045845406417
	.quad	0x3fc36936f832f0b4              # double 0.15164839858141976
	.quad	0x3fdbc88f81f16d76              # double 0.43411624612573207
	.quad	0x3fd88b93c04eafcc              # double 0.38351911335007283
	.quad	0x3fe59936f8885d38              # double 0.67495296994721965
	.quad	0x3fef3a314073729c              # double 0.97585356319503402
	.quad	0x3f83297c44882180              # double 0.009356470910476089
	.quad	0x3fd1c38980a59a96              # double 0.27755963862583977
	.quad	0x3fa0d328f5f78ea0              # double 0.032861022973319054
	.quad	0x3facca594b47c930              # double 0.056231298865798585
	.quad	0x3fe7f1f16c51b42c              # double 0.74828406482777643
	.quad	0x3fddf7f1bc523b3c              # double 0.46825831785911354
	.quad	0x3fdd59bdf553d5f6              # double 0.45860241849672378
	.quad	0x3fe0d8ae5a5bcd7b              # double 0.52645032547154302
	.quad	0x3fe7a747712d4110              # double 0.73916980843390157
	.quad	0x3fd40e1d0ebfec0e              # double 0.31336142006301848
	.quad	0x3fc0e18a591c9ab4              # double 0.13188294745596851
	.quad	0x3febf8a696255c27              # double 0.87410287213686366
	.quad	0x3fe2827f48e0e911              # double 0.57842983469098119
	.quad	0x3fe8720ae20afc9c              # double 0.76392120503432492
	.quad	0x3fef9280ce6b8aca              # double 0.98663368526862283
	.quad	0x3f9440422e9090a0              # double 0.019776376812061458
	.quad	0x3fe2790d371a2ce0              # double 0.57727680933149017
	.quad	0x3fe3bf9722403ed6              # double 0.61713749589577094
	.quad	0x3fea70bba325559c              # double 0.8262613474313869
	.quad	0x3fe3db9a7921025b              # double 0.62055705698009989
	.quad	0x3fdc2755671684b2              # double 0.43990073268112007
	.quad	0x3fe18111eb60a024              # double 0.54700561496884292
	.quad	0x3fb6991ce607b538              # double 0.088273817214674533
	.quad	0x3feffc600f611839              # double 0.99955752376332107
	.quad	0x3fef0ddbc165ef0b              # double 0.97044170163232601
	.quad	0x3fa281e32b377920              # double 0.036147212052798361
	.quad	0x3fef9287bcf9cab3              # double 0.98663699063611998
	.quad	0x3fe4a34ddfd2672b              # double 0.64493459429943323
	.quad	0x3fc7a5a91c9d024c              # double 0.18474306008467278
	.quad	0x3fe61ccfe1b967a4              # double 0.69101709448590443
	.quad	0x3fe8f622c393ba07              # double 0.78004587362903599
	.quad	0x3fec4243b87a3127              # double 0.88308893233037089
	.quad	0x3fe5ceb05f91befd              # double 0.68148058572657499
	.quad	0x3fe5ce101277b236              # double 0.68140414816804795
	.quad	0x3fc20b26b80a4688              # double 0.14096530901274584
	.quad	0x3feb2f9066271a65              # double 0.849556159512599
	.quad	0x3fd5582e770ce280              # double 0.33350717187889956
	.quad	0x3fd7a769116e5ed2              # double 0.36959292127856458
	.quad	0x3fed2cc9c1ce757c              # double 0.911717299011499
	.quad	0x3fe247081dc283c4              # double 0.57117086231675573
	.quad	0x3fd01de6a600a4d8              # double 0.25182501040633332
	.quad	0x3fe87ac8bea28313              # double 0.76498830064164947
	.quad	0x3fcad0a2fce7a328              # double 0.20949208592289748
	.quad	0x3fc56369ad24ab58              # double 0.16709633783588163
	.quad	0x3fcf35f3e2d74900              # double 0.24383400512903819
	.quad	0x3fe090c743657e58              # double 0.51767314113017004
	.quad	0x3fda979575dcd7e8              # double 0.41550194273020091
	.quad	0x3fea2936702cceed              # double 0.817530840961323
	.quad	0x3fe2f145cc83e81f              # double 0.59195222801577418
	.quad	0x3fd944d5a6079640              # double 0.39482632840949705
	.quad	0x3fe602add5f6d72f              # double 0.68782703199278739
	.quad	0x3fd6fcd8b744159a              # double 0.35918252846780663
	.quad	0x3fd6947058cbfe56              # double 0.35280998870436997
	.quad	0x3fe198bccecb218a              # double 0.54989471806861556
	.quad	0x3fe01ba8fc405468              # double 0.50337647693471599
	.quad	0x3fd8e820102b6804              # double 0.38916780070360368
	.quad	0x3febf8b927b05900              # double 0.87411172630052647
	.quad	0x3feca980c3e99c43              # double 0.89569128288429345
	.quad	0x3f7620d231894a80              # double 0.0054023943599356139
	.quad	0x3fe294bd00991f2e              # double 0.58065652958700809
	.quad	0x3f6c420f4379a000              # double 0.0034494684330645953
	.quad	0x3fdbfe8458841e9c              # double 0.43740948337697616
	.quad	0x3fe294706c328439              # double 0.58062001354495074
	.quad	0x3fe87e21990b0442              # double 0.76539688006608508
	.quad	0x3f5cba8c87eb0e00              # double 0.0017534611103408038
	.quad	0x3fdc33e02f7a9ee4              # double 0.44066624294872114
	.quad	0x3fed6af5007bb11b              # double 0.91930627912873619
	.quad	0x3fb522a5afacf8f8              # double 0.082559924497193182
	.quad	0x3fe9d79d934fffa7              # double 0.80757025501224156
	.quad	0x3fcfe7a295899cdc              # double 0.24925644208563014
	.quad	0x3fb0b6919a1c28d8              # double 0.065285778164397512
	.quad	0x3fc24d34ce04236c              # double 0.14298114833243447
	.quad	0x3f893fb35f0f5e80              # double 0.012328530634405199
	.quad	0x3fb4ce95345e29f8              # double 0.081277203831781608
	.quad	0x3fe46177a2edc6fb              # double 0.63689786741289767
	.quad	0x3fd720e70e0957cc              # double 0.36138321276427798
	.quad	0x3fdde3a47a4d24c8              # double 0.46701919501772382
	.quad	0x3fd4a21a1dc687aa              # double 0.32239392192615901
	.quad	0x3fe2329f84ed7c88              # double 0.56867958033025534
	.quad	0x3fe86c6fe0aaf272              # double 0.76323694115087748
	.quad	0x3fbc2ca8ef5f0aa0              # double 0.11005645603203584
	.quad	0x3fe7d4dce6c56fca              # double 0.7447342402697299
	.quad	0x3fe1b2ff6357b0cb              # double 0.55310029414024464
	.quad	0x3fe993de51621e36              # double 0.79930034537478067
	.quad	0x3fee13c1611b0672              # double 0.93991154638224672
	.quad	0x3fe8cea574447921              # double 0.77522537907114863
	.quad	0x3fe09ae2ff9f061b              # double 0.51890706945431775
	.quad	0x3fc837c1e11f015c              # double 0.18920157901994628
	.quad	0x3fdbd9adefcb0c48              # double 0.43516109864521413
	.quad	0x3fc2b5340ff0c174              # double 0.14615488794653297
	.quad	0x3feae61432ccd87f              # double 0.84058580324087007
	.quad	0x3fe35772f6689118              # double 0.60442493559506527
	.quad	0x3fd0b03ca1b8dc62              # double 0.26075664323020054
	.quad	0x3fea364f5706ce5e              # double 0.81912962911014708
	.quad	0x3fd73c78c174a072              # double 0.36306589977403469
	.quad	0x3fb08a5737ffb540              # double 0.064610911532970938
	.quad	0x3fe5dc02646aceb8              # double 0.68310660946595814
	.quad	0x3fd7e4f72225eba2              # double 0.37334993681695938
	.quad	0x3feda5f3bc9957ec              # double 0.92650782428495181
	.quad	0x3fdaf3a84a70f510              # double 0.42112166661884576
	.quad	0x3f94f94de9347be0              # double 0.020482270582870998
	.quad	0x3fa6c712a35657e0              # double 0.044487554968483556
	.quad	0x3fd40ccf835d6354              # double 0.31328189686387486
	.quad	0x3fcff8fa69c6d358              # double 0.24978571095348445
	.quad	0x3fe78c583ba9152f              # double 0.73588191654622459
	.quad	0x3feb89dda9ca81d3              # double 0.86057933008492637
	.quad	0x3fee304f59eb9736              # double 0.94339721262506404
	.quad	0x3fdc4465483d0fc0              # double 0.44167453817885516
	.quad	0x3fd6977c05c2095a              # double 0.35299587786007225
	.quad	0x3fd1864a7e63a684              # double 0.27382147162152415
	.quad	0x3fdde1e6f8e13800              # double 0.4669129782167829
	.quad	0x3fb0777d2a15d708              # double 0.06432325627778479
	.quad	0x3fb70c21af79a348              # double 0.090028863278019178
	.quad	0x3fd8c707d1500b2a              # double 0.38714785996141876
	.quad	0x3fd01f72f2265900              # double 0.2519194950813386
	.quad	0x3fcfcbd65ca35010              # double 0.24840812228524145
	.quad	0x3fb3300ae580b4f8              # double 0.074951821356723403
	.quad	0x3fbf53d7ae796dc8              # double 0.12237308511378509
	.quad	0x3fe2bae6768d1898              # double 0.58531497149012335
	.quad	0x3fbdb5ba878f7c00              # double 0.11605420884687589
	.quad	0x3feb02785f787533              # double 0.84405153891171947
	.quad	0x3fefb3a108e3ec6c              # double 0.99067737327949378
	.quad	0x3fdf95573e6b9ebe              # double 0.49349003883115106
	.quad	0x3fea4ff0784d7129              # double 0.8222582196863516
	.quad	0x3fd2176d654cbb66              # double 0.28267989056160159
	.quad	0x3fec5208901aa826              # double 0.88501384873712108
	.quad	0x3fc7161028a13270              # double 0.18036081298704998
	.quad	0x3fef6e3fcc30e542              # double 0.9822081554513391
	.quad	0x3fe329a3e43c0593              # double 0.59883303238909702
	.quad	0x3fefaed01ad2657d              # double 0.99008946646351569
	.quad	0x3fe6a02d18c27b0a              # double 0.70705275379063548
	.quad	0x3fe274e4a24121c6              # double 0.57676917734448163
	.quad	0x3fec3014f843c948              # double 0.88086937417237099
	.quad	0x3fd99e99eea5f4cc              # double 0.40030525498862057
	.quad	0x3fd591508b1cba86              # double 0.33699430070093006
	.quad	0x3fb60a7504318ab0              # double 0.086097062610444252
	.quad	0x3fea610e7b9533da              # double 0.82434772622365959
	.quad	0x3fdbe37059fea8d2              # double 0.43575676716376421
	.quad	0x3fe67b33411153ef              # double 0.70253908833057988
	.quad	0x3fee36ba1fd98ea8              # double 0.94418054791136274
	.quad	0x3fe95c6b2f275b4a              # double 0.79253157815660669
	.quad	0x3fe9fc52bee6b00a              # double 0.81205117497802459
	.quad	0x3fd5e4b64142b08a              # double 0.34208446858497921
	.quad	0x3fdc22eadac241be              # double 0.43963118899503317
	.quad	0x3f80abb8ba9443c0              # double 0.0081400329532089754
	.quad	0x3fe4dfbf2133ee23              # double 0.65231281742984881
	.quad	0x3fd85070346d4c92              # double 0.37990956420726107
	.quad	0x3fe2120f104ed33b              # double 0.56470444855822366
	.quad	0x3fe9b5b034f16d5f              # double 0.80342874851650581
	.quad	0x3feaf6cc944b52dd              # double 0.84262684787480746
	.quad	0x3fc478fe9e1ed928              # double 0.15994246216514196
	.quad	0x3fcc7c781e8322c0              # double 0.22254849901061924
	.quad	0x3fe2e9c98dea1db5              # double 0.59103849141768328
	.quad	0x3fc0b664cd54255c              # double 0.13056621576132954
	.quad	0x3fee5c404b995961              # double 0.94876112714227301
	.quad	0x3fdb637bde923a26              # double 0.4279470132395623
	.quad	0x3fdd7fece16cd4c8              # double 0.46093294157192277
	.quad	0x3fe1a589aefe67b2              # double 0.55145725420447023
	.quad	0x3fe1a62e1733016f              # double 0.55153564959623036
	.quad	0x3fed4a1f6d5335f1              # double 0.91529818871066315
	.quad	0x3fbb76e335c50850              # double 0.10728282988296312
	.quad	0x3fcf88480dadd154              # double 0.24634648006361692
	.quad	0x3fe264a45ac8269c              # double 0.57478540163829761
	.quad	0x3fee2f777bec8abc              # double 0.94329427913574859
	.quad	0x3fcd59159cdac0ac              # double 0.22928114088927509
	.quad	0x3fae3d17be6858c0              # double 0.05905985068618369
	.quad	0x3febd09dcb80e8a1              # double 0.86921586748873747
	.quad	0x3fdfea8f28272a76              # double 0.49869135781469909
	.quad	0x3fd524522a28c3c4              # double 0.33034185521233561
	.quad	0x3fe1862acc352ea2              # double 0.54762782940220611
	.quad	0x3fd29609e09d5732              # double 0.29040762839337042
	.quad	0x3fe01c5cc24a1c4c              # double 0.50346219966093875
	.quad	0x3fc0f8456d9a8378              # double 0.13257663585411783
	.quad	0x3fdfccc8e563359e              # double 0.49687406922461175
	.quad	0x3f9eaaa6c8752080              # double 0.029947858796078197
	.quad	0x3fefa0907d0ff2dc              # double 0.98835014749746674
	.quad	0x3fcdcaec8a38c054              # double 0.23275524853807161
	.quad	0x3fed95610b06d83b              # double 0.92448475030574373
	.quad	0x3fef93f8df245192              # double 0.9868130071868555
	.quad	0x3feb966722c51c79              # double 0.86210972586640289
	.quad	0x3fed6aef7f0a1277              # double 0.91930365383502888
	.quad	0x3fe2f2c6b9ec449a              # double 0.5921357756907526
	.quad	0x3fd4e16d189a3772              # double 0.32625892069415052
	.quad	0x3fe3926219fa7842              # double 0.61161904405503997
	.quad	0x3fcb680029db33a0              # double 0.21411134761583828
	.quad	0x3fcc610f1ec0ca68              # double 0.22171200753799103
	.quad	0x3fc03507aa6399a8              # double 0.12661834544924244
	.quad	0x3fed7a382fc3dc34              # double 0.92116936997525167
	.quad	0x3fd74588e20d4552              # double 0.3636190612351885
	.quad	0x3fe2c835e2006915              # double 0.5869397558301751
	.quad	0x3fecb7f098046aff              # double 0.89745359125967628
	.quad	0x3fe5e29dcc5c1331              # double 0.68391313470838189
	.quad	0x3fea527594191f6e              # double 0.82256583142678408
	.quad	0x3fe612ca68d464b2              # double 0.6897937819914175
	.quad	0x3fde30fd54d3ec9a              # double 0.4717400864025848
	.quad	0x3fea038ad4299670              # double 0.81293240964869362
	.quad	0x3fe6a8bff942069f              # double 0.70809935267626034
	.quad	0x3fe2aa8c91dbbff6              # double 0.58331898200958565
	.quad	0x3fd936c74e4e120a              # double 0.39396841666192073
	.quad	0x3fca2266d0db8d64              # double 0.20417485426069526
	.quad	0x3fd0d7ced8f03534              # double 0.26317187486059201
	.quad	0x3fe3394c42f44df2              # double 0.60074437214865228
	.quad	0x3fa2d61cce46ba50              # double 0.036789798908433924
	.quad	0x3fdb30a5f4a8aaf4              # double 0.42484425442186979
	.quad	0x3f81ac4352fd4440              # double 0.0086293468190509203
	.quad	0x3fb8c0db9ffeb5d0              # double 0.096692778168935733
	.quad	0x3fa3e4eedf97a9c0              # double 0.038855995935438425
	.quad	0x3f818a745b523d80              # double 0.0085648622864755719
	.quad	0x3fef68b38ce81ff3              # double 0.98153092881056946
	.quad	0x3fcf6b66c55ba600              # double 0.24546513210889032
	.quad	0x3fc9786367263288              # double 0.19898645912725876
	.quad	0x3fed987957a4fca0              # double 0.92486254804670764
	.quad	0x3fe23d0caf320593              # double 0.56995233743525586
	.quad	0x3feee88fcddcbe16              # double 0.96588888366199188
	.quad	0x3fd5ba4b01a7c954              # double 0.3394954219976587
	.quad	0x3fd6d6c4a53dbc96              # double 0.35685840737182539
	.quad	0x3fd8157c0bde176e              # double 0.37631131323757117
	.quad	0x3f4ecf6113b95800              # double 9.4024887170962579E-4
	.quad	0x3fb12f66de0dcbb0              # double 0.067129544460654555
	.quad	0x3feb469e2e03f1e8              # double 0.85237034785637622
	.quad	0x3fe35c3cd42b637a              # double 0.6050094741759573
	.quad	0x3fceb21a13892ca4              # double 0.23981023744486152
	.quad	0x3fefe10b2a623521              # double 0.99622114446689036
	.quad	0x3fe6d4fee8df7536              # double 0.7135004566477281
	.quad	0x3fe863f7e797ee08              # double 0.7622031710920405
	.quad	0x3fe65853106feb68              # double 0.69828179560077519
	.quad	0x3feb49b980ca54c7              # double 0.85274958757749963
	.quad	0x3fd9cf229abdf820              # double 0.40326752769022001
	.quad	0x3f7aca5aba75a380              # double 0.0065406364513841408
	.quad	0x3fe5ec9aedeb981a              # double 0.68513246983343667
	.quad	0x3fa84672f1c7f830              # double 0.04741248322896785
	.quad	0x3fc19272bee8776c              # double 0.13728174516375746
	.quad	0x3fef35aa3f7ad7fd              # double 0.97530090711984451
	.quad	0x3fe9d35055d0bd92              # double 0.80704514275378103
	.quad	0x3fd079eb3e8fa3ec              # double 0.25744134053689893
	.quad	0x3fdc7bffde188978              # double 0.4450683277992975
	.quad	0x3fe6125bbb9e0a0d              # double 0.68974100727092635
	.quad	0x3fea2aab553d2cef              # double 0.81770865104900092
	.quad	0x3fe4edb46a920749              # double 0.65401669325385925
	.quad	0x3fe4b0f6c2a05ba9              # double 0.64660203946083528
	.quad	0x3fd3f8c369175c5a              # double 0.31205830824678105
	.quad	0x3fc6f5053bdfae34              # double 0.17935243056796113
	.quad	0x3fd552c222be07dc              # double 0.3331761683731409
	.quad	0x3fc2afaaabc221bc              # double 0.1459859217323024
	.quad	0x3fec4a34ee484c9a              # double 0.88405844249281818
	.quad	0x3fbf6faadd24bf30              # double 0.12279765986454261
	.quad	0x3fda686323ed5e9a              # double 0.41262129314916651
	.quad	0x3fad9846a6860a30              # double 0.057802398517214804
	.quad	0x3feee809f1840a22              # double 0.96582505389261919
	.quad	0x3fe1ef81022627c6              # double 0.56048632068381532
	.quad	0x3fc91da181a58430              # double 0.19621676283262124
	.quad	0x3fd5395c9179ebd2              # double 0.33162607390084731
	.quad	0x3fe7d625d7cb0283              # double 0.74489109179565138
	.quad	0x3fe9506cd233ed6c              # double 0.79106751494638904
	.quad	0x3fe15d7c1dc884ff              # double 0.54266172234579801
	.quad	0x3fd6a3371e1f0d26              # double 0.35371187154324202
	.quad	0x3fe9677ff3332b9e              # double 0.79388425350167657
	.quad	0x3fe9f34b48500876              # double 0.81094898341713306
	.quad	0x3fec1de6cc57018d              # double 0.87865009222154955
	.quad	0x3fcd546e65d3417c              # double 0.22913913700041266
	.quad	0x3fd8fc4685827116              # double 0.39039767301598383
	.quad	0x3fe5b062e9700bf5              # double 0.67778153985307077
	.quad	0x3fe07fb12b0f2ff7              # double 0.51558741006874598
	.quad	0x3fdcb232012e7904              # double 0.44837617984184441
	.quad	0x3fd39bafb590395c              # double 0.30637734156416285
	.quad	0x3fe638d730115c67              # double 0.69443854702229835
	.quad	0x3fc7c61d6e7191c0              # double 0.18573348896747
	.quad	0x3fcfb943fc5c0a88              # double 0.24784135648959116
	.quad	0x3feee346a4719162              # double 0.96524364583869393
	.quad	0x3feeca59e648d67a              # double 0.96220107057042914
	.quad	0x3fc35c39f3b8c9a8              # double 0.15125202560882411
	.quad	0x3fd9d19f2fb0182a              # double 0.40341930062311582
	.quad	0x3fcadf0acf0d99c4              # double 0.20993170843139641
	.quad	0x3fed2c7dd7a9b138              # double 0.91168110009815617
	.quad	0x3fc93cd20903a9b4              # double 0.19716859283592003
	.quad	0x3fe1085f225e314e              # double 0.53227192604530571
	.quad	0x3fe52a2bb76f3179              # double 0.66139779879590244
	.quad	0x3fd3871d61cbfec2              # double 0.30512175131296371
	.quad	0x3fc26d2e77054b90              # double 0.14395695506626938
	.quad	0x3fd185e602ed840e              # double 0.2737975147811661
	.quad	0x3fd5096f844255ae              # double 0.32870090404443431
	.quad	0x3feeb7447e9a540a              # double 0.95987152793043262
	.quad	0x3fe621b1cbd3e256              # double 0.69161310014812716
	.quad	0x3feca669b3655e2d              # double 0.8953140739276414
	.quad	0x3fa4e8ad750c59c0              # double 0.040837688959232121
	.quad	0x3fecad22529e1186              # double 0.89613453041288049
	.quad	0x3fed7d67e5579b7d              # double 0.92155833047296165
	.quad	0x3fd1999d12b1b472              # double 0.27500082803346182
	.quad	0x3fe030fd148a187d              # double 0.50598005305870652
	.quad	0x3fe1bb86edd94a7f              # double 0.5541414876445997
	.quad	0x3fe25cce1b434fca              # double 0.57382874798576577
	.quad	0x3fe1a8e285632aca              # double 0.5518658261510947
	.quad	0x3fee55d24944ee26              # double 0.94797624884035225
	.quad	0x3fd568d8ad0c394c              # double 0.33452431582636133
	.quad	0x3fe285ce427006be              # double 0.57883370376676857
	.quad	0x3fdb9b6e32ed33e4              # double 0.43136172269151829
	.quad	0x3fdef796437451a4              # double 0.48386150920239346
	.quad	0x3fe05af370c42968              # double 0.5111024095979646
	.quad	0x3fdfcc499ca36118              # double 0.49684372231196638
	.quad	0x3fda292c72c832b0              # double 0.40876303872282005
	.quad	0x3fc6c6646915c208              # double 0.1779294503317177
	.quad	0x3fd57d92b6a84396              # double 0.3357893737566483
	.quad	0x3fe36a68b076a94b              # double 0.60673937287837398
	.quad	0x3fd7335f04ab2cf6              # double 0.36251044708178826
	.quad	0x3febf45663d506d7              # double 0.87357635019744861
	.quad	0x3fe7049279c169ac              # double 0.71930812626242391
	.quad	0x3fe77295b284c943              # double 0.73273739687855544
	.quad	0x3fe9eebccbf3fa4b              # double 0.81039275965287894
	.quad	0x3fb8c5c76877e3b8              # double 0.096767867093048632
	.quad	0x3fe0eb5ceca8bc28              # double 0.52873083326801851
	.quad	0x3fefb71bf3f61677              # double 0.9911021962040668
	.quad	0x3fe3c748d87f9f41              # double 0.61807672772281574
	.quad	0x3fe1ac961c6ea1f1              # double 0.55231767228275264
	.quad	0x3fd427f180fab6d0              # double 0.31493795009269565
	.quad	0x3fc8f001fe3b6a78              # double 0.19482445634533341
	.quad	0x3fc750ad433a327c              # double 0.18214956076225863
	.quad	0x3fe33c96de3953cd              # double 0.60114615824806494
	.quad	0x3fe10fad55905797              # double 0.53316370689093417
	.quad	0x3feba6832fcfa8c0              # double 0.86407622659796601
	.quad	0x3fd415d85a767be4              # double 0.31383332094440974
	.quad	0x3fe05270da32ea80              # double 0.51006357781382405
	.quad	0x3fd4d58f5ace6eda              # double 0.32553466670809217
	.quad	0x3fe031ab224eab8c              # double 0.50606304836888816
	.quad	0x3fde2dacf218da2e              # double 0.47153781549733054
	.quad	0x3fdcbc4e3161f4a0              # double 0.44899325201533635
	.quad	0x3fbbc0d711568168              # double 0.10841125653542394
	.quad	0x3fdbe0b5bfb336b4              # double 0.43559020729740472
	.quad	0x3fe257657ad8699e              # double 0.57316850655779539
	.quad	0x3fd6e10b69884550              # double 0.35748563104524056
	.quad	0x3fe30fa203487e81              # double 0.59565830842252876
	.quad	0x3fd239f1b6619770              # double 0.28478663263955806
	.quad	0x3fd02200ae6214e2              # double 0.25207535771944667
	.quad	0x3fcdc7e8ade4b978              # double 0.2326632355775009
	.quad	0x3fe077e012fec858              # double 0.51463321409233753
	.quad	0x3fbc41a49527f9d0              # double 0.11037663117892937
	.quad	0x3fe86e7f04c4772a              # double 0.76348830157414693
	.quad	0x3fd7ccd2b9c62164              # double 0.37187641279208195
	.quad	0x3fc6350aba17db68              # double 0.17349371038991568
	.quad	0x3fd35de3360fbf7e              # double 0.30260544089741603
	.quad	0x3fe874c9f5dd4c4b              # double 0.7642564584770154
	.quad	0x3fedd9fab08810ad              # double 0.93285879591760124
	.quad	0x3fe0cba3b3bf4e82              # double 0.52485833269970805
	.quad	0x3fdbf2a71bdf6d06              # double 0.43668534967373807
	.quad	0x3fb024ff72b72c70              # double 0.063064542299956505
	.quad	0x3fdb774f22799f76              # double 0.42915705076892807
	.quad	0x3feb7639c22bc20e              # double 0.85818183826455807
	.quad	0x3fd67134f2b8c410              # double 0.35065959647460065
	.quad	0x3fe635179d7e7833              # double 0.69398098717261403
	.quad	0x3fc8baa22eda159c              # double 0.19319560325326968
	.quad	0x3fd3249e282767f8              # double 0.29910997315675969
	.quad	0x3fe6c72c632165db              # double 0.71181315766733222
	.quad	0x3feeb67f73ed5e01              # double 0.95977757112535766
	.quad	0x3fb47a3a35f4bdf8              # double 0.079990041897637698
	.quad	0x3fd0f19bfa98ec56              # double 0.26474666092298571
	.quad	0x3fca217517b9ddf4              # double 0.20414603861330216
	.quad	0x3fe4c5f8bdc82847              # double 0.64916646067400385
	.quad	0x3fd167858a2e1968              # double 0.27194345945499387
	.quad	0x3fe73ec06feb874f              # double 0.72641012057668231
	.quad	0x3fbb81c0fbb36520              # double 0.10744863648450975
	.quad	0x3fb6277bbabbf8e8              # double 0.086539967622204395
	.quad	0x3fdebd9d408f7f9a              # double 0.48032313637485802
	.quad	0x3fe6ba4bc453e4bd              # double 0.7102412066007201
	.quad	0x3fd6a25971726d94              # double 0.35365902022177775
	.quad	0x3fe59627b06774ba              # double 0.67457947210245739
	.quad	0x3fef964c25e38bb8              # double 0.98709685707250738
	.quad	0x3fdd11d1e24dfe80              # double 0.45421263790192512
	.quad	0x3f997b1a54060fe0              # double 0.024883662584684774
	.quad	0x3fd89c255266e65e              # double 0.38453038260522543
	.quad	0x3feff589aa6d929c              # double 0.99872287070009546
	.quad	0x3fb29ae719394a20              # double 0.072676128061438749
	.quad	0x3fd344c5cf9d5ed0              # double 0.30107255244136599
	.quad	0x3fe0b91e27e83c26              # double 0.5225973872601386
	.quad	0x3fe7c68dd536cf02              # double 0.74298755305650865
	.quad	0x3fa25ea3ab107ad0              # double 0.035878290779000843
	.quad	0x3fd9f1845ebbecde              # double 0.40536603213668154
	.quad	0x3fe23f924838eb4e              # double 0.57026018243718979
	.quad	0x3fe9e25b2429b462              # double 0.80888135016506291
	.quad	0x3fee10d3d6375a19              # double 0.93955413664918119
	.quad	0x3fe5df51ab4c6072              # double 0.68351062256534889
	.quad	0x3fda0dfbddc5e8ea              # double 0.40710350663688522
	.quad	0x3fdb9627342f074e              # double 0.43103962036194765
	.quad	0x3f961c11c4e29600              # double 0.021591451303399012
	.quad	0x3fe4aebec1b7bf45              # double 0.64633119426250885
	.quad	0x3fb33154d5df7448              # double 0.074971487250381164
	.quad	0x3fb34bb4df5ba6e0              # double 0.075373940020337482
	.quad	0x3fe797a4116ada47              # double 0.73726085092386817
	.quad	0x3fde0457ab24a360              # double 0.46901504243083103
	.quad	0x3fd67c6183a65932              # double 0.35134160858560215
	.quad	0x3fd81658e6c5309a              # double 0.37636396919402559
	.quad	0x3fe3c2131ffec451              # double 0.61744076012667837
	.quad	0x3fef28c5bca361b8              # double 0.97372710078621249
	.quad	0x3fe270c99b764927              # double 0.57626800883943907
	.quad	0x3fe8ba80ae9d0444              # double 0.77276643852395254
	.quad	0x3fe3f9497fdb1acb              # double 0.624180555075179
	.quad	0x3fd1223a45b920d2              # double 0.26771408852483802
	.quad	0x3fe749b42b6c20df              # double 0.72774704438145565
	.quad	0x3fc2ff917ea803a4              # double 0.14842432674779815
	.quad	0x3feff30e81dd9448              # double 0.99842000355114013
	.quad	0x3fe4a7a30ebd599e              # double 0.64546349409902226
	.quad	0x3fdde0f23c5f9b40              # double 0.46685462852331128
	.quad	0x3feb844a4e3357c8              # double 0.8598987128595974
	.quad	0x3fd3915066d78a86              # double 0.30574426692161472
	.quad	0x3fe56b52244789e5              # double 0.66935069166021022
	.quad	0x3fe6af12e601b772              # double 0.70887131617722177
	.quad	0x3f88edfaea701e00              # double 0.012172661094168369
	.quad	0x3fee0a1d56b8e68a              # double 0.93873469293539924
	.quad	0x3fe89bc16da1fc15              # double 0.76901313221594825
	.quad	0x3fe225b37cc7fadd              # double 0.56710218783686239
	.quad	0x3fd332dbb0040654              # double 0.29997913540873822
	.quad	0x3fc8b1ba1ad02460              # double 0.19292379674178317
	.quad	0x3fe325c482bdc1b7              # double 0.59836030517003891
	.quad	0x3fd483ea9cbde66a              # double 0.32055154139343378
	.quad	0x3fed9f7ab9dc671e              # double 0.92571770001379483
	.quad	0x3fe93a1a93d616ee              # double 0.78834275125765685
	.quad	0x3fd31530d6d5b164              # double 0.2981683824534882
	.quad	0x3fec3185d453e401              # double 0.8810452601456974
	.quad	0x3fc8a1b4502d3e78              # double 0.19243482508544552
	.quad	0x3f7fd4f1bcaad880              # double 0.0077714388705115711
	.quad	0x3fe2f39b37b668f9              # double 0.59223709946971248
	.quad	0x3fe2b89a4522ed0c              # double 0.58503449919899841
	.quad	0x3fdf311a73433b7e              # double 0.48737202888599274
	.quad	0x3feba14ffb758306              # double 0.86344145882694145
	.quad	0x3fb0a2369cb6c1d8              # double 0.064975178966739988
	.quad	0x3fd1219edd899614              # double 0.26767703661457287
	.quad	0x3fceec7b4e51eeb8              # double 0.2415918476507295
	.quad	0x3feac85b1f50206e              # double 0.83695751300639443
	.quad	0x3fcdcb3a9d07b928              # double 0.23276455562103959
	.quad	0x3fe794db7cf8a8bf              # double 0.73692106636487853
	.quad	0x3febcc376340ad11              # double 0.86867875466615108
	.quad	0x3fb1a6be9b96e398              # double 0.068950570092864871
	.quad	0x3fea621fd2caf30f              # double 0.82447806520903721
	.quad	0x3fe5e2b2b5cfa355              # double 0.68392310628869757
	.quad	0x3fc5d167a4090b7c              # double 0.17045302876985235
	.quad	0x3fb8e07b5d6e5698              # double 0.097175321874909293
	.quad	0x3fe1e0b1d12e4244              # double 0.55867853980641557
	.quad	0x3fdee5c21fa1a014              # double 0.48277333344458495
	.quad	0x3fd0e51e6a9dc55e              # double 0.26398430263278339
	.quad	0x3fde44a6e17ab5da              # double 0.47294017810312783
	.quad	0x3fbfda5fdec68410              # double 0.12442588032583068
	.quad	0x3feac341bf449cf3              # double 0.83633506161723259
	.quad	0x3fa7763fe1a28c50              # double 0.045824047368363652
	.quad	0x3fe09107d37ac869              # double 0.51770392708409674
	.quad	0x3fea404507bc3b55              # double 0.82034541617199841
	.quad	0x3fda85f2246bae86              # double 0.41442540699674912
	.quad	0x3f615bf8f8a8bc00              # double 0.0021190512391267013
	.quad	0x3fd0120d2706212e              # double 0.25110176859790811
	.quad	0x3f860eab3f85e280              # double 0.010770166278903703
	.quad	0x3fe7f236acf46cef              # double 0.74831708698493837
	.quad	0x3fe4f15e74caec34              # double 0.65446398554866514
	.quad	0x3fa39e5cc071ef80              # double 0.038317583553150847
	.quad	0x3fa7f092b90c0040              # double 0.046757302368860554
	.quad	0x3fef3220dd7ec1a7              # double 0.97486918698091507
	.quad	0x3fa4a4d39f2bc4e0              # double 0.040320027523088831
	.quad	0x3fefb76344cd3930              # double 0.99113620221922893
	.quad	0x3fe97c290576d697              # double 0.79640627925137408
	.quad	0x3fe3482522fdde9b              # double 0.60255677065193269
	.quad	0x3fd4287a3756e7ac              # double 0.31497054485555043
	.quad	0x3fec9822e8cfb4dc              # double 0.89357133360831708
	.quad	0x3fbf059ae52ba018              # double 0.12117927641850235
	.quad	0x3fb60cedfa33b9b8              # double 0.086134790024266716
	.quad	0x3fed21bc338b9f52              # double 0.91036806170903106
	.quad	0x3fd2caf56c494fac              # double 0.2936376149639226
	.quad	0x3fb950a4d37a06c8              # double 0.09888677752499142
	.quad	0x3fadf615614b04d0              # double 0.058518093229858459
	.quad	0x3fc5b0ab19c01f50              # double 0.16945399052951382
	.quad	0x3faebd4a1beb09b0              # double 0.060037914188359465
	.quad	0x3fea75890456cdc5              # double 0.8268475613353351
	.quad	0x3fe8efbbc5d3c706              # double 0.77926434171806203
	.quad	0x3fe47e170c15e40b              # double 0.64039184914065694
	.quad	0x3fed078fca5ef488              # double 0.9071730568463332
	.quad	0x3feefb85013d7358              # double 0.96820307008929784
	.quad	0x3fd204bbb8cbc9d8              # double 0.28153889700402379
	.quad	0x3fdca35783ad8ac4              # double 0.44746959551973142
	.quad	0x3fe351068f328cb8              # double 0.60364082306150291
	.quad	0x3fef3e2c9548f0d6              # double 0.97633961827480209
	.quad	0x3fea1c21fa0febc4              # double 0.81593417015334823
	.quad	0x3fe6d59dae543a9e              # double 0.7135761647094403
	.quad	0x3fecf8a7eff7ddc2              # double 0.90535351628107485
	.quad	0x3fe75626414a53ee              # double 0.72926628829975271
	.quad	0x3fe9063e6bd6eb02              # double 0.78201218664557381
	.quad	0x3fc657bb9167d6fc              # double 0.17455238914379112
	.quad	0x3fb57ca50cfa2200              # double 0.083933177631600131
	.quad	0x3fc2f5040d346990              # double 0.14810228962671745
	.quad	0x3fe7ed12d59de613              # double 0.74768964502362889
	.quad	0x3fd775140c020578              # double 0.3665208928360566
	.quad	0x3fe437e94df478fe              # double 0.63182511544781028
	.quad	0x3fd5f21a3099e680              # double 0.34290175195892658
	.quad	0x3fe51cf823b24dd4              # double 0.65978629085514706
	.quad	0x3fcc626da7ca3988              # double 0.22175379460209066
	.quad	0x3fee835a7eb452f3              # double 0.95353436228705701
	.quad	0x3fd9268d68fa0078              # double 0.39297805072420244
	.quad	0x3feeaddb07095eaa              # double 0.95872260450683666
	.quad	0x3fda68fb56c5d9b6              # double 0.41265758012687159
	.quad	0x3f58e6e302add600              # double 0.001519891443164112
	.quad	0x3fe252b3b717a40b              # double 0.57259546051239008
	.quad	0x3fed337459bfe1be              # double 0.91253106621939373
	.quad	0x3feea4ff12632179              # double 0.95764115897422564
	.quad	0x3fedd45324e3bb37              # double 0.93216855244631958
	.quad	0x3fef84ca553a3544              # double 0.98495976110431415
	.quad	0x3fd7861b6609dbde              # double 0.36756024326990466
	.quad	0x3fddae3b52bcd208              # double 0.46375926093904285
	.quad	0x3fcfca5346a50d34              # double 0.24836197804879989
	.quad	0x3fd86c00f6aa22a0              # double 0.3815920265993018
	.quad	0x3fb4312a45874038              # double 0.078875200247467414
	.quad	0x3fc4a4c1bff07108              # double 0.16127797958404977
	.quad	0x3fabfa99f9e11450              # double 0.054646312477907188
	.quad	0x3fe16d779cffd56f              # double 0.54461270011840479
	.quad	0x3fe1ae9264cfb324              # double 0.55256004037582729
	.quad	0x3fead5ce60c13088              # double 0.83859938523666333
	.quad	0x3fe51a7fef0c3ef0              # double 0.65948483170538275
	.quad	0x3fd74becb18df856              # double 0.36400906886399775
	.quad	0x3f970096b638fb00              # double 0.022463183280929222
	.quad	0x3fc91f54f4f2c2c0              # double 0.19626867256513059
	.quad	0x3fe068add3345760              # double 0.51277819872732877
	.quad	0x3fb62316a9a51d68              # double 0.086472908417922434
	.quad	0x3fe68231c1c8797e              # double 0.70339286659491029
	.quad	0x3fc3d8f4c8843bf4              # double 0.15505847731444045
	.quad	0x3fef249162569cc6              # double 0.9732138558073522
	.quad	0x3fc2af406630f4c8              # double 0.14597325315290832
	.quad	0x3fdc85f742655124              # double 0.44567662700616695
	.quad	0x3fe3a0e516d880bf              # double 0.61339048826268783
	.quad	0x3fe2ee813d63104d              # double 0.59161436071054541
	.quad	0x3fe314f459012404              # double 0.59630792030031943
	.quad	0x3fe24a9b2ac279a8              # double 0.57160719253061121
	.quad	0x3fbe824a14096570              # double 0.11917555798699708
	.quad	0x3fb956ef1ddd0088              # double 0.098982758322565201
	.quad	0x3fe0e3a11f148a41              # double 0.52778678961141889
	.quad	0x3fe99c8103dc3440              # double 0.80035448793353936
	.quad	0x3fd32f845200504c              # double 0.29977519996578361
	.quad	0x3fc2f4ccd7625c9c              # double 0.14809570805366412
	.quad	0x3fe791cd0d13ed87              # double 0.73654797128931271
	.quad	0x3fc35f4122346c4c              # double 0.15134443445353651
	.quad	0x3fd583e1ce2d93b8              # double 0.33617444166730648
	.quad	0x3fe161e08ac2ce61              # double 0.54319789029836951
	.quad	0x3fddd9b8b066b4de              # double 0.46641366221122194
	.quad	0x3fe640b664d5d1c6              # double 0.69539947218304898
	.quad	0x3fe3e4cc0bfb674e              # double 0.62167932834857154
	.quad	0x3fbc9b6b5e05d908              # double 0.11174651189307749
	.quad	0x3fecb99fab574772              # double 0.89765914406801373
	.quad	0x3fd08fb9cfa655a2              # double 0.25877232816977813
	.quad	0x3fe0de8385232595              # double 0.52716232303025612
	.quad	0x3fe23341346688bc              # double 0.56875667795636486
	.quad	0x3fe8ab1da147e113              # double 0.7708881521239469
	.quad	0x3fb57afc578cf870              # double 0.083907863020586281
	.quad	0x3fd43808c6d9f324              # double 0.31592006129339922
	.quad	0x3fb9dee227833c80              # double 0.10105718102134809
	.quad	0x3fea6a3dd3d4e497              # double 0.82546893475877681
	.quad	0x3fe1c9d4ce2c7d7a              # double 0.5558876063186482
	.quad	0x3fd9e3fafbcc22b6              # double 0.40453981961813257
	.quad	0x3fee732de851b6b3              # double 0.95155997633783895
	.quad	0x3fdde588edd50768              # double 0.46713469720645273
	.quad	0x3fbe223aacfc1be8              # double 0.11770979617368449
	.quad	0x3fd3372cb85dad56              # double 0.30024259571537948
	.quad	0x3fee7c5548d4f8fb              # double 0.95267738556847747
	.quad	0x3fd5b4e6de85cc0c              # double 0.33916637163855579
	.quad	0x3fe208616dd69d8d              # double 0.56352302029419976
	.quad	0x3fecd16b426c0989              # double 0.90056384060908201
	.quad	0x3fe21f6d47b548de              # double 0.56633628850456907
	.quad	0x3fed93450e1978b7              # double 0.92422726396377797
	.quad	0x3fd835cde8277144              # double 0.37828395530029391
	.quad	0x3feab91194793760              # double 0.83509139059763626
	.quad	0x3fed40084779c0be              # double 0.91406644783094015
	.quad	0x3faf66890e4d8620              # double 0.06132915782542292
	.quad	0x3fe0b5f267289936              # double 0.52221031330262835
	.quad	0x3feff7152dd209dc              # double 0.9989114661150853
	.quad	0x3fdba70807e063a0              # double 0.43206978577796384
	.quad	0x3fe43e7d3973cd8c              # double 0.63262807103312602
	.quad	0x3f8655755392fc40              # double 0.01090518628404713
	.quad	0x3fe292e509aea6f2              # double 0.58043147936879635
	.quad	0x3fbc0a56c7220c20              # double 0.10953276025433967
	.quad	0x3fdb1c32fb074a1e              # double 0.42359613909244043
	.quad	0x3fcbcce149d4ff30              # double 0.21718994240836187
	.quad	0x3fd016bd6648f36e              # double 0.25138792980924662
	.quad	0x3fc71d5db85f8670              # double 0.18058368208498932
	.quad	0x3fd6dfaa39181c4a              # double 0.35740142417529752
	.quad	0x3fdecb014a4425bc              # double 0.48114044430311842
	.quad	0x3fd894f2e5dc48a0              # double 0.38409111449539957
	.quad	0x3fe6e4cf5e538cb7              # double 0.71543091223829591
	.quad	0x3fb8ec171f184438              # double 0.097352452365400022
	.quad	0x3fb8c4df96faed38              # double 0.096754049644847906
	.quad	0x3fda6f833f368418              # double 0.41305619404926253
	.quad	0x3fdd260d5d0d3da4              # double 0.45544752204019745
	.quad	0x3fb09351a8723d48              # double 0.064747909187862551
	.quad	0x3fcc85d060b3bd34              # double 0.22283367845327862
	.quad	0x3fbccede33759fa8              # double 0.11253155475935606
	.quad	0x3fd279715117f4dc              # double 0.28866227072997019
	.quad	0x3fe47bb76817473a              # double 0.6401021035219181
	.quad	0x3fd59f08a4f1e5d8              # double 0.33783165080930422
	.quad	0x3fd79bfde747f996              # double 0.36889598451662076
	.quad	0x3fb9a4155bccb530              # double 0.10015996447755948
	.quad	0x3fc4ef2568a9a744              # double 0.16354816065295996
	.quad	0x3fefbc18c0197975              # double 0.99171102065501648
	.quad	0x3f9f9ca68fce8c20              # double 0.030871012236854622
	.quad	0x3feec438810f0d35              # double 0.96145272452159835
	.quad	0x3fe3399db3775b30              # double 0.60078320552825026
	.quad	0x3fe94a6b9d7d7b83              # double 0.79033451804922128
	.quad	0x3fe2909b2bbad91f              # double 0.58015211621276197
	.quad	0x3fed9f365e0f4657              # double 0.92568510409382554
	.quad	0x3fe5481824d1a0a5              # double 0.66505057517226318
	.quad	0x3fe5fa466a803dd5              # double 0.68680115509953998
	.quad	0x3fef7af733077812              # double 0.98376045195232309
	.quad	0x3fd381c877d3dfe8              # double 0.30479633047025212
	.quad	0x3f91291741349680              # double 0.016758311610053145
	.quad	0x3fca970e88b13658              # double 0.20773488687921104
	.quad	0x3fdcb055a5e8390c              # double 0.44826260759227021
	.quad	0x3fd4ffabb89b24c6              # double 0.32810490634853939
	.quad	0x3fe78d6666059468              # double 0.73601074148303969
	.quad	0x3fe23546ea437f0f              # double 0.56900354151363952
	.quad	0x3fd61d94bcb2f164              # double 0.34555548122059165
	.quad	0x3fb56fb206f8a788              # double 0.083735586835841258
	.quad	0x3f65cb7644a16e00              # double 0.0026604947970960691
	.quad	0x3fe1df3a8cc5def5              # double 0.55849959845269714
	.quad	0x3fe65b349e1870e6              # double 0.69863348844549189
	.quad	0x3fe939c37f815bf2              # double 0.78830122855549534
	.quad	0x3fe8461f6e08be07              # double 0.75855990878147928
	.quad	0x3fdc98ae3379357e              # double 0.44681887652117058
	.quad	0x3fda7aee820fb722              # double 0.41375315381343303
	.quad	0x3fdfa5d1a0c73498              # double 0.49449578000059935
	.quad	0x3fd84f0ad30e6968              # double 0.37982435809103388
	.quad	0x3fdf5f1d156b6908              # double 0.49018027393107433
	.quad	0x3fe757128d7557a1              # double 0.7293789637430913
	.quad	0x3fee82ceaead9801              # double 0.95346769444290669
	.quad	0x3fd431b8e092dda2              # double 0.3155348008253559
	.quad	0x3f87f7bdb980af00              # double 0.011702997420875771
	.quad	0x3fe6c8a64ff4cffa              # double 0.71199336639847322
	.quad	0x3fba4dd006046368              # double 0.10274982592490078
	.quad	0x3fea60a7887e0d74              # double 0.82429863604231323
	.quad	0x3fe74bc707950acc              # double 0.72800017815492302
	.quad	0x3fea6153936b6f34              # double 0.82438067238715584
	.quad	0x3fe8c3561d00f328              # double 0.77384477295672571
	.quad	0x3fe85be94dd719ad              # double 0.76121964648409846
	.quad	0x3fe302f91a6dd653              # double 0.5941129223053373
	.quad	0x3f8ddaa40fd86a40              # double 0.014577180608332019
	.quad	0x3fcc58b5511043ac              # double 0.22145716150455763
	.quad	0x3fd45b496701be56              # double 0.31807169970759241
	.quad	0x3feea36440342361              # double 0.95744526424196519
	.quad	0x3fe61ca37b9ff755              # double 0.69099592347604732
	.quad	0x3fdfcf316f095c1c              # double 0.49702106326498252
	.quad	0x3fee78415b056f59              # double 0.95217960145553626
	.quad	0x3fc0b51bf8ec8624              # double 0.13052701620567675
	.quad	0x3fec28a47f883535              # double 0.87996125134092174
	.quad	0x3fd121b8b7b84742              # double 0.26768320027723658
	.quad	0x3fdb1dfc3d407216              # double 0.42370515805831255
	.quad	0x3feba5a2b00a0f02              # double 0.86396917708086129
	.quad	0x3fd32918cb1d48dc              # double 0.29938335261716786
	.quad	0x3faed35f7c1d87b0              # double 0.06020639791564919
	.quad	0x3fd53d2e3d934794              # double 0.33185916913236579
	.quad	0x3fec050f495acb67              # double 0.87561764075358617
	.quad	0x3febf03368faee18              # double 0.87307138923592031
	.quad	0x3fc7c6d6c1b1ecfc              # double 0.18575558145298732
	.quad	0x3fb733bf56401ff0              # double 0.090633352811096079
	.quad	0x3fde03497b2efeb6              # double 0.46895062474866778
	.quad	0x3fe6de519d8a5214              # double 0.71463852662651783
	.quad	0x3f706e99ad905480              # double 0.0040117266699059018
	.quad	0x3fe58a905aa2a808              # double 0.67316453649732555
	.quad	0x3fd8715ccb5066e8              # double 0.38191909651651068
	.quad	0x3fa7958b205abb60              # double 0.046062801074518545
	.quad	0x3f8b7ea00e4b3fc0              # double 0.013425112186638333
	.quad	0x3fd23fd59e927cea              # double 0.28514614568298546
	.quad	0x3fe1d0ea992ee1b4              # double 0.55675249022083628
	.quad	0x3fe62a6fbee5983f              # double 0.69268023762266029
	.quad	0x3fdf347b12119cae              # double 0.48757817043810803
	.quad	0x3fe0f11f65f07d08              # double 0.5294339171413478
	.quad	0x3feb70d616ff8ade              # double 0.85752396098936479
	.quad	0x3f8e4ec2d75f7340              # double 0.014798662374170157
	.quad	0x3fe6337e070379ec              # double 0.69378568048324274
	.quad	0x3fea6d668d2776ea              # double 0.82585456437274485
	.quad	0x3fd658aaa712f8a2              # double 0.34916178050833413
	.quad	0x3fbe15c9811e3148              # double 0.11751994516652531
	.quad	0x3fed359c6be9eef8              # double 0.91279431416430068
	.quad	0x3fe74bbbae04bff2              # double 0.72799476612089919
	.quad	0x3faabbbcaa94d110              # double 0.052213569472231325
	.quad	0x3fb9c6644bdf6e88              # double 0.10068346836436082
	.quad	0x3fec826c903a516f              # double 0.89092090768330745
	.quad	0x3feee1af4e5efcaf              # double 0.9650494127926289
	.quad	0x3fe506494677be69              # double 0.65701736224396001
	.quad	0x3fd2689654a7ae5e              # double 0.28763349787798187
	.quad	0x3fee6917798ed5f6              # double 0.95032857648646885
	.quad	0x3fed845cf7c6ac51              # double 0.92240761178744368
	.quad	0x3fef1e5e24ab4c3a              # double 0.97245700036945171
	.quad	0x3fe0fb73a5844e2f              # double 0.5306947930097915
	.quad	0x3fd5fdad6deef5c4              # double 0.3436082433289267
	.quad	0x3fc593db1ae45d30              # double 0.16857470334137181
	.quad	0x3fed13705eebf18b              # double 0.90862291850457788
	.quad	0x3fc676f26ef3ced0              # double 0.17550497453304681
	.quad	0x3fdea13ac056889c              # double 0.47859066756257973
	.quad	0x3fe0690a1c18ecde              # double 0.51282220351950136
	.quad	0x3fd4960df3d9ef68              # double 0.32165859998325752
	.quad	0x3fabe9ec888b2cf0              # double 0.054519073169638221
	.quad	0x3fc8cbc9c4e315ec              # double 0.19371912110925338
	.quad	0x3fc64ef2d4e4e178              # double 0.17428431887834583
	.quad	0x3fb53a391a77a270              # double 0.082919663392780895
	.quad	0x3fdbca5841ce188e              # double 0.43422514368320086
	.quad	0x3fe58ede3355fa73              # double 0.6736899378445983
	.quad	0x3fdb86ee0b6aacf4              # double 0.43011046519195806
	.quad	0x3fecba5824f13149              # double 0.8977471086050538
	.quad	0x3fbed43092046c38              # double 0.12042525830149564
	.quad	0x3fe64043c496c9f3              # double 0.69534481426518224
	.quad	0x3fe5ce2ef1079f1e              # double 0.68141886783721239
	.quad	0x3fd534ae8d6c3a0e              # double 0.33134044466797341
	.quad	0x3fe100f44d0e23d2              # double 0.53136649179315953
	.quad	0x3fe3736943eff93c              # double 0.60783828038237386
	.quad	0x3fe9629aadc0af9f              # double 0.79328664718694941
	.quad	0x3fe0d10b98a29e07              # double 0.52551822482649946
	.quad	0x3fc2eb13806193ac              # double 0.14779895561801248
	.quad	0x3fdec52b23e62b3c              # double 0.480784211213791
	.quad	0x3fd068681bdc542e              # double 0.25637247772948768
	.quad	0x3fddb23d6f248132              # double 0.46400390485543419
	.quad	0x3fc85b73be57efb4              # double 0.1902908973132732
	.quad	0x3fcb006cc139ddd0              # double 0.2109504645811584
	.quad	0x3fcbc7a7c9a4ff04              # double 0.21703049989627499
	.quad	0x3fec02180134399f              # double 0.87525558695942951
	.quad	0x3fd549ad7da9ba48              # double 0.33262192985322203
	.quad	0x3fd2cfb15a67cc86              # double 0.29392656162890096
	.quad	0x3fc17a21afc16bd4              # double 0.13653966028036157
	.quad	0x3fec82c1a0ff6bc3              # double 0.89096147007818904
	.quad	0x3fefe520108f26b9              # double 0.99671939119544739
	.quad	0x3fe0df47f314b1d9              # double 0.52725598789907757
	.quad	0x3fe96e82e77af33b              # double 0.79474015437117573
	.quad	0x3fe117eaf1aae794              # double 0.53416964722349514
	.quad	0x3fe88c68543606d1              # double 0.76713959166974111
	.quad	0x3faea6bf87d814c0              # double 0.059865937550094284
	.quad	0x3fce92fa5a8b67e8              # double 0.23886041089173138
	.quad	0x3fe19277dd7a2d4e              # double 0.54912942178035862
	.quad	0x3fe920ad381e5d25              # double 0.78523884735742355
	.quad	0x3fd43f1feededf36              # double 0.31635282828527822
	.quad	0x3fd556b746e55fa4              # double 0.33341772006451209
	.quad	0x3fe537bc233df5db              # double 0.66305357821664346
	.quad	0x3fea853e45630d21              # double 0.82876504470951684
	.quad	0x3fcf1da590881180              # double 0.24309224660113316
	.quad	0x3fedef0e9fbb5e65              # double 0.9354317779315805
	.quad	0x3fe925e87920cc9f              # double 0.78587745340191251
	.quad	0x3febfa26aab666d2              # double 0.8742860159138337
	.quad	0x3fdb55ea9e9c1374              # double 0.42711892594552769
	.quad	0x3fd499ae29e08db4              # double 0.32187990274016021
	.quad	0x3fa1f535a03ec0a0              # double 0.035073924838230797
	.quad	0x3fedc11eda3997e8              # double 0.92982428190293565
	.quad	0x3feea7af4a30b1c4              # double 0.95796932688022495
	.quad	0x3fc38ee5204c2b90              # double 0.15279831006077105
	.quad	0x3fd41f3cf1cbf60a              # double 0.3144066201492427
	.quad	0x3fe4815bff84693a              # double 0.64079093843182666
	.quad	0x3fe82414d993b382              # double 0.75440447326182913
	.quad	0x3fe9a5a7e74a995a              # double 0.80147166418172877
	.quad	0x3fe68384e7db4da1              # double 0.70355458530905335
	.quad	0x3fe4104a37c5f2d4              # double 0.62698851483545548
	.quad	0x3fe09424318c3fb9              # double 0.5180836646777528
	.quad	0x3fd4845b68aeff7e              # double 0.32057843420988508
	.quad	0x3fc675dbfbd6faac              # double 0.1754717807470646
	.quad	0x3fb856360ec3e2a8              # double 0.095065477947978594
	.quad	0x3fe57e8f84f74c74              # double 0.6716992947571172
	.quad	0x3fcfdc4002925004              # double 0.24890899777949482
	.quad	0x3febc164255b3737              # double 0.86735732360987228
	.quad	0x3fec0f87d2ab6a19              # double 0.87689582010654299
	.quad	0x3fd5d9cd9931c606              # double 0.34141864738839478
	.quad	0x3fe348a13672eb23              # double 0.60261593470145092
	.quad	0x3fe64f9389f8c84e              # double 0.69721390674227179
	.quad	0x3fb374899997dad0              # double 0.075996971128783785
	.quad	0x3fbdc694c6111c48              # double 0.11631135783783109
	.quad	0x3fe94017d61bed80              # double 0.78907386606390162
	.quad	0x3fe93aafd3627b0e              # double 0.78841391836235331
	.quad	0x3fe33b268b0f1c52              # double 0.60097052726713174
	.quad	0x3fe076c4c3530004              # double 0.51449812077771684
	.quad	0x3fe01f138d35dc25              # double 0.50379350261835454
	.quad	0x3fed19bcadd7331b              # double 0.9093917270016364
	.quad	0x3fe4e5f5818d5396              # double 0.6530711679757697
	.quad	0x3fe34b610afaff5b              # double 0.60295154709454424
	.quad	0x3fb50e496af959e0              # double 0.082249249092775312
	.quad	0x3fe863ebe2151d3d              # double 0.76219743878110757
	.quad	0x3fe77645b9f49028              # double 0.73318754500769945
	.quad	0x3fc489fcea23f4c8              # double 0.16046105797423693
	.quad	0x3fdb986b9af83456              # double 0.43117799886460284
	.quad	0x3fee090d2549df24              # double 0.9386049011509141
	.quad	0x3feaa9b26047bb30              # double 0.83321493916250766
	.quad	0x3feb9e40f9da98e3              # double 0.86306809234227122
	.quad	0x3fe1eebb76319c55              # double 0.56039212307667674
	.quad	0x3fdc88dd35ac25ac              # double 0.4458535217423456
	.quad	0x3fd81beb24dfc612              # double 0.37670401192653558
	.quad	0x3fc017f7c2b75dc8              # double 0.1257314396632252
	.quad	0x3fef7386486ff212              # double 0.98285211704166131
	.quad	0x3fea4f6c83e0229f              # double 0.82219529873789898
	.quad	0x3fc50ca583265834              # double 0.16444844154165283
	.quad	0x3fdad986046634d6              # double 0.41952658109296459
	.quad	0x3feacad4c2dfa518              # double 0.83725965558292881
	.quad	0x3f864a15c0266fc0              # double 0.010883493353325835
	.quad	0x3fb48b2fc3a61848              # double 0.080248818651029841
	.quad	0x3fe532144f1b1c7c              # double 0.66236319971439128
	.quad	0x3fc0176572808938              # double 0.12571399775431202
	.quad	0x3fe964d1fb6b23c0              # double 0.79355715851954045
	.quad	0x3fd16c119ed507aa              # double 0.27222099791480991
	.quad	0x3fc2b6dd23c4a124              # double 0.14620556112755267
	.quad	0x3fd166395d7100e4              # double 0.27186426282061249
	.quad	0x3f948269af1e5260              # double 0.020028735459691638
	.quad	0x3fd110582923ed3a              # double 0.26662258164988695
	.quad	0x3feee33ca8aaeb2a              # double 0.96523888533497382
	.quad	0x3fdbdee1dbd90ddc              # double 0.43547865361708005
	.quad	0x3fd032fc1d7c4e02              # double 0.25311186675500619
	.quad	0x3fd87347d734a98e              # double 0.38203617111380417
	.quad	0x3fed03907aa44ac8              # double 0.90668510392637192
	.quad	0x3fdbaced9bfc5512              # double 0.43242969735122572
	.quad	0x3fdad6a102442426              # double 0.41934991093927676
	.quad	0x3fe1fcf268447663              # double 0.56212730755551055
	.quad	0x3fc23c026e00afa4              # double 0.14245634433006871
	.quad	0x3fd7c85360b21300              # double 0.37160191004686283
	.quad	0x3fccfe41465f4444              # double 0.22650924621714996
	.quad	0x3fe77f764924395a              # double 0.73430933270882837
	.quad	0x3fe3e9a22ecf7c7b              # double 0.62226971762346694
	.quad	0x3fe9d8050ac3bb9d              # double 0.80761959173638653
	.quad	0x3fbd415d10f2f8b8              # double 0.11427861846729825
	.quad	0x3fd999ed386a357c              # double 0.40001993664994706
	.quad	0x3fe3dfecf3cfba90              # double 0.62108466739103285
	.quad	0x3fe1fac7c7f23f87              # double 0.56186284114845442
	.quad	0x3fd6c395e68b806e              # double 0.35568759454873244
	.quad	0x3fc34ff4a2a2f8c4              # double 0.1508775514720978
	.quad	0x3febef53882e838b              # double 0.87296463582980388
	.quad	0x3feed52c04254de7              # double 0.96352196511946608
	.quad	0x3fcbaea2bab9241c              # double 0.21626695744842628
	.quad	0x3fc6bb896f345a70              # double 0.17759817056567639
	.quad	0x3fedf82b08c63382              # double 0.93654395784106748
	.quad	0x3fd669e8f4a2a834              # double 0.35021423235105265
	.quad	0x3fe43717614e15f9              # double 0.63172501568686734
	.quad	0x3fe8a5082e240146              # double 0.77014550220341316
	.quad	0x3fd952c1351722a6              # double 0.39567594704252895
	.quad	0x3fc6042188e5621c              # double 0.17200106796623593
	.quad	0x3fe99a6a1934d57a              # double 0.80009941981431543
	.quad	0x3fdd98176e99747e              # double 0.46240793038106875
	.quad	0x3fd6b8bad611e504              # double 0.35502501397384401
	.quad	0x3fe9f1a0fbfd4df1              # double 0.81074570862477746
	.quad	0x3fe80d7ae89856ad              # double 0.75164552143788443
	.quad	0x3fe8da243cff90c7              # double 0.77662860788088828
	.quad	0x3fe24556153d10a2              # double 0.57096389911795975
	.quad	0x3fd337c1a1171238              # double 0.30027809840638353
	.quad	0x3fc389726438e3b4              # double 0.15263204473174385
	.quad	0x3fee64e5b796168b              # double 0.94981656891532518
	.quad	0x3fe821a93542f6e2              # double 0.75410900499965927
	.quad	0x3fc219d56322f7a8              # double 0.1414133771958721
	.quad	0x3fe5671502b531b9              # double 0.6688332608114741
	.quad	0x3fd748ea8ef82bdc              # double 0.36382545434815738
	.quad	0x3fe95b86059256e9              # double 0.79242230499468491
	.quad	0x3fc994d0f7442d78              # double 0.19985401223707888
	.quad	0x3fd50a8994225826              # double 0.3287681528685219
	.quad	0x3fdcf592c3a8a15e              # double 0.45248860461517448
	.quad	0x3fb4dc43069ef710              # double 0.081485928646511718
	.quad	0x3fe56adf8a53fd75              # double 0.66929604546741805
	.quad	0x3fc1afc0a13be8b4              # double 0.13817603943590984
	.quad	0x3fd5b5e3768a6e9a              # double 0.33922659469838268
	.quad	0x3fb28ef7f112a350              # double 0.072494026523270749
	.quad	0x3fe4ee3c64113c5f              # double 0.65408153099441424
	.quad	0x3fec98b718fc0317              # double 0.89364199523706389
	.quad	0x3fee39905f51c098              # double 0.94452684990939683
	.quad	0x3fed0b0fd48901ee              # double 0.90760032187250572
	.quad	0x3fed4bb7e219e692              # double 0.91549295578370704
	.quad	0x3fee8590c7d20956              # double 0.95380438830788239
	.quad	0x3f6dee4eb01abc00              # double 0.0036536728738023605
	.quad	0x3fed5fed38cc59d0              # double 0.91795979588897048
	.quad	0x3fe3f0ca3f6eb1b7              # double 0.62314331425800773
	.quad	0x3fd7e1fa35165510              # double 0.37316756424236619
	.quad	0x3feb8d7295ec695c              # double 0.86101655275278288
	.quad	0x3fea5f3f14e759f9              # double 0.82412675936467317
	.quad	0x3fe4e39e0ea87c47              # double 0.65278532851142124
	.quad	0x3feea049b6fd8eab              # double 0.95706639995883813
	.quad	0x3fed46dbaa2a763f              # double 0.91489966617127283
	.quad	0x3fb35e00c4404258              # double 0.075653121865124517
	.quad	0x3fe98be24c38cc9c              # double 0.79832568060955422
	.quad	0x3fc0d2d6a80417a0              # double 0.13143428043275396
	.quad	0x3fbc0204d3d53478              # double 0.10940580531787869
	.quad	0x3fe18f8bde0b5bc2              # double 0.54877274864235681
	.quad	0x3fef38e0324c0cf5              # double 0.975692842709036
	.quad	0x3fe7545122fdd837              # double 0.729042595236712
	.quad	0x3fd462f666228eb2              # double 0.3185401914035807
	.quad	0x3f4c8d148f0c7400              # double 8.7131027075637579E-4
	.quad	0x3fd405faee3a1382              # double 0.31286500229207814
	.quad	0x3fbc10b077048bc0              # double 0.10962965875346153
	.quad	0x3fe750f901d7dd17              # double 0.72863436088565237
	.quad	0x3fc3f07a6d95b2e4              # double 0.15577631331270603
	.quad	0x3fccb9e6186c4eb4              # double 0.22442318146260265
	.quad	0x3fd2445c4f712666              # double 0.28542239912039802
	.quad	0x3fd5ddfac8e1daec              # double 0.34167356126219661
	.quad	0x3fef30b5b2045cb3              # double 0.97469601410820982
	.quad	0x3fe725d6080a41f5              # double 0.72336865969015085
	.quad	0x3fd9ded27f84b47a              # double 0.40422499134985623
	.quad	0x3feb3fbbc2828cf9              # double 0.85152996053912411
	.quad	0x3fc4c29196e4dbd4              # double 0.16218776576871952
	.quad	0x3fd3bb03dbb3bc0e              # double 0.30828949408800177
	.quad	0x3fbbbf4da120cab8              # double 0.10838780578414287
	.quad	0x3feb045dbeca64f4              # double 0.84428298248090394
	.quad	0x3fec08a0486f681e              # double 0.87605299136635373
	.quad	0x3feef5cf949a72f0              # double 0.96750620864949433
	.quad	0x3fc77498a1bb172c              # double 0.18324573418629464
	.quad	0x3fe81294c47c9424              # double 0.75226820350929246
	.quad	0x3fc9a98609b08f38              # double 0.20048594926003616
	.quad	0x3fe9eff1889274ea              # double 0.81053997682797996
	.quad	0x3fe62a4e997e8847              # double 0.69266443232869157
	.quad	0x3fd6d64d0b610356              # double 0.35682989226557049
	.quad	0x3fa9053a4e0a9560              # double 0.048868009592562656
	.quad	0x3fd8d92cfb438f7c              # double 0.38825535333148031
	.quad	0x3fda6282a3fe7d22              # double 0.41226259245918773
	.quad	0x3fd61e5d2402ff2a              # double 0.34560326115387119
	.quad	0x3feb65770f76cd23              # double 0.85613587398839675
	.quad	0x3fc1c1bdfbffedc8              # double 0.13872504048036505
	.quad	0x3fec88b0b8f5efb5              # double 0.89168583035597371
	.quad	0x3fb59c016c9f3c10              # double 0.084411705988927332
	.quad	0x3fec7b87afece654              # double 0.89007934914043085
	.quad	0x3fed1b46fdefbe27              # double 0.9095797500321553
	.quad	0x3fc1e9135ed2ebec              # double 0.13992540483545157
	.quad	0x3fe2139f8ba3e335              # double 0.56489541314576874
	.quad	0x3fc876506b1fc61c              # double 0.19111066084546813
	.quad	0x3fc592c00d6af470              # double 0.16854096083799019
	.quad	0x3fb47a237642fe48              # double 0.079988685963138129
	.quad	0x3fbeb1ad3487d598              # double 0.11989862949834273
	.quad	0x3fe5f37046ccf79b              # double 0.68596662357571192
	.quad	0x3fc67894c7a56a24              # double 0.17555484531733712
	.quad	0x3fe8bbeeedaf9427              # double 0.77294107840555604
	.quad	0x3fe4424858d96fa9              # double 0.63309113839522013
	.quad	0x3fdfacfe2d7743ca              # double 0.49493364753749047
	.quad	0x3fe1b9919ad8bce3              # double 0.55390243762476776
	.quad	0x3fd9a4741aec808c              # double 0.40066244725495248
	.quad	0x3fea46dc7c3a9759              # double 0.82115005744411029
	.quad	0x3fd0fabffc7e764a              # double 0.26530456216446352
	.quad	0x3fe317fcd9dc51bb              # double 0.59667818594839817
	.quad	0x3fd21d6b99c09070              # double 0.28304567351211229
	.quad	0x3fdce01aab3a7742              # double 0.45117823335191443
	.quad	0x3fe179d9e6f960fe              # double 0.54612441169868453
	.quad	0x3fbd7f1965f8d8b0              # double 0.11522063006927641
	.quad	0x3fed8c5cc63367ad              # double 0.92338408194631472
	.quad	0x3fcf69fec6880fe4              # double 0.24542221731110125
	.quad	0x3fd244260aa830ca              # double 0.28540946045610538
	.quad	0x3fe683fac8dbcf11              # double 0.70361079435540053
	.quad	0x3fee5a70c1ac997e              # double 0.94854009463305977
	.quad	0x3feb187dce0c4d66              # double 0.84673967593918742
	.quad	0x3fb61441f9045070              # double 0.08624660806191442
	.quad	0x3fd25d65f6251e9c              # double 0.28695057904813281
	.quad	0x3fe89e772ca8989f              # double 0.76934393617991137
	.quad	0x3feaf09409fffd91              # double 0.84186746552579639
	.quad	0x3fdc56a5d4b67a12              # double 0.44278856060728444
	.quad	0x3fcc39340331bff8              # double 0.22049570232366
	.quad	0x3fda20e0f2f00440              # double 0.40825675701495712
	.quad	0x3fbf53b102ff1508              # double 0.1223707802119699
	.quad	0x3fdea8213256cfbe              # double 0.47901182094505745
	.quad	0x3fe28120fafeec17              # double 0.57826279661765312
	.quad	0x3fdb4ef49705d342              # double 0.4266940569717016
	.quad	0x3fe28445e43b1ff5              # double 0.57864660812719981
	.quad	0x3fe59d47a43b3d3d              # double 0.67544920040555889
	.quad	0x3fe151415885b2ba              # double 0.54116885461333841
	.quad	0x3fb9cbc9750b8f20              # double 0.10076579196498558
	.quad	0x3fd97ef5f2758de8              # double 0.39837406804710307
	.quad	0x3fdabe7efa3150c8              # double 0.41787695343851938
	.quad	0x3fed1837a7b25124              # double 0.9092062259028677
	.quad	0x3fec62531078d108              # double 0.88700249879050919
	.quad	0x3fe4e88a9d372301              # double 0.653386408864293
	.quad	0x3fe25106bd0f55af              # double 0.57239090848695706
	.quad	0x3fe68997d6d20de2              # double 0.70429603535779628
	.quad	0x3fd90486c90d2b26              # double 0.39090127595834401
	.quad	0x3fc19e1032e32e8c              # double 0.13763620838868851
	.quad	0x3feccab8dfc9df1b              # double 0.89974635800078617
	.quad	0x3fd6dcb56ca70898              # double 0.35722098932832003
	.quad	0x3fe310b0544c57ad              # double 0.59578720535750096
	.quad	0x3fee550c88da353a              # double 0.94788195351581028
	.quad	0x3fc61e5665aaa8d4              # double 0.17280082668486918
	.quad	0x3fe1407442fe1fa2              # double 0.5391179378939237
	.quad	0x3fe0b53747b197ec              # double 0.52212108614616914
	.quad	0x3fedd9b18022b2f7              # double 0.9328238966605501
	.quad	0x3fe8651f6583396b              # double 0.76234407259634673
	.quad	0x3fe8d97f468d9226              # double 0.77654994754681606
	.quad	0x3fe31fc164f86d7f              # double 0.59762639733109768
	.quad	0x3fef756da659827f              # double 0.98308451166310806
	.quad	0x3fcb629dc8848a1c              # double 0.21394703188805486
	.quad	0x3fe1c8cddf1b15df              # double 0.55576222968437239
	.quad	0x3fd771ac2e72457a              # double 0.36631302390841081
	.quad	0x3fe4f9699af1fbfb              # double 0.65544586432213181
	.quad	0x3fa75ffde304b9b0              # double 0.045654233896459728
	.quad	0x3fe1e60374768363              # double 0.55932781931560915
	.quad	0x3fef84203a2040f9              # double 0.98487864830715843
	.quad	0x3feba3aebb5230c2              # double 0.86373077951568455
	.quad	0x3fe9e23abb87c60f              # double 0.80886589648270213
	.quad	0x3fcd4bcc1cff7944              # double 0.22887565055766335
	.quad	0x3fe33ad2a49cacf2              # double 0.60093052054199192
	.quad	0x3fd33fd359261392              # double 0.30077060419017088
	.quad	0x3f92c0ea9ba5d160              # double 0.018314042806609421
	.quad	0x3fe07872967b1791              # double 0.51470307722842012
	.quad	0x3fcb89a9ae2a7c08              # double 0.21513863567540192
	.quad	0x3fc9cb1e6fe5a98c              # double 0.20151119674421769
	.quad	0x3fe8527f481cbaf3              # double 0.76007045826358277
	.quad	0x3fd3114ac92d05c6              # double 0.29793042799073211
	.quad	0x3fcad44752bf71d0              # double 0.20960322895451933
	.quad	0x3fd6e6a6ea5fbb7e              # double 0.35782788169938573
	.quad	0x3fbcaa97cbdfdde0              # double 0.11197804191021232
	.quad	0x3fe8e706c54f9893              # double 0.77820147073068069
	.quad	0x3fc7a5c06ea60b58              # double 0.1847458400989932
	.quad	0x3fec04fc9c020512              # double 0.87560873480120649
	.quad	0x3fed75c5f079a92c              # double 0.92062661140270085
	.quad	0x3fe5271801913eb1              # double 0.66102218919873768
	.quad	0x3fe7edaf03fc01b9              # double 0.74776411798671127
	.quad	0x3fdec587e2f3e11a              # double 0.48080632365555831
	.quad	0x3fe895b7a19ccb8d              # double 0.76827603878915485
	.quad	0x3fb015127e930110              # double 0.062821536924279053
	.quad	0x3fde4b60ab7e2d68              # double 0.4733506846175346
	.quad	0x3fab7bd14d58e020              # double 0.053679028217118452
	.quad	0x3fe7af5287b91406              # double 0.74015165813818906
	.quad	0x3f7ca7660de75400              # double 0.0069955812927746663
	.quad	0x3fe71b4e596cc107              # double 0.72208325830254771
	.quad	0x3fd5bf60167dcdfe              # double 0.33980562397411507
	.quad	0x3fefad8c02906e67              # double 0.98993492604081445
	.quad	0x3fea829db31b4fa8              # double 0.82844433767103443
	.quad	0x3fd525c094221716              # double 0.33042921510819789
	.quad	0x3fe3d37ac43dd709              # double 0.61956537559919511
	.quad	0x3fe4ca38f45f42ea              # double 0.64968536118439357
	.quad	0x3fdc77f6bffeae4e              # double 0.44482201337334437
	.quad	0x3fe9024265507b37              # double 0.78152580059018006
	.quad	0x3fe9fba639a0ac6f              # double 0.8119689107455893
	.quad	0x3fe0fdfc2ede7053              # double 0.53100403932649909
	.quad	0x3fc255d14cbacaf4              # double 0.14324394461217305
	.quad	0x3f792e21a154de00              # double 0.0061475099258170296
	.quad	0x3feef00a90b188e4              # double 0.96680191288421868
	.quad	0x3fd3aa935f3e2fbe              # double 0.30728611279550566
	.quad	0x3fdf8bd89ab69aba              # double 0.49291052921982337
	.quad	0x3fe2172671b3e861              # double 0.5653259487874146
	.quad	0x3fbbf0752bae2e20              # double 0.10913784328857234
	.quad	0x3fcadae2a40ebe54              # double 0.20980484972595781
	.quad	0x3fe1c9a035f4c4da              # double 0.55586252725893393
	.quad	0x3fc7d318cf85a450              # double 0.18612966664230379
	.quad	0x3feb87fe3c71292d              # double 0.86035072140774604
	.quad	0x3fd576d7d1016758              # double 0.33537860308353151
	.quad	0x3fe6538ee716e713              # double 0.69769997725163291
	.quad	0x3fc3e68629aae588              # double 0.1554725364165217
	.quad	0x3fd336fc77da9d52              # double 0.30023109154213501
	.quad	0x3fe388ce0bdf577c              # double 0.61044981306871149
	.quad	0x3fe8fe11e619c774              # double 0.78101439420264151
	.quad	0x3fc01acaad302740              # double 0.12581761795473234
	.quad	0x3fed73fb0933a4a3              # double 0.92040778920376842
	.quad	0x3fee9b951d5ee6b5              # double 0.9564920018812787
	.quad	0x3fe543e0e34b0b72              # double 0.66453594582740849
	.quad	0x3fda55e6a9f56774              # double 0.41149298284073343
	.quad	0x3fd7fd7f979c46d0              # double 0.37484731488903567
	.quad	0x3fe590660bc74cf9              # double 0.67387678432933662
	.quad	0x3fe9c5c227c975bc              # double 0.80539043208016591
	.quad	0x3fefe04e1d636f07              # double 0.99613099803852456
	.quad	0x3fe224126af18a0c              # double 0.56690331351666279
	.quad	0x3feb0a59576602d3              # double 0.84501330442443601
	.quad	0x3fe4202c216c8bd7              # double 0.62892729309202877
	.quad	0x3fc59b18015bda18              # double 0.16879558626506319
	.quad	0x3fd4131b948fae2e              # double 0.313666243628833
	.quad	0x3fe54f38f628b657              # double 0.6659207160752868
	.quad	0x3fe944cbc279ce6f              # double 0.78964794143253225
	.quad	0x3fd9c527fae37652              # double 0.40265845776398124
	.quad	0x3fea9f53afd9afd0              # double 0.83194908471841167
	.quad	0x3feb64006d675cb5              # double 0.85595723503037979
	.quad	0x3fe37d9c15eb9300              # double 0.60908321648875585
	.quad	0x3feb007c343e6a1e              # double 0.84380922511929035
	.quad	0x3fce5c54f2504720              # double 0.23719274360387832
	.quad	0x3fdda017c2927796              # double 0.46289628983674314
	.quad	0x3fca5802c26db958              # double 0.20581087583145563
	.quad	0x3fa624697f15a390              # double 0.04324655224156182
	.quad	0x3fe1b144cf6e8ed3              # double 0.55288925661121835
	.quad	0x3fea4a148aefbe6c              # double 0.82154299865756064
	.quad	0x3fcc0062f0b7dc88              # double 0.21876179460352696
	.quad	0x3fe63009cf3b9ac8              # double 0.69336405253565037
	.quad	0x3feb0e6fad3afd42              # double 0.84551223596637493
	.quad	0x3fd400ef2253b7ee              # double 0.31255701400993885
	.quad	0x3fe448d063fd0c54              # double 0.63388843087194369
	.quad	0x3f7cf52a786d6980              # double 0.0070697459221612524
	.quad	0x3fe9cc3fae4939ae              # double 0.80618270912400702
	.quad	0x3feba9b873f10235              # double 0.86446783680737005
	.quad	0x3fe4f9f552acb2e6              # double 0.65551248690971131
	.quad	0x3fe3a1eb8be315ef              # double 0.61351563760461925
	.quad	0x3fc3300b1a654d7c              # double 0.14990366734364702
	.quad	0x3fd3b6989cb0cebc              # double 0.30801978399106722
	.quad	0x3fefa5c44ae8eae0              # double 0.98898520117594657
	.quad	0x3fc89f1069321008              # double 0.19235425125600636
	.quad	0x3fd6c8c5d049c39c              # double 0.35600419369353076
	.quad	0x3fe34e70cdbd7763              # double 0.60332527335752351
	.quad	0x3fde2699569d616c              # double 0.47110589464639108
	.quad	0x3fe347114a5acc03              # double 0.60242523691556504
	.quad	0x3fd32e1cacfedd34              # double 0.29968945402238778
	.quad	0x3fecdbc74b0470f3              # double 0.90182842876268265
	.quad	0x3fe8827ffa82eea7              # double 0.7659301655580365
	.quad	0x3fe58769abb6659f              # double 0.67277987992854438
	.quad	0x3fdd3f64f681a4dc              # double 0.45699428627865557
	.quad	0x3fb7eed17b6513e8              # double 0.093487827897731912
	.quad	0x3fe3b3a20228989f              # double 0.61567783757779526
	.quad	0x3fce5d6120d94f68              # double 0.23722471336315754
	.quad	0x3fd447c00cf8ae48              # double 0.31687928454150383
	.quad	0x3fe7a11f84cabb3b              # double 0.73841834960862884
	.quad	0x3fe979869c5f3afa              # double 0.79608469525723469
	.quad	0x3fc59aceccf2519c              # double 0.16878685958057538
	.quad	0x3fbbecac62550350              # double 0.10908009911237326
	.quad	0x3fed8013897a76c4              # double 0.92188431597943365
	.quad	0x3fd189ad9cd845a4              # double 0.27402820889354929
	.quad	0x3feb7c6137e6de9e              # double 0.85893307607962632
	.quad	0x3fd603bbbd18c944              # double 0.34397786585318024
	.quad	0x3fcd5af25230f7cc              # double 0.22933796895261904
	.quad	0x3fc90085dba20984              # double 0.19532845711007607
	.quad	0x3fe992cb28dfed74              # double 0.79916913970320857
	.quad	0x3fea86f33ccb6a4f              # double 0.82897340654319318
	.quad	0x3fd0d2ba161536c2              # double 0.26286174923448524
	.quad	0x3feafaaed4f0d6d0              # double 0.84310094442363415
	.quad	0x3fe68b064cb0f5ad              # double 0.70447077730903163
	.quad	0x3febc995066e74d3              # double 0.86835719352861884
	.quad	0x3fce5ebf6bf972b8              # double 0.23726647159755543
	.quad	0x3fd599ee1d5a4ba2              # double 0.33752014986492374
	.quad	0x3fbb5449a25f0d18              # double 0.10675487722533139
	.quad	0x3fc710fb83a03c8c              # double 0.1802057640747744
	.quad	0x3fd270b3bafcdd8c              # double 0.28812878857157709
	.quad	0x3fef33858bce2be1              # double 0.97503926568731114
	.quad	0x3fe59a524432ff32              # double 0.67508805580289377
	.quad	0x3fecc2686b138aae              # double 0.8987314311346688
	.quad	0x3f9c9b27a63268e0              # double 0.027935618895391978
	.quad	0x3f9312fd5194b280              # double 0.018627126793193671
	.quad	0x3febf68b055a9bb6              # double 0.87384558721247774
	.quad	0x3fee686983f8f22a              # double 0.95024562621944608
	.quad	0x3fee7edfcfdbf202              # double 0.95298758122913818
	.quad	0x3fee461073eb68bf              # double 0.94605276718655051
	.quad	0x3fb107655e05c9e8              # double 0.066519103483905107
	.quad	0x3fd74996c9fa178c              # double 0.36386651729878206
	.quad	0x3fd281b368f567f4              # double 0.28916630983223901
	.quad	0x3fe76fbeb1ab707d              # double 0.73239073468313587
	.quad	0x3fac7a52835bc670              # double 0.055620745215389955
	.quad	0x3fdb3b7cea880d82              # double 0.42550585654699813
	.quad	0x3fe71ef480526686              # double 0.72252869665972308
	.quad	0x3fe7579bd2829dfe              # double 0.72944441905286772
	.quad	0x3fe175ed7336322f              # double 0.54564545156751432
	.quad	0x3fcd5cdd947e4b98              # double 0.22939653158809103
	.quad	0x3fbee97b732371f8              # double 0.12075015603063111
	.quad	0x3fd739b06c8dc4a6              # double 0.36289606667475949
	.quad	0x3fd3a363cb81c2d8              # double 0.30684752343863186
	.quad	0x3fdf6f6b7fd311e6              # double 0.49117553217754872
	.quad	0x3fe9406204a3feb2              # double 0.78910923868530447
	.quad	0x3fedbee01b1ceb1c              # double 0.92955022140026555
	.quad	0x3fe6e9095138fe8f              # double 0.71594682563586953
	.quad	0x3fe04e7ef887ecd8              # double 0.50958202878191639
	.quad	0x3fe93791eec490e0              # double 0.78803345331519025
	.quad	0x3fefcdd4a5d63cc1              # double 0.99387581243527034
	.quad	0x3fd66221d46a3e2a              # double 0.34973951095250533
	.quad	0x3fe3588d6de3a7a9              # double 0.60455962622403547
	.quad	0x3fd57d6d7b079158              # double 0.33578049673658006
	.quad	0x3f672eb4f245f700              # double 0.0028298887356744684
	.quad	0x3fe2a35c912e9104              # double 0.58244160037841697
	.quad	0x3fce299d63d6329c              # double 0.23564498305167525
	.quad	0x3fccec1869896a7c              # double 0.22595505860484255
	.quad	0x3faf335e66b4fc80              # double 0.060938787496064073
	.quad	0x3fd3477007ec69e6              # double 0.3012352063539353
	.quad	0x3fe749e631b61704              # double 0.72777089795337746
	.quad	0x3f87106a2e490ac0              # double 0.011261777436748388
	.quad	0x3fd4296d5ec59584              # double 0.31502851729450065
	.quad	0x3fe139bdc61f18b1              # double 0.5382984990653964
	.quad	0x3fc64cdbfd474840              # double 0.17422056071387892
	.quad	0x3fdccbff8ff10298              # double 0.44995106751233882
	.quad	0x3fee29cd049c5d0e              # double 0.9426026430182064
	.quad	0x3fef1f507bee0d3a              # double 0.97257255749756344
	.quad	0x3f84e667a59fb680              # double 0.010205087415637637
	.quad	0x3fa772a946c27e80              # double 0.045796670806564244
	.quad	0x3fb6d1cc85082960              # double 0.089138777235495237
	.quad	0x3fefc3aafe6b3724              # double 0.99263524714635709
	.quad	0x3fcdc0fbfe65c0c0              # double 0.23245191499473172
	.quad	0x3febf23b8ebeb7a9              # double 0.87331941490059706
	.quad	0x3fe3eb2d796945e8              # double 0.6224582072556446
	.quad	0x3fe9fd6b4dfbaa88              # double 0.81218495589321638
	.quad	0x3fecee5c6e8da1d9              # double 0.90409680931503111
	.quad	0x3f9c69b30d8a2b80              # double 0.027746961308860119
	.quad	0x3fe7de8aa8fa65cd              # double 0.74591572764909986
	.quad	0x3fc6fb4602e0892c              # double 0.17954325809939442
	.quad	0x3feb68ee15fc0f18              # double 0.85655884069317079
	.quad	0x3feed6dc82ab1cbc              # double 0.96372819443867951
	.quad	0x3fed90627182a1ad              # double 0.92387506647087536
	.quad	0x3fec7439dc3611cc              # double 0.88918774614335793
	.quad	0x3fdc5d3396b706b8              # double 0.44318856924301597
	.quad	0x3feb7eaf7d7764a5              # double 0.85921453957702865
	.quad	0x3fcc789affffecd4              # double 0.22243058681474415
	.quad	0x3fd5f0c72df72ae8              # double 0.34282092560594757
	.quad	0x3fec122ae09935f2              # double 0.87721771113291269
	.quad	0x3feb7994d14ce6bf              # double 0.85859146956428123
	.quad	0x3fdf98ac7b63fcb0              # double 0.49369346666203295
	.quad	0x3feb3730ea20097e              # double 0.8504871914631591
	.quad	0x3fc15c38d1cfd728              # double 0.13562689060898347
	.quad	0x3fec54166090737e              # double 0.88526457653243518
	.quad	0x3fe62f800e9bf919              # double 0.6932983670556353
	.quad	0x3fde4fc1276768c6              # double 0.47361782882729775
	.quad	0x3fb4dbbd5ab81b28              # double 0.081477961204751481
	.quad	0x3fd1f07870077964              # double 0.28030215206481146
	.quad	0x3feba4e4adb109c3              # double 0.86387857364780307
	.quad	0x3fedbe809012a9cd              # double 0.92950466288794475
	.quad	0x3fe8d7ba3b3fed2e              # double 0.77633391926011597
	.quad	0x3fd8bcf785012a5a              # double 0.38653362263418034
	.quad	0x3feb2601c8dc7ea8              # double 0.84838952284549851
	.quad	0x3fe5abda2d561982              # double 0.67722805838347733
	.quad	0x3fcd54dbae6b6a74              # double 0.22915216461736387
	.quad	0x3fd5569225033b22              # double 0.33340886702073835
	.quad	0x3fe8bd58942a2475              # double 0.77311352671053035
	.quad	0x3fef761db9fce8d8              # double 0.98316847158209963
	.quad	0x3fed80265250cc89              # double 0.9218932731368038
	.quad	0x3fdf28793556ee70              # double 0.48684530457442232
	.quad	0x3fe9f284456d66c8              # double 0.81085408744839871
	.quad	0x3fe7000ff6d977cb              # double 0.71875761235036728
	.quad	0x3fdb5e1e098546a8              # double 0.42761946611163149
	.quad	0x3fd18b3cc1da1824              # double 0.27412337237217543
	.quad	0x3fe0c17d8cd24bf8              # double 0.52361943725770654
	.quad	0x3fed62cd423858c7              # double 0.91831076558698832
	.quad	0x3f76586190b85380              # double 0.0054553805489562235
	.quad	0x3fdf44510d3b4012              # double 0.48854471485265194
	.quad	0x3f91b3d6feaf8e00              # double 0.017287596983704745
	.quad	0x3fc84df60d98e2a0              # double 0.18987918533254788
	.quad	0x3fe1bd00dcd4f5df              # double 0.55432170039392392
	.quad	0x3fdd3213f481ba3a              # double 0.45618151548015684
	.quad	0x3fe1ee7fc12c8487              # double 0.56036365250851439
	.quad	0x3fe6529466904dcd              # double 0.69758052856416841
	.quad	0x3fd532ccb64929be              # double 0.33122556496951094
	.quad	0x3fdde3fc5ad77d3a              # double 0.46704014655366033
	.quad	0x3fe0251aac53b070              # double 0.50452932031249809
	.quad	0x3feda837c586032f              # double 0.92678440645986437
	.quad	0x3fb7fa2caebaa3a8              # double 0.093661110552274551
	.quad	0x3fb38c43f993f4a0              # double 0.076359032089345025
	.quad	0x3fec1044692772b0              # double 0.87698574579152044
	.quad	0x3fea892337679674              # double 0.82924042531222008
	.quad	0x3feb742419c10304              # double 0.85792737035816957
	.quad	0x3fbe3bcb9e1df2e0              # double 0.11809990511205681
	.quad	0x3fe6c10991238320              # double 0.71106413218885578
	.quad	0x3fc125287e9fc780              # double 0.13394647772616608
	.quad	0x3feb422089288046              # double 0.851822154891132
	.quad	0x3fe3762fefb67ac7              # double 0.60817715472134004
	.quad	0x3fd733b348ce1f2c              # double 0.36253053769950117
	.quad	0x3fd84abc196a0dae              # double 0.37956144792425561
	.quad	0x3fdcdc6f89ef760a              # double 0.45095432729962737
	.quad	0x3fd686c8b88c61c6              # double 0.35197656652738052
	.quad	0x3fcf2d8016916ae8              # double 0.2435760603137489
	.quad	0x3fdd97907a61a2e2              # double 0.46237575484569338
	.quad	0x3fc758b2c56a7c68              # double 0.18239435805751048
	.quad	0x3fef466aa7341250              # double 0.97734577805437972
	.quad	0x3fc8ad6ad55055f0              # double 0.19279227653230135
	.quad	0x3fd5a0c2829aa060              # double 0.33793699983880821
	.quad	0x3f9b4ac9e3bb1440              # double 0.026652483486732104
	.quad	0x3fc4ea4cbee662f8              # double 0.16340026208197123
	.quad	0x3fe233feb8dd86d7              # double 0.56884704691421006
	.quad	0x3fa42b4664193fc0              # double 0.039392661780424998
	.quad	0x3fc5e2a417ed6744              # double 0.17097903412178017
	.quad	0x3fe077b7a18b10aa              # double 0.51461392928515193
	.quad	0x3fd63d323bbf259c              # double 0.34748512110362539
	.quad	0x3fedb0734b2cb8d0              # double 0.92778935129697437
	.quad	0x3fe6313fed66d41e              # double 0.69351192824854357
	.quad	0x3fd93be33aa0e97a              # double 0.39428024983830989
	.quad	0x3fc2a3210bfa0d8c              # double 0.14560330471804794
	.quad	0x3fe4371e1e208782              # double 0.63172822841828258
	.quad	0x3fe916fe82735239              # double 0.78405690649612503
	.quad	0x3fb0a7adcf23f3e8              # double 0.065058577605625723
	.quad	0x3fe14fdc2f2fb2ab              # double 0.54099854675367476
	.quad	0x3fcf11c49e0eca08              # double 0.24272973745026172
	.quad	0x3fe6b8ff1fad357b              # double 0.7100825899776021
	.quad	0x3fa605be138d1320              # double 0.043012561689954376
	.quad	0x3fd525121ceb319c              # double 0.33038761924833593
	.quad	0x3fef742572d9191f              # double 0.98292801314599731
	.quad	0x3feb854bd88dd2e1              # double 0.86002151771262103
	.quad	0x3fe9d53d6394fa30              # double 0.80728024911497265
	.quad	0x3fda8b20520122de              # double 0.41474159248586584
	.quad	0x3fa9b295eea417c0              # double 0.050190625554065615
	.quad	0x3fe96de098d4f807              # double 0.79466276025755256
	.quad	0x3fc2ae5863c9d394              # double 0.14594559547881814
	.quad	0x3fe724f26dbac6d7              # double 0.72326013022958591
	.quad	0x3fecd490113112a5              # double 0.90094760282280062
	.quad	0x3fbe3b87d482d210              # double 0.11809586466080924
	.quad	0x3fdc0b0c1f7e2906              # double 0.43817427707166734
	.quad	0x3fe7add4fae605e6              # double 0.73996972087496427
	.quad	0x3fed119907ccd3ba              # double 0.90839816592653411
	.quad	0x3fba51bd03775cf0              # double 0.10280972799897703
	.quad	0x3fe17e0ac5e79bdd              # double 0.54663599637285254
	.quad	0x3fe4751520ece542              # double 0.63929230147110894
	.quad	0x3fe05fa8c461c3d9              # double 0.51167715411986159
	.quad	0x3feeac749f5b2c3b              # double 0.95855170368429953
	.quad	0x3fe318da97f6477a              # double 0.59678392105182287
	.quad	0x3fd2ad9b1b88ae8a              # double 0.29184606255396572
	.quad	0x3fdcebaeecbf4440              # double 0.45188496703946512
	.quad	0x3fee01f725bad5c4              # double 0.93773991936785039
	.quad	0x3fe50d15f9d3f80a              # double 0.65784739298374117
	.quad	0x3fcf6c8d0147625c              # double 0.24550020754283508
	.quad	0x3fe540f6456134aa              # double 0.66417993117069796
	.quad	0x3fe972ac2998b61a              # double 0.79524810909578325
	.quad	0x3fefc0286522d7d3              # double 0.99220676186700484
	.quad	0x3fec01e6a1eb3192              # double 0.87523204445601466
	.quad	0x3fb49d4517b5dfd8              # double 0.0805247481238206
	.quad	0x3fe7ffc2a564628a              # double 0.74997074416303744
	.quad	0x3feb0e71c68d2dc1              # double 0.84551323680482693
	.quad	0x3fdef3daa55a4584              # double 0.48363367221562492
	.quad	0x3fdcfcdc340c862a              # double 0.45293335993673856
	.quad	0x3feba91b86c0c03c              # double 0.86439300841266897
	.quad	0x3fb575444bda3588              # double 0.083820599096915527
	.quad	0x3fd337981c430f40              # double 0.30026819953876682
	.quad	0x3fe324f5e1534079              # double 0.59826177605465525
	.quad	0x3fee023e778905e8              # double 0.93777392718055541
	.quad	0x3fe5efc6feb5ce65              # double 0.68551969287950654
	.quad	0x3fedaa80b281c1ed              # double 0.9270633207761968
	.quad	0x3fc54775c9f91b4c              # double 0.16624328958479351
	.quad	0x3feae886c61c410d              # double 0.84088457768851443
	.quad	0x3fee4cafbaf92234              # double 0.94686113851736886
	.quad	0x3fbb288b0c4532c8              # double 0.10608738946502705
	.quad	0x3fedaaf8413ca451              # double 0.92712033025339669
	.quad	0x3fc0cd26efaf52c8              # double 0.13126074508058694
	.quad	0x3fb548bc771bab58              # double 0.08314111621772946
	.quad	0x3feb3535d6fe9027              # double 0.85024539939013699
	.quad	0x3fd6daa09d1c66bc              # double 0.35709395735612381
	.quad	0x3f9ad685c0a43de0              # double 0.026208963282497666
	.quad	0x3feb1418c87a6c47              # double 0.84620322376157098
	.quad	0x3fea73b35ed943c3              # double 0.82662361645827109
	.quad	0x3fe3d6f299f0c8f4              # double 0.61998872820393425
	.quad	0x3fe93630e4879e27              # double 0.78786511072843701
	.quad	0x3fd61fb8196dd214              # double 0.34568598254489413
	.quad	0x3fe504cff28ef3e7              # double 0.65683743834199226
	.quad	0x3fd269d9b4ee9b14              # double 0.28771059674402122
	.quad	0x3fe13b8bb89eb91a              # double 0.5385187726840599
	.quad	0x3fd281e44171fff2              # double 0.28917795554298131
	.quad	0x3fe188cb13708b4f              # double 0.54794839665223971
	.quad	0x3fe1fe99e9876955              # double 0.56232925044177284
	.quad	0x3fd02b5c64082380              # double 0.25264653938989312
	.quad	0x3fc3bd451b58b414              # double 0.15421356044080936
	.quad	0x3fecb5f7e31106a5              # double 0.89721292828490518
	.quad	0x3fced4a76ffc58c0              # double 0.24086468666127381
	.quad	0x3feb5ebee27bd522              # double 0.85531563029386271
	.quad	0x3fe329def36d9aac              # double 0.59886119408186778
	.quad	0x3fe3a021bec41aa0              # double 0.61329734095564348
	.quad	0x3fe5f26a8e5982d1              # double 0.68584182551065898
	.quad	0x3fd09715b0a84c06              # double 0.25922147990894506
	.quad	0x3fc12d523c227250              # double 0.13419559417970328
	.quad	0x3fe754ff18073517              # double 0.72912554448126599
	.quad	0x3fdf49ffd38e9220              # double 0.48889156017165369
	.quad	0x3fc1cf1e7c5fc84c              # double 0.13913327286678834
	.quad	0x3fda66d02bcba45a              # double 0.41252521778966911
	.quad	0x3fd9054ef82de176              # double 0.39094900356533147
	.quad	0x3fc64716215c2a2c              # double 0.17404438618571427
	.quad	0x3fefd6e80518f349              # double 0.99498368259046643
	.quad	0x3fedcfaeefff7c7a              # double 0.93160197138412504
	.quad	0x3f60288e811c9e00              # double 0.0019724639213511974
	.quad	0x3fd1f00ced9abf88              # double 0.28027651980936996
	.quad	0x3febfad25451f196              # double 0.87436787098663404
	.quad	0x3fb6aa341f348898              # double 0.088534600847682277
	.quad	0x3fe721a691ccde56              # double 0.72285774685492288
	.quad	0x3fe87d47cbf0106e              # double 0.7652930243643945
	.quad	0x3fc05d10a7296a80              # double 0.12784011995502809
	.quad	0x3fef3c890a385732              # double 0.97613956447705719
	.quad	0x3faf430ca5908380              # double 0.061058421335707713
	.quad	0x3feffa7c84d0d4eb              # double 0.99932695332122756
	.quad	0x3fc7d2523d2bc328              # double 0.1861059950529349
	.quad	0x3fd755581468303e              # double 0.36458398812169779
	.quad	0x3fad0a5d6046bd00              # double 0.056719701769333497
	.quad	0x3fdb1d23759417ca              # double 0.42365347368501871
	.quad	0x3fea03d6ce17f410              # double 0.81296863796853991
	.quad	0x3fba5d17b29cb200              # double 0.10298297987601046
	.quad	0x3fecf5aa954ab9f9              # double 0.90498856695722829
	.quad	0x3fd3420ffde5e59c              # double 0.30090713305215799
	.quad	0x3fadeba012436de0              # double 0.058438303212564824
	.quad	0x3fe0f2d45750cdbd              # double 0.52964226774059109
	.quad	0x3fe6da9074d4e0ad              # double 0.71418021029150724
	.quad	0x3feeac13a40e1cd0              # double 0.95850545923249264
	.quad	0x3fe6efdb9268f3d6              # double 0.7167795047349681
	.quad	0x3fe10d123b7d1cd2              # double 0.53284560793772529
	.quad	0x3fe13aa07071212e              # double 0.53840658150969545
	.quad	0x3fdcc304438dc454              # double 0.44940287205742391
	.quad	0x3fe9e3cb167ec917              # double 0.80905680078129449
	.quad	0x3fe2533331953b26              # double 0.57265624698797946
	.quad	0x3fd0d3dfe3180ff0              # double 0.26293179680965206
	.quad	0x3f8ac27fb5e4af00              # double 0.013066289652293062
	.quad	0x3fe718bcd0bb6f7c              # double 0.72176972167970588
	.quad	0x3fd201ebcf82adf2              # double 0.28136725678152097
	.quad	0x3fef34792b17792a              # double 0.97515543381067471
	.quad	0x3fdfb5bbe6fc6168              # double 0.49546716267788904
	.quad	0x3f58690216c96600              # double 0.001489879646348391
	.quad	0x3fe4e0dea9542545              # double 0.65244992324839102
	.quad	0x3fc17f39cf02f128              # double 0.13669512374861736
	.quad	0x3fe5b5177fc3b841              # double 0.67835593179712117
	.quad	0x3fdbc4656b554154              # double 0.43386207086316131
	.quad	0x3fe707001e16bfe8              # double 0.71960454823237985
	.quad	0x3f83c84567c095c0              # double 0.0096593305862125999
	.quad	0x3fdedc81180815a6              # double 0.48220851275285737
	.quad	0x3fefceee2fabf219              # double 0.99401006041404393
	.quad	0x3fc9a3341df19530              # double 0.20029307806104546
	.quad	0x3fe3aba269a1aab8              # double 0.61470146781115087
	.quad	0x3fe02822740c05cb              # double 0.50489924111769235
	.quad	0x3fe28ea39844b8e0              # double 0.57991199245386937
	.quad	0x3fe34493b3d80ceb              # double 0.60212121129771157
	.quad	0x3fe4689a151ccd31              # double 0.63776878474747012
	.quad	0x3fe86dde76b1c077              # double 0.76341174299706338
	.quad	0x3fd578f72577b78a              # double 0.33550814303350107
	.quad	0x3fd34144ef7b7664              # double 0.30085872065487806
	.quad	0x3fd836271b390164              # double 0.37830522211517903
	.quad	0x3fd3e1a149726a2a              # double 0.31064636395027156
	.quad	0x3fc499affc3808ac              # double 0.16094016852736581
	.quad	0x3fe04560240c08c2              # double 0.50846869507247328
	.quad	0x3feab67b7427a453              # double 0.83477566420072902
	.quad	0x3fd689b2a673f538              # double 0.3521544099347298
	.quad	0x3fbde56bf18a4648              # double 0.11678194663024855
	.quad	0x3fed76241172758b              # double 0.92067149551046279
	.quad	0x3fdd0ef8cc383072              # double 0.45403881018933767
	.quad	0x3fef63eb5ca6d4b3              # double 0.9809471902468857
	.quad	0x3fe5308de1cca79c              # double 0.66217702962352432
	.quad	0x3fc41275a2fb2028              # double 0.15681333978705081
	.quad	0x3fcb47776bacc88c              # double 0.21311848409238043
	.quad	0x3fcc89c229d81c08              # double 0.22295405429051152
	.quad	0x3fe3e8d1d9a326ce              # double 0.62217037684714582
	.quad	0x3fe046f685a2ef5c              # double 0.50866247273323095
	.quad	0x3feed7fc73a62b95              # double 0.96386549556460698
	.quad	0x3fe663a4dac2b3f9              # double 0.69966356970473875
	.quad	0x3fcd52097b48052c              # double 0.22906607169719828
	.quad	0x3fc3cb6cce3c7f94              # double 0.15464553899891753
	.quad	0x3febec5a2add23ef              # double 0.87260158893434248
	.quad	0x3fdace8509cafc06              # double 0.41885496097887687
	.quad	0x3f99f8cbb5fb97c0              # double 0.02536314295038955
	.quad	0x3fb48a282d683af0              # double 0.080233107648591817
	.quad	0x3fc841ea444a8590              # double 0.18951156935240165
	.quad	0x3fe7ea223765ba81              # double 0.74733076877403459
	.quad	0x3fef2c8ae2489295              # double 0.97418731876367081
	.quad	0x3fe28673e87fcd8a              # double 0.57891269121175637
	.quad	0x3fe17a3024dcaf9b              # double 0.54616553496952081
	.quad	0x3fe88222ab4636ac              # double 0.76588567211157032
	.quad	0x3feeacf2e98421a1              # double 0.95861192329998712
	.quad	0x3fd3506083841e3a              # double 0.30178082316749377
	.quad	0x3fcfae812f81cb5c              # double 0.24751295871427714
	.quad	0x3fb3fd3c91396ad0              # double 0.078082833724163025
	.quad	0x3fe6b580d0b3375d              # double 0.70965615045291097
	.quad	0x3fc64c0bd0af447c              # double 0.17419574441604257
	.quad	0x3fd6fffe3859d0e8              # double 0.35937457564365483
	.quad	0x3fd31bf74f3818a8              # double 0.29858191238634868
	.quad	0x3fe8a0551a894797              # double 0.76957183058606204
	.quad	0x3febacfaf9844b53              # double 0.86486576780076019
	.quad	0x3fe4926835fce4bc              # double 0.64287195724968837
	.quad	0x3fbccea6bb79a6a0              # double 0.11252824856787891
	.quad	0x3fddf5c4871e3cac              # double 0.46812546916130304
	.quad	0x3fe3a8b1aa4a39ef              # double 0.61434252986674476
	.quad	0x3fe85ea38740b50f              # double 0.76155258575968954
	.quad	0x3f9e2bc1563a21c0              # double 0.029463787925608775
	.quad	0x3fecf3a763ad11e0              # double 0.9047429034040384
	.quad	0x3fd27e6f7d4ba29a              # double 0.28896701084026122
	.quad	0x3fe87c64b0d78227              # double 0.76518473185939662
	.quad	0x3fd69fc0947f584a              # double 0.35350050450995651
	.quad	0x3fd5eb92ef103c7c              # double 0.34250329347646136
	.quad	0x3fe0cd2dfafbf3b5              # double 0.52504633922909838
	.quad	0x3fbc649d03806e60              # double 0.11091023765077912
	.quad	0x3fe026b6a795f606              # double 0.50472576839064298
	.quad	0x3fe95279e099851e              # double 0.79131788127066094
	.quad	0x3fd1703e32c90b6c              # double 0.27247576674942908
	.quad	0x3fe57c47fa8c31b7              # double 0.67142104086956678
	.quad	0x3fe976469c1a2feb              # double 0.79568796623925431
	.quad	0x3fe33b58a440aef9              # double 0.60099441605186066
	.quad	0x3fd2da52a7175cbc              # double 0.29457537000184764
	.quad	0x3fd80c2c7b529724              # double 0.37574302714561925
	.quad	0x3fc3718ce92920b0              # double 0.15190278420255288
	.quad	0x3fe42f948f2890b8              # double 0.63080814324032186
	.quad	0x3fe4f91d677aa49d              # double 0.65540952883488368
	.quad	0x3fccd1b40e5c5f94              # double 0.22514963818752831
	.quad	0x3fdd39af5f8cfd04              # double 0.45664581614614996
	.quad	0x3fe1846d10630c25              # double 0.5474152870232315
	.quad	0x3fdce85345a0e072              # double 0.45168000983858925
	.quad	0x3fd50a3f03099d72              # double 0.32875037476193036
	.quad	0x3fef8e8b11c8c1cf              # double 0.98615029786565766
	.quad	0x3fe861f595b4575e              # double 0.7619579242625425
	.quad	0x3fde5e710807e5ee              # double 0.47451425346625242
	.quad	0x3fc84d9e7fb2001c              # double 0.1898687480461384
	.quad	0x3fe01d99266ba8d2              # double 0.50361306671154638
	.quad	0x3fc5db832bc6113c              # double 0.17076148641002387
	.quad	0x3fe40fbe9170b451              # double 0.62692192465113739
	.quad	0x3fe78d893bbc1ca3              # double 0.73602735201793157
	.quad	0x3fca767b19c78550              # double 0.20674074896582306
	.quad	0x3f6d0ad03e04c900              # double 0.0035451953155184457
	.quad	0x3fe6698ad7056402              # double 0.7003835868482613
	.quad	0x3fe759fdf271868b              # double 0.72973534919965866
	.quad	0x3fceb3fc16df9e28              # double 0.23986769787664852
	.quad	0x3fe3ad96f0a7b442              # double 0.61494013789127444
	.quad	0x3fd3d27a7af16252              # double 0.3097215843786546
	.quad	0x3fd4f7fda6d73fc0              # double 0.32763615887688147
	.quad	0x3fea1faf8a42e1b0              # double 0.81636788372184377
	.quad	0x3fdeb73631843cac              # double 0.47993235431290304
	.quad	0x3fe8ef4074f88ccf              # double 0.77920554014090182
	.quad	0x3fea8d4332d97250              # double 0.82974395686648883
	.quad	0x3fe98760ad95904c              # double 0.79777559188051716
	.quad	0x3fd922f537f0b936              # double 0.39275865996286841
	.quad	0x3fb016f67141c7c0              # double 0.062850382471679289
	.quad	0x3fe12ed1216f0990              # double 0.53696495561625746
	.quad	0x3fe925d1296a01eb              # double 0.78586633766832159
	.quad	0x3fc40d085db80370              # double 0.1566477258311596
	.quad	0x3fc629fb9561df8c              # double 0.17315621179636442
	.quad	0x3fef22d252229814              # double 0.97300067941682977
	.quad	0x3fe8124bb18eab78              # double 0.75223335913811606
	.quad	0x3fdfe56429386bd2              # double 0.49837593102864475
	.quad	0x3fefb0ef255d3d48              # double 0.99034840867708684
	.quad	0x3fe9524bc95a6079              # double 0.79129590346111833
	.quad	0x3fe0578d613dfb06              # double 0.51068753235435405
	.quad	0x3fe3f56e97239161              # double 0.62370996016811031
	.quad	0x3fd178456d435ef6              # double 0.2729657713912127
	.quad	0x3fe50c230e29f48d              # double 0.65773155943283401
	.quad	0x3fe637c34f2f32be              # double 0.69430699792572859
	.quad	0x3fe36e89131908b8              # double 0.60724309663807841
	.quad	0x3fea03e5a4b81f63              # double 0.81297571346020125
	.quad	0x3fee156cece90421              # double 0.94011541625525663
	.quad	0x3fe4a8397b1923f1              # double 0.64553522150629139
	.quad	0x3fd9290fcb47704c              # double 0.3931312070033115
	.quad	0x3fe3846e7ff6d1cc              # double 0.60991597168918465
	.quad	0x3fe21ccd4c997aff              # double 0.56601586304518026
	.quad	0x3fe86502f3b0c28d              # double 0.76233050914568568
	.quad	0x3fcf40b126f3243c              # double 0.24416174318165129
	.quad	0x3fe6b10ef2d1fac5              # double 0.7091135733206434
	.quad	0x3fd4c377551dac6a              # double 0.32443030655003346
	.quad	0x3fee77d37310ca3a              # double 0.95212719415423597
	.quad	0x3fec448aa9dffd2f              # double 0.88336690119459671
	.quad	0x3fea3be3dec47efc              # double 0.81981080540933204
	.quad	0x3fe9f4452b737be7              # double 0.81106813894791407
	.quad	0x3fed86bae6d010cb              # double 0.92269654350868657
	.quad	0x3fd61405e932476a              # double 0.34497211239896919
	.quad	0x3fe43a5ab02ba3ad              # double 0.63212332161230267
	.quad	0x3febb385feb65d6e              # double 0.86566447971828864
	.quad	0x3fec452f6980caca              # double 0.8834454594237624
	.quad	0x3fe25751c65d4769              # double 0.57315911047974766
	.quad	0x3fe39d4aabcf1038              # double 0.61295064503111174
	.quad	0x3fe656c917fd225f              # double 0.69809393582643142
	.quad	0x3fe4ef3e88a5c48e              # double 0.65420462311716832
	.quad	0x3fe4b154fe305433              # double 0.64664697309729602
	.quad	0x3fdc6d19eadacd4a              # double 0.44415901122120671
	.quad	0x3fef9e55966ea7f8              # double 0.98807792073534894
	.quad	0x3f9a7fcd7bd3d440              # double 0.025878153498485768
	.quad	0x3fe4170dfc3df871              # double 0.62781428590802879
	.quad	0x3fdf54e357c28dbe              # double 0.48955615587530221
	.quad	0x3fc2b77253c92054              # double 0.14622334567161721
	.quad	0x3fe4514f05e958b7              # double 0.63492537645904334
	.quad	0x3fc5ccbca8851cf8              # double 0.17031057575716324
	.quad	0x3fb5cc363fc072b8              # double 0.085147276462928967
	.quad	0x3feab3c097808326              # double 0.83444242086634257
	.quad	0x3fd2dbd6a585167a              # double 0.29466787494707314
	.quad	0x3fd6f4556c2a4c94              # double 0.35866294444094504
	.quad	0x3fdc48d06155868a              # double 0.44194421296388298
	.quad	0x3fb6893f1d886608              # double 0.088031716070325783
	.quad	0x3fea9b92dcbd1dd7              # double 0.83149092782053458
	.quad	0x3fe4c9702a2c2b71              # double 0.64958961712669183
	.quad	0x3fe9637bd0bdfa90              # double 0.79339400072042743
	.quad	0x3fa18f77a3ab3e80              # double 0.034297693947903163
	.quad	0x3fdd02924f24faf4              # double 0.45328195313406572
	.quad	0x3fe96dcc059f706a              # double 0.79465294931607144
	.quad	0x3fcfc85d65411150              # double 0.24830214923907556
	.quad	0x3fecde7097d14603              # double 0.90215329791880128
	.quad	0x3fef7704ad86f5b6              # double 0.98327859775570547
	.quad	0x3fbafaad51d03e10              # double 0.10538752791784867
	.quad	0x3fe1c703e43d771a              # double 0.55554384782928712
	.quad	0x3fd0637dab4dc436              # double 0.25607244233021065
	.quad	0x3fc88c7c60feeb18              # double 0.19178728805658163
	.quad	0x3fca26913107128c              # double 0.20430197614600265
	.quad	0x3fe5bbe92af187a3              # double 0.67918833148381841
	.quad	0x3fec88c3d1b7169a              # double 0.89169493637082842
	.quad	0x3fe916abd07b472a              # double 0.78401747435620917
	.quad	0x3fea8a4382f7904f              # double 0.82937789515973204
	.quad	0x3fda91059a2b90f4              # double 0.415101433331315
	.quad	0x3feb835523fdbbb0              # double 0.85978180913467916
	.quad	0x3fda8ec0114b6f84              # double 0.41496278466160441
	.quad	0x3fd5778030339698              # double 0.33541874606303557
	.quad	0x3fe12154dc08f5da              # double 0.53531878448091708
	.quad	0x3faffa1ce77a55b0              # double 0.062455085045410086
	.quad	0x3fb8919bd7738c48              # double 0.095971813297681341
	.quad	0x3fd25e5cbf4efbb4              # double 0.28700941736672836
	.quad	0x3fe553ceb7969aa8              # double 0.66648040635194139
	.quad	0x3fe658548881e7a2              # double 0.69828249608621129
	.quad	0x3fd86994f88cfa10              # double 0.38144420883682617
	.quad	0x3fc66a06825e9444              # double 0.17511063924499315
	.quad	0x3fe9ff132b981563              # double 0.81238707079380068
	.quad	0x3fef9f2cd6a05099              # double 0.98818056029496681
	.quad	0x3fda2713da9427e4              # double 0.40863510461406194
	.quad	0x3fbe2e586b9d1590              # double 0.11789467456136138
	.quad	0x3fc1c56f667a5f80              # double 0.13883774284181172
	.quad	0x3febf1216e8dc2aa              # double 0.87318488686112983
	.quad	0x3fe5d5243f905593              # double 0.68226826109700978
	.quad	0x3fcc6c64fe2e56ec              # double 0.22205793772871318
	.quad	0x3fb8c19f59e95278              # double 0.096704444361714326
	.quad	0x3fe3154841119cfd              # double 0.59634793003797848
	.quad	0x3fe1c8c2cec0d95e              # double 0.55575695401675396
	.quad	0x3faf1dd70ed27e90              # double 0.060774536666255874
	.quad	0x3fcc9135b1cd2b9c              # double 0.22318144971572174
	.quad	0x3fc9e215742d7084              # double 0.20221203015069389
	.quad	0x3fe215d36908794f              # double 0.56516428484227699
	.quad	0x3fe8b3e2f6d99833              # double 0.77195881092916918
	.quad	0x3fd90695a908f75a              # double 0.39102689273192015
	.quad	0x3fe78f3ca468ec13              # double 0.73623497115420589
	.quad	0x3fe4374d036391ae              # double 0.63175058996107736
	.quad	0x3fb88b567a8607a0              # double 0.095876126206376088
	.quad	0x3fdfbf75d07bf3f8              # double 0.4960608039835388
	.quad	0x3fd53e5824b2d24a              # double 0.33193019470062224
	.quad	0x3fc77b734c9a4540              # double 0.18345490684854759
	.quad	0x3f91040e7cc8ed20              # double 0.016617037168754512
	.quad	0x3fee34458d6d8369              # double 0.94388082144369634
	.quad	0x3fd0a83ebef80018              # double 0.26026886605541355
	.quad	0x3fb0dd36e11194b0              # double 0.065875463436514847
	.quad	0x3fcbd36c84ad5e68              # double 0.21738964537029237
	.quad	0x3fde3e54db108e18              # double 0.47255441086801531
	.quad	0x3fdda70b2f6026e0              # double 0.46332053782007954
	.quad	0x3fead0a945d13a9d              # double 0.83797134052459266
	.quad	0x3fd3eab29a3c3e6c              # double 0.31119980871242237
	.quad	0x3fcec5c4c4001184              # double 0.24041041918111372
	.quad	0x3fdb7d0be5b823c6              # double 0.42950723107838618
	.quad	0x3fb2d5347b582ce8              # double 0.073565750230205063
	.quad	0x3fe11c37d1cd1687              # double 0.53469458557874894
	.quad	0x3fd8ac5f93e38f18              # double 0.38552083437228779
	.quad	0x3fedf1e32ad99c93              # double 0.93577726716184129
	.quad	0x3fd54c25463803a4              # double 0.33277255875878553
	.quad	0x3fc0c22b116817bc              # double 0.13092554426128611
	.quad	0x3f9c557c5161e380              # double 0.027669851748644003
	.quad	0x3fe135d5b7922226              # double 0.53782163480451994
	.quad	0x3fe850edbbddaa05              # double 0.75987898533395593
	.quad	0x3fda0d648c722730              # double 0.40706742968960707
	.quad	0x3fce81cfe5376858              # double 0.23833655063828263
	.quad	0x3fefa74f31ef94e9              # double 0.98917350533579651
	.quad	0x3fe7243000d0e4be              # double 0.72316742095349418
	.quad	0x3fdd3e0af3b3b95e              # double 0.45691179083850908
	.quad	0x3fc5ff2336aa8fa4              # double 0.17184868020296762
	.quad	0x3fdf8981f3a780ae              # double 0.49276779932371084
	.quad	0x3fedc0178f834c71              # double 0.92969873456821805
	.quad	0x3fe6fe58cc3cb704              # double 0.71854820146629139
	.quad	0x3fecae64ca312ade              # double 0.89628829470288074
	.quad	0x3fe00473508dbf03              # double 0.5005432675661442
	.quad	0x3fc6aab2abbd1d34              # double 0.17708428750686667
	.quad	0x3fe2e57dbe224b87              # double 0.59051406035938292
	.quad	0x3fe8be421c17666b              # double 0.7732248829517635
	.quad	0x3f9b95a4fe304840              # double 0.026938035978737895
	.quad	0x3fe0f875c1295a1a              # double 0.53032958723889867
	.quad	0x3fe227d76c169eac              # double 0.56736346350677058
	.quad	0x3fe9a7ceb949c63e              # double 0.80173431576822174
	.quad	0x3fcf16996b47b924              # double 0.24287717569627276
	.quad	0x3f47e39a24146800              # double 7.2903658306988639E-4
	.quad	0x3fdf41313a632926              # double 0.48835402204407996
	.quad	0x3fc7bf7d3d7e8134              # double 0.18553128721851808
	.quad	0x3f955d87c38714c0              # double 0.020864602383672048
	.quad	0x3fec7fed03eb4288              # double 0.89061594739367056
	.quad	0x3feb8b8b668278f3              # double 0.86078424474160753
	.quad	0x3fe29fad6691ee22              # double 0.58199186356745636
	.quad	0x3fe1d3248d386201              # double 0.55702426511840042
	.quad	0x3fef8dbbbd83101f              # double 0.98605143560462582
	.quad	0x3fe0097fecc7f78f              # double 0.50115963217079862
	.quad	0x3fee3af6c3c50b19              # double 0.94469774471540113
	.quad	0x3fb9114f773f5260              # double 0.097920385945437171
	.quad	0x3fe4174d12c71c9f              # double 0.62784436862502335
	.quad	0x3f994e33457766c0              # double 0.024712372889416967
	.quad	0x3fdabb3a9c8fa286              # double 0.4176775483052001
	.quad	0x3fe77ac001358094              # double 0.73373413311130031
	.quad	0x3fee36eaf2c46bd8              # double 0.94420382895929844
	.quad	0x3fdbe0b7067e50b2              # double 0.43559051164744311
	.quad	0x3fef4c3ed4f3df05              # double 0.97805730430897652
	.quad	0x3fe79c1cd413804d              # double 0.73780671521309105
	.quad	0x3fe111197309e357              # double 0.53333733051759225
	.quad	0x3fe390dd88157fa6              # double 0.61143375948812628
	.quad	0x3fd89c21bbda9824              # double 0.38452952714067323
	.quad	0x3fe7b8e25a189064              # double 0.74131887051454415
	.quad	0x3fe611383d426628              # double 0.68960201229783014
	.quad	0x3fd99f4b79e3afdc              # double 0.40034758475553445
	.quad	0x3fd4089adb88e832              # double 0.31302520216889029
	.quad	0x3fe907cf83762e27              # double 0.78220344234563732
	.quad	0x3fab61d0c48d3550              # double 0.053480648034205047
	.quad	0x3fe2d3f9ecdf03d4              # double 0.58837600959679515
	.quad	0x3fe31399a0429345              # double 0.59614259053032781
	.quad	0x3fe2188bc3343edb              # double 0.56549633146093059
	.quad	0x3feb1d399cac376d              # double 0.84731751060620086
	.quad	0x3fcc3432db7be068              # double 0.22034297673212966
	.quad	0x3fe5c84fd864476f              # double 0.68070213569647631
	.quad	0x3fe9a8ac91b8cfd9              # double 0.80184009991944116
	.quad	0x3fe19f3af9e48e41              # double 0.55068730170427937
	.quad	0x3fe30d6f35cf2e40              # double 0.59538994321469119
	.quad	0x3fea6336635e2b78              # double 0.82461089523108821
	.quad	0x3fd487081f53a7e0              # double 0.32074168261772051
	.quad	0x3fe906cb71a1b007              # double 0.78207943147344927
	.quad	0x3fe5bd2f620854b9              # double 0.6793438830087758
	.quad	0x3fecee154bb44633              # double 0.90406288896537601
	.quad	0x3fe234ddad6d143e              # double 0.56895336029322841
	.quad	0x3fc54c8180f64f28              # double 0.16639727398853066
	.quad	0x3fc241aec4673510              # double 0.14262947645185209
	.quad	0x3fd58b14708b2bc4              # double 0.33661375990476139
	.quad	0x3fe1c1561f5ab3a1              # double 0.55485063671004664
	.quad	0x3fcdf81f5e7cbf8c              # double 0.23413459886205279
	.quad	0x3fd3bc8ca9da901c              # double 0.30838314616471663
	.quad	0x3f91cf9a09950a60              # double 0.017393500170565068
	.quad	0x3fea461265b52f6d              # double 0.82105369438930398
	.quad	0x3febe93a7edb2662              # double 0.87222027565549021
	.quad	0x3fda6e753ac5782c              # double 0.41299181689635378
	.quad	0x3fee5a650d693feb              # double 0.94853451365815766
	.quad	0x3faff9a8ebf39620              # double 0.062451628496813294
	.quad	0x3fda258eca262eda              # double 0.40854234448555149
	.quad	0x3fb21b05f7b5adc8              # double 0.070724843002316296
	.quad	0x3fe3391b02f6c9a0              # double 0.60072088793667788
	.quad	0x3f9c17952c0ce1a0              # double 0.027433710874193218
	.quad	0x3fe3ef2ead7a5de7              # double 0.62294706232472385
	.quad	0x3fcf9d184c5252e4              # double 0.24698165632857816
	.quad	0x3fee5084e99cce32              # double 0.94732900264211239
	.quad	0x3febb0509c18d596              # double 0.86527281272599299
	.quad	0x3fcc2e8f769c2764              # double 0.2201709107542299
	.quad	0x3fe10d11ad6ab68e              # double 0.53284534330824029
	.quad	0x3fea8ca43940b632              # double 0.82966815168555841
	.quad	0x3fc21653d3c4051c              # double 0.14130637970087256
	.quad	0x3fd0806deb6d1762              # double 0.25783870688279908
	.quad	0x3fdbee32fde2ed38              # double 0.43641352456662075
	.quad	0x3fdd2bdaee40d832              # double 0.45580170885966986
	.quad	0x3fedf88117259459              # double 0.93658499260767336
	.quad	0x3fe3cf4f81e95488              # double 0.61905646680192294
	.quad	0x3fc098704975551c              # double 0.12965205752213016
	.quad	0x3fbcf36235e3ab60              # double 0.11308873954446375
	.quad	0x3fe2d1efe52eb575              # double 0.58812708627890109
	.quad	0x3fe5dff420db0417              # double 0.6835880891522973
	.quad	0x3fc97d26954aa0fc              # double 0.19913179673790882
	.quad	0x3fe191113198effa              # double 0.54895839392656787
	.quad	0x3fe1ebae0009040a              # double 0.56001949316862576
	.quad	0x3fe72e0c64627dc2              # double 0.72437114340203146
	.quad	0x3fe5ef4832a91b85              # double 0.68545923132556708
	.quad	0x3fdf1d52996a8808              # double 0.48616471273464912
	.quad	0x3fcf7dd0d1ed93ec              # double 0.24602709055321215
	.quad	0x3fcb1837bfba4808              # double 0.21167656766607501
	.quad	0x3fc4cd6d5f7fe2c8              # double 0.16251914179863136
	.quad	0x3fe4d84084844ee1              # double 0.65139795190995298
	.quad	0x3fe7ab5e1201315c              # double 0.73966887966666262
	.quad	0x3fd4fa12bf0a67f6              # double 0.32776325851739274
	.quad	0x3fe2f9e997fcb626              # double 0.59300689396849715
	.quad	0x3fefe6a09bc6ed57              # double 0.99690275597769584
	.quad	0x3fd46b9b55383932              # double 0.31906779596546919
	.quad	0x3fe38c68a3628a0c              # double 0.61088973914257982
	.quad	0x3febf57825d5df04              # double 0.87371451749547235
	.quad	0x3fd2b2b7d11e7910              # double 0.29215808316975345
	.quad	0x3fdb93d8128b2dd0              # double 0.43089868365197237
	.quad	0x3fe1c24f8fd86fba              # double 0.55496957869353669
	.quad	0x3fe04982ca76dbfd              # double 0.50897349876220199
	.quad	0x3fe5bdd65da0eba6              # double 0.6794235066112051
	.quad	0x3f94a4edf328fb80              # double 0.020160406080545368
	.quad	0x3fe215d4d09209c7              # double 0.5651649545327978
	.quad	0x3fce94f3561af76c              # double 0.23892060951578331
	.quad	0x3feeada5cc51392f              # double 0.95869722276419178
	.quad	0x3fb5dca6e827f138              # double 0.085398132017819317
	.quad	0x3fe6673e566ac6e0              # double 0.7001029670556953
	.quad	0x3fe6a6851cdb277d              # double 0.70782714496566224
	.quad	0x3fde4f9c8299675a              # double 0.47360909227210402
	.quad	0x3fa58fea1783ac80              # double 0.042113604898838197
	.quad	0x3fea93a4ba5b3b55              # double 0.83052288434724153
	.quad	0x3fec672c8807f685              # double 0.88759447640013944
	.quad	0x3fd9cb37cf9992aa              # double 0.40302844308306851
	.quad	0x3fde2171a54fbc3a              # double 0.47079125541398847
	.quad	0x3fad038ecb1ec7c0              # double 0.056667768759680381
	.quad	0x3fd3ca04e592e1da              # double 0.30920526904404044
	.quad	0x3fb5072883241780              # double 0.082140476242868132
	.quad	0x3fbe5e4561781840              # double 0.11862596158616245
	.quad	0x3fed57a29aaa4186              # double 0.91694765289325697
	.quad	0x3f992e0d181f4420              # double 0.024589733693407223
	.quad	0x3fa8ab91dd037980              # double 0.048183973530956159
	.quad	0x3fd59e8491f56ba0              # double 0.33780016187454898
	.quad	0x3fed07f56491fe5f              # double 0.9072215046180182
	.quad	0x3fd9b7e5a642a596              # double 0.40184918629037136
	.quad	0x3fb968611475be08              # double 0.099248950476742093
	.quad	0x3fd565986d7cbf72              # double 0.33432589237326404
	.quad	0x3fe7c2a910560e9a              # double 0.74251225653320607
	.quad	0x3fc32c97aec94cc8              # double 0.14979835543144859
	.quad	0x3fdcbd50b4ca3718              # double 0.4490548863912962
	.quad	0x3fd6cf9099d4acea              # double 0.3564187528852033
	.quad	0x3febd1ce703a5d2e              # double 0.86936113280800043
	.quad	0x3fd8b31d794a22e0              # double 0.38593232006728151
	.quad	0x3fdf794351a362e8              # double 0.49177630398257444
	.quad	0x3fd525e8e125b1b0              # double 0.33043882357631116
	.quad	0x3fdc24a9ef631036              # double 0.43973778131135377
	.quad	0x3fe69925c667b609              # double 0.70619477034569045
	.quad	0x3fa5c6e987627970              # double 0.042533204819153236
	.quad	0x3fe0a94854414f6a              # double 0.52066437202527749
	.quad	0x3feec5d584e06df4              # double 0.96164966537929652
	.quad	0x3fc8a28d93c65b38              # double 0.19246072497909394
	.quad	0x3fd9eb079769ad28              # double 0.40497007166296095
	.quad	0x3fa16e7d8ff80470              # double 0.034046100448912209
	.quad	0x3fdb7380c08a5bd8              # double 0.42892473986415558
	.quad	0x3fb2ab94232a2398              # double 0.072930582604512018
	.quad	0x3fe2dfa90c03b3ee              # double 0.5898022875459199
	.quad	0x3fe1d680bf7e3e38              # double 0.55743443871501253
	.quad	0x3fe4e629c8eae609              # double 0.65309609643662825
	.quad	0x3fd2126d5c976eda              # double 0.28237470667020903
	.quad	0x3fa2e1a8edb072a0              # double 0.036877898230362804
	.quad	0x3fc218a848302450              # double 0.14137748265082672
	.quad	0x3fe8573839c3a844              # double 0.76064692766272701
	.quad	0x3fc9123130b991c8              # double 0.19586768035072866
	.quad	0x3fcf18aa0913c790              # double 0.24294019168115399
	.quad	0x3fec782f906f6926              # double 0.88967111787795683
	.quad	0x3fdbcd4419ee1e4e              # double 0.43440344364396288
	.quad	0x3fc5af72392c3698              # double 0.16941669265400061
	.quad	0x3fee4eef44409f76              # double 0.94713557558587413
	.quad	0x3feccf91828ab731              # double 0.90033793922859762
	.quad	0x3fb738e352a09200              # double 0.090711791680014642
	.quad	0x3fe0f21490e3201c              # double 0.52955082224162053
	.quad	0x3fd3972e01887308              # double 0.30610227727611106
	.quad	0x3f95657d19007a20              # double 0.020894961024277348
	.quad	0x3feede9717f103cc              # double 0.9646716563803408
	.quad	0x3fde4d5bfbbaffe6              # double 0.47347163756421506
	.quad	0x3f7c297054ca7b00              # double 0.0068754566133566453
	.quad	0x3fa8663eb83bd760              # double 0.04765506743380743
	.quad	0x3fe06aba0dc8c341              # double 0.51302817051155369
	.quad	0x3fcc6f1f7fa714a8              # double 0.22214120610275256
	.quad	0x3fe4a636f077a737              # double 0.64528986898697027
	.quad	0x3fd70a3e5c13efc4              # double 0.36000021926861003
	.quad	0x3fbe8f1da69101c8              # double 0.11937127415240589
	.quad	0x3fcf9510048cb318              # double 0.24673652860783402
	.quad	0x3fc397d8fc585a34              # double 0.15307152101077437
	.quad	0x3fe51f9917b695bf              # double 0.66010717994202384
	.quad	0x3fd06dcb234bbdc8              # double 0.25670126387464309
	.quad	0x3febecbd75e5aff9              # double 0.87264893557357859
	.quad	0x3fa7337ca887fb40              # double 0.045314689228681093
	.quad	0x3fe262c974bdcab7              # double 0.57455895234155363
	.quad	0x3fee1d61b644266b              # double 0.94108663176411989
	.quad	0x3fe4ea8d3bbd7da7              # double 0.65363179843909769
	.quad	0x3fe23f8e65de1f99              # double 0.57025833030728557
	.quad	0x3fdc6995203bb85c              # double 0.44394424579411917
	.quad	0x3fee8c49474d0d23              # double 0.95462478567097653
	.quad	0x3f9113b5664e3860              # double 0.016676744813189592
	.quad	0x3fd04457bb7b70b8              # double 0.25417130764777651
	.quad	0x3fd560b4ea366a36              # double 0.33402750847168095
	.quad	0x3fdb6bba28b4d10e              # double 0.42845014548517291
	.quad	0x3fec6531836a5f6e              # double 0.88735271136373028
	.quad	0x3fb8c821432b6530              # double 0.096803740404898475
	.quad	0x3fed283a84608c90              # double 0.91116071562682244
	.quad	0x3fc47a7f95122758              # double 0.15998835352757612
	.quad	0x3fd40c28ffc0ed2e              # double 0.31324219680728305
	.quad	0x3fe1327133e0fbef              # double 0.53740749485575445
	.quad	0x3fcf9847854f7b40              # double 0.24683469781208522
	.quad	0x3fe00e602b70849a              # double 0.50175484165460493
	.quad	0x3fcf3fc7a1871dac              # double 0.24413390528773726
	.quad	0x3fd49cc08d1cfc9e              # double 0.32206739216412383
	.quad	0x3fe4262d93ba2d10              # double 0.62966040471056495
	.quad	0x3fe6fc7409c6af68              # double 0.71831705006978286
	.quad	0x3fe37f8b9eb31269              # double 0.60931950565334347
	.quad	0x3feea02ac64cbf67              # double 0.95705164652279684
	.quad	0x3fd920691c314840              # double 0.39260318520712545
	.quad	0x3fd26475888ad2da              # double 0.28738153776366249
	.quad	0x3fc85fe2864d2b3c              # double 0.19042617376029536
	.quad	0x3fd9c602836415a2              # double 0.40271056014202078
	.quad	0x3fec0585ea624ece              # double 0.87567420747878955
	.quad	0x3fd19b2e4f4996ac              # double 0.2750964903155857
	.quad	0x3fc57a8d284970ac              # double 0.16780247180111496
	.quad	0x3fe3098187fb0446              # double 0.59491039808939017
	.quad	0x3fa0cdff728507d0              # double 0.032821638802957076
	.quad	0x3fae7e85148b8670              # double 0.059559019811570191
	.quad	0x3fe9d6445a7b2182              # double 0.80740564033571638
	.quad	0x3feb37f0bc77abb8              # double 0.8505786591534763
	.quad	0x3fdc68c163faf55e              # double 0.44389376414968307
	.quad	0x3fd6c2df2212f150              # double 0.35564401938952006
	.quad	0x3febe4c84e5e48f8              # double 0.87167754465397618
	.quad	0x3fd92fdc2ce60392              # double 0.39354614624613149
	.quad	0x3fe0e51158963d6f              # double 0.52796237280010228
	.quad	0x3fdf7a9f6947fc4e              # double 0.49185929566732944
	.quad	0x3fbe01c7db3818c8              # double 0.11721467115430351
	.quad	0x3feb2c8906812e67              # double 0.84918643255646209
	.quad	0x3fd0f978ab82428c              # double 0.26522652386578538
	.quad	0x3fa6b887c65b0c70              # double 0.044376604998910163
	.quad	0x3fdba38712d38184              # double 0.43185593451018911
	.quad	0x3fec1e58cc0b4362              # double 0.87870445110648299
	.quad	0x3fd658908b81b866              # double 0.34915555595114822
	.quad	0x3fc4c64cef81d02c              # double 0.16230165190393231
	.quad	0x3fe4209f360b980f              # double 0.62898216777534965
	.quad	0x3f91de44215947e0              # double 0.017449440513082837
	.quad	0x3fe2dfa9be76859f              # double 0.58980261993217542
	.quad	0x3fdd936d15872336              # double 0.46212317564327365
	.quad	0x3fe77689732d4769              # double 0.73321983809931368
	.quad	0x3fe73a81e08f61b2              # double 0.72589200839416024
	.quad	0x3fda8ec24d225b46              # double 0.4149633172286723
	.quad	0x3fe37128a6165066              # double 0.60756332816027903
	.quad	0x3fd38e04cb9ac0a4              # double 0.30554313548328538
	.quad	0x3fdfb338ee0e39ec              # double 0.49531386611570727
	.quad	0x3fe48efad8337c3e              # double 0.64245359637050803
	.quad	0x3fe93fe98e00e411              # double 0.78905179724745456
	.quad	0x3fe8b903fc0c61f3              # double 0.77258490780064759
	.quad	0x3feb3ab8f037b92b              # double 0.85091826360238565
	.quad	0x3fc4f370c5c1ef08              # double 0.16367921501284166
	.quad	0x3fd99a723cb10092              # double 0.40005165030380241
	.quad	0x3fdb99306d806eb0              # double 0.43122492497944176
	.quad	0x3fc72d8413996518              # double 0.18107653576843386
	.quad	0x3fe3d2b481d1d121              # double 0.61947083812131976
	.quad	0x3fe2e9f1c6a12815              # double 0.59105767054393488
	.quad	0x3feee4892aae64a8              # double 0.96539743744064754
	.quad	0x3fe192df4d7fa6e5              # double 0.54917874466374583
	.quad	0x3fc5a947ca318eb4              # double 0.16922852871640759
	.quad	0x3fc9ac50bc37d7dc              # double 0.20057114782656427
	.quad	0x3fec1ea0148878c2              # double 0.87873844156617786
	.quad	0x3fdf0322663401da              # double 0.48456630688454327
	.quad	0x3fe4c634f8a3ddc8              # double 0.64919518053550807
	.quad	0x3fe34b9cb1ad1dd1              # double 0.6029799909819592
	.quad	0x3fef7ae69c45d22a              # double 0.9837525417520443
	.quad	0x3fe0113ef98174db              # double 0.50210522395687052
	.quad	0x3fea73ab7633dbf8              # double 0.82661984526100607
	.quad	0x3febb803c34d5fd1              # double 0.86621273179025071
	.quad	0x3fe38efeb150db8e              # double 0.61120543128969174
	.quad	0x3fde0885a2d6047a              # double 0.46927014257386868
	.quad	0x3fd8d45942a962a0              # double 0.38796073446204993
	.quad	0x3f83e5f20adee740              # double 0.0097159299437979962
	.quad	0x3f97aeed90d8c140              # double 0.023128234830609218
	.quad	0x3fe8585160cb7944              # double 0.76078099160421475
	.quad	0x3fecab37414b61b3              # double 0.89590037110160947
	.quad	0x3fe91d62cbb99031              # double 0.78483714857111953
	.quad	0x3fe9565c900142d3              # double 0.79179218412363139
	.quad	0x3fe52fc4add8706a              # double 0.66208108858292047
	.quad	0x3fb657d08f0ecc80              # double 0.087277445722792279
	.quad	0x3fd34bab7e6b765a              # double 0.30149352403336638
	.quad	0x3fa1cd861d1541a0              # double 0.034771147775816802
	.quad	0x3fdfb3de189c229e              # double 0.49535324481306897
	.quad	0x3fe33b3eaedf76e1              # double 0.60098203806748185
	.quad	0x3fce81de5ffc2318              # double 0.23833827673686225
	.quad	0x3fc59ffed8aa8aa8              # double 0.16894517497447237
	.quad	0x3fcc94aae890f160              # double 0.22328697543879183
	.quad	0x3fdd8d418444a8e8              # double 0.46174657742325431
	.quad	0x3fe59c3fe783fa89              # double 0.67532344072226735
	.quad	0x3fe68c6ccf59f8d8              # double 0.70464172838526462
	.quad	0x3febd611d6507ae5              # double 0.86988155229832087
	.quad	0x3fe6694c4b7e5e09              # double 0.70035376305435293
	.quad	0x3fe6ac15d968ffd2              # double 0.70850651228829009
	.quad	0x3fdfc5066ce45f3c              # double 0.4964004577063752
	.quad	0x3fecc32ef6dd9b51              # double 0.89882610526988505
	.quad	0x3fbfd3b6ea575e28              # double 0.12432425709936779
	.quad	0x3fd46355877c18d2              # double 0.3185628722279833
	.quad	0x3fda8a376fa4957a              # double 0.41468606855990908
	.quad	0x3fc2f95488fc4920              # double 0.14823395432228725
	.quad	0x3fec623fbc4ebc71              # double 0.88699328211613537
	.quad	0x3fe828aefa8076a6              # double 0.75496624876150942
	.quad	0x3fe1977e6ef12e07              # double 0.54974290531521397
	.quad	0x3fd04d397d34bd52              # double 0.25471341349744592
	.quad	0x3fdfb43b0bbf9b46              # double 0.49537540576277583
	.quad	0x3fcd19a90428eb40              # double 0.22734558776013536
	.quad	0x3fee838680f8bed0              # double 0.95355534734513903
	.quad	0x3fdf71e9a5a3079a              # double 0.49132767844650405
	.quad	0x3fe07285389dd156              # double 0.5139795404234444
	.quad	0x3fe5caf76f4d2095              # double 0.68102618921786251
	.quad	0x3fe5e45b6eb6bfe8              # double 0.68412562965204149
	.quad	0x3fe4b24c334b82f2              # double 0.64676485079334456
	.quad	0x3fe5f83ade560460              # double 0.68655150818825561
	.quad	0x3fd0c91a5597403e              # double 0.26227434500197322
	.quad	0x3fb1ecd6ed98e430              # double 0.070020134932648359
	.quad	0x3fda44797e759bc8              # double 0.410429357047573
	.quad	0x3fc62cbeaafe8c68              # double 0.17324050282795445
	.quad	0x3feb1988ae811994              # double 0.84686693270559709
	.quad	0x3fcf91cd3f2b99c0              # double 0.24663701614845301
	.quad	0x3f8a636fa5771d00              # double 0.012884971844768334
	.quad	0x3fe6f1a340025df0              # double 0.71699678899579844
	.quad	0x3fd501311260cba8              # double 0.32819773478257241
	.quad	0x3fb1606e95a14e28              # double 0.067877685099397511
	.quad	0x3fe246f26883e677              # double 0.57116051114208133
	.quad	0x3fe842e05deca4ac              # double 0.75816362709624263
	.quad	0x3fe1222d89071d71              # double 0.53542210353127306
	.quad	0x3f9daf0c30536640              # double 0.028988066148349256
	.quad	0x3fd39422d377ca7a              # double 0.30591650630154954
	.quad	0x3fe2618879313e42              # double 0.57440589590437008
	.quad	0x3fd5793c0802e16e              # double 0.3355245664820562
	.quad	0x3fea0616e7cb0b0e              # double 0.81324334404084353
	.quad	0x3fb39f53dd634110              # double 0.076649896192297228
	.quad	0x3febf2409633d0d1              # double 0.87332181297690614
	.quad	0x3fe3c1d4648be50a              # double 0.61741084707242178
	.quad	0x3fd5cd9ec3599c18              # double 0.34067505910064844
	.quad	0x3fd94f1a0f93a72c              # double 0.3954529907338038
	.quad	0x3fe6b26c1fdf754d              # double 0.709280073405958
	.quad	0x3fec74e202d6b958              # double 0.88926792673536692
	.quad	0x3fedaba889e8f0f4              # double 0.92720438895733403
	.quad	0x3fda90f3f9e76c2c              # double 0.41509723095595308
	.quad	0x3fd91d8b49ce5d78              # double 0.39242822845104497
	.quad	0x3fd9d8797aebec1e              # double 0.40383755687770584
	.quad	0x3fe2ab9f21e9ad85              # double 0.58344990371317407
	.quad	0x3fdf5f98c47d2194              # double 0.49020976246222259
	.quad	0x3f8f4e00f5625f40              # double 0.015285499084981446
	.quad	0x3fbad848b6609868              # double 0.10486273243495392
	.quad	0x3fecaf339a620716              # double 0.89638691094316658
	.quad	0x3fe74851269d2036              # double 0.72757775823357096
	.quad	0x3fd18741931bb486              # double 0.27388038030660089
	.quad	0x3fe5fcc382f41763              # double 0.68710494591571736
	.quad	0x3fe6893d642a448b              # double 0.70425290645120364
	.quad	0x3fe830343d4e430d              # double 0.75588428472301106
	.quad	0x3feeb6bdadfe3668              # double 0.95980724318515076
	.quad	0x3fbb7b58bbef1348              # double 0.10735087002019583
	.quad	0x3fe2ebc18ee3b9be              # double 0.59127881916156588
	.quad	0x3f9219e55fc63f80              # double 0.01767691037235819
	.quad	0x3fd8a560c235fec6              # double 0.38509386983785665
	.quad	0x3fc5c69bc37b793c              # double 0.17012354893717851
	.quad	0x3fd82373492361a4              # double 0.37716371672061144
	.quad	0x3fb4d44b8a5f79c8              # double 0.081364365847071629
	.quad	0x3fbe047c855e26a8              # double 0.11725595718430759
	.quad	0x3fefd59bb376d0ae              # double 0.99482522059999723
	.quad	0x3fe0af406e68cf2e              # double 0.52139302791917941
	.quad	0x3fe1ae41dc18b772              # double 0.55252163875205285
	.quad	0x3fc0311ffaaa37a0              # double 0.12649917354104634
	.quad	0x3fb6f61599923730              # double 0.089692449562986054
	.quad	0x3fe7d4b0cb3c2cef              # double 0.74471320814464359
	.quad	0x3fd7782ce2aa8670              # double 0.3667099202667492
	.quad	0x3fec140377dfbc88              # double 0.8774430600441443
	.quad	0x3fba4d58390c8270              # double 0.10274268524927677
	.quad	0x3fef4dc350841250              # double 0.97824254728090843
	.quad	0x3fe969285367355f              # double 0.79408661164931604
	.quad	0x3fb14ae777d6a5e0              # double 0.067549196965635883
	.quad	0x3fe68c7ededbdb76              # double 0.7046503403388289
	.quad	0x3fe04f5681c18f49              # double 0.50968480437266195
	.quad	0x3fe674532ac3a42c              # double 0.70169981338870491
	.quad	0x3fe5b325627315b9              # double 0.67811841228893066
	.quad	0x3fe4bb9329569d73              # double 0.64789732049841431
	.quad	0x3fc8a4de26ec9664              # double 0.19253136540025928
	.quad	0x3fd0a6e46441091e              # double 0.2601862887423908
	.quad	0x3febbb013f97053c              # double 0.86657774372012097
	.quad	0x3fcac5914889661c              # double 0.20915428201514963
	.quad	0x3feb175f70af72d0              # double 0.84660312661034176
	.quad	0x3feee3515b52a444              # double 0.96524875484932026
	.quad	0x3f953d0312fbc080              # double 0.02074055484166637
	.quad	0x3fec8824e39a637c              # double 0.89161915258146917
	.quad	0x3fda0bd164306754              # double 0.40697130951013105
	.quad	0x3fe54c353ba0a1a6              # double 0.66555272718419611
	.quad	0x3fcfdb9d82d5ff18              # double 0.24888962639305912
	.quad	0x3fe9540a83b7311a              # double 0.79150891996099237
	.quad	0x3fed85259fa6a297              # double 0.92250329191036229
	.quad	0x3fd44b72921795ea              # double 0.31710495249566739
	.quad	0x3fd052e6a312fc68              # double 0.25505987096034355
	.quad	0x3fe78702c525c17b              # double 0.73523081307762028
	.quad	0x3fdd4dabf1ce687e              # double 0.45786570180792541
	.quad	0x3fe2c435e2215229              # double 0.58645147481963023
	.quad	0x3fca3e2affd83c48              # double 0.20502221577086943
	.quad	0x3fd7538bbfae4ad0              # double 0.36447423666792833
	.quad	0x3fafe9fa598c2200              # double 0.062331984931066842
	.quad	0x3fed2f3225836988              # double 0.9120112164194305
	.quad	0x3fe6dbd34da64221              # double 0.71433415571124581
	.quad	0x3fd3486de8ed42e4              # double 0.30129573580511093
	.quad	0x3fdf4f866daddc00              # double 0.48922882758000696
	.quad	0x3fe503404edcb93b              # double 0.65664687540792188
	.quad	0x3fef79ada64b745a              # double 0.98360331038896764
	.quad	0x3fd47a0c8d336a10              # double 0.3199492815889764
	.quad	0x3fddc8e43f28fb6c              # double 0.46538644950844943
	.quad	0x3fda15e765f45ff2              # double 0.40758690792563279
	.quad	0x3fc3f484f40b7830              # double 0.15589963833093767
	.quad	0x3fdc515ec2147ec4              # double 0.44246643975382605
	.quad	0x3fb7d590d5814768              # double 0.093102504849665757
	.quad	0x3fe9cda7f23d4b7b              # double 0.80635449707402473
	.quad	0x3fbcb0c2b10bb598              # double 0.11207215139775994
	.quad	0x3fda98b809973ee0              # double 0.41557122170068617
	.quad	0x3fed4b9d954336b9              # double 0.9154804148945096
	.quad	0x3feecc6d397fba4d              # double 0.96245442610035925
	.quad	0x3fc0de5ae780a8fc              # double 0.13178573898159829
	.quad	0x3fc133cc7d09d2c8              # double 0.13439327340497287
	.quad	0x3fe7472a826d3ad3              # double 0.7274372622867652
	.quad	0x3fb6c32c36f93938              # double 0.088915599271079837
	.quad	0x3fe016ea97be9895              # double 0.50279740941620565
	.quad	0x3fef5328b9f03721              # double 0.97890125576097741
	.quad	0x3fcd260f8e2ed514              # double 0.22772402231718358
	.quad	0x3faf024eb9f91f20              # double 0.060564480020330658
	.quad	0x3fab38786e110bb0              # double 0.053165210185873391
	.quad	0x3fe7d88acfa376ef              # double 0.74518337778473931
	.quad	0x3fea074d50c41180              # double 0.81339135908687865
	.quad	0x3fd98e021074e0a6              # double 0.39929248435101738
	.quad	0x3f9135a94a107c60              # double 0.016806264062435239
	.quad	0x3fdadd928df92f3c              # double 0.41977371086680981
	.quad	0x3fd5d3b651aee3ea              # double 0.34104688622352219
	.quad	0x3fec524c5d12344b              # double 0.88504617860747581
	.quad	0x3fd90fa8c25700f8              # double 0.39158076265813646
	.quad	0x3f54e16e01fc6c00              # double 0.0012744497580061687
	.quad	0x3fe7aa1d52ae0e06              # double 0.73951593540590532
	.quad	0x3fb96e38052c1488              # double 0.099338055861226349
	.quad	0x3fefb3206869a919              # double 0.99061603921043961
	.quad	0x3fe3327d88401749              # double 0.59991337405583878
	.quad	0x3fe907cea13bad2b              # double 0.7822030209621621
	.quad	0x3fa84a55db0b8c00              # double 0.047442133892921845
	.quad	0x3fe811090b1f7fdf              # double 0.75207950756520947
	.quad	0x3fa5642526fe6c00              # double 0.041779671678533248
	.quad	0x3fd88f8d62b295ca              # double 0.38376173628270449
	.quad	0x3fde3c958b71d8fa              # double 0.47244776361129903
	.quad	0x3fe7c63f0ceebcb1              # double 0.74294998670474943
	.quad	0x3fa2402477c4a3a0              # double 0.035645618076450392
	.quad	0x3fd750635879a184              # double 0.36428149833820833
	.quad	0x3fd3eb992de80370              # double 0.31125478251492833
	.quad	0x3fe4155c7904aa5a              # double 0.62760757099506326
	.quad	0x3fe94f0df09a0b89              # double 0.79090020172621778
	.quad	0x3fea001280470a7a              # double 0.81250882200431751
	.quad	0x3fea3dababf3f65c              # double 0.8200281485039329
	.quad	0x3fd9ed569d40f12a              # double 0.40511098248295474
	.quad	0x3fc4b6060f3036f4              # double 0.16180492154710857
	.quad	0x3fbba64161396bf0              # double 0.1080056059230825
	.quad	0x3fef588beb9e5cda              # double 0.97955890673884061
	.quad	0x3fde1a39a239350a              # double 0.4703506550038844
	.quad	0x3fd8fe2ea490b7a4              # double 0.39051405020551955
	.quad	0x3fb96262bbe53f50              # double 0.099157496331142569
	.quad	0x3fe69386e054e3b6              # double 0.70550864996686502
	.quad	0x3fd00fc665b4ac50              # double 0.25096282894327704
	.quad	0x3fcc2f95f20aae90              # double 0.22020220106547983
	.quad	0x3fe6e04eec4e7e36              # double 0.71488138345370689
	.quad	0x3fd0ea47030f0bcc              # double 0.26429915713032126
	.quad	0x3fe8c443e8bea22b              # double 0.77395816286031527
	.quad	0x3fd0587730b77f44              # double 0.25539951093195534
	.quad	0x3fe688450863c529              # double 0.70413447989100064
	.quad	0x3fc10eccd92480a8              # double 0.13326416590371548
	.quad	0x3fec367ba3ecbed0              # double 0.88165075317916752
	.quad	0x3fe8210ccb2c0fca              # double 0.75403442079595462
	.quad	0x3fe0e29754466a3d              # double 0.52766005001041771
	.quad	0x3fe8ff472247d8f0              # double 0.78116184897842622
	.quad	0x3f98416c225efd00              # double 0.023687066648332866
	.quad	0x3fe3e037d1f6fa6c              # double 0.62112036713354035
	.quad	0x3fd959e455cacfa0              # double 0.39611156824252625
	.quad	0x3fe23572ea1c61a6              # double 0.56902452206400223
	.quad	0x3fcc824a2f35d098              # double 0.22272612862764585
	.quad	0x3fdc62bfa0b685c2              # double 0.44352713293673329
	.quad	0x3fe06bb37fe9a687              # double 0.51314711554478343
	.quad	0x3fe4a924d3970eab              # double 0.64564744306740829
	.quad	0x3fd6913d64f10fae              # double 0.35261473519880837
	.quad	0x3fd08c4e32502970              # double 0.25856356538192582
	.quad	0x3fec09f3fd4c8179              # double 0.87621497604781873
	.quad	0x3fd9091ef432bafc              # double 0.3911816963908874
	.quad	0x3fe0790189fe12e1              # double 0.51477124168067345
	.quad	0x3fc34f8747f6ef84              # double 0.15086451543708901
	.quad	0x3fc6ddc908e3ecf8              # double 0.17864334997270936
	.quad	0x3fe3d2051d27f0f6              # double 0.61938720411811121
	.quad	0x3f99cb8689e148c0              # double 0.025190450826195088
	.quad	0x3fef4fb77fd11c50              # double 0.97848105396486496
	.quad	0x3fe2076070a47916              # double 0.56340047836764273
	.quad	0x3fa4934c32ddf360              # double 0.040186291894292792
	.quad	0x3fb60e65f1a9e1c0              # double 0.086157199382689065
	.quad	0x3fe7ed2f76d2f9d7              # double 0.74770329673611513
	.quad	0x3fd5369987473f00              # double 0.33145750246784189
	.quad	0x3fed0e961d420635              # double 0.90803056444582941
	.quad	0x3fd9ae7c1dcfae58              # double 0.40127470885520244
	.quad	0x3fdbc819892e5dd6              # double 0.43408811947435078
	.quad	0x3fe27d4f9e0444f0              # double 0.57779675352699478
	.quad	0x3fe5d092d24588c2              # double 0.68171063488650696
	.quad	0x3fa0836df18beec0              # double 0.032252727256460556
	.quad	0x3fde7eaf8eaebf8a              # double 0.47648228582237862
	.quad	0x3fe3a7aa2ba16c09              # double 0.61421688577263567
	.quad	0x3fe8c164b59e6b8b              # double 0.77360759231975018
	.quad	0x3fe1a2fbbc134221              # double 0.55114542706911973
	.quad	0x3fecf0a5d1117be3              # double 0.90437594255115206
	.quad	0x3fd568c25ceefca4              # double 0.33451899600545176
	.quad	0x3fdd1a12af4d0072              # double 0.45471636885850508
	.quad	0x3fca73e9ff8a56c8              # double 0.20666241624410575
	.quad	0x3fe7cace0e43a6df              # double 0.74350645814885385
	.quad	0x3fc515378213b5b0              # double 0.16470998622336941
	.quad	0x3feca08c211397c7              # double 0.89459806881199533
	.quad	0x3fd718bb8cb154a8              # double 0.36088455905457772
	.quad	0x3fea6e3aca583581              # double 0.82595576782630087
	.quad	0x3fb742dea7e660e8              # double 0.090864101401510688
	.quad	0x3fe1cdc96cfbbd63              # double 0.556370461328623
	.quad	0x3fe31ff9d685c045              # double 0.5976533117191215
	.quad	0x3fd57551da8d2a12              # double 0.33528562872803136
	.quad	0x3fce989fe44ea650              # double 0.23903273246587498
	.quad	0x3fe3ab9eb441333a              # double 0.61469969945901615
	.quad	0x3f8bb3bfaba2d7c0              # double 0.013526437211435538
	.quad	0x3fec259d43852407              # double 0.87959159076228921
	.quad	0x3fc3f4db085047a4              # double 0.15590989976823011
	.quad	0x3fe90f920e1abc69              # double 0.78315069918415958
	.quad	0x3fdbb981e068984a              # double 0.43319746889972477
	.quad	0x3fe3f4e8bc363aee              # double 0.62364613304256777
	.quad	0x3fe82fa0438a2a7c              # double 0.75581372443532712
	.quad	0x3fd73584365c0a76              # double 0.36264138515995314
	.quad	0x3fe5c0a34b7458fa              # double 0.67976536500171325
	.quad	0x3fdcded8ea2baf6c              # double 0.45110152118899438
	.quad	0x3fe91e69c52315ad              # double 0.78496254447298031
	.quad	0x3fdcffa490168a68              # double 0.45310319968317581
	.quad	0x3fae7fed1bf130b0              # double 0.059569749508768921
	.quad	0x3fdcd321867930ba              # double 0.45038641101997323
	.quad	0x3fd0a3d01b6e57ec              # double 0.25999834708033975
	.quad	0x3fb447fbe8350000              # double 0.07922338885418867
	.quad	0x3fe0bf667934310a              # double 0.52336429283744335
	.quad	0x3fdc6aaf6793ac0e              # double 0.44401154627729589
	.quad	0x3fee5e36a488e696              # double 0.94900066505143132
	.quad	0x3fc8bf93e04569ac              # double 0.19334648562182843
	.quad	0x3fbcf43779eda468              # double 0.11310145117535486
	.quad	0x3fe9bfad394cf238              # double 0.8046480292464997
	.quad	0x3fe924c868174dce              # double 0.78574009256629451
	.quad	0x3fd3e51fd46af6b0              # double 0.31085963958671936
	.quad	0x3fcfe38a28735324              # double 0.24913145995255903
	.quad	0x3fec68e88c4d6851              # double 0.8878062000542376
	.quad	0x3f8a16704c160d80              # double 0.012738110849346951
	.quad	0x3fe82d9d1f6db795              # double 0.75556808603663461
	.quad	0x3fe65f7ccefe8444              # double 0.69915619305187038
	.quad	0x3fdf27fbb22810e6              # double 0.48681538007828207
	.quad	0x3fe280de23cb5fad              # double 0.57823092452143998
	.quad	0x3fd94a415ff6e94c              # double 0.39515718814404432
	.quad	0x3fef3806d1a7291a              # double 0.97558918903203851
	.quad	0x3fd4ba3faa940fbe              # double 0.32386771829646566
	.quad	0x3fd0faf7b11823a4              # double 0.26531784338345177
	.quad	0x3fe142b7c18b1fc2              # double 0.53939426232772569
	.quad	0x3fe0633409ae3509              # double 0.51210977450105688
	.quad	0x3fe0a11e0dd61cca              # double 0.5196676511995062
	.quad	0x3fc14163984f3ba4              # double 0.13480801522243013
	.quad	0x3fb61e67ef3d0578              # double 0.086401458652309304
	.quad	0x3fe6ef4d336d003e              # double 0.71671161693667051
	.quad	0x3fd0f588ce794f54              # double 0.26498623050178094
	.quad	0x3fe48c6987427bb7              # double 0.64214016359243586
	.quad	0x3fe5c8aa9edc8287              # double 0.6807454207192486
	.quad	0x3fe24b1118d4cc10              # double 0.57166342592097585
	.quad	0x3fe8103be2a5dff1              # double 0.75198168055703551
	.quad	0x3fe23e815a81f8ca              # double 0.57013003995214118
	.quad	0x3fefd498ea7db867              # double 0.99470182227174752
	.quad	0x3fe376a4adb18819              # double 0.60823282169826876
	.quad	0x3fe0af8ca7cc342f              # double 0.52142937443716686
	.quad	0x3fe1d0c0f07552f1              # double 0.55673262562285519
	.quad	0x3fe96cd93cc4c96f              # double 0.79453718060385181
	.quad	0x3fd41ec11ff5e678              # double 0.31437709923884638
	.quad	0x3fc7897cdc7ec554              # double 0.18388329283110727
	.quad	0x3fe5c1978d4451fc              # double 0.67988183585344997
	.quad	0x3fbbd5dfaa1d6908              # double 0.10873220351405533
	.quad	0x3fe106c2ffb79cdb              # double 0.5320754045941628
	.quad	0x3fa5eba2c5f217c0              # double 0.042813383734980004
	.quad	0x3fe2dac1e7b1c502              # double 0.58920378926100647
	.quad	0x3fd79922289229bc              # double 0.36872152292258042
	.quad	0x3fd06da3ac1be062              # double 0.25669185454854049
	.quad	0x3fe295267c0b3b60              # double 0.5807068274242333
	.quad	0x3fec2dc624bebdf6              # double 0.88058764626288055
	.quad	0x3fe16c1ee7e802fd              # double 0.54444833082388266
	.quad	0x3fd0c63bd0061a16              # double 0.26209922137096109
	.quad	0x3feb335aba6d0e95              # double 0.85001884852722986
	.quad	0x3fac7e2acb5b5ca0              # double 0.055650079082334658
	.quad	0x3fb46ee2f51e4258              # double 0.079816994517622475
	.quad	0x3fe5fc8485851c00              # double 0.68707490995518583
	.quad	0x3fb45f2329f41de8              # double 0.079576680891583984
	.quad	0x3fe155d0854acef7              # double 0.54172540696751426
	.quad	0x3fee0aa76f4067c1              # double 0.93880054215264164
	.quad	0x3fe669ef75933e42              # double 0.70043156589412825
	.quad	0x3fe130f88809607b              # double 0.53722788400320043
	.quad	0x3f440b7317912c00              # double 6.1171645860136348E-4
	.quad	0x3fd2446e79a84692              # double 0.285426729970916
	.quad	0x3fe57379e23db700              # double 0.67034620464048089
	.quad	0x3fc09a30b9c2c598              # double 0.12970551557877452
	.quad	0x3f8169b69f60ec80              # double 0.0085024135006419588
	.quad	0x3fd07be27edaadb6              # double 0.25756132495981932
	.quad	0x3fc1150fe88c5e20              # double 0.13345526556871423
	.quad	0x3fc13439e895fcbc              # double 0.13440631729824826
	.quad	0x3feb8818d40b7526              # double 0.8603634015559336
	.quad	0x3fdcecd2813d77ca              # double 0.45195448514084247
	.quad	0x3fe87b62363db94e              # double 0.76506147951094206
	.quad	0x3fef5a071a7d3eb4              # double 0.97973971532515813
	.quad	0x3fcdac1d95866cc0              # double 0.23181505013494608
	.quad	0x3fe2b369a2702077              # double 0.58440095640345546
	.quad	0x3fc131784a428eac              # double 0.1343222010228734
	.quad	0x3fd959a92926ce7e              # double 0.39609745997152135
	.quad	0x3fe9ca314ba984bc              # double 0.80593170907754752
	.quad	0x3fe0ee3642ab50b0              # double 0.52907860776260485
	.quad	0x3fd60d69e3ea1328              # double 0.34456870324383937
	.quad	0x3fdd0863389f2a4c              # double 0.45363693742243494
	.quad	0x3fbb8d46497feea0              # double 0.10762442869593736
	.quad	0x3fefc20cc38a4a8b              # double 0.99243772689290332
	.quad	0x3fdfdabd72f5e44e              # double 0.49772583223927291
	.quad	0x3febc3b2c0ab3195              # double 0.86763894682512677
	.quad	0x3fc38c98e7dac8c0              # double 0.15272818871523519
	.quad	0x3fb0199f491692e8              # double 0.062890963882249573
	.quad	0x3fe06775324451d8              # double 0.51262912576435848
	.quad	0x3febf7f24144a138              # double 0.87401688335106709
	.quad	0x3fdbc200530bcafa              # double 0.43371589765517593
	.quad	0x3fed765c86b4fc17              # double 0.92069841680484188
	.quad	0x3fee056e2448fbc0              # double 0.93816287123615182
	.quad	0x3fe20a2f3a1e4652              # double 0.56374322272513155
	.quad	0x3fc5719383239894              # double 0.16752857116006636
	.quad	0x3fdc2ef443cf6dfa              # double 0.44036585447403775
	.quad	0x3fe11680b10514d3              # double 0.53399691175641306
	.quad	0x3fd21489f06144ec              # double 0.2825035903416182
	.quad	0x3fd0583f740517e8              # double 0.25538622217243168
	.quad	0x3fe5492468a15424              # double 0.66517849383911143
	.quad	0x3fe4b486c7d2909f              # double 0.64703692462764539
	.quad	0x3fc72ebb8a0338f8              # double 0.1811136649980154
	.quad	0x3fea8c471b94e256              # double 0.82962375056292603
	.quad	0x3fb82989704d63e8              # double 0.094383802335314848
	.quad	0x3fadf33748cc3650              # double 0.058496215473593183
	.quad	0x3febe28b52c67b92              # double 0.87140432517104416
	.quad	0x3fdf751ed78c403a              # double 0.49152346658320634
	.quad	0x3fd797324fbd5be4              # double 0.36860330378607231
	.quad	0x3fbaf3fc65f8ffe8              # double 0.10528542985502976
	.quad	0x3fea495f768ce452              # double 0.82145665315978023
	.quad	0x3fcba5e3cf4ae51c              # double 0.21600005742747264
	.quad	0x3fcb3e7e3c5f2044              # double 0.21284463832694389
	.quad	0x3fa0d9e21b5c37b0              # double 0.032912317123290236
	.quad	0x3fda1d00c50036d0              # double 0.40802020300257613
	.quad	0x3fe36197532434f6              # double 0.60566297758637577
	.quad	0x3fdaf93a920173b4              # double 0.421461718162216
	.quad	0x3fe6f23123d48dab              # double 0.71706444738486164
	.quad	0x3fd40eaf053c61aa              # double 0.31339622031512226
	.quad	0x3fe96ec7c253a79a              # double 0.79477298693130938
	.quad	0x3fdbc018a314aab6              # double 0.43359962392666362
	.quad	0x3fee75d930ddfc81              # double 0.95188579124796047
	.quad	0x3fe5160a679e8a1c              # double 0.65894050825255901
	.quad	0x3fe89df967c77133              # double 0.76928396481847583
	.quad	0x3fdea9f7594a8298              # double 0.47912391395406351
	.quad	0x3feebc4adcf9b2c0              # double 0.96048491629843368
	.quad	0x3fcd4bf2c1dec5b0              # double 0.22888025728529504
	.quad	0x3fe42d31ca57dd8c              # double 0.63051690597687715
	.quad	0x3fe21de3fc70904b              # double 0.56614875130299802
	.quad	0x3fb0c1a229942b88              # double 0.065454611922332373
	.quad	0x3fe2871717b6f8ed              # double 0.57899050361427629
	.quad	0x3fef1490aab4695e              # double 0.97126038876312371
	.quad	0x3fe9b2639efba05e              # double 0.80302601863241896
	.quad	0x3fa9bd67c812e9a0              # double 0.050273173497277002
	.quad	0x3fd1f93b11327566              # double 0.28083683661846803
	.quad	0x3fe06aa788f2a841              # double 0.51301934001572402
	.quad	0x3fde2e0e3015d352              # double 0.4715609998304916
	.quad	0x3fcefaf1ef9c9440              # double 0.24203323554789513
	.quad	0x3fd08a7ab23939da              # double 0.25845210461275558
	.quad	0x3fe213a5c07163e4              # double 0.56489837252149444
	.quad	0x3fd1cb31e28c3c18              # double 0.27802703021819886
	.quad	0x3fa0c55e8c4e45a0              # double 0.032755808474699721
	.quad	0x3fe14185ad4e4675              # double 0.53924831246167904
	.quad	0x3fe2ae0e78ae159c              # double 0.58374713487926355
	.quad	0x3fef4bac36b4a374              # double 0.97798739132586698
	.quad	0x3fe73eb4f12496f1              # double 0.72640463922718201
	.quad	0x3fe067c9a4fc603d              # double 0.51266939376637988
	.quad	0x3fc7572f5ad20af8              # double 0.18234817442506546
	.quad	0x3fe59d39919c2e4f              # double 0.67544249000042977
	.quad	0x3feeeddead60cee3              # double 0.96653684485360391
	.quad	0x3fb46542c89a1a08              # double 0.079670118308151072
	.quad	0x3fe692c9529e7781              # double 0.70541826378369887
	.quad	0x3febc02519553770              # double 0.86720519016101427
	.quad	0x3feaed4049592ebc              # double 0.84146131826260939
	.quad	0x3fbf67fc0d6b32b8              # double 0.12268042876821539
	.quad	0x3fdcfc39be585e94              # double 0.45289462650678414
	.quad	0x3fbf0e648eb02260              # double 0.12131336673349713
	.quad	0x3fcb324926f8942c              # double 0.21247209933167832
	.quad	0x3fc3acb068da2eec              # double 0.15370755309810791
	.quad	0x3fea4fe5632d45a0              # double 0.82225293512799524
	.quad	0x3fe53fb4a0236b1c              # double 0.66402655865690319
	.quad	0x3feceb46112b565b              # double 0.9037199340188623
	.quad	0x3fef37ce9c34864f              # double 0.97556238659690019
	.quad	0x3fb2d1668749de68              # double 0.073507698087149742
	.quad	0x3fc1e9a1eaeee170              # double 0.13994239779800521
	.quad	0x3fd68c5059521282              # double 0.35231407854761454
	.quad	0x3fdfe6c42b517ed6              # double 0.49845985632235335
	.quad	0x3fe6fcec5d2d72d0              # double 0.71837442587601608
	.quad	0x3fa255db9e23ded0              # double 0.035811293653691956
	.quad	0x3fe5aa9774f91b4f              # double 0.67707417341521559
	.quad	0x3feab5b346786c29              # double 0.83468021167516782
	.quad	0x3fc0641f1eae7d7c              # double 0.12805546758771047
	.quad	0x3faa35e1d8a35bc0              # double 0.051192338652689795
	.quad	0x3fe0a9854ce26230              # double 0.52069344536272943
	.quad	0x3feb4a842cab5bd3              # double 0.85284622883306793
	.quad	0x3fd964e2088c0818              # double 0.3967824061838896
	.quad	0x3fe533f0b2faafe1              # double 0.6625903602302935
	.quad	0x3fe2768877207334              # double 0.5769693686193933
	.quad	0x3fdb2a429be1f482              # double 0.42445435736573967
	.quad	0x3fe92e9a049bbba6              # double 0.7869386758810506
	.quad	0x3febc311b3156373              # double 0.86756215073829279
	.quad	0x3fd512d9be5fccaa              # double 0.32927554694397065
	.quad	0x3fcef1699bcd6d2c              # double 0.24174232585469591
	.quad	0x3fc851b5ef6f76a8              # double 0.18999361220533229
	.quad	0x3fd5f5de3b086600              # double 0.34313159718439579
	.quad	0x3fdadb05c842f3b4              # double 0.41961807781973026
	.quad	0x3fdd48785511dab4              # double 0.45754822070686463
	.quad	0x3fe9d26029a88afa              # double 0.80693061958694945
	.quad	0x3fe26b1dc415ed85              # double 0.57557571695308296
	.quad	0x3fe3ba2e0a28f230              # double 0.61647703155865052
	.quad	0x3fe204e4467ff5e2              # double 0.56309713143826579
	.quad	0x3fdea872508a91fc              # double 0.47903116097793919
	.quad	0x3fdc104556d6b2c2              # double 0.43849309425676719
	.quad	0x3fd762ca5298c81c              # double 0.36540468278974614
	.quad	0x3fd90bb5b1799fc8              # double 0.39133970576812915
	.quad	0x3f9d2ac841ce17a0              # double 0.028483513847752939
	.quad	0x3fef19c2b7222ed3              # double 0.97189460533396709
	.quad	0x3fd25ed90d9e9c2c              # double 0.2870390542033785
	.quad	0x3fecc41e62464a9e              # double 0.8989402694154085
	.quad	0x3fe81c59d1fe4dbd              # double 0.75346079840021896
	.quad	0x3fce205d1d23d430              # double 0.23536266253327787
	.quad	0x3fd8119546f0bb4c              # double 0.37607318809289292
	.quad	0x3fe6089ccc0abc44              # double 0.68855132915440054
	.quad	0x3fb010ba6f1a1a98              # double 0.06275525295687101
	.quad	0x3fd3e785f26eab38              # double 0.3110060565474444
	.quad	0x3fc935b9ffa697dc              # double 0.19695210440585142
	.quad	0x3fe669b7d77a61c7              # double 0.70040504537160408
	.quad	0x3fc2b887124ebf84              # double 0.1462563361542345
	.quad	0x3fe202a749276f79              # double 0.56282390869044641
	.quad	0x3fe2cc77c785ac52              # double 0.58745945901081087
	.quad	0x3fd164a464405494              # double 0.27176770963826269
	.quad	0x3fd4ebc90d348000              # double 0.32689119615133677
	.quad	0x3fd45295dfd42d76              # double 0.31754061563761782
	.quad	0x3fe09e17552af6d0              # double 0.51929823526708141
	.quad	0x3fca6a5e64440180              # double 0.20637111564429844
	.quad	0x3fe05af2f2379e97              # double 0.51110217388209633
	.quad	0x3fe2ac448b7cede5              # double 0.58352877849341367
	.quad	0x3fc8f25cbbfc09dc              # double 0.19489630869800478
	.quad	0x3fe5f3c35387f4cb              # double 0.68600622477210871
	.quad	0x3fc7cf9732e7d8b8              # double 0.18602266297938796
	.quad	0x3feab28eaf2b6d4d              # double 0.83429655278033865
	.quad	0x3fe2f8da90850c89              # double 0.5928776571894484
	.quad	0x3fe9d12ea30dcae3              # double 0.8067849335332905
	.quad	0x3fd19b6a8cb151fc              # double 0.27511085261838253
	.quad	0x3fe198311bef12c8              # double 0.54982810455165865
	.quad	0x3facbc06f158c960              # double 0.056122033082277367
	.quad	0x3fad983ee2487870              # double 0.057802167055556519
	.quad	0x3fe19555f7e1dd20              # double 0.54947946943767434
	.quad	0x3fe7ea0a387945d8              # double 0.74731932668708634
	.quad	0x3fee2a0d02a71ec5              # double 0.94263315694930638
	.quad	0x3fa8df30ca4f82e0              # double 0.04857780904399589
	.quad	0x3fe930f9a8bc62af              # double 0.78722842174746244
	.quad	0x3fd1a47626eeaedc              # double 0.27566293527591568
	.quad	0x3fc63adb3992c9c4              # double 0.17367115317536108
	.quad	0x3fe0c46e6b84296c              # double 0.523978433602037
	.quad	0x3fee55e25278e79f              # double 0.94798389537685412
	.quad	0x3fdf6ed5b904047c              # double 0.49113982265414058
	.quad	0x3fa7845ed9ea10b0              # double 0.045931781864994803
	.quad	0x3fcb779869435b04              # double 0.21458726062584088
	.quad	0x3fe57ae1d49e2f1c              # double 0.67125026251730757
	.quad	0x3fb5761149c0d438              # double 0.083832817560350104
	.quad	0x3fcb5c6aaeb3cef4              # double 0.21375783472432597
	.quad	0x3fe9897dce22be13              # double 0.79803362141496093
	.quad	0x3fb15607fd33c320              # double 0.067718982045118725
	.quad	0x3fe5cc5decda3586              # double 0.6811971307776481
	.quad	0x3fe3d5ea48f0c71a              # double 0.61986269231985891
	.quad	0x3fe474caecb5af35              # double 0.63925691826214026
	.quad	0x3fd9c90119845b84              # double 0.40289332858940718
	.quad	0x3fd37a944413c490              # double 0.30435663841405702
	.quad	0x3fd6f8fc1c41617e              # double 0.35894682654681975
	.quad	0x3fe8e80b525917f3              # double 0.77832571109388338
	.quad	0x3fed26b39d5ae01d              # double 0.91097431882281266
	.quad	0x3fc768e40d6fa374              # double 0.18288851409968354
	.quad	0x3fe84c2bdf82695a              # double 0.75929826406653977
	.quad	0x3fe4573c8b42f6a7              # double 0.63564898681189141
	.quad	0x3fd8b9fdfcafd250              # double 0.38635205913968651
	.quad	0x3fe1a277543734f6              # double 0.55108229111070162
	.quad	0x3fd77e5a36282812              # double 0.36708693779712676
	.quad	0x3fdf634682398868              # double 0.49043429105052505
	.quad	0x3fae7674aeee6560              # double 0.059497495988760418
	.quad	0x3fea7cec3145ae94              # double 0.82774934409595113
	.quad	0x3fd123a435b324da              # double 0.26780038112754101
	.quad	0x3fc3fce28d95fa10              # double 0.15615493691798621
	.quad	0x3fd3d2907d307276              # double 0.30972683167946202
	.quad	0x3fdc68a4edcac2be              # double 0.44388697835806201
	.quad	0x3feb33a39fba0fab              # double 0.85005360790863926
	.quad	0x3fc7fc942ea0cb8c              # double 0.18739559437525732
	.quad	0x3fe64e860be0f2cc              # double 0.69708540268001107
	.quad	0x3fe5d8bd77f59260              # double 0.68270753316444299
	.quad	0x3fdf57b276d24f74              # double 0.48972760776199853
	.quad	0x3fdc8871d1f0fdba              # double 0.44582791807257716
	.quad	0x3fed84f89f5e896c              # double 0.92248183371365888
	.quad	0x3fdd4a61d64d402a              # double 0.45766492774874001
	.quad	0x3fde5f62cdda69be              # double 0.47457189658021182
	.quad	0x3fc2d61481b35ae4              # double 0.147158206301092
	.quad	0x3fde445e801c38b2              # double 0.47292292128339419
	.quad	0x3fe18b40cd070bcc              # double 0.54824867290914758
	.quad	0x3fe7e3559d33afbb              # double 0.74650078490730409
	.quad	0x3fc58cbbded91b50              # double 0.16835735684636655
	.quad	0x3fc34af4542af2d8              # double 0.15072492704157159
	.quad	0x3fe544fb37d36a55              # double 0.66467057136044139
	.quad	0x3fd045e9d4c54aea              # double 0.2542671754683129
	.quad	0x3fe5a9eea9e658c4              # double 0.67699368651917569
	.quad	0x3fe4acf1a3238fbb              # double 0.64611131537502986
	.quad	0x3fe5fe5dfa4518c0              # double 0.68730067139474471
	.quad	0x3fb0acfce2d204a0              # double 0.065139584899969183
	.quad	0x3fdd9f50c7581cdc              # double 0.46284884898382272
	.quad	0x3fdbda3340a222a8              # double 0.43519288360452402
	.quad	0x3fd442ff4cc78dca              # double 0.3165891885566593
	.quad	0x3fd41a509c523fda              # double 0.31410613313437141
	.quad	0x3fd7a39e028cdf8c              # double 0.36936140297938702
	.quad	0x3febba580d14a471              # double 0.86649706415950167
	.quad	0x3fe120ac9cddf4ac              # double 0.53523855817879484
	.quad	0x3fe9fe0e5eaa8503              # double 0.81226271142455209
	.quad	0x3fd89bc3a676dc26              # double 0.38450709587363219
	.quad	0x3fcc88fe1ef6eca8              # double 0.22293068420353745
	.quad	0x3fa24a40b7321430              # double 0.035722753870722435
	.quad	0x3fe4d97ac1f0e7fd              # double 0.65154779318913791
	.quad	0x3fe488944b4d7d40              # double 0.64167227466160881
	.quad	0x3fd7c86244e023da              # double 0.37160546041610376
	.quad	0x3fe018b9778e8563              # double 0.5030181250660174
	.quad	0x3fe84ab1cfe7ea26              # double 0.75911799055694895
	.quad	0x3fe3179360439094              # double 0.5966278915552885
	.quad	0x3fef979a8c66aa60              # double 0.98725631162717419
	.quad	0x3fe2bb4cea6443dc              # double 0.5853638246500128
	.quad	0x3fb0089323d809e8              # double 0.06263084054084056
	.quad	0x3fe958c6b047bd8e              # double 0.79208692960485094
	.quad	0x3fbf9906acb6b5b8              # double 0.12342874256747549
	.quad	0x3fd53c5e6adf5ce4              # double 0.33180962025421779
	.quad	0x3fb1ed7f830de7c0              # double 0.070030183311160066
	.quad	0x3f9fb6768f091fe0              # double 0.030969479065134808
	.quad	0x3feeb4ee946d760d              # double 0.95958641996156901
	.quad	0x3feb285460cb3562              # double 0.84867304711376002
	.quad	0x3fd4602c7a750ff0              # double 0.31836997946470458
	.quad	0x3fc421318b37e2c4              # double 0.15726298616188761
	.quad	0x3f9ed784d67c8120              # double 0.03011901435013542
	.quad	0x3fed0e4756ab6f06              # double 0.90799300124805948
	.quad	0x3fdccbab801c106e              # double 0.4499310256071628
	.quad	0x3fe7c1c49857582c              # double 0.7424033141530848
	.quad	0x3fde3106a3e4d542              # double 0.47174230580579402
	.quad	0x3fe9ff5334e14c86              # double 0.81241760566844401
	.quad	0x3fe82cac2f797de3              # double 0.75545319816950174
	.quad	0x3fd1e716444b4e02              # double 0.27972942990638228
	.quad	0x3fe9f5ac69a8fa02              # double 0.81123943936091814
	.quad	0x3fb4ce46fd15f9d8              # double 0.081272541798149134
	.quad	0x3fb066e0a83a0288              # double 0.064069787093112507
	.quad	0x3fdcb56a4d10218c              # double 0.4485727074211574
	.quad	0x3fe8f1e925e2f8fd              # double 0.77953011893967494
	.quad	0x3feb57d7db08f1da              # double 0.85447304516088285
	.quad	0x3fe718feee3bc21e              # double 0.72180124788252775
	.quad	0x3fac9a5c85a44b80              # double 0.055865184129422651
	.quad	0x3fe705c15a6d66c1              # double 0.71945254956809646
	.quad	0x3fe6012eb99a4f52              # double 0.68764435053388184
	.quad	0x3fce7622dc81df28              # double 0.23798023001631319
	.quad	0x3fc7b09d9b0c437c              # double 0.18507738180826638
	.quad	0x3fbb01d21c2b6c00              # double 0.10549653232321532
	.quad	0x3fdeea98febd2a56              # double 0.48306870343063701
	.quad	0x3fc16149646b26f4              # double 0.13578145411729958
	.quad	0x3fd29fa00630be34              # double 0.29099274258166763
	.quad	0x3fdfac27b080d98a              # double 0.4948825095811108
	.quad	0x3fece44ea1735e25              # double 0.90286952527361974
	.quad	0x3febc2df930a174d              # double 0.86753824919353806
	.quad	0x3fe764a7603ab222              # double 0.73103684229642263
	.quad	0x3fc705422fd12460              # double 0.1798479779702431
	.quad	0x3fd355a31c9c0cee              # double 0.30210187715438408
	.quad	0x3fe3e2eee76efd92              # double 0.62145180894724406
	.quad	0x3fe9194237a78672              # double 0.7843333327293307
	.quad	0x3fe9b710aaf4e8e1              # double 0.80359681501365909
	.quad	0x3fe15695fa2d7331              # double 0.5418195616035516
	.quad	0x3fd5f0e2ac567c0e              # double 0.34282748060098889
	.quad	0x3fe95833641010ce              # double 0.79201669257647622
	.quad	0x3fed5471a114a3b4              # double 0.91655808888491785
	.quad	0x3fb19b0f93a77658              # double 0.068772290752769805
	.quad	0x3fc5a72292c898a8              # double 0.16916305701415024
	.quad	0x3fdd672e78f5f666              # double 0.45942270100190397
	.quad	0x3feed7143f515285              # double 0.96375477186900637
	.quad	0x3fed6184d48b8536              # double 0.91815415871329864
	.quad	0x3fe711f86d497134              # double 0.72094365449041797
	.quad	0x3feb9a32c083b667              # double 0.86257302856911344
	.quad	0x3fd3ae77edfdd29e              # double 0.30752371064526496
	.quad	0x3fba54347c5555f8              # double 0.10284736667139061
	.quad	0x3fef0b4a256b5f39              # double 0.9701281290863114
	.quad	0x3fdb418f389efdfe              # double 0.4258764317455358
	.quad	0x3fe96d52a111fe76              # double 0.79459506472626518
	.quad	0x3fdb20c9933df52c              # double 0.42387618426421869
	.quad	0x3fd2dc24129838fe              # double 0.29468633476143669
	.quad	0x3fcc47544e01130c              # double 0.220926797950732
	.quad	0x3fce4cbc11a0bc48              # double 0.23671675549255355
	.quad	0x3f959a62d2fe3000              # double 0.021096748474107585
	.quad	0x3fe80386db8dbbab              # double 0.75043051606723077
	.quad	0x3fc22fb487de1c64              # double 0.1420808471122853
	.quad	0x3fe9fdd582f3ef54              # double 0.81223559929592648
	.quad	0x3fdcd33ee1e0af22              # double 0.45039341028562963
	.quad	0x3fe2dbfd6c2b66a5              # double 0.58935423971998502
	.quad	0x3fe960132563fe05              # double 0.79297787955141585
	.quad	0x3fed1f615e1b9296              # double 0.91008060818110681
	.quad	0x3fe9eecac90a7064              # double 0.81039942994858593
	.quad	0x3fd5fd3ffeebbf0e              # double 0.34358215231530742
	.quad	0x3fd1bba1d6f67c94              # double 0.27707715980972947
	.quad	0x3fc941882924e7b0              # double 0.19731237420074654
	.quad	0x3fb5de6fc6ec7750              # double 0.085425363602977144
	.quad	0x3fdf4fd4eecf34f6              # double 0.48924754449110652
	.quad	0x3fde67fe4abde118              # double 0.47509724902148909
	.quad	0x3fd02cf42430424e              # double 0.2527437547114787
	.quad	0x3fc22864e4391fe4              # double 0.14185773032863758
	.quad	0x3fe5eb773d5d46d2              # double 0.68499338135935717
	.quad	0x3fee29e5db02b308              # double 0.94261448646065648
	.quad	0x3fda00a4a5f71c1c              # double 0.40628925521417769
	.quad	0x3fefd1086a68473f              # double 0.99426670820887597
	.quad	0x3fe0691ecb86b7bc              # double 0.51283206702441175
	.quad	0x3fc9b0e4b7a78118              # double 0.20071085898872165
	.quad	0x3fec8d9b611ee351              # double 0.89228600472334041
	.quad	0x3fe7f8f0d830162a              # double 0.74913828109919689
	.quad	0x3fefdb0460a5f9a1              # double 0.99548548580769502
	.quad	0x3fda3e6d587f60ce              # double 0.41006024973240762
	.quad	0x3feec6ae92c190ff              # double 0.96175316489509998
	.quad	0x3fe774d1ad5d9706              # double 0.73301013813463167
	.quad	0x3fedd87290f3e17e              # double 0.93267181693140322
	.quad	0x3fc80dbb74c37528              # double 0.1879190750250157
	.quad	0x3fe715bcd3a310b1              # double 0.72140351615282416
	.quad	0x3fe31fcc1dfb2626              # double 0.59763151031183237
	.quad	0x3fe85aeb16297105              # double 0.76109842613689749
	.quad	0x3fd5e8189b849314              # double 0.34229102313320081
	.quad	0x3fd84c7cb7168862              # double 0.3796684062928134
	.quad	0x3fbbb2507a682120              # double 0.10818961132475069
	.quad	0x3fde9a670a34eacc              # double 0.47817398068188477
	.quad	0x3fda15d3b64d42e6              # double 0.40758221438322406
	.quad	0x3fe68fe4ad5d69f6              # double 0.70506509647685678
	.quad	0x3fc8cf7d7f8ed63c              # double 0.19383209923187106
	.quad	0x3fe8d6ae62ccde54              # double 0.77620620057036626
	.quad	0x3fa1141c20798710              # double 0.033356551136206503
	.quad	0x3fa785d8f753db60              # double 0.045943050567010202
	.quad	0x3fdc09242d2f2e62              # double 0.43805794155625766
	.quad	0x3f92be46d929c480              # double 0.018303973202311585
	.quad	0x3fae73e2e133b250              # double 0.059477891912909642
	.quad	0x3fe45fe001eb7863              # double 0.63670349478685428
	.quad	0x3fe17ea709a298e7              # double 0.54671050912727714
	.quad	0x3fb1e14b39aac670              # double 0.069843961314086433
	.quad	0x3fee1a498782aad7              # double 0.94070888964537402
	.quad	0x3fe9c26171cbedf6              # double 0.80497810579203022
	.quad	0x3fc4b036d017aec0              # double 0.16162762795226193
	.quad	0x3fed33ca838ba23e              # double 0.91257215206594089
	.quad	0x3fdd3af34de3ca86              # double 0.45672304731775915
	.quad	0x3fc26b1df2f9296c              # double 0.14389395107202618
	.quad	0x3fcc7cda4a43b890              # double 0.22256020189474102
	.quad	0x3fd8cb9980ebfedc              # double 0.38742673482918888
	.quad	0x3fefeec35845f37c              # double 0.99789588204258405
	.quad	0x3fda34bf77f1f796              # double 0.40946947778126608
	.quad	0x3fec6bffedc2ef09              # double 0.88818355977807173
	.quad	0x3fee321fc7d14af3              # double 0.94361866976609432
	.quad	0x3fe23523a18fd136              # double 0.56898671679531421
	.quad	0x3fd0df1b05c40b64              # double 0.26361728251520433
	.quad	0x3f9151a219711580              # double 0.016912968447532872
	.quad	0x3fa91cc7987a7bd0              # double 0.049047696459858181
	.quad	0x3fec92d0bbafa65d              # double 0.89292179734657007
	.quad	0x3fcf4c2cd2ad503c              # double 0.24451217925036584
	.quad	0x3fd2061d4057511c              # double 0.28162318499859551
	.quad	0x3feb00f7d5c89f0a              # double 0.84386817698120464
	.quad	0x3fe5a05d0766b894              # double 0.67582560964162264
	.quad	0x3fdedb5d470c35a2              # double 0.48213893831492716
	.quad	0x3fea2eefcb5e5aff              # double 0.81822957725930212
	.quad	0x3fec1c19558be2da              # double 0.87843004902159838
	.quad	0x3fe6654d6b6094ea              # double 0.69986601802943693
	.quad	0x3feb9a722fbee453              # double 0.86260327649427848
	.quad	0x3fc79464ef9d477c              # double 0.18421613407059201
	.quad	0x3fcc3edf5efe1548              # double 0.22066871774965535
	.quad	0x3f99078f3d166d40              # double 0.024442899802676665
	.quad	0x3fd00455b832a1de              # double 0.25026457775177657
	.quad	0x3fc89d0de632ac38              # double 0.1922929166806584
	.quad	0x3fec0d663b36621c              # double 0.87663566174439067
	.quad	0x3fc560e2a5410d60              # double 0.16701920575188023
	.quad	0x3fe76cdaf5ca73c6              # double 0.73203800207158376
	.quad	0x3fef97d46424be06              # double 0.98728389319688925
	.quad	0x3fdbcfdaf52ec776              # double 0.43456148093820646
	.quad	0x3fce4362442c6d04              # double 0.23643139199052865
	.quad	0x3fee0c23a27f7c84              # double 0.93898183572663684
	.quad	0x3fdce3c270fdb080              # double 0.45140133890414091
	.quad	0x3fd5fea4daad01a8              # double 0.34366723399218779
	.quad	0x3fe495cd27f26413              # double 0.64328630258671848
	.quad	0x3fc7d0ffd9d316a0              # double 0.18606565605130232
	.quad	0x3fc38ed9f9f5f0d4              # double 0.15279698090660665
	.quad	0x3fcf39032c3699bc              # double 0.24392738016940807
	.quad	0x3fe00a9bdb8dc776              # double 0.50129502183538821
	.quad	0x3fe0511ec3335d85              # double 0.50990236401678202
	.quad	0x3f9b623c34d76b00              # double 0.026741924977481624
	.quad	0x3fd68171fb6795ee              # double 0.35165071059449715
	.quad	0x3fd73d0324c460a6              # double 0.36309889402901729
	.quad	0x3fd7fc1ebd8840c2              # double 0.37476318844802503
	.quad	0x3feab4d73912365f              # double 0.83457528254229973
	.quad	0x3fdac62c968ffec8              # double 0.41834559157721829
	.quad	0x3fcd9c5a8f71f1a0              # double 0.23133403782038631
	.quad	0x3fed19dbd2cd005f              # double 0.90940657779720968
	.quad	0x3fcff5362439e884              # double 0.2496707608114016
	.quad	0x3fef25c8977e9fd1              # double 0.97336225117487107
	.quad	0x3fe17f11a40ae01b              # double 0.54676134147212296
	.quad	0x3fe6cd5b7c9efccd              # double 0.71256803836868132
	.quad	0x3fd2c0efb9866d6a              # double 0.2930259048241256
	.quad	0x3fd33b2aae00b050              # double 0.3004862498517058
	.quad	0x3fe63a5234cc51b3              # double 0.6946192771161378
	.quad	0x3fee7f8a24bc6d2a              # double 0.95306880164154006
	.quad	0x3fe5b158b0988c3b              # double 0.67789873591789929
	.quad	0x3fdc85576f884792              # double 0.44563852207021981
	.quad	0x3fe360501acfbf91              # double 0.605506946912998
	.quad	0x3feedd48962d19dd              # double 0.96451215106281618
	.quad	0x3fbc59d927e8fb10              # double 0.11074597572676859
	.quad	0x3feb4a2e21c85a22              # double 0.85280520055932052
	.quad	0x3fc446c3ff1719f8              # double 0.15840959506586194
	.quad	0x3fc5aa3f8ac192b8              # double 0.1692580630798568
	.quad	0x3fe21f9f8a41e5df              # double 0.56636025432015547
	.quad	0x3febd8b42aa7a19f              # double 0.8702030976392513
	.quad	0x3fd55d4be85f02ac              # double 0.33381936733716588
	.quad	0x3fe74dcb9b87634f              # double 0.72824650170069016
	.quad	0x3fe8ce95e54a34e2              # double 0.77521796019723532
	.quad	0x3feca58527067097              # double 0.89520509359455758
	.quad	0x3fd666a1e83ef534              # double 0.35001418762461189
	.quad	0x3fe792562b14a350              # double 0.73661335386450766
	.quad	0x3fe0f277486c8e73              # double 0.52959789414712899
	.quad	0x3fe40035c6f58307              # double 0.62502564295945795
	.quad	0x3fe6b8150780e36c              # double 0.7099709650566246
	.quad	0x3fc4d0f849e7ebd0              # double 0.16262725456894467
	.quad	0x3fe66b56e2f0b243              # double 0.70060295414220553
	.quad	0x3fba2828597aa630              # double 0.10217525658176707
	.quad	0x3fcede0c069c78ac              # double 0.24115133593381211
	.quad	0x3fe6ec2954c80c74              # double 0.71632830199122433
	.quad	0x3fe0fd21291dd904              # double 0.53089960127434255
	.quad	0x3fe827256e945a4c              # double 0.75477859113272804
	.quad	0x3fe4d0778094bb36              # double 0.65044760812256786
	.quad	0x3fc0267ca82f62ac              # double 0.12617452823794417
	.quad	0x3fddda771ca0077a              # double 0.46645906253262803
	.quad	0x3fc1d233408b4e4c              # double 0.13922730113573534
	.quad	0x3fe3dcc259b2bcd8              # double 0.62069814223459741
	.quad	0x3fdc50c11b740514              # double 0.44242885285355382
	.quad	0x3fe1e2939abd4205              # double 0.55890827391164122
	.quad	0x3fd510600fa90790              # double 0.32912446526835826
	.quad	0x3fd2dd933e6701ca              # double 0.2947738751791148
	.quad	0x3fd46b7ee26124f8              # double 0.31906101329202796
	.quad	0x3fed7f46c56b5c68              # double 0.92178667601082243
	.quad	0x3fcaf4f22e2a26b4              # double 0.21060015920766306
	.quad	0x3feb93f83ab03e9b              # double 0.86181270086850092
	.quad	0x3fe6209c06b10f12              # double 0.6914806490608234
	.quad	0x3fda7ea5fecc45f8              # double 0.4139800060521277
	.quad	0x3feb5045abd1758e              # double 0.85354884680025278
	.quad	0x3fc33402347012ac              # double 0.15002467689932553
	.quad	0x3fe470c388e9a2fb              # double 0.63876511326552021
	.quad	0x3fd24080937587c4              # double 0.28518690491011633
	.quad	0x3feb3ae961ca5101              # double 0.85094136333148651
	.quad	0x3fdcf0ac15e1a066              # double 0.45218946587420417
	.quad	0x3fa7777a5c4463c0              # double 0.045833419573859668
	.quad	0x3fdbbf5c29dfdf40              # double 0.43355468835169475
	.quad	0x3f844c157fbb44c0              # double 0.0099107436757627231
	.quad	0x3fb83ea45f19d468              # double 0.094705842226021297
	.quad	0x3fca4b089c90c664              # double 0.20541484494019635
	.quad	0x3fe60c6ca09444c0              # double 0.68901664126510553
	.quad	0x3fe8a347be3877b9              # double 0.76993167068916712
	.quad	0x3fe95dcdf8608037              # double 0.79270075331806467
	.quad	0x3fd43a1cde8e4342              # double 0.31604692205387519
	.quad	0x3feea2fd16463b6d              # double 0.95739607191522469
	.quad	0x3fefcb1d2b29f99e              # double 0.99354418211423812
	.quad	0x3fe766bb6ad2b0c0              # double 0.73129053939694444
	.quad	0x3fe5f92c2cb22452              # double 0.68666657190000024
	.quad	0x3fecae06dd8ac452              # double 0.89624350805218911
	.quad	0x3fd86e690b3045d8              # double 0.38173891155846951
	.quad	0x3fd733641b6d827a              # double 0.36251166037076354
	.quad	0x3fed767dd2fc31bf              # double 0.92071429451021192
	.quad	0x3febc0101a6e88a0              # double 0.86719517862754358
	.quad	0x3fd0b9b5b055ceb4              # double 0.26133482189400614
	.quad	0x3fc9db21ac5c11ec              # double 0.20199986377714596
	.quad	0x3fe1e0fb8de7a599              # double 0.5587137004451278
	.quad	0x3fa75359ab0577c0              # double 0.045557787062292743
	.quad	0x3fe230b39e688dce              # double 0.56844502390998186
	.quad	0x3fea42ce7160f0f1              # double 0.8206550802638316
	.quad	0x3fc5b68750ce21b8              # double 0.16963283010069374
	.quad	0x3fe091f16ea4fc47              # double 0.51781531915902057
	.quad	0x3fdd416dbaf76f70              # double 0.45711844690753534
	.quad	0x3fef3870e83aee61              # double 0.97563977582417404
	.quad	0x3fe90fa5a1ff4c0a              # double 0.78316003456200289
	.quad	0x3fbb2c99a62e8900              # double 0.10614929492161096
	.quad	0x3fc7122aad119a90              # double 0.18024190378783489
	.quad	0x3fd5909999c48ee6              # double 0.33695068375003101
	.quad	0x3fde92f88085b870              # double 0.47772038031587893
	.quad	0x3fcba6de80fa763c              # double 0.21602994249126251
	.quad	0x3fe836d008ca05fe              # double 0.75669099537498119
	.quad	0x3fe04f48ffdce87a              # double 0.50967836354472174
	.quad	0x3fdf6b2eab931558              # double 0.49091688876463513
	.quad	0x3fa8361b97925130              # double 0.047287809612642895
	.quad	0x3fe987d89c97a528              # double 0.79783278068967878
	.quad	0x3fe3c5e3c4fbdf64              # double 0.61790646050847586
	.quad	0x3fe13f71dce87a03              # double 0.53899472375979973
	.quad	0x3fdfe16944f30024              # double 0.49813300832102159
	.quad	0x3fdbb78d7ae6514c              # double 0.43307816507264785
	.quad	0x3fec8ab322547aba              # double 0.89193112092092197
	.quad	0x3fda90e4892cacd8              # double 0.4150935496897552
	.quad	0x3febcb6a21dcafd2              # double 0.86858088124926724
	.quad	0x3fe0a360ec4df6d3              # double 0.51994367745620662
	.quad	0x3fe148167b6c78ff              # double 0.54004978281207616
	.quad	0x3fecbeff19eb6088              # double 0.89831500112906415
	.quad	0x3fe0f5769426fe40              # double 0.52996376930236266
	.quad	0x3fe08dd969077e5a              # double 0.51731558335809358
	.quad	0x3fe2f89685394761              # double 0.59284521122229361
	.quad	0x3fc86bc2989f2fd0              # double 0.19078857853162257
	.quad	0x3fdaf13edf8cf0dc              # double 0.42097446280582829
	.quad	0x3febeafccd06e014              # double 0.8724349979811472
	.quad	0x3fdcf4a1bc0057f2              # double 0.45243113860612916
	.quad	0x3fde303c2dd28c6c              # double 0.47169403529023302
	.quad	0x3fcee1bd96d0c498              # double 0.24126405586278987
	.quad	0x3fd6ab386cbf9dde              # double 0.35420046443911513
	.quad	0x3fc7eacb416bad94              # double 0.1868528432308777
	.quad	0x3fe1912cc21b2c42              # double 0.54897153769832863
	.quad	0x3fe816a6672c2f26              # double 0.75276489401719426
	.quad	0x3fe1dae857511ab9              # double 0.55797211698594318
	.quad	0x3fe65730d58f5c41              # double 0.69814340315759449
	.quad	0x3fe1925ccd8fdb86              # double 0.54911651753251145
	.quad	0x3fe3926172ef6f72              # double 0.61161873291301405
	.quad	0x3fd4c265322bc528              # double 0.32436494731435284
	.quad	0x3fef0f6af33f6594              # double 0.97063205251031314
	.quad	0x3fee0dbf043d4fbe              # double 0.93917799785639722
	.quad	0x3fd9b47b97e59072              # double 0.4016407950750881
	.quad	0x3fd8ea2a5daa82ca              # double 0.38929232737613673
	.quad	0x3fc5b128872a805c              # double 0.16946894264129042
	.quad	0x3fe8bfea9034a7cd              # double 0.77342727818654
	.quad	0x3fe8ac409121a7d6              # double 0.77102688165654842
	.quad	0x3fe2551310b25de2              # double 0.57288506756861701
	.quad	0x3fbe25f7db1017e0              # double 0.11776684854711972
	.quad	0x3fdb0aaf3b4a03f4              # double 0.42252713003114128
	.quad	0x3fe595a4d7fb4c22              # double 0.67451708015358158
	.quad	0x3fec196aec8e6cf6              # double 0.87810274317180759
	.quad	0x3fcfebbe8d31a318              # double 0.24938184637292049
	.quad	0x3fc4247772f8eff0              # double 0.15736287225615753
	.quad	0x3fe39a5963509075              # double 0.61259145162013218
	.quad	0x3fe2785aa14d51bd              # double 0.57719165329267919
	.quad	0x3feca405a7472d36              # double 0.8950222270154089
	.quad	0x3fed6d3866ccfba0              # double 0.91958255842461156
	.quad	0x3fa770b2dd93f530              # double 0.045781697795954535
	.quad	0x3f984ac7291d5ec0              # double 0.023722755321925915
	.quad	0x3fcac699f15182ac              # double 0.20918583186268813
	.quad	0x3fe64e1401355be1              # double 0.69703102336904632
	.quad	0x3fe4978f17833ab7              # double 0.6435008486967807
	.quad	0x3fbeded71dd2b1b8              # double 0.12058777311421565
	.quad	0x3fe094486360d830              # double 0.51810092363189675
	.quad	0x3fd2a11e99523ee8              # double 0.29108395550518518
	.quad	0x3fd5cf4229023742              # double 0.34077505116225748
	.quad	0x3fc5e2b05133bef4              # double 0.17098049130390047
	.quad	0x3fc02a09c4b5a5d4              # double 0.12628290276488363
	.quad	0x3fd94396505f9042              # double 0.39475019310907922
	.quad	0x3fe9e8cc357d33a3              # double 0.80966768691142865
	.quad	0x3fb910d93655dcc0              # double 0.097913337483862328
	.quad	0x3fc88d459128a708              # double 0.19181127155143707
	.quad	0x3fe5929a0d01d25d              # double 0.67414572277500506
	.quad	0x3fc83f5d33bb6ac0              # double 0.1894337179754384
	.quad	0x3fd5fe028d176d0c              # double 0.34362853792636439
	.quad	0x3fd2bd806e45bfaa              # double 0.29281626480860246
	.quad	0x3fef60edc0512d1f              # double 0.98058211862499777
	.quad	0x3fd673536bafb882              # double 0.35078893200159922
	.quad	0x3fda2f80ae18f508              # double 0.40914933206279658
	.quad	0x3feac30c34fcb2d2              # double 0.8363095316795699
	.quad	0x3f9fc4ec5596c360              # double 0.031024639820035005
	.quad	0x3fdcf3b377bbcabc              # double 0.45237433140497862
	.quad	0x3fd2b76340e1e54a              # double 0.29244309745952946
	.quad	0x3fe354142c01d412              # double 0.60401352496285399
	.quad	0x3fe2b8b8a35c9b90              # double 0.58504897982207815
	.quad	0x3fcafafc181a8d38              # double 0.21078444649638484
	.quad	0x3fb5931cc197b540              # double 0.084276005996533065
	.quad	0x3fa110200c7d1f30              # double 0.033326150440699087
	.quad	0x3fe1998d5fb44513              # double 0.5499941701147314
	.quad	0x3fde8a424612efe4              # double 0.4771886524501936
	.quad	0x3fe2720c1c929f93              # double 0.5764217908917878
	.quad	0x3fedba54d6023b4a              # double 0.92899553106858801
	.quad	0x3fa7d91f63fc0870              # double 0.04657838912500345
	.quad	0x3fe19fbf427cb842              # double 0.55075037942675231
	.quad	0x3fd2be6e5cbda4ea              # double 0.2928729921027996
	.quad	0x3fd38f57cc8738fe              # double 0.3056239602418741
	.quad	0x3fd6cf1d3c083e14              # double 0.35639124739188444
	.quad	0x3fcf571a0776d578              # double 0.24484563221418987
	.quad	0x3fed9bf122e0303e              # double 0.92528588115374766
	.quad	0x3fd1b50e59876bb0              # double 0.27667578452172403
	.quad	0x3fe2b1a7e0cd19f0              # double 0.58418649584274185
	.quad	0x3fae17d51512e030              # double 0.058775576422192777
	.quad	0x3fca4406dec5e0c8              # double 0.20520101430498117
	.quad	0x3fc703754ec1eaa4              # double 0.17979303689556503
	.quad	0x3fddeb2294ccfab4              # double 0.46747650653189088
	.quad	0x3fc25f5409c41420              # double 0.14353418804981377
	.quad	0x3fe63fa1871b0c2c              # double 0.69526745212386265
	.quad	0x3fd32d03c8eaa162              # double 0.29962248440508266
	.quad	0x3fe5b307a49ca6ce              # double 0.67810423041120216
	.quad	0x3feb944ddc0de5e8              # double 0.86185353259423625
	.quad	0x3fe2a5280e6728bc              # double 0.58266070187644159
	.quad	0x3fc326e964263c54              # double 0.14962499036889432
	.quad	0x3fd49d1990029452              # double 0.322088614115562
	.quad	0x3fe8611308655da8              # double 0.76184989585720064
	.quad	0x3fe450eb38cfdb6d              # double 0.63487778755266577
	.quad	0x3fe16b7af89a6186              # double 0.54437016063006705
	.quad	0x3fc5c63cb5e11448              # double 0.17011221772023277
	.quad	0x3fc190e209277568              # double 0.13723397681216487
	.quad	0x3fe4a17b5be8bf51              # double 0.64471214247712727
	.quad	0x3fe08c24b6e47122              # double 0.51710735055124624
	.quad	0x3fea463197b89d38              # double 0.82106856949841411
	.quad	0x3fef7a915a8e2861              # double 0.9837118881853365
	.quad	0x3f85ad72b75b8d00              # double 0.010584732266073704
	.quad	0x3fe66f595c5aa3e5              # double 0.70109241521742816
	.quad	0x3fcc0c5478bd1fa4              # double 0.21912628074119056
	.quad	0x3fe0825140385d32              # double 0.5159078840542064
	.quad	0x3fe9a91fb99c8cc9              # double 0.80189501049280765
	.quad	0x3fe03d54ef9eac00              # double 0.50748678971046957
	.quad	0x3fe141bc21e75ae2              # double 0.53927427884886137
	.quad	0x3fce9f84302358e0              # double 0.23924305296413362
	.quad	0x3fccb8704b74e938              # double 0.22437862095268613
	.quad	0x3fb86aa09e7376e0              # double 0.095377005276044979
	.quad	0x3fe0875fca5d5b8d              # double 0.51652516865111553
	.quad	0x3fe9c5eb7bfef1e9              # double 0.80541013925499982
	.quad	0x3f7eff39d093b200              # double 0.0075676210774244801
	.quad	0x3fec755c1af47a09              # double 0.88932614578863067
	.quad	0x3fdf13fedc0e8468              # double 0.48559543123162152
	.quad	0x3fd736e386155932              # double 0.36272514432984615
	.quad	0x3fe531d5828ef9bf              # double 0.66233325481135086
	.quad	0x3feedd5c29fa4888              # double 0.96452148627055667
	.quad	0x3fd5edc3700981d4              # double 0.34263692799688994
	.quad	0x3fd552fb5c2af6fc              # double 0.33318981171383633
	.quad	0x3fd6c0fb6804eee4              # double 0.35552868993884901
	.quad	0x3fd5588fa3e1d44a              # double 0.33353034023395323
	.quad	0x3fe51c72755bee38              # double 0.65972254678440034
	.quad	0x3fc4ceabaa4e7d7c              # double 0.16255708518745482
	.quad	0x3fd35a6752963366              # double 0.30239279809102582
	.quad	0x3fe73eec40cb00f7              # double 0.72643101363067231
	.quad	0x3fed800e595fe489              # double 0.92188184219334446
	.quad	0x3fe5480e78207cc3              # double 0.66504596197400934
	.quad	0x3fe88165337e3275              # double 0.76579532677858586
	.quad	0x3fda19f974daab34              # double 0.40783535396137727
	.quad	0x3fa9e87547085f80              # double 0.050601639672264831
	.quad	0x3fb4c47c98a4b378              # double 0.081123149172254716
	.quad	0x3fdf6041dc1dc536              # double 0.49025007720691194
	.quad	0x3fe8db4238ebf1cd              # double 0.77676497571479219
	.quad	0x3fec3431c710da22              # double 0.88137139205975168
	.quad	0x3fd77c3a51705efa              # double 0.36695726349851976
	.quad	0x3fcf935f8fa4c844              # double 0.24668497575618364
	.quad	0x3fe7b97bc343d2a7              # double 0.74139202249223934
	.quad	0x3fc2a49245445cf4              # double 0.14564731962375499
	.quad	0x3fb30b425d9890a0              # double 0.074390552378249541
	.quad	0x3feb299acde2a5f3              # double 0.84882869922620185
	.quad	0x3fea0d82bb77e4c4              # double 0.81414925208005017
	.quad	0x3fe644f998aa200d              # double 0.69591979806227899
	.quad	0x3fc64e0428f266a0              # double 0.17425586699828433
	.quad	0x3fe071ce39653356              # double 0.51389228067419412
	.quad	0x3fd2470b6c7fc524              # double 0.28558621974578302
	.quad	0x3fc120639b5e7a2c              # double 0.13380093656901815
	.quad	0x3feadbc467e2fc3b              # double 0.83932705202449343
	.quad	0x3fef891791f2ed02              # double 0.98548487191820322
	.quad	0x3fe65b502b67087c              # double 0.69864662625356244
	.quad	0x3fe1c969bcdd42cd              # double 0.55583655250128461
	.quad	0x3fc4144ac57da6e4              # double 0.15686926501375986
	.quad	0x3fc3a269c6e97a2c              # double 0.15339395725728033
	.quad	0x3fc6045084b878e8              # double 0.17200666885850713
	.quad	0x3fe85555d06be37f              # double 0.7604168959361316
	.quad	0x3fd97eaf34a035b8              # double 0.39835720195045665
	.quad	0x3fe4a8d815bbb72e              # double 0.64561084980753036
	.quad	0x3fe1e00591e04d60              # double 0.55859640590135129
	.quad	0x3fe390435cd4bb1f              # double 0.61136024600077465
	.quad	0x3fe2f4f75e54cda8              # double 0.59240311073374574
	.quad	0x3fe3725afac3bbf6              # double 0.60770939805467949
	.quad	0x3fd1c18bf129b94a              # double 0.27743814993927585
	.quad	0x3fee8adc9d22dbbe              # double 0.95445089998872112
	.quad	0x3fe647114e2882b1              # double 0.69617524400026387
	.quad	0x3fb6c8bf3317ae30              # double 0.089000654195552142
	.quad	0x3fe4a93b8d8cd0a6              # double 0.64565827986236424
	.quad	0x3fe82afc1e3986c4              # double 0.75524717238678151
	.quad	0x3fe0f72c181dfa34              # double 0.53017239294405849
	.quad	0x3fe60aa0b3e0441a              # double 0.68879733211554428
	.quad	0x3fb687621cdc6160              # double 0.08800328449831829
	.quad	0x3fd46c296d9c1ff2              # double 0.31910167411888246
	.quad	0x3fd1a074a20519b8              # double 0.27541843244798825
	.quad	0x3f638c6c62ebac00              # double 0.0023862950250665982
	.quad	0x3fd23b365e228a58              # double 0.28486403649200076
	.quad	0x3fed881fc1d714ec              # double 0.92286670550734362
	.quad	0x3fe230761500e970              # double 0.5684156809068508
	.quad	0x3fef8f96b8d57dba              # double 0.98627792454129026
	.quad	0x3feff02c6b4634ec              # double 0.99806805564881306
	.quad	0x3fe597108a34b141              # double 0.6746905040104495
	.quad	0x3fd0a9bf24ed74d2              # double 0.26036051374633218
	.quad	0x3fde7fa0d817711e              # double 0.47653981306736337
	.quad	0x3fe2deaff7189cee              # double 0.5896835161301206
	.quad	0x3fe94024caeca430              # double 0.78908004411380794
	.quad	0x3fe19639885dd964              # double 0.54958798059560054
	.quad	0x3fd576a87ed26d04              # double 0.33536732087095822
	.quad	0x3fe73b188031d9e1              # double 0.72596383131059039
	.quad	0x3fe23a90c02c7b52              # double 0.56964910062729701
	.quad	0x3fc5dc5013237d28              # double 0.17078591284278244
	.quad	0x3fd92bfd26011816              # double 0.39330986701350079
	.quad	0x3fe9916580afe934              # double 0.79899859556397823
	.quad	0x3fcf2bccbd893dc4              # double 0.24352416281406708
	.quad	0x3fe70b1e61018a64              # double 0.72010725924003482
	.quad	0x3fec4237ad32277f              # double 0.88308318927123242
	.quad	0x3fc25bc487364f24              # double 0.1434255275931885
	.quad	0x3fd910831843ef1e              # double 0.39163281793274674
	.quad	0x3fe2babbb2e2f070              # double 0.58529457987562061
	.quad	0x3fdf71c3aba65eb4              # double 0.49131862414058536
	.quad	0x3fe1923889d3b16f              # double 0.54909922522851484
	.quad	0x3fda482c627e9206              # double 0.41065511339755323
	.quad	0x3fdc0a5a5bdf35e4              # double 0.43813189479700854
	.quad	0x3fe560e0c95aec21              # double 0.66807593657665987
	.quad	0x3fb9177dad681f08              # double 0.09801469310343347
	.quad	0x3fe6f9b8f47912c8              # double 0.71798370121595045
	.quad	0x3fdf59040e29463a              # double 0.48980809576923756
	.quad	0x3fe96b4277540514              # double 0.79434321695603893
	.quad	0x3fc5ffa8131a7d2c              # double 0.17186451847826711
	.quad	0x3fdaa4d9474834b4              # double 0.41631156884325127
	.quad	0x3fd5e24748b5e3b2              # double 0.34193594074855149
	.quad	0x3fd5d4bbd5caa0a0              # double 0.34110923650815472
	.quad	0x3fd6989f89f6d5de              # double 0.35306538079325189
	.quad	0x3fe17911aea84f47              # double 0.5460289393690595
	.quad	0x3fc6649a01c4ca28              # double 0.17494511686671044
	.quad	0x3fdfde28e1c9e22e              # double 0.4979345517126913
	.quad	0x3fe3bbfa4f25c3ec              # double 0.61669650515079644
	.quad	0x3fd8a06d54fd9bd4              # double 0.38479169177884143
	.quad	0x3fd57fb1ee6e644c              # double 0.33591888698862671
	.quad	0x3fc2bfcb43df907c              # double 0.14647808851362132
	.quad	0x3f81f57959aaa140              # double 0.0087689857949305727
	.quad	0x3fdb68e2c45f8a3e              # double 0.4282767217356741
	.quad	0x3fd4b92e8e8a4984              # double 0.32380260391178006
	.quad	0x3fe08fb8be44be44              # double 0.51754414712736052
	.quad	0x3fe3d200b890f166              # double 0.61938510940630631
	.quad	0x3fe17d1d917d9b17              # double 0.54652288833753715
	.quad	0x3fe7a9b0be623bfa              # double 0.73946416076967059
	.quad	0x3fd3d692d71fde88              # double 0.30997153290034207
	.quad	0x3fed115b1c92680c              # double 0.90836864071320766
	.quad	0x3fbc3428afe3aeb8              # double 0.11017088216947968
	.quad	0x3fc2e6f388098d5c              # double 0.14767307417342124
	.quad	0x3fd50dbcb1b88bca              # double 0.32896344523959142
	.quad	0x3fac7d8c107e8510              # double 0.055645348561720209
	.quad	0x3fdd579f17e99db2              # double 0.45847298941813641
	.quad	0x3fc858ee684dff28              # double 0.19021396725656214
	.quad	0x3fe7c2124fd77fcc              # double 0.74244037241077754
	.quad	0x3fdc6f49af82b7b8              # double 0.44429247035702302
	.quad	0x3fd29923e2c67e82              # double 0.29059693475753801
	.quad	0x3fb277bcb1c0e9b8              # double 0.072139542958132519
	.quad	0x3fdc20a3d0f87066              # double 0.4394921818473051
	.quad	0x3fed6a7a3c3c5eca              # double 0.91924773945626126
	.quad	0x3fe0158c2c2fac88              # double 0.50263031606790864
	.quad	0x3fe192c1f04d1565              # double 0.54916474279222582
	.quad	0x3fd0b052d3b87990              # double 0.26076193500366518
	.quad	0x3fedbb7142323f0d              # double 0.92913115433654669
	.quad	0x3f83e5f15b109040              # double 0.0097159248271695419
	.quad	0x3fe1e6e7cfdebfe8              # double 0.55943670844680771
	.quad	0x3fe3ad67ae47a72e              # double 0.61491760291139541
	.quad	0x3fe42dd106a9b108              # double 0.63059283543910372
	.quad	0x3fd84216869f06da              # double 0.37903369089700123
	.quad	0x3fc12f94a4137f0c              # double 0.13426454555064316
	.quad	0x3fe818b2fdfb730e              # double 0.75301503759291832
	.quad	0x3fb639ccd1ef1d98              # double 0.086819459203175575
	.quad	0x3fe415e0a6064708              # double 0.62767059733070685
	.quad	0x3fe8d7da68ac35ae              # double 0.77634926265607418
	.quad	0x3feeacece51c7913              # double 0.95860905407224306
	.quad	0x3fe75bfa4c9c991c              # double 0.72997775042748314
	.quad	0x3fd546b209cca6e0              # double 0.33243990857100236
	.quad	0x3fe490bc74795d8c              # double 0.64266798733562913
	.quad	0x3fefcbcc3da512cc              # double 0.99362766304019478
	.quad	0x3fe0163221c99ebe              # double 0.50270945166717929
	.quad	0x3fd5436cd68cdfbc              # double 0.33224030449082043
	.quad	0x3fcd2b26710ffd98              # double 0.22787933846119013
	.quad	0x3fe741a9e974debf              # double 0.72676559063889801
	.quad	0x3fed61f771390ced              # double 0.91820880998457499
	.quad	0x3fc62de2d2af6524              # double 0.1732753304229756
	.quad	0x3fda5f423fa5231a              # double 0.41206413474405823
	.quad	0x3fef88c9b87950a2              # double 0.98544775037818888
	.quad	0x3fc4e8cdf835e254              # double 0.16335463161137176
	.quad	0x3fb84490d2b56d78              # double 0.094796229784540276
	.quad	0x3fde4759b3a4a562              # double 0.47310488265300965
	.quad	0x3fa6f562cb56b770              # double 0.044840895959494698
	.quad	0x3fbba718229e8b70              # double 0.10801840634534954
	.quad	0x3fd114b9ab0c82a4              # double 0.26688996986380631
	.quad	0x3fe63f3112e3a930              # double 0.69521382989231562
	.quad	0x3fcbce445242c2d8              # double 0.21723226563110276
	.quad	0x3fc59f95f1a4c528              # double 0.16893266963010345
	.quad	0x3fc7a962991d8514              # double 0.1848567245133742
	.quad	0x3fe226947016c0db              # double 0.56720945255622313
	.quad	0x3fd83eed44c74e30              # double 0.37884074894575104
	.quad	0x3fea8cec9f098e22              # double 0.82970267354943794
	.quad	0x3fc656c0511ea0bc              # double 0.17452243767661979
	.quad	0x3faba9f8c5129e90              # double 0.054031156594018914
	.quad	0x3fecd077a6eb1495              # double 0.90044767953135596
	.quad	0x3fd37e5160dae5c4              # double 0.30458483179571894
	.quad	0x3fd23ea6e32f3bac              # double 0.28507396875368829
	.quad	0x3fe5f31c5d05b167              # double 0.68592661064535043
	.quad	0x3fdcb237051cc3c2              # double 0.44837737559560875
	.quad	0x3fe2ed9ac22dfff9              # double 0.59150445867271551
	.quad	0x3fe4546625d24b08              # double 0.63530261408809086
	.quad	0x3feadfe96e4c5aa2              # double 0.83983298819187646
	.quad	0x3fd7899c1370777a              # double 0.36777402780887025
	.quad	0x3fef3f1956ac15a8              # double 0.97645251205601812
	.quad	0x3fe156ccf965b1f2              # double 0.54184578619384483
	.quad	0x3fe00f4615210d4e              # double 0.5018644726446071
	.quad	0x3fe1137dde8aa1c1              # double 0.53362935509817799
	.quad	0x3fd22fd7e2e003ac              # double 0.28417012363211813
	.quad	0x3fe1ec752e3c3a50              # double 0.56011446981740143
	.quad	0x3febcd90b76ec60e              # double 0.86884342028332795
	.quad	0x3fba79d5da716ca8              # double 0.1034215601261389
	.quad	0x3fc8f2f2964c75e8              # double 0.19491417254259535
	.quad	0x3fa7594f477b2ad0              # double 0.045603253818247702
	.quad	0x3fe1a3d0abba553b              # double 0.55124696293447728
	.quad	0x3fe18c3bb27d71e1              # double 0.54836830960590188
	.quad	0x3feff004c3ae6403              # double 0.99804914683329604
	.quad	0x3fe2fbec3e6f40b6              # double 0.59325229830030568
	.quad	0x3feb1b40019cc5e4              # double 0.84707641901894392
	.quad	0x3fefab19c3453874              # double 0.98963630808590474
	.quad	0x3fe11eaddd43cd71              # double 0.53499501434127528
	.quad	0x3fe5b49863b6c360              # double 0.67829532122969383
	.quad	0x3fef024bbaad1a96              # double 0.96903025112335928
	.quad	0x3feb5fe565500c86              # double 0.85545606410632113
	.quad	0x3fe65d2f5e10f920              # double 0.69887512562107545
	.quad	0x3f7c1d97c3528000              # double 0.0068641594163239006
	.quad	0x3f9d619eb4d66ac0              # double 0.028692703044365997
	.quad	0x3febe5cdd74b7df4              # double 0.87180225419791534
	.quad	0x3fc1488d7fb4567c              # double 0.13502663360184275
	.quad	0x3fdfac0d53719428              # double 0.49487622402949905
	.quad	0x3fd73951ad4d7202              # double 0.36287347721170715
	.quad	0x3fe27a1969b686b4              # double 0.57740469595974853
	.quad	0x3fc0a02e52c6459c              # double 0.1298883346721994
	.quad	0x3fdc44777e58a89a              # double 0.44167888010509559
	.quad	0x3fe6fb477deed569              # double 0.71817373844411947
	.quad	0x3feeea0b62e832d5              # double 0.96606988256243175
	.quad	0x3feacce3819d0c31              # double 0.83751082720880821
	.quad	0x3f7e0cb4cbfc8980              # double 0.0073363363624444622
	.quad	0x3fe2e75c3b7286e1              # double 0.59074222193541115
	.quad	0x3fe84b24f8ef9b14              # double 0.75917290325455377
	.quad	0x3fe2f95e3be83915              # double 0.59294044209107943
	.quad	0x3fea9f54e32981f5              # double 0.8319496571312458
	.quad	0x3feaa6a6ad2981eb              # double 0.83284314938287929
	.quad	0x3fede7c0be51d41d              # double 0.93454014941983454
	.quad	0x3fe198dec58a9ae2              # double 0.54991091329869968
	.quad	0x3f7251b7fbabc400              # double 0.0044724642600479925
	.quad	0x3fd11db8eeedaa78              # double 0.26743911106920093
	.quad	0x3fd966e7adc577e4              # double 0.39690582246646344
	.quad	0x3fe80048a650983c              # double 0.75003464206088876
	.quad	0x3fcba25e86456a40              # double 0.21589261585434549
	.quad	0x3fd162cac3a86aa2              # double 0.27165478808607635
	.quad	0x3fd8a60f80ef2dae              # double 0.38513553229560216
	.quad	0x3fb2bdf15931cc18              # double 0.073210796619420981
	.quad	0x3fe0a758683aa80c              # double 0.52042789799929912
	.quad	0x3fec6df9a0d804d4              # double 0.88842469610986052
	.quad	0x3fe67ace0e4426f9              # double 0.70249083315249472
	.quad	0x3fdfc5d22d6483b4              # double 0.49644903595804668
	.quad	0x3fd843c1dda9131a              # double 0.37913557669189546
	.quad	0x3fdaaf8d90599b38              # double 0.41696490379983997
	.quad	0x3fe594db50dea8f8              # double 0.67442098421932339
	.quad	0x3feb19211519c3f1              # double 0.84681753274173677
	.quad	0x3fe3cb6d5e4c3d5d              # double 0.618582424331105
	.quad	0x3fd700264d927044              # double 0.3593841321505844
	.quad	0x3fec9de7d053080f              # double 0.89427557648036948
	.quad	0x3fcd7a8dc907300c              # double 0.23030254665206973
	.quad	0x3fe5ba3d2d69e242              # double 0.67898424978108829
	.quad	0x3feda469298223a2              # double 0.92631967646694968
	.quad	0x3fe8c9c4f8a257bc              # double 0.77463005601270351
	.quad	0x3fd343e08125629c              # double 0.30101788150708741
	.quad	0x3fc435a9ced1f7c4              # double 0.15788767431871353
	.quad	0x3fd9709179727f0c              # double 0.39749562130053628
	.quad	0x3fef40451bfdedad              # double 0.97659545390290747
	.quad	0x3fc15a56603facec              # double 0.13556937884945996
	.quad	0x3fc59a8a8ce45828              # double 0.1687787235211442
	.quad	0x3fea07d3f1a0a6fa              # double 0.8134555548942608
	.quad	0x3fd29c2f7ca9b8d4              # double 0.29078280614966201
	.quad	0x3fd42af3cb0d659a              # double 0.3151216013844419
	.quad	0x3fe43ad9f57acae6              # double 0.63218400902982519
	.quad	0x3f47458253c7e400              # double 7.1019042621778272E-4
	.quad	0x3fe4d0085e5576b9              # double 0.65039461540774035
	.quad	0x3fa4d058d0c57cc0              # double 0.040652060971063886
	.quad	0x3fe5ca23ea433747              # double 0.68092532877356227
	.quad	0x3fe23a0a24d7fbf5              # double 0.56958491512329934
	.quad	0x3fd6c6490ce48e7c              # double 0.3558523775011293
	.quad	0x3fe32fb2600808bf              # double 0.59957236057405072
	.quad	0x3fe6fd2e7e77ca4a              # double 0.7184059591366545
	.quad	0x3fdc91bde3677e74              # double 0.44639537055443346
	.quad	0x3fec470d2125291c              # double 0.88367325280822539
	.quad	0x3fe5c6741a2005fc              # double 0.68047528364712617
	.quad	0x3fe4df6b82ad5b41              # double 0.65227294466863139
	.quad	0x3fe2009b8854b4a8              # double 0.56257416369557678
	.quad	0x3fe81a7ab24acb18              # double 0.75323233435333048
	.quad	0x3fd32d6b203af810              # double 0.29964712283606421
	.quad	0x3fcc3a83fe3a8674              # double 0.22053575433260486
	.quad	0x3fd662411fe0fbd6              # double 0.34974697220962747
	.quad	0x3fe31f02cb67d685              # double 0.59753551223430235
	.quad	0x3fe8f8a1b125b11f              # double 0.78035053824490663
	.quad	0x3fe777daa510b57f              # double 0.73338062514601166
	.quad	0x3fef5ce4f1fe9e73              # double 0.9800896383721479
	.quad	0x3fee8a80354700ef              # double 0.95440683751806243
	.quad	0x3fc77eac53c95464              # double 0.18355325785765608
	.quad	0x3fd89db52fb08cc6              # double 0.38462571770851317
	.quad	0x3fe2a5c6190f30bb              # double 0.58273606199647732
	.quad	0x3fdc3ecf2993a47a              # double 0.44133357105471982
	.quad	0x3fc4a93e61aa9eac              # double 0.16141490715857765
	.quad	0x3fe5e406647a3c9c              # double 0.68408507942685359
	.quad	0x3fcd8cfcc26cd860              # double 0.23086509221474483
	.quad	0x3fa2e2e43999bdc0              # double 0.036887294799153647
	.quad	0x3fa750d12b566a10              # double 0.045538460293034544
	.quad	0x3fddfcafac6e44cc              # double 0.46854774321498094
	.quad	0x3fe0d75734e24b4f              # double 0.52628670052431825
	.quad	0x3fee9566382e4394              # double 0.95573721859737981
	.quad	0x3fee78a43f5e2869              # double 0.95222675682567826
	.quad	0x3fa16087fb561870              # double 0.033939599447919799
	.quad	0x3fd7bc598f574160              # double 0.3708709621251014
	.quad	0x3fdfdd9953573eee              # double 0.49790032519102467
	.quad	0x3fe6ec19de6acaf0              # double 0.71632092896319755
	.quad	0x3fe1c1ee4e018e96              # double 0.55492320285380248
	.quad	0x3fe46e1854a582aa              # double 0.63843933613323611
	.quad	0x3fdd849c649fc2dc              # double 0.46121892763680505
	.quad	0x3fe8602c22c0b263              # double 0.76173979556694993
	.quad	0x3fcc7e5df9424bfc              # double 0.22260641737793196
	.quad	0x3fe4ef047237d785              # double 0.65417692478398293
	.quad	0x3fe9e2b6aa8b9f07              # double 0.80892499265334628
	.quad	0x3fcce2b440398d64              # double 0.22566846023537857
	.quad	0x3fe18cb1b3b2d144              # double 0.54842457864155181
	.quad	0x3fedd5ec236f85e7              # double 0.93236357613585319
	.quad	0x3f6a2988683fff00              # double 0.0031936325267450938
	.quad	0x3fd9b08ae2330d00              # double 0.40140029992853954
	.quad	0x3feeacafebaed38f              # double 0.95857997924632509
	.quad	0x3febc3386f6b8b92              # double 0.86758062135446523
	.quad	0x3fed6727994853c1              # double 0.91884212434762713
	.quad	0x3febbb28ca652dce              # double 0.86659659891432184
	.quad	0x3fe2fff2ea249146              # double 0.59374376040481347
	.quad	0x3fd16cefb6e62a4e              # double 0.27227394925345016
	.quad	0x3fd86f6f0bd5b078              # double 0.38180137782797585
	.quad	0x3fea7aff5d80046f              # double 0.82751434575778926
	.quad	0x3fe9e50880f7eca1              # double 0.80920815648223166
	.quad	0x3fc32dfd80a7dabc              # double 0.14984101087585155
	.quad	0x3fd08a81030979d2              # double 0.25845361038764481
	.quad	0x3fb99df35c1d3570              # double 0.10006638525847733
	.quad	0x3fe3bb53bbe87aa3              # double 0.61661707592778148
	.quad	0x3fef4ee025974db2              # double 0.97837836591718585
	.quad	0x3fe61e65a2f83830              # double 0.69121057348252712
	.quad	0x3fe5030668144aee              # double 0.65661926582319352
	.quad	0x3fd1b15d8ffc8b5c              # double 0.27645052968198569
	.quad	0x3fe812df0ca9f929              # double 0.75230362389973948
	.quad	0x3fee724450142e89              # double 0.95144858971021151
	.quad	0x3fe920259ad0a099              # double 0.78517418134017014
	.quad	0x3fe616675825a476              # double 0.69023482528895275
	.quad	0x3fe32424bdd0dc42              # double 0.5981620509472878
	.quad	0x3fe6d995b6016d68              # double 0.7140606455608749
	.quad	0x3fe14346957df945              # double 0.53946236798928082
	.quad	0x3f9683052b1f24c0              # double 0.021984177357613488
	.quad	0x3fc452fe7998aed8              # double 0.15878277718854039
	.quad	0x3fe867ff68b06d46              # double 0.76269503066161159
	.quad	0x3fe991d9f7f2a2a4              # double 0.7990541308145862
	.quad	0x3fe4657a58054551              # double 0.63738743964692379
	.quad	0x3fd9b92d1e2be3b8              # double 0.40192726084165598
	.quad	0x3f9799aae5040ca0              # double 0.023047132709518636
	.quad	0x3fae6dc11a6928c0              # double 0.059431108926746301
	.quad	0x3fe44cd9ed751b85              # double 0.63438125971229964
	.quad	0x3feeaf029ced7fd8              # double 0.95886355066249517
	.quad	0x3feb0f58c508057e              # double 0.84562338335688003
	.quad	0x3fe196f187ab70a8              # double 0.54967571733461273
	.quad	0x3fe8a7d1ef622183              # double 0.77048584703975143
	.quad	0x3fe3e8ba6e93d24f              # double 0.6221592101779353
	.quad	0x3fee317208b8b26c              # double 0.9435358209935436
	.quad	0x3fcd153c7fe75830              # double 0.2272105812577947
	.quad	0x3fe07e0662fa5b53              # double 0.51538390475875884
	.quad	0x3fcd137d6ebdbb44              # double 0.22715728671343005
	.quad	0x3fec510d69f40d55              # double 0.88489409154900989
	.quad	0x3fdceed19e56a760              # double 0.45207634413474374
	.quad	0x3fa7b77d52b73df0              # double 0.04632178911890239
	.quad	0x3fea6035a601ad22              # double 0.82424433158067623
	.quad	0x3fcb9fa20592c674              # double 0.21580910942207121
	.quad	0x3feabd540e767de9              # double 0.83561137032296273
	.quad	0x3fef3c72d262fc61              # double 0.97612897006173338
	.quad	0x3fe8cc0c8e3b39a6              # double 0.77490833072242959
	.quad	0x3fe13081b4d4502c              # double 0.5371712238143167
	.quad	0x3fa7f80238eb1330              # double 0.046814031074552509
	.quad	0x3feecaa2005c8abb              # double 0.96223545141795996
	.quad	0x3fc58708276dd9d8              # double 0.16818334508179933
	.quad	0x3feb2816032c4460              # double 0.84864330882750138
	.quad	0x3fe78bb3e20ac562              # double 0.73580354832499162
	.quad	0x3fe3943869d95b9c              # double 0.61184330629008654
	.quad	0x3fcbf08e1a583f38              # double 0.21827865873682994
	.quad	0x3fe416731efcaaf8              # double 0.62774044086594838
	.quad	0x3fe6ce43362f16f4              # double 0.71267853339006004
	.quad	0x3fd98a7148d59c94              # double 0.39907486069427844
	.quad	0x3feff4fd5583f299              # double 0.99865595533590856
	.quad	0x3fdde55673e7183a              # double 0.4671226627218662
	.quad	0x3fe6dc43d45e8ebb              # double 0.71438781240836791
	.quad	0x3fd51d5dde31501e              # double 0.32991739939211751
	.quad	0x3fc8d5a04595cf30              # double 0.19401935003008353
	.quad	0x3fe6de6d0023a5f1              # double 0.714651584884619
	.quad	0x3fd31dd6bdc0172e              # double 0.29869621782596567
	.quad	0x3f9724279a43f0e0              # double 0.022598856726276817
	.quad	0x3fadbfe6efcc7910              # double 0.058104721805863346
	.quad	0x3fea986c52132438              # double 0.83110633878926077
	.quad	0x3fd1775e7e47dc86              # double 0.27291071254826027
	.quad	0x3fe36f440e1af211              # double 0.60733225588734474
	.quad	0x3fefbbcd92b817ee              # double 0.99167517334057975
	.quad	0x3fdfb4f53d5532a0              # double 0.49541979779750456
	.quad	0x3fed4f6242cfd39c              # double 0.91594040917572128
	.quad	0x3fb6bf67991844f8              # double 0.088858103634510743
	.quad	0x3fd7fd3796475e26              # double 0.3748301475111212
	.quad	0x3feaa060f65bb67a              # double 0.83207748524519265
	.quad	0x3fe4e306a97c4d30              # double 0.65271313765189198
	.quad	0x3fed515ba520c556              # double 0.91618139506878538
	.quad	0x3feb8c2a159c31b7              # double 0.86085991116265503
	.quad	0x3fe767d1cb99e534              # double 0.73142328039026561
	.quad	0x3fec78055b402257              # double 0.88965099165313688
	.quad	0x3fe9b66d6e5bf79d              # double 0.80351897768536029
	.quad	0x3fca92c123eef59c              # double 0.20760359053194299
	.quad	0x3fefadfdd357e71c              # double 0.98998919752122871
	.quad	0x3fb01e94d37940a0              # double 0.062966634396846022
	.quad	0x3fe9b26e3fa63a4b              # double 0.8030310862685125
	.quad	0x3fee7f851473add3              # double 0.95306638712411951
	.quad	0x3fa08c03cb79cc40              # double 0.032318228329039744
	.quad	0x3fd19a79442c2932              # double 0.27505332620116285
	.quad	0x3fe2eb8df5bb5987              # double 0.5912542151880168
	.quad	0x3fcf814861d26a9c              # double 0.24613289619886281
	.quad	0x3fdfac7d34682f2a              # double 0.49490289800518161
	.quad	0x3fe421c2cfc89446              # double 0.629121213748143
	.quad	0x3fe1979114ef17d5              # double 0.54975179756797365
	.quad	0x3fe8a970f506039b              # double 0.77068374496603853
	.quad	0x3fde2eef9e7ad3bc              # double 0.4716147468237144
	.quad	0x3f94213853555b00              # double 0.019657974325435923
	.quad	0x3fe62b449cd352d6              # double 0.69278174047448249
	.quad	0x3feb5a245087f713              # double 0.8547536442635838
	.quad	0x3fe8ce3c87b5e5a2              # double 0.77517534738506222
	.quad	0x3fee270b5bb3d613              # double 0.94226615820542958
	.quad	0x3fdc7b00199fbf4a              # double 0.44500734808297138
	.quad	0x3fbb46d7a6602610              # double 0.10654971897033527
	.quad	0x3fec404a6c53c8c9              # double 0.88284798772499429
	.quad	0x3f728a01b062af00              # double 0.004526144597700954
	.quad	0x3fce41cb1ab656f0              # double 0.23638285450277108
	.quad	0x3fecf55a3569e01c              # double 0.90495024139727631
	.quad	0x3fedf15c852fb75e              # double 0.93571306241004115
	.quad	0x3fb52e7b40b1fcf8              # double 0.082740500731222855
	.quad	0x3fea325ce84ac1ab              # double 0.81864781732115455
	.quad	0x3fecf9999fde4843              # double 0.9054687616756002
	.quad	0x3fab4b5798a734e0              # double 0.05330919016305713
	.quad	0x3feb3a7f6f5c1799              # double 0.85089084386776215
	.quad	0x3fd008b4ac091fb2              # double 0.25053135681491334
	.quad	0x3fef1b5b92fc3a8a              # double 0.97208956440029337
	.quad	0x3fd954b86c5ffc02              # double 0.39579592307558198
	.quad	0x3fe60c305b5af06d              # double 0.68898790209597183
	.quad	0x3fb2a150686fc0d8              # double 0.072773957726670502
	.quad	0x3feac8d04713d669              # double 0.83701337702104894
	.quad	0x3fe7533404bd05b7              # double 0.72890664029562557
	.quad	0x3fd669e7d65c054c              # double 0.35021396573582275
	.quad	0x3fefe52e15311030              # double 0.99672607554430748
	.quad	0x3fce1fa319619bc0              # double 0.2353404878551526
	.quad	0x3fc7f3931e07fd00              # double 0.18712080923430818
	.quad	0x3fe2d7ee64794a89              # double 0.58885879157817655
	.quad	0x3fd678db662cd144              # double 0.35112652757677076
	.quad	0x3fe16e7dbea379a9              # double 0.54473769411179263
	.quad	0x3faf1b426b4e93b0              # double 0.060754848097793412
	.quad	0x3fee54eb2c970c60              # double 0.94786604603758561
	.quad	0x3fc3e43ada256168              # double 0.1554025235334493
	.quad	0x3febad485c985829              # double 0.86490266880969557
	.quad	0x3fc03a39082329e8              # double 0.12677681825000708
	.quad	0x3fd5442715aa016a              # double 0.33228470912583552
	.quad	0x3fe8cb5ce8a9834f              # double 0.77482457582309816
	.quad	0x3fd79812ecf5f0b4              # double 0.36865685597127684
	.quad	0x3fb90eb8b5ff8f38              # double 0.097880882676290137
	.quad	0x3fe94e820b291eaa              # double 0.79083349399384884
	.quad	0x3fe5031852efb8d4              # double 0.65662780951040611
	.quad	0x3fedb4426e0b5eb8              # double 0.92825433247613542
	.quad	0x3fe8c7a64761941e              # double 0.77437128011354495
	.quad	0x3fe617f57a5be639              # double 0.69042467020262344
	.quad	0x3feb75c4c4eab424              # double 0.85812605343165104
	.quad	0x3fde4b298efcfc16              # double 0.47333754504865178
	.quad	0x3fd6761db6087c64              # double 0.35095923210787405
	.quad	0x3fbf9dd41c76e7c0              # double 0.12350202269490662
	.quad	0x3fd5be6ee579c76a              # double 0.33974811944710004
	.quad	0x3fe6f9a51b274333              # double 0.71797423652069481
	.quad	0x3fdc55762f7b9e86              # double 0.44271616589546914
	.quad	0x3fe068cf8c9796c8              # double 0.512794279665024
	.quad	0x3fb4141c1a9d2ee0              # double 0.078431850907857648
	.quad	0x3fe2efbe472a1b9f              # double 0.59176553630173945
	.quad	0x3fe07285e0b2626d              # double 0.51397985349747233
	.quad	0x3fe2b3ddd1f381ad              # double 0.58445635801404239
	.quad	0x3fcc8ffe363145f0              # double 0.22314431806675783
	.quad	0x3fe627ab0c2c8aae              # double 0.69234230401737817
	.quad	0x3fe75aa6f6cf8344              # double 0.72981594281382245
	.quad	0x3fe4fd992e352dd0              # double 0.65595683121630977
	.quad	0x3fe2f50cab6b9bcb              # double 0.59241326790367432
	.quad	0x3fd0006bbb6d1252              # double 0.25002568534208536
	.quad	0x3fc56d3764d1b1f4              # double 0.16739551947411224
	.quad	0x3feacbdd0d37c90d              # double 0.83738567906974171
	.quad	0x3fd1fb593c0efa56              # double 0.28096609940613371
	.quad	0x3f884c0f5e350e40              # double 0.011863822996594497
	.quad	0x3fdb2342dc272ba6              # double 0.42402717112843857
	.quad	0x3feaab6ddf169681              # double 0.83342641422196106
	.quad	0x3fdcadcb2d2d8390              # double 0.44810752307790214
	.quad	0x3fe241a88d5b0059              # double 0.57051494225016619
	.quad	0x3fe85545103bdb2b              # double 0.76040890856424903
	.quad	0x3fdbb930a89a31fc              # double 0.43317810502119847
	.quad	0x3fec0920c00b809c              # double 0.87611424931312198
	.quad	0x3fdd0e775577bb44              # double 0.45400794359641261
	.quad	0x3fd81b6b189dd7aa              # double 0.3766734829326831
	.quad	0x3fd8f861aca6e60e              # double 0.39016000614682944
	.quad	0x3fed2e720287f745              # double 0.91191959852560756
	.quad	0x3fe76a3dfdc3e6e7              # double 0.73171901286624752
	.quad	0x3fe6e5f8f2dec41b              # double 0.71557280955869673
	.quad	0x3fcfab28d0dc2bec              # double 0.24741087148899454
	.quad	0x3fda2a3295648b30              # double 0.40882553662429455
	.quad	0x3fd4935294a37caa              # double 0.3214918567227395
	.quad	0x3fbbb03ba6cc9e30              # double 0.10815785238502751
	.quad	0x3fe21bff02c0b24d              # double 0.56591749704018357
	.quad	0x3fc9f4eacbc1cec8              # double 0.20278677891803043
	.quad	0x3fcb22169919840c              # double 0.21197779155321006
	.quad	0x3fa3527b4aa939c0              # double 0.037738659728904889
	.quad	0x3fc8d9b428050914              # double 0.19414379076085508
	.quad	0x3fb2275a2a461d18              # double 0.07091296703412231
	.quad	0x3febb7593e82edb7              # double 0.86613142213121008
	.quad	0x3fed86f8729e0b7e              # double 0.92272589098170932
	.quad	0x3fe24a226fabd8c7              # double 0.57154962359234041
	.quad	0x3fe435f2a8ae525c              # double 0.63158543534752765
	.quad	0x3fd428f175aacd34              # double 0.31499897471367722
	.quad	0x3fe0c931719fb37d              # double 0.52455970947413244
	.quad	0x3fe3810da96326d4              # double 0.60950358470401023
	.quad	0x3faac7aa9aeb9690              # double 0.0523045839416173
	.quad	0x3fd587d6dea6849c              # double 0.33641597502907827
	.quad	0x3fd47a920786de1e              # double 0.31998110518495249
	.quad	0x3fe8c7bad4d0017a              # double 0.77438108029313857
	.quad	0x3fd987ee9b175dd8              # double 0.39892163415558235
	.quad	0x3fd57a19aca0db5a              # double 0.33557741029965416
	.quad	0x3faec23ed54e90c0              # double 0.060075725115241507
	.quad	0x3fd063caa055d248              # double 0.25609079034555693
	.quad	0x3fd4317dd528f246              # double 0.31552072349930815
	.quad	0x3fea007b328c2974              # double 0.81255874512252868
	.quad	0x3fc05c8e72d720b0              # double 0.12782459838331794
	.quad	0x3fbc780cfc1c11d8              # double 0.11120682864208875
	.quad	0x3fb654baccdd65a8              # double 0.087230372443989013
	.quad	0x3fc6de9e86766130              # double 0.17866880002544283
	.quad	0x3febb37b2a9f23de              # double 0.86565931629695192
	.quad	0x3fec16dac6bd7d4b              # double 0.87778986755794486
	.quad	0x3fe22a5ecd714a42              # double 0.56767215848442043
	.quad	0x3fdbbee557c177e8              # double 0.43352635927101213
	.quad	0x3fcf73c2c6f9bed0              # double 0.2457202407417669
	.quad	0x3fea2403877b953a              # double 0.81689621411775382
	.quad	0x3fe9c2092b032a23              # double 0.80493601227619072
	.quad	0x3fb01214d3a427b0              # double 0.062775899572584448
	.quad	0x3fdb480ea2f698b2              # double 0.42627302088147723
	.quad	0x3feb5342071e11cc              # double 0.85391332044724199
	.quad	0x3fe29eceae823c69              # double 0.58188566287743726
	.quad	0x3fb85fd47b6f1430              # double 0.095212249884824684
	.quad	0x3fcbc1c05d66c6e8              # double 0.2168503242551687
	.quad	0x3fe0db0e1cbf1515              # double 0.52674012770208611
	.quad	0x3fc630a6e3bf0fc4              # double 0.17335973854471665
	.quad	0x3fe36ce39d545404              # double 0.60704212883376885
	.quad	0x3fdc4608da30377a              # double 0.44177457148986543
	.quad	0x3fa440fc64faa700              # double 0.039558303190757371
	.quad	0x3fa78f0ce9986d30              # double 0.046013263239922941
	.quad	0x3fb156a286bdb588              # double 0.06772819318367429
	.quad	0x3febb530bb900ea6              # double 0.86586796410889089
	.quad	0x3fe7f8524dfeb62b              # double 0.74906268342391991
	.quad	0x3fe0ae532840d83e              # double 0.52127988683674409
	.quad	0x3fd97ec2b1d46a0e              # double 0.39836184850870004
	.quad	0x3fe81b3b5d0b3fc0              # double 0.75332420513768028
	.quad	0x3fe4d0745f8ff71b              # double 0.65044611610912584
	.quad	0x3fdebd1e0520d6d6              # double 0.48029280186470424
	.quad	0x3fe6cf3f60d0c1b3              # double 0.71279877576130557
	.quad	0x3fe8be78470b99ea              # double 0.7732507121662
	.quad	0x3fd9ddf0a23ba17e              # double 0.40417114108142715
	.quad	0x3fd4b9c2b18ab384              # double 0.32383792245928356
	.quad	0x3fd07c2b8eed7440              # double 0.25757874448555995
	.quad	0x3fe5f4ef6747ea47              # double 0.68614931270651247
	.quad	0x3fe0e7d6f14fd6f4              # double 0.52830073481774642
	.quad	0x3fe1a8b7fd856f99              # double 0.55184554592004809
	.quad	0x3fe4078075c82e3c              # double 0.62591574672973804
	.quad	0x3fc14706670498ac              # double 0.13498001127408565
	.quad	0x3fdbb6eda18f859c              # double 0.43304005410581126
	.quad	0x3fe7eedf45f040b8              # double 0.74790919933186384
	.quad	0x3fa2aaf7d188c220              # double 0.036460632636934998
	.quad	0x3fcdeecc4554ed0c              # double 0.23385003457392661
	.quad	0x3fee091e080c3a9e              # double 0.93861295291738478
	.quad	0x3fdaf8aa94976ec6              # double 0.42142738829509729
	.quad	0x3fe5e216ca777345              # double 0.68384875816591573
	.quad	0x3fc49eb3a431b834              # double 0.16109319226547003
	.quad	0x3fe0b3b8bf505ce5              # double 0.52193868032454971
	.quad	0x3fef3f88c284fe7d              # double 0.97650564186183397
	.quad	0x3fe0ad54b62ee0e6              # double 0.52115855772629227
	.quad	0x3fdf9082d53cb8c6              # double 0.49319525550789611
	.quad	0x3f7368d08efb0c00              # double 0.0047386309449306552
	.quad	0x3fc350675c4b2370              # double 0.15089122778433817
	.quad	0x3fe1ce0aeecfff0e              # double 0.55640169756949986
	.quad	0x3fe54f52a42c43e5              # double 0.66593296113034894
	.quad	0x3fe6f8b0fa773ae3              # double 0.71785782736864368
	.quad	0x3fb219697ac43ad8              # double 0.070700256798072458
	.quad	0x3fcaddf3bd43e590              # double 0.20989844075647257
	.quad	0x3fed24ab0750f2f6              # double 0.91072608403155075
	.quad	0x3fea324e7892c561              # double 0.81864093350865741
	.quad	0x3fefe64f9ee71482              # double 0.9968641379897607
	.quad	0x3fef2258bc5fd1ab              # double 0.97294270316938502
	.quad	0x3fead75b35276f58              # double 0.83878860837601632
	.quad	0x3fe8f455ca4827b9              # double 0.77982606418776534
	.quad	0x3fd1059b12325a42              # double 0.26596714760799867
	.quad	0x3feba80f5c310361              # double 0.86426513677734473
	.quad	0x3fc3d420ddd0d3ac              # double 0.15491114455076394
	.quad	0x3f7b9ac8bb155e00              # double 0.0067394105002089866
	.quad	0x3fe3740c13107247              # double 0.60791591380581955
	.quad	0x3fe361103a910a37              # double 0.60559855879575408
	.quad	0x3fd9a4c931a70850              # double 0.40068273400186616
	.quad	0x3fe114eea7ad5f49              # double 0.5338052058168411
	.quad	0x3fe262c2787bbe74              # double 0.5745556214514651
	.quad	0x3fec639b19edc335              # double 0.88715891899310029
	.quad	0x3fe3563a7b8dfa53              # double 0.6042759335685538
	.quad	0x3fa2044ae3ab2820              # double 0.035188999454092817
	.quad	0x3fb4da42daba54f8              # double 0.081455400848728376
	.quad	0x3fea253d244b3229              # double 0.81704575623149822
	.quad	0x3fd3d17e29d3c6a8              # double 0.30966142735187896
	.quad	0x3fcb6246be88bbe8              # double 0.21393665603088086
	.quad	0x3fe86b8a0ec34bb3              # double 0.76312735446332736
	.quad	0x3feb2754a64017ca              # double 0.84855110617422125
	.quad	0x3fe8eab5dabe1b9a              # double 0.77865116809049373
	.quad	0x3fd40b442e056058              # double 0.31318764204252636
	.quad	0x3fe62a68cde7c4b3              # double 0.69267692771804545
	.quad	0x3fe830ccc7210964              # double 0.75595702068703163
	.quad	0x3fddf1a198fd0c9c              # double 0.46787300052910452
	.quad	0x3fd0c734d5968b02              # double 0.26215859277924392
	.quad	0x3fe54f20560f0886              # double 0.66590897377342695
	.quad	0x3fe08d16a4429393              # double 0.51722271043819246
	.quad	0x3fe4384ea5e54f48              # double 0.63187343980323707
	.quad	0x3fd31684f3329692              # double 0.29824947118536571
	.quad	0x3fee9850ff9cc4c3              # double 0.956093310587811
	.quad	0x3fd4fd703daf6328              # double 0.32796865486084181
	.quad	0x3fe733f6825d2c89              # double 0.72509313070021719
	.quad	0x3fea05d95e4953cf              # double 0.813214000848001
	.quad	0x3fae92f28738c870              # double 0.059714869505470669
	.quad	0x3fda9b764b7d74a6              # double 0.41573865291668211
	.quad	0x3fc16de6e1b685d4              # double 0.1361664392580183
	.quad	0x3fe989e46fd2cac6              # double 0.79808255997189614
	.quad	0x3fa9e9a0e59cc7a0              # double 0.050610569027767172
	.quad	0x3fd519d74deefd9e              # double 0.32970221148203815
	.quad	0x3fdbb249da3b04d2              # double 0.43275686561180493
	.quad	0x3fc119772d6db198              # double 0.1335896465128712
	.quad	0x3feee5d87fad84fd              # double 0.96555733620712624
	.quad	0x3fec0bdaf9532cd5              # double 0.87644718834180912
	.quad	0x3fe64fc20654361d              # double 0.69723607288478073
	.quad	0x3fbcdd6236312690              # double 0.11275304625555749
	.quad	0x3fd2d6b760e66410              # double 0.29435524428259985
	.quad	0x3fee1ddb9063f34b              # double 0.94114473534828258
	.quad	0x3fea8c7d070a573e              # double 0.82964946150853058
	.quad	0x3fc737d1299d2ac8              # double 0.18139090091638921
	.quad	0x3feef386eab04830              # double 0.96722741925828437
	.quad	0x3fe5ce7c9983b2a1              # double 0.68145589812555241
	.quad	0x3fec67ccb2680e8b              # double 0.88767084927572293
	.quad	0x3fe9f92c2b91ddcc              # double 0.81166656980252005
	.quad	0x3fe244d40ed8a844              # double 0.57090189838096039
	.quad	0x3feaf28ec611d3b9              # double 0.84210909543491319
	.quad	0x3fe86fc3f9a0ac72              # double 0.76364325290104618
	.quad	0x3fe2d6ce5f7c8a6c              # double 0.58872145318703195
	.quad	0x3feed99188b605df              # double 0.9640586538445709
	.quad	0x3fd45edf043c44ee              # double 0.31829047597518823
	.quad	0x3fe555c14f6d89e7              # double 0.66671815407999879
	.quad	0x3fdbd89c5480933a              # double 0.43509586574718961
	.quad	0x3fc982698daa42d8              # double 0.19929236809959749
	.quad	0x3fc9d328e9ce1168              # double 0.20175658622987247
	.quad	0x3fe237eac7994063              # double 0.56932581886395572
	.quad	0x3fd91be148c568be              # double 0.39232666117244352
	.quad	0x3fb033a1d5a22c00              # double 0.063287844330417897
	.quad	0x3fa31ea8153c8880              # double 0.037343266098347705
	.quad	0x3fe213b56ccb9db5              # double 0.56490584611031258
	.quad	0x3fe565af26e88b27              # double 0.66866262053767833
	.quad	0x3fe0f54a2d834a48              # double 0.52994259728650039
	.quad	0x3fef03b380ee2fab              # double 0.96920180494043017
	.quad	0x3fe99b875291c2ad              # double 0.80023542525130653
	.quad	0x3fd661d8e7d09c36              # double 0.34972212446377016
	.quad	0x3fe8009efda057ea              # double 0.75007581268687074
	.quad	0x3fa8a50557db43e0              # double 0.048134009337111427
	.quad	0x3fe0463d3cd27175              # double 0.50857412223153509
	.quad	0x3fe6abb7ca50d920              # double 0.70846166148001899
	.quad	0x3febcfa214cc9143              # double 0.86909584104845583
	.quad	0x3fdd302ae1904b22              # double 0.4560649111528382
	.quad	0x3fb8ce4570e76438              # double 0.096897449554845916
	.quad	0x3fe86930d6bcdab1              # double 0.7628406709762513
	.quad	0x3fdb91977cb2d306              # double 0.43076121499625264
	.quad	0x3fca8f7ca3314960              # double 0.20750387161622097
	.quad	0x3fe493648018271a              # double 0.64299225824763373
	.quad	0x3fc7e9eb4c6235ec              # double 0.18682614545507137
	.quad	0x3fdb0cd2516956ee              # double 0.42265756559696299
	.quad	0x3fe16646f71eda34              # double 0.54373501077390651
	.quad	0x3fdca667afd1c9fa              # double 0.44765655679580585
	.quad	0x3fc9e052d9dfdef0              # double 0.20215831411746121
	.quad	0x3fe8897ea22810a3              # double 0.76678401633445892
	.quad	0x3fdc106295a04b50              # double 0.43850006687096243
	.quad	0x3fe55a4103604719              # double 0.6672673288287313
	.quad	0x3fc4f096a975a900              # double 0.16359217905421275
	.quad	0x3feeac19022eecdd              # double 0.95850801874567148
	.quad	0x3fed6b8e3f9ae02b              # double 0.91937935278747795
	.quad	0x3fb9d5a75ad81498              # double 0.10091634719727194
	.quad	0x3f9f099c07c938a0              # double 0.030310094809742893
	.quad	0x3fbc6011262aa200              # double 0.11084086591529996
	.quad	0x3feefb6338038d13              # double 0.9681869596501279
	.quad	0x3fef5d0c361f0a59              # double 0.98010836191708528
	.quad	0x3feb7bc8c6de5c3b              # double 0.85886038629076411
	.quad	0x3fd42a04e7de9fe8              # double 0.31506464618223484
	.quad	0x3fe4ed3e3435d9a9              # double 0.65396032521566838
	.quad	0x3fd6a3de0f66e994              # double 0.35375167373754235
	.quad	0x3fe29b8fe508049f              # double 0.58148951275520122
	.quad	0x3fb5030bf3c61c78              # double 0.082077738776307529
	.quad	0x3fe201b79dfb06e6              # double 0.56270962577420103
	.quad	0x3fe2804d9f4ad358              # double 0.57816201316618798
	.quad	0x3fc05eb8f6aa6f94              # double 0.12789070171572503
	.quad	0x3fcb3f5938571aa8              # double 0.21287074328411859
	.quad	0x3fd689b3c8cbc3bc              # double 0.35215468033771535
	.quad	0x3fcdb4979f94c81c              # double 0.23207373897599914
	.quad	0x3fe68b347b63ebd3              # double 0.70449279880210225
	.quad	0x3fe7101cb8f58cd4              # double 0.72071682095374934
	.quad	0x3fe2ef40d2b1285b              # double 0.59170571471009781
	.quad	0x3fd90c6bab3cf60e              # double 0.3913830921408995
	.quad	0x3fc776f070ded020              # double 0.18331723700760083
	.quad	0x3fe5ea54109649e2              # double 0.68485453834210497
	.quad	0x3fe29715739323ff              # double 0.58094284604260327
	.quad	0x3fd231b6d0edfc78              # double 0.28428430941853078
	.quad	0x3fe4e4aa8a1f236c              # double 0.65291335083848656
	.quad	0x3fee71bb9d72de6f              # double 0.95138340713215352
	.quad	0x3fdf938e0a884392              # double 0.49338103321593352
	.quad	0x3fe1679af71fb7c6              # double 0.54389713541399298
	.quad	0x3fec6f3dddbaa988              # double 0.88857930475687485
	.quad	0x3fd270a5ec6322ba              # double 0.28812549671833276
	.quad	0x3fe4da191c4fb36b              # double 0.65162330178791927
	.quad	0x3fef214c36e8a57b              # double 0.9728146622120869
	.quad	0x3f9c4c5bf49e3800              # double 0.027635037236500182
	.quad	0x3fd40b2eb4991cfa              # double 0.31318252216847464
	.quad	0x3fd58596196e3890              # double 0.33627846225216107
	.quad	0x3faac37c38c19c70              # double 0.052272684028871974
	.quad	0x3fd2517fdbd33a44              # double 0.28622433154388127
	.quad	0x3fe3267855b47cc4              # double 0.59844605197204048
	.quad	0x3fc4b75fdc1ea260              # double 0.16184614418058896
	.quad	0x3fea3123aa6b4d1c              # double 0.81849845204343152
	.quad	0x3fd9725d6da22bb6              # double 0.39760528284449081
	.quad	0x3f975b56cc7379a0              # double 0.02280936835165337
	.quad	0x3feb2900065a2722              # double 0.8487548946443193
	.quad	0x3fda3bc04bd716ca              # double 0.40989692121761989
	.quad	0x3fd32a0964027402              # double 0.2994407154708939
	.quad	0x3fd52c5d505d22a2              # double 0.33083279464748661
	.quad	0x3fec1ec2aa87f851              # double 0.87875493342267863
	.quad	0x3fea44620f6a7c94              # double 0.82084754000597337
	.quad	0x3fd9f436aeab1500              # double 0.40553061540079227
	.quad	0x3fadfcd4a2a8ce20              # double 0.058569569450267034
	.quad	0x3fdc016520e75182              # double 0.43758514607659305
	.quad	0x3fbac4bf1aa248e8              # double 0.10456461334459599
	.quad	0x3fb74c8ae385ad70              # double 0.091011696383864082
	.quad	0x3fc95f44a53f7b54              # double 0.19821985310314949
	.quad	0x3fe8eea5805eeb21              # double 0.7791316516153054
	.quad	0x3fbee4a7d02eee40              # double 0.12067650635338456
	.quad	0x3feed88ad3c6d094              # double 0.96393338549252627
	.quad	0x3fe49faa0e0dcca7              # double 0.64449026818183064
	.quad	0x3fe74871bc59b7db              # double 0.72759329592895072
	.quad	0x3fed8906db5e2e22              # double 0.92297690243998809
	.quad	0x3feb8ab65dbcc6eb              # double 0.86068266208732547
	.quad	0x3fe02d8c3a16cbb4              # double 0.50556002946392775
	.quad	0x3fe0f7215fbdb652              # double 0.53016728114534772
	.quad	0x3fea35c8a15c4b1b              # double 0.81906539455153238
	.quad	0x3fd7d4873d7c4de6              # double 0.37234669689607214
	.quad	0x3fdd2db35b6eec02              # double 0.45591434411079501
	.quad	0x3fd2e0c729c41f12              # double 0.29496935919495215
	.quad	0x3fdd7ee82302d3d8              # double 0.46087077540442811
	.quad	0x3fd4765b10d93b8a              # double 0.31972386021964694
	.quad	0x3fe1a4ddb7675d64              # double 0.55137525387810316
	.quad	0x3fec5d45eb91f9e9              # double 0.88638587961014281
	.quad	0x3fe9155ef47cffae              # double 0.7838587546502731
	.quad	0x3fd4d0c157279030              # double 0.32524140845476079
	.quad	0x3fee4b095ec3d355              # double 0.94665974148538601
	.quad	0x3fd162685ec66d9a              # double 0.27163132911092591
	.quad	0x3fc6b57ce089189c              # double 0.17741356815003406
	.quad	0x3fed5f8e6efc7096              # double 0.91791459729167246
	.quad	0x3fdad36fb005ce66              # double 0.4191550463649264
	.quad	0x3fe75f279d5f880e              # double 0.73036556946704123
	.quad	0x3fe5d196dff4551e              # double 0.68183463803385158
	.quad	0x3fb4581ddda3e2e8              # double 0.079469553576824503
	.quad	0x3feb6b6443d209ca              # double 0.85685933347877463
	.quad	0x3fce1f216882be58              # double 0.23532502749502515
	.quad	0x3fd09a6ba94623e4              # double 0.25942508249914753
	.quad	0x3fecafd8ea275ff7              # double 0.89646573765912663
	.quad	0x3fe8d6619f45bd4b              # double 0.77616959674734554
	.quad	0x3fefd843dbb15dce              # double 0.99514954479939788
	.quad	0x3fe362f530622cf8              # double 0.60582980585004886
	.quad	0x3fda5fa0b6192eaa              # double 0.41208665640872744
	.quad	0x3fc842da665270cc              # double 0.18954019542878198
	.quad	0x3f8f96b1cb0e19c0              # double 0.015424145707368164
	.quad	0x3fe380251ca714ef              # double 0.60939269634459758
	.quad	0x3fd2675806472ea2              # double 0.28755760777560557
	.quad	0x3fd905099b2964ac              # double 0.39093246605404874
	.quad	0x3fb00ae2877a7ef0              # double 0.062666090083890458
	.quad	0x3fda8afdc6c0dab0              # double 0.41473335656648214
	.quad	0x3fe523c7522177f2              # double 0.66061750451240031
	.quad	0x3fb380781e3763a8              # double 0.076179034592668615
	.quad	0x3fe699922442f8f6              # double 0.70624644358011213
	.quad	0x3fe69e981eb254d9              # double 0.70685964579993332
	.quad	0x3fe6d548316cb86b              # double 0.71353540089854783
	.quad	0x3feb56d1e1535a2d              # double 0.85434812554269046
	.quad	0x3fe4488df2096ef9              # double 0.63385674736807041
	.quad	0x3fe0513b24fc3ae9              # double 0.509915897595275
	.quad	0x3fed5aeb20f1f290              # double 0.91734844622222234
	.quad	0x3feccc33631279ee              # double 0.89992684698137082
	.quad	0x3fd8dc9324951f7e              # double 0.38846281597624699
	.quad	0x3fe2dbaea79ae277              # double 0.58931668029170126
	.quad	0x3fdb3faa19016f8a              # double 0.42576076929048468
	.quad	0x3fce67593484cbc8              # double 0.23752894462958651
	.quad	0x3fdeae29cc635256              # double 0.47938008270037835
	.quad	0x3fe69d1d6bc43a5d              # double 0.70667906807086533
	.quad	0x3feb318f27bc3c0f              # double 0.84979970703887087
	.quad	0x3fd16649338b993c              # double 0.27186803849908237
	.quad	0x3fe131443608b38f              # double 0.53726397088540689
	.quad	0x3fe3b321579358d0              # double 0.61561648468593866
	.quad	0x3fdff386a57028d0              # double 0.49923864513460803
	.quad	0x3fb10d353f7e57c0              # double 0.066607788087224229
	.quad	0x3f99b7a946941940              # double 0.02511467450406113
	.quad	0x3fc0aa855b039db4              # double 0.13020388549851492
	.quad	0x3fb05522f82b4de8              # double 0.06379908140961954
	.quad	0x3fed1b6ff047488a              # double 0.90959927491555104
	.quad	0x3fe34db76593d089              # double 0.60323686446510394
	.quad	0x3fed37614d00c2ef              # double 0.91301026382106254
	.quad	0x3fda5a169bf9393c              # double 0.41174855453290937
	.quad	0x3fa8f1b6fa898250              # double 0.048719137271068136
	.quad	0x3fc8940361cb4d60              # double 0.19201700472931815
	.quad	0x3feaa6b98253e86e              # double 0.83285212950364751
	.quad	0x3fe48a0f62d98531              # double 0.641853039804266
	.quad	0x3feffa0b387b1514              # double 0.99927292853741045
	.quad	0x3fe3217a7038a88c              # double 0.59783670347430151
	.quad	0x3fd11ccf46ab9d64              # double 0.26738340283778528
	.quad	0x3fc26cf291543c40              # double 0.14394981475968116
	.quad	0x3fe3d5369cd5e127              # double 0.61977701789786444
	.quad	0x3fca827d597ca73c              # double 0.20710722798804138
	.quad	0x3fd74b3c07e50292              # double 0.36396694918588779
	.quad	0x3fd4ec9fa473056c              # double 0.326942358584424
	.quad	0x3fd3a9556305068c              # double 0.30721029920469145
	.quad	0x3fe17d16344c2707              # double 0.54651937689161023
	.quad	0x3f9e3ceb96a21ec0              # double 0.029529267376829038
	.quad	0x3f714df094485b00              # double 0.0042247197748312981
	.quad	0x3fd31143b43c8b68              # double 0.29792873955937305
	.quad	0x3fe9bb4733a3a231              # double 0.80411110006122588
	.quad	0x3fded60f27eff32c              # double 0.48181513691069955
	.quad	0x3fe2ab6cf9e20335              # double 0.58342598729368567
	.quad	0x3fecf91f8d6e0d32              # double 0.90541055319810071
	.quad	0x3fcddd6d72c78d74              # double 0.23331993202655676
	.quad	0x3fd8d9e472ed4072              # double 0.38829909537617546
	.quad	0x3fa278b590cac910              # double 0.03607718842012464
	.quad	0x3fc17be6c89cf588              # double 0.13659367366373609
	.quad	0x3fcbeae63edccb48              # double 0.21810606069046856
	.quad	0x3fe427c74a24d73e              # double 0.62985577088577549
	.quad	0x3faa910dcbb10a20              # double 0.051887923350040888
	.quad	0x3fda86b55e5cc948              # double 0.41447195258219383
	.quad	0x3fe1e30c36cee099              # double 0.55896578507146721
	.quad	0x3fefbecc363cfedb              # double 0.99204073518191238
	.quad	0x3fb07be8030cb5a8              # double 0.064390660042326631
	.quad	0x3fe13b06eec46f05              # double 0.53845545419923779
	.quad	0x3fc913b8e9c618b4              # double 0.19591437735306771
	.quad	0x3f49261483116800              # double 7.6747895776496655E-4
	.quad	0x3fc3cf60b8b82fa4              # double 0.1547661687803813
	.quad	0x3fefe72c3ed1e7d9              # double 0.99696934003372483
	.quad	0x3fce87ed60f0a2e0              # double 0.23852317078969687
	.quad	0x3fa4f7c2e1792fb0              # double 0.040952768348318513
	.quad	0x3fee4386d964eaca              # double 0.94574301204496547
	.quad	0x3fd0f47bf1684524              # double 0.26492212843830232
	.quad	0x3fe9358d0502308a              # double 0.78778696993096387
	.quad	0x3fc2881a6ed187f4              # double 0.14477854167040471
	.quad	0x3fea65eb7f47d01d              # double 0.82494139537311961
	.quad	0x3f9a1c2a2eb90e20              # double 0.025498065091836719
	.quad	0x3fc4fc3ac7663130              # double 0.16394743667877654
	.quad	0x3fc1dd270caf3778              # double 0.1395615398345702
	.quad	0x3fd604a85353ff8c              # double 0.34403427255164654
	.quad	0x3fe06b7e76559b0f              # double 0.51312182533442463
	.quad	0x3fd2fdc0c3b5ec40              # double 0.29673785316817103
	.quad	0x3fd62f7b9a7886b6              # double 0.3466481216911278
	.quad	0x3fe67be1b32ae06b              # double 0.70262227052354598
	.quad	0x3fed7ff015d76008              # double 0.92186741128807714
	.quad	0x3fe919ae5bf82fed              # double 0.78438489878453554
	.quad	0x3feaa6ef6226eda1              # double 0.83287781877827538
	.quad	0x3fe7d8193b5fa24b              # double 0.7451292190208475
	.quad	0x3fe58932b66e9250              # double 0.67299781447634111
	.quad	0x3fc3838b630b5bb8              # double 0.15245191894675059
	.quad	0x3fef8fcebc01b17d              # double 0.98630463333169837
	.quad	0x3fd6e0d3cc0ec41e              # double 0.35747237136371435
	.quad	0x3fd599b7db34e210              # double 0.33750721365825687
	.quad	0x3fc7cd0b16d3ed00              # double 0.18594492544784913
	.quad	0x3feeba3fcfc8d09e              # double 0.96023550589463347
	.quad	0x3fe5deda79be2cbb              # double 0.6834537866392546
	.quad	0x3fa2990c60f40530              # double 0.036323916277988366
	.quad	0x3fa8aceaf3901f40              # double 0.048194257957276054
	.quad	0x3feeb120d9cdea52              # double 0.95912210979379098
	.quad	0x3fb3d7e89ec708e0              # double 0.077513254894288064
	.quad	0x3fd4b6b050b030ea              # double 0.32365043525420722
	.quad	0x3fe2ebc3b6843cff              # double 0.59127984664692679
	.quad	0x3fb322bcaef47ae0              # double 0.074748795236228016
	.quad	0x3fe230e32cf92305              # double 0.56846770080400744
	.quad	0x3fd82220223d4e24              # double 0.37708285659502594
	.quad	0x3fd2c56683735fa4              # double 0.29329836689930233
	.quad	0x3f76fe26eaa19500              # double 0.0056134720017315676
	.quad	0x3fd270fa612dd51c              # double 0.28814563264980264
	.quad	0x3feb276d1d735407              # double 0.84856277229357679
	.quad	0x3fb56965300b9440              # double 0.083639454107086841
	.quad	0x3feb0c3ec05c6455              # double 0.84524476595391695
	.quad	0x3fcf93b5002e2ddc              # double 0.24669516094978305
	.quad	0x3fd3070a672255e4              # double 0.29730472633067806
	.quad	0x3fdc291678d7517e              # double 0.44000779915702271
	.quad	0x3fe93554eebc3393              # double 0.78776022556268044
	.quad	0x3feaf678c51834cb              # double 0.84258688445120222
	.quad	0x3fe7fe03feadb3a9              # double 0.74975776426218943
	.quad	0x3fdfe277ae5c2890              # double 0.49819747950881155
	.quad	0x3fe9df6e4ffaf7a0              # double 0.80852428074989646
	.quad	0x3feffefef90ce984              # double 0.99987743990577415
	.quad	0x3fdfd567651d0280              # double 0.49740013956401441
	.quad	0x3fe8e8b66e5b08ed              # double 0.77840730241612521
	.quad	0x3fe86a11abd01973              # double 0.76294787938313247
	.quad	0x3fe0e20dfc4136db              # double 0.52759455936913058
	.quad	0x3fe3cb52e2360b6f              # double 0.61856979543550306
	.quad	0x3fedd4aa90bedef4              # double 0.93221023817656467
	.quad	0x3fc2f22cccf7e794              # double 0.14801559456082869
	.quad	0x3fe0ca6e73ee6e85              # double 0.52471087115141357
	.quad	0x3fc49a8b8f495684              # double 0.1609663438454626
	.quad	0x3fe183e821bd5107              # double 0.54735190000295197
	.quad	0x3fe3d5d35ad2c23a              # double 0.61985175837441564
	.quad	0x3fec83f50c5fae60              # double 0.89110805908917356
	.quad	0x3fe8cfb57426d324              # double 0.77535507856245944
	.quad	0x3fc3dd9e03cf9980              # double 0.15520072160797937
	.quad	0x3fd749dcc6e02cda              # double 0.36388320371106675
	.quad	0x3fd6f50a077ae26e              # double 0.35870600443335021
	.quad	0x3fe9544a79b1c626              # double 0.7915394188732463
	.quad	0x3fd52aa080b4c4e2              # double 0.33072674340207986
	.quad	0x3fd4f52e62a2f478              # double 0.32746467239832766
	.quad	0x3fc6706ef9ed7390              # double 0.17530619815343274
	.quad	0x3fe61bb0c2bbabb3              # double 0.69088018449598676
	.quad	0x3fd3522bd80ec1da              # double 0.30189033603076398
	.quad	0x3fe84e3e058d4c3d              # double 0.75955105862011119
	.quad	0x3fd58eaac4125ae0              # double 0.33683270595194692
	.quad	0x3fe1ae791bafc2c1              # double 0.55254798324138943
	.quad	0x3fee920e9f444382              # double 0.95532923800247738
	.quad	0x3fe5fad846cad81e              # double 0.68687070681221818
	.quad	0x3febd4eb208b1665              # double 0.86974102359881711
	.quad	0x3fdbb0971d9a88cc              # double 0.43265321627599174
	.quad	0x3fe87cb9b2138ce4              # double 0.76522526531735168
	.quad	0x3fe55a726339640e              # double 0.66729087238047824
	.quad	0x3fe85a0581097e10              # double 0.7609889526610818
	.quad	0x3fe7675449cf0728              # double 0.73136343398821158
	.quad	0x3fe83c5917cc4ebd              # double 0.75736670158445174
	.quad	0x3fe30d31ab76520b              # double 0.59536059845646727
	.quad	0x3fd301e8dc37d3da              # double 0.2969915533606674
	.quad	0x3fee4d3e554f17db              # double 0.94692913686662494
	.quad	0x3fd7d06cac67705e              # double 0.37209622227033445
	.quad	0x3fe325d04c366753              # double 0.59836592564827595
	.quad	0x3fd01210d4a89790              # double 0.25110264556348572
	.quad	0x3fe396d9beabe575              # double 0.61216437569161875
	.quad	0x3fb00df9b8308ad0              # double 0.062713248699348911
	.quad	0x3fe8644e11866604              # double 0.76224425719118515
	.quad	0x3fc362e8a21e2884              # double 0.15145595470341189
	.quad	0x3fd47d575a973b84              # double 0.32015022131684412
	.quad	0x3fdeffa5338aee7e              # double 0.48435335191218332
	.quad	0x3fba2d8dcbfba200              # double 0.1022575972562052
	.quad	0x3fb64c9d3d2e1098              # double 0.087106540142544708
	.quad	0x3fe476c376bf1cbc              # double 0.6394975013035018
	.quad	0x3fe59b763f4bce88              # double 0.67522728312037916
	.quad	0x3fdb0a02cc096b06              # double 0.42248601842372613
	.quad	0x3feae582c42338e5              # double 0.84051645572779121
	.quad	0x3faaee892da2c7c0              # double 0.052601134129317995
	.quad	0x3fee4130dc63218a              # double 0.94545786899929962
	.quad	0x3fe9e6bee2087c48              # double 0.80941719195460227
	.quad	0x3fe803925343ab17              # double 0.75043598425449687
	.quad	0x3fada9589a439cb0              # double 0.057932633238857334
	.quad	0x3fdd5b222e9f63ba              # double 0.45868734887113372
	.quad	0x3fb1a36f70b40460              # double 0.068900074973514247
	.quad	0x3fe35da2348e2e46              # double 0.60517988457417782
	.quad	0x3fd5a7a2b84f837a              # double 0.3383566665561869
	.quad	0x3f83ad7ac5449f40              # double 0.0096082297755654133
	.quad	0x3fe072ad31b6083f              # double 0.51399860104744011
	.quad	0x3fe8cab22d08d460              # double 0.77474316402243559
	.quad	0x3fe62d6572872a47              # double 0.6930415379404814
	.quad	0x3fe767eee89046a8              # double 0.73143716261457303
	.quad	0x3fdb4c775a9df3ec              # double 0.42654212807957381
	.quad	0x3fc97b7149e849d8              # double 0.19907966717489844
	.quad	0x3fe7628860cbdc96              # double 0.73077792077573878
	.quad	0x3fd1571602d1e2fe              # double 0.27094030642869871
	.quad	0x3fee5d1fdfbe7114              # double 0.94886773776991839
	.quad	0x3fece09d0d58467f              # double 0.90241863829051272
	.quad	0x3fda5f07b94bc344              # double 0.41205018134410332
	.quad	0x3fed00c5e2e77504              # double 0.90634435956204173
	.quad	0x3fec540a7afd3cb4              # double 0.8852589037068328
	.quad	0x3fd2539acb792148              # double 0.28635282392908268
	.quad	0x3fe64063105db831              # double 0.69535973736288359
	.quad	0x3f8e5201ac4efc80              # double 0.014804852553309766
	.quad	0x3feeb1e2667254ea              # double 0.9592144013319317
	.quad	0x3fddc55ebfc6bbf8              # double 0.4651715157332883
	.quad	0x3fefb5b1e223e6da              # double 0.99092954795852539
	.quad	0x3fee69bcd0ddb048              # double 0.95040741724143007
	.quad	0x3fbefc38dd0a06f8              # double 0.12103610416854937
	.quad	0x3fdb8a54a606a304              # double 0.43031803334683638
	.quad	0x3fe320faee66d412              # double 0.59777590334727138
	.quad	0x3fd1d233c12d896a              # double 0.2784547220709529
	.quad	0x3fe5cc6444bc3954              # double 0.68120015549519985
	.quad	0x3fefd527e19e7a5d              # double 0.99476999345990757
	.quad	0x3fe39ef571e0a501              # double 0.61315414659216583
	.quad	0x3fc2a2d3931654c8              # double 0.14559406930917462
	.quad	0x3f9f93b56d8d5800              # double 0.030836901484995849
	.quad	0x3feea94e69be0c5c              # double 0.95816727307136373
	.quad	0x3fe8158f32de2cf9              # double 0.7526317590249213
	.quad	0x3fe3e5b7ff212b7c              # double 0.62179183797830673
	.quad	0x3fe296a49a11f44c              # double 0.58088903514693291
	.quad	0x3fe6373d073bca06              # double 0.69424296772768979
	.quad	0x3fe0334493ead26c              # double 0.50625828638164938
	.quad	0x3fdb07675680f88e              # double 0.42232688377033234
	.quad	0x3fedee64cf6952d4              # double 0.93535080442469586
	.quad	0x3fc22d6bc5e06d74              # double 0.14201113855311187
	.quad	0x3fe926506248d254              # double 0.7859270019167277
	.quad	0x3fcc319b43b9aca4              # double 0.22026387030505135
	.quad	0x3facdfae74396b60              # double 0.056394054114852876
	.quad	0x3fcaa92da3ad3718              # double 0.20828791133902125
	.quad	0x3fc4f9399e7a9a80              # double 0.16385574568012728
	.quad	0x3fe248af2dbee2de              # double 0.57137259421059716
	.quad	0x3fe9b911dd1d6a24              # double 0.8038415259027869
	.quad	0x3fbfeee13deafea0              # double 0.1247387672583451
	.quad	0x3fdf8a69e837501c              # double 0.49282310178137023
	.quad	0x3fbb972e5b2acbf0              # double 0.10777559018860905
	.quad	0x3fe6fc2c3fd0cb14              # double 0.71828281845077635
	.quad	0x3fd8e079038052f6              # double 0.38870072690887925
	.quad	0x3fe280ece5d08f51              # double 0.57823796163254759
	.quad	0x3fdff88a95d8dda6              # double 0.49954476006993287
	.quad	0x3feea8aa75afa6fd              # double 0.95808909402441566
	.quad	0x3fd7fe6b3ba0dde2              # double 0.37490349600872552
	.quad	0x3fe01ec7aaf4c412              # double 0.5037573184000641
	.quad	0x3fd60204b4987812              # double 0.34387319217955892
	.quad	0x3fed9cf0fa7793a3              # double 0.9254078761992911
	.quad	0x3fed7351ae37898c              # double 0.9203270342516574
	.quad	0x3fce2392c9f101f8              # double 0.2354606138269586
	.quad	0x3fb5b3cd3bc4dcd8              # double 0.084774806110419987
	.quad	0x3fcaf856232aab54              # double 0.21070362774966134
	.quad	0x3fe0a59d4a176e74              # double 0.52021660300256523
	.quad	0x3fde6daf87866e98              # double 0.47544468150020114
	.quad	0x3fec07f2cdc74a97              # double 0.87597027007207628
	.quad	0x3fe464c6efa3b0f4              # double 0.63730189137052529
	.quad	0x3fd6a0085eb2db30              # double 0.3535176205436299
	.quad	0x3fbf7fa97a23df48              # double 0.12304171783386864
	.quad	0x3fecdb04017a2090              # double 0.90173530853737027
	.quad	0x3fd81f08e841651c              # double 0.3768942134971256
	.quad	0x3fd0a1990098b9da              # double 0.25986313875446643
	.quad	0x3fd8154dfb7224b4              # double 0.37630033068905822
	.quad	0x3fee76fffd1c0cc7              # double 0.95202636180365452
	.quad	0x3fe5fcf48f0270d8              # double 0.68712833339261703
	.quad	0x3f85226acf3c1dc0              # double 0.010319551896386225
	.quad	0x3fb50fbe0423b280              # double 0.082271457682233872
	.quad	0x3fe74dcd3d27b012              # double 0.72824727959005231
	.quad	0x3fbf705c02e95dc0              # double 0.12280821868022596
	.quad	0x3fe681008a2cfd85              # double 0.70324732768487819
	.quad	0x3fd4580a2ed4e472              # double 0.31787352155112736
	.quad	0x3fe25544564ff578              # double 0.57290856225851794
	.quad	0x3fe9447ca41d6c7c              # double 0.78961021474550774
	.quad	0x3fb53879a5eb1d78              # double 0.082892992980409974
	.quad	0x3fdc0c3d8a03421c              # double 0.4382470939426939
	.quad	0x3fa0dd1860e388d0              # double 0.032936822726485127
	.quad	0x3fea75bb57759f6f              # double 0.82687155801703038
	.quad	0x3fd6a550bc8310ba              # double 0.35384004983303508
	.quad	0x3fbe1e1eccaae9b8              # double 0.117647099464114
	.quad	0x3fdf5488ff4670a8              # double 0.4895346157952738
	.quad	0x3fec729c6a7119f3              # double 0.88899060048498624
	.quad	0x3fd2a6a9282bda7e              # double 0.2914221660898092
	.quad	0x3fd26c9d666ecdfc              # double 0.28787932398992644
	.quad	0x3fe7c89ee71fe6d9              # double 0.74323983327414134
	.quad	0x3fd7d2005c318d28              # double 0.37219246867444378
	.quad	0x3fe578d81c2b256d              # double 0.67100148679416594
	.quad	0x3fedac32e324550b              # double 0.92727035869271057
	.quad	0x3fadf20e9c8d3da0              # double 0.058487373934094977
	.quad	0x3fe4cbc2fbfb303d              # double 0.64987324919776024
	.quad	0x3fea04f1f244c07b              # double 0.81310365026548881
	.quad	0x3fe7adb1eee2191d              # double 0.73995300919412765
	.quad	0x3fc6f09fb0677a64              # double 0.17921825517165069
	.quad	0x3fe61640be30e813              # double 0.69021641871154527
	.quad	0x3fe48ae697232d68              # double 0.64195565718675329
	.quad	0x3fde19898c15a22c              # double 0.47030867271544952
	.quad	0x3fe8ad183fba1c3f              # double 0.7711297268550722
	.quad	0x3fdad89f409f907c              # double 0.4194715624892138
	.quad	0x3fe7d5f7871582b9              # double 0.74486900695418179
	.quad	0x3fe984ddd1994ce3              # double 0.79746905267020585
	.quad	0x3fcb49ac9f69645c              # double 0.2131858614327794
	.quad	0x3fe60670581ade30              # double 0.68828599174498173
	.quad	0x3fd78681a17c3b1c              # double 0.36758461732908798
	.quad	0x3fd11bf2b1982736              # double 0.26733081191251828
	.quad	0x3fe612a0e1628b44              # double 0.68977397938247309
	.quad	0x3fdceab30c5bafe8              # double 0.45182491499758592
	.quad	0x3fb5dc921a71af78              # double 0.085396892028880234
	.quad	0x3fecb31fe0e3df8c              # double 0.89686578677991368
	.quad	0x3fdcd54b8c4a98fe              # double 0.45051850033122764
	.quad	0x3fbf233bb857f020              # double 0.12163136721204681
	.quad	0x3fe3e8a760c79e06              # double 0.62215012457176111
	.quad	0x3fe6fadf4d113eb7              # double 0.71812405636042953
	.quad	0x3fcf200fd7dc1540              # double 0.24316595115684869
	.quad	0x3fcefe1e504d7c34              # double 0.24213007851628421
	.quad	0x3fdb417f446d67d6              # double 0.42587262804374626
	.quad	0x3feb10faf6abd64f              # double 0.84582279375053726
	.quad	0x3fd210f3799c1250              # double 0.28228461147253814
	.quad	0x3fc5536e919335f4              # double 0.16660863979488705
	.quad	0x3feecb7c8e5cc969              # double 0.96233966641584089
	.quad	0x3f92ccf38b1f1340              # double 0.018359952322288153
	.quad	0x3fbdf7bccf3fe420              # double 0.11706142482570714
	.quad	0x3fb07e05f6ca3938              # double 0.064422962905358427
	.quad	0x3fd29703b6f8e47a              # double 0.29046719425566148
	.quad	0x3fa9b730c3d1b8d0              # double 0.050225757507051605
	.quad	0x3fd0327e01199172              # double 0.25308179957780574
	.quad	0x3fdf980dcdcb7f48              # double 0.49365563485297459
	.quad	0x3fd8457b449ab8e2              # double 0.37924081515929065
	.quad	0x3fe8b84331b09036              # double 0.77249297814387918
	.quad	0x3fe1175fec27a487              # double 0.53410335659022301
	.quad	0x3fe3e5c04ee57479              # double 0.62179580125270129
	.quad	0x3fca3ffb74125d80              # double 0.20507758300366774
	.quad	0x3fbb830ba6019748              # double 0.10746834566961383
	.quad	0x3fe5ee2f5a28fb1f              # double 0.68532531365767457
	.quad	0x3fd74bd6a57c3aea              # double 0.36400381241484914
	.quad	0x3fd51c501dee6194              # double 0.32985308573690841
	.quad	0x3fe77f540f29e99f              # double 0.73429301225342047
	.quad	0x3fc2593455deed28              # double 0.14334730332289181
	.quad	0x3f7be5853d4f2780              # double 0.0068106846492329565
	.quad	0x3fe2bf1716f8c081              # double 0.58582643973024073
	.quad	0x3fe27ad79a30d0a8              # double 0.57749538531654299
	.quad	0x3fe07741785b3968              # double 0.51455758578394484
	.quad	0x3fb7436d1802e2a0              # double 0.090872591364027588
	.quad	0x3fc707cf9f296f28              # double 0.17992587348532507
	.quad	0x3fd192d6e70f8a1e              # double 0.27458736958047492
	.quad	0x3fc0b2fa4894784c              # double 0.13046196502631557
	.quad	0x3fe563e4ac0a7ecf              # double 0.66844400026089967
	.quad	0x3fd4fe42551d21ca              # double 0.3280187445821211
	.quad	0x3fd793c1fbff88ca              # double 0.36839341744611132
	.quad	0x3fe06d404f27bc1d              # double 0.51333632907870064
	.quad	0x3fcaa1e1cda1ac58              # double 0.20806524792291969
	.quad	0x3fe530dc15203191              # double 0.66221431852459223
	.quad	0x3fe9e9513e2976df              # double 0.80973112240800649
	.quad	0x3fe2142a69faff38              # double 0.56496163081462836
	.quad	0x3fb3a023a235ba10              # double 0.076662280179995656
	.quad	0x3fe422fdaa0db7a3              # double 0.62927134717550748
	.quad	0x3fe9c8efd1a09f0e              # double 0.80577841704232056
	.quad	0x3fe61476fac0d44b              # double 0.68999814009897287
	.quad	0x3faee45345013350              # double 0.060335733579086281
	.quad	0x3fed5192acf0ba2e              # double 0.9162076356640847
	.quad	0x3fe16dbe51dfb031              # double 0.54464641562436189
	.quad	0x3fdb2baa95e04d06              # double 0.4245401824602627
	.quad	0x3fe071ac53fa60e7              # double 0.51387611772500186
	.quad	0x3feec9f04dd15733              # double 0.96215071867729873
	.quad	0x3fe2e7bdb2a30d3e              # double 0.59078869714759441
	.quad	0x3fdf936904e95ef6              # double 0.4933722064938445
	.quad	0x3fe5d9b401ae837d              # double 0.68282509163337546
	.quad	0x3fee3e4ad3f9f700              # double 0.94510404016156713
	.quad	0x3feb6feed8fe93e6              # double 0.85741369611480134
	.quad	0x3fe72466865b89e4              # double 0.72319341890061795
	.quad	0x3fe4c25d08776ec9              # double 0.64872600225086174
	.quad	0x3fe062a362a9bfa8              # double 0.51204079885609577
	.quad	0x3febb00a47c73c5a              # double 0.86523927706901849
	.quad	0x3fee0bc1abda1edb              # double 0.93893512310838945
	.quad	0x3fe11a8483146970              # double 0.53448701478491323
	.quad	0x3fb8b80c94332200              # double 0.096558366948677588
	.quad	0x3fe89c1f1f3eacb7              # double 0.76905780889992215
	.quad	0x3fdc66ab36cc7b64              # double 0.44376640654984656
	.quad	0x3febc0a46ccc0b0a              # double 0.86726590394423053
	.quad	0x3fe8df0ee561f04f              # double 0.77722878266605189
	.quad	0x3fdbd0d230a469cc              # double 0.4346204257032269
	.quad	0x3fe5427c56e349b3              # double 0.66436593027383706
	.quad	0x3fef88faa3814692              # double 0.98547107634131437
	.quad	0x3feba3148a1efd95              # double 0.86365725495118062
	.quad	0x3fd23f436b6c8078              # double 0.28511128893479265
	.quad	0x3fe7c2d79cc9942f              # double 0.74253445265333606
	.quad	0x3fe8ac9fd0b2b828              # double 0.77107229958869983
	.quad	0x3fdaab391212eaee              # double 0.4167006184103873
	.quad	0x3fc09a4077ba8adc              # double 0.12970739217879312
	.quad	0x3fe9389d0b6ca08e              # double 0.78816082221330119
	.quad	0x3feeea9d0b658bf6              # double 0.96613933778678418
	.quad	0x3fe8d92f4bf5fd4b              # double 0.77651181064713037
	.quad	0x3fd468af38e8404c              # double 0.31888943250033175
	.quad	0x3feb5352d6588110              # double 0.85392133583448704
	.quad	0x3fded82c1870785e              # double 0.48194410692838641
	.quad	0x3fdb1520c1703b30              # double 0.42316454782933288
	.quad	0x3fd0d5a6365e6b44              # double 0.26304011640029423
	.quad	0x3fef4b0d91810402              # double 0.97791174334281572
	.quad	0x3fe2304ee1bc4470              # double 0.56839698876332356
	.quad	0x3fe2e3fbf4084c2f              # double 0.59033010160999833
	.quad	0x3fecb8a0bacf3d53              # double 0.89753757940517642
	.quad	0x3fdcd7f1c8667326              # double 0.4506802041085386
	.quad	0x3fdd9b95f3deb72c              # double 0.46262120070865609
	.quad	0x3fe24ed1d7cf759d              # double 0.57212154531923753
	.quad	0x3fedbeeb1d829e8b              # double 0.92955547107426761
	.quad	0x3fbe27b608230fa0              # double 0.1177934427133196
	.quad	0x3fd5fd6be41c9fc8              # double 0.34359261776489491
	.quad	0x3fd8de24b17140d6              # double 0.38855855301245634
	.quad	0x3fcb0944b9859a34              # double 0.21122035082517387
	.quad	0x3fd1361dc071bd62              # double 0.26892799180401117
	.quad	0x3fedc5044997ad4c              # double 0.93029989598782369
	.quad	0x3fefe0e69c3b3d09              # double 0.99620371355004622
	.quad	0x3fe92d8f902fd9f8              # double 0.78681162034518959
	.quad	0x3fd7ae38c1775f5c              # double 0.3700086488074612
	.quad	0x3fe18e6f3929f9bb              # double 0.54863701977574608
	.quad	0x3fc174dc0b9100d8              # double 0.13637877049223479
	.quad	0x3fe54a225fc4954c              # double 0.66529959396999905
	.quad	0x3fc1fdba7672db3c              # double 0.14055567535043589
	.quad	0x3fed2816236e7a25              # double 0.91114336891388759
	.quad	0x3fe7e4b85847cd6d              # double 0.74666993372231405
	.quad	0x3fd4313c02839c20              # double 0.31550503011243514
	.quad	0x3fbf5c966485e760              # double 0.12250652269531548
	.quad	0x3fe4446c051e2ce0              # double 0.63335228919586584
	.quad	0x3fde4b4d8c6c306a              # double 0.47334612572809098
	.quad	0x3fb4438d5ffc5ae0              # double 0.079155765470527495
	.quad	0x3fe5a9f2000dd908              # double 0.676995277505541
	.quad	0x3fe993f4728368dd              # double 0.79931089750177942
	.quad	0x3f731c0a35d4a300              # double 0.0046654127921008648
	.quad	0x3feb6f49f6b17f26              # double 0.85733507330221381
	.quad	0x3fedf49418a97b1b              # double 0.93610577408603335
	.quad	0x3fda556c3f059592              # double 0.41146379618143059
	.quad	0x3fa28db1e1a51d10              # double 0.036237295908501221
	.quad	0x3fdf093c38194526              # double 0.4849386737669924
	.quad	0x3fde7bfc4889484e              # double 0.47631747325533957
	.quad	0x3feeaa8d589e5545              # double 0.95831935222910458
	.quad	0x3fea2e87a24237b4              # double 0.81817990962166797
	.quad	0x3fd9e977b0dbfb4c              # double 0.40487472793022472
	.quad	0x3fd64905f18b2368              # double 0.3482069834540682
	.quad	0x3fd5d800aba05564              # double 0.34130875358945034
	.quad	0x3fece71a581c0f80              # double 0.90321080407055376
	.quad	0x3fe86348ce9385b3              # double 0.7621196779911571
	.quad	0x3fd87c6912e2b774              # double 0.38259341091440224
	.quad	0x3fd3aa178c59ef38              # double 0.3072565909021594
	.quad	0x3fcaa75b3437a308              # double 0.20823230790781388
	.quad	0x3fe535c3e3b82f76              # double 0.66281313396892361
	.quad	0x3fde584d016f1f40              # double 0.47413945331617313
	.quad	0x3fb37c23988fb368              # double 0.076112961527270095
	.quad	0x3fe88806b29c67b5              # double 0.7666047562117827
	.quad	0x3fe4f921c182ad8a              # double 0.65541160388004127
	.quad	0x3f9044af7ab45180              # double 0.015887014259605703
	.quad	0x3fe7e76a659d7fd6              # double 0.74699897619938826
	.quad	0x3fdb5fa339e39d62              # double 0.42771225598558804
	.quad	0x3fecc6d0dcc79742              # double 0.89926951523805365
	.quad	0x3fc8856b47f73a18              # double 0.1915716267962615
	.quad	0x3fc4948ba67df52c              # double 0.16078324918263698
	.quad	0x3fdcee3534e6cbf6              # double 0.45203905264059985
	.quad	0x3fde798bec4bf382              # double 0.47616861415718159
	.quad	0x3febfbeae3f0275a              # double 0.87450165290031667
	.quad	0x3fab9b3542297e70              # double 0.053918518377710778
	.quad	0x3fe69d331a1152d8              # double 0.70668940631238808
	.quad	0x3fc97fab0a1cbc3c              # double 0.19920862191927025
	.quad	0x3fe29e612bf13341              # double 0.58183344442804963
	.quad	0x3fde2cea07be8dac              # double 0.47149134403499704
	.quad	0x3fe80470e52237c7              # double 0.75054211380642577
	.quad	0x3fecd9db085c1274              # double 0.90159370072122024
	.quad	0x3fd21b3177c39a6a              # double 0.28290974326811258
	.quad	0x3fb94874d4ad6498              # double 0.098761846469090364
	.quad	0x3feccc0ad4ab3a77              # double 0.89990750824820409
	.quad	0x3fd7f61cc065d33a              # double 0.37439650334208674
	.quad	0x3fec9610d74fe2a7              # double 0.89331857731948083
	.quad	0x3fc3b028d505a108              # double 0.15381346131767537
	.quad	0x3fd3c3e559c3c430              # double 0.30883153692326726
	.quad	0x3fe0e7fe484a1ff1              # double 0.52831949347546303
	.quad	0x3fd457bb7d845366              # double 0.31785475976476218
	.quad	0x3fd3f66cc7a93bdc              # double 0.31191558359290439
	.quad	0x3fe31e69c13208dc              # double 0.59746253713117481
	.quad	0x3fc17f9047dae3c8              # double 0.13670543201967988
	.quad	0x3fcf882d82d6a470              # double 0.24634331596942927
	.quad	0x3fe850d752729970              # double 0.75986829855973603
	.quad	0x3fdfcbcab4965a00              # double 0.49681346545676774
	.quad	0x3fc8f4f0c94a8158              # double 0.19497499302543519
	.quad	0x3fd18886870676b0              # double 0.27395785509166171
	.quad	0x3fd7de50cdb05b50              # double 0.37294406973653782
	.quad	0x3fbb549cda290838              # double 0.10675983740023376
	.quad	0x3fe798ca0a7749ef              # double 0.7374010281003488
	.quad	0x3fe66a465f752e4a              # double 0.70047300952996605
	.quad	0x3fc63c4e4f923fe0              # double 0.17371539006535297
	.quad	0x3faa1039bfee8a50              # double 0.050905041388678129
	.quad	0x3fec5c19d024bed5              # double 0.88624277737650436
	.quad	0x3fedc771c6652ebd              # double 0.9305962443263166
	.quad	0x3fa6e9dc1e7dfad0              # double 0.044752958986455149
	.quad	0x3fc13c80fd1d4990              # double 0.13465893134214157
	.quad	0x3fe54baa56707af6              # double 0.66548649676027938
	.quad	0x3fddf43fbb1eadde              # double 0.46803277276441502
	.quad	0x3fda285fa5af656a              # double 0.40871421032132693
	.quad	0x3fddfc7985e4d712              # double 0.46853483272148921
	.quad	0x3fe3e7da4d8c99ba              # double 0.62205233713466801
	.quad	0x3fea164c6a6bd0e8              # double 0.81522198472387419
	.quad	0x3fe1370a400c771e              # double 0.53796875485906859
	.quad	0x3fdb364746f6501a              # double 0.42518789224527753
	.quad	0x3fb28e1cf781dce0              # double 0.072480974604207216
	.quad	0x3fe359e5d2519de1              # double 0.60472384527104961
	.quad	0x3fdcdc2dbc290784              # double 0.45093863844896753
	.quad	0x3feb9b2d54318c67              # double 0.86269251293232407
	.quad	0x3fe980ee6e60fc7b              # double 0.79698869284028662
	.quad	0x3f97ccffb413b5e0              # double 0.023242946020152533
	.quad	0x3fe7c485d80caae2              # double 0.74273960301556152
	.quad	0x3fd7f088a44123f6              # double 0.37405601540063971
	.quad	0x3fe9545adfbaba6b              # double 0.79154723832273299
	.quad	0x3fc7748181f3d954              # double 0.18324297757471675
	.quad	0x3fe2920776416be2              # double 0.58032582375323849
	.quad	0x3fbcbe9fc565e348              # double 0.11228369302069752
	.quad	0x3fd26b3164c77d62              # double 0.28779253808712302
	.quad	0x3fe511b0b5a84e1d              # double 0.65840945701569675
	.quad	0x3fe8e5e8509633ce              # double 0.77806487788768108
	.quad	0x3feaaecbfbf9aabe              # double 0.83383750165861392
	.quad	0x3fef2978aee4dcf9              # double 0.97381242903693909
	.quad	0x3fe92d907959bf2d              # double 0.78681205464633808
	.quad	0x3facfdf92756bcb0              # double 0.056625162174321786
	.quad	0x3fe3651754e3ff7d              # double 0.606090226938235
	.quad	0x3fdb21e3d235dbfe              # double 0.42394347694738588
	.quad	0x3fe91844a1250cd7              # double 0.7842124125822022
	.quad	0x3fe4440942fb351c              # double 0.6333051975467785
	.quad	0x3fb4d16f3d6a8260              # double 0.081320717329171455
	.quad	0x3fd60012c0769fa8              # double 0.34375447077990851
	.quad	0x3fe8331bf3d440d0              # double 0.75623891470788784
	.quad	0x3fea5702497e9c9a              # double 0.82312120775613384
	.quad	0x3feca54404e00393              # double 0.8951740355697545
	.quad	0x3fb7ccf833ca5da0              # double 0.092971336979067676
	.quad	0x3fe4b83232671b5a              # double 0.64748487324036863
	.quad	0x3fc5223b08fc3d34              # double 0.165107135188444
	.quad	0x3fd08d74152d8b60              # double 0.25863363330988953
	.quad	0x3fdee00f83e709cc              # double 0.48242557412245612
	.quad	0x3fda39ca587b44ea              # double 0.4097772468640658
	.quad	0x3feb5780a395ba2b              # double 0.85443145704431822
	.quad	0x3feef248a57f738a              # double 0.96707565616417068
	.quad	0x3fe24d263a281c6a              # double 0.57191764219977625
	.quad	0x3fefb27bfe89f1f7              # double 0.99053764071101013
	.quad	0x3fec788c2958a6b3              # double 0.8897152717156217
	.quad	0x3fe7964232b5c147              # double 0.73709211258214047
	.quad	0x3fe43804a2e05cf7              # double 0.63183814822960371
	.quad	0x3fe88915342586f6              # double 0.76673374352341628
	.quad	0x3fd72aca3684c980              # double 0.36198668788997423
	.quad	0x3fd272688561046c              # double 0.28823292756357577
	.quad	0x3fe23d37e5674157              # double 0.56997294240322105
	.quad	0x3fc1a5e38e8db170              # double 0.1378750272809941
	.quad	0x3fc94b685a7cbc8c              # double 0.19761375826189853
	.quad	0x3fd9e6fa9df5a72c              # double 0.40472283769360007
	.quad	0x3fda0135ed2b26b4              # double 0.40632389222137566
	.quad	0x3fd7b9137a8601e4              # double 0.37067114796812306
	.quad	0x3fe9fafeb4fa52e3              # double 0.81188903186065564
	.quad	0x3fe3cbb63e7e10d1              # double 0.61861717420154083
	.quad	0x3fd8ebe02d800bde              # double 0.38939670985581454
	.quad	0x3fe4db8a0d88dcf6              # double 0.65179922717552929
	.quad	0x3fce6a754aef4a44              # double 0.23762384566232886
	.quad	0x3fed74ffda45ff11              # double 0.92053215629127483
	.quad	0x3fcb8252798811bc              # double 0.2149146169105175
	.quad	0x3fe4b8c3ae1dcef8              # double 0.64755424506299075
	.quad	0x3feebded30bbdaf7              # double 0.96068439024278873
	.quad	0x3fddd3ddcf6e0278              # double 0.46605630165871714
	.quad	0x3fedfaee882fbb91              # double 0.9368813190356936
	.quad	0x3fd3fe2c3d55b1fa              # double 0.31238847722741492
	.quad	0x3fe45130a1db4f67              # double 0.63491088497765424
	.quad	0x3fe032cb6d4df026              # double 0.50620051716351067
	.quad	0x3fed59bf51172a9c              # double 0.91720548475253194
	.quad	0x3fe2abe87506ce49              # double 0.58348486763720431
	.quad	0x3fec3c2738e9c094              # double 0.8823429214080698
	.quad	0x3fe5efaa44aa46b8              # double 0.68550599490318742
	.quad	0x3fc9c17cbf89aec4              # double 0.20121726372177851
	.quad	0x3fabfc8556339040              # double 0.054660956165918595
	.quad	0x3fd3040ab5f38f82              # double 0.29712169426624524
	.quad	0x3fe4308000c1feff              # double 0.63092041156775724
	.quad	0x3fd211968cf9011c              # double 0.28232349173414817
	.quad	0x3fd49e36a0b32ff4              # double 0.32215657895426308
	.quad	0x3fec23e77ffd1490              # double 0.87938284871838057
	.quad	0x3fee77dbbeb7dd59              # double 0.95213114976551616
	.quad	0x3fe1abea30d22fa8              # double 0.55223569426879227
	.quad	0x3fecb129f64ee91e              # double 0.89662645442084332
	.quad	0x3fe9188abf7e5d3f              # double 0.78424584771247641
	.quad	0x3fea5f6e92dcf7c8              # double 0.82414940532884717
	.quad	0x3f390f5d021f6800              # double 3.8238545141455749E-4
	.quad	0x3fe860139dbc6c0c              # double 0.76172810371224519
	.quad	0x3fdcf1556cf757c2              # double 0.45222983971813957
	.quad	0x3fee7ae90accc208              # double 0.95250370129912287
	.quad	0x3fb5859cb0bb5498              # double 0.084070008418466791
	.quad	0x3fc1dc94600b2740              # double 0.13954405488612487
	.quad	0x3febf10b076f9334              # double 0.87317420437157133
	.quad	0x3fed00e5705db431              # double 0.90635940500727064
	.quad	0x3fbebcfd96b49f58              # double 0.12007126740774987
	.quad	0x3fd109e30f146116              # double 0.26622845146768392
	.quad	0x3fad87b5f202f750              # double 0.057676015655927615
	.quad	0x3fda5231b10297fa              # double 0.41126673017640736
	.quad	0x3fe08d659f249441              # double 0.51726037104220535
	.quad	0x3fd74aca5ae55070              # double 0.36393984676875046
	.quad	0x3fec4e0f86452603              # double 0.88452888702994448
	.quad	0x3fe1a073599e5b4a              # double 0.55083625320080754
	.quad	0x3fd6aa62e2b94f72              # double 0.35414955273630888
	.quad	0x3fed8d423ea74219              # double 0.92349350201590419
	.quad	0x3feee18bf852126c              # double 0.96503256321063934
	.quad	0x3febfad2e7c4b265              # double 0.8743681456304101
	.quad	0x3fed0af6dd0122c7              # double 0.90758841671876034
	.quad	0x3fe3906db87e0c29              # double 0.61138044389406787
	.quad	0x3fe936eb34f3c81f              # double 0.78795395223847098
	.quad	0x3fdc19975fb3eee0              # double 0.43906196924193175
	.quad	0x3fb37fbc85f21738              # double 0.076167853070811087
	.quad	0x3fee27c76ffcf748              # double 0.94235584137616346
	.quad	0x3fc5f76b3071520c              # double 0.17161311974872751
	.quad	0x3fc854f51749b9c8              # double 0.19009269368275583
	.quad	0x3fc93485c89488cc              # double 0.19691536230045015
	.quad	0x3fe1038d1b8eb1fe              # double 0.53168349630647049
	.quad	0x3fed13dc0df08311              # double 0.90867426607664659
	.quad	0x3fe65c3850d68a0b              # double 0.69875732220344966
	.quad	0x3fe70d7e812a9d2e              # double 0.72039723613571538
	.quad	0x3fdd108b04c846e2              # double 0.45413470713638848
	.quad	0x3fad16c3e4129920              # double 0.056814309683703934
	.quad	0x3fb323d0c51a8390              # double 0.074765251275051847
	.quad	0x3fef29696cae22ae              # double 0.97380515314678973
	.quad	0x3fe2d1e338fd1cca              # double 0.58812104349717598
	.quad	0x3fc0eb4348fabda8              # double 0.13217965186548253
	.quad	0x3fa0c29854a71a90              # double 0.032734642346942455
	.quad	0x3fe9e419977f494f              # double 0.80909423436450278
	.quad	0x3fec2cf65206a18d              # double 0.8804885484760675
	.quad	0x3fd2bdb59ebf5292              # double 0.29282894613906152
	.quad	0x3fe520257eebd8fb              # double 0.66017412938415931
	.quad	0x3fe6976762532a64              # double 0.70598191455912884
	.quad	0x3fefbb9b6a2fa5b7              # double 0.9916512559840872
	.quad	0x3fea242d4edaf240              # double 0.8169161358014847
	.quad	0x3fee698a9be1ec23              # double 0.95038347669413203
	.quad	0x3fefc3d72ad53c01              # double 0.99265631070909432
	.quad	0x3fda45ef5b9a51e6              # double 0.41051849313342215
	.quad	0x3f91a36598087c40              # double 0.017224872021071258
	.quad	0x3fe66a95bc114f91              # double 0.70051085216481301
	.quad	0x3fef18b7421a7b77              # double 0.971767071827215
	.quad	0x3fe1a9b802df38d7              # double 0.55196762619905371
	.quad	0x3fd89c5302710f78              # double 0.38454127539102201
	.quad	0x3fef3aedb776bb27              # double 0.97594343025943863
	.quad	0x3fd64874cfde556a              # double 0.34817238139779383
	.quad	0x3feccc01cfa879fe              # double 0.8999032073805322
	.quad	0x3f50a65ffd4c5c00              # double 0.001016229381269218
	.quad	0x3fc8ae4e5b0be034              # double 0.19281939931511405
	.quad	0x3fe0aa7df4915bfe              # double 0.52081201331282023
	.quad	0x3fe58878a39ede68              # double 0.67290908772606617
	.quad	0x3fbfad74a6bcdc00              # double 0.12374047346825989
	.quad	0x3fb9f1dff96bf700              # double 0.10134696807287114
	.quad	0x3fd4aa68e38e008e              # double 0.32290098402155187
	.quad	0x3fb4166ae84ee2c0              # double 0.078467065540176684
	.quad	0x3fd7455dff76fed0              # double 0.36360883662926557
	.quad	0x3fdf7a74bbd22cf0              # double 0.49184912053961138
	.quad	0x3fd4c4414073b87e              # double 0.32447844785827573
	.quad	0x3fdc0a40e6338928              # double 0.43812582474324069
	.quad	0x3fdf4c867505511c              # double 0.48904572894868337
	.quad	0x3f88d93e38801680              # double 0.012133108233693735
	.quad	0x3fddcb711a8fa2b0              # double 0.46554210275511831
	.quad	0x3fe5a55969e37ac9              # double 0.67643423730245289
	.quad	0x3fee5b9ead021d28              # double 0.94868406096148749
	.quad	0x3fc266fe0c7d35e8              # double 0.14376807794398805
	.quad	0x3fc248048f1af968              # double 0.14282280910078815
	.quad	0x3febda335e257e9f              # double 0.87038582218152161
	.quad	0x3fef47dfb3af60d8              # double 0.97752366156330605
	.quad	0x3faa4ac5eff8ac80              # double 0.051351724189168557
	.quad	0x3feb21ef00be7b04              # double 0.8478922857792388
	.quad	0x3fe3cabd6fa0c816              # double 0.61849853327135196
	.quad	0x3fdda737922740dc              # double 0.46333112023149936
	.quad	0x3fc0cb853091f648              # double 0.13121094581213044
	.quad	0x3fe7c93a738d5132              # double 0.74331400460008568
	.quad	0x3fe7f02d8838ff63              # double 0.74806858640657159
	.quad	0x3fdd30ef31c10106              # double 0.45611171587735588
	.quad	0x3fc25b628792018c              # double 0.14341384524960821
	.quad	0x3fe0345bdddeba72              # double 0.50639146169653615
	.quad	0x3fecfb90f077e55f              # double 0.90570876089547514
	.quad	0x3fe1bc284d7c67d4              # double 0.55421843656517433
	.quad	0x3fee4443bb0ad926              # double 0.94583307773317382
	.quad	0x3fddde72b715c296              # double 0.46670215491671152
	.quad	0x3fe662a2d8321c06              # double 0.69954054094057549
	.quad	0x3fde3bbbcc828824              # double 0.47239584895771913
	.quad	0x3fedfa96cad0e147              # double 0.93683948147285256
	.quad	0x3fbb161c5d8ea500              # double 0.10580613407241302
	.quad	0x3fcb35429a72e914              # double 0.21256287137459451
	.quad	0x3fb54e9d1f0b2e08              # double 0.083230800704022667
	.quad	0x3fd035c941a08bca              # double 0.2532828465356799
	.quad	0x3fe9cbb1d5e8db4a              # double 0.80611507205217348
	.quad	0x3fee4bd744256f1f              # double 0.9467579203587525
	.quad	0x3fad9cd461601e70              # double 0.057837139975217222
	.quad	0x3fe417c95c4e2578              # double 0.62790363338824218
	.quad	0x3fdebdaf3153ba74              # double 0.48032741372200083
	.quad	0x3fd8a387a6d3e2aa              # double 0.38498107234731072
	.quad	0x3feed43065397bc1              # double 0.9634019829790007
	.quad	0x3fdedf6d43c1c164              # double 0.48238689057236273
	.quad	0x3fd8b01521698a56              # double 0.38574722540775974
	.quad	0x3fee4a24ad17c812              # double 0.94655069167333949
	.quad	0x3fe654931c5651c5              # double 0.69782405409437642
	.quad	0x3fd42f016b09323e              # double 0.31536899044730038
	.quad	0x3fee6c00755d7672              # double 0.95068381235951294
	.quad	0x3fe92f613ace235a              # double 0.78703366742511638
	.quad	0x3fbf7e0406cc6bb0              # double 0.12301659742335747
	.quad	0x3fe2b6cce6286d51              # double 0.58481450035780302
	.quad	0x3fe35ca3dfebcabe              # double 0.60505861029226771
	.quad	0x3fea2acdbc3892b3              # double 0.81772505533134277
	.quad	0x3fd3e2c8b0b54b32              # double 0.3107167936006362
	.quad	0x3faf951b87024160              # double 0.061684475164954788
	.quad	0x3fe92abab22a4d4a              # double 0.78646597669504925
	.quad	0x3fc4bdd0a28900ec              # double 0.1620426934841882
	.quad	0x3fbb051cc4f65318              # double 0.10554675873420327
	.quad	0x3fec10ba1f1119a2              # double 0.87704187457784522
	.quad	0x3fd88ecd204d0c56              # double 0.38371589807883788
	.quad	0x3fdf2c585bb48276              # double 0.48708161311700537
	.quad	0x3fe76ec98516864d              # double 0.7322738265394918
	.quad	0x3fd950b7c893c028              # double 0.3955516299020041
	.quad	0x3fcf5a8f0b722980              # double 0.24495113428958959
	.quad	0x3feadbaf6c40fc74              # double 0.8393170465786981
	.quad	0x3fd851f33da03e10              # double 0.3800018407646073
	.quad	0x3fefb0b345d41867              # double 0.99031985891703022
	.quad	0x3fcd39ea5a569cc0              # double 0.2283299389939426
	.quad	0x3fefcc242b95c1c2              # double 0.99366959107106134
	.quad	0x3fd9b4d95b84eff6              # double 0.40166315019064258
	.quad	0x3fedbba46cf0a906              # double 0.92915555264815519
	.quad	0x3febcefbd0e8ec8f              # double 0.86901655962664559
	.quad	0x3feb678c875986f1              # double 0.85639025149813908
	.quad	0x3fcd88ec4eb2b89c              # double 0.23074106066400624
	.quad	0x3fcfd1a14ee67bd0              # double 0.24858490326457039
	.quad	0x3fe9f9ea92940c82              # double 0.81175736073090854
	.quad	0x3fe0a2c0621616a8              # double 0.51986712605931462
	.quad	0x3fdc0bc1e2826594              # double 0.43821761245779922
	.quad	0x3fe3cd7606b354cf              # double 0.61883069332784568
	.quad	0x3feaf46604a1a98e              # double 0.84233380226696553
	.quad	0x3fe21f10da689ed0              # double 0.5662922158998871
	.quad	0x3fb3cd8e6d8c7bf8              # double 0.077355291123680447
	.quad	0x3fc9f4df7b5273f0              # double 0.20278543016038908
	.quad	0x3fe3fa75343425b3              # double 0.6243234653094788
	.quad	0x3fc55b8e7ce07a78              # double 0.16685658547881466
	.quad	0x3fe8e2ebfb27f5a1              # double 0.77770041517185373
	.quad	0x3fe5b56097f0487e              # double 0.67839078593739521
	.quad	0x3fd2683cd32eb3b4              # double 0.2876121580437101
	.quad	0x3fdd6301e12a845e              # double 0.45916792858958455
	.quad	0x3fe9d5b66884837d              # double 0.80733795560455202
	.quad	0x3fdc9ca67f15dee6              # double 0.44706118021666297
	.quad	0x3fcde40264a449e0              # double 0.23352079309604701
	.quad	0x3fe3cc7b56feec31              # double 0.61871115676274802
	.quad	0x3f9b986ec7cb67a0              # double 0.026948672241679739
	.quad	0x3fe3b27ad5650ca5              # double 0.61553708723694867
	.quad	0x3fe01b16aa609e6b              # double 0.50330670620765028
	.quad	0x3fe4156daa03d9ed              # double 0.62761576849044121
	.quad	0x3fd37912ee1d4036              # double 0.30426476720186046
	.quad	0x3fe417f0f775c383              # double 0.62792251903566443
	.quad	0x3feffcb319a040f6              # double 0.99959712033344661
	.quad	0x3fe75fa5a1dc0f5a              # double 0.73042565930561953
	.quad	0x3fed9f37c27ac653              # double 0.92568576797766366
	.quad	0x3fd3b8e1bcd88146              # double 0.30815928880658239
	.quad	0x3fec41857473bb95              # double 0.88299820656344485
	.quad	0x3fd6a4d77b883af6              # double 0.35381114066778652
	.quad	0x3fcda1c0eabdf09c              # double 0.23149882757195861
	.quad	0x3fdde30054878bd2              # double 0.46698005919296037
	.quad	0x3fe54e56a56b0d57              # double 0.6658128004859617
	.quad	0x3fbd85e4a0859100              # double 0.11532429617870221
	.quad	0x3feea3f19f301f24              # double 0.95751267520333671
	.quad	0x3feaf2d64941c357              # double 0.8421431952284405
	.quad	0x3fd6c480464e44fe              # double 0.35574347368044801
	.quad	0x3fde038544a66002              # double 0.46896487907497442
	.quad	0x3f93732647c64f20              # double 0.018993948107506431
	.quad	0x3fed4405f3a232d3              # double 0.91455361923871192
	.quad	0x3feaeda894bf6d8c              # double 0.84151104976938162
	.quad	0x3fc3ac17ab5e04e4              # double 0.15368934505025955
	.quad	0x3fe7acd8256a237b              # double 0.73984916026630232
	.quad	0x3fea2f6e06af4c2c              # double 0.81828976922623075
	.quad	0x3fe4497b82a64a90              # double 0.63397002713675654
	.quad	0x3fc50a140fa61f94              # double 0.16437006725413694
	.quad	0x3fe7284f05f0590f              # double 0.72367049369748482
	.quad	0x3fdd53ae4d64b458              # double 0.45823247487971264
	.quad	0x3fe05e8eea8c2692              # double 0.51154275713016006
	.quad	0x3fb1d4f6de57ea30              # double 0.069655827792225677
	.quad	0x3fb7ba2f532e5b88              # double 0.092684705551034807
	.quad	0x3fe8f04d44d3c9a8              # double 0.77933371966201026
	.quad	0x3fe0fcd224b45051              # double 0.53086192292040313
	.quad	0x3fe4d6f24db7de1c              # double 0.65123858622877462
	.quad	0x3fe90b859c42a57b              # double 0.78265648383710074
	.quad	0x3fb4a36e8e4efa70              # double 0.080618772261894511
	.quad	0x3fea060848048ba2              # double 0.8132363707157888
	.quad	0x3fe2f450daae173c              # double 0.59232371054597577
	.quad	0x3fe28873fb6d87e9              # double 0.579156867094068
	.quad	0x3fecfc1b2d242ef7              # double 0.9057746774355725
	.quad	0x3fe2845a8c5cec0e              # double 0.57865645804065635
	.quad	0x3fec1e67a17c0375              # double 0.87871152439048095
	.quad	0x3fec9e8cf4a5663c              # double 0.89435432226600353
	.quad	0x3fc610f585029290              # double 0.17239254946357052
	.quad	0x3fc6ab6cea4563d4              # double 0.1771064895536073
	.quad	0x3fdb2068a69c087c              # double 0.42385307569941921
	.quad	0x3fed632375d3fa6c              # double 0.91835186970986404
	.quad	0x3fe379396c23667e              # double 0.60854788895376521
	.quad	0x3fe43db71ee4a275              # double 0.63253360780534129
	.quad	0x3fed0a6f8efb8975              # double 0.90752389837534386
	.quad	0x3feb9d2e8d81d12c              # double 0.86293723714928693
	.quad	0x3fdd3bcef21b7e9c              # double 0.45677541392613263
	.quad	0x3fda89137293a222              # double 0.41461645306711337
	.quad	0x3feec8f9fc1d2b7e              # double 0.96203326455120908
	.quad	0x3f9b28bed66bf0c0              # double 0.026522619092234079
	.quad	0x3fd7a5a05783f19c              # double 0.36948402925897894
	.quad	0x3fbb9e75da2ad400              # double 0.10788666321134599
	.quad	0x3fd62d398d82c2ac              # double 0.34651030368244551
	.quad	0x3fcbe8a26aff6b68              # double 0.21803693985460915
	.quad	0x3fd361e1e3999004              # double 0.30284926630542963
	.quad	0x3fc332beecd2efe8              # double 0.14998613895102086
	.quad	0x3f99cae8277564c0              # double 0.025188090713844202
	.quad	0x3fde1ab352f17e92              # double 0.47037966823516186
	.quad	0x3fec7e9be5504b95              # double 0.89045519626448544
	.quad	0x3fe981244a10c097              # double 0.79701437440782541
	.quad	0x3fe5bf98a4cf19f4              # double 0.67963821591621221
	.quad	0x3fe42b869e1b62f8              # double 0.63031321411389651
	.quad	0x3fed5525500feb02              # double 0.91664376866478414
	.quad	0x3fc7d5c4b3dfccf8              # double 0.18621119292183841
	.quad	0x3fd11399345b29f0              # double 0.26682119477177846
	.quad	0x3fef115c0336b4d2              # double 0.97086907031703107
	.quad	0x3febe6694a204cab              # double 0.87187637784736205
	.quad	0x3fec385d6fafb325              # double 0.88188049138770863
	.quad	0x3fe7f43b5baa3a07              # double 0.7485634603816046
	.quad	0x3fec43ef842b9ada              # double 0.88329292120473757
	.quad	0x3fd8d0a224e08388              # double 0.38773397065420356
	.quad	0x3fde44898d5692ca              # double 0.47293318560177211
	.quad	0x3fdb59d49ca34ac8              # double 0.42735781952539442
	.quad	0x3fe9d9fbd9790fe8              # double 0.80785934901404932
	.quad	0x3fef950e452e5c48              # double 0.98694528114254698
	.quad	0x3fe59bab17224a31              # double 0.67525248068188237
	.quad	0x3fe62c829e9f3c5c              # double 0.69293337803709276
	.quad	0x3fe5f3be050570b9              # double 0.6860036943503679
	.quad	0x3fe220368bab0774              # double 0.56643225935861929
	.quad	0x3fecd36042b57b33              # double 0.90080273655971721
	.quad	0x3fe0e3ed7753ffde              # double 0.52782319360994356
	.quad	0x3fe1cc6ee3dabf8f              # double 0.5562052202494544
	.quad	0x3fca196c8c84e0b4              # double 0.20390087949067992
	.quad	0x3fd59060bcd5ef96              # double 0.33693712655053198
	.quad	0x3fe17173e8dbfb7c              # double 0.54509921531995031
	.quad	0x3fef5bbc127e581d              # double 0.97994807827012986
	.quad	0x3fd7dc3e93f3a77e              # double 0.37281765411773182
	.quad	0x3fe407fcba4657fd              # double 0.62597500211518275
	.quad	0x3fe3bf14c1a996f3              # double 0.61707532715510494
	.quad	0x3fe483532814864e              # double 0.64103086307677315
	.quad	0x3fc4c19cd2c285b4              # double 0.16215858736999922
	.quad	0x3fd2391b98f52cfe              # double 0.28473558366086127
	.quad	0x3fe0b1b6bcae5816              # double 0.5216935811211012
	.quad	0x3fe4e7103827df51              # double 0.65320597618026899
	.quad	0x3fe7dce11f4bf994              # double 0.74571281540538559
	.quad	0x3fd29490d7303254              # double 0.29031773581008236
	.quad	0x3fea98f2c6b125ad              # double 0.83117045218494001
	.quad	0x3fed75ef1712c74d              # double 0.92064623362078069
	.quad	0x3fbc05912d766f08              # double 0.10945994720389873
	.quad	0x3fe04f468e4a2c4c              # double 0.50967719832386527
	.quad	0x3fcfd0b6a631d59c              # double 0.2485569297311202
	.quad	0x3fef172c10c0b7a8              # double 0.97157862922698701
	.quad	0x3fd4d41805fc4aae              # double 0.32544518074534323
	.quad	0x3fdb6c5e022b132c              # double 0.42848921024078623
	.quad	0x3fd80197e7c2a2a0              # double 0.375097252205288
	.quad	0x3f9daca2f1230320              # double 0.028978868453808038
	.quad	0x3fc81e0bd2e494a8              # double 0.18841693685059124
	.quad	0x3fd53ff42403fb2a              # double 0.33202842251914666
	.quad	0x3fe8c7efb48ee23d              # double 0.77440629258405347
	.quad	0x3fe9941e8cb2c16e              # double 0.79933097343568504
	.quad	0x3fdd483867f9bffc              # double 0.45753297952523986
	.quad	0x3fe3850b0d27303b              # double 0.60999062127076031
	.quad	0x3fdb4738d65c5974              # double 0.42622204717317591
	.quad	0x3fc7cda41a4e0938              # double 0.18596316608825147
	.quad	0x3fef87f7b5f2f641              # double 0.98534760987212888
	.quad	0x3fd1f7dc6b5e1598              # double 0.2807532356749447
	.quad	0x3fd0767cd8427e12              # double 0.25723191374888288
	.quad	0x3fec303b93c009c4              # double 0.88088778359843233
	.quad	0x3fee45f9e2e2a6a1              # double 0.9460420066217986
	.quad	0x3fd8194c2558f572              # double 0.3765440335008271
	.quad	0x3fd398a5dc7acd38              # double 0.30619188815326792
	.quad	0x3febce92d80587f2              # double 0.86896650497169348
	.quad	0x3fd04d930c3d554c              # double 0.25473476596137767
	.quad	0x3fd33dfff30b5284              # double 0.30065916762149691
	.quad	0x3fe070b146ec32ab              # double 0.51375640728072847
	.quad	0x3fdc324a9a82fdb4              # double 0.44056954468757259
	.quad	0x3fc3921773e0add8              # double 0.15289586217964657
	.quad	0x3fd52dfdd67b7f30              # double 0.3309321016840725
	.quad	0x3fd1ddf169e9f62e              # double 0.2791713270488313
	.quad	0x3fbc13bc84925068              # double 0.10967615353212212
	.quad	0x3febbb5edcd6ab6d              # double 0.86662238247423107
	.quad	0x3fc46ad48b4f2160              # double 0.15951020052149101
	.quad	0x3fe974fbe338176f              # double 0.79553026560527751
	.quad	0x3fb9c8dd1e6b4148              # double 0.10072118752146253
	.quad	0x3fe9fcfb502c6db8              # double 0.81213155421158145
	.quad	0x3fc1126c7f7d73dc              # double 0.13337475037670188
	.quad	0x3fe3966788b02716              # double 0.61210991570371465
	.quad	0x3fe82de0e4ea3881              # double 0.75560040197321154
	.quad	0x3fe69be389c8187c              # double 0.70652939711068496
	.quad	0x3fbeafe23ac85fb8              # double 0.11987127242207307
	.quad	0x3fd56df0980e6be8              # double 0.33483519410373086
	.quad	0x3fd106cba92c8c1c              # double 0.26603976746463487
	.quad	0x3fed82b5198e65ff              # double 0.92220549575284838
	.quad	0x3fee823b3c6360ce              # double 0.9533973864991141
	.quad	0x3fd31dac4dcfcf56              # double 0.29868609999470175
	.quad	0x3fe1bc9559e568c0              # double 0.55427043493116201
	.quad	0x3fc0ef47ef810768              # double 0.13230227655918303
	.quad	0x3fed92e677216ab3              # double 0.92418216006929865
	.quad	0x3febfffab21e5c86              # double 0.87499747074879575
	.quad	0x3fe3825c4a06e6d8              # double 0.60966314752951245
	.quad	0x3fe239f18655931e              # double 0.56957317578471467
	.quad	0x3fa25153f39cefe0              # double 0.035776732910079323
	.quad	0x3fa15803670ed0d0              # double 0.0338746131232327
	.quad	0x3fde3e88d0bd0c2e              # double 0.47256679901710441
	.quad	0x3fef8a992ce5a5f9              # double 0.98566874283750316
	.quad	0x3fee7ecd3f78b1e1              # double 0.95297872921724658
	.quad	0x3fd353908db787a8              # double 0.30197538222830156
	.quad	0x3feaa0bf343294af              # double 0.83212242312278828
	.quad	0x3fca5442cb676b04              # double 0.20569643909296798
	.quad	0x3fd2e8b5137173f4              # double 0.2954533281206857
	.quad	0x3fe13d902a2dc5e9              # double 0.53876503217742056
	.quad	0x3fdac1d37d9cbc9e              # double 0.41808020846196736
	.quad	0x3feefd807bc1bd15              # double 0.9684450547337372
	.quad	0x3fea51524b560d7a              # double 0.82242693628397423
	.quad	0x3f89b50b0587b640              # double 0.012552343469873439
	.quad	0x3fec7ca74cd70e64              # double 0.89021649368119115
	.quad	0x3fb82495a1a71298              # double 0.094308235136006835
	.quad	0x3fe2c10c1138847e              # double 0.58606532443458526
	.quad	0x3fe9c8b9a2814274              # double 0.80575258006326899
	.quad	0x3fe3379ec04e1388              # double 0.60053956565444455
	.quad	0x3fee8a50798cec0c              # double 0.95438407650306222
	.quad	0x3f973a529e775320              # double 0.022683421060565867
	.quad	0x3fe9d16803349536              # double 0.8068122923474792
	.quad	0x3fc57d6f36f90068              # double 0.1678904550954059
	.quad	0x3fded1b88fa5f1b6              # double 0.48155035045763428
	.quad	0x3fe92f7efe743f48              # double 0.78704786012711114
	.quad	0x3fc8db27c0207dec              # double 0.19418808823773703
	.quad	0x3fe8e0a2a9481279              # double 0.7774213129310531
	.quad	0x3fbbe5c44319f8b0              # double 0.10897471082896248
	.quad	0x3fd75f755f086e40              # double 0.36520132332382005
	.quad	0x3fd72c13ea66a484              # double 0.36206529513089714
	.quad	0x3fd2aac675166990              # double 0.29167329248743901
	.quad	0x3fde37238b91bc7e              # double 0.47211540822804199
	.quad	0x3fde40eaf97cf1e6              # double 0.4727122723013778
	.quad	0x3fadfedf79ce97c0              # double 0.058585151309031414
	.quad	0x3fe40c657452285a              # double 0.62651322096759121
	.quad	0x3fd0b1a698c9e76a              # double 0.26084294243593453
	.quad	0x3fef8d580d1a7636              # double 0.98600390013934347
	.quad	0x3fe703c85850b893              # double 0.71921174286923628
	.quad	0x3fd9924008ac4f86              # double 0.39955139967900555
	.quad	0x3fd7b8f92f9a0320              # double 0.37066487930865044
	.quad	0x3fc72ecb9678fd30              # double 0.18111557814879964
	.quad	0x3fa0dc070923d070              # double 0.032928676477156027
	.quad	0x3fd304f0d1a51b9a              # double 0.29717655633106121
	.quad	0x3fe56fc8e6afb4b1              # double 0.66989560180595309
	.quad	0x3fed011958a96516              # double 0.90638415638673808
	.quad	0x3fda8f8780f87f20              # double 0.41501033396524356
	.quad	0x3fa9d343e8c72e20              # double 0.050439951100625047
	.quad	0x3fdbaf6cd69e5028              # double 0.43258210142926368
	.quad	0x3fe96e4aa60cd6f4              # double 0.79471332961722263
	.quad	0x3fa1a61d90899580              # double 0.034470485585909039
	.quad	0x3fdf3386f519c40a              # double 0.48751996932611574
	.quad	0x3fddbe87066bae60              # double 0.46475387217535591
	.quad	0x3fd8b695efe67354              # double 0.3861441462302555
	.quad	0x3fe2863c7927922e              # double 0.57888625777247227
	.quad	0x3fd6b5ec335dc078              # double 0.35485367790443645
	.quad	0x3fe5ba165d1312ce              # double 0.678965741907257
	.quad	0x3fd1172713398e60              # double 0.26703812482285194
	.quad	0x3fea7d3c0e3159af              # double 0.82778742572809516
	.quad	0x3fd60190808517f4              # double 0.34384548712512175
	.quad	0x3fe86d1537aa7fbf              # double 0.76331578132884903
	.quad	0x3fe4970f8a29ac3b              # double 0.64344002709311299
	.quad	0x3feed7418a6c09ea              # double 0.96377636943389899
	.quad	0x3fe305913f32040e              # double 0.59442961066099698
	.quad	0x3fc25628a179373c              # double 0.14325435528228947
	.quad	0x3fd5d7e51f17e29c              # double 0.3413021854062579
	.quad	0x3fe339be570f2544              # double 0.60079876903288509
	.quad	0x3fe3c87947cb2560              # double 0.61822189352202983
	.quad	0x3fd2aa6a7123c28c              # double 0.29165135430142963
	.quad	0x3fe8d70246ec7505              # double 0.77624620296742874
	.quad	0x3fd0a204ecbe1ea2              # double 0.25988886947059531
	.quad	0x3fe61efdb6e1d3d7              # double 0.69128308982055386
	.quad	0x3fe309b74688984d              # double 0.5949360253914705
	.quad	0x3fe0ffb281b1b995              # double 0.53121304827600346
	.quad	0x3fd9e3e3908c12fc              # double 0.40453423610624362
	.quad	0x3fe130bbbe0aec94              # double 0.53719889753064587
	.quad	0x3fd01cbab502a868              # double 0.25175349880976805
	.quad	0x3fe00ce7eb5a26f4              # double 0.50157543151109829
	.quad	0x3fe6827b15460132              # double 0.70342783122035812
	.quad	0x3fe9b2b2d1b54623              # double 0.80306378325093808
	.quad	0x3fd31f1d1984909e              # double 0.29877402774787665
	.quad	0x3f6ca85cd1678c00              # double 0.0034982502795499748
	.quad	0x3fe022867be252f9              # double 0.50421451755627722
	.quad	0x3fc13e55f735126c              # double 0.13471483774823712
	.quad	0x3fe41c14d85dabf9              # double 0.62842790850606811
	.quad	0x3fc6ea0bca2ff36c              # double 0.17901751873423721
	.quad	0x3fe4771b8a7623b9              # double 0.63953949969538038
	.quad	0x3fd3fdecc8e08f42              # double 0.31237334839737596
	.quad	0x3fba122be5cbb6c0              # double 0.10183977470634442
	.quad	0x3fe6e83151cee60e              # double 0.71584382990039486
	.quad	0x3fc7d22eac724cfc              # double 0.18610175533522255
	.quad	0x3fe98eebd2a46016              # double 0.79869643345864705
	.quad	0x3fe4289d02faa521              # double 0.62995768148281084
	.quad	0x3feba774b8108224              # double 0.86419139814467316
	.quad	0x3fd1c851e9eeefaa              # double 0.2778515610223119
	.quad	0x3fe090351049746a              # double 0.51760342770616075
	.quad	0x3fe7f25213e41e08              # double 0.74833015332200237
	.quad	0x3febd448dbc076ee              # double 0.86966364784504235
	.quad	0x3fef46fb346fc688              # double 0.97741470567253063
	.quad	0x3fd2aeb8fb9cb6b0              # double 0.29191422053814176
	.quad	0x3fdafb90075d6326              # double 0.42160416335313966
	.quad	0x3fda0e2ce1fef608              # double 0.40711519308010269
	.quad	0x3fd467eac80b1f74              # double 0.31884259734623943
	.quad	0x3fe8343fabd6166f              # double 0.75637801706097985
	.quad	0x3feba65452c0b0e0              # double 0.86405388033520225
	.quad	0x3fdbaee07fc8f3c0              # double 0.43254864195824538
	.quad	0x3fe59227e8a49a84              # double 0.67409129560549319
	.quad	0x3feef998dea32cc4              # double 0.96796840175502341
	.quad	0x3fd4d0dba9e6e980              # double 0.32524768440239171
	.quad	0x3fb4194242c0d540              # double 0.078510419175320756
	.quad	0x3fc9dd06d0ed57f4              # double 0.2020576973106355
	.quad	0x3fb3e21b7ec76378              # double 0.077668875171537866
	.quad	0x3fd009afde293bec              # double 0.25059124656121301
	.quad	0x3fe90791063a4fab              # double 0.78217364517558019
	.quad	0x3fe979417cf69e13              # double 0.79605173499016002
	.quad	0x3fd7e56291296582              # double 0.37337555099437492
	.quad	0x3f75ee4adebb4080              # double 0.0053542065249559956
	.quad	0x3feefefe19553dca              # double 0.96862702319952487
	.quad	0x3fd3f0a219c377b2              # double 0.31156208530398566
	.quad	0x3fea1270fde92a3c              # double 0.81475114433244
	.quad	0x3fc330ded2dc6754              # double 0.14992890640206247
	.quad	0x3fc1d4986e73cca8              # double 0.13930039780789127
	.quad	0x3fdc9abd1415a752              # double 0.44694449387917701
	.quad	0x3fc8a82a34e621ec              # double 0.19263198454815667
	.quad	0x3fd81c4b14318d94              # double 0.37672688457515702
	.quad	0x3febb070fe06f2b5              # double 0.86528825392414055
	.quad	0x3fe465a91b20be8a              # double 0.63740973757190145
	.quad	0x3fe6e55a3a8c6bfd              # double 0.71549712596186021
	.quad	0x3fc6705d4c5e822c              # double 0.17530409077609599
	.quad	0x3fd08783e09d87e2              # double 0.2582711881169627
	.quad	0x3fef06a505d77fc9              # double 0.96956111088729202
	.quad	0x3fc91bf49d76fb3c              # double 0.19616563500127338
	.quad	0x3fe7dc733971e1d9              # double 0.74566041202256905
	.quad	0x3fdb0385849fad50              # double 0.42208993865525191
	.quad	0x3fd623991e019ada              # double 0.34592273645686833
	.quad	0x3fbb51ce057214e0              # double 0.10671699173879601
	.quad	0x3f744654ae25ff80              # double 0.0049498851607266969
	.quad	0x3fd1f9bf762c39e0              # double 0.28086840191181572
	.quad	0x3fc160a5d7d5cc70              # double 0.13576195753885001
	.quad	0x3fcdbcc426098090              # double 0.23232318742066527
	.quad	0x3feb80cf9ab7fcb1              # double 0.85947399347778319
	.quad	0x3fe0c124f85f06ba              # double 0.52357719907759948
	.quad	0x3fd08605a8a4e038              # double 0.25818006009240291
	.quad	0x3feecedde69ac9f3              # double 0.96275229492158442
	.quad	0x3fbac6152cede610              # double 0.10458500239283119
	.quad	0x3fddba483130301c              # double 0.46449475101030813
	.quad	0x3fed6ad265e33725              # double 0.91928977870859241
	.quad	0x3fdcad1e814ea428              # double 0.44806635501533032
	.quad	0x3fde866414002f78              # double 0.47695257142253622
	.quad	0x3fe25bcbb599ca9a              # double 0.57370553463836704
	.quad	0x3fdd139bf63be8b8              # double 0.45432185217181198
	.quad	0x3fd62c9721c6dae4              # double 0.34647157953751972
	.quad	0x3fca4163b69e20b4              # double 0.20512052933577751
	.quad	0x3fe10c4c05138e96              # double 0.53275109282954491
	.quad	0x3fc6db3d9876741c              # double 0.17856569237201902
	.quad	0x3fb14569d42ef038              # double 0.067465414335800555
	.quad	0x3fa6dcca53b30000              # double 0.044653246609868802
	.quad	0x3fead52a97fdc560              # double 0.83852128682898907
	.quad	0x3fe0402bd0b10cdb              # double 0.50783339271620365
	.quad	0x3fe720d0691ade99              # double 0.72275562790214842
	.quad	0x3f7f2edf61418800              # double 0.007613060548552042
	.quad	0x3fc4b8669d4b7708              # double 0.16187746696862626
	.quad	0x3fe5456ec2cec453              # double 0.66472566650748843
	.quad	0x3fb487e9e552a930              # double 0.080198877799067203
	.quad	0x3fd26c1ded6c2354              # double 0.28784893213064788
	.quad	0x3fea6c85a57fcccc              # double 0.82574732135835793
	.quad	0x3fd3332f558af886              # double 0.29999907830995942
	.quad	0x3fc41d2bb7fc8fa4              # double 0.15714022144049722
	.quad	0x3fab9e5844f9d500              # double 0.053942449970159956
	.quad	0x3fe2d3c384111cf2              # double 0.58835006517702326
	.quad	0x3fb86e7c77dbb8c8              # double 0.095435885679509558
	.quad	0x3fd6e647dc6f3fce              # double 0.35780521895230499
	.quad	0x3fd69bd1e4695946              # double 0.35326049142658567
	.quad	0x3fd6137cc4ffc6f2              # double 0.344939415342295
	.quad	0x3fede44fbe3c1ba8              # double 0.9341200557254199
	.quad	0x3fdced81dae14cea              # double 0.45199629187591361
	.quad	0x3fa5a1bb45e59bb0              # double 0.042249538690888655
	.quad	0x3fc808b287830750              # double 0.1877654229811534
	.quad	0x3fd72b731d94a99c              # double 0.3620269574045325
	.quad	0x3fe56bbc05eaf556              # double 0.66940117984601488
	.quad	0x3feeda9604a5a326              # double 0.96418286235448103
	.quad	0x3fb531efa7808a08              # double 0.082793215173787016
	.quad	0x3feb31e0145670c2              # double 0.84983829471777761
	.quad	0x3fd2bf58bc82a5e6              # double 0.29292887124264977
	.quad	0x3fdd2b902e4f2d04              # double 0.45578388712301909
	.quad	0x3fb94ddec68c8638              # double 0.098844455217226179
	.quad	0x3fec365a9da5458d              # double 0.88163500585703647
	.quad	0x3fc6b6009516a2a0              # double 0.1774292686434551
	.quad	0x3fe3179b73d4b168              # double 0.59663174269875885
	.quad	0x3fcb31b3adc70918              # double 0.2124542807124008
	.quad	0x3fe9209929b49c5e              # double 0.78522928376777279
	.quad	0x3fed26bae44fb0a2              # double 0.91097778884934066
	.quad	0x3fe6306461da564d              # double 0.69340724098101136
	.quad	0x3fdb41f04e9c55f8              # double 0.42589957882714158
	.quad	0x3fd0d12a60487c60              # double 0.26276645090724138
	.quad	0x3fddcc7b5283151e              # double 0.46560557420555593
	.quad	0x3fec10e1727e4682              # double 0.87706062662091733
	.quad	0x3fc900d40a44d498              # double 0.19533777715119949
	.quad	0x3fdfea6a2e46a00a              # double 0.49868254202965601
	.quad	0x3fe9c552d7587b14              # double 0.8053373533219621
	.quad	0x3fc10065bcc90de0              # double 0.1328246280482821
	.quad	0x3feabd7c3c452277              # double 0.83563052913184677
	.quad	0x3fc0412aa25c1628              # double 0.12698872497291913
	.quad	0x3fe36efb7f9a74b0              # double 0.60729765818145687
	.quad	0x3fecc8690662668f              # double 0.89946414229344096
	.quad	0x3fe4e55d757e9135              # double 0.65299866626859304
	.quad	0x3fab6f30b603dd70              # double 0.053582689493789526
	.quad	0x3feac2ff2911b070              # double 0.83630331059749885
	.quad	0x3fe1e9b6a4261bd5              # double 0.55977947292637487
	.quad	0x3feb9939adea5a56              # double 0.86245426147326998
	.quad	0x3fdd963790122b36              # double 0.46229352063589901
	.quad	0x3fe9acf51d2ee289              # double 0.80236297321160166
	.quad	0x3feff4e4a2f692b8              # double 0.99864417866464005
	.quad	0x3fe7484d746e0080              # double 0.7275759958283885
	.quad	0x3fcb3ae94d1ca714              # double 0.21273533120375332
	.quad	0x3fed4022db485ea1              # double 0.91407912090922505
	.quad	0x3fdc1b726d5aacc8              # double 0.43917523078080167
	.quad	0x3feffb9164d20211              # double 0.9994589776179642
	.quad	0x3fc73041d81a057c              # double 0.18116019298399155
	.quad	0x3f3b04cd0d419000              # double 4.1227346560490652E-4
	.quad	0x3fda860b38081e92              # double 0.41443138572547256
	.quad	0x3fe616c414fc338e              # double 0.69027904604591739
	.quad	0x3fe54b341c1f7104              # double 0.66543012135255752
	.quad	0x3fee0db225e985ab              # double 0.93917186169362787
	.quad	0x3fe03821ac42ef7a              # double 0.50685199398820591
	.quad	0x3fee7928d9a19c2c              # double 0.95228998666869335
	.quad	0x3fe13fff068b6f57              # double 0.53906203535323527
	.quad	0x3fdae8ff2665e68a              # double 0.42047098874864075
	.quad	0x3fc30899a301769c              # double 0.14869995555175286
	.quad	0x3fea420d9a6cf606              # double 0.82056312714820545
	.quad	0x3fcd704c2414c734              # double 0.22998954545760741
	.quad	0x3fddc1fc5906df5e              # double 0.46496494955089485
	.quad	0x3fe4265ef3b626b7              # double 0.62968394851596698
	.quad	0x3fe378df63c03180              # double 0.60850495798653981
	.quad	0x3fe5d49ce399e2ac              # double 0.68220371678679248
	.quad	0x3fdc72d54837baf0              # double 0.44450885822781938
	.quad	0x3fd0d72ec8f8b430              # double 0.26313371301768296
	.quad	0x3fe53b88bbca9065              # double 0.66351734807950591
	.quad	0x3fb0381493789f50              # double 0.063355718616205481
	.quad	0x3fe76236b8b21288              # double 0.73073898385389757
	.quad	0x3f99081ffdce9bc0              # double 0.024445056787637531
	.quad	0x3fa4e98eb3dbbb80              # double 0.040844401793825647
	.quad	0x3fef82dd98ac31ba              # double 0.9847248060119036
	.quad	0x3fe9d87c0ac67141              # double 0.80767633537792716
	.quad	0x3fc019d50a7627a0              # double 0.12578833590333449
	.quad	0x3fe7b0f4e802d002              # double 0.74035115542074004
	.quad	0x3fd570ce7346a020              # double 0.33501015908632503
	.quad	0x3f9e4e685b73cc60              # double 0.029595976430709547
	.quad	0x3fe764009b7d2e73              # double 0.730957320870813
	.quad	0x3fb13428d9c173e8              # double 0.067202141917234948
	.quad	0x3fca2c066afcd7bc              # double 0.20446853851325197
	.quad	0x3fc0ca16807ed8ec              # double 0.13116723322099888
	.quad	0x3fe952646f9a7d94              # double 0.79130765721849849
	.quad	0x3fd87c7d0c6e2d3c              # double 0.38259817327407908
	.quad	0x3fe2fceb9785a2ff              # double 0.59337405771393026
	.quad	0x3fe58b3750abfba9              # double 0.67324414974415447
	.quad	0x3fcbe0df82ef284c              # double 0.21780008214256197
	.quad	0x3fc51615a4e10b4c              # double 0.16473646689163457
	.quad	0x3fe0108d93809515              # double 0.50202063378370332
	.quad	0x3fe2edf8f967fa32              # double 0.59154938423291115
	.quad	0x3fe81d2b7917cad0              # double 0.75356076861347709
	.quad	0x3fc17d52e513ed60              # double 0.13663707910005041
	.quad	0x3fde06726d6d4ea0              # double 0.46914349256733523
	.quad	0x3fc0aaa2b754091c              # double 0.13020738555503264
	.quad	0x3fe09f536483e16c              # double 0.5194489443957031
	.quad	0x3fe139eef799d257              # double 0.53832195624870394
	.quad	0x3fd9453079d2a408              # double 0.39484798332938498
	.quad	0x3fdc0aeb882eb082              # double 0.43816650675831437
	.quad	0x3fd3f353c59bc9d0              # double 0.31172651574811727
	.quad	0x3fe9b88984e7eb9b              # double 0.80377651174727605
	.quad	0x3fdb0402cdb27450              # double 0.42211980903249913
	.quad	0x3fdb941573cef954              # double 0.43091331777022401
	.quad	0x3fe1e5bc70fa7845              # double 0.55929395738690657
	.quad	0x3fc19f5e42b1ebb8              # double 0.13767603165237374
	.quad	0x3fe33e4fa04c04d8              # double 0.60135632808683237
	.quad	0x3fd36001940fada2              # double 0.3027347513113573
	.quad	0x3fc368c5371e870c              # double 0.15163483802194155
	.quad	0x3fdf6d9413e790f8              # double 0.49106313651851918
	.quad	0x3fe3f808fd6de846              # double 0.62402772424616937
	.quad	0x3fea872bd29a332f              # double 0.82900038846273627
	.quad	0x3fec255bdf499fe1              # double 0.8795604096494537
	.quad	0x3f28ac18c8d21000              # double 1.8823435349102358E-4
	.quad	0x3fe4728efccd4b84              # double 0.63898419738176004
	.quad	0x3fe58461806ec679              # double 0.67240977367892107
	.quad	0x3fa8f2ce64ecccb0              # double 0.048727464504190521
	.quad	0x3feba4640e2bde59              # double 0.86381724136203808
	.quad	0x3fb1c4445eaf2e70              # double 0.069401047817501782
	.quad	0x3fdfd1c7c89fc8c6              # double 0.49717897979929793
	.quad	0x3fce3e29377de1e4              # double 0.23627200326497111
	.quad	0x3fe8a244bb870cd4              # double 0.76980816484901959
	.quad	0x3fc9a66f88582f58              # double 0.20039171369023268
	.quad	0x3fc1650bf7c43358              # double 0.13589620206803477
	.quad	0x3feffe087def0261              # double 0.99975990864193076
	.quad	0x3fd6d3c059a46872              # double 0.35667427782175942
	.quad	0x3fe4f15bde39b037              # double 0.65446275142085752
	.quad	0x3fe12aa95d9515c8              # double 0.53645771291547195
	.quad	0x3fc61820c069e004              # double 0.1726113261718184
	.quad	0x3fe8d5bf234cb670              # double 0.77609211821045498
	.quad	0x3fe3154e403988e3              # double 0.59635078948874953
	.quad	0x3fdea6010a6828fc              # double 0.47888208404823707
	.quad	0x3fe4de63002b9aff              # double 0.65214681657093354
	.quad	0x3fe906d1bcf552a1              # double 0.78208243280331058
	.quad	0x3fed42e8d9b2620a              # double 0.9144176723376074
	.quad	0x3fd429d0b8287b16              # double 0.31505220398132516
	.quad	0x3febef0734aa8fe7              # double 0.87292824064615793
	.quad	0x3fac67487da1efa0              # double 0.055475488029485875
	.quad	0x3fd179a8384dfea0              # double 0.27305036066534605
	.quad	0x3fe0edeab022f592              # double 0.52904257203742788
	.quad	0x3fcb96c7fd3cc640              # double 0.21553897729022431
	.quad	0x3fcfe4f183753060              # double 0.24917429846607586
	.quad	0x3fdb547f482dc4ba              # double 0.42703229950627597
	.quad	0x3fb03f43934c5438              # double 0.063465331517662871
	.quad	0x3fb0277f91cdc978              # double 0.063102696510929479
	.quad	0x3fd8b04aa683fdba              # double 0.3857599855545818
	.quad	0x3fed5af1a36d5291              # double 0.91735155028671234
	.quad	0x3fd98def4f0a7696              # double 0.39928801268420366
	.quad	0x3fd27ec776320c1e              # double 0.28898798506287615
	.quad	0x3fe36c7282bd942e              # double 0.60698819670927207
	.quad	0x3fc61e8f245e609c              # double 0.17280759120763356
	.quad	0x3fd3e3396dc1f166              # double 0.31074367254747981
	.quad	0x3fed1f6d5d377112              # double 0.91008632856713434
	.quad	0x3fca9647a718eb64              # double 0.20771117838907138
	.quad	0x3fd7d353571aeea0              # double 0.37227328783385794
	.quad	0x3fdd1a3534bf6f84              # double 0.45472459937240495
	.quad	0x3feb9c973f34a44b              # double 0.86286508889055236
	.quad	0x3fe83a68a216f08c              # double 0.75712997110487512
	.quad	0x3fe500398833338f              # double 0.6562774334102971
	.quad	0x3fc0a996673e5324              # double 0.1301754001730383
	.quad	0x3fd91494e15ef5ac              # double 0.39188119896774753
	.quad	0x3feea2a0fd3d44f5              # double 0.95735215626532855
	.quad	0x3fe84196025af055              # double 0.7580061002731876
	.quad	0x3f9a604d55000e00              # double 0.025757988274575538
	.quad	0x3fee212943a8b414              # double 0.94154799666069033
	.quad	0x3f8fd0baa7acef80              # double 0.01553483795361621
	.quad	0x3fe476ee36fc39f2              # double 0.63951788653667863
	.quad	0x3fc2ed4febaeb33c              # double 0.14786719329767972
	.quad	0x3feff6fedb6e7b96              # double 0.99890082223633914
	.quad	0x3fe8a3fdc430928e              # double 0.77001846617038594
	.quad	0x3fe63b1a23df9487              # double 0.69471461302295345
	.quad	0x3fe496b7b8bb3fa0              # double 0.64339815216407104
	.quad	0x3fc27d448f8b6e00              # double 0.14444787034049966
	.quad	0x3fe2b91bf028acd2              # double 0.58509632974655745
	.quad	0x3fcb10a29dbd7934              # double 0.21144516660837953
	.quad	0x3fee175dfb5fff2b              # double 0.94035243126561363
	.quad	0x3fe54605b22f36b5              # double 0.66479763795515245
	.quad	0x3fe40acd1fab6959              # double 0.62631851373161418
	.quad	0x3fd81b97456230f0              # double 0.37668401504266935
	.quad	0x3feee4dabff62d49              # double 0.96543633930688443
	.quad	0x3fb08d82f5c12818              # double 0.064659295080815915
	.quad	0x3fe3680dd18cfd07              # double 0.60645190170171837
	.quad	0x3fbf2e3b980b2d40              # double 0.12179920637133979
	.quad	0x3fc4ff34993aca80              # double 0.16403825265804883
	.quad	0x3fcc2b77297ff884              # double 0.22007646108972179
	.quad	0x3fe50854ef701e84              # double 0.65726706280925429
	.quad	0x3fd73c9c81a641ae              # double 0.36307442341878982
	.quad	0x3fce1b525e29470c              # double 0.23520879361836255
	.quad	0x3fd1c20b91e4958a              # double 0.27746857879022768
	.quad	0x3fe7c50887122254              # double 0.74280191784880367
	.quad	0x3feeb76770ebb98b              # double 0.95988819174617512
	.quad	0x3feb2acc4ace3fb0              # double 0.84897436724167186
	.quad	0x3fe4388a61a914fc              # double 0.63190192293464476
	.quad	0x3fd24a851f8d5c46              # double 0.28579834061878662
	.quad	0x3fef7436eb93b8ab              # double 0.98293634425296738
	.quad	0x3fbd076f72c2d7b0              # double 0.11339470435890919
	.quad	0x3fea98c6713aa283              # double 0.83114931216285048
	.quad	0x3fe1447dced060fb              # double 0.53961077111583167
	.quad	0x3feafcb1bd83b7aa              # double 0.84334647192530565
	.quad	0x3fcc5f16a9dcba60              # double 0.22165187162450461
	.quad	0x3fe1cadb39c8667c              # double 0.55601273809152429
	.quad	0x3fa57950830c5fe0              # double 0.041941181180106701
	.quad	0x3fe1752c20b5d7c0              # double 0.54555326832518602
	.quad	0x3fe9f9f9bc71596e              # double 0.81176459126690559
	.quad	0x3fc4e966c7a238e0              # double 0.16337284801233576
	.quad	0x3fe6b9f8b4c27f59              # double 0.71020160011901645
	.quad	0x3fea3f30e880e5fc              # double 0.82021375094262749
	.quad	0x3fea9a324e2b2851              # double 0.83132281558324383
	.quad	0x3f98dac555b1e700              # double 0.024272044520762925
	.quad	0x3fda9b78888ae324              # double 0.41573918661338127
	.quad	0x3fc9bcc9507b21e0              # double 0.20107380323157908
	.quad	0x3fde2ef44ad5ccd2              # double 0.47161586101647146
	.quad	0x3fe70af012bc4f33              # double 0.72008517894071244
	.quad	0x3fee67fef0220079              # double 0.9501948061079154
	.quad	0x3fe82a975885dfdd              # double 0.75519912042272674
	.quad	0x3fd7e7b39982cefc              # double 0.37351694098764177
	.quad	0x3fc41218eb571344              # double 0.1568022870179907
	.quad	0x3fe146e698349910              # double 0.5399048779261495
	.quad	0x3fe3d6ad843eccb7              # double 0.61995578602945656
	.quad	0x3fe37cea26467b9e              # double 0.60899836993836565
	.quad	0x3fdecfb4f47dd0c2              # double 0.48142742038841047
	.quad	0x3fdea9dabe902802              # double 0.47911709413222081
	.quad	0x3fe5b83445ade769              # double 0.6787358628200596
	.quad	0x3fc6a1514243cd24              # double 0.17679801688755348
	.quad	0x3fdfe05bd04317ce              # double 0.49806876504987663
	.quad	0x3fd2863dff50532c              # double 0.28944349225030197
	.quad	0x3fe3f968f68d194e              # double 0.62419555811428906
	.quad	0x3fe8d03e83ff8ceb              # double 0.77542043476969746
	.quad	0x3fe8ae9c0525b75d              # double 0.77131463055932736
	.quad	0x3fd51045ed51b66c              # double 0.32911823440267685
	.quad	0x3fc78c0a57e49e9c              # double 0.18396119395878407
	.quad	0x3fe1aa5dab1247ad              # double 0.55204661762603779
	.quad	0x3fa639a66475a190              # double 0.043408584368822223
	.quad	0x3fef520c0e5446b8              # double 0.97876551436112091
	.quad	0x3fe61db13a8074f8              # double 0.69112454820756763
	.quad	0x3fe84e0ae144018d              # double 0.7595266723365498
	.quad	0x3fce739caa3510a8              # double 0.23790319739248855
	.quad	0x3f92beeddc5d08c0              # double 0.018306461882510616
	.quad	0x3fe5a2aa3f4769ea              # double 0.67610657080814218
	.quad	0x3fda3966b0edceb8              # double 0.40975348737923012
	.quad	0x3fdc97356950bf9c              # double 0.44672904286107395
	.quad	0x3fead1a43a557483              # double 0.83809100526163183
	.quad	0x3fe1a7f92ba318b8              # double 0.55175455592031764
	.quad	0x3fb8eb0ea1ed9278              # double 0.09733668759651859
	.quad	0x3fda6c8a95aef814              # double 0.41287483804251335
	.quad	0x3fa0eae984815af0              # double 0.03304223768707526
	.quad	0x3fe4e9d051840b77              # double 0.65354171677641559
	.quad	0x3fe42a949efd3926              # double 0.63019782116478917
	.quad	0x3fd3425f736865a2              # double 0.30092607755940481
	.quad	0x3fe3bb71ce01e6f7              # double 0.61663141475511807
	.quad	0x3febd95c3084b18f              # double 0.87028321720349477
	.quad	0x3feaac2e5db3543e              # double 0.83351820279006694
	.quad	0x3fda6585824dab08              # double 0.41244638180676008
	.quad	0x3fe05451bcebd8a0              # double 0.5102928819531094
	.quad	0x3fe87b1853576a5a              # double 0.76502624776487527
	.quad	0x3fdd93591b47e6bc              # double 0.46211841262957498
	.quad	0x3fe2e9db0106575a              # double 0.59104681205893006
	.quad	0x3fd612bd05865fd0              # double 0.34489369906941381
	.quad	0x3febb400fb166952              # double 0.86572312393699691
	.quad	0x3fed9bf012e7f35e              # double 0.92528537457074456
	.quad	0x3fefcff8b5e9fc56              # double 0.99413714914397633
	.quad	0x3fdfc00fcba8977a              # double 0.49609751595050222
	.quad	0x3fc38713842a62fc              # double 0.15255969956776727
	.quad	0x3fe6fb04ad67ec17              # double 0.71814187877987734
	.quad	0x3fe4ca9ef0ab36f6              # double 0.64973399167658275
	.quad	0x3fe822fdc1f24f79              # double 0.75427139167957968
	.quad	0x3fe039844aaa4e26              # double 0.50702108939225776
	.quad	0x3fed66b8c9e883af              # double 0.91878928599554921
	.quad	0x3fe0cc093bebbf6f              # double 0.52490674689577854
	.quad	0x3fe1d9c4b655bc7a              # double 0.5578330575207382
	.quad	0x3fe7dff9f6e18fc0              # double 0.74609087199177537
	.quad	0x3feebc02a14ca30f              # double 0.96045047286779261
	.quad	0x3fe631ea0b9219cb              # double 0.69359304675963906
	.quad	0x3fa1f902f7d33e90              # double 0.035102932693573341
	.quad	0x3fd0127811f0a3fc              # double 0.25112725974992123
	.quad	0x3fdc06f5184c2b08              # double 0.43792464611821957
	.quad	0x3fece8d6aab62aa9              # double 0.9034226736269676
	.quad	0x3fea4fc5242f6966              # double 0.822237559007857
	.quad	0x3fe736fba459079c              # double 0.72546178912328996
	.quad	0x3fe8275a8ad36b4c              # double 0.75480391611504549
	.quad	0x3fe94da7852f5bff              # double 0.79072929394430946
	.quad	0x3fe9af050ccd57d0              # double 0.8026147127190999
	.quad	0x3fc705d6e607cd18              # double 0.17986570579487515
	.quad	0x3fc3750cc0df75fc              # double 0.15200957696553974
	.quad	0x3fe2105a7ab2c4b3              # double 0.56449626888765747
	.quad	0x3fb14c63f07675c8              # double 0.067571874815676058
	.quad	0x3fee169df01fc12d              # double 0.94026085757471878
	.quad	0x3fd8f8d556cf98b0              # double 0.39018758275632148
	.quad	0x3fd7b8ddee0236aa              # double 0.37065838091880698
	.quad	0x3fd199f0bbe0c0ac              # double 0.27502077434020111
	.quad	0x3fe4a918924cf17c              # double 0.64564159941032484
	.quad	0x3fdf642705e7fb42              # double 0.49048781945014153
	.quad	0x3feb04712f535e96              # double 0.84429225199979174
	.quad	0x3fa7a511c0e25f90              # double 0.046181254191821286
	.quad	0x3fc804188cf7c834              # double 0.18762499697874235
	.quad	0x3fe5d7deed7e21ed              # double 0.68260141740125635
	.quad	0x3fe00f236e4306e8              # double 0.50184794936668897
	.quad	0x3fdfc31a33f08696              # double 0.49628310272428544
	.quad	0x3fecc0df9995624a              # double 0.89854412075789836
	.quad	0x3fe37fbbba44bfe8              # double 0.60934244518830116
	.quad	0x3fe94313f447e6b9              # double 0.78943822585207279
	.quad	0x3fe5c81490683a89              # double 0.68067386822242881
	.quad	0x3fdcf6e5258cfc28              # double 0.45256928126394991
	.quad	0x3fedba1cb83764c8              # double 0.92896877269517919
	.quad	0x3fefd3a0d586294c              # double 0.99458352760238133
	.quad	0x3fef0d0208d5cfe1              # double 0.97033788419366484
	.quad	0x3f8a2304c3e2f180              # double 0.012762105205518237
	.quad	0x3feab60c38f80790              # double 0.83472262503367922
	.quad	0x3fe30289a9945353              # double 0.59405978318191399
	.quad	0x3f92572f30e32aa0              # double 0.017910706862304893
	.quad	0x3fc117eaf67b186c              # double 0.13354241404721579
	.quad	0x3fe6978590611e30              # double 0.70599630545706837
	.quad	0x3fd25f2000427acc              # double 0.2870559694801329
	.quad	0x3fddd2d2c5fba02c              # double 0.46599263510006739
	.quad	0x3fba642082e8e9d8              # double 0.10309031673470004
	.quad	0x3fe32216efe26104              # double 0.59791132786179491
	.quad	0x3fecf31bfdd81e17              # double 0.90467643336245629
	.quad	0x3fd44ce3544e9e74              # double 0.31719287140956642
	.quad	0x3fea0cf7bb099114              # double 0.81408297091232606
	.quad	0x3fea9682e0cbaa46              # double 0.83087295441993869
	.quad	0x3fe207a069356247              # double 0.56343098209897213
	.quad	0x3fe66ad6794d18f7              # double 0.70054172221787681
	.quad	0x3fc458780181ef60              # double 0.15894985269175788
	.quad	0x3fd7c36fff6ac510              # double 0.37130355780671298
	.quad	0x3fd52239c3a148fa              # double 0.33021396736616249
	.quad	0x3fe75fbe2004c493              # double 0.73043733838689417
	.quad	0x3fe27e900c41150c              # double 0.57794954675105847
	.quad	0x3fe60572a99498a0              # double 0.68816502686674497
	.quad	0x3fdd55f8e9f74654              # double 0.45837233398660726
	.quad	0x3fb48e2522cf6d80              # double 0.080293961523627999
	.quad	0x3fd54202582c5058              # double 0.33215387926725759
	.quad	0x3fddc7546fc54316              # double 0.46529112734883549
	.quad	0x3f81c20128e729c0              # double 0.0086708155257796404
	.quad	0x3fee1ff0a49a4b75              # double 0.94139892720191531
	.quad	0x3fc14946243d81fc              # double 0.13504864472908185
	.quad	0x3fee86fe6e9c42bd              # double 0.95397874454109621
	.quad	0x3feeb45f7104b9a5              # double 0.95951816629331132
	.quad	0x3faf5a23ca001dc0              # double 0.061234587105043925
	.quad	0x3fe8a3c68bfb4089              # double 0.76999213543059952
	.quad	0x3fe32d34405da2d2              # double 0.5992680794853078
	.quad	0x3fd039fe5e2e6912              # double 0.25353964993850397
	.quad	0x3fdc3b2012e62a42              # double 0.44110872121442324
	.quad	0x3fd647eca529962e              # double 0.34813991669793409
	.quad	0x3fd33920654417e6              # double 0.30036172761208346
	.quad	0x3fd84abe704f079c              # double 0.37956200568816612
	.quad	0x3fe2dea17e936aac              # double 0.58967661592335707
	.quad	0x3fee400ee76b437d              # double 0.94531960677168991
	.quad	0x3fedff30c2f4817b              # double 0.93740118100326641
	.quad	0x3fedbbc95ad27f0c              # double 0.92917316187592424
	.quad	0x3fe8ee56747e3e55              # double 0.77909395935598502
	.quad	0x3fc3f7690e12a504              # double 0.15598786532545017
	.quad	0x3fed11e84360853f              # double 0.90843594703270714
	.quad	0x3fea85f68ff4d29e              # double 0.82885292164299407
	.quad	0x3fcec1052b370f40              # double 0.24026550874816088
	.quad	0x3fc518be712f091c              # double 0.16481762434529734
	.quad	0x3fe2895120a04d43              # double 0.57926231739330836
	.quad	0x3feb8e06e68929ab              # double 0.86108727480432401
	.quad	0x3fdb439c1d59aa02              # double 0.42600157610164058
	.quad	0x3fd1dc63521d49a6              # double 0.27907641428933017
	.quad	0x3fe4f3961abcd41f              # double 0.65473466131391322
	.quad	0x3fb2b969f46c07d0              # double 0.073141691373194151
	.quad	0x3fd34f5034489806              # double 0.30171589952294686
	.quad	0x3fe7acc07efbf392              # double 0.73983788301085185
	.quad	0x3fdd7f6ab9443ef4              # double 0.46090190975608825
	.quad	0x3fa3bcf2a991af30              # double 0.038550933074331772
	.quad	0x3fc03cad664d1c9c              # double 0.12685172553230906
	.quad	0x3feaeeea59e9f377              # double 0.84166448174765562
	.quad	0x3fdf1110f9e9f17c              # double 0.48541664510391747
	.quad	0x3fe4785678ecf0dc              # double 0.63968967073699501
	.quad	0x3fc4891549d4e220              # double 0.16043344597871201
	.quad	0x3fe609c90ff8acda              # double 0.68869450683032629
	.quad	0x3f870590a75d4180              # double 0.01124108324771167
	.quad	0x3fce1242a9a9c80c              # double 0.23493226322494853
	.quad	0x3fe57895914661a0              # double 0.67096975683221061
	.quad	0x3fd2d4ec0d8e3932              # double 0.29424573253426722
	.quad	0x3fb3f27a238aa6d0              # double 0.077918656994963031
	.quad	0x3fe4645a840b84f8              # double 0.63725019254721271
	.quad	0x3fc8590e3b34cbc0              # double 0.19021776095322984
	.quad	0x3febfdbdb451b0af              # double 0.87472424715590147
	.quad	0x3fe6f29ef20484b9              # double 0.71711680668899824
	.quad	0x3fc109a1144ad968              # double 0.1331063603481184
	.quad	0x3fd235147cfae23c              # double 0.28448974804954097
	.quad	0x3f97e19e46fbbcc0              # double 0.023321602900008953
	.quad	0x3fd5b53ac912769e              # double 0.33918637882184466
	.quad	0x3fda2ccd3846d9cc              # double 0.4089844750955336
	.quad	0x3fa681ddc8571350              # double 0.043959551530440621
	.quad	0x3fe44b083c54444f              # double 0.63415920050659647
	.quad	0x3fc08111cdbfc138              # double 0.12893888994541114
	.quad	0x3fc4e1eb994e8f10              # double 0.16314454065024409
	.quad	0x3fd62cde7432299c              # double 0.34648858401546945
	.quad	0x3fc994393286ca3c              # double 0.1998359200202503
	.quad	0x3fd7a485cb7bceca              # double 0.3694166648049132
	.quad	0x3fe008ebc2a95435              # double 0.50108898181736683
	.quad	0x3fdfa3ffd3e9e324              # double 0.49438472456636107
	.quad	0x3fd6cf5da83bc506              # double 0.3564066069512396
	.quad	0x3fe789553f3996e1              # double 0.73551428173660949
	.quad	0x3fd42616b57f116a              # double 0.31482475017789702
	.quad	0x3fef396c81fe9804              # double 0.97575974835922396
	.quad	0x3fef43837388e7d9              # double 0.97699139180553651
	.quad	0x3fd09276d2865696              # double 0.25893946227129427
	.quad	0x3fea1c3337e07f0e              # double 0.81594239152397718
	.quad	0x3fe3d2609e660d20              # double 0.61943083703264179
	.quad	0x3fcf6e6a0443c178              # double 0.2455570717643345
	.quad	0x3fd8e9adb9a07862              # double 0.38926261069889823
	.quad	0x3fe04f2fb29b0541              # double 0.50966629871269487
	.quad	0x3feecb7f58f2e79f              # double 0.96234099743672973
	.quad	0x3fe13cd9161782d7              # double 0.53867773356258908
	.quad	0x3f8f460e6f967a40              # double 0.015270340710057728
	.quad	0x3f9a2c2789fc01e0              # double 0.025559060856723437
	.quad	0x3fcf4e1098f7bacc              # double 0.24456984967351614
	.quad	0x3fea056ba1c4e92d              # double 0.81316167445701171
	.quad	0x3faed54ef6f69160              # double 0.060221164366597746
	.quad	0x3fcaea1ef9d40b64              # double 0.21026980589530375
	.quad	0x3fb148a600d2eb30              # double 0.067514777375362156
	.quad	0x3fe40957bea7c189              # double 0.62614047276842755
	.quad	0x3fd9d546d887d44a              # double 0.40364237924160717
	.quad	0x3fa940db50c85c30              # double 0.04932294236294188
	.quad	0x3fef1fe0df9cf613              # double 0.97264140772284901
	.quad	0x3fccb3e4c7fe0738              # double 0.22423991933106335
	.quad	0x3fe49fa658e1f778              # double 0.6444885002126588
	.quad	0x3feb15678e7eb4e0              # double 0.84636285620731754
	.quad	0x3fe54cc2aa6bd572              # double 0.66562016759296072
	.quad	0x3fd33f96340551f0              # double 0.30075602607874341
	.quad	0x3fecbf833993b12f              # double 0.89837800260059975
	.quad	0x3fe53b577a93ac08              # double 0.66349386158742707
	.quad	0x3fb1e4de4ddf98d0              # double 0.069898504268709916
	.quad	0x3fe357d466c87571              # double 0.60447139811337369
	.quad	0x3fb97430e2ebb790              # double 0.099429183388308084
	.quad	0x3fd6c7f7fd761c4c              # double 0.35595512153708309
	.quad	0x3fe87e8b174fd0ba              # double 0.76544718316156168
	.quad	0x3fe2392072808421              # double 0.56947347987818742
	.quad	0x3fc57748ee402c7c              # double 0.16770278580984044
	.quad	0x3fe38f677a9a6416              # double 0.61125539728084521
	.quad	0x3fcd62a4d4a55d88              # double 0.22957287200072707
	.quad	0x3fef3146f97fe75f              # double 0.97476528864283895
	.quad	0x3fd751969ee29f90              # double 0.36435475841653275
	.quad	0x3fec3574d6a36245              # double 0.88152543946768758
	.quad	0x3fc1eadcd00323c0              # double 0.13997993618820992
	.quad	0x3fe392da6c6e8a43              # double 0.61167641809544937
	.quad	0x3fb78dc8f8f95280              # double 0.092007218155524483
	.quad	0x3fe22db9cbbed2fd              # double 0.56808175844216147
	.quad	0x3fe3d4dfd2b25fcb              # double 0.61973563338960369
	.quad	0x3fe9a2564df3e44d              # double 0.80106654381882836
	.quad	0x3fe2a8a0d4451c72              # double 0.58308450182893368
	.quad	0x3fd3a73abd0c8a36              # double 0.30708187543692433
	.quad	0x3febae6a3960e8a7              # double 0.86504088598964735
	.quad	0x3fb13fff65b37f88              # double 0.067382776574502867
	.quad	0x3fa5d054ebead140              # double 0.042605069921963779
	.quad	0x3fbcbb51becd33b8              # double 0.11223326595536676
	.quad	0x3fe8aeb94ef32340              # double 0.77132859630464878
	.quad	0x3feb4017a22a7afb              # double 0.85157376931223838
	.quad	0x3fd80af4e53358a0              # double 0.37566873915546672
	.quad	0x3fee9b39a55769ea              # double 0.95644838612798577
	.quad	0x3fd6286093a171f4              # double 0.34621443192534618
	.quad	0x3fccfdd76dc0e4d4              # double 0.22649662837083062
	.quad	0x3fed090b55f3ad8e              # double 0.90735403811906834
	.quad	0x3fd68709c6c2b72a              # double 0.35199207697120249
	.quad	0x3fe8b8d5fb044e4a              # double 0.77256297136995866
	.quad	0x3fd9c5e337f17e52              # double 0.40270309889999567
	.quad	0x3fe9f4d8ac2241ce              # double 0.81113847370039038
	.quad	0x3fc4e001664994c0              # double 0.16308610434058401
	.quad	0x3fe020a0914212ee              # double 0.50398281450961036
	.quad	0x3fc5040e1308de44              # double 0.16418624810624938
	.quad	0x3fd60f66224bb2a2              # double 0.34468987797917283
	.quad	0x3fe0047ccbc8f406              # double 0.50054778863670957
	.quad	0x3fda0507808baee4              # double 0.40655696442875766
	.quad	0x3fec6056c4f390f8              # double 0.88676012484623268
	.quad	0x3feafd4e6b2d345e              # double 0.84342118199277727
	.quad	0x3fc8455eaa8e1b44              # double 0.18961699798475184
	.quad	0x3fec708f54710390              # double 0.88874021999810005
	.quad	0x3feea586ed2b64fd              # double 0.95770593950433602
	.quad	0x3fc193027d9287f4              # double 0.13729888087715347
	.quad	0x3fc1d291745253c0              # double 0.1392385309196964
	.quad	0x3fefefaf8a9fcc00              # double 0.99800850939789143
	.quad	0x3f92638d298a29e0              # double 0.017957883510954065
	.quad	0x3fef96be55a8f1a6              # double 0.98715130548912522
	.quad	0x3fd204f7db63b9d6              # double 0.28155323433648272
	.quad	0x3fbfeb584c387760              # double 0.12468482838491246
	.quad	0x3f82c72a8a83e600              # double 0.0091689418336384775
	.quad	0x3fcef2f84db46dd8              # double 0.2417898539941763
	.quad	0x3fe2f084428cb399              # double 0.5918599414632012
	.quad	0x3fc23238be19774c              # double 0.14215764314843182
	.quad	0x3fd4212ad50226f6              # double 0.31452437211611028
	.quad	0x3feeb535383137ee              # double 0.95962010359812466
	.quad	0x3fea3bcfc09a50b8              # double 0.81980121247990834
	.quad	0x3fed50390f9478fd              # double 0.91604283373797524
	.quad	0x3fec049aa2fc3274              # double 0.87556201775585273
	.quad	0x3fe212bdeced0fbe              # double 0.56478782915700498
	.quad	0x3fd5dba57ae1c380              # double 0.34153115272697931
	.quad	0x3f70de2d6b3b2680              # double 0.0041181348967228582
	.quad	0x3fed6bee75572d67              # double 0.91942522924493353
	.quad	0x3fd3632818777872              # double 0.30292703999828696
	.quad	0x3fee655bebc58f5e              # double 0.94987293290294494
	.quad	0x3f90d70b140bb7e0              # double 0.01644532499170015
	.quad	0x3fecdb4357e3bce2              # double 0.90176551023423834
	.quad	0x3fe91a049060e884              # double 0.78442600439963472
	.quad	0x3fb74c3d0812a010              # double 0.091007055731666008
	.quad	0x3fdd8afc5a9c64a2              # double 0.46160801743242008
	.quad	0x3fdbd6f43b540656              # double 0.43499475282451294
	.quad	0x3fe6dbd08aeb88f0              # double 0.71433283932517888
	.quad	0x3fa74cff5bffe710              # double 0.045509319286749172
	.quad	0x3fdd671b8c55bb2e              # double 0.45941818909243437
	.quad	0x3fa893eb1315a080              # double 0.048003526763580773
	.quad	0x3fd497fcce16c954              # double 0.32177658201103054
	.quad	0x3feee66c6a11237c              # double 0.96562786785317156
	.quad	0x3fcbf174f704b3a4              # double 0.21830617963260324
	.quad	0x3fe9e3329c481624              # double 0.80898409389255165
	.quad	0x3fc8e68db72e6578              # double 0.19453593677898673
	.quad	0x3fcde3afec85e9f8              # double 0.23351096199969823
	.quad	0x3fe5e83e31622dd5              # double 0.68459996838776738
	.quad	0x3fded4cf2632893e              # double 0.48173884134498113
	.quad	0x3fc93c29d820f988              # double 0.19714854291119033
	.quad	0x3fe56f8d86412618              # double 0.66986728879527657
	.quad	0x3fe42ed198e01568              # double 0.63071517809355004
	.quad	0x3faf34ad9d21b070              # double 0.060948777609923677
	.quad	0x3fe8e3ceb15ac747              # double 0.77780851974078125
	.quad	0x3fedbd9f8bb75dd5              # double 0.92939736641249715
	.quad	0x3fa8d25c246d7220              # double 0.048479918905943942
	.quad	0x3fcb27bfe1685950              # double 0.21215055948477834
	.quad	0x3fe89cc0558be93d              # double 0.76913468082719982
	.quad	0x3fde07ed1d5e00de              # double 0.46923377864733407
	.quad	0x3fd237a3d5d6d022              # double 0.28464599497533716
	.quad	0x3fdb37999f9b3484              # double 0.42526856028127491
	.quad	0x3f85d4673e054480              # double 0.010659033374994076
	.quad	0x3fe3e0f9ebc653f2              # double 0.62121292161702812
	.quad	0x3fb6c04032afaa38              # double 0.088871013998564119
	.quad	0x3fbb82d9e38035b0              # double 0.10746537975520343
	.quad	0x3fdafff1e02b3fe2              # double 0.42187163249491111
	.quad	0x3fce62bb49608488              # double 0.23738804896223464
	.quad	0x3fdb7f78651cc418              # double 0.42965516924147229
	.quad	0x3fe65c81fd1a938a              # double 0.69879245218599917
	.quad	0x3fe0e4f51bc94bf6              # double 0.52794890810980522
	.quad	0x3fe7c81970cff136              # double 0.74317619355819065
	.quad	0x3fe02a4fe9c5921e              # double 0.50516505869433437
	.quad	0x3f8cf95aa7c2e780              # double 0.014147480244321775
	.quad	0x3fcac6338c7cc3a8              # double 0.20917362556204222
	.quad	0x3fe159dd96310b64              # double 0.54221991857808094
	.quad	0x3fc1310e59e39c24              # double 0.13430957211605332
	.quad	0x3fc48cdaaaa33af0              # double 0.16054852802195496
	.quad	0x3fc0481d7a9a64f0              # double 0.1272007797859156
	.quad	0x3fd3c246724733ee              # double 0.30873261604284508
	.quad	0x3fef9fd7bc9736cc              # double 0.98826205095402874
	.quad	0x3fea596b3f1baceb              # double 0.82341539693643762
	.quad	0x3fd49548880ecf18              # double 0.32161153113269014
	.quad	0x3fe9d6b2e263368e              # double 0.80745834556883422
	.quad	0x3fe8de8ec6775983              # double 0.77716768992358742
	.quad	0x3fee9a53f08f5470              # double 0.95633885368682847
	.quad	0x3fc0a52274aaa49c              # double 0.13003950783357687
	.quad	0x3fd7d21de53b0bc8              # double 0.3721995104389717
	.quad	0x3fdf7c6a01e8300e              # double 0.49196863352040132
	.quad	0x3feb39f65763d9fa              # double 0.85082547253006102
	.quad	0x3fd4e6b71ff26896              # double 0.32658174629035253
	.quad	0x3fddd1c4eb945a18              # double 0.46592829709826011
	.quad	0x3fe5c2ada12950a7              # double 0.68001443363984471
	.quad	0x3feeb8ac7459f572              # double 0.96004317021258445
	.quad	0x3fe76213cfc42ab3              # double 0.73072233752585303
	.quad	0x3fe81ebf48ea755a              # double 0.75375332108857696
	.quad	0x3fd5f24fb95ecfb4              # double 0.34291451551984697
	.quad	0x3fe989d070375cbf              # double 0.79807302396047664
	.quad	0x3fd1460839dce33c              # double 0.2698994221751041
	.quad	0x3fc91762b446058c              # double 0.19602617075365136
	.quad	0x3fcfaf8798df4c68              # double 0.24754424061265756
	.quad	0x3fe972b9f984bf60              # double 0.79525469526377534
	.quad	0x3fab2cb408562f20              # double 0.053075433747919343
	.quad	0x3fd9e7e56bd27836              # double 0.40477881936556359
	.quad	0x3fc8560372edf4a4              # double 0.19012492286484417
	.quad	0x3fd778953a97830e              # double 0.36673479768619266
	.quad	0x3fee20c7bc0e1e3d              # double 0.94150149087449331
	.quad	0x3fe9eb69f02724de              # double 0.80998703865875732
	.quad	0x3fe46c73515d8b01              # double 0.63823858157806523
	.quad	0x3fbb6abe9c1c1850              # double 0.10709754287026496
	.quad	0x3fda2fa5715a84d2              # double 0.40915809697805827
	.quad	0x3fa6239736e34e50              # double 0.04324028534906843
	.quad	0x3fb126f1f2467ff8              # double 0.067000505112900899
	.quad	0x3fbe97c0cc68b980              # double 0.11950306883293216
	.quad	0x3feb382e04e551cd              # double 0.85060788112837715
	.quad	0x3fd7b5d00edcfcb0              # double 0.37047196818816541
	.quad	0x3fd2b2ba6578d982              # double 0.29215869817144136
	.quad	0x3fe1f391fbb52c52              # double 0.5609826961675799
	.quad	0x3fe47a44f785a64c              # double 0.63992546409753848
	.quad	0x3fece67146114105              # double 0.90313018498457664
	.quad	0x3fe462b8b7996176              # double 0.63705097064216321
	.quad	0x3fa943178c3e6dd0              # double 0.049339996213543125
	.quad	0x3fdf4b89d393040e              # double 0.48898549710799066
	.quad	0x3fb5717ccc355aa0              # double 0.083762931685991138
	.quad	0x3fe7ca5693f8a8b3              # double 0.74344948673867461
	.quad	0x3fdfff3cc0ceb4ec              # double 0.49995344952442511
	.quad	0x3fea2c3e942de95c              # double 0.81790093365934124
	.quad	0x3fe466ac7cd1920a              # double 0.63753342035903526
	.quad	0x3fe7519bb063de5f              # double 0.72871193362420772
	.quad	0x3fe03b249f8f0c41              # double 0.50721961177658426
	.quad	0x3fe15be1ec85219a              # double 0.5424661273510083
	.quad	0x3fe852f9e457453c              # double 0.76012892339546267
	.quad	0x3fdb5e380bdf1954              # double 0.42762566718410722
	.quad	0x3fc0a6f7e9d028e4              # double 0.13009547154098933
	.quad	0x3fa23a22b0279750              # double 0.035599788668874255
	.quad	0x3fe1062048eba4d5              # double 0.53199781648904809
	.quad	0x3fec719be2d86ac9              # double 0.88886827760446707
	.quad	0x3fdcd7c5d0b2676e              # double 0.45066972141795858
	.quad	0x3fd92c50f60e8a48              # double 0.39332984951957828
	.quad	0x3fe8892eb58a16cc              # double 0.76674590546527943
	.quad	0x3feae61f8fde426f              # double 0.84059122180231138
	.quad	0x3feeb80364b09c02              # double 0.95996255556099208
	.quad	0x3fdf3b63fec9d162              # double 0.48799991494822426
	.quad	0x3f97dd608d41fa00              # double 0.023305424329459257
	.quad	0x3f822cf5f8fb56c0              # double 0.0088748184784138706
	.quad	0x3fd7a1612cc765fc              # double 0.3692248284620232
	.quad	0x3fad62f16a198f20              # double 0.057395500375404973
	.quad	0x3fe4759c08c32650              # double 0.63935662948024152
	.quad	0x3fb9103fb3df6538              # double 0.097904187597482983
	.quad	0x3fe4571a95a0b2cb              # double 0.63563279365697534
	.quad	0x3fef46520e818363              # double 0.97733404954133751
	.quad	0x3fd0243a7368fa24              # double 0.25221120138658848
	.quad	0x3fd67bedbca3338a              # double 0.35131400510436406
	.quad	0x3fe5c11e1c41ac55              # double 0.67982392805914549
	.quad	0x3fef60733a8a5f4b              # double 0.98052369531340255
	.quad	0x3f9d732243579ac0              # double 0.028759513244859702
	.quad	0x3fe1e8cbe2315a21              # double 0.5596675317600025
	.quad	0x3fe9a33bb5642f45              # double 0.80117593219754524
	.quad	0x3fe8413071dc43f8              # double 0.75795767057763808
	.quad	0x3fe7406a3c182cff              # double 0.72661315667338033
	.quad	0x3fd7c5729b6fc96c              # double 0.37142625026094467
	.quad	0x3fe3ff0426eec520              # double 0.62487990955392902
	.quad	0x3fefd90c2b0741b9              # double 0.9952450600049395
	.quad	0x3fe120e40250d787              # double 0.53526497318556288
	.quad	0x3faf6f6dffd59290              # double 0.061397016029137608
	.quad	0x3fcfbea2bcdd6974              # double 0.24800523969572519
	.quad	0x3fe831b8e19cb8fd              # double 0.75606960358507502
	.quad	0x3fe7f71f49cacc00              # double 0.74891628658804166
	.quad	0x3fdfd3306c86f434              # double 0.49726496313434443
	.quad	0x3fd2c3bdef43d07c              # double 0.29319713941300285
	.quad	0x3fef457aab68560f              # double 0.97723134496726682
	.quad	0x3fa97e0dabeb8590              # double 0.049789836155251455
	.quad	0x3fe6ba44e12e8c65              # double 0.71023792248560069
	.quad	0x3fd03c6b45433278              # double 0.2536876846686833
	.quad	0x3fcbae994e625c0c              # double 0.21626583411554667
	.quad	0x3fcffee7c915dfe8              # double 0.24996659582734471
	.quad	0x3fd69e8c80d564ee              # double 0.35342705327418755
	.quad	0x3fc13a79853ac0c0              # double 0.13459700589510781
	.quad	0x3fe8ace18ed6c851              # double 0.77110364816895516
	.quad	0x3fbd975fb54e1ce8              # double 0.11559103180308095
	.quad	0x3fe9ad79784d5978              # double 0.80242608543885208
	.quad	0x3fbe5353e6fe7328              # double 0.11845898046017267
	.quad	0x3fe54dadc42c2be4              # double 0.66573227229070797
	.quad	0x3fe1fc39a50be814              # double 0.56203920589109879
	.quad	0x3fe5d05232ca325e              # double 0.68167982025040508
	.quad	0x3feb3ab9a796aee6              # double 0.85091860515737205
	.quad	0x3fdc293314628c34              # double 0.44001461973875
	.quad	0x3fcd4dc8409d5140              # double 0.2289362254620162
	.quad	0x3fd5112c2d925a80              # double 0.32917313051567731
	.quad	0x3fd9a0d105a5365e              # double 0.40044045974068421
	.quad	0x3fd9ec74357ee1a2              # double 0.405057003251864
	.quad	0x3fefd8ab7bf42abc              # double 0.99519895753595433
	.quad	0x3fd4051f947448f4              # double 0.31281270501598546
	.quad	0x3fdbcef7b93ab8de              # double 0.43450730408484428
	.quad	0x3fe0b362a03e296a              # double 0.52189761445451421
	.quad	0x3feee3e74f34b20f              # double 0.96532025785342223
	.quad	0x3fef98c9b54b4fe5              # double 0.98740086945553839
	.quad	0x3f859d2c28853e00              # double 0.010553688990198928
	.quad	0x3fb4b1c790abc450              # double 0.080837700672206524
	.quad	0x3fd67c8b590c0e68              # double 0.35135158248906473
	.quad	0x3fc635b2a31295d8              # double 0.17351372683076138
	.quad	0x3fc9da587ebbee9c              # double 0.20197588146389911
	.quad	0x3fe19f62986dc06a              # double 0.55070619364961471
	.quad	0x3fe8771e16a37ab4              # double 0.7645407144699079
	.quad	0x3fccd7afcc8806ac              # double 0.22533223616487896
	.quad	0x3fd161de29de98fe              # double 0.27159837807484155
	.quad	0x3fea77f34a3fa545              # double 0.82714237691576697
	.quad	0x3fe91a2f6f2358bb              # double 0.7844464464822275
	.quad	0x3fe22ebb84901833              # double 0.56820464984116936
	.quad	0x3fedd941166eff64              # double 0.93277029401359046
	.quad	0x3fe66a8c7d365e40              # double 0.70050644355337255
	.quad	0x3fd10cc09a0f9666              # double 0.26640334172257096
	.quad	0x3feb86676d7fd4c2              # double 0.86015674006070975
	.quad	0x3fde895ef57deca6              # double 0.47713445638482666
	.quad	0x3fe3cde5199ab256              # double 0.61888365746342333
	.quad	0x3fe1161a970e1fd7              # double 0.53394822600329916
	.quad	0x3fa4e8d539ba18a0              # double 0.040838874146218673
	.quad	0x3fd424bb0a87c96a              # double 0.31474185970650714
	.quad	0x3fbd23bf0f5cab80              # double 0.11382669568108206
	.quad	0x3fefa385cf36b30f              # double 0.98871126624507776
	.quad	0x3fd38d84bd5bf566              # double 0.3055126046382014
	.quad	0x3fe2c8ffb4a01f34              # double 0.58703599241650872
	.quad	0x3fd0b7d8047a7f5e              # double 0.26122093617776965
	.quad	0x3fb3054c43ddc060              # double 0.074299589699650337
	.quad	0x3fed8a0a2da180ea              # double 0.92310055649070688
	.quad	0x3fe2b5b4ca34a7f5              # double 0.58468093388842013
	.quad	0x3fcab413af74e4c4              # double 0.20862051074235499
	.quad	0x3fe5224d91cf4ac8              # double 0.66043737867797692
	.quad	0x3fd5c97942248254              # double 0.34042197665443052
	.quad	0x3fe5a10eb3d6a18c              # double 0.67591033100784292
	.quad	0x3fdb2768f90fe6c4              # double 0.4242803985831467
	.quad	0x3f7df5cbfdb0c300              # double 0.0073144882581324122
	.quad	0x3feae00d6e3591ab              # double 0.83985015416378894
	.quad	0x3fe43a409740868b              # double 0.63211087743202776
	.quad	0x3fd8d0af10ac06d2              # double 0.38773705127833324
	.quad	0x3fd75fdc0b85c2f0              # double 0.36522580266232207
	.quad	0x3fdf924d4cd44e38              # double 0.49330456259596955
	.quad	0x3fe83891558fac58              # double 0.75690523825813738
	.quad	0x3fe308d4f2f4b230              # double 0.59482810451806323
	.quad	0x3fc5229352651f70              # double 0.16511765978998083
	.quad	0x3fe3611b5fce1d92              # double 0.60560387336674837
	.quad	0x3fefbbe82bee8ce5              # double 0.99168785648762691
	.quad	0x3fef286ddbde89db              # double 0.9736851972887125
	.quad	0x3fea9abf4ed023a3              # double 0.83139005082295048
	.quad	0x3fe7162113e051b2              # double 0.72145131952361496
	.quad	0x3feda2a82ee302ac              # double 0.9261055866009733
	.quad	0x3fd28612b9d5201a              # double 0.28943317554194581
	.quad	0x3fd303e77bcb7dea              # double 0.29711329545349818
	.quad	0x3fe38e90869bf6af              # double 0.61115289965501585
	.quad	0x3fd0bffd0bffb248              # double 0.26171804591902914
	.quad	0x3fde4f08d59b2d8a              # double 0.47357388362862507
	.quad	0x3fd1a059e9a5b316              # double 0.27541206185451139
	.quad	0x3fd624fa4769a2da              # double 0.34600693677798022
	.quad	0x3fea56f2034679fc              # double 0.82311344756800464
	.quad	0x3fe73394384a8f27              # double 0.72504626268753192
	.quad	0x3fddbc83e94b4842              # double 0.46463105948089745
	.quad	0x3fe75cc11a477862              # double 0.73007254727032156
	.quad	0x3fd9791d2ecabaa0              # double 0.3980172116234062
	.quad	0x3fecd1043e4c6c08              # double 0.90051471870117528
	.quad	0x3fbccb04c1d1a9e8              # double 0.11247281772526885
	.quad	0x3fbb399f79de9b48              # double 0.10634800649004916
	.quad	0x3fdeb03a414f95e2              # double 0.47950607660308553
	.quad	0x3fda866801837e6a              # double 0.41445350787942081
	.quad	0x3fe507eb666c8075              # double 0.65721673969893735
	.quad	0x3fe925f65f1bb82c              # double 0.78588408065639248
	.quad	0x3fef3f0911a5f04a              # double 0.9764447540942538
	.quad	0x3fc3dc251a033e58              # double 0.1551557900443068
	.quad	0x3fe2052ebb0b7c6a              # double 0.56313263446999184
	.quad	0x3fe016b31585ad1b              # double 0.50277094081448881
	.quad	0x3fe7e1232cdc4e96              # double 0.7462325931723679
	.quad	0x3fea480bf64d5639              # double 0.82129476648214628
	.quad	0x3fe5fc43c0d243c6              # double 0.6870440259973456
	.quad	0x3fad6f51f873cee0              # double 0.057489930704745396
	.quad	0x3fd0230265069666              # double 0.2521368013934534
	.quad	0x3f6de4e0582f5e00              # double 0.0036491758087142667
	.quad	0x3fe5712c85d8049d              # double 0.67006517545100375
	.quad	0x3fb59970d18afad8              # double 0.084372569234783312
	.quad	0x3fcb66caeca7db44              # double 0.21407448344663227
	.quad	0x3fdf4605b6c4b82e              # double 0.48864882324676528
	.quad	0x3fe719b07f669852              # double 0.72188591845475458
	.quad	0x3fe50a9c32bf9f92              # double 0.65754518424818031
	.quad	0x3fc377ccc569dda4              # double 0.1520935024197857
	.quad	0x3fd72681d592b512              # double 0.36172529083963056
	.quad	0x3fe11d4baf001472              # double 0.53482612781284744
	.quad	0x3fcd84a9505c9694              # double 0.23061100410375401
	.quad	0x3fe80778881db240              # double 0.75091196618229361
	.quad	0x3fdf6b1a85579b6a              # double 0.49091208478642179
	.quad	0x3fee1dd505b411f7              # double 0.94114161600060597
	.quad	0x3fdaa9f52d303c16              # double 0.4166233960431226
	.quad	0x3feba4b5f3797591              # double 0.86385629228213834
	.quad	0x3fe3f333d896c01d              # double 0.62343780806077442
	.quad	0x3fe17631b21873a1              # double 0.54567799362449787
	.quad	0x3fee570c1c8ce6b6              # double 0.94812589241265388
	.quad	0x3fae1cb027cdf080              # double 0.058812622889463206
	.quad	0x3fda24085e69fb5e              # double 0.40844926090351474
	.quad	0x3fda960634e1e782              # double 0.41540675319958364
	.quad	0x3fe5ccc9c4086a3c              # double 0.6812485531584751
	.quad	0x3fe2000ee3507dea              # double 0.56250709912631902
	.quad	0x3fd8bec9394dfd78              # double 0.38664465519101254
	.quad	0x3fe93c4bede4a1fe              # double 0.78861042464728803
	.quad	0x3fce27ceca789920              # double 0.23558983694346924
	.quad	0x3f9c85831d086fa0              # double 0.027853058478384818
	.quad	0x3fa3a940eb5317e0              # double 0.038400677419801132
	.quad	0x3fd49e9b3df85e22              # double 0.32218056728149425
	.quad	0x3fc411a65d76b584              # double 0.15678863109262065
	.quad	0x3fef600bdb1b7ed8              # double 0.98047440332808388
	.quad	0x3fc403c45c7df5cc              # double 0.15636496082508555
	.quad	0x3fd8b54692fbccac              # double 0.38606418947092425
	.quad	0x3fef5074da67cd7b              # double 0.97857134492225783
	.quad	0x3feabdc5594e2465              # double 0.83566539232664339
	.quad	0x3f76d69aa2e37a80              # double 0.0055757561187578242
	.quad	0x3fd5078f8c2adb0a              # double 0.32858647049162981
	.quad	0x3fd590894b1ae686              # double 0.33694679579239339
	.quad	0x3fe24cda94448a23              # double 0.57188157042066157
	.quad	0x3fe51a3122a54183              # double 0.65944725767808199
	.quad	0x3f94c7569dda9fc0              # double 0.020291665444034157
	.quad	0x3fe623e631b2ae90              # double 0.69188222605358085
	.quad	0x3fa573f0f0ac9aa0              # double 0.041900185946635249
	.quad	0x3fbf7fbc605c3318              # double 0.1230428443197521
	.quad	0x3fca4667083e64e4              # double 0.20527351286435824
	.quad	0x3fed7cabb4c561b5              # double 0.92146859461632025
	.quad	0x3fee8243ea0cf7dd              # double 0.95340152466792072
	.quad	0x3fdfe617b2560322              # double 0.49841873565314831
	.quad	0x3fc27cf64400c6a4              # double 0.14443853683910846
	.quad	0x3feff8af265d397a              # double 0.99910695546149886
	.quad	0x3feb6c301cf2b5c4              # double 0.85695653585360576
	.quad	0x3fe23eefd26014b2              # double 0.57018271531037201
	.quad	0x3fde0f9070f510fa              # double 0.46969996481881504
	.quad	0x3fd92c0c5802d80e              # double 0.39331348986468206
	.quad	0x3fe0eae0fa757861              # double 0.52867173116443322
	.quad	0x3fdbae192509cc52              # double 0.43250111214655818
	.quad	0x3fd1995bed8e222c              # double 0.27498529623747703
	.quad	0x3fdc508b019901f4              # double 0.4424159541704562
	.quad	0x3fab1d6137190010              # double 0.052958524680889352
	.quad	0x3fe1b094bb3ae49e              # double 0.5528052956425602
	.quad	0x3fe04496b0d71a55              # double 0.50837263621435602
	.quad	0x3fd031cb84f1abce              # double 0.25303924544158185
	.quad	0x3fe575d27879f7f6              # double 0.67063258677057891
	.quad	0x3fdb6bd1ed45762a              # double 0.42845581217793216
	.quad	0x3fbb25a347f6da88              # double 0.10604305750789866
	.quad	0x3fd93da6dc5f0b60              # double 0.39438792725211691
	.quad	0x3fc825f83dd82df8              # double 0.18865874309300046
	.quad	0x3fb7ce71e7418c18              # double 0.092993849715228172
	.quad	0x3fef79d810174c32              # double 0.98362353461050689
	.quad	0x3fea48407924a8fd              # double 0.82131980572492547
	.quad	0x3fe71b25fb365eec              # double 0.72206400933188553
	.quad	0x3fe536a69d5b7315              # double 0.66292124494393312
	.quad	0x3fc2a50f5e417a34              # double 0.14566223242123189
	.quad	0x3fedc8d490cb88d9              # double 0.93076542167934939
	.quad	0x3fecc1dfe7e19fa6              # double 0.89866633691143671
	.quad	0x3fefb1c161df77a5              # double 0.99044865718655172
	.quad	0x3fe9a14d4d4257e4              # double 0.80094018068006933
	.quad	0x3fde086c9e55798a              # double 0.46926417791646513
	.quad	0x3fdcb1f1fa553baa              # double 0.44836091467453321
	.quad	0x3fe8f41ca1ec886c              # double 0.77979880929730205
	.quad	0x3feefe081b4f471e              # double 0.96850972494050658
	.quad	0x3fbc1eee6c1ed738              # double 0.10984697475109051
	.quad	0x3fe9a28b8c480f35              # double 0.80109193228461228
	.quad	0x3fc3fa1be523babc              # double 0.15607021988349412
	.quad	0x3fc9364f056cbb14              # double 0.19696986927871107
	.quad	0x3feb1ee4cd6bc336              # double 0.8475212108734016
	.quad	0x3fe883c518857f27              # double 0.76608519353246585
	.quad	0x3fb1cb837ed44678              # double 0.069511621917877409
	.quad	0x3fb0245f0c82eac8              # double 0.063054981760539808
	.quad	0x3fd0ef77fb96a848              # double 0.26461600846471756
	.quad	0x3fd14dc81ed8107e              # double 0.27037241947278534
	.quad	0x3fec7bcb5eeab9d1              # double 0.89011162317711456
	.quad	0x3fec34fb901e9973              # double 0.88146761082025049
	.quad	0x3fe36665adb07603              # double 0.60624965594951197
	.quad	0x3fe99ca0b0d58559              # double 0.8003695920744277
	.quad	0x3febe84b2b7c56cf              # double 0.87210615628529264
	.quad	0x3fe92c9a2c163bf8              # double 0.78669460879052533
	.quad	0x3fd3644f4bb5e406              # double 0.30299742120365669
	.quad	0x3fe4738441567fec              # double 0.63910115014368563
	.quad	0x3fc05a124b8c00cc              # double 0.12774876297772264
	.quad	0x3feb2d3e3ba348cd              # double 0.84927283905042261
	.quad	0x3fd82f11af76bda2              # double 0.37787286887302163
	.quad	0x3fa87799abf87b30              # double 0.047787477724560268
	.quad	0x3fe2edaa386e8616              # double 0.59151183149168918
	.quad	0x3fe457b065f34937              # double 0.63570423042464241
	.quad	0x3fdf48c0e6260780              # double 0.48881552195972944
	.quad	0x3fc199f3be3d4240              # double 0.13751074589755952
	.quad	0x3fe0ac31c7530e85              # double 0.5210198300414538
	.quad	0x3fe034bb0f3ef70f              # double 0.50643685319639242
	.quad	0x3fcf9720b2e54320              # double 0.24679955229887529
	.quad	0x3fe5187535e7c521              # double 0.65923557785405162
	.quad	0x3fd1f86fc5dcdd06              # double 0.28078836748632374
	.quad	0x3fd462df43ee2f58              # double 0.3185346759207639
	.quad	0x3fd1726550abdf86              # double 0.27260716322006606
	.quad	0x3fd4a5687769b592              # double 0.32259570752543099
	.quad	0x3fb2df6a428ac7a0              # double 0.073721543546325652
	.quad	0x3fd7ae7ef3b98484              # double 0.37002538491476167
	.quad	0x3fc3cc0353176438              # double 0.15466348225780435
	.quad	0x3fcccd044b4cca5c              # double 0.2250066154170608
	.quad	0x3fdcb929e31bfd12              # double 0.44880149058003938
	.quad	0x3f7209cd911ac800              # double 0.0044038801149088869
	.quad	0x3fe9aa3e5b1e530b              # double 0.80203168675015613
	.quad	0x3fc10a37fbb175d8              # double 0.13312434949595686
	.quad	0x3fc2ce6652d97ff4              # double 0.1469238190211396
	.quad	0x3fdc0ef803810e78              # double 0.43841362325858979
	.quad	0x3fc261b4510d467c              # double 0.1436067004929561
	.quad	0x3fe270add90bb27b              # double 0.57625477210747478
	.quad	0x3fed05ea7f1a0f0d              # double 0.90697216820305615
	.quad	0x3fdfdf1fd66d594a              # double 0.49799343052054168
	.quad	0x3fddb657e77b4154              # double 0.46425435643779633
	.quad	0x3fc41a11bb03d254              # double 0.15704557067478453
	.quad	0x3fc8ff8c5df81648              # double 0.19529871548017952
	.quad	0x3fe2ee49af1be0ad              # double 0.59158786965328647
	.quad	0x3fe3fd332b1b8d3e              # double 0.62465818805177498
	.quad	0x3fc5db5d077cb29c              # double 0.17075693955975602
	.quad	0x3fd454488ceafcc0              # double 0.31764425050273459
	.quad	0x3fe6dafcc3d2b6e2              # double 0.71423185583782023
	.quad	0x3fd8a393a35e68a4              # double 0.38498393014891463
	.quad	0x3feaa9f580fb34e1              # double 0.83324694816260714
	.quad	0x3fe64f1e11f56634              # double 0.69715789325272803
	.quad	0x3fd6fc55ef89faf0              # double 0.3591513480422881
	.quad	0x3f9b0ab0b9766840              # double 0.026407967872366322
	.quad	0x3fafe8af3631b320              # double 0.062322116246696035
	.quad	0x3fe426fce69ae04a              # double 0.62975926437412366
	.quad	0x3fd7f36186ac4d5c              # double 0.37422979499497955
	.quad	0x3fecac3575f23955              # double 0.89602158581127844
	.quad	0x3fa13a028cc3eab0              # double 0.033645705874694953
	.quad	0x3fcb60f6a538a6b0              # double 0.21389658992238969
	.quad	0x3fe96f9a3188a91d              # double 0.79487332987381232
	.quad	0x3fc1451e7d927564              # double 0.134921847643379
	.quad	0x3feddf343b2da186              # double 0.93349658544779923
	.quad	0x3fed6cce892284b7              # double 0.91953207763812983
	.quad	0x3fc714a5dd98054c              # double 0.1803176242829444
	.quad	0x3fa4cd49c3706b70              # double 0.040628724200550859
	.quad	0x3fe2ee245092dacf              # double 0.59157005059281598
	.quad	0x3fe29f5d452a91b7              # double 0.58195365437545987
	.quad	0x3f8cda9d0659c0c0              # double 0.014088846927933552
	.quad	0x3fcdc4c422dce340              # double 0.2325673265675281
	.quad	0x3fe53718297eb121              # double 0.66297538856955296
	.quad	0x3fe951b6121f53ee              # double 0.79122451343084577
	.quad	0x3fe1295c62a3724c              # double 0.53629893555950892
	.quad	0x3fecd2dde8db5dda              # double 0.90074058036673965
	.quad	0x3fecc52a5b2dc6a1              # double 0.89906804855691658
	.quad	0x3fedaa427ffff104              # double 0.92703366279559462
	.quad	0x3fcdaf437768176c              # double 0.23191111879730941
	.quad	0x3f9d910e029284a0              # double 0.028873652369502012
	.quad	0x3fd74ad8c229c7d0              # double 0.36394328080416205
	.quad	0x3fe03020453b4abb              # double 0.50587476274298326
	.quad	0x3fc195bfec7b59a4              # double 0.13738249823536564
	.quad	0x3fd2d606a08840c0              # double 0.29431310345627182
	.quad	0x3fe58791f4bc081a              # double 0.67279908942896616
	.quad	0x3fc0d2be249de210              # double 0.1314313582222586
	.quad	0x3fd7fc056edaf4fe              # double 0.37475715470993964
	.quad	0x3fc5b314d9f25734              # double 0.16952763215948041
	.quad	0x3fcdebfbe027f5b4              # double 0.23376415677186702
	.quad	0x3fd8d017cced58a8              # double 0.38770098698058542
	.quad	0x3fb164420b17d6e0              # double 0.067936065395624023
	.quad	0x3fb84bbf76da35e8              # double 0.094905821339316909
	.quad	0x3fecd3bffc5f61fd              # double 0.90084838191529537
	.quad	0x3fd8389fe6fb719c              # double 0.37845609242301648
	.quad	0x3feb4364fbe505e1              # double 0.85197686384361415
	.quad	0x3fd532b791a743f2              # double 0.33122052406275693
	.quad	0x3fe59c44f952782e              # double 0.67532585807544421
	.quad	0x3fe3fc85855a0eb0              # double 0.62457538647909949
	.quad	0x3fe8722f815139bb              # double 0.76393866784365316
	.quad	0x3fe0e4ed4356de37              # double 0.52794516708576722
	.quad	0x3fdff5071e2e2600              # double 0.49933031031886799
	.quad	0x3fe982b7816f1c96              # double 0.79720664291461918
	.quad	0x3fc3838615ae1d28              # double 0.15245128687477316
	.quad	0x3fd32b015eef3c50              # double 0.29949983855198514
	.quad	0x3feb5fdaffb93003              # double 0.85545110650991807
	.quad	0x3fc9e09bb5b1af88              # double 0.20216699954778172
	.quad	0x3fa063dcd56d7ae0              # double 0.032011891415768323
	.quad	0x3fdd193836b99c10              # double 0.45466428131334258
	.quad	0x3fe91d8c5d50cd93              # double 0.7848569700785667
	.quad	0x3fef44d7cc9b6e97              # double 0.97715368234954069
	.quad	0x3fe50356124aeda7              # double 0.6566572530058935
	.quad	0x3fe436e79dda82f1              # double 0.63170224028371369
	.quad	0x3fd309c43bf761ea              # double 0.29747110229575802
	.quad	0x3fe7e15a7ad77950              # double 0.74625896446722528
	.quad	0x3fe4ab23dbe6c08f              # double 0.64589112233626789
	.quad	0x3fe90c53e78c88fb              # double 0.78275485252768762
	.quad	0x3fe479fc9eab16c8              # double 0.639890966319137
	.quad	0x3fe3bd453ce2cc74              # double 0.6168543042353023
	.quad	0x3fe6b41774482c40              # double 0.70948384009660259
	.quad	0x3f84befc71d8d280              # double 0.010129902099927479
	.quad	0x3fd83b72d7c17202              # double 0.37862845487487118
	.quad	0x3fecafc431dc6fc3              # double 0.89645585764400726
	.quad	0x3fc347eea992c50c              # double 0.1506326988215182
	.quad	0x3fcb7cc8aecbdbf8              # double 0.21474560294129197
	.quad	0x3fefce937472ec4b              # double 0.99396679634026818
	.quad	0x3fe9815ad4d93b6c              # double 0.79704038211808159
	.quad	0x3fdf7a7f21df970c              # double 0.49185159976910664
	.quad	0x3fd739022daa2692              # double 0.36285452327192858
	.quad	0x3fe4d7bcb1e62649              # double 0.65133509393599198
	.quad	0x3fe46b64cc306d44              # double 0.63810958748528224
	.quad	0x3fdf1005eaae036a              # double 0.4853529731554348
	.quad	0x3fe93eb034677b3c              # double 0.78890238032531767
	.quad	0x3fb8784f3f8e9500              # double 0.095585778252445408
	.quad	0x3fe411fc8d246fa9              # double 0.62719562117444128
	.quad	0x3fd635e52f12c090              # double 0.34703950497624536
	.quad	0x3fe3870e74cadaa2              # double 0.61023638545050951
	.quad	0x3fd648b3b5041f18              # double 0.34818737676003897
	.quad	0x3fd14b66eda98a64              # double 0.27022717675405361
	.quad	0x3fc10774645d6804              # double 0.13303999806049671
	.quad	0x3fe8f0fe191ca6ff              # double 0.77941803841278545
	.quad	0x3fc2054d2bef5d3c              # double 0.1407867874647567
	.quad	0x3fd9bcebcb7fb926              # double 0.40215582726422594
	.quad	0x3febc2dd76a76913              # double 0.86753724264716181
	.quad	0x3f9608fe532d4de0              # double 0.021518682314605075
	.quad	0x3fca2796d6199918              # double 0.20433316663838563
	.quad	0x3fe12f8698c3e313              # double 0.53705148541402747
	.quad	0x3faa3fac0489a9f0              # double 0.051267028383182978
	.quad	0x3fcce28df571ae24              # double 0.2256638954598752
	.quad	0x3fdb804acfd6bf14              # double 0.42970533653986931
	.quad	0x3fea2009f53fa370              # double 0.81641099834551589
	.quad	0x3fed4581583fd656              # double 0.91473452793315846
	.quad	0x3feb87c6d2975ab8              # double 0.86032429820155354
	.quad	0x3feee8f9ca141e88              # double 0.96593942135309962
	.quad	0x3fd04b9940bf7e5e              # double 0.25461417506264705
	.quad	0x3fd7bf53acc26dd2              # double 0.37105266448062679
	.quad	0x3fb06a1b8f6b17e0              # double 0.064119074358216732
	.quad	0x3fd607445ddab318              # double 0.3441935459657528
	.quad	0x3fd24f9a95305f8e              # double 0.28610863274797615
	.quad	0x3febbf8503f0fb39              # double 0.86712885637084647
	.quad	0x3fa15bfdc9433a40              # double 0.033904963319959069
	.quad	0x3fda7a62f328c64e              # double 0.41371988054297482
	.quad	0x3fddc0829acf6434              # double 0.46487488859344528
	.quad	0x3fef05f326c66e97              # double 0.96947629521624179
	.quad	0x3fe836ac9eef741f              # double 0.75667410890639875
	.quad	0x3fcb43652957fa04              # double 0.21299423712476095
	.quad	0x3feb5c8a659f342c              # double 0.85504646156335217
	.quad	0x3fe53657630e6ca5              # double 0.66288346621458472
	.quad	0x3feda778144367a2              # double 0.92669300038982194
	.quad	0x3feda1b323c88e37              # double 0.92598874081563209
	.quad	0x3fb9f34e95fe39c0              # double 0.10136881982746271
	.quad	0x3fdc9067ec9b123c              # double 0.44631383996992091
	.quad	0x3fd7df6dcd6efd7c              # double 0.37301201879377976
	.quad	0x3fee67c0b081a7fc              # double 0.95016512369079419
	.quad	0x3fce4fd6b3fba7dc              # double 0.23681148327096835
	.quad	0x3fe8494899f8e48b              # double 0.75894575188353153
	.quad	0x3fd5502894ca45e0              # double 0.33301748781476981
	.quad	0x3fa8aec4480c0b50              # double 0.048208364291005723
	.quad	0x3fc053e2f4a0b4a4              # double 0.12756001419748941
	.quad	0x3fa113dca13860a0              # double 0.033354658775523349
	.quad	0x3fddd065fda63b96              # double 0.46584462900585188
	.quad	0x3fd0e7276f619b80              # double 0.26410852315023448
	.quad	0x3fef3606b7da99d3              # double 0.97534500035254223
	.quad	0x3fe370b7d0127cf3              # double 0.60750952376466072
	.quad	0x3fe8f57be05f4142              # double 0.77996629545854312
	.quad	0x3fcba00f583f0d48              # double 0.21582214173222725
	.quad	0x3fdabaf7ef1e78c4              # double 0.41766165114848897
	.quad	0x3fa44d1110937ec0              # double 0.039650471948105004
	.quad	0x3fe4f12947a79aca              # double 0.65443862910327621
	.quad	0x3fede09d19208780              # double 0.93366866023664841
	.quad	0x3fee5456f25b3c91              # double 0.94779536566956513
	.quad	0x3fdf7123f3d7ab0a              # double 0.49128054440250024
	.quad	0x3fd6af3f4b9f0e9a              # double 0.35444624314207263
	.quad	0x3fd1cfd12eaf387a              # double 0.27830915030506953
	.quad	0x3fd29f97d4c9ff08              # double 0.29099078922443811
	.quad	0x3fcbb2eec3e7346c              # double 0.21639809194167314
	.quad	0x3fe10de968c8946b              # double 0.53294821229486666
	.quad	0x3fe5d5946fc94892              # double 0.68232175668005568
	.quad	0x3fc9943762f62a18              # double 0.19983570415600194
	.quad	0x3fe5003351a9a68f              # double 0.65627447080369616
	.quad	0x3fcf8b9c76446c88              # double 0.24644809508103926
	.quad	0x3fce00dcb842c880              # double 0.23440131184685598
	.quad	0x3fe302e180ec16f3              # double 0.59410166912195306
	.quad	0x3fe000b9a4dbaf74              # double 0.50008852194649345
	.quad	0x3fdd9b049ad3a3da              # double 0.4625865470866849
	.quad	0x3fadedf483c41810              # double 0.058456078610149231
	.quad	0x3fdeb83e8f9fb11e              # double 0.47999538446198808
	.quad	0x3fed3f6391533ab1              # double 0.91398790725528134
	.quad	0x3fe24de44d8c766e              # double 0.57200827738024684
	.quad	0x3fb42ecee572bf98              # double 0.078839236276279201
	.quad	0x3fdab239fdafc16e              # double 0.41712808393551526
	.quad	0x3fe4efaa877a95b4              # double 0.65425611935341133
	.quad	0x3fd1f8a17e358b70              # double 0.28080022168267416
	.quad	0x3fec39982956dd5f              # double 0.88203056406102209
	.quad	0x3fbbe2de3aa278d8              # double 0.10893048221120993
	.quad	0x3fe9b5294a12265c              # double 0.80336441485378484
	.quad	0x3fdd048cd66e99ae              # double 0.45340271893146677
	.quad	0x3feb17c2f7270a96              # double 0.84665058395360648
	.quad	0x3fe25edce51177f7              # double 0.57407994022264475
	.quad	0x3fb4a4a64a886448              # double 0.080637353130797895
	.quad	0x3fe0fa53a12375b7              # double 0.53055745575300406
	.quad	0x3fa99c2233e710c0              # double 0.050019329868093987
	.quad	0x3fd477dc8fcf004e              # double 0.31981576961334646
	.quad	0x3fe84e22e6663c0f              # double 0.75953812599061787
	.quad	0x3fe8c053050bb47f              # double 0.77347708688252215
	.quad	0x3fda367b0ed8a6e8              # double 0.40957523774942084
	.quad	0x3fb5dfbd0d09ef50              # double 0.085445228274634077
	.quad	0x3fe5ca0b0190e38c              # double 0.68091345125059055
	.quad	0x3f9cc3df4c6b1a00              # double 0.028090943373877408
	.quad	0x3fc58e8a9fd56068              # double 0.16841252140398244
	.quad	0x3fd053c8ff3b6436              # double 0.25511383938789167
	.quad	0x3fb7be9c68c2b9e0              # double 0.092752242637949234
	.quad	0x3fe837d20cc889fe              # double 0.75681402680157794
	.quad	0x3fe20054587a64e4              # double 0.56254021912459651
	.quad	0x3fd7ed9ee3ec429c              # double 0.37387821443648206
	.quad	0x3fe0c37d926ce963              # double 0.52386358832090385
	.quad	0x3f909e820b351de0              # double 0.016229659971285559
	.quad	0x3fae09632e5ef520              # double 0.058665370378984116
	.quad	0x3fe8442c4a42ffb9              # double 0.75832190040818326
	.quad	0x3febf1fda250e3d9              # double 0.873289887450592
	.quad	0x3f85dbba0d611cc0              # double 0.010673001797967152
	.quad	0x3feaa6de691f753c              # double 0.83286972553074845
	.quad	0x3fe3e0a1d3196d59              # double 0.62117091398560398
	.quad	0x3fc6a5371bbcfce8              # double 0.17691696981817207
	.quad	0x3f9994860830aaa0              # double 0.024980634927639245
	.quad	0x3f9c309bed77f400              # double 0.027529178971224866
	.quad	0x3fced327e0ac78bc              # double 0.24081896276851988
	.quad	0x3fdca7132262e428              # double 0.44769743307148469
	.quad	0x3fef509c2f962b5f              # double 0.97859010023362802
	.quad	0x3fda6c3ca1ce3ea6              # double 0.41285625268299453
	.quad	0x3fd0e34cbf5e730e              # double 0.2638732785069785
	.quad	0x3fdfd8ae7b1a8c56              # double 0.49760019323202209
	.quad	0x3fed0c81e49d07b2              # double 0.90777678156904629
	.quad	0x3fa29aa5a8b7da30              # double 0.036336113782386881
	.quad	0x3fdf1a11b45564a6              # double 0.48596613512706666
	.quad	0x3fd27fdfb674eedc              # double 0.28905480211299817
	.quad	0x3fdebf768a28404a              # double 0.48043597690503204
	.quad	0x3fd5e8cb2c2a2e90              # double 0.3423335963532077
	.quad	0x3fd5aa6b538cd384              # double 0.33852656516256041
	.quad	0x3fe2cbaab2ef2f22              # double 0.58736166904552456
	.quad	0x3fc1ff38c3cc86dc              # double 0.14060124931807294
	.quad	0x3fa9b08d13937ba0              # double 0.050175102843915242
	.quad	0x3fefe9f429b3755f              # double 0.99730880875328498
	.quad	0x3fef776c64c2510a              # double 0.98332805327893991
	.quad	0x3fdf8c6c7cbbedaa              # double 0.49294578724922167
	.quad	0x3fd4bfb921ab5d80              # double 0.32420185363795184
	.quad	0x3feb71cd84eb2c2c              # double 0.85764194451019681
	.quad	0x3f9d6ed833afcb60              # double 0.028743150858598354
	.quad	0x3fd2431be6f51d1e              # double 0.28534600786629649
	.quad	0x3fea620b382255e2              # double 0.82446824039169209
	.quad	0x3fb9cd86268de4f8              # double 0.10079229775682907
	.quad	0x3fbedd8ddbf83120              # double 0.120568147853366
	.quad	0x3fc5143b8243913c              # double 0.16467994556945509
	.quad	0x3febb78c321de6d6              # double 0.86615571773946942
	.quad	0x3feaa13b781a702f              # double 0.83218167741461524
	.quad	0x3fe5336154b409fc              # double 0.66252199691399438
	.quad	0x3fd315c6998b654c              # double 0.29820408815938459
	.quad	0x3feeb9c45553f3d2              # double 0.96017662683117977
	.quad	0x3feb0ce8488dee41              # double 0.84532560511383548
	.quad	0x3fdec4d4aea12426              # double 0.4807635980001258
	.quad	0x3fe9839bb4390f44              # double 0.7973154563883118
	.quad	0x3fe12613088c8285              # double 0.53589774770451071
	.quad	0x3fcb71e614160008              # double 0.21441341381796541
	.quad	0x3fec47a2382d064d              # double 0.88374434444285443
	.quad	0x3fca34f0ec442b70              # double 0.20474063431205591
	.quad	0x3fcae57eef43122c              # double 0.21012865717615747
	.quad	0x3fe9706780a31f21              # double 0.79497122883273985
	.quad	0x3feda4100ee3f7a9              # double 0.92627718838024464
	.quad	0x3fe5d578fffdadef              # double 0.6823086738417582
	.quad	0x3fdece36e085deca              # double 0.4813363258940454
	.quad	0x3fe7bfb74b0c08db              # double 0.74215283067340054
	.quad	0x3fd83af02f9f3382              # double 0.37859730387281598
	.quad	0x3fc7a78c195532a8              # double 0.18480063664391833
	.quad	0x3fda3bbe5e5d42b4              # double 0.40989646163238125
	.quad	0x3f9132b2a02505a0              # double 0.016794959091617323
	.quad	0x3f5e652b320bc800              # double 0.0018551751929263283
	.quad	0x3fd008b7af5ecad2              # double 0.2505320751762784
	.quad	0x3fedf45fdbff122d              # double 0.93608086555520276
	.quad	0x3fe45fc5a5da5e36              # double 0.63669092553295203
	.quad	0x3f930fc09591e0e0              # double 0.018614777688043982
	.quad	0x3fe0d3de9bfad76a              # double 0.52586298432173106
	.quad	0x3fd2ec9d8710254e              # double 0.29569185437920431
	.quad	0x3fa69abbcf90e630              # double 0.044149273955963131
	.quad	0x3fe4d176ba262518              # double 0.65056930882670638
	.quad	0x3fd28c72ff4ac096              # double 0.28982233935222135
	.quad	0x3fe7e257f12ee9ff              # double 0.74637982469658926
	.quad	0x3fc9eace76e5bcc4              # double 0.2024782257608192
	.quad	0x3fd60ae87b8cd2e6              # double 0.34441577973784232
	.quad	0x3fddc683b1650408              # double 0.46524135898295116
	.quad	0x3fe48e61b6136d6f              # double 0.64238057672211635
	.quad	0x3fef59d17034105b              # double 0.97971412577363581
	.quad	0x3fb8ebf8f859fdd8              # double 0.097350655205438286
	.quad	0x3fe3344a34c3e313              # double 0.60013304048252036
	.quad	0x3fe10942f40d3a40              # double 0.53238055864660083
	.quad	0x3fe5a8e6a5e35c44              # double 0.67686779403710107
	.quad	0x3fe62c74c0c49150              # double 0.69292676591843794
	.quad	0x3febd3135a246c6b              # double 0.86951606374658519
	.quad	0x3fd3dd92ea707848              # double 0.31039879698244421
	.quad	0x3fe93809680ccf9c              # double 0.78809042284273145
	.quad	0x3fde100e9de046be              # double 0.4697300473936642
	.quad	0x3fe0ed0f6717f285              # double 0.52893800864656326
	.quad	0x3fea1473ac6fcb0c              # double 0.81499656371156126
	.quad	0x3fc9beda99ff5f44              # double 0.20113689917956823
	.quad	0x3fb8f4f3d6fa9068              # double 0.097487678513574871
	.quad	0x3fd644f74e80740c              # double 0.34795935312450932
	.quad	0x3fbd4f6fb9305300              # double 0.11449335356912727
	.quad	0x3fd638187817d452              # double 0.34717380264129816
	.quad	0x3fe38a86254c54c9              # double 0.61065966877745226
	.quad	0x3fd26c9fb2d5c86a              # double 0.28787987198223297
	.quad	0x3fc92c1c20c62438              # double 0.19665862655918587
	.quad	0x3fc437c8df4b7acc              # double 0.15795241263454896
	.quad	0x3fe2998ac4387a3f              # double 0.58124292682970935
	.quad	0x3f3de42a0f1ba000              # double 4.5610453444888677E-4
	.quad	0x3fb641dc69b1da90              # double 0.086942458919887721
	.quad	0x3fdfc324974f880c              # double 0.49628557945664009
	.quad	0x3fafe0e64c496430              # double 0.062262722790088154
	.quad	0x3fdf09a22b8c64f0              # double 0.4849629807736866
	.quad	0x3fbdf551b4b68968              # double 0.11702452337207137
	.quad	0x3feb1ada57df480e              # double 0.84702794230020273
	.quad	0x3fe3623f5d901938              # double 0.60574310564042033
	.quad	0x3fd6debb22ff88ba              # double 0.35734442155638713
	.quad	0x3fe91be30c84aa93              # double 0.78465416378942832
	.quad	0x3fe67e9b7840af54              # double 0.7029549931225838
	.quad	0x3fe55f0537087a07              # double 0.66784916638045011
	.quad	0x3fd00934409edc32              # double 0.25056177435493787
	.quad	0x3fb5758bf0757218              # double 0.083824869352106979
	.quad	0x3fd305ed44062e68              # double 0.29723674433691949
	.quad	0x3fed587466d774c1              # double 0.91704769216780602
	.quad	0x3fe48f4b899812e8              # double 0.64249207376323358
	.quad	0x3feee4344a15cd09              # double 0.96535696477659016
	.quad	0x3fd65476a57d9236              # double 0.34890524064238393
	.quad	0x3fe99bb28fafb6f7              # double 0.80025604308840925
	.quad	0x3fda6c271c321398              # double 0.41285112145879443
	.quad	0x3feda51773ab31c4              # double 0.926402784266934
	.quad	0x3fda6f383451780e              # double 0.41303830250933593
	.quad	0x3fb95d0844e4b5a8              # double 0.099075810260464636
	.quad	0x3fd2eec254c83952              # double 0.2958226993513523
	.quad	0x3fdc933f49476326              # double 0.44648725658548682
	.quad	0x3fe8763201b627d1              # double 0.76442814192091124
	.quad	0x3fe1e6c2a81e598b              # double 0.55941899142890017
	.quad	0x3fc0149da37871d4              # double 0.12562914354283683
	.quad	0x3feab47c2400e1e2              # double 0.83453185111926254
	.quad	0x3fd6219f87ce5450              # double 0.34580219518949651
	.quad	0x3feebaad3f9c78f1              # double 0.96028768943850029
	.quad	0x3fef150042b09c44              # double 0.97131360078208972
	.quad	0x3fec9917adc0ad1a              # double 0.89368804870665319
	.quad	0x3fe8db849332d6cd              # double 0.77679661512112264
	.quad	0x3fc92d0aeaa0195c              # double 0.19668709236448023
	.quad	0x3fc970eae01017a8              # double 0.19875846806115516
	.quad	0x3fd1fb9f389442da              # double 0.28098278546626221
	.quad	0x3fd0b0621354b314              # double 0.26076557052401594
	.quad	0x3fdd35c569404a1c              # double 0.45640692976408714
	.quad	0x3fc5ec432fc17928              # double 0.17127265769790623
	.quad	0x3fedbda1e0a26ef8              # double 0.92939847825934319
	.quad	0x3fcb71128f68c894              # double 0.21438819887550109
	.quad	0x3fea1f53dfbf0ebb              # double 0.81632417393162571
	.quad	0x3fd955452f41523a              # double 0.39582948317300615
	.quad	0x3f7e3e6a36631d00              # double 0.0073837422298261846
	.quad	0x3fe08a4a7ea1c208              # double 0.51688122494493971
	.quad	0x3fedab8953c23bf2              # double 0.92718950614096074
	.quad	0x3fdcc831dba79ac8              # double 0.44971891832976185
	.quad	0x3fd9e4fdaac24de2              # double 0.40460149455722505
	.quad	0x3fe64f21e2a426e9              # double 0.69715971246588737
	.quad	0x3fd8663cc54e1484              # double 0.38124007480684718
	.quad	0x3fd4c09c644f6202              # double 0.32425603671939041
	.quad	0x3fb330f0e1a87658              # double 0.074965529529856467
	.quad	0x3fd54aa0cda5a370              # double 0.33267994005887314
	.quad	0x3fc61e456901d4c0              # double 0.17279880168249484
	.quad	0x3fca14ff32a81eb8              # double 0.2037657735202083
	.quad	0x3fa9f367edc40f00              # double 0.050685165189888082
	.quad	0x3fc1933f00244a64              # double 0.13730609423562889
	.quad	0x3fbfbb2eade2f1c8              # double 0.1239499258544533
	.quad	0x3fd7cf77e1eea0cc              # double 0.37203785957036639
	.quad	0x3fd177ea39a0fc98              # double 0.2729440272123127
	.quad	0x3fecc842a18ce575              # double 0.89944583466346606
	.quad	0x3fdf2a40b1b65168              # double 0.4869539008589272
	.quad	0x3fefe79d3c57a61a              # double 0.99702321801777605
	.quad	0x3fe99304990cb2ec              # double 0.7991965283632374
	.quad	0x3fe51fc688e7b4e8              # double 0.66012884845045239
	.quad	0x3fd80c459b556bc4              # double 0.37574901742271671
	.quad	0x3fd88a5d12c1c0c0              # double 0.38344504195903184
	.quad	0x3fd04c4a092115fc              # double 0.2546563233521224
	.quad	0x3fe1362248eb2f64              # double 0.53785814516002661
	.quad	0x3fea891f9de7d3ef              # double 0.82923870888646245
	.quad	0x3fea4679483774a1              # double 0.82110275368508578
	.quad	0x3fe4a6aabf865dc5              # double 0.64534509093476145
	.quad	0x3fd88c086c850772              # double 0.38354693029042786
	.quad	0x3fdc013fc8369480              # double 0.43757624198980949
	.quad	0x3fd16f2eff2b4a12              # double 0.27241110724313089
	.quad	0x3fd76f16233d9c1a              # double 0.36615518037291539
	.quad	0x3fe89902bd10052f              # double 0.76867806364331226
	.quad	0x3fe3f340ed2e2b1c              # double 0.62344404529844466
	.quad	0x3f9e6d80ef08d3a0              # double 0.029714598264223846
	.quad	0x3fea0d41dcf88224              # double 0.81411832006785234
	.quad	0x3fd7927b993485b6              # double 0.36831560098115845
	.quad	0x3fa622b8c9069300              # double 0.043233656443851132
	.quad	0x3fe3db39fb475963              # double 0.62051104619858355
	.quad	0x3fd36b4ca63bee08              # double 0.30342403634833248
	.quad	0x3fea4f4ace57ae2b              # double 0.82217922498006624
	.quad	0x3fec45534bffd605              # double 0.88346257060646904
	.quad	0x3fd3e06f8aefba46              # double 0.31057346885691961
	.quad	0x3fe7c771f2a93a50              # double 0.74309632677779724
	.quad	0x3fed84eef4929101              # double 0.92247722404547983
	.quad	0x3fe9d86c4215dfbb              # double 0.8076688090068197
	.quad	0x3fe8aa858ef66be2              # double 0.77081563875560399
	.quad	0x3fdf727a3edc20f2              # double 0.49136215342197354
	.quad	0x3fe158314ec36f9d              # double 0.54201569922905757
	.quad	0x3fca1781133950d8              # double 0.20384229124704834
	.quad	0x3feea8982d77c23e              # double 0.95808037643843824
	.quad	0x3fe4e91631520aeb              # double 0.65345296509653161
	.quad	0x3fd2d307fa77388a              # double 0.29413032016317031
	.quad	0x3fdbdb5dbe3d31d0              # double 0.43526404932052021
	.quad	0x3fd8b2235312f56c              # double 0.38587267983151352
	.quad	0x3fed82e7971eea0a              # double 0.92222957149289297
	.quad	0x3fcf2afebf3b3920              # double 0.24349960648982805
	.quad	0x3fd825c7d6c62562              # double 0.37730594610237322
	.quad	0x3fd01a7e4c398ade              # double 0.25161702579332068
	.quad	0x3f98a1f249e7ea40              # double 0.024055276642665158
	.quad	0x3fd9cac5c0b79f20              # double 0.40300124950452876
	.quad	0x3fc9e0c4894b01d4              # double 0.20217186645278551
	.quad	0x3fad428e864b76c0              # double 0.057148412602811671
	.quad	0x3fdb78b6aeffce86              # double 0.42924277391214394
	.quad	0x3fe94c911acb4795              # double 0.79059653504576721
	.quad	0x3feae2f789402f49              # double 0.84020592505246683
	.quad	0x3fe2bd712208932e              # double 0.58562523505370279
	.quad	0x3fe7924f93d1ffe9              # double 0.73661021109728353
	.quad	0x3fedabe5c4f6dccb              # double 0.92723358602133865
	.quad	0x3fee519c4e2e89f5              # double 0.94746222753411635
	.quad	0x3fefc86bff68b7fa              # double 0.99321555981236931
	.quad	0x3fe2d1470fe0b687              # double 0.58804658032541191
	.quad	0x3fc8f14d19e0b10c              # double 0.19486392749366421
	.quad	0x3fe6dccdcf2ba5e8              # double 0.71445360625255905
	.quad	0x3fd8fccb332fe6e2              # double 0.39042930601827497
	.quad	0x3fe8302e9d68439a              # double 0.75588160270318672
	.quad	0x3fe5a8c01f2bf6be              # double 0.67684942329625364
	.quad	0x3fd53cdea30e364c              # double 0.33184019015684352
	.quad	0x3fe2f77213edaa02              # double 0.59270576374302686
	.quad	0x3fcba5f8b45abfa0              # double 0.21600254827853593
	.quad	0x3fdbdfc5714071d4              # double 0.43553291377773218
	.quad	0x3fed4390e6c20591              # double 0.91449780530835956
	.quad	0x3fef03e3a0ec97cf              # double 0.96922475271707664
	.quad	0x3fcac1052d452f58              # double 0.20901550970517735
	.quad	0x3fef7df4fe1cdadd              # double 0.98412561065091674
	.quad	0x3fc339342f96c420              # double 0.15018322299650411
	.quad	0x3fd12a139189ae1a              # double 0.26819314205815348
	.quad	0x3fd1e383f613814c              # double 0.27951144247892468
	.quad	0x3fd310e88d0a0a08              # double 0.29790700696335692
	.quad	0x3fe829ea1ce6852d              # double 0.75511651653883904
	.quad	0x3fd4f6c7f4e0df90              # double 0.32756232179553368
	.quad	0x3fe0269f4f2cb314              # double 0.50471463645735293
	.quad	0x3fdb88ceb92dedd2              # double 0.4302250679390599
	.quad	0x3fe449ec5bf99a80              # double 0.63402383769864912
	.quad	0x3fea9608e59d75ea              # double 0.83081478926368146
	.quad	0x3fca830536b416b8              # double 0.20712342425411179
	.quad	0x3fed755472ee6a54              # double 0.92057249496003601
	.quad	0x3fc5936b982e6128              # double 0.16856141024323645
	.quad	0x3fe3a56857153d7f              # double 0.61394135483162404
	.quad	0x3feb2bb2b1b6cdd0              # double 0.8490842314699254
	.quad	0x3fd4fe65e333fbce              # double 0.32802722156332897
	.quad	0x3fe483b3dcb515be              # double 0.64107697588831747
	.quad	0x3fbbcb70807f9b10              # double 0.10857298981828145
	.quad	0x3fee3e80e287a936              # double 0.94512981647611727
	.quad	0x3fe49f1b022eeb8a              # double 0.64442205835745026
	.quad	0x3fcd588852f2a7ec              # double 0.22926429796399306
	.quad	0x3fee1517fd506207              # double 0.94007491565122414
	.quad	0x3fe5f3e034c4c913              # double 0.68601999575028783
	.quad	0x3f9765b304041e40              # double 0.022848889465448829
	.quad	0x3fe18a518e63f305              # double 0.54813459215765248
	.quad	0x3fe46158241f7e1f              # double 0.63688284926678651
	.quad	0x3fbb9bd1f3513710              # double 0.10784637632715666
	.quad	0x3fcfa10da508c3d8              # double 0.24710245664894503
	.quad	0x3fe192dce149797d              # double 0.54917758942956107
	.quad	0x3fca9155e9826950              # double 0.20756029035403367
	.quad	0x3fe95ad8c9c71ad8              # double 0.79233970079152538
	.quad	0x3fd3f93fef391912              # double 0.31208799707054979
	.quad	0x3fb53ab5fd14a4f8              # double 0.082927107131258171
	.quad	0x3fe6e563f311b2bc              # double 0.71550176119270459
	.quad	0x3fc5affbf3e581d0              # double 0.16943311127671601
	.quad	0x3fdb77b72d72d25a              # double 0.4291818565209603
	.quad	0x3fe5563a45935dbf              # double 0.66677583302492127
	.quad	0x3fcb27f1550054d4              # double 0.2121564545674689
	.quad	0x3fc43a49513002ac              # double 0.15802875961528196
	.quad	0x3fca48743b74afcc              # double 0.20533612158885572
	.quad	0x3fde967a7319fbf2              # double 0.4779344677007763
	.quad	0x3fd2ba87dfc9d08c              # double 0.29263493398981022
	.quad	0x3fec5d9800e9fd17              # double 0.88642502001303825
	.quad	0x3fe176d143bf0eb8              # double 0.54575408202841569
	.quad	0x3fe056a96106bf63              # double 0.51057881308041109
	.quad	0x3fafda5393daa3d0              # double 0.062212573813048899
	.quad	0x3fc3f1eeac77f234              # double 0.1558206884509602
	.quad	0x3fb7bac3978ac288              # double 0.092693542954984776
	.quad	0x3fce78e8ee23604c              # double 0.23806487682191102
	.quad	0x3fe8f91f2ee0779d              # double 0.78041037707929528
	.quad	0x3fd0b352b8f19978              # double 0.26094501553452387
	.quad	0x3fdc874dac0efb92              # double 0.44575826456633039
	.quad	0x3fd51564f91b34b6              # double 0.32943081213745573
	.size	.L__constant_100x100xf64, 80000

	.section	".note.GNU-stack","",@progbits
