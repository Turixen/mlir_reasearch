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
	.quad	1500                            # 0x5dc
	.quad	1                               # 0x1
	.quad	100                             # 0x64
.LCPI2_1:
	.quad	0                               # 0x0
	.quad	1500                            # 0x5dc
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
	lui	a7, %hi(.L__constant_1500xindex)
	addi	a7, a7, %lo(.L__constant_1500xindex)
	lui	t0, %hi(.L__constant_1500xf64)
	addi	t0, t0, %lo(.L__constant_1500xf64)
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
	.quad	29                              # 0x1d
	.quad	29                              # 0x1d
	.quad	59                              # 0x3b
	.quad	59                              # 0x3b
	.quad	87                              # 0x57
	.quad	87                              # 0x57
	.quad	120                             # 0x78
	.quad	120                             # 0x78
	.quad	147                             # 0x93
	.quad	147                             # 0x93
	.quad	183                             # 0xb7
	.quad	183                             # 0xb7
	.quad	217                             # 0xd9
	.quad	217                             # 0xd9
	.quad	247                             # 0xf7
	.quad	247                             # 0xf7
	.quad	277                             # 0x115
	.quad	277                             # 0x115
	.quad	307                             # 0x133
	.quad	307                             # 0x133
	.quad	339                             # 0x153
	.quad	339                             # 0x153
	.quad	366                             # 0x16e
	.quad	366                             # 0x16e
	.quad	399                             # 0x18f
	.quad	399                             # 0x18f
	.quad	439                             # 0x1b7
	.quad	439                             # 0x1b7
	.quad	466                             # 0x1d2
	.quad	466                             # 0x1d2
	.quad	491                             # 0x1eb
	.quad	491                             # 0x1eb
	.quad	517                             # 0x205
	.quad	517                             # 0x205
	.quad	546                             # 0x222
	.quad	546                             # 0x222
	.quad	573                             # 0x23d
	.quad	573                             # 0x23d
	.quad	597                             # 0x255
	.quad	597                             # 0x255
	.quad	626                             # 0x272
	.quad	626                             # 0x272
	.quad	651                             # 0x28b
	.quad	651                             # 0x28b
	.quad	676                             # 0x2a4
	.quad	676                             # 0x2a4
	.quad	707                             # 0x2c3
	.quad	707                             # 0x2c3
	.quad	743                             # 0x2e7
	.quad	743                             # 0x2e7
	.quad	776                             # 0x308
	.quad	776                             # 0x308
	.quad	804                             # 0x324
	.quad	804                             # 0x324
	.quad	834                             # 0x342
	.quad	834                             # 0x342
	.quad	869                             # 0x365
	.quad	869                             # 0x365
	.quad	903                             # 0x387
	.quad	903                             # 0x387
	.quad	934                             # 0x3a6
	.quad	934                             # 0x3a6
	.quad	959                             # 0x3bf
	.quad	959                             # 0x3bf
	.quad	985                             # 0x3d9
	.quad	985                             # 0x3d9
	.quad	1014                            # 0x3f6
	.quad	1014                            # 0x3f6
	.quad	1037                            # 0x40d
	.quad	1037                            # 0x40d
	.quad	1068                            # 0x42c
	.quad	1068                            # 0x42c
	.quad	1093                            # 0x445
	.quad	1093                            # 0x445
	.quad	1122                            # 0x462
	.quad	1122                            # 0x462
	.quad	1155                            # 0x483
	.quad	1155                            # 0x483
	.quad	1187                            # 0x4a3
	.quad	1187                            # 0x4a3
	.quad	1222                            # 0x4c6
	.quad	1222                            # 0x4c6
	.quad	1248                            # 0x4e0
	.quad	1248                            # 0x4e0
	.quad	1276                            # 0x4fc
	.quad	1276                            # 0x4fc
	.quad	1308                            # 0x51c
	.quad	1308                            # 0x51c
	.quad	1339                            # 0x53b
	.quad	1339                            # 0x53b
	.quad	1371                            # 0x55b
	.quad	1371                            # 0x55b
	.quad	1402                            # 0x57a
	.quad	1402                            # 0x57a
	.quad	1434                            # 0x59a
	.quad	1434                            # 0x59a
	.quad	1464                            # 0x5b8
	.quad	1464                            # 0x5b8
	.quad	1500                            # 0x5dc
	.quad	1500                            # 0x5dc
	.size	.L__constant_101xindex, 808

	.type	.L__constant_1500xindex,@object # @__constant_1500xindex
	.p2align	6, 0x0
.L__constant_1500xindex:
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	50                              # 0x32
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	46                              # 0x2e
	.quad	54                              # 0x36
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	32                              # 0x20
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	92                              # 0x5c
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	16                              # 0x10
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.size	.L__constant_1500xindex, 12000

	.type	.L__constant_1500xf64,@object   # @__constant_1500xf64
	.p2align	6, 0x0
.L__constant_1500xf64:
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.size	.L__constant_1500xf64, 12000

	.type	.L__constant_100x100xf64,@object # @__constant_100x100xf64
	.p2align	6, 0x0
.L__constant_100x100xf64:
	.quad	0x3fe0bf8bff8a54d9              # double 0.52338218603349695
	.quad	0x3fe26d417d165486              # double 0.57583689147090023
	.quad	0x3fb35445d68a53c0              # double 0.075504650953305052
	.quad	0x3fe3b3c83549a5a8              # double 0.61569605262518667
	.quad	0x3fdacac6cd3bac72              # double 0.41862649957938125
	.quad	0x3fa5f411beb42c60              # double 0.042877726105950087
	.quad	0x3feae8fc053d3ef6              # double 0.84094048522271581
	.quad	0x3fe072cbff4ac015              # double 0.51401328908650845
	.quad	0x3fd5d57216054a7a              # double 0.34115268850761249
	.quad	0x3fd77da0935cf350              # double 0.36704267874647645
	.quad	0x3fe8126084da6f5e              # double 0.7522432894506712
	.quad	0x3fd47104f5291ef6              # double 0.3193981546541943
	.quad	0x3fe25074801c632b              # double 0.572321176735476
	.quad	0x3fe423bd12b56e01              # double 0.6293626180080879
	.quad	0x3fd36cf667c1bee4              # double 0.3035255444765268
	.quad	0x3fe3d6575719ff23              # double 0.61991469394704202
	.quad	0x3fec15e825335a46              # double 0.87767417207471321
	.quad	0x3fd8bbe2cc0eaeb6              # double 0.38646764686084667
	.quad	0x3fc9e68c2c48cb00              # double 0.20234825289079339
	.quad	0x3fccbc091bc6c15c              # double 0.22448839050549452
	.quad	0x3fc2f5146d32a5d8              # double 0.14810424167562419
	.quad	0x3fd07e9b5d0ae408              # double 0.25772747121988049
	.quad	0x3fe0700def1f9d59              # double 0.51367851928527408
	.quad	0x3fd052bf0c078bda              # double 0.25505043196443256
	.quad	0x3fb49a137b3c75b0              # double 0.080476014697032693
	.quad	0x3fee23e823c9fb13              # double 0.94188315382038679
	.quad	0x3fd9799fbdf3c308              # double 0.39804833936709416
	.quad	0x3fe6861843329e30              # double 0.70386899113231571
	.quad	0x3fb706342a9a6668              # double 0.089938412095216358
	.quad	0x3fa46d4c405f7440              # double 0.039896376474395812
	.quad	0x3fcf3ec172e15b4c              # double 0.24410265073194137
	.quad	0x3fea15f452fcf21c              # double 0.81517997940642628
	.quad	0x3fc930cd69b03b44              # double 0.19680183086935632
	.quad	0x3fd792fd0c6b8706              # double 0.36834646428006612
	.quad	0x3fcd487e2d6ccee8              # double 0.22877480714816234
	.quad	0x3f9614cfd022df60              # double 0.021563765600802198
	.quad	0x3fe849a04663c315              # double 0.75898755786883731
	.quad	0x3fba27ddc6935c38              # double 0.10217081163442365
	.quad	0x3fdd8dd8c56f7486              # double 0.46178263932035468
	.quad	0x3fefdae0b660a57a              # double 0.99546847935304972
	.quad	0x3fe7f2358ae02f05              # double 0.74831654667056624
	.quad	0x3fc0f7c58c0be678              # double 0.13256139124114319
	.quad	0x3fe1e831bed26fc2              # double 0.55959403295445775
	.quad	0x3fe39ed910049291              # double 0.61314061287392196
	.quad	0x3fee55a8394a000e              # double 0.94795619191427405
	.quad	0x3fe223f8294e5dbc              # double 0.56689079349137428
	.quad	0x3fcb21f88f66ddfc              # double 0.21197421075861189
	.quad	0x3fe380f61129fe96              # double 0.60949233391143554
	.quad	0x3fe5a6d1ea223ee9              # double 0.67661376694919995
	.quad	0x3f9b0ab05299aac0              # double 0.026407961884994391
	.quad	0x3fecce8d284ae09a              # double 0.90021379346491703
	.quad	0x3fbcea9ff26ab1e0              # double 0.11295509022119843
	.quad	0x3fcfbabec8e0f130              # double 0.24788651283768948
	.quad	0x3feb2e444bad5e16              # double 0.84939780026155876
	.quad	0x3fed4b5b070b3e49              # double 0.91544867873921831
	.quad	0x3fdec6ebac8b2506              # double 0.48089114999727689
	.quad	0x3fe32cf03ad8a536              # double 0.59923564427768983
	.quad	0x3fa0377a9df9e930              # double 0.03167327097340189
	.quad	0x3feccab6a40ef38a              # double 0.89974529307038265
	.quad	0x3fe9e2038b0b8879              # double 0.80883958012806467
	.quad	0x3fe361e052b8bfc1              # double 0.60569778591706591
	.quad	0x3fab9674ca73b870              # double 0.053882264817603054
	.quad	0x3fd9e285397dc06e              # double 0.4044507085263892
	.quad	0x3fe9869d69813ffb              # double 0.79768248182699553
	.quad	0x3fe3349d4626ab82              # double 0.60017265035035927
	.quad	0x3fe1759c295e1cb0              # double 0.54560669021238617
	.quad	0x3fd991d01a274ed6              # double 0.39952471307809156
	.quad	0x3feab4e320c07ab5              # double 0.83458095929002829
	.quad	0x3feceecf2dcf8e03              # double 0.9041515249959392
	.quad	0x3fc92487da9b3dd8              # double 0.19642732786313277
	.quad	0x3fb2fc3fbd961c78              # double 0.074161514077887847
	.quad	0x3fd0a2a42c7f5fca              # double 0.25992683740105049
	.quad	0x3fdf6ba0209c07dc              # double 0.49094393906136502
	.quad	0x3fbbf34599cadf78              # double 0.10918078427027733
	.quad	0x3fdd6c4f5ae11db4              # double 0.45973571658074808
	.quad	0x3fd626ede88e29c8              # double 0.34612605772477112
	.quad	0x3fe39bbb8fd055b6              # double 0.61276033486017556
	.quad	0x3fea68674a20d7c1              # double 0.8252445648019987
	.quad	0x3fd39c9ade9e2294              # double 0.30643340816508524
	.quad	0x3fe259ec4492fce7              # double 0.57347691911118381
	.quad	0x3fe13221cbcda418              # double 0.53736963086442113
	.quad	0x3fe9d489b329167f              # double 0.80719456665310918
	.quad	0x3fe333c79cd5e072              # double 0.60007076866078379
	.quad	0x3fe0911476702143              # double 0.51770995266364428
	.quad	0x3fd22591bb555442              # double 0.28354304594296675
	.quad	0x3fee6ee9f8edfae7              # double 0.95103930110039137
	.quad	0x3fdf09e215a75c20              # double 0.48497821917175266
	.quad	0x3fe2983882638e10              # double 0.58108163324908624
	.quad	0x3feca01d0eedafb6              # double 0.89454510608401594
	.quad	0x3fe0f21159d5af11              # double 0.52954928918686239
	.quad	0x3fc63480a2428a78              # double 0.17347724840972822
	.quad	0x3fa982881d22f580              # double 0.049824002796849065
	.quad	0x3fe8fcd34fe913a0              # double 0.78086248023520354
	.quad	0x3fe1d5e6e15795f6              # double 0.55736106884131575
	.quad	0x3fbf5367fa007648              # double 0.1223664269786805
	.quad	0x3fea09aa11b9f8ec              # double 0.81367972814748901
	.quad	0x3fe454ef26c1da2f              # double 0.63536794252178719
	.quad	0x3fb27d3df6fdba08              # double 0.072223542023245213
	.quad	0x3fdbc53a4d00bb98              # double 0.433912825773342
	.quad	0x3fdf242c39508ee4              # double 0.48658280942093612
	.quad	0x3fe9cfef9fc6d958              # double 0.80663281637570616
	.quad	0x3fe0936855d899e3              # double 0.51799408690277138
	.quad	0x3fe04ca9baa894a4              # double 0.50935827690831958
	.quad	0x3fda5b4861f9c6b4              # double 0.41182145660341551
	.quad	0x3fe08c66934a9b93              # double 0.5171387554918162
	.quad	0x3fd252fe5027c1cc              # double 0.28631551578203296
	.quad	0x3fe257ab2f6c4227              # double 0.57320174467355833
	.quad	0x3fc2def1811ef524              # double 0.14742869190914931
	.quad	0x3fe06cc392e89a25              # double 0.51327685063444461
	.quad	0x3fdff20d28e07e02              # double 0.49914864532362924
	.quad	0x3fc71749e1529abc              # double 0.18039821149905844
	.quad	0x3fec7c889be55215              # double 0.89020185898204096
	.quad	0x3fe950b8d98fa5b6              # double 0.79110376827627849
	.quad	0x3fd306a73a9d0726              # double 0.29728108142818355
	.quad	0x3fdeb2807aba2f30              # double 0.47964488968931374
	.quad	0x3fe9fc8a4a6ee213              # double 0.81207766092035383
	.quad	0x3fbef155ef7ec298              # double 0.12086999032067991
	.quad	0x3feefd7f77849baf              # double 0.96844457000121575
	.quad	0x3fc5c138cc818110              # double 0.16995916352880913
	.quad	0x3fee3756cfb468e1              # double 0.94425526206330457
	.quad	0x3fe2e2d91ff29210              # double 0.59019142379526279
	.quad	0x3fc5b1cb8ce32be8              # double 0.1694883764197066
	.quad	0x3fe979873d96688c              # double 0.79608499554457656
	.quad	0x3fd691aad52182da              # double 0.35264082730831847
	.quad	0x3fdab5cccd5d8f08              # double 0.41734619193287914
	.quad	0x3fc48150e6baac7c              # double 0.16019641176294275
	.quad	0x3fee838b90250df2              # double 0.9535577597929985
	.quad	0x3fc94ead410b6884              # double 0.19771352458957747
	.quad	0x3fe58a0c7a7159c2              # double 0.67310165323834092
	.quad	0x3fc6253c41f66574              # double 0.17301133366417398
	.quad	0x3fd29ff28466103e              # double 0.29101241044577708
	.quad	0x3fd39b009822d656              # double 0.30633559090651852
	.quad	0x3fe989d95d32e68f              # double 0.79807728007217971
	.quad	0x3fee5ea1479cd8c9              # double 0.94905151354648709
	.quad	0x3fe3c9b0b8a1782d              # double 0.61837040005389599
	.quad	0x3fbb820f6857d028              # double 0.10745331094204913
	.quad	0x3fc97f03a9aed7a8              # double 0.19918866906453769
	.quad	0x3fe068d1cc2a0408              # double 0.51279535175137969
	.quad	0x3f9b6794ec92cee0              # double 0.026762320460604339
	.quad	0x3fe130ccf2d83da9              # double 0.53720710211375888
	.quad	0x3fe9ea74631c356d              # double 0.8098699508424666
	.quad	0x3fdb6b883b069854              # double 0.4284382416175323
	.quad	0x3fc77ca007ceab18              # double 0.18349075680938465
	.quad	0x3fdb9b8ea3338d54              # double 0.4313694566501074
	.quad	0x3fe9ea8810edfad3              # double 0.80987933451236882
	.quad	0x3fb801539d8467b8              # double 0.093770242649411695
	.quad	0x3fe2dafcf52c4a23              # double 0.58923194775917798
	.quad	0x3fbebccccd481608              # double 0.12006835948712802
	.quad	0x3f938856eefe2640              # double 0.019074781739197855
	.quad	0x3fee90b7e2e9e54b              # double 0.95516580885956992
	.quad	0x3fce99987cca8f6c              # double 0.23906236737559128
	.quad	0x3fdbcccae0550042              # double 0.43437454135346709
	.quad	0x3fe522e9f560ca1c              # double 0.66051195073515911
	.quad	0x3fd92d18da6c9272              # double 0.39337750750045253
	.quad	0x3fddcee6994b22b2              # double 0.46575322122638874
	.quad	0x3fed9ece35f13413              # double 0.92563543830476858
	.quad	0x3fe6207cbf2749e9              # double 0.69146573385870369
	.quad	0x3fbc0f1851437e60              # double 0.10960533126807936
	.quad	0x3fd1ecb42ca5dd9a              # double 0.28007225380084722
	.quad	0x3fe10cc9b28e41ac              # double 0.53281102060468788
	.quad	0x3fd700fd58329582              # double 0.35943540204092284
	.quad	0x3fe92af878fb3455              # double 0.78649543408540501
	.quad	0x3fe52eff9c30fedc              # double 0.66198711877947458
	.quad	0x3feb7b082a6f68c4              # double 0.8587685421764708
	.quad	0x3fe9f4771e18dd69              # double 0.81109195593209649
	.quad	0x3feb0be44c100ac7              # double 0.84520163398732329
	.quad	0x3fd93c7dfdac2190              # double 0.39431714794820838
	.quad	0x3fd9f473c0cc55b4              # double 0.4055451758188966
	.quad	0x3fed9ee58841a890              # double 0.92564655888169689
	.quad	0x3fe9f7ff2ba08c85              # double 0.81152304192473024
	.quad	0x3fe8609462af7fde              # double 0.76178950571556547
	.quad	0x3fe718a133a2e3ec              # double 0.72175655446255638
	.quad	0x3fd60828daed0d34              # double 0.34424802188387393
	.quad	0x3fe381f75dfec3cf              # double 0.6096150241702335
	.quad	0x3fdd188a14d0c45e              # double 0.45462276489985765
	.quad	0x3fe88554f88177e9              # double 0.76627586876179266
	.quad	0x3fe56de0b9f665fc              # double 0.66966282196807425
	.quad	0x3fd629550aa7a5de              # double 0.34627271690859895
	.quad	0x3fb65a9f4110bf18              # double 0.087320283303366941
	.quad	0x3fe102c104b3767f              # double 0.53158617895287807
	.quad	0x3fb42d1d6187e388              # double 0.078813396750673559
	.quad	0x3fc4551752df2eac              # double 0.15884677454447649
	.quad	0x3fc3ac74b7970a04              # double 0.15370043720584203
	.quad	0x3fdb3c0dae0ba9cc              # double 0.42554037090908703
	.quad	0x3fd8c964c259a528              # double 0.38729208926686676
	.quad	0x3fdaa615d4fd6892              # double 0.41638704108994162
	.quad	0x3fe66b5e616228f1              # double 0.70060652752115804
	.quad	0x3fbdbee4b3c57698              # double 0.11619405163716079
	.quad	0x3feca5316d0c992a              # double 0.8951651697032379
	.quad	0x3fd1a01c5a7e633c              # double 0.27539738499904209
	.quad	0x3fd403558cff0c24              # double 0.3127035023609912
	.quad	0x3fe54ea2663e97e6              # double 0.66584892243986071
	.quad	0x3fafd02593e5f9e0              # double 0.062134908966061664
	.quad	0x3fcb9c35fd10de24              # double 0.21570467812283411
	.quad	0x3fdf691d148b1b70              # double 0.4907906246775644
	.quad	0x3fec0801dd1e1b6c              # double 0.87597745120079428
	.quad	0x3feee1429c0f24a9              # double 0.96499758224776599
	.quad	0x3fe60e43691269f5              # double 0.689241128176319
	.quad	0x3fcdd0c2419f2df8              # double 0.23293331340970247
	.quad	0x3fe9ea60feacb6bc              # double 0.80986070386071373
	.quad	0x3fcbc750cf75b154              # double 0.21702013139600729
	.quad	0x3fea8ea612a19df1              # double 0.82991317404679255
	.quad	0x3fb32877eaf9c1a0              # double 0.074836249224750961
	.quad	0x3fef4b44b837c578              # double 0.97793804149675533
	.quad	0x3fdebd4e745c3370              # double 0.4803043495492636
	.quad	0x3fe34124e1d03da3              # double 0.60170215706050489
	.quad	0x3fcffe856eb307e8              # double 0.24995487122765714
	.quad	0x3fdf99288e544442              # double 0.49372304820377988
	.quad	0x3fe1dade973074c5              # double 0.55796746758610338
	.quad	0x3fec71a5e988a542              # double 0.88887305843415043
	.quad	0x3fecea4e4724a181              # double 0.90360177893767013
	.quad	0x3fca4a7239eab864              # double 0.20539691760990586
	.quad	0x3fdb1293b19e5f5c              # double 0.42300884576387943
	.quad	0x3f8fa4f2142ce6c0              # double 0.015451327553467009
	.quad	0x3fea974b050979f8              # double 0.83096838935654116
	.quad	0x3fdadb4a1e4b1b3e              # double 0.4196343704065163
	.quad	0x3fc39a6a7f8e7e98              # double 0.15314990261412187
	.quad	0x3fe30c098922f166              # double 0.59521939072105279
	.quad	0x3fe33ca36450c50b              # double 0.60115213005897894
	.quad	0x3fba990e2361b728              # double 0.10389793742953357
	.quad	0x3feb94d83de3c95d              # double 0.86191951835489145
	.quad	0x3fd3de9a5e2da03c              # double 0.31046160885898977
	.quad	0x3f7e1f84b5524500              # double 0.0073542770307011285
	.quad	0x3fd303067c151ab4              # double 0.29705965154100089
	.quad	0x3fdcf71e5b892842              # double 0.45258292140045253
	.quad	0x3fc1c15940532c40              # double 0.13871303215850794
	.quad	0x3fd3fd63290eaa92              # double 0.31234053620816227
	.quad	0x3fe43928b69001d6              # double 0.63197742134803536
	.quad	0x3fe97e0dc2907c7c              # double 0.79663742066249154
	.quad	0x3fe4afed794b3008              # double 0.64647554102111915
	.quad	0x3fe3c39910beab29              # double 0.61762669821232408
	.quad	0x3fe537aa98529e7c              # double 0.66304521322759014
	.quad	0x3fed70a7650f71f4              # double 0.9200016950449581
	.quad	0x3fe7b050da6d1cc3              # double 0.74027292882319562
	.quad	0x3fe3411c84cbade9              # double 0.60169816910405161
	.quad	0x3fe25d10dee58a58              # double 0.57386058363438064
	.quad	0x3fe7614faf2d853c              # double 0.730628816742104
	.quad	0x3fd373c0211e2226              # double 0.30393985017920711
	.quad	0x3fec344e01d62688              # double 0.88138485296913505
	.quad	0x3fee965f6b949828              # double 0.95585604678922653
	.quad	0x3fef019ba7bce95e              # double 0.96894629250827413
	.quad	0x3fcc137b7d6bc278              # double 0.21934455513066431
	.quad	0x3febdcdde0e72a57              # double 0.8707112686764259
	.quad	0x3fe41225d3fe2d7a              # double 0.62721530346736576
	.quad	0x3fe10501c030ab18              # double 0.5318611863816356
	.quad	0x3fbe66208e5875a8              # double 0.11874583697541274
	.quad	0x3fee98dfcf4955d1              # double 0.95616140828740914
	.quad	0x3fe913c917b44ea7              # double 0.78366522435904507
	.quad	0x3fceb454f3682fa0              # double 0.23987829098802838
	.quad	0x3fb16aaf25890698              # double 0.068034121192818708
	.quad	0x3fdc5da6822ea788              # double 0.44321596825704335
	.quad	0x3fe0ed59138f3ae9              # double 0.52897313900197418
	.quad	0x3fe8ee355ed6335c              # double 0.77907818339154344
	.quad	0x3fdc556d77d63e4a              # double 0.4427140875131711
	.quad	0x3fd2b7c7ceccb2be              # double 0.29246707148812934
	.quad	0x3fe1a178b377f6d6              # double 0.55096087505782054
	.quad	0x3fe492d28baef846              # double 0.64292266160897138
	.quad	0x3fd9b8f911a9b3fc              # double 0.40191485142605621
	.quad	0x3fc46d7845725880              # double 0.15959075346899354
	.quad	0x3fe69ae7bda160ed              # double 0.7064093307226621
	.quad	0x3fe10d2a2df8a765              # double 0.53285702685137137
	.quad	0x3fd992db57a74b96              # double 0.39958842811500384
	.quad	0x3fe64bc0c6b8315b              # double 0.69674719631579352
	.quad	0x3fdec59c21d20768              # double 0.4808111505773156
	.quad	0x3fc394248db6c7e4              # double 0.15295845908764172
	.quad	0x3fe31e8b848b7d5f              # double 0.5974786366240713
	.quad	0x3fc1e40b35fab610              # double 0.13977184425077427
	.quad	0x3fe3ac8a4c3fd820              # double 0.61481203930339134
	.quad	0x3fc7518edec14fd8              # double 0.18217645527567927
	.quad	0x3fed0a9fce01bac0              # double 0.90754690395063875
	.quad	0x3fdbdf1760befde0              # double 0.43549141357286025
	.quad	0x3fd4e2a5ed78b0ce              # double 0.32633350554057194
	.quad	0x3fd2c9d855bf858e              # double 0.29356964467850666
	.quad	0x3fee82c3d5744892              # double 0.95346252146034005
	.quad	0x3fe223dda014c86c              # double 0.56687814012390225
	.quad	0x3fea78190d631f5b              # double 0.827160383364553
	.quad	0x3fedd7e0ac9e6c5d              # double 0.93260225023858434
	.quad	0x3fe8a28382c7d6aa              # double 0.76983809989061069
	.quad	0x3fecacc7ffd52778              # double 0.89609146086989622
	.quad	0x3fd3136fedb6de88              # double 0.29806135381975496
	.quad	0x3fe3e6f4e23c7d53              # double 0.62194294153952467
	.quad	0x3fd3cd01bd3b3c46              # double 0.30938762168529299
	.quad	0x3fcc9e3fffc8020c              # double 0.22357940663643239
	.quad	0x3fd54c61340d35a2              # double 0.33278684695400262
	.quad	0x3fed3295e08f4ebd              # double 0.91242498263678551
	.quad	0x3fbb96cd15fb1d30              # double 0.10776979242938434
	.quad	0x3fddefc98ac42546              # double 0.46776045371423824
	.quad	0x3fdd77975d0c1de0              # double 0.46042427145627407
	.quad	0x3fe9f7af580feb75              # double 0.81148497771879013
	.quad	0x3feb7a70ecf8630d              # double 0.85869642527822665
	.quad	0x3fc4fb4568f7beb0              # double 0.16391818642977318
	.quad	0x3fe3c11c9049cd6e              # double 0.61732319051081475
	.quad	0x3fdfea8edfc5484c              # double 0.49869129040337579
	.quad	0x3fe5c7be669ad56b              # double 0.68063278236392699
	.quad	0x3fdbc8ae401956a2              # double 0.43412357577958904
	.quad	0x3fc3671de62fc28c              # double 0.15158437480524289
	.quad	0x3fc9437cc017fe74              # double 0.19737204913689121
	.quad	0x3fed4fecdd8e9a58              # double 0.91600650093898661
	.quad	0x3fe063b503ff541f              # double 0.51217127590883027
	.quad	0x3fed37b0b917ad5c              # double 0.91304813528897055
	.quad	0x3fa83d09181a11a0              # double 0.047340664093130203
	.quad	0x3feadf7e3b824f85              # double 0.83978187201363197
	.quad	0x3fefbbbf9373f724              # double 0.99166849898731301
	.quad	0x3fef3761639c380a              # double 0.97551030593035759
	.quad	0x3fed637761b7b64d              # double 0.91839188657258719
	.quad	0x3fdb67b69ae813c0              # double 0.42820515754311472
	.quad	0x3fc5902ccbbf709c              # double 0.16846237133620867
	.quad	0x3fe4723daa685543              # double 0.63894542010044864
	.quad	0x3fc45a12dad587f4              # double 0.1589988297010333
	.quad	0x3fedbd09c2b12afa              # double 0.92932594323914874
	.quad	0x3fec03689e4d8151              # double 0.87541609686381083
	.quad	0x3fc83ad75dda7728              # double 0.18929569323238948
	.quad	0x3fee116a77f18546              # double 0.93962596346333593
	.quad	0x3fd8c13920f92f52              # double 0.38679340572411036
	.quad	0x3fea99e42f6c1851              # double 0.83128556501538686
	.quad	0x3fd6883d90d8ed6a              # double 0.35206545968295322
	.quad	0x3fdb892e033f60f0              # double 0.43024778668542663
	.quad	0x3fe7ee11935571c3              # double 0.74781111503721609
	.quad	0x3fe7b9d422660e26              # double 0.74143416136252394
	.quad	0x3fdb4e88e8fe7ae2              # double 0.42666838410688801
	.quad	0x3fefac763a62b121              # double 0.98980246928616477
	.quad	0x3fe08628e8807910              # double 0.51637692842976612
	.quad	0x3fdf4f4979529b96              # double 0.48921429489058121
	.quad	0x3fb868fd1f72f720              # double 0.095352001359938487
	.quad	0x3fe7586f995f03f0              # double 0.72954540210059626
	.quad	0x3fa6559540162240              # double 0.043621696541837895
	.quad	0x3fdfe0fe0150b5de              # double 0.49810743454403716
	.quad	0x3fda18eb70cb7dbc              # double 0.40777097716451371
	.quad	0x3fe49d254aea2ed3              # double 0.64418282157699946
	.quad	0x3fed88c80e1486be              # double 0.92294695615802147
	.quad	0x3feff9bd8e9c7690              # double 0.99923589566943072
	.quad	0x3fda09aa20cb75ba              # double 0.40683987810720235
	.quad	0x3fe695bae747ed1d              # double 0.70577759906828741
	.quad	0x3fefb1912afd026b              # double 0.99042566677242172
	.quad	0x3fd83822c4af1626              # double 0.37842625815787512
	.quad	0x3fe552dc28feb873              # double 0.66636474615894625
	.quad	0x3fe4e28e9a010396              # double 0.6526558883561957
	.quad	0x3fefad443c1c070e              # double 0.98990070095189409
	.quad	0x3fef0c4196f0c9ca              # double 0.97024611931402061
	.quad	0x3faf2efbe3074350              # double 0.060905333960937669
	.quad	0x3fd78b3bb3dad148              # double 0.36787312091771129
	.quad	0x3fddc44b2d67274a              # double 0.46510581430321862
	.quad	0x3fedd52acf99a922              # double 0.93227139040871898
	.quad	0x3fd8f1e5cd36964a              # double 0.38976426163057865
	.quad	0x3fe65c45b1ed47e0              # double 0.69876370192855219
	.quad	0x3fd6775d40689cb8              # double 0.35103541650682812
	.quad	0x3fe9110e4c7f9f09              # double 0.78333201352231285
	.quad	0x3fdeaec1dc7ecd2c              # double 0.47941633732553401
	.quad	0x3fe4c615f591609e              # double 0.64918039286114371
	.quad	0x3fd70a850fb3c006              # double 0.36001707585728615
	.quad	0x3fd2b6a19f595d88              # double 0.29239693223413399
	.quad	0x3fd65f0c81b561c6              # double 0.34955132166717495
	.quad	0x3feb6ce1fc99ce08              # double 0.85704135261625058
	.quad	0x3feb00f24d741769              # double 0.84386553886063809
	.quad	0x3fed0ee513c82039              # double 0.9080682169305937
	.quad	0x3fecb0b00942ec2d              # double 0.89656831559057582
	.quad	0x3fa0884d2a1a1aa0              # double 0.032289897336388096
	.quad	0x3fe1e50effcc706f              # double 0.55921125374471881
	.quad	0x3fee0f8719718d3e              # double 0.93939547509618371
	.quad	0x3fb683f2259713f8              # double 0.087950834443361603
	.quad	0x3fe35cb2f462de4a              # double 0.60506580096893825
	.quad	0x3fe8955bb8a2c515              # double 0.76823221265491048
	.quad	0x3fee9adb72b54ca2              # double 0.95640346912331986
	.quad	0x3fd0b96bf4b256f4              # double 0.26131724258571798
	.quad	0x3fd92f6576362834              # double 0.39351784271332524
	.quad	0x3feb889965404c8f              # double 0.86042470718020236
	.quad	0x3fe227e77a25d53b              # double 0.56737111908902393
	.quad	0x3fadd6d4455e93c0              # double 0.058279641597699605
	.quad	0x3feceba3bbbfc1d9              # double 0.9037645976041474
	.quad	0x3feb5c840fbce2f2              # double 0.85504344056889026
	.quad	0x3fcf0a20afa14b10              # double 0.24249657226263155
	.quad	0x3fda99a59d0ecaa6              # double 0.41562786424325748
	.quad	0x3fc7d801e4db4db0              # double 0.18627952265397374
	.quad	0x3fe004a79a83d730              # double 0.50056820086203935
	.quad	0x3fda6c76c50de7aa              # double 0.41287011378846705
	.quad	0x3fc662bf49f65aa8              # double 0.17488852607194372
	.quad	0x3fd721f9f8feca08              # double 0.36144875827736245
	.quad	0x3fbcbffc6d1735c8              # double 0.1123044744810705
	.quad	0x3fef3086eac2d7e1              # double 0.97467370845583556
	.quad	0x3fe3068ead1a4c1f              # double 0.59455045518041405
	.quad	0x3fee7f11872f7d6c              # double 0.95301128772181931
	.quad	0x3fe0c78f1c8952c8              # double 0.5243602330543462
	.quad	0x3fe209d7da26d688              # double 0.56370155914073994
	.quad	0x3fdb72a7f179cbd2              # double 0.42887304860704234
	.quad	0x3fe29fcc512cf6f3              # double 0.58200660566919138
	.quad	0x3fce805a3c434230              # double 0.23829200689807939
	.quad	0x3fec048724784510              # double 0.87555272219666058
	.quad	0x3fb83102e0d83288              # double 0.094497852224046608
	.quad	0x3fd0b39594320558              # double 0.26096095535475206
	.quad	0x3fcf33e3224b7e2c              # double 0.24377097296290751
	.quad	0x3fe656581c815548              # double 0.69804006164000842
	.quad	0x3fcaa7038d77f7c8              # double 0.20822185905120549
	.quad	0x3fe97acab6dd525e              # double 0.79623923984270184
	.quad	0x3fc2e93d2c34b9c4              # double 0.14774288805479163
	.quad	0x3fde7684092ff54a              # double 0.47598362824631535
	.quad	0x3fc84e9d156c75e0              # double 0.18989909692838491
	.quad	0x3fdaa6aa70087260              # double 0.41642247143480482
	.quad	0x3fb96f55176d6490              # double 0.099355047435340404
	.quad	0x3fef90de85fb7932              # double 0.98643423241063588
	.quad	0x3fde054a4b82783e              # double 0.4690728890799426
	.quad	0x3fe5b2802c879e10              # double 0.67803963372438325
	.quad	0x3fd002b73c0e7fc6              # double 0.25016575684457754
	.quad	0x3fafe3486f3f9430              # double 0.062280906276818704
	.quad	0x3fd25e2b9cc20234              # double 0.2869977026785222
	.quad	0x3feb1a68b03bfd0a              # double 0.84697374745147269
	.quad	0x3fc7dbfa7c6007c4              # double 0.18640070984844048
	.quad	0x3fc3618a55e7759c              # double 0.15141419596231465
	.quad	0x3fec5e90e3983a19              # double 0.88654369785382692
	.quad	0x3fde737b633be8d0              # double 0.47579846087286359
	.quad	0x3fe7f2ea85055617              # double 0.74840284329065099
	.quad	0x3fd65e7260d55c48              # double 0.34951457458868562
	.quad	0x3fd6c522c793fdf2              # double 0.35578221788452347
	.quad	0x3fc787635b883918              # double 0.18381921738950591
	.quad	0x3fe67c5f01b5d9eb              # double 0.70268202146581638
	.quad	0x3fe04ad777048cf4              # double 0.50913594480189639
	.quad	0x3fdf28cbab2cbe0e              # double 0.48686496464048978
	.quad	0x3fe562d59acab6b5              # double 0.66831474526198653
	.quad	0x3fc68c96dbeed908              # double 0.17616544474521612
	.quad	0x3fe5625213469736              # double 0.6682520271758452
	.quad	0x3fe53f466ce8715b              # double 0.66397401114549426
	.quad	0x3fe22da13ea5cabd              # double 0.56807005153526513
	.quad	0x3fea85809b367a56              # double 0.82879667582512684
	.quad	0x3fd18611969a2398              # double 0.27380790431248547
	.quad	0x3fd4c05b5947532e              # double 0.32424052923788593
	.quad	0x3fe87b9144aaaa5d              # double 0.76508391772706441
	.quad	0x3fede1c0f5d9a0a6              # double 0.93380783097838527
	.quad	0x3fe49159fdf74efb              # double 0.64274310686820912
	.quad	0x3fc1a926b55ff98c              # double 0.13797458511539806
	.quad	0x3fee2663edb5e0b7              # double 0.94218632152389759
	.quad	0x3fdc7658fdad01f4              # double 0.4447233655264704
	.quad	0x3feaa4f3d41c6f0f              # double 0.83263579776709828
	.quad	0x3fe732dafc3e8e5f              # double 0.72495793596722169
	.quad	0x3fe66da9595902c9              # double 0.700886415965294
	.quad	0x3fd9e8e4449860f6              # double 0.40483957957032091
	.quad	0x3fe2af9268c55a40              # double 0.58393211806362189
	.quad	0x3fe4ea692d97d3dd              # double 0.65361460595033416
	.quad	0x3fd5f13d7fa39f9e              # double 0.34284913506280101
	.quad	0x3fd0989a6f4d88e0              # double 0.2593141638700569
	.quad	0x3fcd8cd847ab2814              # double 0.23086074351732633
	.quad	0x3fe78e4438c2677f              # double 0.73611651502436348
	.quad	0x3fe58bc5041bbfba              # double 0.67331171801014666
	.quad	0x3fcc5f239ec8624c              # double 0.22165341618598899
	.quad	0x3fde05eae522091c              # double 0.46911117912545008
	.quad	0x3fdea4a878bdd012              # double 0.47879993239553287
	.quad	0x3fb44041d30c2558              # double 0.079105485940222819
	.quad	0x3fbb47d20db76000              # double 0.10656464419241729
	.quad	0x3fcc0202bff79190              # double 0.21881136296645964
	.quad	0x3fe34a2ef4b6dcd7              # double 0.60280559345019469
	.quad	0x3fd9c36bd13ddcc8              # double 0.40255256112818616
	.quad	0x3fb7016b4707b098              # double 0.089865403024023016
	.quad	0x3fea9908acb65a69              # double 0.83118089421152519
	.quad	0x3fe94e9e7cbe50d2              # double 0.7908470569987236
	.quad	0x3fd4e7b503cb8f64              # double 0.32664227839108251
	.quad	0x3fe799b422fc98fe              # double 0.73751265366880125
	.quad	0x3fc935c86bdb36bc              # double 0.19695382372304049
	.quad	0x3fecd5a974a03ca8              # double 0.90108177927495081
	.quad	0x3fd73e338989a4c4              # double 0.36317146712697146
	.quad	0x3fe1edea83e8b7eb              # double 0.56029248965728351
	.quad	0x3fc1d63be6be065c              # double 0.13935040251458275
	.quad	0x3fe837e3a6d22ede              # double 0.75682241995079003
	.quad	0x3fefd50dd70b4385              # double 0.99475757599621827
	.quad	0x3fe58ebf6a0c7d54              # double 0.67367525780347615
	.quad	0x3fed0a0753b1cac6              # double 0.90747419687826247
	.quad	0x3fdb9484c7d5622a              # double 0.43093986048691824
	.quad	0x3fc2e9454392c274              # double 0.14774385261036438
	.quad	0x3fd96ad9975febea              # double 0.39714660437283433
	.quad	0x3fe9822cc21d1546              # double 0.79714048302472729
	.quad	0x3fe9c085c145e238              # double 0.80475127934102542
	.quad	0x3fd5cfc3edc6f4e2              # double 0.34080599041392479
	.quad	0x3fcbb75942fefef4              # double 0.21653285762112484
	.quad	0x3fd4169e819d0172              # double 0.31388056428479338
	.quad	0x3fcb9355f744700c              # double 0.2154338319168122
	.quad	0x3fe00bb5adcdbe18              # double 0.50142940469771968
	.quad	0x3fde3d47b338ecd0              # double 0.47249023916419919
	.quad	0x3fb14c4e45fca8b8              # double 0.067570583426148967
	.quad	0x3fca93e43483aa44              # double 0.20763828815627694
	.quad	0x3fdd5a4899b2b024              # double 0.45863547334261257
	.quad	0x3fd1e0e89a24d3fa              # double 0.27935233166800766
	.quad	0x3fca88a0d0f6fdd0              # double 0.20729456141815072
	.quad	0x3fe1624b328168c1              # double 0.54324874748569851
	.quad	0x3feb322c63b7de78              # double 0.8498746821996539
	.quad	0x3fc93f231fc9e030              # double 0.197239294549719
	.quad	0x3fda58c774a9e9ca              # double 0.41166864769880063
	.quad	0x3feadbcd48c18517              # double 0.83933128557342485
	.quad	0x3fbe47f1937643a8              # double 0.11828527307649372
	.quad	0x3fdea9325f1082da              # double 0.47907695087091684
	.quad	0x3fb84010284774c8              # double 0.094727525552531167
	.quad	0x3fd25e3387da76c4              # double 0.28699959055834889
	.quad	0x3fcb55c49ad440e4              # double 0.21355493125930203
	.quad	0x3fe68a9cdd71b2f9              # double 0.70442050219352759
	.quad	0x3feb139611448f5d              # double 0.84614089367503775
	.quad	0x3fe699ed65e22689              # double 0.70628995799161587
	.quad	0x3fe41fdee7ad2e2e              # double 0.62889046906770374
	.quad	0x3fed54c714077863              # double 0.91659883415173871
	.quad	0x3fda42480b1f0718              # double 0.41029549680762178
	.quad	0x3fc464300198e29c              # double 0.15930748060215627
	.quad	0x3fd6c8a4024931c0              # double 0.35599613402589725
	.quad	0x3feca08c7fda1100              # double 0.89459824534472432
	.quad	0x3fe4f55547ba0556              # double 0.65494789132223263
	.quad	0x3fd7019a6cfce79e              # double 0.35947285312033184
	.quad	0x3fc0242b20382d58              # double 0.12610377381529747
	.quad	0x3febd48a2401786f              # double 0.86969477684375629
	.quad	0x3fd183b3b82390ca              # double 0.27366345388714974
	.quad	0x3fe858bfc4e261d8              # double 0.76083363012281335
	.quad	0x3fe5148d433827cd              # double 0.65875876549511647
	.quad	0x3fe5901018202cf6              # double 0.67383579933212334
	.quad	0x3fe916191f520997              # double 0.78394752614285579
	.quad	0x3fb0810cc5b02fa8              # double 0.064469145072676981
	.quad	0x3fc59c9f767feb48              # double 0.1688422516452539
	.quad	0x3fd9c3160be18a84              # double 0.40253211174255221
	.quad	0x3fd369a680eec89a              # double 0.30332338896836009
	.quad	0x3fd42e205305fdce              # double 0.31531532390360162
	.quad	0x3fddc4ca9b82d662              # double 0.46513619600896139
	.quad	0x3fda3c27a30eb5ba              # double 0.40992155955867882
	.quad	0x3fd1faa041d11b5e              # double 0.28092199733185008
	.quad	0x3fe2745efae8525e              # double 0.57670544629452158
	.quad	0x3fe9029555d97580              # double 0.7815653492686323
	.quad	0x3fe0be75ecd8d257              # double 0.52324959048435005
	.quad	0x3fd88ed9cdde1616              # double 0.38371892074823799
	.quad	0x3fe9d23dd21110cd              # double 0.80691424397130052
	.quad	0x3fab6649562466c0              # double 0.053514758839992904
	.quad	0x3fe0ab23683571f4              # double 0.52089090684199713
	.quad	0x3fe21e00fe57dd69              # double 0.56616258312616907
	.quad	0x3fe8407b9642c692              # double 0.75787143085308828
	.quad	0x3fbb25f33b7cbda0              # double 0.10604782297445192
	.quad	0x3fe38e3189ea4616              # double 0.61110760628270344
	.quad	0x3fe06b74be39850c              # double 0.51311719086894092
	.quad	0x3fce93d65a2e2b14              # double 0.23888663676583433
	.quad	0x3fe60acbd13d3fcf              # double 0.68881789080659839
	.quad	0x3feb658ac7aca61f              # double 0.85614527701290288
	.quad	0x3fe2980b5f27a513              # double 0.58106010994848345
	.quad	0x3fe9ef2666f15c29              # double 0.81044311624544207
	.quad	0x3fd110a4168fe8c2              # double 0.26664068415960795
	.quad	0x3fe66c91f29da413              # double 0.70075318704505418
	.quad	0x3fe145c6b14a6fa4              # double 0.53976759554960951
	.quad	0x3fe5f398f2f5576d              # double 0.68598601773076739
	.quad	0x3fe2eba2271decb0              # double 0.59126384391801956
	.quad	0x3fe2d14f2b7c104a              # double 0.58805044644442117
	.quad	0x3fce0b19a361e23c              # double 0.23471374967245306
	.quad	0x3fe3791d93932867              # double 0.6085346109696389
	.quad	0x3fd9860be0dc319c              # double 0.39880654295918716
	.quad	0x3fe8a5cd57eb47fb              # double 0.77023951694195547
	.quad	0x3fb8711cba5ce598              # double 0.095475955485105124
	.quad	0x3fe7a99b9f882ad9              # double 0.73945408972334825
	.quad	0x3fe5410f76992867              # double 0.66419194377637047
	.quad	0x3fb1dd36887e7df8              # double 0.069781692813641771
	.quad	0x3febdba371188036              # double 0.87056133355145593
	.quad	0x3fb85f70bd403db0              # double 0.095206304744570813
	.quad	0x3fb91a8002d9cc88              # double 0.098060608573904529
	.quad	0x3fe6693c2ff67f0c              # double 0.70034608237981066
	.quad	0x3fb7479473c01a90              # double 0.090935972461105629
	.quad	0x3fe7f56925f1ae71              # double 0.74870736514044556
	.quad	0x3fe44ce83297a98b              # double 0.63438806420644889
	.quad	0x3fd8010ed4b5fa14              # double 0.37506457111877123
	.quad	0x3fcdc4f6bf89af88              # double 0.23257335998948414
	.quad	0x3fec9a78cfc056ef              # double 0.89385643555098493
	.quad	0x3fd4eb4d5a5ba6de              # double 0.32686170410179993
	.quad	0x3feed18cefec066f              # double 0.96307989940414795
	.quad	0x3fe21d88b2c2bb86              # double 0.5661052218837177
	.quad	0x3fd32ef016833584              # double 0.29973985861291674
	.quad	0x3fab502c16a32ea0              # double 0.05334604050002878
	.quad	0x3fb8bc7207708760              # double 0.096625449005413255
	.quad	0x3fef16c267c40dcd              # double 0.97152824656262171
	.quad	0x3fdca001ee109e26              # double 0.44726608513380695
	.quad	0x3fecae7d878c7a76              # double 0.89630009149898515
	.quad	0x3fe4e6733fba7725              # double 0.65313112685155217
	.quad	0x3fe7c8d52b046ab7              # double 0.74326570894057553
	.quad	0x3fc3858cb049abb8              # double 0.15251310928155504
	.quad	0x3feaaf9d81943b35              # double 0.83393740948108663
	.quad	0x3fe9bdd95eba15de              # double 0.80442493916842372
	.quad	0x3feb477d3488d8dc              # double 0.8524766946855169
	.quad	0x3f634ab51a72ad00              # double 0.0023549592184132218
	.quad	0x3feb1cb6638cce7b              # double 0.84725493853916534
	.quad	0x3fe969555d52aab0              # double 0.7941080877984259
	.quad	0x3fd716dd49d7d16c              # double 0.3607705327151709
	.quad	0x3fc31db0db7b918c              # double 0.14934359280517773
	.quad	0x3fd4fdae9b59b15a              # double 0.32798352404531317
	.quad	0x3f9c661438ae4800              # double 0.027733150443573606
	.quad	0x3fc4633e9c7511c8              # double 0.15927870406643607
	.quad	0x3fce37f64a74702c              # double 0.23608282695283955
	.quad	0x3fe19a19a82332d5              # double 0.5500610622344434
	.quad	0x3fe8d7f965ab044c              # double 0.77636403901136352
	.quad	0x3fe5ef3cb73601b2              # double 0.68545375617400439
	.quad	0x3fe16ce5cd9eedfb              # double 0.54454317245784922
	.quad	0x3fefaf6b5dd6239f              # double 0.99016350104749395
	.quad	0x3fdac8d2c1a3e484              # double 0.41850727949310618
	.quad	0x3fe78c9014300de7              # double 0.73590854590332533
	.quad	0x3fb1b75e49c440f8              # double 0.06920422841017515
	.quad	0x3fed735a7125c110              # double 0.92033121203533774
	.quad	0x3fd855e811d52772              # double 0.38024331799953537
	.quad	0x3fea6aa826a39d1c              # double 0.8255196337385402
	.quad	0x3fcd5737bdac15bc              # double 0.2292241741308042
	.quad	0x3fdd4f4d647c20f0              # double 0.45796522915817572
	.quad	0x3fee5aed034ff786              # double 0.94859934470126528
	.quad	0x3fe2c841544db0db              # double 0.58694521394275101
	.quad	0x3fe7b52bb92d1bc9              # double 0.74086557547786314
	.quad	0x3fb4c65af9e330b8              # double 0.081151662833863436
	.quad	0x3feaa57a38bbb393              # double 0.83269988136963702
	.quad	0x3fe3a5b1c61e0fdb              # double 0.61397637076197087
	.quad	0x3fe8f76e122663f2              # double 0.78020385308184204
	.quad	0x3fd236dfd0686b1e              # double 0.28459925987560719
	.quad	0x3fb5834ceb286170              # double 0.084034736072117643
	.quad	0x3fe1fc215cdb984f              # double 0.56202762733733802
	.quad	0x3fee586ec90d9dc1              # double 0.94829501407814842
	.quad	0x3fea6be4888a7e39              # double 0.82567049663698022
	.quad	0x3fec4132bc1f9a7b              # double 0.8829587625776435
	.quad	0x3fb1802b85c30528              # double 0.068361969143570733
	.quad	0x3fe3af5ce7ddf304              # double 0.61515660559197771
	.quad	0x3fe1d749c3afbc5b              # double 0.5575302907944989
	.quad	0x3fc9c528dff38b94              # double 0.20132933554768029
	.quad	0x3fe531d395ae23dc              # double 0.6623323367540439
	.quad	0x3fe39eb9b854a200              # double 0.61312566759175979
	.quad	0x3fa7869edfe4aea0              # double 0.045948948698734116
	.quad	0x3fe5779376878fa9              # double 0.67084668302822081
	.quad	0x3fd7c171022f85a2              # double 0.37118172849121767
	.quad	0x3feac8c9d32109f1              # double 0.83701030002731447
	.quad	0x3fe4547e3c0ecbbb              # double 0.63531409959829632
	.quad	0x3fc14d9ba38a2c38              # double 0.13518090710962993
	.quad	0x3fe2b5bc7d977fb4              # double 0.58468460588118498
	.quad	0x3fe2ea979c6149ec              # double 0.59113674681640083
	.quad	0x3fe7f5b08e0ce5b9              # double 0.74874141449179554
	.quad	0x3fe307ae787e6ac6              # double 0.59468768629025059
	.quad	0x3fe6cdd214c1bad0              # double 0.71262458852819499
	.quad	0x3fe72b734d651533              # double 0.72405400386984409
	.quad	0x3fe0022f71d1730a              # double 0.50026676397428216
	.quad	0x3fe7159c03f1bd0f              # double 0.72138787050599429
	.quad	0x3fdfacc993f1b874              # double 0.49492110679319201
	.quad	0x3fdbe27c2f81d26e              # double 0.43569855346075925
	.quad	0x3fc35089c3b2ef80              # double 0.15089532905210135
	.quad	0x3fbe580ce1029800              # double 0.11853104108249113
	.quad	0x3fc8c41112790a70              # double 0.19348348047249742
	.quad	0x3fe634d481862943              # double 0.69394898698491436
	.quad	0x3feb8b243f9c7acb              # double 0.86073505806037909
	.quad	0x3fe899a42743515c              # double 0.76875503223940766
	.quad	0x3fd34a8e91189056              # double 0.30142559213186837
	.quad	0x3fca4c0ee8559934              # double 0.20544611305667504
	.quad	0x3faa8aa0a7df25c0              # double 0.051838894359728993
	.quad	0x3fd68e1bedd5b402              # double 0.35242365099003348
	.quad	0x3fd5204ef7989666              # double 0.33009695224095592
	.quad	0x3fed2f1fa05bc233              # double 0.91200238533025979
	.quad	0x3fd9575f4556b762              # double 0.3959577729354945
	.quad	0x3fe89df457eee712              # double 0.76928155111747487
	.quad	0x3fb819a851661dc0              # double 0.094141502259041054
	.quad	0x3fd748a5ad43d3e0              # double 0.36380903168111267
	.quad	0x3fe11bb199e76d24              # double 0.53463058528305796
	.quad	0x3fc120711444ab10              # double 0.13380254258785174
	.quad	0x3fe491221fd0bdce              # double 0.64271646703667229
	.quad	0x3fb83f63aa8c3728              # double 0.094717244279504897
	.quad	0x3fec9ef858b90045              # double 0.89440553024906733
	.quad	0x3fec9407329244a4              # double 0.89306983830660557
	.quad	0x3fde22512c545704              # double 0.4708445485024273
	.quad	0x3fc24d399dbe0f6c              # double 0.14298172189966907
	.quad	0x3fdb5196de1a29f8              # double 0.42685481729191066
	.quad	0x3fe8a3d6983f900c              # double 0.76999978767389753
	.quad	0x3fd14cdf3f0e6028              # double 0.27031689794376002
	.quad	0x3fefc616f3245ed4              # double 0.99293086517988138
	.quad	0x3fe789ff86d3a85f              # double 0.73559547742230424
	.quad	0x3fdb8b909c80a22c              # double 0.43039336474842815
	.quad	0x3fe36613a8b2e0d4              # double 0.60621054600690139
	.quad	0x3fe4541b38d08a7e              # double 0.63526688667873521
	.quad	0x3fe0b41bcdbc2755              # double 0.52198591406452499
	.quad	0x3fbcf8631ebcf828              # double 0.11316508770411871
	.quad	0x3fec6942bd3bafe1              # double 0.88784920653915489
	.quad	0x3fde429445d7ecd4              # double 0.47281367130899565
	.quad	0x3fe26fb4d95916f3              # double 0.57613604021818643
	.quad	0x3fc041021696e2a0              # double 0.1269838915157111
	.quad	0x3fcb225b8803b420              # double 0.21198600903827103
	.quad	0x3fb03d9959aba2c0              # double 0.063439926521492218
	.quad	0x3fe82081d1c86b11              # double 0.75396815274447893
	.quad	0x3fc24f6c39f65c08              # double 0.14304879026596518
	.quad	0x3fd29d21a080cf0e              # double 0.290840536824576
	.quad	0x3fc908fb89b650e0              # double 0.19558662628390433
	.quad	0x3fb0b2f63dc5b4e0              # double 0.065230741578222062
	.quad	0x3fde5d1362be6d7e              # double 0.47443089144663719
	.quad	0x3fd707aeffa179f8              # double 0.35984396900121807
	.quad	0x3fecfa19034fcf9a              # double 0.90552950522259157
	.quad	0x3fe5c6b37c5b55b4              # double 0.68050550735886484
	.quad	0x3fec6e1ff4717cf2              # double 0.88844297163805508
	.quad	0x3fe8623bd46bf50c              # double 0.76199141968359773
	.quad	0x3fd50f09b2ada922              # double 0.32904283951815405
	.quad	0x3fe87298ec0024ad              # double 0.76398893445834448
	.quad	0x3fb86aa38fdae410              # double 0.095377180691585516
	.quad	0x3fc50f78b7217bb8              # double 0.1645346540635424
	.quad	0x3feb7a04be33f355              # double 0.85864483975420092
	.quad	0x3fe3f969276aeb75              # double 0.62419564913521575
	.quad	0x3fe35948445c10e5              # double 0.60464871741762904
	.quad	0x3fefe80d45720ab7              # double 0.99707664073533563
	.quad	0x3fe44760c5350da3              # double 0.63371313588179523
	.quad	0x3fed8e71d96e2fda              # double 0.9236382719695897
	.quad	0x3fcd8586a32e83a4              # double 0.23063738792282351
	.quad	0x3fed6a9f2d3f6458              # double 0.91926535451342328
	.quad	0x3fd7b6015c9931fc              # double 0.37048372309507704
	.quad	0x3fedd9c15d14ea9e              # double 0.93283146076221946
	.quad	0x3fd0b864ab979ade              # double 0.26125447041560601
	.quad	0x3fe82e6b5230010d              # double 0.7556664090371058
	.quad	0x3fea8539125baa92              # double 0.82876256547509031
	.quad	0x3fd81b6e4e1a9fec              # double 0.37667424800247207
	.quad	0x3f7ed6ae2745b080              # double 0.0075289538257089505
	.quad	0x3fd7fd4057c2dfaa              # double 0.37483223505432284
	.quad	0x3fe3a021a7fd91fa              # double 0.6132972985329268
	.quad	0x3feed57e48cc7b89              # double 0.96356119364269077
	.quad	0x3fe7df76c577bd31              # double 0.74602831428447847
	.quad	0x3fc267033247ba50              # double 0.1437686915882801
	.quad	0x3fe02959b2abd7b4              # double 0.50504765412073604
	.quad	0x3fc0359213a48cb8              # double 0.126634845343778
	.quad	0x3fe12cad00bb4311              # double 0.53670358794087936
	.quad	0x3f8c3a0f20d5c300              # double 0.013782613935036547
	.quad	0x3feebddfa3f9a796              # double 0.96067792917641515
	.quad	0x3fcaf5ec9e311668              # double 0.21063001369673207
	.quad	0x3fe1a60aeb93865e              # double 0.55151887904157681
	.quad	0x3feabe58d414a4d9              # double 0.83573571607589792
	.quad	0x3f9e8b0ae17ed640              # double 0.029827280057096894
	.quad	0x3fdcc47b19618888              # double 0.44949223974811803
	.quad	0x3fc033e57e876f10              # double 0.12658375433135705
	.quad	0x3fe47124caa564c5              # double 0.63881148890791251
	.quad	0x3feed919279facc2              # double 0.96400125254640323
	.quad	0x3feaa29ddc88c0b6              # double 0.83235066483577813
	.quad	0x3fdc73f68e79f8e6              # double 0.44457782663074707
	.quad	0x3fe7fe9cd1e9c295              # double 0.74983063696534435
	.quad	0x3fcdfe259e4a9628              # double 0.23431844929761891
	.quad	0x3fc8eded79dd9da4              # double 0.19476097536538106
	.quad	0x3fcb412f826d62b0              # double 0.2129268061496723
	.quad	0x3fb2648bd372b608              # double 0.071846713183468691
	.quad	0x3fe6e2b4411e8ee7              # double 0.71517384260775152
	.quad	0x3fe1c34f056f02ab              # double 0.55509139119393092
	.quad	0x3fd7cfb3d41c4cca              # double 0.37205215181274964
	.quad	0x3fe1abd0adb505da              # double 0.55222352912113171
	.quad	0x3feabde6d2cf9132              # double 0.83568135427461798
	.quad	0x3fe3cc1dd2a484af              # double 0.61866656438009737
	.quad	0x3fdb05f0f18ecdce              # double 0.42223762120849251
	.quad	0x3fa8dcdbd07a5980              # double 0.048560017775503006
	.quad	0x3fcff3ebcccb2da0              # double 0.24963138103190108
	.quad	0x3fefc2239739bb98              # double 0.99244861160501596
	.quad	0x3fb697c3810a4470              # double 0.088253230098659818
	.quad	0x3fd47c8022ecbcb2              # double 0.32009890947933706
	.quad	0x3fccaaefd978bd4c              # double 0.22396658056957575
	.quad	0x3fec0d69cbca256d              # double 0.87663736155188376
	.quad	0x3fe89c55184b24e4              # double 0.76908354515867616
	.quad	0x3fd628a31ef52592              # double 0.34623029730990951
	.quad	0x3fee02d948558452              # double 0.93784774902099799
	.quad	0x3fe057605cb8787b              # double 0.51066606626024169
	.quad	0x3fc602ef6bbe8998              # double 0.17196457634879603
	.quad	0x3fd5a47c9c96be3c              # double 0.33816447536353045
	.quad	0x3fc8557cd5cf05e8              # double 0.19010887565495627
	.quad	0x3fb522785b15a850              # double 0.082557222592783974
	.quad	0x3fe4424b2c3e7dbb              # double 0.63309248582293465
	.quad	0x3fd6760fb0740c72              # double 0.35095588905114206
	.quad	0x3fd475be394d6bb4              # double 0.31968646617832097
	.quad	0x3fe7af457d1fd604              # double 0.74014543951369705
	.quad	0x3fddb2490e9fb46c              # double 0.46400667598829304
	.quad	0x3fd9cf5bb8651b68              # double 0.4032811451656273
	.quad	0x3feec51b4cc1cd3a              # double 0.96156086913689554
	.quad	0x3fd9d76b9a1d6c9a              # double 0.40377321291243506
	.quad	0x3feb21193c8b7bd9              # double 0.8477903540150421
	.quad	0x3f57ecb0f0a5de00              # double 0.0014602401666631293
	.quad	0x3fcc83278769a508              # double 0.22275251495310777
	.quad	0x3fe61cb06fda0e58              # double 0.69100210043002175
	.quad	0x3fe1fe4eb31c3c49              # double 0.56229338629226178
	.quad	0x3fefdb8656ce8bd8              # double 0.99554745630700391
	.quad	0x3fd389c236587e80              # double 0.30528312022395454
	.quad	0x3fdf1ee022e4cf0e              # double 0.48625949294658788
	.quad	0x3fe51c50c0d9403e              # double 0.65970647493123358
	.quad	0x3fe49db9fb48e777              # double 0.64425372199114761
	.quad	0x3fe5b07685805328              # double 0.67779089045015883
	.quad	0x3fc0b98146f9faf4              # double 0.13066116300247865
	.quad	0x3fca1e1046cd0840              # double 0.20404246766162437
	.quad	0x3fe4fdcf964e4fa7              # double 0.65598277432080898
	.quad	0x3fed5d2a4a29f18a              # double 0.91762270436406479
	.quad	0x3febfab4333099c7              # double 0.87435350416199575
	.quad	0x3fe5062ae9b551a8              # double 0.65700288435123344
	.quad	0x3fc606a5aed2a85c              # double 0.17207785640977391
	.quad	0x3fbfcb8b3dbfe328              # double 0.12419958360250105
	.quad	0x3fa02fa2cf7fc8f0              # double 0.031613433675277025
	.quad	0x3fe28b2a3330e871              # double 0.57948789594889949
	.quad	0x3fe4a60a5f42f286              # double 0.64526861768497734
	.quad	0x3fd4965770e1b8be              # double 0.32167612098318077
	.quad	0x3fce31ce08d9e4a4              # double 0.23589492256340805
	.quad	0x3fdfca984c332240              # double 0.49674041215306275
	.quad	0x3fea55632620c6c7              # double 0.82292325446015802
	.quad	0x3fd9dda02c924152              # double 0.4041519580141727
	.quad	0x3fcb317973a619dc              # double 0.21244733950534467
	.quad	0x3fde29054cd1cefa              # double 0.47125370504294006
	.quad	0x3fe90c007bcb86c9              # double 0.78271507433620358
	.quad	0x3fee8cdf9a27fb73              # double 0.95469646557454124
	.quad	0x3fc3b01ad3eddb84              # double 0.15381179187872018
	.quad	0x3fe5048cda83242a              # double 0.65680544546296926
	.quad	0x3fe841fe73ba60dd              # double 0.75805590251095689
	.quad	0x3fe6af3aa97eb5a6              # double 0.70889027695163942
	.quad	0x3fe428134b194ea5              # double 0.6298920122885262
	.quad	0x3fe4cf9f800d5779              # double 0.65034461031130697
	.quad	0x3feee6cbde4cfeab              # double 0.96567338388554924
	.quad	0x3fed675cbabc2b1a              # double 0.9188674590271575
	.quad	0x3fd81f03f3299fbc              # double 0.37689303156230003
	.quad	0x3feb9d782fb87f7f              # double 0.86297234840820625
	.quad	0x3fe138347d22fb04              # double 0.53811096611738707
	.quad	0x3fec4341d2ba542c              # double 0.88321009786398496
	.quad	0x3fe0ce3fcc226cae              # double 0.52517690534604866
	.quad	0x3fbf8894a05669b0              # double 0.12317780413142176
	.quad	0x3fdb4bcce3a2001c              # double 0.42650148610846528
	.quad	0x3fb4c48749c3ee88              # double 0.081123786458130565
	.quad	0x3fcb9ee47c34b234              # double 0.21578651489962086
	.quad	0x3fe5539582aee884              # double 0.66645312809056678
	.quad	0x3fdf4b6ae30544e2              # double 0.48897812051752798
	.quad	0x3fcb0e9219bd9ca4              # double 0.21138216263645859
	.quad	0x3fe6a9ef285f279a              # double 0.70824392209145803
	.quad	0x3fe2e4466770428e              # double 0.59036560252032344
	.quad	0x3fefcacb1a7a5a66              # double 0.99350505038712522
	.quad	0x3fce0461c0be4cf0              # double 0.23450872336670825
	.quad	0x3fd5a3e920da107c              # double 0.33812931259331669
	.quad	0x3fcd00903f1f37d4              # double 0.22657969553114177
	.quad	0x3fea7bf3496e3a6e              # double 0.82763065664205526
	.quad	0x3fcacd23a85870c4              # double 0.20938535423272786
	.quad	0x3fef1ca74cfd885e              # double 0.97224774396114433
	.quad	0x3fdb5affe96216bc              # double 0.42742917815517578
	.quad	0x3feacce6f53739a1              # double 0.83751247304626386
	.quad	0x3fe4ad53f29b343d              # double 0.6461581934360151
	.quad	0x3fe61cb0079063e4              # double 0.69100190617893675
	.quad	0x3fd5d2cb2029eb20              # double 0.34099081173887846
	.quad	0x3fbcb4ff0c7283f8              # double 0.11213678411378669
	.quad	0x3fc380be1a5900b4              # double 0.15236641203410317
	.quad	0x3fc046e455196580              # double 0.12716344981417294
	.quad	0x3fe4cbc6281c1471              # double 0.64987476190493798
	.quad	0x3fe77c1bfecb1eec              # double 0.73390006794303764
	.quad	0x3fc139151949e00c              # double 0.13455451712411592
	.quad	0x3fddfb5ec19c3d02              # double 0.46846741587883411
	.quad	0x3fee4ec8f760e6cd              # double 0.94711731258504417
	.quad	0x3fef8f46e69634ec              # double 0.98623986278985631
	.quad	0x3fd743ba069e8af4              # double 0.36350870748917363
	.quad	0x3fd4738238c88626              # double 0.31955009026759951
	.quad	0x3fca65b800fab0f8              # double 0.20622921035590713
	.quad	0x3fa1594938a91e40              # double 0.033884323278979611
	.quad	0x3fdbe1bf226c60c4              # double 0.43565348016410277
	.quad	0x3fe11018e3944f80              # double 0.533214992991347
	.quad	0x3fc208bcd189bb14              # double 0.14089164954517541
	.quad	0x3fe0cf5b733186fd              # double 0.52531216143344717
	.quad	0x3fcf417098529f90              # double 0.24418456494936125
	.quad	0x3fe9670389da038b              # double 0.79382492946761951
	.quad	0x3fc22b78ffc0acb4              # double 0.14195168006822245
	.quad	0x3fd0f64d6bb9226e              # double 0.26503310699312166
	.quad	0x3fdfceecdd82d332              # double 0.49700471527039547
	.quad	0x3fd102a802143e7e              # double 0.26578712657008186
	.quad	0x3fc703ec4a1378bc              # double 0.17980722062106291
	.quad	0x3fed6ecb241a6980              # double 0.919774599565514
	.quad	0x3fc3765176c70b00              # double 0.15204828548129257
	.quad	0x3fddc53f2f4f59be              # double 0.46516399021257004
	.quad	0x3fc1269f45dca7b4              # double 0.13399115477778667
	.quad	0x3fd328541f47821a              # double 0.29933646254178969
	.quad	0x3fd7e57a672d7bf2              # double 0.37338123393959599
	.quad	0x3fc721d2dbcf2e80              # double 0.18071971638561379
	.quad	0x3fd86195b419e462              # double 0.38095610225679455
	.quad	0x3fe2937212f3fce9              # double 0.58049873067639368
	.quad	0x3fd915435105146a              # double 0.39192278778165834
	.quad	0x3fc9f3e5d7d23bcc              # double 0.20275567091127156
	.quad	0x3fec85be93229645              # double 0.89132622468304901
	.quad	0x3fe4ac8a253abf4e              # double 0.6460619666231453
	.quad	0x3feaa6de9e201d55              # double 0.83286982425571898
	.quad	0x3fed14003cf5e17e              # double 0.90869151979772744
	.quad	0x3fc79c0666542fe4              # double 0.184449005093824
	.quad	0x3f99a2bb7bcceda0              # double 0.025034837180312075
	.quad	0x3fa5d781381cada0              # double 0.042659795856106131
	.quad	0x3fee68fe1f17ae09              # double 0.95031648705247662
	.quad	0x3f9602ed6a22caa0              # double 0.021495542147656921
	.quad	0x3fc8c4504922e4e0              # double 0.19349101611240993
	.quad	0x3fda3d79ab12b35c              # double 0.41000215250351402
	.quad	0x3fc654869236baf0              # double 0.17445451869340145
	.quad	0x3fccb9a1713c4074              # double 0.22441499737806547
	.quad	0x3fe09f6617374d8d              # double 0.51945786032085695
	.quad	0x3fd8b55d32bf43b0              # double 0.38606958347105103
	.quad	0x3fd7b563b0617ad4              # double 0.37044613098798362
	.quad	0x3fd9ddb2b9c3c040              # double 0.40415638104514429
	.quad	0x3fdd37505eb8f698              # double 0.45650109529729255
	.quad	0x3fdb2954fb643584              # double 0.42439770269341914
	.quad	0x3fda9650cef128d2              # double 0.41542453965361148
	.quad	0x3fe3846e7fbadf5f              # double 0.609915971253013
	.quad	0x3fe5cb3c65cbc377              # double 0.6810590732767271
	.quad	0x3fded980f9cf8bfa              # double 0.48202537913874688
	.quad	0x3fe00a78ce2de274              # double 0.50127830762273939
	.quad	0x3fe5391d2f241afd              # double 0.66322192389711143
	.quad	0x3fdee2212da28408              # double 0.48255185562635505
	.quad	0x3fdd82bcb0ff6cd8              # double 0.46110455784737558
	.quad	0x3fc976d11b2c97d4              # double 0.19893850161423521
	.quad	0x3fe9af1f341db851              # double 0.80262718371319342
	.quad	0x3fbb49c7793984b0              # double 0.10659453115069328
	.quad	0x3fb94d1fd1b027a8              # double 0.098833073323617016
	.quad	0x3fe5b3977e492c65              # double 0.67817282357408415
	.quad	0x3fd527bffcb384f8              # double 0.33055114438873501
	.quad	0x3fec3333876e3b7a              # double 0.88125015689170927
	.quad	0x3fcdd5fb579c3c2c              # double 0.23309270646902414
	.quad	0x3fe4a8221cdc5d98              # double 0.64552407872081385
	.quad	0x3f94e2fadd018ba0              # double 0.020397109736574159
	.quad	0x3fe4df4f506e53a3              # double 0.65225949963734242
	.quad	0x3fe2796d9d4ae55a              # double 0.577322776042972
	.quad	0x3fe745d3e62eb98f              # double 0.72727389295123313
	.quad	0x3fef31a022b6b4aa              # double 0.97480780391710664
	.quad	0x3fac8865210cd400              # double 0.055728111538350333
	.quad	0x3fed76f8243cf3a5              # double 0.920772619988942
	.quad	0x3f98bb6c748183c0              # double 0.024152464495617698
	.quad	0x3fee7879bb4c405e              # double 0.95220648366558769
	.quad	0x3fe07e1ccfcdc3c1              # double 0.51539459788011055
	.quad	0x3fd2c608b8390e7c              # double 0.29333703985705717
	.quad	0x3fd05801d917d6e4              # double 0.25537153435230509
	.quad	0x3fe7c539aafa196f              # double 0.74282534974990522
	.quad	0x3f91f66bec69c1c0              # double 0.017541586212645788
	.quad	0x3feefc9e8b98603b              # double 0.96833731903735242
	.quad	0x3fbd081230de0fb8              # double 0.11340440457394052
	.quad	0x3fda755932b492c2              # double 0.41341237975784051
	.quad	0x3fee3b3cee380d83              # double 0.94473120238437536
	.quad	0x3fc559a1d44931e0              # double 0.16679785600207619
	.quad	0x3fe42ae4bf106fc4              # double 0.63023602788188571
	.quad	0x3fec43f8624d6e8f              # double 0.88329714965535
	.quad	0x3fde3ae741d25c8a              # double 0.47234517505553042
	.quad	0x3fcadf73469d0dc0              # double 0.20994416187214249
	.quad	0x3fd05d13bde71b68              # double 0.2556809763449821
	.quad	0x3fe9a2b161261809              # double 0.80110997175575094
	.quad	0x3fe81666b2201c64              # double 0.75273451604961083
	.quad	0x3fc73736cadb9c6c              # double 0.1813724985615609
	.quad	0x3feab432d2779156              # double 0.83449689013336115
	.quad	0x3fc440708c8f00c4              # double 0.15821654189313084
	.quad	0x3fe5ec66b654f9ab              # double 0.68510757075983031
	.quad	0x3faa6e018b9bf1a0              # double 0.051620529453404673
	.quad	0x3fd30a72e13c0370              # double 0.29751274104642444
	.quad	0x3fc21847b17c8ffc              # double 0.14136596838318372
	.quad	0x3fad8809081973f0              # double 0.057678491820048694
	.quad	0x3fe2c94e66932592              # double 0.58707351717127865
	.quad	0x3fd039a7b1cd3dea              # double 0.25351898539972118
	.quad	0x3fd5f7bc6bf99d34              # double 0.34324560684622729
	.quad	0x3fec3cc3c8b64a4a              # double 0.88241757585121516
	.quad	0x3fe8df9be0fe4650              # double 0.77729600852962655
	.quad	0x3fd5fe0f0e06c324              # double 0.34363151902930356
	.quad	0x3fd864735e0d4472              # double 0.38113102135418508
	.quad	0x3fe2ca6479442360              # double 0.58720611271665391
	.quad	0x3feb48bb9afdd198              # double 0.85262851974271125
	.quad	0x3fe4a47505ef9180              # double 0.64507533225382474
	.quad	0x3fd51ce20800ceb8              # double 0.3298878744273952
	.quad	0x3fedf83a667e14e7              # double 0.93655128496234574
	.quad	0x3fd106d76d30670e              # double 0.26604257262225495
	.quad	0x3fd11e564e8e4568              # double 0.26747663184604287
	.quad	0x3fe85b297916118d              # double 0.76112817430161928
	.quad	0x3fc42835430d4f64              # double 0.15747705244086341
	.quad	0x3fefc2e56d43d937              # double 0.99254103985621255
	.quad	0x3fefd1e87e4699ca              # double 0.99437355674017991
	.quad	0x3fcfb07ad8c5c1c4              # double 0.24757323822588095
	.quad	0x3fe319715b86b8f4              # double 0.59685581089232054
	.quad	0x3f0fad9572c00000              # double 6.0421107576758004E-5
	.quad	0x3faa3d24381ce180              # double 0.051247722482403724
	.quad	0x3fd3ba936fd042d2              # double 0.30826269072808288
	.quad	0x3fad2a5df85f1670              # double 0.056963860100535224
	.quad	0x3f881a179c1ee040              # double 0.011768516971514598
	.quad	0x3fe8915a164c49aa              # double 0.767743152189998
	.quad	0x3fd2fb2a7c646aba              # double 0.29657995364838607
	.quad	0x3fc6bbb8540050e8              # double 0.17760376073477535
	.quad	0x3fee9be51d3ff117              # double 0.95653014862867536
	.quad	0x3fef98670fee40fc              # double 0.98735383140049703
	.quad	0x3feb1cb61738d197              # double 0.84725479636704193
	.quad	0x3fe6db4b22f14b80              # double 0.71426922630995193
	.quad	0x3fcb67d0657d0498              # double 0.2141056533382979
	.quad	0x3fd5bce8fd6ef7e8              # double 0.33965515851366357
	.quad	0x3fe2dd3f5d448865              # double 0.58950775352810736
	.quad	0x3fedf28937e5941f              # double 0.93585644643156118
	.quad	0x3fc24ad358b40c40              # double 0.14290849524704363
	.quad	0x3fe12fb76509bc5b              # double 0.53707475408544825
	.quad	0x3fca77619e8aaec4              # double 0.20676822892470714
	.quad	0x3fea502dd64a2e1f              # double 0.82228748181791278
	.quad	0x3fb76a152c3e14a0              # double 0.09146244363917555
	.quad	0x3fdc1db7fd8299de              # double 0.43931388623096079
	.quad	0x3feab44f1bff549d              # double 0.83451037853469112
	.quad	0x3fe0c82712783a3d              # double 0.52443269355155275
	.quad	0x3fe0f0c322738b7e              # double 0.52938992241648442
	.quad	0x3fe28e1d042e3a4a              # double 0.57984782043951921
	.quad	0x3fea96f85d6ca843              # double 0.83092897650681896
	.quad	0x3fd91cdccc72c020              # double 0.39238662686966741
	.quad	0x3feaaaacebf25a2e              # double 0.83333440860116581
	.quad	0x3fd0458e2bbac180              # double 0.25424532194576699
	.quad	0x3fedb6b6ff0bad4c              # double 0.92855405629726694
	.quad	0x3fc643f6440c3f94              # double 0.17394903490685165
	.quad	0x3fea616cdc5e16e5              # double 0.82439272919210949
	.quad	0x3fc8f00f7fa63e1c              # double 0.1948260663307203
	.quad	0x3fe7fe7096183e3a              # double 0.7498095447098827
	.quad	0x3fdfa8c33f1e89f4              # double 0.4946754566573468
	.quad	0x3fe80fdaa8363724              # double 0.75193531850684225
	.quad	0x3fe033db92dfb236              # double 0.50633028684894188
	.quad	0x3fcfb973fed96c9c              # double 0.24784707969488273
	.quad	0x3fe4affadaa2da51              # double 0.64648192121860337
	.quad	0x3fca56c149fb6f28              # double 0.20577255356226343
	.quad	0x3fa1a3f6446c7850              # double 0.034454055645469439
	.quad	0x3feb41c997b92fe5              # double 0.85178069718812977
	.quad	0x3fecde729f62199e              # double 0.90215426568538581
	.quad	0x3fe975c1e902a7a0              # double 0.79562469014966907
	.quad	0x3fbc238374566578              # double 0.10991689291258477
	.quad	0x3febc712f0dec095              # double 0.86805102391191957
	.quad	0x3fd3a965ef85d590              # double 0.30721424475572068
	.quad	0x3fe9bb8cd9dd5ae0              # double 0.80414431144421527
	.quad	0x3fdb2069d5514010              # double 0.42385335761810072
	.quad	0x3fe3818d8f0cb678              # double 0.60956457080256055
	.quad	0x3fe4047c7ea92de0              # double 0.62554764498184667
	.quad	0x3fe86e0cd3087958              # double 0.76343384950068138
	.quad	0x3fdfa73c265641ce              # double 0.49458221191255525
	.quad	0x3fe346a05ba043f1              # double 0.60237138648710531
	.quad	0x3fc56a2b49879730              # double 0.16730252352061248
	.quad	0x3fc9d0dda8df2dd4              # double 0.20168658014004726
	.quad	0x3fc2790022f00c60              # double 0.14431764322225415
	.quad	0x3fc067ffb64af2dc              # double 0.12817379380239557
	.quad	0x3fcc61cf9a428ab0              # double 0.22173495323393899
	.quad	0x3fc3c4da62708370              # double 0.15444497877708896
	.quad	0x3fed19925465156e              # double 0.90937153323527098
	.quad	0x3fe8681421ce9fe1              # double 0.76270491221384529
	.quad	0x3fbcf767a8432820              # double 0.1131500993534762
	.quad	0x3fd40b4e27f64a3a              # double 0.31319002058549794
	.quad	0x3fee5c605332e635              # double 0.94877640008707564
	.quad	0x3fe005710a50beb5              # double 0.50066425337532527
	.quad	0x3fef1bb7fde4711e              # double 0.97213363254880725
	.quad	0x3fe0dceaf65599f6              # double 0.52696750747855847
	.quad	0x3febbecbb62491bd              # double 0.867040496585609
	.quad	0x3fa28a416a611af0              # double 0.036211055980450157
	.quad	0x3fea94d9d7c35023              # double 0.83067028180312652
	.quad	0x3fd66e79118047ca              # double 0.35049273213473653
	.quad	0x3fd7871459e84bb2              # double 0.36761959819812795
	.quad	0x3feef518b3bc7b2e              # double 0.9674190054391596
	.quad	0x3fac5e0eb6b28430              # double 0.055405101587219341
	.quad	0x3fed3293547c3fde              # double 0.91242376805348235
	.quad	0x3feb21634fc9ed3c              # double 0.84782567580933898
	.quad	0x3fd1c88e1fc339de              # double 0.27786591626946044
	.quad	0x3fb409ea845626e0              # double 0.07827630740043956
	.quad	0x3fe421ed2bdbd6ea              # double 0.6291414124122785
	.quad	0x3fe5808384f000e2              # double 0.67193771328313923
	.quad	0x3fe073e6f1f52078              # double 0.51414820916490012
	.quad	0x3fecf1685ab1f734              # double 0.90446870530988698
	.quad	0x3fe8769e3e3dec8c              # double 0.76447975308055182
	.quad	0x3fddc59f573533ce              # double 0.46518691555394021
	.quad	0x3fe306f9aa9db2ce              # double 0.59460147212447523
	.quad	0x3fce2e44371d8518              # double 0.23578694049050664
	.quad	0x3fbac7f4833924d8              # double 0.10461357310954911
	.quad	0x3fe104e4d15728cf              # double 0.53184739004907466
	.quad	0x3fe9476779edd755              # double 0.78996633352538004
	.quad	0x3fe7e171540690d7              # double 0.74626985942134183
	.quad	0x3fef34c7a75f8218              # double 0.9751928586011358
	.quad	0x3fd5ebe30fe8f928              # double 0.34252239755359648
	.quad	0x3fe4fb05a381f8e2              # double 0.65564233718012255
	.quad	0x3fefaf2dce5f54f3              # double 0.99013414675815025
	.quad	0x3fe418b2a4c18bea              # double 0.62801487139620105
	.quad	0x3fc97056a3b353c8              # double 0.1987407969778856
	.quad	0x3fe94423e110d45d              # double 0.78956788976814674
	.quad	0x3fd6a98c59a4e144              # double 0.3540984034948631
	.quad	0x3fe3cb5189ff64c0              # double 0.61856915428793258
	.quad	0x3fcdbe1ce86bf21c              # double 0.23236428593362823
	.quad	0x3fb3e931d7b50d98              # double 0.077777018702411715
	.quad	0x3fdc71b8ee5af650              # double 0.44444106366049585
	.quad	0x3feec5aa7175e5c7              # double 0.9616291252161141
	.quad	0x3fef866645339538              # double 0.9851561881629669
	.quad	0x3f952c7a324b94a0              # double 0.020677480048921226
	.quad	0x3fdf065b716118d6              # double 0.48476301262088606
	.quad	0x3febb06811ab17ee              # double 0.86528399897428954
	.quad	0x3fe10af0def209d1              # double 0.53258555931125262
	.quad	0x3fcfbf3ca881d0d4              # double 0.24802358844647776
	.quad	0x3fcb12619cba4f30              # double 0.21149845268939194
	.quad	0x3fb41b5bfd931930              # double 0.07854247036730011
	.quad	0x3fdfd3952387d44c              # double 0.4972889754274703
	.quad	0x3fb3f5cffaaa6920              # double 0.077969549844429498
	.quad	0x3fe4bdfaa7eb485c              # double 0.64819081112569732
	.quad	0x3fe2876741a87ba6              # double 0.5790287287126048
	.quad	0x3fee6aab96bb2d04              # double 0.95052127303770861
	.quad	0x3f74ec2bed15b700              # double 0.0051080432761929639
	.quad	0x3fcba310eed2b5a4              # double 0.2159138837936726
	.quad	0x3fe822390dd72755              # double 0.75417759612285329
	.quad	0x3fc60a30c4f9be14              # double 0.1721859895510397
	.quad	0x3fc9c562740f60e0              # double 0.20133619944568348
	.quad	0x3faac72aa05d49d0              # double 0.052300769878133146
	.quad	0x3fe76e986f8514fb              # double 0.7322504213449571
	.quad	0x3fce463867df7a0c              # double 0.23651795455857927
	.quad	0x3fe62f0a906e7fd8              # double 0.6932423420839724
	.quad	0x3f519caee3208c00              # double 0.001074953831001535
	.quad	0x3fa9e6372d08f430              # double 0.050584530112680048
	.quad	0x3fe557c0a15a1052              # double 0.66696197046304406
	.quad	0x3fd05e35fc525388              # double 0.2557501758649825
	.quad	0x3fbd5084ce4a7338              # double 0.11450986896893489
	.quad	0x3fca2da5fb055168              # double 0.20451807743905737
	.quad	0x3fde3119d79a32d6              # double 0.47174688391605224
	.quad	0x3fe3478c0d25123b              # double 0.60248377387376395
	.quad	0x3fe9a6346829a85c              # double 0.8015386614254214
	.quad	0x3fd1097d5058e0ec              # double 0.26620419355778213
	.quad	0x3fe6fd97b0607800              # double 0.71845612000083747
	.quad	0x3fd2136bd11d4c02              # double 0.28243537350971348
	.quad	0x3fe3a94739b54b2a              # double 0.61441384574059055
	.quad	0x3fcba65dc6403330              # double 0.21601459675039214
	.quad	0x3fe369b2fceb4cdb              # double 0.60665273092527217
	.quad	0x3fe81b627a11aea6              # double 0.7533428558503672
	.quad	0x3fd5b073d0b20c68              # double 0.33889479999942873
	.quad	0x3fe26b3bc9fa0693              # double 0.57559003304068523
	.quad	0x3fcc67d9116f6a04              # double 0.22191918708161051
	.quad	0x3fea09e195812be7              # double 0.81370619964706925
	.quad	0x3fdf6c2a00490a60              # double 0.49097681072104216
	.quad	0x3fdff29791e55e56              # double 0.4991816448941554
	.quad	0x3f848dbca3f85cc0              # double 0.010035966638538674
	.quad	0x3fd92497ae3cb52e              # double 0.39285842910142577
	.quad	0x3fefca970cea33cf              # double 0.99348022959167703
	.quad	0x3fd3de19dd2c4ea2              # double 0.31043097113545504
	.quad	0x3fe29907154159f1              # double 0.58118013526364909
	.quad	0x3fefac156883a292              # double 0.98975630200318876
	.quad	0x3f91148946405280              # double 0.016679901993557511
	.quad	0x3fea9a6e835b9456              # double 0.831351524885245
	.quad	0x3fe975e8ebb76032              # double 0.79564329183904747
	.quad	0x3feae304786993ff              # double 0.84021209257173257
	.quad	0x3fb45c118b60f720              # double 0.079529854324360105
	.quad	0x3fb0da2fd54d24b8              # double 0.065829267097018085
	.quad	0x3fe0752d3490324b              # double 0.51430378214133421
	.quad	0x3fd56b15c3b5bfac              # double 0.33466095077801117
	.quad	0x3fd0437a7714236e              # double 0.25411855343604983
	.quad	0x3fdce176a72c3d88              # double 0.45126119924039942
	.quad	0x3feab633c083711d              # double 0.83474147415430233
	.quad	0x3fd2d3d0a139959c              # double 0.29417815918562851
	.quad	0x3fd3813ad7870ca8              # double 0.30476256415949843
	.quad	0x3fc6759130072f68              # double 0.17546286435242142
	.quad	0x3fe4b5cca734a0e9              # double 0.6471923127874365
	.quad	0x3fc36a41f0a6dc0c              # double 0.15168022394729552
	.quad	0x3fe57e4823f4d701              # double 0.67166525862441528
	.quad	0x3fc98ae15a1e1360              # double 0.19955078983562213
	.quad	0x3fdd5bbbad97e430              # double 0.45872394516442494
	.quad	0x3fd9a3e41e474162              # double 0.40062811810368804
	.quad	0x3fc09bede190ad54              # double 0.12975858224795422
	.quad	0x3fd3c2f35b34f0ec              # double 0.30877384097017457
	.quad	0x3fe996b864614e05              # double 0.79964847188460964
	.quad	0x3feb666ff8422b84              # double 0.85625456321700754
	.quad	0x3fdd12986d8f1be2              # double 0.45425997447131128
	.quad	0x3fe87697de99c3be              # double 0.76447671391189664
	.quad	0x3f852dea21d3b500              # double 0.010341481358830951
	.quad	0x3fe2f322f39867fa              # double 0.59217975213255092
	.quad	0x3fefda5fc17d8179              # double 0.99540698805871763
	.quad	0x3f711133aff63a80              # double 0.0041667956387657634
	.quad	0x3fb3a15990126370              # double 0.076680753396784373
	.quad	0x3fe7289923d39f7a              # double 0.72370583531754495
	.quad	0x3feaa09e49f64fd2              # double 0.83210672803624619
	.quad	0x3fae222e668d31f0              # double 0.058854532259463244
	.quad	0x3fed30e1ca235da9              # double 0.91221703987223635
	.quad	0x3fea661aec586707              # double 0.82496400986858098
	.quad	0x3fc9251626765fd8              # double 0.1964442909054458
	.quad	0x3f8c2a14bc9a4e40              # double 0.013752138143252712
	.quad	0x3fecbc9e93d7b825              # double 0.89802483439939762
	.quad	0x3fa817cc2f8c3960              # double 0.047056561283272513
	.quad	0x3fbb485474af1828              # double 0.10657241677026319
	.quad	0x3fb7f3a82ee0b328              # double 0.093561660237082678
	.quad	0x3fe45c3574c808ea              # double 0.63625595864166695
	.quad	0x3fef1fee27571beb              # double 0.97264774020811495
	.quad	0x3fa60da559338a70              # double 0.043072859896501892
	.quad	0x3fce6af2839e3460              # double 0.2376387732187224
	.quad	0x3f89e1233a31b800              # double 0.012636447156378239
	.quad	0x3fabd4a9ff88ad80              # double 0.054356872981169424
	.quad	0x3fe5bb1a7a85ce1d              # double 0.67908977441988194
	.quad	0x3fd6417f44252d98              # double 0.34774762778098411
	.quad	0x3fd3328956048512              # double 0.29995950126802129
	.quad	0x3fe83362a4e66617              # double 0.7562726231291802
	.quad	0x3fe2b203410b4fb8              # double 0.58423006729071059
	.quad	0x3fe968df4ace7593              # double 0.79405178652420927
	.quad	0x3fc9593f34437040              # double 0.19803609897542351
	.quad	0x3fd7cc1e5a59e872              # double 0.37183340857848812
	.quad	0x3fc6a558c91f2f94              # double 0.17692098446275095
	.quad	0x3fa6ce23441643b0              # double 0.044541456281087632
	.quad	0x3fd833ffc575765c              # double 0.37817377360429361
	.quad	0x3fbbaa13337f62b8              # double 0.10806388861909511
	.quad	0x3fda55a1e95a6fe0              # double 0.41147659099965317
	.quad	0x3fe8c42ca2f0143d              # double 0.77394706558028015
	.quad	0x3fe9a1a70af23afb              # double 0.80098297250682948
	.quad	0x3fe7a7d8c63eeae3              # double 0.73923910827519668
	.quad	0x3fedc073ae46cdc5              # double 0.92974266088861468
	.quad	0x3fe49dbf5acf30e7              # double 0.64425628410529334
	.quad	0x3fd57c5b2f80a1e0              # double 0.33571509970582092
	.quad	0x3fe5bf49cd89f1a5              # double 0.67960062164597856
	.quad	0x3fd39a2b7077b564              # double 0.30628477080502692
	.quad	0x3fd1024836764b2e              # double 0.26576428717196421
	.quad	0x3fe6d741848a0c47              # double 0.713776358476374
	.quad	0x3fdd353e767a8bf0              # double 0.45637475557504015
	.quad	0x3f95a9ad683299e0              # double 0.021155080303879248
	.quad	0x3fd9bb49fd2bce70              # double 0.40205621455900253
	.quad	0x3fd7175df3381410              # double 0.360801208037004
	.quad	0x3fb4001a7fb1c688              # double 0.078126579451941791
	.quad	0x3fd42e65957370be              # double 0.3153318366510226
	.quad	0x3fc5345e6dfd0684              # double 0.16566067095304871
	.quad	0x3fe4f1a345c256fc              # double 0.65449679970581043
	.quad	0x3fec9bad8bd05d2f              # double 0.8940036516895925
	.quad	0x3fe536ca871efd49              # double 0.6629383696635297
	.quad	0x3feb4dcdba8ea769              # double 0.85324751316987346
	.quad	0x3fd8a137f55b1e14              # double 0.38484000168361487
	.quad	0x3fe504814ac9c875              # double 0.65679993254731406
	.quad	0x3fd4fb73546a665a              # double 0.3278473209735232
	.quad	0x3fc5469b13a93690              # double 0.16621721706399173
	.quad	0x3fd0d37467968b38              # double 0.26290617099782621
	.quad	0x3fb2923f8aa044d8              # double 0.072544070572138408
	.quad	0x3fef83dace310688              # double 0.98484554549959657
	.quad	0x3f7397a046376100              # double 0.00478327376500709
	.quad	0x3fed6cc820e446f5              # double 0.91952902244722046
	.quad	0x3fd23afcd0619830              # double 0.28485031461457577
	.quad	0x3fd223b4a08eba0e              # double 0.28342929534383721
	.quad	0x3fdc1ea98d1c7cfa              # double 0.43937147884749062
	.quad	0x3fea7d00a2ef0ad8              # double 0.82775909255027624
	.quad	0x3fe5a3ea5cdf0b95              # double 0.67625921381874099
	.quad	0x3feaf98982700a9d              # double 0.84296107746225213
	.quad	0x3fecafe353812a68              # double 0.89647070226176329
	.quad	0x3fe8bba5c57f2395              # double 0.77290619443475583
	.quad	0x3fe4e72adbabb130              # double 0.65321867851665694
	.quad	0x3fefc636d522b7f2              # double 0.99294606807757035
	.quad	0x3fe273d7c95b37bf              # double 0.57664098098188521
	.quad	0x3fb2eab1ec1a7828              # double 0.073893661634855889
	.quad	0x3fdbaf2e0851f7da              # double 0.43256712734716773
	.quad	0x3fd086bb871d92a2              # double 0.25822342104792473
	.quad	0x3fc364da7da26904              # double 0.15151530394070545
	.quad	0x3f7ecd6846b75600              # double 0.0075201104441098288
	.quad	0x3fdae4fec9cf3620              # double 0.42022676189376007
	.quad	0x3fecff488fdb2bdb              # double 0.90616252991582813
	.quad	0x3fc9641ebb8c9e48              # double 0.19836792142563042
	.quad	0x3f83ef5da2fa3d40              # double 0.0097338977205071453
	.quad	0x3fea18cea4e3ce85              # double 0.81552822308590633
	.quad	0x3fe73fa4264bb686              # double 0.72651870231284543
	.quad	0x3fe0923468a5baef              # double 0.51784725607816806
	.quad	0x3fe3839d5e277a0d              # double 0.60981624974721316
	.quad	0x3fe437bb6b7c649f              # double 0.63180323594419352
	.quad	0x3fb3ee74535f23a0              # double 0.077857275347140931
	.quad	0x3fcaf127df69c7f0              # double 0.21048448952529908
	.quad	0x3fdaa9def3c85c1c              # double 0.41661809737110089
	.quad	0x3fe5106e549fd070              # double 0.65825573471239629
	.quad	0x3fc089cb1f036bb0              # double 0.12920512213062585
	.quad	0x3fe1b57a202a1b16              # double 0.55340296060680561
	.quad	0x3fea8690acac0145              # double 0.82892640805224771
	.quad	0x3fb8d6293436fb68              # double 0.097017836807010149
	.quad	0x3fe22fff10c04d42              # double 0.56835892936434385
	.quad	0x3fb8f3e60771ba00              # double 0.097471596543734051
	.quad	0x3fdb060eda72be94              # double 0.42224475224336655
	.quad	0x3fbbfe05ce6ad360              # double 0.10934482850536886
	.quad	0x3fc0fafc046a8790              # double 0.13265943732863805
	.quad	0x3fddae920fb356fa              # double 0.46377994092232167
	.quad	0x3fb92401ab27f8a8              # double 0.098205665861288538
	.quad	0x3fea3a4590026a45              # double 0.81961324812738978
	.quad	0x3fc02708292b068c              # double 0.12619115839156725
	.quad	0x3fcf14d9fc5642b0              # double 0.24282383748188385
	.quad	0x3fd50e174c939d0c              # double 0.32898504713234966
	.quad	0x3feb58d77711356b              # double 0.85459492926899594
	.quad	0x3fee04250313cdfb              # double 0.93800592995688648
	.quad	0x3fe1e2db1d95f739              # double 0.55894237307049999
	.quad	0x3f848649103d3cc0              # double 0.010021754081803613
	.quad	0x3fcc0d36a5740674              # double 0.21915324286242177
	.quad	0x3fc883b862ef043c              # double 0.19151978331322705
	.quad	0x3fcd24c238ecf570              # double 0.22768428592273038
	.quad	0x3fea1cd1ef02b635              # double 0.81601807290798567
	.quad	0x3fefa20db0f36c42              # double 0.98853191910473748
	.quad	0x3fe9175559b25ba7              # double 0.78409831541909092
	.quad	0x3fe51d88875eca7d              # double 0.65985514106280585
	.quad	0x3fc5e89f01582970              # double 0.17116153302806536
	.quad	0x3fe2b1f35428d748              # double 0.58422247350129286
	.quad	0x3fdf230241969326              # double 0.48651176838966348
	.quad	0x3fe4d6e9375d86f0              # double 0.65123425305884375
	.quad	0x3fe184045ae4c5e4              # double 0.54736535790123897
	.quad	0x3feff9d273519862              # double 0.99924585841359836
	.quad	0x3fd45e6e3ea375b4              # double 0.31826358906786401
	.quad	0x3fc758dadb5c5f10              # double 0.18239913664796648
	.quad	0x3fd846b099bdb184              # double 0.37931456578987643
	.quad	0x3fcd711e16b4f564              # double 0.23001457318052154
	.quad	0x3fc70cb5d2ea9038              # double 0.18007538603444728
	.quad	0x3f9870f5cc758f20              # double 0.02386840877933516
	.quad	0x3fe96b1a0561df5a              # double 0.79432393122895495
	.quad	0x3fcd08cc26024dac              # double 0.22683097701938715
	.quad	0x3fddeaffe539c136              # double 0.46746823678315097
	.quad	0x3fc92b239614dd0c              # double 0.19662899807165279
	.quad	0x3fd2ed9784048eb2              # double 0.29575145618785392
	.quad	0x3fd5ffc87d745fc6              # double 0.3437367653982587
	.quad	0x3fc95018c1305dac              # double 0.19775685723355474
	.quad	0x3fba238ae5dc46c0              # double 0.10210483657672409
	.quad	0x3fd1cdacb3332196              # double 0.27817838191961053
	.quad	0x3fe9bbe91cc1e9a6              # double 0.80418830506032601
	.quad	0x3fd119b6c58fee62              # double 0.26719445508181228
	.quad	0x3fb645d73541b1e0              # double 0.087003183843712417
	.quad	0x3fa16102ca186990              # double 0.033943259401172488
	.quad	0x3fd7c59fd9fe91a2              # double 0.37143703735844202
	.quad	0x3fcebf9920d3950c              # double 0.24022211172920327
	.quad	0x3fee9236be4b2cb3              # double 0.95534836928108857
	.quad	0x3fe50d9274899f28              # double 0.65790674935576465
	.quad	0x3fed04d3bcc81e29              # double 0.90683924552371764
	.quad	0x3fedbc3a61e0eb18              # double 0.92922705761825153
	.quad	0x3fd2ca23f693bbf0              # double 0.29358767585557555
	.quad	0x3fec05d25b5d6171              # double 0.87571065754586475
	.quad	0x3fe6f9e8aa65458c              # double 0.71800645141972685
	.quad	0x3fd510a031d61272              # double 0.32913975588625199
	.quad	0x3fee3ae72795bab6              # double 0.94469030124113007
	.quad	0x3fe87a18c8c83189              # double 0.76490439620242612
	.quad	0x3fd694adf64ae55a              # double 0.35282467891700764
	.quad	0x3fa12ec119bc2000              # double 0.033559831992590716
	.quad	0x3fd4477daa6ee500              # double 0.31686345714440733
	.quad	0x3fe9756f630597a3              # double 0.79558533992961988
	.quad	0x3fcdd09ab67c2c60              # double 0.2329285994568151
	.quad	0x3fbf12c9229269e8              # double 0.12138039678612922
	.quad	0x3fea7b8737cbc99a              # double 0.82757912538208989
	.quad	0x3fef9c97be00c84b              # double 0.98786532506915969
	.quad	0x3fe97dc575c067cf              # double 0.79660294531208276
	.quad	0x3fb82d16cc6069d8              # double 0.094438004395136388
	.quad	0x3fedfe72084dc337              # double 0.93731023427799343
	.quad	0x3fdcfcfbcc792820              # double 0.45294089286892536
	.quad	0x3feca7296e2b917f              # double 0.89540549771895417
	.quad	0x3fcce3c2746609e0              # double 0.22570067103886426
	.quad	0x3f5543f821aca000              # double 0.0012979434165547588
	.quad	0x3fe0c5f0459f1b12              # double 0.52416242216063069
	.quad	0x3fe51e2d2ded46b2              # double 0.65993365259256209
	.quad	0x3fe78c63b32aedef              # double 0.73588738435449652
	.quad	0x3fb7b21e882d9a50              # double 0.092561634298911288
	.quad	0x3fa0b74636a2fa30              # double 0.03264827172232676
	.quad	0x3fd6dd9bfdb4d302              # double 0.35727596069345691
	.quad	0x3fe09fff8974b2d7              # double 0.51953102919432126
	.quad	0x3fe530df33e2c071              # double 0.66221580633101784
	.quad	0x3febb7a845f2e031              # double 0.86616910611974707
	.quad	0x3fed10b2dbb9fa4a              # double 0.90828841128661364
	.quad	0x3fe8d03b910ab9cd              # double 0.77541902855392097
	.quad	0x3fe34f3f2446858d              # double 0.60342366299680494
	.quad	0x3fefd4e37957b916              # double 0.99473737430324394
	.quad	0x3fe9a7fdfc5e80e6              # double 0.80175685206270653
	.quad	0x3fdc6c48641d0e66              # double 0.44410905625065877
	.quad	0x3fc155061128ad18              # double 0.13540721738659367
	.quad	0x3fcbb7fa9265819c              # double 0.2165520872904495
	.quad	0x3fc89b380793202c              # double 0.19223690385683889
	.quad	0x3fe92d8b65ab23ff              # double 0.78680963379986213
	.quad	0x3fca2115946b84f8              # double 0.20413465258665275
	.quad	0x3fb766934a57cc90              # double 0.091408925676477403
	.quad	0x3fd56aed46a3dbb8              # double 0.33465129755444023
	.quad	0x3fe31cb2af90f67a              # double 0.59725317278180445
	.quad	0x3fc43fccefd8620c              # double 0.1581970378035894
	.quad	0x3fed4c7d613a80ce              # double 0.91558712949702126
	.quad	0x3fe8bdffd65009ff              # double 0.77319328172626445
	.quad	0x3fe1bb13cd8eccda              # double 0.55408659122476966
	.quad	0x3fb1756a37867e08              # double 0.068197859340664135
	.quad	0x3fd6bcca5c287872              # double 0.35527285575688616
	.quad	0x3fe4aae13b943863              # double 0.64585935246010384
	.quad	0x3fe1496a8c54500b              # double 0.54021193893504582
	.quad	0x3fdc594b9d8c8b32              # double 0.44295015702862195
	.quad	0x3fe0d7264f7550c5              # double 0.52626338500206116
	.quad	0x3fc7906c288d625c              # double 0.18409492473689937
	.quad	0x3fefef8e29cf1bc5              # double 0.99799259343932844
	.quad	0x3fde31fbf7d61f58              # double 0.47180079653525331
	.quad	0x3fca75292d5c8bb4              # double 0.20670046534459419
	.quad	0x3fe4d9ddb823e354              # double 0.65159498181228992
	.quad	0x3fe0ec7197141c29              # double 0.528862757754614
	.quad	0x3fc47a29eac38a1c              # double 0.15997814143254707
	.quad	0x3fe59e3b9221eb94              # double 0.67556551496032791
	.quad	0x3fe74f91a4947ff1              # double 0.72846300262972197
	.quad	0x3fea08a44f387040              # double 0.81355491135355607
	.quad	0x3fcd2f9a913c6c48              # double 0.22801525203326123
	.quad	0x3fb3a1a4c9615870              # double 0.076685237088300217
	.quad	0x3fd15d17ae2de7ca              # double 0.27130691537570029
	.quad	0x3fe48cef125047b2              # double 0.64220384194253755
	.quad	0x3fef513c45c3d619              # double 0.97866643548940424
	.quad	0x3fe10c7521dba946              # double 0.53277069676304545
	.quad	0x3fe910300f566c0f              # double 0.78322604175207455
	.quad	0x3fe2e9c1f9c95cc2              # double 0.59103487764777918
	.quad	0x3feea4504d98b6c3              # double 0.9575578227574727
	.quad	0x3fe6d57a524e3b84              # double 0.71355930400191925
	.quad	0x3fc61882edb2d3e8              # double 0.17262302976965249
	.quad	0x3fb71e082d33a240              # double 0.090302001033372825
	.quad	0x3fe587dfefde9664              # double 0.67283627366550691
	.quad	0x3fe64cdd388dadd3              # double 0.69688283010094165
	.quad	0x3fb91b1d6e736200              # double 0.098069991555696845
	.quad	0x3fc1c1f7c52f2464              # double 0.13873192909366872
	.quad	0x3fd905704abc981e              # double 0.39095694826608163
	.quad	0x3fd6b3e0190c3b0c              # double 0.35472872205802797
	.quad	0x3feda35e9d8bb01d              # double 0.92619257708202307
	.quad	0x3fd8acf8be7aef7e              # double 0.38555735208114317
	.quad	0x3f8175f298c42f40              # double 0.0085257485266293508
	.quad	0x3fe6f65561d9fd5e              # double 0.71757001029611067
	.quad	0x3fc2f3060889a7ec              # double 0.14804149071579731
	.quad	0x3feda168b720d637              # double 0.92595325247993443
	.quad	0x3feef4ef32b43660              # double 0.9673992147742858
	.quad	0x3fc876e97e9e69f8              # double 0.19112890894469081
	.quad	0x3fe21b02d1ed1a3c              # double 0.56579724312980018
	.quad	0x3fef2f87700f3d54              # double 0.97455188643099655
	.quad	0x3fe5bb9c691ebbd1              # double 0.67915173083553715
	.quad	0x3fd2a1b03b76ac1e              # double 0.29111867720593121
	.quad	0x3fee3315526944bb              # double 0.94373575302065349
	.quad	0x3fe9573471b96258              # double 0.79189512454747568
	.quad	0x3fc5cffad738683c              # double 0.1704095412140435
	.quad	0x3fea2caec843db8f              # double 0.81795443643828658
	.quad	0x3fe07693e9cd42ce              # double 0.51447482742704564
	.quad	0x3fe99a270c464c42              # double 0.80006744763739612
	.quad	0x3fc6cf62d2988220              # double 0.17820391924853229
	.quad	0x3fd074b1d16c319e              # double 0.25712247325352589
	.quad	0x3fc3ece1f573f5d8              # double 0.15566658482559492
	.quad	0x3fe231dc8da4c96b              # double 0.56858661331925242
	.quad	0x3fe0fc9c66022177              # double 0.53083629535198795
	.quad	0x3fecd908559d245d              # double 0.90149323197796216
	.quad	0x3feb9a91d5aef1f7              # double 0.86261836752924992
	.quad	0x3faa452b97f23f90              # double 0.051308977411394285
	.quad	0x3fef31cfd35b79cf              # double 0.97483054428794868
	.quad	0x3fe73fb92f639912              # double 0.72652873283075992
	.quad	0x3feb5190f61e52e4              # double 0.85370681829462258
	.quad	0x3fd8acd95093464c              # double 0.38554985874825287
	.quad	0x3fe449c75a344d7e              # double 0.63400619142559811
	.quad	0x3fee12e16c3c3a97              # double 0.9398047555894945
	.quad	0x3fa4a3e401f4d9a0              # double 0.0403128864658584
	.quad	0x3fdd74468407655c              # double 0.46022189038702321
	.quad	0x3fd352b5397818da              # double 0.30192309009761475
	.quad	0x3fd3f0e900e28be6              # double 0.31157898985310195
	.quad	0x3fc2563ed331000c              # double 0.14325700103836458
	.quad	0x3fd1e8a6ba8c66f6              # double 0.27982490747090993
	.quad	0x3fe9011d78fc0372              # double 0.78138612394114504
	.quad	0x3feafa9abc42043a              # double 0.84309136170498467
	.quad	0x3fe92de925ee569a              # double 0.78685433777237113
	.quad	0x3fdcb07f0c96e894              # double 0.44827247838441875
	.quad	0x3f91ce2aac6d8160              # double 0.017388026022105207
	.quad	0x3fd1eee23f90e502              # double 0.2802053089868225
	.quad	0x3fee634c71985263              # double 0.94962141214871243
	.quad	0x3fe4656e8806a943              # double 0.63738180701810909
	.quad	0x3fe853ac8cc8062d              # double 0.76021411415439888
	.quad	0x3fdefdd4abc21ebc              # double 0.48424259923238444
	.quad	0x3faf30e389617170              # double 0.060919867057893096
	.quad	0x3fe44920349d8a70              # double 0.63392648960537024
	.quad	0x3fd7310200960608              # double 0.36236620003919073
	.quad	0x3fed5b3223ab656c              # double 0.91738230673506171
	.quad	0x3fecd02143235e03              # double 0.90040648568077619
	.quad	0x3fe47dd7c46369f4              # double 0.64036167485329409
	.quad	0x3fddaf3aa45c789e              # double 0.46382013369464825
	.quad	0x3fe4749e7fe4dcbc              # double 0.63923573474212203
	.quad	0x3fed049b9feb3d17              # double 0.90681248888168653
	.quad	0x3fe7a3b47e35ff8d              # double 0.73873352671215431
	.quad	0x3fd85adfedd10130              # double 0.38054655288944428
	.quad	0x3fdc9c20d2f00fe6              # double 0.44702931022061276
	.quad	0x3feb69b99a54c733              # double 0.85665588515096258
	.quad	0x3fdd789f25b5ec56              # double 0.46048716242484511
	.quad	0x3fb54f58a18dc8d8              # double 0.083241977159363656
	.quad	0x3fcd6d89e8b9c958              # double 0.22990535605965579
	.quad	0x3fef41b83990a614              # double 0.976772415572841
	.quad	0x3fea7ebf20581ba4              # double 0.82797199551793143
	.quad	0x3fe9420b92ffa405              # double 0.78931215963996293
	.quad	0x3fe04c749940a6d0              # double 0.50933294231546178
	.quad	0x3fec635915449204              # double 0.88712743905904334
	.quad	0x3fd96964da688222              # double 0.39705773667268052
	.quad	0x3fe901c8a41c5db7              # double 0.78146774342433545
	.quad	0x3fcc5edfb38df9c4              # double 0.22164531962694245
	.quad	0x3fe0c0138762bfe6              # double 0.52344681208159893
	.quad	0x3fc561294496f84c              # double 0.16702762459857678
	.quad	0x3fe3e7725f601635              # double 0.62200277927394743
	.quad	0x3fe585586fc4b5ab              # double 0.67252752141728445
	.quad	0x3fee1e3d253ff7d5              # double 0.94119126582495005
	.quad	0x3fe2d2b12a6715f9              # double 0.58821924478314636
	.quad	0x3fdfe77edffee104              # double 0.49850437044689522
	.quad	0x3fd16d2f4711b91e              # double 0.27228910389284688
	.quad	0x3fe8b0b7b2b677a5              # double 0.77157196907841252
	.quad	0x3fec60d04a2a6f5c              # double 0.88681807027340253
	.quad	0x3fd1d7285e10db04              # double 0.27875718294255614
	.quad	0x3fe53d7a80d98325              # double 0.66375470319699004
	.quad	0x3fe6c5ff7b6d180c              # double 0.71166967493695799
	.quad	0x3fe08b54e8ca1124              # double 0.51700826136269429
	.quad	0x3fe9ef7c3700efa2              # double 0.81048403494741117
	.quad	0x3fe78eefc0ed3b1e              # double 0.73619830780976137
	.quad	0x3fe53ee0bfa1e900              # double 0.66392552784171244
	.quad	0x3feb1b104f127ef5              # double 0.84705367511557361
	.quad	0x3fd88b2981a02b56              # double 0.38349378260379774
	.quad	0x3fd6aaf99b5c7828              # double 0.35418548748009693
	.quad	0x3fd812b7c267d88e              # double 0.37614244446684431
	.quad	0x3fe5ef4d99ae072f              # double 0.68546180739961027
	.quad	0x3fd2374b61b84df2              # double 0.28462490599596812
	.quad	0x3fec8bde0782ef94              # double 0.89207364527782084
	.quad	0x3fca3a8d3b2190d8              # double 0.20491185557614844
	.quad	0x3fdf643af8b3059e              # double 0.49049257552186443
	.quad	0x3fb0d37400ead7e8              # double 0.065726518844570259
	.quad	0x3fe269a75cd55dac              # double 0.57539718753371494
	.quad	0x3fcd9f5868391dbc              # double 0.23142533387202302
	.quad	0x3fe3b79f2e44844f              # double 0.61616477047585672
	.quad	0x3fc63704c9a71df4              # double 0.17355403753593601
	.quad	0x3fba777b095493d0              # double 0.10338562944214336
	.quad	0x3fa5f60c371c2bb0              # double 0.042892820098209383
	.quad	0x3fb1bbc23c59f4f8              # double 0.069271220907427877
	.quad	0x3fc697bdef17ce98              # double 0.17650579618895246
	.quad	0x3fc4836448f88ecc              # double 0.16025975764306677
	.quad	0x3fdf23b825284504              # double 0.48655513409273987
	.quad	0x3fee95f2517ff826              # double 0.95580402296014166
	.quad	0x3fee9a152eec154f              # double 0.95630892910473075
	.quad	0x3fc3cbed81265830              # double 0.15466088110105281
	.quad	0x3fe34e268df181ad              # double 0.60328986857716915
	.quad	0x3fd728d16479f212              # double 0.36186632930892515
	.quad	0x3fe715f60a7bb326              # double 0.72143079802990395
	.quad	0x3fb11030edc2d590              # double 0.066653307006012463
	.quad	0x3fce7111069fda30              # double 0.23782551597078472
	.quad	0x3fe966f36fd54d61              # double 0.79381725161003314
	.quad	0x3fec6480cf391d57              # double 0.88726845238935936
	.quad	0x3fd2af151c4cb182              # double 0.29193618548995215
	.quad	0x3fda95f96fe3e2de              # double 0.41540370871329724
	.quad	0x3fedff8f04e1ec04              # double 0.93744612649550207
	.quad	0x3fea4de772810e37              # double 0.82200977672659448
	.quad	0x3fcc08558ff39488              # double 0.2190043404472457
	.quad	0x3fe3ae273d0ba3d9              # double 0.61500894473021639
	.quad	0x3fea62b5fa4f90f4              # double 0.82454966439084254
	.quad	0x3fedd196323dd708              # double 0.9318343144684329
	.quad	0x3feca1d197c82d00              # double 0.89475326199445249
	.quad	0x3fe2c325fbc0469c              # double 0.58632182283527667
	.quad	0x3fb442e5f8ff1cb0              # double 0.079145787515801258
	.quad	0x3fc74565a6873dc4              # double 0.18180533057464576
	.quad	0x3fcf1db9231f1114              # double 0.24309457983884697
	.quad	0x3fed5e898f063bb4              # double 0.91779020246928277
	.quad	0x3fc1f0e4e6038ab0              # double 0.14016400557655606
	.quad	0x3fe6862c9962c7a0              # double 0.7038786884133863
	.quad	0x3fd07dd21559a0c4              # double 0.25767948231670013
	.quad	0x3fcea20fe7f20c44              # double 0.23932074380363322
	.quad	0x3fb45f879a7586e0              # double 0.079582667550791353
	.quad	0x3feb4935c3e48b30              # double 0.85268677006056315
	.quad	0x3fe5c39b769a4fa0              # double 0.68012784161190964
	.quad	0x3fe09fc6fcc4738c              # double 0.51950406426077356
	.quad	0x3fe516de1dcb4745              # double 0.65904146021987542
	.quad	0x3fdb0825a6e38eb6              # double 0.42237225816482338
	.quad	0x3fec39ac3c6d65b3              # double 0.88204013635838974
	.quad	0x3feae90f61ae3ac4              # double 0.84094971731413936
	.quad	0x3feee88b04ae2eab              # double 0.96588660158291383
	.quad	0x3fd487c655f2aa44              # double 0.32078703301764144
	.quad	0x3fb2cade96ed6750              # double 0.073408042762278969
	.quad	0x3fe586a8444c7b5a              # double 0.67268765773392691
	.quad	0x3fe4ee5e40ce9a72              # double 0.65409767778039751
	.quad	0x3fd8c0a429360d40              # double 0.38675788902783736
	.quad	0x3fec2c1477695300              # double 0.88038085291427137
	.quad	0x3fd5c5b75ba98528              # double 0.34019264174829056
	.quad	0x3fcfee699927a3a0              # double 0.249463271887433
	.quad	0x3fb3c05891091d98              # double 0.077153716477474155
	.quad	0x3fe1e8f41f2886b2              # double 0.55968671880346776
	.quad	0x3fe728e6ea57c85e              # double 0.72374292154405473
	.quad	0x3faed70ab4453940              # double 0.060234388833679819
	.quad	0x3fec88a07b086b2b              # double 0.89167808561191941
	.quad	0x3fa4aa06d4b17870              # double 0.040359700644999275
	.quad	0x3feb9847b828ff15              # double 0.86233888596322805
	.quad	0x3fea2266a8383fa3              # double 0.81669934134878408
	.quad	0x3fb031d526f0ed38              # double 0.063260385520085616
	.quad	0x3fc0b20f6aded840              # double 0.13043396681104191
	.quad	0x3fe83a90fb31913a              # double 0.75714921056036322
	.quad	0x3fea9afed8aea387              # double 0.83142034836520018
	.quad	0x3fe147eba1fd918f              # double 0.54002935065050106
	.quad	0x3feb61f1a18342ba              # double 0.85570603890854291
	.quad	0x3feb788f4c3cd0f4              # double 0.85846676721715065
	.quad	0x3fd828c91487d134              # double 0.377489347504951
	.quad	0x3fde8dee36088506              # double 0.47741275097548941
	.quad	0x3fe1ad8a34243c73              # double 0.55243406471153234
	.quad	0x3fe85d4859ad0dc9              # double 0.76138703837244137
	.quad	0x3fe766a762d29f0c              # double 0.73128098775211603
	.quad	0x3fbd003dc35204f8              # double 0.11328493135990303
	.quad	0x3fe7da879487b80a              # double 0.74542597780032449
	.quad	0x3fe3d164fe5dd4de              # double 0.61931085282290232
	.quad	0x3feae6e099045b1f              # double 0.84068326841483898
	.quad	0x3fe185d23c8ad323              # double 0.54758560013451463
	.quad	0x3fe2f988072bd715              # double 0.59296037102351085
	.quad	0x3fd4453f695395f8              # double 0.31672654424468716
	.quad	0x3f965112419c27c0              # double 0.021793637518420672
	.quad	0x3fe7d29fd3554f81              # double 0.74446097637199682
	.quad	0x3fdaef0754ae75ba              # double 0.42083915013958129
	.quad	0x3fdaecdbf180cd02              # double 0.42070673546113835
	.quad	0x3fd590d949270d3a              # double 0.33696586746028212
	.quad	0x3fd7670d314af570              # double 0.36566476644278278
	.quad	0x3fe1451c4c0aeace              # double 0.53968634464339416
	.quad	0x3feefbf2f2a2f6f5              # double 0.96825549497563534
	.quad	0x3fea4d8cb42a470f              # double 0.82196650684838513
	.quad	0x3febe4ebc23851e8              # double 0.87169444974511823
	.quad	0x3fe83db901a70dbb              # double 0.75753450701488789
	.quad	0x3fe6da7ad1a56f73              # double 0.71416989275483755
	.quad	0x3f8cbeb82961ab00              # double 0.01403564335142482
	.quad	0x3fe9bab3c6f65a67              # double 0.80404080257251287
	.quad	0x3fe9574c8cc28204              # double 0.79190661899707537
	.quad	0x3fe0abc9d9aab982              # double 0.52097027314248145
	.quad	0x3fcfbe2fdd684214              # double 0.24799154578114779
	.quad	0x3fe2997325b40739              # double 0.58123166431344153
	.quad	0x3fe94c7a40d49dc7              # double 0.79058563863957765
	.quad	0x3fe0868291ebdee0              # double 0.51641968250529757
	.quad	0x3fe4df192e77c931              # double 0.6522336871696891
	.quad	0x3fd50383cb3f4fe0              # double 0.32833952759142271
	.quad	0x3feb9a16aada9ca6              # double 0.86255963678276681
	.quad	0x3fc8ee1ad42decfc              # double 0.19476638183900963
	.quad	0x3fe3155c0303afe7              # double 0.59635735119581745
	.quad	0x3fe3247b51284451              # double 0.59820333338769605
	.quad	0x3fed084fbd8b5bbb              # double 0.9072645856893965
	.quad	0x3fda36fc87483a76              # double 0.40960610591074642
	.quad	0x3fd25fe6c91029e8              # double 0.28710336337158404
	.quad	0x3fe2c5af2420f6fb              # double 0.58663136536026117
	.quad	0x3fb1588b75038e90              # double 0.067757335727544055
	.quad	0x3fcdae60b45eb17c              # double 0.2318840866768247
	.quad	0x3fe09b0435bda4f3              # double 0.51892290588616985
	.quad	0x3fd7ebbc7d8e4748              # double 0.37376320134454888
	.quad	0x3f828ee09d0d9b80              # double 0.0090615795067614524
	.quad	0x3fe94850ca53cb6f              # double 0.79007758633666281
	.quad	0x3fdaa1a87a72af62              # double 0.41611682851611509
	.quad	0x3febe580b3721797              # double 0.87176547096236134
	.quad	0x3fe347013cd0de16              # double 0.6024175823030784
	.quad	0x3fd4ea249866550a              # double 0.32679095156466131
	.quad	0x3fecfa1a509b94db              # double 0.90553012603472938
	.quad	0x3fee501b799c4149              # double 0.94727872612023944
	.quad	0x3fc21192716b4880              # double 0.14116125619927189
	.quad	0x3fe9e0c27c0b9821              # double 0.80868648746104921
	.quad	0x3fe67888ffedbf73              # double 0.70221376405787195
	.quad	0x3fc465f77d858858              # double 0.15936177853569933
	.quad	0x3fe19130fa0ef914              # double 0.54897354926632369
	.quad	0x3feb8541f47c70af              # double 0.86001680136862102
	.quad	0x3fd0fa3a86047e12              # double 0.26527274215365637
	.quad	0x3fe517f8fdb6cb5e              # double 0.65917634538196146
	.quad	0x3fc3e688321308b4              # double 0.15547277874981591
	.quad	0x3fedd4d1d0de3e07              # double 0.93222895426328101
	.quad	0x3fe1cbe539b9905b              # double 0.55613957666765701
	.quad	0x3fcf68701151110c              # double 0.24537468762913084
	.quad	0x3fe482c51cd9d74d              # double 0.64096313128423221
	.quad	0x3fe1692ff0dba842              # double 0.54409024279198825
	.quad	0x3fb38d83a9a482a8              # double 0.076378086964278169
	.quad	0x3fe22f7cdf7ca9c2              # double 0.56829684877202902
	.quad	0x3fd8117b378f6dd4              # double 0.37606697488601282
	.quad	0x3fce6412e6249f68              # double 0.23742901074842426
	.quad	0x3fd9213f19f3d532              # double 0.3926542046968563
	.quad	0x3fcbbaa37e261a88              # double 0.21663325938807909
	.quad	0x3fb249d1feded418              # double 0.071438908313965377
	.quad	0x3fe6ce2c024f18c2              # double 0.71266746951075555
	.quad	0x3fb3a1b35149a728              # double 0.076686103196746402
	.quad	0x3fede0b961a34149              # double 0.93368214673868366
	.quad	0x3fe2596ab673f77d              # double 0.57341514239645586
	.quad	0x3f956da7720e2a00              # double 0.020926109634766377
	.quad	0x3fdb13cbdaa00efc              # double 0.42308327055091843
	.quad	0x3feb4bcd63453f69              # double 0.85300320996064471
	.quad	0x3fd2ef4bc129a228              # double 0.29585546363390103
	.quad	0x3fdbcd3f342a94ec              # double 0.4344022759854187
	.quad	0x3fef0004fb8fd56d              # double 0.96875237591909313
	.quad	0x3fca3623c96624e0              # double 0.20477721532760196
	.quad	0x3fe80744d24608b1              # double 0.75088730877930321
	.quad	0x3fb4144229093f90              # double 0.078434119242272837
	.quad	0x3fd4d274febc85dc              # double 0.32534527660945201
	.quad	0x3fe543ae3d5811bb              # double 0.66451179486516965
	.quad	0x3fe79adaf13a0016              # double 0.73765322794497723
	.quad	0x3fe6188b772ea5dc              # double 0.69049618985917105
	.quad	0x3faa9f083415ff80              # double 0.05199456821264814
	.quad	0x3fd6057393311dc2              # double 0.34408273100094899
	.quad	0x3fefcf69f0fb76c4              # double 0.99406907145358802
	.quad	0x3fed08d60b4916f0              # double 0.90732862667274894
	.quad	0x3fe0dcc03fb5a407              # double 0.52694714015262967
	.quad	0x3fca0737233f1340              # double 0.20334519597067846
	.quad	0x3fe4793f65856ee9              # double 0.63980073765148149
	.quad	0x3fe35c26c0d4905d              # double 0.60499894773648644
	.quad	0x3fc1d530dc730e70              # double 0.13931856884129301
	.quad	0x3fd8a9490bfe1818              # double 0.38533235713146174
	.quad	0x3fc14d7420d34f58              # double 0.13517619707874462
	.quad	0x3fe2ed146c2e657b              # double 0.59144040230891848
	.quad	0x3fd80722dce77328              # double 0.37543555805841544
	.quad	0x3fe7d8aed7a0911f              # double 0.74520055880251224
	.quad	0x3febd3a68c284182              # double 0.86958625196898276
	.quad	0x3fa54f15d729c680              # double 0.041618998065030333
	.quad	0x3fbaa20ab18627c0              # double 0.10403506120761019
	.quad	0x3fe5d3f82b8e3f16              # double 0.68212517268145478
	.quad	0x3fdedffca157118e              # double 0.48242107158537173
	.quad	0x3fe6096117260c2f              # double 0.6886449291345168
	.quad	0x3fec7786280eb432              # double 0.88959033797949005
	.quad	0x3fefceaea18d5030              # double 0.99397975495458546
	.quad	0x3fe2b87fb626eea6              # double 0.58502183510377814
	.quad	0x3fe269a6748e9562              # double 0.57539675488503073
	.quad	0x3fdc3c72446066a4              # double 0.44118935277365723
	.quad	0x3fbf211ca9d26e08              # double 0.12159899850887979
	.quad	0x3fd2196dce2c5aa8              # double 0.28280205854518181
	.quad	0x3fe8c95ce2d12116              # double 0.77458042431047391
	.quad	0x3fb27806be31e980              # double 0.072143956598585746
	.quad	0x3fd92f22e1c07d62              # double 0.39350196882329247
	.quad	0x3fd7414dc5c00d20              # double 0.36336082755606647
	.quad	0x3fee0897688afb7a              # double 0.93854875963721374
	.quad	0x3fed0b0caa875046              # double 0.90759881311760959
	.quad	0x3fea3e4506e7891e              # double 0.82010127399943022
	.quad	0x3fd643122702cc98              # double 0.34784368333493765
	.quad	0x3feb652a7721afe7              # double 0.85609935062302334
	.quad	0x3fcc6288fd4b08bc              # double 0.22175705306842086
	.quad	0x3fb64974db0bc6e0              # double 0.087058356740978393
	.quad	0x3fc1e0ba97bb4f4c              # double 0.13967068108342529
	.quad	0x3fe3ce432c79334f              # double 0.61892851530283532
	.quad	0x3fc28d12b22b1908              # double 0.14493020724894046
	.quad	0x3fd157f7959ed75c              # double 0.2709940873277128
	.quad	0x3fb4050775784038              # double 0.07820173852837875
	.quad	0x3fed323ad5db426c              # double 0.9123815705189151
	.quad	0x3fe20a5c2a0bf966              # double 0.56376465046177482
	.quad	0x3fd1e1465b8a0ee6              # double 0.27937468470939419
	.quad	0x3fe6a147d1861951              # double 0.70718756601926647
	.quad	0x3fe44cdaabb60b1e              # double 0.63438161408734905
	.quad	0x3fe8ef95176ff1b4              # double 0.7792458970794116
	.quad	0x3fe0dc7b94801158              # double 0.52691439632375658
	.quad	0x3fd96a73723c2d1c              # double 0.39712225108878996
	.quad	0x3fd377da794c8934              # double 0.30419027181246183
	.quad	0x3fd5fce1fea5c376              # double 0.34355974071427597
	.quad	0x3feeaa86de69a9b3              # double 0.95831626358022103
	.quad	0x3fb99035e784ade8              # double 0.099856728575722919
	.quad	0x3fed09f903b6fcfb              # double 0.90746737218424245
	.quad	0x3fc1d1d3916da83c              # double 0.1392158947085721
	.quad	0x3feea62d478117c0              # double 0.95778526273419828
	.quad	0x3fe528463c60eb38              # double 0.66116630356496042
	.quad	0x3fe36c622eff346f              # double 0.60698041133004021
	.quad	0x3fd6660cfbca1cf6              # double 0.34997868145769873
	.quad	0x3fece8af5ed32763              # double 0.90340393562767607
	.quad	0x3fac81ce724ab310              # double 0.055677844478259186
	.quad	0x3fd9e631097f3fae              # double 0.4046747772927074
	.quad	0x3fe8d793b478e11b              # double 0.77631554840539552
	.quad	0x3fd817713685422a              # double 0.37643080066939894
	.quad	0x3fedca3ddf85afb2              # double 0.93093770653421459
	.quad	0x3fe7a9dc3297c347              # double 0.73948488122378186
	.quad	0x3fa65a4b6af34e70              # double 0.04365764313265863
	.quad	0x3fef7d4319a60e99              # double 0.98404078492645219
	.quad	0x3fdf39c94c65bf8e              # double 0.4879019971913231
	.quad	0x3fea035054180d29              # double 0.8129045145473458
	.quad	0x3fcd48a99481bc44              # double 0.22877998114879194
	.quad	0x3fea8444b60ca50c              # double 0.82864604527017737
	.quad	0x3feacc519dda879f              # double 0.83744126158511623
	.quad	0x3fdae4899e45cd2e              # double 0.42019882637324002
	.quad	0x3fcd66a55bb38374              # double 0.22969500520323616
	.quad	0x3fe4c82651e34059              # double 0.64943233483974006
	.quad	0x3fa9e9f1daaa38f0              # double 0.050612981741425034
	.quad	0x3fcea71e066bc8f0              # double 0.23947501481558886
	.quad	0x3fda6e560f709e72              # double 0.41298438556484662
	.quad	0x3feba652076cb80a              # double 0.86405278635152283
	.quad	0x3fa5c156b2873d80              # double 0.042490681927684015
	.quad	0x3fd3e4875131e756              # double 0.3108232777518557
	.quad	0x3fe0c9b4c6ff1e56              # double 0.5246223341609475
	.quad	0x3fe9453977dba586              # double 0.78970025453342951
	.quad	0x3fdbbe01d33dde4a              # double 0.43347211484021797
	.quad	0x3fe6e11ce390c466              # double 0.71497959562669844
	.quad	0x3fc399b53bcc19a8              # double 0.15312829417980578
	.quad	0x3fda2671c2744188              # double 0.40859645833645475
	.quad	0x3fdbf6132f648f4c              # double 0.43689422252849819
	.quad	0x3fd9e5ad9c3b080e              # double 0.40464344269651142
	.quad	0x3fd9b5886105c2f6              # double 0.40170487856725801
	.quad	0x3fe85a2d2b8699d1              # double 0.7610078668702106
	.quad	0x3fe3a47eab36d34c              # double 0.61382993164316124
	.quad	0x3fe7a1d44e15c9f9              # double 0.73850455523489622
	.quad	0x3fe16a0cc37d3f03              # double 0.54419553929798814
	.quad	0x3fdde3e6ed3c4146              # double 0.46703503768459986
	.quad	0x3f9fcaca862f9b60              # double 0.031047024192868533
	.quad	0x3f976ddb8215ac00              # double 0.02288001042817811
	.quad	0x3fec133ee083f34a              # double 0.87734931803388716
	.quad	0x3fec17d4e9c582d0              # double 0.8779091420984404
	.quad	0x3fecb1fb70b6f1dd              # double 0.89672634138656415
	.quad	0x3fe67ea541a846b6              # double 0.70295965980240882
	.quad	0x3fef61bf77575453              # double 0.9806821184998945
	.quad	0x3fc52c35b9fb9324              # double 0.16541167813479618
	.quad	0x3fd2581555dd27fe              # double 0.28662618050714161
	.quad	0x3fe1f2f4b836abfe              # double 0.56090770701609904
	.quad	0x3fe2bb9d97ae190c              # double 0.58540229439748392
	.quad	0x3fd15ab6aa23de4c              # double 0.27116171469922246
	.quad	0x3fd33c860d8a33fc              # double 0.3005690700745729
	.quad	0x3fd2c402519c5dc4              # double 0.29321344346814393
	.quad	0x3fe9cfaae00f7213              # double 0.80660003434928951
	.quad	0x3fadebca6aea1ec0              # double 0.058439565230455681
	.quad	0x3fe1066271a7eef5              # double 0.53202936361728226
	.quad	0x3fdb73a950baa1f6              # double 0.42893441089338979
	.quad	0x3fe0bbc7335112a0              # double 0.52292213461676695
	.quad	0x3fe0f367ce9ab028              # double 0.5297125849951998
	.quad	0x3fe94a3a8750d8cd              # double 0.79031111172550939
	.quad	0x3fd2723048a30190              # double 0.288219519552535
	.quad	0x3fa8086e3f6f2b30              # double 0.046939320796431594
	.quad	0x3fe27ceb077b775d              # double 0.57774878941902907
	.quad	0x3f9a9cba703e61e0              # double 0.025988495922861676
	.quad	0x3fe13ba91d37bc8e              # double 0.53853278833948237
	.quad	0x3fdbc4c398649f1c              # double 0.43388452417501511
	.quad	0x3f9787c052d7f920              # double 0.022978787475943396
	.quad	0x3fbc821eab4b6638              # double 0.11136047060008358
	.quad	0x3fe5830ea01603a5              # double 0.67224818484111337
	.quad	0x3fdf1a88440fb578              # double 0.48599440237634139
	.quad	0x3fe4d890c21332dd              # double 0.65143621354362902
	.quad	0x3fd4ec7d409a7882              # double 0.32693415936399373
	.quad	0x3fbcfeee65158d70              # double 0.11326494186282843
	.quad	0x3fdf7d19cd19d44c              # double 0.49201054601082173
	.quad	0x3fe03a882ad6ef0d              # double 0.50714500777346105
	.quad	0x3fe70ad0370c55d3              # double 0.72006998778914022
	.quad	0x3fb4848a99c35390              # double 0.080147421397965823
	.quad	0x3fee583bbc037ccc              # double 0.94827067109499685
	.quad	0x3fef1e8ad03d3c6c              # double 0.97247830077857377
	.quad	0x3fcc286252270c44              # double 0.21998242389062928
	.quad	0x3fe6468e4cc5e30a              # double 0.69611277575231267
	.quad	0x3fd5ee5c99485d30              # double 0.34267344445239001
	.quad	0x3fcb5c3b1c43a2e0              # double 0.21375216369712913
	.quad	0x3fd09c19c677929a              # double 0.25952762967635012
	.quad	0x3fe5c81815b5c5e5              # double 0.68067554702991784
	.quad	0x3fe887dcc50f2ac2              # double 0.7665847634137537
	.quad	0x3fe0ce4cd6f30167              # double 0.52518312437318293
	.quad	0x3fc0935934f520c4              # double 0.12949671827141718
	.quad	0x3fabd57c3ae406a0              # double 0.054363138378915155
	.quad	0x3fd0258b7112506c              # double 0.25229154626982253
	.quad	0x3fe080768c7badbd              # double 0.51568152845486959
	.quad	0x3fe91be1640db43f              # double 0.78465337316232098
	.quad	0x3fe49636180eeb1d              # double 0.64333634089357228
	.quad	0x3fe6395c2f26c0a1              # double 0.69450196465733793
	.quad	0x3fd7f9658aa4b614              # double 0.37459696330447056
	.quad	0x3fd0677aa436b202              # double 0.25631586109628313
	.quad	0x3fe63d9e740d83c6              # double 0.69502184549866608
	.quad	0x3fb8c9462ebf49a0              # double 0.096821199810881442
	.quad	0x3fe93d0b4138168d              # double 0.78870165575126949
	.quad	0x3fee03095841107d              # double 0.93787066685810283
	.quad	0x3feb1b59e920212e              # double 0.84708877117467352
	.quad	0x3fc63a569befd598              # double 0.17365534414390704
	.quad	0x3fe9c1c3b77dad6c              # double 0.80490289533683556
	.quad	0x3fe6135a16f59258              # double 0.68986229404670052
	.quad	0x3fc17bd2a0c4d738              # double 0.13659127092403778
	.quad	0x3fe2cda35961da7d              # double 0.58760230500668309
	.quad	0x3fd5d4ee8832d404              # double 0.34112132359160818
	.quad	0x3fe90acffe56bdc1              # double 0.78256988215974144
	.quad	0x3fbebfc06fe26c10              # double 0.12011339885286554
	.quad	0x3fe5a83389e490aa              # double 0.67678238804048374
	.quad	0x3fd387255c6665f6              # double 0.30512365363537641
	.quad	0x3fedeb69864d9cc6              # double 0.93498684149826583
	.quad	0x3feeda01da657e76              # double 0.96411221175726669
	.quad	0x3fd3d3fb31d2c054              # double 0.30981330743361934
	.quad	0x3fa67b2b7bef0230              # double 0.043908461454979508
	.quad	0x3fd302632098c9a2              # double 0.2970207041099916
	.quad	0x3fcd1b249f83a87c              # double 0.22739084042342828
	.quad	0x3fd5ce11fb791af6              # double 0.34070252950588953
	.quad	0x3fc06f43f82f38e8              # double 0.128395553764171
	.quad	0x3fc7ed6cbdec5aa0              # double 0.18693312905880521
	.quad	0x3fdd974f2243b3d8              # double 0.46236017557276687
	.quad	0x3fe936771b6865c1              # double 0.78789859154783681
	.quad	0x3fc3516dfc9182bc              # double 0.15092253525201282
	.quad	0x3fefb703f963c4eb              # double 0.99109076222353331
	.quad	0x3fc9f1550cf7f818              # double 0.20267737515672546
	.quad	0x3fedc8210899a5a9              # double 0.93067981414531176
	.quad	0x3fcbb84839dbcda4              # double 0.21656134438636088
	.quad	0x3fe3313e2437e4e8              # double 0.59976107667821754
	.quad	0x3fec4714f466456b              # double 0.88367698416020113
	.quad	0x3fc08f51078731b0              # double 0.12937367312987424
	.quad	0x3fe3aa640334f7cf              # double 0.6145496428141487
	.quad	0x3fe91db0e4443754              # double 0.78487438758177541
	.quad	0x3fb5350365ddcb90              # double 0.082840168351863363
	.quad	0x3fe20a325ff000b8              # double 0.56374472368044959
	.quad	0x3fe8c97a4f4299ad              # double 0.7745944545793485
	.quad	0x3fdb3855dea372ae              # double 0.42531344167745544
	.quad	0x3fd70c81cc131e14              # double 0.36013836793105836
	.quad	0x3feaa6242b659f3a              # double 0.83278091884583394
	.quad	0x3fc6ce65e0ed7e48              # double 0.17817376597212076
	.quad	0x3fec84b0a185f0e0              # double 0.89119750545026121
	.quad	0x3febeb9c591e4cc0              # double 0.87251107603005806
	.quad	0x3fa404e5738de040              # double 0.039099855762231517
	.quad	0x3fe341976cfe25e7              # double 0.60175677573823527
	.quad	0x3fe684a6ec0b7255              # double 0.70369287588580198
	.quad	0x3fe1f43380a5908e              # double 0.56105971456828896
	.quad	0x3febf9a27d63a9ee              # double 0.87422298898792206
	.quad	0x3fe3234f9cb52dba              # double 0.59806042296388928
	.quad	0x3fe70a2dc7bbd6af              # double 0.71999253283020959
	.quad	0x3fd5596008ea71b4              # double 0.33358002539332721
	.quad	0x3fe458019bda2326              # double 0.63574295463431407
	.quad	0x3fd256bf41127584              # double 0.28654462198922936
	.quad	0x3fd58318555e720c              # double 0.33612640702065799
	.quad	0x3fe928d02d2bc981              # double 0.78623207876653123
	.quad	0x3fe7bf73ca09f00a              # double 0.74212064228731944
	.quad	0x3fef1f45a5c96fe1              # double 0.9725673902535129
	.quad	0x3fced3d7a118e584              # double 0.24083991399838223
	.quad	0x3fe25dc0cad8a54c              # double 0.57394446962750001
	.quad	0x3fe8e14b11780338              # double 0.77750161563753917
	.quad	0x3fd76c659b18cb8a              # double 0.36599102159669228
	.quad	0x3fed7c0db7ad2e32              # double 0.92139325975717257
	.quad	0x3fee7a7ed1e78ffe              # double 0.9524530505846085
	.quad	0x3fd32ac4f4577cb0              # double 0.29948543416498818
	.quad	0x3fe0bdac05f22498              # double 0.52315331612875848
	.quad	0x3fde6cb07ac8c946              # double 0.47538387289673201
	.quad	0x3fc4b6356968b058              # double 0.16181056639595925
	.quad	0x3fe90fa9c581b329              # double 0.7831620080520213
	.quad	0x3fc2a2045620715c              # double 0.14556936459929204
	.quad	0x3fec416a3328c514              # double 0.88298521034281174
	.quad	0x3fefe17ac9cabc02              # double 0.99627437031256272
	.quad	0x3fe20debb7126cfa              # double 0.56419931179280458
	.quad	0x3fecd69057e56193              # double 0.90119187514487675
	.quad	0x3fe08f466cdf73ac              # double 0.51748963608007648
	.quad	0x3feb4884cc68a5aa              # double 0.8526023857459013
	.quad	0x3fb82bbe8bee22b0              # double 0.094417485392237265
	.quad	0x3fec544f9dd4c249              # double 0.88529187036881141
	.quad	0x3fd60b461b196334              # double 0.34443810125735586
	.quad	0x3fdf4b7954754b4e              # double 0.48898156402463122
	.quad	0x3feb9c3fcb8bc7ec              # double 0.86282338862497232
	.quad	0x3fdc4ead92c68470              # double 0.44230212529698232
	.quad	0x3fec64f90d44ab70              # double 0.88732578841641718
	.quad	0x3fd67756b2adca48              # double 0.35103385399921594
	.quad	0x3fd7ea1c45236dba              # double 0.37366396667286106
	.quad	0x3fc276d026520374              # double 0.14425088759528715
	.quad	0x3fed96e4c6586cee              # double 0.9246696351941901
	.quad	0x3fd86a1137cd3344              # double 0.38147383164760051
	.quad	0x3fe1408cef3cd970              # double 0.53912970281707651
	.quad	0x3fb76dc752232ce0              # double 0.091518838456227325
	.quad	0x3fc24f3d08443c78              # double 0.14304316428794883
	.quad	0x3febed5810b682d0              # double 0.87272265686268646
	.quad	0x3fe666ee49f716eb              # double 0.70006479688956114
	.quad	0x3fabd41ca24d05f0              # double 0.054352659999960085
	.quad	0x3fb0a6a9f099e240              # double 0.065043088188653009
	.quad	0x3f58c7882d3bd400              # double 0.0015124158716706138
	.quad	0x3fcfee218e066b60              # double 0.24945468363588486
	.quad	0x3fe120726e609b35              # double 0.53521081502990475
	.quad	0x3fee1a034d3cf091              # double 0.94067540250354587
	.quad	0x3fe1dc40c27b70ea              # double 0.55813634857943595
	.quad	0x3fedbbc3d5674308              # double 0.92917052917809517
	.quad	0x3fda24c6e46ddd5c              # double 0.40849468524489452
	.quad	0x3fd3a080641b3352              # double 0.30667123580933719
	.quad	0x3fd02cb55dd3f864              # double 0.25272878802196019
	.quad	0x3fd95e371c1ed8f6              # double 0.39637544389860524
	.quad	0x3fe0e2625d134f4b              # double 0.52763479403299962
	.quad	0x3fe68c446eb3fe45              # double 0.70462247487734742
	.quad	0x3fe02523dad40710              # double 0.50453369846238338
	.quad	0x3fd2637a8ea6bef6              # double 0.28732170038982419
	.quad	0x3fe9d683c974df07              # double 0.80743588778474951
	.quad	0x3fd51a3971d0cf04              # double 0.32972560992060118
	.quad	0x3fe10f9370b3a8a0              # double 0.5331513596732016
	.quad	0x3fda1a485cebbfa4              # double 0.40785416673952057
	.quad	0x3fb8f4fac631e460              # double 0.097488091838287882
	.quad	0x3fccbf5faccfaecc              # double 0.22459026277589655
	.quad	0x3feccb4302860dca              # double 0.89981222622776014
	.quad	0x3fe11f6168a194b5              # double 0.53508062778259691
	.quad	0x3fe40d981bc94205              # double 0.62665944506630977
	.quad	0x3fefc7736e90046c              # double 0.99309703439952334
	.quad	0x3fed2e17460d9eb3              # double 0.91187633211389707
	.quad	0x3fc87a488ddd1a94              # double 0.19123179366052467
	.quad	0x3fdd3dea13d738fa              # double 0.45690395295686381
	.quad	0x3fd16583e935ec9c              # double 0.27182100080944749
	.quad	0x3fd062a8ede5e816              # double 0.25602172119363453
	.quad	0x3fc3ac5eee86b7a0              # double 0.15369784018315347
	.quad	0x3fcce16ba9fc45dc              # double 0.2256292896277462
	.quad	0x3fe1f3a3f646bec2              # double 0.56099126911973252
	.quad	0x3fe50ed58630c0d5              # double 0.65806080063887384
	.quad	0x3fd7459547494674              # double 0.36362201654001258
	.quad	0x3fec9fc92d61ad12              # double 0.89450510848601739
	.quad	0x3fe07ee4de7012ef              # double 0.51548999256973882
	.quad	0x3fe0204b894db7a3              # double 0.50394226853471868
	.quad	0x3fe6f9e35b890edb              # double 0.7180039203453491
	.quad	0x3fd53e48ffb8b50c              # double 0.33192658398441277
	.quad	0x3fe4a06c77f776e0              # double 0.64458297186839886
	.quad	0x3fdfa810c0b37800              # double 0.49463290041410346
	.quad	0x3fec2f552accfc43              # double 0.8807779155685086
	.quad	0x3fd56c58697db094              # double 0.33473787595608795
	.quad	0x3fd66112a9b3366e              # double 0.34967485973616064
	.quad	0x3fe36cc107de99e9              # double 0.60702563797968623
	.quad	0x3fe90ee66f0cc1fa              # double 0.78306886376782292
	.quad	0x3fe6c9b56fccb89f              # double 0.71212264858128893
	.quad	0x3fb1e77b1ad5bd90              # double 0.069938367892737441
	.quad	0x3fe217b05df5fdaf              # double 0.56539171554316237
	.quad	0x3feb2e066e048893              # double 0.84936830032190114
	.quad	0x3f912978b9dd2860              # double 0.016759764045936598
	.quad	0x3fe14db9bc5fe0c0              # double 0.54073797981165939
	.quad	0x3fe14bd4963b7fa9              # double 0.54050664274472127
	.quad	0x3fbfde0e5b270288              # double 0.12448205685996971
	.quad	0x3fec9ddd5075bd2e              # double 0.89427056994273868
	.quad	0x3fca899c43b51868              # double 0.20732453638101167
	.quad	0x3fed13336f91b3fe              # double 0.90859386244630946
	.quad	0x3feebb844827e4c8              # double 0.96039022534309825
	.quad	0x3febc4533cb53a7d              # double 0.86771547181145048
	.quad	0x3fe70c7a2b236ab5              # double 0.72027309823473351
	.quad	0x3fe7b798fc8ff7ca              # double 0.74116181686962901
	.quad	0x3fa7599c3a1d0cd0              # double 0.045605547040872829
	.quad	0x3fcfc42b446390dc              # double 0.24817410315802746
	.quad	0x3fba1a62a1c0e768              # double 0.10196510743199172
	.quad	0x3fea95b0677003e6              # double 0.83077259256981217
	.quad	0x3fe708e57d80cb09              # double 0.71983599197696535
	.quad	0x3fdcbeed3c77137e              # double 0.44915324120329803
	.quad	0x3fe9262b445d5bec              # double 0.78590930321194951
	.quad	0x3fd3506af91e2fec              # double 0.30178331687852622
	.quad	0x3fe717663f1b1bac              # double 0.72160637212151846
	.quad	0x3fe509b0ac2e5afe              # double 0.65743287686458962
	.quad	0x3fe9b02aab17eec1              # double 0.80275472084709787
	.quad	0x3fdd310bf59d6de4              # double 0.45611857400737521
	.quad	0x3fd94f5ddfa3bb18              # double 0.39546915855218989
	.quad	0x3fecc09e25bf65ff              # double 0.89851291058147342
	.quad	0x3fd7db01344cc9a8              # double 0.37274198634545508
	.quad	0x3fe0c2bad4c5962c              # double 0.52377072865482921
	.quad	0x3fa6068a4f2a0460              # double 0.043018648303594587
	.quad	0x3fdd403a6e140256              # double 0.45704518079586387
	.quad	0x3fe73f576d2ca0b6              # double 0.72648211787329475
	.quad	0x3fefa5d4d3ac1401              # double 0.9889930853101988
	.quad	0x3fe3c93a6094465a              # double 0.61831396926045135
	.quad	0x3fd18c72a510f106              # double 0.2741972553228752
	.quad	0x3fe92c7854c96afc              # double 0.78667847213668506
	.quad	0x3fdcd3a433173a06              # double 0.45041756619767204
	.quad	0x3fa589ec6d1a1310              # double 0.042067898099992118
	.quad	0x3fea6e5faab6c060              # double 0.82597335188439657
	.quad	0x3feaae89175295ec              # double 0.83380560450740182
	.quad	0x3feb135eccf48d2c              # double 0.84611454038932754
	.quad	0x3fe3bca03d6d52fd              # double 0.61677562711210465
	.quad	0x3fc782e9f00220c0              # double 0.18368267268329497
	.quad	0x3fec25e5d19e9a44              # double 0.8796261877185505
	.quad	0x3fe06e9d1b9e0e86              # double 0.513502649250271
	.quad	0x3fdea5933d53d906              # double 0.47885590542809131
	.quad	0x3fee24478df33ae5              # double 0.94192865109093005
	.quad	0x3fd55de0a0356af2              # double 0.33385482449891335
	.quad	0x3fdbb48b2497782a              # double 0.43289450238615024
	.quad	0x3fe3444767a31ff1              # double 0.60208482972757171
	.quad	0x3fdb763353f3d1ce              # double 0.42908938597181823
	.quad	0x3fe0a89642e2b61c              # double 0.5205794626578526
	.quad	0x3fe31afdab02c83b              # double 0.59704478645858872
	.quad	0x3fe7b15e7c6603b7              # double 0.74040149971562286
	.quad	0x3fbf33b5fcc526e8              # double 0.12188279553552273
	.quad	0x3fa09788c5c89bf0              # double 0.032406114715108347
	.quad	0x3fc1ed5ac48771c4              # double 0.14005598636766881
	.quad	0x3fe02716cd4077a5              # double 0.50477161491629785
	.quad	0x3feac154e0a1845b              # double 0.83610004304149343
	.quad	0x3fda5e9dbf8e6682              # double 0.41202491480508041
	.quad	0x3fe4a3c519e81df0              # double 0.64499144611266779
	.quad	0x3fea98d5f5249ebe              # double 0.83115671042920503
	.quad	0x3fea2cce18f0f51c              # double 0.81796936866126968
	.quad	0x3fd6d89ff3b5b564              # double 0.35697172927651466
	.quad	0x3fe118779aa6b9bd              # double 0.53423671918226712
	.quad	0x3fcd3f4ee9fae71c              # double 0.22849451470192939
	.quad	0x3fdee1ab0473899a              # double 0.48252368387888966
	.quad	0x3fe2f4df6e253eee              # double 0.59239169609824471
	.quad	0x3febc3a35e524a96              # double 0.86763161108167952
	.quad	0x3fec8c70b9d6a0ef              # double 0.8921435956627003
	.quad	0x3fea014733915aa1              # double 0.81265602180322472
	.quad	0x3fe735295dcc546e              # double 0.7252394515986802
	.quad	0x3fdda1b7af1d4466              # double 0.46299545384414953
	.quad	0x3fef02d3ac406426              # double 0.9690950741088542
	.quad	0x3fdb2450f20c93fc              # double 0.42409156453714991
	.quad	0x3f95ae548e6e15e0              # double 0.021172829812277416
	.quad	0x3fec8a9f2f79092c              # double 0.89192160865812786
	.quad	0x3fe44f82e9b4776f              # double 0.63470597882745305
	.quad	0x3fb08e744ab92f68              # double 0.064673679583561516
	.quad	0x3fe7f4c35ec13e09              # double 0.7486283159905166
	.quad	0x3fed034da335f7e4              # double 0.90665323140251219
	.quad	0x3fd81939bd7ae564              # double 0.37653964523231864
	.quad	0x3fb095dd79f29230              # double 0.064786760589932824
	.quad	0x3fb7f02ba54f34a8              # double 0.093508460863818699
	.quad	0x3fe32cbaa8ea5a05              # double 0.59921010009094344
	.quad	0x3fd33232b8ed1932              # double 0.29993885096736783
	.quad	0x3fe80cd058b7bf4e              # double 0.75156419112861683
	.quad	0x3fcccc0ca8b56f5c              # double 0.22497709501009922
	.quad	0x3fe2f17fd2635fc2              # double 0.59197989551011454
	.quad	0x3fdc986db984c58a              # double 0.44680350415281878
	.quad	0x3fc0204ad4594a1c              # double 0.1259854828700363
	.quad	0x3fbfa3910b11b9e0              # double 0.12358957786793878
	.quad	0x3fc29dd9d2e12a4c              # double 0.14544222637990101
	.quad	0x3fcb129e03031444              # double 0.21150565287658385
	.quad	0x3fe5ac3fa708ba30              # double 0.67727644561620615
	.quad	0x3fe94fa2172bf701              # double 0.79097084546785379
	.quad	0x3fe08c3076a7aef5              # double 0.51711295294577886
	.quad	0x3fec459339c03029              # double 0.88349305419388202
	.quad	0x3fab2a8559d31260              # double 0.053058783736138038
	.quad	0x3fecd4fabbddf477              # double 0.90099846546912843
	.quad	0x3fcaade3f789be40              # double 0.20843171679324435
	.quad	0x3fc51a120baa725c              # double 0.16485810823077685
	.quad	0x3fe580b845a899cd              # double 0.67196286778635683
	.quad	0x3fe5fa37836f80dd              # double 0.68679404898650953
	.quad	0x3fdbae8cee571362              # double 0.43252871776012658
	.quad	0x3fc1f8de163fbb1c              # double 0.14040733419775442
	.quad	0x3fab61e90e44ddb0              # double 0.053481371871778705
	.quad	0x3fe72bf04ea225d4              # double 0.72411361082157066
	.quad	0x3feec356cb0905ee              # double 0.96134509711572291
	.quad	0x3fe6c52fd0b537c8              # double 0.71157065165766031
	.quad	0x3fe734bb9a1ec3f5              # double 0.72518711186978513
	.quad	0x3fe4f47129291528              # double 0.65483911551624363
	.quad	0x3fcfbf9646a0e1f0              # double 0.24803427170424142
	.quad	0x3fda4196fe68a536              # double 0.41025328487974677
	.quad	0x3fb1e138ededfee8              # double 0.069842870796488321
	.quad	0x3fd36c8340bc470c              # double 0.30349808999845673
	.quad	0x3fe53a7f8a2e6dde              # double 0.66339089382693905
	.quad	0x3fdb680b9d729f22              # double 0.42822542548900533
	.quad	0x3fe60c65ff7089e7              # double 0.68901348009631824
	.quad	0x3fa221e0d9a04140              # double 0.035414721074746414
	.quad	0x3feb4626a0eda7ee              # double 0.8523133414394104
	.quad	0x3fb5b231ee5ed018              # double 0.084750290580643983
	.quad	0x3fd4b2cf8f3b7316              # double 0.32341374385377841
	.quad	0x3fed364b6b3247c6              # double 0.91287775933073401
	.quad	0x3fe6e4eefdf2fa0e              # double 0.71544599151076382
	.quad	0x3fe478452b8f380c              # double 0.63968142039971232
	.quad	0x3fd936989ba8e040              # double 0.39395728303088973
	.quad	0x3fe42e334e5300b9              # double 0.63063969896031502
	.quad	0x3fdde514456ecd7a              # double 0.46710688381718735
	.quad	0x3fed50bf9d6942fd              # double 0.9161069940983847
	.quad	0x3fe1972834e7a097              # double 0.54970178921668633
	.quad	0x3fe01c1c1a0ff183              # double 0.50343136873520711
	.quad	0x3fd09235ca33fb3a              # double 0.25892395731345952
	.quad	0x3feca8e674bb0fb2              # double 0.89561770247427419
	.quad	0x3feb54e1f350cf52              # double 0.85411164782133597
	.quad	0x3fe8d458c7df649c              # double 0.77592124021170461
	.quad	0x3fe2a3f99dc0b932              # double 0.58251648722742844
	.quad	0x3fddf9241d56bb48              # double 0.46833136429897992
	.quad	0x3fd5b50307082650              # double 0.33917308508589361
	.quad	0x3fd5111737281ffc              # double 0.32916813265228462
	.quad	0x3fe9b69fc7087324              # double 0.80354298471101914
	.quad	0x3fd310f8b1e38714              # double 0.29791085597945366
	.quad	0x3fe23e241dfc3014              # double 0.57008558136431242
	.quad	0x3fe1672c437a278d              # double 0.54384434870847687
	.quad	0x3fe734c480187ef6              # double 0.72519135492981834
	.quad	0x3fefe38126ad186f              # double 0.99652154497085898
	.quad	0x3fed2eda725898e8              # double 0.91196939786166542
	.quad	0x3fd571c901f947d4              # double 0.33506989662884945
	.quad	0x3fc6709e1d06a458              # double 0.17531181733400802
	.quad	0x3fee64f0d4b7312f              # double 0.94982186838163851
	.quad	0x3fe534fc7207fee3              # double 0.66271803161359022
	.quad	0x3fd1717ecde6202e              # double 0.27255220515553702
	.quad	0x3fedc3efdab16957              # double 0.93016808236579152
	.quad	0x3fe092d1aeb686cd              # double 0.51792225001937597
	.quad	0x3fd0cbb2d415eaea              # double 0.26243277274595178
	.quad	0x3fd540d02d4ec9da              # double 0.33208088326059981
	.quad	0x3fd1471e078c4048              # double 0.26996565568061159
	.quad	0x3fe2d7d914700dc1              # double 0.58884862891903123
	.quad	0x3fe2c908f471c356              # double 0.58704040282291703
	.quad	0x3fedaf2ef2eecf73              # double 0.92763469169447743
	.quad	0x3feed90dee1e2f57              # double 0.96399590022472636
	.quad	0x3feb9bded019fe80              # double 0.8627771439059444
	.quad	0x3fe14d14fcec14fd              # double 0.54065942190996419
	.quad	0x3fbb720630f36840              # double 0.10720862097824213
	.quad	0x3fecdf391f0655c6              # double 0.90224891719361078
	.quad	0x3fd86b1960c1cbcc              # double 0.38153681229522074
	.quad	0x3fe6d4780b8a1347              # double 0.71343614820271106
	.quad	0x3fead00def044525              # double 0.83789726908631634
	.quad	0x3fe8f68658eeb6e3              # double 0.78009335870384822
	.quad	0x3fe4cb6bfe11e6d7              # double 0.64983176825554778
	.quad	0x3f96e8eafda4c320              # double 0.02237288640134516
	.quad	0x3fc1bed441995b0c              # double 0.13863614276007075
	.quad	0x3fd5236d6ecf968c              # double 0.33028732129455629
	.quad	0x3fe4964acac1139d              # double 0.64334621048384444
	.quad	0x3fd182750c0a4f20              # double 0.27358747649963
	.quad	0x3fec9650a86954f0              # double 0.89334900753843094
	.quad	0x3fc39beac611ebe4              # double 0.15319571181666369
	.quad	0x3fe4c570000eb054              # double 0.6491012574310937
	.quad	0x3fe3c7e8ca61b0eb              # double 0.61815299537331947
	.quad	0x3fbd2e4663e100e0              # double 0.11398734987688242
	.quad	0x3fe7bea0ae1af6d7              # double 0.74201997761675897
	.quad	0x3feba74a208d79ec              # double 0.86417108877122705
	.quad	0x3fe8c72a4384bd1b              # double 0.77431214511117064
	.quad	0x3fe0397e928ee6d4              # double 0.50701836228037189
	.quad	0x3fee1f1a3aded7df              # double 0.94129668710842995
	.quad	0x3fe83cdd1b96ce63              # double 0.75742965115064143
	.quad	0x3fe726f84eac249d              # double 0.72350707402906134
	.quad	0x3fe01e3724aae723              # double 0.50368840371740864
	.quad	0x3fcbcb5bf3daebb8              # double 0.21714352995863151
	.quad	0x3fe33b3d8595d8ec              # double 0.60098148432623821
	.quad	0x3fe0bb10698d71af              # double 0.52283497443891302
	.quad	0x3feb3750b943e654              # double 0.85050235924354433
	.quad	0x3febac05be2a83fd              # double 0.86474883214771092
	.quad	0x3fd4dd812b3db192              # double 0.32601956579926494
	.quad	0x3fe3f1f0bb1e6758              # double 0.62328373476632759
	.quad	0x3fefd1b9f8cdfd3f              # double 0.99435137362153358
	.quad	0x3fef126ea5f5bcb7              # double 0.97100002683682518
	.quad	0x3fa648daa7d54890              # double 0.043524582850879345
	.quad	0x3fdcb95e2e05b512              # double 0.44881395811428704
	.quad	0x3fc4aef7f288f6a8              # double 0.16158961622743573
	.quad	0x3fec80acf0abb1e5              # double 0.89070746427529157
	.quad	0x3fcc9c6709c30ff8              # double 0.22352302529009171
	.quad	0x3f9a5b0a36350700              # double 0.025737914618054525
	.quad	0x3fe08d65294d77dd              # double 0.51726015154758509
	.quad	0x3fe60d7beb5e6d01              # double 0.68914600344160715
	.quad	0x3fe0581697d26c2c              # double 0.51075296070792353
	.quad	0x3f9c341725a14820              # double 0.027542459174874634
	.quad	0x3fdd1b692007a692              # double 0.45479801299971101
	.quad	0x3fe9dfebd89bb686              # double 0.80858413988399103
	.quad	0x3feef224d6b9d446              # double 0.96705858172084258
	.quad	0x3fd1890656da2b42              # double 0.27398832780516014
	.quad	0x3fdb893463d48d2c              # double 0.43024930714655585
	.quad	0x3fa94ec7fecdb8a0              # double 0.049429178098635562
	.quad	0x3fcbb084f840ad8c              # double 0.2163244449778684
	.quad	0x3fe8b110bf0ecd78              # double 0.77161443057995793
	.quad	0x3fe563fcfe630db3              # double 0.66845559773394425
	.quad	0x3fe406bf8d93a324              # double 0.62582376147938534
	.quad	0x3faa44f298370d30              # double 0.05130727871030627
	.quad	0x3fe224a819ee749b              # double 0.56697468819369889
	.quad	0x3fabf0b706dcd090              # double 0.054570884311403778
	.quad	0x3fe51959d9e9ba65              # double 0.65934460221417324
	.quad	0x3fe1b7205ec82613              # double 0.55360430252148018
	.quad	0x3fe19187917849ae              # double 0.54901483928761308
	.quad	0x3fc15b3429b31108              # double 0.13559581791026454
	.quad	0x3fe6043f2ee8973d              # double 0.68801840936496428
	.quad	0x3fea246ba4c25d0e              # double 0.81694585971391276
	.quad	0x3fefa4a09202dd24              # double 0.98884609716234139
	.quad	0x3fea4a34ed87b3f4              # double 0.82155844109149578
	.quad	0x3fcdaebc8e17e934              # double 0.23189503610758211
	.quad	0x3fc3028e060664b0              # double 0.1485154656809633
	.quad	0x3fe2079491227a21              # double 0.56342533442131437
	.quad	0x3fc9646a0b9be248              # double 0.19837689940301773
	.quad	0x3fe2e35c4bc78549              # double 0.59025397110614464
	.quad	0x3fc435f4fcc41144              # double 0.15789663641056439
	.quad	0x3fb6b5f40ea5fa50              # double 0.08871388776422262
	.quad	0x3f95149d90ebe140              # double 0.020586454363155982
	.quad	0x3fc0f1656849bf30              # double 0.1323668250292882
	.quad	0x3fe9c92b9bd8dfbd              # double 0.80580692709826673
	.quad	0x3fe4ed68e7b907ab              # double 0.65398068674425269
	.quad	0x3fe2040318cb479c              # double 0.56298975794401285
	.quad	0x3feeeaee5fa4ee25              # double 0.96617811851996704
	.quad	0x3f91fbb0d45c2fc0              # double 0.017561686479026895
	.quad	0x3f746a8417540b80              # double 0.0049843940553299104
	.quad	0x3fc79c0eb1421a7c              # double 0.18444999365984305
	.quad	0x3fb33449a594b8e0              # double 0.07501659672263683
	.quad	0x3fe97266c4ae23f9              # double 0.795215019360625
	.quad	0x3fec6a73beff31bd              # double 0.88799464515755455
	.quad	0x3fe16ad9740b7045              # double 0.54429314293839381
	.quad	0x3fe654d43ae09a46              # double 0.69785510539515694
	.quad	0x3fe164491d94f206              # double 0.5434918954629786
	.quad	0x3fe18c275727a92b              # double 0.54835860273786829
	.quad	0x3feb1c2419b826b4              # double 0.84718518279370025
	.quad	0x3fd5b49e6fd50aea              # double 0.33914910241234841
	.quad	0x3fda05c2f0b95dac              # double 0.40660165317737085
	.quad	0x3fd0850996ec194a              # double 0.25811996210577048
	.quad	0x3fdd3995b4cc068c              # double 0.45663969665484028
	.quad	0x3fac464de900c4d0              # double 0.055223879521130947
	.quad	0x3fe39fb7308c531f              # double 0.61324653131541484
	.quad	0x3fcac7a67d682734              # double 0.2092178451860548
	.quad	0x3fd38902170336f8              # double 0.30523731467552251
	.quad	0x3fd9600b63b1aa90              # double 0.39648709045165109
	.quad	0x3fea0a91f3774d2d              # double 0.81379029800374314
	.quad	0x3fd407b2e79b2282              # double 0.31296990030072191
	.quad	0x3fc65825b05dfbe0              # double 0.17456503974605564
	.quad	0x3fe430ef83e2787d              # double 0.630973584735116
	.quad	0x3fe47bf7a014cb42              # double 0.64013272539009614
	.quad	0x3feda597bbb79ed5              # double 0.9264639536240461
	.quad	0x3fee4b7e73a28e7f              # double 0.94671557030638087
	.quad	0x3fd156b4c3ded6ee              # double 0.27091712120032596
	.quad	0x3fdc75e8efe1db52              # double 0.44469664979935886
	.quad	0x3fedd85ff3c4df43              # double 0.93266294108523373
	.quad	0x3fdcf22d8a5f421e              # double 0.45228136551762244
	.quad	0x3febb34a26fbb1a2              # double 0.86563594449903669
	.quad	0x3fe3abf6697e1244              # double 0.61474152187344844
	.quad	0x3fd7da9e80e926c2              # double 0.37271845425548744
	.quad	0x3fe78497f64a1c7c              # double 0.73493574241082582
	.quad	0x3feda58fe0aa5b18              # double 0.92646020774813831
	.quad	0x3fc052196b49db68              # double 0.12750547159859171
	.quad	0x3fdb27ec3b3296e4              # double 0.4243116930104931
	.quad	0x3fbf53a38c638310              # double 0.1223699777360816
	.quad	0x3fdcbadd02bfdc78              # double 0.4489052321291136
	.quad	0x3feee47a8762655a              # double 0.96539045755632036
	.quad	0x3f87c2cb01184a40              # double 0.011602006884492089
	.quad	0x3fec028d6f8ea21b              # double 0.8753115824557115
	.quad	0x3fc11112b14c76c4              # double 0.13333352715647184
	.quad	0x3fe0aeb09242b396              # double 0.52132443014635288
	.quad	0x3fe8fb1b15d7a572              # double 0.78065256372535274
	.quad	0x3fed200c90ab36cf              # double 0.91016224151254643
	.quad	0x3fd4560585a34b36              # double 0.31775033999035729
	.quad	0x3fecbb7909a6d191              # double 0.89788486371121412
	.quad	0x3fc8ecab5e3d05e0              # double 0.19472257710917429
	.quad	0x3fc4a387ef7f9a48              # double 0.16124057001361991
	.quad	0x3fc8a07b695ff1b8              # double 0.19239752431157142
	.quad	0x3fdbef249bfb472e              # double 0.43647113068174093
	.quad	0x3fcd47abb636521c              # double 0.22874971768455132
	.quad	0x3fe9f8ccf2e1c359              # double 0.81162116468304213
	.quad	0x3fed07cbd3cb6761              # double 0.90720168462869932
	.quad	0x3fe2e71be1ff342b              # double 0.59071153774278196
	.quad	0x3fdd6aad88be0bd4              # double 0.45963610032793878
	.quad	0x3fe6f5dee488f7ef              # double 0.71751351009129205
	.quad	0x3fc921015184c9c4              # double 0.19631973724751905
	.quad	0x3fcd5ef37a71ccc0              # double 0.22946017721878853
	.quad	0x3fc92819c81b376c              # double 0.19653627653900274
	.quad	0x3fe4959693149184              # double 0.64326027609472236
	.quad	0x3fd3a7a3fb03eb9e              # double 0.30710696709837204
	.quad	0x3f9fc4ee4707b300              # double 0.03102466877492116
	.quad	0x3fd25b919bb498b4              # double 0.28683891492472502
	.quad	0x3fa14f13fa8458a0              # double 0.033806442576108653
	.quad	0x3fd66fa7a53b1926              # double 0.3505648721296829
	.quad	0x3fee6dd333be962e              # double 0.95090637308448378
	.quad	0x3febf4b3a19d3647              # double 0.87362081113105539
	.quad	0x3fcd75bfb9079738              # double 0.23015591177607475
	.quad	0x3fe4bd2539c3c259              # double 0.64808903963246245
	.quad	0x3fdfff9d780799c4              # double 0.49997650834702889
	.quad	0x3fcfbc41ea1bfb68              # double 0.24793266230696109
	.quad	0x3fdc2e6af48a2c44              # double 0.4403331173022631
	.quad	0x3fd534ee0c8504a6              # double 0.33135558340661431
	.quad	0x3fe9a1c78dd273be              # double 0.80099847507118915
	.quad	0x3fd065f6b3452208              # double 0.25622336870995399
	.quad	0x3fe64318f4599614              # double 0.69569061016653899
	.quad	0x3fed469f7de70387              # double 0.91487097349464441
	.quad	0x3fe552f4b4674bc1              # double 0.66637644991930511
	.quad	0x3fc15f6720c53b64              # double 0.13572396373862283
	.quad	0x3fdcfdcd3a978240              # double 0.45299082490786091
	.quad	0x3fdc91d4e8d19312              # double 0.44640085922428441
	.quad	0x3fdde97f9761087c              # double 0.46737661154850918
	.quad	0x3fd49c5fc6d1b7c0              # double 0.32204431930483324
	.quad	0x3fe52731fe64c6f1              # double 0.66103458105336987
	.quad	0x3fc47c9182007cec              # double 0.16005152557133984
	.quad	0x3fe15e7882c4b322              # double 0.54278207340903273
	.quad	0x3fe5287899e3f3b3              # double 0.66119031960226093
	.quad	0x3fd0cbaaae386b8a              # double 0.26243083013258028
	.quad	0x3fe96250b74e619b              # double 0.79325137903201737
	.quad	0x3fe5b8616d3239e3              # double 0.67875739409811009
	.quad	0x3fec3bac3b3eb973              # double 0.8822842747811549
	.quad	0x3fb88afa01a23900              # double 0.095870614432190137
	.quad	0x3fd37b6f9e49566e              # double 0.30440893609679776
	.quad	0x3fd795dcd8014cc8              # double 0.36852189153905757
	.quad	0x3fe031aae93b144e              # double 0.5060629420555729
	.quad	0x3fd745a3ba30f4c6              # double 0.36362546141374386
	.quad	0x3feca61dd10fba32              # double 0.89527788955985543
	.quad	0x3fe5d95c231b0481              # double 0.68278319222021377
	.quad	0x3fb278ae71612380              # double 0.072153952293900758
	.quad	0x3fbe26cfd5574cf8              # double 0.11777972181817009
	.quad	0x3fec25436f86b4ec              # double 0.8795487573858316
	.quad	0x3fed3c6e5809a129              # double 0.91362683482023954
	.quad	0x3fdb4c5128d2b900              # double 0.42653302179941477
	.quad	0x3fe79707a2f3c260              # double 0.73718625856970376
	.quad	0x3fee49b7ce748978              # double 0.94649877856527009
	.quad	0x3fe4058bf4000c5a              # double 0.6256770864132577
	.quad	0x3fcb254f852cd194              # double 0.2120761299389754
	.quad	0x3fddf96c1caef9d0              # double 0.46834852982638342
	.quad	0x3fb6c793ed650cb8              # double 0.088982816178986179
	.quad	0x3fe1b7e51d38e5b1              # double 0.55369811732741969
	.quad	0x3fea6ecaa7bd3123              # double 0.82602436791924949
	.quad	0x3fde4eb987ca2012              # double 0.47355497608850883
	.quad	0x3fd3d6c6227579c4              # double 0.30998376240850356
	.quad	0x3fd666896e9f1c28              # double 0.35000835230715888
	.quad	0x3fdfbc123a5fcd62              # double 0.49585395527465981
	.quad	0x3fefcefdbfbfbfa2              # double 0.99401748133640333
	.quad	0x3fdaf113c78785b4              # double 0.42096418843547245
	.quad	0x3fe85201e7f7b411              # double 0.760010674535467
	.quad	0x3fdb835cd0739d0e              # double 0.42989273411372231
	.quad	0x3feaaa220ebfe639              # double 0.83326819306166222
	.quad	0x3fcc20283ba64868              # double 0.2197313586480647
	.quad	0x3fe9395300a1851c              # double 0.78824758647184323
	.quad	0x3fd562b13936f63c              # double 0.33414869868633779
	.quad	0x3fd18d2c2aecc6b4              # double 0.27424148742566534
	.quad	0x3fc33dc498d9cdf0              # double 0.1503225084630766
	.quad	0x3fe7ad757fcbad55              # double 0.73992419204788951
	.quad	0x3fe013ce2e25e1cb              # double 0.50241765034939456
	.quad	0x3fd57368528548a0              # double 0.33516891535431093
	.quad	0x3fd6ec8406fa7c88              # double 0.35818577462664125
	.quad	0x3fca95208a518eec              # double 0.20767599824750194
	.quad	0x3fefe41ea544db6b              # double 0.99659664420219706
	.quad	0x3fe124895895ffc7              # double 0.53571002294483427
	.quad	0x3fb26e0f0e763228              # double 0.071991864233674208
	.quad	0x3fd766628274081a              # double 0.36562407245230732
	.quad	0x3fd2161de0ba617e              # double 0.28259989687060016
	.quad	0x3fea52b03999e5c1              # double 0.82259379625536877
	.quad	0x3fe60dfd74f19fec              # double 0.68920777168841374
	.quad	0x3fddb657df393366              # double 0.46425434874691118
	.quad	0x3fe179652062f3fb              # double 0.54606872869010148
	.quad	0x3fe24f6b5f98d760              # double 0.57219475432678379
	.quad	0x3fd2f0ab5ab7621e              # double 0.29593929156320253
	.quad	0x3fddf6ebc92faff2              # double 0.4681958641729117
	.quad	0x3fd0113a5fc68542              # double 0.25105151513169599
	.quad	0x3fc7a1bd11fa2c2c              # double 0.18462336900515319
	.quad	0x3fe5dff845cadcda              # double 0.68359006530127009
	.quad	0x3fe35ae032d7f930              # double 0.60484323435210818
	.quad	0x3fd3db5953718472              # double 0.3102629961850375
	.quad	0x3fe70b8ec05600d4              # double 0.72016084256758939
	.quad	0x3fab3c77902d09b0              # double 0.053195701932526318
	.quad	0x3faf8461ef400a80              # double 0.061556873755781005
	.quad	0x3fe68bbf495d7838              # double 0.70455898598789357
	.quad	0x3fc6f372edca9068              # double 0.17930447207357081
	.quad	0x3fc1663833f63610              # double 0.13593199288554603
	.quad	0x3fe85f8b65e50aad              # double 0.76166314984614802
	.quad	0x3fe37c566615d8ca              # double 0.60892791689436732
	.quad	0x3fe94c812f38f6fc              # double 0.79058894370220356
	.quad	0x3fd5a318ca08b43c              # double 0.33807964067347362
	.quad	0x3fb3b69e54064588              # double 0.077005286706727571
	.quad	0x3faf5c2a32d27850              # double 0.061250036910892036
	.quad	0x3fd2d5850c60a360              # double 0.29428220947970907
	.quad	0x3fed5d1056daec10              # double 0.91761033023738214
	.quad	0x3fc8d1047901ef94              # double 0.19387870701382026
	.quad	0x3fe217b3205e6cd0              # double 0.56539303133049579
	.quad	0x3fe16a43a4df9eb7              # double 0.54422170831545358
	.quad	0x3fd18820d8f7e2ba              # double 0.27393361271201011
	.quad	0x3fcadc0947a477b8              # double 0.20983997343222227
	.quad	0x3fc9fe842f0840d0              # double 0.20307972237106364
	.quad	0x3fd838111ff4ebce              # double 0.37842205162786235
	.quad	0x3fa352aaa0000e60              # double 0.037740070372845436
	.quad	0x3fea3e26fc7c8a56              # double 0.82008694947973981
	.quad	0x3fe1de1f00ee2e87              # double 0.5583643930599046
	.quad	0x3fed53b7c2c5434a              # double 0.91646945992588624
	.quad	0x3f675227dd312800              # double 0.0028467920870172136
	.quad	0x3fddee0a2552948a              # double 0.46765378613265141
	.quad	0x3fe95386b116c3c6              # double 0.79144606197052592
	.quad	0x3fb78b7f360f5798              # double 0.091972304056382348
	.quad	0x3fe10d66827096c5              # double 0.5328857944156985
	.quad	0x3fd8c2865c79cafc              # double 0.38687285452685649
	.quad	0x3fd92f17dc1dad6c              # double 0.39349934097000161
	.quad	0x3fd7bd40d46824e2              # double 0.37092610113957225
	.quad	0x3fe49dddf0404fb3              # double 0.64427086757722518
	.quad	0x3f8d9aaa1ff969c0              # double 0.014455155468728331
	.quad	0x3fc12d40fea72924              # double 0.13419353899218678
	.quad	0x3fd692d22d41e302              # double 0.35271124286332178
	.quad	0x3feb3d6a65478820              # double 0.85124702244889149
	.quad	0x3fe7dfe6bd845d24              # double 0.74608170523689354
	.quad	0x3faf28b29b4d6510              # double 0.060857373674204962
	.quad	0x3fb4e255eb1cc390              # double 0.081578607464292796
	.quad	0x3fdaac8cdf310e40              # double 0.41678163333947182
	.quad	0x3fe9874233d8f675              # double 0.79776106001345559
	.quad	0x3fe26c4979715042              # double 0.57571862906707616
	.quad	0x3f9933a877f53ee0              # double 0.024611122438101485
	.quad	0x3fe45bfe4106b942              # double 0.63622963619653938
	.quad	0x3fef265b4e65ebd1              # double 0.97343221008429214
	.quad	0x3fe6c6dd7af8b0f1              # double 0.71177553193913756
	.quad	0x3fec9834057c4e48              # double 0.89357949324989594
	.quad	0x3fecacbc140c194f              # double 0.89608577647667598
	.quad	0x3fed528a2275593b              # double 0.91632563333659023
	.quad	0x3fe54ac89bad15c2              # double 0.66537886052599782
	.quad	0x3fca4970947e8018              # double 0.20536620379152803
	.quad	0x3fe9e5e8da1387cb              # double 0.80931513398194832
	.quad	0x3fd1518c847c9b06              # double 0.27060234964521646
	.quad	0x3fc4698c15bccf9c              # double 0.1594710451259943
	.quad	0x3fce04f8342d0d5c              # double 0.23452665851264498
	.quad	0x3fe130538cebc010              # double 0.53714921496976054
	.quad	0x3fe2a33bc8f0884e              # double 0.58242596860896767
	.quad	0x3fe26ac9d8db27a7              # double 0.57553570131971277
	.quad	0x3fe87ff4ec82ce75              # double 0.76561971849009913
	.quad	0x3fde41bdc983a766              # double 0.47276253394249179
	.quad	0x3fbbff40bae6f6b8              # double 0.10936359942476315
	.quad	0x3fe46ad1bf819d0e              # double 0.63803946879935025
	.quad	0x3feb23e5b0e7c9a1              # double 0.84813198615875163
	.quad	0x3fd1af364e70584e              # double 0.27631909999889082
	.quad	0x3fe7c9fdd46227c6              # double 0.7434071682084713
	.quad	0x3feb612bef394da9              # double 0.85561176989943022
	.quad	0x3fed592bfbea5db8              # double 0.91713523103947292
	.quad	0x3fe6c1146a0a574f              # double 0.71106930457129092
	.quad	0x3fef4651bd355037              # double 0.97733389811265325
	.quad	0x3fc3c8a40fa3e5c8              # double 0.1545605732315336
	.quad	0x3fe38847b0fa71b8              # double 0.61038574758600017
	.quad	0x3fd5458ec66cf84c              # double 0.33237046601778242
	.quad	0x3fe8a6b84b4e6ebb              # double 0.77035155018116741
	.quad	0x3fe18232ee222b7c              # double 0.54714342604107413
	.quad	0x3fb54f6a78ff4298              # double 0.083243040600118667
	.quad	0x3fe9a1fffcd5304b              # double 0.80102538472557094
	.quad	0x3fef6363bf29cc92              # double 0.98088252388551411
	.quad	0x3fd5b7dddc7ed294              # double 0.33934732945207569
	.quad	0x3fdb4268acdfc362              # double 0.42592827684625523
	.quad	0x3fb0894d8b4bc710              # double 0.064595076091588988
	.quad	0x3fe731d72bb01e86              # double 0.72483404667669116
	.quad	0x3fe532303b0364dd              # double 0.66237651372935213
	.quad	0x3fec2b42490e7815              # double 0.88028063076831364
	.quad	0x3fe8918cd8fcbe70              # double 0.76776735668495455
	.quad	0x3fe9d0c90e1a7fd4              # double 0.8067364955386389
	.quad	0x3fdf032ef16d05e2              # double 0.48456929756875244
	.quad	0x3fee34d5054c5625              # double 0.94394923243334417
	.quad	0x3feec4a4b4567088              # double 0.96150431844900285
	.quad	0x3fea7781ee4d4334              # double 0.82708832305261248
	.quad	0x3fd0ef3127dd22dc              # double 0.26459912198019508
	.quad	0x3fb8e74851c2cac8              # double 0.09727909084430586
	.quad	0x3fdb73ad6c448926              # double 0.42893539021510418
	.quad	0x3fd74ef4bd0b2bac              # double 0.36419409238140577
	.quad	0x3fea58c8a3f13b80              # double 0.82333786029799683
	.quad	0x3fd95612dda0e1e4              # double 0.39587852137949953
	.quad	0x3fe2fbc8be82afd1              # double 0.59323537072259047
	.quad	0x3fd7226d4a381852              # double 0.36147625205956502
	.quad	0x3fdca8208f2cd644              # double 0.44776166898677539
	.quad	0x3fe4d4fb283ba3ce              # double 0.65099866731645206
	.quad	0x3fd79db8c764a54a              # double 0.36900157424914382
	.quad	0x3fd05c8d15f830e2              # double 0.2556488718553408
	.quad	0x3fe772378050f996              # double 0.73269248067645054
	.quad	0x3fcb178dfc1a0100              # double 0.21165633020064689
	.quad	0x3fe5515d759d680c              # double 0.66618226024297789
	.quad	0x3fed4ca85722c949              # double 0.91560761469580954
	.quad	0x3fe113ade2f83b93              # double 0.53365225152980356
	.quad	0x3fe2e2fbf9abeda8              # double 0.59020804180129449
	.quad	0x3fee19fd1dae6668              # double 0.9406724528991619
	.quad	0x3fd11281344d0a14              # double 0.26675443751824557
	.quad	0x3fed4a293bd107e8              # double 0.91530286486544998
	.quad	0x3fdabdf5a0c3ec2c              # double 0.41784420680750389
	.quad	0x3fd1dba7b1bfc484              # double 0.27903168066320228
	.quad	0x3fe3548dd4c4dc65              # double 0.60407153660242996
	.quad	0x3fdfba9cbd1fa7da              # double 0.4957649084959691
	.quad	0x3fe807ff90017388              # double 0.75097635389430284
	.quad	0x3fd9d42c960afc40              # double 0.40357508328083114
	.quad	0x3fab684a656ef2b0              # double 0.053530049211507502
	.quad	0x3fb2d93ac54b5f78              # double 0.073627160232147548
	.quad	0x3fe4ffa58e48273e              # double 0.65620687283919898
	.quad	0x3feca42c4f2e11f6              # double 0.89504065956913226
	.quad	0x3fdfb90bb6cfc4e2              # double 0.49566929676718818
	.quad	0x3fe85ed8033d24f7              # double 0.76157761223399134
	.quad	0x3fcbe84a7b33bb3c              # double 0.21802645698286394
	.quad	0x3feeff7c2f651d6d              # double 0.96868714577514725
	.quad	0x3fe0abe02da0ac96              # double 0.52098091994902762
	.quad	0x3fd460d56b36b408              # double 0.31841025800787337
	.quad	0x3fc0c3baf971177c              # double 0.13097321681760465
	.quad	0x3fe4c8260b7217c0              # double 0.64943220363124254
	.quad	0x3fcded1f7858a77c              # double 0.23379891754421667
	.quad	0x3fe4453a58bc2e81              # double 0.63345067339965067
	.quad	0x3fdbdc31a9ba9d66              # double 0.43531457495779191
	.quad	0x3fe2be8874b503f5              # double 0.58575842661241373
	.quad	0x3fd795966a6f175a              # double 0.36850510019245564
	.quad	0x3fd85fe2abaca484              # double 0.38085238232685747
	.quad	0x3fe916a23ce1534e              # double 0.78401290789279598
	.quad	0x3fd2a5ff54706a5a              # double 0.29138167615898214
	.quad	0x3fe80239bdfa5f26              # double 0.75027167420464447
	.quad	0x3fd16537bca7ce8a              # double 0.27180283950222217
	.quad	0x3fe660429ecbee47              # double 0.69925051703416663
	.quad	0x3fda660f1f41d4ae              # double 0.41247919132667732
	.quad	0x3fed492865f15db9              # double 0.91518039618215774
	.quad	0x3fe5dcf546348bed              # double 0.68322242462124694
	.quad	0x3fe05c3befe458ea              # double 0.51125904897597008
	.quad	0x3fe8461c0fec8049              # double 0.75855830297587901
	.quad	0x3fe695aaaeb03803              # double 0.70576986426181099
	.quad	0x3fb54dc45fc82568              # double 0.083217881569131458
	.quad	0x3feeb435b52b5140              # double 0.95949826607333221
	.quad	0x3fc217da7ba28bb8              # double 0.14135294949400445
	.quad	0x3fe8299948e4eb7a              # double 0.75507797467376681
	.quad	0x3fe7aa685b312af3              # double 0.73955171404790432
	.quad	0x3fb9fd977bc877c0              # double 0.10152575275466713
	.quad	0x3fc3a8627f313e14              # double 0.15357619486393104
	.quad	0x3fcbac8cc49b98a8              # double 0.21620330429067747
	.quad	0x3fe9b754275726b4              # double 0.8036289947860582
	.quad	0x3fe749af4b49785d              # double 0.72774471954813758
	.quad	0x3fdddb83b233d0ec              # double 0.46652309801653646
	.quad	0x3fe43cec6e866571              # double 0.63243695818816381
	.quad	0x3fec04038485731a              # double 0.87548995860160805
	.quad	0x3fe749a990a52c9c              # double 0.7277419877149387
	.quad	0x3fd724d956684482              # double 0.36162408292972981
	.quad	0x3feb9fa60be096c9              # double 0.86323835677895844
	.quad	0x3fbcd4eaa52dace8              # double 0.11262384922672519
	.quad	0x3fe088d031980772              # double 0.51670083700467573
	.quad	0x3fda8d67a04dd3ee              # double 0.41488066343964547
	.quad	0x3fbb746c08c65b48              # double 0.10724520887593514
	.quad	0x3fdc3b4fcd08d110              # double 0.44112010023970161
	.quad	0x3febe15e3393f385              # double 0.87126073907676072
	.quad	0x3fcca0e949cdd308              # double 0.2236606226321316
	.quad	0x3fedcbb172496aba              # double 0.93111488649022722
	.quad	0x3fe7ae3dac276ee8              # double 0.74001964210353055
	.quad	0x3fe53da28d398eec              # double 0.66377379973388662
	.quad	0x3fb56af92632d678              # double 0.083663532090975212
	.quad	0x3fe5586f48de987e              # double 0.66704525215460797
	.quad	0x3febc44fa186e75a              # double 0.8677137522529208
	.quad	0x3f90b568df265880              # double 0.016317022914869472
	.quad	0x3fca7c6be142bd94              # double 0.20692203997667191
	.quad	0x3fe4d2363cf33888              # double 0.65066062835991634
	.quad	0x3fdbec868b095d00              # double 0.4363113744525009
	.quad	0x3fcfec099ffe4514              # double 0.24939079582376478
	.quad	0x3fe225f6d9b28189              # double 0.56713430899621742
	.quad	0x3fe46cc6cc1c39c7              # double 0.63827838769230361
	.quad	0x3fd7b788d85feba4              # double 0.37057706003514057
	.quad	0x3fe7cb9666ab0f61              # double 0.74360199024566154
	.quad	0x3fe457007091c697              # double 0.63562032686441483
	.quad	0x3fdad5ac938e0b84              # double 0.41929163369803057
	.quad	0x3fc7c5fdc99a777c              # double 0.18572971671977345
	.quad	0x3fd403c24d32ce48              # double 0.31272943056976432
	.quad	0x3fed60a6d4df9077              # double 0.91804830147567784
	.quad	0x3fe717a021f63a64              # double 0.72163397439164756
	.quad	0x3fe75b424f1fe14b              # double 0.72989001707086609
	.quad	0x3fddd36ce088258c              # double 0.46602937628684837
	.quad	0x3fa44f8273646570              # double 0.039669109903296085
	.quad	0x3fe5874653d8239a              # double 0.67276302696074031
	.quad	0x3feb6d9ce62c5817              # double 0.85713047939020981
	.quad	0x3fec6e1470e7559d              # double 0.88843748141760026
	.quad	0x3fe20b2c9784e8dc              # double 0.56386403649892314
	.quad	0x3fed11f1f9f66c77              # double 0.90844057865923744
	.quad	0x3fe55d57e54b4e26              # double 0.66764445098892078
	.quad	0x3f84d9e0e704d480              # double 0.010181195306907975
	.quad	0x3fd2a6dd0299d7ca              # double 0.2914345288658039
	.quad	0x3fca30904b0ecbd8              # double 0.20460704483920611
	.quad	0x3fde66311f132410              # double 0.47498729738850987
	.quad	0x3fdb3ce20b389532              # double 0.42559100242427228
	.quad	0x3fe20a151ee91708              # double 0.56373077428062945
	.quad	0x3fe33bd1e44f7dec              # double 0.60105223266503804
	.quad	0x3fe9603c0f9a478d              # double 0.79299738929170049
	.quad	0x3fef5dc34e9dd9b4              # double 0.98019566874318408
	.quad	0x3fe3a880380f48de              # double 0.61431895207558873
	.quad	0x3fec49796b4133b6              # double 0.8839690298860805
	.quad	0x3fe794a192ae7dbc              # double 0.7368934502482527
	.quad	0x3fde859806448904              # double 0.47690392124253855
	.quad	0x3fc5c53cda22afd0              # double 0.17008171702525354
	.quad	0x3fcfb5c3ee896174              # double 0.24773453852936778
	.quad	0x3fbdaeb1ba33fec0              # double 0.11594687267278925
	.quad	0x3fd6a2ef0a399da0              # double 0.3536946868757358
	.quad	0x3fd0e610a801d550              # double 0.26404205710362749
	.quad	0x3fd304f707a746e6              # double 0.2971780371418461
	.quad	0x3fabd1fd71bdb810              # double 0.054336471685800913
	.quad	0x3fb11231b7feb388              # double 0.06668387167037626
	.quad	0x3fd4b05cd3074eb2              # double 0.32326431854492477
	.quad	0x3fc371d3d6c2a65c              # double 0.1519112394938017
	.quad	0x3fed57231f95182b              # double 0.91688686531484132
	.quad	0x3fe11cb0c9f09b88              # double 0.53475226823216904
	.quad	0x3fe919fd16123e60              # double 0.78442243872445871
	.quad	0x3fef78cb7c895607              # double 0.98349546741036497
	.quad	0x3fb3e588d3ddc568              # double 0.077721168255967421
	.quad	0x3fed5fea6bc08764              # double 0.91795846028638239
	.quad	0x3fef099b46c6fcdc              # double 0.96992267440500823
	.quad	0x3fe67cc1cb6a41c1              # double 0.70272912721161884
	.quad	0x3fe43acb236688a5              # double 0.63217694200672681
	.quad	0x3fe24d9f29f35de6              # double 0.57197530930983187
	.quad	0x3fe1e8b1444774c5              # double 0.55965483985678388
	.quad	0x3fc12a45cabbb33c              # double 0.1341025581272336
	.quad	0x3fe7c0ec6720e9c3              # double 0.74230022566126086
	.quad	0x3fc7ed4fe917542c              # double 0.18692969209101429
	.quad	0x3fd5c515be58118c              # double 0.3401541098430918
	.quad	0x3f83471c12b61140              # double 0.0094129746637540145
	.quad	0x3fe4f23ea298d047              # double 0.65457088238918792
	.quad	0x3fece9bd53849ed4              # double 0.90353266059988834
	.quad	0x3fe314ce264ccbe8              # double 0.59628970604387366
	.quad	0x3fe2cb851a0406de              # double 0.5873437412376139
	.quad	0x3feafbd411819522              # double 0.84324077052284374
	.quad	0x3fcce6b9f4716f00              # double 0.2257912105150055
	.quad	0x3feb6d887affc92e              # double 0.85712074301981089
	.quad	0x3fec55bfe7f5f574              # double 0.88546748452033208
	.quad	0x3fdf8495d7ae376e              # double 0.49246736586143569
	.quad	0x3fcee7770b58a920              # double 0.24143875173587848
	.quad	0x3fe2389563440725              # double 0.56940717113341022
	.quad	0x3fecf250d9e9bbdb              # double 0.90457956849229093
	.quad	0x3fd7fd32d911ac88              # double 0.37482901762150123
	.quad	0x3fbd6474d8de3f20              # double 0.11481409353859506
	.quad	0x3fd4a8cf7bfbfc9c              # double 0.32280337436527318
	.quad	0x3fe643faa5bc1367              # double 0.69579822893193188
	.quad	0x3fe6a4da98fbac97              # double 0.70762376670372162
	.quad	0x3fef46c5772ac352              # double 0.97738908076108033
	.quad	0x3f83a676b9275e40              # double 0.0095948481802415885
	.quad	0x3febe612fe1d87de              # double 0.87183522827057991
	.quad	0x3fae350f048daa00              # double 0.05899855547507471
	.quad	0x3fe3a7390dd43859              # double 0.61416294766400903
	.quad	0x3fe0c2ad4cc97fc1              # double 0.52376427648049895
	.quad	0x3f844dbe6f54ee80              # double 0.0099139096952207683
	.quad	0x3fedd2c03cbdd952              # double 0.93197643149941656
	.quad	0x3fea95b7737237ca              # double 0.83077595279768812
	.quad	0x3fdb47ef0bed993a              # double 0.42626548924308205
	.quad	0x3f9806e61c518aa0              # double 0.023463817099023232
	.quad	0x3fc9c43101387e18              # double 0.20129978713610863
	.quad	0x3fd40d92a5c46a20              # double 0.31332842052657561
	.quad	0x3fedfa7cc8199c8b              # double 0.93682707864799519
	.quad	0x3fdfdd1386aa85f0              # double 0.49786842490183769
	.quad	0x3fef56a3a6d14fd0              # double 0.97932608205382543
	.quad	0x3fd4bd6f858f9790              # double 0.3240622333818175
	.quad	0x3fea082a80ca89ed              # double 0.81349682955288716
	.quad	0x3fda1f7c2dda5f2e              # double 0.40817169645150642
	.quad	0x3fede4a6013932b2              # double 0.9341611884970773
	.quad	0x3feca04bc502eca2              # double 0.89456737974923706
	.quad	0x3fe3ad69c770ab7c              # double 0.61491860345027716
	.quad	0x3fc4b635c028f2fc              # double 0.16181060679254944
	.quad	0x3fe3386f7b4091f8              # double 0.60063909599972387
	.quad	0x3fd868edb02f6c00              # double 0.38140432553853998
	.quad	0x3fd839ea9211ad64              # double 0.37853492989116533
	.quad	0x3fbccbfb5635f088              # double 0.11248751501801924
	.quad	0x3fc8c98790227bac              # double 0.19365019357516411
	.quad	0x3fb531c882992000              # double 0.082790882000267629
	.quad	0x3fdc82025ae55320              # double 0.44543513180296834
	.quad	0x3fe789aca28af431              # double 0.7355559515632476
	.quad	0x3fe311a04182f553              # double 0.59590161128259422
	.quad	0x3fe9febd83331e45              # double 0.81234622597634909
	.quad	0x3fe112eb4679265d              # double 0.5335594536238194
	.quad	0x3fe969360c2caa96              # double 0.79409315469577524
	.quad	0x3fd06ef21d6645a0              # double 0.25677159186406051
	.quad	0x3fc5ac2baa20dc6c              # double 0.16931672865914338
	.quad	0x3fee32d2e8f72c07              # double 0.94370408536031014
	.quad	0x3fe63e730f9ec3cc              # double 0.69512322474303678
	.quad	0x3fd02c4b8482c6d6              # double 0.25270355167877534
	.quad	0x3fdd3b1b299a3bcc              # double 0.4567325502657098
	.quad	0x3fe82fdd29009339              # double 0.75584276207209833
	.quad	0x3fb4e76b4f560c68              # double 0.081656176442309936
	.quad	0x3fcae85cc18b2d80              # double 0.21021613550542995
	.quad	0x3fe1c9aa7ef2ee86              # double 0.55586743159024432
	.quad	0x3fe92716b0dd3a12              # double 0.78602156204016382
	.quad	0x3fe3532ba7051b96              # double 0.60390265103420648
	.quad	0x3fe04f71ac3651fd              # double 0.50969775805657458
	.quad	0x3fecb880e2dfd02c              # double 0.89752239524250887
	.quad	0x3fe381146c3cf103              # double 0.6095068086647476
	.quad	0x3fed1343133cfb57              # double 0.90860131986105841
	.quad	0x3fe5d19f7e38cfeb              # double 0.68183874752730611
	.quad	0x3fa24beeace05260              # double 0.03573556766801711
	.quad	0x3fe71a77095b3dc6              # double 0.72198058917450036
	.quad	0x3fe0554028a32b53              # double 0.51040656983364341
	.quad	0x3fb5a5edb10e2968              # double 0.084563117720028225
	.quad	0x3fdc97c48f96f4e6              # double 0.44676317236355911
	.quad	0x3fc1f44bb4360a58              # double 0.14026781367654695
	.quad	0x3fc52520f835b290              # double 0.16519558066956508
	.quad	0x3fe5770dfc170a8d              # double 0.67078303562478114
	.quad	0x3fe383d3431018de              # double 0.60984194849222795
	.quad	0x3fedcd4462c6ef3b              # double 0.93130702297592138
	.quad	0x3fb9817331564cb0              # double 0.099631499810402202
	.quad	0x3fd550a10b124002              # double 0.3330462082021769
	.quad	0x3fe45ad782a5ff0f              # double 0.63608909146566528
	.quad	0x3fd1864a7ad12530              # double 0.27382146829457366
	.quad	0x3fef5ced0809fcc6              # double 0.98009349413032321
	.quad	0x3fb433be3ef2e018              # double 0.07891453778108859
	.quad	0x3fc2264fb17b77ec              # double 0.14179416814926016
	.quad	0x3fe10792f137866f              # double 0.53217455971407712
	.quad	0x3fe81f581832bf1c              # double 0.75382618643013499
	.quad	0x3fec18baa46d8721              # double 0.87801868548215023
	.quad	0x3fed7bbcfb82eb6f              # double 0.92135476229974056
	.quad	0x3f864ed502a62c40              # double 0.010892547744125847
	.quad	0x3fda06e508fab7fe              # double 0.40667081715480424
	.quad	0x3fb038fe16473ba0              # double 0.063369636954333064
	.quad	0x3fede613a203ab2b              # double 0.93433553355621279
	.quad	0x3fdd71685918a142              # double 0.46004685116578881
	.quad	0x3fde637f5b3d32f4              # double 0.47482284460129098
	.quad	0x3fe5ea15de1bb110              # double 0.68482488041402867
	.quad	0x3fc1688c6b3cff70              # double 0.13600306736224921
	.quad	0x3fe5d10a6abffce6              # double 0.68176766252136356
	.quad	0x3fc901800cac5a70              # double 0.19535828226863172
	.quad	0x3febf9225931a82b              # double 0.87416188641259873
	.quad	0x3fca7afc87bc2c98              # double 0.20687824847877745
	.quad	0x3fe3923eafb6787a              # double 0.61160215681935814
	.quad	0x3fd65f21234e41ee              # double 0.34955624053784973
	.quad	0x3fd6c4afb1433b5a              # double 0.3557547789650265
	.quad	0x3fcbb43a3e621038              # double 0.21643760725066996
	.quad	0x3fc7f3921c8c2f8c              # double 0.18712068933416182
	.quad	0x3fe056410078250d              # double 0.51052904216445116
	.quad	0x3fbda88acecc9990              # double 0.11585300015267408
	.quad	0x3fe34c3bcad5ca8c              # double 0.60305585495218983
	.quad	0x3f7caa58d4c62e00              # double 0.0069983930556065665
	.quad	0x3fc0f637351f5530              # double 0.13251390546671749
	.quad	0x3fd67baf9d49b928              # double 0.35129919395594067
	.quad	0x3fe76466516ee57d              # double 0.73100582032127159
	.quad	0x3fd13f9a54ff8f24              # double 0.26950701046574665
	.quad	0x3fe14f0cca080bd4              # double 0.54089965304626242
	.quad	0x3fb920bb5d652070              # double 0.098155699063797063
	.quad	0x3fc8184a1172e708              # double 0.18824125148767501
	.quad	0x3fe1a9c8ee63a492              # double 0.55197569427868332
	.quad	0x3fd3d0aeb7222670              # double 0.30961196788903234
	.quad	0x3febb820f46992f2              # double 0.8662266515426309
	.quad	0x3fc41e79309780e8              # double 0.15717997429511077
	.quad	0x3fe83331b870853a              # double 0.75624929450365319
	.quad	0x3fe0d3dce9eacd09              # double 0.52586217581702599
	.quad	0x3fc6d8a1a98b33fc              # double 0.17848606852058413
	.quad	0x3fe8b85c3d0bf8ce              # double 0.77250492022701578
	.quad	0x3fecd0d908cf73be              # double 0.90049411507390409
	.quad	0x3fe1acdede444a93              # double 0.55235236560322887
	.quad	0x3fd158568ccba2ec              # double 0.27101672887378814
	.quad	0x3fe4413ebc0a59df              # double 0.63296448446891052
	.quad	0x3fd74eb04982dbaa              # double 0.36417777232002868
	.quad	0x3fe8437f191127b9              # double 0.75823931594754079
	.quad	0x3fd89babf31eef18              # double 0.38450144521969909
	.quad	0x3fe0cad33b01eee0              # double 0.52475892567550986
	.quad	0x3fecf0e480872200              # double 0.90440583327387003
	.quad	0x3fd61e766e944d84              # double 0.34560929106483962
	.quad	0x3fe7b3c5d6adda43              # double 0.74069492272867199
	.quad	0x3fdf9b7e404e33c2              # double 0.49386554984885944
	.quad	0x3fd3ba7a6d511166              # double 0.30825672793823455
	.quad	0x3f954e3d4a3dd700              # double 0.020806272178979235
	.quad	0x3fe4053db741810f              # double 0.62563977996981801
	.quad	0x3feffbee35df5813              # double 0.99950323602638702
	.quad	0x3fba7abf71b9cfb8              # double 0.10343548323163432
	.quad	0x3fbf0166f2cc4020              # double 0.12111514499361009
	.quad	0x3fe3a4789134c2e8              # double 0.61382702217642038
	.quad	0x3febdda6bf52b0c7              # double 0.87080705039763806
	.quad	0x3f9989e5a72f8040              # double 0.02494009812278386
	.quad	0x3fe4c97dc3ba89a0              # double 0.64959610203031914
	.quad	0x3fa09ac61de2be10              # double 0.032430831096800117
	.quad	0x3fd85aa941a559cc              # double 0.38053351793987811
	.quad	0x3feeb919bd3b2163              # double 0.96009528121161868
	.quad	0x3fadb2c38719c7a0              # double 0.058004484407219836
	.quad	0x3fe781f0e951c080              # double 0.73461194582161227
	.quad	0x3fd703043f9f4d48              # double 0.35955911839592547
	.quad	0x3fe4300f8a6b162a              # double 0.63086678538156105
	.quad	0x3febf755eb24c0e3              # double 0.87394233633497398
	.quad	0x3febe12e162db8ee              # double 0.87123779613264474
	.quad	0x3fecb0baca0d8e90              # double 0.89657344306438524
	.quad	0x3fe486217d426252              # double 0.64137339081487199
	.quad	0x3fb31feacb69e810              # double 0.074705767308756998
	.quad	0x3fe48b4835dfd7f1              # double 0.64200220606175951
	.quad	0x3fe8fc69ea9222b1              # double 0.78081222357385205
	.quad	0x3fe18e65896866d2              # double 0.54863240086998588
	.quad	0x3fc81ec53cafbc88              # double 0.18843903983313148
	.quad	0x3fed01a38b26a03f              # double 0.90645005395800371
	.quad	0x3fb65239f1eb2938              # double 0.087192174493940011
	.quad	0x3fc952024dcd6310              # double 0.19781521605434493
	.quad	0x3fee49dab9725875              # double 0.94651542873431416
	.quad	0x3fc0ab10b455ea50              # double 0.13022049718331852
	.quad	0x3feeaa89f4f55344              # double 0.9583177360860664
	.quad	0x3feb94e2f7470655              # double 0.86192463203787872
	.quad	0x3fd66d9d9d41c4c2              # double 0.35044041020507788
	.quad	0x3fda3c8573dd3304              # double 0.40994392695283488
	.quad	0x3feefd0389e3a006              # double 0.96838547641255057
	.quad	0x3fbb5e75c1dcf610              # double 0.10691009505259097
	.quad	0x3fd855ccbc6fcba4              # double 0.3802368011667403
	.quad	0x3fdd282b798e4082              # double 0.4555767714564426
	.quad	0x3fe34a00fe64316c              # double 0.60278367696586832
	.quad	0x3fe1831766919d49              # double 0.54725236924142806
	.quad	0x3f81a83314cebf80              # double 0.0086215964055040839
	.quad	0x3fda27523c11a95a              # double 0.40864997736084308
	.quad	0x3fe4956bff288ce0              # double 0.643239973407983
	.quad	0x3fd7de7aa20fa4d8              # double 0.37295404268531973
	.quad	0x3fe9d460ce5de22d              # double 0.8071750670051806
	.quad	0x3fe971fbb6c89b9b              # double 0.79516397190024024
	.quad	0x3fde48a57a05cff2              # double 0.47318398395805084
	.quad	0x3fe53ceaa6bd3c86              # double 0.66368610922099047
	.quad	0x3fd2321d7dc85e9a              # double 0.2843087890955559
	.quad	0x3feba28efec47143              # double 0.86359357604263953
	.quad	0x3fcb6d5010cd8a30              # double 0.21427346058324437
	.quad	0x3fe69969e3912dc8              # double 0.70622724959087524
	.quad	0x3fe44bb7bdc13608              # double 0.63424288808317986
	.quad	0x3fd00dfedc8e2216              # double 0.25085422075838559
	.quad	0x3fe7f23f07b84e7a              # double 0.74832107074548948
	.quad	0x3fdea0146c81b90a              # double 0.47852049442634892
	.quad	0x3fbdacbec0049390              # double 0.11591713130890313
	.quad	0x3fedb0e13daa9ec3              # double 0.92784177822337488
	.quad	0x3fefa394a51e5ed5              # double 0.9887183403943377
	.quad	0x3fc853e74c4bdeb8              # double 0.19006053185852578
	.quad	0x3fecd3698bdf2a37              # double 0.90080716437052544
	.quad	0x3fce8465e7cde348              # double 0.23841546839300976
	.quad	0x3fd48e9f26c43030              # double 0.32120493684556362
	.quad	0x3fdef52191676f5e              # double 0.48371161651242811
	.quad	0x3fd6810bfa15b032              # double 0.35162639067016521
	.quad	0x3fedfe95e9296d6a              # double 0.93732734240931603
	.quad	0x3fefa0cec1c98453              # double 0.988379839411332
	.quad	0x3fe2ef4fd51a2661              # double 0.59171287175668053
	.quad	0x3fe5fd16973799e8              # double 0.68714456114394995
	.quad	0x3fe4f00767a2d864              # double 0.65430040589741312
	.quad	0x3fcbacc8d955ade0              # double 0.21621046649975906
	.quad	0x3f788e9032a8cb80              # double 0.0059953339319233079
	.quad	0x3feba62052a02552              # double 0.86402908456617866
	.quad	0x3fd61a4faf12880e              # double 0.34535591217911665
	.quad	0x3feb13bb017e2f57              # double 0.84615850726684527
	.quad	0x3fe1bc030e149755              # double 0.55420067548832697
	.quad	0x3fd99801c68fe596              # double 0.39990276709394246
	.quad	0x3fdf395d8352b13a              # double 0.48787629913819652
	.quad	0x3fee8c9eb52374fe              # double 0.95466552141775174
	.quad	0x3fe6c851f01be803              # double 0.71195313354769529
	.quad	0x3fef8372bbfaa984              # double 0.98479592051198538
	.quad	0x3fe7dacb6276908d              # double 0.74545830947001124
	.quad	0x3fd4e2283a3f1e70              # double 0.3263035363019986
	.quad	0x3faa21a09d6c2740              # double 0.051037806717501244
	.quad	0x3fe4aedbc7755a44              # double 0.64634503323288373
	.quad	0x3fe3a1791d82809b              # double 0.61346107257488158
	.quad	0x3fc14c1beee31b88              # double 0.13513516582881047
	.quad	0x3fddce241c128b90              # double 0.46570685140084667
	.quad	0x3fecced1ad482313              # double 0.90024646610354109
	.quad	0x3fdb9c805daf803e              # double 0.43142708920459316
	.quad	0x3fd3f628837c29f8              # double 0.31189930763562712
	.quad	0x3fc1a8658c75d484              # double 0.13795155867015663
	.quad	0x3fe3d75d09c9598a              # double 0.62003948127203157
	.quad	0x3fd516592b171eae              # double 0.32948903282202024
	.quad	0x3fe86d602b8d66a2              # double 0.76335152155225594
	.quad	0x3fe2d931e61f4349              # double 0.58901305146910332
	.quad	0x3fef0b9911daa658              # double 0.97016576277855914
	.quad	0x3fecf9314bca89fc              # double 0.90541901400530333
	.quad	0x3fe8c906ca7a1aa2              # double 0.77453937097819314
	.quad	0x3fe9e8d1bc8a3026              # double 0.80967032264880312
	.quad	0x3fe10c82bf8f90f3              # double 0.53277718939037155
	.quad	0x3fc5456a90591574              # double 0.16618091629258525
	.quad	0x3fe2ba84381a6ad5              # double 0.58526812513022242
	.quad	0x3fd2f91f9e40b0b0              # double 0.29645529226651046
	.quad	0x3fd6064915eb4e0e              # double 0.34413363590758272
	.quad	0x3fb8934e693d6820              # double 0.095997715657546667
	.quad	0x3fd48e33d28f3988              # double 0.32117934763382339
	.quad	0x3fef69e06e364c3d              # double 0.98167439962197244
	.quad	0x3fe22516abc3fb50              # double 0.56702741191825545
	.quad	0x3fe43291e9579fbc              # double 0.63117309164680746
	.quad	0x3fe1743db8ead5ff              # double 0.54543958775201407
	.quad	0x3f9c1a40d2a99b80              # double 0.027443898065395711
	.quad	0x3fe5cdc052f04dd2              # double 0.68136612128221885
	.quad	0x3fe41046e4a14dba              # double 0.62698692945780654
	.quad	0x3fc9d958e05bcfdc              # double 0.20194540934573879
	.quad	0x3fe55e1d24be1908              # double 0.66773850609095664
	.quad	0x3fb707d051e46888              # double 0.089962978356569079
	.quad	0x3fe98e1cc8f38f72              # double 0.79859771011659419
	.quad	0x3fe52026f47b8db6              # double 0.66017482519639858
	.quad	0x3feb48caaf783a45              # double 0.85263571044362918
	.quad	0x3f8d82b5f89853c0              # double 0.014409467362421213
	.quad	0x3fbbf308dd1bc368              # double 0.10917716406016853
	.quad	0x3fc2414767695c24              # double 0.14261715459244428
	.quad	0x3fcc32e37122b430              # double 0.22030299209782944
	.quad	0x3fe0d9a9e04e0439              # double 0.52657026109239446
	.quad	0x3fe0c787649146a1              # double 0.52435655252539359
	.quad	0x3fe32cf9ae852b74              # double 0.59924015127158592
	.quad	0x3fd44cc2d83b04da              # double 0.31718512645973151
	.quad	0x3fdef2e0b66f8c10              # double 0.48357408348073339
	.quad	0x3fe980a6a75896d6              # double 0.79695446667457293
	.quad	0x3fe7f09aa818333e              # double 0.74812062102282773
	.quad	0x3fd5981c80ce6cf6              # double 0.33740913943047646
	.quad	0x3fea9838aa5374b0              # double 0.83108170763775568
	.quad	0x3fe672bbc83ab579              # double 0.70150555712977714
	.quad	0x3fbfab53d9d55ca0              # double 0.12370800083350497
	.quad	0x3fee545868c2c692              # double 0.94779606305219688
	.quad	0x3fd6f8ef91368270              # double 0.35894383603048308
	.quad	0x3fd7fa84545b97ca              # double 0.3746653388792508
	.quad	0x3fce971f1686b66c              # double 0.23898686027444016
	.quad	0x3fe642c2605a4321              # double 0.69564932650436984
	.quad	0x3fe970694eaaf8ce              # double 0.79497208943191722
	.quad	0x3fd9e631a05e6e6a              # double 0.404674917803027
	.quad	0x3fe549f8428700d8              # double 0.66527951234459248
	.quad	0x3fcb916fbce373c0              # double 0.2153758690173202
	.quad	0x3fecadb8d4fe63cd              # double 0.89620629883131075
	.quad	0x3fd54c2cbaa6c4fe              # double 0.33277433612518326
	.quad	0x3fd7554a45b305f2              # double 0.36458069616864386
	.quad	0x3fe16def5318f492              # double 0.54466978292443202
	.quad	0x3fed8e89f8f32f1e              # double 0.92364977477106769
	.quad	0x3f55efe54a780000              # double 0.0013389338654405947
	.quad	0x3fb8a8dbfe7f4820              # double 0.096326589234451365
	.quad	0x3fe0b53791cdf13d              # double 0.52212122418817553
	.quad	0x3fc559c757af6a80              # double 0.16680232793335747
	.quad	0x3fe02bd66bf145fb              # double 0.50535126764788119
	.quad	0x3fe444847f2d596b              # double 0.63336396064077627
	.quad	0x3f92f405e9f9b200              # double 0.018508999257777603
	.quad	0x3fe73a8565439a67              # double 0.72589368608607863
	.quad	0x3fecc527f48dbc8d              # double 0.89906690372835529
	.quad	0x3fd4e32a4e17ce1e              # double 0.3263650667788357
	.quad	0x3feb3b483ba0078f              # double 0.85098659177332248
	.quad	0x3fdbaf1917b1bc66              # double 0.43256213487524631
	.quad	0x3fea4bbaabc3191b              # double 0.82174428508077157
	.quad	0x3fe89d90625a5729              # double 0.7692338868098193
	.quad	0x3fdfe6d98ac0db96              # double 0.49846495199329277
	.quad	0x3fb0666ba76cdb10              # double 0.064062813163087151
	.quad	0x3fda004dfd47bbae              # double 0.40626859411616578
	.quad	0x3fe2716493717681              # double 0.57634190366270854
	.quad	0x3fb9f86ab46905e8              # double 0.10144678978487998
	.quad	0x3fc2cbdc8dfe3060              # double 0.14684636052368472
	.quad	0x3fcd691d25db0cd0              # double 0.22977032040043932
	.quad	0x3fb7f703966b0e48              # double 0.093612884734335045
	.quad	0x3fd6080670a02454              # double 0.34423981665219583
	.quad	0x3fe9f4472c4abf83              # double 0.81106909418848294
	.quad	0x3fd56c7be81cd8c6              # double 0.33474633853201075
	.quad	0x3fedf4e6360e2a39              # double 0.93614492948228822
	.quad	0x3f88342c651a23c0              # double 0.011818262896911125
	.quad	0x3fe3b9aeadb23ad1              # double 0.61641630101243028
	.quad	0x3fc93eca1435b260              # double 0.19722867953113887
	.quad	0x3fcc97e4051c52f0              # double 0.22338533639472002
	.quad	0x3fe5bd93b2a53312              # double 0.67939171687757693
	.quad	0x3fe6cb8ab292659a              # double 0.7123464095813461
	.quad	0x3fc773e3915a792c              # double 0.18322414967855971
	.quad	0x3fdd641cbeb869e8              # double 0.45923536896739714
	.quad	0x3fd1a797154b540a              # double 0.27585389213101108
	.quad	0x3fea2aaa64ecb234              # double 0.81770820342860028
	.quad	0x3fe852c1ec55a263              # double 0.76010223540386013
	.quad	0x3feb65d43d5abb77              # double 0.85618030532155742
	.quad	0x3fdfa28312aebcd0              # double 0.49429394554586015
	.quad	0x3fcd9e5470533d60              # double 0.23139434322954866
	.quad	0x3fcba8c2e4474b80              # double 0.21608768602763107
	.quad	0x3fda657bb9bf48be              # double 0.41244404925704348
	.quad	0x3fda5624acbe8d82              # double 0.41150776738705741
	.quad	0x3fd0007a91cb5fd2              # double 0.2500292228482951
	.quad	0x3fed5f37b7c5abf3              # double 0.91787324803351422
	.quad	0x3fe30e9c9a52ce27              # double 0.5955336584215204
	.quad	0x3fe532462939ab40              # double 0.66238697101412214
	.quad	0x3feddc43f21818a9              # double 0.93313786777504959
	.quad	0x3fdcd686a8c9b0d2              # double 0.45059362872303865
	.quad	0x3fc6c17fc76e7880              # double 0.17778012502543916
	.quad	0x3fdb8b1b21775e48              # double 0.43036535518829
	.quad	0x3fe31e6b39a74a72              # double 0.59746323833890203
	.quad	0x3f9aa006e7e5c620              # double 0.026001079467681376
	.quad	0x3fe240ad014a3977              # double 0.5703949952310684
	.quad	0x3fe82affe1d21406              # double 0.75524896722402057
	.quad	0x3fe8119e096f87d4              # double 0.75215055315879419
	.quad	0x3fe048a0951933dd              # double 0.50886563416281272
	.quad	0x3fe40b851023cc4f              # double 0.62640622284232872
	.quad	0x3fe388502f4f1421              # double 0.61038979759235101
	.quad	0x3febe140d59fbeca              # double 0.8712467357963416
	.quad	0x3fc28f8a63e40978              # double 0.14500551106909731
	.quad	0x3fe980c18e2eade1              # double 0.79696729440678038
	.quad	0x3f9154798d8cda20              # double 0.016923808350123193
	.quad	0x3fe8d3141e264e3b              # double 0.77576642883872837
	.quad	0x3fe48afa9f91afd4              # double 0.6419652096351407
	.quad	0x3fb86bbb5ed17e78              # double 0.095393858574874701
	.quad	0x3fe2c74f9b8a34b8              # double 0.58682995203857669
	.quad	0x3fe2dfeda7058de7              # double 0.58983500119614696
	.quad	0x3fd37cb7ea202204              # double 0.30448720802135676
	.quad	0x3fd045470ac5d846              # double 0.25422836353334721
	.quad	0x3feb04c2982501e0              # double 0.84433107105001781
	.quad	0x3fe5ebce2316198f              # double 0.68503481724546755
	.quad	0x3fe14c0cba333006              # double 0.54053341262033494
	.quad	0x3fef1c585de87495              # double 0.97221010533725638
	.quad	0x3fe463b8c9534f1f              # double 0.63717307397243761
	.quad	0x3fe480557a2aee3e              # double 0.64066575871351694
	.quad	0x3fe0cb863cddceed              # double 0.52484428298927599
	.quad	0x3fd1fe1c2b9dd9f4              # double 0.28113464602884553
	.quad	0x3fe1ba67a825e6d4              # double 0.55400450555245095
	.quad	0x3fdf0befd1f3c45e              # double 0.48510356429239276
	.quad	0x3fe1c6df2eb6495e              # double 0.55552634356926567
	.quad	0x3feea132252dc7bc              # double 0.95717723142137556
	.quad	0x3fe8baf7369bb27d              # double 0.7728229586187606
	.quad	0x3fe8d2038becc729              # double 0.77563645676693682
	.quad	0x3fe07fb82f066b89              # double 0.51559075531564347
	.quad	0x3fe62a755be2b74c              # double 0.69268291422279438
	.quad	0x3fcb0e66fc7e86fc              # double 0.21137702301808037
	.quad	0x3fea2ea01a7f5996              # double 0.81819157767567918
	.quad	0x3fc81650219af9fc              # double 0.18818093911063716
	.quad	0x3fee519c1f0955d6              # double 0.94746213971910254
	.quad	0x3fb0d2c9fe9179c0              # double 0.065716385508017616
	.quad	0x3fbe6985d4307778              # double 0.11879764967349427
	.quad	0x3fefb3461615841f              # double 0.99063400567331771
	.quad	0x3feb9df30a3e6348              # double 0.86303092957232597
	.quad	0x3fcb650ff74be5a8              # double 0.21402167868636224
	.quad	0x3fddcd5412dda588              # double 0.46565725176204653
	.quad	0x3fdeebda92bc54f0              # double 0.48314537362723708
	.quad	0x3fcca3b14bee1228              # double 0.22374550063627052
	.quad	0x3feb8509a57e5b39              # double 0.85998995135273681
	.quad	0x3fd9b8078f5d4298              # double 0.40185727119846026
	.quad	0x3fdb3971f7d0dd6a              # double 0.42538117600221048
	.quad	0x3fea8fcf9253fb7a              # double 0.83005503253649171
	.quad	0x3fc3d8eba46ffcb4              # double 0.15505738763019894
	.quad	0x3fbaef1c4bf13d90              # double 0.10521103719769642
	.quad	0x3fb15d2c2ba78120              # double 0.067827950151244654
	.quad	0x3fcd88adb46876b8              # double 0.23073359784114245
	.quad	0x3fcc4f4c0f257b6c              # double 0.22116995563097974
	.quad	0x3fd6dbbe5f425d6e              # double 0.3571620874658582
	.quad	0x3fba22fb5d0f56f0              # double 0.10209628126116477
	.quad	0x3fe6a15eb3b4ba19              # double 0.70719847773381439
	.quad	0x3fa95973f559aff0              # double 0.049510596942894725
	.quad	0x3fc0413e79032cfc              # double 0.12699108990486951
	.quad	0x3fd665bb523b1990              # double 0.34995921163899713
	.quad	0x3fe278062eef3e23              # double 0.57715138594534598
	.quad	0x3f99b3d40aeae3a0              # double 0.025100052992204192
	.quad	0x3fe1cc3a4f5f6fc7              # double 0.55618014814853545
	.quad	0x3fd11e7cc9ad49d2              # double 0.26748580641756547
	.quad	0x3fdad73338c0e5d8              # double 0.41938477079710657
	.quad	0x3fe6bfce366461b0              # double 0.71091375945530011
	.quad	0x3fcc69f492721274              # double 0.22198350096381925
	.quad	0x3feddca726c29660              # double 0.93318517275174528
	.quad	0x3fd35474e39078f2              # double 0.3020298216159879
	.quad	0x3fd5329dd8f1b0e8              # double 0.33121439157436194
	.quad	0x3fcf0251872ed604              # double 0.24225825405817158
	.quad	0x3fe49bf4bf14b1b1              # double 0.64403760261989451
	.quad	0x3fd8cfaebded5e1c              # double 0.38767593906001863
	.quad	0x3feefd21a7720033              # double 0.96839983657992545
	.quad	0x3fd30063eac560fc              # double 0.29689882208687357
	.quad	0x3fe5b411eac680df              # double 0.67823119978495672
	.quad	0x3fefb4d59e7c6334              # double 0.99082451776766911
	.quad	0x3fedb1fc12cfbb93              # double 0.92797664331543428
	.quad	0x3fc3576ca66375a8              # double 0.15110548138083613
	.quad	0x3fcd0d00a83378c8              # double 0.22695930684034793
	.quad	0x3fd90ce398e758ec              # double 0.39141168529512416
	.quad	0x3fee7dba9328148e              # double 0.95284775487438522
	.quad	0x3fe1c5aa7cb1e157              # double 0.55537914614164208
	.quad	0x3fd5f1e548d72db6              # double 0.34288913834890467
	.quad	0x3fe4937f272e6862              # double 0.64300496723741341
	.quad	0x3fe3f1ab50d2c850              # double 0.623250635011809
	.quad	0x3fe48a55918f869b              # double 0.64188650541128156
	.quad	0x3fe6fb1fe712bc1f              # double 0.71815486079674773
	.quad	0x3fc72319f45d0638              # double 0.18075870925717807
	.quad	0x3fe1abd6ad7bb8d7              # double 0.55222638972716254
	.quad	0x3fad9c54018e4680              # double 0.057833314123070245
	.quad	0x3fe78a333ad5a044              # double 0.73562013140782101
	.quad	0x3fd4216d646d9d48              # double 0.31454024131240432
	.quad	0x3fdea65075c859f2              # double 0.47890101911744332
	.quad	0x3fec5e7566fb3c7c              # double 0.88653059114029941
	.quad	0x3fe441d04a98e40e              # double 0.63303389138957455
	.quad	0x3fe4f8dbd858207d              # double 0.65537826781020636
	.quad	0x3fe28d883f4a4d55              # double 0.5797768818032788
	.quad	0x3fe644aa9b229ca5              # double 0.69588213252872733
	.quad	0x3feada84ce516c51              # double 0.83917465492721466
	.quad	0x3fe1644dd70dd72b              # double 0.54349414828059162
	.quad	0x3fe829b13eb2f7fb              # double 0.75508939977566969
	.quad	0x3fcbf95ead415668              # double 0.21854766330459374
	.quad	0x3fe2cd0200a42930              # double 0.58752536893124407
	.quad	0x3feecf5e368a1571              # double 0.9628134789679007
	.quad	0x3fd14adc3c10fa42              # double 0.27019410959102086
	.quad	0x3fe8e234732fc1f1              # double 0.77761290070890088
	.quad	0x3fe7f7889bcd58ee              # double 0.7489665072451126
	.quad	0x3fd24fc90d16913a              # double 0.28611971166744221
	.quad	0x3fe854e6f71d0bce              # double 0.76036403908107686
	.quad	0x3fee7eda1e96b803              # double 0.95298486685146633
	.quad	0x3fa6f0e51ae0b580              # double 0.044806632548310965
	.quad	0x3feb0601ab565303              # double 0.84448321785257041
	.quad	0x3fe35ad7d271699a              # double 0.6048392400946796
	.quad	0x3fc6e240ead5b408              # double 0.17877971140424642
	.quad	0x3fee6cc0a6d3ad74              # double 0.95077545722362666
	.quad	0x3fb45c0d65693ff8              # double 0.079529607065751295
	.quad	0x3fe52e9b0c17c608              # double 0.66193916665923869
	.quad	0x3fd9652743814b78              # double 0.3967989119748192
	.quad	0x3fe74bfba29f7f9a              # double 0.72802526247322707
	.quad	0x3fe3b33ce1f8e6ab              # double 0.61562961707314423
	.quad	0x3fdc4ffe33a562fc              # double 0.44238238376196626
	.quad	0x3febde2a0694a88b              # double 0.87086964879314743
	.quad	0x3fdc6e8b428db6f4              # double 0.44424706935283997
	.quad	0x3fd8bd3dfb247e36              # double 0.38655042195930223
	.quad	0x3fe6c467f57e88eb              # double 0.71147535274601859
	.quad	0x3fd1483cddf903c8              # double 0.27003404309294554
	.quad	0x3fbdf144d4fa81e0              # double 0.11696272086783877
	.quad	0x3faa8d6922f1d880              # double 0.051860127940856593
	.quad	0x3fe0f9f9a859e77c              # double 0.53051455384341706
	.quad	0x3f955dd5541b60e0              # double 0.020865758188706063
	.quad	0x3fe9dedab6aa68c9              # double 0.80845390011679641
	.quad	0x3fd0ca2a1472aa3a              # double 0.26233913418642241
	.quad	0x3feaac67ff486f9b              # double 0.83354568347884894
	.quad	0x3fb3dece1a824b30              # double 0.077618485900796896
	.quad	0x3fe63eee1a1c8950              # double 0.69518189525505569
	.quad	0x3fdf73fff136d608              # double 0.4914550643546538
	.quad	0x3fe9b034f578855b              # double 0.80275962775719323
	.quad	0x3fd50bc3eb2df2fa              # double 0.32884309736964179
	.quad	0x3fd0280e68956d2c              # double 0.25244484151126545
	.quad	0x3fb56b07306853e0              # double 0.083664368932957256
	.quad	0x3fe89801a4e2018b              # double 0.76855547145537295
	.quad	0x3fe3a812d5960cec              # double 0.61426679340402535
	.quad	0x3fe11e9343515584              # double 0.53498232982626392
	.quad	0x3fd6fa547ae0aad6              # double 0.35902893066183361
	.quad	0x3f9f4a4c386a79c0              # double 0.030556860869745739
	.quad	0x3fd15e4bef1e3a0c              # double 0.27138040877699221
	.quad	0x3fe909ed77a5018c              # double 0.78246186607434387
	.quad	0x3feb133862cd5f85              # double 0.84609622285187014
	.quad	0x3fda83d9eb6fbaec              # double 0.41429756156769204
	.quad	0x3fe0d7261540ba43              # double 0.52626327658601502
	.quad	0x3fd2f8c7284c6158              # double 0.29643420157801392
	.quad	0x3fea6c0150d856b7              # double 0.82568422117284157
	.quad	0x3fc09b6320d1e668              # double 0.12974204161200764
	.quad	0x3fc976adfd92d53c              # double 0.19893431550523555
	.quad	0x3fee01447df4ddf8              # double 0.93765472985154385
	.quad	0x3fd54061138023bc              # double 0.33205439476347087
	.quad	0x3fd89a7eb2ac267a              # double 0.38442962120516422
	.quad	0x3fec298a772d5251              # double 0.88007090832486246
	.quad	0x3fdc6e48ad5e2e5a              # double 0.44423119478662942
	.quad	0x3feeff848aec21ad              # double 0.96869113095549652
	.quad	0x3fc7f4388b864d14              # double 0.18714052975392603
	.quad	0x3fe0a7bd0e3f1a10              # double 0.52047589094655855
	.quad	0x3fe51662f64ed1d2              # double 0.65898273570069876
	.quad	0x3f94b596b06ec380              # double 0.020223955648990266
	.quad	0x3fe8cd011d2665de              # double 0.77502494519574916
	.quad	0x3fedc8baea57d4a9              # double 0.93075319070944318
	.quad	0x3fce9eccad4555ac              # double 0.23922117672434007
	.quad	0x3fe51972c803a057              # double 0.65935648980395001
	.quad	0x3fdd7b69091dd9b0              # double 0.46065736666005375
	.quad	0x3fee5fa0b9aedcdc              # double 0.94917331949445893
	.quad	0x3fde094f4d76b5d4              # double 0.4693182236177027
	.quad	0x3fa87610a81fa5c0              # double 0.047775764964011369
	.quad	0x3fd1c67f9928f464              # double 0.27774038273839197
	.quad	0x3fcc59278718e8a8              # double 0.22147077652500013
	.quad	0x3feeec6b5ad28de6              # double 0.96635978449597526
	.quad	0x3feed48c067b4514              # double 0.96344567552492543
	.quad	0x3fdb7fa66e2c5fce              # double 0.4296661449347966
	.quad	0x3fdabc8b8024a5a6              # double 0.41775786890010591
	.quad	0x3fe019c6d81a4f10              # double 0.50314657409259844
	.quad	0x3fe6561b72613cb3              # double 0.69801113452731156
	.quad	0x3fd188bc5d435e82              # double 0.27397069080095815
	.quad	0x3fd4eb9d1c42b96a              # double 0.32688071975544253
	.quad	0x3fec3ac3d9c79e6a              # double 0.88217346701726496
	.quad	0x3fe602691f9e8c72              # double 0.68779426742220395
	.quad	0x3fbf8ea8c2659538              # double 0.12327055688873123
	.quad	0x3fd58166af3e0fa8              # double 0.33602301705854609
	.quad	0x3fee1856188d97f3              # double 0.94047074122931773
	.quad	0x3fea1d1c6446f890              # double 0.81605357728382621
	.quad	0x3fd3111e534fdce0              # double 0.29791982780393589
	.quad	0x3fe3e506fab1279e              # double 0.62170742953570701
	.quad	0x3fe0fe63ca180eab              # double 0.53105344268302213
	.quad	0x3fe8f3c7b927b8c2              # double 0.77975832141034851
	.quad	0x3fd20107f8a964ae              # double 0.28131293567055138
	.quad	0x3fe456ab9956ad8d              # double 0.63557987164442553
	.quad	0x3fdbc8c8440d8e3a              # double 0.43412977834507027
	.quad	0x3f61e55e74022300              # double 0.0021845669544443558
	.quad	0x3fcbb366f2eba49c              # double 0.21641241895057284
	.quad	0x3fe75defad945dc0              # double 0.73021682646042763
	.quad	0x3fd808072b2535e2              # double 0.37548999036229536
	.quad	0x3fcc44e10a5ff1f4              # double 0.22085202223378497
	.quad	0x3fe30f5cb8336094              # double 0.5956252668065809
	.quad	0x3fee0c2f3d606d45              # double 0.93898736941938721
	.quad	0x3fe08d362cf534a8              # double 0.51723774700953573
	.quad	0x3fc67670a00fd934              # double 0.17548950019381382
	.quad	0x3fa78847ac6af5a0              # double 0.045961608693214417
	.quad	0x3fd07c4cfee7596c              # double 0.25758671658458954
	.quad	0x3fe3e415dfab9f6b              # double 0.62159246144891023
	.quad	0x3fdaff3d40da1ffc              # double 0.42182856877525388
	.quad	0x3fe2864844e839ab              # double 0.57889188249992196
	.quad	0x3fee75e1387cb663              # double 0.95188962013862655
	.quad	0x3fe791820804e69b              # double 0.73651219907988563
	.quad	0x3fec94b3bb474b94              # double 0.89315210893470231
	.quad	0x3fe88addcb6f900c              # double 0.76695146306565353
	.quad	0x3fce2cfd1ad0df78              # double 0.23574794587488745
	.quad	0x3fba46fe8e143698              # double 0.1026457878944832
	.quad	0x3fa6ff75704b34b0              # double 0.044917745549903798
	.quad	0x3fe42b1a2d9104a2              # double 0.63026150607779052
	.quad	0x3fb504092f318c38              # double 0.082092832586156628
	.quad	0x3fdb55a5a9855080              # double 0.42710248522531202
	.quad	0x3fecff72c813d9ec              # double 0.9061826617970019
	.quad	0x3fefcf3579681201              # double 0.99404405319415911
	.quad	0x3fbc31cdae0eaeb8              # double 0.1101349401421271
	.quad	0x3feea932ae1f53ea              # double 0.95815404899860579
	.quad	0x3fb2b48ffab9d608              # double 0.073067663872130706
	.quad	0x3fda995dab9b3c4c              # double 0.41561071165501029
	.quad	0x3fef9e0791a421b0              # double 0.98804071851286857
	.quad	0x3fe1c4025a19c967              # double 0.55517690275000298
	.quad	0x3fe55e1e98ba81f8              # double 0.66773919896883083
	.quad	0x3fa8586152260950              # double 0.047549287107374938
	.quad	0x3fe915ae39cc3d87              # double 0.78389655388484492
	.quad	0x3fdfa14345b6923a              # double 0.4942176991264976
	.quad	0x3fc310f6e87f9da4              # double 0.14895521500077991
	.quad	0x3fd21c8fb7c05dae              # double 0.28299324936366588
	.quad	0x3fc1670ade513f88              # double 0.13595710616436585
	.quad	0x3fed8e659e0dfc3f              # double 0.92363243932766881
	.quad	0x3fc5d07f4fcb0e88              # double 0.17042533298637275
	.quad	0x3fe2619565c4e310              # double 0.57441205860877353
	.quad	0x3fe1b994ac509660              # double 0.55390390067323025
	.quad	0x3faebe36aa5b9a40              # double 0.060044964118607158
	.quad	0x3fe5c906d723909d              # double 0.68078939456292498
	.quad	0x3fdbde7c22fc6482              # double 0.43545440117447509
	.quad	0x3fd3581ba95ebf3e              # double 0.30225268878983858
	.quad	0x3fcd04876e4d81f8              # double 0.22670071493031663
	.quad	0x3fdd4c59416f58f0              # double 0.45778495206958691
	.quad	0x3fb657141ccbcb00              # double 0.087266213445939655
	.quad	0x3fe52aa1bf028793              # double 0.66145407969109937
	.quad	0x3feb96c699a21257              # double 0.86215524679625843
	.quad	0x3fee123e56450c08              # double 0.93972699021867445
	.quad	0x3fe4ed89d84f91e2              # double 0.65399639366347295
	.quad	0x3fb613adf82df668              # double 0.086237786379535941
	.quad	0x3fe592180a625f36              # double 0.67408372905899827
	.quad	0x3fdac65395315480              # double 0.41835488862609083
	.quad	0x3fe0298cc7461e44              # double 0.50507201119121037
	.quad	0x3fdb13c2cc90a834              # double 0.42308111168916018
	.quad	0x3febd4617d9ab08f              # double 0.86967539341050493
	.quad	0x3fb4a21fb073a408              # double 0.080598812655480967
	.quad	0x3fe221764e08e675              # double 0.56658473244824725
	.quad	0x3fda1953b097afee              # double 0.40779583211292347
	.quad	0x3fc87c37c1dacd64              # double 0.19129082646905282
	.quad	0x3fdaf30063a44f92              # double 0.42108163576744417
	.quad	0x3fe4bb669b308416              # double 0.64787607489063492
	.quad	0x3fe7afed00935ea1              # double 0.74022531616624943
	.quad	0x3fe5be570feef15c              # double 0.67948487388597867
	.quad	0x3fd02457340dc5d8              # double 0.25221805652026097
	.quad	0x3feffb91fccb4902              # double 0.99945926069111146
	.quad	0x3fd3d896456f6cde              # double 0.31009442120348563
	.quad	0x3fe9390f7746fae3              # double 0.78821538254109347
	.quad	0x3fd69f7fb2dc255a              # double 0.35348503557960032
	.quad	0x3feb7646cb19c389              # double 0.8581880537804959
	.quad	0x3fd5dc409e0c2d12              # double 0.34156814035732552
	.quad	0x3fcfa87ae2385e74              # double 0.24732910200031066
	.quad	0x3feb7adde75444cb              # double 0.85874839002112802
	.quad	0x3f91c50e81183180              # double 0.01735327399187403
	.quad	0x3fdbd7c06146dcf8              # double 0.43504342555702591
	.quad	0x3fe5ecfb71e3cef8              # double 0.68517849201313563
	.quad	0x3fe40a78a5d8d41a              # double 0.62627823249806913
	.quad	0x3fec4481e24d3a00              # double 0.88336271476310912
	.quad	0x3fed92a9bc7fe471              # double 0.9241532022125637
	.quad	0x3fe74c43e012a28a              # double 0.72805970920769991
	.quad	0x3fc0546cc91d5350              # double 0.1275764448170329
	.quad	0x3fdb1356c6cd255a              # double 0.42305535711473896
	.quad	0x3fe479a5f28be2a4              # double 0.63984963772152925
	.quad	0x3fd6db9d1875cc54              # double 0.35715415371595793
	.quad	0x3fe144d192543853              # double 0.53965071277503751
	.quad	0x3f92b687834ac180              # double 0.018274419201306014
	.quad	0x3fc9e748d5f6839c              # double 0.20237074324998339
	.quad	0x3fcee66e38052678              # double 0.24140718207700096
	.quad	0x3feafd32728700a6              # double 0.84340784424422988
	.quad	0x3fe97a9e1b614e98              # double 0.79621796939541678
	.quad	0x3fe576d1d55f7202              # double 0.67075435327893751
	.quad	0x3fd196eae40ed59c              # double 0.27483627578052405
	.quad	0x3fe91dd9e7dfa211              # double 0.7848939446240043
	.quad	0x3fdb7271b62ecfe0              # double 0.42886011878294816
	.quad	0x3fd004fcf094f470              # double 0.25030444616624603
	.quad	0x3fef4ac76c6b7180              # double 0.97787829566691187
	.quad	0x3f9486add21daf00              # double 0.020045009564838345
	.quad	0x3fc3d50a45c66d94              # double 0.15493896872508783
	.quad	0x3feca88a65b23e04              # double 0.89557380545187514
	.quad	0x3fa4717e74d66d70              # double 0.039928390276339765
	.quad	0x3fdb1dd693bf59c0              # double 0.42369617870772558
	.quad	0x3fee4353ee790337              # double 0.94571873261165862
	.quad	0x3fefa4870ed73c45              # double 0.98883393190943336
	.quad	0x3fef20019ddb46b5              # double 0.97265702086789096
	.quad	0x3faa8bb8025bab20              # double 0.051847219741679718
	.quad	0x3fe5268b1ca4ece2              # double 0.66095500559404408
	.quad	0x3fdc84d1c94381e8              # double 0.44560665754946038
	.quad	0x3fbc25b1c9adfe80              # double 0.10995017217464387
	.quad	0x3fa40bb7e9981b50              # double 0.039151904358780798
	.quad	0x3fe7f8de37f117cd              # double 0.74912939954878655
	.quad	0x3fd98d303da3b74c              # double 0.39924245852931928
	.quad	0x3fec3b3d333d3459              # double 0.88223133094437423
	.quad	0x3fd25635fe97b390              # double 0.28651189673001287
	.quad	0x3fd237c603c3ead0              # double 0.28465414397912259
	.quad	0x3fe0710c47e61acd              # double 0.51379980128043601
	.quad	0x3fe0eeb7b766c69d              # double 0.52914033718680609
	.quad	0x3fe96b8e296af7a0              # double 0.79437931146070539
	.quad	0x3fc123a1ba5a0820              # double 0.13389989470675889
	.quad	0x3fcf1570baeb4e1c              # double 0.24284180762207164
	.quad	0x3fcc76da2c369758              # double 0.2223770824322695
	.quad	0x3fe3da169b6b1e76              # double 0.62037210803187182
	.quad	0x3fe87d9e9283437f              # double 0.76533440223475668
	.quad	0x3fdfe5bb3e426838              # double 0.49839669303912926
	.quad	0x3fd230663a798d4a              # double 0.28420406065398096
	.quad	0x3fe7d0cd6dc35228              # double 0.74423858106689966
	.quad	0x3fbcdddaa8947c08              # double 0.11276022544596753
	.quad	0x3fccabe3cc5fb6c8              # double 0.22399566153710837
	.quad	0x3fd9476f65525c8e              # double 0.39498505491923985
	.quad	0x3fbaeb6c0beec3f8              # double 0.10515475550961628
	.quad	0x3fe9fa08f20dbe82              # double 0.81177184368239375
	.quad	0x3febf280bdc3ad1f              # double 0.87335240424491534
	.quad	0x3fe2539ba9089609              # double 0.57270606054652362
	.quad	0x3fa6e6d22c27dcc0              # double 0.044729774370290354
	.quad	0x3fefd92059a5cb93              # double 0.99525468358329971
	.quad	0x3fc48c67c640bb98              # double 0.16053483181300687
	.quad	0x3fe9e5abcd94398a              # double 0.80928602363728541
	.quad	0x3fd30b3ffecd276a              # double 0.29756164439151311
	.quad	0x3fa7ad1cbb03dd10              # double 0.046242616490355215
	.quad	0x3fea78d8f38ae411              # double 0.82725188795950733
	.quad	0x3fbbc66d50297910              # double 0.10849650580482639
	.quad	0x3fe82da3a78d1362              # double 0.75557120060748795
	.quad	0x3fd54741dfec345e              # double 0.33247420184563292
	.quad	0x3fb9608949432808              # double 0.09912927664404958
	.quad	0x3fe75daf1fbc49bd              # double 0.73018604467716097
	.quad	0x3fe9f7a590eef985              # double 0.81148031527827469
	.quad	0x3fd58f5656075b74              # double 0.33687361146205963
	.quad	0x3fcc8c8acd35e7e4              # double 0.22303900737807603
	.quad	0x3fef98bd22f8a677              # double 0.98739487486200416
	.quad	0x3fec6ea7e8900f65              # double 0.88850779936226998
	.quad	0x3fde901c2609160a              # double 0.47754577364352768
	.quad	0x3feb770d2a50df66              # double 0.85828264489007888
	.quad	0x3fe88754424d64b7              # double 0.76651967000648014
	.quad	0x3fcbfc5cb48e2334              # double 0.21863898101971702
	.quad	0x3fcb461424e7f3d4              # double 0.21307613184026641
	.quad	0x3fc7daf2165ddb18              # double 0.18636919109459238
	.quad	0x3fe192531df3ecd3              # double 0.54911189890062884
	.quad	0x3fe7e4dfadc767f7              # double 0.74668868962476054
	.quad	0x3fc4c81095ffbfc4              # double 0.1623554928223695
	.quad	0x3fe8f3738ef1df20              # double 0.77971818846615192
	.quad	0x3fbd1806e90a5420              # double 0.11364787282430244
	.quad	0x3fd3b281b7ad506a              # double 0.30777018487174834
	.quad	0x3fed7c57222e3a27              # double 0.92142826724904558
	.quad	0x3fd3796c19de4f26              # double 0.3042860272046134
	.quad	0x3fee448f605196ed              # double 0.94586914837119951
	.quad	0x3fdfbac115a3dc0a              # double 0.49577357400215816
	.quad	0x3fe0921c7706eabd              # double 0.51783583877052985
	.quad	0x3fefbbe6b14856b2              # double 0.99168715119841111
	.quad	0x3fe88792da023a63              # double 0.76654951648545155
	.quad	0x3fe18e866a2badde              # double 0.54864807831239282
	.quad	0x3fdc04a797eca7d2              # double 0.4377840980183666
	.quad	0x3feda06765f3a1b3              # double 0.92583055412710846
	.quad	0x3fe77fd0ce07c06f              # double 0.73435249557770799
	.quad	0x3fda9b794f441832              # double 0.41573937168903108
	.quad	0x3fb726151bdf1500              # double 0.090424842171234587
	.quad	0x3fbfcd23fea121a0              # double 0.12422394720591123
	.quad	0x3f8b988f7272e980              # double 0.013474579506113527
	.quad	0x3f97aa7f083c2e40              # double 0.023111328961972655
	.quad	0x3fc63fbd0321cd70              # double 0.17382013943607033
	.quad	0x3fae365dfc847630              # double 0.05900853831756725
	.quad	0x3fd7c8de3da41db0              # double 0.37163501758228801
	.quad	0x3fdca27322e53d7c              # double 0.44741514594803511
	.quad	0x3fee5a2d3869a672              # double 0.94850789087395371
	.quad	0x3fc8c00bbba95088              # double 0.1933607736888272
	.quad	0x3fc41535dac0b600              # double 0.15689728909767098
	.quad	0x3fe31bcfcd127509              # double 0.59714498570579722
	.quad	0x3fe776d5a7be2407              # double 0.73325617563489309
	.quad	0x3fe617777a8c3f11              # double 0.6903645890724609
	.quad	0x3fdba487553021d2              # double 0.43191703147070115
	.quad	0x3feb5b62582b825e              # double 0.85490529270834847
	.quad	0x3fd83fb52c28f262              # double 0.37888840973372429
	.quad	0x3fe9a6a71de066b9              # double 0.80159335932986331
	.quad	0x3fb72747e665bd10              # double 0.090443128346795242
	.quad	0x3feaec54f9f180d8              # double 0.84134911362709897
	.quad	0x3fd068dc92534cb4              # double 0.2564002446135405
	.quad	0x3fe39bc18e31ee5b              # double 0.61276319286794079
	.quad	0x3fe07d6b1472c861              # double 0.515309848726485
	.quad	0x3fe03571176da58c              # double 0.50652365279999989
	.quad	0x3fdd8ffd71ecb414              # double 0.46191345334483569
	.quad	0x3fe8a34569fe285f              # double 0.76993056012839733
	.quad	0x3fe99439613a85f9              # double 0.79934376707041033
	.quad	0x3fed9422ae5d7182              # double 0.92433294349352502
	.quad	0x3fccda34cbe60d1c              # double 0.22540912586200867
	.quad	0x3fb5e2ed423d0520              # double 0.085493878051256633
	.quad	0x3fda8ade0df5c0be              # double 0.41472579348829786
	.quad	0x3feb36eacafe6adc              # double 0.85045375487547003
	.quad	0x3febd2c4b88622a6              # double 0.86947856941067836
	.quad	0x3fc3bb00c1192480              # double 0.15414437702773753
	.quad	0x3fd99766643e910e              # double 0.39986572064869186
	.quad	0x3fe784cc9f9024dc              # double 0.73496085323963767
	.quad	0x3feaa5974f31f447              # double 0.83271375148582016
	.quad	0x3fb3707e336e5648              # double 0.075935256534955475
	.quad	0x3fe38bbeb3fd592b              # double 0.61080870775439189
	.quad	0x3fdfb2214206e1cc              # double 0.49524718711793692
	.quad	0x3fdbc7ca17f8f87e              # double 0.43406917897289776
	.quad	0x3f907ce76b2d7400              # double 0.016101470867727841
	.quad	0x3fe5f3e146f9a2dc              # double 0.68602050649959834
	.quad	0x3fe307e90623a876              # double 0.59471560668067869
	.quad	0x3fee0fa13065bbc4              # double 0.9394079156171462
	.quad	0x3fe8e569a737b464              # double 0.77800448093115592
	.quad	0x3fead15194b7188d              # double 0.83805159612599456
	.quad	0x3fead76ba195f674              # double 0.83879643974041906
	.quad	0x3fb9e44850394f60              # double 0.10113956411924852
	.quad	0x3fee905f0617d409              # double 0.95512343587927362
	.quad	0x3fdfa01c6d539cdc              # double 0.49414740253855682
	.quad	0x3fee7cb968e4466a              # double 0.95272512900028272
	.quad	0x3fe909f44880c9c2              # double 0.78246511612660918
	.quad	0x3fdc386dc48c7b5a              # double 0.44094413942541666
	.quad	0x3fc4e2e9d6827b5c              # double 0.16317484830957596
	.quad	0x3fe0c9c65b818404              # double 0.52463071701288344
	.quad	0x3fc19c14cf4f3210              # double 0.13757572290923337
	.quad	0x3fbfb50cf8753c68              # double 0.12385636392467492
	.quad	0x3fbcfd1bd57b6720              # double 0.11323713266338276
	.quad	0x3feed18f2dc19281              # double 0.96308096825357847
	.quad	0x3fefa86bf43f351b              # double 0.98930928902123882
	.quad	0x3f5b8eb729926400              # double 0.0016819752402510435
	.quad	0x3f68b5c2a76fef00              # double 0.0030163575970599821
	.quad	0x3fb6cda2d203a548              # double 0.089075256608016962
	.quad	0x3fe1e6dd61f6a75e              # double 0.5594317353581848
	.quad	0x3fd91e2e0afe5fb8              # double 0.39246703218077128
	.quad	0x3feae61cc8698382              # double 0.84058989661217276
	.quad	0x3fd72f75ebd10a2e              # double 0.36227176693879215
	.quad	0x3fe6840edbb53cfa              # double 0.70362036620818391
	.quad	0x3fea0d39b87b1750              # double 0.8141144374028304
	.quad	0x3fe1f213f988495b              # double 0.56080054032126314
	.quad	0x3fbd2b2678011638              # double 0.11393967084685463
	.quad	0x3fdc341fd4f27986              # double 0.44068141742345579
	.quad	0x3fb33140ae18b058              # double 0.074970285896314492
	.quad	0x3feeda2a30cef383              # double 0.96413144619837998
	.quad	0x3fe4ffbc8934ad41              # double 0.6562178306389016
	.quad	0x3fd3715864523cfc              # double 0.3037930469226493
	.quad	0x3fdf3bba84bfaee0              # double 0.48802054370638182
	.quad	0x3fe9af1cb5f9b686              # double 0.80262599508360277
	.quad	0x3fe09ae3fb86a127              # double 0.51890753866340311
	.quad	0x3fc3718fcaedd260              # double 0.15190312775270609
	.quad	0x3fb70d6c96d053c0              # double 0.090048586673517228
	.quad	0x3fc6b56486f1ea70              # double 0.1774106654082348
	.quad	0x3fee3e691d347f15              # double 0.94511848167528234
	.quad	0x3fea7434ca5ba131              # double 0.82668532870324019
	.quad	0x3fea2988cc1bb6b1              # double 0.81757011284726933
	.quad	0x3fd7d50e395b6514              # double 0.37237887955923665
	.quad	0x3fe05587a2cc04b6              # double 0.51044065281180084
	.quad	0x3fed169cf6ea9852              # double 0.90901039338928968
	.quad	0x3fe25a35680debe1              # double 0.57351179431077182
	.quad	0x3fd79e5fd9327ae4              # double 0.36904140673315866
	.quad	0x3fe9420066ea143b              # double 0.78930683231795429
	.quad	0x3fd22a630a3c73f4              # double 0.28383708953498332
	.quad	0x3fdcf0cc8477e420              # double 0.4521971982608779
	.quad	0x3fe716c21f806169              # double 0.72152811195978217
	.quad	0x3fe67f1a9c1c122d              # double 0.70301561823049996
	.quad	0x3fe003c97015f52f              # double 0.50046226398231919
	.quad	0x3fe38cd71af3d16c              # double 0.61094241394179738
	.quad	0x3fd2b6a61cd23674              # double 0.29239800276341232
	.quad	0x3fd1e1a676c4f090              # double 0.27939759825290711
	.quad	0x3fdd14e2242faa4e              # double 0.45439961942489482
	.quad	0x3fdbd4fe05ee5d16              # double 0.43487501696786646
	.quad	0x3fd8639efa4a70f2              # double 0.38108038370570718
	.quad	0x3fe739a86a7b4754              # double 0.725788314792434
	.quad	0x3fb6d454fb3a5950              # double 0.089177428564970684
	.quad	0x3faf1ec8360acea0              # double 0.060781723591756931
	.quad	0x3fbda67bdfaa9ee0              # double 0.11582159243209444
	.quad	0x3fd07789e7a37712              # double 0.25729606266928429
	.quad	0x3f64a36108031100              # double 0.0025193114416613982
	.quad	0x3fc90427a5ac2bdc              # double 0.1954392966220827
	.quad	0x3fd8a00037da19f6              # double 0.38476567701618991
	.quad	0x3fe2ee881432cf17              # double 0.59161762185110234
	.quad	0x3fb570d177a4c908              # double 0.083752719602475989
	.quad	0x3fc985cf0851fe24              # double 0.19939601808799623
	.quad	0x3fcd4d65145f97f0              # double 0.22892440314097895
	.quad	0x3fbb8357583b5490              # double 0.10747285751434021
	.quad	0x3fe20e2238f8ba99              # double 0.56422530295624818
	.quad	0x3fe4c74e7170ba85              # double 0.64932939678495016
	.quad	0x3fead8a89146d7f9              # double 0.83894756674158011
	.quad	0x3fac2d15ef79cb70              # double 0.055031476481324115
	.quad	0x3fe31175a5429bd2              # double 0.59588129308110127
	.quad	0x3febf135bccc165f              # double 0.873194569344104
	.quad	0x3fb184990adf6a80              # double 0.068429532198402754
	.quad	0x3fb14610e6f29440              # double 0.067475372680363854
	.quad	0x3fe60db52f5fab19              # double 0.68917330982853564
	.quad	0x3fe58d5169c658c0              # double 0.67350073489321716
	.quad	0x3fe66a7882fe8ad9              # double 0.7004969175798933
	.quad	0x3fda943f826d1184              # double 0.4152983449642067
	.quad	0x3fac11d55ab270b0              # double 0.054823558160223995
	.quad	0x3fe1bbcb0bc1af4e              # double 0.55417396827895415
	.quad	0x3fed5d3ddba4b468              # double 0.91763203524682257
	.quad	0x3feb0b5462cb4793              # double 0.84513301177706734
	.quad	0x3fb0315862e52698              # double 0.063252948898617212
	.quad	0x3fd3c8637af83164              # double 0.30910574921360578
	.quad	0x3fe1c17c83ce810f              # double 0.55486894362914707
	.quad	0x3f76f767caedfa80              # double 0.0056070379640674739
	.quad	0x3feac7c24a88c174              # double 0.83688463742696095
	.quad	0x3fec5ceb91af0034              # double 0.88634279683902272
	.quad	0x3fc7b0c45b2fb0dc              # double 0.18508200123267826
	.quad	0x3fa64e9241668720              # double 0.043568201526126282
	.quad	0x3fe5caf0a6b6f36b              # double 0.68102295457320616
	.quad	0x3fefc16e3c7cf991              # double 0.99236213506792314
	.quad	0x3fed8abbd1e5a1bf              # double 0.92318526263721157
	.quad	0x3fe28ca804a87b95              # double 0.57966996106903201
	.quad	0x3feba4877cb7d1ae              # double 0.86383413657181563
	.quad	0x3fe28107af3efff1              # double 0.5782507345938922
	.quad	0x3fea6a4b8d786301              # double 0.82547547942076005
	.quad	0x3fe7389960b06810              # double 0.72565907368266558
	.quad	0x3fe1018035a4f61e              # double 0.53143320538919503
	.quad	0x3fe134b176b1c70b              # double 0.5376822775126312
	.quad	0x3fd5fa790a750a92              # double 0.34341264744959077
	.quad	0x3fe34fd5edb43c1f              # double 0.60349556376047875
	.quad	0x3fe9eb5b14cd3fd6              # double 0.80997995436518511
	.quad	0x3fd68478336672a0              # double 0.35183529872464625
	.quad	0x3fc4c915c9107dd8              # double 0.16238663022612232
	.quad	0x3fef1b9250ae1baa              # double 0.97211566694101248
	.quad	0x3fecc78aad72bd1d              # double 0.89935811878777694
	.quad	0x3fc34248e51dfce4              # double 0.15046034991608004
	.quad	0x3fdfdbcc98f88700              # double 0.49779047907405527
	.quad	0x3f5105fe58442c00              # double 0.0010390266261903758
	.quad	0x3fc22741119aca68              # double 0.14182294234850024
	.quad	0x3fed460bfc06b19b              # double 0.91480063651902144
	.quad	0x3fe54ae93b5abf03              # double 0.6653944167391902
	.quad	0x3fec4c99be13a7c2              # double 0.88435065388079459
	.quad	0x3fe2177bc8aab257              # double 0.56536664192897035
	.quad	0x3feb38b125a96f19              # double 0.8506704078276669
	.quad	0x3fec120db6a6abdd              # double 0.87720380472216741
	.quad	0x3fb56cc1cda72c70              # double 0.083690750797517088
	.quad	0x3fe21c260cde8c58              # double 0.56593611253300491
	.quad	0x3fbfe61816728f00              # double 0.1246047072223142
	.quad	0x3fe7ec02c99c4c13              # double 0.74755992295320295
	.quad	0x3fcea5b6bc3e1df0              # double 0.23943218413863532
	.quad	0x3fe541b0a45ca43c              # double 0.66426879980020415
	.quad	0x3fb3f6f92b612e88              # double 0.077987263766028048
	.quad	0x3fae6ec9f163da20              # double 0.059439001766737443
	.quad	0x3fdfce924188cce8              # double 0.49698311233369319
	.quad	0x3fe92cb7f3057fc3              # double 0.78670880761273343
	.quad	0x3fe81f4da62dfd8a              # double 0.75382120568240052
	.quad	0x3fef0b8bf4117b9a              # double 0.97015950841511089
	.quad	0x3f85049c7c309d00              # double 0.010262701549506037
	.quad	0x3f6cdda2c2c5f800              # double 0.0035236529276394535
	.quad	0x3fefbe45566bbc73              # double 0.99197642211028236
	.quad	0x3fb35736e7d6cff0              # double 0.075549537278504663
	.quad	0x3fe9447c5b6a2649              # double 0.7896100793306654
	.quad	0x3fe51a062497f358              # double 0.65942675730876044
	.quad	0x3fda911b57393838              # double 0.41510661619111344
	.quad	0x3feaa2421bbdcee3              # double 0.8323069135498965
	.quad	0x3fdb7e0abfbf2f90              # double 0.42956799245143262
	.quad	0x3fcc8c607ad420e8              # double 0.22303396222583349
	.quad	0x3fec9dc46c58a63a              # double 0.89425870095619264
	.quad	0x3fea613c24204976              # double 0.82436949783213609
	.quad	0x3fd02e49260effe6              # double 0.25282505718860049
	.quad	0x3fd3a337c1196496              # double 0.30683702332823637
	.quad	0x3feb6ca47ddead52              # double 0.85701202949477762
	.quad	0x3feb3302f23ab99c              # double 0.84997699079922339
	.quad	0x3fe3d47c337a331d              # double 0.61968812994163935
	.quad	0x3feb4ba5257a87e7              # double 0.85298402137800344
	.quad	0x3fd9c49bb79fefbc              # double 0.40262501651863736
	.quad	0x3fe23892b56aa0c4              # double 0.56940589363969041
	.quad	0x3fe9f86329475425              # double 0.81157072126609775
	.quad	0x3fe22283f12d40b4              # double 0.56671330551946264
	.quad	0x3fb39aadf91e98e8              # double 0.076578973121829486
	.quad	0x3fe3533439e6cc3f              # double 0.60390673931977534
	.quad	0x3fe242639b1da757              # double 0.5706041364294191
	.quad	0x3fe02fd57bc56ce1              # double 0.5058391015440088
	.quad	0x3fe4cdfeb1aef403              # double 0.65014586166182686
	.quad	0x3fcd6187cddc7fd8              # double 0.22953889419386431
	.quad	0x3fe4ddc90de40374              # double 0.65207340920470225
	.quad	0x3fe7ec2bbefcd0c2              # double 0.74757945348985566
	.quad	0x3fc2552306f42f9c              # double 0.1432231697038987
	.quad	0x3fd0dfcd43868256              # double 0.26365977854041966
	.quad	0x3fe46b324c8d03ed              # double 0.6380855078824631
	.quad	0x3fe114a847afb8a9              # double 0.53377164841892466
	.quad	0x3fef69f6837a3e7f              # double 0.98168492964937559
	.quad	0x3fd80d203c962be6              # double 0.37580114285145638
	.quad	0x3fe3e017c7b3e41a              # double 0.62110508922990282
	.quad	0x3fdf3da11bb1897c              # double 0.48813655571407089
	.quad	0x3fe1581d007f6f69              # double 0.54200601670480097
	.quad	0x3febc8844901069d              # double 0.86822714098544262
	.quad	0x3fb01209e5101ed8              # double 0.062775247977806869
	.quad	0x3fd25d8317634fb4              # double 0.28695752414682407
	.quad	0x3fdea30746418e0a              # double 0.47870046482987105
	.quad	0x3fe3941472e7b479              # double 0.61182615702058663
	.quad	0x3fe5553bbfd64f82              # double 0.66665446727937216
	.quad	0x3fe5881d7233fab5              # double 0.67286560349733426
	.quad	0x3fe7409ec858d0a1              # double 0.7266382134462398
	.quad	0x3fc8966cd0b8b7fc              # double 0.19209060851557058
	.quad	0x3fcec1588a0da55c              # double 0.24027544728168493
	.quad	0x3fe8d448e7c9cb7c              # double 0.77591367026467095
	.quad	0x3feac9936554c420              # double 0.83710641661867057
	.quad	0x3fd485a244b1ad8c              # double 0.32065636356738803
	.quad	0x3fabab592bfe0370              # double 0.054041658992907027
	.quad	0x3fecb532aec107c1              # double 0.89711889392514632
	.quad	0x3fe487c95a3c674c              # double 0.64157550453385559
	.quad	0x3fe03dbad1a6b220              # double 0.50753537127963355
	.quad	0x3fec21753cab3b90              # double 0.87908422326460034
	.quad	0x3fe6e7625870d338              # double 0.71574513696268749
	.quad	0x3fd149179c417ca8              # double 0.27008619555813107
	.quad	0x3fee77b2c72d6acd              # double 0.95211161519849841
	.quad	0x3fd4850be018a880              # double 0.32062050709158285
	.quad	0x3fdc2d3b28524ae4              # double 0.4402606862796985
	.quad	0x3fd2f1ebcd7d0e96              # double 0.29601569239842129
	.quad	0x3fed47fed26b045c              # double 0.91503850075981629
	.quad	0x3fd37550b266601a              # double 0.30403535291543593
	.quad	0x3fe23aee15f9fae9              # double 0.56969360630304522
	.quad	0x3fe42e4d59de91fe              # double 0.63065211823101186
	.quad	0x3fd40ca8b1a22012              # double 0.31327264163019308
	.quad	0x3fd4578f7af8957e              # double 0.31784426697625878
	.quad	0x3fde1f9ae1acc4d0              # double 0.47067901648104016
	.quad	0x3fe2686bd36a5a14              # double 0.5752467278678659
	.quad	0x3fd4cb58aa5c0c64              # double 0.32491127621341875
	.quad	0x3feaea643a7320b7              # double 0.84111224571190391
	.quad	0x3fe171108e1a7d7f              # double 0.54505183939538415
	.quad	0x3fd6ebca5a7a44f2              # double 0.35814150653557342
	.quad	0x3fc184be36c8d148              # double 0.13686349558850908
	.quad	0x3fd1ea1769f03f30              # double 0.27991280885270253
	.quad	0x3fdc822e3ba3a61a              # double 0.44544559311052156
	.quad	0x3fd899eac2b1ceec              # double 0.38439435017720203
	.quad	0x3fc0005941a92df8              # double 0.12501064020248953
	.quad	0x3fd69dd36e103792              # double 0.353382928355921
	.quad	0x3fe81f438408c0a5              # double 0.75381637370994226
	.quad	0x3fc910fe2a222da8              # double 0.19583108002949001
	.quad	0x3fb6ba600cdb8e48              # double 0.088781359805175986
	.quad	0x3fe864566b594e79              # double 0.76224823919842699
	.quad	0x3fbe45e3f8181f08              # double 0.11825394446361426
	.quad	0x3fdd933ce164c136              # double 0.46211168299761896
	.quad	0x3fe500f569d9729b              # double 0.65636702226364052
	.quad	0x3fe56613882cc887              # double 0.66871048542658762
	.quad	0x3fcb61fad219c4dc              # double 0.21392760523625654
	.quad	0x3fb1ceec8e76d008              # double 0.069563660413052841
	.quad	0x3fe4dfb4094a1da5              # double 0.65230752767904632
	.quad	0x3fceab0b14e8b088              # double 0.23959482689804568
	.quad	0x3fdc9de03c3a97a4              # double 0.44713598138548094
	.quad	0x3fe451085aa3fdeb              # double 0.63489167884102693
	.quad	0x3fa309d4ed3bfde0              # double 0.037184385260839781
	.quad	0x3fec3af543a0fc59              # double 0.88219702919731013
	.quad	0x3feb4cc31047a015              # double 0.85312035731931479
	.quad	0x3fb80c88fbec0800              # double 0.093941270355600181
	.quad	0x3fe02b357130e589              # double 0.50527450664155638
	.quad	0x3fec026b83357b9d              # double 0.87529540659658134
	.quad	0x3fc8313d01175364              # double 0.18900263360287817
	.quad	0x3feff9e0d0027a38              # double 0.99925270678415412
	.quad	0x3f9f7cf617f009a0              # double 0.030750127039945618
	.quad	0x3fd1f945bb1efa30              # double 0.2808393790582242
	.quad	0x3fe5ab6d8d7be631              # double 0.6771762622221954
	.quad	0x3fe80f40da541920              # double 0.75186197893416206
	.quad	0x3fe61a626affff03              # double 0.69072075746950679
	.quad	0x3fb5f59a4050f410              # double 0.085778847410395764
	.quad	0x3fe48d37bec734f1              # double 0.64223849545819978
	.quad	0x3fe148f30232568b              # double 0.54015493802099124
	.quad	0x3fccdc816931e038              # double 0.22547929417101087
	.quad	0x3fe48abe07aec387              # double 0.64193631649514848
	.quad	0x3fc161309737c0c0              # double 0.13577849754029181
	.quad	0x3fe9fa2e1dcce364              # double 0.81178956814174485
	.quad	0x3fda0ba346cbbdb4              # double 0.40696031488092932
	.quad	0x3fd8a111c6d03482              # double 0.38483089843141027
	.quad	0x3fe2ea422fb6cea1              # double 0.59109601325186045
	.quad	0x3fea129fe2a2ca34              # double 0.81477350487541011
	.quad	0x3fe7cd38a421fbca              # double 0.74380142266442673
	.quad	0x3fda2d301dbfce0c              # double 0.40900805382918359
	.quad	0x3fdff154264dea38              # double 0.49910453549060518
	.quad	0x3fec4e417e9dde05              # double 0.88455271463220753
	.quad	0x3fd327015399a6b0              # double 0.29925568737108232
	.quad	0x3fd7ac95a76c9bf8              # double 0.36990872716927425
	.quad	0x3fcaffc68893a7f4              # double 0.21093064945972595
	.quad	0x3fc3d39cd1d9fcd4              # double 0.15489540335327112
	.quad	0x3fe1ce64b9ee3308              # double 0.55644451441330123
	.quad	0x3fc46eb85aa345f4              # double 0.15962891030953552
	.quad	0x3fe8c2abc29e8ddb              # double 0.77376354228584476
	.quad	0x3fb3d9b4d63552f8              # double 0.077540685936877796
	.quad	0x3fdc1eebf887e1a0              # double 0.43938731451592083
	.quad	0x3fe86ccba8e4f158              # double 0.76328070628327804
	.quad	0x3fe52abe6a64e6ea              # double 0.66146775035960315
	.quad	0x3fe5eb967a66fc35              # double 0.68500827700325451
	.quad	0x3fd6200cacbf6656              # double 0.34570614690674029
	.quad	0x3feadf5c9e6ea631              # double 0.83976584380906705
	.quad	0x3fce98770c6c3028              # double 0.23902786356518502
	.quad	0x3fb496f6a5557548              # double 0.080428519596769665
	.quad	0x3fc8972cc8e161a8              # double 0.1921134930478392
	.quad	0x3fd97dc1848b6010              # double 0.39830053275864064
	.quad	0x3fe0bb04f49bcfc0              # double 0.52282951140522727
	.quad	0x3fe5a86f41e93b90              # double 0.67681086419348624
	.quad	0x3feb175cb7947d2b              # double 0.84660182815051621
	.quad	0x3fd264bd76f57f96              # double 0.28739868752563191
	.quad	0x3fa007d960f20350              # double 0.031309884151602518
	.quad	0x3fefc1a25a90154e              # double 0.99238698661853575
	.quad	0x3fdf83a98df3cff4              # double 0.49241103041208523
	.quad	0x3fea69a9cded4c40              # double 0.82539835186106103
	.quad	0x3fe5d104b7c9aae0              # double 0.68176494499251916
	.quad	0x3fd4743b352fe0d0              # double 0.31959419435544323
	.quad	0x3fdf34f0e1b4457e              # double 0.48760625878738739
	.quad	0x3fe4e54b28843692              # double 0.65298993981714859
	.quad	0x3fd270ecd557db36              # double 0.28814240297599569
	.quad	0x3fa2cab9b2062040              # double 0.03670292184966728
	.quad	0x3fdd0b549aaa001c              # double 0.45381655792152897
	.quad	0x3fec647cabd845e5              # double 0.88726647914353107
	.quad	0x3fece7d9e53eeb37              # double 0.90330214285436383
	.quad	0x3fd262799c939186              # double 0.28726043978374383
	.quad	0x3fca87de7f18db24              # double 0.20727139669335159
	.quad	0x3fdce498f8641dc6              # double 0.45145248658124293
	.quad	0x3fd57243f9fc2640              # double 0.33509921467393511
	.quad	0x3feb85212d1600af              # double 0.86000117116784291
	.quad	0x3fd5ae8b92f60fac              # double 0.33877839423825651
	.quad	0x3fe264690e29496c              # double 0.57475712552904445
	.quad	0x3fe1a668ee0e966a              # double 0.55156370635513707
	.quad	0x3fe0663c12e8c25f              # double 0.5124798173256514
	.quad	0x3fec27980aad2385              # double 0.87983324132174856
	.quad	0x3fcea5ae33487208              # double 0.23943116668750997
	.quad	0x3feec4bf75052d51              # double 0.96151707511436701
	.quad	0x3fd8aaa67cb4993e              # double 0.385415670187644
	.quad	0x3fa22d213e028d20              # double 0.03550056344945518
	.quad	0x3fe8047b671952d9              # double 0.75054712425716297
	.quad	0x3fef22a4edfc99f6              # double 0.97297903520376283
	.quad	0x3fb9e7358562b9c8              # double 0.10118422037587671
	.quad	0x3fd5dd83b4e8f802              # double 0.34164517085071122
	.quad	0x3fe8cf536603db8d              # double 0.77530832218950396
	.quad	0x3fe9cb1ebd55a4ce              # double 0.80604493121531973
	.quad	0x3fe70fb6d944b5e5              # double 0.72066824374422522
	.quad	0x3fd237149e146f72              # double 0.28461184918864213
	.quad	0x3fd78ae1a8d49cf6              # double 0.36785165297847244
	.quad	0x3fd60d9a7f0b0636              # double 0.34458029181050465
	.quad	0x3fe4f72d3192ea3f              # double 0.65517291719817894
	.quad	0x3feb43030143d3e0              # double 0.85193014380513076
	.quad	0x3fc24c4e596305b8              # double 0.14295367588606012
	.quad	0x3fea6757dd493262              # double 0.82511513919741852
	.quad	0x3fe4f1bc9973cff0              # double 0.65450887652559508
	.quad	0x3fd115f04cc69c8e              # double 0.26696403024329463
	.quad	0x3fd14f933760fff8              # double 0.27048187645050303
	.quad	0x3fef57a8d3a0824c              # double 0.97945062001606109
	.quad	0x3fcd6321c8adee0c              # double 0.22958776758956423
	.quad	0x3fee1c5d40484614              # double 0.94096243434086312
	.quad	0x3fd02b9ac26a0100              # double 0.25266140924215108
	.quad	0x3fe74e270a7e89c5              # double 0.72829010057130772
	.quad	0x3fd4c9af6cdddea6              # double 0.32480989104758817
	.quad	0x3febd36d41cae6cc              # double 0.86955893373598192
	.quad	0x3fd6ac29f3290ec4              # double 0.35425804849749576
	.quad	0x3fedb1ae3f388a33              # double 0.92793953273605323
	.quad	0x3fe5a6489f5627f0              # double 0.6765483009378368
	.quad	0x3fdf17de46f259c0              # double 0.48583180359255707
	.quad	0x3fb40d0033663fc8              # double 0.078323376225170382
	.quad	0x3fd53069266cc6ea              # double 0.33107975723679195
	.quad	0x3fe9facca617e97a              # double 0.81186516227835104
	.quad	0x3fe1426e89c258a7              # double 0.53935934930884322
	.quad	0x3fe2cf2a06015c42              # double 0.58778859303391351
	.quad	0x3fd7bcda04aacb98              # double 0.37090158897188408
	.quad	0x3fe804a1150834cb              # double 0.75056509120772696
	.quad	0x3fdfca5a7421272a              # double 0.49672566738864765
	.quad	0x3fe7d7f368e9399f              # double 0.74511118402897469
	.quad	0x3fee5c30b53f3d9b              # double 0.94875369453250202
	.quad	0x3fe5030aed61527d              # double 0.65662142146409475
	.quad	0x3facfc5b3940b140              # double 0.056612826098304314
	.quad	0x3fce07fcb383ed28              # double 0.23461874738118493
	.quad	0x3fd02fd5d13acaec              # double 0.25291963036140319
	.quad	0x3fea6ba03b4ec79c              # double 0.82563792785207423
	.quad	0x3fc896aadda92918              # double 0.19209800551681933
	.quad	0x3feef58ab8e52bda              # double 0.96747337448448012
	.quad	0x3fe58c14778d38ae              # double 0.67334960317545778
	.quad	0x3fef0d827beadc8a              # double 0.97039913370726194
	.quad	0x3feba5bd04cc5d77              # double 0.86398173272293277
	.quad	0x3fec10711f7c03dd              # double 0.87700706624320512
	.quad	0x3fb5b5262653e180              # double 0.08479536472066762
	.quad	0x3fe4ad619c8ab703              # double 0.64616470884877264
	.quad	0x3fd08ab2b0ab5f5a              # double 0.25846545460580261
	.quad	0x3fdb177abb38807c              # double 0.42330807002327453
	.quad	0x3fefdb9440795944              # double 0.99555409042913156
	.quad	0x3fe8fadb275fb21a              # double 0.78062207880208523
	.quad	0x3fe245a21d8f575d              # double 0.57100015424178319
	.quad	0x3feb4d4dd1f820b1              # double 0.85318652162188446
	.quad	0x3fe60e3f3b15c1d3              # double 0.68923913517033453
	.quad	0x3fd3ce28f421fd84              # double 0.30945800629702824
	.quad	0x3fd468409b9d45f0              # double 0.31886305996621811
	.quad	0x3fcbdf24b1917b38              # double 0.21774729414297567
	.quad	0x3feaff6f9aaa71c0              # double 0.84368114669955929
	.quad	0x3fe17a489074c722              # double 0.54617717947096289
	.quad	0x3fcdeeb812b44378              # double 0.233847626812828
	.quad	0x3fa5a31fa51f26e0              # double 0.042260159403282094
	.quad	0x3fe1615073190dbc              # double 0.54312918167163771
	.quad	0x3fea261a4fd20eb8              # double 0.8171512183184495
	.quad	0x3f9da765d058bd00              # double 0.028958884088010173
	.quad	0x3fe14bfb5642f4ce              # double 0.54052512023886279
	.quad	0x3fda56900aed20ce              # double 0.41153336588878353
	.quad	0x3fe6f7eba212023d              # double 0.71776372579922276
	.quad	0x3fca0a83ac2a83bc              # double 0.20344587236925615
	.quad	0x3f97b2f3e3349800              # double 0.023143587820548817
	.quad	0x3fe9ee11aa088e52              # double 0.81031115731861747
	.quad	0x3fd291bbb98c259a              # double 0.29014485473506968
	.quad	0x3fe7fa4224fb9a1a              # double 0.74929911826331197
	.quad	0x3fee70cd23df23cc              # double 0.95126969343356782
	.quad	0x3fe81460695d8333              # double 0.75248737887532113
	.quad	0x3fe97b857ce17cea              # double 0.79632830038818025
	.quad	0x3fe137278716903c              # double 0.53798271545793552
	.quad	0x3fd25af8b4c6ae90              # double 0.2868024602309811
	.quad	0x3fe55b0dd7ca2cfa              # double 0.66736499926028547
	.quad	0x3fc7cc467e461088              # double 0.18592148938853748
	.quad	0x3fefc4617a7a5a80              # double 0.9927222625872929
	.quad	0x3fe2d3fe3defc1cc              # double 0.58837806794149961
	.quad	0x3fee84ca79255a50              # double 0.95370982800779736
	.quad	0x3febef0519fadb84              # double 0.87292723726464815
	.quad	0x3fdba185fe8b4a7e              # double 0.43173360688994211
	.quad	0x3fcb9a1b20521a50              # double 0.21564044073257316
	.quad	0x3fdf69729ff9898e              # double 0.49081102011236843
	.quad	0x3f98e931f40f0b60              # double 0.024327068825879095
	.quad	0x3fe87e878fd71878              # double 0.76544550031464009
	.quad	0x3fddf8b7857e2b28              # double 0.46830547367487663
	.quad	0x3fedd2d728070658              # double 0.93198736017093164
	.quad	0x3fc42e65d6c17180              # double 0.15766594873538153
	.quad	0x3fda0b012232d6e2              # double 0.40692165698724925
	.quad	0x3fde51baab7ef894              # double 0.47373835323004099
	.quad	0x3fb5e2913ccaf168              # double 0.085488393156031628
	.quad	0x3feae8ffdd3ef973              # double 0.84094231807811892
	.quad	0x3fe37b1da260dfeb              # double 0.60877877916845813
	.quad	0x3fc68230755658a4              # double 0.17584806184158197
	.quad	0x3fe678acc94943c5              # double 0.70223082841595696
	.quad	0x3fb32a3a9c442808              # double 0.074863112593590242
	.quad	0x3fefe2343d026412              # double 0.99636279979597675
	.quad	0x3fe66123b5a05c2a              # double 0.6993578479185818
	.quad	0x3fe34b59a85cd170              # double 0.60294802554430582
	.quad	0x3fe9615837129a74              # double 0.79313288456326214
	.quad	0x3f7bc8c97d6dc100              # double 0.0067832823468594317
	.quad	0x3fcbb2116a0d8790              # double 0.21637170484887891
	.quad	0x3fe4702a07d910ff              # double 0.63869191677852644
	.quad	0x3fed45c8515d5ebc              # double 0.91476837054775428
	.quad	0x3fd298a9ea089c4c              # double 0.29056785445067557
	.quad	0x3fa852a40d71d1a0              # double 0.047505499497592085
	.quad	0x3fd016aee5f8997e              # double 0.25138447244753326
	.quad	0x3fe52de7d192caf0              # double 0.66185370380693875
	.quad	0x3fc5f20efafcf428              # double 0.1714495397117457
	.quad	0x3fe2f4ae1f891ca3              # double 0.59236818465514707
	.quad	0x3fb0166fbc78a270              # double 0.062842353356822533
	.quad	0x3fed3cc3368e0b16              # double 0.91366730361218873
	.quad	0x3fe8eed937b69087              # double 0.77915631181214529
	.quad	0x3fe2b989c9a94159              # double 0.58514871012634295
	.quad	0x3fd9e41fa0e35fe0              # double 0.40454855643974774
	.quad	0x3fc77b2cfaad8910              # double 0.18344652404909612
	.quad	0x3fef10cc64ce893d              # double 0.97080058754753617
	.quad	0x3fed41baa2079b2a              # double 0.91427356382778169
	.quad	0x3fea82e37f135b7c              # double 0.82847761935668939
	.quad	0x3fe8a0890eea34ee              # double 0.76959660447178435
	.quad	0x3fe93788b7eccac2              # double 0.78802905962796665
	.quad	0x3fe5c189a958d9fb              # double 0.6798752124366837
	.quad	0x3fd15fe9b71b3996              # double 0.27147906190375559
	.quad	0x3fcfd278273e5c8c              # double 0.24861051479522123
	.quad	0x3f96d6eab6716720              # double 0.022304217706142215
	.quad	0x3fb93166bb1fcbf8              # double 0.098410053906078931
	.quad	0x3fe056e28f152643              # double 0.51060607858489282
	.quad	0x3fe266cac6ffc4ce              # double 0.5750478636456593
	.quad	0x3fe5c88b1e662510              # double 0.68073039948754577
	.quad	0x3fe253b7c149af7c              # double 0.57271945716409745
	.quad	0x3fe70a17ae616bf3              # double 0.71998199518873063
	.quad	0x3fe252b08051039b              # double 0.57259392797287789
	.quad	0x3fd28290c060536c              # double 0.28921908175225641
	.quad	0x3fc55e47eab1d834              # double 0.16693972549154668
	.quad	0x3fea00f3d2f21e85              # double 0.81261626434657386
	.quad	0x3f864ac13c70ffc0              # double 0.01088477101995966
	.quad	0x3fdc670df3b3d5b2              # double 0.44378994750089895
	.quad	0x3fdeeeeb8759a928              # double 0.48333252160832041
	.quad	0x3fc96efdf943b1bc              # double 0.19869970961680206
	.quad	0x3fe486f6ecc54345              # double 0.64147516483544875
	.quad	0x3fd5547af6cd6b94              # double 0.33328127004431818
	.quad	0x3fe8f595b76897ff              # double 0.77997861692415416
	.quad	0x3fadfca97410e730              # double 0.058568282526222482
	.quad	0x3fea259f8f27df27              # double 0.81709268531901535
	.quad	0x3fb5aac30db44010              # double 0.08463687023709121
	.quad	0x3fc436b0f2f7e6f0              # double 0.15791904319467376
	.quad	0x3fdc38a06ce13614              # double 0.44095621712480804
	.quad	0x3fcc3483365d9e68              # double 0.22035255579543223
	.quad	0x3fd8ffdbc647cf4c              # double 0.39061636317568538
	.quad	0x3fe8058f48e88643              # double 0.75067867507841191
	.quad	0x3fecbc8aa615cb1d              # double 0.89801533163549474
	.quad	0x3fea6810a11a6ec3              # double 0.82520324197272321
	.quad	0x3fc89da6c946f954              # double 0.19231114223471002
	.quad	0x3fecebdc4d6d7957              # double 0.90379157183250924
	.quad	0x3fa627d0e1bf2960              # double 0.043272521550153042
	.quad	0x3fd7c7b6458e84ac              # double 0.3715644530548825
	.quad	0x3fef7d5e5ebee28a              # double 0.9840537882328857
	.quad	0x3fee165be48c4b48              # double 0.94022936476026419
	.quad	0x3fd0f52b2812df72              # double 0.26496390260171332
	.quad	0x3fc5ada67a9afaf0              # double 0.16936188685027487
	.quad	0x3fc6375496144b5c              # double 0.17356355026330561
	.quad	0x3fdae5da6e24e4a8              # double 0.42027912861119399
	.quad	0x3fed334ff309ef4f              # double 0.91251370876805449
	.quad	0x3fe0c988d1dcf8a9              # double 0.52460137356662984
	.quad	0x3febbf7201427dc0              # double 0.86711979146996754
	.quad	0x3fe28b0b19dd953f              # double 0.57947306682459743
	.quad	0x3f93ae3e43eb5ae0              # double 0.019219372649639577
	.quad	0x3fdda8912a11c6e2              # double 0.46341351612418979
	.quad	0x3fedf43b1c1a1a9e              # double 0.93606334198632957
	.quad	0x3f410a706cf93400              # double 5.2004327330623656E-4
	.quad	0x3fd7166d9acf17bc              # double 0.36074390523969746
	.quad	0x3fe5a9c7d9d25cce              # double 0.67697517913156857
	.quad	0x3fd505fb3b3c5400              # double 0.32849007401210883
	.quad	0x3fec589d1e3f5c05              # double 0.88581710727419305
	.quad	0x3fc1cdfc20631b00              # double 0.13909865933802479
	.quad	0x3fef02ef063e331e              # double 0.96910811633424365
	.quad	0x3fd96217c560a826              # double 0.39661211276200203
	.quad	0x3fc5266784cf3ad8              # double 0.16523450836981257
	.quad	0x3feb072ddf42a345              # double 0.84462636571434102
	.quad	0x3fe8f175c719c522              # double 0.77947510611389625
	.quad	0x3fd069a08681e570              # double 0.25644696364869102
	.quad	0x3fedf283fbbfc33e              # double 0.93585395021191409
	.quad	0x3f9f75a4a9738de0              # double 0.030722210733882593
	.quad	0x3fa1098d678ccec0              # double 0.033276003733047954
	.quad	0x3fd9a43e8b49c446              # double 0.40064967729910383
	.quad	0x3feed6466e2670ef              # double 0.96365663064673678
	.quad	0x3fd47eb42ffe0556              # double 0.32023338972802173
	.quad	0x3fe3a1065e07955a              # double 0.61340635647926978
	.quad	0x3fc8fd513145ef30              # double 0.19523062616269149
	.quad	0x3fda6616304b664a              # double 0.41248087612402584
	.quad	0x3fecd457de110afc              # double 0.90092080471399027
	.quad	0x3fd541faecdd5d66              # double 0.33215211039847359
	.quad	0x3fe18451808bba79              # double 0.54740214449505153
	.quad	0x3fd7a7e2051a1d4c              # double 0.36962175844424361
	.quad	0x3fedf2237ec47667              # double 0.9358079410482788
	.quad	0x3fe593e3e0937fbf              # double 0.67430299627812207
	.quad	0x3fe47cc562a4cd5b              # double 0.64023083940848424
	.quad	0x3fea25050a4eeed8              # double 0.81701900494905555
	.quad	0x3fe25dda072ce403              # double 0.57395650292812694
	.quad	0x3fd080deda9056c2              # double 0.25786563247798366
	.quad	0x3fd93b3776b4bae0              # double 0.39423929779415623
	.quad	0x3fdc38a7f693e42a              # double 0.44095801429608861
	.quad	0x3fe9268285c9f515              # double 0.78595090990680438
	.quad	0x3fd174bf4c973f16              # double 0.27275068740435537
	.quad	0x3fe6edf31d53c201              # double 0.71654659011807109
	.quad	0x3fdc1eaf8e22a54a              # double 0.43937291031268855
	.quad	0x3fee0fb3520f9d02              # double 0.93941656138932239
	.quad	0x3fb1839d45c79ed0              # double 0.068414525543285309
	.quad	0x3fe5bcda3a50efe2              # double 0.67930327787280143
	.quad	0x3fc4b38deb8f30e8              # double 0.16172956468506716
	.quad	0x3fe94bf5b1a38e4c              # double 0.79052242941947659
	.quad	0x3fe28c3e2ea22930              # double 0.57961949451536121
	.quad	0x3fc749ad144ee024              # double 0.18193591586691682
	.quad	0x3fed6f3c6be43a84              # double 0.9198286158806046
	.quad	0x3fd3f62d2c8f709a              # double 0.31190041877358399
	.quad	0x3fd4aeb34dcf3ee8              # double 0.32316286657895299
	.quad	0x3fd2a7a25037e44c              # double 0.29148156961270355
	.quad	0x3fbcb438d02dab40              # double 0.11212496836166697
	.quad	0x3fdbd37c8405b7b8              # double 0.43478310482793914
	.quad	0x3fd47c0e3ffde802              # double 0.32007175683213529
	.quad	0x3fe11a9bc182c949              # double 0.53449809832663064
	.quad	0x3fe60d05211ff429              # double 0.68908935994807508
	.quad	0x3fc15dfda7212d50              # double 0.13568087254166494
	.quad	0x3fe109ebb746b0df              # double 0.53246103092308406
	.quad	0x3fdb193f89880c7c              # double 0.42341602736286865
	.quad	0x3fc1ac06bdc68ec4              # double 0.13806232706439492
	.quad	0x3fcc17ff2ef05a88              # double 0.21948232452333039
	.quad	0x3fe4d87e331befce              # double 0.65142736418010272
	.quad	0x3fdbd17f16352c94              # double 0.43466164749833891
	.quad	0x3fe38ba75dd6d69d              # double 0.61079758003207341
	.quad	0x3fac94498e176690              # double 0.055818842501776378
	.quad	0x3fd70ceee203f2f6              # double 0.36016437599009465
	.quad	0x3fe25bc5c7b357c2              # double 0.57370270732894135
	.quad	0x3febd8cd8a7c352d              # double 0.87021519706619233
	.quad	0x3fe5b3038a81b639              # double 0.67810227443778281
	.quad	0x3fead04605585c84              # double 0.83792401355721368
	.quad	0x3fee9e07d1a4381a              # double 0.95679083772279516
	.quad	0x3feb7e8a2dce41b3              # double 0.8591967482225783
	.quad	0x3fdae754cfefebaa              # double 0.4203693419109934
	.quad	0x3fec77636ea06377              # double 0.8895737801241087
	.quad	0x3fd3a2bc688b6008              # double 0.30680761536996259
	.quad	0x3fdd95f712771314              # double 0.46227814486728502
	.quad	0x3fed76208f7cc1d1              # double 0.92066982293004618
	.quad	0x3fd5abeea597d8a0              # double 0.33861890956121421
	.quad	0x3fee2b1400963031              # double 0.94275856127342739
	.quad	0x3fe5068603865063              # double 0.65704632461939771
	.quad	0x3fe7398f05567e81              # double 0.72577620546867661
	.quad	0x3fe7dbb603e4c9bd              # double 0.7455701900528805
	.quad	0x3fbca4790d457eb8              # double 0.11188465665827152
	.quad	0x3f87f5b376cc05c0              # double 0.011699106276412574
	.quad	0x3fe4a1e1e77c71fd              # double 0.64476103984958366
	.quad	0x3fea59871cdff80a              # double 0.82342868461250984
	.quad	0x3fe1992905cb10ba              # double 0.54994631892670687
	.quad	0x3fea0a3e52e48b79              # double 0.81375042142859322
	.quad	0x3fca50a9f3a86020              # double 0.20558666608190013
	.quad	0x3fe75ad96e70fa5c              # double 0.72984000750131939
	.quad	0x3fd927fa05b11bcc              # double 0.39306498103945553
	.quad	0x3fc3f1a6fe96bf04              # double 0.15581214362236306
	.quad	0x3fe406d186f9ef27              # double 0.62583233225402501
	.quad	0x3fad20a675f07ac0              # double 0.056889726540466423
	.quad	0x3fdbfbe94c45f332              # double 0.43725044678267289
	.quad	0x3fe56609c5ab6efa              # double 0.66870583159786112
	.quad	0x3fe2c5b898a1f910              # double 0.58663587390018002
	.quad	0x3feb24d3ad1b0cb0              # double 0.84824546632480313
	.quad	0x3fe2e21ff6ce0868              # double 0.5901031322866972
	.quad	0x3fdfe257b2155fee              # double 0.49818985358206092
	.quad	0x3fef04d1b68a5eea              # double 0.96933828022426138
	.quad	0x3fe0f2ac64eccbdf              # double 0.52962321960364622
	.quad	0x3fe3ff4c9f662b87              # double 0.62491446621548696
	.quad	0x3fd7e629d08a1f4e              # double 0.37342305531682463
	.quad	0x3feea0a92ab78803              # double 0.95711191504619852
	.quad	0x3fd923c0d39d9ed4              # double 0.3928072039184205
	.quad	0x3fe570772b72a55e              # double 0.66997869954972677
	.quad	0x3fd361d05ed1a29e              # double 0.30284508952767364
	.quad	0x3fee8c9bb656ca2b              # double 0.95466409314241696
	.quad	0x3fbae226139b9748              # double 0.10501325586991783
	.quad	0x3fd603031194d528              # double 0.34393383709842107
	.quad	0x3fe3c2ebc1bfee4b              # double 0.61754405824417213
	.quad	0x3fd1b4f4cb847bb4              # double 0.27666969179875456
	.quad	0x3fc700e42c23b8f4              # double 0.17971470027209302
	.quad	0x3fef706570e6d44d              # double 0.98247024584873943
	.quad	0x3fe9373230e6cb3e              # double 0.78798780013162406
	.quad	0x3f8541ef30d86cc0              # double 0.010379666021483991
	.quad	0x3fec041842caadab              # double 0.8754998497510561
	.quad	0x3fe0f1d127dc8c43              # double 0.52951867852642243
	.quad	0x3fe1712344cf36f3              # double 0.54506076278059223
	.quad	0x3fdf5b0c698a6398              # double 0.48993215853402594
	.quad	0x3fe766bd2f6827b7              # double 0.73129138240005076
	.quad	0x3fec55364eb52798              # double 0.88540187237343826
	.quad	0x3fd1ceeca2b411ae              # double 0.27825466050151249
	.quad	0x3febe46adb53d038              # double 0.87163298451787963
	.quad	0x3fc1ccbecbd77e68              # double 0.13906083062373686
	.quad	0x3fea13f9f10e1351              # double 0.81493851738978595
	.quad	0x3fe1cd20dbbca494              # double 0.5562900821434078
	.quad	0x3fbc2d572f038d28              # double 0.11006684205817818
	.quad	0x3fc4669b59c772f8              # double 0.15938131221528073
	.quad	0x3feed4fd72dcd61c              # double 0.96349975999936843
	.quad	0x3fd9295d0438d44a              # double 0.39314961826614037
	.quad	0x3fea435779b96b97              # double 0.82072042249943677
	.quad	0x3fee3e6192163521              # double 0.94511488468711857
	.quad	0x3febeef1ce6ba81d              # double 0.87291803661833323
	.quad	0x3fe3d24b70736108              # double 0.61942073786761487
	.quad	0x3fe93f9666d481eb              # double 0.7890121467972312
	.quad	0x3fd2a95227df6728              # double 0.29158452886405195
	.quad	0x3fc4dedcdcdf054c              # double 0.16305123123860665
	.quad	0x3fe21233bd53ed7d              # double 0.56472193697065587
	.quad	0x3fee2d4ed4306e23              # double 0.94303075259398772
	.quad	0x3fe142f7a928ae38              # double 0.53942473448609629
	.quad	0x3fe2c3c8f709a164              # double 0.5863995385125631
	.quad	0x3fe6d945c3c08250              # double 0.71402252419290768
	.quad	0x3f7ffdf2793e7c00              # double 0.0078105422616365771
	.quad	0x3fe7bc935af2032f              # double 0.74176948321119152
	.quad	0x3fd62c83ba67d7e6              # double 0.3464669533126411
	.quad	0x3fdb8ff7e940ac4c              # double 0.4306621339662271
	.quad	0x3f93efac23d2ed80              # double 0.019468965231437263
	.quad	0x3fd08b83dc364600              # double 0.25851532464102434
	.quad	0x3feddffc9c926fab              # double 0.93359213428947407
	.quad	0x3fcd9f133648734c              # double 0.23141708517587245
	.quad	0x3fb63e267563bee0              # double 0.086885837230279872
	.quad	0x3fe83bc28052c99d              # double 0.75729489386712923
	.quad	0x3fb49133b29e7ee8              # double 0.08034060583895164
	.quad	0x3fe1b1c7293fc9f6              # double 0.55295141273955895
	.quad	0x3fe18b395eac7297              # double 0.54824512949888315
	.quad	0x3fe957d66bcb1b81              # double 0.79197236112018754
	.quad	0x3fe584bbc7ddfd37              # double 0.67245282208015211
	.quad	0x3fd16d78e418a1f8              # double 0.27230665469190241
	.quad	0x3fe1f863e18d77a2              # double 0.56157106450313088
	.quad	0x3fedad6ba71cdd41              # double 0.92741949691018288
	.quad	0x3fb5e98c13b8df48              # double 0.085594897093753564
	.quad	0x3fec046fed13d3ee              # double 0.87554165176572751
	.quad	0x3fe7132fab6d028d              # double 0.72109206658940794
	.quad	0x3fe54127866bad74              # double 0.66420341733957722
	.quad	0x3fcafdf6b8438338              # double 0.21087535855533601
	.quad	0x3fc835f9b0aa54f4              # double 0.18914719701994154
	.quad	0x3fc16ff65482b0c4              # double 0.13622931601037724
	.quad	0x3fdd3e9a60840dee              # double 0.45694598603605996
	.quad	0x3fdefe657dd0bc3a              # double 0.48427712713868554
	.quad	0x3fe307531919b3ca              # double 0.59464411642476844
	.quad	0x3fd299bee125f262              # double 0.29063388812190827
	.quad	0x3fe01db06a98a24f              # double 0.50362416095328821
	.quad	0x3fd2ab42f340c020              # double 0.29170297389191724
	.quad	0x3fe7c8d0224f66ad              # double 0.7432633085365602
	.quad	0x3fe918e8daf179c4              # double 0.78429072153431222
	.quad	0x3fec5e93f352cc07              # double 0.88654515766245445
	.quad	0x3fd9ac0dcf7a1c0e              # double 0.40112633954453336
	.quad	0x3fec0c19302573db              # double 0.87647685435842548
	.quad	0x3fd3ffafc87b8d1e              # double 0.31248087480908449
	.quad	0x3febf19d686db792              # double 0.87324400325973017
	.quad	0x3fecb03033d94c85              # double 0.89650735975955398
	.quad	0x3fe30c0ec38f39cd              # double 0.59522188372812368
	.quad	0x3fe44789101eb091              # double 0.63373234890379326
	.quad	0x3fcbed15584af0b0              # double 0.21817271052521425
	.quad	0x3fd47aecf82bd756              # double 0.32000278697465967
	.quad	0x3fe859b5599560eb              # double 0.76095073220042531
	.quad	0x3fbf8b8281234738              # double 0.12322250035074667
	.quad	0x3f975e9669232be0              # double 0.022821760336949271
	.quad	0x3fd86e1673427e0a              # double 0.38171921974023404
	.quad	0x3fe1e6e199a0d607              # double 0.55943374639053978
	.quad	0x3fe811b9ca872e89              # double 0.75216378742466461
	.quad	0x3fdec586ce4aa090              # double 0.48080606599479214
	.quad	0x3fe51c9930a3d532              # double 0.65974101543421271
	.quad	0x3fa539d421548c40              # double 0.041456822460780973
	.quad	0x3fe7dff0d4b12f93              # double 0.74608651677543703
	.quad	0x3fe02b7615d95503              # double 0.50530533091901508
	.quad	0x3fdc71067da927b0              # double 0.44439852019842885
	.quad	0x3fd23c66f3c14b64              # double 0.28493665508465527
	.quad	0x3fd9f94acb7f9134              # double 0.40584058640367293
	.quad	0x3fe3f6a9a41bcc11              # double 0.62386018803079157
	.quad	0x3fe36deda90275a9              # double 0.60716898927392038
	.quad	0x3fd97100b3d9c0fa              # double 0.39752214015517462
	.quad	0x3fcf9d027d2070f0              # double 0.24697905645087515
	.quad	0x3fdc7194dc409c98              # double 0.44443246373197942
	.quad	0x3fe096b24cef0d7b              # double 0.51839556718952851
	.quad	0x3fe5ffc7e34662fc              # double 0.68747324361456164
	.quad	0x3fe132b719c46b74              # double 0.5374408248202216
	.quad	0x3fd50b8ad629ab2a              # double 0.3288294879372865
	.quad	0x3fd7eef743b49544              # double 0.37396031963210796
	.quad	0x3fd021b130292b88              # double 0.25205640509801031
	.quad	0x3fe87f04b7937baa              # double 0.76550517897327564
	.quad	0x3fe15ba086919252              # double 0.54243494303643502
	.quad	0x3fd243e15c9738ae              # double 0.28539308588086498
	.quad	0x3fece169499695bf              # double 0.9025160252828569
	.quad	0x3fedf1e6b9cafc44              # double 0.93577896392515258
	.quad	0x3fd1e410a21a297c              # double 0.27954498129169969
	.quad	0x3fd2ca878ec797a4              # double 0.29361142104459703
	.quad	0x3fee172412ef8eec              # double 0.94032481859582395
	.quad	0x3fd88a7d26070484              # double 0.38345268930067555
	.quad	0x3fe0cf161227f127              # double 0.52527907892320946
	.quad	0x3fc718d390d14d8c              # double 0.18044514247104038
	.quad	0x3fe242dae88bd454              # double 0.57066102427655574
	.quad	0x3fd3f07266156814              # double 0.31155071229079678
	.quad	0x3fe38cdebc0b3407              # double 0.61094605185792339
	.quad	0x3fd9d3629fb35b98              # double 0.40352693172229115
	.quad	0x3fd0e2d949ab2db4              # double 0.26384575075345684
	.quad	0x3fe7ff0d07950f07              # double 0.74988414269361747
	.quad	0x3fecf0046889c0cf              # double 0.90429897706601448
	.quad	0x3fd0893b232a87dc              # double 0.25837591585343289
	.quad	0x3fdeddbaa3404772              # double 0.4822832674263885
	.quad	0x3fea8f024da688bd              # double 0.8299571529971882
	.quad	0x3fd7e167f0f0281c              # double 0.37313269166100027
	.quad	0x3fe5dfecc94c7e40              # double 0.68358458820507195
	.quad	0x3fc4d1f8030adf90              # double 0.16265773914869586
	.quad	0x3fd9cd7217872e3a              # double 0.40316440866147085
	.quad	0x3fe05be8e7446a75              # double 0.51121945542702341
	.quad	0x3fc5d50905d3d3bc              # double 0.17056381973784862
	.quad	0x3fe3659327793980              # double 0.6061492701499418
	.quad	0x3fe3b4bd00fbb3d6              # double 0.615812780304277
	.quad	0x3fd9a75fcef0e38e              # double 0.40084071358756368
	.quad	0x3fe1079a7bba2cdc              # double 0.53217815556981973
	.quad	0x3f9d49f5f8ed1fa0              # double 0.028602450674298674
	.quad	0x3feda8471d217aa8              # double 0.92679172219853445
	.quad	0x3fe2a6a0e03f5bcb              # double 0.58284038351382017
	.quad	0x3fe0b4fa9bba26b1              # double 0.5220921556039767
	.quad	0x3fa6cdac32b400b0              # double 0.044537907780978769
	.quad	0x3fd085bd204404ba              # double 0.25816276694247231
	.quad	0x3fdd6e6572a9ed32              # double 0.45986305425295193
	.quad	0x3fe58e593f14a9cb              # double 0.67362654037906944
	.quad	0x3febd7821d847eec              # double 0.87005716099880947
	.quad	0x3fc5990e749df104              # double 0.16873341268718189
	.quad	0x3fee7132a6421004              # double 0.95131809685017332
	.quad	0x3fdf489f2b9ca340              # double 0.48880748042079247
	.quad	0x3fc1e812477f3268              # double 0.13989475718553313
	.quad	0x3fefc86c437c0a92              # double 0.99321568661283011
	.quad	0x3fc4c6ac05b3c5d0              # double 0.16231298712186382
	.quad	0x3fbb7712b412c280              # double 0.10728566070862122
	.quad	0x3fe27bde568686aa              # double 0.57762066745290963
	.quad	0x3fea967279c20317              # double 0.83086513310272181
	.quad	0x3fe2ae776bdee5a0              # double 0.58379717892164606
	.quad	0x3fdea32d5ae914fa              # double 0.47870954397178844
	.quad	0x3fea34173f5c1915              # double 0.81885874152138405
	.quad	0x3fe141f77a83fd57              # double 0.53930257729363518
	.quad	0x3febd01b2aac4a48              # double 0.86915357908794366
	.quad	0x3fd87f129c8f4118              # double 0.38275590218565148
	.quad	0x3fa84e4149cf1d20              # double 0.047472038516895632
	.quad	0x3fe6504e681a77f7              # double 0.69730301220601987
	.quad	0x3fe6c53014ea513e              # double 0.71157077870387986
	.quad	0x3fc8464827dddc70              # double 0.18964483210195082
	.quad	0x3fed89d1dd14626b              # double 0.92307370357145879
	.quad	0x3fd1d2080bb281d6              # double 0.27844430105508644
	.quad	0x3f7e384a8e4f3080              # double 0.0073779022540741979
	.quad	0x3fdeb352da6f8b26              # double 0.47969504672635066
	.quad	0x3fe3331c4e31e9aa              # double 0.59998908302741438
	.quad	0x3fdceed11a7d5be0              # double 0.45207622134097214
	.quad	0x3fd19582b5d3008e              # double 0.27475040203354062
	.quad	0x3fe2d4757a4cdca1              # double 0.5884349239994614
	.quad	0x3fdcdcf5e02918ac              # double 0.45098635569264434
	.quad	0x3fb288e0cbd75638              # double 0.072401094213398021
	.quad	0x3fce2bf906223814              # double 0.23571694182868497
	.quad	0x3fe52b798272aa5a              # double 0.66155696371181283
	.quad	0x3fe47553fbf8f339              # double 0.63932227338191361
	.quad	0x3fbc73f0189aef80              # double 0.1111440715857821
	.quad	0x3fe0ee828f114b4c              # double 0.52911498968965409
	.quad	0x3fcfcb82911c62cc              # double 0.24839813313953696
	.quad	0x3fe19bff01a97d34              # double 0.55029249500868227
	.quad	0x3fe87efdc90bcfcd              # double 0.76550187365364197
	.quad	0x3fdcccb5b12b6f98              # double 0.44999449063993202
	.quad	0x3fe13f5f810ae56e              # double 0.53898596957803391
	.quad	0x3fed4d7f37fc1869              # double 0.9157100766613101
	.quad	0x3fc905bed59dd8ac              # double 0.19548783712861473
	.quad	0x3fe1554f34cd9a59              # double 0.54166374505150394
	.quad	0x3fc36efa4e4d8f04              # double 0.15182427237879648
	.quad	0x3fc9c2f4a12619a4              # double 0.20126207226367143
	.quad	0x3fef08cfb1ad4a48              # double 0.96982559874079132
	.quad	0x3fe3dd23844d5643              # double 0.62074447479489725
	.quad	0x3fd8b90838690fa8              # double 0.38629346379115725
	.quad	0x3fe621d675888a4b              # double 0.69163058238729869
	.quad	0x3fd54d27292c2606              # double 0.33283404370067193
	.quad	0x3fd91e33a4d2118e              # double 0.39246836753616143
	.quad	0x3fe696845a0deac4              # double 0.70587365711920613
	.quad	0x3fee587ed55cc06b              # double 0.94830266640020733
	.quad	0x3f89fe099f5b8200              # double 0.012691569495872024
	.quad	0x3fea60e605db01a8              # double 0.82432843345309426
	.quad	0x3fef4555770618b6              # double 0.9772136044200781
	.quad	0x3fe3df358a244d2d              # double 0.6209972093660433
	.quad	0x3fed85bf3997fa9a              # double 0.92257653473628243
	.quad	0x3fef55511d69f787              # double 0.97916465516003448
	.quad	0x3fb8d05f77699a30              # double 0.096929518369144984
	.quad	0x3fdd8b0e0f81f79c              # double 0.46161223902151405
	.quad	0x3fe467d20aeab47a              # double 0.63767339832487768
	.quad	0x3fdbad73d4ac7ab0              # double 0.43246169823570835
	.quad	0x3fe40228cc0505f4              # double 0.62526359412748755
	.quad	0x3fd3c339d7d7a94e              # double 0.30879064634668374
	.quad	0x3fc313c54a85cae4              # double 0.14904085291671898
	.quad	0x3fd7336b7e79ea40              # double 0.3625134215468826
	.quad	0x3fb951003e015be8              # double 0.098892226350798418
	.quad	0x3fcce5fb81ee945c              # double 0.22576850742658194
	.quad	0x3fd1a5b52a1b4550              # double 0.27573899375882593
	.quad	0x3fdefb43aaf65a30              # double 0.48408595748461192
	.quad	0x3fe5d41fa0221b2a              # double 0.68214398647328278
	.quad	0x3fed10d632103a3a              # double 0.90830526140218315
	.quad	0x3fedd6d4957771e5              # double 0.93247441475574233
	.quad	0x3fcb423c2110db40              # double 0.21295882811110722
	.quad	0x3fe9ded12ecc7c41              # double 0.80844935551056818
	.quad	0x3fe2369a707348d4              # double 0.56916543925242502
	.quad	0x3fe06b7972777b0f              # double 0.51311943394452608
	.quad	0x3fd1704d0584b090              # double 0.272479300869926
	.quad	0x3fd458d61b23d3e0              # double 0.31792214060197743
	.quad	0x3fddae5387e2f304              # double 0.46376503248374967
	.quad	0x3fed9c85fbc25a4c              # double 0.92535685703007564
	.quad	0x3fe237d8fc76f133              # double 0.56931733426566777
	.quad	0x3fd1dbbac07a7a52              # double 0.27903622433396891
	.quad	0x3fd47febda787aca              # double 0.32030769667646253
	.quad	0x3fc22eb687a122f0              # double 0.14205056784182757
	.quad	0x3fc5497d2dce92b8              # double 0.16630520569483109
	.quad	0x3fec703002fdd2bd              # double 0.88869476875569087
	.quad	0x3fc7ca5d76106eac              # double 0.18586319222310033
	.quad	0x3fe585c0d08b187d              # double 0.67257729273912015
	.quad	0x3fdca3980df3ef28              # double 0.44748498308739437
	.quad	0x3fdf0c5c17b46fc2              # double 0.48512937846112092
	.quad	0x3feea59ac6a155e1              # double 0.95771540446247283
	.quad	0x3fd3a1587402f744              # double 0.30672274903541941
	.quad	0x3fee40add3f50d1f              # double 0.94539538762947817
	.quad	0x3fed015a48df8d24              # double 0.90641512139373903
	.quad	0x3fe20de18b2881c7              # double 0.56419446162549824
	.quad	0x3fda6725c59bda0c              # double 0.4125456266187093
	.quad	0x3fa173b3c14dd9c0              # double 0.034085862490360608
	.quad	0x3feba4417f6e6766              # double 0.86380076302451125
	.quad	0x3fb5dd0de398bda0              # double 0.085404270234667568
	.quad	0x3fe38170cb2a7360              # double 0.60955085450005342
	.quad	0x3fe9771062b81d81              # double 0.79578418046087063
	.quad	0x3fd51fdb7d48a2a0              # double 0.33006942019214058
	.quad	0x3faf2beab90ead90              # double 0.060881934251791781
	.quad	0x3fc72e47d454bbe8              # double 0.18109987132763128
	.quad	0x3fe780636299f4d8              # double 0.73442239053806713
	.quad	0x3fed276074436e29              # double 0.91105673511214491
	.quad	0x3febb45e06bfd426              # double 0.86576749151447951
	.quad	0x3fd85b435c1dc7ce              # double 0.38057025905356745
	.quad	0x3fc861da8e04018c              # double 0.19048625883443682
	.quad	0x3fbcd5d741721d80              # double 0.11263795230671825
	.quad	0x3fdb46fd5e900c3a              # double 0.42620786890637741
	.quad	0x3fdd711c14250f2e              # double 0.46002866713773727
	.quad	0x3fec5fcd247a8658              # double 0.88669449925164212
	.quad	0x3fc0828f09ea0e98              # double 0.12898433670135456
	.quad	0x3fd5053e4a573e86              # double 0.32844502696841749
	.quad	0x3fc70dbbc66cb364              # double 0.18010661305143139
	.quad	0x3fea50576b7a4a05              # double 0.82230731002556523
	.quad	0x3fe79944ab60603e              # double 0.73745950195280563
	.quad	0x3feb0e6839b45c4a              # double 0.84550868292252201
	.quad	0x3fef4733c00510ce              # double 0.97744166854729442
	.quad	0x3fe7d6d290977b27              # double 0.74497345200129395
	.quad	0x3fe0c692a9d1fd56              # double 0.52423985641500326
	.quad	0x3fe002b18439c328              # double 0.50032878709143791
	.quad	0x3feba7092191999d              # double 0.86414009624859356
	.quad	0x3fea69b0fae83119              # double 0.82540177350304866
	.quad	0x3fbb482331823718              # double 0.10656948050219872
	.quad	0x3fc479909df7432c              # double 0.15995986664941009
	.quad	0x3fe27d79b9a0063a              # double 0.57781683211232537
	.quad	0x3fd535befc826730              # double 0.33140539797897173
	.quad	0x3fdab9350d27be9e              # double 0.41755415234272586
	.quad	0x3fd7535bd0873dcc              # double 0.36446280826654909
	.quad	0x3fef96566d73d21b              # double 0.98710175874163341
	.quad	0x3fe628101de7c568              # double 0.69239049759759741
	.quad	0x3fd03cd225e47e74              # double 0.25371221256680276
	.quad	0x3fe91b7cce488b2c              # double 0.78460541047784237
	.quad	0x3f301fa43670e000              # double 2.460266027273228E-4
	.quad	0x3fd6bb32ae8189b4              # double 0.35517565766908921
	.quad	0x3fefaca345b67377              # double 0.9898239480568084
	.quad	0x3fe5e01e97142287              # double 0.68360833652066411
	.quad	0x3fea631549246d6a              # double 0.82459511075596237
	.quad	0x3fe634948612634a              # double 0.69391847787765326
	.quad	0x3fd7920ce629d2b8              # double 0.368289208191793
	.quad	0x3fdfe318e3f0ab9a              # double 0.49823591480042639
	.quad	0x3fd36216ad4223d8              # double 0.30286185188066161
	.quad	0x3febe01203c430ff              # double 0.87110234008426335
	.quad	0x3fe3ccd44f036ccf              # double 0.61875358040142625
	.quad	0x3fef3f0baeabb6fc              # double 0.97644600024588568
	.quad	0x3fd8bf3bff19cf20              # double 0.38667201912106641
	.quad	0x3fe5d405922d2535              # double 0.68213156271045838
	.quad	0x3fe697138c840906              # double 0.70594193882450962
	.quad	0x3fd41bc394b04d0a              # double 0.31419457931879491
	.quad	0x3fec9448a947542f              # double 0.89310105383140648
	.quad	0x3fe6aec1fdf3f540              # double 0.70883273697078408
	.quad	0x3fd085ac84c852ba              # double 0.25815880744020669
	.quad	0x3feb7e6ad29ce613              # double 0.85918179641083936
	.quad	0x3fc83873a71edc58              # double 0.18922277126486864
	.quad	0x3fbfef4a353c2730              # double 0.1247450237243839
	.quad	0x3fec47f7e950f718              # double 0.88378520555099538
	.quad	0x3fd1b9c1bed5af7e              # double 0.27696269642068916
	.quad	0x3fc1a265cbbb5018              # double 0.13776848266445607
	.quad	0x3fdfe4dc59e00e3c              # double 0.49834355141522102
	.quad	0x3fe53b98ac42d60a              # double 0.6635249485468091
	.quad	0x3fdb0e2cdeab7c08              # double 0.422740189982449
	.quad	0x3fcf32e7b7090974              # double 0.24374100148458988
	.quad	0x3fe972e6488df922              # double 0.79527582331482827
	.quad	0x3fd0bf3d3edebb50              # double 0.26167231692936799
	.quad	0x3fb640e0849be638              # double 0.08692744481586423
	.quad	0x3fd343b0371fb3fe              # double 0.30100636847674866
	.quad	0x3fe81a97d1d7e84d              # double 0.75324622139965813
	.quad	0x3f9da629ac833ce0              # double 0.028954173235260394
	.quad	0x3fd938249495926c              # double 0.39405169019872832
	.quad	0x3fee04d56121f61e              # double 0.93809002848837841
	.quad	0x3fd8fc5c0383db90              # double 0.39040279715794046
	.quad	0x3fd19872de0534c6              # double 0.27492973024056899
	.quad	0x3fd643294a1ad0aa              # double 0.34784919964591643
	.quad	0x3fe6f955ac7fe16a              # double 0.7179363602763662
	.quad	0x3fde1f2db24de00c              # double 0.47065298473853612
	.quad	0x3f6b30d2c7e72900              # double 0.0033191792310606205
	.quad	0x3feeac08fb600f2f              # double 0.95850037667012155
	.quad	0x3fab7d1f50c050a0              # double 0.053688982589080725
	.quad	0x3fc902115941ae5c              # double 0.19537560327750014
	.quad	0x3fd00d7977ceed54              # double 0.25082241725950394
	.quad	0x3fe978b2dafb9434              # double 0.79598372240128023
	.quad	0x3fe3bff66cd67647              # double 0.61718293435451066
	.quad	0x3fe35c1800a8dc13              # double 0.60499191407041264
	.quad	0x3fefe166db12968c              # double 0.99626486575717043
	.quad	0x3fce718456d7ff48              # double 0.23783926239411302
	.quad	0x3fe05950c033e1ab              # double 0.51090276279051261
	.quad	0x3fda6215794f8014              # double 0.41223656508191309
	.quad	0x3fc7ca7d4ca9dcd0              # double 0.18586698764167986
	.quad	0x3fed58ae8a4b717d              # double 0.91707541475948029
	.quad	0x3fdbd8bb3ba1f8da              # double 0.43510323356157488
	.quad	0x3fef628833597d17              # double 0.98077783612453373
	.quad	0x3fb85ac0c7f7e150              # double 0.095134781666165624
	.quad	0x3feeb306969c9c5b              # double 0.95935372749671488
	.quad	0x3fcaf5153a0af164              # double 0.21060433706396531
	.quad	0x3fcbb243f7b4507c              # double 0.21637773127497784
	.quad	0x3fb94d992de8d678              # double 0.098840306957606816
	.quad	0x3fe0782f9de101bd              # double 0.51467114291886384
	.quad	0x3fdec876c54c3ea4              # double 0.48098534839025775
	.quad	0x3fea51a58af3d4fc              # double 0.82246663226274518
	.quad	0x3fe088d7cb38788d              # double 0.51670446101685885
	.quad	0x3fa8a571dbac8ff0              # double 0.048137243333513768
	.quad	0x3fcde475c7840338              # double 0.23353454820610309
	.quad	0x3fdc034919e13a04              # double 0.43770053412745846
	.quad	0x3fed26e528b5a10f              # double 0.91099794341156037
	.quad	0x3fd6023ba3264842              # double 0.34388628895351669
	.quad	0x3fe3c6f646d8060e              # double 0.61803735577285734
	.quad	0x3fdc9010c798c874              # double 0.44629306308627936
	.quad	0x3fe83d7f22375715              # double 0.75750691111417956
	.quad	0x3fef482866616e9e              # double 0.97755832668504516
	.quad	0x3fbfd28bd3853e98              # double 0.12430642999719976
	.quad	0x3fcfe79abb2ace34              # double 0.24925550593398926
	.quad	0x3fe1690381d9bde4              # double 0.54406905518947868
	.quad	0x3fcad54e9a044f94              # double 0.2096346141848896
	.quad	0x3fc037d205242fa8              # double 0.12670350314180934
	.quad	0x3fe709854d04fc9d              # double 0.71991219561450104
	.quad	0x3fdddc0992de0616              # double 0.46655501692302559
	.quad	0x3fec8074bab1f647              # double 0.89068066085719344
	.quad	0x3fc22c211efdf774              # double 0.14197172177585637
	.quad	0x3feb0a829ab1d15c              # double 0.84503298009671423
	.quad	0x3fc576781fa0b7d8              # double 0.16767789406134059
	.quad	0x3fd838ed15d60076              # double 0.37847449428955515
	.quad	0x3fe0adbd1853c672              # double 0.52120833159842861
	.quad	0x3fd6526b42e2d2de              # double 0.34878045589293361
	.quad	0x3fc70b1ba66fe1a8              # double 0.18002648951347777
	.quad	0x3fe94ad119092496              # double 0.79038290872371664
	.quad	0x3fdd88987bbc6f38              # double 0.46146213611222064
	.quad	0x3feeb68a5b973703              # double 0.95978277100377373
	.quad	0x3fe63b2bce39170e              # double 0.69472303655558831
	.quad	0x3fede96c2a2a37a3              # double 0.93474395976385372
	.quad	0x3fee136f75adc305              # double 0.93987248405582646
	.quad	0x3fe09ef623d4d1a2              # double 0.51940447805695933
	.quad	0x3fe9331bcf4f40b5              # double 0.78748884668495711
	.quad	0x3fa6708be29f7900              # double 0.043827411092694391
	.quad	0x3fb60092bebb2bd0              # double 0.085946246686190663
	.quad	0x3fe908d0833e4229              # double 0.78232598908841056
	.quad	0x3fe1e591229ecdda              # double 0.55927330743582648
	.quad	0x3fd74a3775e3ca42              # double 0.36390482437778726
	.quad	0x3fea130ad6eee2da              # double 0.81482450465326939
	.quad	0x3fb5e2c119dff948              # double 0.085491246049035685
	.quad	0x3fec8118728cb4ff              # double 0.89075872776962217
	.quad	0x3fd5872fc93f7f92              # double 0.33637613919381082
	.quad	0x3fe3a0b066d8f0c9              # double 0.61336536490809934
	.quad	0x3fec5d191c18533e              # double 0.88636451232250812
	.quad	0x3fb81c5ff161ab48              # double 0.094182964736018282
	.quad	0x3fd908480ef0a02c              # double 0.39113046130160245
	.quad	0x3fe05fb7283fb4e1              # double 0.51168401585678336
	.quad	0x3fe350b09aaceea1              # double 0.60359983644544368
	.quad	0x3fe7e44326309fe1              # double 0.74661405047390528
	.quad	0x3fe3cf330a292304              # double 0.61904289230832932
	.quad	0x3fea8b39d2a08abb              # double 0.82949534547909509
	.quad	0x3fe9278fd50eb588              # double 0.78607932675156267
	.quad	0x3fe108bcb2f2a7ea              # double 0.5323165412021329
	.quad	0x3feb351f96e3626c              # double 0.85023478956561637
	.quad	0x3fe4f93d9425e9ff              # double 0.65542487082649348
	.quad	0x3fea744b75a76701              # double 0.82669613818436016
	.quad	0x3fcabbd85adb0e08              # double 0.2088575786238922
	.quad	0x3f816df8d12bedc0              # double 0.0085105360826592812
	.quad	0x3fef6c7141331807              # double 0.98198759779256838
	.quad	0x3fde38a17d1bf678              # double 0.47220647065828514
	.quad	0x3fe55770f21b9a5c              # double 0.66692397391018288
	.quad	0x3fe83f83c9dcf0c1              # double 0.75775327135445292
	.quad	0x3fca7bded3798840              # double 0.20690522504725273
	.quad	0x3fe0cc788ef468a8              # double 0.52495983048290373
	.quad	0x3fdccd9eceaf96a0              # double 0.45005006965798522
	.quad	0x3fe7814b9e5b1d8d              # double 0.73453312806025084
	.quad	0x3fd71ed4844da4ee              # double 0.36125672264331754
	.quad	0x3fedae18bbaa93f6              # double 0.92750202802255788
	.quad	0x3fec489e6e36efa6              # double 0.88386460806167544
	.quad	0x3fce375ce3bd2f2c              # double 0.23606454010075006
	.quad	0x3fe2b2df673af24a              # double 0.58433504259262148
	.quad	0x3fbf0f301c854f08              # double 0.12132549949938831
	.quad	0x3fe0ab5d5c788192              # double 0.52091854153336414
	.quad	0x3fcd304216303a88              # double 0.22803522189538605
	.quad	0x3fe4dad6bedea3d2              # double 0.65171372679935247
	.quad	0x3fded22601e46820              # double 0.48157644448076731
	.quad	0x3fe69de36286c23c              # double 0.70677346461713553
	.quad	0x3fed9327b7b32c20              # double 0.92421327475438275
	.quad	0x3fee9662b27b0879              # double 0.95585760936252406
	.quad	0x3fbf134ab8482318              # double 0.12138812064234761
	.quad	0x3fccfcd8cef4f9cc              # double 0.22646627526587648
	.quad	0x3fd0f9b7329be4fe              # double 0.26524143163949521
	.quad	0x3fdd957b83a0b614              # double 0.46224868635440086
	.quad	0x3fed9835f88260fb              # double 0.92483042275401262
	.quad	0x3fecbe417f7d3914              # double 0.89822459125733411
	.quad	0x3fdcd041d4c192d0              # double 0.45021100785224366
	.quad	0x3fdba452dc01c214              # double 0.43190452084584874
	.quad	0x3fb8e3bf16260040              # double 0.097225134761175447
	.quad	0x3fef0ba5e5fb9030              # double 0.97017187994470611
	.quad	0x3fed1089fe7bf72b              # double 0.90826892570450946
	.quad	0x3fd449d77b30f3da              # double 0.31700694113152184
	.quad	0x3fc74344bdcfdb14              # double 0.1817403723541352
	.quad	0x3fc985c4c0ebc194              # double 0.19939479274718208
	.quad	0x3fee0e296e4fedf4              # double 0.93922874017101642
	.quad	0x3fc1ca1854bcc918              # double 0.13897995126314622
	.quad	0x3fe0a2b957465240              # double 0.51986376806105028
	.quad	0x3fcd7d6efa720ec0              # double 0.23039042691026701
	.quad	0x3fddae54487ddcac              # double 0.46376521186125319
	.quad	0x3fead59ae7027216              # double 0.83857483977368719
	.quad	0x3fb96dd6ab806d90              # double 0.099332253332639064
	.quad	0x3feaf8a05bde6d11              # double 0.84284990256438352
	.quad	0x3feb2075681d39a3              # double 0.84771223387524619
	.quad	0x3fa1bcaa2815f9f0              # double 0.034642522233287454
	.quad	0x3fcfc930f4625500              # double 0.24832736904924246
	.quad	0x3fccb9cdd5ba1c7c              # double 0.22442028938187153
	.quad	0x3fc1b5aa264a0ac4              # double 0.13835646504965926
	.quad	0x3fda873f3cd0b61c              # double 0.4145048231028754
	.quad	0x3fe3226e1cd4698a              # double 0.59795289641196914
	.quad	0x3fd7012d37c3bf90              # double 0.35944681592717931
	.quad	0x3fedad547bdf4956              # double 0.9274084491137653
	.quad	0x3fec9ef99e355b68              # double 0.89440613651354983
	.quad	0x3feb4843bb6719ba              # double 0.85257135965439734
	.quad	0x3fdaaf8fff7f0ec8              # double 0.41696548415005141
	.quad	0x3fe129006fd94ae5              # double 0.536255091147123
	.quad	0x3feedfb88be50f04              # double 0.96480967829890618
	.quad	0x3fd5e1675f7f5b66              # double 0.34188255620886421
	.quad	0x3febab5ba62f32d7              # double 0.86466772516140622
	.quad	0x3fd3cd5d79714930              # double 0.30940949306126964
	.quad	0x3fe70ceffeff53b7              # double 0.72032928280042696
	.quad	0x3feec51b6fa781ec              # double 0.96156093413816057
	.quad	0x3fd61bb43b765b1a              # double 0.34544091994159631
	.quad	0x3fb26f035a7b16a8              # double 0.072006425466578095
	.quad	0x3feda387fe551c4c              # double 0.92621230768498596
	.quad	0x3fbf49eb25a51140              # double 0.12222165745794644
	.quad	0x3feac8cc9000e79a              # double 0.83701160550775744
	.quad	0x3fe2a6148dfaadda              # double 0.58277347307506067
	.quad	0x3fb88550e8100750              # double 0.095784241348181753
	.quad	0x3fdd35171ba0f612              # double 0.45636537263985233
	.quad	0x3fb91ce462271a68              # double 0.098097108805725974
	.quad	0x3fd46841a7a70312              # double 0.31886330959609765
	.quad	0x3fb3b4b7b2dd97e0              # double 0.076976281326636364
	.quad	0x3fe037595d9c4a30              # double 0.50675648005773688
	.quad	0x3fa90ad8b0695d60              # double 0.048910876783959223
	.quad	0x3fc29cf0a13d3728              # double 0.14541442749980971
	.quad	0x3fdf9e25dc2e490c              # double 0.49402758123427826
	.quad	0x3fdb4f624e2e3830              # double 0.42672021517580827
	.quad	0x3fdd44f4c84a1064              # double 0.45733375129225906
	.quad	0x3f8b3e908ba18580              # double 0.013302926312635632
	.quad	0x3fe9a16f690c1396              # double 0.80095644490266937
	.quad	0x3fa39517090bed80              # double 0.038246841291733169
	.quad	0x3feffac531d13e54              # double 0.99936160783722494
	.quad	0x3fe7185ec15d37e4              # double 0.72172487036163746
	.quad	0x3fc93bf9c7842c74              # double 0.19714281312949178
	.quad	0x3feb506b13ceab3a              # double 0.85356668346989939
	.quad	0x3fdb1d34490311e8              # double 0.42365748529507963
	.quad	0x3fd20f5c0df5a108              # double 0.28218747485381401
	.quad	0x3fe085b7aa7f0350              # double 0.51632293033626731
	.quad	0x3fd99db1c11448e0              # double 0.40024989943880307
	.quad	0x3fec98535088730b              # double 0.89359441498854275
	.quad	0x3fca1c8b06ffc440              # double 0.20399606553795202
	.quad	0x3fdc675d6d7f954c              # double 0.44380889599991202
	.quad	0x3fe480017a580814              # double 0.64062570472038027
	.quad	0x3fc173d2a617c620              # double 0.13634713277819888
	.quad	0x3fe191a0aba22a01              # double 0.54902680895003197
	.quad	0x3fe3404d34cc1df9              # double 0.60159931480387663
	.quad	0x3fde5c40e617f34e              # double 0.47438070745538574
	.quad	0x3fbd5207072fc718              # double 0.11453288960890651
	.quad	0x3fe757d2993751db              # double 0.72947053837793463
	.quad	0x3fe06875138c5428              # double 0.51275113885879353
	.quad	0x3fea6cd0967d78c1              # double 0.82578305618860537
	.quad	0x3fd740bb270893dc              # double 0.36332587062707744
	.quad	0x3fc27c76ee8a3404              # double 0.1444233574624435
	.quad	0x3fe3d2b561ad78ec              # double 0.61947125508939171
	.quad	0x3fdd22d7185d27da              # double 0.45525147799764698
	.quad	0x3fe9baa7a95b00d3              # double 0.80403502537958571
	.quad	0x3fe8e48cf8c838fe              # double 0.77789925184495679
	.quad	0x3fe5b29f3b63591b              # double 0.67805444335207044
	.quad	0x3fe9811e2d0bdab3              # double 0.79701145933252915
	.quad	0x3fa8d94275670020              # double 0.048532559233990691
	.quad	0x3fe13161460ed453              # double 0.53727782900990417
	.quad	0x3fd0cb2eea0d6d6a              # double 0.26240132195171972
	.quad	0x3fe566a36efc9047              # double 0.66877910306039545
	.quad	0x3fc738fd61538e00              # double 0.18142668964638631
	.quad	0x3fc22c8c55b4d3fc              # double 0.14198450264817086
	.quad	0x3fe1df3dceb65331              # double 0.55850115178563986
	.quad	0x3fd393c19cd66eea              # double 0.30589332882094189
	.quad	0x3fe7edb1e6e5d5ba              # double 0.74776549432015504
	.quad	0x3fde1ba28cf85cb0              # double 0.47043670431726081
	.quad	0x3feec8b31d95b88b              # double 0.96199947145739039
	.quad	0x3fdc7258fe41b088              # double 0.44447922544237217
	.quad	0x3fca7f83768edcdc              # double 0.20701640404670385
	.quad	0x3fe2473a8cd7a7b7              # double 0.5711949110820943
	.quad	0x3fed21d8c5187317              # double 0.91038168425766031
	.quad	0x3fddce09524d6384              # double 0.4657004646047016
	.quad	0x3fd2e0436e7a7ebc              # double 0.29493795193591743
	.quad	0x3fa4ab1d298351c0              # double 0.040367995564938308
	.quad	0x3fe6981d2d505e01              # double 0.70606860018136797
	.quad	0x3fee92f7f73be417              # double 0.95544050491219223
	.quad	0x3fe2b26b5c8cb5ba              # double 0.58427970958808051
	.quad	0x3feec32b03d99b21              # double 0.96132422210653001
	.quad	0x3fdc03204d92ef54              # double 0.43769080710966546
	.quad	0x3fe75f359de976aa              # double 0.73037224619084395
	.quad	0x3fd5950e745a7790              # double 0.33722268450389326
	.quad	0x3fc094d06a09f050              # double 0.12954144647290144
	.quad	0x3fe5955b044ddea1              # double 0.67448187676105331
	.quad	0x3f6cbf16560cda00              # double 0.0035090862515076982
	.quad	0x3fc67edeb962eacc              # double 0.17574676563329772
	.quad	0x3fbd8241b61ab308              # double 0.11526880927949545
	.quad	0x3fd686fae825080e              # double 0.35198853178383238
	.quad	0x3fea2b74197911d4              # double 0.81780438399487787
	.quad	0x3fe5b400fd5c7e86              # double 0.67822312817220687
	.quad	0x3fc40bdc171c958c              # double 0.15661193016528008
	.quad	0x3fc52c3a1bf55028              # double 0.16541220059537065
	.quad	0x3fe845b208292ffb              # double 0.7585077437774993
	.quad	0x3feb19a6d3c4ccea              # double 0.84688130723079991
	.quad	0x3fef06c70949f178              # double 0.96957732977129662
	.quad	0x3fe92b27d574bbf3              # double 0.78651801767943963
	.quad	0x3fde9dc45f49a62a              # double 0.47837933831633228
	.quad	0x3fd4d9853180d492              # double 0.32577638468075876
	.quad	0x3fdb43eceab2b23a              # double 0.42602084083299341
	.quad	0x3fac49372769e6f0              # double 0.055246089516868824
	.quad	0x3fd2b62a6c8734b8              # double 0.29236851309253664
	.quad	0x3fcc6d202d1ba128              # double 0.22208025171790635
	.quad	0x3fe89daf9b566da2              # double 0.76924877490403198
	.quad	0x3fe69e1af2220894              # double 0.70679995814886576
	.quad	0x3fc8ab53709fcb48              # double 0.19272845267513561
	.quad	0x3fe902dbdeb2e9dc              # double 0.78159898277163675
	.quad	0x3fe7a0a7e1197a5e              # double 0.73836130108595532
	.quad	0x3fdbc5b1e8272e64              # double 0.43394134207912871
	.quad	0x3fedcf6ae7b96c22              # double 0.93156953104642448
	.quad	0x3fd895d2fc5ff2dc              # double 0.38414454122520936
	.quad	0x3fd47541ec4de7fc              # double 0.31965683056444028
	.quad	0x3fe15f9da3bfc7bc              # double 0.54292184812788191
	.quad	0x3fa71ddc1fdd5c40              # double 0.045149687661869553
	.quad	0x3fc455a08ea2b4e0              # double 0.1588631340468174
	.quad	0x3fe1bbeb4f7bdde0              # double 0.55418935321989338
	.quad	0x3fe0bdbfb36f48a6              # double 0.5231626991828946
	.quad	0x3fcb889917052f84              # double 0.21510614036594344
	.quad	0x3fd5bd9bca7ac2a0              # double 0.33969778798477002
	.quad	0x3fd795101e366fd6              # double 0.368473081116233
	.quad	0x3fea3387411d6ad8              # double 0.81879008023983157
	.quad	0x3fc687b7993fbcb0              # double 0.17601675970897679
	.quad	0x3feae28bca024f26              # double 0.84015454726111183
	.quad	0x3fc0804a823b1c0c              # double 0.12891513213091377
	.quad	0x3fc27655600f4bb0              # double 0.14423625173966803
	.quad	0x3fa9690cbfc3a960              # double 0.049629591377952975
	.quad	0x3fe2f36b5a31f3bb              # double 0.59221427551494032
	.quad	0x3fe9a0a4bcdd0387              # double 0.80085980307932025
	.quad	0x3fe46fa11a4c0cc9              # double 0.63862662445208074
	.quad	0x3fcaf094cbfe01b0              # double 0.21046695671613014
	.quad	0x3fe08cbd55ab885f              # double 0.51718012554580273
	.quad	0x3fe5ed93674dd146              # double 0.68525095154340288
	.quad	0x3fdae60364003b46              # double 0.42028889432633709
	.quad	0x3fe022bc0899f87f              # double 0.50424005203218758
	.quad	0x3fc219959287e3bc              # double 0.14140576987099773
	.quad	0x3fe838b6ddf3d858              # double 0.75692313528157751
	.quad	0x3fd182458b979b74              # double 0.2735761511998398
	.quad	0x3fea6587c23572d5              # double 0.82489383632090585
	.quad	0x3fe6cb497be0613a              # double 0.71231531328798003
	.quad	0x3fe918b72a27120b              # double 0.7842670272153226
	.quad	0x3fd95a21b77a2366              # double 0.39612620275197796
	.quad	0x3fd64c9d4fcbba24              # double 0.34842617790755726
	.quad	0x3fee419cfe761567              # double 0.94550943088021888
	.quad	0x3fbf4b32397f5018              # double 0.12224115279906334
	.quad	0x3fced59d8d88c190              # double 0.24089402590608389
	.quad	0x3febd5d3edb85cbf              # double 0.86985203199119343
	.quad	0x3fc9491480a7a384              # double 0.19754272729849387
	.quad	0x3fe0318e0bf58ffc              # double 0.50604917846476338
	.quad	0x3feb3fbb85e9a4cc              # double 0.85152984766787076
	.quad	0x3fcc568513e189ac              # double 0.22139037581207555
	.quad	0x3fd79a50214825e2              # double 0.36879351854494591
	.quad	0x3fd213cb0bdc9250              # double 0.2824580779872905
	.quad	0x3fb45bfdd3df9e28              # double 0.079528679110460687
	.quad	0x3fa4b6968cb43030              # double 0.040455536533130831
	.quad	0x3fc3b0878b6bb778              # double 0.15382475192694378
	.quad	0x3fe5f497b77ab2f9              # double 0.68610750041770452
	.quad	0x3feb23e1b0112887              # double 0.8481300772484851
	.quad	0x3fe241cd754a6730              # double 0.57053254040076773
	.quad	0x3fe2fdc16b714086              # double 0.59347601876108125
	.quad	0x3fe239fc0a654b1f              # double 0.56957819013982547
	.quad	0x3fefaea3f13a64e8              # double 0.99006840815414154
	.quad	0x3fede32cf0117539              # double 0.9339813889343197
	.quad	0x3fd0e14461020ea8              # double 0.26374921296540288
	.quad	0x3fd6f68480fba90e              # double 0.35879623981476605
	.quad	0x3fee4c0850427db3              # double 0.94678130794266335
	.quad	0x3fa23f22ce72b060              # double 0.035637939168140731
	.quad	0x3fe4f0a9c7b92266              # double 0.65437783249315085
	.quad	0x3fe4d57490271887              # double 0.65105655817821251
	.quad	0x3fefcfb430911040              # double 0.99410447583841943
	.quad	0x3fec975e93d3965e              # double 0.89347771522870878
	.quad	0x3fd84f33b83abed8              # double 0.37983410826835273
	.quad	0x3fdc187c0896bd68              # double 0.43899441565277764
	.quad	0x3fea9f75745e0dc4              # double 0.83196518638617833
	.quad	0x3fd2b45a03f25a22              # double 0.2922577894727586
	.quad	0x3fc892ea4619a294              # double 0.19198349402292492
	.quad	0x3fe096519adc16f7              # double 0.51834945913353081
	.quad	0x3fd3d51e0f2554c8              # double 0.3098826549442717
	.quad	0x3fcc1cc348ac4058              # double 0.21962777183989846
	.quad	0x3fe760a2e34c1bb6              # double 0.73054642099383815
	.quad	0x3fe280ca118d873f              # double 0.57822135380067852
	.quad	0x3fdf0bc79b5bf58c              # double 0.48509397670553578
	.quad	0x3feb32ffd7c928d9              # double 0.84997551103267732
	.quad	0x3fe21b9d29215e4d              # double 0.5658708384825758
	.quad	0x3fd69e223167e770              # double 0.35340170693199635
	.quad	0x3fe44e223209163c              # double 0.63453779003675193
	.quad	0x3fb3afa6b153f9c0              # double 0.076898973744369492
	.quad	0x3fbca0eecec7e648              # double 0.1118306403003767
	.quad	0x3fab938d709d1520              # double 0.053860111233499319
	.quad	0x3fd1609a2cfdbf40              # double 0.27152113336250139
	.quad	0x3fe7936a20b7f06c              # double 0.73674494161924775
	.quad	0x3fe38ac4138c17d7              # double 0.61068919961757728
	.quad	0x3fac4f50d3639ec0              # double 0.055292630962694655
	.quad	0x3fda8e07f812b6fa              # double 0.41491889215363609
	.quad	0x3fe429f53e649874              # double 0.63012182413218776
	.quad	0x3fd0d2813bda374e              # double 0.26284819455110131
	.quad	0x3fd0c655a477946c              # double 0.26210537968865455
	.quad	0x3fd8c225929bf026              # double 0.38684977834032208
	.quad	0x3fe2d707237dbd4b              # double 0.58874852115506238
	.quad	0x3fce3f7bc475f47c              # double 0.23631236164866098
	.quad	0x3fc8b251687fad00              # double 0.19294183351971839
	.quad	0x3fcf56581517913c              # double 0.24482251195798621
	.quad	0x3fe0e6393a935f38              # double 0.52810346069870828
	.quad	0x3fcda70b571fc894              # double 0.23166028741940592
	.quad	0x3fed73aa4d4d84de              # double 0.92036929224209607
	.quad	0x3fcc4b0afd60a22c              # double 0.22104012844035148
	.quad	0x3fa4e1038e83af00              # double 0.040779219767356878
	.quad	0x3fcde90351aa00b0              # double 0.23367349135879101
	.quad	0x3fcffcffea053af0              # double 0.2499084370305904
	.quad	0x3feb1167f1c995d3              # double 0.84587475990400163
	.quad	0x3fea4e40e3186e13              # double 0.82205242495132536
	.quad	0x3fd42a4a583f7844              # double 0.31508120172464182
	.quad	0x3fcea3d20b0e3968              # double 0.23937440433332857
	.quad	0x3fb15e2b1f00e1c8              # double 0.067843146390152431
	.quad	0x3fe4806da0cc81af              # double 0.6406772747614492
	.quad	0x3fe0b7fe509ca87f              # double 0.52246013397713387
	.quad	0x3feacccdcbdc3a90              # double 0.83750047508677206
	.quad	0x3fe975d2c2fc52b7              # double 0.79563272555477382
	.quad	0x3feb9017a8948abb              # double 0.86133940625980843
	.quad	0x3fd62268bb105dc6              # double 0.34585016506158828
	.quad	0x3fe480f4ef1f8900              # double 0.64074179366824069
	.quad	0x3fe91558b0a67329              # double 0.78385576726905015
	.quad	0x3febeed1fe85fa34              # double 0.87290286742774592
	.quad	0x3fdd7db1599b7ade              # double 0.46079667807309288
	.quad	0x3fbce5e0cda6a300              # double 0.11288266201757935
	.quad	0x3fe34045edca75d9              # double 0.60159584468390925
	.quad	0x3fe8bca4c3de18b6              # double 0.77302778487571433
	.quad	0x3fc42fdb4f8069ec              # double 0.15771047002711158
	.quad	0x3fe4c91797ebca0d              # double 0.64954738304214887
	.quad	0x3fb0abb15be44280              # double 0.065119824347002364
	.quad	0x3fdbb1074c8a0b0a              # double 0.43267996286901733
	.quad	0x3fb598caf55129a8              # double 0.084362683193069388
	.quad	0x3fe2771d39de15c3              # double 0.57704030325174249
	.quad	0x3fe15f481a375e51              # double 0.54288106079452281
	.quad	0x3fb52fbc0dafc8e8              # double 0.082759621945828976
	.quad	0x3fe623c7677308e5              # double 0.69186754422142072
	.quad	0x3fdf81b2a605f540              # double 0.49229112828455257
	.quad	0x3fe6b33f349d447d              # double 0.70938072468028646
	.quad	0x3fe8bda637cc93fb              # double 0.77315054796474614
	.quad	0x3fc7f1354dda1064              # double 0.18704859067304647
	.quad	0x3fdf6f2cb5b75b3c              # double 0.49116056199766311
	.quad	0x3fd85616539edd28              # double 0.3802543465239574
	.quad	0x3fbc27b7b36eebf0              # double 0.10998104220099925
	.quad	0x3fec3a3c3ff5ce4b              # double 0.8821088074896094
	.quad	0x3feaf93704c927e4              # double 0.842921742770383
	.quad	0x3fcb22439a1f7254              # double 0.21198315644768917
	.quad	0x3fdf77f31f9bdc56              # double 0.49169614874648937
	.quad	0x3fc9b69672490c8c              # double 0.20088463383044475
	.quad	0x3fe886075ac605b9              # double 0.76636092881397311
	.quad	0x3fef2d05543b9d32              # double 0.97424570514423281
	.quad	0x3fe025023ddbffb2              # double 0.50451767045887252
	.quad	0x3fe1c0599ee54aae              # double 0.55473023447333047
	.quad	0x3fe1576a9e6fa824              # double 0.54192095703661325
	.quad	0x3fe1a87e2f62c94a              # double 0.55181798224502043
	.quad	0x3fe21c3b85510c21              # double 0.56594635046383612
	.quad	0x3fb100f9ffdca110              # double 0.066421151129024247
	.quad	0x3fc1d2de78dc46ec              # double 0.13924771214856635
	.quad	0x3fbb0df3d0ca0a60              # double 0.10568164679902159
	.quad	0x3fe72d0eb80f6aca              # double 0.72425018262159679
	.quad	0x3fe44a43cc78a786              # double 0.63406553207208627
	.quad	0x3fc026da989b3ed8              # double 0.12618572665677763
	.quad	0x3feb0c79a0aff6dd              # double 0.84527284034967531
	.quad	0x3fe3e2bcbe776609              # double 0.62142789078205951
	.quad	0x3fd2916e7a008054              # double 0.29012643732312893
	.quad	0x3fe8eee47d323ee5              # double 0.77916168644329942
	.quad	0x3fd374e429e5bdd2              # double 0.30400947658105537
	.quad	0x3fd274c422718c0a              # double 0.28837684024455312
	.quad	0x3fe2fd1ec8cf9c96              # double 0.59339846821684961
	.quad	0x3fd9c790fe829828              # double 0.40280556540017409
	.quad	0x3fe16fc846040f30              # double 0.54489530253383656
	.quad	0x3fe4a08f70408c19              # double 0.64459964679952286
	.quad	0x3fcacd02ec8a9164              # double 0.20938145208232151
	.quad	0x3fcf04a8479409a0              # double 0.24232963080437475
	.quad	0x3fea4466f6459f7b              # double 0.82084987735741721
	.quad	0x3fdac65fd7842e26              # double 0.4183578114177372
	.quad	0x3f3aa9299c3e5800              # double 4.0681138875109379E-4
	.quad	0x3fdc9f26fb861db2              # double 0.44721388399963324
	.quad	0x3fef47a1ed4ba25c              # double 0.97749420496718242
	.quad	0x3fd739c8107221fa              # double 0.36290170293844393
	.quad	0x3fc31735ae93b2ac              # double 0.14914580368294617
	.quad	0x3fcb3b1d00062df8              # double 0.21274149419001254
	.quad	0x3f60dd73ad8e6200              # double 0.0020587214789424824
	.quad	0x3fccd6d43c0c2280              # double 0.22530606204988501
	.quad	0x3fda56ac663d949e              # double 0.41154012665203676
	.quad	0x3fc49ad0fd994890              # double 0.16097462065460322
	.quad	0x3fe4822131d65bd8              # double 0.6408849690804983
	.quad	0x3fdace125147956a              # double 0.41882760941947217
	.quad	0x3fc5c439beed5788              # double 0.17005082914937142
	.quad	0x3fe2a37228de4a62              # double 0.5824518964967178
	.quad	0x3feaaeb99bcd9002              # double 0.83382873945492997
	.quad	0x3fe2080cdd048a6f              # double 0.56348269622351477
	.quad	0x3fe084e2a843104c              # double 0.51622135986009132
	.quad	0x3fc2e2c6ab279dc0              # double 0.14754565579572265
	.quad	0x3fec56381e620418              # double 0.88552480634837405
	.quad	0x3fb32a2dbe510be8              # double 0.074862345661173557
	.quad	0x3fe11208840bac3c              # double 0.53345132627635605
	.quad	0x3fcd4704efb872ec              # double 0.22872983651259149
	.quad	0x3fe2d1b320ffe071              # double 0.58809811063021133
	.quad	0x3fdf7651777b375c              # double 0.4915965716180517
	.quad	0x3fefb9b44db374ec              # double 0.99141898323037258
	.quad	0x3fdf983400232b46              # double 0.49366474164405749
	.quad	0x3fdb9e0bf51de666              # double 0.43152140557467644
	.quad	0x3fe0dbd32da2d992              # double 0.52683409608180143
	.quad	0x3fe13b062c3cac88              # double 0.53845509185829687
	.quad	0x3fdec2e0ac1bdca0              # double 0.48064438636306228
	.quad	0x3fc9bbc3e72ab558              # double 0.20104264056628085
	.quad	0x3fe9359654827d2e              # double 0.78779140954785531
	.quad	0x3fc298c19e14916c              # double 0.14528675287977977
	.quad	0x3fa03c66f80e50a0              # double 0.03171083238626804
	.quad	0x3fe6e7e31ede8ce6              # double 0.71580654172103375
	.quad	0x3faea42e4f50a030              # double 0.059846350843429597
	.quad	0x3fed7fd9be8239e6              # double 0.92185675820092849
	.quad	0x3fbb97bee7d92f28              # double 0.10778420601235139
	.quad	0x3fd6b26440a828f6              # double 0.35463815988681746
	.quad	0x3fe9cc00fa42c4a6              # double 0.8061528098970896
	.quad	0x3fc86667b064660c              # double 0.19062515366458432
	.quad	0x3fdba91f91b95d80              # double 0.43219746809833026
	.quad	0x3fe20c1d72a3195f              # double 0.56397888555583708
	.quad	0x3f9457a38bc43900              # double 0.019865565686864706
	.quad	0x3fd746f795adf884              # double 0.36370648972650366
	.quad	0x3fd51a1678f046f4              # double 0.32971727190407241
	.quad	0x3fe04ccd0ae1f910              # double 0.50937511563805238
	.quad	0x3fe88522d94ececc              # double 0.7662519687932785
	.quad	0x3fed47a17cd2f737              # double 0.91499399547294658
	.quad	0x3fee858b21d938ad              # double 0.95380169497527378
	.quad	0x3fbed4a5a47e29b0              # double 0.12043223634660793
	.quad	0x3fdc2612e51195d4              # double 0.43982384080876824
	.quad	0x3fd26349424dd2fe              # double 0.28730994677543709
	.quad	0x3fe94e0f8cec1e5a              # double 0.79077889942068258
	.quad	0x3fc36d6d6bcc6d48              # double 0.15177696002579411
	.quad	0x3fe9e429b869676b              # double 0.80910192506710865
	.quad	0x3fd07d2f5ea796f2              # double 0.25764068835847731
	.quad	0x3fd3a0cc8c558b7a              # double 0.30668939308650744
	.quad	0x3fea1f24adad6307              # double 0.81630166932436132
	.quad	0x3fd36bdf2e3b2fe4              # double 0.3034589721180494
	.quad	0x3fd88ecbe3483c1c              # double 0.38371560283207073
	.quad	0x3fb395dae099b000              # double 0.076505355676715681
	.quad	0x3fcdfdf48271f3b8              # double 0.23431259507552027
	.quad	0x3fefa87b5a169c0f              # double 0.98931663127302893
	.quad	0x3fe7baeb667e5ba5              # double 0.74156732576635831
	.quad	0x3fdaae5d32d0a95e              # double 0.41689233744059162
	.quad	0x3fe55794192c9e6d              # double 0.66694073597768766
	.quad	0x3fef93b9b6c352b8              # double 0.98678289123434748
	.quad	0x3fd29a4271a89356              # double 0.29066525554144584
	.quad	0x3fe5beb10c7b4a18              # double 0.6795277828007924
	.quad	0x3f9242a9f23d3520              # double 0.01783242741594393
	.quad	0x3fd9dbb87bf5d88a              # double 0.40403568368436338
	.quad	0x3fd66d4885796174              # double 0.35042012247642806
	.quad	0x3fc32f39300b41d0              # double 0.14987864347359769
	.quad	0x3fe46c64d88db10d              # double 0.63823168082811466
	.quad	0x3fe0924675a583dd              # double 0.51785586335983746
	.quad	0x3fb2bab2c0858330              # double 0.073161289217307468
	.quad	0x3fde7868b2540218              # double 0.47609918036326482
	.quad	0x3fe2b48c35f642df              # double 0.58453951396412751
	.quad	0x3fc085a9fab23154              # double 0.12907910100001152
	.quad	0x3fef9e8a5a8faf8d              # double 0.98810308158634685
	.quad	0x3fd4d2bc1924a35e              # double 0.32536222892172428
	.quad	0x3fd5e3ff30009a9e              # double 0.34204082191210172
	.quad	0x3fe7d5b4f398c61f              # double 0.74483726098532432
	.quad	0x3fe9e65fa27fc580              # double 0.80937177408320338
	.quad	0x3fe55e997fb99f3a              # double 0.66779780336671668
	.quad	0x3fefd691691bf23e              # double 0.99494238404401592
	.quad	0x3fd6748ecb835828              # double 0.35086412309954307
	.quad	0x3fd427c8c9def428              # double 0.31492824281650877
	.quad	0x3fd4c85b68b0d828              # double 0.32472882484160204
	.quad	0x3fe290e71628be97              # double 0.5801883156581934
	.quad	0x3fa97180604a2310              # double 0.049694072488881358
	.quad	0x3fcca27f199e9054              # double 0.22370899916598097
	.quad	0x3fe3a173c1f961cc              # double 0.61345851789070016
	.quad	0x3fced4660dad4fe0              # double 0.24085689227888363
	.quad	0x3fded4447a0a1ce4              # double 0.48170577924652336
	.quad	0x3fd6be8a8417a176              # double 0.35537970447196388
	.quad	0x3fc8676c7d839d88              # double 0.19065624359721434
	.quad	0x3fd563110c5fda5a              # double 0.33417154510917657
	.quad	0x3fd75dba914bdbcc              # double 0.36509575070470812
	.quad	0x3fc7ed32e568ac64              # double 0.18692623330693714
	.quad	0x3fdc7de57fa1712e              # double 0.4451841112511542
	.quad	0x3fc555911f2232dc              # double 0.16667379398531679
	.quad	0x3fcb5901eebffa14              # double 0.21365379483900482
	.quad	0x3f92bf504d4fdbc0              # double 0.018307928770777471
	.quad	0x3feec7a5da7be97b              # double 0.96187107727682474
	.quad	0x3fd48d657cfa5392              # double 0.32113015370242082
	.quad	0x3febf0aa5df3bebb              # double 0.873128112316372
	.quad	0x3fa0faeb7b536300              # double 0.033164366535578083
	.quad	0x3fb1d3da5daf1000              # double 0.069638870117216811
	.quad	0x3fe6736fd077b996              # double 0.70159140316336521
	.quad	0x3fc13028ba47b25c              # double 0.13428219886499704
	.quad	0x3feea4a107ec6271              # double 0.95759631679091062
	.quad	0x3feaedf5dbbb60c3              # double 0.84154789844890165
	.quad	0x3fdde12482df92a8              # double 0.46686661511038574
	.quad	0x3fe81546839a709c              # double 0.75259710029378679
	.quad	0x3fed15bd60c954f5              # double 0.90890377906421682
	.quad	0x3fd1ef8997f8b3fe              # double 0.28024520722357227
	.quad	0x3fe9be6281c4ef6e              # double 0.80449033113062085
	.quad	0x3fb8f6d3e7345cf8              # double 0.097516292520925307
	.quad	0x3feec119653696d4              # double 0.96107167976580365
	.quad	0x3fe0fb267116ca18              # double 0.5306579788942285
	.quad	0x3f69ee13326a4400              # double 0.0031652808132283106
	.quad	0x3fdbbd5d5ed6e062              # double 0.4334329057851446
	.quad	0x3fd49cf0ecb43584              # double 0.32207892528170867
	.quad	0x3fc1d0a263a6ae44              # double 0.13917951455856514
	.quad	0x3fe1ed60880a86af              # double 0.56022669382601531
	.quad	0x3f9f66316fcb7c80              # double 0.030663273285310044
	.quad	0x3fe4f88554238e47              # double 0.65533701356293583
	.quad	0x3fe2ec9b8730d4d1              # double 0.5913827553219112
	.quad	0x3fe74dbfc0ac62fd              # double 0.72824084884186358
	.quad	0x3fee3564e92a990c              # double 0.94401784458458015
	.quad	0x3fcc7ad85df3afc8              # double 0.22249893748755611
	.quad	0x3fee0070f88d6bd1              # double 0.93755386872669011
	.quad	0x3fcdbaf2daa13f64              # double 0.23226771998678963
	.quad	0x3fe627c4514cb5e4              # double 0.69235435370290732
	.quad	0x3fd4f26109183a7c              # double 0.32729364288471863
	.quad	0x3fbbe8c2f80cc608              # double 0.10902041011720354
	.quad	0x3fcfea6c99de001c              # double 0.24934155953451487
	.quad	0x3fd2886fea0a0f7c              # double 0.28957746367836257
	.quad	0x3feb783b3d676942              # double 0.85842668526610333
	.quad	0x3fd504d37e5d92a6              # double 0.32841956463225086
	.quad	0x3fe53de9a3a58bee              # double 0.6638076969360307
	.quad	0x3fe8f39de8b1d0f9              # double 0.77973838279879637
	.quad	0x3fe66eac569b8317              # double 0.701009911685193
	.quad	0x3fedd15c6cd35c92              # double 0.93180676703458887
	.quad	0x3fdbbad8c0da93c0              # double 0.4332792170846993
	.quad	0x3fb5037312eac630              # double 0.082083885305814119
	.quad	0x3fb487744661c2b8              # double 0.080191867049289267
	.quad	0x3fb6d3917c8282b0              # double 0.089165776155378351
	.quad	0x3fa2ff1138550e80              # double 0.037102258802886645
	.quad	0x3fed51425e064278              # double 0.91616934169913034
	.quad	0x3fe2c5ce048c4710              # double 0.58664608848832422
	.quad	0x3fe90ebba75b9bd1              # double 0.78304846465186462
	.quad	0x3fdbeab404189d3e              # double 0.43620014572157462
	.quad	0x3feec4266464a817              # double 0.9614440880588998
	.quad	0x3fe609c1c44d5ef8              # double 0.68869102802543036
	.quad	0x3fec4a40da19048f              # double 0.88406412694179604
	.quad	0x3fe900ba26afd0f4              # double 0.78133876377117283
	.quad	0x3fe4adeaf9021836              # double 0.64623020777140172
	.quad	0x3fed2747311557f3              # double 0.91104468905063951
	.quad	0x3fdb63a35934e724              # double 0.4279564257773123
	.quad	0x3fd3fb73a0d0d3e4              # double 0.31222239212666936
	.quad	0x3fe7bf12b9af49ba              # double 0.74207435862108828
	.quad	0x3fe392ab8ce3d4bc              # double 0.61165406720706228
	.quad	0x3fe9a544ea149e89              # double 0.80142446249824772
	.quad	0x3fe52aa30ba8ecbc              # double 0.66145469929997303
	.quad	0x3fe41853e25fcd68              # double 0.62796968663898856
	.quad	0x3fd36dd39d18663c              # double 0.30357828465784897
	.quad	0x3fb2ab9abbc63900              # double 0.072930975764595729
	.quad	0x3febeb483d82fcb6              # double 0.87247097028730169
	.quad	0x3fe082ead13db27e              # double 0.51598111026176219
	.quad	0x3fbc96bd75c33470              # double 0.11167511105596062
	.quad	0x3fc92f3eeb252d58              # double 0.19675432664585446
	.quad	0x3fd6bd858321c79a              # double 0.35531747632841759
	.quad	0x3fedb2a4b29d5b35              # double 0.92805704961469948
	.quad	0x3feacc47ca853d53              # double 0.83743657641199787
	.quad	0x3fe613704dada584              # double 0.68987288638634015
	.quad	0x3fddfed94a6bdf28              # double 0.46867973582947053
	.quad	0x3fa3aec704169ac0              # double 0.038442820786533272
	.quad	0x3fd372802972777a              # double 0.30386356399127801
	.quad	0x3fa7b9f84a2e99d0              # double 0.046340712600158818
	.quad	0x3fd3a37c9c83c71e              # double 0.30685344013828508
	.quad	0x3fb296f284661f10              # double 0.072615773509934423
	.quad	0x3fd8a913dd9def8e              # double 0.38531967775610887
	.quad	0x3fe9945db6c5f3e0              # double 0.79936109254742504
	.quad	0x3fd06d4faa2658ca              # double 0.25667182556334167
	.quad	0x3facbdf14b15b3f0              # double 0.056136646667120149
	.quad	0x3fde60c0de3daa22              # double 0.4746553583451335
	.quad	0x3feb83bc872925b1              # double 0.85983110807972285
	.quad	0x3fe2abec7509d962              # double 0.58348677500798041
	.quad	0x3fe483bf6728b314              # double 0.64108247898329518
	.quad	0x3fee21c2020cfb57              # double 0.9416208305409367
	.quad	0x3fe0749b45830660              # double 0.51423419548536842
	.quad	0x3fd84cbdc9543502              # double 0.3796839204886312
	.quad	0x3fd326ef0d58e142              # double 0.29925133040844198
	.quad	0x3fe291b430caad3d              # double 0.58028611688261089
	.quad	0x3fb614a701ae7388              # double 0.086252630148420661
	.quad	0x3fef288e9deef651              # double 0.97370081755043191
	.quad	0x3fd0c4c4b981b306              # double 0.26200979343302355
	.quad	0x3fe67c430b192748              # double 0.70266868751171163
	.quad	0x3fd8e36f8af3bf78              # double 0.38888157434029536
	.quad	0x3fe917b833d01b17              # double 0.78414545173368111
	.quad	0x3fe95c7e1577c871              # double 0.79254059021901757
	.quad	0x3feb3e86bbf85d4b              # double 0.85138260567593116
	.quad	0x3fb3f9211aa3a1f0              # double 0.078020161632259776
	.quad	0x3fd193a2c798f3de              # double 0.27463597766819514
	.quad	0x3fe6b4ed3b38ba4f              # double 0.70958577696530678
	.quad	0x3fef2c7ff8c26032              # double 0.97418211541935862
	.quad	0x3fecfc6506223882              # double 0.90580989072783802
	.quad	0x3fe6e04e902f659a              # double 0.71488121186409903
	.quad	0x3fd628c00410ad64              # double 0.34623718640314949
	.quad	0x3fc63c675abf0fc8              # double 0.1737183755013787
	.quad	0x3fd3c79768340f9c              # double 0.30905709434613882
	.quad	0x3fb2f47657f70870              # double 0.074042698360274661
	.quad	0x3fe6535667f6642c              # double 0.69767303757828847
	.quad	0x3fec09c726b31aa9              # double 0.87619359549065223
	.quad	0x3fe895ba3ab3db48              # double 0.7682772776159732
	.quad	0x3feb79555cbed8f1              # double 0.85856121172289879
	.quad	0x3fda0d1df875126e              # double 0.40705060256394787
	.quad	0x3f9b6793b56d1080              # double 0.026762302349439882
	.quad	0x3fe72e6fb9630120              # double 0.72441850860926493
	.quad	0x3fe0c5a13e66a4f1              # double 0.52412473857580555
	.quad	0x3fbf3396c3918b80              # double 0.12188093447325166
	.quad	0x3fe289740781081e              # double 0.57927895990019684
	.quad	0x3fe6d8f8e5d03990              # double 0.71398587117600876
	.quad	0x3fe388026da5bf8e              # double 0.61035272040861499
	.quad	0x3fbcf9c99cb38488              # double 0.11318645549501316
	.quad	0x3feb0b7f46d9be03              # double 0.8451534637260355
	.quad	0x3fb6991ffe76b668              # double 0.088274001717502437
	.quad	0x3fdc5afbc27053ee              # double 0.44305318821108031
	.quad	0x3fc4caebc3e8e0a0              # double 0.16244265619184706
	.quad	0x3fe3fec0e872b255              # double 0.62484784507757729
	.quad	0x3fe42fb259b555ec              # double 0.63082234879646881
	.quad	0x3fdde3a5fb1be6ea              # double 0.4670195533977749
	.quad	0x3fe878afbe0098a0              # double 0.76473223790960176
	.quad	0x3fedfe8262e9145d              # double 0.93731803244066791
	.quad	0x3fb722ced93f8560              # double 0.090374877966970413
	.quad	0x3fd8b025b436aa6a              # double 0.38575117682436277
	.quad	0x3fcc91c3a3781cbc              # double 0.22319837076086013
	.quad	0x3faed51e9e9e00b0              # double 0.060219723570300032
	.quad	0x3fef1ebd111cc5ad              # double 0.97250226347221302
	.quad	0x3fe1855df9a1a358              # double 0.54753016239292673
	.quad	0x3fee6f1343ed3beb              # double 0.95105899111683578
	.quad	0x3fdbec0e0cc7a0e2              # double 0.43628264663722238
	.quad	0x3fd52d47dd0813d0              # double 0.33088871560204058
	.quad	0x3fd9559cae426024              # double 0.39585034387119067
	.quad	0x3fbb7085c9df1cf0              # double 0.10718570879463463
	.quad	0x3fb02f05e49f2ed8              # double 0.06321751433932421
	.quad	0x3fe7c20d7f51bc4d              # double 0.74243807665869499
	.quad	0x3fe3311ca06cf591              # double 0.5997450955689364
	.quad	0x3feb6597b2437d1f              # double 0.85615143601527055
	.quad	0x3fd22d4dccf74fb4              # double 0.28401513115135946
	.quad	0x3fd01736c6a0cb28              # double 0.25141686818385489
	.quad	0x3fdeecfa25a9004a              # double 0.48321393659353318
	.quad	0x3feb84b7d2bcb1ce              # double 0.85995093497836606
	.quad	0x3fc0a07e465aacd8              # double 0.12989786563171069
	.quad	0x3fd13ae40a039ce2              # double 0.26921940782490428
	.quad	0x3fecebd7a67e7ebc              # double 0.90378935354598111
	.quad	0x3fc50f7ebae28cf0              # double 0.16453537106745086
	.quad	0x3fd66a95b3498732              # double 0.35025541790502068
	.quad	0x3fe1b91d506edbed              # double 0.55384698590830583
	.quad	0x3fee158b99cefa3b              # double 0.94013004341815731
	.quad	0x3fd515882abcf22c              # double 0.32943920301093743
	.quad	0x3fe932ce35c8779c              # double 0.78745184425837377
	.quad	0x3fc1d0a454158364              # double 0.13917974572816683
	.quad	0x3fe85de90a0a9473              # double 0.76146366082379158
	.quad	0x3fe700e4971d93f7              # double 0.71885900034669603
	.quad	0x3fee8c6ab63a5c8d              # double 0.95464072791482268
	.quad	0x3febb5fcf628d7f7              # double 0.86596534803425029
	.quad	0x3fdb92058187ab74              # double 0.43078744553957127
	.quad	0x3fe6cd813ff13a2c              # double 0.71258604515771173
	.quad	0x3fe3cbe5fc415a80              # double 0.61863993900881553
	.quad	0x3fec6de9a2e28f49              # double 0.88841707051731433
	.quad	0x3fb0c542d779ffb0              # double 0.065509965521413305
	.quad	0x3fe9cfd7e2fb56ee              # double 0.80662149746305345
	.quad	0x3feca02c4e0bfd55              # double 0.89455237620851824
	.quad	0x3fe1ff41e43ce0e5              # double 0.56240934922882657
	.quad	0x3fd9b7ac291b99e2              # double 0.40183547987399326
	.quad	0x3feaf0954cbb9a52              # double 0.84186806666259373
	.quad	0x3fe818c9f68c8035              # double 0.75302599100178347
	.quad	0x3fe6937991bd43f9              # double 0.7055023046942771
	.quad	0x3fefdefccbcc8b7e              # double 0.99597015194409244
	.quad	0x3f9afbd5309d1140              # double 0.026351290790686877
	.quad	0x3fd9997b2af1e0a6              # double 0.39999274438697296
	.quad	0x3fd0fd0f4940fc38              # double 0.26544553903289936
	.quad	0x3fdd4da3944d5810              # double 0.45786370737676041
	.quad	0x3fe499a90c434bf9              # double 0.64375736613362655
	.quad	0x3fdb23cfede0ccda              # double 0.42406080465589258
	.quad	0x3fe678cf4845af3b              # double 0.70224727740922022
	.quad	0x3fcfb0da70d16a48              # double 0.24758463391011021
	.quad	0x3fe8a1ac3758e56c              # double 0.76973543939599897
	.quad	0x3fd28546c75d3380              # double 0.28938455075404335
	.quad	0x3febc819d203fde1              # double 0.86817637461347996
	.quad	0x3fe6c1da177e4554              # double 0.7111635645725678
	.quad	0x3f765f44b6bbab80              # double 0.0054619487889152607
	.quad	0x3fe7f35df0e64dbf              # double 0.74845788050372863
	.quad	0x3fc856cf859ac0d0              # double 0.19014925025613261
	.quad	0x3fe9a1ae8c5160c8              # double 0.80098655134045149
	.quad	0x3fcd974e291b9830              # double 0.23117997176376681
	.quad	0x3fdcbe4e65e9e3a4              # double 0.44911537125113399
	.quad	0x3fe9bc6249d3fed3              # double 0.8042460863070694
	.quad	0x3fefe1d80cd5018c              # double 0.9963188410402366
	.quad	0x3fe9dac92b41820a              # double 0.80795725296417342
	.quad	0x3fb4c57100023ac8              # double 0.081137716772199941
	.quad	0x3fe33385006a5b5e              # double 0.60003900605338933
	.quad	0x3fb31436abe3faa0              # double 0.074527184453453632
	.quad	0x3fe42b86ad56088f              # double 0.63031324248028564
	.quad	0x3fc90ee8e5a5786c              # double 0.19576750958634948
	.quad	0x3fcaa1448a0d2918              # double 0.20804650059501095
	.quad	0x3feb498f9ed18e32              # double 0.8527296163487732
	.quad	0x3fe13f9094a0c633              # double 0.53900937107954972
	.quad	0x3fe5d8049ce36f0d              # double 0.68261938707607472
	.quad	0x3fc1192a73f98ff4              # double 0.13358050024828538
	.quad	0x3fe9859e0ee98dba              # double 0.79756071960985442
	.quad	0x3fd6cff83d0ec052              # double 0.35644346201570898
	.quad	0x3fd48cdb180d7268              # double 0.32109715794448457
	.quad	0x3feadb5c01d8f40f              # double 0.83927727089724324
	.quad	0x3fb95b8fe8e85c50              # double 0.099053377496930439
	.quad	0x3fe3ef3d8540a22a              # double 0.62295413995622551
	.quad	0x3fd6d982730d00a0              # double 0.35702573047093189
	.quad	0x3fef03298023329a              # double 0.96913599993566213
	.quad	0x3fe8a7f8123622ba              # double 0.77050403172423576
	.quad	0x3fe5e961d03b9018              # double 0.68473902388041363
	.quad	0x3fec672ca9883092              # double 0.88759453880040184
	.quad	0x3fdc5d20b7fcea1a              # double 0.44318407027790985
	.quad	0x3f820e8ee2d19a00              # double 0.0088168299645987602
	.quad	0x3fede88212a3809f              # double 0.93463233604781581
	.quad	0x3fd0a287edb24aca              # double 0.25992010319275194
	.quad	0x3fde797cb42b8f4c              # double 0.47616498560659148
	.quad	0x3fd5107e78b92be6              # double 0.32913171567332566
	.quad	0x3fe901abf6e475d1              # double 0.78145406933952632
	.quad	0x3fc8d700e18b231c              # double 0.19406138432375364
	.quad	0x3fcb56e7bae06c98              # double 0.2135896360858609
	.quad	0x3fea0a4d5ebdaca7              # double 0.81375759605488873
	.quad	0x3fd9a6c5dfb17376              # double 0.40080401272808019
	.quad	0x3fd2571245669360              # double 0.28656441476259964
	.quad	0x3fe5d933332685a6              # double 0.68276367178275588
	.quad	0x3fd51be8425f2a0e              # double 0.32982832414259711
	.quad	0x3fe9be4a0648ca34              # double 0.80447865703019383
	.quad	0x3fbf1a363ae89fa0              # double 0.12149371088219008
	.quad	0x3feb6fc6832f323d              # double 0.85739446279473663
	.quad	0x3fd09ce021585a20              # double 0.2595749211917866
	.quad	0x3f9409bf37e288e0              # double 0.01956843165010802
	.quad	0x3feeb91911ca65c3              # double 0.96009496187905829
	.quad	0x3fe016b7bbbfa323              # double 0.50277315778393861
	.quad	0x3fad701ce47ad660              # double 0.057495978251080215
	.quad	0x3fc4da4a8e99daf0              # double 0.16291171992244058
	.quad	0x3fd4a1ad21c3ba76              # double 0.32236793801613517
	.quad	0x3fa45f18b8332fe0              # double 0.039788029179902429
	.quad	0x3fcf1d130e603d9c              # double 0.24307478143644523
	.quad	0x3fe942a684b01192              # double 0.78938604274348934
	.quad	0x3fd76d72bc8c11b2              # double 0.3660551873474801
	.quad	0x3fe401961b3f09a3              # double 0.62519364663630872
	.quad	0x3fe3dc8a1d59c16b              # double 0.62067132694759886
	.quad	0x3fea005b10b71ecf              # double 0.81254342331609475
	.quad	0x3fe0e8805614fee0              # double 0.52838150799649597
	.quad	0x3f919317f8be1700              # double 0.017162680203475666
	.quad	0x3fe61adac90b1373              # double 0.69077815309775159
	.quad	0x3fded5f2ca5c1a40              # double 0.48180837403961974
	.quad	0x3fec18804317e1d1              # double 0.87799084762724011
	.quad	0x3fe1dd211af6cead              # double 0.55824332491325424
	.quad	0x3feb8992f0669b44              # double 0.86054369881899406
	.quad	0x3fe76a96349a13e7              # double 0.73176107667734136
	.quad	0x3fe30960696ba55d              # double 0.59489460554065554
	.quad	0x3fd17ae2fbabc14c              # double 0.27312540604818447
	.quad	0x3fcc8c7567a8a4e4              # double 0.22303645669425187
	.quad	0x3fdbf3131d013e62              # double 0.43671109993463209
	.quad	0x3fef1dc753e91a5e              # double 0.97238508595257733
	.quad	0x3fe023d4cc279bfb              # double 0.50437393068284508
	.quad	0x3fe6679bb0035919              # double 0.70014747979692793
	.quad	0x3fdd4d74c62a24d8              # double 0.45785254814161425
	.quad	0x3fe21063a1d3f896              # double 0.56450063330682343
	.quad	0x3fe307cd5c2840f1              # double 0.59470241546116942
	.quad	0x3fd0ff65585d02c2              # double 0.26558812741499704
	.quad	0x3fef4074d35514bf              # double 0.97661820674752408
	.quad	0x3fd19e0c7a6c52cc              # double 0.27527152972588165
	.quad	0x3fc082237d5b30a4              # double 0.12897151585491884
	.quad	0x3fd98711b363ea92              # double 0.39886896627982893
	.quad	0x3fd2009554cea430              # double 0.28128560335113928
	.quad	0x3fdd7754c6bc2c70              # double 0.46040839584083582
	.quad	0x3fedb2baf3bf6e18              # double 0.928067661352034
	.quad	0x3fe205ee03828a73              # double 0.56322384534389724
	.quad	0x3fb51895ef2bac88              # double 0.082406397715816593
	.quad	0x3faa4667a4fe5940              # double 0.051318396464170579
	.quad	0x3feb017d3b8bbd1b              # double 0.843931785870072
	.quad	0x3fdc35f62a5064f2              # double 0.44079355365972994
	.quad	0x3fd6bbca34f18112              # double 0.35521178407908949
	.quad	0x3fd5db07fa2855fe              # double 0.34149360112618854
	.quad	0x3fe045452078a678              # double 0.50845581380890703
	.quad	0x3fb9eef6479abcc0              # double 0.1013025212111982
	.quad	0x3fec0bfe3b514018              # double 0.87646400056292162
	.quad	0x3fe802b4027da84e              # double 0.75032997595304507
	.quad	0x3fcd4c5a4af61380              # double 0.22889259968010478
	.quad	0x3fe6c241154df7a4              # double 0.71121267472311844
	.quad	0x3fd7cc876f591a0e              # double 0.37185846208413487
	.quad	0x3fe017c380c2a7f6              # double 0.50290084026823823
	.quad	0x3fd1cb913c4bf4a6              # double 0.27804976356839928
	.quad	0x3fed2caf668542da              # double 0.91170473121209317
	.quad	0x3fd9e9575797e388              # double 0.40486701540026404
	.quad	0x3fe8689ea5e55eef              # double 0.76277096177633819
	.quad	0x3fe92648b2a2f447              # double 0.7859233368868751
	.quad	0x3fda8a3059c96c62              # double 0.41468437927477997
	.quad	0x3fc2a726423e3f38              # double 0.14572599634674943
	.quad	0x3fd15f2cd743be1c              # double 0.27143403074203021
	.quad	0x3fe6446f01a2c4aa              # double 0.69585371322150036
	.quad	0x3fc78c6cd6f25d8c              # double 0.18397293563314709
	.quad	0x3fea4a49de52633e              # double 0.82156842634422111
	.quad	0x3fe875a930172abe              # double 0.76436290161776532
	.quad	0x3fefe1e5e7b9221d              # double 0.9963254476397797
	.quad	0x3fef2bea4cdea291              # double 0.97411074651343387
	.quad	0x3fd1ce8e9a81b344              # double 0.2782322415212557
	.quad	0x3fea7906fa844ceb              # double 0.82727383545934907
	.quad	0x3fdd5420b23ec3a0              # double 0.45825974852328422
	.quad	0x3fd4db99832557ba              # double 0.3259032994004617
	.quad	0x3fec5962abc59e55              # double 0.88591130780418814
	.quad	0x3fbeafe97b70b200              # double 0.11987170470883513
	.quad	0x3fe08921f1b8f01a              # double 0.51673981868180197
	.quad	0x3fef0a95442c3ffe              # double 0.97004187884340332
	.quad	0x3fd05c1a26bc2102              # double 0.25562146933272356
	.quad	0x3fc3254c8680ee10              # double 0.14957577292976554
	.quad	0x3feddafe25322a3f              # double 0.9329825140460527
	.quad	0x3fcfc1b7ea4c229c              # double 0.24809931698134313
	.quad	0x3fe8587d65e1519b              # double 0.76080198191134529
	.quad	0x3fdb9946c14b36a0              # double 0.43123024822566869
	.quad	0x3fe31ba0ada554bd              # double 0.59712251582336473
	.quad	0x3fb10c64ef8d37a8              # double 0.066595371708187856
	.quad	0x3fc3331724e4b714              # double 0.14999665547787144
	.quad	0x3f94d6947ee33760              # double 0.020349807972528722
	.quad	0x3fe171640d0c4a0d              # double 0.54509165333212339
	.quad	0x3fe2945a597788a6              # double 0.5806094882393793
	.quad	0x3fe0edc56f4e00ef              # double 0.52902480830382881
	.quad	0x3fd60cf5d40602f8              # double 0.34454103188913576
	.quad	0x3fd8b7da6ff13a26              # double 0.38622151309837915
	.quad	0x3fee1973ab9e4c71              # double 0.94060691374978778
	.quad	0x3fd8a26e067f5a22              # double 0.38491392740744079
	.quad	0x3fe4e454e2bb5610              # double 0.65287250789214291
	.quad	0x3fe0c0c89535c2e6              # double 0.52353314535693296
	.quad	0x3fcdf6b3115de11c              # double 0.23409117076858699
	.quad	0x3fe4aafe70a6caaf              # double 0.64587327959300989
	.quad	0x3fddfcbf8153178a              # double 0.46855151776650728
	.quad	0x3feb6f2336c0e87d              # double 0.85731659597446674
	.quad	0x3fd7b11e3935180e              # double 0.37018542849216451
	.quad	0x3fde0752d1ddd660              # double 0.46919699187069419
	.quad	0x3fe0c2698cfc50fe              # double 0.52373197113277548
	.quad	0x3fe1d43fd6d3a1e6              # double 0.55715934713685722
	.quad	0x3fe82ebbadca33b4              # double 0.75570472663240773
	.quad	0x3fd92dcc3079028a              # double 0.39342026456510182
	.quad	0x3fe087baa4a92d08              # double 0.51656849060364696
	.quad	0x3feea85578d8e3e6              # double 0.95804856875394928
	.quad	0x3fed82e9487cb3fa              # double 0.92223037870064606
	.quad	0x3fc2c8828ee72cd8              # double 0.14674407937704959
	.quad	0x3f9daae4158cfea0              # double 0.028972209754327793
	.quad	0x3fc6bbcaf6a6de08              # double 0.1776059822420708
	.quad	0x3fd9becf6409a48e              # double 0.40227112550071176
	.quad	0x3fe285a178576ca9              # double 0.57881234649848523
	.quad	0x3fe8d95c0df324a7              # double 0.77653315281454105
	.quad	0x3fe3a09f3c6c2908              # double 0.61335717965383285
	.quad	0x3fc741a0ea026eec              # double 0.18169032503362048
	.quad	0x3fd1c64a045769de              # double 0.27772760795565243
	.quad	0x3fe2c71805431a00              # double 0.58680344608075075
	.quad	0x3fd1a96caaf7f338              # double 0.27596584983966777
	.quad	0x3fea5889830cddbf              # double 0.82330775829080227
	.quad	0x3fd80dbe314895a2              # double 0.37583880246014634
	.quad	0x3fd043b4d3eebab6              # double 0.2541324681905438
	.quad	0x3fe797cb39fca0bc              # double 0.73727952313949841
	.quad	0x3fee35559b2c8805              # double 0.94401054675495344
	.quad	0x3fe6df4644784d24              # double 0.71475518582375175
	.quad	0x3febaa16833c8885              # double 0.86451268798943259
	.quad	0x3fe63ee5b392d14d              # double 0.69517788956594873
	.quad	0x3fcc58749cd6c4d8              # double 0.2214494481864111
	.quad	0x3fec9828221d81ec              # double 0.89357382453095857
	.quad	0x3fb97971be166a78              # double 0.09950934305963155
	.quad	0x3fe474ccafb122dc              # double 0.63925775828200981
	.quad	0x3fc5fe55de199b20              # double 0.17182420105674456
	.quad	0x3fa3ad1056f0e380              # double 0.038429747212325616
	.quad	0x3fe8807d677c1698              # double 0.76568479740008666
	.quad	0x3fef4fb6f8a0f98e              # double 0.97848080215753597
	.quad	0x3fe303153eb9fe1d              # double 0.59412634135509601
	.quad	0x3fa2fda904a1f690              # double 0.037091523948203364
	.quad	0x3fe4bd30786ba13f              # double 0.64809440154662201
	.quad	0x3fe466ab6f8c136a              # double 0.63753291880185015
	.quad	0x3fe63eab6c58aa34              # double 0.69515010033985059
	.quad	0x3fc89d532798186c              # double 0.19230117257410784
	.quad	0x3feab512f92e7a41              # double 0.83460377376815853
	.quad	0x3fcac94f07d450b0              # double 0.2092684543828276
	.quad	0x3fd5a0183e4249e4              # double 0.33789640502905471
	.quad	0x3fefdeb4f6e7943d              # double 0.99593589995914266
	.quad	0x3fe0df191271daa1              # double 0.52723363497246478
	.quad	0x3fe5a905adbcee4e              # double 0.67688259061055489
	.quad	0x3fe2020a17552edc              # double 0.56274895245720868
	.quad	0x3fd3e3ea976008e8              # double 0.31078591139534106
	.quad	0x3fe5f2450b98e791              # double 0.68582393899053973
	.quad	0x3fcc21709b4cbc34              # double 0.21977050383563468
	.quad	0x3fc3f8d4b7b62850              # double 0.15603121729174285
	.quad	0x3fb2fd255e917cc0              # double 0.074175201023069626
	.quad	0x3fee539dc53424f0              # double 0.94770706669183191
	.quad	0x3fed38634414219c              # double 0.91313327118500664
	.quad	0x3fd4a60f5252886a              # double 0.32263548888489046
	.quad	0x3fb58fd8f2287f70              # double 0.084226187821057285
	.quad	0x3fd0eb9989c8fb28              # double 0.26437986808371017
	.quad	0x3fd889e8dbfd2bd0              # double 0.38341733439727665
	.quad	0x3fd82ae4ac38a64a              # double 0.37761799639210791
	.quad	0x3fc472a859d74040              # double 0.15974907290228835
	.quad	0x3fe8be5c5e932aa0              # double 0.77323740455297595
	.quad	0x3fe958c2aae68116              # double 0.79208501223550587
	.quad	0x3fe3b66fca3a937f              # double 0.61602010248007832
	.quad	0x3fe2091978b47393              # double 0.56361077857183017
	.quad	0x3fc1680638e747c4              # double 0.13598706987846587
	.quad	0x3fe4ffc43c53a786              # double 0.65622150213788255
	.quad	0x3fd929bd18f5097c              # double 0.39317252576088157
	.quad	0x3fd5a0a837f94a4e              # double 0.33793073145094332
	.quad	0x3fe0defaf111ae5a              # double 0.52721926769067839
	.quad	0x3fe773edff21091b              # double 0.73290157155887259
	.quad	0x3fdf9543d289029a              # double 0.49348540840223054
	.quad	0x3fe6506bec799106              # double 0.69731708704469564
	.quad	0x3fac4f6c9dd31190              # double 0.055293459191975036
	.quad	0x3fe3e2cf0c8f479f              # double 0.62143661931098737
	.quad	0x3fe39de9065338be              # double 0.61302615390174942
	.quad	0x3fa884fe2669e030              # double 0.047889654339940413
	.quad	0x3fc202e3476d06e8              # double 0.14071312892524834
	.quad	0x3feff6053a8fb837              # double 0.99878179013990731
	.quad	0x3fe0056133576a8a              # double 0.50065670039778465
	.quad	0x3fe2b650ee609915              # double 0.58475538786004455
	.quad	0x3fed47383becec38              # double 0.91494380668826292
	.quad	0x3fe980d6c7377cd2              # double 0.79697741422196544
	.quad	0x3feaa9fa367a2e4f              # double 0.83324919357387184
	.quad	0x3fde857e1560be2c              # double 0.47689773643193933
	.quad	0x3fdd7c8eb0046626              # double 0.46072737874200909
	.quad	0x3feeadab2d6d8d1c              # double 0.95869978783267439
	.quad	0x3fe98ea6eb59e153              # double 0.79866357771883612
	.quad	0x3fe694e4f98b7fef              # double 0.70567558993570667
	.quad	0x3fd5702f617945da              # double 0.3349722339526956
	.quad	0x3fefdee183841810              # double 0.99595714270322055
	.quad	0x3fd781ad5a373a94              # double 0.36728986559038757
	.quad	0x3fa8904c51c6b7c0              # double 0.047975907309008914
	.quad	0x3fe0f071c015ccb9              # double 0.52935111538535928
	.quad	0x3fe86a7c9a267fc0              # double 0.76299886806008743
	.quad	0x3fdbd39b0a159ee6              # double 0.43479038224039213
	.quad	0x3feff9ad101145fc              # double 0.99922803056887188
	.quad	0x3fe25f008f62e972              # double 0.5740969467654351
	.quad	0x3fe8b0de2a65802d              # double 0.77159031181873206
	.quad	0x3fe9288d3327314c              # double 0.78620014181937269
	.quad	0x3fb03e2c95856280              # double 0.063448702339323759
	.quad	0x3fc08b4bd205d2a8              # double 0.12925098185555339
	.quad	0x3feb3d88b4890aa2              # double 0.85126147518925088
	.quad	0x3fe7d615de84aaeb              # double 0.74488347492782958
	.quad	0x3f89451efad46640              # double 0.012338869123186602
	.quad	0x3fd8144063098268              # double 0.37623605414959238
	.quad	0x3fe59bbf113db71c              # double 0.67526200644872203
	.quad	0x3fdf6206f21d7908              # double 0.49035810131125901
	.quad	0x3fe0182c0d04772c              # double 0.50295069258183878
	.quad	0x3fca7205cb7a2c14              # double 0.20660469470416898
	.quad	0x3fefb1dff1e086bc              # double 0.99046323052990414
	.quad	0x3fb86d9afb4271c0              # double 0.095422445624030239
	.quad	0x3fee56561461d4a5              # double 0.94803909283532006
	.quad	0x3fef9ac6ed7467cf              # double 0.98764368417618608
	.quad	0x3fe6157affe2372d              # double 0.69012212731624845
	.quad	0x3fc5e0f83b524d48              # double 0.17092802902753079
	.quad	0x3fd6ff466fae184e              # double 0.35933075815444659
	.quad	0x3fe54119828f88fa              # double 0.66419673442967953
	.quad	0x3fe1c105eec20784              # double 0.55481239921958592
	.quad	0x3fd41b8726732b0e              # double 0.31418017153616595
	.quad	0x3fa3f47546f2d440              # double 0.038974442396842779
	.quad	0x3fdd5c5b7f142082              # double 0.45876204881688676
	.quad	0x3fb52356da5933f8              # double 0.082570484454848159
	.quad	0x3f2429422e733000              # double 1.5381749037712833E-4
	.quad	0x3fd79d813f02dab2              # double 0.36898833421166011
	.quad	0x3fe0fe6349edb993              # double 0.53105320395643429
	.quad	0x3fe508bbc0e7d697              # double 0.65731609036329786
	.quad	0x3fdb67367d46f694              # double 0.42817461237050591
	.quad	0x3fcc6660203ef638              # double 0.2218742520762349
	.quad	0x3fe6ea691b1c8304              # double 0.71611457152548086
	.quad	0x3fc77c044d6d4080              # double 0.18347219257930547
	.quad	0x3fdaec73f803b68a              # double 0.42068194599310316
	.quad	0x3fe5fc8cdb91c316              # double 0.68707888493199465
	.quad	0x3fdafe4a2091cd0e              # double 0.42177060299509683
	.quad	0x3fb4ab8d6ed86f50              # double 0.080742682992817949
	.quad	0x3f94747a25469c80              # double 0.01997557499421676
	.quad	0x3fec4c72fda28f1a              # double 0.88433217561803024
	.quad	0x3fe2d831c3a5d8b1              # double 0.5888909169432478
	.quad	0x3fbda926161b8338              # double 0.11586225547536066
	.quad	0x3fe9e79796e35406              # double 0.80952052564919152
	.quad	0x3fde393ee0a6dc54              # double 0.47224399508144654
	.quad	0x3fc29a7a3e69b8ec              # double 0.14533927962788284
	.quad	0x3fa1ad362dec4c50              # double 0.034524624925460601
	.quad	0x3fe76fc419f75781              # double 0.73239331313628508
	.quad	0x3fece3cb705bc254              # double 0.90280696816450722
	.quad	0x3fd55296766c0df8              # double 0.33316575588852926
	.quad	0x3f919296b90093c0              # double 0.017160754243508825
	.quad	0x3fe801a35792866e              # double 0.75019995788552563
	.quad	0x3fcb304f402c0f1c              # double 0.21241179116633979
	.quad	0x3fe0b07b7609a6f9              # double 0.52154324583281586
	.quad	0x3fbb6bce444122f0              # double 0.10711373487823628
	.quad	0x3fb1c56894d66730              # double 0.069418464982302863
	.quad	0x3fd0cbf4f29b6000              # double 0.2624485367973648
	.quad	0x3fd41f7121ad170a              # double 0.31441906250653118
	.quad	0x3fd30d095da0c3b8              # double 0.29767068999631929
	.quad	0x3fd360841c35cbbc              # double 0.30276587252518161
	.quad	0x3fe90217ea0f90da              # double 0.78150554385185989
	.quad	0x3fb62dc1a12f0db0              # double 0.086635686732782657
	.quad	0x3fd71109cae544d8              # double 0.36041493238469746
	.quad	0x3feafee926f5f1a5              # double 0.84361703500285457
	.quad	0x3fa40a3b20486c40              # double 0.039140556040557772
	.quad	0x3fb3b96ac64bcf00              # double 0.077047990238323649
	.quad	0x3fbe226911eec6e0              # double 0.11771256149111364
	.quad	0x3fcb07c2ecd5ef20              # double 0.21117435993425548
	.quad	0x3fe838d4dd963307              # double 0.75693743971496097
	.quad	0x3fe67bb760591545              # double 0.70260208909955024
	.quad	0x3fc80755a99c1eec              # double 0.18772383481722643
	.quad	0x3fe01f70007c6e6c              # double 0.50383758635457587
	.quad	0x3feac745995ff31b              # double 0.83682517963424929
	.quad	0x3fe7bc0c0ad4b3e2              # double 0.74170496096996552
	.quad	0x3fdc0c2ed89f1322              # double 0.43824359087402531
	.quad	0x3fbb6ebb150fa8b8              # double 0.10715836776913334
	.quad	0x3fecc9fbf27c2f3e              # double 0.89965627060289655
	.quad	0x3febac252c52ea47              # double 0.86476381928452717
	.quad	0x3fe380ba9b30e780              # double 0.6094639807772495
	.quad	0x3fdfd7a5b37973f0              # double 0.49753706480788562
	.quad	0x3fdd90a51a10c112              # double 0.46195342584089005
	.quad	0x3fd06d395b64f398              # double 0.25666650700787264
	.quad	0x3fb7f2fbc70d7858              # double 0.093551384064512688
	.quad	0x3f71f1febdbd1080              # double 0.0043811751200487636
	.quad	0x3fc139630324e464              # double 0.13456380513688082
	.quad	0x3fea16ab648b4968              # double 0.8152672733070121
	.quad	0x3fe59e8483946c19              # double 0.67560029696631141
	.quad	0x3fd767870babd2fe              # double 0.36569381847156979
	.quad	0x3f9afd1476b0ad60              # double 0.026356048340102745
	.quad	0x3fb3ffe5025590a0              # double 0.078123391218073213
	.quad	0x3fc6327f2e04405c              # double 0.17341603991417542
	.quad	0x3fe9d8539cabd3b0              # double 0.80765705680697941
	.quad	0x3fbd968eafe399f8              # double 0.11557857317129805
	.quad	0x3fe5212375b47b7b              # double 0.66029522885570147
	.quad	0x3fd4f47003087bd2              # double 0.32741928383069052
	.quad	0x3feef89110952c24              # double 0.96784260977563407
	.quad	0x3fe76d53b053738f              # double 0.73209556997936598
	.quad	0x3fed1053e1571033              # double 0.90824312221275816
	.quad	0x3fd550445e39a2ba              # double 0.3330241127173782
	.quad	0x3fdf334aaa6d16be              # double 0.48750559466530408
	.quad	0x3fc9e4ac89799a7c              # double 0.20229107582709449
	.quad	0x3fb4c63a9bbea5f0              # double 0.08114973356591526
	.quad	0x3fee56a4c0dd3cc5              # double 0.94807660740652777
	.quad	0x3fd267feddd0648e              # double 0.28759738599325935
	.quad	0x3fe5ec80cb80414a              # double 0.6851200079563935
	.quad	0x3fdbb10d3ef971cc              # double 0.43268138074725182
	.quad	0x3fb1a666a3bb2d10              # double 0.068945326779772609
	.quad	0x3fe270d884ba09fd              # double 0.57627511904894357
	.quad	0x3fbe4ebfdd2ea210              # double 0.11838912153201187
	.quad	0x3fe1703ae4096745              # double 0.54494995630668852
	.quad	0x3feea57bfa3b0a0a              # double 0.95770071862381312
	.quad	0x3f691deee7852800              # double 0.0030660310841641447
	.quad	0x3fe8f2c5ebb393e5              # double 0.77963539157337591
	.quad	0x3fe1192d5b9002be              # double 0.53432338603314355
	.quad	0x3fc91fca15afe2b0              # double 0.19628263529718515
	.quad	0x3fde45c6e39171d6              # double 0.47300884459926118
	.quad	0x3fd052903e050b40              # double 0.25503927284824002
	.quad	0x3fbf0911c5ce7218              # double 0.12123213843592173
	.quad	0x3fee3fc2707cf3a9              # double 0.9452831456215921
	.quad	0x3feb23feeb623e0c              # double 0.84814401601210098
	.quad	0x3fef34001a874404              # double 0.97509770566296127
	.quad	0x3fec5787e981baf7              # double 0.88568492514408959
	.quad	0x3feaed36eb16dd76              # double 0.8414568511570184
	.quad	0x3fe0f9932684c611              # double 0.53046567462132732
	.quad	0x3fa31ce18276de40              # double 0.037329718757459052
	.quad	0x3fd2f9c8c1b29624              # double 0.29649561801702107
	.quad	0x3fdefa170af692f2              # double 0.48401428290007609
	.quad	0x3fd2d0dc1f0c3af6              # double 0.29399779350289579
	.quad	0x3fb8cb9a3db2f9d8              # double 0.096856727660429853
	.quad	0x3fe1d6bbdba237a5              # double 0.55746262452315831
	.quad	0x3fe02b996966362c              # double 0.50532217584413308
	.quad	0x3fdc1360a7840aa0              # double 0.4386827121635779
	.quad	0x3fe29d4921f49c13              # double 0.58169991142210831
	.quad	0x3fe1826d30a20b27              # double 0.54717120646123341
	.quad	0x3fd4df47f3adcbf4              # double 0.32612799450652052
	.quad	0x3fea502228451faa              # double 0.8222819124721259
	.quad	0x3fddbdef26b0c172              # double 0.4647176626049464
	.quad	0x3feb4717a24d1c86              # double 0.85242826175171227
	.quad	0x3fe3f8b44b93a4fe              # double 0.62410940896111788
	.quad	0x3fb378150254a388              # double 0.076051056927680105
	.quad	0x3fe245cc2a041bbc              # double 0.57102020460376179
	.quad	0x3fa861b2e9b6a030              # double 0.047620383290734813
	.quad	0x3f9bd7b1d5ae1c60              # double 0.027189997355460682
	.quad	0x3fe6b089a1ccdf3c              # double 0.70905000306718291
	.quad	0x3fdcfec39fac2fdc              # double 0.45304957001712665
	.quad	0x3fbb47eed057c0a0              # double 0.1065663584374783
	.quad	0x3fda57e997adefd4              # double 0.41161575138516793
	.quad	0x3fe70aa5d6a300d1              # double 0.72004978104816975
	.quad	0x3fdf446a94c4eeda              # double 0.48855080154656394
	.quad	0x3fea126003131e09              # double 0.81474304771921979
	.quad	0x3fc01b03267b970c              # double 0.12582435015718152
	.quad	0x3fae2aa40d6e01a0              # double 0.058919073714608361
	.quad	0x3fe54a058938890b              # double 0.66528584290452508
	.quad	0x3fd5d427a1534cd8              # double 0.34107390169556373
	.quad	0x3fe8c1d261ce17b3              # double 0.77365988829182297
	.quad	0x3fdcd82f57df5550              # double 0.4506948812607634
	.quad	0x3f99860148201b60              # double 0.024925251033006801
	.quad	0x3fe610c4c9e5ad90              # double 0.68954696114581004
	.quad	0x3fd99fcc2476d0ce              # double 0.4003782611937482
	.quad	0x3fd8410a1855076c              # double 0.37896969200311648
	.quad	0x3fe8312fc8e123f4              # double 0.7560042308260777
	.quad	0x3fdf1019d29da0ba              # double 0.48535771911566494
	.quad	0x3fc65f9b72a96e74              # double 0.17479270075533615
	.quad	0x3fd0d6b64c66e9b8              # double 0.26310498677380734
	.quad	0x3fc11ea33a367cac              # double 0.13374748556541272
	.quad	0x3f9029f7920bf720              # double 0.0157850916757446
	.quad	0x3fe0f15b3fc10e77              # double 0.52946245624521182
	.quad	0x3fbccc3e4f249de0              # double 0.11249150688364962
	.quad	0x3fc68964c5a084c0              # double 0.17606792115933523
	.quad	0x3fe50f2ed0aead69              # double 0.65810337789791362
	.quad	0x3fc242c913245f4c              # double 0.14266313013717491
	.quad	0x3fc424d84389692c              # double 0.15737441346829806
	.quad	0x3fe70302c7a6bf5a              # double 0.71911753649144861
	.quad	0x3fc7a2894f3f32a8              # double 0.18464771623111642
	.quad	0x3fe4b09ad8c6e0b2              # double 0.64655821170074135
	.quad	0x3fe290f04e2702c6              # double 0.58019271148813156
	.quad	0x3fea049c01a4f049              # double 0.8130626709094112
	.quad	0x3fe6b21a4ca4bd39              # double 0.7092410561507797
	.quad	0x3fc7ae07de0cbd38              # double 0.18499849645875499
	.quad	0x3fe9c64244de6519              # double 0.80545152140544751
	.quad	0x3fd2cd579d1cbb06              # double 0.29378309576979722
	.quad	0x3fe14635998f906d              # double 0.53982048027365936
	.quad	0x3feda4ab1bfcab9a              # double 0.92635112253389029
	.quad	0x3fac993c7a193940              # double 0.055856599716764155
	.quad	0x3fce18e829f0aeb0              # double 0.23513509796008725
	.quad	0x3feb0f4469c55bf8              # double 0.84561367662797604
	.quad	0x3fdefd9cec179b16              # double 0.48422930770759487
	.quad	0x3fea1b74d28ecd16              # double 0.81585160374234778
	.quad	0x3fdb5c05954bad22              # double 0.4274915655102679
	.quad	0x3fd4beaf774a6272              # double 0.32413851403683858
	.quad	0x3fee5929d4d0edc7              # double 0.94838420453691519
	.quad	0x3fe4ba67fda32b01              # double 0.64775466478872101
	.quad	0x3fea1bf431a78fec              # double 0.8159123391928893
	.quad	0x3fd78324af61c536              # double 0.36737935187473469
	.quad	0x3fef314febe59a09              # double 0.97476955484018035
	.quad	0x3fe999b26ff72a75              # double 0.80001184337863995
	.quad	0x3fdbec42eda0ccb6              # double 0.43629525380965661
	.quad	0x3f79fe023e805800              # double 0.0063457572614620261
	.quad	0x3fe8874fb5ae32e3              # double 0.76651750072923297
	.quad	0x3fabad71260c93d0              # double 0.054057632345837825
	.quad	0x3fc408a4b5f6ddf0              # double 0.15651377568222768
	.quad	0x3fcd9806c2f5c3a4              # double 0.23120197791606956
	.quad	0x3fe07d571b1fe418              # double 0.5153003244187202
	.quad	0x3fef1756a0a1d7d9              # double 0.97159892438389328
	.quad	0x3fdbb5d20f27669e              # double 0.4329724452960394
	.quad	0x3fe031d72f05e181              # double 0.50608405288862468
	.quad	0x3faa07d57684d680              # double 0.050841017453802984
	.quad	0x3fbbf0ecf86bf990              # double 0.10914498391136918
	.quad	0x3fe76352f6f71bb1              # double 0.73087452159312793
	.quad	0x3fb86f9558de1f28              # double 0.095452627369124188
	.quad	0x3fdd89afbafc2732              # double 0.46152871380091931
	.quad	0x3fd8d676e52f9102              # double 0.38808987027574926
	.quad	0x3fdbc8585c4bbf7c              # double 0.43410309804220737
	.quad	0x3fc420f5d683b84c              # double 0.15725586866705255
	.quad	0x3fe5c9bc307ad97e              # double 0.68087586849905768
	.quad	0x3fe8cf5236deab33              # double 0.77530775753743908
	.quad	0x3fe4e06dacbde4a6              # double 0.65239604700686438
	.quad	0x3fd6c31462f8fdac              # double 0.35565671601576798
	.quad	0x3fc480370e300ad8              # double 0.16016281311757186
	.quad	0x3fee77fef4af01c7              # double 0.9521479395844431
	.quad	0x3fbe3444ce4c5fd8              # double 0.11798505817966942
	.quad	0x3fc78cef8d8b8108              # double 0.1839885178697005
	.quad	0x3fda1610f07290f2              # double 0.40759681206897291
	.quad	0x3fef74bd6c5ddeb4              # double 0.98300048032157016
	.quad	0x3fa13a19a17ea1c0              # double 0.033646393741324498
	.quad	0x3f98f35f89516c00              # double 0.024365895038823027
	.quad	0x3fd5f90bab39675a              # double 0.34332553597561388
	.quad	0x3fc08ab9a6b12240              # double 0.12923355712179507
	.quad	0x3fc74ef6d63f205c              # double 0.18209729634532124
	.quad	0x3fee7f093fc8036f              # double 0.95300734002385734
	.quad	0x3fccaf4e6e90d448              # double 0.22409992598264439
	.quad	0x3fee37ba35661887              # double 0.94430265836196348
	.quad	0x3feb79df78e55bc1              # double 0.8586270676849993
	.quad	0x3fec8a1c4fc77e59              # double 0.89185920316590306
	.quad	0x3fd452c835695f68              # double 0.31755261627176035
	.quad	0x3fdc8e9ecf355ed4              # double 0.44620485530093146
	.quad	0x3feb990406a0e10b              # double 0.86242867750755303
	.quad	0x3fea9d7092bbba3c              # double 0.83171871813630771
	.quad	0x3fec04e8796dd64a              # double 0.87559913364993602
	.quad	0x3fed4dd5e601dcb7              # double 0.91575140879913064
	.quad	0x3fd50c3682deba0c              # double 0.32887041836048136
	.quad	0x3fdacf631b5c4bf8              # double 0.4189079062645642
	.quad	0x3fe1d97be95c5cae              # double 0.55779834345130097
	.quad	0x3fe41945bf06826d              # double 0.62808501538900219
	.quad	0x3fdf23139a7c8278              # double 0.48651590429839287
	.quad	0x3feabf8cd4754774              # double 0.83588258262373793
	.quad	0x3febc5adc1ae55c0              # double 0.86788070514983673
	.quad	0x3fe2e723dbd3ea5e              # double 0.59071534094921296
	.quad	0x3fe29b727b62849e              # double 0.58147548769570157
	.quad	0x3fcc0542f71aa284              # double 0.21891057077052178
	.quad	0x3fe5fc0c2a568590              # double 0.68701751965652313
	.quad	0x3fd0beb4f23d9e74              # double 0.2616398206359698
	.quad	0x3fd6fa8fee5c5fd8              # double 0.35904310491014035
	.quad	0x3fdd609c228a52a4              # double 0.45902160046652285
	.quad	0x3fe30f6ebaef28bd              # double 0.59563385496701182
	.quad	0x3fe7ca3dd5466e35              # double 0.74343768744751648
	.quad	0x3fe7200580f37f0d              # double 0.72265887437603882
	.quad	0x3fdeec9d2226989c              # double 0.48319176039729839
	.quad	0x3fed1617721d5a8b              # double 0.90894672668476184
	.quad	0x3feb0f6ca2e716bb              # double 0.84563285653049236
	.quad	0x3feacae153417836              # double 0.83726564656149693
	.quad	0x3fec93790e099d39              # double 0.89300205938062682
	.quad	0x3fd96cc45d6146e0              # double 0.39726361388339448
	.quad	0x3fee1b6fe5f99e84              # double 0.94084925572401845
	.quad	0x3feb9eb837b5e498              # double 0.86312495118103794
	.quad	0x3fea25ab087b18ef              # double 0.81709815651336537
	.quad	0x3fea9710dec8da8e              # double 0.8309406615506576
	.quad	0x3fefe2774d5f2abe              # double 0.99639477836293344
	.quad	0x3fe7accbd6ced051              # double 0.73984329180394515
	.quad	0x3f87d47d1c9fd380              # double 0.01163575881580825
	.quad	0x3fdfc5b5a355e3c4              # double 0.49644223166211199
	.quad	0x3fd3bad1964b9ca0              # double 0.3082775085189926
	.quad	0x3fe00d6abaf7a711              # double 0.50163780705517713
	.quad	0x3fec5ca359ff3c06              # double 0.88630836083928055
	.quad	0x3fc1f50cee30555c              # double 0.14029084806740399
	.quad	0x3fd70f5072b3ebaa              # double 0.36030970765539883
	.quad	0x3fd58c276f7d085e              # double 0.336679324031257
	.quad	0x3fb7cac9a3a4ba78              # double 0.09293804402543937
	.quad	0x3fc28f2bc46da588              # double 0.14499423114038401
	.quad	0x3fc9b3d6f877b0bc              # double 0.20080077297405363
	.quad	0x3fc906a10c6913f8              # double 0.1955148039434389
	.quad	0x3fdffb9a68a5299a              # double 0.4997316381383371
	.quad	0x3fdd3fdb30b01d76              # double 0.45702247385675976
	.quad	0x3fd5098317536518              # double 0.32870557096392039
	.quad	0x3fb7814e13ca17d8              # double 0.09181678755893985
	.quad	0x3fd0bf76c15e211a              # double 0.26168602832378129
	.quad	0x3feb645b89646acb              # double 0.85600067934441293
	.quad	0x3fda0ddadad9a00a              # double 0.4070956361015311
	.quad	0x3f8a26fee4551540              # double 0.012769690840864656
	.quad	0x3fe8a2b8d0f40662              # double 0.76986351786781548
	.quad	0x3fed04ae8048e026              # double 0.90682148986434608
	.quad	0x3fd928d66d1f309c              # double 0.39311752945355649
	.quad	0x3fe982def0fddab4              # double 0.7972254473559901
	.quad	0x3feb2ffa07c3b1ca              # double 0.84960652843943163
	.quad	0x3fee267ee73966f2              # double 0.94219918404561853
	.quad	0x3fd607f49148c1e2              # double 0.34423555553351382
	.quad	0x3fd06a682bb7cfe6              # double 0.25649456281030181
	.quad	0x3fcf4f568c25510c              # double 0.24460870593123507
	.quad	0x3fd4c50a9532afb4              # double 0.32452644891850047
	.quad	0x3fe77e60c103a269              # double 0.73417699525914515
	.quad	0x3feb8654530a5b77              # double 0.86014763087119561
	.quad	0x3fed3c8483632a95              # double 0.91363740598292742
	.quad	0x3fe7e48f305c7fad              # double 0.74665030904360707
	.quad	0x3fecc7209d3398a3              # double 0.89930754378726296
	.quad	0x3fe476ba8e31c5e4              # double 0.63949325344418328
	.quad	0x3febdb88b9f36e3b              # double 0.87054859465155887
	.quad	0x3fd6bdb562c20974              # double 0.35532889026958192
	.quad	0x3fe2e0312f12ec3f              # double 0.58986720270275572
	.quad	0x3fed3dc5800173fc              # double 0.91379046441181754
	.quad	0x3fde9ea68c7de7ee              # double 0.47843326301483458
	.quad	0x3fedc4ee1a16620b              # double 0.93028931708528384
	.quad	0x3fc3fd7af56998f4              # double 0.15617310507804627
	.quad	0x3fec5e4527e05146              # double 0.88650758541420127
	.quad	0x3fd151e553356e3a              # double 0.27062352300501724
	.quad	0x3fea622ac475aa24              # double 0.8244832837202165
	.quad	0x3fe537eac5413ee1              # double 0.6630758144983383
	.quad	0x3f9bf4c2e8d5c440              # double 0.027300878010866336
	.quad	0x3fe6eccdbb3a2b63              # double 0.71640669410531321
	.quad	0x3fc43e48d31ba814              # double 0.15815077121743626
	.quad	0x3fe005871079d039              # double 0.50067475526748872
	.quad	0x3f789a05666bff80              # double 0.0060062609616123863
	.quad	0x3fee4a886875e4eb              # double 0.94659824755140443
	.quad	0x3fd08f411f9c5d2c              # double 0.25874355399124016
	.quad	0x3fd57187261e2f96              # double 0.33505419466450215
	.quad	0x3fdebaa09026a0e4              # double 0.48014082028613658
	.quad	0x3fe105d1098fc7bd              # double 0.53196002833850964
	.quad	0x3fe3816edcbdf0f5              # double 0.60954993356383957
	.quad	0x3fb8a460ba9c7398              # double 0.096258206900940002
	.quad	0x3feb680abf6871de              # double 0.85645043739674143
	.quad	0x3fd50f83850ad8a0              # double 0.32907188408297294
	.quad	0x3fe3392b475bca2f              # double 0.60072864472596688
	.quad	0x3fd610530e1bfb90              # double 0.34474636438238182
	.quad	0x3fd4960ea6810be2              # double 0.32165876636662294
	.quad	0x3fb96ab790a86bb8              # double 0.099284622971409386
	.quad	0x3fec39d50ce03cbf              # double 0.88205959811048007
	.quad	0x3fe189ac2f433645              # double 0.54805573683706454
	.quad	0x3fd02608cf3ddc40              # double 0.25232143629495241
	.quad	0x3fee29f70a9ac32b              # double 0.94262268134307214
	.quad	0x3fc3396b6ea561b4              # double 0.15018980887067601
	.quad	0x3fd8cdfaa61213f8              # double 0.38757196634134017
	.quad	0x3fe5c291612c3af3              # double 0.6800009630113365
	.quad	0x3fec1f19cd2d636c              # double 0.8787964827889545
	.quad	0x3fdb201ae209580a              # double 0.42383453439595142
	.quad	0x3fe88f4beca42f9b              # double 0.76749225825323053
	.quad	0x3feebf0f4f0f7439              # double 0.96082272950628244
	.quad	0x3fe7284fae08b5c5              # double 0.72367080679912787
	.quad	0x3fe0f22e8e70fa8b              # double 0.52956321545191665
	.quad	0x3fba44b45b2413a8              # double 0.10261084771270979
	.quad	0x3fdef3d484b6973a              # double 0.48363221130636058
	.quad	0x3fca2c488de2ad1c              # double 0.20447642257691079
	.quad	0x3fcec8de71599bf8              # double 0.24050503287000402
	.quad	0x3fe16a314369fccd              # double 0.54421294371413753
	.quad	0x3feac4b0d42c302b              # double 0.83651009979212654
	.quad	0x3fec8282e1118b8a              # double 0.8909315486783822
	.quad	0x3fc266188e090904              # double 0.14374072013203698
	.quad	0x3fd99096b98998d2              # double 0.39944999808211634
	.quad	0x3fde3e2bf1b58770              # double 0.4725446567955407
	.quad	0x3fe2c18095ca0af3              # double 0.58612088447293187
	.quad	0x3fe75f25a072355d              # double 0.73036462151655324
	.quad	0x3fc8054c73d3f72c              # double 0.18766170173324193
	.quad	0x3fe49e25f0ad9c59              # double 0.64430520064787367
	.quad	0x3feb082c6b98d802              # double 0.84474774375007677
	.quad	0x3fdd0c425829b1be              # double 0.45387323960929027
	.quad	0x3fe486a7311291db              # double 0.64143714508514493
	.quad	0x3fdd28570c35c97c              # double 0.45558716003792887
	.quad	0x3fe640dbbcf01ccb              # double 0.69541727926198271
	.quad	0x3fcf6a141959c120              # double 0.24542475927183549
	.quad	0x3fe7a202d3da78fd              # double 0.73852673890704035
	.quad	0x3feb290131e6a38a              # double 0.84875545259738883
	.quad	0x3fedc5e12b8e6722              # double 0.93040522105295431
	.quad	0x3fdd3675040b8fdc              # double 0.45644879717860731
	.quad	0x3fda4651fb06157e              # double 0.41054200662650675
	.quad	0x3fd63f6bfbfcb2ba              # double 0.34762096031299061
	.quad	0x3fd292fd68d557e2              # double 0.29022155034669883
	.quad	0x3f7b6a3842b14e00              # double 0.0066930959393007861
	.quad	0x3fd7b65e8a3d5fb0              # double 0.37050593852972735
	.quad	0x3fe8da8a546238ad              # double 0.77667728882967924
	.quad	0x3fcff6d31584af3c              # double 0.24971998739908396
	.quad	0x3fd88e8dca1eec68              # double 0.38370079744681229
	.quad	0x3fd4e10d70406178              # double 0.32623611414012244
	.quad	0x3fdf9e4975ab7f58              # double 0.49403606883241968
	.quad	0x3fe7e1fe4b06151a              # double 0.74633707669332527
	.quad	0x3fe218019497c22e              # double 0.56543044111282881
	.quad	0x3fe1700104e646ef              # double 0.54492236096322511
	.quad	0x3fb8a5907e6820c0              # double 0.096276312695525057
	.quad	0x3fd1dddf4d04e51e              # double 0.27916700860403576
	.quad	0x3fb67f0b597223f0              # double 0.087876042687767386
	.quad	0x3fe400242d71a341              # double 0.62501725078355019
	.quad	0x3fdfdaedccd2683e              # double 0.49773736002100921
	.quad	0x3fe0d5224913b310              # double 0.52601732514230726
	.quad	0x3fe778b7fa842054              # double 0.73348616532258371
	.quad	0x3feeb88ef828ced3              # double 0.96002911060937845
	.quad	0x3fee3e4f0db23206              # double 0.94510605502142719
	.quad	0x3feaee3ec42f2739              # double 0.84158266370034263
	.quad	0x3fe867d81c2b5e5c              # double 0.76267629148328408
	.quad	0x3fb2452069db7e08              # double 0.071367288440789989
	.quad	0x3fb1d296bf760098              # double 0.069619580977816731
	.quad	0x3fed5435cadfe4a6              # double 0.91652955650274204
	.quad	0x3fe778378eed8980              # double 0.7334249297676223
	.quad	0x3fde05b0dd2834c2              # double 0.46909734341972975
	.quad	0x3fed49b66ea70c8b              # double 0.9152481232817008
	.quad	0x3fe4cdc7512e74da              # double 0.65011945586925468
	.quad	0x3fe1f2d616564f42              # double 0.56089310038303375
	.quad	0x3fd3bd48cedbaa68              # double 0.30842800332053466
	.quad	0x3fdee2dfbc205520              # double 0.4825972878619087
	.quad	0x3fe6ff2682e3f8e3              # double 0.71864629330209728
	.quad	0x3fea0da57eb1ac6c              # double 0.81416582817963734
	.quad	0x3fe0e3c55196d42b              # double 0.52780404982934692
	.quad	0x3fd48df63c079fde              # double 0.32116466390880116
	.quad	0x3fe38b7593e85480              # double 0.6107738388842705
	.quad	0x3fe47200655d1ee2              # double 0.63891620442970187
	.quad	0x3fe40b8d5b285cad              # double 0.62641017727118753
	.quad	0x3fda3e4320c19bc2              # double 0.41005018423896555
	.quad	0x3fec2725e2c46c74              # double 0.87977880754932735
	.quad	0x3fe2134ac9201db2              # double 0.56485499651255666
	.quad	0x3fe3070cc717d0c4              # double 0.59461058507306364
	.quad	0x3fc63cfa2605063c              # double 0.17373587471415586
	.quad	0x3fed1466c4bf5b59              # double 0.90874041011089013
	.quad	0x3fd24b57f68c5910              # double 0.28584860875106788
	.quad	0x3fd5e956cbffab26              # double 0.34236688539265214
	.quad	0x3fea62cf9fda54fc              # double 0.82456189366590093
	.quad	0x3fdef5ec1eef5688              # double 0.48375990887630183
	.quad	0x3fe7d11da875b697              # double 0.74427683737094952
	.quad	0x3fd492113b26e428              # double 0.32141524101786212
	.quad	0x3fefb8d935fab17e              # double 0.99131451170755702
	.quad	0x3fee93bd1f5fc4d0              # double 0.95553451659920974
	.quad	0x3fe848de92faae32              # double 0.75889519411925321
	.quad	0x3fe3ef5e52625ed6              # double 0.62296978083301258
	.quad	0x3fe2d7fb5194fbac              # double 0.58886495527246074
	.quad	0x3fce4c193a067a30              # double 0.23669734318987556
	.quad	0x3fad60b96a4632d0              # double 0.057378572676588413
	.quad	0x3fd21b1abfb88328              # double 0.28290432665567034
	.quad	0x3fc7ef5b3085b400              # double 0.18699207181217048
	.quad	0x3fe6e31fe8a1b12b              # double 0.71522517619954351
	.quad	0x3fedd853593dfb52              # double 0.93265693121052551
	.quad	0x3fdf070a5f84474a              # double 0.48480471923641189
	.quad	0x3fb1fc788d01e060              # double 0.070258650231950437
	.quad	0x3f9f5479f0de22e0              # double 0.030595689131163506
	.quad	0x3fe5b916f92ab342              # double 0.67884396233930766
	.quad	0x3fe3b96d4cf03d85              # double 0.6163851263717538
	.quad	0x3fe1f58bddaf53ea              # double 0.56122391984774578
	.quad	0x3fd906bd19bccaf6              # double 0.39103629601883882
	.quad	0x3fd80887df50b754              # double 0.3755206757367564
	.quad	0x3fe8aab2bb93a23f              # double 0.77083717952798014
	.quad	0x3fd7a6d12b016996              # double 0.36955670547254138
	.quad	0x3fef9ce8bd3fa7f5              # double 0.98790394747379528
	.quad	0x3fa7815c2e716820              # double 0.045908814114867136
	.quad	0x3fe4b6084e6b2feb              # double 0.64722075763847664
	.quad	0x3fed67ad5e51391e              # double 0.9189059106954891
	.quad	0x3fe32eb018bc9a5a              # double 0.5994492037905943
	.quad	0x3fe5cf1880470fe2              # double 0.68153023771492038
	.quad	0x3fe67baedde05909              # double 0.70259803137995036
	.quad	0x3fc45a62dfa489c0              # double 0.15900836868338608
	.quad	0x3fecb0af4f69e0d2              # double 0.89656796942201766
	.quad	0x3fe1f61497468068              # double 0.56128911539054815
	.quad	0x3fc0eac202b0b278              # double 0.13216424113615566
	.quad	0x3feef63bebf38555              # double 0.96755786976079127
	.quad	0x3fed4ece9684dd07              # double 0.91586999319307061
	.quad	0x3fe2eb552c8867c9              # double 0.59122713754481382
	.quad	0x3fe63813f4a7fcc7              # double 0.69434545311369156
	.quad	0x3fe4abe5eaeb303f              # double 0.64598365671691471
	.quad	0x3fdd5d78eede6de2              # double 0.45883010222470777
	.quad	0x3fc34777d19a3634              # double 0.15061853155605009
	.quad	0x3fe7d116169202a3              # double 0.7442732277705385
	.quad	0x3fe67b62e2895183              # double 0.70256180043593053
	.quad	0x3feaba8daab3bb36              # double 0.83527263012169928
	.quad	0x3fd51e460c7b9e44              # double 0.32997275561362849
	.quad	0x3fe9d1a84d3fb668              # double 0.80684294784232424
	.quad	0x3fecb81419ca599e              # double 0.89747052228158331
	.quad	0x3fe692ccc7cc2170              # double 0.70541991255690384
	.quad	0x3fec2b5b7f5503c3              # double 0.88029265279339375
	.quad	0x3fc91d25cc832bbc              # double 0.19620201574283935
	.quad	0x3fda2054ea53e576              # double 0.40822337039534007
	.quad	0x3feba1ff7deb7c1d              # double 0.863525148331863
	.quad	0x3fbde31897f61650              # double 0.11674646100990427
	.quad	0x3fdd4023ad602508              # double 0.45703975611884617
	.quad	0x3fba2de973629880              # double 0.10226306025524146
	.quad	0x3febb300c4bb385b              # double 0.86560095237815504
	.quad	0x3fec786cf12cae9a              # double 0.88970038513567151
	.quad	0x3faec7d469615fd0              # double 0.060118329871954423
	.quad	0x3fdf7f8a7e06aab2              # double 0.49215948397856402
	.quad	0x3feba7ad2153edda              # double 0.8642182970938237
	.quad	0x3fc35a8a3b105c78              # double 0.15120056041698482
	.quad	0x3fecc917f1750478              # double 0.89954754981603369
	.quad	0x3fdd094265c9dafa              # double 0.45369014683039632
	.quad	0x3fd0288564c79be4              # double 0.25247320977945109
	.quad	0x3fa5497d08f91a30              # double 0.041576297135680895
	.quad	0x3fe9f2a0a9fe775c              # double 0.81086762620882835
	.quad	0x3fb0988b883f92f0              # double 0.064827652705911509
	.quad	0x3fd06b156b9f6d84              # double 0.25653586874042156
	.quad	0x3fda2f9ddaf4b0b2              # double 0.40915628797916803
	.quad	0x3fd8ab4c6c3c7c28              # double 0.38545523233364287
	.quad	0x3fcd2975ddbe7e10              # double 0.22782777144765065
	.quad	0x3fd8936b56e2806e              # double 0.38399775967446359
	.quad	0x3fca8cef39d6ff8c              # double 0.20742597889147552
	.quad	0x3fe52050c1defab8              # double 0.6601947580855585
	.quad	0x3fe43f7e1978b11a              # double 0.63275055861371077
	.quad	0x3fe83a58851b0791              # double 0.75712228772339263
	.quad	0x3fe0afcfc9aa3e48              # double 0.52146138560960598
	.quad	0x3fdf4368b69c0bc0              # double 0.48848932106937681
	.quad	0x3fe650c77f015317              # double 0.69736075216005389
	.quad	0x3fd9e2f052587112              # double 0.40447624246168445
	.quad	0x3fd0aced808fecce              # double 0.26055467181113279
	.quad	0x3f7bc555e6ec1700              # double 0.0067799907253680569
	.quad	0x3fe60312040886c4              # double 0.68787480151896618
	.quad	0x3fde2c9ae9c73910              # double 0.47147248105911022
	.quad	0x3feec2c107908c7a              # double 0.96127368428677973
	.quad	0x3fe51293fd10a236              # double 0.65851783205750425
	.quad	0x3fe43983a318fbc5              # double 0.63202077727316264
	.quad	0x3fe46b30d1378def              # double 0.6380848013181416
	.quad	0x3fde67217b9a73cc              # double 0.47504460402143134
	.quad	0x3fa65485aa14ec40              # double 0.043613602649621885
	.quad	0x3faf956a2d011470              # double 0.06168681907050988
	.quad	0x3fe4026318e44f0a              # double 0.62529139386831045
	.quad	0x3fb4801348687bd0              # double 0.080079274347084394
	.quad	0x3fbddccca61a5470              # double 0.11665038161511787
	.quad	0x3fdc2ea0595c48bc              # double 0.44034584738359306
	.quad	0x3fe000f4e4990c53              # double 0.50011677406326738
	.quad	0x3febe5da37c4f956              # double 0.87180815594164573
	.quad	0x3fe395da4cb15cd4              # double 0.61204256991450245
	.quad	0x3fda29b7f996cdf4              # double 0.40879630445417026
	.quad	0x3fec823544d408f2              # double 0.89089454119701217
	.quad	0x3fce718e73a15e44              # double 0.23784046789181634
	.quad	0x3fd78892473f6b96              # double 0.36771065671717318
	.quad	0x3fdad88342418e6c              # double 0.41946488828964479
	.quad	0x3fc26ef51c26b370              # double 0.14401115297860256
	.quad	0x3f6c4e4198de1e00              # double 0.0034552842325330513
	.quad	0x3fb07704c8ddf9a8              # double 0.064316081085030619
	.quad	0x3fa3cda05c4a76b0              # double 0.038678179994560025
	.quad	0x3fd595087ea918c4              # double 0.33722126359169757
	.quad	0x3fe0ee7636b64ad8              # double 0.5291091030688575
	.quad	0x3fea24130e0b97b0              # double 0.8169036173173847
	.quad	0x3fed2a4dbdcedd70              # double 0.91141402313125575
	.quad	0x3fa100d659e0f710              # double 0.033209513160256887
	.quad	0x3fe49ab1919d4465              # double 0.64388349952981783
	.quad	0x3fc68c684de3fbb8              # double 0.17615989497423157
	.quad	0x3fee95e0392cb8c4              # double 0.95579539458210449
	.quad	0x3fd5b20e9ee5abea              # double 0.3389927436571144
	.quad	0x3fe804c0a59e5b83              # double 0.75058014247302685
	.quad	0x3fe9e0bd1d30d484              # double 0.80868392659489574
	.quad	0x3fef523b51362e67              # double 0.97878805028581161
	.quad	0x3fe50d2cd1271202              # double 0.65785828447457129
	.quad	0x3fd5e4d872de7ae2              # double 0.34209262101823701
	.quad	0x3fa1164f102a1900              # double 0.033373327944945075
	.quad	0x3fd1e09fb89bf24c              # double 0.27933495548476084
	.quad	0x3fdb24da967c11ac              # double 0.42412438102499084
	.quad	0x3fcffe23759334b4              # double 0.24994319191902081
	.quad	0x3fd641c6ca718168              # double 0.34776468057500276
	.quad	0x3fe3803cb310cd1c              # double 0.60940394376521878
	.quad	0x3fb6a9560f59cbd0              # double 0.088521364925141954
	.quad	0x3fe3d198baa2c39f              # double 0.61933552219680965
	.quad	0x3fcad32ba77f2868              # double 0.20956941298055942
	.quad	0x3fe95965e81a79f8              # double 0.7921628506917946
	.quad	0x3fc47dc7721d5674              # double 0.16008847305299734
	.quad	0x3f6188d79d115d00              # double 0.0021404467775415492
	.quad	0x3fcdbdb41dfbfb98              # double 0.23235179390027549
	.quad	0x3fd02f75f6941e4e              # double 0.25289677696170976
	.quad	0x3fe3bf921243beed              # double 0.61713508193312594
	.quad	0x3fb28ca2acdd6dd0              # double 0.072458426669462783
	.quad	0x3fd17754dfe7d428              # double 0.2729084192827167
	.quad	0x3fd9be14920b7a30              # double 0.40222658407393208
	.quad	0x3fea2300c2b6c94f              # double 0.81677282362060477
	.quad	0x3fe3e10939a4ad50              # double 0.62122021921588022
	.quad	0x3fdc1406e85e42e2              # double 0.43872235004623239
	.quad	0x3feb392b7c59f783              # double 0.85072874343289617
	.quad	0x3fd3c697b0eb4084              # double 0.30899612691155931
	.quad	0x3fef7ae08380380b              # double 0.98374963458786746
	.quad	0x3fed598cb971f613              # double 0.91718136043317811
	.quad	0x3fe04fbe19dd11b1              # double 0.50973420192217678
	.quad	0x3fe93bd64924a827              # double 0.78855432782916501
	.quad	0x3fdc4c6b9eda4200              # double 0.44216433060594795
	.quad	0x3f9139e73d9cdea0              # double 0.016822445998711744
	.quad	0x3fd9e66ca67fb6c8              # double 0.40468899020821114
	.quad	0x3fe7cf56e54562ca              # double 0.74405998973369347
	.quad	0x3fc71174e905eef8              # double 0.18022023561558576
	.quad	0x3fb5faa4e50e7848              # double 0.085855775758745811
	.quad	0x3fdaa794086aa054              # double 0.41647816488194178
	.quad	0x3fde8b6574a86f38              # double 0.47725807564141887
	.quad	0x3fe4a7566c807ca8              # double 0.6454269522836471
	.quad	0x3fd52a2dec1f04e8              # double 0.33069942530353424
	.quad	0x3fa927a87e06d270              # double 0.049130692848312729
	.quad	0x3fe8e66b637dad2a              # double 0.77812737876721383
	.quad	0x3fb9d94d6de0f0d0              # double 0.10097202236733271
	.quad	0x3fe020b4f8b0134f              # double 0.5039925439055909
	.quad	0x3fd823da4080cf5e              # double 0.37718826579224707
	.quad	0x3fea3a1af4d5ab40              # double 0.81959293193117588
	.quad	0x3fd03c1fa8351c30              # double 0.25366965700635813
	.quad	0x3fe819b5b0240a01              # double 0.75313839342589983
	.quad	0x3fcdf77bc8ddd368              # double 0.234115098075246
	.quad	0x3feb01b4e20c1755              # double 0.84395832204675492
	.quad	0x3fe37cf593e65ecf              # double 0.60900381933876158
	.quad	0x3fd2ddd9a23b01e6              # double 0.29479065745183985
	.quad	0x3fea7fda5fcc6369              # double 0.82810705862639822
	.quad	0x3feaea03b93bb841              # double 0.84106622866034553
	.quad	0x3fe5445cb781ffac              # double 0.66459499207848216
	.quad	0x3fef803592f3446c              # double 0.98440054608557892
	.quad	0x3feff807a227aff1              # double 0.99902707739738449
	.quad	0x3fec502daa48ed81              # double 0.88478739985241373
	.quad	0x3fe6bf9edf14a751              # double 0.71089118547863894
	.quad	0x3fde33be8d79cdea              # double 0.47190822425838397
	.quad	0x3fdfd3c03bbc6b86              # double 0.49729924996943742
	.quad	0x3fe472f175df3442              # double 0.63903115293363322
	.quad	0x3feddf7b75c833e3              # double 0.93353055004410768
	.quad	0x3fe2fab9b63480a4              # double 0.59310613238269072
	.quad	0x3fef6ed4fd2bebc1              # double 0.98227929542132852
	.quad	0x3fb50d7a38f4f7b0              # double 0.082236899285787812
	.quad	0x3fdd09ae36a59b9a              # double 0.45371585213291044
	.quad	0x3fef0bfdd91e0439              # double 0.97021381765092151
	.quad	0x3fe7be1031ab13bb              # double 0.74195108128389309
	.quad	0x3fd1b340ed7449e6              # double 0.27656577290431839
	.quad	0x3fe296e452911e97              # double 0.58091941953985582
	.quad	0x3fccc9d1558a6420              # double 0.2249089877775825
	.quad	0x3fe87d08565be62c              # double 0.76526276461590247
	.quad	0x3fef1277d1cc34c6              # double 0.97100440002545763
	.quad	0x3fde36f328685e48              # double 0.47210387178481428
	.quad	0x3fa724e4e9b92910              # double 0.045203355341600582
	.quad	0x3fda5675be98a4a0              # double 0.4115270959178563
	.quad	0x3fd9f0e7bdc43cfa              # double 0.40532868892564944
	.quad	0x3fd848cd78bf33d4              # double 0.37944351951301525
	.quad	0x3fe961b7959bfba9              # double 0.79317836018150445
	.quad	0x3fe61f193540e72e              # double 0.6912961998088798
	.quad	0x3fb294d7f542b950              # double 0.072583672884069417
	.quad	0x3f8ba9647c56cfc0              # double 0.013506684345749309
	.quad	0x3fccf84f0ab14d80              # double 0.22632778188799918
	.quad	0x3feb351e0f16e988              # double 0.85023405978363176
	.quad	0x3fdbe228ab21983a              # double 0.43567864143404089
	.quad	0x3fe3db3e99803e9c              # double 0.62051324825911847
	.quad	0x3f62c05c59b46800              # double 0.0022889903754164109
	.quad	0x3fdf910fcbd36928              # double 0.49322886376252706
	.quad	0x3fd76ed0422c546c              # double 0.36613851988051382
	.quad	0x3fe58d3db1aeb112              # double 0.67349133208839107
	.quad	0x3fe822eea1b01743              # double 0.75426417903575105
	.quad	0x3fb890c252dfd7f8              # double 0.095958848221783799
	.quad	0x3fe9903b6443515d              # double 0.79885644514665055
	.quad	0x3fe41d646c9d7309              # double 0.62858792508959127
	.quad	0x3fc523878769fa94              # double 0.16514677154551249
	.quad	0x3fe4936f387b08e7              # double 0.64299737006538471
	.quad	0x3fc7ac6f4f6552ac              # double 0.18494979264018718
	.quad	0x3fd5adfc5eeba8be              # double 0.3387442519148286
	.quad	0x3fddd59a90087970              # double 0.46616233888371195
	.quad	0x3f7a20fe44e32900              # double 0.0063791210543036048
	.quad	0x3fe030aee5e66e4c              # double 0.50594277288787159
	.quad	0x3fee6e882d16a1d2              # double 0.95099266821221762
	.quad	0x3fed4f1152367d52              # double 0.91590181405255522
	.quad	0x3fc001f80fb00bf0              # double 0.12506008878707986
	.quad	0x3fd99c658a606966              # double 0.40017069352474832
	.quad	0x3feb2216c3068f14              # double 0.84791124430600683
	.quad	0x3fe862f5e6556ca7              # double 0.76208014475868857
	.quad	0x3feb70697b0d1823              # double 0.85747217210223814
	.quad	0x3fe8528c9329a4d1              # double 0.760076796938984
	.quad	0x3fbff148590500a8              # double 0.12477543042496342
	.quad	0x3fe96ce2d6debee7              # double 0.7945417591745042
	.quad	0x3fe1357584e86679              # double 0.53777576407010408
	.quad	0x3fe5e13baf0bb782              # double 0.68374427975298624
	.quad	0x3fdd556bb25c3b86              # double 0.45833866518017208
	.quad	0x3fb4c34981244600              # double 0.081104845074399634
	.quad	0x3fd2f04df3957bee              # double 0.29591702258579644
	.quad	0x3fdbb3e7a0ff8392              # double 0.43285551760168872
	.quad	0x3fe4b50fe3659f6b              # double 0.64710230267972457
	.quad	0x3fe98c808273b752              # double 0.7984011218920648
	.quad	0x3fa1bc149ae0aa20              # double 0.034638065248447925
	.quad	0x3fee1aad24fa3144              # double 0.94075638982898412
	.quad	0x3fd99b9cf0a234b8              # double 0.4001228666246095
	.quad	0x3fd07397e4f5da8a              # double 0.25705525741015178
	.quad	0x3fc6367504fb77f8              # double 0.17353689902569136
	.quad	0x3fe5e0f4bf178cf0              # double 0.68371045420317778
	.quad	0x3fe98c7bbc2b70ae              # double 0.79839884521381577
	.quad	0x3fd04383393154fa              # double 0.25412064156746761
	.quad	0x3fb5445adb86a138              # double 0.083074263186635799
	.quad	0x3fd6644b6039b6d2              # double 0.34987148663536261
	.quad	0x3fcd295f625fe198              # double 0.22782509139484541
	.quad	0x3fc269a0d46851d4              # double 0.14384851809940236
	.quad	0x3fe6f6da0d0bf225              # double 0.71763327167679292
	.quad	0x3fc09f61855e9cd8              # double 0.12986392032801208
	.quad	0x3fc1cf5e890229e4              # double 0.13914090814462476
	.quad	0x3fd546bdb2b26cf0              # double 0.3324426884734768
	.quad	0x3fd539c302ff79a6              # double 0.33165049832123328
	.quad	0x3fbcff436a631f70              # double 0.11327000949233734
	.quad	0x3f81e2dad927e280              # double 0.0087334725876513364
	.quad	0x3fd0807897a8e26c              # double 0.25784125147359904
	.quad	0x3fd7371be1b5e172              # double 0.36273858110464297
	.quad	0x3fd011a590d173fa              # double 0.2510770715942382
	.quad	0x3fe19c7c428eee7e              # double 0.55035222053216137
	.quad	0x3fc18ce40fa48050              # double 0.13711214793966287
	.quad	0x3fd84a1afc7e3e26              # double 0.37952303559811396
	.quad	0x3fe9a52502b831f7              # double 0.8014092496028401
	.quad	0x3fda1d3ed3414b88              # double 0.40803499822975953
	.quad	0x3fb758053370cc38              # double 0.091186833437675641
	.quad	0x3fde73ada8a62e8c              # double 0.47581044644969306
	.quad	0x3fe98a219498e0f7              # double 0.79811171553504223
	.quad	0x3fdf0f9d1a1301b2              # double 0.48532798334420157
	.quad	0x3fe0534ca6df3f2d              # double 0.51016838638495232
	.quad	0x3fee213980b28089              # double 0.94155573974787032
	.quad	0x3feb323a30224706              # double 0.84988126183654411
	.quad	0x3fe4b7e56aa11a42              # double 0.6474482615092898
	.quad	0x3f8148fa1cae9200              # double 0.0084399738314653305
	.quad	0x3feaf8a5a4231b6c              # double 0.84285242136034588
	.quad	0x3fefd3e5e37a5096              # double 0.99461645535713461
	.quad	0x3fc526fbc2a8b140              # double 0.16525218014556664
	.quad	0x3fa1726221c31cb0              # double 0.034075800534588807
	.quad	0x3fd094a09e7bf4d2              # double 0.25907149769757354
	.quad	0x3fe6facaa3aada4c              # double 0.71811420408523352
	.quad	0x3fcfa3b870e124a0              # double 0.24718385230724937
	.quad	0x3fef8e7f847875fa              # double 0.9861447894397195
	.quad	0x3fd94000051269a8              # double 0.39453125472359796
	.quad	0x3fc68a183afddb9c              # double 0.17608931427431862
	.quad	0x3fc532d96a1805a8              # double 0.16561429672587491
	.quad	0x3fb8438c8d237590              # double 0.09478071637882679
	.quad	0x3fdb8dc17b5cb576              # double 0.43052708670696604
	.quad	0x3fde4e254109871e              # double 0.47351962424555605
	.quad	0x3fddd98039390a5e              # double 0.46640019977727387
	.quad	0x3fe5622ef24c7e59              # double 0.66823527645096725
	.quad	0x3fe2cce831879d86              # double 0.5875130622270468
	.quad	0x3fe9bf657caebbf1              # double 0.80461382247983526
	.quad	0x3feb733f9bc85b58              # double 0.8578184168462526
	.quad	0x3fed283ad1cda6e5              # double 0.91116085984432671
	.quad	0x3fda0ac136e667f2              # double 0.40690641747789791
	.quad	0x3fc0346217d22514              # double 0.12659860766533682
	.quad	0x3fd09693ce1ebe7e              # double 0.25919051293292472
	.quad	0x3fe042acb90b79aa              # double 0.50813900128905698
	.quad	0x3fb3da0f252e55e0              # double 0.077546068742172292
	.quad	0x3fb3774093887db0              # double 0.076038394945945553
	.quad	0x3fcbe63b0c88a30c              # double 0.21796358215331002
	.quad	0x3fe99fc4878fca74              # double 0.80075289227381896
	.quad	0x3fd015faa11a53d0              # double 0.2513414929647384
	.quad	0x3fd8e9a050ebeaa4              # double 0.38925941374297168
	.quad	0x3fe8d35f198a6ad4              # double 0.77580218304077641
	.quad	0x3fd279c3d84e83d2              # double 0.28868194698048655
	.quad	0x3fe61bcfcb0a485f              # double 0.69089498192102983
	.quad	0x3fe8939369bab041              # double 0.76801462793583408
	.quad	0x3fee4220feefd32c              # double 0.94557237427088614
	.quad	0x3fc731a1b9b23060              # double 0.18120214049520467
	.quad	0x3fe0694542e995db              # double 0.51285040921055314
	.quad	0x3feeed8e1e9286c2              # double 0.96649843188443918
	.quad	0x3fe54a1e39dfd76d              # double 0.66529761603918092
	.quad	0x3fe94b9333b87d76              # double 0.79047546483700049
	.quad	0x3fe22b9b024d93fa              # double 0.56782293748676627
	.quad	0x3fd415b98c376282              # double 0.31382597630503295
	.quad	0x3fe6887c7ad05dfa              # double 0.70416091906639555
	.quad	0x3fd84edd808f15a2              # double 0.37981355242330939
	.quad	0x3fdf2bcf0fce62b2              # double 0.48704887908528882
	.quad	0x3fee3f95c93d59f0              # double 0.94526185326213685
	.quad	0x3feda2583a49d29d              # double 0.92606746086547143
	.quad	0x3fee6c169e5917f0              # double 0.95069437911365462
	.quad	0x3fed08bd346b2ca9              # double 0.90731678236024493
	.quad	0x3fc00dedc9f04cec              # double 0.1254250751522713
	.quad	0x3fd73865ae4a2146              # double 0.36281721134630052
	.quad	0x3fe585d7d8e99c8d              # double 0.67258827558261347
	.quad	0x3fe981fc18222f30              # double 0.79711727822857448
	.quad	0x3fd5a8038655d68e              # double 0.33837974661523951
	.quad	0x3fe59d8e9be683e2              # double 0.67548304032618156
	.quad	0x3fd154de154b548a              # double 0.2708049018813844
	.quad	0x3fd55e624bbdeb00              # double 0.33388574024836259
	.quad	0x3fc5ef600e0f4998              # double 0.17136765181073765
	.quad	0x3f9f3bc7c8fc3a60              # double 0.030501481668631647
	.quad	0x3fdc4e03f16544f0              # double 0.44226168226039331
	.quad	0x3febc861520ee0f3              # double 0.86821046854950479
	.quad	0x3fcb3e4435f2b514              # double 0.21283772119696975
	.quad	0x3feaccf3ced9b009              # double 0.83751860046823012
	.quad	0x3fe62203a11c7306              # double 0.69165212122933961
	.quad	0x3fc5f70b2fb76a3c              # double 0.17160167531877046
	.quad	0x3fead7be4dc6a14f              # double 0.83883586111645936
	.quad	0x3febefbd2e8f8c83              # double 0.87301501363653278
	.quad	0x3fe2c458b6bf858c              # double 0.58646808331484257
	.quad	0x3fce0e2097576290              # double 0.23480613126482242
	.quad	0x3fdd825438cea374              # double 0.46107965037895515
	.quad	0x3fc4282255f07cbc              # double 0.1574747962594979
	.quad	0x3fdc6d898de2bca8              # double 0.44418562751793411
	.quad	0x3fe18d43227692c1              # double 0.54849392634476868
	.quad	0x3fe133269a1ba93a              # double 0.53749399279812526
	.quad	0x3fd93a2f2c9bd46c              # double 0.39417628628081647
	.quad	0x3fe36defca9a4f62              # double 0.60717000552038436
	.quad	0x3fd3a4dbf2ea119a              # double 0.30693720552542347
	.quad	0x3fe1f95c99f38a57              # double 0.56168966358775207
	.quad	0x3fe351cd7923b9b5              # double 0.60373567256993133
	.quad	0x3fea982ec264a222              # double 0.83107698409464015
	.quad	0x3fe1865134acf984              # double 0.54764614380091858
	.quad	0x3fed18dcf1c45cd9              # double 0.90928504200101223
	.quad	0x3fd58c8a176b82e6              # double 0.33670284545045914
	.quad	0x3fe63388957233e1              # double 0.69379071415607652
	.quad	0x3fcaefc48d34d9d8              # double 0.21044213194700379
	.quad	0x3fec438eca978e7c              # double 0.88324679917100423
	.quad	0x3f9a64c606cdd700              # double 0.025775045552527409
	.quad	0x3feca6e5c342ded6              # double 0.8953732312865792
	.quad	0x3fc7b65098e97a4c              # double 0.18525130716712324
	.quad	0x3fc6c717ce967e04              # double 0.17795083606050366
	.quad	0x3fcb2d5305f743d8              # double 0.21232068816473659
	.quad	0x3fef424e512f08a1              # double 0.97684398513981218
	.quad	0x3fec6f63459c7109              # double 0.88859714122693945
	.quad	0x3fcf52efc8f98c94              # double 0.24471852601263733
	.quad	0x3fe02387bfba475b              # double 0.50433719107443709
	.quad	0x3fb2c74deeefef28              # double 0.073353644212997282
	.quad	0x3fde51527452dddc              # double 0.47371350631462206
	.quad	0x3fe3014ed1d7d26e              # double 0.59390965447398769
	.quad	0x3fa6f948f987f640              # double 0.044870644054736619
	.quad	0x3fdd5293292c8a16              # double 0.45816496868988688
	.quad	0x3fe0976d79d7a25c              # double 0.51848481938675262
	.quad	0x3fecb855cf4a3f13              # double 0.8975018547662067
	.quad	0x3fedd6c7bdda2a51              # double 0.93246829109677709
	.quad	0x3fb9c88c55150290              # double 0.10071637227248176
	.quad	0x3fe349b1cb7fe904              # double 0.60274591203713657
	.quad	0x3fd3a45ac3cabfa6              # double 0.3069064056426164
	.quad	0x3fe7952bc555676a              # double 0.73695934812279273
	.quad	0x3fe9b6a7b3d9d6f2              # double 0.80354676367889355
	.quad	0x3fe20b7335b48c04              # double 0.56389770974453812
	.quad	0x3fe4c1e6556fe10a              # double 0.64866940199775169
	.quad	0x3fd5a364dc757530              # double 0.33809777764493543
	.quad	0x3fe7402327607c96              # double 0.72657926264573081
	.quad	0x3fd2e38f131b624a              # double 0.29513909212031264
	.quad	0x3fa10422f29bac70              # double 0.033234684100386214
	.quad	0x3fc60d9f3428d4ac              # double 0.17229070708132121
	.quad	0x3fe09f0a2984153f              # double 0.51941402538856341
	.quad	0x3fdfe903ac33891e              # double 0.49859706703695561
	.quad	0x3fe0143261ee3948              # double 0.50246543051779557
	.quad	0x3fd6833361d4b706              # double 0.35175785592842634
	.quad	0x3fd9a574fead9e64              # double 0.40072369452398093
	.quad	0x3fe1f9014e5d41b3              # double 0.56164613061451119
	.quad	0x3fc0b509b5b68ac8              # double 0.13052483914096613
	.quad	0x3fdbfe7431a68e4c              # double 0.43740563248340858
	.quad	0x3fd6e5fb885eb6ee              # double 0.35778702084904423
	.quad	0x3fe9c866bb7621fd              # double 0.80571304906430863
	.quad	0x3fd41744f7253078              # double 0.31392025122909883
	.quad	0x3fc95e7fb2831a54              # double 0.19819637504970677
	.quad	0x3fe72e361ed47d5c              # double 0.72439104100696339
	.quad	0x3fefc92e6caed36e              # double 0.99330826975947928
	.quad	0x3f9c65a049912b60              # double 0.027731422891786095
	.quad	0x3fad7311afd2c190              # double 0.05751853247909644
	.quad	0x3fecf9c53cc7e436              # double 0.90548955794577668
	.quad	0x3fd37140859105da              # double 0.30378735583880501
	.quad	0x3fc280c5fd100458              # double 0.14455485207148189
	.quad	0x3fd13c652ee616a0              # double 0.26931123332938434
	.quad	0x3fe1800063896a90              # double 0.54687518540170466
	.quad	0x3fd072c7ad5dd8d0              # double 0.25700561456995974
	.quad	0x3fb674c60cabddd8              # double 0.087719324201194993
	.quad	0x3fee06ca16fe1191              # double 0.93832878580774282
	.quad	0x3fe97d430dbf007b              # double 0.79654076275620811
	.quad	0x3fddc6983879bb80              # double 0.46524625315844759
	.quad	0x3feb1611b2d490da              # double 0.84644398620414596
	.quad	0x3fb6aa9984ac04a0              # double 0.088540644541370117
	.quad	0x3fc1eed457247788              # double 0.1401009965419997
	.quad	0x3fe3e24dad254f64              # double 0.62137492959525931
	.quad	0x3fb2b796fdf2f328              # double 0.073113858222268235
	.quad	0x3fefd4a55284cfe5              # double 0.99470773808434087
	.quad	0x3fe048660e275ab9              # double 0.50883772625350965
	.quad	0x3feee23281ab8fd8              # double 0.96511197401241144
	.quad	0x3feefea952f1f66a              # double 0.96858659935214786
	.quad	0x3fe11f9b602e9d5e              # double 0.53510826860012251
	.quad	0x3fe180abbd13e1a6              # double 0.54695689133864245
	.quad	0x3fe360aa8be6709b              # double 0.60555007290124097
	.quad	0x3fbe46fdd390f128              # double 0.11827074446859298
	.quad	0x3fe3283c8813edcf              # double 0.5986616761942346
	.quad	0x3fe5fed864a7d32c              # double 0.68735904368677359
	.quad	0x3fd08128beed9858              # double 0.25788324971506915
	.quad	0x3f9f58d09b1eb680              # double 0.030612239330074065
	.quad	0x3fe783634524416f              # double 0.73478854660247162
	.quad	0x3fca8faedca9a6e4              # double 0.20750985884233508
	.quad	0x3fdd047a3db5e200              # double 0.45339828516401326
	.quad	0x3fef00beb6428248              # double 0.96884093854539177
	.quad	0x3fcc290e0644630c              # double 0.22000289255154148
	.quad	0x3fd88af0f741f578              # double 0.38348030229811725
	.quad	0x3faa94bff100d130              # double 0.051916120690665202
	.quad	0x3fcf276b5d17c8b8              # double 0.2433904842906196
	.quad	0x3fe1c3e1fc80eb9d              # double 0.55516146962269242
	.quad	0x3fa351ea677916e0              # double 0.037734341746313182
	.quad	0x3fdbf1dcbed5fd66              # double 0.43663710247343201
	.quad	0x3fe21aeca5502abd              # double 0.56578666961407686
	.quad	0x3fc0f3d90e1cf7dc              # double 0.13244164647215839
	.quad	0x3f6a2ace3f21a300              # double 0.0031942394498866156
	.quad	0x3fd216f13cded094              # double 0.28265028900501332
	.quad	0x3fecde58c57ca1f3              # double 0.90214193889283789
	.quad	0x3fc3c19d4529a100              # double 0.15434614064293584
	.quad	0x3fe71786a27993d1              # double 0.72162181599980546
	.quad	0x3fd785aba6dc8054              # double 0.36753360076000274
	.quad	0x3fb926c3d8bdf9f0              # double 0.098247757354307685
	.quad	0x3fe5b4fbb636b239              # double 0.67834268177609325
	.quad	0x3fd81e9d2f91670c              # double 0.37686853070555126
	.quad	0x3fe1beb436ea99e5              # double 0.55452929235326265
	.quad	0x3fdd7af49fc4f024              # double 0.46062961199254659
	.quad	0x3fe2916794adc4d0              # double 0.58024958647561142
	.quad	0x3feb967df77f2154              # double 0.8621206125181211
	.quad	0x3fece0e9a312858e              # double 0.90245515680378374
	.quad	0x3fed673c921160e8              # double 0.9188521244896295
	.quad	0x3fe44c17888e3b09              # double 0.63428856535924283
	.quad	0x3fe88778452e57ae              # double 0.76653684150618573
	.quad	0x3fe3fb2262f84b0e              # double 0.6244060452466742
	.quad	0x3fe9e4549221ecfb              # double 0.80912235776432284
	.quad	0x3fd7ce3af891681a              # double 0.37196230196207269
	.quad	0x3fd88b18f4850ce4              # double 0.38348983649139101
	.quad	0x3feb54bd9ae9b8a5              # double 0.85409431702079941
	.quad	0x3fd375d34d0eb0b0              # double 0.30406649136672126
	.quad	0x3fee1eb948774e29              # double 0.94125045922777872
	.quad	0x3feafc8208651590              # double 0.84332372321721216
	.quad	0x3fe961694c5b9ba6              # double 0.79314103044167861
	.quad	0x3fe23ce42570b5cb              # double 0.56993300736001495
	.quad	0x3fe9aea5b9ac509e              # double 0.80256925834921211
	.quad	0x3f7681b79605ed80              # double 0.0054948016480652617
	.quad	0x3fec7b23ddff4831              # double 0.89003175124003608
	.quad	0x3fec3e907a489ae5              # double 0.88263725169676077
	.quad	0x3fe729e5724091cb              # double 0.7238642913330805
	.quad	0x3fe5c9f736207ab0              # double 0.68090401240973186
	.quad	0x3fe10400533bf81e              # double 0.5317384362858808
	.quad	0x3fbbd672f68c5a48              # double 0.10874098319286774
	.quad	0x3fb4830cd31acf98              # double 0.080124665774574999
	.quad	0x3fe5750ddd6616b0              # double 0.67053883783292711
	.quad	0x3fba489d6bbcd760              # double 0.10267051582635878
	.quad	0x3fdf2e00911bed0c              # double 0.48718275233086739
	.quad	0x3fece17a95502f34              # double 0.90252427256334621
	.quad	0x3fe69003b6fb92c3              # double 0.70507989634332835
	.quad	0x3fe332dbaeb9de35              # double 0.59995826841527011
	.quad	0x3fe4e79a0a5666da              # double 0.65327169436497035
	.quad	0x3fd573f72f4e185c              # double 0.33520297641405761
	.quad	0x3fdb253756c0a016              # double 0.42414649459760889
	.quad	0x3fe91833064d936b              # double 0.78420401793537786
	.quad	0x3fe52019df835110              # double 0.66016858725427774
	.quad	0x3fcb608e241488dc              # double 0.21388413202027479
	.quad	0x3fdc7671eb9deb62              # double 0.44472930917225117
	.quad	0x3fec1cb7e42edcff              # double 0.87850565497402033
	.quad	0x3fd9e6a6ad00731c              # double 0.40470282454207207
	.quad	0x3fe39470fdeda8b4              # double 0.61187028499013829
	.quad	0x3fddb215aa7bf6d8              # double 0.46399442337847807
	.quad	0x3fce56e0a8876bdc              # double 0.2370262930770356
	.quad	0x3fec2b7f0a3ef8dd              # double 0.88030960084122578
	.quad	0x3fe7f1943d066797              # double 0.74823963087986811
	.quad	0x3fe69db09f3e8c2d              # double 0.70674925901801589
	.quad	0x3fd1ffe421798d9c              # double 0.28124335545563794
	.quad	0x3feffb9064be2889              # double 0.99945850063638019
	.quad	0x3fec53a3c42e6621              # double 0.88520992581033309
	.quad	0x3fef6fb3b3f7f83b              # double 0.98238549375651673
	.quad	0x3f9566aa0ea7cfe0              # double 0.020899445671559991
	.quad	0x3fd4a7a65a153612              # double 0.32273253247407852
	.quad	0x3fcd189408a9bc34              # double 0.22731256888389029
	.quad	0x3fd99657afb81880              # double 0.39980117950506866
	.quad	0x3fdef0942e81382e              # double 0.48343376676064309
	.quad	0x3fd06a4eb2fd94b0              # double 0.25648848990960982
	.quad	0x3fe8bc1a15a57e75              # double 0.77296165683578855
	.quad	0x3fdd0e1185a4926a              # double 0.45398366976795634
	.quad	0x3fe95ec28855050e              # double 0.79281736972203176
	.quad	0x3fe93b9ef89a3c92              # double 0.78852795176671209
	.quad	0x3fe1b8568895f612              # double 0.55375219990645719
	.quad	0x3fde4eebbc1b0b1a              # double 0.47356694574061609
	.quad	0x3fd5b544654a2bee              # double 0.33918867007804365
	.quad	0x3fe915691137e301              # double 0.78386357653570837
	.quad	0x3fd90dda0bead37e              # double 0.39147044338033499
	.quad	0x3faa13dc85e23ed0              # double 0.050932780593141325
	.quad	0x3fdd3716a667619a              # double 0.45648733377813644
	.quad	0x3fe0ee1d87b8d383              # double 0.52906681545447076
	.quad	0x3fa00626a6db7de0              # double 0.031296928280194924
	.quad	0x3fd276099c8a404e              # double 0.28845443999398845
	.quad	0x3fe3dc13c3cda822              # double 0.62061489336815989
	.quad	0x3fda2ebb12fee46e              # double 0.40910221915289113
	.quad	0x3fc47ae49e7342c8              # double 0.16000039803340926
	.quad	0x3fc8bc5cb6789e28              # double 0.19324835691189546
	.quad	0x3fd7ac015af0124a              # double 0.36987336998598563
	.quad	0x3fd88e309912ce28              # double 0.38367857884006407
	.quad	0x3fe64fafb8fbcb90              # double 0.69722734574894396
	.quad	0x3fe15d0c7233146f              # double 0.54260847382160005
	.quad	0x3fe47fdd9c51f27d              # double 0.64060860186835067
	.quad	0x3fd98b21b4bd8ee0              # double 0.39911692285953215
	.quad	0x3fe7506c37b687f9              # double 0.72856722718665801
	.quad	0x3fafe392d62dce70              # double 0.062283123631371562
	.quad	0x3fe920b1401772b2              # double 0.78524076955689837
	.quad	0x3fb2763f5c907410              # double 0.07211681375379464
	.quad	0x3fe7502e95529ad2              # double 0.72853783764443336
	.quad	0x3fcd1f4b2116b348              # double 0.22751750102670543
	.quad	0x3fcc3e2ae362b17c              # double 0.22064720251854542
	.quad	0x3fe11dc4f453e828              # double 0.53488395424142698
	.quad	0x3fe3454a6a6502e0              # double 0.60220833568754628
	.quad	0x3fee840b157ca0a6              # double 0.95361856648107302
	.quad	0x3fdf0553a1bc4fb2              # double 0.4847001151513225
	.quad	0x3fe8d818f6155c5e              # double 0.77637908995792393
	.quad	0x3fcf2b32ce126890              # double 0.24350581228356249
	.quad	0x3feb2a9c348ae80e              # double 0.84895143758990499
	.quad	0x3feaed4b12e104fe              # double 0.84146646201421027
	.quad	0x3fa9aad8ff3991e0              # double 0.050131589084035033
	.quad	0x3fd8c5bc130afdd2              # double 0.3870687662092368
	.quad	0x3fc32ff0e0acacf8              # double 0.14990054102359074
	.quad	0x3fc4f04d31ed41a0              # double 0.16358342111426527
	.quad	0x3fe70baf9e9b9d7a              # double 0.72017651537036831
	.quad	0x3fe3e302148fadba              # double 0.62146095291011894
	.quad	0x3fb9deeebbc77cd8              # double 0.10105793079809489
	.quad	0x3fd91a43f93f2a76              # double 0.39222812023641696
	.quad	0x3fd406aadbe822aa              # double 0.3129069469000948
	.quad	0x3fefc258d09db55b              # double 0.99247399087259269
	.quad	0x3fd6e78fc740a718              # double 0.35788340051895906
	.quad	0x3fd62bc1ea8c28f4              # double 0.34642074494389807
	.quad	0x3fe53140b3e54617              # double 0.66226229797229308
	.quad	0x3fe516114492c030              # double 0.65894378083431171
	.quad	0x3fc986c19c8d9f54              # double 0.19942493576240372
	.quad	0x3fc2a05245d4f190              # double 0.14551762017971415
	.quad	0x3fe5905e3e9723dd              # double 0.67387306427655924
	.quad	0x3fd72a2df969e6c6              # double 0.36194943768314791
	.quad	0x3fd14941bcc0efd8              # double 0.27009623940443594
	.quad	0x3fcf4240e5ceb4d4              # double 0.24420939656321272
	.quad	0x3fee8722f70a7f34              # double 0.95399616480060567
	.quad	0x3fd3c58c9a515e46              # double 0.3089324481020167
	.quad	0x3fd5c695f6321106              # double 0.34024571459328035
	.quad	0x3feec9721837c020              # double 0.96209053735765692
	.quad	0x3f7cbc2be00bf900              # double 0.0070153917192767867
	.quad	0x3fe971de67d1f58e              # double 0.79514999654172569
	.quad	0x3fdc0818d322e500              # double 0.43799419993190725
	.quad	0x3fee98a110adae8e              # double 0.9561314893484949
	.quad	0x3fef076f1054e24b              # double 0.969657451531995
	.quad	0x3fd87a72755b10b4              # double 0.38247357807655225
	.quad	0x3fd9fd7c16d26966              # double 0.40609647968962859
	.quad	0x3fdba47c9f1d9a1e              # double 0.43191447771678948
	.quad	0x3fe05342cf9e6cf7              # double 0.51016369391018557
	.quad	0x3fe9c1f147591cec              # double 0.80492462096381478
	.quad	0x3fcb4f372153f77c              # double 0.21335496070235738
	.quad	0x3fd2e102ab647c00              # double 0.29498354661512849
	.quad	0x3fd6b28ae1123308              # double 0.35464736919020412
	.quad	0x3fe0fd6c303ba5a0              # double 0.53093537731654195
	.quad	0x3fbe3a0bfdef1768              # double 0.11807322454032276
	.quad	0x3fe4bb7372915a7e              # double 0.64788219810982617
	.quad	0x3fcd0a26f869a078              # double 0.22687232141038627
	.quad	0x3fe2d2743eeb148d              # double 0.58819019592978494
	.quad	0x3fe025e14a39514c              # double 0.50462402817587693
	.quad	0x3fb351699d3e5f60              # double 0.075461007012902481
	.quad	0x3fe45331627d51d0              # double 0.63515538440929653
	.quad	0x3fa0bd1fdd85b030              # double 0.032692905226980762
	.quad	0x3fe82eaae5720934              # double 0.75569672406735444
	.quad	0x3fea3d49cf9d98f0              # double 0.81998148488926681
	.quad	0x3f94fe096bd344a0              # double 0.020500323492176009
	.quad	0x3fea6e18c223d817              # double 0.82593954008075599
	.quad	0x3fdfd76b2ea18350              # double 0.49752311281013295
	.quad	0x3fdae2b1e19a05bc              # double 0.42008635550891049
	.quad	0x3fe7f292b5d98df9              # double 0.74836097257178757
	.quad	0x3feb846d18cdf3eb              # double 0.8599153027022316
	.quad	0x3fd3eecb29250298              # double 0.31144980447792525
	.quad	0x3fd1042d0d06bcee              # double 0.26587988159276577
	.quad	0x3feb95e83c37d05f              # double 0.86204921494801201
	.quad	0x3fe03cd45c841a36              # double 0.50742548055206416
	.quad	0x3fcb384103fedfb8              # double 0.21265423483941759
	.quad	0x3fc3f0f46f4f7e04              # double 0.15579085764964884
	.quad	0x3fc501697177cab0              # double 0.16410558739115322
	.quad	0x3fe1ca8a1b3df9a2              # double 0.55597405739517947
	.quad	0x3fe33bc326f7dab7              # double 0.60104520426724306
	.quad	0x3fef2267f1c6b641              # double 0.97294995519559546
	.quad	0x3fefcfbacc716268              # double 0.9941076272035163
	.quad	0x3fd6cb5878a37436              # double 0.35616122990706189
	.quad	0x3fe37f794f26c7d0              # double 0.60931077441477477
	.quad	0x3fe612c2369b1c4c              # double 0.68978987374510714
	.quad	0x3fe612eca88202de              # double 0.68981011306467699
	.quad	0x3fee9715497d549a              # double 0.95594276765281738
	.quad	0x3fece312c73fc7d7              # double 0.90271891513679747
	.quad	0x3fc198d69c136e84              # double 0.13747675534147075
	.quad	0x3fdb6098f636e232              # double 0.42777084392904208
	.quad	0x3fce6e7a459a02c4              # double 0.23774650953784804
	.quad	0x3fdd4909ac69ad68              # double 0.45758287274539677
	.quad	0x3fe53b7a8da5c386              # double 0.66351058640985694
	.quad	0x3fefe0fcdd21130b              # double 0.996214324849093
	.quad	0x3fc57dd67ed877d0              # double 0.1679027671206641
	.quad	0x3fe9011379875eb9              # double 0.78138135658351537
	.quad	0x3fb581b48a7fb8a0              # double 0.084010394871912641
	.quad	0x3fe5f67eceb769d8              # double 0.68633976339634284
	.quad	0x3feeb5955472df16              # double 0.95966593259706445
	.quad	0x3fee1008616f4c4a              # double 0.93945712118364466
	.quad	0x3fe65abb50147ed3              # double 0.69857564583431964
	.quad	0x3fd8997ddc2bd99c              # double 0.38436838627912961
	.quad	0x3feabcd8055590cc              # double 0.83555222551196939
	.quad	0x3fb7a914281b37a8              # double 0.092423686782437842
	.quad	0x3fe1d1c637b5d278              # double 0.55685721283823764
	.quad	0x3f6580a3248c2500              # double 0.0026248155958269459
	.quad	0x3fcd945cc20cc0f4              # double 0.2310901591786273
	.quad	0x3fe1412ab2699cde              # double 0.53920492979241508
	.quad	0x3fce66ecd7b01d2c              # double 0.23751602679861017
	.quad	0x3fe7f4dd395aed6e              # double 0.74864064409432074
	.quad	0x3fd17690f354244e              # double 0.2728617073303824
	.quad	0x3fe2053de58a7a5f              # double 0.56313986618244971
	.quad	0x3fdf4d34a63845f4              # double 0.48908725960163157
	.quad	0x3fd6199c7aa44548              # double 0.34531318642355702
	.quad	0x3fc4326dea32b0a0              # double 0.15778898177575673
	.quad	0x3feab888a6447673              # double 0.83502609705074204
	.quad	0x3fd8fd37ff91e5a4              # double 0.39045524557112743
	.quad	0x3fdfa3a286593ccc              # double 0.49436247940043354
	.quad	0x3f928c933e08d420              # double 0.018114376698765366
	.quad	0x3fe2305e0a343a1c              # double 0.56840421669932395
	.quad	0x3fd1d1d8a2259538              # double 0.27843299708031877
	.quad	0x3fee6e1a31f9bda9              # double 0.95094022522782951
	.quad	0x3fd203f0c2634e7a              # double 0.28149050696558897
	.quad	0x3fea2f7cce175120              # double 0.81829681636967066
	.quad	0x3fd30d1eb1244758              # double 0.29767577456469985
	.quad	0x3fdc2197130b83d0              # double 0.43955017909871419
	.quad	0x3fd327bb0ac4024c              # double 0.29929996539434423
	.quad	0x3fea4588592a63ef              # double 0.82098786749986441
	.quad	0x3fda351827e0e730              # double 0.40949062246692147
	.quad	0x3fe5f971bc8e9ced              # double 0.68669974162631109
	.quad	0x3fe79d8a311be6ce              # double 0.73798093406295506
	.quad	0x3fc3960d54716750              # double 0.15301672576134218
	.quad	0x3fedf5a431828b4b              # double 0.93623552007589106
	.quad	0x3fef5b68db3204f5              # double 0.97990839778517957
	.quad	0x3fed98d0ae83f5e8              # double 0.92490419468930174
	.quad	0x3fd0d36726f25ff4              # double 0.26290301135440974
	.quad	0x3fe8b525e083dbce              # double 0.77211278772926462
	.quad	0x3fd97f759c8d3a94              # double 0.39840450561761398
	.quad	0x3fe7eba67334215a              # double 0.74751589298925158
	.quad	0x3fe432fc4d49a150              # double 0.63122382254827336
	.quad	0x3fe1b1ddfb73e057              # double 0.5529622946915066
	.quad	0x3fd6844baaa6570c              # double 0.35182468094841179
	.quad	0x3fd4feb9a4084046              # double 0.32804718989155324
	.quad	0x3fedd20da176d07c              # double 0.93189126525841414
	.quad	0x3fe64b0d1bf59d42              # double 0.69666152439905482
	.quad	0x3fdf255f48a58e5c              # double 0.48665601820377957
	.quad	0x3feb8596d5d2e30b              # double 0.8600572754140513
	.quad	0x3fe8bbcf81aa8602              # double 0.77292609525119382
	.quad	0x3fbfb350d1f38308              # double 0.12382989049684678
	.quad	0x3fd4cf52885d003e              # double 0.32515395466544195
	.quad	0x3fec4e32fdc4f198              # double 0.88454579891508711
	.quad	0x3fcb1a1e27d6a528              # double 0.21173455186116397
	.quad	0x3fedbe1627bb028d              # double 0.92945392379631786
	.quad	0x3fcddc7d4b31f678              # double 0.23329130336417214
	.quad	0x3fd349cb3af20ce6              # double 0.30137902027509111
	.quad	0x3fe03d05d41b9803              # double 0.50744906832983394
	.quad	0x3fe98cac6b611b64              # double 0.79842205975078828
	.quad	0x3fe71d73c5423370              # double 0.7223452427584629
	.quad	0x3fe8a3fae7f440dc              # double 0.77001710227525732
	.quad	0x3fd79fcb55c64ce0              # double 0.36912806869913872
	.quad	0x3fdba9d985575ebe              # double 0.43224180242166799
	.quad	0x3fef5f27c16b7cb1              # double 0.98036563660925513
	.quad	0x3fe51c74d46ce44a              # double 0.65972367753341499
	.quad	0x3fde9e37e85783a2              # double 0.47840688409456267
	.quad	0x3fe54bd23e9a679d              # double 0.66550552584816425
	.quad	0x3fd27f156bea6e08              # double 0.2890065721382773
	.quad	0x3fdb43382113e62a              # double 0.42597773771521708
	.quad	0x3fe16ecb19b2ffdf              # double 0.54477458018663671
	.quad	0x3fd46130cbb05406              # double 0.31843204394800784
	.quad	0x3fd8b7ddbbcffd0a              # double 0.38622229901371041
	.quad	0x3fe2e785a740f28a              # double 0.5907619730638356
	.quad	0x3fc903ad7f858ebc              # double 0.19542473532339055
	.quad	0x3fd44cdc6118833a              # double 0.31719121438986841
	.quad	0x3faa1994c1b4b130              # double 0.050976418157321013
	.quad	0x3fd7963901a89c98              # double 0.36854386484123713
	.quad	0x3fe039543724a7e1              # double 0.50699816484597815
	.quad	0x3feea363bdee85eb              # double 0.9574450215915794
	.quad	0x3fc10ca082be85dc              # double 0.13319784530635459
	.quad	0x3fd5c32dd10035e8              # double 0.34003777895199372
	.quad	0x3feca51f363f826c              # double 0.89515648455933449
	.quad	0x3fe3db78ad7be984              # double 0.62054094203567489
	.quad	0x3feff7f4bef88aee              # double 0.99901807116506602
	.quad	0x3f990d898e514a40              # double 0.024465703307507747
	.quad	0x3fe07c56cb0b667e              # double 0.5151781049455193
	.quad	0x3fda7981f25bdf20              # double 0.41366623561724403
	.quad	0x3fdb95096c1b8138              # double 0.43097148473136171
	.quad	0x3fec6af3ab5abd4d              # double 0.88805564372698031
	.quad	0x3f9b52b8b6d605e0              # double 0.026682745131898389
	.quad	0x3febb719662d1aa2              # double 0.86610097843443534
	.quad	0x3feed07b71ab7847              # double 0.96294948769696808
	.quad	0x3fa2273dd0557740              # double 0.035455638581636695
	.quad	0x3fb7c0cd69cb66c0              # double 0.092785681084389005
	.quad	0x3fc6885e14a991d0              # double 0.17603660591988879
	.quad	0x3fe4fb045238eec6              # double 0.65564170893727503
	.quad	0x3fd3741b37fd719a              # double 0.30396156757140036
	.quad	0x3fea4eb9f9bb1245              # double 0.82211016440903306
	.quad	0x3fe36fa31774200b              # double 0.60737757283004734
	.quad	0x3fecf645c2b62343              # double 0.90506256131730145
	.quad	0x3fe89c75c10a0472              # double 0.76909911826090949
	.quad	0x3feed819a103b35c              # double 0.96387940834174967
	.quad	0x3fc85be1278eb730              # double 0.19030394011991225
	.quad	0x3fe00b95bfc6f972              # double 0.50141417938702504
	.quad	0x3fef0f033348a0ed              # double 0.97058258072231995
	.quad	0x3fef7b4fb207a25b              # double 0.98380265017938073
	.quad	0x3fe972fba3fbc1b3              # double 0.79528600719463893
	.quad	0x3f7896ce4ebc6700              # double 0.0060031947030212418
	.quad	0x3fde2b1967f95432              # double 0.47138056901650593
	.quad	0x3fe6727d3a2f6716              # double 0.70147572864809393
	.quad	0x3fe788c6e4bd5f33              # double 0.73544640231827996
	.quad	0x3fe6972573671e92              # double 0.70595047511683817
	.quad	0x3fedb28afb183eb4              # double 0.9280447868531696
	.quad	0x3fe8660ed84ddb04              # double 0.76245825049304061
	.quad	0x3fea810a1e40388b              # double 0.82825189503070484
	.quad	0x3fc09655147e23a8              # double 0.12958777905103358
	.quad	0x3fea12d9a1af49a3              # double 0.81480104044958457
	.quad	0x3fc505f3b40f8c24              # double 0.16424413959529816
	.quad	0x3fea129f2b5fdfc4              # double 0.81477316352447148
	.quad	0x3fe1cdb12a295a6d              # double 0.55635889277148254
	.quad	0x3fd3a3af20645ee0              # double 0.3068654838875613
	.quad	0x3fc6b0f73d892844              # double 0.17727556709934522
	.quad	0x3fef5547b661b593              # double 0.97916017171307812
	.quad	0x3fe1e274c3eb40a6              # double 0.55889356866284312
	.quad	0x3fd0b23a999412aa              # double 0.2608782291211279
	.quad	0x3fdd030fc2078b2e              # double 0.45331186245145971
	.quad	0x3fdcbd2a28fe37ba              # double 0.44904569628931379
	.quad	0x3fe930c39cd2efd7              # double 0.78720265035326065
	.quad	0x3fcdd2c59a32b2bc              # double 0.2329947474403492
	.quad	0x3fd64c50a298986a              # double 0.34840789679072393
	.quad	0x3fe17f24ce092619              # double 0.54677047959666247
	.quad	0x3fe4c68e5430c76c              # double 0.64923778956857126
	.quad	0x3fc28f21995448b4              # double 0.14499301897791883
	.quad	0x3fd104af62524e30              # double 0.26591095544538046
	.quad	0x3fe6668394d90a2c              # double 0.7000139147933786
	.quad	0x3fe51f564511edfc              # double 0.66007531633607597
	.quad	0x3fc4d763be424ed0              # double 0.16282316961279841
	.quad	0x3fe07c6a9a17daab              # double 0.51518755050968446
	.quad	0x3fed48894efa0499              # double 0.91510453629611554
	.quad	0x3fe9ce1cea4464cb              # double 0.80641027217202443
	.quad	0x3fc8e0d7814a805c              # double 0.19436162770307674
	.quad	0x3fe67299ca183de5              # double 0.70148934814090735
	.quad	0x3febe467c28b7ad3              # double 0.87163150784530286
	.quad	0x3feff997279a9783              # double 0.99921758399135318
	.quad	0x3fc870ff9299be50              # double 0.19094843538504103
	.quad	0x3fd24ac84f9adb14              # double 0.28581435941616573
	.quad	0x3fcb19ecf33df508              # double 0.21172868611385121
	.quad	0x3fef1f151ba8d048              # double 0.97254424478752188
	.quad	0x3febf48ec4035bdc              # double 0.87360323222935276
	.quad	0x3fde68181dd95fa2              # double 0.47510340609505353
	.quad	0x3fbdbedb664dce50              # double 0.11619349715857052
	.quad	0x3fb269232cc7b198              # double 0.071916769440298345
	.quad	0x3fc8954ece9c445c              # double 0.19205651367568322
	.quad	0x3fe472e6a14b92f8              # double 0.63902598860712967
	.quad	0x3fb3180148f50778              # double 0.074585037528803855
	.quad	0x3fc3543f3bed1114              # double 0.15100851465297949
	.quad	0x3fd6a780f30241ae              # double 0.35397361499146995
	.quad	0x3fed5e0a8fc114ad              # double 0.91772964550968583
	.quad	0x3fdee9c32775f396              # double 0.4830177197798603
	.quad	0x3fd72d703e0d346e              # double 0.3621483427021478
	.quad	0x3fc5df2c1bb106f4              # double 0.17087317802548052
	.quad	0x3fd130f2b4262a04              # double 0.26861255257304628
	.quad	0x3fe13497c7b06fc6              # double 0.5376700306110187
	.quad	0x3fe106a794907c87              # double 0.53206233040317918
	.quad	0x3fdd9ffbbab0ea9e              # double 0.46288960677672175
	.quad	0x3fedfe240e5d564b              # double 0.93727305226884405
	.quad	0x3fbf546f719c01d0              # double 0.12238213084857041
	.quad	0x3fe1fd7f43ee2014              # double 0.56219447391140642
	.quad	0x3fe7da8b40b115c5              # double 0.74542772898774301
	.quad	0x3fca5bde34feb0d4              # double 0.20592858874932196
	.quad	0x3fd6a1799d07fd4e              # double 0.35360565505103103
	.quad	0x3fcfe99a83d39abc              # double 0.24931651532025068
	.quad	0x3feca465291a4ba4              # double 0.89506776836275436
	.quad	0x3fe3f5946b0551d3              # double 0.6237279978036504
	.quad	0x3fed1bc732047c38              # double 0.90964088219687422
	.quad	0x3fe165ba96d9ca50              # double 0.54366807425533104
	.quad	0x3feeb455ad64061d              # double 0.95951351037382759
	.quad	0x3fd8ed96ab5eba4c              # double 0.38950125441889294
	.quad	0x3fe969781730f4cb              # double 0.79412464646852621
	.quad	0x3fe3f0ea602da4bd              # double 0.62315863404105409
	.quad	0x3fd5a2e7586a1184              # double 0.33806785234653369
	.quad	0x3fe71db7b13a0680              # double 0.72237763037283287
	.quad	0x3fac33bf6d748670              # double 0.055082304106929381
	.quad	0x3fcda731679a65e8              # double 0.23166482504602404
	.quad	0x3fb8538322d2c7f0              # double 0.095024295808599168
	.quad	0x3fed169f38c75e12              # double 0.90901146974187186
	.quad	0x3fecbad2ce6542db              # double 0.89780559836989526
	.quad	0x3fe52aae46b720b0              # double 0.66146005450811707
	.quad	0x3fd0a276c0f1402a              # double 0.25991600839643303
	.quad	0x3fe64c7ee74a8400              # double 0.6968378560451356
	.quad	0x3fdaab5057c16014              # double 0.41670616693363738
	.quad	0x3fb871d5a4b4c590              # double 0.095486977302036146
	.quad	0x3fdfedb40e9e4628              # double 0.49888326098980196
	.quad	0x3fb9b2807e18f6b8              # double 0.10037997320702174
	.quad	0x3fe63841d12110a0              # double 0.6943673214486985
	.quad	0x3fc838a35aeceee0              # double 0.18922845782969144
	.quad	0x3fe408d8046b9920              # double 0.62607956755963201
	.quad	0x3fad7cb4e0fc8630              # double 0.057592060531771572
	.quad	0x3fe8345206a860b1              # double 0.75638676929795257
	.quad	0x3fe0e9b1f69d9713              # double 0.5285272423468278
	.quad	0x3fda4dfd56bf94e8              # double 0.41101010772247415
	.quad	0x3f6e6aa34768ae00              # double 0.0037129582444970222
	.quad	0x3fc7402e4397a9b4              # double 0.1816461401024988
	.quad	0x3fd866460baba9e8              # double 0.38124228610709432
	.quad	0x3fed92a58321cbad              # double 0.92415118800851348
	.quad	0x3fca69d0e2a68838              # double 0.20635424677772263
	.quad	0x3fdb9e7d65836430              # double 0.43154845155146671
	.quad	0x3fd29623e1040670              # double 0.29041382764999124
	.quad	0x3fedb112e9f67b59              # double 0.92786546417105875
	.quad	0x3fd3e74121ed0b46              # double 0.31098964989739775
	.quad	0x3fc2e3f102e6fa18              # double 0.1475812210246239
	.quad	0x3fe9f662c04e244b              # double 0.81132638511292876
	.quad	0x3fcdd507a04825a8              # double 0.23306365324269263
	.quad	0x3fea40577457e372              # double 0.82035420153907368
	.quad	0x3fed4bd245409cab              # double 0.91550553823335201
	.quad	0x3fe29e12496ce46b              # double 0.581795829209239
	.quad	0x3fef89fe83a0c69f              # double 0.98559499462699651
	.quad	0x3fb5987ffbb89f10              # double 0.08435821433579016
	.quad	0x3fe96978d7bb3705              # double 0.79412500510235928
	.quad	0x3fef971a8b07714f              # double 0.98719527391544115
	.quad	0x3fb5edba2f705f40              # double 0.085658680516982777
	.quad	0x3fedc3f4a4768005              # double 0.93017036554010757
	.quad	0x3fb22af57a2b9270              # double 0.070968000723562019
	.quad	0x3fe9d50deaac92b7              # double 0.80725761256015616
	.quad	0x3fe8c26ba09b75c4              # double 0.77373296135527214
	.quad	0x3fe6a03308c6be25              # double 0.70705558504227339
	.quad	0x3fe901d9deb0d0cb              # double 0.781475958769556
	.quad	0x3fe51d5635e9caff              # double 0.659831147479366
	.quad	0x3fdefcfb0db654c4              # double 0.4841907152088647
	.quad	0x3fd3fbe970d7ecec              # double 0.31225048084134133
	.quad	0x3fc5223220d3a088              # double 0.16510607340683614
	.quad	0x3fc2387362994924              # double 0.14234773935692957
	.quad	0x3f81360c6633a6c0              # double 0.0084038704576018252
	.quad	0x3fea694a45ca00bd              # double 0.82535279875448675
	.quad	0x3febc88a63b8b939              # double 0.86823005177374235
	.quad	0x3feb15d4475899d4              # double 0.84641469893250098
	.quad	0x3fddb48b22ab77a4              # double 0.46414450059625723
	.quad	0x3fead7ec56f62189              # double 0.83885781273515747
	.quad	0x3fd09e20a23bcf24              # double 0.25965133517387273
	.quad	0x3fe5c60b512b5529              # double 0.6804253182732839
	.quad	0x3fc73308594bb67c              # double 0.18124489174026681
	.quad	0x3fe6b25a0a7f626a              # double 0.70927145052253349
	.quad	0x3fdb5716060e2fd2              # double 0.42719030944203695
	.quad	0x3fefce48424e05c1              # double 0.9939309401526587
	.quad	0x3fe153c67efc88ec              # double 0.54147648622554589
	.quad	0x3fe8ae2fd14ff566              # double 0.77126303559604703
	.quad	0x3fe33d7def8d7cf4              # double 0.60125633990892746
	.quad	0x3fd7b7a96b9f5cec              # double 0.37058482656489278
	.quad	0x3fe058b0d1161af9              # double 0.51082650029351762
	.quad	0x3fe70af9d8f75af4              # double 0.72008983970849139
	.quad	0x3fcfa6cd71f0a3b0              # double 0.2472779089305539
	.quad	0x3fee769b90c99897              # double 0.95197847632222732
	.quad	0x3fde2d4ce5a34ee6              # double 0.47151491571024307
	.quad	0x3fd27a5f6e04272a              # double 0.28871904128810633
	.quad	0x3fc40b2de6af52d4              # double 0.15659116519841254
	.quad	0x3fe0f2ed21b2df4f              # double 0.52965408880025133
	.quad	0x3faf2470320542a0              # double 0.0608248768863906
	.quad	0x3fc65067ed93dc38              # double 0.17432879543750501
	.quad	0x3faf08d063425180              # double 0.0606141205945816
	.quad	0x3fc886d484d05b74              # double 0.1916146896844243
	.quad	0x3feefc0d723e5ff2              # double 0.96826813042843995
	.quad	0x3fb85cb739f57e68              # double 0.095164729738365872
	.quad	0x3fe669def4bd21ef              # double 0.70042369652315795
	.quad	0x3fe6543137108963              # double 0.69777737383655525
	.quad	0x3fe48c25844862fa              # double 0.64210773312069525
	.quad	0x3fe3db1e6881f542              # double 0.62049789821291079
	.quad	0x3fefc79c1b2ade31              # double 0.99311642938750399
	.quad	0x3fd0edcf99273b26              # double 0.26451482731219966
	.quad	0x3fdff8f35b1952a2              # double 0.49956973930719972
	.quad	0x3fdd3deee99b404e              # double 0.4569051057160366
	.quad	0x3fe8a712ce3b9cc7              # double 0.77039470939498578
	.quad	0x3f900bd5a1e092c0              # double 0.015670145039751615
	.quad	0x3fc0b8b14e87eac0              # double 0.13063637098806247
	.quad	0x3fe48defac1402c4              # double 0.64232619866387397
	.quad	0x3fd6f2ede28a653c              # double 0.35857722399812864
	.quad	0x3fdc43c92f024dd2              # double 0.44163732138369227
	.quad	0x3fd49e0e1d8a0064              # double 0.32214692005800871
	.quad	0x3fd996f24298cedc              # double 0.39983803275684493
	.quad	0x3fe16bc3d8cc3199              # double 0.54440491050040685
	.quad	0x3fe33363439e8072              # double 0.60002291876663905
	.quad	0x3fe29db2fb1cf121              # double 0.58175038381117272
	.quad	0x3fe3e2345d31e603              # double 0.62136285974628469
	.quad	0x3fe898e9d94330e4              # double 0.76866619524073742
	.quad	0x3fe84ffd5874c8b1              # double 0.7597643592510136
	.quad	0x3fe954e397115852              # double 0.79161242967053114
	.quad	0x3f96856076251800              # double 0.021993167124740864
	.quad	0x3fdd9952f67e2f42              # double 0.46248315879414659
	.quad	0x3f9b69af54de24c0              # double 0.026770343356052662
	.quad	0x3fdb564a87929e4e              # double 0.42714179267429564
	.quad	0x3fc674baa4e761f4              # double 0.17543728877969011
	.quad	0x3fdc53b3f362c84c              # double 0.44260882156516312
	.quad	0x3fc2378ca90ae6a0              # double 0.14232023481399825
	.quad	0x3fe733d4c67883b1              # double 0.72507704509563642
	.quad	0x3fea49cf9e4799e2              # double 0.82151013292314823
	.quad	0x3fe1a5005f201be2              # double 0.5513917787474123
	.quad	0x3fac909656b6cf60              # double 0.055790613255708221
	.quad	0x3fc5d9fd954a27e0              # double 0.1707150439218017
	.quad	0x3fdf6254462b29f8              # double 0.49037653782275425
	.quad	0x3fc86aa98b1bac6c              # double 0.19075507442844086
	.quad	0x3fc1a5212b3af954              # double 0.1378518544278885
	.quad	0x3fef2db7674c06cf              # double 0.97433061766806783
	.quad	0x3fe69b42367e5a4f              # double 0.70645247119211685
	.quad	0x3fe583ad36ce1c58              # double 0.67232380584836005
	.quad	0x3fcdb2444ca985d4              # double 0.2320027708365574
	.quad	0x3fe4451ab8a86d31              # double 0.63343559328078503
	.quad	0x3fc785ea3186fc2c              # double 0.18377425592731933
	.quad	0x3fc45493ed49e32c              # double 0.15883111082418944
	.quad	0x3fad49a7726001b0              # double 0.057202561103625427
	.quad	0x3fd904e504c745ea              # double 0.39092374292985588
	.quad	0x3f79833b31049500              # double 0.0062286674658811325
	.quad	0x3fe6fac0e0ef9363              # double 0.71810954983503128
	.quad	0x3fef192e8611e67f              # double 0.97182394204646971
	.quad	0x3fec525adbf700cd              # double 0.88505309068571025
	.quad	0x3fe59af1bdf4d48e              # double 0.67516409970143498
	.quad	0x3fb272c3f0bbdbd8              # double 0.072063680909067229
	.quad	0x3fc28eabbde509b4              # double 0.144978969308864
	.quad	0x3fe7ea4d3149b335              # double 0.74735126139203223
	.quad	0x3fe3372f165a432c              # double 0.60048632016887415
	.quad	0x3fe957391753374f              # double 0.79189734035183246
	.quad	0x3fbde88292709818              # double 0.11682907176199853
	.quad	0x3fd746b1a4461d8c              # double 0.36368981401798162
	.quad	0x3fecfc9d526086d3              # double 0.90583673562306399
	.quad	0x3feddf782907cda4              # double 0.93352897657171185
	.quad	0x3feffe0565a10406              # double 0.99975843285949462
	.quad	0x3fee813051d322c2              # double 0.95327011090656577
	.quad	0x3fac724fc47c78a0              # double 0.055559628234037151
	.quad	0x3fe927abe0dc78f0              # double 0.78609270017821409
	.quad	0x3fe618d062fa89ad              # double 0.69052905399103326
	.quad	0x3fea6af0d4e54ec3              # double 0.82555429059217322
	.quad	0x3fc83184769dcd30              # double 0.18901115218941689
	.quad	0x3fe2229a9c7869e8              # double 0.56672411499613151
	.quad	0x3fecc574e31ce3fc              # double 0.89910358770350695
	.quad	0x3fdd685a24f27ad6              # double 0.4594941483318683
	.quad	0x3fe85fe2a5a51273              # double 0.76170475342276089
	.quad	0x3fe2c6d2fecf5651              # double 0.58677053229866705
	.quad	0x3fe55ea2d81f7164              # double 0.66780225955475858
	.quad	0x3fde0693d305ac2c              # double 0.46915145499832778
	.quad	0x3fc9ad8d3472e3c8              # double 0.20060887394882188
	.quad	0x3fda7846d6a6fde8              # double 0.41359110796108078
	.quad	0x3f57e1329517b000              # double 0.0014574998825720442
	.quad	0x3fec8b6d424a8242              # double 0.892019872164447
	.quad	0x3fed4292e157bf58              # double 0.91437667858370286
	.quad	0x3f7614488d76ab80              # double 0.0053904375157952655
	.quad	0x3fa8917a2563a220              # double 0.047984902443037436
	.quad	0x3fcb1df945ba3ad0              # double 0.21185222534810189
	.quad	0x3fe9b571ac188611              # double 0.803398929714776
	.quad	0x3fc0938be5076274              # double 0.12950276072548983
	.quad	0x3fc2aab86454acf4              # double 0.14583496951068009
	.quad	0x3fde8678e1213a70              # double 0.47695753083545522
	.quad	0x3feb16bac0866dec              # double 0.84652459719239692
	.quad	0x3fef11fd4800ffd0              # double 0.97094596923124676
	.quad	0x3fe63c784cf17bcc              # double 0.69488158252704002
	.quad	0x3fe769e9234279d7              # double 0.73167855154661765
	.quad	0x3fe6512f94a8bd6f              # double 0.69741038355816254
	.quad	0x3fefde6b075e15e6              # double 0.99590064467400619
	.quad	0x3fc738748c10c374              # double 0.18141037787566072
	.quad	0x3fc0dc07c4b07494              # double 0.13171479324310964
	.quad	0x3faf1535280e36c0              # double 0.060708676471319389
	.quad	0x3fddcab9ed0b3e90              # double 0.46549842976399081
	.quad	0x3fe35475161ad782              # double 0.60405973737100305
	.quad	0x3fe910daa656aba3              # double 0.78330738533019362
	.quad	0x3f8c234f440ea480              # double 0.013739222778740734
	.quad	0x3fcc9dea825248b4              # double 0.22356921542502095
	.quad	0x3feb2979641a67be              # double 0.84881276656528093
	.quad	0x3fe61a6305991107              # double 0.69072104543059332
	.quad	0x3fe1fd51a5408da0              # double 0.56217272067845059
	.quad	0x3fe9e0d366ea1b49              # double 0.80869455433353565
	.quad	0x3fb94aff66ae75f8              # double 0.098800623482439565
	.quad	0x3fd09c11fc7223ca              # double 0.25952577259937171
	.quad	0x3fd5862842e13204              # double 0.33631330996720998
	.quad	0x3fe1b98598bc80cb              # double 0.55389671164814425
	.quad	0x3fd8042805f7f556              # double 0.37525368292684413
	.quad	0x3fe88333007e60be              # double 0.7660155305520886
	.quad	0x3fcacbd642d598b4              # double 0.20934561026951359
	.quad	0x3fe0ba7537734b7b              # double 0.52276097135687338
	.quad	0x3fe394924593e007              # double 0.61188615407354596
	.quad	0x3fedfbba1e49d9e3              # double 0.93697839656561788
	.quad	0x3fc6dcc82bf6edf4              # double 0.17861272951800766
	.quad	0x3fe962ebc5e731a7              # double 0.79332531598042955
	.quad	0x3fdb5a9176b1b098              # double 0.42740284529896533
	.quad	0x3fe4d2f4bcd863a8              # double 0.65075146564332886
	.quad	0x3fed3f2c0da563cb              # double 0.91396143594021717
	.quad	0x3fe98277abe3132c              # double 0.79717620441133396
	.quad	0x3fa16ec145b72790              # double 0.034048118362604574
	.quad	0x3fcafea803a5ebc4              # double 0.21089649370318686
	.quad	0x3fde4ab11d72ed36              # double 0.47330882907745619
	.quad	0x3fea531e3c533962              # double 0.82264625341649045
	.quad	0x3fc7c4547caa38e8              # double 0.18567901694445443
	.quad	0x3fe717926564fc6f              # double 0.72162742427452808
	.quad	0x3fe2ffec5b3e4dce              # double 0.59374063321086523
	.quad	0x3fb48996f5bff9e0              # double 0.080224452016387726
	.quad	0x3fecbc969bea4548              # double 0.89802103473827177
	.quad	0x3fe9bdc85d62629d              # double 0.80441683043598611
	.quad	0x3fd9569e0d8e157a              # double 0.39591170619708971
	.quad	0x3fe94cd4ab90d147              # double 0.7906287527935455
	.quad	0x3fe2981f9cc92efe              # double 0.58106976148835066
	.quad	0x3fdad40efff6abb8              # double 0.41919302936974701
	.quad	0x3fe82eb0bf6bd978              # double 0.75569951426477555
	.quad	0x3fd2ab4230a27dfe              # double 0.29170279263959731
	.quad	0x3fe8d1483a4e50c3              # double 0.77554713619112936
	.quad	0x3fb8ac8a9d5ee858              # double 0.09638277380045801
	.quad	0x3fdce162a4af1af6              # double 0.45125642855093362
	.quad	0x3fe2f30ea4244618              # double 0.59217006739544598
	.quad	0x3fe0db4e286f6f1c              # double 0.52677066705243503
	.quad	0x3feb616d4a1c5e96              # double 0.85564293360490029
	.quad	0x3fd79febf473bd4e              # double 0.36913584587360482
	.quad	0x3feedb1cb7048f52              # double 0.96424709077516924
	.quad	0x3fed13ab6ab5d621              # double 0.90865107385497279
	.quad	0x3fecac5a93050355              # double 0.89603928293954971
	.quad	0x3feb26b688273610              # double 0.84847570984283216
	.quad	0x3fdf6175f861bf5a              # double 0.4903235364536066
	.quad	0x3fde3b82071a7f0e              # double 0.47238207524968423
	.quad	0x3fb7a54cafb53e90              # double 0.092366021058518876
	.quad	0x3fa2669170d5a690              # double 0.035938782714606821
	.quad	0x3fde9a6684d59808              # double 0.47817385646919819
	.quad	0x3feb4f4b741f6f00              # double 0.85342953376991204
	.quad	0x3fd8f9141c8c3076              # double 0.39020254886486982
	.quad	0x3fd05f033d3122f4              # double 0.25579911208892203
	.quad	0x3fe8dd3bd09e8116              # double 0.77700606103829517
	.quad	0x3fc0421aabad4578              # double 0.12701733954103722
	.quad	0x3feab3a14c8771cf              # double 0.83442749926649096
	.quad	0x3fe2b8cd415de5b5              # double 0.58505881087255907
	.quad	0x3fed9d4555cd9d54              # double 0.92544810064729654
	.quad	0x3fe8eecb26dbf7a2              # double 0.77914960469910377
	.quad	0x3fe67e7d9739357a              # double 0.7029407456954424
	.quad	0x3fa908a74b7ba3c0              # double 0.048894145931462685
	.quad	0x3fe54c67300a986b              # double 0.66557654746135364
	.quad	0x3fed09e94ff86470              # double 0.90745988482662021
	.quad	0x3fef177b9fa14069              # double 0.97161656549179753
	.quad	0x3fd272c49353f234              # double 0.28825487506381653
	.quad	0x3fb89cfcbbb095b0              # double 0.096145435164166626
	.quad	0x3fd22d8349ce71dc              # double 0.28402788360270192
	.quad	0x3fbced9b94678668              # double 0.11300060628084341
	.quad	0x3fe7a4907b032a95              # double 0.73883842492917273
	.quad	0x3fd7f50507297448              # double 0.37432981204421312
	.quad	0x3fdb2686e2d46c0a              # double 0.42422649527878831
	.quad	0x3fe9d27ce7d8d323              # double 0.80694432528125437
	.quad	0x3fcd086f6ad851a0              # double 0.22681992260971828
	.quad	0x3febed0774c5106d              # double 0.87268421942327523
	.quad	0x3fc9d0eda506c1ac              # double 0.201688485698026
	.quad	0x3fcf6483b2ca0ea8              # double 0.24525495748468029
	.quad	0x3febc2ed73a97778              # double 0.86754486646871865
	.quad	0x3fef6dcc45aee2a9              # double 0.98215306863774742
	.quad	0x3fd1183a00d28f5e              # double 0.26710367279360081
	.quad	0x3fd3a6cc0afdefd0              # double 0.30705548356467904
	.quad	0x3fe68205b0a4c9fa              # double 0.70337185383533485
	.quad	0x3fe85fe4f2159535              # double 0.76170584947673226
	.quad	0x3fe8ddc0a2c91e70              # double 0.77706939500872174
	.quad	0x3fed0703a1693920              # double 0.90710622335044277
	.quad	0x3fb92aa62473f598              # double 0.098307021999025301
	.quad	0x3fd1f19e6a711afe              # double 0.28037224192341614
	.quad	0x3fe4a80ef6e7f9cc              # double 0.64551494811876742
	.quad	0x3f85548d50c0ec40              # double 0.010415176417259642
	.quad	0x3fb80b74deae93d0              # double 0.09392481266566155
	.quad	0x3fe36418298194cf              # double 0.60596855265307592
	.quad	0x3febfaec1a3ae83e              # double 0.87438016055171608
	.quad	0x3feb0b6113354523              # double 0.84513906241969428
	.quad	0x3fecf685c1da7c56              # double 0.90509307729724742
	.quad	0x3fe66a9b23eb3bcb              # double 0.70051342978865117
	.quad	0x3fed483174793a66              # double 0.91506264446963992
	.quad	0x3fdf7d4fdc147a32              # double 0.49202343456446151
	.quad	0x3fd937fe90ef7220              # double 0.39404262689439129
	.quad	0x3fe1c11475f2e017              # double 0.55481932675229728
	.quad	0x3fe71599da987441              # double 0.7213868398135973
	.quad	0x3faf4d13c9543840              # double 0.061134928060810001
	.quad	0x3fe4bd8e1a12ac13              # double 0.6481390485035966
	.quad	0x3fe83376ac0b80f8              # double 0.75628217318083468
	.quad	0x3fdc1871923d9686              # double 0.43899192124659014
	.quad	0x3fe8f8465729cfda              # double 0.78030697845542396
	.quad	0x3fe717a57c5a9e5f              # double 0.72163652694593938
	.quad	0x3fcc887cd8ccc05c              # double 0.22291527353218299
	.quad	0x3fce1865beb44f88              # double 0.23511955081687241
	.quad	0x3fbfdb9928230568              # double 0.1244445536604154
	.quad	0x3fd10d3c51ed4314              # double 0.26643283844627885
	.quad	0x3fd769fbe3797924              # double 0.36584374632174588
	.quad	0x3fe836643797b589              # double 0.75663958414013266
	.quad	0x3feaee61aad06bb3              # double 0.84159930574548125
	.quad	0x3fe1d1916e881894              # double 0.55683204258163466
	.quad	0x3fe9ca473acb14d9              # double 0.805942168074263
	.quad	0x3feb9a2558ac27d5              # double 0.86256663626522345
	.quad	0x3fedf7cd4470ea1e              # double 0.93649924628636305
	.quad	0x3fd4ca4d14bd2374              # double 0.32484747910762413
	.quad	0x3fdc28fd818ece6e              # double 0.44000184681065135
	.quad	0x3fe4660aa8e25624              # double 0.63745625481778179
	.quad	0x3f9ebda01f677ec0              # double 0.030020238796963694
	.quad	0x3fa6e113ca110eb0              # double 0.04468595353730842
	.quad	0x3fd7f1641eedb404              # double 0.37410834331859655
	.quad	0x3fec65aa3ceabb29              # double 0.88741027734599698
	.quad	0x3fea4fcb3f2ca509              # double 0.82224047030209235
	.quad	0x3fe84a8183c54b98              # double 0.75909496056043491
	.quad	0x3fe941965d8e2c81              # double 0.78925627014668021
	.quad	0x3fb5f52e6f38b078              # double 0.08577242102973226
	.quad	0x3fec6bfbd5ae3856              # double 0.88818160757524356
	.quad	0x3fae7560fcac5da0              # double 0.059489279598149425
	.quad	0x3fd8127375e60a30              # double 0.37612616075071781
	.quad	0x3fbc7ade0e91e790              # double 0.11124980788909355
	.quad	0x3fcfaa671d1f86a4              # double 0.24738778039959641
	.quad	0x3f8de2704636ab40              # double 0.014592053549525752
	.quad	0x3fdc3bb1aaf0a46c              # double 0.44114343350754015
	.quad	0x3f9697efd78ac960              # double 0.022063968210838225
	.quad	0x3f9fed119d50fc00              # double 0.031177783228709899
	.quad	0x3fef3ae2898b21c1              # double 0.9759380995174568
	.quad	0x3fdf548b4098219c              # double 0.48953515346559029
	.quad	0x3fda38467e0ea582              # double 0.40968477545046522
	.quad	0x3fa1223d0b253120              # double 0.033464343653209605
	.quad	0x3fc59e7f3e978970              # double 0.16889944607016671
	.quad	0x3fe32f6e72477c74              # double 0.59953996963657952
	.quad	0x3fe20d948bb1d087              # double 0.56415774616336101
	.quad	0x3f4fdfb7d309f400              # double 9.7271419333788688E-4
	.quad	0x3fc59856e0e20638              # double 0.16871152859316552
	.quad	0x3feeff2dc9a9ea44              # double 0.9686497629875892
	.quad	0x3feb7f821df4499b              # double 0.85931497431220139
	.quad	0x3fef8eb90891fafa              # double 0.98617221521257581
	.quad	0x3feaf26fdb00ccaa              # double 0.84209435247466513
	.quad	0x3fe0964f623d1082              # double 0.51834839999402527
	.quad	0x3fd0228c9a1ef43c              # double 0.25210871744986085
	.quad	0x3fd076e84cf38dce              # double 0.25725753321441125
	.quad	0x3fd1838b56e41b44              # double 0.27365382657483317
	.quad	0x3fcc62117cc3c804              # double 0.22174280731229612
	.quad	0x3fe9a1da66c695ec              # double 0.80100746224769414
	.quad	0x3fd283be8530fcfe              # double 0.28929102904289994
	.quad	0x3fd814ef0cbbb300              # double 0.37627769702412195
	.quad	0x3fe93b21cd38217e              # double 0.78846826631438183
	.quad	0x3fcec5f9057b4914              # double 0.24041664855628453
	.quad	0x3fd585d26066967e              # double 0.33629283346304095
	.quad	0x3fe2fc391fb904bd              # double 0.59328895755620403
	.quad	0x3fcf455d8cdfdae4              # double 0.24430436495432339
	.quad	0x3fed9a877e9ff023              # double 0.92511343699834858
	.quad	0x3fea9e943e72515d              # double 0.83185779759018497
	.quad	0x3fe22cfbd31686ec              # double 0.56799117305874125
	.quad	0x3fdcacb6e8781094              # double 0.44804165556002684
	.quad	0x3fcc7392ebc744e0              # double 0.22227703583352021
	.quad	0x3fe3dfa0bf0d77b9              # double 0.62104832949602617
	.quad	0x3fca023b97815048              # double 0.20319313905440795
	.quad	0x3fe50c4f4e1dfa31              # double 0.65775265938993333
	.quad	0x3fe3601588f61df0              # double 0.60547901869079901
	.quad	0x3fe7677a61d76bac              # double 0.73138159856477136
	.quad	0x3fee401067afc123              # double 0.94532032252576348
	.quad	0x3fd7b9bdd415ec48              # double 0.37071176253784133
	.quad	0x3fe4e5d09ceb5485              # double 0.65305357597630176
	.quad	0x3fd76e31934e534e              # double 0.36610068688724062
	.quad	0x3fcf63a8cc469044              # double 0.24522886251827647
	.quad	0x3fd49cd14d5f486a              # double 0.32207138591650752
	.quad	0x3fccc119095fc0ec              # double 0.22464287717549014
	.quad	0x3fd289cbe1b5f0e6              # double 0.28966042558728444
	.quad	0x3fe1ad94f55085bd              # double 0.5524391928958533
	.quad	0x3fe96296d85e7b9b              # double 0.7932848192175358
	.quad	0x3fd5b9977d175570              # double 0.33945262161190382
	.quad	0x3fceaed9b335ce6c              # double 0.2397110104608261
	.quad	0x3fe9992344fa7ec9              # double 0.79994357559550011
	.quad	0x3fdce85a956ef3b8              # double 0.45168175309282388
	.quad	0x3fea7b9710006ae1              # double 0.82758668065374874
	.quad	0x3feed532765e1f84              # double 0.9635250388973735
	.quad	0x3fb760f503d4b5c0              # double 0.091323197779920484
	.quad	0x3fee577837726442              # double 0.94817744092427625
	.quad	0x3fd9791595697ed8              # double 0.39801539984726508
	.quad	0x3fe5d130249197ca              # double 0.68178565161064708
	.quad	0x3feb9685ba7c6951              # double 0.86212431357425079
	.quad	0x3fe7cc19050a19a3              # double 0.74366427406566904
	.quad	0x3fe5cfddd595b812              # double 0.68162433353222895
	.quad	0x3fe692505e25234e              # double 0.70536058795651413
	.quad	0x3fe722bfd1f4b5ae              # double 0.72299185759555029
	.quad	0x3fe846291b31183d              # double 0.75856452284711617
	.quad	0x3fe63ca6aef0b126              # double 0.69490369956978237
	.quad	0x3fe42addacc22ac5              # double 0.63023265592467992
	.quad	0x3fecd0abe91a7834              # double 0.90047259834296378
	.quad	0x3fe7e939bea284d4              # double 0.74721991761557627
	.quad	0x3fe1540b045e51c8              # double 0.54150915959558521
	.quad	0x3fe45b48411a5cf2              # double 0.63614285197664189
	.quad	0x3fd1dd25f9d5dbae              # double 0.27912282369600916
	.quad	0x3fe8e8ca3b797e9d              # double 0.77841674438601027
	.quad	0x3feb4fbc841a8788              # double 0.85348344613542881
	.quad	0x3fe0744fcd747a5c              # double 0.51419820907524239
	.quad	0x3fcda3be3302eed0              # double 0.23155953875345014
	.quad	0x3febcd4811bca678              # double 0.86880877937546952
	.quad	0x3fd7c5047e873d5a              # double 0.3713999972942098
	.quad	0x3fdfb2df657464ec              # double 0.49529251964265941
	.quad	0x3fe42236b13a5a09              # double 0.62917646994429888
	.quad	0x3fc52b780da80dd4              # double 0.1653890673334063
	.quad	0x3fd63a4b1567533a              # double 0.34730794038960122
	.quad	0x3fd20435dc1e1842              # double 0.28150698181014289
	.quad	0x3fe2b3aef1cae3c3              # double 0.58443400597672512
	.quad	0x3fb79d75b2d9d658              # double 0.092246395268227643
	.quad	0x3fe86249befb7de3              # double 0.76199805546997046
	.quad	0x3fe5c1ec537d0251              # double 0.67992225939094386
	.quad	0x3feacc487efd37a1              # double 0.83743691256107777
	.quad	0x3feecdbad8a5312f              # double 0.9626135093072089
	.quad	0x3fd5bc2169a7cfda              # double 0.3396075755874769
	.quad	0x3fe106190762406e              # double 0.53199435655734617
	.quad	0x3fdd52b62594efdc              # double 0.45817330999466122
	.quad	0x3fec9e7d0013683a              # double 0.89434671416098088
	.quad	0x3feef24ecbf6e881              # double 0.96707858883679886
	.quad	0x3fcd3aa65c9fb550              # double 0.22835235140466148
	.quad	0x3fec258fe003b11d              # double 0.87958520653549821
	.quad	0x3facb7b101d98b30              # double 0.056088954425624116
	.quad	0x3fa8538318eb6c00              # double 0.047512146751351736
	.quad	0x3fcc875cd2121508              # double 0.22288093812327525
	.quad	0x3fe8160050395c06              # double 0.75268569630395699
	.quad	0x3fea9f13c6d031e8              # double 0.83191860991206301
	.quad	0x3fe35cef4983ee1d              # double 0.60509456976382447
	.quad	0x3fcddce7ecfc00cc              # double 0.23330401488784103
	.quad	0x3fdbee0f0724f540              # double 0.43640495011989699
	.quad	0x3fefaf3d47d8d133              # double 0.99014152557950863
	.quad	0x3fb30c28fc1e47a0              # double 0.074404298355402521
	.quad	0x3fdfc5b1edba69fe              # double 0.49644134727137146
	.quad	0x3fc740520e421774              # double 0.18165040680122113
	.quad	0x3fdc6228daf34c6c              # double 0.4434911859691002
	.quad	0x3fec2a5578b31a0b              # double 0.88016770910400177
	.quad	0x3fc68f19c7cf95cc              # double 0.17624208694830512
	.quad	0x3fdd6f14b6094090              # double 0.45990484024969991
	.quad	0x3fe7a51a241e9db8              # double 0.73890406660660002
	.quad	0x3fbfbdfd5e4d8b18              # double 0.12399276306454643
	.quad	0x3fc53b71c532af0c              # double 0.16587659958656109
	.quad	0x3fc79f74293c8cd4              # double 0.18455364240171568
	.quad	0x3fa2bd4b61f6e320              # double 0.036600452145142848
	.quad	0x3feb6cbc0a939f92              # double 0.85702325883629471
	.quad	0x3fe19734ee949177              # double 0.54970785711024817
	.quad	0x3fc7d4541957d270              # double 0.18616725194410177
	.quad	0x3fd06e5f39c29cbc              # double 0.25673657074589662
	.quad	0x3fda159678442fa4              # double 0.40756761307488376
	.quad	0x3fe341feca70287b              # double 0.60180606402106152
	.quad	0x3fd4843b471fcbfc              # double 0.32057077356074593
	.quad	0x3fe3e423a6b33760              # double 0.62159903105360215
	.quad	0x3fee3b0df8b7639c              # double 0.94470881059088496
	.quad	0x3fe702cbf2ca2477              # double 0.71909139079902118
	.quad	0x3fe586019990a804              # double 0.67260818474937922
	.quad	0x3febe957cd406f71              # double 0.87223424995634791
	.quad	0x3feabbf3ada4569c              # double 0.83544334330027281
	.quad	0x3fc251672bbf267c              # double 0.14310922275608451
	.quad	0x3f6a1996e2950800              # double 0.0031860300993296065
	.quad	0x3fe4ca4f278e98e9              # double 0.64969594694119082
	.quad	0x3fa6704dbe654ba0              # double 0.043825559131298819
	.quad	0x3feae1dbdaad5ca9              # double 0.84007065496816324
	.quad	0x3fd70d981f5541b4              # double 0.36020472583643515
	.quad	0x3fc13e2d36b1d708              # double 0.13470997973097831
	.quad	0x3fdf2edab0767c02              # double 0.48723475678156103
	.quad	0x3fd8ba6fc7e6d26e              # double 0.38637918969769813
	.quad	0x3fdda3eaf23c7470              # double 0.46312974601625623
	.quad	0x3fc2f8c49b664db8              # double 0.14821679675934063
	.quad	0x3fce5414e3c5fae4              # double 0.23694096681352683
	.quad	0x3fbe974430d2ed70              # double 0.11949564163199056
	.quad	0x3fe05dd832aba0e9              # double 0.51145563026969143
	.quad	0x3f87cef48e63c700              # double 0.01162520465411232
	.quad	0x3fed467c724e73d7              # double 0.91485426259498126
	.quad	0x3fe49f7b48d0b744              # double 0.64446796628701764
	.quad	0x3fdd5238c2a83bbc              # double 0.45814341554153848
	.quad	0x3fe25f0473c4f707              # double 0.57409880267343361
	.quad	0x3feba07d2b51d3b3              # double 0.86334093533388623
	.quad	0x3fdeff394a3ac9e4              # double 0.48432762383450112
	.quad	0x3fe7514662014714              # double 0.72867125646209496
	.quad	0x3fe94ae10ffacdd9              # double 0.79039052125011289
	.quad	0x3fe6defa413c38fd              # double 0.71471894017466264
	.quad	0x3fe7a1640b5ff17a              # double 0.7384510252154961
	.quad	0x3f9d05397f734420              # double 0.02834024277109759
	.quad	0x3fd540b674d83e9a              # double 0.33207475100150818
	.quad	0x3f9aef9cf9407b20              # double 0.026304676735999455
	.quad	0x3fc8f3c5c14e9c20              # double 0.19493934573003546
	.quad	0x3fc6d2dded681124              # double 0.1783101472102625
	.quad	0x3fd4a6a64b0dab0c              # double 0.3226714833205484
	.quad	0x3fe9de3b692dec26              # double 0.80837793867920449
	.quad	0x3fdd044463046542              # double 0.45338544530530467
	.quad	0x3fe7ef962b7fade1              # double 0.74799641128396044
	.quad	0x3fb075e03b905d20              # double 0.064298643629048247
	.quad	0x3fed687e1077bece              # double 0.91900542465551793
	.quad	0x3fe56d00f57610dc              # double 0.66955612126960373
	.quad	0x3fe2ab53033ffeec              # double 0.58341360697519695
	.quad	0x3fd89190c4f2e410              # double 0.38388461335449708
	.quad	0x3feb647a9e781a02              # double 0.85601550055508846
	.quad	0x3fe48fc6fa3f5976              # double 0.64255093456703949
	.quad	0x3fe8e87e1213eb29              # double 0.77838042765447313
	.quad	0x3fe99c5a35ab644c              # double 0.80033598406147055
	.quad	0x3fe5e6bfa99f4b31              # double 0.68441756371826135
	.quad	0x3fe2ab545b4bfe93              # double 0.5834142478124299
	.quad	0x3fef3c06014ba488              # double 0.97607708218596744
	.quad	0x3fb9f3bfb6a8cbf0              # double 0.10137556275803639
	.quad	0x3fd7e1503a2e4e92              # double 0.37312703782775103
	.quad	0x3fe1563aeb216676              # double 0.54177614139480457
	.quad	0x3fc99a02894478c4              # double 0.20001250936997483
	.quad	0x3feda9780f0e5d9e              # double 0.92693713131568578
	.quad	0x3fe507a6fc3ac90f              # double 0.6571841169700593
	.quad	0x3fdcef4eb9ed6976              # double 0.45210617215129589
	.quad	0x3fe4371821fa633a              # double 0.63172537456839639
	.quad	0x3fe05b71bc13302d              # double 0.51116263135327744
	.quad	0x3febc70e51c2dcf5              # double 0.86804882019978769
	.quad	0x3fe5884cc62ef627              # double 0.67288817126945311
	.quad	0x3fefd65828c91dc8              # double 0.99491508451404175
	.quad	0x3fe05c310d92ca10              # double 0.51125385905317167
	.quad	0x3fc97b06db831198              # double 0.19906697958334685
	.quad	0x3fb0034eca6708f0              # double 0.062550472654979705
	.quad	0x3fc7299eddbe6de8              # double 0.18095765902840744
	.quad	0x3fc42371efb947c0              # double 0.15733169751416476
	.quad	0x3f8f73dc34e60040              # double 0.015357704510052028
	.quad	0x3fda3471f55855c4              # double 0.4094509979198302
	.quad	0x3fd0454862f10eac              # double 0.25422868406551902
	.quad	0x3fe5a1dc8274df14              # double 0.67600846748152543
	.quad	0x3fe582c54e6fed40              # double 0.672213223645862
	.quad	0x3fe6b7e4febda058              # double 0.70994806055115145
	.quad	0x3fc428197bb3f51c              # double 0.15747374096091782
	.quad	0x3fd78588e1763366              # double 0.36752531068559902
	.quad	0x3fd47a8840026e88              # double 0.31997877360274929
	.quad	0x3fd3fad125fe1b84              # double 0.31218365392890512
	.quad	0x3fdc48a88df9e2e6              # double 0.44193471779685323
	.quad	0x3fdcc001af1ff7b8              # double 0.4492191515163273
	.quad	0x3fd03c951e317a4a              # double 0.25369766186296216
	.quad	0x3fd3ac842cfb8688              # double 0.30740456002067917
	.quad	0x3fea34416021562b              # double 0.81887882972177317
	.quad	0x3fcde33072ad1844              # double 0.23349576568051778
	.quad	0x3fd6efc734153c3e              # double 0.35838489614701874
	.quad	0x3fe5aed45d0f3994              # double 0.67759149718931377
	.quad	0x3fe555e8faab0360              # double 0.66673706968877511
	.quad	0x3fd4c2df058329f4              # double 0.32439399278942394
	.quad	0x3f9e6437d91d8e60              # double 0.029679176928210871
	.quad	0x3fd1ea39d0a653fa              # double 0.27992101074170217
	.quad	0x3feab68b721e0cb1              # double 0.83478328980017669
	.quad	0x3fe7d4e7e02aff16              # double 0.74473947317889855
	.quad	0x3fd57f846caabbfa              # double 0.33590803730015717
	.quad	0x3f8ccabd511b0440              # double 0.014058569944042643
	.quad	0x3fe0f5a1aa102257              # double 0.52998431411203739
	.quad	0x3fe2499a924c5649              # double 0.57148483823648022
	.quad	0x3fe1bc7a89dbae12              # double 0.55425764966406832
	.quad	0x3fb5a48806c4f550              # double 0.084541799214055801
	.quad	0x3fa9370164f7f650              # double 0.049247783255833455
	.quad	0x3fda826727348526              # double 0.41420916393879492
	.quad	0x3fda3e9a5581ff98              # double 0.41007097578403195
	.quad	0x3feb4f1bb0a80661              # double 0.85340675833885993
	.quad	0x3feb41a0ef5c5cec              # double 0.85176131010203226
	.quad	0x3fd71636629ad3c2              # double 0.36073073987364179
	.quad	0x3fb56e85b26a0a70              # double 0.083717685754928217
	.quad	0x3fed842b43f2e3b8              # double 0.92238391181228163
	.quad	0x3fee046ed41af8ef              # double 0.938041128414424
	.quad	0x3fd45f63eacfaeb2              # double 0.3183221619681077
	.quad	0x3fbec385efd5cfa8              # double 0.12017094712592657
	.quad	0x3fdad2429fad6780              # double 0.41908326714985122
	.quad	0x3fef486e91d00156              # double 0.97759178618438614
	.quad	0x3fb902ca13f34068              # double 0.097698812361387888
	.quad	0x3fe424a2b839e7a0              # double 0.62947212201764913
	.quad	0x3feb8e785324a2e7              # double 0.8611413597000962
	.quad	0x3fd935e1e2cdd458              # double 0.39391371868925296
	.quad	0x3fef0887c16b5ec6              # double 0.96979129578809231
	.quad	0x3fd800f72d2e3202              # double 0.37505893146661162
	.quad	0x3fe62c58bb7d9708              # double 0.69291340464835205
	.quad	0x3fd9cedce0c16364              # double 0.40325090359470139
	.quad	0x3fdcfb754e32c49a              # double 0.45284779202035852
	.quad	0x3fe856c65a5bb50a              # double 0.76059262893764523
	.quad	0x3fef59b58ac8da2b              # double 0.97970082384455758
	.quad	0x3fe4e980faa95d25              # double 0.65350388486232147
	.quad	0x3fe34dad660576ac              # double 0.60323209692042701
	.quad	0x3fcd53cc502acb94              # double 0.22911981501019041
	.quad	0x3fbdf9b31f706660              # double 0.11709136502795436
	.quad	0x3fef488e8f5d4a25              # double 0.97760704041349255
	.quad	0x3fed147b55d627f0              # double 0.90875021710348669
	.quad	0x3fba1177561ee718              # double 0.10182901241833198
	.quad	0x3fc8539dd3bee53c              # double 0.19005177344460289
	.quad	0x3fe2af0bebf6492b              # double 0.58386798940981544
	.quad	0x3fed21443c37a76f              # double 0.91031085740290318
	.quad	0x3fdede566cd8a942              # double 0.48232041005634951
	.quad	0x3fcfba4e118902e0              # double 0.24787307602129882
	.quad	0x3fe707e4a1324bde              # double 0.71971351131139349
	.quad	0x3fe8e9f56e892440              # double 0.77855941380506266
	.quad	0x3fe8beb449d49ae5              # double 0.77327932758347784
	.quad	0x3fee4462e0bbc1a4              # double 0.945847929890125
	.quad	0x3fe9a3463290181f              # double 0.80118093371925514
	.quad	0x3fe751d220cd508b              # double 0.72873789221422791
	.quad	0x3fdc0d61af65706a              # double 0.43831674698390677
	.quad	0x3fdbc9b2ec1c0c3e              # double 0.43418572480749507
	.quad	0x3fedcdf9ea842793              # double 0.93139358333540867
	.quad	0x3fef25cd00258e3e              # double 0.97336435345318484
	.quad	0x3fe1bccaecc2157e              # double 0.55429598085235887
	.quad	0x3fe87a26883426db              # double 0.76491095163620615
	.quad	0x3fd3171d2d1e72a6              # double 0.29828576475282842
	.quad	0x3febfe4f4d7dcb88              # double 0.87479367384945395
	.quad	0x3fe961aa61c9d095              # double 0.79317206477436974
	.quad	0x3fc381e9422b89d8              # double 0.15240207415543128
	.quad	0x3fb483ba99bf7068              # double 0.080135023628317037
	.quad	0x3fe854f6009ccff9              # double 0.76037120933187829
	.quad	0x3fd184519d4e9af4              # double 0.2737010990335158
	.quad	0x3facbb686d025df0              # double 0.056117308909218511
	.quad	0x3fe52b6bb45b097f              # double 0.66155038095193663
	.quad	0x3fc68e665189fb3c              # double 0.17622069341083513
	.quad	0x3fd776ecae0fe75c              # double 0.36663357733015345
	.quad	0x3fdee25d6bd28950              # double 0.48256621865779881
	.quad	0x3feb37299d6f88be              # double 0.8504837107577925
	.quad	0x3fdcd0ac5fff03ac              # double 0.45023640989898683
	.quad	0x3fcf3a58c4f852e4              # double 0.24396810167004113
	.quad	0x3fec684837696e12              # double 0.88772974798797777
	.quad	0x3feb2495a2e539a0              # double 0.84821588340291853
	.quad	0x3fdf0e2403348e7a              # double 0.48523807824151499
	.quad	0x3f9c374bff568fe0              # double 0.027554690799334369
	.quad	0x3fe813cfffcc4ffc              # double 0.75241851769032974
	.quad	0x3fecc79318d16fb1              # double 0.89936213347708904
	.quad	0x3fe38b03803fe4a6              # double 0.61071944283243762
	.quad	0x3fb702cad93548b8              # double 0.08988635828908087
	.quad	0x3feba1e4a77b22ef              # double 0.86351235114224589
	.quad	0x3fde9bc388b21fde              # double 0.47825706814955804
	.quad	0x3fd4c16e471603fc              # double 0.32430607740394612
	.quad	0x3fcfbed039864b70              # double 0.24801066216295053
	.quad	0x3fda236f46bb6c46              # double 0.40841276080545119
	.quad	0x3fbf27feeb8ee188              # double 0.1217040371983612
	.quad	0x3fea7cd28b228794              # double 0.82773711371213432
	.quad	0x3fbb07ff569963c8              # double 0.10559078087079776
	.quad	0x3facbe5e595d3d90              # double 0.056139896782606447
	.quad	0x3fe14cecb5f4b032              # double 0.54064021623844938
	.quad	0x3fd13042853b61fe              # double 0.26857054720815643
	.quad	0x3fe799b70f642451              # double 0.73751404768075635
	.quad	0x3fc2c09e67abb74c              # double 0.14650325834321121
	.quad	0x3fbbf18b5be67088              # double 0.10915442460685842
	.quad	0x3fd6cf5d695498b6              # double 0.35640654836823715
	.quad	0x3feca01beac19c28              # double 0.89454456187093445
	.quad	0x3fa4a66fe8bb8ca0              # double 0.040332314643614753
	.quad	0x3fe5c7c792604d00              # double 0.68063715542885461
	.quad	0x3fe79af15160080e              # double 0.7376638974531049
	.quad	0x3fcc249cbaa03dcc              # double 0.21986731636614676
	.quad	0x3fe75176f831317b              # double 0.72869442439109322
	.quad	0x3fd914b96ed885c2              # double 0.39188991379532123
	.quad	0x3fdb23bc92ad4552              # double 0.42405618976507242
	.quad	0x3fe995c51d63d57c              # double 0.79953246822576273
	.quad	0x3fdacf0ab2fbe10c              # double 0.41888682822129009
	.quad	0x3fefa6d782fa9bdd              # double 0.98911643583130237
	.quad	0x3fd735f573e11d28              # double 0.36266838375418553
	.quad	0x3fe1d8486a96a044              # double 0.55765171831172511
	.quad	0x3fd4ca74a90218a8              # double 0.32485691551881724
	.quad	0x3fd9095f96cb0c7c              # double 0.39119710660833795
	.quad	0x3fea2708b37125a4              # double 0.81726489112150035
	.quad	0x3fe0050efa215716              # double 0.50061749318658388
	.quad	0x3fe971c2e7635fcb              # double 0.79513688271526328
	.quad	0x3fcf0d354143af74              # double 0.24259057699907383
	.quad	0x3fe5ee040f37daa6              # double 0.68530467006970208
	.quad	0x3fece2ffc55de176              # double 0.90270985172450824
	.quad	0x3fd6bb4385321818              # double 0.35517967231169356
	.quad	0x3fd8dede2ceeab90              # double 0.38860277545853084
	.quad	0x3fea0c050620465e              # double 0.81396723934649251
	.quad	0x3febc03128fb12bb              # double 0.86721094135335564
	.quad	0x3fd03c9b4333d8ae              # double 0.25369912684198936
	.quad	0x3fe03e9cf55a17cd              # double 0.50764320297525389
	.quad	0x3fe7bd4ef79ac4e5              # double 0.74185894356028526
	.quad	0x3fe5c132035730e6              # double 0.67983341839274369
	.quad	0x3fef447bab31f7cd              # double 0.97710975109634434
	.quad	0x3fc8d64c05ffdae4              # double 0.19403982441845991
	.quad	0x3fe7f326e7767719              # double 0.74843163688248915
	.quad	0x3fe06655ea0bd183              # double 0.5124921389784024
	.quad	0x3fca655883588950              # double 0.20621782697078084
	.quad	0x3fe73fd41d9b317c              # double 0.72654157431092825
	.quad	0x3fc63d3990df6804              # double 0.17374343465672848
	.quad	0x3feeb0aaddda5348              # double 0.95906585054999826
	.quad	0x3fb1cfd75b905430              # double 0.069577655653419113
	.quad	0x3fb696c231465a58              # double 0.088237893133148559
	.quad	0x3fbcd9dc7b02dd98              # double 0.1126992988891885
	.quad	0x3fc0682c01996b5c              # double 0.12817907407846973
	.quad	0x3fd6952010ff87c0              # double 0.35285188350655616
	.quad	0x3fe94967199e3684              # double 0.79021029475707438
	.quad	0x3fc8141bfa778798              # double 0.18811368684606289
	.quad	0x3fc0ff2f41923d7c              # double 0.13278761579247689
	.quad	0x3fed220796f2f920              # double 0.9104040096497421
	.quad	0x3fcaf1434123cd84              # double 0.21048775368363348
	.quad	0x3fc270075be61628              # double 0.14404384600872899
	.quad	0x3fdeaf0943f10968              # double 0.47943336138646098
	.quad	0x3fd3c1042c408ad8              # double 0.30865578004356342
	.quad	0x3fd41f01d6f93f3c              # double 0.31439252847211541
	.quad	0x3fe0c136db16b4ad              # double 0.52358572760353683
	.quad	0x3fe026bbbf85995b              # double 0.50472819716086847
	.quad	0x3fb589f38cb9abf8              # double 0.084136220795400507
	.quad	0x3fb2fee6bd428718              # double 0.07420198555567159
	.quad	0x3fec16c16a2a00d9              # double 0.87777777419253333
	.quad	0x3fc7b1939e70bda8              # double 0.18510670887324676
	.quad	0x3fe65bc67c03b0f0              # double 0.69870304318967946
	.quad	0x3fcf1ca9d0adf5ec              # double 0.24306223573141439
	.quad	0x3fd4035be9f2f774              # double 0.31270501944151552
	.quad	0x3fdffd60badc9064              # double 0.49983995674324988
	.quad	0x3fd8315c4186dc74              # double 0.37801271819211668
	.quad	0x3fdf585a790653a0              # double 0.48976766413516692
	.quad	0x3fda474ea9bb17e4              # double 0.41060225081707658
	.quad	0x3fed018f23aa420f              # double 0.90644032445749356
	.quad	0x3fe50c7dceab96c6              # double 0.65777483334815012
	.quad	0x3fdd53f9b0018d3e              # double 0.45825044811336457
	.quad	0x3fb85d6e941cdc48              # double 0.095175658378921502
	.quad	0x3fafddd52d03da10              # double 0.06223932432651591
	.quad	0x3fabce0e0fa072a0              # double 0.054306449325143946
	.quad	0x3fc2e8f4a38e3068              # double 0.14773424135308066
	.quad	0x3fd2436980dcd8da              # double 0.2853645094322822
	.quad	0x3fe62faeecc2c19b              # double 0.69332071535432094
	.quad	0x3fe81ec9f6e0b0c7              # double 0.75375841348934436
	.quad	0x3feb4a743c48d797              # double 0.8528386285240569
	.quad	0x3fc5db239f5669f8              # double 0.17075009613184
	.quad	0x3fa79d8fc902eef0              # double 0.046123975074321311
	.quad	0x3fd175936f9461e0              # double 0.27280126472899546
	.quad	0x3fda473ba0e1ebb4              # double 0.41059771262342371
	.quad	0x3fe52da48c0b3d02              # double 0.66182162620853568
	.quad	0x3fe49d1fc1dd1c04              # double 0.64418018211370098
	.quad	0x3fcdacd3355400dc              # double 0.23183670143044466
	.quad	0x3fa9bf25cfca8c70              # double 0.050286466231477145
	.quad	0x3fefc04d244183cd              # double 0.99222428399309026
	.quad	0x3fe61d56bcc9b7c1              # double 0.6910813987030836
	.quad	0x3fed4b7dcc6d845a              # double 0.91546525885872687
	.quad	0x3fe20089b27b6443              # double 0.56256565913930279
	.quad	0x3fe1d8c4881ef8a6              # double 0.55771090112809385
	.quad	0x3fb5c6167dc19468              # double 0.085053830816450238
	.quad	0x3fe8fbf7eaa80d8d              # double 0.78075786429728711
	.quad	0x3fd72a5450060146              # double 0.36195857825079647
	.quad	0x3fe08b65ff99873e              # double 0.5170164100820569
	.quad	0x3fc3a9422654ecf8              # double 0.15360285636584314
	.quad	0x3feef573ad019355              # double 0.96746238508476756
	.quad	0x3fed622833bb3016              # double 0.91823206046820149
	.quad	0x3fe23a95001e5073              # double 0.5696511270821375
	.quad	0x3fe543352008aac9              # double 0.66445404297459121
	.quad	0x3fd2303dc9083a2e              # double 0.28419441825909331
	.quad	0x3fc36c10e805e6b4              # double 0.15173541383028566
	.quad	0x3fe38ec01d129450              # double 0.61117559126126686
	.quad	0x3fe9c1ba36fd1e10              # double 0.80489836444843554
	.quad	0x3fd02d4dbbce1aa2              # double 0.25276511516896438
	.quad	0x3fe1bb62e0f24ef4              # double 0.55412429747454306
	.quad	0x3fef66ddb9c4869b              # double 0.9813068989062289
	.quad	0x3feaf43706f11c8a              # double 0.84231139522388898
	.quad	0x3fedb8287863ced0              # double 0.9287302352299438
	.quad	0x3fd6eab447304bba              # double 0.3580752082063402
	.quad	0x3fed8f561522d9bb              # double 0.92374710205222443
	.quad	0x3fef1989c165bab4              # double 0.97186744473386577
	.quad	0x3fe53bf301437af4              # double 0.66356802222057221
	.quad	0x3fe6e3d2b12ae3b5              # double 0.71531042674097611
	.quad	0x3f9682ac1983ae80              # double 0.021982850129389053
	.quad	0x3fd8f6adf0fa6a6a              # double 0.39005611928010941
	.quad	0x3fea20800e1cfde6              # double 0.81646731144422513
	.quad	0x3fdb8d3041f37464              # double 0.43049246254469709
	.quad	0x3f79bd18d5c5b180              # double 0.0062838525885634544
	.quad	0x3feccd2a2d147e07              # double 0.90004452519127731
	.quad	0x3fed256b3e103c99              # double 0.9108177387405646
	.quad	0x3fd81dcab2ffad26              # double 0.37681834678979198
	.quad	0x3fef817c8b988fff              # double 0.9845564581378311
	.quad	0x3fe737a15c6cf720              # double 0.72554081012615157
	.quad	0x3fe98056c3b4ec82              # double 0.7969163725278039
	.quad	0x3fe63204b7e001a3              # double 0.69360576546755615
	.quad	0x3fd9a5aaba4bd9e2              # double 0.40073650544164086
	.quad	0x3fe617a1c8832b0b              # double 0.69038476145337435
	.quad	0x3fcdad92d774e95c              # double 0.23185954590173707
	.quad	0x3fe76398ba230d06              # double 0.7309077868925733
	.quad	0x3fd650658a813e30              # double 0.34865702176918756
	.quad	0x3fe6e700e37c033e              # double 0.71569866591025977
	.quad	0x3fc122cb45f92f38              # double 0.1338743297259215
	.quad	0x3fef1b7f990eb0f2              # double 0.97210674184819212
	.quad	0x3fc6bc09f329c4c0              # double 0.17761349080277533
	.quad	0x3fe72090d8e96b3c              # double 0.72272531858047939
	.quad	0x3fee5ab94edcb236              # double 0.94857468989136495
	.quad	0x3fc55592d24eee1c              # double 0.16667399662934279
	.quad	0x3fd0cd4d9d5f12ec              # double 0.26253071182536192
	.quad	0x3fe037a2a4f63bdc              # double 0.50679142207252026
	.quad	0x3feb814459032f33              # double 0.85952966103784545
	.quad	0x3fe979778d36a5ea              # double 0.79607751446490949
	.quad	0x3fefe728489e5b66              # double 0.99696745093647787
	.quad	0x3fe817b257790080              # double 0.75289265713219322
	.quad	0x3fe18fa570bd920d              # double 0.54878494281416723
	.quad	0x3fca8de3334a21f0              # double 0.20745506290792504
	.quad	0x3fe325f7bce75650              # double 0.59838473220106358
	.quad	0x3fe62dc62759bb23              # double 0.69308765111586401
	.quad	0x3fd2155bd4937a1e              # double 0.28255363234885233
	.quad	0x3fd76d1ada7035c4              # double 0.36603423435084559
	.quad	0x3fea1ff155f40062              # double 0.81639925754280918
	.quad	0x3fd71edc231300a6              # double 0.36125853944032327
	.quad	0x3fe8f1ce06357889              # double 0.77951718533201231
	.quad	0x3fd63a9d47671412              # double 0.34732753727831878
	.quad	0x3fe94367fa4dfb76              # double 0.78947829139347792
	.quad	0x3fd755f78c99ceb0              # double 0.3646220086149965
	.quad	0x3faffa340c6a33e0              # double 0.06245577479885589
	.quad	0x3fe16b1ee7eb50b1              # double 0.54432626053541899
	.quad	0x3fdcb170c2b922e0              # double 0.44833010688721053
	.quad	0x3fd91edb8db58024              # double 0.39250840033310141
	.quad	0x3fdab608f883458a              # double 0.41736053723169475
	.quad	0x3fe7a044b4f352e8              # double 0.73831401197329871
	.quad	0x3fe404c1941ea230              # double 0.62558058671590366
	.quad	0x3fec26d72ca8251b              # double 0.87974127504381572
	.quad	0x3fe2269c743f8071              # double 0.56721327500055285
	.quad	0x3fbc83068afbc6a8              # double 0.11137429135467392
	.quad	0x3fe4e5ec167a60b3              # double 0.65306667700044441
	.quad	0x3fcc4bfb76a7f2f0              # double 0.22106879514458155
	.quad	0x3fcbe32d75a80a50              # double 0.21787040944043889
	.quad	0x3fd038da66b498c8              # double 0.25347003965215409
	.quad	0x3fd829387f6d414e              # double 0.37751591152211439
	.quad	0x3fc39f722bb86a70              # double 0.15330340513976948
	.quad	0x3fd9d0c108934116              # double 0.40336633527205501
	.quad	0x3fd28dc91fa03a7a              # double 0.28990390861955684
	.quad	0x3fe4d3e458c24964              # double 0.65086572013596511
	.quad	0x3fd4afe8bb82f460              # double 0.32323664008783304
	.quad	0x3fce9162373b8158              # double 0.2388117570581112
	.quad	0x3fdfc40b66c38056              # double 0.49634060893550236
	.quad	0x3feb03f1014d95f5              # double 0.84423113111978287
	.quad	0x3fd9f899a02b4016              # double 0.40579834596155828
	.quad	0x3fd1a845247dbbf2              # double 0.27589539111698891
	.quad	0x3fee8ad8e0155134              # double 0.95444911733878834
	.quad	0x3fe3cc291cb6546d              # double 0.61867194755417432
	.quad	0x3fe09780d0025ce8              # double 0.51849403979113351
	.quad	0x3fd412ac768402e8              # double 0.31363975118442378
	.quad	0x3fe9f0fe64bcdd3e              # double 0.81066817927686663
	.quad	0x3fc2eb9d649b0010              # double 0.14781539356590701
	.quad	0x3fbfe0cff7734100              # double 0.12452411452546031
	.quad	0x3fef659e4b460d8e              # double 0.98115458204158457
	.quad	0x3fcfe0a058db62f4              # double 0.24904255236358319
	.quad	0x3fece90764014bc3              # double 0.90344590694655158
	.quad	0x3fe974c274600485              # double 0.7955028794241491
	.quad	0x3fbb8211d6ea3560              # double 0.10745345589585531
	.quad	0x3feb2b186216b2e6              # double 0.84901065023367717
	.quad	0x3fe33cbe04f1d5ac              # double 0.6011648270202179
	.quad	0x3fde422c57447d06              # double 0.47278889200420371
	.quad	0x3fda7036b894dc82              # double 0.41309898400817968
	.quad	0x3fc2c442de262448              # double 0.14661441657179553
	.quad	0x3fe3a71fdea3df6f              # double 0.61415093883895888
	.quad	0x3fec2a95b9d9e3f6              # double 0.88019834803628672
	.quad	0x3fe908122d6b0edb              # double 0.78223523016682905
	.quad	0x3fc9657234173d64              # double 0.19840838950629369
	.quad	0x3f953ff414679dc0              # double 0.020751775498778491
	.quad	0x3fe8d93004e4b563              # double 0.776512155110748
	.quad	0x3fd33ba25624293c              # double 0.30051477825385908
	.quad	0x3fd397560d228dc4              # double 0.30611182482445209
	.quad	0x3fbba80467095bd0              # double 0.10803248897114703
	.quad	0x3fd69210a1b70120              # double 0.35266509811846625
	.quad	0x3fd4c4875d37d192              # double 0.32449516394924516
	.quad	0x3f9616aede7f27a0              # double 0.021570904092903853
	.quad	0x3fe969381507b5f1              # double 0.7940941248650103
	.quad	0x3feefe6ef1a2288b              # double 0.96855876153974074
	.quad	0x3fec1d737a6a40c9              # double 0.87859510335149438
	.quad	0x3fee18b5e98cf8ff              # double 0.9405164300476655
	.quad	0x3fe87cca6d33464a              # double 0.76523324325734987
	.quad	0x3fd8b8753a9e4e5c              # double 0.38625841831637842
	.quad	0x3fe5ac1293a3744f              # double 0.67725495181697137
	.quad	0x3fe6a4dbdda37af0              # double 0.70762437142169965
	.quad	0x3fd8217ff07804a6              # double 0.37704466326983732
	.quad	0x3feb38bfbc5bee92              # double 0.85067736424339757
	.quad	0x3fe7925783e152e6              # double 0.7366139961037248
	.quad	0x3fd34c3f0d19d682              # double 0.30152870444667468
	.quad	0x3fd4b7fd22291882              # double 0.32372978530873564
	.quad	0x3fedc7baaba592eb              # double 0.93063100361595497
	.quad	0x3fe4f6fb227fa864              # double 0.65514904726047662
	.quad	0x3fe92d5965af57d3              # double 0.78678579197252885
	.quad	0x3fcf4f469e6c9e60              # double 0.24460680709420313
	.quad	0x3fef15161a9c32e7              # double 0.97132401654525046
	.quad	0x3fdf9eca1d7cefaa              # double 0.49406674270334838
	.quad	0x3fe2d6443784b32d              # double 0.58865557521275991
	.quad	0x3fe3a1a92eee36c4              # double 0.61348399320714764
	.quad	0x3fe54a1aea176706              # double 0.66529603692035333
	.quad	0x3fe4fcc6d1123527              # double 0.65585652193263833
	.quad	0x3fe1b51e15407442              # double 0.55335907126175976
	.quad	0x3fee8ba13e8d6189              # double 0.95454466073265209
	.quad	0x3fe13b44f23a07e1              # double 0.5384850245466134
	.quad	0x3fc623727b989728              # double 0.17295676264728255
	.quad	0x3fecaf657dc8d7f4              # double 0.89641069953245144
	.quad	0x3fd17931f2ce30de              # double 0.27302216254680711
	.quad	0x3fe0546a79aa17f2              # double 0.51030467760642595
	.quad	0x3fca266224947948              # double 0.20429636751300451
	.quad	0x3feb35bfada9c19e              # double 0.85031112593246738
	.quad	0x3fe33528895ae011              # double 0.60023905589241811
	.quad	0x3fe9ed421a3fd4f1              # double 0.81021218420815277
	.quad	0x3fd16a7babf2b03a              # double 0.27212421218678495
	.quad	0x3fd8a90be39daa90              # double 0.38531777599443107
	.quad	0x3fe1092fb7201879              # double 0.53237138525652405
	.quad	0x3fdee410ef94af20              # double 0.4826700534492705
	.quad	0x3fe2bd2352787c39              # double 0.58558813197658488
	.quad	0x3fe87da3a627ea46              # double 0.76533682300880268
	.quad	0x3fe2623c98f3eb24              # double 0.57449178575129567
	.quad	0x3fe872205b3f1440              # double 0.76393144437373195
	.quad	0x3fe9735ee53870d3              # double 0.79533333558677055
	.quad	0x3fc2e1e631ec1094              # double 0.14751889646152405
	.quad	0x3fe818900e50e586              # double 0.7529983787164134
	.quad	0x3fef3c2ee971cdf3              # double 0.97609658808363375
	.quad	0x3fe4fda1ec648db7              # double 0.65596100016084946
	.quad	0x3fceb3a16cc373a8              # double 0.23985688982693643
	.quad	0x3fd7d7b0d32d667e              # double 0.37253971693790067
	.quad	0x3fc094d444513a4c              # double 0.12954190574460467
	.quad	0x3fe7e64462241bda              # double 0.7468587796037085
	.quad	0x3fe822f7f0249c7d              # double 0.75426861670429413
	.quad	0x3fefe96983281641              # double 0.99724269501229667
	.quad	0x3fdb5d3beae49b66              # double 0.42756555498856696
	.quad	0x3fd124348f37f5de              # double 0.26783479677382427
	.quad	0x3fd36f584b2534c6              # double 0.30367095316325921
	.quad	0x3fe57ae859d2b8af              # double 0.67125337165432153
	.quad	0x3fd8d583af81f184              # double 0.38803188456929427
	.quad	0x3febe4fadb81eb81              # double 0.87170164940413042
	.quad	0x3fe2319fbc438f6e              # double 0.56855761308950803
	.quad	0x3fdd81335b1ac94a              # double 0.46101077935158641
	.quad	0x3fdd633e6b310214              # double 0.45918236225046027
	.quad	0x3fdeb1313bc05ab6              # double 0.47956496081443889
	.quad	0x3fd7be03127ef88c              # double 0.37097241216896104
	.quad	0x3fe0d29effccf4a3              # double 0.52571058236175749
	.quad	0x3f8f72e6b87854c0              # double 0.015355875496462779
	.quad	0x3fde0a411de9ef84              # double 0.46937587662954905
	.quad	0x3fc838bdb8d3a878              # double 0.18923160099740577
	.quad	0x3fe2faa79696ecf1              # double 0.59309749042532023
	.quad	0x3fc8a6c8ab4820d8              # double 0.19258983958594089
	.quad	0x3fb62ff5e9688bb8              # double 0.086669320568531272
	.quad	0x3fc75a99b455d8ec              # double 0.18245240502773841
	.quad	0x3fec79a789dd459f              # double 0.88985039641027075
	.quad	0x3fc6aea84f755824              # double 0.17720512275508427
	.quad	0x3fd1005af3ed8e08              # double 0.26564668484772413
	.quad	0x3fd0fc964520bffe              # double 0.26541668654226658
	.quad	0x3fea048c3c053a41              # double 0.81305515024889286
	.quad	0x3fe5756db2b46391              # double 0.67058453467608292
	.quad	0x3fcd8008db004028              # double 0.23046980565459418
	.quad	0x3fc7b4edf57ca31c              # double 0.18520903097785257
	.quad	0x3fe8c240aaf1351f              # double 0.77371247660781595
	.quad	0x3f97173b04b6eca0              # double 0.02254955498004263
	.quad	0x3fe4bf3613760611              # double 0.64834121514303622
	.quad	0x3fd4d0c202c6518a              # double 0.3252415682884694
	.quad	0x3fa050a23edbe410              # double 0.03186518685647155
	.quad	0x3fcd07e3f52c1298              # double 0.22680329772278607
	.quad	0x3f912970cae581e0              # double 0.016759645828075764
	.quad	0x3fdfd7e826e519d6              # double 0.4975529079278237
	.quad	0x3f94eb87e4138200              # double 0.020429728789965296
	.quad	0x3fe33abd911a56da              # double 0.6009204706230904
	.quad	0x3fe06fb39773b2b9              # double 0.51363544064005062
	.quad	0x3fee009e1c93e59b              # double 0.93757539350115182
	.quad	0x3f9e8871c4be79c0              # double 0.029817369111350578
	.quad	0x3fcbf8924c0e15cc              # double 0.21852329934715298
	.quad	0x3fd5f19ee7c4fc5c              # double 0.34287235864389287
	.quad	0x3fe1379a90199e6b              # double 0.53803756851716622
	.quad	0x3fb8f7d7c8f35138              # double 0.097531782684488699
	.quad	0x3fd534e708b1426a              # double 0.33135391091221911
	.quad	0x3febe7f29885d264              # double 0.87206392087552986
	.quad	0x3fb5ba3f173de5d8              # double 0.084873145269646399
	.quad	0x3fe55fcd920f785f              # double 0.66794470336368394
	.quad	0x3fccb08f271d4134              # double 0.22413815889240996
	.quad	0x3fd0585b5783069c              # double 0.25539287134243138
	.quad	0x3fece4083ba03605              # double 0.90283595700901798
	.quad	0x3fcee9f0762bd76c              # double 0.2415142609603963
	.quad	0x3fd0f41b6b8db81a              # double 0.26489911559372248
	.quad	0x3fedeee05c3a4034              # double 0.93540971768562153
	.quad	0x3fdb3f3f821ede26              # double 0.42573535639846438
	.quad	0x3fe4545112999617              # double 0.63529256470491446
	.quad	0x3fe3cd7583a57a34              # double 0.61883044922053054
	.quad	0x3fdf775217b5f0d0              # double 0.49165775599955186
	.quad	0x3fe16f6da2b5f778              # double 0.54485208301024013
	.quad	0x3feb3afc7b96986b              # double 0.85095047128994616
	.quad	0x3facbafdcd76f8c0              # double 0.056114131289619618
	.quad	0x3fcda1a4ce5c1638              # double 0.23149547649534141
	.quad	0x3fe832952db60a47              # double 0.75617464950512037
	.quad	0x3fedafdaec7b2da4              # double 0.92771669566848347
	.quad	0x3fdd3d06964622f4              # double 0.45684971499626603
	.quad	0x3fc59b24bd961e98              # double 0.16879710442684792
	.quad	0x3fe4fe1066601807              # double 0.6560136794585113
	.quad	0x3fcc30b86e081410              # double 0.22023682949671342
	.quad	0x3fda8df5bdbd5440              # double 0.41491454629187174
	.quad	0x3fe8a59032e16658              # double 0.77021036088553796
	.quad	0x3fa8278d4d3088c0              # double 0.047176757500225985
	.quad	0x3fea441d60b2a2bb              # double 0.82081478964126775
	.quad	0x3fe8fbbf9d050217              # double 0.78073101680644441
	.quad	0x3feb1d35749a2e78              # double 0.84731552862054027
	.quad	0x3fe9b86c938938ff              # double 0.80376271072034899
	.quad	0x3fd7cb11cc7ff60e              # double 0.3717693802899199
	.quad	0x3fd0b0b6fc7df132              # double 0.26078581483286023
	.quad	0x3fd3ce95b9e48314              # double 0.30948393968178434
	.quad	0x3fe90249b5e9e443              # double 0.78152928857810655
	.quad	0x3fd0e955bbfd0510              # double 0.26424163206327567
	.quad	0x3f9f9383dc270880              # double 0.030836162864723793
	.quad	0x3fda062b26296b7c              # double 0.40662649847734378
	.quad	0x3f9995f5f10ecf40              # double 0.024986117208484204
	.quad	0x3fe22fd82118b446              # double 0.56834036316070846
	.quad	0x3fbb2e1b91e296a0              # double 0.1061722975888082
	.quad	0x3fd2c87442ad1294              # double 0.29348474990210005
	.quad	0x3fb3442d5ebc3cd0              # double 0.075259051922546449
	.quad	0x3fe919e946d35fbb              # double 0.78441299279346965
	.quad	0x3fb4ff134a8c96f8              # double 0.08201714105652147
	.quad	0x3fd892d6ab61825a              # double 0.38396231399932435
	.quad	0x3f93b9fe756cdfe0              # double 0.019264198224135387
	.quad	0x3fdbe3f07e7c0fe0              # double 0.43578731872571375
	.quad	0x3fc0de48f0014ec4              # double 0.13178359717368526
	.quad	0x3fea1abfe8da02f8              # double 0.81576533774213456
	.quad	0x3fc7b0f8491084b4              # double 0.18508819167712931
	.quad	0x3fe494c4a3b2e87b              # double 0.64316017124589508
	.quad	0x3fe33f98146caecb              # double 0.6015129469792212
	.quad	0x3fdaa01335812cc2              # double 0.4160202047830347
	.quad	0x3fdd31279b354a2c              # double 0.45612516552970095
	.quad	0x3fd77c8962342a6c              # double 0.36697611417972698
	.quad	0x3fc5e7120e610510              # double 0.17111421300982288
	.quad	0x3fd0ee02a159a580              # double 0.26452699429372473
	.quad	0x3fef3dddb29bc9cd              # double 0.9763020027588084
	.quad	0x3fe24a6af1285913              # double 0.57158419705482044
	.quad	0x3fe6d0a33cda5aab              # double 0.71296846280423176
	.quad	0x3feebfdf75f4ec08              # double 0.96092198408530382
	.quad	0x3fc21e3f208b0910              # double 0.14154805268305681
	.quad	0x3fefd917e75ec80b              # double 0.99525065602779372
	.quad	0x3fac9f5c41de1ed0              # double 0.055903323212132983
	.quad	0x3fe8a2c0aab8e820              # double 0.76986726135442395
	.quad	0x3fdd8a78e7d8d71e              # double 0.46157667771636735
	.quad	0x3fe771bdd937384c              # double 0.7326344721311755
	.quad	0x3fb0f6dc548f74d8              # double 0.066266794819472508
	.quad	0x3fe5c7f3b737a143              # double 0.68065820488576667
	.quad	0x3fe08c2d3e89ed98              # double 0.51711141790967741
	.quad	0x3fbda28841f46200              # double 0.11576129541607116
	.quad	0x3fdc746d17a0747e              # double 0.44460608775427335
	.quad	0x3fe5060cbc918a8f              # double 0.65698849515713842
	.quad	0x3fe8c5f6f6cef637              # double 0.77416561321996979
	.quad	0x3f98f563d8c2eee0              # double 0.02437358866221373
	.quad	0x3feeeea33ab18912              # double 0.96663056815694604
	.quad	0x3fe1ed96af563fe1              # double 0.56025251622667949
	.quad	0x3fe8af22c970bc0b              # double 0.77137889236280566
	.quad	0x3fd05f6dd532ce96              # double 0.25582452602541517
	.quad	0x3fdb99fb04c0ec7a              # double 0.43127322639674726
	.quad	0x3fe2cb09fa51ef3b              # double 0.58728503122936304
	.quad	0x3fe79aa10fe34a0a              # double 0.73762562850089464
	.quad	0x3fd107a9e4b9b282              # double 0.266092751850728
	.quad	0x3fe6e79621ba34f7              # double 0.71576983058335386
	.quad	0x3fd32640a9d2e064              # double 0.29920975288724194
	.quad	0x3fb6addcbaf36950              # double 0.088590427057544163
	.quad	0x3fee4c014b88afcc              # double 0.94677796128007107
	.quad	0x3fee2b063dd09f04              # double 0.942751999599722
	.quad	0x3fc128c74ba283d8              # double 0.13405696099383024
	.quad	0x3fc3ad4084373b88              # double 0.15372473197791359
	.quad	0x3fed8ce341dc3126              # double 0.92344820845895437
	.quad	0x3fe5a762761c295d              # double 0.67668269222603394
	.quad	0x3fb0ef2549f14028              # double 0.066149073173847328
	.quad	0x3fc771e9257da704              # double 0.18316377955061836
	.quad	0x3fe971f990af650a              # double 0.79516294726195835
	.quad	0x3fe7934f7f94db0c              # double 0.73673224371199941
	.quad	0x3fe87cd099343a4b              # double 0.76523618624362066
	.quad	0x3fe185dfa14af78f              # double 0.54759198668010522
	.quad	0x3fd744a382c71fea              # double 0.36356437464973956
	.quad	0x3fee75882da4d667              # double 0.95184716143439807
	.quad	0x3fa1e6949151b910              # double 0.034962313403285816
	.quad	0x3f9d8f5d6a671940              # double 0.028867206210429375
	.quad	0x3fd3762aaec29846              # double 0.30408732477588207
	.quad	0x3fdd3d6a1069df84              # double 0.45687343218696008
	.quad	0x3fe0f1852472df17              # double 0.52948243254556615
	.quad	0x3feda49cbdbfdf35              # double 0.92634427128266472
	.quad	0x3fec2eb342d7f7b4              # double 0.88070071273226924
	.quad	0x3fbcd0e5761396c0              # double 0.11256250508048549
	.quad	0x3fa58b1dc87221f0              # double 0.042076998442158842
	.quad	0x3fe248331c888eef              # double 0.57131343434272519
	.quad	0x3fe453f20f78d9dc              # double 0.63524725934876924
	.quad	0x3fd18b2d3c451596              # double 0.27411967168549134
	.quad	0x3feac36b88477edd              # double 0.83635498635336669
	.quad	0x3fe2d0a1603302b4              # double 0.5879675749675557
	.quad	0x3fcc07b495a16cc0              # double 0.21898515039615596
	.quad	0x3fd6dd3bfc9133b6              # double 0.35725307144894758
	.quad	0x3fd497ccef20ca06              # double 0.3217651686892683
	.quad	0x3fe1413b680a1c53              # double 0.5392128974934941
	.quad	0x3fef52baa05e964b              # double 0.97884875604786125
	.quad	0x3fe9825b896463a9              # double 0.7971627887192102
	.quad	0x3fdffb3a50721e14              # double 0.49970872741730088
	.quad	0x3fec9f7ec9fbb18a              # double 0.89446963739241991
	.quad	0x3fc882ab988b66f8              # double 0.19148774097885002
	.quad	0x3fe90a5a441426b3              # double 0.78251374527572748
	.quad	0x3fe974c831aa90f3              # double 0.79550561619228544
	.quad	0x3f955bfda3fc9500              # double 0.020858729490233152
	.quad	0x3fd8b54d245407d2              # double 0.38606575534515486
	.quad	0x3fedbda3aa64ebd7              # double 0.92939933090326121
	.quad	0x3fe5911f8f4d9333              # double 0.67396524418709303
	.quad	0x3fdfca0ec14f2200              # double 0.49670761945574782
	.quad	0x3fe3d65cdc730c58              # double 0.61991732651257347
	.quad	0x3fe3d7e512ea7fee              # double 0.62010434813055126
	.quad	0x3fee39e3ffaf6b61              # double 0.94456672609826964
	.quad	0x3fcb04da75ae2a9c              # double 0.2110856127367996
	.quad	0x3fd741354a9ea35a              # double 0.36335499083593492
	.quad	0x3fc3f43377a61af4              # double 0.15588992445210403
	.quad	0x3fc01d75db55ccc4              # double 0.12589905938839341
	.quad	0x3feacc56465fda56              # double 0.83744348282818737
	.quad	0x3fbca16b36200d90              # double 0.11183805533806024
	.quad	0x3fbf2729bf084558              # double 0.12169133104204855
	.quad	0x3fe1fa87d1e54890              # double 0.56183234210245026
	.quad	0x3f8d27c3a0572a80              # double 0.014236000376418589
	.quad	0x3fe56601c1b45618              # double 0.66870200951479131
	.quad	0x3fc637a643347f20              # double 0.17357328683373741
	.quad	0x3fd230bde2f95774              # double 0.28422495999745157
	.quad	0x3fa6838556e22240              # double 0.043972174507022732
	.quad	0x3fee554413c40259              # double 0.94790843830567006
	.quad	0x3fd27be0fa158e94              # double 0.28881096288953612
	.quad	0x3fdbd47ae4902de6              # double 0.43484375305771861
	.quad	0x3fba1dc89552f938              # double 0.10201696057899745
	.quad	0x3fde0a9a10dcf6c0              # double 0.4693970837287047
	.quad	0x3fdae52596b879fc              # double 0.42023601263818455
	.quad	0x3fd45449897df84a              # double 0.31764448573074289
	.quad	0x3fefccec86446f34              # double 0.99376512741171163
	.quad	0x3fe55919cc1a47ed              # double 0.66712655891228467
	.quad	0x3fe35bfdeefcfb4d              # double 0.60497948338875462
	.quad	0x3fe0bdb1e9ab1682              # double 0.52315612448065019
	.quad	0x3fc59e2ecaad89a4              # double 0.16888985535031253
	.quad	0x3fef7e56f61bcf9e              # double 0.98417232578366387
	.quad	0x3fd8c45e043a997a              # double 0.38698530590990965
	.quad	0x3fe01164597d6270              # double 0.50212304571603106
	.quad	0x3fe93083fa898ec3              # double 0.78717230732987564
	.quad	0x3fe1f7c616287fee              # double 0.56149582221769179
	.quad	0x3fbfc4e004100900              # double 0.12409782504258615
	.quad	0x3fe58e3b3799205c              # double 0.67361222132695842
	.quad	0x3fe81668ce99f981              # double 0.75273552276466671
	.quad	0x3fc89239a5c38694              # double 0.19196243852552597
	.quad	0x3fed3c5fb5e5f448              # double 0.91361985709193849
	.quad	0x3fd945c092a317b6              # double 0.39488233871486089
	.quad	0x3fde232fd55d074a              # double 0.47089763485211178
	.quad	0x3fe9a45e9d7287f2              # double 0.80131464721148249
	.quad	0x3fd1edd0509fd664              # double 0.2801399981829944
	.quad	0x3fe4db93cda52b7a              # double 0.65180387654378014
	.quad	0x3fd018030ceb40ce              # double 0.25146557103745415
	.quad	0x3fec019abe82aee6              # double 0.87519585808828704
	.quad	0x3fdba96e3cf06420              # double 0.43221622420384342
	.quad	0x3feeea1ba1f7e4d3              # double 0.96607762941780561
	.quad	0x3fda6bb31c2a68e4              # double 0.41282346487572696
	.quad	0x3fe8746e2c887730              # double 0.76421269128670666
	.quad	0x3fede8cfe147eb74              # double 0.93466943741019159
	.quad	0x3fe3200b5c5ee484              # double 0.59766166726252878
	.quad	0x3fa243165c806930              # double 0.035668085853290399
	.quad	0x3fb9249dedb99810              # double 0.098214979685139036
	.quad	0x3f8d9110e73589c0              # double 0.014436847740118774
	.quad	0x3fd5444c76204724              # double 0.33229362045050181
	.quad	0x3fcf7b45e825e844              # double 0.24594949565272561
	.quad	0x3fd38bb15a3cf9c6              # double 0.30540117084811091
	.quad	0x3fce940fc4ec46c8              # double 0.23889348140124
	.quad	0x3fbc4c53647d2528              # double 0.11053963855114957
	.quad	0x3fe3dcc0e0d0dda9              # double 0.62069744023658757
	.quad	0x3fc268344c9fe74c              # double 0.14380506268917725
	.quad	0x3fd511c1b629312c              # double 0.32920878209258109
	.quad	0x3fbea7f264637f98              # double 0.11975016547103079
	.quad	0x3fecf2494cba0170              # double 0.90457596765194914
	.quad	0x3fcc882abbc8648c              # double 0.22290548485833417
	.quad	0x3fc52e40d2956fe4              # double 0.16547403604897604
	.quad	0x3fe811575f15fd4b              # double 0.75211685725654698
	.quad	0x3fa38f48cc310cf0              # double 0.038202547956211919
	.quad	0x3fdb4be2ac0a9e70              # double 0.42650667954374111
	.quad	0x3fe89128d4b53e21              # double 0.7677196649983139
	.quad	0x3fe1ed39efeb2d03              # double 0.56020829066383759
	.quad	0x3fd2607d51b86bfc              # double 0.28713925343043889
	.quad	0x3fba9b95fe7d9358              # double 0.10393655264995283
	.quad	0x3fe11525d51bd3a1              # double 0.53383151648323601
	.quad	0x3fee6a4ebf610a7b              # double 0.95047700289462911
	.quad	0x3fd817aa17798828              # double 0.37644436161474681
	.quad	0x3fa9bc20a7156da0              # double 0.050263424297294579
	.quad	0x3fe9a79ea8d15a89              # double 0.80171139690612947
	.quad	0x3feb367fa2bb1e4d              # double 0.85040265830407125
	.quad	0x3fc440d2ddb1f86c              # double 0.15822826218567643
	.quad	0x3fe05dfdbc6b149d              # double 0.51147352981992678
	.quad	0x3fe36d2e2200b342              # double 0.60707766190680723
	.quad	0x3fc29e5bd9afa4a4              # double 0.14545772675709145
	.quad	0x3fdd63e4c15bf416              # double 0.4592220199845668
	.quad	0x3fedf4ce9fc4354b              # double 0.93613368229277094
	.quad	0x3fe1df5e3b7de48d              # double 0.5585166131924254
	.quad	0x3fd2df8eee4b663a              # double 0.29489491721105632
	.quad	0x3fd4996d58d6f2f4              # double 0.32186444926973867
	.quad	0x3fd99061e36f6e16              # double 0.39943740091777735
	.quad	0x3fe2bc56b9b1151b              # double 0.58549057262340243
	.quad	0x3fd96d062b54d646              # double 0.39727930289823055
	.quad	0x3fc0400c6a455fe4              # double 0.12695460499776268
	.quad	0x3fe77c6a7ed1ff01              # double 0.73393749970998112
	.quad	0x3fe21c645379ee2f              # double 0.56596580795252815
	.quad	0x3fe8602bd1b95502              # double 0.76173964463910715
	.quad	0x3fe2373c9bde5233              # double 0.56924276774458915
	.quad	0x3fc420c655c560b4              # double 0.15725020587956851
	.quad	0x3fe07da375b12260              # double 0.51533673273759106
	.quad	0x3fe518e07783c456              # double 0.65928672163694091
	.quad	0x3fedbfd2c79c6ebb              # double 0.92966593729530389
	.quad	0x3fd7780d048e02be              # double 0.36670232243345058
	.quad	0x3fe2242f04996005              # double 0.5669169511629667
	.quad	0x3fe08d8e8bf8008d              # double 0.51727988565109373
	.quad	0x3fd4bfb668bd7ccc              # double 0.32420120457204571
	.quad	0x3fed13c9ba063714              # double 0.90866552670351774
	.quad	0x3fb2c6454c76fcb0              # double 0.073337870758211521
	.quad	0x3fb85d22f4fade18              # double 0.095171150979574626
	.quad	0x3fe8753c6b2ccc4b              # double 0.76431103642097165
	.quad	0x3fb5f5fb92598ab8              # double 0.085784648160862953
	.quad	0x3fb67852302d24d8              # double 0.087773453485300634
	.quad	0x3fbe6641240d4fe8              # double 0.11874777918029589
	.quad	0x3fd2dc1e5ae1b43c              # double 0.29468497157251128
	.quad	0x3fe41dedc6cca860              # double 0.62865341976181455
	.quad	0x3fcf282136ce3eb4              # double 0.24341216255242204
	.quad	0x3fe9a7e5911d1a78              # double 0.80174520819203021
	.quad	0x3fe36f6f386721b5              # double 0.60735283867057055
	.quad	0x3fe0a4ad4ab0a79a              # double 0.52010216319944225
	.quad	0x3fdfcd98c718c42e              # double 0.49692363207856516
	.quad	0x3fe3ba563e19c7b2              # double 0.61649620179217934
	.quad	0x3fd2b64d24936100              # double 0.29237679073186484
	.quad	0x3fe568e2b5b5acce              # double 0.66905341615838565
	.quad	0x3fea46b6303be174              # double 0.82113179608044939
	.quad	0x3fe6c6ee337afb6b              # double 0.71178350500836751
	.quad	0x3fd689c8e57f393c              # double 0.35215971385777656
	.quad	0x3feb6096d84a9e72              # double 0.85554067844800685
	.quad	0x3fd9f37e82c57f86              # double 0.40548670550014554
	.quad	0x3fdb56f148f97614              # double 0.42718155027782356
	.quad	0x3fe999d569ff424a              # double 0.80002852156219117
	.quad	0x3fe51810bc4a9cb1              # double 0.65918766761469361
	.quad	0x3fd1d09881716d2a              # double 0.27835667267727848
	.quad	0x3fd5ccd8891733fc              # double 0.34062779796369091
	.quad	0x3feaa30273b7f1c5              # double 0.83239863015438031
	.quad	0x3fd922fab9107f94              # double 0.39275997231197235
	.quad	0x3fe6f24b04e4312d              # double 0.71707678752276183
	.quad	0x3fb685a95ef080f0              # double 0.08797701423509685
	.quad	0x3fc905f691b54fd4              # double 0.19549448122654545
	.quad	0x3fbab8c81bba85f0              # double 0.10438204457252431
	.quad	0x3fd77d0ff3fdeefc              # double 0.36700819804512697
	.quad	0x3feab22968a441ae              # double 0.83424826085870563
	.quad	0x3fd20bc3a2cc880a              # double 0.2819680299600128
	.quad	0x3fe087f3a0e2027c              # double 0.51659566328460427
	.quad	0x3fe8e7347b554ff2              # double 0.7782232674458085
	.quad	0x3fefaf300fc06a96              # double 0.9901352222107842
	.quad	0x3fefb79248217e11              # double 0.99115861976673802
	.quad	0x3fe8f809d83a72e2              # double 0.78027813179104677
	.quad	0x3fd7bccc8233445e              # double 0.37089836802357989
	.quad	0x3fdfff158322aaf6              # double 0.49994409376328919
	.quad	0x3fec06069cc50a11              # double 0.87573557490424225
	.quad	0x3fd777eeb1f8e578              # double 0.36669509296515157
	.quad	0x3fb7f79c3885ffc8              # double 0.093621982383410018
	.quad	0x3fe204c7b54f7853              # double 0.5630835095614749
	.quad	0x3fb7aab31d07a1a0              # double 0.092448420131069131
	.quad	0x3fc21d92316452fc              # double 0.14152743732179107
	.quad	0x3fe23040cfad0fa7              # double 0.56839027940485642
	.quad	0x3fd924d94a24d742              # double 0.3928740715085618
	.quad	0x3fd405d495646614              # double 0.31285585965233165
	.quad	0x3fe3b60bc5bff3e9              # double 0.61597241042147488
	.quad	0x3fe17090e9f79639              # double 0.54499097534853214
	.quad	0x3fce4bdea70aec34              # double 0.23669036060695847
	.quad	0x3fcd8a53a753e8b8              # double 0.23078389807034738
	.quad	0x3fe55c4dadec931b              # double 0.66751750917009944
	.quad	0x3fd868c8b5b1c8de              # double 0.38139550918198306
	.quad	0x3fc2947fdfe93ba8              # double 0.14515684540898843
	.quad	0x3fe479fb6940ae4a              # double 0.63989038998756453
	.quad	0x3fec0549bc116b5b              # double 0.87564551097907939
	.quad	0x3fc525f1fe5db374              # double 0.16522049827781482
	.quad	0x3fd4baa89afbb2f4              # double 0.32389273772314131
	.quad	0x3fe829c3f3775a2f              # double 0.755098319549523
	.quad	0x3feeaf074c937796              # double 0.95886578518160337
	.quad	0x3fdb6de40a9a9aa0              # double 0.42858220134295699
	.quad	0x3fefa9aa04c4a258              # double 0.9894609540106769
	.quad	0x3febcd577c5d00a2              # double 0.86881613053994422
	.quad	0x3fdcad14a3bc89aa              # double 0.44806400289430803
	.quad	0x3fe072c4b1d122fa              # double 0.51400980691786846
	.quad	0x3fd85b6dfaf4255c              # double 0.38058042056271346
	.quad	0x3fe31de50b583978              # double 0.59739925590274279
	.quad	0x3fe4edc693df8dcf              # double 0.65402535325523015
	.quad	0x3fc38682ee9abbec              # double 0.15254246378523761
	.quad	0x3f7ca0c1d53dad00              # double 0.0069892474747164091
	.quad	0x3fed60955fc0c09e              # double 0.91803997709031981
	.quad	0x3feb38d9a255000d              # double 0.85068971353030209
	.quad	0x3fd35c72769cbe0c              # double 0.30251752455930681
	.quad	0x3fed33bd0bd03679              # double 0.91256573016444442
	.quad	0x3fc806952a3153e0              # double 0.18770088730039358
	.quad	0x3fef8ef8601c853a              # double 0.98620241901168204
	.quad	0x3fe8457f3bb2ce9b              # double 0.75848352107864814
	.quad	0x3fd3001d8701914e              # double 0.2968820398730444
	.quad	0x3fe589f142ae9c81              # double 0.67308867477267154
	.quad	0x3fe0b21f5b75ac70              # double 0.52174346793380089
	.quad	0x3fe19fc1c4028f0d              # double 0.55075157435610012
	.quad	0x3feed5af68b6908c              # double 0.96358461810861362
	.quad	0x3fdb7720fc0035be              # double 0.42914604768233378
	.quad	0x3fe2a2b565eec303              # double 0.58236188801501532
	.quad	0x3fb9499413c90510              # double 0.098778967695597907
	.quad	0x3fb8377153d52e48              # double 0.094595988242127338
	.quad	0x3fe65e6aea0f43a7              # double 0.69902559008379661
	.quad	0x3fe2790200bdd65e              # double 0.57727146286806508
	.quad	0x3faf4f21a8831150              # double 0.061150600261984267
	.quad	0x3fd9070ec46216e8              # double 0.39105576684992949
	.quad	0x3fe054b48ad9d9ff              # double 0.51033999556858578
	.quad	0x3fd89d6b855e6802              # double 0.38460815452856434
	.quad	0x3fc161b5929e80dc              # double 0.13579435023439757
	.quad	0x3fd02323e3ceb1fa              # double 0.25214478728119583
	.quad	0x3fe5e4b98041c57d              # double 0.68417048502139688
	.quad	0x3febc2f992c3dc58              # double 0.86755064644865865
	.quad	0x3fd39330b253c114              # double 0.3058587781406612
	.quad	0x3fc8bc1e1cebc6b0              # double 0.19324089443357684
	.quad	0x3fbbd1a4214accd0              # double 0.10866761982724715
	.quad	0x3fa690b5db69a330              # double 0.044072802575846004
	.quad	0x3fe9dcea3f63d73a              # double 0.80821716671810084
	.quad	0x3fe00b29e96ba7ee              # double 0.50136275854060641
	.quad	0x3fec9ef838cebf87              # double 0.89440547080265353
	.quad	0x3fe2ad95236bad6b              # double 0.58368927877510879
	.quad	0x3fed9c6373c9be15              # double 0.92534039130072421
	.quad	0x3fb864d7f4011a70              # double 0.09528875071655718
	.quad	0x3fcd7432a4a2911c              # double 0.23010857619113601
	.quad	0x3fe9401e040faca2              # double 0.78907681267937257
	.quad	0x3fdcc0b7cc1cb848              # double 0.44926257069426301
	.quad	0x3fdb1e5a69d840ec              # double 0.42372761093521549
	.quad	0x3fd944f1c1b01158              # double 0.39483302988835112
	.quad	0x3fe0792f1d97a2c2              # double 0.51479297427894033
	.quad	0x3fc5bb4631c3c49c              # double 0.16977765493314656
	.quad	0x3fe254a5ca38eb40              # double 0.57283296104956349
	.quad	0x3fd0e0a8b596deb4              # double 0.26371209843953669
	.quad	0x3fe071b94d8064d3              # double 0.51388230454463224
	.quad	0x3fdd55390cb87770              # double 0.45832658998721509
	.quad	0x3febcdc6f88e75c8              # double 0.86886929079235475
	.quad	0x3feb2f91a95374ca              # double 0.8495567614696935
	.quad	0x3fe1b1a74df7e9a4              # double 0.55293622234539841
	.quad	0x3fee045c3dfff861              # double 0.93803226575233734
	.quad	0x3fe6f440093ed70e              # double 0.71731569104915294
	.quad	0x3fe58b27892c5abc              # double 0.67323662559177633
	.quad	0x3fe7a04a9daba229              # double 0.73831682963379308
	.quad	0x3fdbb6cd43c6c73e              # double 0.43303233736797953
	.quad	0x3fee8b3afeb295bd              # double 0.95449590440391996
	.quad	0x3fb52829bcff3630              # double 0.082644089357210459
	.quad	0x3fdaadde0da76718              # double 0.41686202367201153
	.quad	0x3fe25886b1df3ab2              # double 0.5733064149915974
	.quad	0x3fb36af4347edbc8              # double 0.075850737396520818
	.quad	0x3feaa43c6032f800              # double 0.83254832066427298
	.quad	0x3fc3fc7902e0becc              # double 0.15614235535166754
	.quad	0x3fe806f65c32dbfa              # double 0.75084989554932169
	.quad	0x3fefcd6200892457              # double 0.99382114510184293
	.quad	0x3fdcf5d0e08e4736              # double 0.4525034134795648
	.quad	0x3fbd7cd2575f92e8              # double 0.11518587716234274
	.quad	0x3fcbbb3b6b503358              # double 0.21665137042910021
	.quad	0x3fe64f2ed64e8229              # double 0.69716588837406335
	.quad	0x3fe974b1a097f2e2              # double 0.79549485555579857
	.quad	0x3fee079876ce2ae7              # double 0.93842719272774111
	.quad	0x3fe43dc82bfa3748              # double 0.63254173840844263
	.quad	0x3f15103d1c3f4000              # double 8.0350618247182481E-5
	.quad	0x3fefef4a03e3e9bf              # double 0.99796009788342832
	.quad	0x3fedddcedcb3a73e              # double 0.9333261786061724
	.quad	0x3feee2cc7a1f38ce              # double 0.96518539287515082
	.quad	0x3feadea3a5921900              # double 0.83967764223123709
	.quad	0x3fe49c0ebe0c813a              # double 0.64404999846377753
	.quad	0x3fef205cfa6958e5              # double 0.97270058544634407
	.quad	0x3fe34ae4cbfeb34c              # double 0.60289230196722476
	.quad	0x3fc719e364616c64              # double 0.18047754670519389
	.quad	0x3fe58212cb63e0f0              # double 0.67212810253752586
	.quad	0x3fe2c9f87db22e30              # double 0.58715462255481121
	.quad	0x3fe3c6e15db8999a              # double 0.6180273848047364
	.quad	0x3fd0fc8505dc0a86              # double 0.26541257450313827
	.quad	0x3fd2c1dc897d4242              # double 0.293082365290534
	.quad	0x3fc9f83da6cec230              # double 0.20288820881752789
	.quad	0x3fc17c22df152dc8              # double 0.13660083668433587
	.quad	0x3fbd3e01e2ce8b68              # double 0.11422740733409642
	.quad	0x3fc8a40e1e4149b4              # double 0.19250656583115033
	.quad	0x3fe2408b222f54ba              # double 0.57037884403930339
	.quad	0x3fcfdf689dca8ad0              # double 0.24900539116523257
	.quad	0x3feab512be4baf56              # double 0.83460366408460618
	.quad	0x3feee733ad36ee93              # double 0.96572288351986157
	.quad	0x3fda2d82dfc1b9be              # double 0.40902778483623681
	.quad	0x3f7c4580ae9b7480              # double 0.0069022204058600822
	.quad	0x3fd3d272bd9c5a9a              # double 0.3097197391192964
	.quad	0x3feb57f472aa1fae              # double 0.85448667903346176
	.quad	0x3feb155f5127c4a9              # double 0.84635892725613815
	.quad	0x3fdd14f5db2f5f76              # double 0.45440431980886531
	.quad	0x3fe22bbe66f3fe20              # double 0.56783981426264418
	.quad	0x3fe886ec95b07992              # double 0.76647023426248695
	.quad	0x3fed8f646ea9f2bc              # double 0.92375394453082249
	.quad	0x3fc247e2dfd96814              # double 0.14281879358424077
	.quad	0x3fe2cb24d9011686              # double 0.58729784377710881
	.quad	0x3feb78a289eaa9f1              # double 0.85847594200941846
	.quad	0x3fc390f64acebf40              # double 0.15286139157023548
	.quad	0x3fe910694eb53154              # double 0.78325333950628328
	.quad	0x3fe99b03513f0295              # double 0.80017248028169041
	.quad	0x3fb57a6c08d46b78              # double 0.083899261623100574
	.quad	0x3fe10368fba8b616              # double 0.53166627075342165
	.quad	0x3fe6371a4516a4bc              # double 0.69422639364088168
	.quad	0x3feff1506a1e106b              # double 0.99820728994428742
	.quad	0x3fd9267b43c6a874              # double 0.39297372454405566
	.quad	0x3fe7b7e26d5ad5e8              # double 0.74119683607449094
	.quad	0x3fdaa9556b4d56a2              # double 0.41658530691834461
	.quad	0x3fc38fcf01f05660              # double 0.15282619089764449
	.quad	0x3fadb34b9342cef0              # double 0.058008538938706056
	.quad	0x3feb909a23313f45              # double 0.86140162347326366
	.quad	0x3fe9c21d0aae14a2              # double 0.80494548879564243
	.quad	0x3fd4d1e7f12b0a42              # double 0.3253116469533418
	.quad	0x3fd6bfbb52c26f5e              # double 0.35545237619384362
	.quad	0x3fee804af8efb6a4              # double 0.95316074962984886
	.quad	0x3fb94d56335d0b48              # double 0.098836314716249096
	.quad	0x3f7255e7a4634c00              # double 0.0044764565011119473
	.quad	0x3fe278d302ae9d27              # double 0.57724905513615432
	.quad	0x3fdc65e09c028f26              # double 0.44371810183860061
	.quad	0x3f905b70a20fffa0              # double 0.0159738158145043
	.quad	0x3feeeda3bcb35869              # double 0.96650874000148434
	.quad	0x3fe4ea23df2640ba              # double 0.65358155807373142
	.quad	0x3fd43ac768eaae3a              # double 0.31608758207105192
	.quad	0x3feaeb450d14dbb8              # double 0.84121944956756689
	.quad	0x3fe66767039c4aa7              # double 0.7001223631399015
	.quad	0x3fd15bec25619660              # double 0.27123550081737413
	.quad	0x3fdd2dc1f349438e              # double 0.4559178233949347
	.quad	0x3fd7b07bf3b13afe              # double 0.3701467399413757
	.quad	0x3fef4457a866c312              # double 0.97709257975484065
	.quad	0x3fd26d3bd7b19ef0              # double 0.28791709960795142
	.quad	0x3fe580ef92a82529              # double 0.67198923725041937
	.quad	0x3fa621e186c60d10              # double 0.043227241231784785
	.quad	0x3fe8efa3e0ec9817              # double 0.77925294809824919
	.quad	0x3fedb792c48daebd              # double 0.92865885152192329
	.quad	0x3feb098ac15a4466              # double 0.84491479648762602
	.quad	0x3fef304db224af77              # double 0.97464642327893968
	.quad	0x3fe8b935efeae3d6              # double 0.772608727063125
	.quad	0x3fe925ed46e9bedf              # double 0.78587974405487759
	.quad	0x3fcfcd56d866c1e8              # double 0.24845395628427913
	.quad	0x3fe8c218f12b3216              # double 0.77369353392856755
	.quad	0x3fcd09cdc5cad1b4              # double 0.2268616882116824
	.quad	0x3feba7692a688484              # double 0.8641858890806735
	.quad	0x3fe5c70badfb3b74              # double 0.68054756146180617
	.quad	0x3fe839e4c6143f7a              # double 0.75706709563563312
	.quad	0x3fce2c1512e6a0b8              # double 0.23572028563399328
	.quad	0x3fd88b645405abc0              # double 0.38350780682838703
	.quad	0x3fefa82eedfd057f              # double 0.98928019029715119
	.quad	0x3fe553088907f870              # double 0.66638590587514379
	.quad	0x3fe3039ffa71d2d4              # double 0.59419249453511691
	.quad	0x3fd894b4cd783cbe              # double 0.38407630982778673
	.quad	0x3fe6777c74c1dc2a              # double 0.70208571247247176
	.quad	0x3fb8405e6b822440              # double 0.094732190367850855
	.quad	0x3facb9feb84452c0              # double 0.056106529229656754
	.quad	0x3fef762d9a61c4d9              # double 0.98317604210583475
	.quad	0x3fe4c91284a63047              # double 0.64954496295968844
	.quad	0x3fed8a8c72b2ad6a              # double 0.92316267396874463
	.quad	0x3fefe28a95af6ae7              # double 0.99640397296329019
	.quad	0x3fd32acd0b23f4e0              # double 0.29948736274657328
	.quad	0x3fe85273a0b4e39b              # double 0.76006490123755854
	.quad	0x3fe9a97570c4fe8e              # double 0.80193588280958905
	.quad	0x3fe504aa899f51a3              # double 0.65681959990847749
	.quad	0x3fdab5dbf35a1afe              # double 0.41734980358926055
	.quad	0x3fe5ae92ba864b9b              # double 0.67756020002922257
	.quad	0x3fde63fc281b2bf0              # double 0.4748525993024364
	.quad	0x3fea92c06c329c7e              # double 0.83041401989329677
	.quad	0x3f9d1e42cb917f80              # double 0.028435748743845135
	.quad	0x3feb05d4abc13939              # double 0.84446176095824577
	.quad	0x3fc939c5caf010ec              # double 0.19707558068342423
	.quad	0x3fefb5af69d51664              # double 0.99092837019334156
	.quad	0x3fee7dc45bac9868              # double 0.95285241990201274
	.quad	0x3fe89a140b8e8788              # double 0.76880838639429872
	.quad	0x3fe4385aeb3d595a              # double 0.63187929101222129
	.quad	0x3fe585c86b557083              # double 0.67258091891882577
	.quad	0x3fc72490b7651a68              # double 0.18080338435011645
	.quad	0x3fe0b74c3c969a93              # double 0.5223752196660193
	.quad	0x3fd8ada439bed704              # double 0.38559823645788094
	.quad	0x3fb4b9e7963841b0              # double 0.080961679625267235
	.quad	0x3fcd1efbac602a54              # double 0.22750802914409241
	.quad	0x3fe129f1de5626ce              # double 0.53637021470168533
	.quad	0x3fdef29bc32621b2              # double 0.48355764443888483
	.quad	0x3fdbfc3e3c629792              # double 0.43727069756493464
	.quad	0x3fd00c5823f39220              # double 0.25075343619235646
	.quad	0x3fea630c11987573              # double 0.82459071575764964
	.quad	0x3fa83a2ebf9a7c70              # double 0.04731889809522094
	.quad	0x3febaaa4bd906f52              # double 0.86458050750978033
	.quad	0x3fed9d391ffec16f              # double 0.92544227837610815
	.quad	0x3fee881d16a629bf              # double 0.95411543296477663
	.quad	0x3fb840e707b108f0              # double 0.094740332963769935
	.quad	0x3feb8f14d61509c6              # double 0.86121599018979889
	.quad	0x3fc0ca733697c5f4              # double 0.1311782852713318
	.quad	0x3fe0aec6195e2226              # double 0.52133469538336352
	.quad	0x3fee5dc41acea768              # double 0.94894604907788693
	.quad	0x3fe9c7245811b52f              # double 0.80555932236680927
	.quad	0x3fee332d47b68d75              # double 0.94374717718566947
	.quad	0x3fc5f2a187871f04              # double 0.17146700971192541
	.quad	0x3fe0a1447c3e9e15              # double 0.51968597666285865
	.quad	0x3fdd0bae9b381bc8              # double 0.45383801611063435
	.quad	0x3feddfbf22263faf              # double 0.93356281919294826
	.quad	0x3fc83247edfd8c40              # double 0.18903445358873405
	.quad	0x3feb1bf425c60596              # double 0.84716231706277045
	.quad	0x3fe2db2dbd9168a0              # double 0.58925520920753982
	.quad	0x3fd248798279ea50              # double 0.28567350141353121
	.quad	0x3fd7af337d52c6e8              # double 0.3700684284077469
	.quad	0x3fe028dcce2651da              # double 0.50498810065851818
	.quad	0x3fe3833a4669357e              # double 0.60976899864333212
	.quad	0x3f9620897dccaf00              # double 0.021608494094080832
	.quad	0x3fe5655303dfbedc              # double 0.6686186862625294
	.quad	0x3fb992f1d2879570              # double 0.099898446940263729
	.quad	0x3fe9a78dbf5fcc1c              # double 0.80170333268904725
	.quad	0x3fcde57aba9839fc              # double 0.23356565581384803
	.quad	0x3fd2dbb2415e9c44              # double 0.2946591986059881
	.quad	0x3fea857e11336939              # double 0.82879546508346558
	.quad	0x3fe35742dff4986b              # double 0.60440200558947532
	.quad	0x3fd9bf139eb8a13e              # double 0.40228739261739921
	.quad	0x3fcbf171a5c561b8              # double 0.21830578417099189
	.quad	0x3fdd0e143a3f412c              # double 0.45398431480591017
	.quad	0x3fcc8b9ef421f0b4              # double 0.22301089211021508
	.quad	0x3fccf3533706bae0              # double 0.22617569147902028
	.quad	0x3fd1309d48bcd550              # double 0.26859218695911569
	.quad	0x3fe7b980badfed88              # double 0.74139439105003735
	.quad	0x3fe7c1ebb38c8279              # double 0.74242196148050177
	.quad	0x3fdf407211a97386              # double 0.48830844616696145
	.quad	0x3fedb428300a9a69              # double 0.92824181922044346
	.quad	0x3fcacefa026013f8              # double 0.20944142452222514
	.quad	0x3fc54de53f3cf118              # double 0.16643968189044567
	.quad	0x3fde7926cc5f760c              # double 0.47614450414934661
	.quad	0x3fe5edd9d73db179              # double 0.68528453864341465
	.quad	0x3fe0a9791778d41a              # double 0.52068762382862421
	.quad	0x3fecaa0abb4f010a              # double 0.89575707038605512
	.quad	0x3fe330153dbd4359              # double 0.59961950357874649
	.quad	0x3fd7d274f1320740              # double 0.37222026399841823
	.quad	0x3fe26b2785ff30b8              # double 0.57558036967522863
	.quad	0x3fc906f0e3f1182c              # double 0.1955243218419026
	.quad	0x3fea99b75eaa23a2              # double 0.83126419533902074
	.quad	0x3fe0568fa17c118a              # double 0.51056653537720931
	.quad	0x3fdca794c843c80e              # double 0.44772834355455948
	.quad	0x3fb76a76017a8cd8              # double 0.091468215332997871
	.quad	0x3f891214a7c0ba40              # double 0.012241517419252834
	.quad	0x3fdbc8e37d398798              # double 0.43413626889206958
	.quad	0x3fec8c9d6b445491              # double 0.8921649069840375
	.quad	0x3fc0803ea33ef1a0              # double 0.12891371699323617
	.quad	0x3fea9a007cc0e6ec              # double 0.83129906049654556
	.quad	0x3fb625b8a120c000              # double 0.086513079965470752
	.quad	0x3fb34628142fc290              # double 0.075289254120216364
	.quad	0x3fcbe21f17224554              # double 0.21783817891677393
	.quad	0x3fed923add9853c1              # double 0.92410033493307975
	.quad	0x3fa0e91156017230              # double 0.033028165577637103
	.quad	0x3fe97dc87ab558d0              # double 0.79660438505632136
	.quad	0x3fee9c587ff962dd              # double 0.95658516879037914
	.quad	0x3fe06be88f4a907c              # double 0.51317241655898682
	.quad	0x3fe64ba1fbd43865              # double 0.696732513288009
	.quad	0x3fed0dd79aed1a28              # double 0.90793972262401201
	.quad	0x3fe6a8c4b8eb76b2              # double 0.70810161702293883
	.quad	0x3fc9e03cef4f75b8              # double 0.20215570149495732
	.quad	0x3fe82032be35c850              # double 0.75393044615180749
	.quad	0x3fecbde4276a595b              # double 0.89818008135152227
	.quad	0x3fcdf93107d630a0              # double 0.23416722185755123
	.quad	0x3fae48590a2220e0              # double 0.059145719992615531
	.quad	0x3fe309804d9e7c2c              # double 0.59490981254555697
	.quad	0x3fda08ca2708ccf0              # double 0.40678647815657509
	.quad	0x3f7d46894b961700              # double 0.0071473467918445888
	.quad	0x3fe9191ef9502e08              # double 0.78431652730927315
	.quad	0x3fd19eda82267610              # double 0.2753206511495998
	.quad	0x3fee0cd0a708d1b4              # double 0.93906433700481395
	.quad	0x3fd0a1df829918b2              # double 0.25987994912828605
	.quad	0x3fd4b539cdf1b6c4              # double 0.32356114494073673
	.quad	0x3fb830745b491500              # double 0.094489357267850238
	.quad	0x3faa8d4726877f40              # double 0.05185911507919494
	.quad	0x3feb5bbeab14fe88              # double 0.85494931616263248
	.quad	0x3fa376eb72093790              # double 0.038016660375986722
	.quad	0x3fcf30b274c6bcfc              # double 0.24367361738175208
	.quad	0x3fe3459e44096f56              # double 0.60224831856201422
	.quad	0x3feb169f8e9da239              # double 0.84651162962570148
	.quad	0x3fd13fc2d4a6318e              # double 0.26951666609309022
	.quad	0x3fda15cb8c5d7e50              # double 0.4075802679780951
	.quad	0x3fd3ce0f654af008              # double 0.30945191280238804
	.quad	0x3fe395b82d934ed7              # double 0.61202629949044762
	.quad	0x3febeff3d3917794              # double 0.87304107019348231
	.quad	0x3fe528a96ee3216b              # double 0.66121360452329492
	.quad	0x3f9cb95fa69777e0              # double 0.028050894301365648
	.quad	0x3fe36c553c06b0c3              # double 0.60697423671583584
	.quad	0x3fea012029e7d39e              # double 0.81263740715677435
	.quad	0x3fde7ca2d64321b0              # double 0.47635718273206873
	.quad	0x3feba5497c92f6b5              # double 0.86392664271234898
	.quad	0x3fecaa9e8c097b3d              # double 0.89582755423530325
	.quad	0x3fd533b59debe72e              # double 0.33128109380742188
	.quad	0x3fe8457299e3b5d0              # double 0.75847749764005279
	.quad	0x3fea51dfa749cc4a              # double 0.82249434159747037
	.quad	0x3fd1a333cd92f600              # double 0.27558608127205275
	.quad	0x3fae965370d56c50              # double 0.059740645908015311
	.quad	0x3fca72670cfeb670              # double 0.20661628851432878
	.quad	0x3fe3f4f8969bbfaf              # double 0.62365369239522817
	.quad	0x3fd4297cda380e98              # double 0.31503220854231406
	.quad	0x3fde0be7d4ecf2f8              # double 0.46947665971292407
	.quad	0x3fe8cc626c6c4708              # double 0.77494927574500228
	.quad	0x3fe6b703e6c1bd99              # double 0.70984072751700744
	.quad	0x3fdc2ecb0a184d5c              # double 0.4403560255606942
	.quad	0x3fcc263deb30d310              # double 0.2199170492546263
	.quad	0x3fd17b1b6fe32b1e              # double 0.27313886572362545
	.quad	0x3feaa8528159eaae              # double 0.83304715408242713
	.quad	0x3fee4f1fefc8eade              # double 0.94715878327346181
	.quad	0x3fe8bddbbf222822              # double 0.77317607241389319
	.quad	0x3fcc90f8d4fc6af0              # double 0.22317419433314667
	.quad	0x3fe9cd16a77c74f1              # double 0.80628521644726281
	.quad	0x3fdf19350fc41cbe              # double 0.4859135297742333
	.quad	0x3fe7b8f71cfbab2d              # double 0.74132877026327082
	.quad	0x3fead2a99508fabb              # double 0.83821562870419741
	.quad	0x3fd25689b878bd78              # double 0.28653185858544061
	.quad	0x3feb9214ad8709b5              # double 0.86158212558830505
	.quad	0x3fdf22ffa20d7a48              # double 0.48651114297345943
	.quad	0x3fc1ada3b354b5a0              # double 0.13811155563727784
	.quad	0x3fe869087247e884              # double 0.76282141037451411
	.quad	0x3fb029afd9997cb8              # double 0.063136091828243646
	.quad	0x3fa4544d0cc59110              # double 0.039705665406275625
	.quad	0x3fd13a862196c552              # double 0.26919701843424548
	.quad	0x3fe9eb44f6aa7d39              # double 0.80996940781543636
	.quad	0x3fd106ccf05b4bca              # double 0.26604007217718773
	.quad	0x3fe1fb320373a0f3              # double 0.56191349672465518
	.quad	0x3fddac8bb4a8aff0              # double 0.46365635530923921
	.quad	0x3fcd3e6c22e66a74              # double 0.22846748069862921
	.quad	0x3fe5693444cc7469              # double 0.66909230649220064
	.quad	0x3fe6f5f1cdecae4e              # double 0.71752252788196258
	.quad	0x3fd9aa013d29d512              # double 0.4010012719439412
	.quad	0x3fd90904de6f7864              # double 0.39117547723970447
	.quad	0x3fe3b1647521f022              # double 0.61540434720473436
	.quad	0x3fb9654e44133840              # double 0.099202052707568988
	.quad	0x3fd969ab53859b70              # double 0.39707453876911014
	.quad	0x3fd8b51b511f9e20              # double 0.38605387613503872
	.quad	0x3fe435f486e0f4d5              # double 0.63158632606032461
	.quad	0x3fd65308e56fbc24              # double 0.34881803899674169
	.quad	0x3fd0bae4d0795a14              # double 0.2614070926551062
	.quad	0x3fd340a5284b1210              # double 0.30082062659155984
	.quad	0x3fe18d0f97cde7ca              # double 0.54846934937744973
	.quad	0x3fcf282917ffd4d4              # double 0.24341310188143572
	.quad	0x3fe42671ba8cc63c              # double 0.62969290195014294
	.quad	0x3fe7712a5c2b7e7d              # double 0.73256414415295945
	.quad	0x3fe0d4208eb7eb08              # double 0.52589443087285392
	.quad	0x3fd09f6e5dda7dc4              # double 0.25973090329531723
	.quad	0x3fec7d6946e79f8f              # double 0.89030898903455291
	.quad	0x3fe51a37bd876c63              # double 0.65945040719396919
	.quad	0x3fee44c80b5f2910              # double 0.94589616986312031
	.quad	0x3fea241ab8082016              # double 0.81690727180194034
	.quad	0x3f7fef3a19296000              # double 0.0077965039696081817
	.quad	0x3fba652366ab2b80              # double 0.10310574776228343
	.quad	0x3fb7cdbcd7e75d18              # double 0.092983057700042671
	.quad	0x3fefe42335c6f962              # double 0.99659882071845751
	.quad	0x3fe5b554eef0a4f8              # double 0.6783852259442531
	.quad	0x3fed3f3d52bd6cf8              # double 0.91396967086930569
	.quad	0x3fe920d07780c34c              # double 0.78525565472055225
	.quad	0x3fd80a06b0ed3d06              # double 0.37561194684981591
	.quad	0x3fe5345d1680c6ff              # double 0.66264204402088456
	.quad	0x3fe859b6d8842968              # double 0.76095144546824844
	.quad	0x3fe9c27332cbd39d              # double 0.80498657151348463
	.quad	0x3fd512fdb634ad4e              # double 0.32928412240535898
	.quad	0x3fe1bb67ef000c42              # double 0.55412670783733398
	.quad	0x3fd43e4f786649ae              # double 0.31630312688607887
	.quad	0x3fd289c4583da91a              # double 0.28965862862846026
	.quad	0x3fdc08c2a8073338              # double 0.43803469094273195
	.quad	0x3fee10df20b66234              # double 0.93955952061793945
	.quad	0x3fe2d4222f9c0d7f              # double 0.58839520739313389
	.quad	0x3fed11b5c9bf3ac2              # double 0.90841187862118766
	.quad	0x3fce071c38d496c0              # double 0.23459198737071141
	.quad	0x3feb12e41b138b03              # double 0.84605603493068349
	.quad	0x3fe316e53abc9131              # double 0.59654485198965379
	.quad	0x3fef06089a811693              # double 0.96948652435885873
	.quad	0x3fbaddef52fda1a8              # double 0.10494895721570308
	.quad	0x3fd839fb2c50bc50              # double 0.37853888824151216
	.quad	0x3feb6dc8c6bd46b1              # double 0.85715140167504533
	.quad	0x3feceb9b01d27bcb              # double 0.90376043659113614
	.quad	0x3fe69e9c04a6be77              # double 0.70686150463548258
	.quad	0x3fdf353ddc1e341c              # double 0.48762461181542149
	.quad	0x3fc5df1d0816fa40              # double 0.17087138075835817
	.quad	0x3fdc065f4c192200              # double 0.43788893157446296
	.quad	0x3fe50fab97bc2ad1              # double 0.65816287647006722
	.quad	0x3fe40dbe3cd796d2              # double 0.62667762644988501
	.quad	0x3fcde2fb95064c88              # double 0.23348946358291678
	.quad	0x3fbc4d11303c41f8              # double 0.11055095126744863
	.quad	0x3fcd13fbb9a2a3e0              # double 0.22717234195923108
	.quad	0x3fdbe70aa21ab0e8              # double 0.43597665625089954
	.quad	0x3fd7a088103f18b4              # double 0.36917306505746272
	.quad	0x3fe408c1fef73904              # double 0.62606906698218312
	.quad	0x3fee8022b8e570c5              # double 0.95314155685948576
	.quad	0x3fecb6ff90ce98fd              # double 0.89733866007443874
	.quad	0x3fe10ece81a95448              # double 0.53305745434284635
	.quad	0x3fd1ee7fc0a6805e              # double 0.28018182576670891
	.quad	0x3fcc30e949136204              # double 0.22024265354299655
	.quad	0x3fc94214cd1fc30c              # double 0.19732913986037948
	.quad	0x3fec5a10f60148ab              # double 0.88599441573957927
	.quad	0x3fe94ca9a14f1598              # double 0.79060822969101974
	.quad	0x3fb8fe4068bfcab8              # double 0.097629571507961255
	.quad	0x3fc830a43569e2f4              # double 0.18898441894614104
	.quad	0x3fcb7f34f49f58d4              # double 0.21481954521613622
	.quad	0x3fe249d369fc7236              # double 0.57151194286740892
	.quad	0x3f7c6455f49dd680              # double 0.0069316251409553553
	.quad	0x3fec706d7df26a06              # double 0.8887240848446829
	.quad	0x3fe56229e92dab4d              # double 0.66823287527709285
	.quad	0x3feacfebbd11e104              # double 0.83788096358969754
	.quad	0x3f999b091de7cde0              # double 0.025005476427350959
	.quad	0x3fe03ee26e74df44              # double 0.507676330314077
	.quad	0x3f57e80e07c1aa00              # double 0.0014591347708355906
	.quad	0x3fcaa0a4921bbb3c              # double 0.20802743086047737
	.quad	0x3fe920c81e427105              # double 0.78525167379442051
	.quad	0x3fc995c4afc9cecc              # double 0.19988306601918848
	.quad	0x3fe904848b41b983              # double 0.78180148314076836
	.quad	0x3feaf445d9923fa7              # double 0.84231846327201232
	.quad	0x3fef20d5e8e97de1              # double 0.9727582501472477
	.quad	0x3fee05dba2bb9da6              # double 0.93821508201374537
	.quad	0x3fb260f699d28220              # double 0.071792042307159409
	.quad	0x3fdaf964968b7dd2              # double 0.42147173597001342
	.quad	0x3fe911cbae596ada              # double 0.78342231800646833
	.quad	0x3fa691c44232bf80              # double 0.044080861168708019
	.quad	0x3febe7de02279c1e              # double 0.87205410405011086
	.quad	0x3fc50f6a17c65dac              # double 0.16453291092760247
	.quad	0x3fe5b50026421417              # double 0.67834479782379986
	.quad	0x3fb1d1c511223010              # double 0.069607083018297766
	.quad	0x3fd4e09f6737c220              # double 0.32620987968314985
	.quad	0x3fd8d6f5150acaca              # double 0.38811995558641554
	.quad	0x3fe4e171d643ba93              # double 0.65252010201023081
	.quad	0x3fce5f3a4bcdf7fc              # double 0.23728111935992036
	.quad	0x3fe373140aeb5f26              # double 0.60779764301966988
	.quad	0x3fed318c92740ff6              # double 0.91229847530530495
	.quad	0x3fc8b08eb14201cc              # double 0.19288810401123013
	.quad	0x3fe8683014391829              # double 0.76271823835191299
	.quad	0x3fecb4e03702543e              # double 0.89707957023586693
	.quad	0x3fe7ef88ab63b581              # double 0.7479899737788146
	.quad	0x3fd2e2af60a02af4              # double 0.29508575855349695
	.quad	0x3feeec288fc11de7              # double 0.96632793499969416
	.quad	0x3fc60832954739ac              # double 0.17212517060256738
	.quad	0x3fe608d7fb09c98d              # double 0.68857955008415817
	.quad	0x3fe85b94ba1aa476              # double 0.76117931698276098
	.quad	0x3fd5822f77dba47e              # double 0.33607088761215909
	.quad	0x3fb0ce3995724ab8              # double 0.065646742807340952
	.quad	0x3fe824ac4e5e2415              # double 0.75447669321249811
	.quad	0x3fc42bb481954ba8              # double 0.15758377387336719
	.quad	0x3fe80b036ae7973b              # double 0.75134440307440487
	.quad	0x3fe2522ae192426d              # double 0.57253021294498085
	.quad	0x3fe59b2314942a8b              # double 0.67518762606899096
	.quad	0x3fe3791ad606b591              # double 0.60853330423349139
	.quad	0x3fe2386c42c0ee10              # double 0.56938756025141579
	.quad	0x3f8ad3dbdfb06740              # double 0.013099401248883091
	.quad	0x3fe9561903f0a160              # double 0.7917599751427069
	.quad	0x3fe97fb752bb4ae3              # double 0.79684034498708589
	.quad	0x3fd471d6e03dea64              # double 0.31944820307368205
	.quad	0x3fe03b0cf16bd789              # double 0.50720832016553274
	.quad	0x3fe19dbe4180b522              # double 0.55050576013096397
	.quad	0x3fdcc0b8bc9e64d8              # double 0.44926279468343244
	.quad	0x3fbe22669add7d20              # double 0.11771241455925407
	.quad	0x3fc49619cd6bc5e8              # double 0.16083071260759074
	.quad	0x3fedc153841653a4              # double 0.92984939382823883
	.quad	0x3fb6ccf8d3f18870              # double 0.089065124267593054
	.quad	0x3feab9d177fc13b2              # double 0.8351828902674383
	.quad	0x3fda0528af0c098c              # double 0.40656487554965604
	.quad	0x3fd62adb74fc317e              # double 0.34636579918221588
	.quad	0x3fe4e502688c0d58              # double 0.65295524997092524
	.quad	0x3fe8757f8db47900              # double 0.76434304882766924
	.quad	0x3fd95364cb1c5c82              # double 0.39571494898832082
	.quad	0x3fcb5db36ade34a4              # double 0.21379702299274073
	.quad	0x3fd95170335bb87e              # double 0.39559559836823854
	.quad	0x3fdf462a0178311a              # double 0.48865747588640007
	.quad	0x3fdcc16cae571536              # double 0.44930569672972653
	.quad	0x3fbfe8863d88d848              # double 0.12464179041202883
	.quad	0x3fdcc8bdf2a7fe38              # double 0.44975231835266838
	.quad	0x3fd09d2b5132b1de              # double 0.2595928471517065
	.quad	0x3fc01642082147c4              # double 0.12567925831768723
	.quad	0x3fd6caa66578606c              # double 0.35611877354813859
	.quad	0x3fe60479e6cdf643              # double 0.68804640845309739
	.quad	0x3fe5904ea4c85f1f              # double 0.67386562523003934
	.quad	0x3fdf4f1cc1e48d72              # double 0.48920363364069097
	.quad	0x3fe692989987984a              # double 0.7053950308443373
	.quad	0x3fdcf03f349dc4ea              # double 0.45216350687321827
	.quad	0x3fe09d3db98a1c8c              # double 0.5191944717233965
	.quad	0x3fed75def3c74dce              # double 0.92063853848451926
	.quad	0x3fd3fd4e1c3a1eb6              # double 0.31233551746889121
	.quad	0x3fe154af6ec9c389              # double 0.54158755911167689
	.quad	0x3f942c653ec28de0              # double 0.019700605350079559
	.quad	0x3fbb88e7017b7d40              # double 0.10755771433058658
	.quad	0x3fd481938ef173c4              # double 0.32040871581358155
	.quad	0x3fd5ec3488002c9a              # double 0.34254182130161726
	.quad	0x3fe31d7457d561cd              # double 0.59734551577553818
	.quad	0x3fc7947a30a205d0              # double 0.18421866774228457
	.quad	0x3fe2285065d87db9              # double 0.56742114917499642
	.quad	0x3faedf12bf033b80              # double 0.060295663659068133
	.quad	0x3fe968800bc094da              # double 0.79400636954656112
	.quad	0x3fdba070fc0c19e6              # double 0.43166756261817196
	.quad	0x3fe94bbfc109fd63              # double 0.7904967088979159
	.quad	0x3fe755d9d82aeed8              # double 0.72922985286956088
	.quad	0x3fb3a2a7421aa0e8              # double 0.076700643194843487
	.quad	0x3fea8292b2859430              # double 0.82843909137284832
	.quad	0x3fee27c2a91a4194              # double 0.94235356357426036
	.quad	0x3fdb7b27335f3136              # double 0.42939167038709358
	.quad	0x3fe28cfb05dd9a83              # double 0.57970954080231285
	.quad	0x3fec79b258c534b7              # double 0.88985555017429518
	.quad	0x3fc46f0b0f2efb6c              # double 0.15963876954443934
	.quad	0x3fee7df7664e78f6              # double 0.952876758401344
	.quad	0x3fe1ca48e913255d              # double 0.55594296953601552
	.quad	0x3fe9437e63da9ea4              # double 0.78948897841197096
	.quad	0x3fe4259307db004b              # double 0.62958671125671495
	.quad	0x3fe97301add87812              # double 0.79528888658728847
	.quad	0x3fbf2b9793649de0              # double 0.12175891254866356
	.quad	0x3fcc29f7a78ec1f4              # double 0.22003074342275364
	.quad	0x3fe11e067a5fccf0              # double 0.53491519833769807
	.quad	0x3fdbcaabd0bf6714              # double 0.43424506555094067
	.quad	0x3fdc5fc717c03b52              # double 0.44334580726074535
	.quad	0x3fd97e11923fb3e0              # double 0.39831961900818946
	.quad	0x3fe15a7598588f6f              # double 0.54229240183893335
	.quad	0x3fbe76db3f98efb8              # double 0.11900110533400621
	.quad	0x3fcfe8c3810ee4d0              # double 0.24929088403386013
	.quad	0x3fb3dbe6985f5390              # double 0.077574169349942545
	.quad	0x3fcb94e1a4e63bb4              # double 0.21548100043989182
	.quad	0x3fe2f5b313734e6a              # double 0.59249261664303998
	.quad	0x3fc329d6e663b818              # double 0.14971433877457296
	.quad	0x3fe44c0e9dfd3db1              # double 0.63428431374807392
	.quad	0x3fc626389f7b7774              # double 0.17304141795369399
	.quad	0x3fee30620a18d4e2              # double 0.94340612384862887
	.quad	0x3fd364efc98c1604              # double 0.30303568537087266
	.quad	0x3fec7cb2d0f76337              # double 0.89022198499433258
	.quad	0x3fd99ab392e33d6e              # double 0.40006722778794923
	.quad	0x3fe59bfb4b4afd9a              # double 0.67529072480822383
	.quad	0x3fb2f625534a7000              # double 0.074068386873875625
	.quad	0x3fd8c4823f608962              # double 0.3869939440648037
	.quad	0x3fe03cd873cd5bcb              # double 0.50742743127454426
	.quad	0x3fe473328e382d9c              # double 0.63906219269977127
	.quad	0x3fc35cc1e004acc4              # double 0.15126822889701519
	.quad	0x3fbda0e7ff034478              # double 0.11573648429772898
	.quad	0x3fee67cdfe5082e6              # double 0.95017146750259651
	.quad	0x3fe37dde67b0c678              # double 0.60911484005028083
	.quad	0x3fe2b43c62f66d7b              # double 0.58450145081171401
	.quad	0x3fecad275d2cf7de              # double 0.89613693426485574
	.quad	0x3fc713d6c6e50d7c              # double 0.18029293738991814
	.quad	0x3fef7748f023cb71              # double 0.9833111467581671
	.quad	0x3fd78392539e551c              # double 0.36740549245708265
	.quad	0x3fe1a5d5230ea80d              # double 0.55149323317641719
	.quad	0x3fed38b93755b477              # double 0.9131742554433363
	.quad	0x3fee4c8e2c82e498              # double 0.94684513753522292
	.quad	0x3fe0b8d05b62328b              # double 0.52256028984409519
	.quad	0x3fe12db5a2817a63              # double 0.53682977427872591
	.quad	0x3f895635dfa2c840              # double 0.0123714646218539
	.quad	0x3fd6107457a74562              # double 0.34475430068876822
	.quad	0x3fe065a094ebe023              # double 0.51240567289551497
	.quad	0x3fed3a28b86afd36              # double 0.91334949511648378
	.quad	0x3fd7ba952b4a4d14              # double 0.37076310374796262
	.quad	0x3fedc14c6c760d5d              # double 0.92984601196114236
	.quad	0x3fc72b2648553210              # double 0.18100431949496043
	.quad	0x3fd87c6c263d5f52              # double 0.38259414419507209
	.quad	0x3fe8f8c5c2b0a1c4              # double 0.78036773705849116
	.quad	0x3fc751088e21128c              # double 0.18216044368650264
	.quad	0x3fe9a26e2dc2fcf7              # double 0.80107792795015953
	.quad	0x3fe6cb2c311f1a09              # double 0.7123013457683679
	.quad	0x3fdd93b9b7b8947a              # double 0.46214144650941302
	.quad	0x3fc6f5a8ee4273c0              # double 0.17937194474953166
	.quad	0x3fe8ca47ff6d41bf              # double 0.77469253433269347
	.quad	0x3fc7b76333d17370              # double 0.1852840426462552
	.quad	0x3fe4a726f1a82d2d              # double 0.64540431212063754
	.quad	0x3fe2816362a7419a              # double 0.57829446094733616
	.quad	0x3fe6e4cbd8e5e9d0              # double 0.71542923319730711
	.quad	0x3eda3d62a86c0000              # double 6.2560526490340607E-6
	.quad	0x3fede8fa5da070bc              # double 0.93468969618290698
	.quad	0x3fee0e66073f56bf              # double 0.93925763526450357
	.quad	0x3fe77dea310acd2b              # double 0.73412046030572264
	.quad	0x3fe8ede432243b67              # double 0.77903947633045056
	.quad	0x3fc360c684da041c              # double 0.15139085280318987
	.quad	0x3fd1a503f8138212              # double 0.27569674707595582
	.quad	0x3fe123052656a16b              # double 0.53552491653412682
	.quad	0x3fe87f476cc42508              # double 0.76553698771854872
	.quad	0x3fd1e632d0fdc748              # double 0.27967520150479119
	.quad	0x3fd195e181d700f2              # double 0.27477300338433885
	.quad	0x3fe26c3774215692              # double 0.57571003610310556
	.quad	0x3fbcd47de91d1e10              # double 0.11261736813786904
	.quad	0x3fe5cfd072f008dc              # double 0.68161795090443489
	.quad	0x3fcfa9abcee857a8              # double 0.24736545184049175
	.quad	0x3f8c4fae4fb552c0              # double 0.013823854262832724
	.quad	0x3fbeded4a53192b0              # double 0.12058762581870996
	.quad	0x3fcf2b45b6a60af0              # double 0.24350806635273825
	.quad	0x3fdef23d07c5659e              # double 0.48353505858320911
	.quad	0x3fea61c72dcfcb8b              # double 0.8244357962379224
	.quad	0x3fdbc35de5568864              # double 0.43379924198428044
	.quad	0x3fd9795480644b1a              # double 0.39803040064104922
	.quad	0x3fec374b4311ae5b              # double 0.88174975490023699
	.quad	0x3f58d8384cf3a800              # double 0.0015163945970990689
	.quad	0x3fd86ef4480971b8              # double 0.381772108410384
	.quad	0x3fde1a535f2cd278              # double 0.47035679144327203
	.quad	0x3fdd0981c477d912              # double 0.45370525537818296
	.quad	0x3fd6d2788fd61dcc              # double 0.35659612700007126
	.quad	0x3fa1f78ba344d2b0              # double 0.035091746979025173
	.quad	0x3fe30c44fa5059e3              # double 0.59524773492267646
	.quad	0x3fdd025a68cc0358              # double 0.45326862558436209
	.quad	0x3feffb1f045fa22b              # double 0.99940443853580995
	.quad	0x3fe20395da6d8767              # double 0.56293766652764254
	.quad	0x3fe96c7faff95aad              # double 0.79449447984628352
	.quad	0x3fde3285789b1390              # double 0.47183357980639418
	.quad	0x3fd4cb974fc3c972              # double 0.32492621221094631
	.quad	0x3fd5e48a30ebf3c2              # double 0.34207396295078862
	.quad	0x3fd5c96ebaff7e9a              # double 0.34041946660543376
	.quad	0x3f7c8735ba076580              # double 0.0069648836801773362
	.quad	0x3fd14f127ebcdac4              # double 0.27045118691186709
	.quad	0x3fed66e58973603c              # double 0.91881062360608423
	.quad	0x3fe972a05b470027              # double 0.7952424795876184
	.quad	0x3fd31899cd47092c              # double 0.29837651297215717
	.quad	0x3fe68bdbba3ab4ce              # double 0.70457254765428856
	.quad	0x3fcf0f82b8e213ac              # double 0.24266084697242485
	.quad	0x3fe5f455c519e8f6              # double 0.68607605453806175
	.quad	0x3fe49ad590db8f61              # double 0.64390066425810855
	.quad	0x3f9d385836a0e4e0              # double 0.028535250028856818
	.quad	0x3fe6ef1821ce2ed9              # double 0.71668631174676556
	.quad	0x3fc09adaf7132264              # double 0.12972580970951519
	.quad	0x3fc62691ac91e868              # double 0.17305203367488109
	.quad	0x3fa3f9067bcdec40              # double 0.039009287464943032
	.quad	0x3fe0ef50871420e2              # double 0.52921320326370513
	.quad	0x3fdeef033adebb68              # double 0.48333817242649113
	.quad	0x3fc7ca4e5af23440              # double 0.18586139145591751
	.quad	0x3feab035b5a12fd7              # double 0.83400998568094564
	.quad	0x3fe819af538f7507              # double 0.75313535995852099
	.quad	0x3fe7a8a7fa08eecb              # double 0.73933791003170179
	.quad	0x3fd1958a0f835d58              # double 0.27475215449290635
	.quad	0x3fd2842d5fb408ba              # double 0.28931745859166436
	.quad	0x3fc9ebf9b91f4f8c              # double 0.20251390017676518
	.quad	0x3fdcf7391d326146              # double 0.45258930064439473
	.quad	0x3fe08862c59556fd              # double 0.51664866056918834
	.quad	0x3fe1080cf3d58b4a              # double 0.53223273872240751
	.quad	0x3fe222af289deca2              # double 0.56673391278254237
	.quad	0x3fd332c116181370              # double 0.29997279317495096
	.quad	0x3fb8e77e7dbe1dd8              # double 0.097282319735419676
	.quad	0x3f78483caa0bcb80              # double 0.0059282655426952102
	.quad	0x3fd41e4fbce0e138              # double 0.31435006566200085
	.quad	0x3fe42ab346b7f190              # double 0.63021243869984467
	.quad	0x3fbfec801d3be108              # double 0.12470246041982957
	.quad	0x3fc445112b135c30              # double 0.15835775950719855
	.quad	0x3fed602f0ff8c85b              # double 0.91799119109624472
	.quad	0x3fdd22f4561a81f6              # double 0.4552584496359765
	.quad	0x3fe000a8c404c598              # double 0.50008047375574716
	.quad	0x3fda21cf6289527e              # double 0.40831360457131172
	.quad	0x3f8030e50f19ff80              # double 0.0079057593568447881
	.quad	0x3fc4396944049958              # double 0.1580020506018609
	.quad	0x3fefc7f3e5959dc7              # double 0.99315829125128451
	.quad	0x3fcdd98ad205e7c4              # double 0.23320136313469508
	.quad	0x3fae371ac295bab0              # double 0.059014164212262243
	.quad	0x3fecab7ea1400142              # double 0.89593440527099966
	.quad	0x3fe7669edade2f61              # double 0.73127691981924781
	.quad	0x3fd31bf0af3132f4              # double 0.29858033283816998
	.quad	0x3fe3bbb12fc91bf2              # double 0.6166616376220857
	.quad	0x3faf35157aec9580              # double 0.060951873069181595
	.quad	0x3fe749a8aa682723              # double 0.72774155886256542
	.quad	0x3fe51addfe86fd3a              # double 0.65952968323100625
	.quad	0x3fd021b4e54a20bc              # double 0.25205728904303348
	.quad	0x3f800262dcba2fc0              # double 0.007817051278173781
	.quad	0x3fed2fb036075104              # double 0.91207132866341611
	.quad	0x3fe946ec21c69f2b              # double 0.7899075183567893
	.quad	0x3fc9c9a4ef7fe5c4              # double 0.20146619505230323
	.quad	0x3fedf1d1c2db5b6d              # double 0.9357689672277566
	.quad	0x3fc006a79a47a630              # double 0.12520308526227231
	.quad	0x3fd3902eeae7b4f0              # double 0.30567524852706551
	.quad	0x3fce1de5139d424c              # double 0.23528731782654899
	.quad	0x3fd79ceb6b6282a8              # double 0.36895261275098301
	.quad	0x3fdf7cc59364c2a6              # double 0.49199046510606548
	.quad	0x3fe73c8e50ef1d25              # double 0.72614208037785899
	.quad	0x3fe58d54ce735bc0              # double 0.67350235292803262
	.quad	0x3fc4bf14c186925c              # double 0.16208133172507899
	.quad	0x3fdc637d1f4b7dba              # double 0.4435723119367726
	.quad	0x3fd5cd6193eea12c              # double 0.34066047140597067
	.quad	0x3fec5964f77c75c1              # double 0.88591240250723768
	.quad	0x3fe0e15c1878a17c              # double 0.52750973491224284
	.quad	0x3fe6da05014701ae              # double 0.7141137146900769
	.quad	0x3fec30bd884ee684              # double 0.88094975111671702
	.quad	0x3fc6191b968a0e08              # double 0.1726412282042562
	.quad	0x3fd1aea34994520a              # double 0.27628404794202821
	.quad	0x3fd498b5667ea298              # double 0.32182059296841592
	.quad	0x3feaf4df058f784d              # double 0.84239150129338614
	.quad	0x3fc760705171a5a4              # double 0.18263057686571671
	.quad	0x3febe0c411a7e7c4              # double 0.87118724296964744
	.quad	0x3fce12c5a1c37358              # double 0.23494787596328126
	.quad	0x3fa2672bea02eb00              # double 0.035943386379093667
	.quad	0x3fc1c011afb06668              # double 0.13867398336951742
	.quad	0x3fe7eeb022eea1f6              # double 0.74788672278105994
	.quad	0x3fbe76ff1db4bb38              # double 0.11900324321025557
	.quad	0x3fe41af1ca32d8cc              # double 0.62828912250440672
	.quad	0x3fe822bf91d1bc7a              # double 0.7542417381317954
	.quad	0x3fee686d9eef3e21              # double 0.9502475837888974
	.quad	0x3fdd74328e8d0628              # double 0.46021713181480317
	.quad	0x3fd1d842fe167a92              # double 0.27882456601393202
	.quad	0x3fa829796562afd0              # double 0.047191423059615212
	.quad	0x3fd4672e4ae29df6              # double 0.31879765809068716
	.quad	0x3fed57cb52bfa04d              # double 0.9169670692617814
	.quad	0x3fe653fc3bf5959a              # double 0.69775211058429254
	.quad	0x3fdc71e8a024c844              # double 0.44445243491202668
	.quad	0x3fa4b4dc7b81a3d0              # double 0.040442361904588275
	.quad	0x3fd54714194fc650              # double 0.33246328803861491
	.quad	0x3fd4e508734f9d6c              # double 0.32647906552161632
	.quad	0x3fcd030eacb399d0              # double 0.22665580208486213
	.quad	0x3fbee1aeada340f8              # double 0.12063113917543322
	.quad	0x3fe1769b04ccb808              # double 0.54572821557462792
	.quad	0x3fded1f7680eeeac              # double 0.48156533395715928
	.quad	0x3fef896c5034dbf3              # double 0.985525280621799
	.quad	0x3feda492d632312c              # double 0.92633954844635502
	.quad	0x3fd823df74e549fe              # double 0.37718950667945694
	.quad	0x3fe8dda24ad340e7              # double 0.77705492605494164
	.quad	0x3fef16d7cefb6846              # double 0.9715384523981434
	.quad	0x3fdff162dc24e862              # double 0.49910804270223796
	.quad	0x3fe8490a73a49194              # double 0.75891611658566882
	.quad	0x3fd115a6a62e257a              # double 0.26694647053280784
	.quad	0x3fe2c8eb2f8e5010              # double 0.58702620781196124
	.quad	0x3fe5644491529a24              # double 0.66848972686131392
	.quad	0x3fb1b10c13e2cef0              # double 0.069107775549863026
	.quad	0x3fd0bbab212ba00a              # double 0.26145437468812871
	.quad	0x3fcd388733c8e4c4              # double 0.22828760174323837
	.quad	0x3fe91b4fc8d6e5e8              # double 0.78458394266561715
	.quad	0x3fecaaf41749e5dc              # double 0.89586834477011789
	.quad	0x3faf74a051fd9910              # double 0.061436662682171073
	.quad	0x3fe9a6d7c74558d5              # double 0.8016165630349642
	.quad	0x3fe6f5e81ea82b67              # double 0.71751790988615205
	.quad	0x3fdde0aa89a7f626              # double 0.46683753436068043
	.quad	0x3fe914fd06bccd4c              # double 0.7838120586006112
	.quad	0x3fee9808be70f6f0              # double 0.95605885692176962
	.quad	0x3fe34d2f4daf9f42              # double 0.603171970110431
	.quad	0x3fd22d665e3f9198              # double 0.28402098850190205
	.quad	0x3feacd24b1372227              # double 0.83754191028953506
	.quad	0x3fe00f3d54db2e2c              # double 0.50186029981108993
	.quad	0x3fe44b9c55ac7fe8              # double 0.6342298196141174
	.quad	0x3fef49027d867e41              # double 0.97766232029602673
	.quad	0x3fe3a9cd215e7a55              # double 0.61447769658463847
	.quad	0x3fe9b66c660f1a74              # double 0.80351848538778236
	.quad	0x3fea8c4f0cb9c070              # double 0.8296275375887614
	.quad	0x3fe86b7d8a5a4a3f              # double 0.76312138578425237
	.quad	0x3fd5c1070880a2ae              # double 0.33990646200485741
	.quad	0x3fe63ccaa805036d              # double 0.69492085281681926
	.quad	0x3fc51e3d0a981b58              # double 0.16498530404370615
	.quad	0x3fec6fae3b912d17              # double 0.88863288530538653
	.quad	0x3fe2deef488a4e27              # double 0.58971370857256467
	.quad	0x3fe7cd3953a5bdec              # double 0.74380174958599587
	.quad	0x3fe63de4dd13ed90              # double 0.69505541972414342
	.quad	0x3fed320df2e39ddf              # double 0.9123601669243121
	.quad	0x3fc0e1c8f2208818              # double 0.13189040968524135
	.quad	0x3fd5a5ca539f2274              # double 0.33824403921293045
	.quad	0x3fdc894aa6199bc8              # double 0.44587961407381416
	.quad	0x3fe59ad070e85bf0              # double 0.67514822056079815
	.quad	0x3fed71e6950804c6              # double 0.92015389545135728
	.quad	0x3fe61821fc1106d8              # double 0.6904458926366841
	.quad	0x3fd37f21648a310e              # double 0.304634426291856
	.quad	0x3fd23cc890cacda4              # double 0.28495992793906511
	.quad	0x3fed8e7550a5a59f              # double 0.92363992453936195
	.quad	0x3fed8c92d09aeba4              # double 0.92340985053248347
	.quad	0x3fb56b4669139278              # double 0.083668137219840122
	.quad	0x3fee6e15fd67f2ff              # double 0.95093821996087502
	.quad	0x3fdfc4346726606c              # double 0.4963503844569519
	.quad	0x3fb2bdc08cf96d78              # double 0.073207888047752578
	.quad	0x3fcf209883aacc24              # double 0.24318224362431906
	.quad	0x3fe0563359f16218              # double 0.51052253310178042
	.quad	0x3f7fb5514b911a80              # double 0.0077412772744255287
	.quad	0x3fe380c2f71b8b58              # double 0.60946796668245451
	.quad	0x3fe1892c56f14477              # double 0.54799477559039544
	.quad	0x3fba9945e44f6bc0              # double 0.10390126060467164
	.quad	0x3fef24aed3ef959f              # double 0.97322789567686018
	.quad	0x3fec94822272dd4f              # double 0.89312845924625062
	.quad	0x3fd6ab3f82f47c8c              # double 0.35420215405060484
	.quad	0x3fe46ba4377a1913              # double 0.638139828065308
	.quad	0x3feaac516c0e24c3              # double 0.83353491882839881
	.quad	0x3fc1bb14ecb8473c              # double 0.13852178152643002
	.quad	0x3fd4a737d8f91330              # double 0.3227061861874061
	.quad	0x3fcd15e2ff080014              # double 0.22723042919824421
	.quad	0x3fd6e7c42e44cf2c              # double 0.35789589422641899
	.quad	0x3fe549fd711ad976              # double 0.66528198328778276
	.quad	0x3fe409d6799d1629              # double 0.6262009024873737
	.quad	0x3fe50d0c24ec9006              # double 0.6578427048848432
	.quad	0x3fe9d5602cd67f38              # double 0.80729683644674477
	.quad	0x3fe5f192210ac9e1              # double 0.6857386250833849
	.quad	0x3fe52d0e5428582f              # double 0.66174999653845201
	.quad	0x3fe45f7228e8a5df              # double 0.63665111532207763
	.quad	0x3fd6e6be294dc956              # double 0.35783342393474038
	.quad	0x3fdc4250dd558a5c              # double 0.44154759993231152
	.quad	0x3fcd1cb669410f44              # double 0.22743873729097619
	.quad	0x3fd9ccf62660a77e              # double 0.40313485858734299
	.quad	0x3fe5f379be30c085              # double 0.68597113749093863
	.quad	0x3fd43bbafb8ea5d0              # double 0.31614565435537845
	.quad	0x3fb1caef13a6db20              # double 0.069502775476263157
	.quad	0x3fe981298aeef055              # double 0.79701687941952548
	.quad	0x3fe46a949360de91              # double 0.63801029953806865
	.quad	0x3fe4ecf6aa8eaf28              # double 0.65392621337875756
	.quad	0x3fef7f0cb0237a08              # double 0.98425897981707155
	.quad	0x3fdadc0ebc39859c              # double 0.41968124753301495
	.quad	0x3fea6c5dac15e4cc              # double 0.82572826013997646
	.quad	0x3fe18f47fe508042              # double 0.54874038382332224
	.quad	0x3fe4e9b8fa7c1242              # double 0.65353058741363435
	.quad	0x3fe38bd78cf2885b              # double 0.61082055596149176
	.quad	0x3fece925dcd44659              # double 0.90346043711378876
	.quad	0x3fc0571ed3e28bc0              # double 0.12765870424217773
	.quad	0x3fe009e608c8dc39              # double 0.50120832172149854
	.quad	0x3f8f5e9001a0f240              # double 0.015317082452491637
	.quad	0x3fc762176092d274              # double 0.18268100944046106
	.quad	0x3fef5a4702cec1ed              # double 0.97977018879288169
	.quad	0x3fe5f4912212476b              # double 0.68610436110087158
	.quad	0x3fecb9cb48fe8ee2              # double 0.89767994171822019
	.quad	0x3fdeadd8e27856be              # double 0.47936079136102794
	.quad	0x3fe1028d1616ef84              # double 0.53156141580937843
	.quad	0x3fe32e9423cebacd              # double 0.59943587297115075
	.quad	0x3fe31e9384e02e7c              # double 0.59748245193755123
	.quad	0x3fe6cec4800242e3              # double 0.71274018289303986
	.quad	0x3fd0451eedf16f86              # double 0.25421879994041097
	.quad	0x3fc7818bc87ef028              # double 0.1836409310325291
	.quad	0x3fc1e7912bf465f4              # double 0.13987936636185305
	.quad	0x3fd83eea00d6e718              # double 0.37883997041682127
	.quad	0x3fed4b4a15f14abd              # double 0.91544060025838514
	.quad	0x3f78f81a5f5a6c80              # double 0.0060959844755884562
	.quad	0x3fc2065a3fa6d240              # double 0.14081886394491683
	.quad	0x3fe2913ae080d0ad              # double 0.58022827003744271
	.quad	0x3fd13d38efdd7ff4              # double 0.26936171936358666
	.quad	0x3fbec6fbdd0c3a38              # double 0.12022375246690664
	.quad	0x3fd4eb58c7e544ac              # double 0.32686442872097632
	.quad	0x3feb646680896b35              # double 0.85600590805856902
	.quad	0x3fc99d6b4ed91a80              # double 0.20011655187609634
	.quad	0x3fe0a711477328e2              # double 0.52039398150489213
	.quad	0x3fe4e1ee73f7e5cb              # double 0.65257952356403715
	.quad	0x3fe4e002a9ea07f7              # double 0.65234502016414708
	.quad	0x3fed0843b65354bf              # double 0.90725885019732988
	.quad	0x3fd92796abe291ce              # double 0.39304129396103071
	.quad	0x3fcb64e1c4701bbc              # double 0.21401617137618512
	.quad	0x3fe17e5f2eee66d6              # double 0.54667624632130685
	.quad	0x3fc84ae52a5a7ba4              # double 0.18978561943091876
	.quad	0x3fcb6769f22dd6b4              # double 0.21409344029568944
	.quad	0x3feba1bdbf9edd72              # double 0.86349379945651905
	.quad	0x3fecbbda52a549e9              # double 0.89793125287752418
	.quad	0x3fed7ce4da4186d4              # double 0.92149584415548213
	.quad	0x3febb9cefe9e581b              # double 0.86643171053106316
	.quad	0x3fe5876913ccceda              # double 0.67277959696954359
	.quad	0x3fd8dabc9f4f2df0              # double 0.38835063512371359
	.quad	0x3fe166d9ed4e7bfb              # double 0.54380508755627888
	.quad	0x3fc74281c40ded30              # double 0.18171712944954654
	.quad	0x3fe8bfd6e1f46e93              # double 0.77341789371299041
	.quad	0x3f9da98576143d60              # double 0.02896698506543538
	.quad	0x3feebb114f994f1d              # double 0.96033540293362629
	.quad	0x3fe48f2fd4cfe908              # double 0.64247886242745356
	.quad	0x3fe1e8a1bb3f6e56              # double 0.55964743205863487
	.quad	0x3fdbbbc26f961f0e              # double 0.43333493134603962
	.quad	0x3fe0c330c35ada0c              # double 0.5238269629979313
	.quad	0x3fe2c1a642faadd4              # double 0.58613885003927146
	.quad	0x3fcdd8f0d0a4cb20              # double 0.2331830042617975
	.quad	0x3febcd1467f4658f              # double 0.86878414443633456
	.quad	0x3fb420d483a06de0              # double 0.078625948081416208
	.quad	0x3fee121ff21a511d              # double 0.93971249852851069
	.quad	0x3fc3dbdef025f7a0              # double 0.15514742589942632
	.quad	0x3fe4c67668c2c2b5              # double 0.64922638379183317
	.quad	0x3fee543dcd30127d              # double 0.94778337550867742
	.quad	0x3fe400c44cd5feb4              # double 0.62509360320105722
	.quad	0x3fd8fb49ca98100c              # double 0.3903374174553853
	.quad	0x3fd27c5958f9de9a              # double 0.28883966149394669
	.quad	0x3fbc55fad315d868              # double 0.11068694737864038
	.quad	0x3fd03701635acd60              # double 0.25335726454360064
	.quad	0x3fd518406ac098e2              # double 0.32960520195991994
	.quad	0x3fe956da185438fb              # double 0.79185204269177178
	.quad	0x3fea456bcf25b6ca              # double 0.82097425898037923
	.quad	0x3feffb9fa2de1261              # double 0.99946576890995342
	.quad	0x3fe798cb2edf9710              # double 0.7374015727516241
	.quad	0x3fc554e6a4224d24              # double 0.16665347112994155
	.quad	0x3fe4b1aae9933f23              # double 0.64668794269707452
	.quad	0x3fbfcfae654888c8              # double 0.12426271412599299
	.quad	0x3fefb4ee6d8e0466              # double 0.9908363475552846
	.quad	0x3fe5a47ddee91214              # double 0.67632955109781046
	.quad	0x3feb3c43762a7d3f              # double 0.85110638694087715
	.quad	0x3fd6c477af74c97a              # double 0.35574142584223234
	.quad	0x3fbd8ee0f18b9610              # double 0.1154614057264427
	.quad	0x3fe6a26432850702              # double 0.70732316844097931
	.quad	0x3fe8f50f009b9205              # double 0.7799143802517966
	.quad	0x3fe81039b361228a              # double 0.75198063883824884
	.quad	0x3feaae220bdebd9b              # double 0.83375646894812705
	.quad	0x3fe945922ae3f10d              # double 0.78974254967718738
	.quad	0x3fe0d584ff3530c5              # double 0.52606439442890773
	.quad	0x3fd635d0a11394f2              # double 0.34703460435987588
	.quad	0x3fc4f5da5456174c              # double 0.16375283353789383
	.quad	0x3fe05d11659cc865              # double 0.51136083456209447
	.quad	0x3fd0b435058dcef2              # double 0.26099896948220114
	.quad	0x3fc2204b1b602770              # double 0.14161051594447427
	.quad	0x3fe0584a7544eb26              # double 0.51077769188063793
	.quad	0x3fd6ccc4b2124338              # double 0.35624806775836104
	.quad	0x3febd083c72a9b7c              # double 0.86920346164411865
	.quad	0x3fede7b8380d5bfc              # double 0.93453608462993953
	.quad	0x3feb344de0d95c7a              # double 0.85013479152520621
	.quad	0x3fefa62062a0cc82              # double 0.9890291143732528
	.quad	0x3f896b6fd2eeb200              # double 0.012411950707098107
	.quad	0x3fe7681478b9dc68              # double 0.73145507411289845
	.quad	0x3fb2f35d135eddb8              # double 0.074025933484214046
	.quad	0x3fe735c58a188515              # double 0.72531392070610201
	.quad	0x3f997486b5c6a840              # double 0.024858574719168525
	.quad	0x3fdd5ac4032997d2              # double 0.45866489704928626
	.quad	0x3fc4f5c5f4781c58              # double 0.16375040471050073
	.quad	0x3fcd2867bf373014              # double 0.22779557072351564
	.quad	0x3fec11bad412b9a5              # double 0.87716428204094099
	.quad	0x3fdb77f5941ef234              # double 0.4291967340939522
	.quad	0x3fe69297373feec9              # double 0.70539437094654389
	.quad	0x3fb6ff74eaa0c3a8              # double 0.089835459978316323
	.quad	0x3fee18161908de41              # double 0.9404402245481337
	.quad	0x3fe9e5e0a0f79139              # double 0.80931121291045038
	.quad	0x3fe429cc3eadb3f3              # double 0.63010227434062782
	.quad	0x3f900c6a6f44bba0              # double 0.015672362366952464
	.quad	0x3fd6290db1decf9c              # double 0.34625570650245563
	.quad	0x3fc0160ca4c31d20              # double 0.12567289395358561
	.quad	0x3fcff067ddea51f4              # double 0.24952410064419406
	.quad	0x3fea33852f71a71c              # double 0.81878909365079577
	.quad	0x3fc7811bfbe4bb94              # double 0.18362760352598839
	.quad	0x3fb6bcc475220bb8              # double 0.088817862126275737
	.quad	0x3fef8c87c9f4a3b7              # double 0.98590459293801913
	.quad	0x3fc913faaab78784              # double 0.19592221580301949
	.quad	0x3fd8db96702963d0              # double 0.38840256646431914
	.quad	0x3fef33cc27ad61b1              # double 0.97507293462245148
	.quad	0x3fb723a11a636758              # double 0.090387410109000199
	.quad	0x3fc0de2575f5ff28              # double 0.13177936801729939
	.quad	0x3fe4c8229e0f704e              # double 0.64943056937364374
	.quad	0x3fee2727d38fc08e              # double 0.94227973290073108
	.quad	0x3fc1bedbc4607670              # double 0.13863703812323847
	.quad	0x3fb76bbc87f9e7d8              # double 0.091487677762330022
	.quad	0x3fd0db6376ffad7e              # double 0.26339041348429493
	.quad	0x3fde364058bb7c66              # double 0.47206123986501891
	.quad	0x3fe6d6191b82b1b0              # double 0.71363501904629878
	.quad	0x3fce1bac2a53bbf0              # double 0.2352194983172633
	.quad	0x3fea4136a9c1b52c              # double 0.82046063571548222
	.quad	0x3fe3dca50295be74              # double 0.6206841516959245
	.quad	0x3fc3b66b6ae90d18              # double 0.15400450439674596
	.quad	0x3fe1801a58babb53              # double 0.5468875630375386
	.quad	0x3fec3f04e7020a17              # double 0.88269276732200097
	.quad	0x3fb1721fcfab5338              # double 0.06814764804887552
	.quad	0x3fd3ba661aee515a              # double 0.30825188283895033
	.quad	0x3f81689c890a8f40              # double 0.0085003117868108768
	.quad	0x3fb89d295c568658              # double 0.096148095172361336
	.quad	0x3fcf0197e0d94c60              # double 0.2422361228842389
	.quad	0x3fd9da2f7f8d135e              # double 0.40394198852691499
	.quad	0x3febe6326dba6075              # double 0.87185021811730101
	.quad	0x3fd8526979fedcd4              # double 0.38003003038052197
	.quad	0x3fe9977f8e601686              # double 0.79974344070133507
	.quad	0x3fd6166d8a62857c              # double 0.34511888994355622
	.quad	0x3fe204947056e5d7              # double 0.56305906239793557
	.quad	0x3fd9998a21625540              # double 0.39999631176154438
	.quad	0x3fea3cdacf29941a              # double 0.81992855512055773
	.quad	0x3fe1cf09c9e005dc              # double 0.55652322224357986
	.quad	0x3fdaaf959efa7690              # double 0.4169668247721825
	.quad	0x3fccaabf384a1c90              # double 0.22396078346739445
	.quad	0x3fef36511173115e              # double 0.97538045318701072
	.quad	0x3fea9315ff5b3a30              # double 0.83045482515610125
	.quad	0x3f91274e7f559280              # double 0.016751505395762312
	.quad	0x3fe76f35079ee4ce              # double 0.73232509125150513
	.quad	0x3fe2a09b70b36771              # double 0.58210536968111459
	.quad	0x3fdf38115a2eae00              # double 0.48779710585469616
	.quad	0x3fb3a1b589901918              # double 0.076686235508621414
	.quad	0x3fc0486fa9c4e684              # double 0.12721057691105753
	.quad	0x3fc386dd1ee8b360              # double 0.15255321511485942
	.quad	0x3fcbcfae550156d0              # double 0.21727542067190209
	.quad	0x3fe040fa63cc7f14              # double 0.50793189517932769
	.quad	0x3fd61f1fc9606ba4              # double 0.34564966836631528
	.quad	0x3fe9cf96a4871dd9              # double 0.80659038671813754
	.quad	0x3fcdd9842a60ac74              # double 0.23320056981296811
	.quad	0x3fe5e80ef5449795              # double 0.68457744506734974
	.quad	0x3fa7abaca6ed6d30              # double 0.046231646897206935
	.quad	0x3fedb4569c72567f              # double 0.92826395565016628
	.quad	0x3feab383e38599ea              # double 0.83441347539775035
	.quad	0x3fe6bb18b4c0d9aa              # double 0.71033892920859398
	.quad	0x3f987b2f9861ab80              # double 0.023907416988020014
	.quad	0x3fdf931369399e54              # double 0.49335179592023803
	.quad	0x3fda3a2a685f00fa              # double 0.40980014984599189
	.quad	0x3fe40aa5d988cc2f              # double 0.62629978644543438
	.quad	0x3fe478cef6f442fe              # double 0.63974712594253424
	.quad	0x3fd545c30d8b3508              # double 0.33238293001780095
	.quad	0x3fe729917811cfe4              # double 0.72382424784745725
	.quad	0x3fed33b356f1d356              # double 0.91256110173581351
	.quad	0x3fecb0f24c27f79a              # double 0.8965999114441161
	.quad	0x3fc295421f73cbd8              # double 0.14518000159986744
	.quad	0x3fecc8ad2c0b7a79              # double 0.89949663736827212
	.quad	0x3fd4e7d7515f4138              # double 0.32665045687192018
	.quad	0x3feb3567d67ddcc2              # double 0.85026924031162587
	.quad	0x3fa5aa3daa7fe670              # double 0.042314459860745113
	.quad	0x3f94b9e9ae8546e0              # double 0.020240451123135439
	.quad	0x3fef70a83baaca60              # double 0.98250209478130656
	.quad	0x3fee7138f96c92ca              # double 0.95132111278197695
	.quad	0x3fb60d4a7fe0d8c8              # double 0.086140304775514598
	.quad	0x3fe9715a23fc2638              # double 0.79508692768394607
	.quad	0x3fe55a786e6c9429              # double 0.66729375426496518
	.quad	0x3fe765954b159876              # double 0.73115029015458677
	.quad	0x3fed2edafee2d026              # double 0.91196965963763854
	.quad	0x3fef865a8c88fc4e              # double 0.98515059898626034
	.quad	0x3fd86642db83afd2              # double 0.38124152600243832
	.quad	0x3feeeff871f3af4a              # double 0.96679327255467595
	.quad	0x3fe9e2412fc2ef3a              # double 0.80886897400294022
	.quad	0x3fefd0e79c722d01              # double 0.99425106578692645
	.quad	0x3fd23e4f7371d30e              # double 0.28505312227143598
	.quad	0x3fc781961fa683f8              # double 0.18364216370994746
	.quad	0x3fe9a76d7eb0a334              # double 0.80168795341623999
	.quad	0x3fbdcc90da020520              # double 0.11640267679651517
	.quad	0x3febcc2b51a4c052              # double 0.86867299982078294
	.quad	0x3fa3fa6ee0b3b980              # double 0.039020028047036526
	.quad	0x3fc2e2876b4e38c0              # double 0.1475381158783815
	.quad	0x3fc9108ac9668c0c              # double 0.19581732591640877
	.quad	0x3fe789e40fd08ecc              # double 0.73558238114170527
	.quad	0x3fb51f02282235a8              # double 0.082504401014566242
	.quad	0x3fe780bbefacbef2              # double 0.73446461497766635
	.quad	0x3fee508d53cdd707              # double 0.94733301513653678
	.quad	0x3fec4e6a3941a22d              # double 0.8845721357620896
	.quad	0x3fd5f36dd9b2914a              # double 0.34298273334049567
	.quad	0x3fdd00035f66f934              # double 0.45312580410599712
	.quad	0x3fe6a3eef0421e5a              # double 0.70751139569706401
	.quad	0x3fc0ff0da13ce46c              # double 0.13278360722486882
	.quad	0x3fe637c2ad642070              # double 0.69430669656231991
	.quad	0x3fda8ea76a26eb0c              # double 0.41495690695198628
	.quad	0x3fec773e2d435dec              # double 0.88955601540049888
	.quad	0x3fea9fff0645cfb7              # double 0.83203078484665738
	.quad	0x3fba342944f51d20              # double 0.10235841687709923
	.quad	0x3fafefb213f688b0              # double 0.062375607430355529
	.quad	0x3fcdeea6725e757c              # double 0.23384552559302196
	.quad	0x3fe8e1ddc1bb62f6              # double 0.77757156217839341
	.quad	0x3f98f3277f02ff60              # double 0.024365059973887937
	.quad	0x3fefe172fa204ba7              # double 0.99627064564480327
	.quad	0x3fd40f6949037fac              # double 0.31344062929383187
	.quad	0x3fc2f101933d06d0              # double 0.14797992410063054
	.quad	0x3fc3e26502927fc8              # double 0.1553465139922976
	.quad	0x3fe07ed9f16aa639              # double 0.51548478271178688
	.quad	0x3fe61b5c80496315              # double 0.69084000640859478
	.quad	0x3fe46a7d2b9fd27e              # double 0.63799913902637662
	.quad	0x3feb3abdf5b18740              # double 0.85092065798765049
	.quad	0x3fe7cafdfa8fa740              # double 0.74352930963252817
	.quad	0x3fe5f613b5f6378a              # double 0.68628869571124196
	.quad	0x3fed3d8c9deeb3dd              # double 0.9137633404367268
	.quad	0x3fd283a769b42c2c              # double 0.2892855198157942
	.quad	0x3faab9e03038da30              # double 0.052199369322284972
	.quad	0x3fd6733a30d2ebe6              # double 0.35078291671714934
	.quad	0x3fef3d4ec84e79d7              # double 0.97623385546085728
	.quad	0x3fd75e412465c5c4              # double 0.36512783579300057
	.quad	0x3feb0764e6d7893d              # double 0.84465260587993607
	.quad	0x3f9b7946471478c0              # double 0.02682981308782284
	.quad	0x3fe80aa78b7fabfa              # double 0.75130059476703015
	.quad	0x3fca0186fd5be210              # double 0.2031716096023648
	.quad	0x3fd64dde2ecb6832              # double 0.34850267953663938
	.quad	0x3fc0d54d0de0e65c              # double 0.13150942971860757
	.quad	0x3f9f03e45ba58f60              # double 0.030288284391090214
	.quad	0x3feea404367946fb              # double 0.95752154006387913
	.quad	0x3fd84cf5cf6cf350              # double 0.37969727760701222
	.quad	0x3fee764c1a482836              # double 0.95194058545280913
	.quad	0x3fe0c21c46359b90              # double 0.52369512284063724
	.quad	0x3fd00935edf22d9c              # double 0.25056217419543159
	.quad	0x3fd12249b9471e56              # double 0.26771777242217831
	.quad	0x3fc4a5343d731994              # double 0.16129162788838569
	.quad	0x3fe5fc73764017c2              # double 0.68706677528165749
	.quad	0x3fedde5625f245de              # double 0.93339068805124348
	.quad	0x3fcc60a3031e0504              # double 0.22169912006578596
	.quad	0x3fe459fd5a0fe7a4              # double 0.63598506536731181
	.quad	0x3fe32cd828431f1b              # double 0.59922416557035107
	.quad	0x3fea05ea18d2dfec              # double 0.81322197769531845
	.quad	0x3febe03204f66d27              # double 0.87111760110147862
	.quad	0x3faf04ba9710e340              # double 0.060582953396482342
	.quad	0x3fe07219323c3875              # double 0.5139280301243746
	.quad	0x3fe68734bd73b301              # double 0.70400464060148249
	.quad	0x3fda3cb78d0fa026              # double 0.40995587134830414
	.quad	0x3fe24e56a2168895              # double 0.57206279428307261
	.quad	0x3fb18999ea8173f0              # double 0.068505878212320459
	.quad	0x3fed5a66bfa3be6d              # double 0.91728532247175354
	.quad	0x3fc719c17f157ef4              # double 0.18047350602409262
	.quad	0x3fc78472fc0ac670              # double 0.18372952753775307
	.quad	0x3fe8ea6381837547              # double 0.77861190124137003
	.quad	0x3feb8232ea1d6ab7              # double 0.85964341855591087
	.quad	0x3fed60a000b467f3              # double 0.91804504525793929
	.quad	0x3fb8bf58c05c7c10              # double 0.096669718707275587
	.quad	0x3fea1201cfaec200              # double 0.81469812930123453
	.quad	0x3fea3765b2bf1edf              # double 0.81926236068190039
	.quad	0x3fc0a7557df1abf8              # double 0.13010662698374609
	.quad	0x3fe3f9952d622acd              # double 0.6242166410823643
	.quad	0x3fe27b3a05a56435              # double 0.57754231550928259
	.quad	0x3f91e430d2c726a0              # double 0.017472041001190264
	.quad	0x3fd39c53d9f66178              # double 0.30641647611039202
	.quad	0x3fbc281644fabcf0              # double 0.10998667892521374
	.quad	0x3fef3777d6545b0f              # double 0.97552101002915658
	.quad	0x3fc44077f1680b50              # double 0.15821742331908206
	.quad	0x3fe48aee11a6dc26              # double 0.64195922324768584
	.quad	0x3fd5f6b7f996cfec              # double 0.34318351148544823
	.quad	0x3fe5de6f9af52074              # double 0.68340282693044552
	.quad	0x3fba3b7a83527cb0              # double 0.10247007089718596
	.quad	0x3fe693b478e6f8e5              # double 0.70553039182393873
	.quad	0x3fec08f8632b4923              # double 0.876095002832049
	.quad	0x3fe606617f2b0c5f              # double 0.68827891194849744
	.quad	0x3fdca8f8f167d236              # double 0.44781325888405676
	.quad	0x3fb340a3aa3d1a68              # double 0.0752050676938808
	.quad	0x3fde9c626a8c98a4              # double 0.47829494862743105
	.quad	0x3fed901e6e705b9e              # double 0.92384263582322368
	.quad	0x3fec8c14c37d513f              # double 0.89209974462077202
	.quad	0x3fe7be51e84b7de7              # double 0.74198241586776426
	.quad	0x3fd378cc39a79abc              # double 0.30424790983526484
	.quad	0x3fe3f83e983f86fa              # double 0.62405328498809287
	.quad	0x3fe60148d4da175e              # double 0.68765679905548516
	.quad	0x3fe4090950e28512              # double 0.62610307500668427
	.quad	0x3fdc5b7bfac9ed78              # double 0.44308375826923152
	.quad	0x3fa5ba273418ff10              # double 0.042435860738349374
	.quad	0x3fe5a30009e028b9              # double 0.67614747933227826
	.quad	0x3fefd3d5895fb2a8              # double 0.99460865813087639
	.quad	0x3fb804ab1c7f50e8              # double 0.093821234185557878
	.quad	0x3fd6d2f932bc6e24              # double 0.35662679629033023
	.quad	0x3fe99e270723e682              # double 0.80055571932389591
	.quad	0x3fecdcd6659154bc              # double 0.90195770108643769
	.quad	0x3faf38c5859e0680              # double 0.060980007706359807
	.quad	0x3fe402ef7d3f4fdc              # double 0.62535833799710927
	.quad	0x3fd41f3d1683276e              # double 0.31440665434330739
	.quad	0x3fef82f77c84273c              # double 0.98473715133261618
	.quad	0x3fece99732dc258a              # double 0.90351447995742373
	.quad	0x3fed0391bb3ef02f              # double 0.90668570109801816
	.quad	0x3fe6a8a40ff9746f              # double 0.70808604354864524
	.quad	0x3fe2e189e6533713              # double 0.59003157601702794
	.quad	0x3fc056a3480b64c4              # double 0.12764397638128433
	.quad	0x3fd86fe4d9a1de76              # double 0.3818294644656598
	.quad	0x3fe2494a5d055e9a              # double 0.57144659202727444
	.quad	0x3fedbcf891daceca              # double 0.92931774604081707
	.quad	0x3fe814df41015b1a              # double 0.75254786201807922
	.quad	0x3fd877022dbf0390              # double 0.38226370303532864
	.quad	0x3feaf3793b5ae1ba              # double 0.8422208937909581
	.quad	0x3febc530650777bd              # double 0.86782092792758869
	.quad	0x3fe6072e99cd6ee2              # double 0.68837671317620797
	.quad	0x3fe849f639cbf828              # double 0.7590285424082639
	.quad	0x3fe9ce9868ee8298              # double 0.806469159073532
	.quad	0x3fd9ba6eb97db552              # double 0.40200393785820154
	.quad	0x3fecf01a5b0acd0d              # double 0.90430944234540933
	.quad	0x3fae6b3b2693b4a0              # double 0.059411858042815568
	.quad	0x3fe72044b05dcaa3              # double 0.72268900343472742
	.quad	0x3fefd3e118a1141a              # double 0.99461417017357978
	.quad	0x3fec0e542b6a2871              # double 0.8767491195624314
	.quad	0x3feff129d8178c7a              # double 0.99818889813867817
	.quad	0x3f6114d5227ead00              # double 0.0020851290500637498
	.quad	0x3fb63cfa964bbe48              # double 0.086867963498428513
	.quad	0x3fec91af30dfe715              # double 0.892783732851259
	.quad	0x3fd93ff227742916              # double 0.3945279488840624
	.quad	0x3fe798c954e62b75              # double 0.73740068990569674
	.quad	0x3fe8f39cd1552eef              # double 0.77973786244680621
	.quad	0x3fb866eb59a81cc8              # double 0.095320424450721863
	.quad	0x3fdbd5b7e6b60bb2              # double 0.43491933374769609
	.quad	0x3feaca2d1ed38622              # double 0.83717971821551296
	.quad	0x3fd97a985bd006ca              # double 0.3981076141936738
	.quad	0x3fe032e352d3f8c1              # double 0.50621191193911141
	.quad	0x3fb51f4852c1b3a8              # double 0.082508583263644852
	.quad	0x3fe17e4a56e9e03a              # double 0.54666630721386089
	.quad	0x3fe4651f038b2dcd              # double 0.63734389011499959
	.quad	0x3fe671485ddea8c8              # double 0.70132845243394915
	.quad	0x3fead96c870dcef3              # double 0.83904100778315038
	.quad	0x3feb724238e9aec9              # double 0.85769759288583558
	.quad	0x3fe531e583615891              # double 0.66234088573652816
	.quad	0x3fd155208a5e9c5a              # double 0.27082074654248844
	.quad	0x3fe305b76aae0d82              # double 0.59444781146923753
	.quad	0x3fde8027137c1a7e              # double 0.47657181647119973
	.quad	0x3fc2f798bb3c7a64              # double 0.14818104879755645
	.quad	0x3fb3e9adc8054dd0              # double 0.077784406026061292
	.quad	0x3fe7b1f26c88fe82              # double 0.74047204206722506
	.quad	0x3fe79e937d706f66              # double 0.7381074380859729
	.quad	0x3fab1dee9582dbd0              # double 0.052962737799525095
	.quad	0x3fdbd3185e04ca9c              # double 0.43475922757640162
	.quad	0x3fd173c1ab91e910              # double 0.27269021754149581
	.quad	0x3fec32087a07d363              # double 0.88110755762191351
	.quad	0x3fc68b5a35210a04              # double 0.17612769693558061
	.quad	0x3fc99df41eea86b0              # double 0.20013286122871454
	.quad	0x3fd5d31698187276              # double 0.34100880482745966
	.quad	0x3fe1c760493cf1fc              # double 0.55558790497121846
	.quad	0x3fed57a7b4353e9d              # double 0.91695008465645211
	.quad	0x3fe4003e142b110f              # double 0.62502960147006259
	.quad	0x3fe64bf0b1521cb9              # double 0.69677004464110504
	.quad	0x3fdb716a3bc38982              # double 0.42879730068502664
	.quad	0x3feb510396e9f5c7              # double 0.85363940692303053
	.quad	0x3fd3dc50bf53f59c              # double 0.31032198604938244
	.quad	0x3fe94b8dd7d6fb25              # double 0.79047290950970661
	.quad	0x3fd69a94adf80a8e              # double 0.35318486203338118
	.quad	0x3f8b89249c740800              # double 0.013445173286985579
	.quad	0x3fcd3934da19e704              # double 0.22830830239745847
	.quad	0x3fead00ca9eb100d              # double 0.83789666354323489
	.quad	0x3fd4b0c750670196              # double 0.32328970767778153
	.quad	0x3fd3d0def999884e              # double 0.30962347388242939
	.quad	0x3f952c00777e7c20              # double 0.020675666135158477
	.quad	0x3fc16ba941d038b8              # double 0.13609805787604556
	.quad	0x3fee9180e888fec3              # double 0.95526166359919562
	.quad	0x3fb04387e139fa28              # double 0.063530437933856931
	.quad	0x3fc10a5405801834              # double 0.13312769192288132
	.quad	0x3fd6dd3c59795738              # double 0.35725315797514012
	.quad	0x3feee5c2647fe045              # double 0.96554679516612706
	.quad	0x3fe7e3def4c7b49c              # double 0.7465662747250863
	.quad	0x3fa9616ed7fdfcc0              # double 0.049571479669788143
	.quad	0x3fd7bb5d94bbbf90              # double 0.37081088566537179
	.quad	0x3fe0b6da9099666c              # double 0.52232101671252229
	.quad	0x3fdfbba6f08ea7f4              # double 0.49582837573927852
	.quad	0x3fb55459ac541608              # double 0.083318333217981544
	.quad	0x3fde99eb4a999090              # double 0.4781444767488745
	.quad	0x3fe2a45c7c14e409              # double 0.58256363138855349
	.quad	0x3fe606891818c77f              # double 0.68829779344945041
	.quad	0x3fa2badb2d29a500              # double 0.036581849349042628
	.quad	0x3fd2f3806b17b4e2              # double 0.2961121602846345
	.quad	0x3fe13fda783bf55d              # double 0.53904460414166133
	.quad	0x3fecbd60cfde7c76              # double 0.89811745261603337
	.quad	0x3fd9808610d60076              # double 0.39846946376929482
	.quad	0x3fe3eeb7d537c5a0              # double 0.62289039272416247
	.quad	0x3fe8484bb39420db              # double 0.75882515977812248
	.quad	0x3fe087bacc9fe68d              # double 0.51656856504196613
	.quad	0x3fd1826f4a882f46              # double 0.27358610418808771
	.quad	0x3fd4809fd1d37dba              # double 0.32035060396989545
	.quad	0x3fe74689b1ea3495              # double 0.72736057995793379
	.quad	0x3fdae50ee9112430              # double 0.4202306057018772
	.quad	0x3f54ae0cfb53da00              # double 0.0012622000479588502
	.quad	0x3fd4acf3df6a9aa4              # double 0.32305619066247915
	.quad	0x3fc0dc1946275ec0              # double 0.13171688008764271
	.quad	0x3fe7c1caff18bbe9              # double 0.7424063665729338
	.quad	0x3fe61e5f2215b578              # double 0.69120747239291713
	.quad	0x3fc5d9cffb2abf84              # double 0.17070960773480348
	.quad	0x3fe95d10f7910ddc              # double 0.79261062958579087
	.quad	0x3fe288bcf472625a              # double 0.57919166320341309
	.quad	0x3fe8fc8b0a5cb5e9              # double 0.78082801841600002
	.quad	0x3fdfad2363537f44              # double 0.49494251918621424
	.quad	0x3fb86860ad472cc0              # double 0.095342676452832897
	.quad	0x3fb3bd6dcdbd8f98              # double 0.077109205941779613
	.quad	0x3fba22daf28a08e8              # double 0.10209434911124371
	.quad	0x3f99b208c616ddc0              # double 0.025093209352886836
	.quad	0x3fed9c71f6960f48              # double 0.92534731065141163
	.quad	0x3fd77fd7c3c15ad8              # double 0.36717790714957976
	.quad	0x3fb58e80e9012110              # double 0.084205681691973177
	.quad	0x3f7591bd0720c680              # double 0.0052659400844717874
	.quad	0x3fe3e76cdadb557f              # double 0.62200014825309313
	.quad	0x3fee492f5527a26a              # double 0.94643370277215166
	.quad	0x3fe13bae63bf4765              # double 0.53853530389663418
	.quad	0x3fdb24c0c668ee40              # double 0.42411822677579281
	.quad	0x3fe6e5c00f8effa6              # double 0.71554568327700419
	.quad	0x3fd4ecf618429db2              # double 0.32696297043954836
	.quad	0x3fed490562e907c3              # double 0.91516370123303437
	.quad	0x3fd18ef050ea1ff2              # double 0.27434928800403136
	.quad	0x3fe124cc21e6b9ac              # double 0.53574186917631073
	.quad	0x3fefca6689360257              # double 0.99345709609049037
	.quad	0x3fdf11fee8cfae7e              # double 0.4854733727977204
	.quad	0x3fbd6cf4136c6080              # double 0.11494374727442569
	.quad	0x3fc80248b42694ec              # double 0.18756970211430912
	.quad	0x3fe1ddd79185471e              # double 0.55833033010478395
	.quad	0x3fec04884a059df6              # double 0.87555326898012598
	.quad	0x3fdc20d9a05a146e              # double 0.43950501117098539
	.quad	0x3feb1811717abedb              # double 0.84668800510368258
	.quad	0x3fc1e177c7645c84              # double 0.13969323383273402
	.quad	0x3fd874c4652a0e10              # double 0.38212690238307889
	.quad	0x3f6fa2dca6333200              # double 0.0038618382983257593
	.quad	0x3faa8c5c2426c660              # double 0.051852111256619038
	.quad	0x3fd09725066df006              # double 0.25922513606906283
	.quad	0x3fdffc2e20554e28              # double 0.49976685674229993
	.quad	0x3fbf27ea7e63ccc0              # double 0.12170281968774344
	.quad	0x3fa379f57e0cda80              # double 0.038039847981441888
	.quad	0x3fed1f1d9aa71306              # double 0.91004829602806647
	.quad	0x3fc155d84b20421c              # double 0.13543227833044191
	.quad	0x3fe8f40f281335ff              # double 0.77979238345295687
	.quad	0x3fed8a0a29249ed7              # double 0.92310054813148212
	.quad	0x3fdb20f4f31265e4              # double 0.42388652551161798
	.quad	0x3fbec3f43bbf0998              # double 0.12017752131126824
	.quad	0x3fced03e1f5fe8fc              # double 0.2407300618359115
	.quad	0x3fe3e5c1d8323fbb              # double 0.62179653383099465
	.quad	0x3fb2a4ff17778710              # double 0.072830146054482237
	.quad	0x3fe8978628627700              # double 0.76849658858893122
	.quad	0x3fe795adf66b88a1              # double 0.73702142838398654
	.quad	0x3fed923820f27c62              # double 0.92409902987482107
	.quad	0x3fd1ef9a274e6300              # double 0.28024915541168127
	.quad	0x3fe7f17152fe8f83              # double 0.74822298250045127
	.quad	0x3fd39d944361941c              # double 0.30649286823455824
	.quad	0x3fdc060d715b5962              # double 0.43786941595080553
	.quad	0x3fc7a097274ec56c              # double 0.18458833140679631
	.quad	0x3fe4289c36396e7e              # double 0.62995730009738771
	.quad	0x3fe7b9b611e37204              # double 0.7414198254951434
	.quad	0x3fd924c708c209d8              # double 0.39286971907872958
	.quad	0x3fc0e2a1cd9e77e8              # double 0.13191626110068388
	.quad	0x3fc868f361fdfbac              # double 0.19070284161349826
	.quad	0x3fc8c407351eee64              # double 0.19348230451383863
	.quad	0x3fde6e69871f422a              # double 0.47548902698057083
	.quad	0x3fb682708dd43d70              # double 0.087927851320491745
	.quad	0x3fdaee5769a50400              # double 0.42079720799307552
	.quad	0x3fde5c38a134c97c              # double 0.47437873595040236
	.quad	0x3fe4e3f6b9ba261f              # double 0.65282760882218216
	.quad	0x3fdbb7167d35190c              # double 0.43304979541098088
	.quad	0x3fd6392480e4648c              # double 0.34723770701527523
	.quad	0x3fec4d6b50e38639              # double 0.88445058630549689
	.quad	0x3fc91f54af0b661c              # double 0.19626864001365696
	.quad	0x3fdf79a7445b32e8              # double 0.49180013347067453
	.quad	0x3fd91b63583cd4c4              # double 0.39229663483576993
	.quad	0x3fc3d4c55f540134              # double 0.15493075518316746
	.quad	0x3fb77129de91cc88              # double 0.091570488775504555
	.quad	0x3fb6a6ee12c354f8              # double 0.088484649258436465
	.quad	0x3fe949a9a469c459              # double 0.79024202453559689
	.quad	0x3fe3e28faf9c1fbc              # double 0.6214064054374755
	.quad	0x3fd2ba9e3eab2d5e              # double 0.29264026756273676
	.quad	0x3fac7e87be6269d0              # double 0.055652849188124187
	.quad	0x3f90018b63b3ca40              # double 0.015630891762109522
	.quad	0x3fefac91bad48271              # double 0.98981558313614759
	.quad	0x3fe392c2d1fadf4e              # double 0.6116651631518637
	.quad	0x3fc034981b05ab20              # double 0.12660504645767734
	.quad	0x3fe45c40a5432d02              # double 0.63626129415334298
	.quad	0x3fc2a943ea0f21d4              # double 0.14579056671779134
	.quad	0x3fe1a600a7f9540b              # double 0.55151398475084201
	.quad	0x3fefcd59c1c1f879              # double 0.99381721347141571
	.quad	0x3fb179974b1d0df8              # double 0.068261581266646831
	.quad	0x3fec8894a7f684f0              # double 0.89167244725481787
	.quad	0x3fe08ca65e4315e9              # double 0.51716917429501763
	.quad	0x3fe629943725332f              # double 0.69257555742806243
	.quad	0x3fe543750a4b8663              # double 0.66448452006097758
	.quad	0x3feac81f035e6dda              # double 0.83692885072690193
	.quad	0x3fea3019f4eb69f1              # double 0.81837175212723257
	.quad	0x3fd87cb8a3c377e0              # double 0.38261238091024374
	.quad	0x3fdd793b75811c36              # double 0.46052443003685839
	.quad	0x3fd97bb2bb63edf2              # double 0.39817493724669284
	.quad	0x3fdf60b3acb19a10              # double 0.49027721275925362
	.quad	0x3fc66ffcf1e8e21c              # double 0.17529260456082418
	.quad	0x3fe854e0439a27c2              # double 0.76036084369228996
	.quad	0x3fe49e59726e9375              # double 0.64432976102817341
	.quad	0x3fddab2be14d1be6              # double 0.46357247354575148
	.quad	0x3fedc71e01e1027f              # double 0.93055630080205265
	.quad	0x3fe12a0472865012              # double 0.53637907379243388
	.quad	0x3fd7069696f60da8              # double 0.35977711431788828
	.quad	0x3fec67b15096e9ca              # double 0.88765779247415222
	.quad	0x3f88ab7c6be5abc0              # double 0.012045833628425373
	.quad	0x3fc700c56fc3affc              # double 0.17971103627439777
	.quad	0x3fd36e5ed50f630c              # double 0.30361147696162116
	.quad	0x3fcf9ac2ce3bef60              # double 0.24691042966866927
	.quad	0x3fdeb4ec9850f2a0              # double 0.47979273676518552
	.quad	0x3feffec15c86af85              # double 0.99984806128985381
	.quad	0x3fd243355bebaa30              # double 0.2853520772611402
	.quad	0x3fd6df28722e4bd2              # double 0.35737048292611207
	.quad	0x3fc9915af23b8cd0              # double 0.19974839046253701
	.quad	0x3feb868e5763014a              # double 0.86017529552194927
	.quad	0x3fe49fe215ea1445              # double 0.64451698570395222
	.quad	0x3fe09c83709f65ab              # double 0.51910564419374816
	.quad	0x3fee0a76ec0a3f99              # double 0.93877740956849032
	.quad	0x3fe5263e0f7bd117              # double 0.66091826461937131
	.quad	0x3fd0fc0329dcabbe              # double 0.2653816136177588
	.quad	0x3fc75612e365b7a4              # double 0.18231426337609691
	.quad	0x3fd7c81baebabf0e              # double 0.37158863128114283
	.quad	0x3fd399d7f77034b6              # double 0.30626486934563546
	.quad	0x3fd5ba865dd145b2              # double 0.33950957452642705
	.quad	0x3fe321fa5a637b9a              # double 0.59789769796394698
	.quad	0x3fe9c22e3ee4afdb              # double 0.80495369228219305
	.quad	0x3fef47d53058a70b              # double 0.97751864855419634
	.quad	0x3fea1d24c065a3b8              # double 0.81605756356758885
	.quad	0x3fd0942ba1f0863e              # double 0.25904360594185849
	.quad	0x3fe9b7c53693492e              # double 0.80368290576214974
	.quad	0x3fe0df916433e056              # double 0.52729100771740423
	.quad	0x3fd7e0ae9b55e922              # double 0.37308850450030395
	.quad	0x3fd80f4b8ec1b0f0              # double 0.37593354168963256
	.quad	0x3fbf4bb3706a3cb0              # double 0.12224885458475643
	.quad	0x3fcb49ee77ebec84              # double 0.21319371085687433
	.quad	0x3fe0c284c0f71c58              # double 0.52374494255571857
	.quad	0x3fda2dfe9d5b9f48              # double 0.40905728690130561
	.quad	0x3fac34702debad50              # double 0.055087571721595396
	.quad	0x3fea81a05dde1851              # double 0.82832353909976508
	.quad	0x3fecea7ae1792c05              # double 0.90362304723510134
	.quad	0x3fbbbfbc24ce0198              # double 0.10839439295342002
	.quad	0x3fe8c57f6a02e326              # double 0.77410860734298548
	.quad	0x3fda5d23ab9bacd0              # double 0.41193477400402134
	.quad	0x3fe2af2108efcb01              # double 0.58387805695960548
	.quad	0x3fe5b915b2c91552              # double 0.67884335440673227
	.quad	0x3fd6161450fed6ca              # double 0.34509761724198695
	.quad	0x3faf976e39402430              # double 0.061702198494522853
	.quad	0x3fd8290c5dcf9514              # double 0.3775053897973788
	.quad	0x3fdfcbfa978c4f56              # double 0.49682488250367862
	.quad	0x3fe04c0ae6576711              # double 0.50928254116590399
	.quad	0x3fe6e7ee7355efed              # double 0.71581194426062
	.quad	0x3febabb9f04563e5              # double 0.86471268585148364
	.quad	0x3f98be44f1aa1420              # double 0.024163319826147611
	.quad	0x3fd8792c4c728b20              # double 0.38239581552095281
	.quad	0x3fdcb100adb0f81c              # double 0.44830338441886552
	.quad	0x3fe63cea35339aca              # double 0.69493589774068565
	.quad	0x3fd9b51b2ef539d2              # double 0.40167884431585066
	.quad	0x3fd4013e2f263732              # double 0.31257586101934287
	.quad	0x3fe641010a6b0097              # double 0.69543506655465392
	.quad	0x3fd9734f3025ffc0              # double 0.39766292287822225
	.quad	0x3febf17d5724d0c0              # double 0.87322871227527088
	.quad	0x3fe88e64081de74a              # double 0.76738168320955791
	.quad	0x3fdf628397c12768              # double 0.49038781947876098
	.quad	0x3fb353b3c994d2a8              # double 0.075495945657915287
	.quad	0x3fe70c2999304c67              # double 0.72023467940961161
	.quad	0x3fdc9c0317f7fa44              # double 0.44702222195329377
	.quad	0x3f7a2b8529906c00              # double 0.0063891603140531217
	.quad	0x3fef5f300edabb53              # double 0.98036959553960867
	.quad	0x3fd6553918f9e9ae              # double 0.34895160140117809
	.quad	0x3feff9dcec848a7a              # double 0.99925085253592205
	.quad	0x3fdbd7808a76fbac              # double 0.43502820512724827
	.quad	0x3fe0955e349ffc59              # double 0.51823339727696827
	.quad	0x3fe3924a0155f27e              # double 0.61160755406270062
	.quad	0x3fcb6ac7fcada38c              # double 0.21419620359236224
	.quad	0x3feab1f748cf910e              # double 0.83422435971127284
	.quad	0x3fea13fafa6a2ead              # double 0.8149390116609162
	.quad	0x3fdeafea4df5cca6              # double 0.47948701489731105
	.quad	0x3fa091c2c110b100              # double 0.032362066333321948
	.quad	0x3f6af0ec3b325100              # double 0.003288709057935546
	.quad	0x3fecf7095bb6f277              # double 0.90515582955374796
	.quad	0x3fdc41c8d82df45a              # double 0.44151517020492792
	.quad	0x3fcbcdaa85925d20              # double 0.21721393129403399
	.quad	0x3fe81fff05ef72fb              # double 0.75390578421828935
	.quad	0x3fef63939d39f7b2              # double 0.9809053488568138
	.quad	0x3fa55bad868ea3c0              # double 0.041715071368634948
	.quad	0x3fe08a6b022682cd              # double 0.516896728706422
	.quad	0x3fe5dff5fa1f43d1              # double 0.68358897068002922
	.quad	0x3fd1aadc6e15fe4e              # double 0.27605353117539699
	.quad	0x3fe9663532782a8b              # double 0.79372653825096628
	.quad	0x3fd4854d4e073fe4              # double 0.32063610668137543
	.quad	0x3fd99204e8dc9f32              # double 0.39953730335627136
	.quad	0x3fee0bf8111d5de0              # double 0.93896106093137277
	.quad	0x3feb4b8bdff493d2              # double 0.85297197095189348
	.quad	0x3fc0add5e90dae14              # double 0.13030504111826302
	.quad	0x3feec78b83ddadd2              # double 0.96185851817193169
	.quad	0x3fef80da73c00025              # double 0.98447916610166841
	.quad	0x3fe33d77e343657b              # double 0.60125345599514846
	.quad	0x3f8a3a2acfc684c0              # double 0.012806257692150047
	.quad	0x3fdded207586be66              # double 0.46759807088071736
	.quad	0x3fc63f0636deffd8              # double 0.17379834822895535
	.quad	0x3fe444aa3e932e90              # double 0.63338196012178294
	.quad	0x3fe9d378799054f2              # double 0.80706428282669962
	.quad	0x3fa364872b22e3c0              # double 0.037876342788372153
	.quad	0x3febb76feb1abe09              # double 0.86614223402824664
	.quad	0x3fdc63101715eda0              # double 0.44354631666620925
	.quad	0x3f72f0c4542d1280              # double 0.0046241444677589394
	.quad	0x3fe540fdcd712075              # double 0.66418352246638668
	.quad	0x3fca466a2e779780              # double 0.20527388829139781
	.quad	0x3fe42176c2ea8b4a              # double 0.62908495015685983
	.quad	0x3fd07100eeb08480              # double 0.25689719495318997
	.quad	0x3fae649d6a2674f0              # double 0.059361380775252104
	.quad	0x3fd2337d41485f92              # double 0.28439265609039766
	.quad	0x3fd37f9c6350f7ae              # double 0.30466375063758278
	.quad	0x3fe478cbf2837045              # double 0.63974568715958269
	.quad	0x3fd0af253bd8cba0              # double 0.26069002956790577
	.quad	0x3fa5906fa1ff0890              # double 0.042117584729127633
	.quad	0x3fd1fbb5f51f8198              # double 0.28098820627021714
	.quad	0x3fd2598ae3781082              # double 0.2867152425171825
	.quad	0x3fb0513c2798eb80              # double 0.063739547412223985
	.quad	0x3fddea4bd6cb132a              # double 0.46742530799774562
	.quad	0x3fd8c8265dcd64aa              # double 0.38721617851622148
	.quad	0x3feadfe6c94237d8              # double 0.83983172710736209
	.quad	0x3fcbb0ece274811c              # double 0.21633683259370506
	.quad	0x3fdd641a4b90748a              # double 0.4592347848827748
	.quad	0x3fea1c692dd60e28              # double 0.81596812202810032
	.quad	0x3fd4c9974e84d4d6              # double 0.32480414073809294
	.quad	0x3fe71c6aa00c22da              # double 0.72221881160029544
	.quad	0x3fd6ad1e0bd01956              # double 0.354316245590231
	.quad	0x3fdb34d8440fd95e              # double 0.42510038992567967
	.quad	0x3fc5c047176b5cb0              # double 0.16993034976505816
	.quad	0x3fc2f459c348776c              # double 0.14808198962503683
	.quad	0x3fea0a7f08d0c602              # double 0.81378127786427989
	.quad	0x3fd612700f9609d0              # double 0.34487535020903426
	.quad	0x3fde686410e6940a              # double 0.47512151384791024
	.quad	0x3fdf2f2176e69e54              # double 0.48725163089190926
	.quad	0x3fdce371054569ac              # double 0.45138192667732357
	.quad	0x3fef7688f7d64fdc              # double 0.98321960836119215
	.quad	0x3fb8024cee11f9e0              # double 0.093785102961170263
	.quad	0x3fe3e2fc8723474e              # double 0.62145830530264745
	.quad	0x3fdad9c7efd842da              # double 0.41954229757633998
	.quad	0x3fe3d9f4c34527bf              # double 0.62035596979807639
	.quad	0x3feed6e27944b028              # double 0.96373103795258874
	.quad	0x3fec454b7cd7cb43              # double 0.88345884688747167
	.quad	0x3fde33a6300c651c              # double 0.47190241520145704
	.quad	0x3fe112818fe3007c              # double 0.53350904562832069
	.quad	0x3fe3fc22b26be3df              # double 0.62452826354921942
	.quad	0x3fed3bd1141e29e6              # double 0.91355184487593699
	.quad	0x3fe68164fbc36adb              # double 0.70329522297410152
	.quad	0x3fc1260e7181e9f0              # double 0.13397388975484104
	.quad	0x3fa2724fc328c9a0              # double 0.036028378079566936
	.quad	0x3fe5430dbab1caab              # double 0.66443525756615907
	.quad	0x3fe0657a33c4316e              # double 0.51238737211819596
	.quad	0x3fda971203795368              # double 0.41547060336352226
	.quad	0x3fe82cfcc5a9a0f7              # double 0.75549162488917332
	.quad	0x3fca86f7e29ddcfc              # double 0.2072439056898715
	.quad	0x3febeb24d03e6421              # double 0.87245407745934156
	.quad	0x3fe4e7b2b9311d36              # double 0.65328346414836491
	.quad	0x3fb4594af79bedb8              # double 0.079487500621261087
	.quad	0x3fdf1d26c89a7dc6              # double 0.48615426626380687
	.quad	0x3fe0c737b9beac2b              # double 0.52431856420787903
	.quad	0x3fdffb71db08df96              # double 0.4997219695101135
	.quad	0x3fe0565cdd6297f2              # double 0.51054232825549506
	.quad	0x3fef2d46bb62f0ba              # double 0.97427689169810283
	.quad	0x3fef6264a0171e68              # double 0.98076087253225541
	.quad	0x3fe1e123e6313c73              # double 0.55873293837966143
	.quad	0x3fe101c59d44a512              # double 0.53146630016741114
	.quad	0x3fcafc5cd3babc38              # double 0.2108264955363397
	.quad	0x3fe788ee1856c15a              # double 0.73546509507836366
	.quad	0x3fc2f3ac7d5fc784              # double 0.14806133386406028
	.quad	0x3fe06130eb888227              # double 0.51186414721093321
	.quad	0x3fe4969b88c9e31a              # double 0.64338471142318387
	.quad	0x3fdec892a10b9e92              # double 0.48099199034775453
	.quad	0x3fc2e4b634da7640              # double 0.14760472851496509
	.quad	0x3fe1492e12b4eeb3              # double 0.54018310216584664
	.quad	0x3fddecfadccc6790              # double 0.46758910715436119
	.quad	0x3fc55dbfb8186184              # double 0.1669234894659547
	.quad	0x3fe4344de50a8bac              # double 0.6313847993336501
	.quad	0x3fd22c2abbcef3e2              # double 0.28394573536553314
	.quad	0x3fce5772d2085b9c              # double 0.23704371695995696
	.quad	0x3fe2c4cb8ee7dec8              # double 0.58652284537580446
	.quad	0x3fef15e63d7d3053              # double 0.97142326364110898
	.quad	0x3fed64577b4c4a49              # double 0.91849874574320112
	.quad	0x3fd6c62ed89dd990              # double 0.35584612993206921
	.quad	0x3fe6e73f2918f88a              # double 0.7157283594786048
	.quad	0x3fdee46aea16548e              # double 0.48269150600510435
	.quad	0x3fd3c2f07d014f24              # double 0.30877315719156884
	.quad	0x3fc40523de8c3700              # double 0.15640686384761437
	.quad	0x3fe024490b2d19bd              # double 0.50442936117979509
	.quad	0x3fe342ce80c96254              # double 0.60190510896343108
	.quad	0x3fe77726d0a1ba28              # double 0.73329487560642281
	.quad	0x3fbcb7dcb46d91e8              # double 0.11218051342945723
	.quad	0x3fee677c4ad474c2              # double 0.9501325093766797
	.quad	0x3fda96133e10cc84              # double 0.41540986119361656
	.quad	0x3fdcf1db2214d648              # double 0.45226171806584547
	.quad	0x3fd265154e8b1f02              # double 0.28741963072069165
	.quad	0x3fd7c2551e2078e6              # double 0.37123611394953426
	.quad	0x3fecf96140c089c0              # double 0.90544188162703421
	.quad	0x3fe93fb71fe21d2f              # double 0.78902775027464667
	.quad	0x3fd2066185843620              # double 0.28163946188655764
	.quad	0x3fe92949dd8023b9              # double 0.78629010450196468
	.quad	0x3fef552e2e2d1c47              # double 0.97914799708167599
	.quad	0x3fe30181f936921d              # double 0.59393404650160486
	.quad	0x3fccc52ab23349c8              # double 0.22476705266178798
	.quad	0x3f62b7b1141dbd00              # double 0.0022848566595069508
	.quad	0x3fed2538736869fe              # double 0.91079351940726361
	.quad	0x3fdf66795df2a716              # double 0.49062952208133603
	.quad	0x3fc313f022380368              # double 0.14904596014823857
	.quad	0x3fb28027fe334f00              # double 0.072268008766794622
	.quad	0x3fec336b7bd32f55              # double 0.8812768381553534
	.quad	0x3fe042ff077bf162              # double 0.50817824804066114
	.quad	0x3fe197cbfa2ae066              # double 0.54977988110387055
	.quad	0x3fe3204c49bec2f6              # double 0.5976926269850924
	.quad	0x3fe0258de1d0534e              # double 0.50458425621273206
	.quad	0x3fb6ebeb67b521c0              # double 0.089537346667504458
	.quad	0x3fd28d9476431392              # double 0.28989135312104353
	.quad	0x3feb10f8fb91b24c              # double 0.84582184919924818
	.quad	0x3fc79b64590a4414              # double 0.18442968700085827
	.quad	0x3fe6d6478585f84e              # double 0.71365715101979688
	.quad	0x3fdbb424f0ce76b0              # double 0.43287013546237585
	.quad	0x3fcdaf32e2f65c44              # double 0.23190914232393045
	.quad	0x3fe0fdaa58b1ba6d              # double 0.5309650165853107
	.quad	0x3fe26fcff0861d94              # double 0.57614895798990284
	.quad	0x3fe9328d62893fcf              # double 0.78742093320215101
	.quad	0x3fdcf8363265ca56              # double 0.45264964028971144
	.quad	0x3fe90797e3c68146              # double 0.78217691886315133
	.quad	0x3fe09f11048172fa              # double 0.51941729431163641
	.quad	0x3fe7671c89b77ce3              # double 0.73133685014536487
	.quad	0x3fc9bedaaa7d5d7c              # double 0.20113690685932883
	.quad	0x3fdcdeb0acf88926              # double 0.45109192744907245
	.quad	0x3fea0dbbbb5eca6e              # double 0.8141764316154203
	.quad	0x3fd3984394c12092              # double 0.30616845633313361
	.quad	0x3fe1aab21a434276              # double 0.55208687905731213
	.quad	0x3fdc310a491b375a              # double 0.44049317492760098
	.quad	0x3fb728e5c898e9c8              # double 0.090467797731356048
	.quad	0x3fe88885d7e584d1              # double 0.76666538398071726
	.quad	0x3fd890abd028e730              # double 0.38383002594092641
	.quad	0x3fe14d7112190559              # double 0.54070333037104057
	.quad	0x3fe0a75de1dec9b1              # double 0.52043050875936647
	.quad	0x3fe6213797612c7a              # double 0.69155482832265069
	.quad	0x3fb85b5fd75188c0              # double 0.095144262378684452
	.quad	0x3fe957c0bab3f539              # double 0.79196201768323882
	.quad	0x3fde496d3878daa2              # double 0.47323160662510066
	.quad	0x3fe9dc6db6920848              # double 0.80815778406418648
	.quad	0x3fda0bac8d52513e              # double 0.40696252633030727
	.quad	0x3fd18e270e7d7b6a              # double 0.27430130400710218
	.quad	0x3fe21081105707e0              # double 0.56451466742896272
	.quad	0x3feda1edcb63e099              # double 0.92601670956266269
	.quad	0x3fb17d6f58f5e258              # double 0.068320235461109546
	.quad	0x3fe17210b89dd9dd              # double 0.5451739888947561
	.quad	0x3fac207877a55380              # double 0.05493523083229146
	.quad	0x3fe030f21febf1f0              # double 0.5059748290510111
	.quad	0x3fd7842681616766              # double 0.36744082102597131
	.quad	0x3fd433dacd691032              # double 0.31566495952233986
	.quad	0x3fdb367c509d6f6c              # double 0.42520053741986064
	.quad	0x3f863538a3b59f80              # double 0.010843698974625005
	.quad	0x3fc38731bfca9dc8              # double 0.15256330361192583
	.quad	0x3fc5f8d2860157a0              # double 0.17165595572685977
	.quad	0x3feaeb70836533d0              # double 0.84124017394207762
	.quad	0x3fd6dc0a1c3e7d98              # double 0.35718014486516259
	.quad	0x3fd83b4abbcb9c62              # double 0.378618892091657
	.quad	0x3fea144f4b9459df              # double 0.81497921716328026
	.quad	0x3fd34be96d055a36              # double 0.30150828978131317
	.quad	0x3fe934fa8115b304              # double 0.78771710597865807
	.quad	0x3fdb9955fedf070e              # double 0.43123388185277711
	.quad	0x3fd23f762619ae3a              # double 0.2851233837197672
	.quad	0x3fd223ff743d4a52              # double 0.28344713546281242
	.quad	0x3fa054afa2d325a0              # double 0.031896103502343509
	.quad	0x3fbeefdeeb005850              # double 0.12084763753259264
	.quad	0x3fec6f3bf8ca3395              # double 0.88857840148704048
	.quad	0x3fe0eacc4ebd0dfb              # double 0.52866187456714842
	.quad	0x3fce81e32f25e83c              # double 0.23833885004188626
	.quad	0x3fbec814881bce98              # double 0.12024048159565337
	.quad	0x3fece0414f29bca5              # double 0.90237489186792585
	.quad	0x3fd072bc12773e60              # double 0.25700284770298332
	.quad	0x3fc37d1a72918a20              # double 0.15225535005727497
	.quad	0x3fcdb1c7bea16dec              # double 0.23198792274602853
	.quad	0x3fbe4d1c504e8560              # double 0.11836411438573213
	.quad	0x3fc7e1642b3067fc              # double 0.18656589611856578
	.quad	0x3fc6e1c39887d490              # double 0.17876477191717699
	.quad	0x3fea0412a19f917a              # double 0.81299716536572864
	.quad	0x3fb79462cbe806b8              # double 0.092107939512085291
	.quad	0x3fd8ee09607f6528              # double 0.3895286028251399
	.quad	0x3fdff398e1cfc9e2              # double 0.49924299289628327
	.quad	0x3fe0d8f04fd00969              # double 0.52648177708060218
	.quad	0x3fd35f9d0121ada0              # double 0.30271077261451218
	.quad	0x3fd9f7a6b60292bc              # double 0.40574043058795062
	.quad	0x3fd2a8b4203d6a90              # double 0.29154685161999172
	.quad	0x3fb328706dbbc718              # double 0.074835802832037834
	.quad	0x3fe93efb1037e8c8              # double 0.78893807571082508
	.quad	0x3fba3d97d0b2c070              # double 0.1025023350255212
	.quad	0x3fc693579fc1bff8              # double 0.17637152958513957
	.quad	0x3fd358997b8e529a              # double 0.30228268686304605
	.quad	0x3fe69e55d78e5884              # double 0.7068280420378561
	.quad	0x3fe95f433effce0e              # double 0.79287874512232448
	.quad	0x3fd681d8f9ea0646              # double 0.35167526632003321
	.quad	0x3fee367e148c0d7d              # double 0.944151916628854
	.quad	0x3fece20615311cbb              # double 0.90259079112083584
	.quad	0x3fe3c3fa3d097432              # double 0.61767303391719097
	.quad	0x3fb988efbda875f8              # double 0.099745734980807188
	.quad	0x3fcade0aefa8b73c              # double 0.20990120603658535
	.quad	0x3fdbadf8a8500400              # double 0.43249336659215487
	.quad	0x3fe25648a75b7eca              # double 0.57303269087784625
	.quad	0x3fe210b1d08e38cc              # double 0.56453791364199324
	.quad	0x3fe077948d50e71f              # double 0.51459720230852557
	.quad	0x3feddcb33d4d42bd              # double 0.93319093678481801
	.quad	0x3fe818ef24368815              # double 0.75304371903280531
	.quad	0x3fc9aa5a9b0f0550              # double 0.20051128932213169
	.quad	0x3fd1b459d1181414              # double 0.27663274211255495
	.quad	0x3fe9c03cb18d859c              # double 0.80471644094739103
	.quad	0x3fa11840a65d2000              # double 0.033388157184674583
	.quad	0x3fee00988eff0c26              # double 0.93757274559937254
	.quad	0x3fec5b943712b412              # double 0.88617907291848241
	.quad	0x3fb628ab3b0ba9c8              # double 0.086558057704372193
	.quad	0x3fc93a674517c2ec              # double 0.19709483026192431
	.quad	0x3fe60f199bc506cf              # double 0.68934326576001037
	.quad	0x3febaa56c2cbc928              # double 0.86454332395650102
	.quad	0x3fd4c2b13f88a238              # double 0.32438307957139356
	.quad	0x3fe151bc9bb31a9f              # double 0.54122763071139335
	.quad	0x3fe53ac35cee3660              # double 0.66342323446742668
	.quad	0x3fe5e24d40df0853              # double 0.68387472791824633
	.quad	0x3fb99062eadd0038              # double 0.09985941156355771
	.quad	0x3fee2d8a557cdbe8              # double 0.94305912682363857
	.quad	0x3fbeb8770afd3cc8              # double 0.12000221269885281
	.quad	0x3fe1aa971b8fda2d              # double 0.55207400687397057
	.quad	0x3fdfb1480b694354              # double 0.4951953994214382
	.quad	0x3fdbbc9ed8785110              # double 0.43338748111388359
	.quad	0x3fde66cfc6a7a7be              # double 0.47502512359517002
	.quad	0x3fdeb77b09f7056e              # double 0.47994876835954059
	.quad	0x3fdc21a362ca03f4              # double 0.43955311438918376
	.quad	0x3fe476cd9c550bdf              # double 0.63950233968386871
	.quad	0x3fdee69d9868486a              # double 0.48282565959482915
	.quad	0x3fef8e0392e25620              # double 0.98608568847948063
	.quad	0x3fad09cb38f004c0              # double 0.056715346050631776
	.quad	0x3fdf287bd4a67888              # double 0.48684592978123264
	.quad	0x3fd1441499bf0a00              # double 0.26978030218393201
	.quad	0x3fe329f97dcd3128              # double 0.59887384958850465
	.quad	0x3fd01b9de59b950e              # double 0.25168559477454344
	.quad	0x3fdb0b5feeae1592              # double 0.42256925877185225
	.quad	0x3fe0d09efffa50df              # double 0.52546644206679705
	.quad	0x3fdb35b3623bbc0e              # double 0.42515263169383466
	.quad	0x3fe247f479354658              # double 0.57128356622178966
	.quad	0x3fdb943c11c85c00              # double 0.43092252480113302
	.quad	0x3fd6d64eaff7e888              # double 0.35683028397000571
	.quad	0x3fe963986a3fc564              # double 0.7934076380899282
	.quad	0x3fef5c86e22c959a              # double 0.98004478621139701
	.quad	0x3fe0dbdfd840f626              # double 0.52684013592778878
	.quad	0x3fe9e4e3fe7e35c5              # double 0.8091907473150789
	.quad	0x3fc1f1c75df203d4              # double 0.14019100272346796
	.quad	0x3fe242977f94f80b              # double 0.57062888067571416
	.quad	0x3faaa300c5105a20              # double 0.052024864249848202
	.quad	0x3fe63659ee890001              # double 0.6941346796884319
	.quad	0x3fed54a10e5f0ab1              # double 0.91658070380102263
	.quad	0x3fc89329c4f0a6bc              # double 0.19199106327260107
	.quad	0x3fe56294462f7e59              # double 0.66828359325513553
	.quad	0x3fe3c276a32f5d29              # double 0.61748821136544507
	.quad	0x3fd1de4816b090ae              # double 0.27919199195663225
	.quad	0x3fa6e8f2f5730e80              # double 0.044746010267343372
	.quad	0x3fc81eb7241087a0              # double 0.18843735943761164
	.quad	0x3fd01f1ef5fa549c              # double 0.2518994714858509
	.quad	0x3fe81ef2dae90702              # double 0.75377791171942499
	.quad	0x3febd56738b594ce              # double 0.86980019641910089
	.quad	0x3fd7a8157fb05786              # double 0.36963403195965616
	.quad	0x3fee17ca07398c56              # double 0.94040395175069125
	.quad	0x3fcc21a0cead6be8              # double 0.2197762498061302
	.quad	0x3fdc682280f44470              # double 0.44385588257961839
	.quad	0x3fe34d21e2058297              # double 0.6031655706866158
	.quad	0x3fe8070ae8175004              # double 0.75085969286237785
	.quad	0x3fb803d233fdbb60              # double 0.093808305447721007
	.quad	0x3fe6c3acb5ff077a              # double 0.71138606592306464
	.quad	0x3fbdf32a6c33b6a0              # double 0.11699166433001063
	.quad	0x3fdbeabf6fa8343a              # double 0.4362028684998368
	.quad	0x3fc07ea90f7d9690              # double 0.12886536842704688
	.quad	0x3fdbc72661d20e0c              # double 0.43403014710222076
	.quad	0x3fe23ce4f1dc879e              # double 0.56993338812411642
	.quad	0x3fe52f88bd0ef7b3              # double 0.66205250668985227
	.quad	0x3fdce6f4202df33a              # double 0.45159629004028867
	.quad	0x3fe82ab5a883ba34              # double 0.75521357453346249
	.quad	0x3fdd677863e8ea84              # double 0.45944032437152083
	.quad	0x3f60cc7cc7c4b200              # double 0.0020506322017779244
	.quad	0x3fed6b0b32ba94a8              # double 0.91931686313605088
	.quad	0x3fddc5310270e296              # double 0.46516061056494473
	.quad	0x3fe59b0ba0e8d6f2              # double 0.67517644336359539
	.quad	0x3fecfc3668124caa              # double 0.90578766180478465
	.quad	0x3fe47b28fa3b4e60              # double 0.64003418801662448
	.quad	0x3fd5aaff98e69f26              # double 0.338561915700199
	.quad	0x3fcd3ab9feb33a20              # double 0.22835469185379598
	.quad	0x3fe7d8e8682d413b              # double 0.7452280077650707
	.quad	0x3fe03f573588b2fd              # double 0.50773201423507397
	.quad	0x3fd4dec713376b0e              # double 0.3260972678814803
	.quad	0x3fca0c0b4a0db858              # double 0.20349255672357702
	.quad	0x3fc52199a2043bf8              # double 0.16508789454425687
	.quad	0x3fb99c02c8a31348              # double 0.10003678701748442
	.quad	0x3fd214073dfe0f74              # double 0.28247242978999698
	.quad	0x3fed798ff5236980              # double 0.92108915213184162
	.quad	0x3fceefae4add8bb8              # double 0.24168947845018152
	.quad	0x3fe81ca4887899f7              # double 0.75349642424117647
	.quad	0x3fe02ee7f446cabe              # double 0.50572583875904065
	.quad	0x3fc738cab80bdb90              # double 0.18142065035473509
	.quad	0x3fe582cda9967779              # double 0.67221720812425112
	.quad	0x3fc6b208d45096f8              # double 0.17730818144735117
	.quad	0x3fb987b208897790              # double 0.099726798137878214
	.quad	0x3fb877c32ac36058              # double 0.095577428760749483
	.quad	0x3fe9d55f781c2a7a              # double 0.80729649981488127
	.quad	0x3fc7a61e03b95738              # double 0.18475699598155315
	.quad	0x3fc6e36dccc9900c              # double 0.17881557940847903
	.quad	0x3fedd913788773ed              # double 0.93274854222147285
	.quad	0x3fe12e66f0f4c9cf              # double 0.53691432058104194
	.quad	0x3fbd3111258b3d78              # double 0.11402995268439564
	.quad	0x3fef1a3522f9df50              # double 0.97194916564238021
	.quad	0x3fe0fbd63788da8c              # double 0.53074179503058039
	.quad	0x3fdfdac5ff85c58c              # double 0.49772787049649803
	.quad	0x3fd73b0f3230fe4c              # double 0.36297969724180201
	.quad	0x3fdd13ffac0206cc              # double 0.45434562490127628
	.quad	0x3fe9c44aabe1713e              # double 0.80521138735233655
	.quad	0x3fe2b48f89aba7cd              # double 0.58454110039496643
	.quad	0x3f806858f80c9740              # double 0.0080115271280863931
	.quad	0x3fe7a8207ef9ffe7              # double 0.73927330780133793
	.quad	0x3fefbf7fb62ac63d              # double 0.99212632731923344
	.quad	0x3feb76ad3d79b2ff              # double 0.85823690421020149
	.quad	0x3fe757018db0bd64              # double 0.72937085794357559
	.quad	0x3fe1381f92c60349              # double 0.53810099283882906
	.quad	0x3fd2711d879a9dac              # double 0.28815401308608091
	.quad	0x3fea24d9cc020ee0              # double 0.8169983849079152
	.quad	0x3fe2e24acf055b11              # double 0.59012356218122097
	.quad	0x3fd02b3044b5b7f2              # double 0.25263601980157013
	.quad	0x3feb20f67ee57f4f              # double 0.84777378830401939
	.quad	0x3fe30f85c2e20dff              # double 0.59564483702746418
	.quad	0x3fee574df8b68553              # double 0.94815729691269224
	.quad	0x3fd274f23f1e0020              # double 0.28838783420360592
	.quad	0x3fe908782defaaa9              # double 0.78228386852182041
	.quad	0x3fe17ed32e5fea0e              # double 0.54673155839492593
	.quad	0x3fe4365f1a4a17b4              # double 0.63163714537289772
	.quad	0x3fe6dccf76bf465f              # double 0.71445439522558363
	.quad	0x3fe8b63a8bee3d94              # double 0.77224471407127959
	.quad	0x3fd452c04afd82b8              # double 0.31755072901982428
	.quad	0x3fe3547eb6487afc              # double 0.60406432726071513
	.quad	0x3fe078292f3db7d2              # double 0.51466807581686624
	.quad	0x3febcdbcf8d284c8              # double 0.86886452291596417
	.quad	0x3fdb310855886d76              # double 0.42486770966362231
	.quad	0x3fe9802d1cfeada8              # double 0.79689651167921216
	.quad	0x3fe1ed9b21334d1c              # double 0.56025463566257683
	.quad	0x3fe70db2599cf327              # double 0.72042195799403863
	.quad	0x3fc3f452ac421870              # double 0.15589364443821152
	.quad	0x3fd1a3ee11528aa6              # double 0.27563049022334452
	.quad	0x3fee8b122ffd640a              # double 0.95447644589433023
	.quad	0x3fede81c57590d5f              # double 0.93458382663849793
	.quad	0x3fee267426d38ff4              # double 0.94219405730518568
	.quad	0x3fd2184e5598569c              # double 0.28273352011579234
	.quad	0x3fed680b5b95acf2              # double 0.9189507282984819
	.quad	0x3fcedd7c8d9fe194              # double 0.24113423266659295
	.quad	0x3fea521b2d881e1f              # double 0.82252272503768953
	.quad	0x3fcc5e81117bc8ec              # double 0.22163403848350727
	.quad	0x3fec855299b6524e              # double 0.89127473852074401
	.quad	0x3fbe7455e2befdc0              # double 0.11896263871948687
	.quad	0x3fec06725e7b9ada              # double 0.87578695729902312
	.quad	0x3fe9f016347c2037              # double 0.81055746317816257
	.quad	0x3fe7f02fb6acee3e              # double 0.74806962660608867
	.quad	0x3fd49ae28a66bbba              # double 0.32195342555763384
	.quad	0x3fd8ea6a55d555a8              # double 0.38930757887041034
	.quad	0x3febca03e1197029              # double 0.86841005291671991
	.quad	0x3fee4fa96b654dba              # double 0.94722434020734814
	.quad	0x3febc262e1f527c8              # double 0.86747879154540275
	.quad	0x3fbbdb010fc70610              # double 0.10881048808280291
	.quad	0x3fe11665174ec76e              # double 0.53398375084200977
	.quad	0x3fe2a584e3e9d0be              # double 0.58270496858906262
	.quad	0x3fe2f4596292c61b              # double 0.59232777836422501
	.quad	0x3fe5349a0005aa03              # double 0.66267108921357509
	.quad	0x3fef8c8d7ae9c6db              # double 0.98590730673296478
	.quad	0x3fe749df27ddafdf              # double 0.72776754175492531
	.quad	0x3fdbd4d5b4ffe630              # double 0.43486540485136782
	.quad	0x3fcc8791c7917864              # double 0.22288725132506493
	.quad	0x3fed5a4cae48694d              # double 0.91727289237614118
	.quad	0x3fef90d4f76d6f9a              # double 0.98642967534714221
	.quad	0x3fd795085405eb56              # double 0.3684712238825133
	.quad	0x3fc741f3998da980              # double 0.18170018193934467
	.quad	0x3fdce16c24dc70c4              # double 0.45125869369236349
	.quad	0x3fc6d3f1a9f71a20              # double 0.17834301756939031
	.quad	0x3fe6161d134728f1              # double 0.69019941106060234
	.quad	0x3fe0cf395a18c81c              # double 0.52529590222389144
	.quad	0x3fba070fa4e4f458              # double 0.10167024398556757
	.quad	0x3fe9668a006506d5              # double 0.79376697613789793
	.quad	0x3fd3a478dd67e584              # double 0.30691358205475461
	.quad	0x3fc2c1504b9f63d4              # double 0.14652446453581425
	.quad	0x3fd38568b08859aa              # double 0.30501763572228902
	.quad	0x3fe3b1f0ca9767e8              # double 0.61547126358641169
	.quad	0x3fc7a396ca3dfa18              # double 0.18467984080412303
	.quad	0x3fda2da98eee497c              # double 0.40903700788580699
	.quad	0x3fdfcf77183980c6              # double 0.49703767171559965
	.quad	0x3fe104f84e176201              # double 0.53185668232168848
	.quad	0x3fee93285da02889              # double 0.9554635838151323
	.quad	0x3fe0f5a5a96992b8              # double 0.52998622024877928
	.quad	0x3fcd824fcc36aa5c              # double 0.23053929778446303
	.quad	0x3fda5095921f5410              # double 0.41116847295535397
	.quad	0x3fc29351e5c0c040              # double 0.14512084692387539
	.quad	0x3fedfc60312a5dfc              # double 0.93705758669506122
	.quad	0x3fee74fa4a1f1f55              # double 0.95177950360173702
	.quad	0x3fc0c675dd1a8bec              # double 0.13105653091505987
	.quad	0x3feb19895f622d98              # double 0.8468672621688027
	.quad	0x3fc6b2a0099a0bbc              # double 0.17732620686373746
	.quad	0x3f8520164af3a240              # double 0.010315107500404541
	.quad	0x3fdc8fd76091a148              # double 0.44627937727502287
	.quad	0x3feb6c2138f29e3d              # double 0.85694943544962821
	.quad	0x3fe41993d5c210e7              # double 0.62812225103018882
	.quad	0x3fefb41334ae8753              # double 0.99073181428341638
	.quad	0x3fe675b77b69c11d              # double 0.70186971763726869
	.quad	0x3f9f4e08b7a2c980              # double 0.030571113785023751
	.quad	0x3fe5ebda9f99d641              # double 0.68504077121787799
	.quad	0x3fe30cd67baa1e36              # double 0.59531711724498027
	.quad	0x3fead8a8e16e68da              # double 0.8389477160410721
	.quad	0x3fe74a496d7644c8              # double 0.72781821612638797
	.quad	0x3fdab6070cbb5c40              # double 0.41736007922503759
	.quad	0x3fc046fb144a7750              # double 0.12716616144910597
	.quad	0x3feb5d60bbab4ed6              # double 0.85514866499075981
	.quad	0x3fc3fb1c135c1f5c              # double 0.15610075898461673
	.quad	0x3fd6fe785ee76da2              # double 0.35928162830324528
	.quad	0x3fea92288183eea4              # double 0.83034158035248539
	.quad	0x3febb01c3dc0801a              # double 0.86524784146240852
	.quad	0x3fe1310c91787d0c              # double 0.53723743831861404
	.quad	0x3fd7428093e07056              # double 0.36343397561154711
	.quad	0x3f846e6c930bcd80              # double 0.0099762422919187354
	.quad	0x3fcd9337f18b8d40              # double 0.2310552529735137
	.quad	0x3fda5c6067d3055a              # double 0.41188821925250851
	.quad	0x3fed96c90e760e46              # double 0.92465641807979959
	.quad	0x3fda424fd1e9a508              # double 0.41029735087666142
	.quad	0x3fe177bca5ff309a              # double 0.54586632176644234
	.quad	0x3fe1a81a5bbb26b2              # double 0.55177038112852572
	.quad	0x3fed1e9bdae4f876              # double 0.90998642685714404
	.quad	0x3fe2410115111200              # double 0.57043508638940921
	.quad	0x3fda891b3b6fc2e2              # double 0.41461830906250274
	.quad	0x3fbc970fe2e9ee38              # double 0.11168002405059319
	.quad	0x3fd0fc9b945474aa              # double 0.2654179523977499
	.quad	0x3fc7ac041354f878              # double 0.18493700927678325
	.quad	0x3fead4fc25674132              # double 0.83849913888301431
	.quad	0x3fe945767dbb3d90              # double 0.78972935254016541
	.quad	0x3fcaeb5fa09d2d8c              # double 0.21030803053359326
	.quad	0x3fcd162902b88260              # double 0.22723877556656458
	.quad	0x3fb874f5d29956c0              # double 0.095534671703116025
	.quad	0x3fc3f33955d37860              # double 0.1558601063797509
	.quad	0x3fe6245ffcaadc5e              # double 0.69194030140978291
	.quad	0x3fe300ba924fc2ab              # double 0.59383896423795102
	.quad	0x3fdb325cf4b88130              # double 0.42494892023570952
	.quad	0x3fe8994039e40fab              # double 0.76870738322076215
	.quad	0x3fdb75886f17ebb0              # double 0.42904864167183643
	.quad	0x3fe4206e2ec01c71              # double 0.62895878916687142
	.quad	0x3fd19295cfb89cc2              # double 0.27457185063617484
	.quad	0x3fc3dde120f60e64              # double 0.15520872220450876
	.quad	0x3fe08de38551337d              # double 0.51732040442003291
	.quad	0x3fe61f55b83e530c              # double 0.69132505402612443
	.quad	0x3fc5d840ec4d0b1c              # double 0.17066203630573618
	.quad	0x3fe0cf79d11c02b7              # double 0.52532664148028274
	.quad	0x3fc4572ae9379f90              # double 0.15891014468729425
	.quad	0x3feb21fcb24256a7              # double 0.84789881530987976
	.quad	0x3fe88ecf8c4c294d              # double 0.76743295099121556
	.quad	0x3fd8d658cca8442c              # double 0.38808269487441538
	.quad	0x3fdcd24f2c1e2f2a              # double 0.45033625896825191
	.quad	0x3fd3f5a434496a8c              # double 0.31186776262408311
	.quad	0x3fe4222296b1d532              # double 0.62916688377905516
	.quad	0x3fcf24077c981800              # double 0.2432870252961834
	.quad	0x3fe1aea5df3a806f              # double 0.55256932830162764
	.quad	0x3fe4f2cd4694556c              # double 0.65463889870686165
	.quad	0x3fd05803d78ab32e              # double 0.25537200974467822
	.quad	0x3fdd9a8f867663f0              # double 0.46255863314723822
	.quad	0x3fe636da3e9aa7e0              # double 0.6941958639847563
	.quad	0x3fea267928b2abb3              # double 0.81719644497694899
	.quad	0x3fec19e4062aab08              # double 0.87816048817089243
	.quad	0x3fd463f9825c8c22              # double 0.31860196810356645
	.quad	0x3fe3256414e64ec7              # double 0.59831432420693254
	.quad	0x3fd02dd1b2bc4188              # double 0.25279657797457178
	.quad	0x3fa86fb57fcef850              # double 0.047727271892185841
	.quad	0x3f9d1288cfa9b100              # double 0.028391015696272781
	.quad	0x3fe31150d698b07d              # double 0.59586374200217984
	.quad	0x3fe3830bd3aef586              # double 0.60974685043736154
	.quad	0x3fe97974d54a303a              # double 0.79607621820605989
	.quad	0x3fb4a3998f532ee8              # double 0.080621335498274882
	.quad	0x3fe6f024386ec1a5              # double 0.71681414625168272
	.quad	0x3fd3c5c2577df680              # double 0.30894526046891002
	.quad	0x3feef7f58fcac135              # double 0.96776846012475081
	.quad	0x3fe8511ef5010a65              # double 0.75990245678287904
	.quad	0x3fea05977926b2c6              # double 0.81318257963501916
	.quad	0x3fe1ed1cd0c0d582              # double 0.56019440433617285
	.quad	0x3fef05d64ecb8716              # double 0.96946254148153588
	.quad	0x3fee3372ed48850d              # double 0.943780387348086
	.quad	0x3fe8ada1b9aa931d              # double 0.77119528067541732
	.quad	0x3fb2bc12213c1150              # double 0.073182232965398386
	.quad	0x3fa40966213688c0              # double 0.039134208254169689
	.quad	0x3fde4c4fa2c1ee24              # double 0.4734076585225202
	.quad	0x3fee44ee056fcdf3              # double 0.94591427862036281
	.quad	0x3fe428e023dc07e3              # double 0.62998969081695255
	.quad	0x3fe0a9a4fcb99978              # double 0.52070855484343692
	.quad	0x3fe6bb2ec07d9b27              # double 0.71034944148855039
	.quad	0x3fe13275d1200cdc              # double 0.53740969509854208
	.quad	0x3fee77d361cfaa36              # double 0.95212716201542125
	.quad	0x3feed96478dc3e5a              # double 0.96403716664822103
	.quad	0x3fe4181d2b261a0c              # double 0.62794359614855599
	.quad	0x3fe40d5bfc47a295              # double 0.62663077615168794
	.quad	0x3fbce606138ec790              # double 0.11288488366588312
	.quad	0x3fefe22cf6310eea              # double 0.99635933002761345
	.quad	0x3fe119682f538024              # double 0.5343514370288216
	.quad	0x3fee579cee59b313              # double 0.94819494774637503
	.quad	0x3f742005caa33880              # double 0.0049133516533413912
	.quad	0x3fb5268d6b81c920              # double 0.082619513270206557
	.quad	0x3fed7b3b58875d4e              # double 0.92129294672751327
	.quad	0x3fe0515285cd0e07              # double 0.5099270451832475
	.quad	0x3fe6ee8e60e0308f              # double 0.71662062569659379
	.quad	0x3fed53c0fa45c006              # double 0.91647385484066102
	.quad	0x3fe6f6d17ec26608              # double 0.71762919194878894
	.quad	0x3fda81e38347fcb6              # double 0.41417777843885106
	.quad	0x3fe257e584d5d53f              # double 0.573229560321728
	.quad	0x3fee7badcf5f4f27              # double 0.95259752752688065
	.quad	0x3fee7468df243f43              # double 0.95171016294805388
	.quad	0x3fd717a299777d34              # double 0.36081757533061709
	.quad	0x3fc3e33f81b5a25c              # double 0.15537256082031348
	.quad	0x3fd26930b33a6b58              # double 0.28767030241731595
	.quad	0x3fb1251e7c455028              # double 0.066972642268695481
	.quad	0x3fe9f0d1c42be9e8              # double 0.8106468993640279
	.quad	0x3fbea772d7e1b120              # double 0.11974256296679586
	.quad	0x3fca139e27d515d0              # double 0.20372368760051396
	.quad	0x3fedb7bd7a3c32c5              # double 0.92867921709110901
	.quad	0x3fb49df569eabcf8              # double 0.080535257681493166
	.quad	0x3fc81b7c91e67128              # double 0.18833882450133754
	.quad	0x3fd75d280d051226              # double 0.36506081840005533
	.quad	0x3fee009c2debb0a5              # double 0.93757447213058198
	.quad	0x3fdb9b1b600484ea              # double 0.43134197594379364
	.quad	0x3f8737f23cd676c0              # double 0.011337177735920689
	.quad	0x3fd1653a4dfcdca4              # double 0.27180345169058229
	.quad	0x3fd76d649360e4cc              # double 0.36605181114607599
	.quad	0x3fdc8f4625bd1942              # double 0.4462447517911593
	.quad	0x3fa9ae2a96439c50              # double 0.050156908839021797
	.quad	0x3fb060cf9e0ca8c0              # double 0.06397721871022366
	.quad	0x3fd696bc4a34dffe              # double 0.35295016524059963
	.quad	0x3fe14422d7dfc42c              # double 0.53956739581020008
	.quad	0x3fe97e7afc85c779              # double 0.7966895038682501
	.quad	0x3fddbb33876a2eee              # double 0.46455085968112442
	.quad	0x3fc3ec0f67a034e0              # double 0.15564148483136986
	.quad	0x3fdc71eba3b8bbf8              # double 0.44445315349997783
	.quad	0x3fd843ae53cffd9c              # double 0.37913091835795298
	.quad	0x3fcad41300fd8268              # double 0.20959699200013238
	.quad	0x3fcbef8bc13f80b8              # double 0.21824786125126194
	.quad	0x3fa37cd4a5697f20              # double 0.038061757270723584
	.quad	0x3fec1819f98cefe2              # double 0.87794207325304918
	.quad	0x3fe8fc04575538f9              # double 0.78076378876883645
	.quad	0x3fe59d63ef612954              # double 0.67546269182029528
	.quad	0x3fe2d487ae3f796d              # double 0.58844360382844985
	.quad	0x3f98929e6d649940              # double 0.023996806551758398
	.quad	0x3fecb1e653ebdca3              # double 0.89671627417455502
	.quad	0x3feb467ee1ebd148              # double 0.85235542416789034
	.quad	0x3fe76bf1e1ec5c80              # double 0.73192686200754054
	.quad	0x3fe10109ec433c47              # double 0.53137680192038139
	.quad	0x3fbc4a2a302058d8              # double 0.11050666499099593
	.quad	0x3fdde54594287d44              # double 0.46711863964624833
	.quad	0x3fecb3f367ea2bce              # double 0.89696665092321282
	.quad	0x3fe5ef2aecac5eeb              # double 0.68544527268656219
	.quad	0x3fd2b9113f3de0fe              # double 0.29254561592053097
	.quad	0x3f604e9ca2b47100              # double 0.0019906100548167105
	.quad	0x3feb394ad73454ea              # double 0.85074369461167731
	.quad	0x3fdb3010edbe32d8              # double 0.42480872361265432
	.quad	0x3fe0962525c07208              # double 0.51832826016794886
	.quad	0x3fe9c1d5014e0076              # double 0.80491113905738021
	.quad	0x3fcff4022d07cf8c              # double 0.24963404845004467
	.quad	0x3fe16982c2894c99              # double 0.54412973399520859
	.quad	0x3fd6092900215944              # double 0.34430909168931501
	.quad	0x3fe0e99de5d05948              # double 0.52851767430801377
	.quad	0x3fc7ac3b89bceb54              # double 0.18494362092482197
	.quad	0x3fea1c0fb1666c49              # double 0.81592545174078979
	.quad	0x3fe2d68391bc5511              # double 0.58868578399656901
	.quad	0x3fd81827e523eaea              # double 0.37647435547812214
	.quad	0x3fd5b641876eadc2              # double 0.33924902177633609
	.quad	0x3fd152920a6e221c              # double 0.27066470163893697
	.quad	0x3fe5fc490b1a5458              # double 0.68704654854321756
	.quad	0x3f72c83c6220a000              # double 0.0045854910586413666
	.quad	0x3fc29b1221da3ed4              # double 0.14535738614039551
	.quad	0x3fe3326c6351f5c9              # double 0.59990519903629391
	.quad	0x3fec3ecd16b556a2              # double 0.8826661532900355
	.quad	0x3fbb7496cbc6fdd8              # double 0.10724775767356876
	.quad	0x3fc93e8b2ddf4f64              # double 0.19722118129595423
	.quad	0x3fb39ddb27500a90              # double 0.076627442453210514
	.quad	0x3fc1bc80df72c154              # double 0.13856516752776804
	.quad	0x3fcbe29eb8c0cad0              # double 0.21785339375636292
	.quad	0x3fe2a31ea2c6d734              # double 0.58241206924751632
	.quad	0x3fe26f8aaf48bafc              # double 0.57611593470741651
	.quad	0x3fc489164f0c9b94              # double 0.16043356761767014
	.quad	0x3fdeaeda428c8afa              # double 0.47942215441632607
	.quad	0x3feed12deab7af70              # double 0.96303459018007054
	.quad	0x3f9c40adb09674e0              # double 0.027590478804644714
	.quad	0x3fd61de3b1c8fc54              # double 0.34557430612398332
	.quad	0x3fcec6b0ae00ad64              # double 0.24043854233000694
	.quad	0x3fe546bc6d3d2e90              # double 0.66488477073422025
	.quad	0x3feb83330e8002ae              # double 0.85976555664099918
	.quad	0x3fd13d6b1640e8d2              # double 0.26937367604444973
	.quad	0x3fef63e1f9591396              # double 0.98094271374485476
	.quad	0x3fd52dcc4eab6d90              # double 0.33092029268819889
	.quad	0x3feb97d15a12b6cc              # double 0.86228244392779052
	.quad	0x3fd4eff0a2820634              # double 0.32714477415001686
	.quad	0x3fd913a94e64eb9e              # double 0.39182503371892519
	.quad	0x3fee32bbb538a10a              # double 0.94369302172438663
	.quad	0x3feff87e933bda39              # double 0.99908379322625429
	.quad	0x3fc44353c2898fe0              # double 0.15830466269392129
	.quad	0x3fd74a66dc1ee9fa              # double 0.36391612526099915
	.quad	0x3fe82c0289b33759              # double 0.75537230391067134
	.quad	0x3fecd403368ed851              # double 0.90088043838364673
	.quad	0x3fe5da7d22cace62              # double 0.68292099757531965
	.quad	0x3fe1f5cf1ad62b8f              # double 0.56125598184131487
	.quad	0x3fea73da62bdc9fc              # double 0.82664222035810963
	.quad	0x3fe3723994615d85              # double 0.60769347172292554
	.quad	0x3fe8c0af1bb4633b              # double 0.77352099810659725
	.quad	0x3feb09f6d24a37a8              # double 0.84496632644890202
	.quad	0x3fedbedaa985826f              # double 0.92954762563392801
	.quad	0x3fed13aec5c7c334              # double 0.90865267399758531
	.quad	0x3fe20c2a0ae97c26              # double 0.56398489123592266
	.quad	0x3fe03a8d74d30d9f              # double 0.50714752976675814
	.quad	0x3fd3bd484d6ced4c              # double 0.30842788277705746
	.quad	0x3fe1312c960d7724              # double 0.53725270564220695
	.quad	0x3fd7e39b6e98927c              # double 0.3732670383490484
	.quad	0x3fc3c83df1117248              # double 0.15454839964776768
	.quad	0x3fe6afa906692ea5              # double 0.70894290210840849
	.quad	0x3fcaecb66376f1d0              # double 0.21034889084502462
	.quad	0x3feca54c1fb68ff3              # double 0.89517790025683863
	.quad	0x3fcf066793f583dc              # double 0.24238295292437229
	.quad	0x3f8071f5cbe9f240              # double 0.0080298617224282553
	.quad	0x3fc9d833dde9df04              # double 0.20191047988532074
	.quad	0x3facb46dc2285cd0              # double 0.056064062071692455
	.quad	0x3fe96674036ebbb3              # double 0.79375649137897708
	.quad	0x3fd994cdf43bcf12              # double 0.39970730639400742
	.quad	0x3fcc7594a2436f80              # double 0.2223382751752716
	.quad	0x3fd5f4601e0b7b2c              # double 0.34304049429003913
	.quad	0x3fc0eb45d0cba63c              # double 0.13217995352833778
	.quad	0x3fd98bb2b4c6f96a              # double 0.3991514935877577
	.quad	0x3fcf8fcdf60cacf4              # double 0.24657606615196637
	.quad	0x3febcc320de27efe              # double 0.86867621147027285
	.quad	0x3fe9a9e769afff91              # double 0.80199022905434181
	.quad	0x3fe8a927679713b7              # double 0.77064867241335022
	.quad	0x3fe5d0432439aa07              # double 0.68167264056438703
	.quad	0x3fe66f2e644767f8              # double 0.70107192598084023
	.quad	0x3fe495ea264a0cc8              # double 0.64330012777681933
	.quad	0x3fead2cb10abd95f              # double 0.83823159462080443
	.quad	0x3fea554b95e52921              # double 0.82291201855085572
	.quad	0x3fd6a2dbaad50b32              # double 0.35369006808120951
	.quad	0x3fc1169da18ecfec              # double 0.1335026778084506
	.quad	0x3fdd3928b2eba73e              # double 0.45661370728213402
	.quad	0x3fd739d6dbd40810              # double 0.36290523021318766
	.quad	0x3fdfeabb7996cb70              # double 0.49870192407541136
	.quad	0x3fb5e4e527ea3b28              # double 0.085523912663330592
	.quad	0x3fb5aee01eb3a9d8              # double 0.084699637885626955
	.quad	0x3fe5b3e8ae465c7a              # double 0.67821153677040447
	.quad	0x3fd17e00097ecd26              # double 0.27331543853070384
	.quad	0x3fa32df33604b9b0              # double 0.037459946006822675
	.quad	0x3fa1d3a019ffd4f0              # double 0.034817698644397654
	.quad	0x3f84f3ee35deba80              # double 0.01023088552377982
	.quad	0x3fe0a9453c0455f0              # double 0.52066289636667129
	.quad	0x3fc89f57aed4fe00              # double 0.19236274754256044
	.quad	0x3f55b9181bd9da00              # double 0.0013258681714468645
	.quad	0x3fe282e6199a67b6              # double 0.57847886086096056
	.quad	0x3fca04a98fcbd074              # double 0.20326728364273416
	.quad	0x3fe012b5099a6687              # double 0.50228359103785258
	.quad	0x3fefaf7c4e0af120              # double 0.99017157786105158
	.quad	0x3fe82f9d0aee9df4              # double 0.75581218848395659
	.quad	0x3fd08f68ccfd958a              # double 0.2587530137883155
	.quad	0x3fcb16c6a8f626a4              # double 0.21163256883692327
	.quad	0x3fbaac28b1a9a478              # double 0.10418943726985386
	.quad	0x3fd53594d217fd08              # double 0.331395344895967
	.quad	0x3fc08b60286612bc              # double 0.1292534062632934
	.quad	0x3fd1ad97f4ba685c              # double 0.27622031115754964
	.quad	0x3fd73fd2b74cccb8              # double 0.3632704534567881
	.quad	0x3fe28d0f046a5ddc              # double 0.57971907484437279
	.quad	0x3fea4bd13e4a12f3              # double 0.82175504842652314
	.quad	0x3f985c76f5b5c2e0              # double 0.023790224787663017
	.quad	0x3fd60d845f7310f2              # double 0.34457501717794436
	.quad	0x3fd98f8be2d0b65a              # double 0.39938637876443794
	.quad	0x3fe81c685c00ca68              # double 0.75346773118355959
	.quad	0x3fe55d655224a2fd              # double 0.66765085261894763
	.quad	0x3fec030f48a92206              # double 0.87537349883592763
	.quad	0x3fbd8552ae56db88              # double 0.11531559711771255
	.quad	0x3fbae58657d531f8              # double 0.1050647701678783
	.quad	0x3fcc40d16c2b78dc              # double 0.22072809011201044
	.quad	0x3fc5f1d00ae64b18              # double 0.17144203693586557
	.quad	0x3fc67261f530c898              # double 0.17536568138308861
	.quad	0x3fdb998639218ffe              # double 0.43124538020333592
	.quad	0x3fef33b323542136              # double 0.97506100559352293
	.quad	0x3fd53ef6d611f54e              # double 0.33196803002632158
	.quad	0x3fc215d2efa722ac              # double 0.14129101468849592
	.quad	0x3fd577df94bbccd0              # double 0.33544148945584329
	.quad	0x3fe64f4e82f9657b              # double 0.69718099194430694
	.quad	0x3fe8ece07337cf2d              # double 0.77891561988369562
	.quad	0x3fc23367bceab764              # double 0.14219376301246733
	.quad	0x3fde7b8b22625464              # double 0.47629049642393384
	.quad	0x3fd742331e15f238              # double 0.36341550767955111
	.quad	0x3fe73bdfc3741ee0              # double 0.726058847184472
	.quad	0x3feaa55d7ff123f4              # double 0.83268618572867447
	.quad	0x3fefab8896d86db3              # double 0.98968915426251269
	.quad	0x3f7e65f4867d7b00              # double 0.0074214507838792354
	.quad	0x3fed5b81149a6885              # double 0.91741994880727928
	.quad	0x3fd33ab751a797e6              # double 0.3004587457093052
	.quad	0x3fe04d2e953289fa              # double 0.50942162647362399
	.quad	0x3fb8d171014881b0              # double 0.096945822537697123
	.quad	0x3fec2525bd15586f              # double 0.87953459673259526
	.quad	0x3fee5315675a8fe9              # double 0.94764204202919899
	.quad	0x3fe2ed68f8fab1cd              # double 0.59148071888699294
	.quad	0x3fdc6be37ed0a908              # double 0.44408500084195213
	.quad	0x3fd984fc732236d8              # double 0.39874182933350033
	.quad	0x3fe850b6e5fa48e9              # double 0.75985283772959378
	.quad	0x3fd216586221dba8              # double 0.28261384566524805
	.quad	0x3fd537ee9eaae11e              # double 0.33153882498619847
	.quad	0x3fb6ef814ea6f898              # double 0.089592057897763033
	.quad	0x3fd04030cce03ea0              # double 0.2539178848973993
	.quad	0x3fef081811b9f48e              # double 0.96973803960976723
	.quad	0x3fdcd80db848750c              # double 0.45068686481847986
	.quad	0x3fec4d788b485d5f              # double 0.88445689395568283
	.quad	0x3fe5ef288f003fd3              # double 0.68544414453389846
	.quad	0x3fe1243d700b7f95              # double 0.53567382701656874
	.quad	0x3fa1dbc694cb9330              # double 0.034879880584219314
	.quad	0x3feae2dc7541fa10              # double 0.8401930132093316
	.quad	0x3fec6798e3c08430              # double 0.88764614565673661
	.quad	0x3fe37d928bd14b08              # double 0.60907866771808106
	.quad	0x3fdd017c464353f2              # double 0.45321566449757633
	.quad	0x3fd0c4c5bf29f906              # double 0.26201003712039073
	.quad	0x3fee0e06b9b1a5f9              # double 0.93921219127986355
	.quad	0x3fdc0880267174e4              # double 0.43801883463113556
	.quad	0x3feb062e3d065a6a              # double 0.84450447005185691
	.quad	0x3fde491ad8035a7a              # double 0.47321196646718244
	.quad	0x3fe9456c4081ca0f              # double 0.78972447012921687
	.quad	0x3fe69ccae2fa7f61              # double 0.70663971263637049
	.quad	0x3fe74e863e8dd5fd              # double 0.72833549707019041
	.quad	0x3fedf5ecf8c5c9a1              # double 0.93627022350692723
	.quad	0x3fe1093e6b5c778e              # double 0.53237839669212561
	.quad	0x3fea53388b0913aa              # double 0.82265879779207762
	.quad	0x3fe05d673bcac4b2              # double 0.51140176466119258
	.quad	0x3fcfe99c2ca0f458              # double 0.24931671313416603
	.quad	0x3fc30ab201da5090              # double 0.14876389589756345
	.quad	0x3fa954a0406baaf0              # double 0.049473770011749241
	.quad	0x3feceacee6bd9ce1              # double 0.90366311136758892
	.quad	0x3fda1060a59d1c98              # double 0.40724960492338758
	.quad	0x3f8bdd9120454e00              # double 0.013606199071239722
	.quad	0x3fc4a72d3a803ddc              # double 0.16135182720652963
	.quad	0x3fe6cf64863655ee              # double 0.71281648839311429
	.quad	0x3fdbc995474be45c              # double 0.43417865717453252
	.quad	0x3fe739ac502e666c              # double 0.72579017315292793
	.quad	0x3fab3b18d083cae0              # double 0.053185248807400276
	.quad	0x3fd9da90ca5b21c4              # double 0.40396518479658661
	.quad	0x3fc62a0db5a4e5f0              # double 0.17315837258665523
	.quad	0x3fec0d703508b383              # double 0.87664041860772135
	.quad	0x3fe9ac4f4ca69cae              # double 0.80228390665879146
	.quad	0x3fd96a147b23746a              # double 0.39709960961574231
	.quad	0x3fa43b5a628428b0              # double 0.039515327955159107
	.quad	0x3fe71bc032be3f3a              # double 0.72213754568836142
	.quad	0x3fe59a874373e5a6              # double 0.67511332678184455
	.quad	0x3fe8b7e9922fb7e7              # double 0.77245024253874994
	.quad	0x3fe83c55f40c520e              # double 0.7573652044835073
	.quad	0x3fedbf7ef5ae85ec              # double 0.92962596878731806
	.quad	0x3fe205eb96871ca7              # double 0.56322268867451875
	.quad	0x3fdfde361b1e1a06              # double 0.49793770454599018
	.quad	0x3feda4953f94dbca              # double 0.92634069841630517
	.quad	0x3fde7c174f738ece              # double 0.47632391699719967
	.quad	0x3fc448d74fb3e56c              # double 0.15847293273672436
	.quad	0x3fee22e4fbc094de              # double 0.94175957842221769
	.quad	0x3fc40999c8b69f24              # double 0.15654299068887056
	.quad	0x3fe4934ee0629074              # double 0.64298194718550272
	.quad	0x3fe9cb65e57a27d7              # double 0.80607886142501683
	.quad	0x3fedc5e27612185d              # double 0.9304058366840412
	.quad	0x3fe9101db31bd41a              # double 0.78321728689354875
	.quad	0x3fb28ca8cf08dc88              # double 0.072458792253074944
	.quad	0x3fa78e604a073170              # double 0.046008118664391584
	.quad	0x3fd69935c823855e              # double 0.35310120148468183
	.quad	0x3fa6727003f9bb30              # double 0.04384183929948049
	.quad	0x3fd696dfef89e2b8              # double 0.35295866386835995
	.quad	0x3fd5716f1f7811d4              # double 0.3350484664263409
	.quad	0x3fcc8cdf3a23b2ac              # double 0.22304907168235866
	.quad	0x3fc8ee23fd08e950              # double 0.19476747374739967
	.quad	0x3fe79790f9142e6a              # double 0.73725174568376173
	.quad	0x3fed5df1086f0958              # double 0.91771747252668501
	.quad	0x3fb80a914cfd8ca8              # double 0.09391124848984822
	.quad	0x3fe7bfb217c754f0              # double 0.74215035099282822
	.quad	0x3fe95e9bc3c752b5              # double 0.79279888380059182
	.quad	0x3fce6d4b83dd1c8c              # double 0.23771041811616944
	.quad	0x3fb6abd2b5b80110              # double 0.088559312214787633
	.quad	0x3fd3f9d269483956              # double 0.31212291985948093
	.quad	0x3fe3e85b56134001              # double 0.62211386500894161
	.quad	0x3fe31bc06aa85a5e              # double 0.59713764983719009
	.quad	0x3fd57557f429381c              # double 0.33528708309029454
	.quad	0x3fe69b60d64cdde9              # double 0.70646707397002928
	.quad	0x3fb6ceb928ed8c78              # double 0.089091846935433483
	.quad	0x3fda2ec301e21f2a              # double 0.40910411056437346
	.quad	0x3fd4e63bbe9938b8              # double 0.32655233014237295
	.quad	0x3fd10021086662f6              # double 0.26563287563617111
	.quad	0x3fd16d14433c1aaa              # double 0.27228266302010218
	.quad	0x3fd0556fe5ee0b4e              # double 0.25521466688239947
	.quad	0x3feac2592508fcf8              # double 0.83622414811534806
	.quad	0x3feb027920dcdbe1              # double 0.84405189913274736
	.quad	0x3fed8c0f736ccf86              # double 0.9233472113032668
	.quad	0x3fcb067b802121bc              # double 0.21113532787627587
	.quad	0x3fdc531b01f139f4              # double 0.44257235707928477
	.quad	0x3fdd78fb829a2526              # double 0.46050918344606584
	.quad	0x3fe7f7670c845ae3              # double 0.74895050472954627
	.quad	0x3fe99e7d78364fbf              # double 0.80059693793236153
	.quad	0x3fdf15ff77fa1e56              # double 0.48571764675623308
	.quad	0x3fc8512e1ae4c788              # double 0.18997741997878514
	.quad	0x3fee3de3b0fd8484              # double 0.94505486076754197
	.quad	0x3fe4d820abc9663f              # double 0.65138276626675651
	.quad	0x3fe4fc3135ff5149              # double 0.65578518434862432
	.quad	0x3fdb084c621737d4              # double 0.42238149241609091
	.quad	0x3fe1285f7b121efe              # double 0.53617834126723074
	.quad	0x3fe08b63279e6059              # double 0.5170150541116626
	.quad	0x3fee29938a910ea0              # double 0.94257523597521597
	.quad	0x3fe0eb89d13bd10a              # double 0.52875223985623276
	.quad	0x3f91de42861fd100              # double 0.01744941657666832
	.quad	0x3fe50589c43ca095              # double 0.65692604377274455
	.quad	0x3fe92b6673684a57              # double 0.78654787579064134
	.quad	0x3fdf0992b709913c              # double 0.4849592959856357
	.quad	0x3fe3caf2a7e8a139              # double 0.61852391047162947
	.quad	0x3fec7e375f5cc198              # double 0.89040726304488071
	.quad	0x3fd6d5cecc03d2d2              # double 0.35679979251226002
	.quad	0x3fea96c9a29a4a71              # double 0.83090669401492623
	.quad	0x3fe2f89125b8ee7a              # double 0.59284264915136409
	.quad	0x3fbccfce5831d340              # double 0.11254586842717362
	.quad	0x3fc7a21352f53d7c              # double 0.1846336512630663
	.quad	0x3faef3d19417e110              # double 0.060453938796799389
	.quad	0x3fe8b5771611eb0e              # double 0.77215151129289139
	.quad	0x3fd76ea84891942a              # double 0.3661289890936269
	.quad	0x3fdcbff93cde509a              # double 0.44921713775807748
	.quad	0x3fc5010e4ee80b0c              # double 0.16409472325184316
	.quad	0x3fcea96caf766b9c              # double 0.23954542701252712
	.quad	0x3fc8a04a9b2a42a4              # double 0.19239170624179736
	.quad	0x3fd524b6372370b6              # double 0.33036570915806907
	.quad	0x3fb3c1863155d810              # double 0.077171694798238599
	.quad	0x3fd7b572bc489304              # double 0.3704497183519353
	.quad	0x3fcbfa8ccd27e9e8              # double 0.2185836793649536
	.quad	0x3fdda8c1164dc558              # double 0.46342494180779203
	.quad	0x3fda65361c6c514a              # double 0.41242745185561047
	.quad	0x3fef2549b1ea2744              # double 0.97330174206693031
	.quad	0x3fd5f7a723cba830              # double 0.34324053283364986
	.quad	0x3fd1cb330894f004              # double 0.27802730405869647
	.quad	0x3fe4f50a10116617              # double 0.65491202486299727
	.quad	0x3fdedd1dd6f92488              # double 0.48224588387945078
	.quad	0x3fea9aae37c2323d              # double 0.83138190164897419
	.quad	0x3f96d845b989c600              # double 0.022309388589240697
	.quad	0x3fc7939d29616acc              # double 0.18419231911214806
	.quad	0x3feeedfeed8a33e5              # double 0.96655222315314104
	.quad	0x3fee58c09be4e252              # double 0.94833403060972388
	.quad	0x3fdc05a3995613ee              # double 0.43784418081514687
	.quad	0x3fd56efc74c28464              # double 0.33489905741050152
	.quad	0x3febe4140bf0fb62              # double 0.87159159023563526
	.quad	0x3fef647e1839ee11              # double 0.98101715785691301
	.quad	0x3fb7cd39ffaf21f8              # double 0.092975258753661083
	.quad	0x3f6c9e19b42f0d00              # double 0.0034933568981344587
	.quad	0x3fde6df18529bd80              # double 0.47546041492656599
	.quad	0x3fd8f3e037363748              # double 0.3898850001504468
	.quad	0x3fbff8e5da8eb098              # double 0.12489163003800952
	.quad	0x3fd5de50a4aefe6a              # double 0.34169403154735412
	.quad	0x3fc59592990a9068              # double 0.16862709496229233
	.quad	0x3fbcc5d98f75b840              # double 0.11239394905507627
	.quad	0x3fe09d024fb91973              # double 0.51916614123255866
	.quad	0x3fe3c38e388d0d41              # double 0.61762152714837992
	.quad	0x3fe25042ee30faea              # double 0.5722975399183643
	.quad	0x3fe88566b28a38ed              # double 0.76628432150917336
	.quad	0x3fdf1190cb2c44e0              # double 0.48544711915117311
	.quad	0x3fc97d08b5618fe0              # double 0.19912823540209867
	.quad	0x3fd9e534f3d57dca              # double 0.40461467563542597
	.quad	0x3fe5b7423d2351b0              # double 0.67862045231827572
	.quad	0x3fd0b1b4b76b2bf4              # double 0.26084630882240778
	.quad	0x3fe188657a31eb86              # double 0.54789995065890262
	.quad	0x3fd5ad725b9866e0              # double 0.33871134705405659
	.quad	0x3fa213ec28008200              # double 0.035308246501021046
	.quad	0x3fe2fe1f8a620db8              # double 0.59352089908536865
	.quad	0x3fda8a077dbdfaee              # double 0.41467463759901946
	.quad	0x3fe79c35c71c7ae2              # double 0.73781861199298882
	.quad	0x3fe37c1ec50e0e26              # double 0.60890139090810602
	.quad	0x3fc913baf91d0848              # double 0.19591462291470152
	.quad	0x3fe349885abe2fa3              # double 0.60272615168786492
	.quad	0x3fe834b824465db4              # double 0.75643546185431498
	.quad	0x3fa53e9bed00d6b0              # double 0.041493294411720227
	.quad	0x3feb8e4a9b3c0a5f              # double 0.86111955947155738
	.quad	0x3fdb292390abb794              # double 0.42438592079167248
	.quad	0x3feb0892df5cc10d              # double 0.84479659676984087
	.quad	0x3fe7c2fc3b24c780              # double 0.7425519137525356
	.quad	0x3fdde2eb347aa1d0              # double 0.46697502255349566
	.quad	0x3f76fea67540af00              # double 0.0056139471308076505
	.quad	0x3fb4fbd96ad6d5c0              # double 0.081967915138043246
	.quad	0x3fd97130619f85b8              # double 0.3975335076666755
	.quad	0x3fb9881f446ad6b0              # double 0.099733308986140967
	.quad	0x3feaea4dae2ea049              # double 0.84110149402568724
	.quad	0x3feb77a40e843b2c              # double 0.85835459552058557
	.quad	0x3fdc58e6fa697df8              # double 0.44292616323761491
	.quad	0x3f61921342bbc200              # double 0.0021448494134050922
	.quad	0x3fe6e6eb8ea45908              # double 0.71568849429857639
	.quad	0x3fec92d25ead95f3              # double 0.89292257777986916
	.quad	0x3fe6bdac9fa6f53c              # double 0.71065360242906861
	.quad	0x3fb4eee9cd11e3d0              # double 0.081770527425660377
	.quad	0x3fee29dfd6c8b997              # double 0.94261161756530754
	.quad	0x3fe4d8e155737993              # double 0.65147463502562386
	.quad	0x3fadcc25823510e0              # double 0.058198139328426768
	.quad	0x3fe0352d7adb8203              # double 0.50649141307445722
	.quad	0x3fef8fdb578c0c88              # double 0.98631064509426469
	.quad	0x3fd8cb78b3ad99a2              # double 0.38741891428653663
	.quad	0x3fc7748fe846b6e8              # double 0.1832446941529533
	.quad	0x3fd778a9011842d2              # double 0.3667395125094518
	.quad	0x3facb4dd038af170              # double 0.05606737774130266
	.quad	0x3fe1b5260461daea              # double 0.55336285453708212
	.quad	0x3fe9f8d625fbccc6              # double 0.81162555140181136
	.quad	0x3f9ca0387ea08420              # double 0.027954943398189269
	.quad	0x3fef9e3ae9798101              # double 0.98806520081055293
	.quad	0x3fe48fc1f6c31282              # double 0.64254854388907767
	.quad	0x3fb06e5958552b80              # double 0.064183792176818244
	.quad	0x3fe8f6c87aad62dd              # double 0.78012489281089936
	.quad	0x3fe58bcf64be1565              # double 0.67331666637680299
	.quad	0x3fdf577ad1d23ffa              # double 0.4897143410717032
	.quad	0x3fdb4b38a69bb3ae              # double 0.42646614332516719
	.quad	0x3fee7c78a9b2aa49              # double 0.95269425529597485
	.quad	0x3fe4e2abba471e2a              # double 0.6526697767485008
	.quad	0x3fd0cd05d537c5b2              # double 0.26251359769875215
	.quad	0x3fb9fad7ebc83b00              # double 0.10148381716156152
	.quad	0x3fd62b7fdb2d3f9a              # double 0.34640499500255262
	.quad	0x3fe2d15ba97bf68d              # double 0.58805640318287689
	.quad	0x3fca7c39ad24f224              # double 0.20691605524361123
	.quad	0x3fdaa637ebc2b41e              # double 0.41639516852848313
	.quad	0x3fe3111de9c61bff              # double 0.59583945902784297
	.quad	0x3fd583f7197f5350              # double 0.3361795186040597
	.quad	0x3fc937ddb1a50b90              # double 0.19701739477212898
	.quad	0x3fe535562cbf25ec              # double 0.66276081790527774
	.quad	0x3fe8e74ac640b4fe              # double 0.77823389741175197
	.quad	0x3fe358240c4e55cd              # double 0.6045093765594004
	.quad	0x3fdd0255cf90b718              # double 0.45326752920196745
	.quad	0x3fef60c47d750097              # double 0.98056244376495527
	.quad	0x3fdcadf37675904e              # double 0.4481171280697297
	.quad	0x3feb1ed79c42aa6f              # double 0.84751492042171417
	.quad	0x3fe638ff7440d213              # double 0.69445774751381106
	.quad	0x3fdf643992c2c43a              # double 0.49049224216566112
	.quad	0x3fca2e86d9efbd40              # double 0.20454488412313232
	.quad	0x3fd739f7944e0eb2              # double 0.36291303141500031
	.quad	0x3fe8daf599710ef7              # double 0.77672843903607613
	.quad	0x3fdf673526c58696              # double 0.49067429338729462
	.quad	0x3fe871fd54458a03              # double 0.76391474208168153
	.quad	0x3fc2c5a2a24ea410              # double 0.14665635037570768
	.quad	0x3fd734652311e4ea              # double 0.36257294106287807
	.quad	0x3fe4c05659101c6a              # double 0.64847867388824665
	.quad	0x3fdc37083ead797c              # double 0.44085889931547917
	.quad	0x3fde769877c9b0ce              # double 0.4759884996226561
	.quad	0x3fe62058d78fcb85              # double 0.69144861318487527
	.quad	0x3fd5ec0b02d9685a              # double 0.34253192213293959
	.quad	0x3fe6ee96c1ec78de              # double 0.71662462115980552
	.quad	0x3fe493cb73bb3383              # double 0.64304134944687552
	.quad	0x3fedf769b868ca6d              # double 0.93645177857827167
	.quad	0x3fd212632c521686              # double 0.28237227752865868
	.quad	0x3fe52d5dda46cf06              # double 0.66178791649005642
	.quad	0x3fd7e6903fba3040              # double 0.37344747756356256
	.quad	0x3fd344db823b5cd4              # double 0.30107772558171786
	.quad	0x3fee611401df93b6              # double 0.94935036054504596
	.quad	0x3fef805deaff4f00              # double 0.98441978357229232
	.quad	0x3fe96c1e432eab1c              # double 0.79444802400152836
	.quad	0x3fd29fa26f0b3b04              # double 0.29099331707122666
	.quad	0x3fefefe2f7ab4b22              # double 0.99803303120492992
	.quad	0x3fef15b6caa2dc53              # double 0.97140063836458023
	.quad	0x3fe661854ba8d3bd              # double 0.69940438058130605
	.quad	0x3fd0ff3355a6ddac              # double 0.26557620396075765
	.quad	0x3fd6540a416b896c              # double 0.34887939823797498
	.quad	0x3faea3b55fa0c3a0              # double 0.059842746661508572
	.quad	0x3fc081c501a88adc              # double 0.12896025258040467
	.quad	0x3fecc0b52e6826be              # double 0.89852389396511234
	.quad	0x3fef40509477ff6f              # double 0.97660092351723715
	.quad	0x3fefc5a5fd6d56ec              # double 0.99287700173837611
	.quad	0x3fc5124112a38ab4              # double 0.16461957368945479
	.quad	0x3feda9553c5ccd6c              # double 0.92692052640488276
	.quad	0x3fd086de9726f7be              # double 0.25823178063353314
	.size	.L__constant_100x100xf64, 80000

	.section	".note.GNU-stack","",@progbits
